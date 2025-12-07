char *sub_128D9FC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 64);
  *v4 = 24;
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

LABEL_14:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 68);
    *v7 = 37;
    *(v7 + 1) = v12;
    v7 += 5;
    if ((v6 & 0x10) == 0)
    {
LABEL_16:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 72);
  *v7 = 40;
  v7[1] = v13;
  v7 += 2;
  if ((v6 & 0x20) != 0)
  {
LABEL_24:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 73);
    *v7 = 48;
    v7[1] = v14;
    v7 += 2;
  }

LABEL_27:
  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v17 = *(*(a1 + 40) + 8 * i + 8);
      *v7 = 58;
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

      v7 = sub_128E36C(v17, v19, a3);
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v23)
  {
    v25 = v23;
    memcpy(v7, v24, v23);
    v7 += v25;
    return v7;
  }

  return sub_1957130(a3, v24, v23, v7);
}

uint64_t sub_128DCBC(uint64_t a1)
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
      v7 = sub_128E4D4(v6);
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
  if ((v8 & 0x3F) == 0)
  {
    goto LABEL_27;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((v8 & 4) != 0)
  {
LABEL_20:
    v15 = *(a1 + 64);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v16;
  }

LABEL_24:
  v17 = v2 + 5;
  if ((v8 & 8) == 0)
  {
    v17 = v2;
  }

  v2 = v17 + ((v8 >> 4) & 2) + ((v8 >> 3) & 2);
LABEL_27:
  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v2 += v21;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_128DE5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12A4764((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x3F) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 48), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_23;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 64) = *(a2 + 64);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 68) = *(a2 + 68);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
LABEL_12:
        *(a1 + 16) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 73) = *(a2 + 73);
      goto LABEL_12;
    }

LABEL_25:
    *(a1 + 72) = *(a2 + 72);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_128DFF8(uint64_t a1)
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

void sub_128E0B0(uint64_t a1)
{
  sub_128DFF8(a1);

  operator delete();
}

uint64_t sub_128E0E8(uint64_t a1)
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
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_128E168(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v27 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v27, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v27 + 1);
    v8 = **v27;
    if (**v27 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v27, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v27 + 2);
      }
    }

    *v27 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v20 = *(a1 + 8);
      v18 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v18 = *v18;
      }

      v19 = (a1 + 32);
LABEL_28:
      v21 = sub_194DB04(v19, v18);
      v16 = sub_1958890(v21, *v27, a3);
LABEL_29:
      *v27 = v16;
      if (!v16)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v23 = v7 + 1;
    LODWORD(v22) = *v7;
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v23;
    v22 = v22 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_34:
      *v27 = v23;
      *(a1 + 40) = v22;
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v22);
    *v27 = v25;
    *(a1 + 40) = v26;
    if (!v25)
    {
      goto LABEL_42;
    }

LABEL_35:
    if (sub_195ADC0(a3, v27, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = (a1 + 24);
    goto LABEL_28;
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
      v7 = *v27;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_42:
  *v27 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v27;
}

char *sub_128E36C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
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

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v6);
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

uint64_t sub_128E4D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_17;
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
    v9 = *(a1 + 40);
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

LABEL_17:
  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_128E5DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 32), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_128E6EC(void *a1)
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

  sub_128E770(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_128E770(void *result)
{
  if (result != &off_2768838)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_128F9C4(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_128F9C4(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_128F9C4(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_128F9C4(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_128F9C4(v6);
      operator delete();
    }

    v7 = v1[8];
    if (v7)
    {
      sub_128FECC(v7);
      operator delete();
    }

    v8 = v1[9];
    if (v8)
    {
      sub_128FECC(v8);
      operator delete();
    }

    v9 = v1[10];
    if (v9)
    {
      sub_128FECC(v9);
      operator delete();
    }

    v10 = v1[11];
    if (v10)
    {
      sub_128FECC(v10);
      operator delete();
    }

    result = v1[12];
    if (result)
    {
      sub_128FECC(result);

      operator delete();
    }
  }

  return result;
}

void sub_128E8A4(void *a1)
{
  sub_128E6EC(a1);

  operator delete();
}

uint64_t sub_128E8DC(uint64_t a1)
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

uint64_t sub_128E900(uint64_t a1)
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

char *sub_128E928(uint64_t a1, char *a2, int32x2_t *a3)
{
  v57 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v57, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v57 + 1;
    v8 = *v57;
    if (*v57 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v57, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v57 + 2;
      }
    }

    v57 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_85;
        }

        v5 |= 0x400u;
        v12 = v7 + 1;
        LODWORD(v11) = *v7;
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = v11 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_12:
          v57 = v12;
          *(a1 + 104) = v11;
          goto LABEL_83;
        }

        v53 = sub_19587DC(v7, v11);
        v57 = v53;
        *(a1 + 104) = v54;
        if (v53)
        {
          goto LABEL_83;
        }

        goto LABEL_103;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_85;
        }

        v5 |= 0x800u;
        v33 = v7 + 1;
        LODWORD(v32) = *v7;
        if ((v32 & 0x80) == 0)
        {
          goto LABEL_52;
        }

        v34 = *v33;
        v32 = v32 + (v34 << 7) - 128;
        if (v34 < 0)
        {
          v55 = sub_19587DC(v7, v32);
          v57 = v55;
          *(a1 + 108) = v56;
          if (!v55)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v33 = v7 + 2;
LABEL_52:
          v57 = v33;
          *(a1 + 108) = v32;
        }

        goto LABEL_83;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_85;
        }

        v5 |= 0x1000u;
        v25 = v7 + 1;
        LODWORD(v24) = *v7;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_37;
        }

        v26 = *v25;
        v24 = v24 + (v26 << 7) - 128;
        if (v26 < 0)
        {
          v49 = sub_19587DC(v7, v24);
          v57 = v49;
          *(a1 + 112) = v50;
          if (!v49)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v25 = v7 + 2;
LABEL_37:
          v57 = v25;
          *(a1 + 112) = v24;
        }

        goto LABEL_83;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_85;
        }

        v5 |= 0x2000u;
        v28 = v7 + 1;
        LODWORD(v27) = *v7;
        if ((v27 & 0x80) == 0)
        {
          goto LABEL_42;
        }

        v29 = *v28;
        v27 = v27 + (v29 << 7) - 128;
        if (v29 < 0)
        {
          v51 = sub_19587DC(v7, v27);
          v57 = v51;
          *(a1 + 116) = v52;
          if (!v51)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v28 = v7 + 2;
LABEL_42:
          v57 = v28;
          *(a1 + 116) = v27;
        }

        goto LABEL_83;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 1u;
        v17 = *(a1 + 24);
        if (v17)
        {
          goto LABEL_81;
        }

        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v17 = sub_1295230(v19);
        *(a1 + 24) = v17;
        goto LABEL_80;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 32);
        if (v17)
        {
          goto LABEL_81;
        }

        v35 = *(a1 + 8);
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v36 = *v36;
        }

        v17 = sub_1295230(v36);
        *(a1 + 32) = v17;
        goto LABEL_80;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 4u;
        v17 = *(a1 + 40);
        if (v17)
        {
          goto LABEL_81;
        }

        v39 = *(a1 + 8);
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v40 = *v40;
        }

        v17 = sub_1295230(v40);
        *(a1 + 40) = v17;
        goto LABEL_80;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 8u;
        v17 = *(a1 + 48);
        if (v17)
        {
          goto LABEL_81;
        }

        v30 = *(a1 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        v17 = sub_1295230(v31);
        *(a1 + 48) = v17;
        goto LABEL_80;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 0x10u;
        v17 = *(a1 + 56);
        if (v17)
        {
          goto LABEL_81;
        }

        v44 = *(a1 + 8);
        v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v45 = *v45;
        }

        v17 = sub_1295230(v45);
        *(a1 + 56) = v17;
LABEL_80:
        v7 = v57;
LABEL_81:
        v43 = sub_21F3DA0(a3, v17, v7);
        goto LABEL_82;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 0x20u;
        v14 = *(a1 + 64);
        if (v14)
        {
          goto LABEL_74;
        }

        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v14 = sub_12952A8(v23);
        *(a1 + 64) = v14;
        goto LABEL_73;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 0x40u;
        v14 = *(a1 + 72);
        if (v14)
        {
          goto LABEL_74;
        }

        v41 = *(a1 + 8);
        v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v42 = *v42;
        }

        v14 = sub_12952A8(v42);
        *(a1 + 72) = v14;
        goto LABEL_73;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 0x80u;
        v14 = *(a1 + 80);
        if (v14)
        {
          goto LABEL_74;
        }

        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_12952A8(v16);
        *(a1 + 80) = v14;
        goto LABEL_73;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 0x100u;
        v14 = *(a1 + 88);
        if (v14)
        {
          goto LABEL_74;
        }

        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v14 = sub_12952A8(v21);
        *(a1 + 88) = v14;
        goto LABEL_73;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 0x200u;
        v14 = *(a1 + 96);
        if (v14)
        {
          goto LABEL_74;
        }

        v37 = *(a1 + 8);
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v38 = *v38;
        }

        v14 = sub_12952A8(v38);
        *(a1 + 96) = v14;
LABEL_73:
        v7 = v57;
LABEL_74:
        v43 = sub_21F3E30(a3, v14, v7);
        goto LABEL_82;
      default:
LABEL_85:
        if (v8)
        {
          v46 = (v8 & 7) == 4;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          v47 = *(a1 + 8);
          if (v47)
          {
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v48 = sub_11F1920((a1 + 8));
            v7 = v57;
          }

          v43 = sub_1952690(v8, v48, v7, a3);
LABEL_82:
          v57 = v43;
          if (!v43)
          {
            goto LABEL_103;
          }

LABEL_83:
          if (sub_195ADC0(a3, &v57, a3[11].u32[1]))
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
LABEL_103:
          v57 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v57;
    }
  }
}

