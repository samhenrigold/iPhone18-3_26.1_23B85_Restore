char *sub_1423AB8(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_142359C(v8, v10, a3);
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

uint64_t sub_1423BF8(uint64_t a1)
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
      v7 = sub_1423778(v6);
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

uint64_t **sub_1423CA0(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    result = sub_144BEC8((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
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

uint64_t sub_1423D74(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_144AF10((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1423E38(uint64_t a1)
{
  sub_1423D74(a1);

  operator delete();
}

char *sub_1423E70(char *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14238D8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_1423F58(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = v19 + 1;
          *v28 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_14358E4(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v28;
          }

          v19 = sub_2209E28(a3, v23, v20);
          *v28 = v19;
          if (!v19)
          {
            break;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_39;
          }
        }

LABEL_44:
        *v28 = 0;
        return *v28;
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

        v18 = (a1 + 56);
        goto LABEL_37;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v17 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v17 = *v17;
      }

      v18 = (a1 + 48);
LABEL_37:
      v26 = sub_194DB04(v18, v17);
      v15 = sub_1958890(v26, *v28, a3);
      goto LABEL_38;
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
        return *v28;
      }

      goto LABEL_44;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v28;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_38:
    *v28 = v15;
    if (!v15)
    {
      goto LABEL_44;
    }

LABEL_39:
    ;
  }

  return *v28;
}

char *sub_142416C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
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
      *v4 = 26;
      v10 = *(v9 + 40);
      v4[1] = v10;
      if (v10 > 0x7F)
      {
        v11 = sub_19575D0(v10, v4 + 1);
      }

      else
      {
        v11 = v4 + 2;
      }

      v4 = sub_1423AB8(v9, v11, a3);
    }
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v15)
  {
    v17 = v15;
    memcpy(v4, v16, v15);
    v4 += v17;
    return v4;
  }

  return sub_1957130(a3, v16, v15, v4);
}

uint64_t sub_14242F0(uint64_t a1)
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
      v7 = sub_1423BF8(v6);
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
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v2 += v18;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_142442C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144BF44((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      v13 = *(a2 + 56);
      *(a1 + 16) |= 2u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_194EA1C((a1 + 56), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    }
  }

  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((a1 + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_1424574(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E1488;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  *(a1 + 54) = 0;
  return a1;
}

void sub_14245DC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_142460C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1424688(void *a1)
{
  sub_142460C(a1);

  operator delete();
}

unsigned __int8 *sub_14246C0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if ((*(a1 + 40) & 0x1F) != 0)
  {
    *(a1 + 54) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1424728(uint64_t a1, char *a2, int32x2_t *a3)
{
  v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v42, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v42 + 1;
    v8 = *v42;
    if (*v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v42 + 2;
      }
    }

    v42 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_41;
      }

      v5 |= 8u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_30:
        v42 = v20;
        *(a1 + 60) = v19 != 0;
        goto LABEL_51;
      }

      v32 = sub_19587DC(v7, v19);
      v42 = v32;
      *(a1 + 60) = v33 != 0;
      if (!v32)
      {
        goto LABEL_66;
      }
    }

    else if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_41;
      }

      v5 |= 4u;
      v22 = v7 + 1;
      v23 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v22;
      v23 = v23 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_35:
        v42 = v22;
        *(a1 + 56) = v23;
        goto LABEL_51;
      }

      v34 = sub_1958770(v7, v23);
      v42 = v34;
      *(a1 + 56) = v35;
      if (!v34)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_41;
      }

      v5 |= 0x10u;
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
        v42 = v13;
        *(a1 + 61) = v12 != 0;
        goto LABEL_51;
      }

      v38 = sub_19587DC(v7, v12);
      v42 = v38;
      *(a1 + 61) = v39 != 0;
      if (!v38)
      {
        goto LABEL_66;
      }
    }

LABEL_51:
    if (sub_195ADC0(a3, &v42, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_41;
    }

    v5 |= 1u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_40:
      v42 = v25;
      *(a1 + 48) = v26;
      goto LABEL_51;
    }

    v36 = sub_1958770(v7, v26);
    v42 = v36;
    *(a1 + 48) = v37;
    if (!v36)
    {
      goto LABEL_66;
    }

    goto LABEL_51;
  }

  if (v11 == 2 && v8 == 16)
  {
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
      v42 = v16;
      *(a1 + 52) = v17;
      goto LABEL_51;
    }

    v40 = sub_1958770(v7, v17);
    v42 = v40;
    *(a1 + 52) = v41;
    if (!v40)
    {
      goto LABEL_66;
    }

    goto LABEL_51;
  }

LABEL_41:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    if (v8 - 7600 > 0x18F)
    {
      v30 = *(a1 + 8);
      if (v30)
      {
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v31 = sub_11F1920((a1 + 8));
        v7 = v42;
      }

      v29 = sub_1952690(v8, v31, v7, a3);
    }

    else
    {
      v29 = sub_19525AC((a1 + 16), v8, v7, &off_27706E0, (a1 + 8), a3);
    }

    v42 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    goto LABEL_51;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  v42 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v42;
}

char *sub_1424A9C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if (v5)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 60);
    *v11 = 24;
    v11[1] = v15;
    v11 += 2;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 56);
    *v11 = 40;
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 61);
    *v16 = 56;
    v16[1] = v21;
    v16 += 2;
  }

  if (*(a1 + 26))
  {
    v16 = sub_1953428(a1 + 16, 950, 1000, v16, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v16;
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

  if ((*a3 - v16) >= v25)
  {
    v27 = v25;
    memcpy(v16, v26, v25);
    v16 += v27;
    return v16;
  }

  return sub_1957130(a3, v26, v25, v16);
}

uint64_t sub_1424D60(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x1F) != 0)
  {
    if (v3)
    {
      result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
LABEL_6:
          result += ((v3 >> 3) & 2) + ((v3 >> 2) & 2);
          goto LABEL_7;
        }

LABEL_5:
        result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_6;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    result += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
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

  *(a1 + 44) = result;
  return result;
}

void sub_1424E58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 52) = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 40) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 61) = *(a2 + 61);
      goto LABEL_8;
    }

LABEL_16:
    *(a1 + 60) = *(a2 + 60);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_1424F38(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E1508;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void sub_1424FA0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1424FD0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_142504C(void *a1)
{
  sub_1424FD0(a1);

  operator delete();
}

unsigned __int8 *sub_1425084(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if ((*(a1 + 40) & 3) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_14250E8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 6)
    {
      break;
    }

    if (v8 != 48)
    {
      goto LABEL_19;
    }

    v5 |= 2u;
    v15 = v7 + 1;
    v14 = *v7;
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v16 = *v15;
    v14 = (v16 << 7) + v14 - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_18:
      v25 = v15;
      *(a1 + 56) = v14;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v14);
    v25 = v23;
    *(a1 + 56) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

LABEL_29:
    if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 4 && v8 == 32)
  {
    v5 |= 1u;
    v11 = v7 + 1;
    v12 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    v13 = *v11;
    v12 = v12 + (v13 << 7) - 128;
    if ((v13 & 0x80000000) == 0)
    {
      v11 = v7 + 2;
LABEL_13:
      v25 = v11;
      *(a1 + 48) = v12;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v12);
    v25 = v21;
    *(a1 + 48) = v22;
    if (!v21)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

LABEL_19:
  if (v8)
  {
    v17 = (v8 & 7) == 4;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (v8 - 7600 > 0x18F)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v20 = sub_11F1920((a1 + 8));
        v7 = v25;
      }

      v18 = sub_1952690(v8, v20, v7, a3);
    }

    else
    {
      v18 = sub_19525AC((a1 + 16), v8, v7, &off_2770720, (a1 + 8), a3);
    }

    v25 = v18;
    if (!v18)
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
  *(a1 + 40) |= v5;
  return v25;
}

