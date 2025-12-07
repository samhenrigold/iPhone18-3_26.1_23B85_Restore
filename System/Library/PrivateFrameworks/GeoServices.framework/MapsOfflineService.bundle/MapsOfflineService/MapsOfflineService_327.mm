uint64_t sub_13619AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = 0;
    goto LABEL_13;
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
      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
LABEL_10:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v7.i64[0] = 0x200000002;
  v7.i64[1] = 0x200000002;
  v3 = v2 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_232F5A0), v7)) + ((v1 >> 6) & 2);
LABEL_13:
  if ((v1 & 0x300) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v1 & 0x200) != 0)
    {
      v8 = *(a1 + 64);
      if (v8 < 0)
      {
        v9 = 11;
      }

      else
      {
        v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v9;
    }
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

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_1361B2C(uint64_t a1)
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

void sub_1361BE4(uint64_t a1)
{
  sub_1361B2C(a1);

  operator delete();
}

uint64_t sub_1361C1C(uint64_t a1)
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

uint64_t sub_1361C98(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1361E18(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1361F00(uint64_t a1)
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

uint64_t sub_1361FEC(uint64_t a1)
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
  sub_13B378C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13620B0(uint64_t a1)
{
  sub_1361FEC(a1);

  operator delete();
}

uint64_t sub_13620E8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
            v24 = sub_13799D8(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v28;
          }

          v19 = sub_22013A0(a3, v23, v20);
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

char *sub_13622FC(uint64_t a1, char *__dst, unint64_t *a3)
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

      v4 = sub_1361E18(v9, v11, a3);
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

uint64_t sub_1362480(uint64_t a1)
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
      v7 = sub_1361F00(v6);
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

void *sub_13625D4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1362650(void *a1)
{
  sub_13625D4(a1);

  operator delete();
}

uint64_t sub_1362688(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_13626F0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v37, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v37 + 1);
    v8 = **v37;
    if (**v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v37 + 2);
      }
    }

    *v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_44;
      }

      v5 |= 2u;
      v27 = v7 + 1;
      v28 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      v29 = *v27;
      v28 = v28 + (v29 << 7) - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_43:
        *v37 = v27;
        *(a1 + 52) = v28;
        goto LABEL_51;
      }

      v35 = sub_1958770(v7, v28);
      *v37 = v35;
      *(a1 + 52) = v36;
      if (!v35)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_44;
      }

      v5 |= 4u;
      v21 = v7 + 1;
      v22 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      v23 = *v21;
      v22 = v22 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_31:
        *v37 = v21;
        *(a1 + 56) = v22;
        goto LABEL_51;
      }

      v33 = sub_1958770(v7, v22);
      *v37 = v33;
      *(a1 + 56) = v34;
      if (!v33)
      {
        goto LABEL_63;
      }
    }

LABEL_51:
    if (sub_195ADC0(a3, v37, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_44;
    }

    v25 = v7 + 1;
    v24 = *v7;
    if (v24 < 0)
    {
      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if (v26 < 0)
      {
        *v37 = sub_19587DC(v7, v24);
        if (!*v37)
        {
          goto LABEL_63;
        }

        goto LABEL_37;
      }

      v25 = v7 + 2;
    }

    *v37 = v25;
LABEL_37:
    if (v24 > 8)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 1u;
      *(a1 + 48) = v24;
    }

    goto LABEL_51;
  }

  if (v11 == 2 && v8 == 18)
  {
    v13 = v7 - 1;
    while (1)
    {
      v14 = (v13 + 1);
      *v37 = v13 + 1;
      v15 = *(a1 + 40);
      if (v15 && (v16 = *(a1 + 32), v16 < *v15))
      {
        *(a1 + 32) = v16 + 1;
        v17 = *&v15[2 * v16 + 2];
      }

      else
      {
        v18 = *(a1 + 24);
        if (!v18)
        {
          operator new();
        }

        *v20 = v19;
        v20[1] = sub_195A650;
        *v19 = 0;
        v19[1] = 0;
        v19[2] = 0;
        v17 = sub_19593CC(a1 + 24, v19);
        v14 = *v37;
      }

      v13 = sub_1958890(v17, v14, a3);
      *v37 = v13;
      if (!v13)
      {
        goto LABEL_63;
      }

      if (*a3 <= v13 || *v13 != 18)
      {
        goto LABEL_51;
      }
    }
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
      v7 = *v37;
    }

    *v37 = sub_1952690(v8, v32, v7, a3);
    if (!*v37)
    {
      goto LABEL_63;
    }

    goto LABEL_51;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  *v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v37;
}

