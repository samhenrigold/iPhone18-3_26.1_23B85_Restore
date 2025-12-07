char *sub_1399A9C(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_191BA60(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2201310(a3, v16, v13);
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

char *sub_1399C2C(uint64_t a1, char *__dst, unint64_t *a3)
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
      v9 = *(v8 + 44);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_1917694(v8, v10, a3);
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

uint64_t sub_1399D6C(uint64_t a1)
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
      v7 = sub_1917844(v6);
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

BOOL sub_1399E14(uint64_t a1)
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
    v5 = sub_17A8EF8(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1399E7C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26DA390;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_1399FF8(uint64_t a1)
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

  if (a1 != &off_276DA68)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1399330(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1399968(v7);
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

void sub_139A0E4(uint64_t a1)
{
  sub_1399FF8(a1);

  operator delete();
}

unsigned __int8 *sub_139A11C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
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

    goto LABEL_16;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = sub_13993E8(*(result + 4));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_1399A20(*(v1 + 40));
  }

LABEL_6:
  if ((v2 & 0x78) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
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

uint64_t sub_139A1D4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v42, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v42 + 1);
    v8 = **v42;
    if (**v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v42 + 2);
      }
    }

    *v42 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_59;
        }

        *(a1 + 16) |= 1u;
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v25 = sub_194DB04((a1 + 24), v24);
        v19 = sub_1958890(v25, *v42, a3);
        goto LABEL_66;
      }

      if (v11 != 2)
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_59;
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

          v16 = sub_13AE860(v18);
          *(a1 + 32) = v16;
          v7 = *v42;
        }

        v19 = sub_2203560(a3, v16, v7);
LABEL_66:
        *v42 = v19;
        if (!v19)
        {
          goto LABEL_82;
        }

        goto LABEL_67;
      }

      if (v8 != 16)
      {
        goto LABEL_59;
      }

      v33 = v7 + 1;
      v32 = *v7;
      if (v32 < 0)
      {
        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          *v42 = sub_19587DC(v7, v32);
          if (!*v42)
          {
            goto LABEL_82;
          }

          goto LABEL_57;
        }

        v33 = v7 + 2;
      }

      *v42 = v33;
LABEL_57:
      if (v32 > 2)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 48) = v32;
      }

      goto LABEL_67;
    }

    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_59;
      }

      *(a1 + 16) |= 4u;
      v26 = *(a1 + 40);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_13AE900(v28);
        *(a1 + 40) = v26;
        v7 = *v42;
      }

      v19 = sub_22035F0(a3, v26, v7);
      goto LABEL_66;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_59;
    }

    v5 |= 0x10u;
    v12 = v7 + 1;
    v13 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v14 = *v12;
    v13 = v13 + (v14 << 7) - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v12 = v7 + 2;
LABEL_15:
      *v42 = v12;
      *(a1 + 52) = v13;
      goto LABEL_67;
    }

    v40 = sub_1958770(v7, v13);
    *v42 = v40;
    *(a1 + 52) = v41;
    if (!v40)
    {
      goto LABEL_82;
    }

LABEL_67:
    if (sub_195ADC0(a3, v42, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_59;
    }

    v5 |= 0x20u;
    v29 = v7 + 1;
    v30 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    v31 = *v29;
    v30 = v30 + (v31 << 7) - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v29 = v7 + 2;
LABEL_51:
      *v42 = v29;
      *(a1 + 56) = v30;
      goto LABEL_67;
    }

    v38 = sub_1958770(v7, v30);
    *v42 = v38;
    *(a1 + 56) = v39;
    if (!v38)
    {
      goto LABEL_82;
    }

    goto LABEL_67;
  }

  if (v11 == 7 && v8 == 56)
  {
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if (v22 < 0)
    {
      *v42 = sub_19587DC(v7, v20);
      if (!*v42)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v21 = v7 + 2;
LABEL_34:
      *v42 = v21;
    }

    if (v20 > 8)
    {
      sub_13137F8();
    }

    else
    {
      *(a1 + 16) |= 0x40u;
      *(a1 + 60) = v20;
    }

    goto LABEL_67;
  }

LABEL_59:
  if (v8)
  {
    v35 = (v8 & 7) == 4;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = *v42;
    }

    v19 = sub_1952690(v8, v37, v7, a3);
    goto LABEL_66;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_82:
  *v42 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v42;
}

char *sub_139A5BC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 48);
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

  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 40);
    *v7 = 34;
    v17 = *(v16 + 40);
    v7[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v7 + 1);
    }

    else
    {
      v18 = v7 + 2;
    }

    v7 = sub_1399C2C(v16, v18, a3);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 32);
  *v7 = 26;
  v14 = *(v13 + 40);
  v7[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v7 + 1);
  }

  else
  {
    v15 = v7 + 2;
  }

  v7 = sub_13995F4(v13, v15, a3);
  if ((v6 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((v6 & 0x10) == 0)
  {
LABEL_15:
    v12 = v7;
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v19 = *(a1 + 52);
  *v7 = 40;
  v7[1] = v19;
  if (v19 > 0x7F)
  {
    v7[1] = v19 | 0x80;
    v20 = v19 >> 7;
    v7[2] = v19 >> 7;
    v12 = v7 + 3;
    if (v19 >= 0x4000)
    {
      LOBYTE(v7) = v7[2];
      do
      {
        *(v12 - 1) = v7 | 0x80;
        LODWORD(v7) = v20 >> 7;
        *v12++ = v20 >> 7;
        v21 = v20 >> 14;
        v20 >>= 7;
      }

      while (v21);
    }
  }

  else
  {
    v12 = v7 + 2;
  }

LABEL_35:
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v23 = *(a1 + 56);
    *v12 = 48;
    v12[1] = v23;
    if (v23 > 0x7F)
    {
      v12[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v12[2] = v23 >> 7;
      v22 = v12 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v22 - 1) = v12 | 0x80;
          LODWORD(v12) = v24 >> 7;
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v12 + 2;
    }
  }

  else
  {
    v22 = v12;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 60);
    *v22 = 56;
    v22[1] = v27;
    if (v27 > 0x7F)
    {
      v22[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[2] = v27 >> 7;
      v26 = v22 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v22[2];
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
      v26 = v22 + 2;
    }
  }

  else
  {
    v26 = v22;
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v26;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if ((*a3 - v26) >= v34)
  {
    v36 = v34;
    memcpy(v26, v35, v34);
    v26 += v36;
    return v26;
  }

  return sub_1957130(a3, v35, v34, v26);
}

uint64_t sub_139A96C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_27;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_1399734(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = sub_1399D6C(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 48);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v10;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v3 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_22:
  v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v11 = *(a1 + 60);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v12;
LABEL_27:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v3 += v16;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_139AB4C(uint64_t a1, uint64_t a2)
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

        goto LABEL_26;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

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

      v9 = sub_13AE860(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276DA08;
    }

    sub_13978A4(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }

LABEL_26:
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_13AE900(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_276DA38;
    }

    sub_13978A4(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_35:
    *(a1 + 52) = *(a2 + 52);
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
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_10;
    }

LABEL_36:
    *(a1 + 56) = *(a2 + 56);
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

void sub_139ACDC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a2 != a1)
  {
    sub_139A11C(a1);

    sub_139AB4C(a1, a2);
  }
}

BOOL sub_139AD28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    while (v4 >= 1)
    {
      v5 = v4 - 1;
      v6 = sub_17A8EF8(*(*(v3 + 32) + 8 * v4));
      v4 = v5;
      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 24);
  do
  {
    v7 = v9 < 1;
    if (v9 < 1)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = sub_17A8EF8(*(*(v8 + 32) + 8 * v9));
    v9 = v10;
  }

  while ((v11 & 1) != 0);
  return v7;
}