char *sub_142530C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 48);
    *a2 = 32;
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 56);
    *v6 = 48;
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

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 950, 1000, v11, a3);
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

uint64_t sub_14254E0(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

  *(a1 + 44) = result;
  return result;
}

void sub_1425588(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 40) |= v4;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_1425630(void *a1)
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

void sub_14256A4(void *a1)
{
  sub_1425630(a1);

  operator delete();
}

uint64_t sub_14256DC(uint64_t a1)
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

char *sub_14256F4(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v13 > 2)
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

char *sub_142585C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1425984(uint64_t a1)
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

uint64_t sub_1425A08(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E1608;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void sub_1425A70(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1425AA0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1425B1C(void *a1)
{
  sub_1425AA0(a1);

  operator delete();
}

unsigned __int8 *sub_1425B54(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1425BAC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
  {
    goto LABEL_28;
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
    if (v7 != 8)
    {
      break;
    }

    v12 = v6 + 1;
    v13 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v14 = *v12;
    v13 = v13 + (v14 << 7) - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v12 = v6 + 2;
LABEL_16:
      v20 = v12;
      *(a1 + 48) = v13;
      v5 = 1;
      goto LABEL_21;
    }

    v17 = sub_1958770(v6, v13);
    v20 = v17;
    *(a1 + 48) = v18;
    v5 = 1;
    if (!v17)
    {
      goto LABEL_29;
    }

LABEL_21:
    if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
    {
      goto LABEL_28;
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
    if (v7 - 7600 > 0x18F)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v16 = sub_11F1920((a1 + 8));
        v6 = v20;
      }

      v11 = sub_1952690(v7, v16, v6, a3);
    }

    else
    {
      v11 = sub_19525AC((a1 + 16), v7, v6, &off_2770780, (a1 + 8), a3);
    }

    v20 = v11;
    if (!v11)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_28;
  }

LABEL_29:
  v20 = 0;
LABEL_28:
  *(a1 + 40) |= v5;
  return v20;
}

char *sub_1425D5C(uint64_t a1, char *a2, void *a3)
{
  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *a2 = 8;
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      a2[2] = v6 >> 7;
      v5 = a2 + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = a2[2];
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
      v5 = a2 + 2;
    }
  }

  else
  {
    v5 = a2;
  }

  if (*(a1 + 26))
  {
    v5 = sub_1953428(a1 + 16, 950, 1000, v5, a3);
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

uint64_t sub_1425EA8(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  if (*(a1 + 40))
  {
    result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  *(a1 + 44) = result;
  return result;
}

void sub_1425F24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 48);
    *(a1 + 40) |= 1u;
    *(a1 + 48) = v4;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1425FB8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E1688;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return a1;
}

void sub_1426040(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1426070(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_27707B8)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      sub_1425AA0(v6);
      operator delete();
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      sub_1425AA0(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_142616C(uint64_t a1)
{
  sub_1426070(a1);

  operator delete();
}

unsigned __int8 *sub_14261A4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  v3 = *(a1 + 40);
  if ((v3 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = sub_1425B54(*(a1 + 80));
  if ((v3 & 4) != 0)
  {
LABEL_5:
    result = sub_1425B54(*(a1 + 88));
  }

LABEL_6:
  if ((v3 & 0xF8) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 112) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1426270(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v57 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v57, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v57 + 1);
    v8 = **v57;
    if (**v57 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v57, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v57 + 2);
      }
    }

    *v57 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_92;
        }

        *(a1 + 40) |= 2u;
        v20 = *(a1 + 80);
        if (!v20)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          v20 = sub_1435B5C(v28);
          *(a1 + 80) = v20;
LABEL_50:
          v7 = *v57;
        }
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_92;
        }

        *(a1 + 40) |= 4u;
        v20 = *(a1 + 88);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_1435B5C(v22);
          *(a1 + 88) = v20;
          goto LABEL_50;
        }
      }

      v18 = sub_2209EB8(a3, v20, v7);
      goto LABEL_101;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_92;
      }

      v5 |= 8u;
      v29 = v7 + 1;
      v30 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v31 = *v29;
      v30 = v30 + (v31 << 7) - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v29 = v7 + 2;
LABEL_58:
        *v57 = v29;
        *(a1 + 96) = v30;
        goto LABEL_102;
      }

      v44 = sub_1958770(v7, v30);
      *v57 = v44;
      *(a1 + 96) = v45;
      if (!v44)
      {
        goto LABEL_108;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_92;
      }

      v5 |= 0x10u;
      v35 = v7 + 1;
      v36 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      v37 = *v35;
      v36 = v36 + (v37 << 7) - 128;
      if ((v37 & 0x80000000) == 0)
      {
        v35 = v7 + 2;
LABEL_68:
        *v57 = v35;
        *(a1 + 100) = v36;
        goto LABEL_102;
      }

      v50 = sub_1958770(v7, v36);
      *v57 = v50;
      *(a1 + 100) = v51;
      if (!v50)
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_92;
      }

      v5 |= 0x20u;
      v12 = v7 + 1;
      v13 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      v14 = *v12;
      v13 = v13 + (v14 << 7) - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v12 = v7 + 2;
LABEL_16:
        *v57 = v12;
        *(a1 + 104) = v13;
        goto LABEL_102;
      }

      v48 = sub_1958770(v7, v13);
      *v57 = v48;
      *(a1 + 104) = v49;
      if (!v48)
      {
        goto LABEL_108;
      }
    }