char *sub_1362A44(uint64_t a1, char *__dst, void *a3)
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

  v11 = *(a1 + 32);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 40) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || *a3 - v6 + 14 < v14)
      {
        v6 = sub_1957480(a3, 2, v13, v6);
      }

      else
      {
        *v6 = 18;
        v6[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = v6 + 2;
        memcpy(v6 + 2, v13, v14);
        v6 = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 52);
    *v6 = 24;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v6[2];
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
      v16 = v6 + 2;
    }
  }

  else
  {
    v16 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 56);
    *v16 = 32;
    v16[1] = v22;
    if (v22 > 0x7F)
    {
      v16[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[2] = v22 >> 7;
      v21 = v16 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v24) = v16[2];
        do
        {
          *(v21 - 1) = v24 | 0x80;
          v24 = v23 >> 7;
          *v21++ = v23 >> 7;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
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

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v21;
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

  if (*a3 - v21 >= v29)
  {
    v31 = v29;
    memcpy(v21, v30, v29);
    v21 += v31;
    return v21;
  }

  return sub_1957130(a3, v30, v29, v21);
}

uint64_t sub_1362D24(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v2 = (*(a1 + 40) + 8);
    v3 = *(a1 + 32);
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

  v7 = *(a1 + 16);
  if ((v7 & 7) != 0)
  {
    if (v7)
    {
      v10 = *(a1 + 48);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v11;
      if ((v7 & 2) == 0)
      {
LABEL_11:
        if ((v7 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

    v3 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) != 0)
    {
LABEL_12:
      v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1362E50(std::string *result, uint64_t a2)
{
  p_data = &result->__r_.__value_.__l.__data_;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1201B48(p_data + 3, v6, (v5 + 8), v4, *p_data[5] - *(p_data + 8));
    v7 = *(p_data + 8) + v4;
    *(p_data + 8) = v7;
    v8 = p_data[5];
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
      *(p_data + 12) = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(p_data + 4) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(p_data + 14) = *(a2 + 56);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(p_data + 13) = *(a2 + 52);
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

    return sub_1957EF4(p_data + 1, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1362F6C(uint64_t a1)
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

  if (a1 != &off_276C7A0)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_18FA778(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_18FDA18(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_13B3810((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1363064(uint64_t a1)
{
  sub_1362F6C(a1);

  operator delete();
}

uint64_t sub_136309C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1362688(v4);
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
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
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

  *v8 = 0;
  *(v8 + 23) = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  result = sub_18FA7B4(*(v1 + 56));
  if ((v5 & 4) != 0)
  {
LABEL_9:
    result = sub_18FDA54(*(v1 + 64));
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_136317C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v32, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v32 + 1);
    v7 = **v32;
    if (**v32 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v32, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v32 + 2);
      }
    }

    *v32 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 2u;
          v25 = *(a1 + 56);
          if (!v25)
          {
            v26 = *(a1 + 8);
            v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
            if (v26)
            {
              v27 = *v27;
            }

            v25 = sub_1906254(v27);
            *(a1 + 56) = v25;
            v6 = *v32;
          }

          v21 = sub_21F3AD0(a3, v25, v6);
          goto LABEL_48;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 4u;
        v18 = *(a1 + 64);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_190630C(v20);
          *(a1 + 64) = v18;
          v6 = *v32;
        }

        v21 = sub_21F3B60(a3, v18, v6);
        goto LABEL_48;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v24 = sub_194DB04((a1 + 48), v23);
        v21 = sub_1958890(v24, *v32, a3);
        goto LABEL_48;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      v12 = v6 - 1;
      while (1)
      {
        v13 = v12 + 1;
        *v32 = v12 + 1;
        v14 = *(a1 + 40);
        if (v14 && (v15 = *(a1 + 32), v15 < *v14))
        {
          *(a1 + 32) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          sub_1379B00(*(a1 + 24));
          v16 = sub_19593CC(a1 + 24, v17);
          v13 = *v32;
        }

        v12 = sub_2201430(a3, v16, v13);
        *v32 = v12;
        if (!v12)
        {
          break;
        }

        if (*a3 <= v12 || *v12 != 18)
        {
          goto LABEL_49;
        }
      }

LABEL_54:
      *v32 = 0;
      return *v32;
    }

    if (v7)
    {
      v28 = (v7 & 7) == 4;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v32;
      }

      goto LABEL_54;
    }

    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v6 = *v32;
    }

    v21 = sub_1952690(v7, v30, v6, a3);
LABEL_48:
    *v32 = v21;
    if (!v21)
    {
      goto LABEL_54;
    }

LABEL_49:
    ;
  }

  return *v32;
}

char *sub_136340C(uint64_t a1, char *__dst, unint64_t *a3)
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

      v4 = sub_1362A44(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 56);
    *v4 = 26;
    v13 = *(v12 + 44);
    v4[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v4 + 1);
    }

    else
    {
      v14 = v4 + 2;
    }

    v4 = sub_18FB10C(v12, v14, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 64);
    *v4 = 34;
    v16 = *(v15 + 44);
    v4[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v4 + 1);
    }

    else
    {
      v17 = v4 + 2;
    }

    v4 = sub_18FE368(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v21)
  {
    v23 = v21;
    memcpy(v4, v22, v21);
    v4 += v23;
    return v4;
  }

  return sub_1957130(a3, v22, v21, v4);
}

uint64_t sub_1363638(uint64_t a1)
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
      v7 = sub_1362D24(v6);
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
      v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v15 = sub_18FB7A4(*(a1 + 56));
    v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v9 = sub_18FE97C(*(a1 + 64));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v10 = *(a1 + 8);
  if (v10)
  {
    v16 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_136379C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B4398((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      v10 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v13 = *(a1 + 56);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_1906254(v15);
      *(a1 + 56) = v13;
    }

    if (*(a2 + 56))
    {
      v16 = *(a2 + 56);
    }

    else
    {
      v16 = &off_278AFA0;
    }

    sub_18FBB2C(v13, v16);
    if ((v9 & 4) != 0)
    {
LABEL_20:
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

        v17 = sub_190630C(v19);
        *(a1 + 64) = v17;
      }

      if (*(a2 + 64))
      {
        v20 = *(a2 + 64);
      }

      else
      {
        v20 = &off_278B0B0;
      }

      sub_18FED20(v17, v20);
    }
  }

LABEL_28:
  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_136393C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_18FCAE4(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = sub_18FF13C(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1363998(uint64_t a1)
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

void sub_1363A50(uint64_t a1)
{
  sub_1363998(a1);

  operator delete();
}

uint64_t sub_1363A88(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1363C90(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1363DF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_14;
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
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_14:
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

uint64_t sub_1363F08(uint64_t a1)
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

  if (a1 != &off_276C818)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_136474C(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1364C50(v6);
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

void sub_1363FD8(uint64_t a1)
{
  sub_1363F08(a1);

  operator delete();
}

uint64_t sub_1364010(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1364080(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1364138(*(v1 + 32));
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

uint64_t sub_1364080(uint64_t a1)
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

uint64_t sub_1364138(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_16F0F04(*(result + 24));
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

char *sub_1364194(uint64_t a1, char *a2, int32x2_t *a3)
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

          v15 = sub_1379DD8(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_2201550(a3, v15, v6);
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

        v18 = sub_1379D50(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_22014C0(a3, v18, v6);
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

char *sub_136433C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_1364A0C(v7, v9, a3);
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

    v4 = sub_1364E84(v10, v12, a3);
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

uint64_t sub_13644B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1364B20(*(a1 + 24));
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
    v5 = sub_1364F90(*(a1 + 32));
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

void sub_1364588(uint64_t a1, uint64_t a2)
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

        v5 = sub_1379D50(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_276C840;
      }

      sub_12EB184(v5, v8);
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

        v9 = sub_1379DD8(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_276C870;
      }

      sub_136468C(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_136468C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      sub_16F62C0(v7);
      *(result + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277EA88;
    }

    sub_16F2360(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_136474C(uint64_t a1)
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

void sub_1364818(uint64_t a1)
{
  sub_136474C(a1);

  operator delete();
}

uint64_t sub_1364850(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1364A0C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1364B20(uint64_t a1)
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

uint64_t sub_1364C50(uint64_t a1)
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
  if (a1 != &off_276C870)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16F0EC8(v6);
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

void sub_1364D08(uint64_t a1)
{
  sub_1364C50(a1);

  operator delete();
}

char *sub_1364D40(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v19, i) & 1) == 0; i = a3[11].u32[1])
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

        sub_16F62C0(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_22015E0(a3, v14, v6);
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
          return v19;
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
        v6 = v19;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

char *sub_1364E84(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16F1904(v6, v8, a3);
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

uint64_t sub_1364F90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_16F1FC4(*(a1 + 24));
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

uint64_t sub_1365028(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26D7B10;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_13650A4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_13650D4(void *a1)
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

  sub_1365160(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1365160(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 56);
  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276C890)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      sub_16E4E08(v5);
      operator delete();
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }

    result = *(a1 + 80);
    if (result)
    {
      sub_1869C50(result);

      operator delete();
    }
  }

  return result;
}

void sub_1365238(void *a1)
{
  sub_13650D4(a1);

  operator delete();
}

uint64_t sub_1365270(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 40) |= 1u;
        v16 = *(a1 + 8);
        v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v14 = *v14;
        }

        v15 = (a1 + 48);
LABEL_27:
        v17 = sub_194DB04(v15, v14);
        v18 = sub_1958890(v17, *v32, a3);
        goto LABEL_55;
      }

      goto LABEL_46;
    }

    if (v11 != 2)
    {
      if (v11 == 3 && v8 == 29)
      {
        v5 |= 0x20u;
        *(a1 + 88) = *v7;
        *v32 = v7 + 4;
        goto LABEL_56;
      }

      goto LABEL_46;
    }

    if (v8 != 18)
    {
      goto LABEL_46;
    }

    *(a1 + 40) |= 4u;
    v23 = *(a1 + 64);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5828(v25);
      *(a1 + 64) = v23;
      v7 = *v32;
    }

    v18 = sub_21F4D60(a3, v23, v7);
LABEL_55:
    *v32 = v18;
    if (!v18)
    {
      goto LABEL_61;
    }

LABEL_56:
    if (sub_195ADC0(a3, v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_46;
    }

    *(a1 + 40) |= 8u;
    v19 = *(a1 + 72);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_16F58FC(v21);
      v19 = v22;
      *(a1 + 72) = v22;
      v7 = *v32;
    }

    v18 = sub_21F86E8(a3, v19, v7);
    goto LABEL_55;
  }

  if (v11 == 5)
  {
    if (v8 != 42)
    {
      goto LABEL_46;
    }

    *(a1 + 40) |= 0x10u;
    v26 = *(a1 + 80);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v26 = sub_18FF354(v28);
      *(a1 + 80) = v26;
      v7 = *v32;
    }

    v18 = sub_2201670(a3, v26, v7);
    goto LABEL_55;
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 40) |= 2u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v15 = (a1 + 56);
    goto LABEL_27;
  }

LABEL_46:
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
    if (v8 - 800 > 0x31F)
    {
      v30 = *(a1 + 8);
      if (v30)
      {
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v31 = sub_11F1920((a1 + 8));
        v7 = *v32;
      }

      v18 = sub_1952690(v8, v31, v7, a3);
    }

    else
    {
      v18 = sub_19525AC((a1 + 16), v8, v7, &off_276C890, (a1 + 8), a3);
    }

    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  *v32 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v32;
}

char *sub_1365584(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
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

  v9 = *(a1 + 64);
  *v4 = 18;
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

  v4 = sub_16E5070(v9, v11, a3);
  if ((v6 & 0x20) == 0)
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

  v12 = *(a1 + 88);
  *v4 = 29;
  *(v4 + 1) = v12;
  v4 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 72);
  *v4 = 34;
  v14 = *(v13 + 20);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_16E5FE0(v13, v15, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 80);
  *v4 = 42;
  v17 = *(v16 + 20);
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v4 + 1);
  }

  else
  {
    v18 = v4 + 2;
  }

  v4 = sub_1869F58(v16, v18, a3);
  if ((v6 & 2) != 0)
  {
LABEL_7:
    v4 = sub_128AEEC(a3, 6, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_8:
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 200, v4, a3);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v19 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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

uint64_t sub_1365818(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 = v2 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v11 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = sub_16E51F0(*(a1 + 64));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  v15 = sub_16E62F4(*(a1 + 72));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) != 0)
  {
LABEL_7:
    v5 = sub_186A16C(*(a1 + 80));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v4 & 0x20) != 0)
  {
    v3 += 5;
  }

LABEL_10:
  v6 = *(a1 + 8);
  if (v6)
  {
    v16 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v3 += v17;
  }

  *(a1 + 44) = v3;
  return v3;
}

