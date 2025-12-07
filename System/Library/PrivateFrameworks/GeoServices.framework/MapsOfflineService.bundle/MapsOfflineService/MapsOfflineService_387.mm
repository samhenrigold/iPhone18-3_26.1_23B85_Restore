uint64_t sub_15A4AC4(uint64_t a1)
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

uint64_t sub_15A4BE4(uint64_t a1)
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
  if (a1 != &off_27785D8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16E4E08(v6);
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

void sub_15A4C9C(uint64_t a1)
{
  sub_15A4BE4(a1);

  operator delete();
}

unsigned __int8 *sub_15A4CD4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E4E44(*(result + 3));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 32) = 0;
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

char *sub_15A4D40(uint64_t a1, char *a2, int32x2_t *a3)
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

      v5 |= 4u;
      LODWORD(v17) = *v7;
      if ((v17 & 0x80000000) == 0)
      {
        v18 = v7 + 1;
LABEL_37:
        v29 = v18;
        *(a1 + 40) = v17;
        goto LABEL_38;
      }

      v17 = (v7[1] << 7) + v17 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v18 = v7 + 2;
        goto LABEL_37;
      }

      v25 = sub_19587DC(v7, v17);
      v29 = v25;
      *(a1 + 40) = v26;
      if (!v25)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_34:
        v29 = v23;
        *(a1 + 32) = v22;
        goto LABEL_38;
      }

      v27 = sub_19587DC(v7, v22);
      v29 = v27;
      *(a1 + 32) = v28;
      if (!v27)
      {
        goto LABEL_47;
      }
    }

LABEL_38:
    if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 24);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_16F5828(v21);
      *(a1 + 24) = v19;
      v7 = v29;
    }

    v16 = sub_21F4D60(a3, v19, v7);
LABEL_29:
    v29 = v16;
    if (!v16)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
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

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_47:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_15A4F80(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 40);
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

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 24);
    *v11 = 26;
    v16 = *(v15 + 44);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_16E5070(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v21)
  {
    v23 = v21;
    memcpy(v11, v22, v21);
    v11 += v23;
    return v11;
  }

  return sub_1957130(a3, v22, v21, v11);
}

uint64_t sub_15A5194(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v5 = *(a1 + 40);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v6;
  }

LABEL_13:
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