char *sub_128EECC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 104);
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

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 108);
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

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 112);
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
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          v11 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
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

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 116);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 24);
    *v19 = 42;
    v25 = *(v24 + 20);
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v19 + 1);
    }

    else
    {
      v26 = v19 + 2;
    }

    v19 = sub_128FC4C(v24, v26, a3);
    if ((v5 & 2) == 0)
    {
LABEL_39:
      if ((v5 & 4) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_60;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_39;
  }

  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v27 = *(a1 + 32);
  *v19 = 50;
  v28 = *(v27 + 20);
  v19[1] = v28;
  if (v28 > 0x7F)
  {
    v29 = sub_19575D0(v28, v19 + 1);
  }

  else
  {
    v29 = v19 + 2;
  }

  v19 = sub_128FC4C(v27, v29, a3);
  if ((v5 & 4) == 0)
  {
LABEL_40:
    if ((v5 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_66;
  }

LABEL_60:
  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v30 = *(a1 + 40);
  *v19 = 58;
  v31 = *(v30 + 20);
  v19[1] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v19 + 1);
  }

  else
  {
    v32 = v19 + 2;
  }

  v19 = sub_128FC4C(v30, v32, a3);
  if ((v5 & 8) == 0)
  {
LABEL_41:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_72;
  }

LABEL_66:
  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v33 = *(a1 + 48);
  *v19 = 66;
  v34 = *(v33 + 20);
  v19[1] = v34;
  if (v34 > 0x7F)
  {
    v35 = sub_19575D0(v34, v19 + 1);
  }

  else
  {
    v35 = v19 + 2;
  }

  v19 = sub_128FC4C(v33, v35, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_42:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_78;
  }

LABEL_72:
  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v36 = *(a1 + 56);
  *v19 = 74;
  v37 = *(v36 + 20);
  v19[1] = v37;
  if (v37 > 0x7F)
  {
    v38 = sub_19575D0(v37, v19 + 1);
  }

  else
  {
    v38 = v19 + 2;
  }

  v19 = sub_128FC4C(v36, v38, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_43:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_84;
  }

LABEL_78:
  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v39 = *(a1 + 64);
  *v19 = 82;
  v40 = *(v39 + 20);
  v19[1] = v40;
  if (v40 > 0x7F)
  {
    v41 = sub_19575D0(v40, v19 + 1);
  }

  else
  {
    v41 = v19 + 2;
  }

  v19 = sub_12901B4(v39, v41, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_44:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_90;
  }

LABEL_84:
  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v42 = *(a1 + 72);
  *v19 = 90;
  v43 = *(v42 + 20);
  v19[1] = v43;
  if (v43 > 0x7F)
  {
    v44 = sub_19575D0(v43, v19 + 1);
  }

  else
  {
    v44 = v19 + 2;
  }

  v19 = sub_12901B4(v42, v44, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_45:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_96;
  }

LABEL_90:
  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v45 = *(a1 + 80);
  *v19 = 98;
  v46 = *(v45 + 20);
  v19[1] = v46;
  if (v46 > 0x7F)
  {
    v47 = sub_19575D0(v46, v19 + 1);
  }

  else
  {
    v47 = v19 + 2;
  }

  v19 = sub_12901B4(v45, v47, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_46:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_102;
  }

LABEL_96:
  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v48 = *(a1 + 88);
  *v19 = 106;
  v49 = *(v48 + 20);
  v19[1] = v49;
  if (v49 > 0x7F)
  {
    v50 = sub_19575D0(v49, v19 + 1);
  }

  else
  {
    v50 = v19 + 2;
  }

  v19 = sub_12901B4(v48, v50, a3);
  if ((v5 & 0x200) != 0)
  {
LABEL_102:
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v51 = *(a1 + 96);
    *v19 = 114;
    v52 = *(v51 + 20);
    v19[1] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v19 + 1);
    }

    else
    {
      v53 = v19 + 2;
    }

    v19 = sub_12901B4(v51, v53, a3);
  }

LABEL_108:
  v54 = *(a1 + 8);
  if ((v54 & 1) == 0)
  {
    return v19;
  }

  v56 = v54 & 0xFFFFFFFFFFFFFFFCLL;
  v57 = *(v56 + 31);
  if (v57 < 0)
  {
    v58 = *(v56 + 8);
    v57 = *(v56 + 16);
  }

  else
  {
    v58 = (v56 + 8);
  }

  if ((*a3 - v19) >= v57)
  {
    v59 = v57;
    memcpy(v19, v58, v57);
    v19 += v59;
    return v19;
  }

  return sub_1957130(a3, v58, v57, v19);
}

uint64_t sub_128F5A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = sub_128FDFC(*(a1 + 24));
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
    v5 = sub_128FDFC(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = sub_128FDFC(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v8 = sub_128FDFC(*(a1 + 48));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = sub_128FDFC(*(a1 + 56));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = sub_12903EC(*(a1 + 64));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_27:
  v11 = sub_12903EC(*(a1 + 72));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = sub_12903EC(*(a1 + 80));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0x3F00) == 0)
  {
    goto LABEL_47;
  }

  if ((v2 & 0x100) != 0)
  {
    v12 = sub_12903EC(*(a1 + 88));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v13 = sub_12903EC(*(a1 + 96));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_31:
  v14 = *(a1 + 104);
  if (v14 < 0)
  {
    v15 = 11;
  }

  else
  {
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v15;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_35:
  v16 = *(a1 + 108);
  if (v16 < 0)
  {
    v17 = 11;
  }

  else
  {
    v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v17;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v18 = *(a1 + 112);
  if (v18 < 0)
  {
    v19 = 11;
  }

  else
  {
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v19;
  if ((v2 & 0x2000) != 0)
  {
LABEL_43:
    v20 = *(a1 + 116);
    if (v20 < 0)
    {
      v21 = 11;
    }

    else
    {
      v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v21;
  }

LABEL_47:
  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v3 += v25;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_128F8FC(std::string *result, uint64_t a2)
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

std::string *sub_128F948(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_128F9C4(void *a1)
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

void sub_128FA38(void *a1)
{
  sub_128F9C4(a1);

  operator delete();
}

char *sub_128FA70(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v25 + 1;
    v8 = *v25;
    if (*v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v25 + 2;
      }
    }

    v25 = v7;
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
    LODWORD(v15) = *v7;
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v15 = v15 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_24:
      v25 = v16;
      *(a1 + 28) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 28) = v22;
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_29:
    if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v19 = v7 + 1;
    LODWORD(v18) = *v7;
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = v18 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
    v25 = v23;
    *(a1 + 24) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
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
      v7 = v25;
    }

    v25 = sub_1952690(v8, v14, v7, a3);
    if (!v25)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_38:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_128FC4C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_128FDFC(uint64_t a1)
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

void *sub_128FECC(void *a1)
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

void sub_128FF40(void *a1)
{
  sub_128FECC(a1);

  operator delete();
}

char *sub_128FF78(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v20 = v7 + 1;
    LODWORD(v19) = *v7;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = v19 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v31 = v20;
      *(a1 + 32) = v19;
      goto LABEL_35;
    }

    v29 = sub_19587DC(v7, v19);
    v31 = v29;
    *(a1 + 32) = v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
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

    v5 |= 2u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v31 = v17;
      *(a1 + 28) = v16;
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v16);
    v31 = v25;
    *(a1 + 28) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v23 = v7 + 1;
    LODWORD(v22) = *v7;
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v23;
    v22 = v22 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_34:
      v31 = v23;
      *(a1 + 24) = v22;
      goto LABEL_35;
    }

    v27 = sub_19587DC(v7, v22);
    v31 = v27;
    *(a1 + 24) = v28;
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
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
      v7 = v31;
    }

    v31 = sub_1952690(v8, v15, v7, a3);
    if (!v31)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_12901B4(uint64_t a1, char *__dst, unint64_t *a3)
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
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          v11 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
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

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v22)
  {
    v24 = v22;
    memcpy(v15, v23, v22);
    v15 += v24;
    return v15;
  }

  return sub_1957130(a3, v23, v22, v15);
}

uint64_t sub_12903EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_19;
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
  if ((v1 & 4) != 0)
  {
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

LABEL_19:
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

void *sub_12904F0(void *a1)
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

void sub_1290564(void *a1)
{
  sub_12904F0(a1);

  operator delete();
}

char *sub_129059C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v144 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v144, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v144 + 1;
    v8 = *v144;
    if (*v144 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v144, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v144 + 2;
      }
    }

    v144 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_138;
        }

        v5 |= 1u;
        v11 = v7 + 1;
        v12 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v12 = v12 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v11 = v7 + 2;