uint64_t sub_13659CC(uint64_t a1)
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

void sub_1365A98(uint64_t a1)
{
  sub_13659CC(a1);

  operator delete();
}

uint64_t sub_1365AD0(uint64_t a1)
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
  if ((v1 & 0x18) != 0)
  {
    *(a1 + 52) = 0;
    *(a1 + 48) = 0;
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

uint64_t sub_1365B98(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_41;
        }

        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 24);
        goto LABEL_33;
      }

      if (v8 != 8)
      {
        goto LABEL_41;
      }

      v24 = v7 + 1;
      v23 = *v7;
      if (v23 < 0)
      {
        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          *v31 = sub_19587DC(v7, v23);
          if (!*v31)
          {
            goto LABEL_59;
          }

          goto LABEL_39;
        }

        v24 = v7 + 2;
      }

      *v31 = v24;
LABEL_39:
      if (v23 > 0xB)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 48) = v23;
      }

      goto LABEL_49;
    }

    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 8);
      v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v17 = *v17;
      }

      v18 = (a1 + 32);
LABEL_33:
      v21 = sub_194DB04(v18, v17);
      v22 = sub_1958890(v21, *v31, a3);
      goto LABEL_48;
    }

    if (v11 == 4)
    {
      break;
    }

    if (v11 != 5 || v8 != 40)
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
      *v31 = v13;
      *(a1 + 52) = v12 != 0;
      goto LABEL_49;
    }

    v29 = sub_19587DC(v7, v12);
    *v31 = v29;
    *(a1 + 52) = v30 != 0;
    if (!v29)
    {
      goto LABEL_59;
    }

LABEL_49:
    if (sub_195ADC0(a3, v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 34)
  {
    *(a1 + 16) |= 4u;
    v20 = *(a1 + 8);
    v17 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v17 = *v17;
    }

    v18 = (a1 + 40);
    goto LABEL_33;
  }

LABEL_41:
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

    v22 = sub_1952690(v8, v28, v7, a3);
LABEL_48:
    *v31 = v22;
    if (!v22)
    {
      goto LABEL_59;
    }

    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_59:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_1365E70(uint64_t a1, char *__dst, unint64_t *a3)
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
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = sub_128AEEC(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v11 = *(a1 + 52);
  *v6 = 40;
  v6[1] = v11;
  v6 += 2;
LABEL_21:
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

  if ((*a3 - v6) >= v15)
  {
    v17 = v15;
    memcpy(v6, v16, v15);
    v6 += v17;
    return v6;
  }

  return sub_1957130(a3, v16, v15, v6);
}

