std::string *sub_135086C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        v7 = *(v3 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        sub_1354CE4(v8);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276BFD0;
      }

      result = sub_134BFC4(data, v9);
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

    *(v3 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v3 + 36) = *(a2 + 36);
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
    *(v3 + 40) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(v3 + 52) = *(a2 + 52);
      goto LABEL_9;
    }

LABEL_25:
    *(v3 + 48) = *(a2 + 48);
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

    return sub_1957EF4((v3 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_13509C0(uint64_t a1)
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

  if (a1 != &off_276C170)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_1350A8C(uint64_t a1)
{
  sub_13509C0(a1);

  operator delete();
}

uint64_t sub_1350AC4(uint64_t result)
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
      result = sub_134B1C8(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
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

uint64_t sub_1350B64(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v34, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v34 + 1);
    v8 = **v34;
    if (**v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v34 + 2);
      }
    }

    *v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 0x14)
    {
      break;
    }

    if (v11 == 21)
    {
      if (v8 != 168)
      {
        goto LABEL_35;
      }

      v5 |= 4u;
      v24 = v7 + 1;
      v25 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      v26 = *v24;
      v25 = v25 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_34:
        *v34 = v24;
        *(a1 + 40) = v25;
        goto LABEL_43;
      }

      v32 = sub_1958770(v7, v25);
      *v34 = v32;
      *(a1 + 40) = v33;
      if (!v32)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v11 != 22 || v8 != 176)
      {
        goto LABEL_35;
      }

      v5 |= 8u;
      v18 = v7 + 1;
      v19 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v20 = *v18;
      v19 = v19 + (v20 << 7) - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v18 = v7 + 2;
LABEL_25:
        *v34 = v18;
        *(a1 + 44) = v19;
        goto LABEL_43;
      }

      v30 = sub_1958770(v7, v19);
      *v34 = v30;
      *(a1 + 44) = v31;
      if (!v30)
      {
        goto LABEL_52;
      }
    }

LABEL_43:
    if (sub_195ADC0(a3, v34, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_35;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v23 = sub_194DB04((a1 + 24), v22);
    v17 = sub_1958890(v23, *v34, a3);
LABEL_42:
    *v34 = v17;
    if (!v17)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 2u;
    v13 = *(a1 + 32);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_1354CE4(v15);
      v13 = v16;
      *(a1 + 32) = v16;
      v7 = *v34;
    }

    v17 = sub_21FFD20(a3, v13, v7);
    goto LABEL_42;
  }

LABEL_35:
  if (v8)
  {
    v27 = (v8 & 7) == 4;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v29 = sub_11F1920((a1 + 8));
      v7 = *v34;
    }

    v17 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  *v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v34;
}