uint64_t sub_139ADD8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_26DA410;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13B60C4(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
    v9 = *(a1 + 24) + v6;
    *(a1 + 24) = v9;
    v10 = *(a1 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 40) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_139AEB8(_Unwind_Exception *a1)
{
  sub_13B5A84(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_139AF00(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B5A84(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_139AF80(void *a1)
{
  sub_139AF00(a1);

  operator delete();
}

unsigned __int8 *sub_139AFB8(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_139A11C(v4);
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

char *sub_139B034(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_13AE9A0(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2203680(a3, v16, v13);
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

char *sub_139B1C4(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_139A5BC(v8, v10, a3);
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

uint64_t sub_139B304(uint64_t a1)
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
      v7 = sub_139A96C(v6);
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

void sub_139B3AC(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_13B60C4((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

BOOL sub_139B468(uint64_t a1)
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
    v5 = sub_139AD28(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_139B4D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26DA490;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  *(a1 + 32) = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 32), (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 16);
  }

  *(a1 + 40) = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_139B5E4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_139B614(uint64_t a1)
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

void sub_139B6E0(uint64_t a1)
{
  sub_139B614(a1);

  operator delete();
}

uint64_t sub_139B718(uint64_t a1)
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

uint64_t sub_139B7DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v17 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v17 = *v17;
        }

        v18 = (a1 + 24);
LABEL_41:
        v24 = sub_194DB04(v18, v17);
        v25 = sub_1958890(v24, *v41, a3);
        goto LABEL_61;
      }

      if (v11 != 2)
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_41;
      }

      if (v8 != 16)
      {
        goto LABEL_54;
      }

      v30 = v7 + 1;
      v29 = *v7;
      if (v29 < 0)
      {
        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          *v41 = sub_19587DC(v7, v29);
          if (!*v41)
          {
            goto LABEL_76;
          }

          goto LABEL_52;
        }

        v30 = v7 + 2;
      }

      *v41 = v30;
LABEL_52:
      if (v29 > 2)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 48) = v29;
      }

      goto LABEL_62;
    }

    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_54;
      }

      v5 |= 0x20u;
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
        *v41 = v27;
        *(a1 + 56) = v26 != 0;
        goto LABEL_62;
      }

      v35 = sub_19587DC(v7, v26);
      *v41 = v35;
      *(a1 + 56) = v36 != 0;
      if (!v35)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_54;
      }

      v5 |= 0x40u;
      v19 = v7 + 1;
      v20 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v21 = *v19;
      v20 = v20 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_32:
        *v41 = v19;
        *(a1 + 60) = v20;
        goto LABEL_62;
      }

      v39 = sub_1958770(v7, v20);
      *v41 = v39;
      *(a1 + 60) = v40;
      if (!v39)
      {
        goto LABEL_76;
      }
    }

LABEL_62:
    if (sub_195ADC0(a3, v41, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 4)
  {
    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_54;
    }

    v5 |= 0x10u;
    v12 = v7 + 1;
    v13 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v14 = *v12;
    v13 = v13 + (v14 << 7) - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v12 = v7 + 2;
LABEL_15:
      *v41 = v12;
      *(a1 + 52) = v13;
      goto LABEL_62;
    }

    v37 = sub_1958770(v7, v13);
    *v41 = v37;
    *(a1 + 52) = v38;
    if (!v37)
    {
      goto LABEL_76;
    }

    goto LABEL_62;
  }

  if (v8 == 34)
  {
    *(a1 + 16) |= 4u;
    v23 = *(a1 + 8);
    v17 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v17 = *v17;
    }

    v18 = (a1 + 40);
    goto LABEL_41;
  }

LABEL_54:
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
      v7 = *v41;
    }

    v25 = sub_1952690(v8, v34, v7, a3);
LABEL_61:
    *v41 = v25;
    if (!v25)
    {
      goto LABEL_76;
    }

    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_76:
  *v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v41;
}

char *sub_139BB84(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 48);
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
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v7 = sub_128AEEC(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v7 = sub_128AEEC(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if ((v6 & 0x10) == 0)
  {
LABEL_15:
    v11 = v7;
    goto LABEL_25;
  }

LABEL_18:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v12 = *(a1 + 52);
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

LABEL_25:
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 56);
    *v11 = 48;
    v11[1] = v16;
    v11 += 2;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v18 = *(a1 + 60);
    *v11 = 56;
    v11[1] = v18;
    if (v18 > 0x7F)
    {
      v11[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v11[2] = v18 >> 7;
      v17 = v11 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v11[2];
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
      v17 = v11 + 2;
    }
  }

  else
  {
    v17 = v11;
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

uint64_t sub_139BE54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7F) == 0)
  {
    v3 = 0;
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

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  if ((v1 & 4) != 0)
  {
    v12 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a1 + 48);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v16;
  if ((v1 & 0x10) != 0)
  {
LABEL_15:
    v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v3 = v2 + ((v1 >> 4) & 2);
  if ((v1 & 0x40) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v10 = *(a1 + 8);
  if (v10)
  {
    v17 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v3 += v18;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_139C008(uint64_t a1, uint64_t a2)
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
    *(a1 + 52) = *(a2 + 52);
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
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_10;
    }

LABEL_26:
    *(a1 + 56) = *(a2 + 56);
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

uint64_t sub_139C180(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26DA510;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  v8 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v8;
  return a1;
}

void sub_139C23C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_139C26C(uint64_t a1)
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

void sub_139C30C(uint64_t a1)
{
  sub_139C26C(a1);

  operator delete();
}

uint64_t sub_139C344(uint64_t a1)
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

  if ((v1 & 0x7E) != 0)
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

uint64_t sub_139C398(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v48 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v48, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v48 + 1);
    v8 = **v48;
    if (**v48 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v48, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v48 + 2);
      }
    }

    *v48 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      if (v8 >> 3 > 5)
      {
        if (v11 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_55;
          }

          v5 |= 0x20u;
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
            *v48 = v29;
            *(a1 + 45) = v28 != 0;
            goto LABEL_63;
          }

          v40 = sub_19587DC(v7, v28);
          *v48 = v40;
          *(a1 + 45) = v41 != 0;
          if (!v40)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v11 != 7 || v8 != 56)
          {
            goto LABEL_55;
          }

          v5 |= 0x40u;
          v19 = v7 + 1;
          v20 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          v21 = *v19;
          v20 = v20 + (v21 << 7) - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v19 = v7 + 2;