LABEL_102:
    if (sub_195ADC0(a3, v57, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 7)
  {
    if (v11 == 6)
    {
      if (v8 == 50)
      {
        v18 = sub_1958918((a1 + 48), v7, a3);
        goto LABEL_101;
      }

      if (v8 == 48)
      {
        v58 = sub_1211E88(v57);
        sub_194FE98((a1 + 48), &v58);
        if (!*v57)
        {
          goto LABEL_108;
        }

        goto LABEL_102;
      }

      goto LABEL_92;
    }

    if (v11 != 7 || v8 != 56)
    {
      goto LABEL_92;
    }

    v23 = v7 + 1;
    v24 = *v7;
    if ((v24 & 0x8000000000000000) != 0)
    {
      v25 = *v23;
      v26 = (v25 << 7) + v24;
      v24 = (v26 - 128);
      if (v25 < 0)
      {
        *v57 = sub_19587DC(v7, (v26 - 128));
        if (!*v57)
        {
          goto LABEL_108;
        }

        v24 = v43;
        goto LABEL_42;
      }

      v23 = v7 + 2;
    }

    *v57 = v23;
LABEL_42:
    if (v24 < 4 || v24 == 100)
    {
      *(a1 + 40) |= 0x40u;
      *(a1 + 108) = v24;
    }

    else
    {
      v41 = *(a1 + 8);
      if (v41)
      {
        v42 = ((v41 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v42 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(7, v24, v42);
    }

    goto LABEL_102;
  }

  if (v11 == 8)
  {
    if (v8 != 64)
    {
      goto LABEL_92;
    }

    v5 |= 0x80u;
    v32 = v7 + 1;
    v33 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    v34 = *v32;
    v33 = v33 + (v34 << 7) - 128;
    if ((v34 & 0x80000000) == 0)
    {
      v32 = v7 + 2;
LABEL_63:
      *v57 = v32;
      *(a1 + 112) = v33;
      goto LABEL_102;
    }

    v46 = sub_1958770(v7, v33);
    *v57 = v46;
    *(a1 + 112) = v47;
    if (!v46)
    {
      goto LABEL_108;
    }

    goto LABEL_102;
  }

  if (v11 == 12)
  {
    if (v8 != 96)
    {
      goto LABEL_92;
    }

    v5 |= 0x100u;
    v39 = v7 + 1;
    v38 = *v7;
    if ((v38 & 0x8000000000000000) == 0)
    {
      goto LABEL_73;
    }

    v40 = *v39;
    v38 = (v40 << 7) + v38 - 128;
    if ((v40 & 0x80000000) == 0)
    {
      v39 = v7 + 2;
LABEL_73:
      *v57 = v39;
      *(a1 + 120) = v38;
      goto LABEL_102;
    }

    v52 = sub_19587DC(v7, v38);
    *v57 = v52;
    *(a1 + 120) = v53;
    if (!v52)
    {
      goto LABEL_108;
    }

    goto LABEL_102;
  }

  if (v11 == 14 && v8 == 114)
  {
    *(a1 + 40) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 72), v16);
    v18 = sub_1958890(v17, *v57, a3);
LABEL_101:
    *v57 = v18;
    if (!v18)
    {
      goto LABEL_108;
    }

    goto LABEL_102;
  }

LABEL_92:
  if (v8)
  {
    v54 = (v8 & 7) == 4;
  }

  else
  {
    v54 = 1;
  }

  if (!v54)
  {
    if (v8 - 7600 > 0x18F)
    {
      v55 = *(a1 + 8);
      if (v55)
      {
        v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v56 = sub_11F1920((a1 + 8));
        v7 = *v57;
      }

      v18 = sub_1952690(v8, v56, v7, a3);
    }

    else
    {
      v18 = sub_19525AC((a1 + 16), v8, v7, &off_27707B8, (a1 + 8), a3);
    }

    goto LABEL_101;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_108:
  *v57 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v57;
}

char *sub_14267C8(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 88);
    *v4 = 18;
    v12 = *(v11 + 44);
    *(v4 + 1) = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, (v4 + 1));
    }

    else
    {
      v13 = (v4 + 2);
    }

    v4 = sub_1425D5C(v11, v13, a3);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= a2)
  {
    v4 = sub_225EB68(a3, a2);
  }

  v8 = *(a1 + 80);
  *v4 = 10;
  v9 = *(v8 + 44);
  *(v4 + 1) = v9;
  if (v9 > 0x7F)
  {
    v10 = sub_19575D0(v9, (v4 + 1));
  }

  else
  {
    v10 = (v4 + 2);
  }

  v4 = sub_1425D5C(v8, v10, a3);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 8) == 0)
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

  v14 = *(a1 + 96);
  *v4 = 24;
  *(v4 + 1) = v14;
  if (v14 > 0x7F)
  {
    *(v4 + 1) = v14 | 0x80;
    v15 = v14 >> 7;
    *(v4 + 2) = v14 >> 7;
    v7 = (v4 + 3);
    if (v14 >= 0x4000)
    {
      LOBYTE(v4) = *(v4 + 2);
      do
      {
        *(v7 - 1) = v4 | 0x80;
        LODWORD(v4) = v15 >> 7;
        *v7++ = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = (v4 + 2);
  }

LABEL_24:
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 100);
    *v7 = 32;
    v7[1] = v18;
    if (v18 > 0x7F)
    {
      v7[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v7[2] = v18 >> 7;
      v17 = v7 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v17 - 1) = v7 | 0x80;
          LODWORD(v7) = v19 >> 7;
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
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

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 104);
    *v17 = 40;
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
          LODWORD(v17) = v23 >> 7;
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

  v25 = *(a1 + 64);
  if (v25 >= 1)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    *v21 = 50;
    v26 = v21 + 1;
    if (v25 >= 0x80)
    {
      do
      {
        *v26++ = v25 | 0x80;
        v53 = v25 >> 14;
        v25 >>= 7;
      }

      while (v53);
      v21 = v26 - 1;
    }

    v27 = v21 + 2;
    *v26 = v25;
    v28 = *(a1 + 56);
    v29 = &v28[*(a1 + 48)];
    do
    {
      if (*a3 <= v27)
      {
        v27 = sub_225EB68(a3, v27);
      }

      v31 = *v28++;
      v30 = v31;
      *v27 = v31;
      if (v31 > 0x7F)
      {
        *v27 = v30 | 0x80;
        v32 = v30 >> 7;
        v27[1] = v30 >> 7;
        v21 = v27 + 2;
        if (v30 >= 0x4000)
        {
          LOBYTE(v27) = v27[1];
          do
          {
            *(v21 - 1) = v27 | 0x80;
            LODWORD(v27) = v32 >> 7;
            *v21++ = v32 >> 7;
            v33 = v32 >> 14;
            v32 >>= 7;
          }

          while (v33);
        }
      }

      else
      {
        v21 = v27 + 1;
      }

      v27 = v21;
    }

    while (v28 < v29);
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v35 = *(a1 + 108);
    *v21 = 56;
    v21[1] = v35;
    if (v35 > 0x7F)
    {
      v21[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v21[2] = v35 >> 7;
      v34 = v21 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v37) = v21[2];
        do
        {
          *(v34 - 1) = v37 | 0x80;
          v37 = v36 >> 7;
          *v34++ = v36 >> 7;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v34 = v21 + 2;
    }
  }

  else
  {
    v34 = v21;
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v40 = *(a1 + 112);
    *v34 = 64;
    v34[1] = v40;
    if (v40 > 0x7F)
    {
      v34[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v34[2] = v40 >> 7;
      v39 = v34 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v34) = v34[2];
        do
        {
          *(v39 - 1) = v34 | 0x80;
          LODWORD(v34) = v41 >> 7;
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v34 + 2;
    }
  }

  else
  {
    v39 = v34;
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v44 = *(a1 + 120);
    *v39 = 96;
    v39[1] = v44;
    if (v44 > 0x7F)
    {
      v39[1] = v44 | 0x80;
      v45 = v44 >> 7;
      v39[2] = v44 >> 7;
      v43 = v39 + 3;
      if (v44 >= 0x4000)
      {
        LOBYTE(v46) = v39[2];
        do
        {
          *(v43 - 1) = v46 | 0x80;
          v46 = v45 >> 7;
          *v43++ = v45 >> 7;
          v47 = v45 >> 14;
          v45 >>= 7;
        }

        while (v47);
      }
    }

    else
    {
      v43 = v39 + 2;
    }
  }

  else
  {
    v43 = v39;
  }

  if (v6)
  {
    v43 = sub_128AEEC(a3, 14, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v43);
  }

  if (*(a1 + 26))
  {
    v43 = sub_1953428(a1 + 16, 950, 1000, v43, a3);
  }

  v48 = *(a1 + 8);
  if ((v48 & 1) == 0)
  {
    return v43;
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

  if ((*a3 - v43) >= v51)
  {
    v54 = v51;
    memcpy(v43, v52, v51);
    v43 += v54;
    return v43;
  }

  return sub_1957130(a3, v52, v51, v43);
}

uint64_t sub_1426DA8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959E5C((a1 + 48));
  if (v3)
  {
    v4 = v3;
    if ((v3 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v5;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 64) = v4;
  v6 = v2 + v3;
  v7 = *(a1 + 40);
  if (!v7)
  {
    goto LABEL_17;
  }

  if (v7)
  {
    v10 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v6 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 2) == 0)
    {
LABEL_10:
      if ((v7 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_10;
  }

  v13 = sub_1425EA8(*(a1 + 80));
  v6 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 4) == 0)
  {
LABEL_11:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = sub_1425EA8(*(a1 + 88));
  v6 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 8) == 0)
  {
LABEL_12:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v6 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x10) == 0)
  {
LABEL_13:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v6 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 0x40) == 0)
    {
LABEL_15:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_27:
  v6 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_29:
  v15 = *(a1 + 108);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v6 += v16;
  if ((v7 & 0x80) != 0)
  {
LABEL_16:
    v6 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v7 & 0x100) != 0)
  {
    v6 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v17 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v6 += v18;
  }

  *(a1 + 44) = v6;
  return v6;
}