char *sub_1350DF4(uint64_t a1, char *__dst, unint64_t *a3)
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
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 18;
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

    v4 = sub_134B708(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 40);
  *v4 = 424;
  v4[2] = v11;
  if (v11 > 0x7F)
  {
    v4[2] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[3] = v11 >> 7;
    v7 = v4 + 4;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[3];
      do
      {
        *(v7 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v7++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v7 = v4 + 3;
  }

LABEL_19:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 44);
    *v7 = 432;
    v7[2] = v16;
    if (v16 > 0x7F)
    {
      v7[2] = v16 | 0x80;
      v17 = v16 >> 7;
      v7[3] = v16 >> 7;
      v15 = v7 + 4;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v7[3];
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
      v15 = v7 + 3;
    }
  }

  else
  {
    v15 = v7;
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

uint64_t sub_1351030(uint64_t a1)
{
  v2 = *(a1 + 16);
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
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v9 = sub_134BD80(*(a1 + 32));
      v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_9:
        if ((v2 & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_9;
    }

    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 8) != 0)
    {
LABEL_10:
      v3 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1351164(uint64_t a1, uint64_t a2)
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

      sub_1354CE4(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276BFD0;
    }

    sub_134BFC4(v9, v12);
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
      *(a1 + 44) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_23:
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

uint64_t sub_13512C4(uint64_t a1)
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

void sub_135137C(uint64_t a1)
{
  sub_13512C4(a1);

  operator delete();
}

uint64_t sub_13513B4(uint64_t a1)
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

uint64_t sub_1351430(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_13515B0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1351698(uint64_t a1)
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

double sub_1351784(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D6F88;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = &qword_278E990;
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0x100000000;
  return result;
}

uint64_t sub_1351800(uint64_t a1)
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

  v5 = (a1 + 208);
  if (*(a1 + 208) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276C1C8)
  {
    v6 = *(a1 + 216);
    if (v6)
    {
      sub_13512C4(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 192);
  sub_1355A1C((a1 + 168));
  sub_1355998((a1 + 144));
  sub_1355914((a1 + 120));
  sub_1355890((a1 + 96));
  sub_135580C((a1 + 72));
  sub_1355788((a1 + 48));
  sub_1355704((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1351928(uint64_t a1)
{
  sub_1351800(a1);

  operator delete();
}

uint64_t sub_1351960(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_134C1B8(v4);
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
      result = sub_1350AC4(v7);
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
      result = sub_134CF34(v10);
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
      result = sub_134DE58(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      result = sub_134E888(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 160) + 8);
    do
    {
      v19 = *v18++;
      result = sub_134F3F8(v19);
      --v17;
    }

    while (v17);
    *(v1 + 152) = 0;
  }

  v20 = *(v1 + 176);
  if (v20 >= 1)
  {
    v21 = (*(v1 + 184) + 8);
    do
    {
      v22 = *v21++;
      result = sub_134FF5C(v22);
      --v20;
    }

    while (v20);
    *(v1 + 176) = 0;
  }

  *(v1 + 192) = 0;
  v23 = *(v1 + 16);
  if ((v23 & 3) != 0)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_33;
    }

    v24 = *(v1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v24 + 23) & 0x80000000) == 0)
    {
      *v24 = 0;
      *(v24 + 23) = 0;
LABEL_33:
      if ((v23 & 2) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    **v24 = 0;
    *(v24 + 8) = 0;
    if ((v23 & 2) != 0)
    {
LABEL_34:
      result = sub_13513B4(*(v1 + 216));
    }
  }

LABEL_35:
  if ((v23 & 0xFC) != 0)
  {
    *(v1 + 224) = 0;
    *(v1 + 232) = 0;
    *(v1 + 240) = 0;
  }

  if ((v23 & 0x300) != 0)
  {
    *(v1 + 248) = 0x100000000;
  }

  v26 = *(v1 + 8);
  v25 = v1 + 8;
  *(v25 + 8) = 0;
  if (v26)
  {

    return sub_1957EA8(v25);
  }

  return result;
}

uint64_t sub_1351B40(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v110 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v110, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = (*v110 + 1);
    v10 = **v110;
    if (**v110 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v110, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v110 + 2);
      }
    }

    *v110 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 10)
        {
          goto LABEL_166;
        }

        v14 = v9 - 1;
        while (1)
        {
          v15 = v14 + 1;
          *v110 = v14 + 1;
          v16 = *(a1 + 40);
          if (v16 && (v17 = *(a1 + 32), v17 < *v16))
          {
            *(a1 + 32) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            sub_1354D68(*(a1 + 24));
            v18 = sub_19593CC(a1 + 24, v19);
            v15 = *v110;
          }

          v14 = sub_21FFDB0(a3, v18, v15);
          *v110 = v14;
          if (!v14)
          {
            goto LABEL_180;
          }

          if (*a3 <= v14 || *v14 != 10)
          {
            goto LABEL_174;
          }
        }

      case 2u:
        if (v10 != 18)
        {
          goto LABEL_166;
        }

        v36 = v9 - 1;
        while (1)
        {
          v37 = v36 + 1;
          *v110 = v36 + 1;
          v38 = *(a1 + 64);
          if (v38 && (v39 = *(a1 + 56), v39 < *v38))
          {
            *(a1 + 56) = v39 + 1;
            v40 = *&v38[2 * v39 + 2];
          }

          else
          {
            v41 = sub_1355070(*(a1 + 48));
            v40 = sub_19593CC(a1 + 48, v41);
            v37 = *v110;
          }

          v36 = sub_21FFE40(a3, v40, v37);
          *v110 = v36;
          if (!v36)
          {
            goto LABEL_180;
          }

          if (*a3 <= v36 || *v36 != 18)
          {
            goto LABEL_174;
          }
        }

      case 3u:
        if (v10 != 24)
        {
          goto LABEL_166;
        }

        v6 |= 4u;
        v58 = v9 + 1;
        LODWORD(v57) = *v9;
        if ((v57 & 0x80) == 0)
        {
          goto LABEL_82;
        }

        v59 = *v58;
        v57 = v57 + (v59 << 7) - 128;
        if (v59 < 0)
        {
          v100 = sub_19587DC(v9, v57);
          *v110 = v100;
          *(a1 + 224) = v101;
          if (!v100)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v58 = v9 + 2;
LABEL_82:
          *v110 = v58;
          *(a1 + 224) = v57;
        }

        goto LABEL_174;
      case 4u:
        if (v10 != 32)
        {
          goto LABEL_166;
        }

        v6 |= 8u;
        v55 = v9 + 1;
        LODWORD(v54) = *v9;
        if ((v54 & 0x80) == 0)
        {
          goto LABEL_77;
        }

        v56 = *v55;
        v54 = v54 + (v56 << 7) - 128;
        if (v56 < 0)
        {
          v98 = sub_19587DC(v9, v54);
          *v110 = v98;
          *(a1 + 228) = v99;
          if (!v98)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v55 = v9 + 2;
LABEL_77:
          *v110 = v55;
          *(a1 + 228) = v54;
        }

        goto LABEL_174;
      case 5u:
        if (v10 != 42)
        {
          goto LABEL_166;
        }

        *(a1 + 16) |= 1u;
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v31 = sub_194DB04((a1 + 208), v30);
        v32 = sub_1958890(v31, *v110, a3);
        goto LABEL_173;
      case 0x15u:
        if (v10 != 170)
        {
          goto LABEL_166;
        }

        v42 = v9 - 2;
        while (1)
        {
          v43 = v42 + 2;
          *v110 = v42 + 2;
          v44 = *(a1 + 88);
          if (v44 && (v45 = *(a1 + 80), v45 < *v44))
          {
            *(a1 + 80) = v45 + 1;
            v46 = *&v44[2 * v45 + 2];
          }

          else
          {
            sub_1354DE8(*(a1 + 72));
            v46 = sub_19593CC(a1 + 72, v47);
            v43 = *v110;
          }

          v42 = sub_21FFED0(a3, v46, v43);
          *v110 = v42;
          if (!v42)
          {
            goto LABEL_180;
          }

          if (*a3 <= v42 || *v42 != 426)
          {
            goto LABEL_174;
          }
        }

      case 0x16u:
        if (v10 != 178)
        {
          goto LABEL_166;
        }

        v60 = v9 - 2;
        while (1)
        {
          v61 = v60 + 2;
          *v110 = v60 + 2;
          v62 = *(a1 + 112);
          if (v62 && (v63 = *(a1 + 104), v63 < *v62))
          {
            *(a1 + 104) = v63 + 1;
            v64 = *&v62[2 * v63 + 2];
          }

          else
          {
            v65 = sub_1354E68(*(a1 + 96));
            v64 = sub_19593CC(a1 + 96, v65);
            v61 = *v110;
          }

          v60 = sub_21FFF60(a3, v64, v61);
          *v110 = v60;
          if (!v60)
          {
            goto LABEL_180;
          }

          if (*a3 <= v60 || *v60 != 434)
          {
            goto LABEL_174;
          }
        }

      case 0x17u:
        if (v10 != 184)
        {
          goto LABEL_166;
        }

        v6 |= 0x20u;
        v67 = v9 + 1;
        LODWORD(v66) = *v9;
        if ((v66 & 0x80) == 0)
        {
          goto LABEL_97;
        }

        v68 = *v67;
        v66 = v66 + (v68 << 7) - 128;
        if (v68 < 0)
        {
          v102 = sub_19587DC(v9, v66);
          *v110 = v102;
          *(a1 + 236) = v103;
          if (!v102)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v67 = v9 + 2;
LABEL_97:
          *v110 = v67;
          *(a1 + 236) = v66;
        }

        goto LABEL_174;
      case 0x18u:
        if (v10 != 192)
        {
          goto LABEL_166;
        }

        v6 |= 0x40u;
        v87 = v9 + 1;
        LODWORD(v86) = *v9;
        if ((v86 & 0x80) == 0)
        {
          goto LABEL_134;
        }

        v88 = *v87;
        v86 = v86 + (v88 << 7) - 128;
        if (v88 < 0)
        {
          v106 = sub_19587DC(v9, v86);
          *v110 = v106;
          *(a1 + 240) = v107;
          if (!v106)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v87 = v9 + 2;
LABEL_134:
          *v110 = v87;
          *(a1 + 240) = v86;
        }

        goto LABEL_174;
      case 0x19u:
        if (v10 != 202)
        {
          goto LABEL_166;
        }

        v80 = v9 - 2;
        while (1)
        {
          v81 = v80 + 2;
          *v110 = v80 + 2;
          v82 = *(a1 + 136);
          if (v82 && (v83 = *(a1 + 128), v83 < *v82))
          {
            *(a1 + 128) = v83 + 1;
            v84 = *&v82[2 * v83 + 2];
          }

          else
          {
            sub_1354EF0(*(a1 + 120));
            v84 = sub_19593CC(a1 + 120, v85);
            v81 = *v110;
          }

          v80 = sub_21FFFF0(a3, v84, v81);
          *v110 = v80;
          if (!v80)
          {
            goto LABEL_180;
          }

          if (*a3 <= v80 || *v80 != 458)
          {
            goto LABEL_174;
          }
        }

      case 0x1Au:
        if (v10 != 208)
        {
          goto LABEL_166;
        }

        v6 |= 0x80u;
        v27 = v9 + 1;
        LODWORD(v26) = *v9;
        if ((v26 & 0x80) == 0)
        {
          goto LABEL_33;
        }

        v28 = *v27;
        v26 = v26 + (v28 << 7) - 128;
        if (v28 < 0)
        {
          v94 = sub_19587DC(v9, v26);
          *v110 = v94;
          *(a1 + 244) = v95;
          if (!v94)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v27 = v9 + 2;
LABEL_33:
          *v110 = v27;
          *(a1 + 244) = v26;
        }

        goto LABEL_174;
      case 0x1Bu:
        if (v10 != 218)
        {
          goto LABEL_166;
        }

        v48 = v9 - 2;
        while (1)
        {
          v49 = v48 + 2;
          *v110 = v48 + 2;
          v50 = *(a1 + 160);
          if (v50 && (v51 = *(a1 + 152), v51 < *v50))
          {
            *(a1 + 152) = v51 + 1;
            v52 = *&v50[2 * v51 + 2];
          }

          else
          {
            sub_1354F70(*(a1 + 144));
            v52 = sub_19593CC(a1 + 144, v53);
            v49 = *v110;
          }

          v48 = sub_2200080(a3, v52, v49);
          *v110 = v48;
          if (!v48)
          {
            goto LABEL_180;
          }

          if (*a3 <= v48 || *v48 != 474)
          {
            goto LABEL_174;
          }
        }

      case 0x1Cu:
        if (v10 != 224)
        {
          goto LABEL_166;
        }

        v6 |= 0x100u;
        v34 = v9 + 1;
        LODWORD(v33) = *v9;
        if ((v33 & 0x80) == 0)
        {
          goto LABEL_42;
        }

        v35 = *v34;
        v33 = v33 + (v35 << 7) - 128;
        if (v35 < 0)
        {
          v96 = sub_19587DC(v9, v33);
          *v110 = v96;
          *(a1 + 248) = v97;
          if (!v96)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v34 = v9 + 2;
LABEL_42:
          *v110 = v34;
          *(a1 + 248) = v33;
        }

        goto LABEL_174;
      case 0x1Du:
        if (v10 != 234)
        {
          goto LABEL_166;
        }

        v20 = v9 - 2;
        while (1)
        {
          v21 = v20 + 2;
          *v110 = v20 + 2;
          v22 = *(a1 + 184);
          if (v22 && (v23 = *(a1 + 176), v23 < *v22))
          {
            *(a1 + 176) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            sub_1354FF0(*(a1 + 168));
            v24 = sub_19593CC(a1 + 168, v25);
            v21 = *v110;
          }

          v20 = sub_2200110(a3, v24, v21);
          *v110 = v20;
          if (!v20)
          {
            goto LABEL_180;
          }

          if (*a3 <= v20 || *v20 != 490)
          {
            goto LABEL_174;
          }
        }

      case 0x1Eu:
        if (v10 != 240)
        {
          goto LABEL_166;
        }

        v6 |= 0x10u;
        v70 = v9 + 1;
        LODWORD(v69) = *v9;
        if ((v69 & 0x80) == 0)
        {
          goto LABEL_102;
        }

        v71 = *v70;
        v69 = v69 + (v71 << 7) - 128;
        if (v71 < 0)
        {
          v104 = sub_19587DC(v9, v69);
          *v110 = v104;
          *(a1 + 232) = v105;
          if (!v104)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v70 = v9 + 2;
LABEL_102:
          *v110 = v70;
          *(a1 + 232) = v69;
        }

        goto LABEL_174;
      case 0x1Fu:
        if (v10 == 248)
        {
          v72 = (v9 - 2);
          while (1)
          {
            *v110 = v72 + 2;
            v73 = *(v72 + 2);
            v74 = (v72 + 3);
            if (v73 < 0)
            {
              v75 = *v74;
              v76 = (v75 << 7) + v73;
              LODWORD(v73) = v76 - 128;
              if (v75 < 0)
              {
                *v110 = sub_19587DC(v72 + 2, (v76 - 128));
                if (!*v110)
                {
                  goto LABEL_180;
                }

                LODWORD(v73) = v79;
                goto LABEL_109;
              }

              v74 = (v72 + 4);
            }

            *v110 = v74;
LABEL_109:
            if ((v73 - 1) > 1)
            {
              sub_1355E94();
            }

            else
            {
              v77 = *(a1 + 192);
              if (v77 == *(a1 + 196))
              {
                v78 = v77 + 1;
                sub_1958E5C((a1 + 192), v77 + 1);
                *(*(a1 + 200) + 4 * v77) = v73;
              }

              else
              {
                *(*(a1 + 200) + 4 * v77) = v73;
                v78 = v77 + 1;
              }

              *(a1 + 192) = v78;
            }

            v72 = *v110;
            if (*a3 <= *v110 || **v110 != 504)
            {
              goto LABEL_174;
            }
          }
        }

        if (v10 == 250)
        {
          *&v111 = a1 + 192;
          *(&v111 + 1) = sub_134B10C;
          v112 = a1 + 8;
          v113 = 31;
          v32 = sub_1216588(a3, v9, &v111, v5);
LABEL_173:
          *v110 = v32;
          if (!v32)
          {
            goto LABEL_180;
          }

LABEL_174:
          if (sub_195ADC0(a3, v110, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_166:
        if (v10)
        {
          v108 = (v10 & 7) == 4;
        }

        else
        {
          v108 = 1;
        }

        if (!v108)
        {
          if (*v8)
          {
            v109 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v109 = sub_11F1920((a1 + 8));
            v9 = *v110;
          }

          v32 = sub_1952690(v10, v109, v9, a3);
          goto LABEL_173;
        }

        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
        }

        else
        {
LABEL_180:
          *v110 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v6;
        return *v110;
      case 0x20u:
        if (v10)
        {
          goto LABEL_166;
        }

        v92 = v9 + 1;
        v91 = *v9;
        if ((v91 & 0x8000000000000000) == 0)
        {
          goto LABEL_145;
        }

        v93 = *v92;
        v91 = (v93 << 7) + v91 - 128;
        if (v93 < 0)
        {
          *v110 = sub_19587DC(v9, v91);
          if (!*v110)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v92 = v9 + 2;
LABEL_145:
          *v110 = v92;
        }

        if ((v91 - 1) > 1)
        {
          sub_1355E54();
        }

        else
        {
          *(a1 + 16) |= 0x200u;
          *(a1 + 252) = v91;
        }

        goto LABEL_174;
      case 0x21u:
        if (v10 != 10)
        {
          goto LABEL_166;
        }

        *(a1 + 16) |= 2u;
        v89 = *(a1 + 216);
        if (!v89)
        {
          v90 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v90 = *v90;
          }

          v89 = sub_13550F8(v90);
          *(a1 + 216) = v89;
          v9 = *v110;
        }

        v32 = sub_22001A0(a3, v89, v9);
        goto LABEL_173;
      default:
        goto LABEL_166;
    }
  }
}

char *sub_1352584(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
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

      a2 = sub_134C5E8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_1350DF4(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if ((v16 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v18 = *(a1 + 224);
    *a2 = 24;
    a2[1] = v18;
    if (v18 > 0x7F)
    {
      a2[1] = v18 | 0x80;
      v19 = v18 >> 7;
      a2[2] = v18 >> 7;
      v17 = a2 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v17 - 1) = a2 | 0x80;
          a2 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = a2 + 2;
    }
  }

  else
  {
    v17 = a2;
  }

  if ((v16 & 8) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 228);
    *v17 = 32;
    v17[1] = v22;
    if (v22 > 0x7F)
    {
      v17[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v17[2] = v22 >> 7;
      v21 = v17 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v21 - 1) = v17 | 0x80;
          v17 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v17 + 2;
    }
  }

  else
  {
    v21 = v17;
  }

  if (v16)
  {
    v21 = sub_128AEEC(a3, 5, (*(a1 + 208) & 0xFFFFFFFFFFFFFFFELL), v21);
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v27 = *(*(a1 + 88) + 8 * k + 8);
      *v21 = 426;
      v28 = *(v27 + 20);
      v21[2] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v21 + 2);
      }

      else
      {
        v29 = v21 + 3;
      }

      v21 = sub_134D434(v27, v29, a3);
    }
  }

  v30 = *(a1 + 104);
  if (v30)
  {
    for (m = 0; m != v30; ++m)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v32 = *(*(a1 + 112) + 8 * m + 8);
      *v21 = 434;
      v33 = *(v32 + 20);
      v21[2] = v33;
      if (v33 > 0x7F)
      {
        v34 = sub_19575D0(v33, v21 + 2);
      }

      else
      {
        v34 = v21 + 3;
      }

      v21 = sub_134E1E4(v32, v34, a3);
    }
  }

  if ((v16 & 0x20) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v36 = *(a1 + 236);
    *v21 = 440;
    v21[2] = v36;
    if (v36 > 0x7F)
    {
      v21[2] = v36 | 0x80;
      v37 = v36 >> 7;
      v21[3] = v36 >> 7;
      v35 = v21 + 4;
      if (v36 >= 0x4000)
      {
        LOBYTE(v38) = v21[3];
        do
        {
          *(v35 - 1) = v38 | 0x80;
          v38 = v37 >> 7;
          *v35++ = v37 >> 7;
          v39 = v37 >> 14;
          v37 >>= 7;
        }

        while (v39);
      }
    }

    else
    {
      v35 = v21 + 3;
    }
  }

  else
  {
    v35 = v21;
  }

  if ((v16 & 0x40) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v41 = *(a1 + 240);
    *v35 = 448;
    v35[2] = v41;
    if (v41 > 0x7F)
    {
      v35[2] = v41 | 0x80;
      v42 = v41 >> 7;
      v35[3] = v41 >> 7;
      v40 = v35 + 4;
      if (v41 >= 0x4000)
      {
        LOBYTE(v35) = v35[3];
        do
        {
          *(v40 - 1) = v35 | 0x80;
          v35 = (v42 >> 7);
          *v40++ = v42 >> 7;
          v43 = v42 >> 14;
          v42 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v40 = v35 + 3;
    }
  }

  else
  {
    v40 = v35;
  }

  v44 = *(a1 + 128);
  if (v44)
  {
    for (n = 0; n != v44; ++n)
    {
      if (*a3 <= v40)
      {
        v40 = sub_225EB68(a3, v40);
      }

      v46 = *(*(a1 + 136) + 8 * n + 8);
      *v40 = 458;
      v47 = *(v46 + 20);
      v40[2] = v47;
      if (v47 > 0x7F)
      {
        v48 = sub_19575D0(v47, v40 + 2);
      }

      else
      {
        v48 = v40 + 3;
      }

      v40 = sub_134ECB8(v46, v48, a3);
    }
  }

  if ((v16 & 0x80) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v50 = *(a1 + 244);
    *v40 = 464;
    v40[2] = v50;
    if (v50 > 0x7F)
    {
      v40[2] = v50 | 0x80;
      v51 = v50 >> 7;
      v40[3] = v50 >> 7;
      v49 = v40 + 4;
      if (v50 >= 0x4000)
      {
        LOBYTE(v40) = v40[3];
        do
        {
          *(v49 - 1) = v40 | 0x80;
          v40 = (v51 >> 7);
          *v49++ = v51 >> 7;
          v52 = v51 >> 14;
          v51 >>= 7;
        }

        while (v52);
      }
    }

    else
    {
      v49 = v40 + 3;
    }
  }

  else
  {
    v49 = v40;
  }

  v53 = *(a1 + 152);
  if (v53)
  {
    for (ii = 0; ii != v53; ++ii)
    {
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v55 = *(*(a1 + 160) + 8 * ii + 8);
      *v49 = 474;
      v56 = *(v55 + 20);
      v49[2] = v56;
      if (v56 > 0x7F)
      {
        v57 = sub_19575D0(v56, v49 + 2);
      }

      else
      {
        v57 = v49 + 3;
      }

      v49 = sub_134F828(v55, v57, a3);
    }
  }

  if ((v16 & 0x100) != 0)
  {
    if (*a3 <= v49)
    {
      v49 = sub_225EB68(a3, v49);
    }

    v59 = *(a1 + 248);
    *v49 = 480;
    v49[2] = v59;
    if (v59 > 0x7F)
    {
      v49[2] = v59 | 0x80;
      v60 = v59 >> 7;
      v49[3] = v59 >> 7;
      v58 = v49 + 4;
      if (v59 >= 0x4000)
      {
        LOBYTE(v49) = v49[3];
        do
        {
          *(v58 - 1) = v49 | 0x80;
          v49 = (v60 >> 7);
          *v58++ = v60 >> 7;
          v61 = v60 >> 14;
          v60 >>= 7;
        }

        while (v61);
      }
    }

    else
    {
      v58 = v49 + 3;
    }
  }

  else
  {
    v58 = v49;
  }

  v62 = *(a1 + 176);
  if (v62)
  {
    for (jj = 0; jj != v62; ++jj)
    {
      if (*a3 <= v58)
      {
        v58 = sub_225EB68(a3, v58);
      }

      v64 = *(*(a1 + 184) + 8 * jj + 8);
      *v58 = 490;
      v65 = *(v64 + 20);
      v58[2] = v65;
      if (v65 > 0x7F)
      {
        v66 = sub_19575D0(v65, v58 + 2);
      }

      else
      {
        v66 = v58 + 3;
      }

      v58 = sub_1350328(v64, v66, a3);
    }
  }

  if ((v16 & 0x10) != 0)
  {
    if (*a3 <= v58)
    {
      v58 = sub_225EB68(a3, v58);
    }

    v68 = *(a1 + 232);
    *v58 = 496;
    v58[2] = v68;
    if (v68 > 0x7F)
    {
      v58[2] = v68 | 0x80;
      v69 = v68 >> 7;
      v58[3] = v68 >> 7;
      v67 = v58 + 4;
      if (v68 >= 0x4000)
      {
        LOBYTE(v58) = v58[3];
        do
        {
          *(v67 - 1) = v58 | 0x80;
          v58 = (v69 >> 7);
          *v67++ = v69 >> 7;
          v70 = v69 >> 14;
          v69 >>= 7;
        }

        while (v70);
      }
    }

    else
    {
      v67 = v58 + 3;
    }
  }

  else
  {
    v67 = v58;
  }

  v71 = *(a1 + 192);
  if (v71 < 1)
  {
    v74 = v67;
  }

  else
  {
    for (kk = 0; kk != v71; ++kk)
    {
      if (*a3 <= v67)
      {
        v67 = sub_225EB68(a3, v67);
      }

      v73 = *(*(a1 + 200) + 4 * kk);
      *v67 = 504;
      v67[2] = v73;
      if (v73 > 0x7F)
      {
        v67[2] = v73 | 0x80;
        v75 = v73 >> 7;
        v67[3] = v73 >> 7;
        v74 = v67 + 4;
        if (v73 >= 0x4000)
        {
          LOBYTE(v67) = v67[3];
          do
          {
            *(v74 - 1) = v67 | 0x80;
            v67 = (v75 >> 7);
            *v74++ = v75 >> 7;
            v76 = v75 >> 14;
            v75 >>= 7;
          }

          while (v76);
        }
      }

      else
      {
        v74 = v67 + 3;
      }

      v67 = v74;
    }
  }

  if ((v16 & 0x200) != 0)
  {
    if (*a3 <= v74)
    {
      v74 = sub_225EB68(a3, v74);
    }

    v78 = *(a1 + 252);
    *v74 = 640;
    v74[2] = v78;
    if (v78 > 0x7F)
    {
      v74[2] = v78 | 0x80;
      v79 = v78 >> 7;
      v74[3] = v78 >> 7;
      v77 = v74 + 4;
      if (v78 >= 0x4000)
      {
        LOBYTE(v80) = v74[3];
        do
        {
          *(v77 - 1) = v80 | 0x80;
          v80 = v79 >> 7;
          *v77++ = v79 >> 7;
          v81 = v79 >> 14;
          v79 >>= 7;
        }

        while (v81);
      }
    }

    else
    {
      v77 = v74 + 3;
    }
  }

  else
  {
    v77 = v74;
  }

  if ((v16 & 2) != 0)
  {
    if (*a3 <= v77)
    {
      v77 = sub_225EB68(a3, v77);
    }

    v82 = *(a1 + 216);
    *v77 = 650;
    v83 = *(v82 + 20);
    v77[2] = v83;
    if (v83 > 0x7F)
    {
      v84 = sub_19575D0(v83, v77 + 2);
    }

    else
    {
      v84 = v77 + 3;
    }

    v77 = sub_13515B0(v82, v84, a3);
  }

  v85 = *(a1 + 8);
  if ((v85 & 1) == 0)
  {
    return v77;
  }

  v87 = v85 & 0xFFFFFFFFFFFFFFFCLL;
  v88 = *(v87 + 31);
  if (v88 < 0)
  {
    v89 = *(v87 + 8);
    v88 = *(v87 + 16);
  }

  else
  {
    v89 = (v87 + 8);
  }

  if ((*a3 - v77) >= v88)
  {
    v90 = v88;
    memcpy(v77, v89, v88);
    v77 += v90;
    return v77;
  }

  return sub_1957130(a3, v89, v88, v77);
}

uint64_t sub_1352F44(uint64_t a1)
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
      v7 = sub_134CB0C(v6);
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
      v14 = sub_1351030(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + 2 * v15;
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
      v21 = sub_134D974(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + 2 * v22;
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
      v28 = sub_134E4A0(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 128);
  v30 = v23 + 2 * v29;
  v31 = *(a1 + 136);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = sub_134F0EC(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 152);
  v37 = v30 + 2 * v36;
  v38 = *(a1 + 160);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = sub_134FC5C(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 176);
  v44 = v37 + 2 * v43;
  v45 = *(a1 + 184);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = sub_13506D4(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 192);
  if (v50)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = *(*(a1 + 200) + 4 * v51);
      if (v53 < 0)
      {
        v54 = 10;
      }

      else
      {
        v54 = (9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6;
      }

      v52 += v54;
      ++v51;
    }

    while (v50 != v51);
  }

  else
  {
    v52 = 0;
  }

  v55 = v44 + 2 * v50 + v52;
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_91;
  }

  if (v56)
  {
    v57 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v58 = *(v57 + 23);
    v59 = *(v57 + 8);
    if ((v58 & 0x80u) == 0)
    {
      v59 = v58;
    }

    v55 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v56 & 2) == 0)
    {
LABEL_56:
      if ((v56 & 4) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_67;
    }
  }

  else if ((v56 & 2) == 0)
  {
    goto LABEL_56;
  }

  v60 = sub_1351698(*(a1 + 216));
  v55 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 4) == 0)
  {
LABEL_57:
    if ((v56 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_71;
  }

LABEL_67:
  v61 = *(a1 + 224);
  if (v61 < 0)
  {
    v62 = 11;
  }

  else
  {
    v62 = ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v55 += v62;
  if ((v56 & 8) == 0)
  {
LABEL_58:
    if ((v56 & 0x10) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_75;
  }

LABEL_71:
  v63 = *(a1 + 228);
  if (v63 < 0)
  {
    v64 = 11;
  }

  else
  {
    v64 = ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v55 += v64;
  if ((v56 & 0x10) == 0)
  {
LABEL_59:
    if ((v56 & 0x20) == 0)
    {
      goto LABEL_60;
    }

LABEL_79:
    v67 = *(a1 + 236);
    if (v67 < 0)
    {
      v68 = 12;
    }

    else
    {
      v68 = ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v55 += v68;
    if ((v56 & 0x40) == 0)
    {
LABEL_61:
      if ((v56 & 0x80) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_87;
    }

    goto LABEL_83;
  }

LABEL_75:
  v65 = *(a1 + 232);
  if (v65 < 0)
  {
    v66 = 12;
  }

  else
  {
    v66 = ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v55 += v66;
  if ((v56 & 0x20) != 0)
  {
    goto LABEL_79;
  }

LABEL_60:
  if ((v56 & 0x40) == 0)
  {
    goto LABEL_61;
  }

LABEL_83:
  v69 = *(a1 + 240);
  if (v69 < 0)
  {
    v70 = 12;
  }

  else
  {
    v70 = ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v55 += v70;
  if ((v56 & 0x80) != 0)
  {
LABEL_87:
    v71 = *(a1 + 244);
    if (v71 < 0)
    {
      v72 = 12;
    }

    else
    {
      v72 = ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v55 += v72;
  }

LABEL_91:
  if ((v56 & 0x300) != 0)
  {
    if ((v56 & 0x100) != 0)
    {
      v73 = *(a1 + 248);
      if (v73 < 0)
      {
        v74 = 12;
      }

      else
      {
        v74 = ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v55 += v74;
    }

    if ((v56 & 0x200) != 0)
    {
      v75 = *(a1 + 252);
      if (v75 < 0)
      {
        v76 = 12;
      }

      else
      {
        v76 = ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v55 += v76;
    }
  }

  v77 = *(a1 + 8);
  if (v77)
  {
    v79 = v77 & 0xFFFFFFFFFFFFFFFCLL;
    v80 = *((v77 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v80 < 0)
    {
      v80 = *(v79 + 16);
    }

    v55 += v80;
  }

  *(a1 + 20) = v55;
  return v55;
}

void sub_1353470(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1355AA0((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1355B2C((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_1355BB8((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_1355C44((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1355CD0((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 152);
  if (v29)
  {
    v30 = *(a2 + 160);
    v31 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1355D4C((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 176);
  if (v34)
  {
    v35 = *(a2 + 184);
    v36 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_1355DC8((a1 + 168), v36, (v35 + 8), v34, **(a1 + 184) - *(a1 + 176));
    v37 = *(a1 + 176) + v34;
    *(a1 + 176) = v37;
    v38 = *(a1 + 184);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 192);
  if (v39)
  {
    v40 = *(a1 + 192);
    sub_1958E5C((a1 + 192), v40 + v39);
    v41 = *(a1 + 200);
    *(a1 + 192) += *(a2 + 192);
    memcpy((v41 + 4 * v40), *(a2 + 200), 4 * *(a2 + 192));
  }

  v42 = *(a2 + 16);
  if (v42)
  {
    if (v42)
    {
      v44 = *(a2 + 208);
      *(a1 + 16) |= 1u;
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      sub_194EA1C((a1 + 208), (v44 & 0xFFFFFFFFFFFFFFFELL), v46);
      if ((v42 & 2) == 0)
      {
LABEL_27:
        if ((v42 & 4) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_56;
      }
    }

    else if ((v42 & 2) == 0)
    {
      goto LABEL_27;
    }

    *(a1 + 16) |= 2u;
    v47 = *(a1 + 216);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_13550F8(v49);
      *(a1 + 216) = v47;
    }

    if (*(a2 + 216))
    {
      v50 = *(a2 + 216);
    }

    else
    {
      v50 = &off_276C1A0;
    }

    sub_12F5A34(v47, v50);
    if ((v42 & 4) == 0)
    {
LABEL_28:
      if ((v42 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 224) = *(a2 + 224);
    if ((v42 & 8) == 0)
    {
LABEL_29:
      if ((v42 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(a1 + 228) = *(a2 + 228);
    if ((v42 & 0x10) == 0)
    {
LABEL_30:
      if ((v42 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(a1 + 232) = *(a2 + 232);
    if ((v42 & 0x20) == 0)
    {
LABEL_31:
      if ((v42 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_60;
    }

LABEL_59:
    *(a1 + 236) = *(a2 + 236);
    if ((v42 & 0x40) == 0)
    {
LABEL_32:
      if ((v42 & 0x80) == 0)
      {
LABEL_34:
        *(a1 + 16) |= v42;
        goto LABEL_35;
      }

LABEL_33:
      *(a1 + 244) = *(a2 + 244);
      goto LABEL_34;
    }

LABEL_60:
    *(a1 + 240) = *(a2 + 240);
    if ((v42 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_35:
  if ((v42 & 0x300) != 0)
  {
    if ((v42 & 0x100) != 0)
    {
      *(a1 + 248) = *(a2 + 248);
    }

    if ((v42 & 0x200) != 0)
    {
      *(a1 + 252) = *(a2 + 252);
    }

    *(a1 + 16) |= v42;
  }

  v43 = *(a2 + 8);
  if (v43)
  {

    sub_1957EF4((a1 + 8), (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13538C4(uint64_t a1)
{
  if (!sub_1353950(a1 + 24) || !sub_13539B4(a1 + 48) || !sub_1353A10(a1 + 72) || !sub_1353A68(a1 + 96) || !sub_1353A10(a1 + 120) || !sub_1353950(a1 + 144))
  {
    return 0;
  }

  return sub_1353A10(a1 + 168);
}

uint64_t sub_1353950(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; ; i -= 8)
  {
    v4 = *(*i + 16);
    if ((~v4 & 0x1E) != 0 || (v4 & 1) != 0 && (~*(*(*i + 24) + 16) & 7) != 0)
    {
      break;
    }

    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_13539B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; ; i -= 8)
  {
    v4 = *(*i + 16);
    if ((v4 & 1) == 0 || (v4 & 2) != 0 && (~*(*(*i + 32) + 16) & 7) != 0)
    {
      break;
    }

    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1353A10(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 1) == 0 || (~*(*(*i + 24) + 16) & 7) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1353A68(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 2) == 0 || (~*(*(*i + 32) + 16) & 7) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1353AD0(uint64_t a1)
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
  if (a1 != &off_276C2C8)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_13512C4(v6);
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

void sub_1353B90(uint64_t a1)
{
  sub_1353AD0(a1);

  operator delete();
}

uint64_t sub_1353BC8(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_13513B4(*(result + 40));
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 76) = 0x100000001;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 76) = 1;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1353C54(uint64_t a1, char *a2, int32x2_t *a3)
{
  v71 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, &v71, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = v71 + 1;
    v10 = *v71;
    if (*v71 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(v71, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = v71 + 2;
      }
    }

    v71 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 > 0x1E)
    {
      break;
    }

    if (v10 >> 3 <= 2)
    {
      if (v14 == 1)
      {
        if (v10 != 8)
        {
          goto LABEL_123;
        }

        v6 |= 2u;
        v32 = v9 + 1;
        v31 = *v9;
        if (v31 < 0)
        {
          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if (v33 < 0)
          {
            v61 = sub_19587DC(v9, v31);
            v71 = v61;
            *(a1 + 48) = v62;
            if (!v61)
            {
              goto LABEL_139;
            }

            goto LABEL_131;
          }

          v32 = v9 + 2;
        }

        v71 = v32;
        *(a1 + 48) = v31;
      }

      else
      {
        if (v14 != 2 || v10 != 16)
        {
          goto LABEL_123;
        }

        v6 |= 4u;
        v25 = v9 + 1;
        v24 = *v9;
        if (v24 < 0)
        {
          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v57 = sub_19587DC(v9, v24);
            v71 = v57;
            *(a1 + 56) = v58;
            if (!v57)
            {
              goto LABEL_139;
            }

            goto LABEL_131;
          }

          v25 = v9 + 2;
        }

        v71 = v25;
        *(a1 + 56) = v24;
      }
    }

    else if (v14 == 3)
    {
      if (v10 != 24)
      {
        goto LABEL_123;
      }

      v6 |= 8u;
      v40 = v9 + 1;
      v39 = *v9;
      if (v39 < 0)
      {
        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v64 = sub_19587DC(v9, v39);
          v71 = v64;
          *(a1 + 64) = v65 != 0;
          if (!v64)
          {
            goto LABEL_139;
          }

          goto LABEL_131;
        }

        v40 = v9 + 2;
      }

      v71 = v40;
      *(a1 + 64) = v39 != 0;
    }

    else
    {
      if (v14 != 4)
      {
        if (v14 != 21 || v10 != 168)
        {
          goto LABEL_123;
        }

        v15 = v9 + 1;
        v16 = *v9;
        if (v16 < 0)
        {
          v17 = *v15;
          v18 = (v17 << 7) + v16;
          LODWORD(v16) = v18 - 128;
          if (v17 < 0)
          {
            v71 = sub_19587DC(v9, (v18 - 128));
            if (!v71)
            {
              goto LABEL_139;
            }

            LODWORD(v16) = v66;
            goto LABEL_18;
          }

          v15 = v9 + 2;
        }

        v71 = v15;
LABEL_18:
        if (sub_134B0C8(v16))
        {
          *(a1 + 16) |= 0x80u;
          *(a1 + 80) = v16;
        }

        else
        {
          sub_1313640();
        }

        goto LABEL_131;
      }

      if (v10 != 32)
      {
        goto LABEL_123;
      }

      v6 |= 0x10u;
      v51 = v9 + 1;
      LODWORD(v50) = *v9;
      if ((v50 & 0x80) != 0)
      {
        v52 = *v51;
        v50 = v50 + (v52 << 7) - 128;
        if (v52 < 0)
        {
          v67 = sub_19587DC(v9, v50);
          v71 = v67;
          *(a1 + 68) = v68;
          if (!v67)
          {
            goto LABEL_139;
          }

          goto LABEL_131;
        }

        v51 = v9 + 2;
      }

      v71 = v51;
      *(a1 + 68) = v50;
    }

LABEL_131:
    if (sub_195ADC0(a3, &v71, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v10 >> 3 <= 0x20)
  {
    if (v14 == 31)
    {
      if (v10 != 248)
      {
        goto LABEL_123;
      }

      v34 = v9 + 1;
      v35 = *v9;
      if ((v35 & 0x8000000000000000) != 0)
      {
        v36 = *v34;
        v37 = (v36 << 7) + v35;
        v35 = (v37 - 128);
        if ((v36 & 0x80000000) == 0)
        {
          v34 = v9 + 2;
          goto LABEL_62;
        }

        v71 = sub_19587DC(v9, (v37 - 128));
        if (!v71)
        {
          goto LABEL_139;
        }

        v35 = v63;
      }

      else
      {
LABEL_62:
        v71 = v34;
      }

      if (v35 > 4 || ((1 << v35) & 0x16) == 0)
      {
        if (*v8)
        {
          v56 = ((*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        else
        {
          v56 = sub_11F1920((a1 + 8));
        }

        sub_19586BC(31, v35, v56);
      }

      else
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 84) = v35;
      }

      goto LABEL_131;
    }

    if (v14 != 32 || v10 != 0)
    {
      goto LABEL_123;
    }

    v6 |= 0x20u;
    v29 = v9 + 1;
    LODWORD(v28) = *v9;
    if ((v28 & 0x80) != 0)
    {
      v30 = *v29;
      v28 = v28 + (v30 << 7) - 128;
      if (v30 < 0)
      {
        v59 = sub_19587DC(v9, v28);
        v71 = v59;
        *(a1 + 72) = v60;
        if (!v59)
        {
          goto LABEL_139;
        }

        goto LABEL_131;
      }

      v29 = v9 + 2;
    }

    v71 = v29;
    *(a1 + 72) = v28;
    goto LABEL_131;
  }

  if (v14 == 33)
  {
    if (v10 != 8)
    {
      if (v10 != 10)
      {
        goto LABEL_123;
      }

      *&v72 = a1 + 24;
      *(&v72 + 1) = sub_134B10C;
      v73 = a1 + 8;
      v74 = 33;
      v22 = sub_1216588(a3, v9, &v72, v5);
LABEL_130:
      v71 = v22;
      if (!v22)
      {
        goto LABEL_139;
      }

      goto LABEL_131;
    }

    v42 = v9 - 2;
    while (1)
    {
      v71 = v42 + 2;
      v43 = v42[2];
      v44 = v42 + 3;
      if (v43 < 0)
      {
        v45 = *v44;
        v46 = (v45 << 7) + v43;
        LODWORD(v43) = v46 - 128;
        if (v45 < 0)
        {
          v71 = sub_19587DC((v42 + 2), (v46 - 128));
          if (!v71)
          {
            goto LABEL_139;
          }

          LODWORD(v43) = v49;
          goto LABEL_79;
        }

        v44 = v42 + 4;
      }

      v71 = v44;
LABEL_79:
      if ((v43 - 1) > 1)
      {
        sub_1355F14();
      }

      else
      {
        v47 = *(a1 + 24);
        if (v47 == *(a1 + 28))
        {
          v48 = v47 + 1;
          sub_1958E5C((a1 + 24), v47 + 1);
          *(*(a1 + 32) + 4 * v47) = v43;
        }

        else
        {
          *(*(a1 + 32) + 4 * v47) = v43;
          v48 = v47 + 1;
        }

        *(a1 + 24) = v48;
      }

      v42 = v71;
      if (*a3 <= v71 || *v71 != 648)
      {
        goto LABEL_131;
      }
    }
  }

  if (v14 == 34)
  {
    if (v10 != 16)
    {
      goto LABEL_123;
    }

    v54 = v9 + 1;
    v53 = *v9;
    if (v53 < 0)
    {
      v55 = *v54;
      v53 = (v55 << 7) + v53 - 128;
      if (v55 < 0)
      {
        v71 = sub_19587DC(v9, v53);
        if (!v71)
        {
          goto LABEL_139;
        }

        goto LABEL_100;
      }

      v54 = v9 + 2;
    }

    v71 = v54;
LABEL_100:
    if ((v53 - 1) > 1)
    {
      sub_1355ED4();
    }

    else
    {
      *(a1 + 16) |= 0x40u;
      *(a1 + 76) = v53;
    }

    goto LABEL_131;
  }

  if (v14 == 35 && v10 == 26)
  {
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 40);
    if (!v20)
    {
      v21 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v8)
      {
        v21 = *v21;
      }

      v20 = sub_13550F8(v21);
      *(a1 + 40) = v20;
      v9 = v71;
    }

    v22 = sub_22001A0(a3, v20, v9);
    goto LABEL_130;
  }

LABEL_123:
  if (v10)
  {
    v69 = (v10 & 7) == 4;
  }

  else
  {
    v69 = 1;
  }

  if (!v69)
  {
    if (*v8)
    {
      v70 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v70 = sub_11F1920((a1 + 8));
      v9 = v71;
    }

    v22 = sub_1952690(v10, v70, v9, a3);
    goto LABEL_130;
  }

  if (v9)
  {
    a3[10].i32[0] = v10 - 1;
  }

  else
  {
LABEL_139:
    v71 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v71;
}

char *sub_13542D4(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 48);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 56);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 64);
    *v11 = 24;
    v11[1] = v15;
    v11 += 2;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 68);
    *v11 = 32;
    v11[1] = v17;
    if (v17 > 0x7F)
    {
      v11[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v11[2] = v17 >> 7;
      v16 = v11 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v11[2];
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
      v16 = v11 + 2;
    }
  }

  else
  {
    v16 = v11;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 80);
    *v16 = 424;
    v16[2] = v22;
    if (v22 > 0x7F)
    {
      v16[2] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[3] = v22 >> 7;
      v21 = v16 + 4;
      if (v22 >= 0x4000)
      {
        LOBYTE(v16) = v16[3];
        do
        {
          *(v21 - 1) = v16 | 0x80;
          v16 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v16 + 3;
    }
  }

  else
  {
    v21 = v16;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 84);
    *v21 = 504;
    v21[2] = v26;
    if (v26 > 0x7F)
    {
      v21[2] = v26 | 0x80;
      v27 = v26 >> 7;
      v21[3] = v26 >> 7;
      v25 = v21 + 4;
      if (v26 >= 0x4000)
      {
        LOBYTE(v28) = v21[3];
        do
        {
          *(v25 - 1) = v28 | 0x80;
          v28 = v27 >> 7;
          *v25++ = v27 >> 7;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v25 = v21 + 3;
    }
  }

  else
  {
    v25 = v21;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v31 = *(a1 + 72);
    *v25 = 640;
    v25[2] = v31;
    if (v31 > 0x7F)
    {
      v25[2] = v31 | 0x80;
      v32 = v31 >> 7;
      v25[3] = v31 >> 7;
      v30 = v25 + 4;
      if (v31 >= 0x4000)
      {
        LOBYTE(v25) = v25[3];
        do
        {
          *(v30 - 1) = v25 | 0x80;
          v25 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v25 + 3;
    }
  }

  else
  {
    v30 = v25;
  }

  v34 = *(a1 + 24);
  if (v34 < 1)
  {
    v37 = v30;
  }

  else
  {
    for (i = 0; i != v34; ++i)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v36 = *(*(a1 + 32) + 4 * i);
      *v30 = 648;
      v30[2] = v36;
      if (v36 > 0x7F)
      {
        v30[2] = v36 | 0x80;
        v38 = v36 >> 7;
        v30[3] = v36 >> 7;
        v37 = v30 + 4;
        if (v36 >= 0x4000)
        {
          LOBYTE(v39) = v30[3];
          do
          {
            *(v37 - 1) = v39 | 0x80;
            v39 = v38 >> 7;
            *v37++ = v38 >> 7;
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
        }
      }

      else
      {
        v37 = v30 + 3;
      }

      v30 = v37;
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v42 = *(a1 + 76);
    *v37 = 656;
    v37[2] = v42;
    if (v42 > 0x7F)
    {
      v37[2] = v42 | 0x80;
      v43 = v42 >> 7;
      v37[3] = v42 >> 7;
      v41 = v37 + 4;
      if (v42 >= 0x4000)
      {
        LOBYTE(v37) = v37[3];
        do
        {
          *(v41 - 1) = v37 | 0x80;
          v37 = (v43 >> 7);
          *v41++ = v43 >> 7;
          v44 = v43 >> 14;
          v43 >>= 7;
        }

        while (v44);
      }
    }

    else
    {
      v41 = v37 + 3;
    }
  }

  else
  {
    v41 = v37;
  }

  if (v5)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v45 = *(a1 + 40);
    *v41 = 666;
    v46 = *(v45 + 20);
    v41[2] = v46;
    if (v46 > 0x7F)
    {
      v47 = sub_19575D0(v46, v41 + 2);
    }

    else
    {
      v47 = v41 + 3;
    }

    v41 = sub_13515B0(v45, v47, a3);
  }

  v48 = *(a1 + 8);
  if ((v48 & 1) == 0)
  {
    return v41;
  }

  v50 = v48 & 0xFFFFFFFFFFFFFFFCLL;
  v51 = *(v50 + 31);
  if (v51 < 0)
  {
    v52 = *(v50 + 8);
    v51 = *(v50 + 16);
  }

  else
  {
    v52 = (v50 + 8);
  }

  if ((*a3 - v41) >= v51)
  {
    v53 = v51;
    memcpy(v41, v52, v51);
    v41 += v53;
    return v41;
  }

  return sub_1957130(a3, v52, v51, v41);
}

unint64_t sub_135486C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) == 0)
  {
    v2 = 0;
    if ((v1 & 4) == 0)
    {
      return v2;
    }

    goto LABEL_5;
  }

  v2 = ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 4) != 0)
  {
LABEL_5:
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_13548CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 6) != 0)
  {
    v3 = sub_135486C(a1);
  }

  else
  {
    v3 = ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 32) + 4 * v5);
      if (v7 < 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      }

      v6 += v8;
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = v3 + 2 * v4 + v6;
  if (v2)
  {
    v10 = sub_1351698(*(a1 + 40));
    v9 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v2 & 0xF8) == 0)
  {
    goto LABEL_19;
  }

  v9 += (v2 >> 2) & 2;
  if ((v2 & 0x10) != 0)
  {
    v11 = *(a1 + 68);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v12;
    if ((v2 & 0x20) == 0)
    {
LABEL_17:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(a1 + 72);
  if (v13 < 0)
  {
    v14 = 12;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v9 += v14;
  if ((v2 & 0x40) != 0)
  {
LABEL_29:
    v15 = *(a1 + 76);
    if (v15 < 0)
    {
      v16 = 12;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v9 += v16;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_33;
    }

LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_18:
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_33:
  v17 = *(a1 + 80);
  if (v17 < 0)
  {
    v18 = 12;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v9 += v18;
  if ((v2 & 0x100) != 0)
  {
LABEL_37:
    v19 = *(a1 + 84);
    if (v19 < 0)
    {
      v20 = 12;
    }

    else
    {
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v9 += v20;
  }

LABEL_41:
  v21 = *(a1 + 8);
  if (v21)
  {
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v9 += v24;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_1354B2C(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 16);
  if (v8)
  {
    if (v8)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 40);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_13550F8(v13);
        *(a1 + 40) = v11;
      }

      if (*(a2 + 40))
      {
        v14 = *(a2 + 40);
      }

      else
      {
        v14 = &off_276C1A0;
      }

      sub_12F5A34(v11, v14);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_29;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 48) = *(a2 + 48);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(a1 + 56) = *(a2 + 56);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(a1 + 64) = *(a2 + 64);
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 68) = *(a2 + 68);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(a1 + 72) = *(a2 + 72);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v8;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_13;
    }

LABEL_33:
    *(a1 + 76) = *(a2 + 76);
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v8 & 0x100) != 0)
  {
    v9 = *(a2 + 84);
    *(a1 + 16) |= 0x100u;
    *(a1 + 84) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

double sub_1354CE4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D6B08;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

double sub_1354D68(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D6B88;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_1354DE8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D6C08;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

uint64_t sub_1354E68(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D6C88;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

double sub_1354EF0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D6D08;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_1354F70(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D6D88;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_1354FF0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D6E08;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_1355070(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D6E88;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_13550F8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D6F08;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

double sub_135517C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1351784(v2, a1, 0);
}

double sub_13551DC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D7008;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *&result = 0x100000001;
  *(v2 + 76) = 0x100000001;
  *(v2 + 84) = 1;
  return result;
}

void sub_1355704(void *a1)
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
          sub_134C0C8(*v3);
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

void sub_1355788(void *a1)
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
          sub_13509C0(*v3);
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

void sub_135580C(void *a1)
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
          sub_134CE44(*v3);
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

void sub_1355890(void *a1)
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
          sub_134DD54(*v3);
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

void sub_1355914(void *a1)
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
          sub_134E798(*v3);
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

void sub_1355998(void *a1)
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
          sub_134F308(*v3);
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

void sub_1355A1C(void *a1)
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
          sub_134FE6C(*v3);
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

void sub_1355AA0(uint64_t **a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_1354D68(v9);
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
      sub_1355B1C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1355B2C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1355070(v9);
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
      sub_1355BA8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1355BB8(uint64_t **a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_1354DE8(v9);
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
      sub_1355C34(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1355C44(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1354E68(v9);
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
      sub_1355CC0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1355CD0(uint64_t **a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_1354EF0(v9);
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
      sub_1355B1C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1355D4C(uint64_t **a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_1354F70(v9);
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
      sub_1355B1C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1355DC8(uint64_t **a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_1354FF0(v9);
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
      sub_1355E44(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1355E54()
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

  sub_19586BC(32, v0, v3);
}

void sub_1355E94()
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

  sub_19586BC(31, v0, v3);
}

void sub_1355ED4()
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

  sub_19586BC(34, v0, v3);
}

void sub_1355F14()
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

  sub_19586BC(33, v0, v3);
}

char *sub_1355F54(void *a1, int a2, const void **a3, char *a4)
{
  v4 = *(a3 + 23);
  if (v4 < 0)
  {
    v4 = a3[1];
    if (v4 > 127)
    {
      goto LABEL_21;
    }
  }

  v5 = 8 * a2;
  v6 = 1;
  v7 = 2;
  v8 = 3;
  v9 = 4;
  if ((8 * a2) >> 28)
  {
    v9 = 5;
  }

  if (v5 >= 0x200000)
  {
    v8 = v9;
  }

  if (v5 >= 0x4000)
  {
    v7 = v8;
  }

  if (v5 >= 0x80)
  {
    v6 = v7;
  }

  if ((*a1 + ~&a4[v6] + 16) < v4)
  {
LABEL_21:

    return sub_1957480(a1, a2, a3, a4);
  }

  else
  {
    *a4 = v5 | 2;
    if (v5 > 0x7F)
    {
      *a4 = v5 | 0x82;
      v11 = v5 >> 7;
      a4[1] = v5 >> 7;
      v10 = a4 + 2;
      if (v5 >= 0x4000)
      {
        LOBYTE(v12) = a4[1];
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v10++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v10 = a4 + 1;
    }

    *v10 = v4;
    v14 = v10 + 1;
    if (*(a3 + 23) >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    memcpy(v14, v15, v4);
    return &v14[v4];
  }
}

BOOL sub_1356070(int a1)
{
  result = 1;
  if ((a1 - 20) > 0x30 || ((1 << (a1 - 20)) & 0x1FFFFFEBFFFFFLL) == 0)
  {
    return (a1 + 1) < 0x13;
  }

  return result;
}

uint64_t sub_13560E4(uint64_t a1)
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

void sub_135619C(uint64_t a1)
{
  sub_13560E4(a1);

  operator delete();
}

uint64_t sub_13561D4(uint64_t a1)
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

uint64_t sub_1356250(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_13563D0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_13564B8(uint64_t a1)
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

uint64_t sub_13565A4(uint64_t a1)
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

  if (a1 != &off_276C348)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1358DF8(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_135CD34(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_135667C(uint64_t a1)
{
  sub_13565A4(a1);

  operator delete();
}

uint64_t sub_13566B4(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1356738(*(result + 40));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1356904(*(v1 + 48));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 56) = 0xFFFFFFFF00000000;
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

uint64_t sub_1356738(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_1365AD0(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_13586B4(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 104);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 112) + 8);
    do
    {
      v11 = *v10++;
      result = sub_13668A4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_23;
  }

  if (v12)
  {
    v17 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v17 + 23) < 0)
    {
      **v17 = 0;
      *(v17 + 8) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v17 = 0;
      *(v17 + 23) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_16:
    if ((v12 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

  if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_39:
  result = sub_1359064(*(a1 + 128));
  if ((v12 & 4) == 0)
  {
LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = sub_1359188(*(a1 + 136));
  if ((v12 & 8) == 0)
  {
LABEL_18:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = sub_13591F8(*(a1 + 144));
  if ((v12 & 0x10) == 0)
  {
LABEL_19:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_43:
    result = sub_13593CC(*(a1 + 160));
    if ((v12 & 0x40) == 0)
    {
LABEL_21:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_42:
  result = sub_13592D0(*(a1 + 152));
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_20:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_44:
  result = sub_13593F4(*(a1 + 168));
  if ((v12 & 0x80) != 0)
  {
LABEL_22:
    result = sub_1359614(*(a1 + 176));
  }

LABEL_23:
  if ((v12 & 0x300) != 0)
  {
    if ((v12 & 0x100) != 0)
    {
      result = sub_1359700(*(a1 + 184));
    }

    if ((v12 & 0x200) != 0)
    {
      v13 = *(a1 + 192);
      v14 = *(v13 + 8);
      result = v13 + 8;
      *(result + 18) = 0;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v14)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v12 & 0xC00) != 0)
  {
    *(a1 + 204) = 0;
    *(a1 + 200) = 0;
  }

  v16 = *(a1 + 8);
  v15 = a1 + 8;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_1957EA8(v15);
  }

  return result;
}

uint64_t sub_1356904(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1368A08(v4);
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
      result = sub_17545D4(v7);
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
      result = sub_1758FF4(v10);
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
      result = sub_1364010(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      result = sub_136309C(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 160) + 8);
    do
    {
      v19 = *v18++;
      result = sub_135BAE8(v19);
      --v17;
    }

    while (v17);
    *(v1 + 152) = 0;
  }

  v20 = *(v1 + 16);
  if (!v20)
  {
    goto LABEL_35;
  }

  if (v20)
  {
    v23 = *(v1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v23 + 23) < 0)
    {
      **v23 = 0;
      *(v23 + 8) = 0;
      if ((v20 & 2) != 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      *v23 = 0;
      *(v23 + 23) = 0;
      if ((v20 & 2) != 0)
      {
        goto LABEL_65;
      }
    }

LABEL_28:
    if ((v20 & 4) == 0)
    {
      goto LABEL_29;
    }

LABEL_69:
    v25 = *(v1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v25 + 23) < 0)
    {
      **v25 = 0;
      *(v25 + 8) = 0;
      if ((v20 & 8) != 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      *v25 = 0;
      *(v25 + 23) = 0;
      if ((v20 & 8) != 0)
      {
        goto LABEL_73;
      }
    }

LABEL_30:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

  if ((v20 & 2) == 0)
  {
    goto LABEL_28;
  }

LABEL_65:
  v24 = *(v1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v24 + 23) < 0)
  {
    **v24 = 0;
    *(v24 + 8) = 0;
    if ((v20 & 4) != 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    *v24 = 0;
    *(v24 + 23) = 0;
    if ((v20 & 4) != 0)
    {
      goto LABEL_69;
    }
  }

LABEL_29:
  if ((v20 & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_73:
  result = sub_16EE0BC(*(v1 + 192));
  if ((v20 & 0x10) == 0)
  {
LABEL_31:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_75:
    result = sub_13592D0(*(v1 + 208));
    if ((v20 & 0x40) == 0)
    {
LABEL_33:
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_76;
  }

LABEL_74:
  result = sub_152BAD4(*(v1 + 200));
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_75;
  }

LABEL_32:
  if ((v20 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_76:
  result = sub_13593F4(*(v1 + 216));
  if ((v20 & 0x80) != 0)
  {
LABEL_34:
    result = sub_1835AE0(*(v1 + 224));
  }

LABEL_35:
  if ((v20 & 0xFF00) == 0)
  {
    goto LABEL_45;
  }

  if ((v20 & 0x100) != 0)
  {
    result = sub_135D084(*(v1 + 232));
    if ((v20 & 0x200) == 0)
    {
LABEL_38:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_58;
    }
  }

  else if ((v20 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  result = sub_17DB104(*(v1 + 240));
  if ((v20 & 0x400) == 0)
  {
LABEL_39:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = sub_135BAE8(*(v1 + 248));
  if ((v20 & 0x800) == 0)
  {
LABEL_40:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = sub_13F1C38(*(v1 + 256));
  if ((v20 & 0x1000) == 0)
  {
LABEL_41:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = sub_135D104(*(v1 + 264));
  if ((v20 & 0x2000) == 0)
  {
LABEL_42:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = sub_15529A4(*(v1 + 272));
  if ((v20 & 0x4000) == 0)
  {
LABEL_43:
    if ((v20 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_62:
  result = sub_135D1EC(*(v1 + 280));
  if ((v20 & 0x8000) != 0)
  {
LABEL_44:
    result = sub_135D254(*(v1 + 288));
  }

LABEL_45:
  if ((v20 & 0x10000) != 0)
  {
    result = sub_135D2B8(*(v1 + 296));
  }

  if ((v20 & 0x3E0000) != 0)
  {
    *(v1 + 304) = 0;
    *(v1 + 312) = 0;
    *(v1 + 320) = 0;
    *(v1 + 328) = 0xFFFFFFFF00000000;
  }

  v22 = *(v1 + 8);
  v21 = v1 + 8;
  *(v21 + 8) = 0;
  if (v22)
  {

    return sub_1957EA8(v21);
  }

  return result;
}

char *sub_1356BEC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v42 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, &v42, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = v42 + 1;
    v10 = *v42;
    if (*v42 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(v42, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = v42 + 2;
      }
    }

    v42 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 > 2)
    {
      break;
    }

    if (v14 != 1)
    {
      if (v14 != 2)
      {
        goto LABEL_61;
      }

      if (v10 != 16)
      {
        if (v10 == 18)
        {
          *&v43 = a1 + 24;
          *(&v43 + 1) = sub_13560C0;
          v44 = a1 + 8;
          v45 = 2;
          v18 = sub_1216588(a3, v9, &v43, v5);
          goto LABEL_68;
        }

        goto LABEL_61;
      }

      v19 = v9 - 1;
      while (2)
      {
        v42 = v19 + 1;
        v20 = v19[1];
        v21 = v19 + 2;
        if (v20 < 0)
        {
          v22 = *v21;
          v23 = (v22 << 7) + v20;
          LODWORD(v20) = v23 - 128;
          if ((v22 & 0x80000000) == 0)
          {
            v21 = v19 + 3;
            goto LABEL_25;
          }

          v42 = sub_19587DC((v19 + 1), (v23 - 128));
          if (!v42)
          {
            goto LABEL_75;
          }

          LODWORD(v20) = v26;
        }

        else
        {
LABEL_25:
          v42 = v21;
        }

        if (v20 > 0x3C)
        {
          sub_12E8418();
        }

        else
        {
          v24 = *(a1 + 24);
          if (v24 == *(a1 + 28))
          {
            v25 = v24 + 1;
            sub_1958E5C((a1 + 24), v24 + 1);
            *(*(a1 + 32) + 4 * v24) = v20;
          }

          else
          {
            *(*(a1 + 32) + 4 * v24) = v20;
            v25 = v24 + 1;
          }

          *(a1 + 24) = v25;
        }

        v19 = v42;
        if (*a3 <= v42 || *v42 != 16)
        {
          goto LABEL_69;
        }

        continue;
      }
    }

    if (v10 != 8)
    {
      goto LABEL_61;
    }

    v6 |= 4u;
    v34 = v9 + 1;
    v35 = *v9;
    if (*v9 < 0)
    {
      v36 = *v34;
      v35 = v35 + (v36 << 7) - 128;
      if (v36 < 0)
      {
        v38 = sub_1958770(v9, v35);
        v42 = v38;
        *(a1 + 56) = v39;
        if (!v38)
        {
          goto LABEL_75;
        }

        goto LABEL_69;
      }

      v34 = v9 + 2;
    }

    v42 = v34;
    *(a1 + 56) = v35;
LABEL_69:
    if (sub_195ADC0(a3, &v42, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v14 == 3)
  {
    if (v10 != 24)
    {
      goto LABEL_61;
    }

    v27 = v9 + 1;
    v28 = *v9;
    if (v28 < 0)
    {
      v29 = *v27;
      v30 = (v29 << 7) + v28;
      LODWORD(v28) = v30 - 128;
      if (v29 < 0)
      {
        v42 = sub_19587DC(v9, (v30 - 128));
        if (!v42)
        {
          goto LABEL_75;
        }

        LODWORD(v28) = v37;
        goto LABEL_42;
      }

      v27 = v9 + 2;
    }

    v42 = v27;
LABEL_42:
    if (sub_1356070(v28))
    {
      *(a1 + 16) |= 8u;
      *(a1 + 60) = v28;
    }

    else
    {
      sub_1313740();
    }

    goto LABEL_69;
  }

  if (v14 == 4)
  {
    if (v10 == 34)
    {
      *(a1 + 16) |= 1u;
      v31 = *(a1 + 40);
      if (!v31)
      {
        v32 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v32 = *v32;
        }

        sub_1379524(v32);
        v31 = v33;
        *(a1 + 40) = v33;
        v9 = v42;
      }

      v18 = sub_2200350(a3, v31, v9);
LABEL_68:
      v42 = v18;
      if (!v18)
      {
        goto LABEL_75;
      }

      goto LABEL_69;
    }
  }

  else if (v14 == 5 && v10 == 42)
  {
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      v16 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v8)
      {
        v16 = *v16;
      }

      sub_137977C(v16);
      v15 = v17;
      *(a1 + 48) = v17;
      v9 = v42;
    }

    v18 = sub_22003E0(a3, v15, v9);
    goto LABEL_68;
  }

LABEL_61:
  if (v10)
  {
    v40 = (v10 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    if (*v8)
    {
      v41 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v41 = sub_11F1920((a1 + 8));
      v9 = v42;
    }

    v18 = sub_1952690(v10, v41, v9, a3);
    goto LABEL_68;
  }

  if (v9)
  {
    a3[10].i32[0] = v10 - 1;
  }

  else
  {
LABEL_75:
    v42 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v42;
}

char *sub_1356FEC(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
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

      v13 = *(*(a1 + 32) + 4 * i);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v18 = *(a1 + 60);
    *v14 = 24;
    v14[1] = v18;
    if (v18 > 0x7F)
    {
      v14[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v14[2] = v18 >> 7;
      v17 = v14 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v14) = v14[2];
        do
        {
          *(v17 - 1) = v14 | 0x80;
          v14 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v14 + 2;
    }
  }

  else
  {
    v17 = v14;
  }

  if (v5)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v21 = *(a1 + 40);
    *v17 = 34;
    v22 = *(v21 + 20);
    v17[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v17 + 1);
    }

    else
    {
      v23 = v17 + 2;
    }

    v17 = sub_1359F80(v21, v23, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v24 = *(a1 + 48);
    *v17 = 42;
    v25 = *(v24 + 20);
    v17[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v17 + 1);
    }

    else
    {
      v26 = v17 + 2;
    }

    v17 = sub_135E0C8(v24, v26, a3);
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v17;
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

  if ((*a3 - v17) >= v30)
  {
    v32 = v30;
    memcpy(v17, v31, v30);
    v17 += v32;
    return v17;
  }

  return sub_1957130(a3, v31, v30, v17);
}

uint64_t sub_1357318(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4 + v2;
  v8 = *(a1 + 16);
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if (v8)
  {
    v9 = sub_135A67C(*(a1 + 40));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_135ECF4(*(a1 + 48));
  v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v11 = *(a1 + 60);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 += v12;
LABEL_22:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v7 += v16;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_135749C(char *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 24;
    v6 = *(result + 6);
    sub_1958E5C(result + 6, v6 + v4);
    v7 = *(result + 4);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      *(result + 4) |= 1u;
      v10 = *(result + 5);
      if (!v10)
      {
        v11 = *(result + 1);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_1379524(v12);
        *(result + 5) = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_276C3C8;
      }

      sub_1357618(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(result + 4) |= 2u;
    v14 = *(result + 6);
    if (!v14)
    {
      v15 = *(result + 1);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_137977C(v16);
      *(result + 6) = v14;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &off_276C528;
    }

    sub_1357B30(v14, v17);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
LABEL_9:
        *(result + 4) |= v8;
        goto LABEL_10;
      }

LABEL_8:
      *(result + 15) = *(a2 + 60);
      goto LABEL_9;
    }

LABEL_30:
    *(result + 14) = *(a2 + 56);
    if ((v8 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4(result + 1, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1357618(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B3DBC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_13B3E48((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_13B3ED4((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if (!v24)
  {
    goto LABEL_82;
  }

  if (v24)
  {
    v25 = *(a2 + 120);
    *(a1 + 16) |= 1u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 120), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v24 & 2) == 0)
    {
LABEL_16:
      if ((v24 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_16;
  }

  *(a1 + 16) |= 2u;
  v28 = *(a1 + 128);
  if (!v28)
  {
    v29 = *(a1 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    v28 = sub_137A034(v30);
    *(a1 + 128) = v28;
  }

  if (*(a2 + 128))
  {
    v31 = *(a2 + 128);
  }

  else
  {
    v31 = &off_276C918;
  }

  sub_135AA90(v28, v31);
  if ((v24 & 4) == 0)
  {
LABEL_17:
    if ((v24 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_34:
  *(a1 + 16) |= 4u;
  v32 = *(a1 + 136);
  if (!v32)
  {
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    v32 = sub_1379F3C(v34);
    *(a1 + 136) = v32;
  }

  if (*(a2 + 136))
  {
    v35 = *(a2 + 136);
  }

  else
  {
    v35 = &off_276C8F0;
  }

  sub_131B904(v32, v35);
  if ((v24 & 8) == 0)
  {
LABEL_18:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_42:
  *(a1 + 16) |= 8u;
  v36 = *(a1 + 144);
  if (!v36)
  {
    v37 = *(a1 + 8);
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    sub_137A0E4(v38);
    *(a1 + 144) = v36;
  }

  if (*(a2 + 144))
  {
    v39 = *(a2 + 144);
  }

  else
  {
    v39 = &off_276C978;
  }

  sub_135AC94(v36, v39);
  if ((v24 & 0x10) == 0)
  {
LABEL_19:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_58:
    *(a1 + 16) |= 0x20u;
    v44 = *(a1 + 160);
    if (!v44)
    {
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      v44 = sub_137A6D8(v46);
      *(a1 + 160) = v44;
    }

    if (*(a2 + 160))
    {
      v47 = *(a2 + 160);
    }

    else
    {
      v47 = &off_276CB98;
    }

    sub_128F948(v44, v47);
    if ((v24 & 0x40) == 0)
    {
LABEL_21:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_74;
    }

    goto LABEL_66;
  }

LABEL_50:
  *(a1 + 16) |= 0x10u;
  v40 = *(a1 + 152);
  if (!v40)
  {
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    v40 = sub_1379E50(v42);
    *(a1 + 152) = v40;
  }

  if (*(a2 + 152))
  {
    v43 = *(a2 + 152);
  }

  else
  {
    v43 = &off_276C890;
  }

  sub_135AEA4(v40, v43);
  if ((v24 & 0x20) != 0)
  {
    goto LABEL_58;
  }

LABEL_20:
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_66:
  *(a1 + 16) |= 0x40u;
  v48 = *(a1 + 168);
  if (!v48)
  {
    v49 = *(a1 + 8);
    v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (v49)
    {
      v50 = *v50;
    }

    sub_137A440(v50);
    *(a1 + 168) = v48;
  }

  if (*(a2 + 168))
  {
    v51 = *(a2 + 168);
  }

  else
  {
    v51 = &off_276CA20;
  }

  sub_135B098(v48, v51);
  if ((v24 & 0x80) != 0)
  {
LABEL_74:
    *(a1 + 16) |= 0x80u;
    v52 = *(a1 + 176);
    if (!v52)
    {
      v53 = *(a1 + 8);
      v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
      if (v53)
      {
        v54 = *v54;
      }

      v52 = sub_137967C(v54);
      *(a1 + 176) = v52;
    }

    if (*(a2 + 176))
    {
      v55 = *(a2 + 176);
    }

    else
    {
      v55 = &off_276C4D0;
    }

    sub_135B4C0(v52, v55);
  }

LABEL_82:
  if ((v24 & 0xF00) == 0)
  {
    goto LABEL_89;
  }

  if ((v24 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v57 = *(a1 + 184);
    if (!v57)
    {
      v58 = *(a1 + 8);
      v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
      if (v58)
      {
        v59 = *v59;
      }

      v57 = sub_1379704(v59);
      *(a1 + 184) = v57;
    }

    if (*(a2 + 184))
    {
      v60 = *(a2 + 184);
    }

    else
    {
      v60 = &off_276C508;
    }

    sub_135B60C(v57, v60);
    if ((v24 & 0x200) == 0)
    {
LABEL_85:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_86;
      }

LABEL_109:
      *(a1 + 200) = *(a2 + 200);
      if ((v24 & 0x800) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }
  }

  else if ((v24 & 0x200) == 0)
  {
    goto LABEL_85;
  }

  *(a1 + 16) |= 0x200u;
  v61 = *(a1 + 192);
  if (!v61)
  {
    v62 = *(a1 + 8);
    v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
    if (v62)
    {
      v63 = *v63;
    }

    v61 = sub_13798CC(v63);
    *(a1 + 192) = v61;
  }

  if (*(a2 + 192))
  {
    v64 = *(a2 + 192);
  }

  else
  {
    v64 = &off_276C6F8;
  }

  sub_135B6B4(v61, v64);
  if ((v24 & 0x400) != 0)
  {
    goto LABEL_109;
  }

LABEL_86:
  if ((v24 & 0x800) != 0)
  {
LABEL_87:
    *(a1 + 204) = *(a2 + 204);
  }

LABEL_88:
  *(a1 + 16) |= v24;
LABEL_89:
  v56 = *(a2 + 8);
  if (v56)
  {

    sub_1957EF4((a1 + 8), (v56 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1357B30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B3F60((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_13B3FEC((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_13B4078((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80), v17);
    v18 = *(a1 + 80) + v14;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_13B4104((a1 + 96), v22, (v21 + 8), v20, **(a1 + 112) - *(a1 + 104));
    v23 = *(a1 + 104) + v20;
    *(a1 + 104) = v23;
    v24 = *(a1 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 128);
  if (v25)
  {
    v26 = *(a2 + 136);
    v27 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B4190((a1 + 120), v27, (v26 + 8), v25, **(a1 + 136) - *(a1 + 128));
    v28 = *(a1 + 128) + v25;
    *(a1 + 128) = v28;
    v29 = *(a1 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 152);
  if (v30)
  {
    v31 = *(a2 + 160);
    v32 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B421C((a1 + 144), v32, (v31 + 8), v30, **(a1 + 160) - *(a1 + 152));
    v33 = *(a1 + 152) + v30;
    *(a1 + 152) = v33;
    v34 = *(a1 + 160);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 16);
  if (!v35)
  {
    goto LABEL_78;
  }

  if (v35)
  {
    v36 = *(a2 + 168);
    *(a1 + 16) |= 1u;
    v37 = *(a1 + 8);
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    sub_194EA1C((a1 + 168), (v36 & 0xFFFFFFFFFFFFFFFELL), v38);
    if ((v35 & 2) == 0)
    {
LABEL_22:
      if ((v35 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }
  }

  else if ((v35 & 2) == 0)
  {
    goto LABEL_22;
  }

  v39 = *(a2 + 176);
  *(a1 + 16) |= 2u;
  v40 = *(a1 + 8);
  v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
  if (v40)
  {
    v41 = *v41;
  }

  sub_194EA1C((a1 + 176), (v39 & 0xFFFFFFFFFFFFFFFELL), v41);
  if ((v35 & 4) == 0)
  {
LABEL_23:
    if ((v35 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_35:
  v42 = *(a2 + 184);
  *(a1 + 16) |= 4u;
  v43 = *(a1 + 8);
  v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
  if (v43)
  {
    v44 = *v44;
  }

  sub_194EA1C((a1 + 184), (v42 & 0xFFFFFFFFFFFFFFFELL), v44);
  if ((v35 & 8) == 0)
  {
LABEL_24:
    if ((v35 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

LABEL_38:
  *(a1 + 16) |= 8u;
  v45 = *(a1 + 192);
  if (!v45)
  {
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    v45 = sub_16F5F38(v47);
    *(a1 + 192) = v45;
  }

  if (*(a2 + 192))
  {
    v48 = *(a2 + 192);
  }

  else
  {
    v48 = &off_277E980;
  }

  sub_121721C(v45, v48);
  if ((v35 & 0x10) == 0)
  {
LABEL_25:
    if ((v35 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_54:
    *(a1 + 16) |= 0x20u;
    v53 = *(a1 + 208);
    if (!v53)
    {
      v54 = *(a1 + 8);
      v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
      if (v54)
      {
        v55 = *v55;
      }

      v53 = sub_1379E50(v55);
      *(a1 + 208) = v53;
    }

    if (*(a2 + 208))
    {
      v56 = *(a2 + 208);
    }

    else
    {
      v56 = &off_276C890;
    }

    sub_135AEA4(v53, v56);
    if ((v35 & 0x40) == 0)
    {
LABEL_27:
      if ((v35 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_70;
    }

    goto LABEL_62;
  }

LABEL_46:
  *(a1 + 16) |= 0x10u;
  v49 = *(a1 + 200);
  if (!v49)
  {
    v50 = *(a1 + 8);
    v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
    if (v50)
    {
      v51 = *v51;
    }

    v49 = sub_1550F20(v51);
    *(a1 + 200) = v49;
  }

  if (*(a2 + 200))
  {
    v52 = *(a2 + 200);
  }

  else
  {
    v52 = &off_2776328;
  }

  sub_152D77C(v49, v52);
  if ((v35 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_26:
  if ((v35 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_62:
  *(a1 + 16) |= 0x40u;
  v57 = *(a1 + 216);
  if (!v57)
  {
    v58 = *(a1 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    sub_137A440(v59);
    *(a1 + 216) = v57;
  }

  if (*(a2 + 216))
  {
    v60 = *(a2 + 216);
  }

  else
  {
    v60 = &off_276CA20;
  }

  sub_135B098(v57, v60);
  if ((v35 & 0x80) != 0)
  {
LABEL_70:
    *(a1 + 16) |= 0x80u;
    v61 = *(a1 + 224);
    if (!v61)
    {
      v62 = *(a1 + 8);
      v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
      if (v62)
      {
        v63 = *v63;
      }

      v61 = sub_18648BC(v63);
      *(a1 + 224) = v61;
    }

    if (*(a2 + 224))
    {
      v64 = *(a2 + 224);
    }

    else
    {
      v64 = &off_27868A0;
    }

    sub_18367AC(v61, v64);
  }

LABEL_78:
  if ((v35 & 0xFF00) == 0)
  {
    goto LABEL_152;
  }

  if ((v35 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v65 = *(a1 + 232);
    if (!v65)
    {
      v66 = *(a1 + 8);
      v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
      if (v66)
      {
        v67 = *v67;
      }

      v65 = sub_1379C4C(v67);
      *(a1 + 232) = v65;
    }

    if (*(a2 + 232))
    {
      v68 = *(a2 + 232);
    }

    else
    {
      v68 = &off_276C7E8;
    }

    sub_135F3B8(v65, v68);
    if ((v35 & 0x200) == 0)
    {
LABEL_81:
      if ((v35 & 0x400) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_104;
    }
  }

  else if ((v35 & 0x200) == 0)
  {
    goto LABEL_81;
  }

  *(a1 + 16) |= 0x200u;
  v69 = *(a1 + 240);
  if (!v69)
  {
    v70 = *(a1 + 8);
    v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
    if (v70)
    {
      v71 = *v71;
    }

    sub_1868ECC(v71);
    *(a1 + 240) = v69;
  }

  if (*(a2 + 240))
  {
    v72 = *(a2 + 240);
  }

  else
  {
    v72 = &off_2787A70;
  }

  sub_17DBC2C(v69, v72);
  if ((v35 & 0x400) == 0)
  {
LABEL_82:
    if ((v35 & 0x800) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(a1 + 16) |= 0x400u;
  v73 = *(a1 + 248);
  if (!v73)
  {
    v74 = *(a1 + 8);
    v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
    if (v74)
    {
      v75 = *v75;
    }

    v73 = sub_13795F4(v75);
    *(a1 + 248) = v73;
  }

  if (*(a2 + 248))
  {
    v76 = *(a2 + 248);
  }

  else
  {
    v76 = &off_276C498;
  }

  sub_135C12C(v73, v76);
  if ((v35 & 0x800) == 0)
  {
LABEL_83:
    if ((v35 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(a1 + 16) |= 0x800u;
  v77 = *(a1 + 256);
  if (!v77)
  {
    v78 = *(a1 + 8);
    v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
    if (v78)
    {
      v79 = *v79;
    }

    v77 = sub_13F6354(v79);
    *(a1 + 256) = v77;
  }

  if (*(a2 + 256))
  {
    v80 = *(a2 + 256);
  }

  else
  {
    v80 = &off_276F418;
  }

  sub_13F2B54(v77, v80);
  if ((v35 & 0x1000) == 0)
  {
LABEL_84:
    if ((v35 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(a1 + 16) |= 0x1000u;
  v81 = *(a1 + 264);
  if (!v81)
  {
    v82 = *(a1 + 8);
    v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
    if (v82)
    {
      v83 = *v83;
    }

    v81 = sub_1379A5C(v83);
    *(a1 + 264) = v81;
  }

  if (*(a2 + 264))
  {
    v84 = *(a2 + 264);
  }

  else
  {
    v84 = &off_276C760;
  }

  sub_135F4B0(v81, v84);
  if ((v35 & 0x2000) == 0)
  {
LABEL_85:
    if ((v35 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(a1 + 16) |= 0x2000u;
  v85 = *(a1 + 272);
  if (!v85)
  {
    v86 = *(a1 + 8);
    v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
    if (v86)
    {
      v87 = *v87;
    }

    v85 = sub_1552C7C(v87);
    *(a1 + 272) = v85;
  }

  if (*(a2 + 272))
  {
    v88 = *(a2 + 272);
  }

  else
  {
    v88 = &off_2777110;
  }

  sub_132DE2C(v85, v88);
  if ((v35 & 0x4000) == 0)
  {
LABEL_86:
    if ((v35 & 0x8000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(a1 + 16) |= 0x4000u;
  v89 = *(a1 + 280);
  if (!v89)
  {
    v90 = *(a1 + 8);
    v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
    if (v90)
    {
      v91 = *v91;
    }

    v89 = sub_137AE34(v91);
    *(a1 + 280) = v89;
  }

  if (*(a2 + 280))
  {
    v92 = *(a2 + 280);
  }

  else
  {
    v92 = &off_276CF20;
  }

  sub_135F5E0(v89, v92);
  if ((v35 & 0x8000) != 0)
  {
LABEL_144:
    *(a1 + 16) |= 0x8000u;
    v93 = *(a1 + 288);
    if (!v93)
    {
      v94 = *(a1 + 8);
      v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
      if (v94)
      {
        v95 = *v95;
      }

      sub_1379948(v95);
      *(a1 + 288) = v93;
    }

    if (*(a2 + 288))
    {
      v96 = *(a2 + 288);
    }

    else
    {
      v96 = &off_276C718;
    }

    sub_135F6C8(v93, v96);
  }

LABEL_152:
  if ((v35 & 0x3F0000) == 0)
  {
    goto LABEL_161;
  }

  if ((v35 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v98 = *(a1 + 296);
    if (!v98)
    {
      v99 = *(a1 + 8);
      v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
      if (v99)
      {
        v100 = *v100;
      }

      sub_1379840(v100);
      *(a1 + 296) = v98;
    }

    if (*(a2 + 296))
    {
      v101 = *(a2 + 296);
    }

    else
    {
      v101 = &off_276C678;
    }

    sub_135F814(v98, v101);
    if ((v35 & 0x20000) == 0)
    {
LABEL_155:
      if ((v35 & 0x40000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_174;
    }
  }

  else if ((v35 & 0x20000) == 0)
  {
    goto LABEL_155;
  }

  *(a1 + 304) = *(a2 + 304);
  if ((v35 & 0x40000) == 0)
  {
LABEL_156:
    if ((v35 & 0x80000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(a1 + 312) = *(a2 + 312);
  if ((v35 & 0x80000) == 0)
  {
LABEL_157:
    if ((v35 & 0x100000) == 0)
    {
      goto LABEL_158;
    }

LABEL_176:
    *(a1 + 328) = *(a2 + 328);
    if ((v35 & 0x200000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_159;
  }

LABEL_175:
  *(a1 + 320) = *(a2 + 320);
  if ((v35 & 0x100000) != 0)
  {
    goto LABEL_176;
  }

LABEL_158:
  if ((v35 & 0x200000) != 0)
  {
LABEL_159:
    *(a1 + 332) = *(a2 + 332);
  }

LABEL_160:
  *(a1 + 16) |= v35;
LABEL_161:
  v97 = *(a2 + 8);
  if (v97)
  {

    sub_1957EF4((a1 + 8), (v97 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1358338(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1358384(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_1358418(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1358384(uint64_t a1)
{
  result = sub_12D45E0(a1 + 72);
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = sub_135B718(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = sub_135B770(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_135B7BC(*(a1 + 144));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_135B830(*(a1 + 152));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x40) == 0)
    {
      return 1;
    }

    result = sub_135B89C(*(a1 + 168));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1358418(uint64_t a1)
{
  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17574A8(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 80);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_175C21C(*(*(a1 + 88) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 128);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = sub_136393C(*(*(a1 + 136) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 152);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = sub_135C2A8(*(*(a1 + 160) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 16);
  if ((v15 & 8) != 0)
  {
    result = sub_16EE510(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x10) != 0)
  {
    result = sub_152DE60(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x20) != 0)
  {
    result = sub_135B830(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x40) != 0)
  {
    result = sub_135B89C(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x80) != 0)
  {
    result = sub_1836CF0(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x400) != 0)
  {
    result = sub_135C2A8(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x800) != 0)
  {
    result = sub_13F2F78(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x4000) != 0)
  {
    v16 = *(a1 + 280);
    if (*(v16 + 16))
    {
      result = sub_137748C(*(v16 + 24));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 16);
    }
  }

  if ((v15 & 0x10000) == 0)
  {
    return 1;
  }

  result = sub_135FB64(*(a1 + 296));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13585B0(uint64_t a1)
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

  if (a1 != &off_276C388)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16E4E08(v6);
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

void sub_135867C(uint64_t a1)
{
  sub_13585B0(a1);

  operator delete();
}

unsigned __int8 *sub_13586B4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_16E4E44(*(result + 4));
    }
  }

LABEL_7:
  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
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

uint64_t sub_1358758(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v8 == 33)
        {
          v20 = *v7;
          v12 = v7 + 8;
          v5 |= 8u;
          *(a1 + 48) = v20;
          goto LABEL_28;
        }
      }

      else if (v11 == 5 && v8 == 41)
      {
        v13 = *v7;
        v12 = v7 + 8;
        v5 |= 0x10u;
        *(a1 + 56) = v13;
LABEL_28:
        *v27 = v12;
        goto LABEL_41;
      }

      goto LABEL_33;
    }

    if (v8 != 26)
    {
      goto LABEL_33;
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

      v16 = sub_16F5828(v18);
      *(a1 + 32) = v16;
      v7 = *v27;
    }

    v19 = sub_21F4D60(a3, v16, v7);
LABEL_40:
    *v27 = v19;
    if (!v19)
    {
      goto LABEL_46;
    }

LABEL_41:
    if (sub_195ADC0(a3, v27, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v23 = sub_194DB04((a1 + 24), v22);
    v19 = sub_1958890(v23, *v27, a3);
    goto LABEL_40;
  }

  if (v11 == 2 && v8 == 17)
  {
    v15 = *v7;
    v12 = v7 + 8;
    v5 |= 4u;
    *(a1 + 40) = v15;
    goto LABEL_28;
  }

LABEL_33:
  if (v8)
  {
    v24 = (v8 & 7) == 4;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v7 = *v27;
    }

    v19 = sub_1952690(v8, v26, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  *v27 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v27;
}

char *sub_1358990(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
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

  v7 = *(a1 + 40);
  *v4 = 17;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 32);
  *v4 = 26;
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
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 48);
  *v4 = 33;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 0x10) != 0)
  {
LABEL_20:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 56);
    *v4 = 41;
    *(v4 + 1) = v12;
    v4 += 9;
  }

LABEL_23:
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

uint64_t sub_1358B84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_17;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = sub_16E51F0(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  v9 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v9 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v9 += 9;
  }

  if ((v2 & 0x10) != 0)
  {
    result = v9 + 9;
  }

  else
  {
    result = v9;
  }

LABEL_17:
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

void sub_1358C88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
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

        goto LABEL_24;
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

      v9 = sub_16F5828(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_277E5E8;
    }

    sub_16E527C(v9, v12);
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
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_8;
    }

LABEL_25:
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

uint64_t sub_1358DB8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1358DF8(void *a1)
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

  sub_1358EA8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B33F0(a1 + 12);
  sub_13B336C(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_13B32E8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1358EA8(uint64_t a1)
{
  v3 = *(a1 + 120);
  result = (a1 + 120);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276C3C8)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      sub_1366DF0(v4);
      operator delete();
    }

    v5 = *(a1 + 136);
    if (v5)
    {
      sub_13662F8(v5);
      operator delete();
    }

    v6 = *(a1 + 144);
    if (v6)
    {
      sub_1367870(v6);
      operator delete();
    }

    v7 = *(a1 + 152);
    if (v7)
    {
      sub_13650D4(v7);
      operator delete();
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      sub_136ED0C(v8);
      operator delete();
    }

    v9 = *(a1 + 168);
    if (v9)
    {
      sub_136B798(v9);
      operator delete();
    }

    v10 = *(a1 + 176);
    if (v10)
    {
      sub_135C304(v10);
      operator delete();
    }

    v11 = *(a1 + 184);
    if (v11)
    {
      sub_135C8D0(v11);
      operator delete();
    }

    result = *(a1 + 192);
    if (result)
    {
      sub_1360A70(result);

      operator delete();
    }
  }

  return result;
}

void sub_135902C(void *a1)
{
  sub_1358DF8(a1);

  operator delete();
}

uint64_t sub_1359064(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_136980C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if (v5)
  {
    v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_25;
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *v9 = 0;
  *(v9 + 23) = 0;
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_25:
  result = sub_16E5B70(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = sub_16E4E44(*(v1 + 72));
  }

LABEL_11:
  if ((v5 & 0x30) != 0)
  {
    *(v1 + 88) = 0;
    *(v1 + 80) = 0;
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

unsigned __int8 *sub_1359188(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16E4E44(*(result + 3));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E4E44(*(v1 + 32));
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

uint64_t sub_13591F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
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
        goto LABEL_18;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    result = sub_14D28E4(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  result = sub_153FDC8(*(result + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_20:
  result = sub_18FA7B4(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_18FDA54(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0x60) != 0)
  {
    *(v1 + 64) = 0;
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