LABEL_12:
          v144 = v11;
          *(a1 + 24) = v12;
          goto LABEL_145;
        }

        v116 = sub_1958770(v7, v12);
        v144 = v116;
        *(a1 + 24) = v117;
        if (v116)
        {
          goto LABEL_145;
        }

        goto LABEL_202;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_138;
        }

        v5 |= 2u;
        v50 = v7 + 1;
        v51 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        v52 = *v50;
        v51 = v51 + (v52 << 7) - 128;
        if (v52 < 0)
        {
          v118 = sub_1958770(v7, v51);
          v144 = v118;
          *(a1 + 28) = v119;
          if (!v118)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_77:
          v144 = v50;
          *(a1 + 28) = v51;
        }

        goto LABEL_145;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_138;
        }

        v5 |= 4u;
        v38 = v7 + 1;
        v39 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v40 = *v38;
        v39 = v39 + (v40 << 7) - 128;
        if (v40 < 0)
        {
          v108 = sub_1958770(v7, v39);
          v144 = v108;
          *(a1 + 32) = v109;
          if (!v108)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v38 = v7 + 2;
LABEL_57:
          v144 = v38;
          *(a1 + 32) = v39;
        }

        goto LABEL_145;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_138;
        }

        v5 |= 8u;
        v44 = v7 + 1;
        v45 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        v46 = *v44;
        v45 = v45 + (v46 << 7) - 128;
        if (v46 < 0)
        {
          v112 = sub_1958770(v7, v45);
          v144 = v112;
          *(a1 + 36) = v113;
          if (!v112)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v44 = v7 + 2;
LABEL_67:
          v144 = v44;
          *(a1 + 36) = v45;
        }

        goto LABEL_145;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_138;
        }

        v5 |= 0x10u;
        v23 = v7 + 1;
        v24 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if (v25 < 0)
        {
          v98 = sub_1958770(v7, v24);
          v144 = v98;
          *(a1 + 40) = v99;
          if (!v98)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_32:
          v144 = v23;
          *(a1 + 40) = v24;
        }

        goto LABEL_145;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_138;
        }

        v5 |= 0x20u;
        v59 = v7 + 1;
        v60 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        v61 = *v59;
        v60 = v60 + (v61 << 7) - 128;
        if (v61 < 0)
        {
          v124 = sub_1958770(v7, v60);
          v144 = v124;
          *(a1 + 44) = v125;
          if (!v124)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v59 = v7 + 2;
LABEL_92:
          v144 = v59;
          *(a1 + 44) = v60;
        }

        goto LABEL_145;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_138;
        }

        v5 |= 0x40u;
        v68 = v7 + 1;
        v69 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_107;
        }

        v70 = *v68;
        v69 = v69 + (v70 << 7) - 128;
        if (v70 < 0)
        {
          v130 = sub_1958770(v7, v69);
          v144 = v130;
          *(a1 + 48) = v131;
          if (!v130)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v68 = v7 + 2;
LABEL_107:
          v144 = v68;
          *(a1 + 48) = v69;
        }

        goto LABEL_145;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_138;
        }

        v5 |= 0x80u;
        v47 = v7 + 1;
        v48 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        v49 = *v47;
        v48 = v48 + (v49 << 7) - 128;
        if (v49 < 0)
        {
          v114 = sub_1958770(v7, v48);
          v144 = v114;
          *(a1 + 52) = v115;
          if (!v114)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v47 = v7 + 2;
LABEL_72:
          v144 = v47;
          *(a1 + 52) = v48;
        }

        goto LABEL_145;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_138;
        }

        v5 |= 0x100u;
        v77 = v7 + 1;
        v78 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_122;
        }

        v79 = *v77;
        v78 = v78 + (v79 << 7) - 128;
        if (v79 < 0)
        {
          v136 = sub_1958770(v7, v78);
          v144 = v136;
          *(a1 + 56) = v137;
          if (!v136)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v77 = v7 + 2;
LABEL_122:
          v144 = v77;
          *(a1 + 56) = v78;
        }

        goto LABEL_145;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_138;
        }

        v5 |= 0x200u;
        v29 = v7 + 1;
        v30 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v31 = *v29;
        v30 = v30 + (v31 << 7) - 128;
        if (v31 < 0)
        {
          v102 = sub_1958770(v7, v30);
          v144 = v102;
          *(a1 + 60) = v103;
          if (!v102)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_42:
          v144 = v29;
          *(a1 + 60) = v30;
        }

        goto LABEL_145;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_138;
        }

        v5 |= 0x400u;
        v74 = v7 + 1;
        v75 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_117;
        }

        v76 = *v74;
        v75 = v75 + (v76 << 7) - 128;
        if (v76 < 0)
        {
          v134 = sub_1958770(v7, v75);
          v144 = v134;
          *(a1 + 64) = v135;
          if (!v134)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v74 = v7 + 2;
LABEL_117:
          v144 = v74;
          *(a1 + 64) = v75;
        }

        goto LABEL_145;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_138;
        }

        v5 |= 0x800u;
        v20 = v7 + 1;
        v21 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v22 = *v20;
        v21 = v21 + (v22 << 7) - 128;
        if (v22 < 0)
        {
          v96 = sub_1958770(v7, v21);
          v144 = v96;
          *(a1 + 68) = v97;
          if (!v96)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_27:
          v144 = v20;
          *(a1 + 68) = v21;
        }

        goto LABEL_145;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_138;
        }

        v5 |= 0x1000u;
        v26 = v7 + 1;
        v27 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v28 = *v26;
        v27 = v27 + (v28 << 7) - 128;
        if (v28 < 0)
        {
          v100 = sub_1958770(v7, v27);
          v144 = v100;
          *(a1 + 72) = v101;
          if (!v100)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_37:
          v144 = v26;
          *(a1 + 72) = v27;
        }

        goto LABEL_145;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_138;
        }

        v5 |= 0x2000u;
        v65 = v7 + 1;
        v66 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_102;
        }

        v67 = *v65;
        v66 = v66 + (v67 << 7) - 128;
        if (v67 < 0)
        {
          v128 = sub_1958770(v7, v66);
          v144 = v128;
          *(a1 + 76) = v129;
          if (!v128)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v65 = v7 + 2;
LABEL_102:
          v144 = v65;
          *(a1 + 76) = v66;
        }

        goto LABEL_145;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_138;
        }

        v5 |= 0x4000u;
        v17 = v7 + 1;
        v18 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v17;
        v18 = v18 + (v19 << 7) - 128;
        if (v19 < 0)
        {
          v94 = sub_1958770(v7, v18);
          v144 = v94;
          *(a1 + 80) = v95;
          if (!v94)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v17 = v7 + 2;
LABEL_22:
          v144 = v17;
          *(a1 + 80) = v18;
        }

        goto LABEL_145;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_138;
        }

        v5 |= 0x8000u;
        v41 = v7 + 1;
        v42 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        v43 = *v41;
        v42 = v42 + (v43 << 7) - 128;
        if (v43 < 0)
        {
          v110 = sub_1958770(v7, v42);
          v144 = v110;
          *(a1 + 84) = v111;
          if (!v110)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v41 = v7 + 2;
LABEL_62:
          v144 = v41;
          *(a1 + 84) = v42;
        }

        goto LABEL_145;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_138;
        }

        v5 |= 0x10000u;
        v14 = v7 + 1;
        v15 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v14;
        v15 = v15 + (v16 << 7) - 128;
        if (v16 < 0)
        {
          v92 = sub_1958770(v7, v15);
          v144 = v92;
          *(a1 + 88) = v93;
          if (!v92)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_17:
          v144 = v14;
          *(a1 + 88) = v15;
        }

        goto LABEL_145;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_138;
        }

        v5 |= 0x20000u;
        v53 = v7 + 1;
        v54 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

        v55 = *v53;
        v54 = v54 + (v55 << 7) - 128;
        if (v55 < 0)
        {
          v120 = sub_1958770(v7, v54);
          v144 = v120;
          *(a1 + 92) = v121;
          if (!v120)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v53 = v7 + 2;
LABEL_82:
          v144 = v53;
          *(a1 + 92) = v54;
        }

        goto LABEL_145;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_138;
        }

        v5 |= 0x40000u;
        v71 = v7 + 1;
        v72 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_112;
        }

        v73 = *v71;
        v72 = v72 + (v73 << 7) - 128;
        if (v73 < 0)
        {
          v132 = sub_1958770(v7, v72);
          v144 = v132;
          *(a1 + 96) = v133;
          if (!v132)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v71 = v7 + 2;
LABEL_112:
          v144 = v71;
          *(a1 + 96) = v72;
        }

        goto LABEL_145;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_138;
        }

        v5 |= 0x80000u;
        v83 = v7 + 1;
        v84 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_132;
        }

        v85 = *v83;
        v84 = v84 + (v85 << 7) - 128;
        if (v85 < 0)
        {
          v140 = sub_1958770(v7, v84);
          v144 = v140;
          *(a1 + 100) = v141;
          if (!v140)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v83 = v7 + 2;
LABEL_132:
          v144 = v83;
          *(a1 + 100) = v84;
        }

        goto LABEL_145;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_138;
        }

        v5 |= 0x100000u;
        v56 = v7 + 1;
        v57 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_87;
        }

        v58 = *v56;
        v57 = v57 + (v58 << 7) - 128;
        if (v58 < 0)
        {
          v122 = sub_1958770(v7, v57);
          v144 = v122;
          *(a1 + 104) = v123;
          if (!v122)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v56 = v7 + 2;
LABEL_87:
          v144 = v56;
          *(a1 + 104) = v57;
        }

        goto LABEL_145;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_138;
        }

        v5 |= 0x200000u;
        v62 = v7 + 1;
        v63 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_97;
        }

        v64 = *v62;
        v63 = v63 + (v64 << 7) - 128;
        if (v64 < 0)
        {
          v126 = sub_1958770(v7, v63);
          v144 = v126;
          *(a1 + 108) = v127;
          if (!v126)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v62 = v7 + 2;
LABEL_97:
          v144 = v62;
          *(a1 + 108) = v63;
        }

        goto LABEL_145;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_138;
        }

        v5 |= 0x400000u;
        v80 = v7 + 1;
        v81 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_127;
        }

        v82 = *v80;
        v81 = v81 + (v82 << 7) - 128;
        if (v82 < 0)
        {
          v138 = sub_1958770(v7, v81);
          v144 = v138;
          *(a1 + 112) = v139;
          if (!v138)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v80 = v7 + 2;
LABEL_127:
          v144 = v80;
          *(a1 + 112) = v81;
        }

        goto LABEL_145;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_138;
        }

        v5 |= 0x800000u;
        v86 = v7 + 1;
        v87 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_137;
        }

        v88 = *v86;
        v87 = v87 + (v88 << 7) - 128;
        if (v88 < 0)
        {
          v142 = sub_1958770(v7, v87);
          v144 = v142;
          *(a1 + 116) = v143;
          if (!v142)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v86 = v7 + 2;
LABEL_137:
          v144 = v86;
          *(a1 + 116) = v87;
        }

        goto LABEL_145;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_138;
        }

        v5 |= 0x1000000u;
        v35 = v7 + 1;
        v36 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v37 = *v35;
        v36 = v36 + (v37 << 7) - 128;
        if (v37 < 0)
        {
          v106 = sub_1958770(v7, v36);
          v144 = v106;
          *(a1 + 120) = v107;
          if (!v106)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v35 = v7 + 2;
LABEL_52:
          v144 = v35;
          *(a1 + 120) = v36;
        }

        goto LABEL_145;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_138;
        }

        v5 |= 0x2000000u;
        v32 = v7 + 1;
        v33 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v34 = *v32;
        v33 = v33 + (v34 << 7) - 128;
        if (v34 < 0)
        {
          v104 = sub_1958770(v7, v33);
          v144 = v104;
          *(a1 + 124) = v105;
          if (!v104)
          {
            goto LABEL_202;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_47:
          v144 = v32;
          *(a1 + 124) = v33;
        }

        goto LABEL_145;
      default:
LABEL_138:
        if (v8)
        {
          v89 = (v8 & 7) == 4;
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
            v7 = v144;
          }

          v144 = sub_1952690(v8, v91, v7, a3);
          if (!v144)
          {
            goto LABEL_202;
          }

LABEL_145:
          if (sub_195ADC0(a3, &v144, a3[11].u32[1]))
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
LABEL_202:
          v144 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v144;
    }
  }
}