void sub_15A5280(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(result + 16) |= 1u;
      v6 = *(result + 24);
      if (!v6)
      {
        v7 = *(result + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_16F5828(v8);
        *(result + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E5E8;
      }

      sub_16E527C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(result + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(result + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(result + 32) = *(a2 + 32);
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

    sub_1957EF4((result + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15A5368(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_15A53A8(uint64_t a1)
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
  if (a1 != &off_2778608)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15A4BE4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15B5510((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15A546C(uint64_t a1)
{
  sub_15A53A8(a1);

  operator delete();
}

unsigned __int8 *sub_15A54A4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15A4CD4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_15A4CD4(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_15A5534(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = v15 + 1;
          v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_15AE398(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v25;
          }

          v15 = sub_222025C(a3, v19, v16);
          v25 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 48);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_15AE398(v23);
        *(a1 + 48) = v21;
        v6 = v25;
      }

      v14 = sub_222025C(a3, v21, v6);
      goto LABEL_34;
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

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_34:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v25;
}

char *sub_15A5718(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
    *v4 = 10;
    v7 = *(v6 + 20);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_15A4F80(v6, v8, a3);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v11 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_15A4F80(v11, v13, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

uint64_t sub_15A58C0(uint64_t a1)
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
      v7 = sub_15A5194(v6);
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
    v8 = sub_15A5194(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

void sub_15A599C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_15B63B8((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(result + 16) |= 1u;
    v10 = *(result + 48);
    if (!v10)
    {
      v11 = *(result + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_15AE398(v12);
      *(result + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_27785D8;
    }

    sub_15A5280(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((result + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15A5AAC(uint64_t a1)
{
  result = sub_12B329C(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    v3 = *(a1 + 48);
    if ((*(v3 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(v3 + 24));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_15A5B0C(void *a1)
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

void sub_15A5B80(void *a1)
{
  sub_15A5B0C(a1);

  operator delete();
}

uint64_t sub_15A5BB8(uint64_t a1)
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

char *sub_15A5BD0(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 24) = v13;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_19587DC(v6, v13);
    v19 = v16;
    *(a1 + 24) = v17;
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

char *sub_15A5D44(uint64_t a1, char *__dst, void *a3)
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

unint64_t sub_15A5E6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
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

void *sub_15A5EE4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B569C(a1 + 11);
  sub_15B5618(a1 + 8);
  sub_15B5594(a1 + 5);
  sub_15B4E5C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15A5F88(void *a1)
{
  sub_15A5EE4(a1);

  operator delete();
}

char *sub_15A5FC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 32) + 8);
    do
    {
      v4 = *v3++;
      sub_1579FA0(v4);
      --v2;
    }

    while (v2);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 56) + 8);
    do
    {
      v7 = *v6++;
      sub_1402588(v7);
      --v5;
    }

    while (v5);
    *(a1 + 48) = 0;
  }

  v8 = *(a1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 80) + 8);
    do
    {
      v10 = *v9++;
      sub_15A54A4(v10);
      --v8;
    }

    while (v8);
    *(a1 + 72) = 0;
  }

  result = sub_12E4E18((a1 + 88));
  v13 = *(a1 + 8);
  v12 = (a1 + 8);
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

char *sub_15A6094(uint64_t a1, char *a2, int32x2_t *a3)
{
  v39 = a2;
  if ((sub_195ADC0(a3, &v39, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v39 + 1;
      v7 = *v39;
      if (*v39 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(v39, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = v39 + 2;
        }
      }

      v39 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v7 == 26)
          {
            v30 = v6 - 1;
            while (1)
            {
              v31 = v30 + 1;
              v39 = v30 + 1;
              v32 = *(a1 + 80);
              if (v32 && (v33 = *(a1 + 72), v33 < *v32))
              {
                *(a1 + 72) = v33 + 1;
                v34 = *&v32[2 * v33 + 2];
              }

              else
              {
                v35 = sub_15AE418(*(a1 + 64));
                v34 = sub_19593CC(a1 + 64, v35);
                v31 = v39;
              }

              v30 = sub_22202EC(a3, v34, v31);
              v39 = v30;
              if (!v30)
              {
                return 0;
              }

              if (*a3 <= v30 || *v30 != 26)
              {
                goto LABEL_62;
              }
            }
          }
        }

        else if (v10 == 4 && v7 == 34)
        {
          v18 = v6 - 1;
          while (1)
          {
            v19 = v18 + 1;
            v39 = v18 + 1;
            v20 = *(a1 + 104);
            if (v20 && (v21 = *(a1 + 96), v21 < *v20))
            {
              *(a1 + 96) = v21 + 1;
              v22 = *&v20[2 * v21 + 2];
            }

            else
            {
              v23 = sub_15AE4B4(*(a1 + 88));
              v22 = sub_19593CC(a1 + 88, v23);
              v19 = v39;
            }

            v18 = sub_222037C(a3, v22, v19);
            v39 = v18;
            if (!v18)
            {
              return 0;
            }

            if (*a3 <= v18 || *v18 != 34)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 10)
        {
          v24 = v6 - 1;
          while (1)
          {
            v25 = v24 + 1;
            v39 = v24 + 1;
            v26 = *(a1 + 32);
            if (v26 && (v27 = *(a1 + 24), v27 < *v26))
            {
              *(a1 + 24) = v27 + 1;
              v28 = *&v26[2 * v27 + 2];
            }

            else
            {
              v29 = sub_157B820(*(a1 + 16));
              v28 = sub_19593CC(a1 + 16, v29);
              v25 = v39;
            }

            v24 = sub_221FA7C(a3, v28, v25);
            v39 = v24;
            if (!v24)
            {
              return 0;
            }

            if (*a3 <= v24 || *v24 != 10)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v12 = v6 - 1;
        while (1)
        {
          v13 = v12 + 1;
          v39 = v12 + 1;
          v14 = *(a1 + 56);
          if (v14 && (v15 = *(a1 + 48), v15 < *v14))
          {
            *(a1 + 48) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_14050A4(*(a1 + 40));
            v16 = sub_19593CC(a1 + 40, v17);
            v13 = v39;
          }

          v12 = sub_2201B80(a3, v16, v13);
          v39 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_62;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v37 = *(a1 + 8);
      if (v37)
      {
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v38 = sub_11F1920((a1 + 8));
        v6 = v39;
      }

      v39 = sub_1952690(v7, v38, v6, a3);
      if (!v39)
      {
        return 0;
      }

LABEL_62:
      if (sub_195ADC0(a3, &v39, a3[11].u32[1]))
      {
        return v39;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v39;
    }

    return 0;
  }

  return v39;
}

char *sub_15A63F8(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_157A174(v8, v10, a3);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 56) + 8 * j + 8);
      *__dst = 18;
      v14 = *(v13 + 44);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_1403020(v13, v15, a3);
    }
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 80) + 8 * k + 8);
      *__dst = 26;
      v19 = *(v18 + 20);
      __dst[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, __dst + 1);
      }

      else
      {
        v20 = __dst + 2;
      }

      __dst = sub_15A5718(v18, v20, a3);
    }
  }

  v21 = *(a1 + 96);
  if (v21)
  {
    for (m = 0; m != v21; ++m)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 104) + 8 * m + 8);
      *__dst = 34;
      v24 = *(v23 + 20);
      __dst[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, __dst + 1);
      }

      else
      {
        v25 = __dst + 2;
      }

      __dst = sub_15A5D44(v23, v25, a3);
    }
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return __dst;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if ((*a3 - __dst) >= v29)
  {
    v31 = v29;
    memcpy(__dst, v30, v29);
    __dst += v31;
    return __dst;
  }

  return sub_1957130(a3, v30, v29, __dst);
}

uint64_t sub_15A66C4(uint64_t a1)
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
      v7 = sub_157A274(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  v9 = v2 + v8;
  v10 = *(a1 + 56);
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
      v14 = sub_1403980(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 72);
  v16 = v9 + v15;
  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_15A58C0(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 96);
  v23 = v16 + v22;
  v24 = *(a1 + 104);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_15A5E6C(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 8);
  if (v29)
  {
    v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *((v29 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v32 < 0)
    {
      v32 = *(v31 + 16);
    }

    v23 += v32;
  }

  *(a1 + 112) = v23;
  return v23;
}

void sub_15A685C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_15B5CDC((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
    v7 = *(result + 24) + v4;
    *(result + 24) = v7;
    v8 = *(result + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(result + 40, *(a2 + 48));
    sub_15B6444((result + 40), v11, (v10 + 8), v9, **(result + 56) - *(result + 48));
    v12 = *(result + 48) + v9;
    *(result + 48) = v12;
    v13 = *(result + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8(result + 64, *(a2 + 72));
    sub_15B64D0((result + 64), v16, (v15 + 8), v14, **(result + 80) - *(result + 72));
    v17 = *(result + 72) + v14;
    *(result + 72) = v17;
    v18 = *(result + 80);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a2 + 104);
    v21 = sub_19592E8(result + 88, *(a2 + 96));
    sub_15B655C((result + 88), v21, (v20 + 8), v19, **(result + 104) - *(result + 96));
    v22 = *(result + 96) + v19;
    *(result + 96) = v22;
    v23 = *(result + 104);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((result + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15A6A2C(uint64_t a1)
{
  v2 = *(a1 + 48);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_140441C(*(*(a1 + 56) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 72);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_15A5AAC(*(*(a1 + 80) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

void *sub_15A6ABC(void *a1)
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

  sub_15A6B68(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_15B57A4(a1 + 10);
  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 6));
  sub_15B5720(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_15A6B68(uint64_t a1)
{
  v3 = *(a1 + 104);
  v2 = (a1 + 104);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 112);
  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27786B8)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_158E644(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_15903F0(v6);
      operator delete();
    }

    v7 = *(a1 + 136);
    if (v7)
    {
      sub_1591BEC(v7);
      operator delete();
    }

    v8 = *(a1 + 144);
    if (v8)
    {
      sub_15954E4(v8);
      operator delete();
    }

    v9 = *(a1 + 152);
    if (v9)
    {
      sub_159D40C(v9);
      operator delete();
    }

    v10 = *(a1 + 160);
    if (v10)
    {
      sub_159DBE8(v10);
      operator delete();
    }

    v11 = *(a1 + 168);
    if (v11)
    {
      sub_15A0694(v11);
      operator delete();
    }

    v12 = *(a1 + 176);
    if (v12)
    {
      sub_15A2068(v12);
      operator delete();
    }

    v13 = *(a1 + 184);
    if (v13)
    {
      sub_15A2C84(v13);
      operator delete();
    }

    v14 = *(a1 + 192);
    if (v14)
    {
      sub_15A3240(v14);
      operator delete();
    }

    v15 = *(a1 + 200);
    if (v15)
    {
      sub_15A3DEC(v15);
      operator delete();
    }

    v16 = *(a1 + 208);
    if (v16)
    {
      sub_15A45E8(v16);
      operator delete();
    }

    v17 = *(a1 + 216);
    if (v17)
    {
      sub_15A125C(v17);
      operator delete();
    }

    v18 = *(a1 + 224);
    if (v18)
    {
      sub_15921BC(v18);
      operator delete();
    }

    v19 = *(a1 + 232);
    if (v19)
    {
      sub_15A5EE4(v19);
      operator delete();
    }

    v20 = *(a1 + 240);
    if (v20)
    {
      sub_15926D0(v20);
      operator delete();
    }

    v21 = *(a1 + 248);
    if (v21)
    {
      sub_15A3DEC(v21);
      operator delete();
    }

    v22 = *(a1 + 256);
    if (v22)
    {
      sub_15970F0(v22);
      operator delete();
    }

    v23 = *(a1 + 264);
    if (v23)
    {
      sub_15970F0(v23);
      operator delete();
    }

    v24 = *(a1 + 272);
    if (v24)
    {
      sub_1597ACC(v24);
      operator delete();
    }

    v25 = *(a1 + 280);
    if (v25)
    {
      sub_1594F18(v25);
      operator delete();
    }

    v26 = *(a1 + 288);
    if (v26)
    {
      sub_15935F8(v26);
      operator delete();
    }

    v27 = *(a1 + 296);
    if (v27)
    {
      sub_159A258(v27);
      operator delete();
    }

    result = *(a1 + 304);
    if (result)
    {
      sub_1593D84(result);

      operator delete();
    }
  }

  return result;
}

void sub_15A6E98(void *a1)
{
  sub_15A6ABC(a1);

  operator delete();
}

uint64_t sub_15A6ED0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_158F1DC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v5 = *(v1 + 88);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 96) + 8);
    do
    {
      v7 = *v6++;
      result = sub_158FC18(v7);
      --v5;
    }

    while (v5);
    *(v1 + 88) = 0;
  }

  v8 = *(v1 + 16);
  if (!v8)
  {
    goto LABEL_19;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_70:
    v12 = *(v1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v8 & 4) != 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v8 & 4) != 0)
      {
        goto LABEL_74;
      }
    }

LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_75;
  }

  v11 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_70;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_70;
    }
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_74:
  result = sub_158E708(*(v1 + 120));
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = sub_1590504(*(v1 + 128));
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_77:
    result = sub_159562C(*(v1 + 144));
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_76:
  result = sub_1591CA4(*(v1 + 136));
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_77;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_78:
  result = sub_159D510(*(v1 + 152));
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    result = sub_159DCD8(*(v1 + 160));
  }

LABEL_19:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v8 & 0x100) != 0)
  {
    result = sub_15A079C(*(v1 + 168));
    if ((v8 & 0x200) == 0)
    {
LABEL_22:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_55;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  result = sub_15A216C(*(v1 + 176));
  if ((v8 & 0x400) == 0)
  {
LABEL_23:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = sub_15A2D88(*(v1 + 184));
  if ((v8 & 0x800) == 0)
  {
LABEL_24:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = sub_15A3374(*(v1 + 192));
  if ((v8 & 0x1000) == 0)
  {
LABEL_25:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = sub_15A3EF0(*(v1 + 200));
  if ((v8 & 0x2000) == 0)
  {
LABEL_26:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = sub_15A46D8(*(v1 + 208));
  if ((v8 & 0x4000) == 0)
  {
LABEL_27:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_59:
  result = sub_15A132C(*(v1 + 216));
  if ((v8 & 0x8000) != 0)
  {
LABEL_28:
    result = sub_1592274(*(v1 + 224));
  }

LABEL_29:
  if ((v8 & 0xFF0000) == 0)
  {
    goto LABEL_39;
  }

  if ((v8 & 0x10000) != 0)
  {
    result = sub_15A5FC0(*(v1 + 232));
    if ((v8 & 0x20000) == 0)
    {
LABEL_32:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_63;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_32;
  }

  result = sub_15927DC(*(v1 + 240));
  if ((v8 & 0x40000) == 0)
  {
LABEL_33:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = sub_15A3EF0(*(v1 + 248));
  if ((v8 & 0x80000) == 0)
  {
LABEL_34:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = sub_15971A8(*(v1 + 256));
  if ((v8 & 0x100000) == 0)
  {
LABEL_35:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = sub_15971A8(*(v1 + 264));
  if ((v8 & 0x200000) == 0)
  {
LABEL_36:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = sub_1597BD4(*(v1 + 272));
  if ((v8 & 0x400000) == 0)
  {
LABEL_37:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_67:
  result = sub_1594FD0(*(v1 + 280));
  if ((v8 & 0x800000) != 0)
  {
LABEL_38:
    result = sub_15936FC(*(v1 + 288));
  }

LABEL_39:
  if ((v8 & 0x3000000) != 0)
  {
    if ((v8 & 0x1000000) != 0)
    {
      result = sub_159A310(*(v1 + 296));
    }

    if ((v8 & 0x2000000) != 0)
    {
      result = sub_1593E88(*(v1 + 304));
    }
  }

  if (v8 >> 26)
  {
    *(v1 + 312) = 0;
    *(v1 + 320) = 0;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_15A7190(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v124 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v124, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = (*v124 + 1);
    v10 = **v124;
    if (**v124 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v124, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v124 + 2);
      }
    }

    *v124 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 10)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 1u;
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = (a1 + 104);
        goto LABEL_117;
      case 2u:
        if (v10 != 18)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 2u;
        v61 = *(a1 + 8);
        v15 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
        if (v61)
        {
          v15 = *v15;
        }

        v16 = (a1 + 112);
LABEL_117:
        v62 = sub_194DB04(v16, v15);
        v24 = sub_1958890(v62, *v124, a3);
        goto LABEL_266;
      case 3u:
        if (v10 != 24)
        {
          goto LABEL_259;
        }

        v6 |= 0x8000000u;
        LODWORD(v51) = *v9;
        if ((v51 & 0x80000000) == 0)
        {
          v52 = v9 + 1;
LABEL_243:
          *v124 = v52;
          *(a1 + 320) = v51;
          goto LABEL_267;
        }

        v51 = (v9[1] << 7) + v51 - 128;
        if ((v9[1] & 0x80000000) == 0)
        {
          v52 = v9 + 2;
          goto LABEL_243;
        }

        v117 = sub_19587DC(v9, v51);
        *v124 = v117;
        *(a1 + 320) = v118;
        if (!v117)
        {
          goto LABEL_272;
        }

        goto LABEL_267;
      case 4u:
        if (v10 != 33)
        {
          goto LABEL_259;
        }

        v6 |= 0x4000000u;
        *(a1 + 312) = *v9;
        *v124 = v9 + 8;
        goto LABEL_267;
      case 5u:
        if (v10 != 40)
        {
          goto LABEL_259;
        }

        v6 |= 0x10000000u;
        v40 = v9 + 1;
        v39 = *v9;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_68;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v113 = sub_19587DC(v9, v39);
          *v124 = v113;
          *(a1 + 324) = v114 != 0;
          if (!v113)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v40 = v9 + 2;
LABEL_68:
          *v124 = v40;
          *(a1 + 324) = v39 != 0;
        }

        goto LABEL_267;
      case 6u:
        if (v10 != 48)
        {
          goto LABEL_259;
        }

        v6 |= 0x20000000u;
        v70 = v9 + 1;
        v69 = *v9;
        if ((v69 & 0x8000000000000000) == 0)
        {
          goto LABEL_140;
        }

        v71 = *v70;
        v69 = (v71 << 7) + v69 - 128;
        if (v71 < 0)
        {
          v119 = sub_19587DC(v9, v69);
          *v124 = v119;
          *(a1 + 325) = v120 != 0;
          if (!v119)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v70 = v9 + 2;
LABEL_140:
          *v124 = v70;
          *(a1 + 325) = v69 != 0;
        }

        goto LABEL_267;
      case 7u:
        if (v10 != 58)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 4u;
        v77 = *(a1 + 120);
        if (!v77)
        {
          v78 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v78 = *v78;
          }

          sub_15ACEF0(v78);
          v77 = v79;
          *(a1 + 120) = v79;
          v9 = *v124;
        }

        v24 = sub_222040C(a3, v77, v9);
        goto LABEL_266;
      case 8u:
        if (v10 != 66)
        {
          goto LABEL_259;
        }

        v55 = v9 - 1;
        while (1)
        {
          v56 = v55 + 1;
          *v124 = v55 + 1;
          v57 = *(a1 + 40);
          if (v57 && (v58 = *(a1 + 32), v58 < *v57))
          {
            *(a1 + 32) = v58 + 1;
            v59 = *&v57[2 * v58 + 2];
          }

          else
          {
            v60 = sub_15ACFA8(*(a1 + 24));
            v59 = sub_19593CC(a1 + 24, v60);
            v56 = *v124;
          }

          v55 = sub_222049C(a3, v59, v56);
          *v124 = v55;
          if (!v55)
          {
            goto LABEL_272;
          }

          if (*a3 <= v55 || *v55 != 66)
          {
            goto LABEL_267;
          }
        }

      case 9u:
        if (v10 != 74)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 8u;
        v84 = *(a1 + 128);
        if (!v84)
        {
          v85 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v85 = *v85;
          }

          v84 = sub_15AD104(v85);
          *(a1 + 128) = v84;
          v9 = *v124;
        }

        v24 = sub_222052C(a3, v84, v9);
        goto LABEL_266;
      case 0xAu:
        if (v10 != 80)
        {
          goto LABEL_259;
        }

        v6 |= 0x40000000u;
        v45 = v9 + 1;
        v44 = *v9;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_79;
        }

        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if (v46 < 0)
        {
          v115 = sub_19587DC(v9, v44);
          *v124 = v115;
          *(a1 + 326) = v116 != 0;
          if (!v115)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v45 = v9 + 2;
LABEL_79:
          *v124 = v45;
          *(a1 + 326) = v44 != 0;
        }

        goto LABEL_267;
      case 0xBu:
        if (v10 != 90)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x10u;
        v82 = *(a1 + 136);
        if (!v82)
        {
          v83 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v83 = *v83;
          }

          v82 = sub_15AD1C0(v83);
          *(a1 + 136) = v82;
          v9 = *v124;
        }

        v24 = sub_22205BC(a3, v82, v9);
        goto LABEL_266;
      case 0xCu:
        if (v10 == 96)
        {
          v31 = (v9 - 1);
          while (1)
          {
            *v124 = v31 + 1;
            v32 = *(v31 + 1);
            v33 = (v31 + 2);
            if (v32 < 0)
            {
              v34 = *v33;
              v35 = (v34 << 7) + v32;
              LODWORD(v32) = v35 - 128;
              if (v34 < 0)
              {
                *v124 = sub_19587DC(v31 + 1, (v35 - 128));
                if (!*v124)
                {
                  goto LABEL_272;
                }

                LODWORD(v32) = v38;
                goto LABEL_53;
              }

              v33 = (v31 + 3);
            }

            *v124 = v33;
LABEL_53:
            if (v32 > 7)
            {
              sub_1348EB8();
            }

            else
            {
              v36 = *(a1 + 48);
              if (v36 == *(a1 + 52))
              {
                v37 = v36 + 1;
                sub_1958E5C((a1 + 48), v36 + 1);
                *(*(a1 + 56) + 4 * v36) = v32;
              }

              else
              {
                *(*(a1 + 56) + 4 * v36) = v32;
                v37 = v36 + 1;
              }

              *(a1 + 48) = v37;
            }

            v31 = *v124;
            if (*a3 <= *v124 || **v124 != 96)
            {
              goto LABEL_267;
            }
          }
        }

        if (v10 != 98)
        {
          goto LABEL_259;
        }

        *&v125 = a1 + 48;
        *(&v125 + 1) = sub_157DA78;
        v126 = a1 + 8;
        v121 = 12;
        goto LABEL_258;
      case 0xDu:
        if (v10 != 106)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x20u;
        v42 = *(a1 + 144);
        if (!v42)
        {
          v43 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v43 = *v43;
          }

          v42 = sub_15AD608(v43);
          *(a1 + 144) = v42;
          v9 = *v124;
        }

        v24 = sub_222013C(a3, v42, v9);
        goto LABEL_266;
      case 0xEu:
        if (v10 != 114)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x40u;
        v75 = *(a1 + 152);
        if (!v75)
        {
          v76 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v76 = *v76;
          }

          v75 = sub_15ADD2C(v76);
          *(a1 + 152) = v75;
          v9 = *v124;
        }

        v24 = sub_222064C(a3, v75, v9);
        goto LABEL_266;
      case 0xFu:
        if (v10 != 122)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x80u;
        v27 = *(a1 + 160);
        if (!v27)
        {
          v28 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v28 = *v28;
          }

          v27 = sub_15ADDB4(v28);
          *(a1 + 160) = v27;
          v9 = *v124;
        }

        v24 = sub_22206DC(a3, v27, v9);
        goto LABEL_266;
      case 0x10u:
        if (v10 != 130)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x100u;
        v53 = *(a1 + 168);
        if (!v53)
        {
          v54 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v54 = *v54;
          }

          v53 = sub_15ADF48(v54);
          *(a1 + 168) = v53;
          v9 = *v124;
        }

        v24 = sub_222076C(a3, v53, v9);
        goto LABEL_266;
      case 0x11u:
        if (v10 != 138)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x200u;
        v25 = *(a1 + 176);
        if (!v25)
        {
          v26 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v26 = *v26;
          }

          v25 = sub_15AE0C8(v26);
          *(a1 + 176) = v25;
          v9 = *v124;
        }

        v24 = sub_22207FC(a3, v25, v9);
        goto LABEL_266;
      case 0x12u:
        if (v10 != 146)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x400u;
        v65 = *(a1 + 184);
        if (!v65)
        {
          v66 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v66 = *v66;
          }

          v65 = sub_15AE154(v66);
          *(a1 + 184) = v65;
          v9 = *v124;
        }

        v24 = sub_222088C(a3, v65, v9);
        goto LABEL_266;
      case 0x13u:
        if (v10 != 154)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x800u;
        v80 = *(a1 + 192);
        if (!v80)
        {
          v81 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v81 = *v81;
          }

          v80 = sub_15AE1DC(v81);
          *(a1 + 192) = v80;
          v9 = *v124;
        }

        v24 = sub_222091C(a3, v80, v9);
        goto LABEL_266;
      case 0x14u:
        if (v10 != 162)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x1000u;
        v102 = *(a1 + 200);
        if (v102)
        {
          goto LABEL_240;
        }

        v103 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v103 = *v103;
        }

        v102 = sub_15AE288(v103);
        *(a1 + 200) = v102;
        goto LABEL_239;
      case 0x15u:
        if (v10 != 170)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x2000u;
        v67 = *(a1 + 208);
        if (!v67)
        {
          v68 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v68 = *v68;
          }

          v67 = sub_15AE310(v68);
          *(a1 + 208) = v67;
          v9 = *v124;
        }

        v24 = sub_2220A3C(a3, v67, v9);
        goto LABEL_266;
      case 0x16u:
        if (v10 != 178)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x4000u;
        v72 = *(a1 + 216);
        if (!v72)
        {
          v73 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v73 = *v73;
          }

          sub_15AE000(v73);
          v72 = v74;
          *(a1 + 216) = v74;
          v9 = *v124;
        }

        v24 = sub_2220ACC(a3, v72, v9);
        goto LABEL_266;
      case 0x17u:
        if (v10 == 184)
        {
          v94 = (v9 - 2);
          while (1)
          {
            *v124 = v94 + 2;
            v95 = *(v94 + 2);
            v96 = (v94 + 3);
            if (v95 < 0)
            {
              v97 = *v96;
              v98 = (v97 << 7) + v95;
              LODWORD(v95) = v98 - 128;
              if (v97 < 0)
              {
                *v124 = sub_19587DC(v94 + 2, (v98 - 128));
                if (!*v124)
                {
                  goto LABEL_272;
                }

                LODWORD(v95) = v101;
                goto LABEL_199;
              }

              v96 = (v94 + 4);
            }

            *v124 = v96;
LABEL_199:
            if (v95 > 0x16)
            {
              sub_15B6A8C();
            }

            else
            {
              v99 = *(a1 + 64);
              if (v99 == *(a1 + 68))
              {
                v100 = v99 + 1;
                sub_1958E5C((a1 + 64), v99 + 1);
                *(*(a1 + 72) + 4 * v99) = v95;
              }

              else
              {
                *(*(a1 + 72) + 4 * v99) = v95;
                v100 = v99 + 1;
              }

              *(a1 + 64) = v100;
            }

            v94 = *v124;
            if (*a3 <= *v124 || **v124 != 440)
            {
              goto LABEL_267;
            }
          }
        }

        if (v10 == 186)
        {
          *&v125 = a1 + 64;
          *(&v125 + 1) = sub_157DA94;
          v126 = a1 + 8;
          v121 = 23;
LABEL_258:
          v127 = v121;
          v24 = sub_1216588(a3, v9, &v125, v5);
LABEL_266:
          *v124 = v24;
          if (!v24)
          {
            goto LABEL_272;
          }

LABEL_267:
          if (sub_195ADC0(a3, v124, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_259:
        if (v10)
        {
          v122 = (v10 & 7) == 4;
        }

        else
        {
          v122 = 1;
        }

        if (!v122)
        {
          if (*v8)
          {
            v123 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v123 = sub_11F1920((a1 + 8));
            v9 = *v124;
          }

          v24 = sub_1952690(v10, v123, v9, a3);
          goto LABEL_266;
        }

        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
        }

        else
        {
LABEL_272:
          *v124 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v6;
        return *v124;
      case 0x18u:
        if (v10 != 194)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x8000u;
        v104 = *(a1 + 224);
        if (!v104)
        {
          v105 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v105 = *v105;
          }

          v104 = sub_15AD260(v105);
          *(a1 + 224) = v104;
          v9 = *v124;
        }

        v24 = sub_2220B5C(a3, v104, v9);
        goto LABEL_266;
      case 0x19u:
        if (v10 != 202)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x10000u;
        v49 = *(a1 + 232);
        if (!v49)
        {
          v50 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v50 = *v50;
          }

          v49 = sub_15AE52C(v50);
          *(a1 + 232) = v49;
          v9 = *v124;
        }

        v24 = sub_2220BEC(a3, v49, v9);
        goto LABEL_266;
      case 0x1Au:
        if (v10 != 210)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x20000u;
        v47 = *(a1 + 240);
        if (!v47)
        {
          v48 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v48 = *v48;
          }

          v47 = sub_15AD300(v48);
          *(a1 + 240) = v47;
          v9 = *v124;
        }

        v24 = sub_2220C7C(a3, v47, v9);
        goto LABEL_266;
      case 0x1Bu:
        if (v10 != 218)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x40000u;
        v102 = *(a1 + 248);
        if (v102)
        {
          goto LABEL_240;
        }

        v110 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v110 = *v110;
        }

        v102 = sub_15AE288(v110);
        *(a1 + 248) = v102;
LABEL_239:
        v9 = *v124;
LABEL_240:
        v24 = sub_22209AC(a3, v102, v9);
        goto LABEL_266;
      case 0x1Cu:
        if (v10 != 226)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x80000u;
        v20 = *(a1 + 256);
        if (v20)
        {
          goto LABEL_227;
        }

        v21 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v21 = *v21;
        }

        v20 = sub_15AD754(v21);
        *(a1 + 256) = v20;
        goto LABEL_226;
      case 0x1Du:
        if (v10 != 234)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x100000u;
        v20 = *(a1 + 264);
        if (v20)
        {
          goto LABEL_227;
        }

        v106 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v106 = *v106;
        }

        v20 = sub_15AD754(v106);
        *(a1 + 264) = v20;