LABEL_33:
            *v48 = v19;
            *(a1 + 48) = v20;
            goto LABEL_63;
          }

          v44 = sub_1958770(v7, v20);
          *v48 = v44;
          *(a1 + 48) = v45;
          if (!v44)
          {
            goto LABEL_81;
          }
        }
      }

      else if (v11 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_55;
        }

        v5 |= 0x10u;
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
          *v48 = v26;
          *(a1 + 44) = v25 != 0;
          goto LABEL_63;
        }

        v38 = sub_19587DC(v7, v25);
        *v48 = v38;
        *(a1 + 44) = v39 != 0;
        if (!v38)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v11 != 5 || v8 != 40)
        {
          goto LABEL_55;
        }

        v5 |= 8u;
        v12 = v7 + 1;
        v13 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v14 = *v12;
        v13 = v13 + (v14 << 7) - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_15:
          *v48 = v12;
          *(a1 + 40) = v13;
          goto LABEL_63;
        }

        v42 = sub_1958770(v7, v13);
        *v48 = v42;
        *(a1 + 40) = v43;
        if (!v42)
        {
          goto LABEL_81;
        }
      }

      goto LABEL_63;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_55;
      }

      v23 = v7 + 1;
      v22 = *v7;
      if (v22 < 0)
      {
        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          *v48 = sub_19587DC(v7, v22);
          if (!*v48)
          {
            goto LABEL_81;
          }

          goto LABEL_39;
        }

        v23 = v7 + 2;
      }

      *v48 = v23;
LABEL_39:
      if (v22 > 3)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v22;
      }

      goto LABEL_63;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_55;
    }

    v5 |= 4u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_26:
      *v48 = v16;
      *(a1 + 36) = v17;
      goto LABEL_63;
    }

    v46 = sub_1958770(v7, v17);
    *v48 = v46;
    *(a1 + 36) = v47;
    if (!v46)
    {
      goto LABEL_81;
    }

LABEL_63:
    if (sub_195ADC0(a3, v48, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v31 = *(a1 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    v33 = sub_194DB04((a1 + 24), v32);
    v34 = sub_1958890(v33, *v48, a3);
LABEL_62:
    *v48 = v34;
    if (!v34)
    {
      goto LABEL_81;
    }

    goto LABEL_63;
  }

LABEL_55:
  if (v8)
  {
    v35 = (v8 & 7) == 4;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = *v48;
    }

    v34 = sub_1952690(v8, v37, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_81:
  *v48 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v48;
}

char *sub_139C7A0(uint64_t a1, char *__dst, unint64_t *a3)
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

    v12 = *(a1 + 36);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 44);
    *v11 = 32;
    v11[1] = v16;
    v11 += 2;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v18 = *(a1 + 40);
    *v11 = 40;
    v11[1] = v18;
    if (v18 > 0x7F)
    {
      v11[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v11[2] = v18 >> 7;
      v17 = v11 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v11[2];
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
      v17 = v11 + 2;
    }
  }

  else
  {
    v17 = v11;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 45);
    *v17 = 48;
    v17[1] = v22;
    v17 += 2;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v24 = *(a1 + 48);
    *v17 = 56;
    v17[1] = v24;
    if (v24 > 0x7F)
    {
      v17[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v17[2] = v24 >> 7;
      v23 = v17 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v23 - 1) = v17 | 0x80;
          LODWORD(v17) = v25 >> 7;
          *v23++ = v25 >> 7;
          v26 = v25 >> 14;
          v25 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v23 = v17 + 2;
    }
  }

  else
  {
    v23 = v17;
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v23;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if ((*a3 - v23) >= v30)
  {
    v32 = v30;
    memcpy(v23, v31, v30);
    v23 += v32;
    return v23;
  }

  return sub_1957130(a3, v31, v30, v23);
}

uint64_t sub_139CAE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_18;
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

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32);
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 11;
    }

    v2 += v9;
  }

LABEL_13:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_15:
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v3 = v2 + ((v1 >> 4) & 2) + ((v1 >> 3) & 2);
  if ((v1 & 0x40) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

void sub_139CC40(uint64_t a1, uint64_t a2)
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

        goto LABEL_19;
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
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 36) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

LABEL_20:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 44) = *(a2 + 44);
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
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_10;
    }

LABEL_22:
    *(a1 + 45) = *(a2 + 45);
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

uint64_t sub_139CD68(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26DA590;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_139CEB4(uint64_t a1)
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

  if (a1 != &off_276DB50)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_139B614(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_139C26C(v6);
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

void sub_139CF84(uint64_t a1)
{
  sub_139CEB4(a1);

  operator delete();
}

uint64_t sub_139CFBC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_139B718(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_139C344(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_139D030(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 32);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_13AEB54(v21);
        *(a1 + 32) = v19;
        v6 = v26;
      }

      v15 = sub_22037A0(a3, v19, v6);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 1 && v7 == 8)
        {
          v23 = v6 + 1;
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v26 = sub_19587DC(v6, v22);
            if (!v26)
            {
              return 0;
            }
          }

          else
          {
            v23 = v6 + 2;
LABEL_37:
            v26 = v23;
          }

          if (v22 > 2)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v22;
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
        goto LABEL_32;
      }

      if (v7 != 18)
      {
        goto LABEL_13;
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

        v16 = sub_13AEAC8(v18);
        *(a1 + 24) = v16;
        v6 = v26;
      }

      v15 = sub_2203710(a3, v16, v6);
    }

LABEL_32:
    v26 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v26;
}

char *sub_139D254(uint64_t a1, char *__dst, unint64_t *a3)
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

    v6 = sub_139BB84(v11, v13, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 32);
    *v6 = 26;
    v15 = *(v14 + 20);
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v6 + 1);
    }

    else
    {
      v16 = v6 + 2;
    }

    v6 = sub_139C7A0(v14, v16, a3);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v20)
  {
    v22 = v20;
    memcpy(v6, v21, v20);
    v6 += v22;
    return v6;
  }

  return sub_1957130(a3, v21, v20, v6);
}

uint64_t sub_139D450(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_139BE54(*(a1 + 24));
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
    v5 = sub_139CAE4(*(a1 + 32));
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

void sub_139D554(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_13AEAC8(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276DAD8;
      }

      sub_139C008(v6, v9);
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

      v10 = sub_13AEB54(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_276DB18;
    }

    sub_139CC40(v10, v13);
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

void sub_139D67C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_139CFBC(a1);

    sub_139D554(a1, a2);
  }
}

