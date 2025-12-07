void sub_15AE8D0(uint64_t a1)
{
  sub_15AE830(a1);

  operator delete();
}

uint64_t sub_15AE908(uint64_t a1)
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

  if ((v1 & 0xE) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
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

uint64_t sub_15AE95C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v35, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v35 + 1);
    v8 = **v35;
    if (**v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v35 + 2);
      }
    }

    *v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_34;
        }

        v5 |= 4u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v24 = v7 + 2;
LABEL_33:
          *v35 = v24;
          *(a1 + 40) = v23;
          goto LABEL_42;
        }

        v33 = sub_19587DC(v7, v23);
        *v35 = v33;
        *(a1 + 40) = v34;
        if (!v33)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_34;
        }

        v5 |= 8u;
        v17 = v7 + 1;
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = v7 + 2;
LABEL_24:
          *v35 = v17;
          *(a1 + 48) = v16;
          goto LABEL_42;
        }

        v29 = sub_19587DC(v7, v16);
        *v35 = v29;
        *(a1 + 48) = v30;
        if (!v29)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_42;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_34;
    }

    v5 |= 2u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      *v35 = v14;
      *(a1 + 32) = v13;
      goto LABEL_42;
    }

    v31 = sub_19587DC(v7, v13);
    *v35 = v31;
    *(a1 + 32) = v32;
    if (!v31)
    {
      goto LABEL_53;
    }

LABEL_42:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v22 = sub_1958890(v21, *v35, a3);
LABEL_41:
    *v35 = v22;
    if (!v22)
    {
      goto LABEL_53;
    }

    goto LABEL_42;
  }

LABEL_34:
  if (v8)
  {
    v26 = (v8 & 7) == 4;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v28 = sub_11F1920((a1 + 8));
      v7 = *v35;
    }

    v22 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_15AEBF8(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 40);
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

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 48);
    *v12 = 32;
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v12[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v12[2] = v18 >> 7;
      v17 = v12 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v17 - 1) = v12 | 0x80;
          v12 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v12 + 2;
    }
  }

  else
  {
    v17 = v12;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v17;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if ((*a3 - v17) >= v24)
  {
    v26 = v24;
    memcpy(v17, v25, v24);
    v17 += v26;
    return v17;
  }

  return sub_1957130(a3, v25, v24, v17);
}

uint64_t sub_15AEE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_12:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_13:
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

void sub_15AEF54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_16:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_15AF04C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F3230;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_15AF0D4(uint64_t a1)
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
  if (a1 != &off_27788C0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_15B1C80(v6);
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

void sub_15AF18C(uint64_t a1)
{
  sub_15AF0D4(a1);

  operator delete();
}

char *sub_15AF1C4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v28, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v28 + 1;
    v8 = *v28;
    if (*v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v28 + 2;
      }
    }

    v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 17)
        {
          v14 = *v7;
          v13 = v7 + 8;
          v5 |= 2u;
          *(a1 + 32) = v14;
LABEL_19:
          v28 = v13;
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (v8 != 10)
      {
        goto LABEL_31;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 24);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_15B234C(v18);
        *(a1 + 24) = v16;
        v7 = v28;
      }

      v19 = sub_221ECFC(a3, v16, v7);
LABEL_38:
      v28 = v19;
      if (!v19)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_31;
    }

    v5 |= 4u;
    v20 = v7 + 1;
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v28 = v20;
      *(a1 + 40) = v21;
      goto LABEL_39;
    }

    v26 = sub_1958770(v7, v21);
    v28 = v26;
    *(a1 + 40) = v27;
    if (!v26)
    {
      goto LABEL_46;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 37)
  {
    v15 = *v7;
    v13 = v7 + 4;
    v5 |= 8u;
    *(a1 + 44) = v15;
    goto LABEL_19;
  }