char *sub_12910A8(uint64_t a1, char *__dst, unint64_t *a3)
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
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 36);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 40);
    *v19 = 40;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          LODWORD(v19) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 44);
    *v24 = 48;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 48);
    *v28 = 56;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v33 - 1) = v28 | 0x80;
          LODWORD(v28) = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v28 + 2;
    }
  }

  else
  {
    v33 = v28;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 52);
    *v33 = 64;
    v33[1] = v38;
    if (v38 > 0x7F)
    {
      v33[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v33[2] = v38 >> 7;
      v37 = v33 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v40) = v33[2];
        do
        {
          *(v37 - 1) = v40 | 0x80;
          v40 = v39 >> 7;
          *v37++ = v39 >> 7;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v37 = v33 + 2;
    }
  }

  else
  {
    v37 = v33;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v43 = *(a1 + 56);
    *v37 = 72;
    v37[1] = v43;
    if (v43 > 0x7F)
    {
      v37[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v37[2] = v43 >> 7;
      v42 = v37 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v37) = v37[2];
        do
        {
          *(v42 - 1) = v37 | 0x80;
          LODWORD(v37) = v44 >> 7;
          *v42++ = v44 >> 7;
          v45 = v44 >> 14;
          v44 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v42 = v37 + 2;
    }
  }

  else
  {
    v42 = v37;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v47 = *(a1 + 60);
    *v42 = 80;
    v42[1] = v47;
    if (v47 > 0x7F)
    {
      v42[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v42[2] = v47 >> 7;
      v46 = v42 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v49) = v42[2];
        do
        {
          *(v46 - 1) = v49 | 0x80;
          v49 = v48 >> 7;
          *v46++ = v48 >> 7;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v46 = v42 + 2;
    }
  }

  else
  {
    v46 = v42;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v52 = *(a1 + 64);
    *v46 = 88;
    v46[1] = v52;
    if (v52 > 0x7F)
    {
      v46[1] = v52 | 0x80;
      v53 = v52 >> 7;
      v46[2] = v52 >> 7;
      v51 = v46 + 3;
      if (v52 >= 0x4000)
      {
        LOBYTE(v46) = v46[2];
        do
        {
          *(v51 - 1) = v46 | 0x80;
          LODWORD(v46) = v53 >> 7;
          *v51++ = v53 >> 7;
          v54 = v53 >> 14;
          v53 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v51 = v46 + 2;
    }
  }

  else
  {
    v51 = v46;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v56 = *(a1 + 68);
    *v51 = 96;
    v51[1] = v56;
    if (v56 > 0x7F)
    {
      v51[1] = v56 | 0x80;
      v57 = v56 >> 7;
      v51[2] = v56 >> 7;
      v55 = v51 + 3;
      if (v56 >= 0x4000)
      {
        LOBYTE(v58) = v51[2];
        do
        {
          *(v55 - 1) = v58 | 0x80;
          v58 = v57 >> 7;
          *v55++ = v57 >> 7;
          v59 = v57 >> 14;
          v57 >>= 7;
        }

        while (v59);
      }
    }

    else
    {
      v55 = v51 + 2;
    }
  }

  else
  {
    v55 = v51;
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v55)
    {
      v55 = sub_225EB68(a3, v55);
    }

    v61 = *(a1 + 72);
    *v55 = 104;
    v55[1] = v61;
    if (v61 > 0x7F)
    {
      v55[1] = v61 | 0x80;
      v62 = v61 >> 7;
      v55[2] = v61 >> 7;
      v60 = v55 + 3;
      if (v61 >= 0x4000)
      {
        LOBYTE(v55) = v55[2];
        do
        {
          *(v60 - 1) = v55 | 0x80;
          LODWORD(v55) = v62 >> 7;
          *v60++ = v62 >> 7;
          v63 = v62 >> 14;
          v62 >>= 7;
        }

        while (v63);
      }
    }

    else
    {
      v60 = v55 + 2;
    }
  }

  else
  {
    v60 = v55;
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v65 = *(a1 + 76);
    *v60 = 112;
    v60[1] = v65;
    if (v65 > 0x7F)
    {
      v60[1] = v65 | 0x80;
      v66 = v65 >> 7;
      v60[2] = v65 >> 7;
      v64 = v60 + 3;
      if (v65 >= 0x4000)
      {
        LOBYTE(v67) = v60[2];
        do
        {
          *(v64 - 1) = v67 | 0x80;
          v67 = v66 >> 7;
          *v64++ = v66 >> 7;
          v68 = v66 >> 14;
          v66 >>= 7;
        }

        while (v68);
      }
    }

    else
    {
      v64 = v60 + 2;
    }
  }

  else
  {
    v64 = v60;
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v70 = *(a1 + 80);
    *v64 = 120;
    v64[1] = v70;
    if (v70 > 0x7F)
    {
      v64[1] = v70 | 0x80;
      v71 = v70 >> 7;
      v64[2] = v70 >> 7;
      v69 = v64 + 3;
      if (v70 >= 0x4000)
      {
        LOBYTE(v64) = v64[2];
        do
        {
          *(v69 - 1) = v64 | 0x80;
          LODWORD(v64) = v71 >> 7;
          *v69++ = v71 >> 7;
          v72 = v71 >> 14;
          v71 >>= 7;
        }

        while (v72);
      }
    }

    else
    {
      v69 = v64 + 2;
    }
  }

  else
  {
    v69 = v64;
  }

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v74 = *(a1 + 84);
    *v69 = 384;
    v69[2] = v74;
    if (v74 > 0x7F)
    {
      v69[2] = v74 | 0x80;
      v75 = v74 >> 7;
      v69[3] = v74 >> 7;
      v73 = v69 + 4;
      if (v74 >= 0x4000)
      {
        LOBYTE(v76) = v69[3];
        do
        {
          *(v73 - 1) = v76 | 0x80;
          v76 = v75 >> 7;
          *v73++ = v75 >> 7;
          v77 = v75 >> 14;
          v75 >>= 7;
        }

        while (v77);
      }
    }

    else
    {
      v73 = v69 + 3;
    }
  }

  else
  {
    v73 = v69;
  }

  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v73)
    {
      v73 = sub_225EB68(a3, v73);
    }

    v79 = *(a1 + 88);
    *v73 = 392;
    v73[2] = v79;
    if (v79 > 0x7F)
    {
      v73[2] = v79 | 0x80;
      v80 = v79 >> 7;
      v73[3] = v79 >> 7;
      v78 = v73 + 4;
      if (v79 >= 0x4000)
      {
        LOBYTE(v73) = v73[3];
        do
        {
          *(v78 - 1) = v73 | 0x80;
          LODWORD(v73) = v80 >> 7;
          *v78++ = v80 >> 7;
          v81 = v80 >> 14;
          v80 >>= 7;
        }

        while (v81);
      }
    }

    else
    {
      v78 = v73 + 3;
    }
  }

  else
  {
    v78 = v73;
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v83 = *(a1 + 92);
    *v78 = 400;
    v78[2] = v83;
    if (v83 > 0x7F)
    {
      v78[2] = v83 | 0x80;
      v84 = v83 >> 7;
      v78[3] = v83 >> 7;
      v82 = v78 + 4;
      if (v83 >= 0x4000)
      {
        LOBYTE(v85) = v78[3];
        do
        {
          *(v82 - 1) = v85 | 0x80;
          v85 = v84 >> 7;
          *v82++ = v84 >> 7;
          v86 = v84 >> 14;
          v84 >>= 7;
        }

        while (v86);
      }
    }

    else
    {
      v82 = v78 + 3;
    }
  }

  else
  {
    v82 = v78;
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v82)
    {
      v82 = sub_225EB68(a3, v82);
    }

    v88 = *(a1 + 96);
    *v82 = 408;
    v82[2] = v88;
    if (v88 > 0x7F)
    {
      v82[2] = v88 | 0x80;
      v89 = v88 >> 7;
      v82[3] = v88 >> 7;
      v87 = v82 + 4;
      if (v88 >= 0x4000)
      {
        LOBYTE(v82) = v82[3];
        do
        {
          *(v87 - 1) = v82 | 0x80;
          LODWORD(v82) = v89 >> 7;
          *v87++ = v89 >> 7;
          v90 = v89 >> 14;
          v89 >>= 7;
        }

        while (v90);
      }
    }

    else
    {
      v87 = v82 + 3;
    }
  }

  else
  {
    v87 = v82;
  }

  if ((v5 & 0x80000) != 0)
  {
    if (*a3 <= v87)
    {
      v87 = sub_225EB68(a3, v87);
    }

    v92 = *(a1 + 100);
    *v87 = 416;
    v87[2] = v92;
    if (v92 > 0x7F)
    {
      v87[2] = v92 | 0x80;
      v93 = v92 >> 7;
      v87[3] = v92 >> 7;
      v91 = v87 + 4;
      if (v92 >= 0x4000)
      {
        LOBYTE(v94) = v87[3];
        do
        {
          *(v91 - 1) = v94 | 0x80;
          v94 = v93 >> 7;
          *v91++ = v93 >> 7;
          v95 = v93 >> 14;
          v93 >>= 7;
        }

        while (v95);
      }
    }

    else
    {
      v91 = v87 + 3;
    }
  }

  else
  {
    v91 = v87;
  }

  if ((v5 & 0x100000) != 0)
  {
    if (*a3 <= v91)
    {
      v91 = sub_225EB68(a3, v91);
    }

    v97 = *(a1 + 104);
    *v91 = 424;
    v91[2] = v97;
    if (v97 > 0x7F)
    {
      v91[2] = v97 | 0x80;
      v98 = v97 >> 7;
      v91[3] = v97 >> 7;
      v96 = v91 + 4;
      if (v97 >= 0x4000)
      {
        LOBYTE(v91) = v91[3];
        do
        {
          *(v96 - 1) = v91 | 0x80;
          LODWORD(v91) = v98 >> 7;
          *v96++ = v98 >> 7;
          v99 = v98 >> 14;
          v98 >>= 7;
        }

        while (v99);
      }
    }

    else
    {
      v96 = v91 + 3;
    }
  }

  else
  {
    v96 = v91;
  }

  if ((v5 & 0x200000) != 0)
  {
    if (*a3 <= v96)
    {
      v96 = sub_225EB68(a3, v96);
    }

    v101 = *(a1 + 108);
    *v96 = 432;
    v96[2] = v101;
    if (v101 > 0x7F)
    {
      v96[2] = v101 | 0x80;
      v102 = v101 >> 7;
      v96[3] = v101 >> 7;
      v100 = v96 + 4;
      if (v101 >= 0x4000)
      {
        LOBYTE(v103) = v96[3];
        do
        {
          *(v100 - 1) = v103 | 0x80;
          v103 = v102 >> 7;
          *v100++ = v102 >> 7;
          v104 = v102 >> 14;
          v102 >>= 7;
        }

        while (v104);
      }
    }

    else
    {
      v100 = v96 + 3;
    }
  }

  else
  {
    v100 = v96;
  }

  if ((v5 & 0x400000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v106 = *(a1 + 112);
    *v100 = 440;
    v100[2] = v106;
    if (v106 > 0x7F)
    {
      v100[2] = v106 | 0x80;
      v107 = v106 >> 7;
      v100[3] = v106 >> 7;
      v105 = v100 + 4;
      if (v106 >= 0x4000)
      {
        LOBYTE(v100) = v100[3];
        do
        {
          *(v105 - 1) = v100 | 0x80;
          LODWORD(v100) = v107 >> 7;
          *v105++ = v107 >> 7;
          v108 = v107 >> 14;
          v107 >>= 7;
        }

        while (v108);
      }
    }

    else
    {
      v105 = v100 + 3;
    }
  }

  else
  {
    v105 = v100;
  }

  if ((v5 & 0x800000) != 0)
  {
    if (*a3 <= v105)
    {
      v105 = sub_225EB68(a3, v105);
    }

    v110 = *(a1 + 116);
    *v105 = 448;
    v105[2] = v110;
    if (v110 > 0x7F)
    {
      v105[2] = v110 | 0x80;
      v111 = v110 >> 7;
      v105[3] = v110 >> 7;
      v109 = v105 + 4;
      if (v110 >= 0x4000)
      {
        LOBYTE(v112) = v105[3];
        do
        {
          *(v109 - 1) = v112 | 0x80;
          v112 = v111 >> 7;
          *v109++ = v111 >> 7;
          v113 = v111 >> 14;
          v111 >>= 7;
        }

        while (v113);
      }
    }

    else
    {
      v109 = v105 + 3;
    }
  }

  else
  {
    v109 = v105;
  }

  if ((v5 & 0x1000000) != 0)
  {
    if (*a3 <= v109)
    {
      v109 = sub_225EB68(a3, v109);
    }

    v115 = *(a1 + 120);
    *v109 = 456;
    v109[2] = v115;
    if (v115 > 0x7F)
    {
      v109[2] = v115 | 0x80;
      v116 = v115 >> 7;
      v109[3] = v115 >> 7;
      v114 = v109 + 4;
      if (v115 >= 0x4000)
      {
        LOBYTE(v109) = v109[3];
        do
        {
          *(v114 - 1) = v109 | 0x80;
          LODWORD(v109) = v116 >> 7;
          *v114++ = v116 >> 7;
          v117 = v116 >> 14;
          v116 >>= 7;
        }

        while (v117);
      }
    }

    else
    {
      v114 = v109 + 3;
    }
  }

  else
  {
    v114 = v109;
  }

  if ((v5 & 0x2000000) != 0)
  {
    if (*a3 <= v114)
    {
      v114 = sub_225EB68(a3, v114);
    }

    v119 = *(a1 + 124);
    *v114 = 464;
    v114[2] = v119;
    if (v119 > 0x7F)
    {
      v114[2] = v119 | 0x80;
      v120 = v119 >> 7;
      v114[3] = v119 >> 7;
      v118 = v114 + 4;
      if (v119 >= 0x4000)
      {
        LOBYTE(v121) = v114[3];
        do
        {
          *(v118 - 1) = v121 | 0x80;
          v121 = v120 >> 7;
          *v118++ = v120 >> 7;
          v122 = v120 >> 14;
          v120 >>= 7;
        }

        while (v122);
      }
    }

    else
    {
      v118 = v114 + 3;
    }
  }

  else
  {
    v118 = v114;
  }

  v123 = *(a1 + 8);
  if ((v123 & 1) == 0)
  {
    return v118;
  }

  v125 = v123 & 0xFFFFFFFFFFFFFFFCLL;
  v126 = *(v125 + 31);
  if (v126 < 0)
  {
    v127 = *(v125 + 8);
    v126 = *(v125 + 16);
  }

  else
  {
    v127 = (v125 + 8);
  }

  if ((*a3 - v118) >= v126)
  {
    v128 = v126;
    memcpy(v118, v127, v126);
    v118 += v128;
    return v118;
  }

  return sub_1957130(a3, v127, v126, v118);
}