uint64_t sub_139D6E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26DA610;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_139D81C(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276DB80)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_139CEB4(v6);
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

void sub_139D8E8(uint64_t a1)
{
  sub_139D81C(a1);

  operator delete();
}

uint64_t sub_139D920(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_139CFBC(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0xFC) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_139D9C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v51, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v51 + 1);
    v8 = **v51;
    if (**v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v51 + 2);
      }
    }

    *v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 2u;
        v33 = *(a1 + 32);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_13AEBDC(v35);
          *(a1 + 32) = v33;
          v7 = *v51;
        }

        v28 = sub_2203830(a3, v33, v7);
LABEL_72:
        *v51 = v28;
        if (!v28)
        {
          goto LABEL_92;
        }

        goto LABEL_73;
      }

      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_65;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
          goto LABEL_33;
        }

        *v51 = sub_19587DC(v7, v19);
        if (!*v51)
        {
          goto LABEL_92;
        }
      }

      else
      {
LABEL_33:
        *v51 = v20;
      }

      if (v19 > 2)
      {
        sub_12E8500();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 40) = v19;
      }

      goto LABEL_73;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_65;
      }

      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v27 = sub_194DB04((a1 + 24), v26);
      v28 = sub_1958890(v27, *v51, a3);
      goto LABEL_72;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_65;
    }

    v5 |= 0x10u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_18:
      *v51 = v14;
      *(a1 + 48) = v13 != 0;
      goto LABEL_73;
    }

    v45 = sub_19587DC(v7, v13);
    *v51 = v45;
    *(a1 + 48) = v46 != 0;
    if (!v45)
    {
      goto LABEL_92;
    }

LABEL_73:
    if (sub_195ADC0(a3, v51, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 6)
  {
    if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_65;
      }

      v5 |= 0x20u;
      v37 = v7 + 1;
      v36 = *v7;
      if ((v36 & 0x8000000000000000) == 0)
      {
        goto LABEL_64;
      }

      v38 = *v37;
      v36 = (v38 << 7) + v36 - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v37 = v7 + 2;
LABEL_64:
        *v51 = v37;
        *(a1 + 49) = v36 != 0;
        goto LABEL_73;
      }

      v43 = sub_19587DC(v7, v36);
      *v51 = v43;
      *(a1 + 49) = v44 != 0;
      if (!v43)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v11 != 8 || v8 != 64)
      {
        goto LABEL_65;
      }

      v5 |= 0x40u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_42:
        *v51 = v23;
        *(a1 + 50) = v22 != 0;
        goto LABEL_73;
      }

      v49 = sub_19587DC(v7, v22);
      *v51 = v49;
      *(a1 + 50) = v50 != 0;
      if (!v49)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_73;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_65;
    }

    v5 |= 0x80u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_26:
      *v51 = v16;
      *(a1 + 52) = v17;
      goto LABEL_73;
    }

    v47 = sub_1958770(v7, v17);
    *v51 = v47;
    *(a1 + 52) = v48;
    if (!v47)
    {
      goto LABEL_92;
    }

    goto LABEL_73;
  }

  if (v8 == 40)
  {
    v29 = v7 + 1;
    v30 = *v7;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v31 = *v29;
    v32 = (v31 << 7) + v30;
    LODWORD(v30) = v32 - 128;
    if (v31 < 0)
    {
      *v51 = sub_19587DC(v7, (v32 - 128));
      if (!*v51)
      {
        goto LABEL_92;
      }

      LODWORD(v30) = v42;
    }

    else
    {
      v29 = v7 + 2;
LABEL_51:
      *v51 = v29;
    }

    if (sub_147803C(v30))
    {
      *(a1 + 16) |= 8u;
      *(a1 + 44) = v30;
    }

    else
    {
      sub_12E85B8();
    }

    goto LABEL_73;
  }

LABEL_65:
  if (v8)
  {
    v39 = (v8 & 7) == 4;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v40 = *(a1 + 8);
    if (v40)
    {
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v41 = sub_11F1920((a1 + 8));
      v7 = *v51;
    }

    v28 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_72;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_92:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_139DE60(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(a1 + 32);
      *v4 = 26;
      v10 = *(v9 + 20);
      v4[1] = v10;
      if (v10 > 0x7F)
      {
        v11 = sub_19575D0(v10, v4 + 1);
      }

      else
      {
        v11 = v4 + 2;
      }

      v4 = sub_139D254(v9, v11, a3);
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 48);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 4) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_23;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 40);
  *v4 = 32;
  v4[1] = v12;
  if (v12 > 0x7F)
  {
    v4[1] = v12 | 0x80;
    v13 = v12 >> 7;
    v4[2] = v12 >> 7;
    v7 = v4 + 3;
    if (v12 >= 0x4000)
    {
      LOBYTE(v14) = v4[2];
      do
      {
        *(v7 - 1) = v14 | 0x80;
        v14 = v13 >> 7;
        *v7++ = v13 >> 7;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_23:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 44);
    *v7 = 40;
    v7[1] = v17;
    if (v17 > 0x7F)
    {
      v7[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v7[2] = v17 >> 7;
      v16 = v7 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v7[2];
        do
        {
          *(v16 - 1) = v19 | 0x80;
          v19 = v18 >> 7;
          *v16++ = v18 >> 7;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v16 = v7 + 2;
    }
  }

  else
  {
    v16 = v7;
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 52);
    *v16 = 48;
    v16[1] = v22;
    if (v22 > 0x7F)
    {
      v16[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[2] = v22 >> 7;
      v21 = v16 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v16) = v16[2];
        do
        {
          *(v21 - 1) = v16 | 0x80;
          LODWORD(v16) = v23 >> 7;
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v16 + 2;
    }
  }

  else
  {
    v21 = v16;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v25 = *(a1 + 49);
    *v21 = 56;
    v21[1] = v25;
    v21 += 2;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 50);
    *v21 = 64;
    v21[1] = v26;
    v21 += 2;
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v21;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if ((*a3 - v21) >= v30)
  {
    v32 = v30;
    memcpy(v21, v31, v30);
    v21 += v32;
    return v21;
  }

  return sub_1957130(a3, v31, v30, v21);
}

uint64_t sub_139E1D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = sub_139D450(*(a1 + 32));
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v13 = *(a1 + 40);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v14;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v9 = *(a1 + 44);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    v3 += v11;
  }

LABEL_16:
  result = v3 + ((v2 >> 4) & 2) + ((v2 >> 3) & 2) + ((v2 >> 5) & 2);
  if ((v2 & 0x80) != 0)
  {
    result += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v12 = *(a1 + 8);
  if (v12)
  {
    v15 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_139E36C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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

        goto LABEL_27;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

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

      v9 = sub_13AEBDC(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276DB50;
    }

    sub_139D554(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(a1 + 49) = *(a2 + 49);
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
      *(a1 + 52) = *(a2 + 52);
      goto LABEL_11;
    }

LABEL_31:
    *(a1 + 50) = *(a2 + 50);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_139E4E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26DA690;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  *(a1 + 32) = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 32), (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 16);
  }

  *(a1 + 40) = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_139E5F8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_139E628(uint64_t a1)
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

void sub_139E6F4(uint64_t a1)
{
  sub_139E628(a1);

  operator delete();
}

uint64_t sub_139E72C(uint64_t a1)
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
  if ((v1 & 0x38) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
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

uint64_t sub_139E7F0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_44;
        }

        *(a1 + 16) |= 2u;
        v22 = *(a1 + 8);
        v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v20 = *v20;
        }

        v21 = (a1 + 32);
        goto LABEL_43;
      }

      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_44;
        }

        *(a1 + 16) |= 4u;
        v23 = *(a1 + 8);
        v20 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v20 = *v20;
        }

        v21 = (a1 + 40);
        goto LABEL_43;
      }

      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_44;
      }

      v17 = v7 + 1;
      v16 = *v7;
      if (v16 < 0)
      {
        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          *v31 = sub_19587DC(v7, v16);
          if (!*v31)
          {
            goto LABEL_62;
          }

          goto LABEL_27;
        }

        v17 = v7 + 2;
      }

      *v31 = v17;