uint64_t sub_1366040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_23;
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
    v10 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if ((v1 & 8) != 0)
  {
LABEL_18:
    v13 = *(a1 + 48);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v14;
  }

LABEL_22:
  v3 = v2 + ((v1 >> 3) & 2);
LABEL_23:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v3 += v18;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_13661A0(uint64_t a1, uint64_t a2)
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

        goto LABEL_19;
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

      goto LABEL_22;
    }

LABEL_19:
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
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 52) = *(a2 + 52);
      goto LABEL_8;
    }

LABEL_22:
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

uint64_t sub_13662F8(uint64_t a1)
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

  if (a1 != &off_276C8F0)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16E4E08(v5);
      operator delete();
    }

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

void sub_13663C8(uint64_t a1)
{
  sub_13662F8(a1);

  operator delete();
}

char *sub_1366400(uint64_t a1, char *a2, int32x2_t *a3)
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

          v15 = sub_16F5828(v17);
          *(a1 + 32) = v15;
LABEL_28:
          v6 = v21;
        }

LABEL_29:
        v14 = sub_21F4D60(a3, v15, v6);
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

        v15 = sub_16F5828(v19);
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

char *sub_136659C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16E5070(v7, v9, a3);
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

    v4 = sub_16E5070(v10, v12, a3);
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

uint64_t sub_1366718(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
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
    v5 = sub_16E51F0(*(a1 + 32));
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

void *sub_13667F8(void *a1)
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

void sub_136686C(void *a1)
{
  sub_13667F8(a1);

  operator delete();
}

uint64_t sub_13668A4(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 28) = 0;
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

char *sub_13668CC(uint64_t a1, char *a2, int32x2_t *a3)
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
      v29 = v20;
      *(a1 + 29) = v19 != 0;
      goto LABEL_37;
    }

    v27 = sub_19587DC(v7, v19);
    v29 = v27;
    *(a1 + 29) = v28 != 0;
    if (!v27)
    {
      goto LABEL_49;
    }

LABEL_37:
    if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
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
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v29 = v17;
      *(a1 + 28) = v16 != 0;
      goto LABEL_37;
    }

    v25 = sub_19587DC(v7, v16);
    v29 = v25;
    *(a1 + 28) = v26 != 0;
    if (!v25)
    {
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  if (v11 == 1 && v8 == 8)
  {
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if (v24 < 0)
    {
      v29 = sub_19587DC(v7, v22);
      if (!v29)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v23 = v7 + 2;
LABEL_34:
      v29 = v23;
    }

    if (v22 > 1)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 1u;
      *(a1 + 24) = v22;
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

char *sub_1366B4C(uint64_t a1, char *__dst, void *a3)
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
    *v6 = 16;
    v6[1] = v11;
    v6 += 2;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 29);
    *v6 = 24;
    v6[1] = v12;
    v6 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v16)
  {
    v18 = v16;
    memcpy(v6, v17, v16);
    v6 += v18;
    return v6;
  }

  return sub_1957130(a3, v17, v16, v6);
}

uint64_t sub_1366CE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24);
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v4 >= 0)
      {
        v2 = v5;
      }

      else
      {
        v2 = 11;
      }
    }

    else
    {
      v2 = 0;
    }

    v3 = v2 + ((*(a1 + 16) >> 1) & 2) + (*(a1 + 16) & 2u);
  }

  else
  {
    v3 = 0;
  }

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

std::string *sub_1366D74(std::string *result, uint64_t a2)
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
    result[1].__r_.__value_.__s.__data_[4] = *(a2 + 28);
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
    result[1].__r_.__value_.__s.__data_[5] = *(a2 + 29);
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

uint64_t sub_1366DF0(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (a1 != &off_276C918)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      sub_16E4E08(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_13B3894((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1366F04(uint64_t a1)
{
  sub_1366DF0(a1);

  operator delete();
}

uint64_t sub_1366F3C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v45, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v45 + 1);
    v8 = **v45;
    if (**v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v45 + 2);
      }
    }

    *v45 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 <= 5)
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          v27 = v7 - 1;
          while (1)
          {
            v28 = v27 + 1;
            *v45 = v27 + 1;
            v29 = *(a1 + 40);
            if (v29 && (v30 = *(a1 + 32), v30 < *v29))
            {
              *(a1 + 32) = v30 + 1;
              v31 = *&v29[2 * v30 + 2];
            }

            else
            {
              v32 = sub_137A304(*(a1 + 24));
              v31 = sub_19593CC(a1 + 24, v32);
              v28 = *v45;
            }

            v27 = sub_2201700(a3, v31, v28);
            *v45 = v27;
            if (!v27)
            {
              goto LABEL_77;
            }

            if (*a3 <= v27 || *v27 != 34)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else if (v11 == 5 && v8 == 42)
      {
        *(a1 + 16) |= 8u;
        v12 = *(a1 + 72);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_16F5828(v14);
          *(a1 + 72) = v12;
          v7 = *v45;
        }

        v15 = sub_21F4D60(a3, v12, v7);
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_60;
      }

      v5 |= 0x10u;
      v34 = v7 + 1;
      v33 = *v7;
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_54;
      }

      v35 = *v34;
      v33 = (v35 << 7) + v33 - 128;
      if ((v35 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_54:
        *v45 = v34;
        *(a1 + 80) = v33;
        goto LABEL_68;
      }

      v41 = sub_19587DC(v7, v33);
      *v45 = v41;
      *(a1 + 80) = v42;
      if (!v41)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_60;
      }

      v5 |= 0x20u;
      v22 = v7 + 1;
      v21 = *v7;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_35:
        *v45 = v22;
        *(a1 + 88) = v21 != 0;
        goto LABEL_68;
      }

      v43 = sub_19587DC(v7, v21);
      *v45 = v43;
      *(a1 + 88) = v44 != 0;
      if (!v43)
      {
        goto LABEL_77;
      }
    }

LABEL_68:
    if (sub_195ADC0(a3, v45, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_60;
    }

    *(a1 + 16) |= 1u;
    v24 = *(a1 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v26 = (a1 + 48);
    goto LABEL_59;
  }

  if (v11 == 2)
  {
    if (v8 != 18)
    {
      goto LABEL_60;
    }

    *(a1 + 16) |= 2u;
    v36 = *(a1 + 8);
    v25 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v25 = *v25;
    }

    v26 = (a1 + 56);
LABEL_59:
    v37 = sub_194DB04(v26, v25);
    v15 = sub_1958890(v37, *v45, a3);
    goto LABEL_67;
  }

  if (v11 == 3 && v8 == 26)
  {
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

      sub_16F58FC(v19);
      v17 = v20;
      *(a1 + 64) = v20;
      v7 = *v45;
    }

    v15 = sub_21F86E8(a3, v17, v7);