LABEL_226:
        v9 = *v124;
LABEL_227:
        v24 = sub_2220D0C(a3, v20, v9);
        goto LABEL_266;
      case 0x1Eu:
        if (v10 != 242)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x200000u;
        v107 = *(a1 + 272);
        if (!v107)
        {
          v108 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v108 = *v108;
          }

          sub_15AD87C(v108);
          v107 = v109;
          *(a1 + 272) = v109;
          v9 = *v124;
        }

        v24 = sub_2220D9C(a3, v107, v9);
        goto LABEL_266;
      case 0x1Fu:
        if (v10 != 250)
        {
          goto LABEL_259;
        }

        v86 = v9 - 2;
        while (1)
        {
          v87 = v86 + 2;
          *v124 = v86 + 2;
          v88 = *(a1 + 96);
          if (v88 && (v89 = *(a1 + 88), v89 < *v88))
          {
            *(a1 + 88) = v89 + 1;
            v90 = *&v88[2 * v89 + 2];
          }

          else
          {
            v91 = sub_15AD058(*(a1 + 80));
            v90 = sub_19593CC(a1 + 80, v91);
            v87 = *v124;
          }

          v86 = sub_2220E2C(a3, v90, v87);
          *v124 = v86;
          if (!v86)
          {
            goto LABEL_272;
          }

          if (*a3 <= v86 || *v86 != 506)
          {
            goto LABEL_267;
          }
        }

      case 0x20u:
        if (v10 != 2)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x400000u;
        v63 = *(a1 + 280);
        if (!v63)
        {
          v64 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v64 = *v64;
          }

          v63 = sub_15AD568(v64);
          *(a1 + 280) = v63;
          v9 = *v124;
        }

        v24 = sub_2220EBC(a3, v63, v9);
        goto LABEL_266;
      case 0x21u:
        if (v10 != 10)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x800000u;
        v92 = *(a1 + 288);
        if (!v92)
        {
          v93 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v93 = *v93;
          }

          v92 = sub_15AD3A8(v93);
          *(a1 + 288) = v92;
          v9 = *v124;
        }

        v24 = sub_2220F4C(a3, v92, v9);
        goto LABEL_266;
      case 0x22u:
        if (v10 != 18)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x1000000u;
        v29 = *(a1 + 296);
        if (!v29)
        {
          v30 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v30 = *v30;
          }

          v29 = sub_15ADA70(v30);
          *(a1 + 296) = v29;
          v9 = *v124;
        }

        v24 = sub_2220FDC(a3, v29, v9);
        goto LABEL_266;
      case 0x23u:
        if (v10 != 26)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x2000000u;
        v22 = *(a1 + 304);
        if (!v22)
        {
          v23 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v23 = *v23;
          }

          v22 = sub_15AD430(v23);
          *(a1 + 304) = v22;
          v9 = *v124;
        }

        v24 = sub_222106C(a3, v22, v9);
        goto LABEL_266;
      case 0x24u:
        if (v10 != 32)
        {
          goto LABEL_259;
        }

        v6 |= 0x80000000;
        v18 = v9 + 1;
        v17 = *v9;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v111 = sub_19587DC(v9, v17);
          *v124 = v111;
          *(a1 + 327) = v112 != 0;
          if (!v111)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v18 = v9 + 2;
LABEL_17:
          *v124 = v18;
          *(a1 + 327) = v17 != 0;
        }

        goto LABEL_267;
      default:
        goto LABEL_259;
    }
  }
}