void sub_142701C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = (a1 + 48);
    v6 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v6 + v4);
    v7 = *(a1 + 56);
    *v5 += *(a2 + 48);
    memcpy((v7 + 4 * v6), *(a2 + 56), 4 * *(a2 + 48));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    if (v8)
    {
      v9 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_194EA1C((a1 + 72), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    }

    if ((v8 & 2) != 0)
    {
      *(a1 + 40) |= 2u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_1435B5C(v16);
        *(a1 + 80) = v14;
      }

      if (*(a2 + 80))
      {
        v17 = *(a2 + 80);
      }

      else
      {
        v17 = &off_2770780;
      }

      sub_1425F24(v14, v17);
      if ((v8 & 4) == 0)
      {
LABEL_10:
        if ((v8 & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }
    }

    else if ((v8 & 4) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 40) |= 4u;
    v18 = *(a1 + 88);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1435B5C(v20);
      *(a1 + 88) = v18;
    }

    if (*(a2 + 88))
    {
      v21 = *(a2 + 88);
    }

    else
    {
      v21 = &off_2770780;
    }

    sub_1425F24(v18, v21);
    if ((v8 & 8) == 0)
    {
LABEL_11:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(a1 + 96) = *(a2 + 96);
    if ((v8 & 0x10) == 0)
    {
LABEL_12:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 100) = *(a2 + 100);
    if ((v8 & 0x20) == 0)
    {
LABEL_13:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 104) = *(a2 + 104);
    if ((v8 & 0x40) == 0)
    {
LABEL_14:
      if ((v8 & 0x80) == 0)
      {
LABEL_16:
        *(a1 + 40) |= v8;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_16;
    }

LABEL_42:
    *(a1 + 108) = *(a2 + 108);
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v8 & 0x100) != 0)
  {
    v12 = *(a2 + 120);
    *(a1 + 40) |= 0x100u;
    *(a1 + 120) = v12;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1427218(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) != 0)
    {
      result = sub_195228C(*(a1 + 80) + 16);
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

    result = sub_195228C(*(a1 + 88) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_1427288(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E1708;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = &qword_278E990;
  a1[7] = 0x6400000000;
  return a1;
}

void sub_1427300(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1427330(uint64_t a1)
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
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14273D8(uint64_t a1)
{
  sub_1427330(a1);

  operator delete();
}

unsigned __int8 *sub_1427410(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v3 & 6) != 0)
  {
    *(a1 + 56) = 0x6400000000;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_14274A8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      v18 = v7 + 1;
      v19 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      v20 = *v18;
      v19 = v19 + (v20 << 7) - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v18 = v7 + 2;
LABEL_27:
        *v30 = v18;
        *(a1 + 60) = v19;
        goto LABEL_36;
      }

      v28 = sub_1958770(v7, v19);
      *v30 = v28;
      *(a1 + 60) = v29;
      if (!v28)
      {
        goto LABEL_45;
      }

      goto LABEL_36;
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
    v22 = v7 + 1;
    LODWORD(v21) = *v7;
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    v23 = *v22;
    v21 = v21 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_31:
      *v30 = v22;
      *(a1 + 56) = v21;
      goto LABEL_36;
    }

    v26 = sub_19587DC(v7, v21);
    *v30 = v26;
    *(a1 + 56) = v27;
    if (!v26)
    {
      goto LABEL_45;
    }

LABEL_36:
    if (sub_195ADC0(a3, v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 40) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 48), v16);
    v14 = sub_1958890(v17, *v30, a3);
LABEL_35:
    *v30 = v14;
    if (!v14)
    {
      goto LABEL_45;
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
    if (v8 - 7600 > 0x18F)
    {
      v24 = *(a1 + 8);
      if (v24)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v25 = sub_11F1920((a1 + 8));
        v7 = *v30;
      }

      v14 = sub_1952690(v8, v25, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_2770838, (a1 + 8), a3);
    }

    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_45:
  *v30 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v30;
}

char *sub_1427710(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 60);
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

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 950, 1000, v11, a3);
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

uint64_t sub_1427900(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      result += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    v8 = *(a1 + 56);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v9;
    if ((v3 & 4) != 0)
    {
LABEL_5:
      result += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_6:
  v4 = *(a1 + 8);
  if (v4)
  {
    v10 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 44) = result;
  return result;
}

uint64_t sub_1427A20(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E1788;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 93) = 0;
  *(a1 + 104) = 1;
  return a1;
}

void sub_1427AA0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1427AD0(uint64_t a1)
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
  if (a1 != &off_2770878)
  {
    v6 = *(a1 + 88);
    if (v6)
    {
      sub_1427330(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 72);
  sub_144AF94((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1427BA4(uint64_t a1)
{
  sub_1427AD0(a1);

  operator delete();
}

unsigned __int8 *sub_1427BDC(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_141A60C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  *(a1 + 72) = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    result = sub_1427410(*(a1 + 88));
  }

  if ((v6 & 0xE) != 0)
  {
    *(a1 + 100) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

char *sub_1427C90(uint64_t a1, char *a2, int32x2_t *a3)
{
  v47 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v47, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v47 + 1;
    v8 = *v47;
    if (*v47 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v47, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v47 + 2;
      }
    }

    v47 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_72;
      }

      *(a1 + 40) |= 1u;
      v22 = *(a1 + 88);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_1435C14(v24);
        *(a1 + 88) = v22;
        v7 = v47;
      }

      v25 = sub_2209F48(a3, v22, v7);
LABEL_81:
      v47 = v25;
      if (!v25)
      {
        goto LABEL_88;
      }

      goto LABEL_82;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_72;
      }

      v32 = v7 + 1;
      v33 = *v7;
      if (v33 < 0)
      {
        v34 = *v32;
        v35 = (v34 << 7) + v33;
        LODWORD(v33) = v35 - 128;
        if ((v34 & 0x80000000) == 0)
        {
          v32 = v7 + 2;
          goto LABEL_56;
        }

        v47 = sub_19587DC(v7, (v35 - 128));
        if (!v47)
        {
          goto LABEL_88;
        }

        LODWORD(v33) = v41;
      }

      else
      {
LABEL_56:
        v47 = v32;
      }

      if (sub_144E2A0(v33))
      {
        *(a1 + 40) |= 2u;
        *(a1 + 96) = v33;
      }

      else
      {
        sub_12E8418();
      }

      goto LABEL_82;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_72;
    }

    v5 |= 8u;
    v13 = v7 + 1;
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_18:
      v47 = v13;
      *(a1 + 104) = v14;
      goto LABEL_82;
    }

    v39 = sub_1958770(v7, v14);
    v47 = v39;
    *(a1 + 104) = v40;
    if (!v39)
    {
      goto LABEL_88;
    }