LABEL_27:
      if (v16 > 1)
      {
        sub_12E84C8();
      }

      else
      {
        *(a1 + 16) |= 0x20u;
        *(a1 + 60) = v16;
      }

      goto LABEL_52;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_44;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = (a1 + 24);
LABEL_43:
      v24 = sub_194DB04(v21, v20);
      v25 = sub_1958890(v24, *v31, a3);
      goto LABEL_51;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_44;
    }

    v5 |= 0x10u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_18:
      *v31 = v14;
      *(a1 + 56) = v13 != 0;
      goto LABEL_52;
    }

    v29 = sub_19587DC(v7, v13);
    *v31 = v29;
    *(a1 + 56) = v30 != 0;
    if (!v29)
    {
      goto LABEL_62;
    }

LABEL_52:
    if (sub_195ADC0(a3, v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 17)
  {
    v5 |= 8u;
    *(a1 + 48) = *v7;
    *v31 = v7 + 8;
    goto LABEL_52;
  }

LABEL_44:
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
      v7 = *v31;
    }

    v25 = sub_1952690(v8, v28, v7, a3);
LABEL_51:
    *v31 = v25;
    if (!v25)
    {
      goto LABEL_62;
    }

    goto LABEL_52;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_62:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_139EAF0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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

  v8 = *(a1 + 48);
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 56);
  *v4 = 24;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    v4 = sub_128AEEC(a3, 5, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_15:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    v7 = v4;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 60);
  *v4 = 48;
  v4[1] = v10;
  if (v10 > 0x7F)
  {
    v4[1] = v10 | 0x80;
    v11 = v10 >> 7;
    v4[2] = v10 >> 7;
    v7 = v4 + 3;
    if (v10 >= 0x4000)
    {
      LOBYTE(v12) = v4[2];
      do
      {
        *(v7 - 1) = v12 | 0x80;
        v12 = v11 >> 7;
        *v7++ = v11 >> 7;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_24:
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v17)
  {
    v19 = v17;
    memcpy(v7, v18, v17);
    v7 += v19;
    return v7;
  }

  return sub_1957130(a3, v18, v17, v7);
}

uint64_t sub_139ECF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_23;
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
  if ((v1 & 4) != 0)
  {
    v10 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 9;
  }

  v3 = v2 + ((v1 >> 3) & 2);
  if ((v1 & 0x20) != 0)
  {
    v13 = *(a1 + 60);
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 11;
    }

    v3 += v15;
  }

LABEL_23:
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

void sub_139EE5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
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

        goto LABEL_20;
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

      goto LABEL_23;
    }

LABEL_20:
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

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 16) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_9;
    }

LABEL_24:
    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_139EFC4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26DA710;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  return a1;
}

uint64_t sub_139F10C(uint64_t a1)
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

  if (a1 != &off_276DBF8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_139E628(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_139E628(v6);
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

void sub_139F1DC(uint64_t a1)
{
  sub_139F10C(a1);

  operator delete();
}

uint64_t sub_139F214(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_139E72C(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_139E72C(*(v1 + 32));
    }
  }

  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
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

char *sub_139F294(uint64_t a1, char *a2, int32x2_t *a3)
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
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v15 = *(a1 + 24);
          if (!v15)
          {
            v20 = *(a1 + 8);
            v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
            if (v20)
            {
              v21 = *v21;
            }

            v15 = sub_13AECE4(v21);
            *(a1 + 24) = v15;
LABEL_33:
            v7 = v26;
          }

LABEL_34:
          v22 = sub_22038C0(a3, v15, v7);
          goto LABEL_42;
        }
      }

      else if (v11 == 2 && v8 == 18)
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

          v15 = sub_13AECE4(v17);
          *(a1 + 32) = v15;
          goto LABEL_33;
        }

        goto LABEL_34;
      }
    }

    else if (v11 == 3)
    {
      if (v8 == 25)
      {
        v18 = *v7;
        v12 = v7 + 8;
        v5 |= 4u;
        *(a1 + 40) = v18;
        goto LABEL_27;
      }
    }

    else if (v11 == 4)
    {
      if (v8 == 33)
      {
        v19 = *v7;
        v12 = v7 + 8;
        v5 |= 8u;
        *(a1 + 48) = v19;
        goto LABEL_27;
      }
    }

    else if (v11 == 5 && v8 == 41)
    {
      v13 = *v7;
      v12 = v7 + 8;
      v5 |= 0x10u;
      *(a1 + 56) = v13;
LABEL_27:
      v26 = v12;
      goto LABEL_43;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v7 = v26;
    }

    v22 = sub_1952690(v8, v25, v7, a3);
LABEL_42:
    v26 = v22;
    if (!v22)
    {
      goto LABEL_48;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_139F4CC(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_139EAF0(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
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

  v4 = sub_139EAF0(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 25;
  *(v4 + 1) = v13;
  v4 += 9;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 48);
  *v4 = 33;
  *(v4 + 1) = v14;
  v4 += 9;
  if ((v6 & 0x10) != 0)
  {
LABEL_25:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 56);
    *v4 = 41;
    *(v4 + 1) = v15;
    v4 += 9;
  }

LABEL_28:
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v19)
  {
    v21 = v19;
    memcpy(v4, v20, v19);
    v4 += v21;
    return v4;
  }

  return sub_1957130(a3, v20, v19, v4);
}