uint64_t sub_1291EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_15;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_12:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_13:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_46:
  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v1 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v1 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x200) == 0)
    {
LABEL_18:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_50;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x400) == 0)
  {
LABEL_19:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x800) == 0)
  {
LABEL_20:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x1000) == 0)
  {
LABEL_21:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x2000) == 0)
  {
LABEL_22:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  v2 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x4000) == 0)
  {
LABEL_23:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_54:
  v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x8000) != 0)
  {
LABEL_24:
    v2 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v1 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v1 & 0x10000) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v1 & 0x20000) == 0)
    {
LABEL_28:
      if ((v1 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_58;
    }
  }

  else if ((v1 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v2 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x40000) == 0)
  {
LABEL_29:
    if ((v1 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  v2 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x80000) == 0)
  {
LABEL_30:
    if ((v1 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  v2 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x100000) == 0)
  {
LABEL_31:
    if ((v1 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  v2 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x200000) == 0)
  {
LABEL_32:
    if ((v1 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  v2 += ((9 * (__clz(*(a1 + 108) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x400000) == 0)
  {
LABEL_33:
    if ((v1 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_62:
  v2 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x800000) != 0)
  {
LABEL_34:
    v2 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if ((v1 & 0x3000000) != 0)
  {
    if ((v1 & 0x1000000) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v1 & 0x2000000) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 124) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
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

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_12923CC(uint64_t a1)
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

void sub_129246C(uint64_t a1)
{
  sub_12923CC(a1);

  operator delete();
}

uint64_t sub_12924A4(uint64_t a1)
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

uint64_t sub_12924F8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v30, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v30 + 1);
    v8 = **v30;
    if (**v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v30 + 2);
      }
    }

    *v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v21 = v7 + 1;
      LODWORD(v20) = *v7;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_30;
      }

      v22 = *v21;
      v20 = v20 + (v22 << 7) - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_30:
        *v30 = v21;
        *(a1 + 40) = v20;
        goto LABEL_35;
      }

      v28 = sub_19587DC(v7, v20);
      *v30 = v28;
      *(a1 + 40) = v29;
      if (!v28)
      {
        goto LABEL_44;
      }

      goto LABEL_35;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_34:
      *v30 = v24;
      *(a1 + 32) = v23;
      goto LABEL_35;
    }

    v26 = sub_19587DC(v7, v23);
    *v30 = v26;
    *(a1 + 32) = v27;
    if (!v26)
    {
      goto LABEL_44;
    }

LABEL_35:
    if (sub_195ADC0(a3, v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = sub_194DB04((a1 + 24), v18);
    v16 = sub_1958890(v19, *v30, a3);
LABEL_24:
    *v30 = v16;
    if (!v16)
    {
      goto LABEL_44;
    }

    goto LABEL_35;
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
      v7 = *v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_24;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_44:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_1292724(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 40);
    *v6 = 24;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v14) = v6[2];
        do
        {
          *(v11 - 1) = v14 | 0x80;
          v14 = v13 >> 7;
          *v11++ = v13 >> 7;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
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

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v11;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if ((*a3 - v11) >= v19)
  {
    v21 = v19;
    memcpy(v11, v20, v19);
    v11 += v21;
    return v11;
  }

  return sub_1957130(a3, v20, v19, v11);
}

uint64_t sub_12928F0(uint64_t a1)
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

void sub_12929D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1292AC0(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956ABC(a1 + 48);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1292B88(uint64_t a1)
{
  sub_1292AC0(a1);

  operator delete();
}

uint64_t sub_1292BC0(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v1 & 0x3C) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
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

uint64_t sub_1292C54(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v41, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v41 + 1);
    v8 = **v41;
    if (**v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v41 + 2);
      }
    }

    *v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v8 >> 3 > 6)
      {
        if (v11 == 7)
        {
          if (v8 != 56)
          {
            goto LABEL_65;
          }

          v5 |= 0x10u;
          v28 = v7 + 1;
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if ((v29 & 0x80000000) == 0)
          {
            v28 = v7 + 2;
LABEL_50:
            *v41 = v28;
            *(a1 + 100) = v27 != 0;
            goto LABEL_73;
          }

          v32 = sub_19587DC(v7, v27);
          *v41 = v32;
          *(a1 + 100) = v33 != 0;
          if (!v32)
          {
            goto LABEL_78;
          }
        }

        else
        {
          if (v11 != 8 || v8 != 64)
          {
            goto LABEL_65;
          }

          v5 |= 0x20u;
          v20 = v7 + 1;
          LODWORD(v19) = *v7;
          if ((v19 & 0x80) == 0)
          {
            goto LABEL_33;
          }

          v21 = *v20;
          v19 = v19 + (v21 << 7) - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = v7 + 2;
LABEL_33:
            *v41 = v20;
            *(a1 + 104) = v19;
            goto LABEL_73;
          }

          v36 = sub_19587DC(v7, v19);
          *v41 = v36;
          *(a1 + 104) = v37;
          if (!v36)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        if (v11 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 2u;
            v25 = *(a1 + 8);
            v17 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v25)
            {
              v17 = *v17;
            }

            v18 = (a1 + 80);
LABEL_43:
            v26 = sub_194DB04(v18, v17);
            v12 = sub_1958890(v26, *v41, a3);
LABEL_72:
            *v41 = v12;
            if (!v12)
            {
              goto LABEL_78;
            }

            goto LABEL_73;
          }

          goto LABEL_65;
        }

        if (v11 != 6 || v8 != 48)
        {
          goto LABEL_65;
        }

        v5 |= 8u;
        v14 = v7 + 1;
        LODWORD(v13) = *v7;
        if ((v13 & 0x80) == 0)
        {
          goto LABEL_20;
        }

        v15 = *v14;
        v13 = v13 + (v15 << 7) - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = v7 + 2;
LABEL_20:
          *v41 = v14;
          *(a1 + 96) = v13;
          goto LABEL_73;
        }

        v34 = sub_19587DC(v7, v13);
        *v41 = v34;
        *(a1 + 96) = v35;
        if (!v34)
        {
          goto LABEL_78;
        }
      }

      goto LABEL_73;
    }

    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 != 2)
      {
        goto LABEL_65;
      }

      if (v8 == 18)
      {
        v12 = sub_1958928((a1 + 24), v7, a3);
        goto LABEL_72;
      }

      if (v8 != 16)
      {
        goto LABEL_65;
      }

      v42 = sub_128A7C8(v41);
      sub_1950044((a1 + 24), &v42);
LABEL_63:
      if (!*v41)
      {
        goto LABEL_78;
      }

      goto LABEL_73;
    }

    if (v8 != 8)
    {
      goto LABEL_65;
    }

    v5 |= 4u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_38:
      *v41 = v23;
      *(a1 + 88) = v22;
      goto LABEL_73;
    }

    v30 = sub_19587DC(v7, v22);
    *v41 = v30;
    *(a1 + 88) = v31;
    if (!v30)
    {
      goto LABEL_78;
    }

LABEL_73:
    if (sub_195ADC0(a3, v41, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4 && v8 == 34)
    {
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v18 = (a1 + 72);
      goto LABEL_43;
    }

    goto LABEL_65;
  }

  if (v8 == 26)
  {
    v12 = sub_1958908((a1 + 48), v7, a3);
    goto LABEL_72;
  }

  if (v8 == 24)
  {
    LODWORD(v42) = sub_128A7C8(v41);
    sub_194FE98((a1 + 48), &v42);
    goto LABEL_63;
  }

LABEL_65:
  if (v8)
  {
    v38 = (v8 & 7) == 4;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    v39 = *(a1 + 8);
    if (v39)
    {
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v40 = sub_11F1920((a1 + 8));
      v7 = *v41;
    }

    v12 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_72;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_78:
  *v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v41;
}