LABEL_67:
    *v45 = v15;
    if (!v15)
    {
      goto LABEL_77;
    }

    goto LABEL_68;
  }

LABEL_60:
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
      v7 = *v45;
    }

    v15 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_67;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_77:
  *v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v45;
}

char *sub_136730C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
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

  v4 = sub_128AEEC(a3, 2, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 64);
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

  v4 = sub_16E5FE0(v7, v9, a3);
LABEL_13:
  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_1369D68(v12, v14, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 72);
    *v4 = 42;
    v16 = *(v15 + 44);
    v4[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v4 + 1);
    }

    else
    {
      v17 = v4 + 2;
    }

    v4 = sub_16E5070(v15, v17, a3);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v19 = *(a1 + 80);
    *v4 = 48;
    v4[1] = v19;
    if (v19 > 0x7F)
    {
      v4[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v4[2] = v19 >> 7;
      v18 = v4 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v21) = v4[2];
        do
        {
          *(v18 - 1) = v21 | 0x80;
          v21 = v20 >> 7;
          *v18++ = v20 >> 7;
          v22 = v20 >> 14;
          v20 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v18 = v4 + 2;
    }
  }

  else
  {
    v18 = v4;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 88);
    *v18 = 56;
    v18[1] = v23;
    v18 += 2;
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v18;
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

  if ((*a3 - v18) >= v27)
  {
    v29 = v27;
    memcpy(v18, v28, v27);
    v18 += v29;
    return v18;
  }

  return sub_1957130(a3, v28, v27, v18);
}

uint64_t sub_136761C(uint64_t a1)
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
      v7 = sub_136A254(v6);
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
      v11 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_25;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v14 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

LABEL_25:
    v17 = sub_16E62F4(*(a1 + 64));
    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_14:
      if ((v8 & 0x10) == 0)
      {
LABEL_16:
        v2 += (v8 >> 4) & 2;
        goto LABEL_17;
      }

LABEL_15:
      v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_16;
    }

LABEL_26:
    v18 = sub_16E51F0(*(a1 + 72));
    v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v9 = *(a1 + 8);
  if (v9)
  {
    v19 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_13677FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v2 = v1--;
      v3 = *(*(a1 + 16) + 8 + 8 * v1);
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

    while (v2 >= 2);
  }

  return 1;
}

void *sub_1367870(void *a1)
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

  sub_13678F4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13678F4(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276C978)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_153FD8C(v4);
      operator delete();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1547884(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_18FA778(v6);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_18FDA18(result);

      operator delete();
    }
  }

  return result;
}

void sub_13679D8(void *a1)
{
  sub_1367870(a1);

  operator delete();
}

uint64_t sub_1367A10(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v8 >> 3 > 5)
      {
        if (v11 == 6)
        {
          if (v8 == 50)
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

              v30 = sub_1906254(v32);
              *(a1 + 48) = v30;
              v7 = *v44;
            }

            v15 = sub_21F3AD0(a3, v30, v7);
            goto LABEL_64;
          }
        }

        else if (v11 == 7 && v8 == 58)
        {
          *(a1 + 16) |= 0x10u;
          v20 = *(a1 + 56);
          if (!v20)
          {
            v21 = *(a1 + 8);
            v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if (v21)
            {
              v22 = *v22;
            }

            v20 = sub_190630C(v22);
            *(a1 + 56) = v20;
            v7 = *v44;
          }

          v15 = sub_21F3B60(a3, v20, v7);
          goto LABEL_64;
        }

        goto LABEL_57;
      }

      if (v11 != 4)
      {
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
          v15 = sub_1958890(v14, *v44, a3);
          goto LABEL_64;
        }

        goto LABEL_57;
      }

      if (v8 != 32)
      {
        goto LABEL_57;
      }

      v5 |= 0x40u;
      v27 = v7 + 1;
      v28 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v29 = *v27;
      v28 = v28 + (v29 << 7) - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_44:
        *v44 = v27;
        *(a1 + 68) = v28;
        goto LABEL_65;
      }

      v40 = sub_1958770(v7, v28);
      *v44 = v40;
      *(a1 + 68) = v41;
      if (!v40)
      {
        goto LABEL_74;
      }

      goto LABEL_65;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 4u;
        v33 = *(a1 + 40);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          sub_155218C(v35);
          v33 = v36;
          *(a1 + 40) = v36;
          v7 = *v44;
        }

        v15 = sub_21F36E0(a3, v33, v7);
        goto LABEL_64;
      }

      goto LABEL_57;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_57;
    }

    v5 |= 0x20u;
    v17 = v7 + 1;
    v18 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v19 = *v17;
    v18 = v18 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      *v44 = v17;
      *(a1 + 64) = v18;
      goto LABEL_65;
    }

    v42 = sub_1958770(v7, v18);
    *v44 = v42;
    *(a1 + 64) = v43;
    if (!v42)
    {
      goto LABEL_74;
    }

LABEL_65:
    if (sub_195ADC0(a3, v44, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 2u;
    v23 = *(a1 + 32);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      sub_1551D64(v25);
      v23 = v26;
      *(a1 + 32) = v26;
      v7 = *v44;
    }

    sub_21F3650(a3, v23, v7);
LABEL_64:
    *v44 = v15;
    if (!v15)
    {
      goto LABEL_74;
    }

    goto LABEL_65;
  }

LABEL_57:
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
      v7 = *v44;
    }

    v15 = sub_1952690(v8, v39, v7, a3);
    goto LABEL_64;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_74:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_1367DB0(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
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

    v11 = *(a1 + 40);
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

    v4 = sub_15480D4(v11, v13, a3);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 32);
  *v4 = 10;
  v9 = *(v8 + 28);
  *(v4 + 1) = v9;
  if (v9 > 0x7F)
  {
    v10 = sub_19575D0(v9, (v4 + 1));
  }

  else
  {
    v10 = (v4 + 2);
  }

  v4 = sub_1540418(v8, v10, a3);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 0x20) == 0)
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

  v14 = *(a1 + 64);
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
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 68);
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

  if (v6)
  {
    v17 = sub_128AEEC(a3, 5, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v6 & 8) == 0)
    {
LABEL_35:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_35;
  }

  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v21 = *(a1 + 48);
  *v17 = 50;
  v22 = *(v21 + 44);
  v17[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v17 + 1);
  }

  else
  {
    v23 = v17 + 2;
  }

  v17 = sub_18FB10C(v21, v23, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_44:
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v24 = *(a1 + 56);
    *v17 = 58;
    v25 = *(v24 + 44);
    v17[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v17 + 1);
    }

    else
    {
      v26 = v17 + 2;
    }

    v17 = sub_18FE368(v24, v26, a3);
  }