uint64_t sub_139F704(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = sub_139ECF8(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_139ECF8(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v7 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v7 += 9;
  }

  if ((v2 & 0x10) != 0)
  {
    result = v7 + 9;
  }

  else
  {
    result = v7;
  }

LABEL_15:
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    result += v10;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_139F7F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_13AECE4(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276DBB8;
      }

      sub_139EE5C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_29;
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

      v10 = sub_13AECE4(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_276DBB8;
    }

    sub_139EE5C(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_8;
    }

LABEL_30:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_139F94C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26DA790;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B6150((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_139FA3C(_Unwind_Exception *a1)
{
  sub_13B5B08(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_139FA80(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B5B08(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_139FB00(void *a1)
{
  sub_139FA80(a1);

  operator delete();
}

uint64_t sub_139FB38(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_139E72C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 48) = 0;
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

char *sub_139FBC8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v32 + 1;
    v8 = *v32;
    if (*v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v32 + 2;
      }
    }

    v32 = v7;
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
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_30:
      v32 = v19;
      *(a1 + 52) = v20;
      goto LABEL_39;
    }

    v30 = sub_1958770(v7, v20);
    v32 = v30;
    *(a1 + 52) = v31;
    if (!v30)
    {
      goto LABEL_48;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
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

    v5 |= 1u;
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
      v32 = v16;
      *(a1 + 48) = v17;
      goto LABEL_39;
    }

    v28 = sub_1958770(v7, v17);
    v32 = v28;
    *(a1 + 48) = v29;
    if (!v28)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v11 == 1 && v8 == 10)
  {
    v22 = v7 - 1;
    while (1)
    {
      v23 = v22 + 1;
      v32 = v22 + 1;
      v24 = *(a1 + 40);
      if (v24 && (v25 = *(a1 + 32), v25 < *v24))
      {
        *(a1 + 32) = v25 + 1;
        v26 = *&v24[2 * v25 + 2];
      }

      else
      {
        v27 = sub_13AECE4(*(a1 + 24));
        v26 = sub_19593CC(a1 + 24, v27);
        v23 = v32;
      }

      v22 = sub_22038C0(a3, v26, v23);
      v32 = v22;
      if (!v22)
      {
        goto LABEL_48;
      }

      if (*a3 <= v22 || *v22 != 10)
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
      v7 = v32;
    }

    v32 = sub_1952690(v8, v15, v7, a3);
    if (!v32)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_139FE40(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_139EAF0(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      __dst[1] = v13 | 0x80;
      v14 = v13 >> 7;
      __dst[2] = v13 >> 7;
      v12 = __dst + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v12 - 1) = __dst | 0x80;
          LODWORD(__dst) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = __dst + 2;
    }
  }

  else
  {
    v12 = __dst;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 52);
    *v12 = 24;
    v12[1] = v17;
    if (v17 > 0x7F)
    {
      v12[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[2] = v17 >> 7;
      v16 = v12 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v16 - 1) = v12 | 0x80;
          LODWORD(v12) = v18 >> 7;
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v12 + 2;
    }
  }

  else
  {
    v16 = v12;
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v16;
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

  if ((*a3 - v16) >= v23)
  {
    v25 = v23;
    memcpy(v16, v24, v23);
    v16 += v25;
    return v16;
  }

  return sub_1957130(a3, v24, v23, v16);
}

uint64_t sub_13A0088(uint64_t a1)
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
      v7 = sub_139ECF8(v6);
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
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

void sub_13A018C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_13B6150((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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

uint64_t sub_13A0290(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26DA810;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_13A0414(uint64_t a1)
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

  if (a1 != &off_276DC70)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_139F10C(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_139FA80(v7);
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

void sub_13A0500(uint64_t a1)
{
  sub_13A0414(a1);

  operator delete();
}

uint64_t sub_13A0538(uint64_t result)
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
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
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

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  result = sub_139F214(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_139FB38(*(v1 + 40));
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_13A05E8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v30, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v30 + 1);
    v7 = **v30;
    if (**v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v30 + 2);
      }
    }

    *v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_38;
        }

        *(a1 + 16) |= 2u;
        v22 = *(a1 + 32);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_13AED70(v24);
          v22 = v25;
          *(a1 + 32) = v25;
          v6 = *v30;
        }

        v15 = sub_2203950(a3, v22, v6);
      }

      else
      {
        if (v10 != 4 || v7 != 34)
        {
          goto LABEL_38;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 40);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_13AEDF0(v18);
          *(a1 + 40) = v16;
          v6 = *v30;
        }

        v15 = sub_22039E0(a3, v16, v6);
      }
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v20 = v6 + 1;
          v19 = *v6;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            *v30 = sub_19587DC(v6, v19);
            if (!*v30)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v20 = v6 + 2;
LABEL_29:
            *v30 = v20;
          }

          if (v19 > 2)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 48) = v19;
          }

          continue;
        }

LABEL_38:
        if (v7)
        {
          v26 = (v7 & 7) == 4;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v30;
          }

LABEL_54:
          *v30 = 0;
          return *v30;
        }

        v27 = *(a1 + 8);
        if (v27)
        {
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v28 = sub_11F1920((a1 + 8));
          v6 = *v30;
        }

        v15 = sub_1952690(v7, v28, v6, a3);
        goto LABEL_45;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = sub_194DB04((a1 + 24), v13);
      v15 = sub_1958890(v14, *v30, a3);
    }

LABEL_45:
    *v30 = v15;
    if (!v15)
    {
      goto LABEL_54;
    }
  }

  return *v30;
}

char *sub_13A0860(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v11 = *(a1 + 32);
  *v6 = 26;
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

  v6 = sub_139F4CC(v11, v13, a3);
  if ((v5 & 4) != 0)
  {
LABEL_21:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 40);
    *v6 = 34;
    v15 = *(v14 + 20);
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v6 + 1);
    }

    else
    {
      v16 = v6 + 2;
    }

    v6 = sub_139FE40(v14, v16, a3);
  }

LABEL_27:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v20)
  {
    v22 = v20;
    memcpy(v6, v21, v20);
    v6 += v22;
    return v6;
  }

  return sub_1957130(a3, v21, v20, v6);
}