LABEL_31:
  if (v8)
  {
    v23 = (v8 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v7 = v28;
    }

    v19 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_38;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

char *sub_15AF3F0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
    *__dst = 17;
    *(__dst + 1) = v10;
    __dst += 9;
    if ((v5 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 24);
  *__dst = 10;
  v8 = *(v7 + 20);
  __dst[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, __dst + 1);
  }

  else
  {
    v9 = __dst + 2;
  }

  __dst = sub_15B1F3C(v7, v9, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v11 = *(a1 + 40);
  *__dst = 24;
  __dst[1] = v11;
  if (v11 > 0x7F)
  {
    __dst[1] = v11 | 0x80;
    v12 = v11 >> 7;
    __dst[2] = v11 >> 7;
    v6 = __dst + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = __dst[2];
      do
      {
        *(v6 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v6++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_21:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 44);
    *v6 = 37;
    *(v6 + 1) = v15;
    v6 += 5;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v19)
  {
    v21 = v19;
    memcpy(v6, v20, v19);
    v6 += v21;
    return v6;
  }

  return sub_1957130(a3, v20, v19, v6);
}

uint64_t sub_15AF5F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v5 = sub_15B20A0(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 8) != 0)
    {
      result = v3 + 5;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    result += v8;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_15AF6D0(uint64_t a1)
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

void sub_15AF770(uint64_t a1)
{
  sub_15AF6D0(a1);

  operator delete();
}

uint64_t sub_15AF7A8(uint64_t a1)
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

uint64_t sub_15AF7F0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_15AF97C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_15AFA7C(uint64_t a1)
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

uint64_t sub_15AFB2C(uint64_t a1)
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
  if (a1 != &off_27788F0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15B1C80(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15B677C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15AFBF0(uint64_t a1)
{
  sub_15AFB2C(a1);

  operator delete();
}

uint64_t sub_15AFC28(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15AF7A8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_1580044(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_15AFCBC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v36, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v36 + 1;
    v8 = *v36;
    if (*v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v36 + 2;
      }
    }

    v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 48);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_15B234C(v24);
        *(a1 + 48) = v22;
        v7 = v36;
      }

      v25 = sub_221ECFC(a3, v22, v7);
LABEL_48:
      v36 = v25;
      if (!v25)
      {
        goto LABEL_58;
      }

      goto LABEL_49;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_41;
    }

    v5 |= 2u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      v36 = v14;
      *(a1 + 56) = v13 != 0;
      goto LABEL_49;
    }

    v32 = sub_19587DC(v7, v13);
    v36 = v32;
    *(a1 + 56) = v33 != 0;
    if (!v32)
    {
      goto LABEL_58;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 4u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_40:
      v36 = v27;
      *(a1 + 57) = v26 != 0;
      goto LABEL_49;
    }

    v34 = sub_19587DC(v7, v26);
    v36 = v34;
    *(a1 + 57) = v35 != 0;
    if (!v34)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v11 == 4 && v8 == 34)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = v16 + 1;
      v36 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_15B0504(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = v36;
      }

      v16 = sub_22212AC(a3, v20, v17);
      v36 = v16;
      if (!v16)
      {
        goto LABEL_58;
      }

      if (*a3 <= v16 || *v16 != 34)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_41:
  if (v8)
  {
    v29 = (v8 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v7 = v36;
    }

    v25 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_15AFFB4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
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

    v4 = sub_15B1F3C(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 56);
  *v4 = 16;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_14:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 57);
    *v4 = 24;
    v4[1] = v11;
    v4 += 2;
  }

LABEL_17:
  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 34;
      v15 = *(v14 + 20);
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v4 + 1);
      }

      else
      {
        v16 = v4 + 2;
      }

      v4 = sub_15AF97C(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v20)
  {
    v22 = v20;
    memcpy(v4, v21, v20);
    v4 += v22;
    return v4;
  }

  return sub_1957130(a3, v21, v20, v4);
}

uint64_t sub_15B01D8(uint64_t a1)
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
      v7 = sub_15AFA7C(v6);
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v9 = sub_15B20A0(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += ((v8 >> 1) & 2) + (v8 & 2);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_15B02D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B6800((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 48);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_15B234C(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_27789A0;
      }

      sub_1581C8C(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 57) = *(a2 + 57);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15B0414(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

double sub_15B0488(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F32B0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void *sub_15B0504(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F3330;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

double sub_15B0588(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F33B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  return result;
}

uint64_t sub_15B062C(uint64_t a1)
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

void sub_15B06CC(uint64_t a1)
{
  sub_15B062C(a1);

  operator delete();
}

uint64_t sub_15B0704(uint64_t a1)
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

uint64_t sub_15B074C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v16 = v6 + 1;
        v15 = *v6;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          *v22 = sub_19587DC(v6, v15);
          if (!*v22)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v16 = v6 + 2;
LABEL_23:
          *v22 = v16;
        }

        if (v15 > 3)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v15;
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

LABEL_38:
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
      goto LABEL_29;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v20 = sub_194DB04((a1 + 24), v19);
    v14 = sub_1958890(v20, *v22, a3);
LABEL_29:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  return *v22;
}

char *sub_15B090C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_15B0A58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  result = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v7 = *(a1 + 32);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

uint64_t sub_15B0AE4(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_15B0A58(a1);
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
    v6 = *(a1 + 32);
    v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 10;
    }

    result = v4 + v5 + v8 + 2;
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

uint64_t sub_15B0BD4(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (a1 != &off_2778930)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_15B176C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_15B687C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15B0CC8(uint64_t a1)
{
  sub_15B0BD4(a1);

  operator delete();
}

uint64_t sub_15B0D00(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15B0704(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v9 + 23) & 0x80000000) == 0)
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_15B0E08(*(v1 + 64));
    goto LABEL_10;
  }

  **v9 = 0;
  *(v9 + 8) = 0;
  if ((v5 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_15B0E08(uint64_t a1)
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

uint64_t sub_15B0E2C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v35, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v35 + 1);
    v8 = **v35;
    if (**v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v35 + 2);
      }
    }

    *v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_44;
        }

        *(a1 + 16) |= 1u;
        v28 = *(a1 + 8);
        v18 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v18 = *v18;
        }

        v19 = (a1 + 48);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_44;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = (a1 + 56);
      }

      v29 = sub_194DB04(v19, v18);
      v15 = sub_1958890(v29, *v35, a3);
      goto LABEL_51;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_44;
    }

    v5 |= 8u;
    LODWORD(v20) = *v7;
    if ((v20 & 0x80000000) == 0)
    {
      v21 = (v7 + 1);
LABEL_56:
      *v35 = v21;
      *(a1 + 72) = v20;
      goto LABEL_52;
    }

    v20 = (v7[1] << 7) + v20 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v21 = (v7 + 2);
      goto LABEL_56;
    }

    v33 = sub_19587DC(v7, v20);
    *v35 = v33;
    *(a1 + 72) = v34;
    if (!v33)
    {
      goto LABEL_62;
    }