LABEL_82:
    if (sub_195ADC0(a3, &v47, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  switch(v11)
  {
    case 4u:
      if (v8 == 34)
      {
        v26 = v7 - 1;
        while (1)
        {
          v27 = v26 + 1;
          v47 = v26 + 1;
          v28 = *(a1 + 64);
          if (v28 && (v29 = *(a1 + 56), v29 < *v28))
          {
            *(a1 + 56) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            v31 = sub_141C160(*(a1 + 48));
            v30 = sub_19593CC(a1 + 48, v31);
            v27 = v47;
          }

          v26 = sub_2209FD8(a3, v30, v27);
          v47 = v26;
          if (!v26)
          {
            goto LABEL_88;
          }

          if (*a3 <= v26 || *v26 != 34)
          {
            goto LABEL_82;
          }
        }
      }

      break;
    case 5u:
      if (v8 != 40)
      {
        break;
      }

      v5 |= 4u;
      v37 = v7 + 1;
      v36 = *v7;
      if ((v36 & 0x8000000000000000) == 0)
      {
        goto LABEL_63;
      }

      v38 = *v37;
      v36 = (v38 << 7) + v36 - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v37 = v7 + 2;
LABEL_63:
        v47 = v37;
        *(a1 + 100) = v36 != 0;
        goto LABEL_82;
      }

      v42 = sub_19587DC(v7, v36);
      v47 = v42;
      *(a1 + 100) = v43 != 0;
      if (!v42)
      {
        goto LABEL_88;
      }

      goto LABEL_82;
    case 6u:
      if (v8 == 48)
      {
        v16 = v7 - 1;
        while (1)
        {
          v47 = v16 + 1;
          v17 = v16[1];
          if (v16[1] < 0)
          {
            v18 = v17 + (v16[2] << 7);
            v17 = v18 - 128;
            if (v16[2] < 0)
            {
              v16 = sub_1958770((v16 + 1), v18 - 128);
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

          v47 = v16;
          v20 = *(a1 + 72);
          if (v20 == *(a1 + 76))
          {
            v21 = v20 + 1;
            sub_1958E5C((a1 + 72), v20 + 1);
            *(*(a1 + 80) + 4 * v20) = v17;
            v16 = v47;
          }

          else
          {
            *(*(a1 + 80) + 4 * v20) = v17;
            v21 = v20 + 1;
          }

          *(a1 + 72) = v21;
          if (!v16)
          {
            goto LABEL_88;
          }

          if (*a3 <= v16 || *v16 != 48)
          {
            goto LABEL_82;
          }
        }
      }

      if (v8 == 50)
      {
        v25 = sub_1958918((a1 + 72), v7, a3);
        goto LABEL_81;
      }

      break;
  }

LABEL_72:
  if (v8)
  {
    v44 = (v8 & 7) == 4;
  }

  else
  {
    v44 = 1;
  }

  if (!v44)
  {
    if (v8 - 7600 > 0x18F)
    {
      v45 = *(a1 + 8);
      if (v45)
      {
        v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v46 = sub_11F1920((a1 + 8));
        v7 = v47;
      }

      v25 = sub_1952690(v8, v46, v7, a3);
    }

    else
    {
      v25 = sub_19525AC((a1 + 16), v8, v7, &off_2770878, (a1 + 8), a3);
    }

    goto LABEL_81;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_88:
  v47 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v47;
}

char *sub_1428128(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 88);
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

    a2 = sub_1427710(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 96);
    *a2 = 16;
    a2[1] = v10;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      a2[2] = v10 >> 7;
      v9 = a2 + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = a2[2];
        do
        {
          *(v9 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v9++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v9 = a2 + 2;
    }
  }

  else
  {
    v9 = a2;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 104);
    *v9 = 24;
    v9[1] = v15;
    if (v15 > 0x7F)
    {
      v9[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v9[2] = v15 >> 7;
      v14 = v9 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v9) = v9[2];
        do
        {
          *(v14 - 1) = v9 | 0x80;
          LODWORD(v9) = v16 >> 7;
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v9 + 2;
    }
  }

  else
  {
    v14 = v9;
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v20 = *(*(a1 + 64) + 8 * i + 8);
      *v14 = 34;
      v21 = *(v20 + 44);
      v14[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v14 + 1);
      }

      else
      {
        v22 = v14 + 2;
      }

      v14 = sub_141AA28(v20, v22, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v23 = *(a1 + 100);
    *v14 = 40;
    v14[1] = v23;
    v14 += 2;
  }

  v24 = *(a1 + 72);
  if (v24 < 1)
  {
    v27 = v14;
  }

  else
  {
    for (j = 0; j != v24; ++j)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v26 = *(*(a1 + 80) + 4 * j);
      *v14 = 48;
      v14[1] = v26;
      if (v26 > 0x7F)
      {
        v14[1] = v26 | 0x80;
        v28 = v26 >> 7;
        v14[2] = v26 >> 7;
        v27 = v14 + 3;
        if (v26 >= 0x4000)
        {
          LOBYTE(v14) = v14[2];
          do
          {
            *(v27 - 1) = v14 | 0x80;
            LODWORD(v14) = v28 >> 7;
            *v27++ = v28 >> 7;
            v29 = v28 >> 14;
            v28 >>= 7;
          }

          while (v29);
        }
      }

      else
      {
        v27 = v14 + 2;
      }

      v14 = v27;
    }
  }

  if (*(a1 + 26))
  {
    v27 = sub_1953428(a1 + 16, 950, 1000, v27, a3);
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v27;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  if ((*a3 - v27) >= v33)
  {
    v35 = v33;
    memcpy(v27, v34, v33);
    v27 += v35;
    return v27;
  }

  return sub_1957130(a3, v34, v33, v27);
}

uint64_t sub_14284DC(uint64_t a1)
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
      v9 = sub_141ACC4(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = sub_1959E5C((a1 + 72)) + *(a1 + 72) + v4;
  v11 = *(a1 + 40);
  if ((v11 & 0xF) != 0)
  {
    if (v11)
    {
      v12 = sub_1427900(*(a1 + 88));
      v10 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v11 & 2) != 0)
    {
      v13 = *(a1 + 96);
      if (v13 < 0)
      {
        v14 = 11;
      }

      else
      {
        v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v10 += v14;
    }

    v10 += (v11 >> 1) & 2;
    if ((v11 & 8) != 0)
    {
      v10 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v10 += v18;
  }

  *(a1 + 44) = v10;
  return v10;
}

void sub_1428640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144BFD0((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v10 + v9);
    v11 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v11 + 4 * v10), *(a2 + 80), 4 * *(a2 + 72));
  }

  v12 = *(a2 + 40);
  if ((v12 & 0xF) != 0)
  {
    if (v12)
    {
      *(a1 + 40) |= 1u;
      v14 = *(a1 + 88);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_1435C14(v16);
        *(a1 + 88) = v14;
      }

      if (*(a2 + 88))
      {
        v17 = *(a2 + 88);
      }

      else
      {
        v17 = &off_2770838;
      }

      sub_140BB00(v14, v17);
      if ((v12 & 2) == 0)
      {
LABEL_9:
        if ((v12 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_26;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(a1 + 96) = *(a2 + 96);
    if ((v12 & 4) == 0)
    {
LABEL_10:
      if ((v12 & 8) == 0)
      {
LABEL_12:
        *(a1 + 40) |= v12;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_12;
    }

LABEL_26:
    *(a1 + 100) = *(a2 + 100);
    if ((v12 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  sub_225EA0C(a1 + 16, a2 + 16);
  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14287E4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_195228C(*(*(a1 + 64) + 8 * v3) + 16);
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 88) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_142886C(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E1808;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void sub_14288D0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1428900(uint64_t a1)
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
  if (a1 != &off_27708E8)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1427330(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14289C0(uint64_t a1)
{
  sub_1428900(a1);

  operator delete();
}

unsigned __int8 *sub_14289F8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if (*(a1 + 40))
  {
    result = sub_1427410(*(a1 + 48));
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1428A5C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  if (sub_195ADC0(a3, &v17, a3[11].u32[1]))
  {
    return v17;
  }

  while (1)
  {
    v5 = v17 + 1;
    v6 = *v17;
    if (*v17 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(v17, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = v17 + 2;
      }
    }

    v17 = v5;
    if (v6 != 10)
    {
      break;
    }

    *(a1 + 40) |= 1u;
    v11 = *(a1 + 48);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_1435C14(v13);
      *(a1 + 48) = v11;
      v5 = v17;
    }

    v10 = sub_2209F48(a3, v11, v5);
LABEL_21:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }

    if (sub_195ADC0(a3, &v17, a3[11].u32[1]))
    {
      return v17;
    }
  }

  if (v6)
  {
    v9 = (v6 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (v6 - 7600 > 0x18F)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v15 = sub_11F1920((a1 + 8));
        v5 = v17;
      }

      v10 = sub_1952690(v6, v15, v5, a3);
    }

    else
    {
      v10 = sub_19525AC((a1 + 16), v6, v5, &off_27708E8, (a1 + 8), a3);
    }

    goto LABEL_21;
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return v17;
  }

  return 0;
}

char *sub_1428BEC(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *v4 = 10;
    v7 = *(v6 + 44);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_1427710(v6, v8, a3);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 950, 1000, v4, a3);
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 31);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
  }

  else
  {
    v13 = (v11 + 8);
  }

  if ((*a3 - v4) >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_1428D1C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  if (*(a1 + 40))
  {
    v3 = sub_1427900(*(a1 + 48));
    v2 += v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v2 += v7;
  }

  *(a1 + 44) = v2;
  return v2;
}

void sub_1428DA8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 48);
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 48);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_1435C14(v7);
      *(a1 + 48) = v5;
      v4 = *(a2 + 48);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2770838;
    }

    sub_140BB00(v5, v8);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1428E5C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 48) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_1428EB4(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26E1888;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0x100000000;
  return a1;
}