char *sub_129304C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 88);
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

  v11 = *(a1 + 40);
  if (v11 >= 1)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    *v6 = 18;
    v12 = v6 + 1;
    if (v11 >= 0x80)
    {
      do
      {
        *v12++ = v11 | 0x80;
        v47 = v11 >> 14;
        v11 >>= 7;
      }

      while (v47);
      v6 = v12 - 1;
    }

    v13 = v6 + 2;
    *v12 = v11;
    v14 = *(a1 + 32);
    v15 = &v14[*(a1 + 24)];
    do
    {
      if (*a3 <= v13)
      {
        v13 = sub_225EB68(a3, v13);
      }

      v17 = *v14++;
      v16 = v17;
      *v13 = v17;
      if (v17 > 0x7F)
      {
        *v13 = v16 | 0x80;
        v18 = v16 >> 7;
        v13[1] = v16 >> 7;
        v6 = v13 + 2;
        if (v16 >= 0x4000)
        {
          LOBYTE(v19) = v13[1];
          do
          {
            *(v6 - 1) = v19 | 0x80;
            v19 = v18 >> 7;
            *v6++ = v18 >> 7;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
        }
      }

      else
      {
        v6 = v13 + 1;
      }

      v13 = v6;
    }

    while (v14 < v15);
  }

  v21 = *(a1 + 64);
  if (v21 >= 1)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    *v6 = 26;
    v22 = v6 + 1;
    if (v21 >= 0x80)
    {
      do
      {
        *v22++ = v21 | 0x80;
        v48 = v21 >> 14;
        v21 >>= 7;
      }

      while (v48);
      v6 = v22 - 1;
    }

    v23 = v6 + 2;
    *v22 = v21;
    v24 = *(a1 + 56);
    v25 = &v24[*(a1 + 48)];
    do
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v27 = *v24++;
      v26 = v27;
      *v23 = v27;
      if (v27 > 0x7F)
      {
        *v23 = v26 | 0x80;
        v28 = v26 >> 7;
        v23[1] = v26 >> 7;
        v6 = v23 + 2;
        if (v26 >= 0x4000)
        {
          LOBYTE(v29) = v23[1];
          do
          {
            *(v6 - 1) = v29 | 0x80;
            v29 = v28 >> 7;
            *v6++ = v28 >> 7;
            v30 = v28 >> 14;
            v28 >>= 7;
          }

          while (v30);
        }
      }

      else
      {
        v6 = v23 + 1;
      }

      v23 = v6;
    }

    while (v24 < v25);
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v6 = sub_128AEEC(a3, 5, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v6);
    if ((v5 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_42;
  }

  v6 = sub_128AEEC(a3, 4, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  if ((v5 & 8) == 0)
  {
LABEL_39:
    v31 = v6;
    goto LABEL_49;
  }

LABEL_42:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v32 = *(a1 + 96);
  *v6 = 48;
  v6[1] = v32;
  if (v32 > 0x7F)
  {
    v6[1] = v32 | 0x80;
    v33 = v32 >> 7;
    v6[2] = v32 >> 7;
    v31 = v6 + 3;
    if (v32 >= 0x4000)
    {
      LOBYTE(v34) = v6[2];
      do
      {
        *(v31 - 1) = v34 | 0x80;
        v34 = v33 >> 7;
        *v31++ = v33 >> 7;
        v35 = v33 >> 14;
        v33 >>= 7;
      }

      while (v35);
    }
  }

  else
  {
    v31 = v6 + 2;
  }

LABEL_49:
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v36 = *(a1 + 100);
    *v31 = 56;
    v31[1] = v36;
    v31 += 2;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v38 = *(a1 + 104);
    *v31 = 64;
    v31[1] = v38;
    if (v38 > 0x7F)
    {
      v31[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v31[2] = v38 >> 7;
      v37 = v31 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v40) = v31[2];
        do
        {
          *(v37 - 1) = v40 | 0x80;
          v40 = v39 >> 7;
          *v37++ = v39 >> 7;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v37 = v31 + 2;
    }
  }

  else
  {
    v37 = v31;
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v37;
  }

  v44 = v42 & 0xFFFFFFFFFFFFFFFCLL;
  v45 = *(v44 + 31);
  if (v45 < 0)
  {
    v46 = *(v44 + 8);
    v45 = *(v44 + 16);
  }

  else
  {
    v46 = (v44 + 8);
  }

  if ((*a3 - v37) >= v45)
  {
    v49 = v45;
    memcpy(v37, v46, v45);
    v37 += v49;
    return v37;
  }

  return sub_1957130(a3, v46, v45, v37);
}

uint64_t sub_12934E0(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 40) = v3;
  v5 = v4 + v2;
  v6 = sub_1959E04((a1 + 48));
  if (v6)
  {
    v7 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v8;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 64) = v7;
  result = v5 + v6;
  v10 = *(a1 + 16);
  if ((v10 & 0x3F) == 0)
  {
    goto LABEL_34;
  }

  if (v10)
  {
    v11 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_15:
      if ((v10 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  result += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_16:
    if ((v10 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_24:
  result += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_25:
  v17 = *(a1 + 96);
  if (v17 < 0)
  {
    v18 = 11;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v18;
LABEL_29:
  result += (v10 >> 3) & 2;
  if ((v10 & 0x20) != 0)
  {
    v19 = *(a1 + 104);
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v19 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 11;
    }

    result += v21;
  }

LABEL_34:
  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    result += v24;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_12936FC(uint64_t a1, uint64_t a2)
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
    v9 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v9 + v8);
    v10 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v10 + 4 * v9), *(a2 + 56), 4 * *(a2 + 48));
  }

  v11 = *(a2 + 16);
  if ((v11 & 0x3F) != 0)
  {
    if (v11)
    {
      v13 = *(a2 + 72);
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_194EA1C((a1 + 72), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v11 & 2) == 0)
      {
LABEL_8:
        if ((v11 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_24;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_8;
    }

    v16 = *(a2 + 80);
    *(a1 + 16) |= 2u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_194EA1C((a1 + 80), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
    if ((v11 & 4) == 0)
    {
LABEL_9:
      if ((v11 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 88) = *(a2 + 88);
    if ((v11 & 8) == 0)
    {
LABEL_10:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(a1 + 96) = *(a2 + 96);
    if ((v11 & 0x10) == 0)
    {
LABEL_11:
      if ((v11 & 0x20) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v11;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_13;
    }

LABEL_26:
    *(a1 + 100) = *(a2 + 100);
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_12938C4(void *a1)
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

void sub_1293938(void *a1)
{
  sub_12938C4(a1);

  operator delete();
}

char *sub_1293970(uint64_t a1, char *a2, int32x2_t *a3)
{
  v99 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v99, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v99 + 1;
    v8 = *v99;
    if (*v99 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v99, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v99 + 2;
      }
    }

    v99 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_93;
        }

        v5 |= 1u;
        v11 = v7 + 1;
        v12 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v12 = v12 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v11 = v7 + 2;
LABEL_12:
          v99 = v11;
          *(a1 + 24) = v12;
          goto LABEL_100;
        }

        v81 = sub_1958770(v7, v12);
        v99 = v81;
        *(a1 + 24) = v82;
        if (v81)
        {
          goto LABEL_100;
        }

        goto LABEL_139;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_93;
        }

        v5 |= 2u;
        v26 = v7 + 1;
        v27 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v28 = *v26;
        v27 = v27 + (v28 << 7) - 128;
        if (v28 < 0)
        {
          v73 = sub_1958770(v7, v27);
          v99 = v73;
          *(a1 + 28) = v74;
          if (!v73)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_37:
          v99 = v26;
          *(a1 + 28) = v27;
        }

        goto LABEL_100;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_93;
        }

        v5 |= 4u;
        v38 = v7 + 1;
        v39 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v40 = *v38;
        v39 = v39 + (v40 << 7) - 128;
        if (v40 < 0)
        {
          v83 = sub_1958770(v7, v39);
          v99 = v83;
          *(a1 + 32) = v84;
          if (!v83)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v38 = v7 + 2;
LABEL_57:
          v99 = v38;
          *(a1 + 32) = v39;
        }

        goto LABEL_100;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_93;
        }

        v5 |= 8u;
        v35 = v7 + 1;
        v36 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v37 = *v35;
        v36 = v36 + (v37 << 7) - 128;
        if (v37 < 0)
        {
          v79 = sub_1958770(v7, v36);
          v99 = v79;
          *(a1 + 36) = v80;
          if (!v79)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v35 = v7 + 2;
LABEL_52:
          v99 = v35;
          *(a1 + 36) = v36;
        }

        goto LABEL_100;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_93;
        }

        v5 |= 0x10u;
        v20 = v7 + 1;
        v21 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v22 = *v20;
        v21 = v21 + (v22 << 7) - 128;
        if (v22 < 0)
        {
          v69 = sub_1958770(v7, v21);
          v99 = v69;
          *(a1 + 40) = v70;
          if (!v69)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_27:
          v99 = v20;
          *(a1 + 40) = v21;
        }

        goto LABEL_100;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_93;
        }

        v5 |= 0x20u;
        v29 = v7 + 1;
        v30 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v31 = *v29;
        v30 = v30 + (v31 << 7) - 128;
        if (v31 < 0)
        {
          v75 = sub_1958770(v7, v30);
          v99 = v75;
          *(a1 + 44) = v76;
          if (!v75)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_42:
          v99 = v29;
          *(a1 + 44) = v30;
        }

        goto LABEL_100;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_93;
        }

        v5 |= 0x40u;
        v41 = v7 + 1;
        v42 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        v43 = *v41;
        v42 = v42 + (v43 << 7) - 128;
        if (v43 < 0)
        {
          v85 = sub_1958770(v7, v42);
          v99 = v85;
          *(a1 + 48) = v86;
          if (!v85)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v41 = v7 + 2;
LABEL_62:
          v99 = v41;
          *(a1 + 48) = v42;
        }

        goto LABEL_100;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_93;
        }

        v5 |= 0x80u;
        v44 = v7 + 1;
        v45 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        v46 = *v44;
        v45 = v45 + (v46 << 7) - 128;
        if (v46 < 0)
        {
          v87 = sub_1958770(v7, v45);
          v99 = v87;
          *(a1 + 52) = v88;
          if (!v87)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v44 = v7 + 2;
LABEL_67:
          v99 = v44;
          *(a1 + 52) = v45;
        }

        goto LABEL_100;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_93;
        }

        v5 |= 0x100u;
        v56 = v7 + 1;
        v57 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_87;
        }

        v58 = *v56;
        v57 = v57 + (v58 << 7) - 128;
        if (v58 < 0)
        {
          v95 = sub_1958770(v7, v57);
          v99 = v95;
          *(a1 + 56) = v96;
          if (!v95)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v56 = v7 + 2;
LABEL_87:
          v99 = v56;
          *(a1 + 56) = v57;
        }

        goto LABEL_100;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_93;
        }

        v5 |= 0x200u;
        v53 = v7 + 1;
        v54 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

        v55 = *v53;
        v54 = v54 + (v55 << 7) - 128;
        if (v55 < 0)
        {
          v93 = sub_1958770(v7, v54);
          v99 = v93;
          *(a1 + 60) = v94;
          if (!v93)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v53 = v7 + 2;
LABEL_82:
          v99 = v53;
          *(a1 + 60) = v54;
        }

        goto LABEL_100;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_93;
        }

        v5 |= 0x800u;
        v17 = v7 + 1;
        v18 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v17;
        v18 = v18 + (v19 << 7) - 128;
        if (v19 < 0)
        {
          v67 = sub_1958770(v7, v18);
          v99 = v67;
          *(a1 + 68) = v68;
          if (!v67)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v17 = v7 + 2;
LABEL_22:
          v99 = v17;
          *(a1 + 68) = v18;
        }

        goto LABEL_100;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_93;
        }

        v5 |= 0x1000u;
        v32 = v7 + 1;
        v33 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v34 = *v32;
        v33 = v33 + (v34 << 7) - 128;
        if (v34 < 0)
        {
          v77 = sub_1958770(v7, v33);
          v99 = v77;
          *(a1 + 72) = v78;
          if (!v77)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_47:
          v99 = v32;
          *(a1 + 72) = v33;
        }

        goto LABEL_100;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_93;
        }

        v5 |= 0x2000u;
        v23 = v7 + 1;
        v24 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if (v25 < 0)
        {
          v71 = sub_1958770(v7, v24);
          v99 = v71;
          *(a1 + 76) = v72;
          if (!v71)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_32:
          v99 = v23;
          *(a1 + 76) = v24;
        }

        goto LABEL_100;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_93;
        }

        v5 |= 0x4000u;
        v14 = v7 + 1;
        v15 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v14;
        v15 = v15 + (v16 << 7) - 128;
        if (v16 < 0)
        {
          v65 = sub_1958770(v7, v15);
          v99 = v65;
          *(a1 + 80) = v66;
          if (!v65)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_17:
          v99 = v14;
          *(a1 + 80) = v15;
        }

        goto LABEL_100;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_93;
        }

        v5 |= 0x8000u;
        v47 = v7 + 1;
        v48 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        v49 = *v47;
        v48 = v48 + (v49 << 7) - 128;
        if (v49 < 0)
        {
          v89 = sub_1958770(v7, v48);
          v99 = v89;
          *(a1 + 84) = v90;
          if (!v89)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v47 = v7 + 2;
LABEL_72:
          v99 = v47;
          *(a1 + 84) = v48;
        }

        goto LABEL_100;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_93;
        }

        v5 |= 0x10000u;
        v50 = v7 + 1;
        v51 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        v52 = *v50;
        v51 = v51 + (v52 << 7) - 128;
        if (v52 < 0)
        {
          v91 = sub_1958770(v7, v51);
          v99 = v91;
          *(a1 + 88) = v92;
          if (!v91)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_77:
          v99 = v50;
          *(a1 + 88) = v51;
        }

        goto LABEL_100;
      case 0x1Bu:
        if (v8 != 216)
        {
          goto LABEL_93;
        }

        v5 |= 0x400u;
        v59 = v7 + 1;
        v60 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        v61 = *v59;
        v60 = v60 + (v61 << 7) - 128;
        if (v61 < 0)
        {
          v97 = sub_1958770(v7, v60);
          v99 = v97;
          *(a1 + 64) = v98;
          if (!v97)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v59 = v7 + 2;
LABEL_92:
          v99 = v59;
          *(a1 + 64) = v60;
        }

        goto LABEL_100;
      default:
LABEL_93:
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
            v7 = v99;
          }

          v99 = sub_1952690(v8, v64, v7, a3);
          if (!v99)
          {
            goto LABEL_139;
          }

LABEL_100:
          if (sub_195ADC0(a3, &v99, a3[11].u32[1]))
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
LABEL_139:
          v99 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v99;
    }
  }
}

char *sub_1294144(uint64_t a1, char *__dst, unint64_t *a3)
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
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 36);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 40);
    *v19 = 40;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          LODWORD(v19) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 44);
    *v24 = 48;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 48);
    *v28 = 56;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v33 - 1) = v28 | 0x80;
          LODWORD(v28) = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v28 + 2;
    }
  }

  else
  {
    v33 = v28;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 52);
    *v33 = 64;
    v33[1] = v38;
    if (v38 > 0x7F)
    {
      v33[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v33[2] = v38 >> 7;
      v37 = v33 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v40) = v33[2];
        do
        {
          *(v37 - 1) = v40 | 0x80;
          v40 = v39 >> 7;
          *v37++ = v39 >> 7;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v37 = v33 + 2;
    }
  }

  else
  {
    v37 = v33;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v43 = *(a1 + 56);
    *v37 = 72;
    v37[1] = v43;
    if (v43 > 0x7F)
    {
      v37[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v37[2] = v43 >> 7;
      v42 = v37 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v37) = v37[2];
        do
        {
          *(v42 - 1) = v37 | 0x80;
          LODWORD(v37) = v44 >> 7;
          *v42++ = v44 >> 7;
          v45 = v44 >> 14;
          v44 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v42 = v37 + 2;
    }
  }

  else
  {
    v42 = v37;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v47 = *(a1 + 60);
    *v42 = 80;
    v42[1] = v47;
    if (v47 > 0x7F)
    {
      v42[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v42[2] = v47 >> 7;
      v46 = v42 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v49) = v42[2];
        do
        {
          *(v46 - 1) = v49 | 0x80;
          v49 = v48 >> 7;
          *v46++ = v48 >> 7;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v46 = v42 + 2;
    }
  }

  else
  {
    v46 = v42;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v52 = *(a1 + 68);
    *v46 = 424;
    v46[2] = v52;
    if (v52 > 0x7F)
    {
      v46[2] = v52 | 0x80;
      v53 = v52 >> 7;
      v46[3] = v52 >> 7;
      v51 = v46 + 4;
      if (v52 >= 0x4000)
      {
        LOBYTE(v46) = v46[3];
        do
        {
          *(v51 - 1) = v46 | 0x80;
          LODWORD(v46) = v53 >> 7;
          *v51++ = v53 >> 7;
          v54 = v53 >> 14;
          v53 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v51 = v46 + 3;
    }
  }

  else
  {
    v51 = v46;
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v56 = *(a1 + 72);
    *v51 = 432;
    v51[2] = v56;
    if (v56 > 0x7F)
    {
      v51[2] = v56 | 0x80;
      v57 = v56 >> 7;
      v51[3] = v56 >> 7;
      v55 = v51 + 4;
      if (v56 >= 0x4000)
      {
        LOBYTE(v58) = v51[3];
        do
        {
          *(v55 - 1) = v58 | 0x80;
          v58 = v57 >> 7;
          *v55++ = v57 >> 7;
          v59 = v57 >> 14;
          v57 >>= 7;
        }

        while (v59);
      }
    }

    else
    {
      v55 = v51 + 3;
    }
  }

  else
  {
    v55 = v51;
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v55)
    {
      v55 = sub_225EB68(a3, v55);
    }

    v61 = *(a1 + 76);
    *v55 = 440;
    v55[2] = v61;
    if (v61 > 0x7F)
    {
      v55[2] = v61 | 0x80;
      v62 = v61 >> 7;
      v55[3] = v61 >> 7;
      v60 = v55 + 4;
      if (v61 >= 0x4000)
      {
        LOBYTE(v55) = v55[3];
        do
        {
          *(v60 - 1) = v55 | 0x80;
          LODWORD(v55) = v62 >> 7;
          *v60++ = v62 >> 7;
          v63 = v62 >> 14;
          v62 >>= 7;
        }

        while (v63);
      }
    }

    else
    {
      v60 = v55 + 3;
    }
  }

  else
  {
    v60 = v55;
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v65 = *(a1 + 80);
    *v60 = 448;
    v60[2] = v65;
    if (v65 > 0x7F)
    {
      v60[2] = v65 | 0x80;
      v66 = v65 >> 7;
      v60[3] = v65 >> 7;
      v64 = v60 + 4;
      if (v65 >= 0x4000)
      {
        LOBYTE(v67) = v60[3];
        do
        {
          *(v64 - 1) = v67 | 0x80;
          v67 = v66 >> 7;
          *v64++ = v66 >> 7;
          v68 = v66 >> 14;
          v66 >>= 7;
        }

        while (v68);
      }
    }

    else
    {
      v64 = v60 + 3;
    }
  }

  else
  {
    v64 = v60;
  }

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v70 = *(a1 + 84);
    *v64 = 456;
    v64[2] = v70;
    if (v70 > 0x7F)
    {
      v64[2] = v70 | 0x80;
      v71 = v70 >> 7;
      v64[3] = v70 >> 7;
      v69 = v64 + 4;
      if (v70 >= 0x4000)
      {
        LOBYTE(v64) = v64[3];
        do
        {
          *(v69 - 1) = v64 | 0x80;
          LODWORD(v64) = v71 >> 7;
          *v69++ = v71 >> 7;
          v72 = v71 >> 14;
          v71 >>= 7;
        }

        while (v72);
      }
    }

    else
    {
      v69 = v64 + 3;
    }
  }

  else
  {
    v69 = v64;
  }

  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v74 = *(a1 + 88);
    *v69 = 464;
    v69[2] = v74;
    if (v74 > 0x7F)
    {
      v69[2] = v74 | 0x80;
      v75 = v74 >> 7;
      v69[3] = v74 >> 7;
      v73 = v69 + 4;
      if (v74 >= 0x4000)
      {
        LOBYTE(v76) = v69[3];
        do
        {
          *(v73 - 1) = v76 | 0x80;
          v76 = v75 >> 7;
          *v73++ = v75 >> 7;
          v77 = v75 >> 14;
          v75 >>= 7;
        }

        while (v77);
      }
    }

    else
    {
      v73 = v69 + 3;
    }
  }

  else
  {
    v73 = v69;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v73)
    {
      v73 = sub_225EB68(a3, v73);
    }

    v79 = *(a1 + 64);
    *v73 = 472;
    v73[2] = v79;
    if (v79 > 0x7F)
    {
      v73[2] = v79 | 0x80;
      v80 = v79 >> 7;
      v73[3] = v79 >> 7;
      v78 = v73 + 4;
      if (v79 >= 0x4000)
      {
        LOBYTE(v73) = v73[3];
        do
        {
          *(v78 - 1) = v73 | 0x80;
          LODWORD(v73) = v80 >> 7;
          *v78++ = v80 >> 7;
          v81 = v80 >> 14;
          v80 >>= 7;
        }

        while (v81);
      }
    }

    else
    {
      v78 = v73 + 3;
    }
  }

  else
  {
    v78 = v73;
  }

  v82 = *(a1 + 8);
  if ((v82 & 1) == 0)
  {
    return v78;
  }

  v84 = v82 & 0xFFFFFFFFFFFFFFFCLL;
  v85 = *(v84 + 31);
  if (v85 < 0)
  {
    v86 = *(v84 + 8);
    v85 = *(v84 + 16);
  }

  else
  {
    v86 = (v84 + 8);
  }

  if ((*a3 - v78) >= v85)
  {
    v87 = v85;
    memcpy(v78, v86, v85);
    v78 += v87;
    return v78;
  }

  return sub_1957130(a3, v86, v85, v78);
}