LABEL_52:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 == 34)
    {
      v22 = (v7 - 1);
      while (1)
      {
        v23 = (v22 + 1);
        *v35 = v22 + 1;
        v24 = *(a1 + 40);
        if (v24 && (v25 = *(a1 + 32), v25 < *v24))
        {
          *(a1 + 32) = v25 + 1;
          v26 = *&v24[2 * v25 + 2];
        }

        else
        {
          v27 = sub_15B21A0(*(a1 + 24));
          v26 = sub_19593CC(a1 + 24, v27);
          v23 = *v35;
        }

        v22 = sub_222133C(a3, v26, v23);
        *v35 = v22;
        if (!v22)
        {
          goto LABEL_62;
        }

        if (*a3 <= v22 || *v22 != 34)
        {
          goto LABEL_52;
        }
      }
    }
  }

  else if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 4u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_15B22D4(v14);
      *(a1 + 64) = v12;
      v7 = *v35;
    }

    v15 = sub_22213CC(a3, v12, v7);
LABEL_51:
    *v35 = v15;
    if (!v15)
    {
      goto LABEL_62;
    }

    goto LABEL_52;
  }

LABEL_44:
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
      v7 = *v35;
    }

    v15 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_51;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_62:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_15B112C(uint64_t a1, char *__dst, unint64_t *a3)
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
    if ((v6 & 8) == 0)
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
  if ((v6 & 8) == 0)
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

  v8 = *(a1 + 72);
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
      *v7 = 34;
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

      v7 = sub_15B090C(v14, v16, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 64);
    *v7 = 42;
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

    v7 = sub_15B1A04(v17, v19, a3);
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