void sub_1428F28(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1428F58(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144B018(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1428FE0(void *a1)
{
  sub_1428F58(a1);

  operator delete();
}

unsigned __int8 *sub_1429018(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14289F8(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if ((*(a1 + 40) & 3) != 0)
  {
    *(a1 + 72) = 0x100000000;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_14290B8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v33, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v33 + 1;
    v8 = *v33;
    if (*v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v33 + 2;
      }
    }

    v33 = v7;
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
      v33 = v19;
      *(a1 + 76) = v20;
      goto LABEL_44;
    }

    v31 = sub_1958770(v7, v20);
    v33 = v31;
    *(a1 + 76) = v32;
    if (!v31)
    {
      goto LABEL_54;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v33, a3[11].u32[1]))
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

    v15 = v7 + 1;
    v16 = *v7;
    if (v16 < 0)
    {
      v17 = *v15;
      v18 = (v17 << 7) + v16;
      LODWORD(v16) = v18 - 128;
      if (v17 < 0)
      {
        v33 = sub_19587DC(v7, (v18 - 128));
        if (!v33)
        {
          goto LABEL_54;
        }

        LODWORD(v16) = v30;
        goto LABEL_24;
      }

      v15 = v7 + 2;
    }

    v33 = v15;
LABEL_24:
    if (sub_144E2A0(v16))
    {
      *(a1 + 40) |= 1u;
      *(a1 + 72) = v16;
    }

    else
    {
      sub_12E8418();
    }

    goto LABEL_44;
  }

  if (v11 == 1 && v8 == 10)
  {
    v22 = v7 - 1;
    while (1)
    {
      v23 = v22 + 1;
      v33 = v22 + 1;
      v24 = *(a1 + 64);
      if (v24 && (v25 = *(a1 + 56), v25 < *v24))
      {
        *(a1 + 56) = v25 + 1;
        v26 = *&v24[2 * v25 + 2];
      }

      else
      {
        v27 = sub_1435CCC(*(a1 + 48));
        v26 = sub_19593CC(a1 + 48, v27);
        v23 = v33;
      }

      v22 = sub_220A068(a3, v26, v23);
      v33 = v22;
      if (!v22)
      {
        goto LABEL_54;
      }

      if (*a3 <= v22 || *v22 != 10)
      {
        goto LABEL_44;
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
    if (v8 - 7600 > 0x18F)
    {
      v28 = *(a1 + 8);
      if (v28)
      {
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v29 = sub_11F1920((a1 + 8));
        v7 = v33;
      }

      v14 = sub_1952690(v8, v29, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_2770920, (a1 + 8), a3);
    }

    v33 = v14;
    if (!v14)
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  v33 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v33;
}

char *sub_1429394(uint64_t a1, char *a2, unint64_t *a3)
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
      v9 = *(v8 + 44);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_1428BEC(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 72);
    *a2 = 16;
    a2[1] = v13;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      a2[2] = v13 >> 7;
      v12 = (a2 + 3);
      if (v13 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v12 - 1) = a2 | 0x80;
          a2 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = (a2 + 2);
    }
  }

  else
  {
    v12 = a2;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 76);
    *v12 = 24;
    *(v12 + 1) = v17;
    if (v17 > 0x7F)
    {
      *(v12 + 1) = v17 | 0x80;
      v18 = v17 >> 7;
      *(v12 + 2) = v17 >> 7;
      v16 = (v12 + 3);
      if (v17 >= 0x4000)
      {
        LOBYTE(v12) = *(v12 + 2);
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
      v16 = (v12 + 2);
    }
  }

  else
  {
    v16 = v12;
  }

  if (*(a1 + 26))
  {
    v16 = sub_1953428(a1 + 16, 950, 1000, v16, a3);
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

uint64_t sub_1429600(uint64_t a1)
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
      v9 = sub_1428D1C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 72);
      if (v11 < 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v12;
    }

    if ((v10 & 2) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v4 += v16;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1429714(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144C05C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 72) = *(a2 + 72);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 76) = *(a2 + 76);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_142980C(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1428E5C(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

void *sub_1429884(void *a1)
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

void sub_14298F8(void *a1)
{
  sub_1429884(a1);

  operator delete();
}

uint64_t sub_1429930(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
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

char *sub_1429958(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 32) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
    v25 = v21;
    *(a1 + 32) = v22;
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
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
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

char *sub_1429B3C(uint64_t a1, char *__dst, unint64_t *a3)
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

unint64_t sub_1429CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
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

void *sub_1429DA0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144B09C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1429E20(void *a1)
{
  sub_1429DA0(a1);

  operator delete();
}

uint64_t sub_1429E58(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1429930(v4);
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

char *sub_1429ED4(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1435D84(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_220A0F8(a3, v16, v13);
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

char *sub_142A064(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1429B3C(v8, v10, a3);
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

uint64_t sub_142A1A4(uint64_t a1)
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
      v7 = sub_1429CEC(v6);
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

uint64_t **sub_142A24C(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    result = sub_144C0E8((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
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

uint64_t sub_142A320(uint64_t a1)
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

void sub_142A3C0(uint64_t a1)
{
  sub_142A320(a1);

  operator delete();
}

uint64_t sub_142A3F8(uint64_t a1)
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

  if ((v1 & 0x1E) != 0)
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

uint64_t sub_142A44C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_40;
      }

      v5 |= 2u;
      v27 = v7 + 1;
      v26 = *v7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_39:
        *v40 = v27;
        *(a1 + 32) = v26;
        goto LABEL_48;
      }

      v36 = sub_19587DC(v7, v26);
      *v40 = v36;
      *(a1 + 32) = v37;
      if (!v36)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_40;
      }

      v5 |= 4u;
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
        *v40 = v18;
        *(a1 + 40) = v17;
        goto LABEL_48;
      }

      v38 = sub_19587DC(v7, v17);
      *v40 = v38;
      *(a1 + 40) = v39;
      if (!v38)
      {
        goto LABEL_61;
      }
    }

LABEL_48:
    if (sub_195ADC0(a3, v40, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_40;
    }

    v5 |= 8u;
    v20 = v7 + 1;
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_29:
      *v40 = v20;
      *(a1 + 48) = v21;
      goto LABEL_48;
    }

    v32 = sub_1958770(v7, v21);
    *v40 = v32;
    *(a1 + 48) = v33;
    if (!v32)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_40;
    }

    v5 |= 0x10u;
    v23 = v7 + 1;
    v24 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v23;
    v24 = v24 + (v25 << 7) - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_34:
      *v40 = v23;
      *(a1 + 52) = v24;
      goto LABEL_48;
    }

    v34 = sub_1958770(v7, v24);
    *v40 = v34;
    *(a1 + 52) = v35;
    if (!v34)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v12 = *(a1 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v14 = sub_194DB04((a1 + 24), v13);
    v15 = sub_1958890(v14, *v40, a3);
LABEL_47:
    *v40 = v15;
    if (!v15)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

LABEL_40:
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
      v7 = *v40;
    }

    v15 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_47;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  *v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v40;
}

char *sub_142A74C(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 48);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 52);
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
    v19 = sub_128AEEC(a3, 5, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v19);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v19;
  }

  v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = *(v26 + 31);
  if (v27 < 0)
  {
    v28 = *(v26 + 8);
    v27 = *(v26 + 16);
  }

  else
  {
    v28 = (v26 + 8);
  }

  if ((*a3 - v19) >= v27)
  {
    v29 = v27;
    memcpy(v19, v28, v27);
    v19 += v29;
    return v19;
  }

  return sub_1957130(a3, v28, v27, v19);
}

uint64_t sub_142AA28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_14;
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
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_12:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_12;
  }

  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_13:
    v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