uint64_t sub_1294AD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_15;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_12:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_13:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_33:
  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v1 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v1 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x200) == 0)
    {
LABEL_18:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_37;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x400) == 0)
  {
LABEL_19:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x800) == 0)
  {
LABEL_20:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x1000) == 0)
  {
LABEL_21:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x2000) == 0)
  {
LABEL_22:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  v2 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x4000) == 0)
  {
LABEL_23:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_41:
  v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x8000) != 0)
  {
LABEL_24:
    v2 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v1 & 0x10000) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 2;
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

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

double sub_1294E1C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26CD600;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = a1;
  *(v2 + 120) = &qword_278E990;
  *(v2 + 128) = &qword_278E990;
  result = 0.0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 178) = 0u;
  return result;
}

uint64_t sub_1294F00(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CD680;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

uint64_t sub_1294FBC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CD700;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 64) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 69) = 0;
  return result;
}

uint64_t sub_1295074(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CD780;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

uint64_t sub_1295120(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26CD800;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

double sub_12951A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26CD880;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  return result;
}

void *sub_1295230(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26CD900;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_12952A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26CD980;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1295324(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26CDA00;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  return result;
}

uint64_t sub_12953AC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26CDA80;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1295434(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CDB00;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

double sub_12954F4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26CDB80;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 76) = 0u;
  return result;
}

void *sub_1295578(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12A487C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12955F8(void *a1)
{
  sub_1295578(a1);

  operator delete();
}

uint64_t sub_1295630(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1295C04(v4);
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

char *sub_12956AC(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_129792C(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F3EC0(a3, v16, v13);
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

char *sub_129583C(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_12964A8(v8, v10, a3);
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

uint64_t sub_129597C(uint64_t a1)
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
      v7 = sub_1296B14(v6);
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

void sub_1295A24(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_12A4984((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

uint64_t sub_1295AF8(uint64_t a1)
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

  v5 = (a1 + 168);
  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956AFC((a1 + 144));
  sub_1956AFC((a1 + 120));
  sub_12A4900((a1 + 96));
  sub_1956AFC((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1295BCC(uint64_t a1)
{
  sub_1295AF8(a1);

  operator delete();
}

uint64_t sub_1295C04(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  sub_12A41D0(a1 + 48);
  sub_12A41D0(a1 + 72);
  v2 = *(a1 + 104);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 112) + 8);
    do
    {
      v4 = *v3++;
      sub_1297298(v4);
      --v2;
    }

    while (v2);
    *(a1 + 104) = 0;
  }

  sub_12A41D0(a1 + 120);
  result = sub_12A41D0(a1 + 144);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

  if ((v6 & 0x1E) != 0)
  {
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_1295CE8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v86 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v86, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v86 + 1);
    v8 = **v86;
    if (**v86 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v86, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v86 + 2);
      }
    }

    *v86 = v7;
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
          v69 = v7 - 1;
          while (1)
          {
            v70 = v69 + 1;
            *v86 = v69 + 1;
            v71 = *(a1 + 112);
            if (v71 && (v72 = *(a1 + 104), v72 < *v71))
            {
              *(a1 + 104) = v72 + 1;
              v73 = *&v71[2 * v72 + 2];
            }

            else
            {
              v74 = sub_1297A04(*(a1 + 96));
              v73 = sub_19593CC(a1 + 96, v74);
              v70 = *v86;
            }

            v69 = sub_21F3F50(a3, v73, v70);
            *v86 = v69;
            if (!v69)
            {
              goto LABEL_139;
            }

            if (*a3 <= v69 || *v69 != 74)
            {
              goto LABEL_126;
            }
          }
        }
      }

      else if (v11 == 10)
      {
        if (v8 == 82)
        {
          v55 = v7 - 1;
          while (1)
          {
            v56 = (v55 + 1);
            *v86 = v55 + 1;
            v57 = *(a1 + 136);
            if (v57 && (v58 = *(a1 + 128), v58 < *v57))
            {
              *(a1 + 128) = v58 + 1;
              v59 = *&v57[2 * v58 + 2];
            }

            else
            {
              v60 = *(a1 + 120);
              if (!v60)
              {
                operator new();
              }

              *v62 = v61;
              v62[1] = sub_195A650;
              *v61 = 0;
              v61[1] = 0;
              v61[2] = 0;
              v59 = sub_19593CC(a1 + 120, v61);
              v56 = *v86;
            }

            v55 = sub_1958890(v59, v56, a3);
            *v86 = v55;
            if (!v55)
            {
              goto LABEL_139;
            }

            if (*a3 <= v55 || *v55 != 82)
            {
              goto LABEL_126;
            }
          }
        }
      }

      else if (v11 == 11 && v8 == 90)
      {
        v23 = v7 - 1;
        while (1)
        {
          v24 = (v23 + 1);
          *v86 = v23 + 1;
          v25 = *(a1 + 160);
          if (v25 && (v26 = *(a1 + 152), v26 < *v25))
          {
            *(a1 + 152) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            v28 = *(a1 + 144);
            if (!v28)
            {
              operator new();
            }

            *v30 = v29;
            v30[1] = sub_195A650;
            *v29 = 0;
            v29[1] = 0;
            v29[2] = 0;
            v27 = sub_19593CC(a1 + 144, v29);
            v24 = *v86;
          }

          v23 = sub_1958890(v27, v24, a3);
          *v86 = v23;
          if (!v23)
          {
            goto LABEL_139;
          }

          if (*a3 <= v23 || *v23 != 90)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_118;
    }

    if (v11 != 6)
    {
      if (v11 == 7)
      {
        if (v8 == 58)
        {
          v47 = v7 - 1;
          while (1)
          {
            v48 = (v47 + 1);
            *v86 = v47 + 1;
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
              v48 = *v86;
            }

            v47 = sub_1958890(v51, v48, a3);
            *v86 = v47;
            if (!v47)
            {
              goto LABEL_139;
            }

            if (*a3 <= v47 || *v47 != 58)
            {
              goto LABEL_126;
            }
          }
        }
      }

      else if (v11 == 8 && v8 == 66)
      {
        v12 = v7 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          *v86 = v12 + 1;
          v14 = *(a1 + 88);
          if (v14 && (v15 = *(a1 + 80), v15 < *v14))
          {
            *(a1 + 80) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = *(a1 + 72);
            if (!v17)
            {
              operator new();
            }

            *v19 = v18;
            v19[1] = sub_195A650;
            *v18 = 0;
            v18[1] = 0;
            v18[2] = 0;
            v16 = sub_19593CC(a1 + 72, v18);
            v13 = *v86;
          }

          v12 = sub_1958890(v16, v13, a3);
          *v86 = v12;
          if (!v12)
          {
            goto LABEL_139;
          }

          if (*a3 <= v12 || *v12 != 66)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_118;
    }

    if (v8 != 48)
    {
      goto LABEL_118;
    }

    v5 |= 0x10u;
    v66 = v7 + 1;
    v67 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_107;
    }

    v68 = *v66;
    v67 = v67 + (v68 << 7) - 128;
    if ((v68 & 0x80000000) == 0)
    {
      v66 = v7 + 2;
LABEL_107:
      *v86 = v66;
      *(a1 + 188) = v67;
      goto LABEL_126;
    }

    v84 = sub_1958770(v7, v67);
    *v86 = v84;
    *(a1 + 188) = v85;
    if (!v84)
    {
      goto LABEL_139;
    }

LABEL_126:
    if (sub_195ADC0(a3, v86, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_118;
      }

      v5 |= 2u;
      v63 = v7 + 1;
      v64 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      v65 = *v63;
      v64 = v64 + (v65 << 7) - 128;
      if ((v65 & 0x80000000) == 0)
      {
        v63 = v7 + 2;
LABEL_102:
        *v86 = v63;
        *(a1 + 176) = v64;
        goto LABEL_126;
      }

      v82 = sub_1958770(v7, v64);
      *v86 = v82;
      *(a1 + 176) = v83;
      if (!v82)
      {
        goto LABEL_139;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_118;
      }

      v5 |= 4u;
      v44 = v7 + 1;
      v45 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      v46 = *v44;
      v45 = v45 + (v46 << 7) - 128;
      if ((v46 & 0x80000000) == 0)
      {
        v44 = v7 + 2;
LABEL_73:
        *v86 = v44;
        *(a1 + 180) = v45;
        goto LABEL_126;
      }

      v78 = sub_1958770(v7, v45);
      *v86 = v78;
      *(a1 + 180) = v79;
      if (!v78)
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_118;
      }

      v5 |= 8u;
      v20 = v7 + 1;
      v21 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v22 = *v20;
      v21 = v21 + (v22 << 7) - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_32:
        *v86 = v20;
        *(a1 + 184) = v21;
        goto LABEL_126;
      }

      v80 = sub_1958770(v7, v21);
      *v86 = v80;
      *(a1 + 184) = v81;
      if (!v80)
      {
        goto LABEL_139;
      }
    }

    goto LABEL_126;
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 18)
    {
      goto LABEL_118;
    }

    *(a1 + 16) |= 1u;
    v32 = *(a1 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v34 = sub_194DB04((a1 + 168), v33);
    v35 = sub_1958890(v34, *v86, a3);
LABEL_125:
    *v86 = v35;
    if (!v35)
    {
      goto LABEL_139;
    }

    goto LABEL_126;
  }

  if (v8 == 10)
  {
    v36 = v7 - 1;
    while (1)
    {
      v37 = (v36 + 1);
      *v86 = v36 + 1;
      v38 = *(a1 + 40);
      if (v38 && (v39 = *(a1 + 32), v39 < *v38))
      {
        *(a1 + 32) = v39 + 1;
        v40 = *&v38[2 * v39 + 2];
      }

      else
      {
        v41 = *(a1 + 24);
        if (!v41)
        {
          operator new();
        }

        *v43 = v42;
        v43[1] = sub_195A650;
        *v42 = 0;
        v42[1] = 0;
        v42[2] = 0;
        v40 = sub_19593CC(a1 + 24, v42);
        v37 = *v86;
      }

      v36 = sub_1958890(v40, v37, a3);
      *v86 = v36;
      if (!v36)
      {
        goto LABEL_139;
      }

      if (*a3 <= v36 || *v36 != 10)
      {
        goto LABEL_126;
      }
    }
  }

LABEL_118:
  if (v8)
  {
    v75 = (v8 & 7) == 4;
  }

  else
  {
    v75 = 1;
  }

  if (!v75)
  {
    v76 = *(a1 + 8);
    if (v76)
    {
      v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v77 = sub_11F1920((a1 + 8));
      v7 = *v86;
    }

    v35 = sub_1952690(v8, v77, v7, a3);
    goto LABEL_125;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_139:
  *v86 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v86;
}