uint64_t sub_13A0A88(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_139F704(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = sub_13A0088(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(a1 + 48);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v10;
LABEL_18:
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

void sub_13A0BD8(uint64_t a1, uint64_t a2)
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

        goto LABEL_23;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

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

      sub_13AED70(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276DBF8;
    }

    sub_139F7F4(v9, v12);
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

LABEL_23:
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_13AEDF0(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_276DC38;
    }

    sub_13A018C(v13, v16);
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

double sub_13A0D50(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26DA890;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = &qword_278E990;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_13A0D90(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26DA890;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_13A0F18(uint64_t a1)
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

  if (a1 != &off_276DCA8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_153BF18(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_139CEB4(v7);
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

void sub_13A1004(uint64_t a1)
{
  sub_13A0F18(a1);

  operator delete();
}

uint64_t sub_13A103C(uint64_t result)
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

    goto LABEL_16;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = sub_144E31C(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_139CFBC(*(v1 + 40));
  }

LABEL_6:
  if ((v2 & 0x78) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
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

uint64_t sub_13A10F4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v44, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v44 + 1);
    v8 = **v44;
    if (**v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v44 + 2);
      }
    }

    *v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_59;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v25 = sub_194DB04((a1 + 24), v24);
      v19 = sub_1958890(v25, *v44, a3);
      goto LABEL_66;
    }

    if (v11 != 2)
    {
      if (v11 != 3 || v8 != 26)
      {
        goto LABEL_59;
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

        v16 = sub_1551A70(v18);
        *(a1 + 32) = v16;
        v7 = *v44;
      }

      v19 = sub_22030E0(a3, v16, v7);
      goto LABEL_66;
    }

    if (v8 != 16)
    {
      goto LABEL_59;
    }

    v5 |= 8u;
    v34 = v7 + 1;
    v33 = *v7;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_58;
    }

    v35 = *v34;
    v33 = (v35 << 7) + v33 - 128;
    if ((v35 & 0x80000000) == 0)
    {
      v34 = v7 + 2;
LABEL_58:
      *v44 = v34;
      *(a1 + 48) = v33 != 0;
      goto LABEL_67;
    }

    v42 = sub_19587DC(v7, v33);
    *v44 = v42;
    *(a1 + 48) = v43 != 0;
    if (!v42)
    {
      goto LABEL_82;
    }

LABEL_67:
    if (sub_195ADC0(a3, v44, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 5)
  {
    if (v11 != 4)
    {
      if (v11 == 5 && v8 == 40)
      {
        v13 = v7 + 1;
        v12 = *v7;
        if (v12 < 0)
        {
          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            *v44 = sub_19587DC(v7, v12);
            if (!*v44)
            {
              goto LABEL_82;
            }

            goto LABEL_16;
          }

          v13 = v7 + 2;
        }

        *v44 = v13;
LABEL_16:
        if (v12 > 1)
        {
          sub_12E85B8();
        }

        else
        {
          *(a1 + 16) |= 0x10u;
          *(a1 + 52) = v12;
        }

        goto LABEL_67;
      }

      goto LABEL_59;
    }

    if (v8 != 34)
    {
      goto LABEL_59;
    }

    *(a1 + 16) |= 4u;
    v26 = *(a1 + 40);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v26 = sub_13AEBDC(v28);
      *(a1 + 40) = v26;
      v7 = *v44;
    }

    v19 = sub_2203830(a3, v26, v7);
LABEL_66:
    *v44 = v19;
    if (!v19)
    {
      goto LABEL_82;
    }

    goto LABEL_67;
  }

  if (v11 != 6)
  {
    if (v11 != 7 || v8 != 56)
    {
      goto LABEL_59;
    }

    v5 |= 0x40u;
    v20 = v7 + 1;
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_36:
      *v44 = v20;
      *(a1 + 60) = v21;
      goto LABEL_67;
    }

    v40 = sub_1958770(v7, v21);
    *v44 = v40;
    *(a1 + 60) = v41;
    if (!v40)
    {
      goto LABEL_82;
    }

    goto LABEL_67;
  }

  if (v8 == 48)
  {
    v29 = v7 + 1;
    v30 = *v7;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v31 = *v29;
    v32 = (v31 << 7) + v30;
    LODWORD(v30) = v32 - 128;
    if (v31 < 0)
    {
      *v44 = sub_19587DC(v7, (v32 - 128));
      if (!*v44)
      {
        goto LABEL_82;
      }

      LODWORD(v30) = v39;
    }

    else
    {
      v29 = v7 + 2;
LABEL_51:
      *v44 = v29;
    }

    if (sub_147803C(v30))
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 56) = v30;
    }

    else
    {
      sub_12E84C8();
    }

    goto LABEL_67;
  }

LABEL_59:
  if (v8)
  {
    v36 = (v8 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v37 = *(a1 + 8);
    if (v37)
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v7 = *v44;
    }

    v19 = sub_1952690(v8, v38, v7, a3);
    goto LABEL_66;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_82:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_13A14FC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
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

  v8 = *(a1 + 48);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_17:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 40);
    *v4 = 34;
    v13 = *(v12 + 20);
    v4[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v4 + 1);
    }

    else
    {
      v14 = v4 + 2;
    }

    v4 = sub_139D254(v12, v14, a3);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 32);
  *v4 = 26;
  v10 = *(v9 + 44);
  v4[1] = v10;
  if (v10 > 0x7F)
  {
    v11 = sub_19575D0(v10, v4 + 1);
  }

  else
  {
    v11 = v4 + 2;
  }

  v4 = sub_153C1A4(v9, v11, a3);
  if ((v6 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 52);
  *v4 = 40;
  v4[1] = v15;
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v4[2] = v15 >> 7;
    v7 = v4 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v17) = v4[2];
      do
      {
        *(v7 - 1) = v17 | 0x80;
        v17 = v16 >> 7;
        *v7++ = v16 >> 7;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_30:
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v20 = *(a1 + 56);
    *v7 = 48;
    v7[1] = v20;
    if (v20 > 0x7F)
    {
      v7[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v7[2] = v20 >> 7;
      v19 = v7 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v7[2];
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
      v19 = v7 + 2;
    }
  }

  else
  {
    v19 = v7;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 60);
    *v19 = 56;
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

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v24;
  }

  v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
  v31 = *(v30 + 31);
  if (v31 < 0)
  {
    v32 = *(v30 + 8);
    v31 = *(v30 + 16);
  }

  else
  {
    v32 = (v30 + 8);
  }

  if ((*a3 - v24) >= v31)
  {
    v33 = v31;
    memcpy(v24, v32, v31);
    v24 += v33;
    return v24;
  }

  return sub_1957130(a3, v32, v31, v24);
}