void sub_142AB5C(uint64_t a1, uint64_t a2)
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

        goto LABEL_17;
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

      goto LABEL_18;
    }

LABEL_17:
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
      *(a1 + 52) = *(a2 + 52);
      goto LABEL_8;
    }

LABEL_18:
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

uint64_t sub_142AC64(uint64_t a1)
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
  if (a1 != &off_27709D8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_142A320(v6);
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

void sub_142AD1C(uint64_t a1)
{
  sub_142AC64(a1);

  operator delete();
}

uint64_t sub_142AD54(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_142A3F8(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_142ADB0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v18, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v18 + 1;
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v18 + 2;
      }
    }

    v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_1435EA0(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_220A188(a3, v14, v6);
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
          return v18;
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
        v6 = v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
}

char *sub_142AEF4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
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

    v4 = sub_142A74C(v6, v8, a3);
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 31);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
  }

  else
  {
    v13 = (v11 + 8);
  }

  if ((*a3 - v4) >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_142B000(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_142AA28(*(a1 + 24));
    result = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    result = 0;
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

void sub_142B080(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      v5 = sub_1435EA0(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_27709A0;
    }

    sub_142AB5C(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_142B140(void *a1)
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

void sub_142B1B4(void *a1)
{
  sub_142B140(a1);

  operator delete();
}

uint64_t sub_142B1EC(uint64_t a1)
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

char *sub_142B204(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v13 > 4)
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

char *sub_142B36C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_142B494(uint64_t a1)
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

uint64_t sub_142B518(uint64_t a1)
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
  if (a1 != &off_2770A18)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_145847C(v6);
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

void sub_142B5D8(uint64_t a1)
{
  sub_142B518(a1);

  operator delete();
}

uint64_t sub_142B610(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_144E5CC(*(result + 40));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 40) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_142B674(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 40);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        sub_14BAE64(v25);
        v23 = v26;
        *(a1 + 40) = v26;
        v7 = v32;
      }

      v16 = sub_22095B8(a3, v23, v7);
LABEL_40:
      v32 = v16;
      if (!v16)
      {
        goto LABEL_55;
      }

      goto LABEL_46;
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
    v27 = v7 + 1;
    v28 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v29 = *v27;
    v28 = v28 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_45:
      v32 = v27;
      *(a1 + 48) = v28;
      goto LABEL_46;
    }

    v30 = sub_1958770(v7, v28);
    v32 = v30;
    *(a1 + 48) = v31;
    if (!v30)
    {
      goto LABEL_55;
    }

LABEL_46:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v17 = v7 - 1;
    while (1)
    {
      v32 = v17 + 1;
      v18 = v17[1];
      if (v17[1] < 0)
      {
        v19 = v18 + (v17[2] << 7);
        v18 = v19 - 128;
        if (v17[2] < 0)
        {
          v17 = sub_1958770((v17 + 1), v19 - 128);
          v18 = v20;
        }

        else
        {
          v17 += 3;
        }
      }

      else
      {
        v17 += 2;
      }

      v32 = v17;
      v21 = *(a1 + 24);
      if (v21 == *(a1 + 28))
      {
        v22 = v21 + 1;
        sub_1958E5C((a1 + 24), v21 + 1);
        *(*(a1 + 32) + 4 * v21) = v18;
        v17 = v32;
      }

      else
      {
        *(*(a1 + 32) + 4 * v21) = v18;
        v22 = v21 + 1;
      }

      *(a1 + 24) = v22;
      if (!v17)
      {
        goto LABEL_55;
      }

      if (*a3 <= v17 || *v17 != 16)
      {
        goto LABEL_46;
      }
    }
  }

  if (v8 == 18)
  {
    v16 = sub_1958918((a1 + 24), v7, a3);
    goto LABEL_40;
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

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_142B934(uint64_t a1, char *a2, unint64_t *a3)
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
            LODWORD(v6) = v15 >> 7;
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
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v17 = *(a1 + 40);
    *v14 = 26;
    v18 = *(v17 + 20);
    v14[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v14 + 1);
    }

    else
    {
      v19 = v14 + 2;
    }

    v14 = sub_14589F4(v17, v19, a3);
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v14;
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

  if ((*a3 - v14) >= v23)
  {
    v25 = v23;
    memcpy(v14, v24, v23);
    v14 += v25;
    return v14;
  }

  return sub_1957130(a3, v24, v23, v14);
}

uint64_t sub_142BB80(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = sub_1458DB4(*(a1 + 40));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

void sub_142BC48(char *result, uint64_t a2)
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
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      *(result + 4) |= 1u;
      v9 = *(result + 5);
      if (!v9)
      {
        v10 = *(result + 1);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        sub_14BAE64(v11);
        *(result + 5) = v9;
      }

      if (*(a2 + 40))
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = &off_2771738;
      }

      sub_144EF20(v9, v12);
    }

    if ((v8 & 2) != 0)
    {
      *(result + 12) = *(a2 + 48);
    }

    *(result + 4) |= v8;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4(result + 1, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_142BD5C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_142BD9C(void *a1)
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

  sub_142BE20(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_142BE20(void *result)
{
  if (result != &off_2770A50)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_145847C(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_145847C(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_142B140(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_142B518(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_145DD98(v6);
      operator delete();
    }

    result = v1[8];
    if (result)
    {
      sub_145DD98(result);

      operator delete();
    }
  }

  return result;
}

void sub_142BF1C(void *a1)
{
  sub_142BD9C(a1);

  operator delete();
}

uint64_t sub_142BF54(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_14;
  }

  if (v2)
  {
    result = sub_144E5CC(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      v3 = *(v1 + 40);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_144E5CC(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ((v2 & 8) != 0)
  {
    result = sub_142B610(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_12:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_12;
  }

  result = sub_145DDD4(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_13:
    result = sub_145DDD4(*(v1 + 64));
  }

LABEL_14:
  if ((v2 & 0xC0) != 0)
  {
    *(v1 + 76) = 0;
    *(v1 + 72) = 0;
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

char *sub_142C02C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v45, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v45 + 1;
    v8 = *v45;
    if (*v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v45 + 2;
      }
    }

    v45 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 == 4 && v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v20 = *(a1 + 40);
          if (!v20)
          {
            v21 = *(a1 + 8);
            v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if (v21)
            {
              v22 = *v22;
            }

            v20 = sub_1435FA0(v22);
            *(a1 + 40) = v20;
            v7 = v45;
          }

          v23 = sub_220A218(a3, v20, v7);
          goto LABEL_74;
        }

        goto LABEL_67;
      }

      if (v8 != 26)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 2u;
      v13 = *(a1 + 32);
      if (!v13)
      {
        v33 = *(a1 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        sub_14BAE64(v34);
        v13 = v35;
        *(a1 + 32) = v35;
        goto LABEL_58;
      }

LABEL_59:
      v23 = sub_22095B8(a3, v13, v7);
      goto LABEL_74;
    }

    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        sub_14BAE64(v15);
        v13 = v16;
        *(a1 + 24) = v16;
LABEL_58:
        v7 = v45;
        goto LABEL_59;
      }

      goto LABEL_59;
    }

    if (v8 != 8)
    {
      goto LABEL_67;
    }

    v5 |= 0x40u;
    v27 = v7 + 1;
    v28 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v29 = *v27;
    v28 = v28 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_46:
      v45 = v27;
      *(a1 + 72) = v28;
      goto LABEL_75;
    }

    v41 = sub_1958770(v7, v28);
    v45 = v41;
    *(a1 + 72) = v42;
    if (!v41)
    {
      goto LABEL_84;
    }

LABEL_75:
    if (sub_195ADC0(a3, &v45, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 6)
  {
    if (v11 == 7)
    {
      if (v8 != 58)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 0x10u;
      v24 = *(a1 + 56);
      if (!v24)
      {
        v36 = *(a1 + 8);
        v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if (v36)
        {
          v37 = *v37;
        }

        v24 = sub_14BB324(v37);
        *(a1 + 56) = v24;
        goto LABEL_65;
      }
    }

    else
    {
      if (v11 != 8 || v8 != 66)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 0x20u;
      v24 = *(a1 + 64);
      if (!v24)
      {
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_14BB324(v26);
        *(a1 + 64) = v24;
LABEL_65:
        v7 = v45;
      }
    }

    v23 = sub_220A338(a3, v24, v7);
    goto LABEL_74;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_67;
    }

    v5 |= 0x80u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_26:
      v45 = v18;
      *(a1 + 76) = v17 != 0;
      goto LABEL_75;
    }

    v43 = sub_19587DC(v7, v17);
    v45 = v43;
    *(a1 + 76) = v44 != 0;
    if (!v43)
    {
      goto LABEL_84;
    }

    goto LABEL_75;
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 8u;
    v30 = *(a1 + 48);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_143601C(v32);
      *(a1 + 48) = v30;
      v7 = v45;
    }

    v23 = sub_220A2A8(a3, v30, v7);
LABEL_74:
    v45 = v23;
    if (!v23)
    {
      goto LABEL_84;
    }

    goto LABEL_75;
  }

LABEL_67:
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
      v7 = v45;
    }

    v23 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_74;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_84:
  v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v45;
}