char *sub_15A8108(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x8000000) == 0)
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

  v8 = *(a1 + 320);
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
  if ((v6 & 0x4000000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 312);
    *v7 = 33;
    *(v7 + 1) = v12;
    v7 += 9;
    if ((v6 & 0x10000000) == 0)
    {
LABEL_16:
      if ((v6 & 0x20000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 0x10000000) == 0)
  {
    goto LABEL_16;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 324);
  *v7 = 40;
  v7[1] = v13;
  v7 += 2;
  if ((v6 & 0x20000000) == 0)
  {
LABEL_17:
    if ((v6 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v14 = *(a1 + 325);
  *v7 = 48;
  v7[1] = v14;
  v7 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_28:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 120);
    *v7 = 58;
    v16 = *(v15 + 20);
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v7 + 1);
    }

    else
    {
      v17 = v7 + 2;
    }

    v7 = sub_158EAE8(v15, v17, a3);
  }

LABEL_34:
  v18 = *(a1 + 32);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v20 = *(*(a1 + 40) + 8 * i + 8);
      *v7 = 66;
      v21 = *(v20 + 20);
      v7[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v7 + 1);
      }

      else
      {
        v22 = v7 + 2;
      }

      v7 = sub_158F5A4(v20, v22, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v23 = *(a1 + 128);
    *v7 = 74;
    v24 = *(v23 + 20);
    v7[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v7 + 1);
    }

    else
    {
      v25 = v7 + 2;
    }

    v7 = sub_1590DCC(v23, v25, a3);
    if ((v6 & 0x40000000) == 0)
    {
LABEL_44:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }
  }

  else if ((v6 & 0x40000000) == 0)
  {
    goto LABEL_44;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v26 = *(a1 + 326);
  *v7 = 80;
  v7[1] = v26;
  v7 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_55:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v27 = *(a1 + 136);
    *v7 = 90;
    v28 = *(v27 + 40);
    v7[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v7 + 1);
    }

    else
    {
      v29 = v7 + 2;
    }

    v7 = sub_1591EB0(v27, v29, a3);
  }

LABEL_61:
  v30 = *(a1 + 48);
  if (v30 < 1)
  {
    v33 = v7;
  }

  else
  {
    for (j = 0; j != v30; ++j)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v32 = *(*(a1 + 56) + 4 * j);
      *v7 = 96;
      v7[1] = v32;
      if (v32 > 0x7F)
      {
        v7[1] = v32 | 0x80;
        v34 = v32 >> 7;
        v7[2] = v32 >> 7;
        v33 = v7 + 3;
        if (v32 >= 0x4000)
        {
          LOBYTE(v7) = v7[2];
          do
          {
            *(v33 - 1) = v7 | 0x80;
            v7 = (v34 >> 7);
            *v33++ = v34 >> 7;
            v35 = v34 >> 14;
            v34 >>= 7;
          }

          while (v35);
        }
      }

      else
      {
        v33 = v7 + 2;
      }

      v7 = v33;
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v36 = *(a1 + 144);
    *v33 = 106;
    v37 = *(v36 + 20);
    v33[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v33 + 1);
    }

    else
    {
      v38 = v33 + 2;
    }

    v33 = sub_1595FC8(v36, v38, a3);
    if ((v6 & 0x40) == 0)
    {
LABEL_75:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_96;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_75;
  }

  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v39 = *(a1 + 152);
  *v33 = 114;
  v40 = *(v39 + 20);
  v33[1] = v40;
  if (v40 > 0x7F)
  {
    v41 = sub_19575D0(v40, v33 + 1);
  }

  else
  {
    v41 = v33 + 2;
  }

  v33 = sub_159D7C0(v39, v41, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_76:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_102;
  }

LABEL_96:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v42 = *(a1 + 160);
  *v33 = 122;
  v43 = *(v42 + 20);
  v33[1] = v43;
  if (v43 > 0x7F)
  {
    v44 = sub_19575D0(v43, v33 + 1);
  }

  else
  {
    v44 = v33 + 2;
  }

  v33 = sub_159E30C(v42, v44, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_77:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_108;
  }

LABEL_102:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v45 = *(a1 + 168);
  *v33 = 386;
  v46 = *(v45 + 20);
  v33[2] = v46;
  if (v46 > 0x7F)
  {
    v47 = sub_19575D0(v46, v33 + 2);
  }

  else
  {
    v47 = v33 + 3;
  }

  v33 = sub_15A0C2C(v45, v47, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_78:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_114;
  }

LABEL_108:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v48 = *(a1 + 176);
  *v33 = 394;
  v49 = *(v48 + 20);
  v33[2] = v49;
  if (v49 > 0x7F)
  {
    v50 = sub_19575D0(v49, v33 + 2);
  }

  else
  {
    v50 = v33 + 3;
  }

  v33 = sub_15A25FC(v48, v50, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_79:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_120;
  }

LABEL_114:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v51 = *(a1 + 184);
  *v33 = 402;
  v52 = *(v51 + 20);
  v33[2] = v52;
  if (v52 > 0x7F)
  {
    v53 = sub_19575D0(v52, v33 + 2);
  }

  else
  {
    v53 = v33 + 3;
  }

  v33 = sub_15A2FFC(v51, v53, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_80:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_126;
  }

LABEL_120:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v54 = *(a1 + 192);
  *v33 = 410;
  v55 = *(v54 + 20);
  v33[2] = v55;
  if (v55 > 0x7F)
  {
    v56 = sub_19575D0(v55, v33 + 2);
  }

  else
  {
    v56 = v33 + 3;
  }

  v33 = sub_15A3814(v54, v56, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_81:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_132;
  }

LABEL_126:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v57 = *(a1 + 200);
  *v33 = 418;
  v58 = *(v57 + 20);
  v33[2] = v58;
  if (v58 > 0x7F)
  {
    v59 = sub_19575D0(v58, v33 + 2);
  }

  else
  {
    v59 = v33 + 3;
  }

  v33 = sub_15A41A0(v57, v59, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_82:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_138;
  }

LABEL_132:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v60 = *(a1 + 208);
  *v33 = 426;
  v61 = *(v60 + 20);
  v33[2] = v61;
  if (v61 > 0x7F)
  {
    v62 = sub_19575D0(v61, v33 + 2);
  }

  else
  {
    v62 = v33 + 3;
  }

  v33 = sub_15A4954(v60, v62, a3);
  if ((v6 & 0x4000) != 0)
  {
LABEL_138:
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v63 = *(a1 + 216);
    *v33 = 434;
    v64 = *(v63 + 20);
    v33[2] = v64;
    if (v64 > 0x7F)
    {
      v65 = sub_19575D0(v64, v33 + 2);
    }

    else
    {
      v65 = v33 + 3;
    }

    v33 = sub_15A1924(v63, v65, a3);
  }

LABEL_144:
  v66 = *(a1 + 64);
  if (v66 < 1)
  {
    v69 = v33;
  }

  else
  {
    for (k = 0; k != v66; ++k)
    {
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v68 = *(*(a1 + 72) + 4 * k);
      *v33 = 440;
      v33[2] = v68;
      if (v68 > 0x7F)
      {
        v33[2] = v68 | 0x80;
        v70 = v68 >> 7;
        v33[3] = v68 >> 7;
        v69 = v33 + 4;
        if (v68 >= 0x4000)
        {
          LOBYTE(v33) = v33[3];
          do
          {
            *(v69 - 1) = v33 | 0x80;
            v33 = (v70 >> 7);
            *v69++ = v70 >> 7;
            v71 = v70 >> 14;
            v70 >>= 7;
          }

          while (v71);
        }
      }

      else
      {
        v69 = v33 + 3;
      }

      v33 = v69;
    }
  }

  if ((v6 & 0x8000) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v72 = *(a1 + 224);
    *v69 = 450;
    v73 = *(v72 + 40);
    v69[2] = v73;
    if (v73 > 0x7F)
    {
      v74 = sub_19575D0(v73, v69 + 2);
    }

    else
    {
      v74 = v69 + 3;
    }

    v69 = sub_1592480(v72, v74, a3);
    if ((v6 & 0x10000) == 0)
    {
LABEL_158:
      if ((v6 & 0x20000) == 0)
      {
        goto LABEL_159;
      }

      goto LABEL_176;
    }
  }

  else if ((v6 & 0x10000) == 0)
  {
    goto LABEL_158;
  }

  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v75 = *(a1 + 232);
  *v69 = 458;
  v76 = *(v75 + 112);
  v69[2] = v76;
  if (v76 > 0x7F)
  {
    v77 = sub_19575D0(v76, v69 + 2);
  }

  else
  {
    v77 = v69 + 3;
  }

  v69 = sub_15A63F8(v75, v77, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_159:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_182;
  }

LABEL_176:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v78 = *(a1 + 240);
  *v69 = 466;
  v79 = *(v78 + 20);
  v69[2] = v79;
  if (v79 > 0x7F)
  {
    v80 = sub_19575D0(v79, v69 + 2);
  }

  else
  {
    v80 = v69 + 3;
  }

  v69 = sub_1592D9C(v78, v80, a3);
  if ((v6 & 0x40000) == 0)
  {
LABEL_160:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_188;
  }

LABEL_182:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v81 = *(a1 + 248);
  *v69 = 474;
  v82 = *(v81 + 20);
  v69[2] = v82;
  if (v82 > 0x7F)
  {
    v83 = sub_19575D0(v82, v69 + 2);
  }

  else
  {
    v83 = v69 + 3;
  }

  v69 = sub_15A41A0(v81, v83, a3);
  if ((v6 & 0x80000) == 0)
  {
LABEL_161:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_194;
  }

LABEL_188:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v84 = *(a1 + 256);
  *v69 = 482;
  v85 = *(v84 + 40);
  v69[2] = v85;
  if (v85 > 0x7F)
  {
    v86 = sub_19575D0(v85, v69 + 2);
  }

  else
  {
    v86 = v69 + 3;
  }

  v69 = sub_15973B4(v84, v86, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_162:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_200;
  }

LABEL_194:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v87 = *(a1 + 264);
  *v69 = 490;
  v88 = *(v87 + 40);
  v69[2] = v88;
  if (v88 > 0x7F)
  {
    v89 = sub_19575D0(v88, v69 + 2);
  }

  else
  {
    v89 = v69 + 3;
  }

  v69 = sub_15973B4(v87, v89, a3);
  if ((v6 & 0x200000) != 0)
  {
LABEL_200:
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v90 = *(a1 + 272);
    *v69 = 498;
    v91 = *(v90 + 20);
    v69[2] = v91;
    if (v91 > 0x7F)
    {
      v92 = sub_19575D0(v91, v69 + 2);
    }

    else
    {
      v92 = v69 + 3;
    }

    v69 = sub_1597F98(v90, v92, a3);
  }

LABEL_206:
  v93 = *(a1 + 88);
  if (v93)
  {
    for (m = 0; m != v93; ++m)
    {
      if (*a3 <= v69)
      {
        v69 = sub_225EB68(a3, v69);
      }

      v95 = *(*(a1 + 96) + 8 * m + 8);
      *v69 = 506;
      v96 = *(v95 + 20);
      v69[2] = v96;
      if (v96 > 0x7F)
      {
        v97 = sub_19575D0(v96, v69 + 2);
      }

      else
      {
        v97 = v69 + 3;
      }

      v69 = sub_158FF54(v95, v97, a3);
    }
  }

  if ((v6 & 0x400000) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v98 = *(a1 + 280);
    *v69 = 642;
    v99 = *(v98 + 40);
    v69[2] = v99;
    if (v99 > 0x7F)
    {
      v100 = sub_19575D0(v99, v69 + 2);
    }

    else
    {
      v100 = v69 + 3;
    }

    v69 = sub_15951DC(v98, v100, a3);
    if ((v6 & 0x800000) == 0)
    {
LABEL_216:
      if ((v6 & 0x1000000) == 0)
      {
        goto LABEL_217;
      }

      goto LABEL_232;
    }
  }

  else if ((v6 & 0x800000) == 0)
  {
    goto LABEL_216;
  }

  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v101 = *(a1 + 288);
  *v69 = 650;
  v102 = *(v101 + 20);
  v69[2] = v102;
  if (v102 > 0x7F)
  {
    v103 = sub_19575D0(v102, v69 + 2);
  }

  else
  {
    v103 = v69 + 3;
  }

  v69 = sub_15939C8(v101, v103, a3);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_217:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_238;
  }

LABEL_232:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v104 = *(a1 + 296);
  *v69 = 658;
  v105 = *(v104 + 40);
  v69[2] = v105;
  if (v105 > 0x7F)
  {
    v106 = sub_19575D0(v105, v69 + 2);
  }

  else
  {
    v106 = v69 + 3;
  }

  v69 = sub_159A51C(v104, v106, a3);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_218:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_244;
  }