unint64_t sub_13A1864(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    result = 0;
    goto LABEL_16;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = sub_153C388(*(a1 + 32));
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
    v9 = sub_139D450(*(a1 + 40));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 2) & 2);
  if ((v2 & 0x10) != 0)
  {
    v11 = *(a1 + 52);
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 11;
    }

    result += v13;
    if ((v2 & 0x20) == 0)
    {
LABEL_14:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(a1 + 56);
  v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v14 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 11;
  }

  result += v16;
  if ((v2 & 0x40) != 0)
  {
LABEL_15:
    result += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v10 = *(a1 + 8);
  if (v10)
  {
    v17 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    result += v18;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_13A1A1C(uint64_t a1, uint64_t a2)
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

        goto LABEL_26;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

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

      v9 = sub_1551A70(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2776880;
    }

    sub_144F404(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }

LABEL_26:
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_13AEBDC(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_276DB50;
    }

    sub_139D554(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_35:
    *(a1 + 52) = *(a2 + 52);
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
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_10;
    }

LABEL_36:
    *(a1 + 56) = *(a2 + 56);
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

void sub_13A1BAC(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_13A103C(a1);

    sub_13A1A1C(a1, a2);
  }
}

uint64_t sub_13A1BF8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_144F674(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 sub_13A1C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a2 + 24);
  *(a2 + 24) = *(a1 + 24);
  *(a1 + 24) = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

uint64_t sub_13A1C8C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26DA910;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B61DC((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v11 & 2) != 0)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 16);
  }

  *(a1 + 64) = &qword_278E990;
  if ((v11 & 4) != 0)
  {
    v14 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v14);
  }

  v15 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v15;
  return a1;
}

void sub_13A1E1C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_13A1E60(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_13B5B8C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13A1F38(uint64_t a1)
{
  sub_13A1E60(a1);

  operator delete();
}

uint64_t sub_13A1F70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13A103C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
    }
  }

LABEL_21:
  if ((v5 & 0x38) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 72) = 0;
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

uint64_t sub_13A20A4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v42, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v42 + 1);
    v8 = **v42;
    if (**v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v42 + 2);
      }
    }

    *v42 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      if (v8 >> 3 <= 5)
      {
        if (v11 != 4)
        {
          if (v11 != 5 || v8 != 40)
          {
            goto LABEL_59;
          }

          v5 |= 0x20u;
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
            *v42 = v13;
            *(a1 + 80) = v12 != 0;
            goto LABEL_67;
          }

          v38 = sub_19587DC(v7, v12);
          *v42 = v38;
          *(a1 + 80) = v39 != 0;
          if (!v38)
          {
            goto LABEL_79;
          }

          goto LABEL_67;
        }

        if (v8 != 32)
        {
          goto LABEL_59;
        }

        v24 = v7 + 1;
        v23 = *v7;
        if (v23 < 0)
        {
          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            *v42 = sub_19587DC(v7, v23);
            if (!*v42)
            {
              goto LABEL_79;
            }

            goto LABEL_42;
          }

          v24 = v7 + 2;
        }

        *v42 = v24;
LABEL_42:
        if (v23 > 1)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 16) |= 0x10u;
          *(a1 + 76) = v23;
        }

        goto LABEL_67;
      }

      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_59;
        }

        *(a1 + 16) |= 2u;
        v26 = *(a1 + 8);
        v20 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v20 = *v20;
        }

        v21 = (a1 + 56);
      }

      else
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_59;
        }

        *(a1 + 16) |= 4u;
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v21 = (a1 + 64);
      }

LABEL_48:
      v27 = sub_194DB04(v21, v20);
      v28 = sub_1958890(v27, *v42, a3);
      goto LABEL_66;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_59;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v20 = *v20;
      }

      v21 = (a1 + 48);
      goto LABEL_48;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_59;
    }

    v5 |= 8u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_26:
      *v42 = v16;
      *(a1 + 72) = v17;
      goto LABEL_67;
    }

    v40 = sub_1958770(v7, v17);
    *v42 = v40;
    *(a1 + 72) = v41;
    if (!v40)
    {
      goto LABEL_79;
    }

LABEL_67:
    if (sub_195ADC0(a3, v42, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    v29 = v7 - 1;
    while (1)
    {
      v30 = v29 + 1;
      *v42 = v29 + 1;
      v31 = *(a1 + 40);
      if (v31 && (v32 = *(a1 + 32), v32 < *v31))
      {
        *(a1 + 32) = v32 + 1;
        v33 = *&v31[2 * v32 + 2];
      }

      else
      {
        sub_13AEF14(*(a1 + 24));
        v33 = sub_19593CC(a1 + 24, v34);
        v30 = *v42;
      }

      v29 = sub_2203A70(a3, v33, v30);
      *v42 = v29;
      if (!v29)
      {
        goto LABEL_79;
      }

      if (*a3 <= v29 || *v29 != 18)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_59:
  if (v8)
  {
    v35 = (v8 & 7) == 4;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = *v42;
    }

    v28 = sub_1952690(v8, v37, v7, a3);
LABEL_66:
    *v42 = v28;
    if (!v28)
    {
      goto LABEL_79;
    }

    goto LABEL_67;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_79:
  *v42 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v42;
}

char *sub_13A247C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v10 = *(v9 + 20);
      v4[1] = v10;
      if (v10 > 0x7F)
      {
        v11 = sub_19575D0(v10, v4 + 1);
      }

      else
      {
        v11 = v4 + 2;
      }

      v4 = sub_13A14FC(v9, v11, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 72);
    *v4 = 24;
    v4[1] = v13;
    if (v13 > 0x7F)
    {
      v4[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v4[2] = v13 >> 7;
      v12 = v4 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v4[2];
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
      v12 = v4 + 2;
    }
  }

  else
  {
    v12 = v4;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 76);
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
        LOBYTE(v20) = v12[2];
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
      v17 = v12 + 2;
    }
  }

  else
  {
    v17 = v12;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v24 = *(a1 + 80);
    *v17 = 40;
    v17[1] = v24;
    v17 += 2;
    if ((v6 & 2) == 0)
    {
LABEL_31:
      if ((v6 & 4) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_31;
  }

  v17 = sub_128AEEC(a3, 6, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v17);
  if ((v6 & 4) != 0)
  {
LABEL_32:
    v17 = sub_128AEEC(a3, 7, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v17);
  }

LABEL_33:
  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v17;
  }

  v25 = v22 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v17) >= v26)
  {
    v28 = v26;
    memcpy(v17, v27, v26);
    v17 += v28;
    return v17;
  }

  return sub_1957130(a3, v27, v26, v17);
}

uint64_t sub_13A276C(uint64_t a1)
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
      v7 = sub_13A1864(v6);
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
  if ((v8 & 0x3F) != 0)
  {
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

        goto LABEL_22;
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
        goto LABEL_14;
      }

      goto LABEL_25;
    }

LABEL_22:
    v15 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_14:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }

LABEL_25:
    v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_30:
      v2 += (v8 >> 4) & 2;
      goto LABEL_31;
    }

LABEL_26:
    v18 = *(a1 + 76);
    if (v18 < 0)
    {
      v19 = 11;
    }

    else
    {
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v19;
    goto LABEL_30;
  }

LABEL_31:
  v20 = *(a1 + 8);
  if (v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v2 += v23;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_13A2968(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B61DC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      goto LABEL_26;
    }

LABEL_23:
    v17 = *(a2 + 64);
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 64), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(a1 + 72) = *(a2 + 72);
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
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_12;
    }

LABEL_27:
    *(a1 + 76) = *(a2 + 76);
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