uint64_t sub_15B139C(uint64_t a1)
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
      v7 = sub_15B0AE4(v6);
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_26;
  }

  if (v8)
  {
    v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

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
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = sub_15B1BB4(*(a1 + 64));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v16 = *(a1 + 72);
  if (v16 < 0)
  {
    v17 = 11;
  }

  else
  {
    v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v17;
LABEL_26:
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

void sub_15B154C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B6984((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0xF) != 0)
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

        goto LABEL_21;
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
LABEL_10:
        *(a1 + 16) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_21:
    *(a1 + 16) |= 4u;
    v17 = *(a1 + 64);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_15B22D4(v19);
      *(a1 + 64) = v17;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = &off_2778980;
    }

    sub_128F8FC(v17, v20);
    if ((v9 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15B16F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 40) + 8 * v1--);
    if ((~*(v2 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  return (*(a1 + 16) & 4) == 0 || (~*(*(a1 + 64) + 16) & 3) == 0;
}

void *sub_15B176C(void *a1)
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

void sub_15B17E0(void *a1)
{
  sub_15B176C(a1);

  operator delete();
}

char *sub_15B1818(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v23, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v23 + 1;
    v8 = *v23;
    if (*v23 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v23, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v23 + 2;
      }
    }

    v23 = v7;
    if (v8 >> 3 == 2)
    {
      if (v8 == 16)
      {
        v5 |= 2u;
        LODWORD(v15) = *v7;
        if ((v15 & 0x80000000) != 0)
        {
          v15 = (v7[1] << 7) + v15 - 128;
          if (v7[1] < 0)
          {
            v19 = sub_19587DC(v7, v15);
            v23 = v19;
            *(a1 + 28) = v20;
            if (!v19)
            {
              goto LABEL_40;
            }

            goto LABEL_31;
          }

          v16 = v7 + 2;
        }

        else
        {
          v16 = v7 + 1;
        }

        v23 = v16;
        *(a1 + 28) = v15;
        goto LABEL_31;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 8)
    {
      v5 |= 1u;
      LODWORD(v17) = *v7;
      if ((v17 & 0x80000000) != 0)
      {
        v17 = (v7[1] << 7) + v17 - 128;
        if (v7[1] < 0)
        {
          v21 = sub_19587DC(v7, v17);
          v23 = v21;
          *(a1 + 24) = v22;
          if (!v21)
          {
            goto LABEL_40;
          }

          goto LABEL_31;
        }

        v18 = v7 + 2;
      }

      else
      {
        v18 = v7 + 1;
      }

      v23 = v18;
      *(a1 + 24) = v17;
      goto LABEL_31;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v23;
    }

    v23 = sub_1952690(v8, v14, v7, a3);
    if (!v23)
    {
      goto LABEL_40;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v23, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_40:
  v23 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

char *sub_15B1A04(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_15B1BB4(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_13695F4(a1);
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v3 = 12;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v5 = *(a1 + 28);
    if (v5 < 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    result = v3 + v6;
  }

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

uint64_t sub_15B1C80(uint64_t a1)
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
  sub_15B6900((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15B1D2C(uint64_t a1)
{
  sub_15B1C80(a1);

  operator delete();
}

uint64_t sub_15B1D64(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = sub_194DB04((a1 + 48), v16);
        v14 = sub_1958890(v17, *v25, a3);
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v18 = v6 - 1;
      while (1)
      {
        v19 = v18 + 1;
        *v25 = v18 + 1;
        v20 = *(a1 + 40);
        if (v20 && (v21 = *(a1 + 32), v21 < *v20))
        {
          *(a1 + 32) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          v23 = sub_15B2228(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = *v25;
        }

        v18 = sub_222145C(a3, v22, v19);
        *v25 = v18;
        if (!v18)
        {
          break;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_33;
        }
      }

LABEL_38:
      *v25 = 0;
      return *v25;
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

      goto LABEL_38;
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
LABEL_23:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_15B1F3C(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_15B112C(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    __dst = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
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

uint64_t sub_15B20A0(uint64_t a1)
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
      v7 = sub_15B139C(v6);
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
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

uint64_t sub_15B21A0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F3430;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_15B2228(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F34B0;
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

void *sub_15B22D4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F3530;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_15B234C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F35B0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void sub_15B472C(void *a1)
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
          sub_157A324(*v3);
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

void sub_15B47B0(void *a1)
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
          sub_157A780(*v3);
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

void sub_15B4834(void *a1)
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
          sub_157AC34(*v3);
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

void sub_15B48B8(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_157B8A8(v9);
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
      sub_13120E8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_15B4934(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_157B92C(v9);
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
      result = sub_15B49B0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15B49C0(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_157B9A8(v9);
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

void sub_15B4A3C(void *a1)
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
          sub_157EB00(*v3);
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

void sub_15B4AC0(void *a1)
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
          sub_157F144(*v3);
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

void sub_15B4B44(void *a1)
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
          sub_157F96C(*v3);
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

void sub_15B4BC8(void *a1)
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
          sub_15AE830(*v3);
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

void sub_15B4C4C(void *a1)
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
          sub_15837D4(*v3);
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

void sub_15B4CD0(void *a1)
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
          sub_15878A8(*v3);
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

void sub_15B4D54(void *a1)
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
          sub_158E1B8(*v3);
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

void sub_15B4DD8(void *a1)
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
          sub_157DFC4(*v3);
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

void sub_15B4E5C(void *a1)
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
          sub_1579EC8(*v3);
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

void sub_15B4EE0(void *a1)
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
          sub_15AFB2C(*v3);
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

void sub_15B4F64(void *a1)
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
          sub_15AF0D4(*v3);
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

void sub_15B4FE8(void *a1)
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
          sub_157E494(*v3);
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

void sub_15B506C(void *a1)
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
          sub_157DAA0(*v3);
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

void sub_15B50F0(void *a1)
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
          sub_15943E0(*v3);
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

void sub_15B5174(void *a1)
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
          sub_1596C94(*v3);
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

void sub_15B51F8(void *a1)
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
          sub_1597670(*v3);
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

void sub_15B527C(void *a1)
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
          sub_1599CA8(*v3);
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

void sub_15B5300(void *a1)
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
          sub_1598564(*v3);
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

void sub_15B5384(void *a1)
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
          sub_159C470(*v3);
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

void sub_15B5408(void *a1)
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
          sub_159EA90(*v3);
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

void sub_15B548C(void *a1)
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
          sub_15B1C80(*v3);
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

void sub_15B5510(void *a1)
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
          sub_15A4BE4(*v3);
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

void sub_15B5594(void *a1)
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
          sub_140254C(*v3);
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

void sub_15B5618(void *a1)
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
          sub_15A53A8(*v3);
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

void sub_15B569C(void *a1)
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
          sub_15A5B0C(*v3);
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

void sub_15B5720(void *a1)
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
          sub_158F0EC(*v3);
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

void sub_15B57A4(void *a1)
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
          sub_158FB2C(*v3);
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

void sub_15B5828(void *a1)
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
          sub_158C4F8(*v3);
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

void sub_15B58AC(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AC274(v9);
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
      sub_12A463C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B5928(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AC2FC(v9);
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
      sub_15B59A4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B59B4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AC3A0(v9);
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
      sub_15B5A30(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B5A40(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AF04C(v9);
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
      sub_15B5ABC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B5ACC(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AC578(v9);
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
      sub_15B5B48(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B5B58(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_15AC8F4(v9);
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
      sub_15B5BD4(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_15B5BE4(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15ACE74(v9);
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

void sub_15B5C60(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AC14C(v9);
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

void sub_15B5CDC(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_157B820(v9);
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
      sub_13460C4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B5D58(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_15B0588(v9);
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
      sub_15B5DD4(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_15B5DE4(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_15B0488(v9);
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
      sub_15B5E60(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_15B5E70(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AC1D0(v9);
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
      sub_15B5EEC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_15B5EFC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15AC0D4(v9);
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
      result = sub_15B5F78(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15B5F88(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AD4B8(v9);
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
      sub_15B6004(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B6014(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AD6CC(v9);
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
      sub_13460C4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B6090(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AD7F4(v9);
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
      sub_13460C4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_15B610C(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15AD9F4(v9);
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
      result = sub_13EBEE0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15B6188(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AD92C(v9);
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
      sub_15B6204(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B6214(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15ADC74(v9);
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
      sub_15B6290(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B62A0(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_15ADE6C(v9);
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
      sub_15B631C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_15B632C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15B234C(v9);
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
      sub_15B63A8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B63B8(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AE398(v9);
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
      sub_15B6434(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B6444(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14050A4(v9);
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
      sub_15B64C0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B64D0(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AE418(v9);
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
      sub_15B654C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_15B655C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15AE4B4(v9);
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

void sub_15B65D8(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15ACFA8(v9);
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
      sub_15B6654(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B6664(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15AD058(v9);
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
      sub_15B66E0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B66F0(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15ACDCC(v9);
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
      sub_15B676C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B677C(void *a1)
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
          sub_15AF6D0(*v3);
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

void sub_15B6800(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15B0504(v9);
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
      sub_13120E8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B687C(void *a1)
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
          sub_15B062C(*v3);
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

void sub_15B6900(void *a1)
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
          sub_15B0BD4(*v3);
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

void sub_15B6984(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15B21A0(v9);
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

void sub_15B6A00(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15B2228(v9);
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
      sub_15B6A7C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15B6A8C()
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

  sub_19586BC(23, v0, v3);
}

uint64_t sub_15B6ACC(uint64_t a1)
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

void *sub_15B6B04(void *a1)
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

void sub_15B6B78(void *a1)
{
  sub_15B6B04(a1);

  operator delete();
}

char *sub_15B6BB0(uint64_t a1, char *a2, int32x2_t *a3)
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
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_24:
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
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
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_28:
      v25 = v18;
      *(a1 + 24) = v19;
      goto LABEL_29;
    }

    v23 = sub_1958770(v7, v19);
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

char *sub_15B6D94(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_15B6F44(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_15115F0(a1);
  }

  else
  {
    result = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    result += v5;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_15B6FF0(uint64_t a1)
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

  if (a1 != &off_27789F8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_15B6B04(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15B6B04(v6);
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

void sub_15B70C0(uint64_t a1)
{
  sub_15B6FF0(a1);

  operator delete();
}

uint64_t sub_15B70F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_15B6ACC(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_15B6ACC(*(v1 + 32));
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

char *sub_15B7168(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v21, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v21 + 1;
    v7 = *v21;
    if (*v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v21 + 2;
      }
    }

    v21 = v6;
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

          v15 = sub_15BA55C(v17);
          *(a1 + 32) = v15;
LABEL_28:
          v6 = v21;
        }

LABEL_29:
        v14 = sub_22214EC(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v15 = sub_15BA55C(v19);
        *(a1 + 24) = v15;
        goto LABEL_28;
      }

      goto LABEL_29;
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
        return v21;
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
      v6 = v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v21 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v21;
}

char *sub_15B7304(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_15B6D94(v7, v9, a3);
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

    v4 = sub_15B6D94(v10, v12, a3);
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

uint64_t sub_15B7480(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = sub_15B6F44(*(a1 + 24));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_5:
    v5 = sub_15B6F44(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_15B7514(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_15B7480(a1);
  }

  else
  {
    v2 = sub_15B6F44(*(a1 + 24));
    v3 = sub_15B6F44(*(a1 + 32));
    result = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

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

  *(a1 + 20) = result;
  return result;
}

std::string *sub_15B75D4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v7 = *v7;
        }

        data = sub_15BA55C(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_27789D8;
      }

      result = sub_128F8FC(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v9 = v3[1].__r_.__value_.__l.__size_;
      if (!v9)
      {
        v10 = v3->__r_.__value_.__l.__size_;
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_15BA55C(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_27789D8;
      }

      result = sub_128F8FC(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_15B7720(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15D69D8(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15B77A0(void *a1)
{
  sub_15B7720(a1);

  operator delete();
}

uint64_t sub_15B77D8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15B70F8(v4);
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

char *sub_15B7854(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_15BA5D4(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_222157C(a3, v16, v13);
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

char *sub_15B79E4(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_15B7304(v8, v10, a3);
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

uint64_t sub_15B7B24(uint64_t a1)
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
      v7 = sub_15B7514(v6);
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

std::string *sub_15B7BCC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_15D6A5C((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
    v7 = *(v3 + 24) + v4;
    *(v3 + 24) = v7;
    v8 = *(v3 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_15B7C90(uint64_t a1)
{
  v1 = *(a1 + 8);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 16) + 8 * v1);
    if ((~*(v3 + 16) & 3) != 0)
    {
      break;
    }

    if ((~*(*(v3 + 24) + 16) & 3) != 0)
    {
      break;
    }

    --v1;
  }

  while ((~*(*(v3 + 32) + 16) & 3) == 0);
  return v2 < 1;
}

uint64_t sub_15B7CF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 0x20) != 0)
    {
      result = sub_15BE138(*(v3 + 64) + 24);
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

void *sub_15B7D58(void *a1)
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

void sub_15B7DCC(void *a1)
{
  sub_15B7D58(a1);

  operator delete();
}

uint64_t sub_15B7E04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  if ((v1 & 0x1F00) != 0)
  {
    *(a1 + 120) = 0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
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

char *sub_15B7E50(uint64_t a1, char *a2, int32x2_t *a3)
{
  v79 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v79, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v79 + 1;
    v8 = *v79;
    if (*v79 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v79, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v79 + 2;
      }
    }

    v79 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_73;
        }

        v5 |= 1u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_12:
          v79 = v12;
          *(a1 + 24) = v11;
          goto LABEL_80;
        }

        v65 = sub_19587DC(v7, v11);
        v79 = v65;
        *(a1 + 24) = v66;
        if (v65)
        {
          goto LABEL_80;
        }

        goto LABEL_111;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_73;
        }

        v5 |= 2u;
        v36 = v7 + 1;
        v35 = *v7;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if (v37 < 0)
        {
          v69 = sub_19587DC(v7, v35);
          v79 = v69;
          *(a1 + 32) = v70;
          if (!v69)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v36 = v7 + 2;
LABEL_52:
          v79 = v36;
          *(a1 + 32) = v35;
        }

        goto LABEL_80;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_73;
        }

        v5 |= 4u;
        v33 = v7 + 1;
        v32 = *v7;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_47;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v67 = sub_19587DC(v7, v32);
          v79 = v67;
          *(a1 + 40) = v68;
          if (!v67)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v33 = v7 + 2;
LABEL_47:
          v79 = v33;
          *(a1 + 40) = v32;
        }

        goto LABEL_80;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_73;
        }

        v5 |= 8u;
        v30 = v7 + 1;
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_42;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          v63 = sub_19587DC(v7, v29);
          v79 = v63;
          *(a1 + 48) = v64;
          if (!v63)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v30 = v7 + 2;
LABEL_42:
          v79 = v30;
          *(a1 + 48) = v29;
        }

        goto LABEL_80;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_73;
        }

        v5 |= 0x10u;
        v18 = v7 + 1;
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v55 = sub_19587DC(v7, v17);
          v79 = v55;
          *(a1 + 56) = v56;
          if (!v55)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_22:
          v79 = v18;
          *(a1 + 56) = v17;
        }

        goto LABEL_80;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_73;
        }

        v5 |= 0x20u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          v59 = sub_19587DC(v7, v23);
          v79 = v59;
          *(a1 + 64) = v60;
          if (!v59)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v24 = v7 + 2;
LABEL_32:
          v79 = v24;
          *(a1 + 64) = v23;
        }

        goto LABEL_80;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_73;
        }

        v5 |= 0x40u;
        v39 = v7 + 1;
        v38 = *v7;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v71 = sub_19587DC(v7, v38);
          v79 = v71;
          *(a1 + 72) = v72;
          if (!v71)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v39 = v7 + 2;
LABEL_57:
          v79 = v39;
          *(a1 + 72) = v38;
        }

        goto LABEL_80;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_73;
        }

        v5 |= 0x80u;
        v42 = v7 + 1;
        v41 = *v7;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v43 = *v42;
        v41 = (v43 << 7) + v41 - 128;
        if (v43 < 0)
        {
          v73 = sub_19587DC(v7, v41);
          v79 = v73;
          *(a1 + 80) = v74;
          if (!v73)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v42 = v7 + 2;
LABEL_62:
          v79 = v42;
          *(a1 + 80) = v41;
        }

        goto LABEL_80;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_73;
        }

        v5 |= 0x100u;
        v48 = v7 + 1;
        v47 = *v7;
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_72;
        }

        v49 = *v48;
        v47 = (v49 << 7) + v47 - 128;
        if (v49 < 0)
        {
          v77 = sub_19587DC(v7, v47);
          v79 = v77;
          *(a1 + 88) = v78;
          if (!v77)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v48 = v7 + 2;
LABEL_72:
          v79 = v48;
          *(a1 + 88) = v47;
        }

        goto LABEL_80;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_73;
        }

        v5 |= 0x200u;
        v45 = v7 + 1;
        v44 = *v7;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_67;
        }

        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if (v46 < 0)
        {
          v75 = sub_19587DC(v7, v44);
          v79 = v75;
          *(a1 + 96) = v76;
          if (!v75)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v45 = v7 + 2;
LABEL_67:
          v79 = v45;
          *(a1 + 96) = v44;
        }

        goto LABEL_80;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_73;
        }

        v5 |= 0x400u;
        v15 = v7 + 1;
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v53 = sub_19587DC(v7, v14);
          v79 = v53;
          *(a1 + 104) = v54;
          if (!v53)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v15 = v7 + 2;
LABEL_17:
          v79 = v15;
          *(a1 + 104) = v14;
        }

        goto LABEL_80;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_73;
        }

        v5 |= 0x800u;
        v27 = v7 + 1;
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if (v28 < 0)
        {
          v61 = sub_19587DC(v7, v26);
          v79 = v61;
          *(a1 + 112) = v62;
          if (!v61)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v27 = v7 + 2;
LABEL_37:
          v79 = v27;
          *(a1 + 112) = v26;
        }

        goto LABEL_80;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_73;
        }

        v5 |= 0x1000u;
        v21 = v7 + 1;
        v20 = *v7;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if (v22 < 0)
        {
          v57 = sub_19587DC(v7, v20);
          v79 = v57;
          *(a1 + 120) = v58;
          if (!v57)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v21 = v7 + 2;
LABEL_27:
          v79 = v21;
          *(a1 + 120) = v20;
        }

        goto LABEL_80;
      default:
LABEL_73:
        if (v8)
        {
          v50 = (v8 & 7) == 4;
        }

        else
        {
          v50 = 1;
        }

        if (!v50)
        {
          v51 = *(a1 + 8);
          if (v51)
          {
            v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v52 = sub_11F1920((a1 + 8));
            v7 = v79;
          }

          v79 = sub_1952690(v8, v52, v7, a3);
          if (!v79)
          {
            goto LABEL_111;
          }

LABEL_80:
          if (sub_195ADC0(a3, &v79, a3[11].u32[1]))
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
LABEL_111:
          v79 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v79;
    }
  }
}

char *sub_15B8488(uint64_t a1, char *__dst, unint64_t *a3)
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

    v12 = *(a1 + 32);
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

    v16 = *(a1 + 40);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 48);
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

    v25 = *(a1 + 56);
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
          v19 = (v26 >> 7);
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

    v29 = *(a1 + 64);
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

    v34 = *(a1 + 72);
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
          v28 = (v35 >> 7);
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

    v38 = *(a1 + 80);
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

    v43 = *(a1 + 88);
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
          v37 = (v44 >> 7);
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

    v47 = *(a1 + 96);
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

    v52 = *(a1 + 104);
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
          v46 = (v53 >> 7);
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

    v56 = *(a1 + 112);
    *v51 = 120;
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

    v61 = *(a1 + 120);
    *v55 = 384;
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
          v55 = (v62 >> 7);
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

  v64 = *(a1 + 8);
  if ((v64 & 1) == 0)
  {
    return v60;
  }

  v66 = v64 & 0xFFFFFFFFFFFFFFFCLL;
  v67 = *(v66 + 31);
  if (v67 < 0)
  {
    v68 = *(v66 + 8);
    v67 = *(v66 + 16);
  }

  else
  {
    v68 = (v66 + 8);
  }

  if ((*a3 - v60) >= v67)
  {
    v69 = v67;
    memcpy(v60, v68, v67);
    v60 += v69;
    return v60;
  }

  return sub_1957130(a3, v68, v67, v60);
}

unint64_t sub_15B8BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_15;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_12:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_13:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_28:
  v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v1 & 0x1F00) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 0x200) == 0)
    {
LABEL_18:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v2 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x400) == 0)
  {
LABEL_19:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  v2 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x800) == 0)
  {
LABEL_20:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_33:
  v2 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x1000) != 0)
  {
LABEL_21:
    v2 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_22:
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

std::string *sub_15B8E54(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_25:
    result[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    result[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    result[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
        goto LABEL_12;
      }

LABEL_10:
      result[3].__r_.__value_.__l.__size_ = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_28:
    result[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x1F00) == 0)
  {
    goto LABEL_20;
  }

  if ((v2 & 0x100) != 0)
  {
    result[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    if ((v2 & 0x200) == 0)
    {
LABEL_15:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  result[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_33:
    result[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_32:
  result[4].__r_.__value_.__l.__size_ = *(a2 + 104);
  if ((v2 & 0x800) != 0)
  {
    goto LABEL_33;
  }

LABEL_17:
  if ((v2 & 0x1000) != 0)
  {
LABEL_18:
    result[5].__r_.__value_.__r.__words[0] = *(a2 + 120);
  }

LABEL_19:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_20:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15B8F84(uint64_t a1)
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

void sub_15B9050(uint64_t a1)
{
  sub_15B8F84(a1);

  operator delete();
}

uint64_t sub_15B9088(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    if ((v1 & 1) == 0)
    {
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
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

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
  }

LABEL_17:
  if ((v1 & 0x78) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15B9150(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v43 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v43, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v43 + 1);
    v8 = **v43;
    if (**v43 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v43, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v43 + 2);
      }
    }

    *v43 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 == 6)
      {
        if (v8 != 48)
        {
          goto LABEL_52;
        }

        v5 |= 0x40u;
        v27 = v7 + 1;
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = v7 + 2;
LABEL_46:
          *v43 = v27;
          *(a1 + 64) = v26;
          goto LABEL_60;
        }

        v35 = sub_19587DC(v7, v26);
        *v43 = v35;
        *(a1 + 64) = v36;
        if (!v35)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v11 != 7 || v8 != 56)
        {
          goto LABEL_52;
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
          *v43 = v20;
          *(a1 + 60) = v19;
          goto LABEL_60;
        }

        v39 = sub_19587DC(v7, v19);
        *v43 = v39;
        *(a1 + 60) = v40;
        if (!v39)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v25 = *(a1 + 8);
          v23 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v23 = *v23;
          }

          v24 = (a1 + 40);
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_52;
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
        *v43 = v13;
        *(a1 + 48) = v12;
        goto LABEL_60;
      }

      v37 = sub_19587DC(v7, v12);
      *v43 = v37;
      *(a1 + 48) = v38;
      if (!v37)
      {
        goto LABEL_73;
      }
    }

LABEL_60:
    if (sub_195ADC0(a3, v43, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_52;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v24 = (a1 + 24);
LABEL_51:
    v30 = sub_194DB04(v24, v23);
    v31 = sub_1958890(v30, *v43, a3);
LABEL_59:
    *v43 = v31;
    if (!v31)
    {
      goto LABEL_73;
    }

    goto LABEL_60;
  }

  if (v11 != 2)
  {
    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_52;
    }

    v5 |= 0x10u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      *v43 = v17;
      *(a1 + 56) = v16;
      goto LABEL_60;
    }

    v41 = sub_19587DC(v7, v16);
    *v43 = v41;
    *(a1 + 56) = v42;
    if (!v41)
    {
      goto LABEL_73;
    }

    goto LABEL_60;
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 2u;
    v29 = *(a1 + 8);
    v23 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v23 = *v23;
    }

    v24 = (a1 + 32);
    goto LABEL_51;
  }

LABEL_52:
  if (v8)
  {
    v32 = (v8 & 7) == 4;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    v33 = *(a1 + 8);
    if (v33)
    {
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v34 = sub_11F1920((a1 + 8));
      v7 = *v43;
    }

    v31 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_59;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_73:
  *v43 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v43;
}

char *sub_15B94C8(uint64_t a1, char *__dst, unint64_t *a3)
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
    v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
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

  v8 = *(a1 + 56);
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
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v9 >> 7);
        *v7++ = v9 >> 7;
        v10 = v9 >> 14;
        v9 >>= 7;
      }

      while (v10);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_14:
  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 48);
    *v7 = 40;
    v7[1] = v12;
    if (v12 > 0x7F)
    {
      v7[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v7[2] = v12 >> 7;
      v11 = v7 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v14) = v7[2];
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
      v11 = v7 + 2;
    }
  }

  else
  {
    v11 = v7;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 64);
    *v11 = 48;
    v11[1] = v17;
    if (v17 > 0x7F)
    {
      v11[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v11[2] = v17 >> 7;
      v16 = v11 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v16 - 1) = v11 | 0x80;
          v11 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v11 + 2;
    }
  }

  else
  {
    v16 = v11;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 60);
    *v16 = 56;
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v16[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v16[2] = v21 >> 7;
      v20 = v16 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v23) = v16[2];
        do
        {
          *(v20 - 1) = v23 | 0x80;
          v23 = v22 >> 7;
          *v20++ = v22 >> 7;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v20 = v16 + 2;
    }
  }

  else
  {
    v20 = v16;
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v20;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  if ((*a3 - v20) >= v28)
  {
    v30 = v28;
    memcpy(v20, v29, v28);
    v20 += v30;
    return v20;
  }

  return sub_1957130(a3, v29, v28, v20);
}

uint64_t sub_15B97F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7F) == 0)
  {
    v2 = 0;
    goto LABEL_18;
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
  if ((v1 & 4) != 0)
  {
    v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_24:
  v14 = *(a1 + 56);
  if (v14 < 0)
  {
    v15 = 11;
  }

  else
  {
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v15;
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_28:
  v16 = *(a1 + 60);
  if (v16 < 0)
  {
    v17 = 11;
  }

  else
  {
    v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v17;
  if ((v1 & 0x40) != 0)
  {
LABEL_17:
    v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_18:
  v9 = *(a1 + 8);
  if (v9)
  {
    v18 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v2 += v19;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_15B99CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) != 0)
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
          goto LABEL_5;
        }

        goto LABEL_21;
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
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_21:
    v12 = *(a2 + 40);
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 40), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        *(a1 + 16) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_10;
    }

LABEL_26:
    *(a1 + 60) = *(a2 + 60);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_15B9B44(void *a1)
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

  sub_15B9BC8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_15B9BC8(void *result)
{
  if (result != &off_2778B18)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_15B6B04(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_15B8F84(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_15B7D58(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_1545F68(result);

      operator delete();
    }
  }

  return result;
}

void sub_15B9C94(void *a1)
{
  sub_15B9B44(a1);

  operator delete();
}

uint64_t sub_15B9CCC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
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

LABEL_12:
    result = sub_15B9088(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = sub_15B6ACC(*(result + 24));
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  result = sub_15B7E04(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_14EB434(*(v1 + 48));
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