LABEL_238:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v107 = *(a1 + 304);
  *v69 = 666;
  v108 = *(v107 + 20);
  v69[2] = v108;
  if (v108 > 0x7F)
  {
    v109 = sub_19575D0(v108, v69 + 2);
  }

  else
  {
    v109 = v69 + 3;
  }

  v69 = sub_1594154(v107, v109, a3);
  if (v6 < 0)
  {
LABEL_244:
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v110 = *(a1 + 327);
    *v69 = 672;
    v69[2] = v110;
    v69 += 3;
  }

LABEL_247:
  v111 = *(a1 + 8);
  if ((v111 & 1) == 0)
  {
    return v69;
  }

  v113 = v111 & 0xFFFFFFFFFFFFFFFCLL;
  v114 = *(v113 + 31);
  if (v114 < 0)
  {
    v115 = *(v113 + 8);
    v114 = *(v113 + 16);
  }

  else
  {
    v115 = (v113 + 8);
  }

  if ((*a3 - v69) >= v114)
  {
    v116 = v114;
    memcpy(v69, v115, v114);
    v69 += v116;
    return v69;
  }

  return sub_1957130(a3, v115, v114, v69);
}

uint64_t sub_15A8FD4(uint64_t a1)
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
      v7 = sub_158F7FC(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v10);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v12;
      ++v10;
    }

    while (v8 != v10);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 72) + 4 * v14);
      if (v16 < 0)
      {
        v17 = 10;
      }

      else
      {
        v17 = (9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6;
      }

      v15 += v17;
      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = *(a1 + 88);
  v19 = v2 + v8 + v9 + v15 + 2 * (v18 + v13);
  v20 = *(a1 + 96);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = sub_1590114(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(a1 + 16);
  if (!v25)
  {
    goto LABEL_41;
  }

  if (v25)
  {
    v38 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(v38 + 23);
    v40 = *(v38 + 8);
    if ((v39 & 0x80u) == 0)
    {
      v40 = v39;
    }

    v19 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v25 & 2) == 0)
    {
LABEL_34:
      if ((v25 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_84;
    }
  }

  else if ((v25 & 2) == 0)
  {
    goto LABEL_34;
  }

  v41 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v41 + 23);
  v43 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v43 = v42;
  }

  v19 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 4) == 0)
  {
LABEL_35:
    if ((v25 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

LABEL_84:
  v44 = sub_158EDE4(*(a1 + 120));
  v19 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 8) == 0)
  {
LABEL_36:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  v45 = sub_1591474(*(a1 + 128));
  v19 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 0x10) == 0)
  {
LABEL_37:
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_87:
    v47 = sub_159657C(*(a1 + 144));
    v19 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v25 & 0x40) == 0)
    {
LABEL_39:
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    goto LABEL_88;
  }

LABEL_86:
  v46 = sub_1591FF0(*(a1 + 136));
  v19 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 0x20) != 0)
  {
    goto LABEL_87;
  }