LABEL_50:
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

uint64_t sub_1368138(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    v3 = 0;
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
    v7 = sub_1541FC0(*(a1 + 32));
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
    v10 = sub_1548710(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v11 = sub_18FB7A4(*(a1 + 48));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = sub_18FE97C(*(a1 + 56));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_21:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) != 0)
  {
LABEL_15:
    v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v8 = *(a1 + 8);
  if (v8)
  {
    v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v3 += v14;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1368320(void *a1)
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

void sub_1368394(void *a1)
{
  sub_1368320(a1);

  operator delete();
}

uint64_t sub_13683CC(uint64_t a1)
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

char *sub_13683F4(uint64_t a1, char *a2, int32x2_t *a3)
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
      v31 = v19;
      *(a1 + 32) = v20;
      goto LABEL_35;
    }

    v29 = sub_1958770(v7, v20);
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
      v31 = v16;
      *(a1 + 28) = v17;
      goto LABEL_35;
    }

    v25 = sub_1958770(v7, v17);
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
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_34:
      v31 = v22;
      *(a1 + 24) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
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

char *sub_136863C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1368874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_10;
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
  }

LABEL_10:
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

void *sub_1368950(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B3918(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13689D0(void *a1)
{
  sub_1368950(a1);

  operator delete();
}

uint64_t sub_1368A08(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13683CC(v4);
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

char *sub_1368A98(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v8 == 26)
      {
        v19 = v7 - 1;
        while (1)
        {
          v20 = v19 + 1;
          v32 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_137A174(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v32;
          }

          v19 = sub_2201790(a3, v23, v20);
          v32 = v19;
          if (!v19)
          {
            goto LABEL_52;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_42;
          }
        }
      }

      goto LABEL_13;
    }

    if (v11 != 2)
    {
      break;
    }

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
      v32 = v16;
      *(a1 + 52) = v17;
      goto LABEL_42;
    }

    v29 = sub_1958770(v7, v17);
    v32 = v29;
    *(a1 + 52) = v30;
    if (!v29)
    {
      goto LABEL_52;
    }

LABEL_42:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1 && v8 == 8)
  {
    v25 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v27 = *v25;
    v28 = (v27 << 7) + v26;
    LODWORD(v26) = v28 - 128;
    if (v27 < 0)
    {
      v32 = sub_19587DC(v7, (v28 - 128));
      if (!v32)
      {
        goto LABEL_52;
      }

      LODWORD(v26) = v31;
    }

    else
    {
      v25 = v7 + 2;
LABEL_39:
      v32 = v25;
    }

    if (sub_140A95C(v26))
    {
      *(a1 + 16) |= 1u;
      *(a1 + 48) = v26;
    }

    else
    {
      sub_12E8450();
    }

    goto LABEL_42;
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
      goto LABEL_52;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_1368D38(uint64_t a1, char *__dst, unint64_t *a3)
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

      v11 = sub_136863C(v17, v19, a3);
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

uint64_t sub_1368F84(uint64_t a1)
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
      v7 = sub_1368874(v6);
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
      v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t **sub_1369094(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    result = sub_13B44B0((v3 + 24), v6, (v5 + 8), v4, **(v3 + 40) - *(v3 + 32));
    v7 = *(v3 + 32) + v4;
    *(v3 + 32) = v7;
    v8 = *(v3 + 40);
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
      *(v3 + 48) = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      *(v3 + 52) = *(a2 + 52);
    }

    *(v3 + 16) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4((v3 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1369198(void *a1)
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

void sub_136920C(void *a1)
{
  sub_1369198(a1);

  operator delete();
}

uint64_t sub_1369244(uint64_t a1)
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

char *sub_1369268(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1369444(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_13695F4(_DWORD *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v4 = a1[6];
    if (v4 < 0)
    {
      result = 11;
      if ((v2 & 2) == 0)
      {
        return result;
      }
    }

    else
    {
      result = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  v5 = a1[7];
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
  return result;
}

uint64_t sub_1369674(uint64_t a1)
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

void *sub_1369754(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B399C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13697D4(void *a1)
{
  sub_1369754(a1);

  operator delete();
}

uint64_t sub_136980C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1369244(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 0x7F) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
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

char *sub_13698A4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v55 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v55, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v55 + 1;
    v8 = *v55;
    if (*v55 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v55, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v55 + 2;
      }
    }

    v55 = v7;
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

        v5 |= 4u;
        v35 = v7 + 1;
        v36 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        v37 = *v35;
        v36 = v36 + (v37 << 7) - 128;
        if ((v37 & 0x80000000) == 0)
        {
          v35 = v7 + 2;
LABEL_62:
          v55 = v35;
          *(a1 + 56) = v36;
          goto LABEL_77;
        }

        v47 = sub_1958770(v7, v36);
        v55 = v47;
        *(a1 + 56) = v48;
        if (!v47)
        {
          goto LABEL_98;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_70;
        }

        v5 |= 8u;
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
          v55 = v19;
          *(a1 + 60) = v20;
          goto LABEL_77;
        }

        v53 = sub_1958770(v7, v20);
        v55 = v53;
        *(a1 + 60) = v54;
        if (!v53)
        {
          goto LABEL_98;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_70;
      }

      v5 |= 1u;
      v28 = v7 + 1;
      v29 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      v30 = *v28;
      v29 = v29 + (v30 << 7) - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_50:
        v55 = v28;
        *(a1 + 48) = v29;
        goto LABEL_77;
      }

      v44 = sub_1958770(v7, v29);
      v55 = v44;
      *(a1 + 48) = v45;
      if (!v44)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_70;
      }

      v5 |= 2u;
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
        v55 = v13;
        *(a1 + 52) = v14;
        goto LABEL_77;
      }

      v49 = sub_1958770(v7, v14);
      v55 = v49;
      *(a1 + 52) = v50;
      if (!v49)
      {
        goto LABEL_98;
      }
    }

LABEL_77:
    if (sub_195ADC0(a3, &v55, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 6)
  {
    if (v11 != 7)
    {
      if (v11 == 8 && v8 == 66)
      {
        v22 = v7 - 1;
        while (1)
        {
          v23 = v22 + 1;
          v55 = v22 + 1;
          v24 = *(a1 + 40);
          if (v24 && (v25 = *(a1 + 32), v25 < *v24))
          {
            *(a1 + 32) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = sub_137A28C(*(a1 + 24));
            v26 = sub_19593CC(a1 + 24, v27);
            v23 = v55;
          }

          v22 = sub_2201820(a3, v26, v23);
          v55 = v22;
          if (!v22)
          {
            goto LABEL_98;
          }

          if (*a3 <= v22 || *v22 != 66)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_70;
    }

    if (v8 != 56)
    {
      goto LABEL_70;
    }

    v39 = v7 + 1;
    v38 = *v7;
    if (v38 < 0)
    {
      v40 = *v39;
      v38 = (v40 << 7) + v38 - 128;
      if (v40 < 0)
      {
        v55 = sub_19587DC(v7, v38);
        if (!v55)
        {
          goto LABEL_98;
        }

        goto LABEL_68;
      }

      v39 = v7 + 2;
    }

    v55 = v39;
LABEL_68:
    if (v38 > 8)
    {
      sub_13137F8();
    }

    else
    {
      *(a1 + 16) |= 0x40u;
      *(a1 + 72) = v38;
    }

    goto LABEL_77;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_70;
    }

    v5 |= 0x20u;
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
      v55 = v16;
      *(a1 + 68) = v17;
      goto LABEL_77;
    }

    v51 = sub_1958770(v7, v17);
    v55 = v51;
    *(a1 + 68) = v52;
    if (!v51)
    {
      goto LABEL_98;
    }

    goto LABEL_77;
  }

  if (v8 == 40)
  {
    v31 = v7 + 1;
    v32 = *v7;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_55;
    }

    v33 = *v31;
    v34 = (v33 << 7) + v32;
    LODWORD(v32) = v34 - 128;
    if (v33 < 0)
    {
      v55 = sub_19587DC(v7, (v34 - 128));
      if (!v55)
      {
        goto LABEL_98;
      }

      LODWORD(v32) = v46;
    }

    else
    {
      v31 = v7 + 2;
LABEL_55:
      v55 = v31;
    }

    if (sub_140A95C(v32))
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 64) = v32;
    }

    else
    {
      sub_12E85B8();
    }

    goto LABEL_77;
  }