char *sub_142C430(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 72);
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

    v6 = sub_14589F4(v11, v13, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
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

  v6 = sub_14589F4(v14, v16, a3);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_30:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v17 = *(a1 + 40);
  *v6 = 34;
  v18 = *(v17 + 20);
  v6[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v6 + 1);
  }

  else
  {
    v19 = v6 + 2;
  }

  v6 = sub_142B36C(v17, v19, a3);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_36:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 48);
  *v6 = 42;
  v21 = *(v20 + 20);
  v6[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v6 + 1);
  }

  else
  {
    v22 = v6 + 2;
  }

  v6 = sub_142B934(v20, v22, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v23 = *(a1 + 76);
  *v6 = 48;
  v6[1] = v23;
  v6 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

LABEL_45:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v24 = *(a1 + 56);
  *v6 = 58;
  v25 = *(v24 + 20);
  v6[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v6 + 1);
  }

  else
  {
    v26 = v6 + 2;
  }

  v6 = sub_145E07C(v24, v26, a3);
  if ((v5 & 0x20) != 0)
  {
LABEL_51:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v27 = *(a1 + 64);
    *v6 = 66;
    v28 = *(v27 + 20);
    v6[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v6 + 1);
    }

    else
    {
      v29 = v6 + 2;
    }

    v6 = sub_145E07C(v27, v29, a3);
  }

LABEL_57:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v6;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  if ((*a3 - v6) >= v33)
  {
    v35 = v33;
    memcpy(v6, v34, v33);
    v6 += v35;
    return v6;
  }

  return sub_1957130(a3, v34, v33, v6);
}

unint64_t sub_142C810(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = sub_1458DB4(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v6 = sub_1458DB4(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v8 = sub_142B494(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v9 = sub_142BB80(*(a1 + 48));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v11 = sub_145E23C(*(a1 + 64));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  v10 = sub_145E23C(*(a1 + 56));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v2 & 0x40) != 0)
  {
LABEL_13:
    v3 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  result = v3 + ((v2 >> 6) & 2);
LABEL_15:
  v7 = *(a1 + 8);
  if (v7)
  {
    v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    result += v13;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_142C9E4(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      *(result + 16) |= 1u;
      v5 = *(result + 24);
      if (!v5)
      {
        v6 = *(result + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        sub_14BAE64(v7);
        *(result + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2771738;
      }

      sub_144EF20(v5, v8);
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

    *(result + 16) |= 2u;
    v9 = *(result + 32);
    if (!v9)
    {
      v10 = *(result + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_14BAE64(v11);
      *(result + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2771738;
    }

    sub_144EF20(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_23:
    *(result + 16) |= 4u;
    v13 = *(result + 40);
    if (!v13)
    {
      v14 = *(result + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_1435FA0(v15);
      *(result + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_27709F8;
    }

    sub_12B9D50(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_39:
      if ((v4 & 0x10) != 0)
      {
        *(result + 16) |= 0x10u;
        v22 = *(result + 56);
        if (!v22)
        {
          v23 = *(result + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_14BB324(v24);
          *(result + 56) = v22;
        }

        if (*(a2 + 56))
        {
          v25 = *(a2 + 56);
        }

        else
        {
          v25 = &off_27719B0;
        }

        sub_145E314(v22, v25);
        if ((v4 & 0x20) == 0)
        {
LABEL_41:
          if ((v4 & 0x40) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_65;
        }
      }

      else if ((v4 & 0x20) == 0)
      {
        goto LABEL_41;
      }

      *(result + 16) |= 0x20u;
      v26 = *(result + 64);
      if (!v26)
      {
        v27 = *(result + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_14BB324(v28);
        *(result + 64) = v26;
      }

      if (*(a2 + 64))
      {
        v29 = *(a2 + 64);
      }

      else
      {
        v29 = &off_27719B0;
      }

      sub_145E314(v26, v29);
      if ((v4 & 0x40) == 0)
      {
LABEL_42:
        if ((v4 & 0x80) == 0)
        {
LABEL_44:
          *(result + 16) |= v4;
          goto LABEL_45;
        }

LABEL_43:
        *(result + 76) = *(a2 + 76);
        goto LABEL_44;
      }

LABEL_65:
      *(result + 72) = *(a2 + 72);
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

LABEL_31:
    *(result + 16) |= 8u;
    v17 = *(result + 48);
    if (!v17)
    {
      v18 = *(result + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_143601C(v19);
      *(result + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_2770A18;
    }

    sub_142BC48(v17, v20);
    goto LABEL_39;
  }

LABEL_45:
  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((result + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_142CC4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F560(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    v4 = *(a1 + 48);
    if (*(v4 + 16))
    {
      result = sub_144F560(*(v4 + 40));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_145E434(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = sub_145E434(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_142CCF0(void *a1)
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

  sub_142CD80(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144B120(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_142CD80(void *result)
{
  if (result != &off_2770AA0)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      sub_142B518(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_145DD98(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_145DD98(v4);
      operator delete();
    }

    result = v1[9];
    if (result)
    {
      sub_145DD98(result);

      operator delete();
    }
  }

  return result;
}

void sub_142CE38(void *a1)
{
  sub_142CCF0(a1);

  operator delete();
}

uint64_t sub_142CE70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_142BF54(v4);
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

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = sub_145DDD4(*(v1 + 56));
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  result = sub_142B610(*(v1 + 48));
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  result = sub_145DDD4(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = sub_145DDD4(*(v1 + 72));
  }

LABEL_11:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}