LABEL_38:
  if ((v25 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_88:
  v48 = sub_159D96C(*(a1 + 152));
  v19 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 0x80) != 0)
  {
LABEL_40:
    v26 = sub_159E700(*(a1 + 160));
    v19 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_41:
  if ((v25 & 0xFF00) == 0)
  {
    goto LABEL_51;
  }

  if ((v25 & 0x100) != 0)
  {
    v49 = sub_15A0EB0(*(a1 + 168));
    v19 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v25 & 0x200) == 0)
    {
LABEL_44:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_92;
    }
  }

  else if ((v25 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v50 = sub_15A2910(*(a1 + 176));
  v19 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x400) == 0)
  {
LABEL_45:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  v51 = sub_15A3110(*(a1 + 184));
  v19 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x800) == 0)
  {
LABEL_46:
    if ((v25 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_94;
  }

LABEL_93:
  v52 = sub_15A3A10(*(a1 + 192));
  v19 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x1000) == 0)
  {
LABEL_47:
    if ((v25 & 0x2000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_95;
  }

LABEL_94:
  v53 = sub_15A434C(*(a1 + 200));
  v19 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x2000) == 0)
  {
LABEL_48:
    if ((v25 & 0x4000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_96;
  }

LABEL_95:
  v54 = sub_15A4AC4(*(a1 + 208));
  v19 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x4000) == 0)
  {
LABEL_49:
    if ((v25 & 0x8000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_96:
  v55 = sub_15A1C70(*(a1 + 216));
  v19 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x8000) != 0)
  {
LABEL_50:
    v27 = sub_15925C0(*(a1 + 224));
    v19 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_51:
  if ((v25 & 0xFF0000) == 0)
  {
    goto LABEL_61;
  }

  if ((v25 & 0x10000) != 0)
  {
    v56 = sub_15A66C4(*(a1 + 232));
    v19 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v25 & 0x20000) == 0)
    {
LABEL_54:
      if ((v25 & 0x40000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_100;
    }
  }

  else if ((v25 & 0x20000) == 0)
  {
    goto LABEL_54;
  }

  v57 = sub_1593080(*(a1 + 240));
  v19 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x40000) == 0)
  {
LABEL_55:
    if ((v25 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_101;
  }

LABEL_100:
  v58 = sub_15A434C(*(a1 + 248));
  v19 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x80000) == 0)
  {
LABEL_56:
    if ((v25 & 0x100000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_102;
  }

LABEL_101:
  v59 = sub_15974F4(*(a1 + 256));
  v19 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x100000) == 0)
  {
LABEL_57:
    if ((v25 & 0x200000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_103;
  }

LABEL_102:
  v60 = sub_15974F4(*(a1 + 264));
  v19 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x200000) == 0)
  {
LABEL_58:
    if ((v25 & 0x400000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_104;
  }

LABEL_103:
  v61 = sub_1598244(*(a1 + 272));
  v19 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x400000) == 0)
  {
LABEL_59:
    if ((v25 & 0x800000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_104:
  v62 = sub_159531C(*(a1 + 280));
  v19 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v25 & 0x800000) != 0)
  {
LABEL_60:
    v28 = sub_1593B18(*(a1 + 288));
    v19 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_61:
  if (HIBYTE(v25))
  {
    if ((v25 & 0x1000000) != 0)
    {
      v29 = sub_159A65C(*(a1 + 296));
      v19 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v25 & 0x2000000) != 0)
    {
      v30 = sub_15942A4(*(a1 + 304));
      v19 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v31 = v19 + 9;
    if ((v25 & 0x4000000) == 0)
    {
      v31 = v19;
    }

    if ((v25 & 0x8000000) != 0)
    {
      v32 = *(a1 + 320);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 11;
      }

      v31 += v34;
    }

    v35 = v31 + ((v25 >> 28) & 2) + ((v25 >> 27) & 2) + ((v25 >> 29) & 2);
    if ((v25 & 0x80000000) == 0)
    {
      v19 = v35;
    }

    else
    {
      v19 = v35 + 3;
    }
  }

  v36 = *(a1 + 8);
  if (v36)
  {
    v63 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = *((v36 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v64 < 0)
    {
      v64 = *(v63 + 16);
    }

    v19 += v64;
  }

  *(a1 + 20) = v19;
  return v19;
}

void sub_15A9780(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B65D8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1958E5C((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 4 * v10), *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 64);
  if (v12)
  {
    v13 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v13 + v12);
    v14 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v14 + 4 * v13), *(a2 + 72), 4 * *(a2 + 64));
  }

  v15 = *(a2 + 88);
  if (v15)
  {
    v16 = *(a2 + 96);
    v17 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_15B6664((a1 + 80), v17, (v16 + 8), v15, **(a1 + 96) - *(a1 + 88));
    v18 = *(a1 + 88) + v15;
    *(a1 + 88) = v18;
    v19 = *(a1 + 96);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 16);
  if (!v20)
  {
    goto LABEL_75;
  }

  if (v20)
  {
    v21 = *(a2 + 104);
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 104), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
    if ((v20 & 2) == 0)
    {
LABEL_14:
      if ((v20 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((v20 & 2) == 0)
  {
    goto LABEL_14;
  }

  v24 = *(a2 + 112);
  *(a1 + 16) |= 2u;
  v25 = *(a1 + 8);
  v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
  if (v25)
  {
    v26 = *v26;
  }

  sub_194EA1C((a1 + 112), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
  if ((v20 & 4) == 0)
  {
LABEL_15:
    if ((v20 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_27:
  *(a1 + 16) |= 4u;
  v27 = *(a1 + 120);
  if (!v27)
  {
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_15ACEF0(v29);
    *(a1 + 120) = v27;
  }

  if (*(a2 + 120))
  {
    v30 = *(a2 + 120);
  }

  else
  {
    v30 = &off_2777E78;
  }

  sub_158EF34(v27, v30);
  if ((v20 & 8) == 0)
  {
LABEL_16:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_35:
  *(a1 + 16) |= 8u;
  v31 = *(a1 + 128);
  if (!v31)
  {
    v32 = *(a1 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v31 = sub_15AD104(v33);
    *(a1 + 128) = v31;
  }

  if (*(a2 + 128))
  {
    v34 = *(a2 + 128);
  }

  else
  {
    v34 = &off_2777EE0;
  }

  sub_1591724(v31, v34);
  if ((v20 & 0x10) == 0)
  {
LABEL_17:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_51:
    *(a1 + 16) |= 0x20u;
    v39 = *(a1 + 144);
    if (!v39)
    {
      v40 = *(a1 + 8);
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      v39 = sub_15AD608(v41);
      *(a1 + 144) = v39;
    }

    if (*(a2 + 144))
    {
      v42 = *(a2 + 144);
    }

    else
    {
      v42 = &off_27780C8;
    }

    sub_1596914(v39, v42);
    if ((v20 & 0x40) == 0)
    {
LABEL_19:
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }

    goto LABEL_59;
  }

LABEL_43:
  *(a1 + 16) |= 0x10u;
  v35 = *(a1 + 136);
  if (!v35)
  {
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_15AD1C0(v37);
    *(a1 + 136) = v35;
  }

  if (*(a2 + 136))
  {
    v38 = *(a2 + 136);
  }

  else
  {
    v38 = &off_2777F70;
  }

  sub_1592098(v35, v38);
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_18:
  if ((v20 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_59:
  *(a1 + 16) |= 0x40u;
  v43 = *(a1 + 152);
  if (!v43)
  {
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_15ADD2C(v45);
    *(a1 + 152) = v43;
  }

  if (*(a2 + 152))
  {
    v46 = *(a2 + 152);
  }

  else
  {
    v46 = &off_2778348;
  }

  sub_159DA84(v43, v46);
  if ((v20 & 0x80) != 0)
  {
LABEL_67:
    *(a1 + 16) |= 0x80u;
    v47 = *(a1 + 160);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_15ADDB4(v49);
      *(a1 + 160) = v47;
    }

    if (*(a2 + 160))
    {
      v50 = *(a2 + 160);
    }

    else
    {
      v50 = &off_2778378;
    }

    sub_159E8A4(v47, v50);
  }

LABEL_75:
  if ((v20 & 0xFF00) == 0)
  {
    goto LABEL_149;
  }

  if ((v20 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v51 = *(a1 + 168);
    if (!v51)
    {
      v52 = *(a1 + 8);
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
      if (v52)
      {
        v53 = *v53;
      }

      v51 = sub_15ADF48(v53);
      *(a1 + 168) = v51;
    }

    if (*(a2 + 168))
    {
      v54 = *(a2 + 168);
    }

    else
    {
      v54 = &off_27783E8;
    }

    sub_15A1054(v51, v54);
    if ((v20 & 0x200) == 0)
    {
LABEL_78:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_101;
    }
  }

  else if ((v20 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  *(a1 + 16) |= 0x200u;
  v55 = *(a1 + 176);
  if (!v55)
  {
    v56 = *(a1 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    v55 = sub_15AE0C8(v57);
    *(a1 + 176) = v55;
  }

  if (*(a2 + 176))
  {
    v58 = *(a2 + 176);
  }

  else
  {
    v58 = &off_27784B8;
  }

  sub_15A2B0C(v55, v58);
  if ((v20 & 0x400) == 0)
  {
LABEL_79:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_109;
  }

LABEL_101:
  *(a1 + 16) |= 0x400u;
  v59 = *(a1 + 184);
  if (!v59)
  {
    v60 = *(a1 + 8);
    v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
    if (v60)
    {
      v61 = *v61;
    }

    v59 = sub_15AE154(v61);
    *(a1 + 184) = v59;
  }

  if (*(a2 + 184))
  {
    v62 = *(a2 + 184);
  }

  else
  {
    v62 = &off_27784F8;
  }

  sub_12EB184(v59, v62);
  if ((v20 & 0x800) == 0)
  {
LABEL_80:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(a1 + 16) |= 0x800u;
  v63 = *(a1 + 192);
  if (!v63)
  {
    v64 = *(a1 + 8);
    v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
    if (v64)
    {
      v65 = *v65;
    }

    v63 = sub_15AE1DC(v65);
    *(a1 + 192) = v63;
  }

  if (*(a2 + 192))
  {
    v66 = *(a2 + 192);
  }

  else
  {
    v66 = &off_2778528;
  }

  sub_15A3C0C(v63, v66);
  if ((v20 & 0x1000) == 0)
  {
LABEL_81:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_125;
  }

LABEL_117:
  *(a1 + 16) |= 0x1000u;
  v67 = *(a1 + 200);
  if (!v67)
  {
    v68 = *(a1 + 8);
    v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
    if (v68)
    {
      v69 = *v69;
    }

    v67 = sub_15AE288(v69);
    *(a1 + 200) = v67;
  }

  if (*(a2 + 200))
  {
    v70 = *(a2 + 200);
  }

  else
  {
    v70 = &off_2778578;
  }

  sub_15A4464(v67, v70);
  if ((v20 & 0x2000) == 0)
  {
LABEL_82:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_133;
  }

LABEL_125:
  *(a1 + 16) |= 0x2000u;
  v71 = *(a1 + 208);
  if (!v71)
  {
    v72 = *(a1 + 8);
    v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
    if (v72)
    {
      v73 = *v73;
    }

    v71 = sub_15AE310(v73);
    *(a1 + 208) = v71;
  }

  if (*(a2 + 208))
  {
    v74 = *(a2 + 208);
  }

  else
  {
    v74 = &off_27785A8;
  }

  sub_128E5DC(v71, v74);
  if ((v20 & 0x4000) == 0)
  {
LABEL_83:
    if ((v20 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_141;
  }

LABEL_133:
  *(a1 + 16) |= 0x4000u;
  v75 = *(a1 + 216);
  if (!v75)
  {
    v76 = *(a1 + 8);
    v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
    if (v76)
    {
      v77 = *v77;
    }

    sub_15AE000(v77);
    *(a1 + 216) = v75;
  }

  if (*(a2 + 216))
  {
    v78 = *(a2 + 216);
  }

  else
  {
    v78 = &off_2778448;
  }

  sub_15A1DF8(v75, v78);
  if ((v20 & 0x8000) != 0)
  {
LABEL_141:
    *(a1 + 16) |= 0x8000u;
    v79 = *(a1 + 224);
    if (!v79)
    {
      v80 = *(a1 + 8);
      v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
      if (v80)
      {
        v81 = *v81;
      }

      v79 = sub_15AD260(v81);
      *(a1 + 224) = v79;
    }

    if (*(a2 + 224))
    {
      v82 = *(a2 + 224);
    }

    else
    {
      v82 = &off_2777FA0;
    }

    sub_1592098(v79, v82);
  }

LABEL_149:
  if ((v20 & 0xFF0000) == 0)
  {
    goto LABEL_224;
  }

  if ((v20 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v83 = *(a1 + 232);
    if (!v83)
    {
      v84 = *(a1 + 8);
      v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
      if (v84)
      {
        v85 = *v85;
      }

      v83 = sub_15AE52C(v85);
      *(a1 + 232) = v83;
    }

    if (*(a2 + 232))
    {
      v86 = *(a2 + 232);
    }

    else
    {
      v86 = &off_2778640;
    }

    sub_15A685C(v83, v86);
    if ((v20 & 0x20000) == 0)
    {
LABEL_152:
      if ((v20 & 0x40000) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_170;
    }
  }

  else if ((v20 & 0x20000) == 0)
  {
    goto LABEL_152;
  }

  *(a1 + 16) |= 0x20000u;
  v87 = *(a1 + 240);
  if (!v87)
  {
    v88 = *(a1 + 8);
    v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
    if (v88)
    {
      v89 = *v89;
    }

    v87 = sub_15AD300(v89);
    *(a1 + 240) = v87;
  }

  if (*(a2 + 240))
  {
    v90 = *(a2 + 240);
  }

  else
  {
    v90 = &off_2777FD0;
  }

  sub_159320C(v87, v90);
  if ((v20 & 0x40000) != 0)
  {
LABEL_170:
    *(a1 + 16) |= 0x40000u;
    v91 = *(a1 + 248);
    if (!v91)
    {
      v92 = *(a1 + 8);
      v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
      if (v92)
      {
        v93 = *v93;
      }

      v91 = sub_15AE288(v93);
      *(a1 + 248) = v91;
    }

    if (*(a2 + 248))
    {
      v94 = *(a2 + 248);
    }

    else
    {
      v94 = &off_2778578;
    }

    sub_15A4464(v91, v94);
  }

LABEL_178:
  if ((v20 & 0x80000) != 0)
  {
    *(a1 + 16) |= 0x80000u;
    v95 = *(a1 + 256);
    if (!v95)
    {
      v96 = *(a1 + 8);
      v97 = (v96 & 0xFFFFFFFFFFFFFFFCLL);
      if (v96)
      {
        v97 = *v97;
      }

      v95 = sub_15AD754(v97);
      *(a1 + 256) = v95;
    }

    if (*(a2 + 256))
    {
      v98 = *(a2 + 256);
    }

    else
    {
      v98 = &off_2778168;
    }

    sub_159759C(v95, v98);
    if ((v20 & 0x100000) == 0)
    {
LABEL_180:
      if ((v20 & 0x200000) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_200;
    }
  }

  else if ((v20 & 0x100000) == 0)
  {
    goto LABEL_180;
  }

  *(a1 + 16) |= 0x100000u;
  v99 = *(a1 + 264);
  if (!v99)
  {
    v100 = *(a1 + 8);
    v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
    if (v100)
    {
      v101 = *v101;
    }

    v99 = sub_15AD754(v101);
    *(a1 + 264) = v99;
  }

  if (*(a2 + 264))
  {
    v102 = *(a2 + 264);
  }

  else
  {
    v102 = &off_2778168;
  }

  sub_159759C(v99, v102);
  if ((v20 & 0x200000) == 0)
  {
LABEL_181:
    if ((v20 & 0x400000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_208;
  }

LABEL_200:
  *(a1 + 16) |= 0x200000u;
  v103 = *(a1 + 272);
  if (!v103)
  {
    v104 = *(a1 + 8);
    v105 = (v104 & 0xFFFFFFFFFFFFFFFCLL);
    if (v104)
    {
      v105 = *v105;
    }

    sub_15AD87C(v105);
    *(a1 + 272) = v103;
  }

  if (*(a2 + 272))
  {
    v106 = *(a2 + 272);
  }

  else
  {
    v106 = &off_2778198;
  }

  sub_159839C(v103, v106);
  if ((v20 & 0x400000) == 0)
  {
LABEL_182:
    if ((v20 & 0x800000) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_216;
  }

LABEL_208:
  *(a1 + 16) |= 0x400000u;
  v107 = *(a1 + 280);
  if (!v107)
  {
    v108 = *(a1 + 8);
    v109 = (v108 & 0xFFFFFFFFFFFFFFFCLL);
    if (v108)
    {
      v109 = *v109;
    }

    v107 = sub_15AD568(v109);
    *(a1 + 280) = v107;
  }

  if (*(a2 + 280))
  {
    v110 = *(a2 + 280);
  }

  else
  {
    v110 = &off_2778098;
  }

  sub_15953C4(v107, v110);
  if ((v20 & 0x800000) != 0)
  {
LABEL_216:
    *(a1 + 16) |= 0x800000u;
    v111 = *(a1 + 288);
    if (!v111)
    {
      v112 = *(a1 + 8);
      v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
      if (v112)
      {
        v113 = *v113;
      }

      v111 = sub_15AD3A8(v113);
      *(a1 + 288) = v111;
    }

    if (*(a2 + 288))
    {
      v114 = *(a2 + 288);
    }

    else
    {
      v114 = &off_2778028;
    }

    sub_1593C3C(v111, v114);
  }

LABEL_224:
  if (!HIBYTE(v20))
  {
    goto LABEL_234;
  }

  if ((v20 & 0x1000000) != 0)
  {
    *(a1 + 16) |= 0x1000000u;
    v116 = *(a1 + 296);
    if (!v116)
    {
      v117 = *(a1 + 8);
      v118 = (v117 & 0xFFFFFFFFFFFFFFFCLL);
      if (v117)
      {
        v118 = *v118;
      }

      v116 = sub_15ADA70(v118);
      *(a1 + 296) = v116;
    }

    if (*(a2 + 296))
    {
      v119 = *(a2 + 296);
    }

    else
    {
      v119 = &off_27781F0;
    }

    sub_159A704(v116, v119);
    if ((v20 & 0x2000000) == 0)
    {
LABEL_227:
      if ((v20 & 0x4000000) == 0)
      {
        goto LABEL_228;
      }

      goto LABEL_254;
    }
  }

  else if ((v20 & 0x2000000) == 0)
  {
    goto LABEL_227;
  }

  *(a1 + 16) |= 0x2000000u;
  v120 = *(a1 + 304);
  if (!v120)
  {
    v121 = *(a1 + 8);
    v122 = (v121 & 0xFFFFFFFFFFFFFFFCLL);
    if (v121)
    {
      v122 = *v122;
    }

    v120 = sub_15AD430(v122);
    *(a1 + 304) = v120;
  }

  if (*(a2 + 304))
  {
    v123 = *(a2 + 304);
  }

  else
  {
    v123 = &off_2778060;
  }

  sub_1593C3C(v120, v123);
  if ((v20 & 0x4000000) == 0)
  {
LABEL_228:
    if ((v20 & 0x8000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_255;
  }

LABEL_254:
  *(a1 + 312) = *(a2 + 312);
  if ((v20 & 0x8000000) == 0)
  {
LABEL_229:
    if ((v20 & 0x10000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_256;
  }

LABEL_255:
  *(a1 + 320) = *(a2 + 320);
  if ((v20 & 0x10000000) == 0)
  {
LABEL_230:
    if ((v20 & 0x20000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_257;
  }

LABEL_256:
  *(a1 + 324) = *(a2 + 324);
  if ((v20 & 0x20000000) == 0)
  {
LABEL_231:
    if ((v20 & 0x40000000) == 0)
    {
      goto LABEL_232;
    }

LABEL_258:
    *(a1 + 326) = *(a2 + 326);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_233;
    }

LABEL_259:
    *(a1 + 327) = *(a2 + 327);
    goto LABEL_233;
  }

LABEL_257:
  *(a1 + 325) = *(a2 + 325);
  if ((v20 & 0x40000000) != 0)
  {
    goto LABEL_258;
  }

LABEL_232:
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_259;
  }

LABEL_233:
  *(a1 + 16) |= v20;
LABEL_234:
  v115 = *(a2 + 8);
  if (v115)
  {

    sub_1957EF4((a1 + 8), (v115 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15AA198(uint64_t a1)
{
  result = sub_15AA428(a1 + 24);
  if (result)
  {
    result = sub_15AA48C(a1 + 80);
    if (result)
    {
      v3 = *(a1 + 16);
      if ((v3 & 4) != 0)
      {
        v8 = *(a1 + 120);
        v9 = *(v8 + 56);
        v10 = *(v8 + 64);
        while (v9 >= 1)
        {
          v11 = *(v10 + 8 * v9--);
          if ((~*(v11 + 16) & 3) != 0)
          {
            return 0;
          }
        }
      }

      if ((v3 & 8) == 0 || (result = sub_1591ABC(*(a1 + 128)), result))
      {
        if ((v3 & 0x10) != 0)
        {
          v4 = *(a1 + 136);
          v5 = *(v4 + 24);
          while (v5 >= 1)
          {
            v6 = v5 - 1;
            v7 = sub_1544084(*(*(v4 + 32) + 8 * v5));
            v5 = v6;
            if (!v7)
            {
              return 0;
            }
          }

          v3 = *(a1 + 16);
        }

        if ((v3 & 0x20) != 0)
        {
          v17 = *(a1 + 144);
          v18 = *(v17 + 80);
          v19 = *(v17 + 88);
          while (v18 >= 1)
          {
            result = 0;
            v20 = *(v19 + 8 * v18--);
            if ((~*(v20 + 16) & 3) != 0)
            {
              return result;
            }
          }
        }

        if ((v3 & 0x40) != 0)
        {
          v12 = *(a1 + 152);
          if ((*(v12 + 16) & 2) != 0)
          {
            v25 = *(v12 + 32);
            v26 = *(v25 + 80);
            v27 = *(v25 + 88);
            while (v26 >= 1)
            {
              result = 0;
              v28 = *(v27 + 8 * v26--);
              if ((~*(v28 + 16) & 3) != 0)
              {
                return result;
              }
            }
          }
        }

        if ((v3 & 0x100) != 0)
        {
          v21 = *(a1 + 168);
          v22 = *(v21 + 32);
          v23 = *(v21 + 40);
          while (v22 >= 1)
          {
            result = 0;
            v24 = *(v23 + 8 * v22--);
            if ((~*(v24 + 16) & 3) != 0)
            {
              return result;
            }
          }
        }

        if ((v3 & 0x1000) == 0 || (result = sub_15A4574(*(a1 + 200)), result))
        {
          if ((v3 & 0x4000) != 0)
          {
            result = sub_15A1FD0(*(a1 + 216) + 80);
            if (!result)
            {
              return result;
            }

            v3 = *(a1 + 16);
          }

          if ((v3 & 0x8000) != 0)
          {
            v13 = *(a1 + 224);
            v14 = *(v13 + 24);
            while (v14 >= 1)
            {
              v15 = v14 - 1;
              v16 = sub_1544084(*(*(v13 + 32) + 8 * v14));
              result = 0;
              v14 = v15;
              if (!v16)
              {
                return result;
              }
            }

            v3 = *(a1 + 16);
          }

          if ((v3 & 0x10000) != 0)
          {
            result = sub_15A6A2C(*(a1 + 232));
            if (!result)
            {
              return result;
            }

            v3 = *(a1 + 16);
          }

          if ((v3 & 0x20000) != 0)
          {
            result = sub_159352C(*(a1 + 240));
            if (!result)
            {
              return result;
            }

            v3 = *(a1 + 16);
          }

          if ((v3 & 0x40000) == 0 || (result = sub_15A4574(*(a1 + 248)), result))
          {
            if ((v3 & 0x200000) != 0)
            {
              v29 = *(a1 + 272);
              v30 = *(v29 + 32);
              v31 = *(v29 + 40);
              while (v30 >= 1)
              {
                result = 0;
                v32 = *(v31 + 8 * v30--);
                if ((*(v32 + 16) & 4) == 0)
                {
                  return result;
                }
              }
            }

            if ((v3 & 0x400000) != 0)
            {
              v33 = *(a1 + 280);
              v34 = *(v33 + 24);
              v35 = *(v33 + 32);
              while (v34 >= 1)
              {
                v36 = v34 - 1;
                v37 = sub_1594EA8(*(v35 + 8 * v34));
                result = 0;
                v34 = v36;
                if (!v37)
                {
                  return result;
                }
              }
            }

            if ((v3 & 0x1000000) == 0)
            {
              return 1;
            }

            result = sub_159A7C8(*(a1 + 296) + 16);
            if (result)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_15AA428(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v2 = v1--;
      v3 = *(*(a1 + 16) + 8 + 8 * v1);
      v4 = *(v3 + 56);
      v5 = *(v3 + 64);
      while (v4 >= 1)
      {
        v6 = *(v5 + 8 * v4--);
        if ((~*(v6 + 16) & 3) != 0)
        {
          return 0;
        }
      }
    }

    while (v2 >= 2);
  }

  return 1;
}

uint64_t sub_15AA48C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v2 = v1--;
      v3 = *(*(a1 + 16) + 8 + 8 * v1);
      v4 = *(v3 + 48);
      v5 = *(v3 + 56);
      while (v4 >= 1)
      {
        v6 = *(v5 + 8 * v4--);
        if ((~*(v6 + 16) & 3) != 0)
        {
          return 0;
        }
      }
    }

    while (v2 >= 2);
  }

  return 1;
}

uint64_t sub_15AA500(uint64_t a1)
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

void sub_15AA5B8(uint64_t a1)
{
  sub_15AA500(a1);

  operator delete();
}

uint64_t sub_15AA5F0(uint64_t a1)
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
  if ((v1 & 0xFC) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 44) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15AA680(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v53 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v53, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v53 + 1);
    v8 = **v53;
    if (**v53 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v53, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v53 + 2);
      }
    }

    *v53 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_70;
        }

        v5 |= 0x10u;
        v29 = v7 + 1;
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_50;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = v7 + 2;
LABEL_50:
          *v53 = v29;
          *(a1 + 42) = v28 != 0;
          goto LABEL_78;
        }

        v49 = sub_19587DC(v7, v28);
        *v53 = v49;
        *(a1 + 42) = v50 != 0;
        if (!v49)
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_70;
        }

        v5 |= 0x20u;
        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
LABEL_33:
          *v53 = v20;
          *(a1 + 43) = v19 != 0;
          goto LABEL_78;
        }

        v45 = sub_19587DC(v7, v19);
        *v53 = v45;
        *(a1 + 43) = v46 != 0;
        if (!v45)
        {
          goto LABEL_99;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_70;
      }

      v5 |= 4u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_45:
        *v53 = v26;
        *(a1 + 40) = v25 != 0;
        goto LABEL_78;
      }

      v47 = sub_19587DC(v7, v25);
      *v53 = v47;
      *(a1 + 40) = v48 != 0;
      if (!v47)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_70;
      }

      v5 |= 8u;
      v17 = v7 + 1;
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_26:
        *v53 = v17;
        *(a1 + 41) = v16 != 0;
        goto LABEL_78;
      }

      v43 = sub_19587DC(v7, v16);
      *v53 = v43;
      *(a1 + 41) = v44 != 0;
      if (!v43)
      {
        goto LABEL_99;
      }
    }

LABEL_78:
    if (sub_195ADC0(a3, v53, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 6)
  {
    if (v11 != 7)
    {
      if (v11 != 8)
      {
        if (v11 == 9 && v8 == 74)
        {
          *(a1 + 16) |= 2u;
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v14 = (a1 + 32);
          goto LABEL_40;
        }

        goto LABEL_70;
      }

      if (v8 != 64)
      {
        goto LABEL_70;
      }

      v38 = v7 + 1;
      v37 = *v7;
      if (v37 < 0)
      {
        v39 = *v38;
        v37 = (v39 << 7) + v37 - 128;
        if (v39 < 0)
        {
          *v53 = sub_19587DC(v7, v37);
          if (!*v53)
          {
            goto LABEL_99;
          }

          goto LABEL_68;
        }

        v38 = v7 + 2;
      }

      *v53 = v38;
LABEL_68:
      if (v37 > 0x16)
      {
        sub_13B67EC();
      }

      else
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 52) = v37;
      }

      goto LABEL_78;
    }

    if (v8 != 56)
    {
      goto LABEL_70;
    }

    v32 = v7 + 1;
    v31 = *v7;
    if (v31 < 0)
    {
      v33 = *v32;
      v31 = (v33 << 7) + v31 - 128;
      if (v33 < 0)
      {
        *v53 = sub_19587DC(v7, v31);
        if (!*v53)
        {
          goto LABEL_99;
        }

        goto LABEL_56;
      }

      v32 = v7 + 2;
    }

    *v53 = v32;
LABEL_56:
    if (v31 > 3)
    {
      sub_13137F8();
    }

    else
    {
      *(a1 + 16) |= 0x80u;
      *(a1 + 48) = v31;
    }

    goto LABEL_78;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_70;
    }

    v5 |= 0x40u;
    v35 = v7 + 1;
    v34 = *v7;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_62;
    }

    v36 = *v35;
    v34 = (v36 << 7) + v34 - 128;
    if ((v36 & 0x80000000) == 0)
    {
      v35 = v7 + 2;
LABEL_62:
      *v53 = v35;
      *(a1 + 44) = v34 != 0;
      goto LABEL_78;
    }

    v51 = sub_19587DC(v7, v34);
    *v53 = v51;
    *(a1 + 44) = v52 != 0;
    if (!v51)
    {
      goto LABEL_99;
    }

    goto LABEL_78;
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v13 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v13 = *v13;
    }

    v14 = (a1 + 24);
LABEL_40:
    v23 = sub_194DB04(v14, v13);
    v24 = sub_1958890(v23, *v53, a3);
LABEL_77:
    *v53 = v24;
    if (!v24)
    {
      goto LABEL_99;
    }

    goto LABEL_78;
  }

LABEL_70:
  if (v8)
  {
    v40 = (v8 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = *(a1 + 8);
    if (v41)
    {
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v7 = *v53;
    }

    v24 = sub_1952690(v8, v42, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_99:
  *v53 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v53;
}

char *sub_15AAB78(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 40);
    *v4 = 8;
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
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

  v9 = *(a1 + 41);
  *v4 = 16;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 42);
  *v4 = 24;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 43);
  *v4 = 32;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_24:
    v4 = sub_128AEEC(a3, 6, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 44);
  *v4 = 40;
  v4[1] = v12;
  v4 += 2;
  if (v6)
  {
    goto LABEL_24;
  }

LABEL_7:
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    v7 = v4;
    goto LABEL_32;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 48);
  *v4 = 56;
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v4[1] = v13 | 0x80;
    v14 = v13 >> 7;
    v4[2] = v13 >> 7;
    v7 = v4 + 3;
    if (v13 >= 0x4000)
    {
      LOBYTE(v15) = v4[2];
      do
      {
        *(v7 - 1) = v15 | 0x80;
        v15 = v14 >> 7;
        *v7++ = v14 >> 7;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_32:
  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 52);
    *v7 = 64;
    v7[1] = v18;
    if (v18 > 0x7F)
    {
      v7[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v7[2] = v18 >> 7;
      v17 = v7 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v7[2];
        do
        {
          *(v17 - 1) = v20 | 0x80;
          v20 = v19 >> 7;
          *v17++ = v19 >> 7;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v17 = v7 + 2;
    }
  }

  else
  {
    v17 = v7;
  }

  if ((v6 & 2) != 0)
  {
    v17 = sub_128AEEC(a3, 9, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v17);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v17;
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

  if ((*a3 - v17) >= v25)
  {
    v27 = v25;
    memcpy(v17, v26, v25);
    v17 += v27;
    return v17;
  }

  return sub_1957130(a3, v26, v25, v17);
}

uint64_t sub_15AAE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = 0;
    goto LABEL_17;
  }

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
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v10.i64[0] = 0x200000002;
  v10.i64[1] = 0x200000002;
  v3 = v2 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_2339AA0), v10)) + ((v1 >> 5) & 2);
  if ((v1 & 0x80) != 0)
  {
    v11 = *(a1 + 48);
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 11;
    }

    v3 += v13;
  }

LABEL_17:
  if ((v1 & 0x100) != 0)
  {
    v14 = *(a1 + 52);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v15;
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v3 += v19;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_15AB004(uint64_t a1, uint64_t a2)
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

        goto LABEL_24;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v10 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 32), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(a1 + 41) = *(a2 + 41);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(a1 + 42) = *(a2 + 42);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 43) = *(a2 + 43);
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
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_11;
    }

LABEL_28:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 52);
    *(a1 + 16) |= 0x100u;
    *(a1 + 52) = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15AB17C(uint64_t a1)
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

  if (a1 != &off_2778838)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_15A6ABC(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_15AA500(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_15B4DD8((a1 + 96));
  sub_15B506C((a1 + 72));
  sub_15B5828((a1 + 48));
  sub_15B5828((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15AB27C(uint64_t a1)
{
  sub_15AB17C(a1);

  operator delete();
}

uint64_t sub_15AB2B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_158C7A4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_158C7A4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_157DB4C(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = sub_157E0B4(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      result = sub_15A6ED0(*(v1 + 120));
    }

    if ((v14 & 2) != 0)
    {
      result = sub_15AA5F0(*(v1 + 128));
    }
  }

  v16 = *(v1 + 8);
  v15 = v1 + 8;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_1957EA8(v15);
  }

  return result;
}

char *sub_15AB3D0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v48 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v48, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v48 + 1;
    v7 = *v48;
    if (*v48 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v48, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v48 + 2;
      }
    }

    v48 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 2u;
          v29 = *(a1 + 128);
          if (!v29)
          {
            v30 = *(a1 + 8);
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
            if (v30)
            {
              v31 = *v31;
            }

            v29 = sub_15AE6E4(v31);
            *(a1 + 128) = v29;
            v6 = v48;
          }

          v16 = sub_222121C(a3, v29, v6);
          goto LABEL_76;
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          v38 = v6 - 1;
          while (1)
          {
            v39 = v38 + 1;
            v48 = v38 + 1;
            v40 = *(a1 + 88);
            if (v40 && (v41 = *(a1 + 80), v41 < *v40))
            {
              *(a1 + 80) = v41 + 1;
              v42 = *&v40[2 * v41 + 2];
            }

            else
            {
              v43 = sub_15AC0D4(*(a1 + 72));
              v42 = sub_19593CC(a1 + 72, v43);
              v39 = v48;
            }

            v38 = sub_221FCBC(a3, v42, v39);
            v48 = v38;
            if (!v38)
            {
              return 0;
            }

            if (*a3 <= v38 || *v38 != 42)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        v17 = v6 - 1;
        while (1)
        {
          v18 = v17 + 1;
          v48 = v17 + 1;
          v19 = *(a1 + 112);
          if (v19 && (v20 = *(a1 + 104), v20 < *v19))
          {
            *(a1 + 104) = v20 + 1;
            v21 = *&v19[2 * v20 + 2];
          }

          else
          {
            v22 = sub_15AC14C(*(a1 + 96));
            v21 = sub_19593CC(a1 + 96, v22);
            v18 = v48;
          }

          v17 = sub_221F9EC(a3, v21, v18);
          v48 = v17;
          if (!v17)
          {
            return 0;
          }

          if (*a3 <= v17 || *v17 != 50)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        v23 = v6 - 1;
        while (1)
        {
          v24 = v23 + 1;
          v48 = v23 + 1;
          v25 = *(a1 + 40);
          if (v25 && (v26 = *(a1 + 32), v26 < *v25))
          {
            *(a1 + 32) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            v28 = sub_15ACDCC(*(a1 + 24));
            v27 = sub_19593CC(a1 + 24, v28);
            v24 = v48;
          }

          v23 = sub_22210FC(a3, v27, v24);
          v48 = v23;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 10)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v32 = v6 - 1;
        while (1)
        {
          v33 = v32 + 1;
          v48 = v32 + 1;
          v34 = *(a1 + 64);
          if (v34 && (v35 = *(a1 + 56), v35 < *v34))
          {
            *(a1 + 56) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            v37 = sub_15ACDCC(*(a1 + 48));
            v36 = sub_19593CC(a1 + 48, v37);
            v33 = v48;
          }

          v32 = sub_22210FC(a3, v36, v33);
          v48 = v32;
          if (!v32)
          {
            return 0;
          }

          if (*a3 <= v32 || *v32 != 18)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 120);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        sub_15AE5E0(v14);
        v12 = v15;
        *(a1 + 120) = v15;
        v6 = v48;
      }

      v16 = sub_222118C(a3, v12, v6);
      goto LABEL_76;
    }

    if (v7)
    {
      v44 = (v7 & 7) == 4;
    }

    else
    {
      v44 = 1;
    }

    if (v44)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v48;
      }

      return 0;
    }

    v45 = *(a1 + 8);
    if (v45)
    {
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v46 = sub_11F1920((a1 + 8));
      v6 = v48;
    }

    v16 = sub_1952690(v7, v46, v6, a3);
LABEL_76:
    v48 = v16;
    if (!v16)
    {
      return 0;
    }

LABEL_77:
    ;
  }

  return v48;
}

char *sub_15AB7D0(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_158D038(v8, v10, a3);
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
      *__dst = 18;
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

      __dst = sub_158D038(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v17 = *(a1 + 120);
    *__dst = 26;
    v18 = *(v17 + 20);
    __dst[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, __dst + 1);
    }

    else
    {
      v19 = __dst + 2;
    }

    __dst = sub_15A8108(v17, v19, a3);
  }

  if ((v16 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v20 = *(a1 + 128);
    *__dst = 34;
    v21 = *(v20 + 20);
    __dst[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, __dst + 1);
    }

    else
    {
      v22 = __dst + 2;
    }

    __dst = sub_15AAB78(v20, v22, a3);
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    for (k = 0; k != v23; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v25 = *(*(a1 + 88) + 8 * k + 8);
      *__dst = 42;
      v26 = *(v25 + 20);
      __dst[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, __dst + 1);
      }

      else
      {
        v27 = __dst + 2;
      }

      __dst = sub_157DD18(v25, v27, a3);
    }
  }

  v28 = *(a1 + 104);
  if (v28)
  {
    for (m = 0; m != v28; ++m)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v30 = *(*(a1 + 112) + 8 * m + 8);
      *__dst = 50;
      v31 = *(v30 + 20);
      __dst[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, __dst + 1);
      }

      else
      {
        v32 = __dst + 2;
      }

      __dst = sub_157E2B0(v30, v32, a3);
    }
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return __dst;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  if ((*a3 - __dst) >= v36)
  {
    v38 = v36;
    memcpy(__dst, v37, v36);
    __dst += v38;
    return __dst;
  }

  return sub_1957130(a3, v37, v36, __dst);
}

uint64_t sub_15ABB68(uint64_t a1)
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
      v7 = sub_158D7DC(v6);
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
      v14 = sub_158D7DC(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_157DEC4(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + v22;
  v24 = *(a1 + 112);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_157E398(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 16);
  if ((v29 & 3) != 0)
  {
    if (v29)
    {
      v30 = sub_15A8FD4(*(a1 + 120));
      v23 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v29 & 2) != 0)
    {
      v31 = sub_15AAE98(*(a1 + 128));
      v23 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v32 = *(a1 + 8);
  if (v32)
  {
    v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v32 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v23 += v35;
  }

  *(a1 + 20) = v23;
  return v23;
}

void sub_15ABD6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B66F0((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_15B66F0((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_15B5EFC((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_15B5C60((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if ((v24 & 3) != 0)
  {
    if (v24)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 120);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        sub_15AE5E0(v27);
        *(a1 + 120) = v25;
      }

      if (*(a2 + 120))
      {
        v28 = *(a2 + 120);
      }

      else
      {
        v28 = &off_27786B8;
      }

      sub_15A9780(v25, v28);
    }

    if ((v24 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v29 = *(a1 + 128);
      if (!v29)
      {
        v30 = *(a1 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        v29 = sub_15AE6E4(v31);
        *(a1 + 128) = v29;
      }

      if (*(a2 + 128))
      {
        v32 = *(a2 + 128);
      }

      else
      {
        v32 = &off_2778800;
      }

      sub_15AB004(v29, v32);
    }
  }

  v33 = *(a2 + 8);
  if (v33)
  {

    sub_1957EF4((a1 + 8), (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15ABFE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_158E0B0(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_158E0B0(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = *(*(a1 + 88) + 8 * v8--);
    if ((~*(v9 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 104);
  while (v10 >= 1)
  {
    v11 = *(*(a1 + 112) + 8 * v10--);
    if ((~*(v11 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_15AA198(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_15AC0D4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F1230;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_15AC14C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F12B0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_15AC1D0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F1330;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_15AC274(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F13B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_15AC2FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F1430;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

void *sub_15AC3A0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F14B0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_15AC43C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_15800F4(v2, a1, 0);
}

uint64_t sub_15AC49C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F15B0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = a1;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = a1;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = a1;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = &qword_278E990;
  *(result + 168) = &qword_278E990;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 176) = &qword_278E990;
  *(result + 199) = 0;
  return result;
}

void *sub_15AC578(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F1630;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[6] = 0;
  result[7] = 0;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_15AC620(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F16B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15AC6A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F1730;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

void *sub_15AC75C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F17B0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

double sub_15AC7E0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F1830;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t sub_15AC864(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F18B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = &qword_278E990;
  *(result + 64) = 0;
  return result;
}

double sub_15AC8F4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F1930;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  return result;
}

void *sub_15AC998(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F19B0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[6] = 0;
  result[7] = 0;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_15ACA24(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F1A30;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

double sub_15ACAAC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F1AB0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  return result;
}

void *sub_15ACB48(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F1B30;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_15ACBC0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F1BB0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_15ACC38(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F1C30;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_15ACCC0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F1CB0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_15ACD44(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F1D30;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15ACDCC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F1DB0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  return result;
}

uint64_t sub_15ACE74(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F1E30;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_15ACEF0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F1EB0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 84) = 0u;
  return result;
}

void *sub_15ACFA8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F1F30;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = 0;
  return result;
}

void *sub_15AD058(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F1FB0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = a1;
  result[6] = 0;
  result[7] = 0;
  result[8] = &qword_278E990;
  return result;
}

uint64_t sub_15AD104(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2030;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 124) = 0u;
  *(result + 140) = 1;
  return result;
}

uint64_t sub_15AD1C0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F20B0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15AD260(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2130;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_15AD300(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F21B0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = a1;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = a1;
  result[10] = 0;
  return result;
}

uint64_t sub_15AD3A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F2230;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_15AD430(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F22B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  return result;
}

void *sub_15AD4B8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2330;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = 0;
  return result;
}

uint64_t sub_15AD568(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F23B0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_15AD608(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2430;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = a1;
  result[10] = 0;
  result[11] = 0;
  result[12] = &qword_278E990;
  result[13] = &qword_278E990;
  result[14] = &qword_278E990;
  result[15] = &qword_278E990;
  result[16] = &qword_278E990;
  result[17] = 0;
  result[18] = 0;
  result[19] = 0;
  return result;
}

uint64_t sub_15AD6CC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F24B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_15AD754(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2530;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15AD7F4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F25B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

double sub_15AD87C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F2630;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  return result;
}

uint64_t sub_15AD92C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F26B0;
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
  *(result + 96) = &qword_278E990;
  *(result + 104) = &qword_278E990;
  *(result + 112) = &qword_278E990;
  *(result + 120) = &qword_278E990;
  *(result + 128) = &qword_278E990;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  return result;
}

uint64_t sub_15AD9F4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F2730;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_15ADA70(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F27B0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15ADB10(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2830;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = 0;
  *(result + 88) = 1;
  return result;
}

uint64_t sub_15ADBC8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F28B0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_15ADC74(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2930;
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
  *(result + 104) = 0;
  return result;
}

uint64_t sub_15ADD2C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F29B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15ADDB4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2A30;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = &qword_278E990;
  *(result + 104) = 0;
  return result;
}

int64x2_t sub_15ADE6C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F2AB0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = a1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = a1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = &qword_278E990;
  *(v2 + 120) = &qword_278E990;
  *(v2 + 128) = &qword_278E990;
  *(v2 + 136) = &qword_278E990;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(v2 + 216) = result;
  return result;
}

uint64_t sub_15ADF48(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2B30;
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
  *(result + 92) = 0;
  return result;
}

double sub_15AE000(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = 0.0;
  *v2 = &off_26F2BB0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = a1;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  return result;
}

void *sub_15AE0C8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F2C30;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[6] = 0;
  result[7] = 0;
  result[5] = &qword_278E990;
  return result;
}

void *sub_15AE154(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F2CB0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

void *sub_15AE1DC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2D30;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  return result;
}

uint64_t sub_15AE288(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F2DB0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15AE310(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F2E30;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_15AE398(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F2EB0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_15AE418(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F2F30;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_15AE4B4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F2FB0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_15AE52C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F3030;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

double sub_15AE5E0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F30B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = a1;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = &qword_278E990;
  *(v2 + 112) = &qword_278E990;
  result = 0.0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  return result;
}

void *sub_15AE6E4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F3130;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

double sub_15AE76C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F31B0;
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
  return result;
}

uint64_t sub_15AE830(uint64_t a1)
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