LABEL_70:
  if (v8)
  {
    v41 = (v8 & 7) == 4;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v42 = *(a1 + 8);
    if (v42)
    {
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v43 = sub_11F1920((a1 + 8));
      v7 = v55;
    }

    v55 = sub_1952690(v8, v43, v7, a3);
    if (!v55)
    {
      goto LABEL_98;
    }

    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_98:
  v55 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v55;
}

char *sub_1369D68(uint64_t a1, char *__dst, unint64_t *a3)
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

    v16 = *(a1 + 56);
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

    v20 = *(a1 + 60);
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
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          LODWORD(v15) = v21 >> 7;
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
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

    v24 = *(a1 + 64);
    *v19 = 40;
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v19[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v19[2] = v24 >> 7;
      v23 = v19 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v26) = v19[2];
        do
        {
          *(v23 - 1) = v26 | 0x80;
          v26 = v25 >> 7;
          *v23++ = v25 >> 7;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v23 = v19 + 2;
    }
  }

  else
  {
    v23 = v19;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v29 = *(a1 + 68);
    *v23 = 48;
    v23[1] = v29;
    if (v29 > 0x7F)
    {
      v23[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v23[2] = v29 >> 7;
      v28 = v23 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v23) = v23[2];
        do
        {
          *(v28 - 1) = v23 | 0x80;
          LODWORD(v23) = v30 >> 7;
          *v28++ = v30 >> 7;
          v31 = v30 >> 14;
          v30 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v28 = v23 + 2;
    }
  }

  else
  {
    v28 = v23;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v33 = *(a1 + 72);
    *v28 = 56;
    v28[1] = v33;
    if (v33 > 0x7F)
    {
      v28[1] = v33 | 0x80;
      v34 = v33 >> 7;
      v28[2] = v33 >> 7;
      v32 = v28 + 3;
      if (v33 >= 0x4000)
      {
        LOBYTE(v35) = v28[2];
        do
        {
          *(v32 - 1) = v35 | 0x80;
          v35 = v34 >> 7;
          *v32++ = v34 >> 7;
          v36 = v34 >> 14;
          v34 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v32 = v28 + 2;
    }
  }

  else
  {
    v32 = v28;
  }

  v37 = *(a1 + 32);
  if (v37)
  {
    for (i = 0; i != v37; ++i)
    {
      if (*a3 <= v32)
      {
        v32 = sub_225EB68(a3, v32);
      }

      v39 = *(*(a1 + 40) + 8 * i + 8);
      *v32 = 66;
      v40 = *(v39 + 20);
      v32[1] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v32 + 1);
      }

      else
      {
        v41 = v32 + 2;
      }

      v32 = sub_1369444(v39, v41, a3);
    }
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v32;
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

  if ((*a3 - v32) >= v45)
  {
    v47 = v45;
    memcpy(v32, v46, v45);
    v32 += v47;
    return v32;
  }

  return sub_1957130(a3, v46, v45, v32);
}

uint64_t sub_136A254(uint64_t a1)
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
      v7 = sub_1369674(v6);
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
  if ((v8 & 0x7F) == 0)
  {
    goto LABEL_31;
  }

  if (v8)
  {
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_22:
  v9 = *(a1 + 64);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v10;
  if ((v8 & 0x20) == 0)
  {
LABEL_16:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_26:
  v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v11 = *(a1 + 72);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v12;
LABEL_31:
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

std::string *sub_136A454(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_13B452C((v3 + 24), v6, (v5 + 8), v4, **(v3 + 40) - *(v3 + 32));
    v7 = *(v3 + 32) + v4;
    *(v3 + 32) = v7;
    v8 = *(v3 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x7F) != 0)
  {
    if (v9)
    {
      *(v3 + 48) = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(v3 + 52) = *(a2 + 52);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:
    *(v3 + 56) = *(a2 + 56);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(v3 + 60) = *(a2 + 60);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(v3 + 64) = *(a2 + 64);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v9;
        goto LABEL_14;
      }

LABEL_12:
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_13;
    }

LABEL_23:
    *(v3 + 68) = *(a2 + 68);
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4((v3 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_136A598(uint64_t a1)
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

uint64_t sub_136A5E0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_16;
    }
  }

  else if (v4)
  {
    goto LABEL_16;
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

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (a1 != &off_276C9C0)
  {
    v6 = *(a1 + 56);
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

LABEL_16:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_136A6F0(uint64_t a1)
{
  sub_136A5E0(a1);

  operator delete();
}

unsigned __int8 *sub_136A728(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_20:
    v6 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_24:
  v7 = *(result + 5) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_28;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_28:
  v8 = *(result + 6) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = sub_16E4E44(*(result + 7));
    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  if ((v2 & 0x700) != 0)
  {
    *(v1 + 76) = 0;
    *(v1 + 84) = 0x100000000;
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

uint64_t sub_136A884(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v55 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v55, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v55 + 1);
    v8 = **v55;
    if (**v55 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v55, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v55 + 2);
      }
    }

    *v55 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 6)
    {
      if (v8 >> 3 > 9)
      {
        if (v11 == 10)
        {
          if (v8 != 82)
          {
            goto LABEL_84;
          }

          *(a1 + 16) |= 4u;
          v41 = *(a1 + 8);
          v34 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
          if (v41)
          {
            v34 = *v34;
          }

          v35 = (a1 + 40);
        }

        else
        {
          if (v11 != 11)
          {
            if (v11 != 12 || v8 != 96)
            {
              goto LABEL_84;
            }

            v5 |= 0x200u;
            v21 = v7 + 1;
            v20 = *v7;
            if ((v20 & 0x8000000000000000) == 0)
            {
              goto LABEL_36;
            }

            v22 = *v21;
            v20 = (v22 << 7) + v20 - 128;
            if ((v22 & 0x80000000) == 0)
            {
              v21 = v7 + 2;
LABEL_36:
              *v55 = v21;
              *(a1 + 80) = v20;
              goto LABEL_82;
            }

            v51 = sub_19587DC(v7, v20);
            *v55 = v51;
            *(a1 + 80) = v52;
            if (!v51)
            {
              goto LABEL_108;
            }

            goto LABEL_82;
          }

          if (v8 != 90)
          {
            goto LABEL_84;
          }

          *(a1 + 16) |= 8u;
          v36 = *(a1 + 8);
          v34 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v34 = *v34;
          }

          v35 = (a1 + 48);
        }

LABEL_80:
        v42 = sub_194DB04(v35, v34);
        v19 = sub_1958890(v42, *v55, a3);
        goto LABEL_81;
      }

      if (v11 != 7)
      {
        if (v11 != 8)
        {
          if (v11 == 9 && v8 == 72)
          {
            v12 = v7 + 1;
            v13 = *v7;
            if (v13 < 0)
            {
              v14 = *v12;
              v15 = (v14 << 7) + v13;
              LODWORD(v13) = v15 - 128;
              if (v14 < 0)
              {
                *v55 = sub_19587DC(v7, (v15 - 128));
                if (!*v55)
                {
                  goto LABEL_108;
                }

                LODWORD(v13) = v50;
                goto LABEL_17;
              }

              v12 = v7 + 2;
            }

            *v55 = v12;
LABEL_17:
            if (sub_1454008(v13))
            {
              *(a1 + 16) |= 0x100u;
              *(a1 + 76) = v13;
            }

            else
            {
              sub_13B6774();
            }

            goto LABEL_82;
          }

          goto LABEL_84;
        }

        if (v8 != 66)
        {
          goto LABEL_84;
        }

        *(a1 + 16) |= 2u;
        v33 = *(a1 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        v35 = (a1 + 32);
        goto LABEL_80;
      }

      if (v8 != 56)
      {
        goto LABEL_84;
      }

      v5 |= 0x80u;
      v38 = v7 + 1;
      v39 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

      v40 = *v38;
      v39 = v39 + (v40 << 7) - 128;
      if ((v40 & 0x80000000) == 0)
      {
        v38 = v7 + 2;
LABEL_75:
        *v55 = v38;
        *(a1 + 72) = v39;
        goto LABEL_82;
      }

      v53 = sub_1958770(v7, v39);
      *v55 = v53;
      *(a1 + 72) = v54;
      if (!v53)
      {
        goto LABEL_108;
      }

      goto LABEL_82;
    }

    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_84;
      }

      *(a1 + 16) |= 1u;
      v37 = *(a1 + 8);
      v34 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v34 = *v34;
      }

      v35 = (a1 + 24);
      goto LABEL_80;
    }

    if (v11 != 4)
    {
      if (v11 != 5 || v8 != 42)
      {
        goto LABEL_84;
      }

      *(a1 + 16) |= 0x10u;
      v16 = *(a1 + 56);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_16F5828(v18);
        *(a1 + 56) = v16;
        v7 = *v55;
      }

      v19 = sub_21F4D60(a3, v16, v7);
LABEL_81:
      *v55 = v19;
      if (!v19)
      {
        goto LABEL_108;
      }

      goto LABEL_82;
    }

    if (v8 != 32)
    {
      goto LABEL_84;
    }

    v5 |= 0x40u;
    v30 = v7 + 1;
    v31 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    v32 = *v30;
    v31 = v31 + (v32 << 7) - 128;
    if ((v32 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_58:
      *v55 = v30;
      *(a1 + 68) = v31;
      goto LABEL_82;
    }

    v48 = sub_1958770(v7, v31);
    *v55 = v48;
    *(a1 + 68) = v49;
    if (!v48)
    {
      goto LABEL_108;
    }

LABEL_82:
    if (sub_195ADC0(a3, v55, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_84;
    }

    v5 |= 0x20u;
    v24 = v7 + 1;
    v25 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v26 = *v24;
    v25 = v25 + (v26 << 7) - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_46:
      *v55 = v24;
      *(a1 + 64) = v25;
      goto LABEL_82;
    }

    v46 = sub_1958770(v7, v25);
    *v55 = v46;
    *(a1 + 64) = v47;
    if (!v46)
    {
      goto LABEL_108;
    }

    goto LABEL_82;
  }

  if (v8 == 8)
  {
    v28 = v7 + 1;
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if (v29 < 0)
    {
      *v55 = sub_19587DC(v7, v27);
      if (!*v55)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v28 = v7 + 2;
LABEL_51:
      *v55 = v28;
    }

    if ((v27 - 1) > 2)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 0x400u;
      *(a1 + 88) = v27;
    }

    goto LABEL_82;
  }

LABEL_84:
  if (v8)
  {
    v43 = (v8 & 7) == 4;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    v44 = *(a1 + 8);
    if (v44)
    {
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v45 = sub_11F1920((a1 + 8));
      v7 = *v55;
    }

    v19 = sub_1952690(v8, v45, v7, a3);
    goto LABEL_81;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_108:
  *v55 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v55;
}