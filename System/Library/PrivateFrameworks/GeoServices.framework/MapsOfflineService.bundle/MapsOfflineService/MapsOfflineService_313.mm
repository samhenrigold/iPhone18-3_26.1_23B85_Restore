void sub_12D75D8(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_12E7F18((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
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
      *(result + 48) = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(result + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(result + 56) = *(a2 + 56);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(result + 52) = *(a2 + 52);
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

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12D76F4(uint64_t a1)
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
  if (a1 != &off_2769FC0)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_149D354(v6);
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

void sub_12D77B4(uint64_t a1)
{
  sub_12D76F4(a1);

  operator delete();
}

uint64_t sub_12D77EC(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_149D390(*(result + 40));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
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

char *sub_12D785C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v54, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v54 + 1;
    v8 = *v54;
    if (*v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v54 + 2;
      }
    }

    v54 = v7;
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
          goto LABEL_79;
        }

        v5 |= 4u;
        v34 = v7 + 1;
        v33 = *v7;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v35 = *v34;
        v33 = (v35 << 7) + v33 - 128;
        if ((v35 & 0x80000000) == 0)
        {
          v34 = v7 + 2;
LABEL_59:
          v54 = v34;
          *(a1 + 49) = v33 != 0;
          goto LABEL_87;
        }

        v41 = sub_19587DC(v7, v33);
        v54 = v41;
        *(a1 + 49) = v42 != 0;
        if (!v41)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_79;
        }

        v5 |= 8u;
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
          v54 = v21;
          *(a1 + 50) = v20 != 0;
          goto LABEL_87;
        }

        v47 = sub_19587DC(v7, v20);
        v54 = v47;
        *(a1 + 50) = v48 != 0;
        if (!v47)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_79;
        }

        *(a1 + 16) |= 1u;
        v26 = *(a1 + 40);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          v26 = sub_14BDE5C(v28);
          *(a1 + 40) = v26;
          v7 = v54;
        }

        v29 = sub_21F6500(a3, v26, v7);
LABEL_86:
        v54 = v29;
        if (!v29)
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      }

      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_79;
      }

      v5 |= 2u;
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
        v54 = v14;
        *(a1 + 48) = v13 != 0;
        goto LABEL_87;
      }

      v45 = sub_19587DC(v7, v13);
      v54 = v45;
      *(a1 + 48) = v46 != 0;
      if (!v45)
      {
        goto LABEL_92;
      }
    }

LABEL_87:
    if (sub_195ADC0(a3, &v54, a3[11].u32[1]))
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
        goto LABEL_79;
      }

      v5 |= 0x20u;
      v36 = v7 + 1;
      v37 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      v38 = *v36;
      v37 = v37 + (v38 << 7) - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v36 = v7 + 2;
LABEL_64:
        v54 = v36;
        *(a1 + 52) = v37;
        goto LABEL_87;
      }

      v43 = sub_1958770(v7, v37);
      v54 = v43;
      *(a1 + 52) = v44;
      if (!v43)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v11 != 8 || v8 != 64)
      {
        goto LABEL_79;
      }

      v5 |= 0x40u;
      v23 = v7 + 1;
      v24 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      v25 = *v23;
      v24 = v24 + (v25 << 7) - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_43:
        v54 = v23;
        *(a1 + 56) = v24;
        goto LABEL_87;
      }

      v49 = sub_1958770(v7, v24);
      v54 = v49;
      *(a1 + 56) = v50;
      if (!v49)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_87;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_79;
    }

    v5 |= 0x10u;
    v31 = v7 + 1;
    v30 = *v7;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

    v32 = *v31;
    v30 = (v32 << 7) + v30 - 128;
    if ((v32 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_54:
      v54 = v31;
      *(a1 + 51) = v30 != 0;
      goto LABEL_87;
    }

    v39 = sub_19587DC(v7, v30);
    v54 = v39;
    *(a1 + 51) = v40 != 0;
    if (!v39)
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

  if (v11 == 6)
  {
    if (v8 == 49)
    {
      v16 = v7 - 1;
      v17 = *(a1 + 24);
      do
      {
        v18 = v16 + 1;
        v54 = v16 + 1;
        v19 = *(v16 + 1);
        if (v17 == *(a1 + 28))
        {
          sub_1959094((a1 + 24), v17 + 1);
          *(*(a1 + 32) + 8 * v17) = v19;
          v18 = v54;
        }

        else
        {
          *(*(a1 + 32) + 8 * v17) = v19;
        }

        *(a1 + 24) = ++v17;
        v16 = v18 + 8;
        v54 = v18 + 8;
      }

      while (*a3 > (v18 + 8) && *v16 == 49);
      goto LABEL_87;
    }

    if (v8 == 50)
    {
      v29 = sub_1958A20(a1 + 24, v7, a3);
      goto LABEL_86;
    }
  }

LABEL_79:
  if (v8)
  {
    v51 = (v8 & 7) == 4;
  }

  else
  {
    v51 = 1;
  }

  if (!v51)
  {
    v52 = *(a1 + 8);
    if (v52)
    {
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v53 = sub_11F1920((a1 + 8));
      v7 = v54;
    }

    v29 = sub_1952690(v8, v53, v7, a3);
    goto LABEL_86;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_92:
  v54 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

char *sub_12D7D30(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 40);
    *__dst = 10;
    v7 = *(v6 + 44);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_149DD64(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 48);
  *__dst = 16;
  __dst[1] = v9;
  __dst += 2;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 49);
  *__dst = 24;
  __dst[1] = v10;
  __dst += 2;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v11 = *(a1 + 50);
  *__dst = 32;
  __dst[1] = v11;
  __dst += 2;
  if ((v5 & 0x10) != 0)
  {
LABEL_22:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 51);
    *__dst = 40;
    __dst[1] = v12;
    __dst += 2;
  }

LABEL_25:
  v13 = *(a1 + 24);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = 8 * v13;
    do
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v16 = *(*(a1 + 32) + v14);
      *__dst = 49;
      *(__dst + 1) = v16;
      __dst += 9;
      v14 += 8;
    }

    while (v15 != v14);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v18 = *(a1 + 52);
    *__dst = 56;
    __dst[1] = v18;
    if (v18 > 0x7F)
    {
      __dst[1] = v18 | 0x80;
      v19 = v18 >> 7;
      __dst[2] = v18 >> 7;
      v17 = __dst + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = __dst[2];
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
      v17 = __dst + 2;
    }
  }

  else
  {
    v17 = __dst;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v23 = *(a1 + 56);
    *v17 = 64;
    v17[1] = v23;
    if (v23 > 0x7F)
    {
      v17[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v17[2] = v23 >> 7;
      v22 = v17 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v22 - 1) = v17 | 0x80;
          LODWORD(v17) = v24 >> 7;
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v17 + 2;
    }
  }

  else
  {
    v22 = v17;
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v22;
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

  if ((*a3 - v22) >= v29)
  {
    v31 = v29;
    memcpy(v22, v30, v29);
    v22 += v31;
    return v22;
  }

  return sub_1957130(a3, v30, v29, v22);
}

uint64_t sub_12D808C(uint64_t a1)
{
  v2 = 9 * *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x7F) != 0)
  {
    if (v3)
    {
      v4 = sub_149E4E4(*(a1 + 40));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += ((v3 >> 1) & 2) + (v3 & 2) + ((v3 >> 2) & 2) + ((v3 >> 3) & 2);
    if ((v3 & 0x20) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 0x40) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_12D81A0(char *result, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = result + 24;
    v7 = *(result + 6);
    sub_1959094(result + 6, v7 + v5);
    v8 = *(result + 4);
    *v6 += *(a2 + 24);
    memcpy((v8 + 8 * v7), *(a2 + 32), 8 * *(a2 + 24));
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x7F) != 0)
  {
    if (v9)
    {
      *(result + 4) |= 1u;
      v11 = *(result + 5);
      if (!v11)
      {
        v12 = *(result + 1);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_14BDE5C(v13);
        *(result + 5) = v11;
      }

      if (*(a2 + 40))
      {
        v14 = *(a2 + 40);
      }

      else
      {
        v14 = &off_27731C8;
      }

      sub_149E8CC(v11, v14, a3);
      if ((v9 & 2) == 0)
      {
LABEL_6:
        if ((v9 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_6;
    }

    result[48] = *(a2 + 48);
    if ((v9 & 4) == 0)
    {
LABEL_7:
      if ((v9 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    result[49] = *(a2 + 49);
    if ((v9 & 8) == 0)
    {
LABEL_8:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    result[50] = *(a2 + 50);
    if ((v9 & 0x10) == 0)
    {
LABEL_9:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    result[51] = *(a2 + 51);
    if ((v9 & 0x20) == 0)
    {
LABEL_10:
      if ((v9 & 0x40) == 0)
      {
LABEL_12:
        *(result + 4) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      *(result + 14) = *(a2 + 56);
      goto LABEL_12;
    }

LABEL_29:
    *(result + 13) = *(a2 + 52);
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4(result + 1, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12D830C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_149EC98(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_12D834C(void *a1)
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

void sub_12D83C0(void *a1)
{
  sub_12D834C(a1);

  operator delete();
}

uint64_t sub_12D83F8(uint64_t a1)
{
  if ((*(a1 + 16) & 0x3F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
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

char *sub_12D8420(uint64_t a1, char *a2, int32x2_t *a3)
{
  v46 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v46, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v46 + 1;
    v8 = *v46;
    if (*v46 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v46, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v46 + 2;
      }
    }

    v46 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_47;
      }

      v5 |= 8u;
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
        v46 = v22;
        *(a1 + 36) = v23;
        goto LABEL_54;
      }

      v36 = sub_1958770(v7, v23);
      v46 = v36;
      *(a1 + 36) = v37;
      if (!v36)
      {
        goto LABEL_71;
      }
    }

    else if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_47;
      }

      v5 |= 0x10u;
      v28 = v7 + 1;
      v29 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v30 = *v28;
      v29 = v29 + (v30 << 7) - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_46:
        v46 = v28;
        *(a1 + 40) = v29;
        goto LABEL_54;
      }

      v44 = sub_1958770(v7, v29);
      v46 = v44;
      *(a1 + 40) = v45;
      if (!v44)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_47;
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
        v46 = v16;
        *(a1 + 44) = v17;
        goto LABEL_54;
      }

      v38 = sub_1958770(v7, v17);
      v46 = v38;
      *(a1 + 44) = v39;
      if (!v38)
      {
        goto LABEL_71;
      }
    }

LABEL_54:
    if (sub_195ADC0(a3, &v46, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_47;
    }

    v5 |= 1u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_31:
      v46 = v19;
      *(a1 + 24) = v20;
      goto LABEL_54;
    }

    v34 = sub_1958770(v7, v20);
    v46 = v34;
    *(a1 + 24) = v35;
    if (!v34)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_47;
    }

    v5 |= 2u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_41:
      v46 = v25;
      *(a1 + 28) = v26;
      goto LABEL_54;
    }

    v42 = sub_1958770(v7, v26);
    v46 = v42;
    *(a1 + 28) = v43;
    if (!v42)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v11 == 3 && v8 == 24)
  {
    v5 |= 4u;
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
      v46 = v13;
      *(a1 + 32) = v14;
      goto LABEL_54;
    }

    v40 = sub_1958770(v7, v14);
    v46 = v40;
    *(a1 + 32) = v41;
    if (!v40)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

LABEL_47:
  if (v8)
  {
    v31 = (v8 & 7) == 4;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v7 = v46;
    }

    v46 = sub_1952690(v8, v33, v7, a3);
    if (!v46)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  v46 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v46;
}

char *sub_12D879C(uint64_t a1, char *__dst, unint64_t *a3)
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

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v28;
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

  if ((*a3 - v28) >= v36)
  {
    v38 = v36;
    memcpy(v28, v37, v36);
    v28 += v38;
    return v28;
  }

  return sub_1957130(a3, v37, v36, v28);
}

uint64_t sub_12D8B64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
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
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) != 0)
  {
LABEL_12:
    v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
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

double sub_12D8CC8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D0CA0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void *sub_12D8D00(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E795C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D8D80(void *a1)
{
  sub_12D8D00(a1);

  operator delete();
}

char *sub_12D8DB8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v37, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v37 + 1;
    v8 = *v37;
    if (*v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v37 + 2;
      }
    }

    v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4 && v8 == 34)
      {
        v17 = v7 - 1;
        while (1)
        {
          v18 = v17 + 1;
          v37 = v17 + 1;
          v19 = *(a1 + 40);
          if (v19 && (v20 = *(a1 + 32), v20 < *v19))
          {
            *(a1 + 32) = v20 + 1;
            v21 = *&v19[2 * v20 + 2];
          }

          else
          {
            v22 = sub_12E1F80(*(a1 + 24));
            v21 = sub_19593CC(a1 + 24, v22);
            v18 = v37;
          }

          v17 = sub_21F80B8(a3, v21, v18);
          v37 = v17;
          if (!v17)
          {
            goto LABEL_61;
          }

          if (*a3 <= v17 || *v17 != 34)
          {
            goto LABEL_49;
          }
        }
      }

      goto LABEL_42;
    }

    if (v8 != 24)
    {
      goto LABEL_42;
    }

    v5 |= 4u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_41:
      v37 = v27;
      *(a1 + 56) = v26;
      goto LABEL_49;
    }

    v35 = sub_19587DC(v7, v26);
    v37 = v35;
    *(a1 + 56) = v36;
    if (!v35)
    {
      goto LABEL_61;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v37, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_42;
    }

    v5 |= 1u;
    v23 = v7 + 1;
    v24 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v25 = *v23;
    v24 = v24 + (v25 << 7) - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_36:
      v37 = v23;
      *(a1 + 48) = v24;
      goto LABEL_49;
    }

    v33 = sub_1958770(v7, v24);
    v37 = v33;
    *(a1 + 48) = v34;
    if (!v33)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  if (v11 == 2 && v8 == 16)
  {
    v13 = v7 + 1;
    v14 = *v7;
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v13;
    v16 = (v15 << 7) + v14;
    LODWORD(v14) = v16 - 128;
    if (v15 < 0)
    {
      v37 = sub_19587DC(v7, (v16 - 128));
      if (!v37)
      {
        goto LABEL_61;
      }

      LODWORD(v14) = v32;
    }

    else
    {
      v13 = v7 + 2;
LABEL_17:
      v37 = v13;
    }

    if (sub_1393054(v14))
    {
      *(a1 + 16) |= 2u;
      *(a1 + 52) = v14;
    }

    else
    {
      sub_12E8418();
    }

    goto LABEL_49;
  }

LABEL_42:
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
      v7 = v37;
    }

    v37 = sub_1952690(v8, v31, v7, a3);
    if (!v37)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

char *sub_12D90C4(uint64_t a1, char *__dst, unint64_t *a3)
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

  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *v15 = 34;
      v22 = *(v21 + 64);
      v15[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v15 + 1);
      }

      else
      {
        v23 = v15 + 2;
      }

      v15 = sub_12D992C(v21, v23, a3);
    }
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v27)
  {
    v29 = v27;
    memcpy(v15, v28, v27);
    v15 += v29;
    return v15;
  }

  return sub_1957130(a3, v28, v27, v15);
}

uint64_t sub_12D9398(uint64_t a1)
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
      v7 = sub_12D9AF0(v6);
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
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12D94D8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_12D6F54(result);

    sub_12D75D8(result, a2);
  }
}

__n128 sub_12D952C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

void *sub_12D9590(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E7A64(a1 + 5);
  sub_12E79E0(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12D961C(void *a1)
{
  sub_12D9590(a1);

  operator delete();
}

uint64_t sub_12D9654(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12D9E20(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      result = sub_12DA9A4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_12D96F8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  if ((sub_195ADC0(a3, &v26, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
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
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v14 = v6 - 1;
          while (1)
          {
            v15 = v14 + 1;
            v26 = v14 + 1;
            v16 = *(a1 + 56);
            if (v16 && (v17 = *(a1 + 48), v17 < *v16))
            {
              *(a1 + 48) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = sub_12E20A4(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_21F81D8(a3, v18, v15);
            v26 = v14;
            if (!v14)
            {
              return 0;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = v20 + 1;
          v26 = v20 + 1;
          v22 = *(a1 + 32);
          if (v22 && (v23 = *(a1 + 24), v23 < *v22))
          {
            *(a1 + 24) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            sub_12E2024(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_21F8148(a3, v24, v21);
          v26 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_38;
          }
        }
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
        v6 = v26;
      }

      v26 = sub_1952690(v7, v13, v6, a3);
      if (!v26)
      {
        return 0;
      }

LABEL_38:
      if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
      {
        return v26;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v26;
    }

    return 0;
  }

  return v26;
}

char *sub_12D992C(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_12DA244(v8, v10, a3);
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

      __dst = sub_12DABBC(v13, v15, a3);
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v19)
  {
    v21 = v19;
    memcpy(__dst, v20, v19);
    __dst += v21;
    return __dst;
  }

  return sub_1957130(a3, v20, v19, __dst);
}

uint64_t sub_12D9AF0(uint64_t a1)
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
      v7 = sub_12DA5B4(v6);
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
      v14 = sub_12DAD38(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
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

    v9 += v18;
  }

  *(a1 + 64) = v9;
  return v9;
}

void sub_12D9BE8(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_12E7FA4((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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
    sub_12E8030((result + 40), v11, (v10 + 8), v9, **(result + 56) - *(result + 48));
    v12 = *(result + 48) + v9;
    *(result + 48) = v12;
    v13 = *(result + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((result + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12D9D18(uint64_t a1)
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

  if (a1 != &off_276A070)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_147B0C8(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_12D834C(v6);
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

void sub_12D9DE8(uint64_t a1)
{
  sub_12D9D18(a1);

  operator delete();
}

uint64_t sub_12D9E20(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_147B104(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_12D83F8(*(v1 + 32));
    }
  }

  if ((v2 & 0x7C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 53) = 0;
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

char *sub_12D9EA0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v44, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v44 + 1;
    v8 = *v44;
    if (*v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v44 + 2;
      }
    }

    v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 != 6)
      {
        if (v11 == 7 && v8 == 58)
        {
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

            sub_12E1E68(v21);
            v19 = v22;
            *(a1 + 32) = v22;
            v7 = v44;
          }

          v23 = sub_21F8268(a3, v19, v7);
          goto LABEL_60;
        }

        goto LABEL_53;
      }

      if (v8 != 48)
      {
        goto LABEL_53;
      }

      v5 |= 0x40u;
      v28 = v7 + 1;
      v27 = *v7;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_46:
        v44 = v28;
        *(a1 + 60) = v27 != 0;
        goto LABEL_61;
      }

      v38 = sub_19587DC(v7, v27);
      v44 = v38;
      *(a1 + 60) = v39 != 0;
      if (!v38)
      {
        goto LABEL_74;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_53;
      }

      v5 |= 0x10u;
      v24 = v7 + 1;
      v25 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      v26 = *v24;
      v25 = v25 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_41:
        v44 = v24;
        *(a1 + 52) = v25;
        goto LABEL_61;
      }

      v36 = sub_1958770(v7, v25);
      v44 = v36;
      *(a1 + 52) = v37;
      if (!v36)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_53;
      }

      v5 |= 0x20u;
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
        v44 = v12;
        *(a1 + 56) = v13;
        goto LABEL_61;
      }

      v40 = sub_1958770(v7, v13);
      v44 = v40;
      *(a1 + 56) = v41;
      if (!v40)
      {
        goto LABEL_74;
      }
    }

LABEL_61:
    if (sub_195ADC0(a3, &v44, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v5 |= 4u;
      *(a1 + 40) = *v7;
      v44 = v7 + 8;
      goto LABEL_61;
    }

    goto LABEL_53;
  }

  if (v11 != 2)
  {
    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_53;
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
      v44 = v16;
      *(a1 + 48) = v17;
      goto LABEL_61;
    }

    v42 = sub_1958770(v7, v17);
    v44 = v42;
    *(a1 + 48) = v43;
    if (!v42)
    {
      goto LABEL_74;
    }

    goto LABEL_61;
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v30 = *(a1 + 24);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_14BCA7C(v32);
      *(a1 + 24) = v30;
      v7 = v44;
    }

    v23 = sub_21F7F98(a3, v30, v7);
LABEL_60:
    v44 = v23;
    if (!v23)
    {
      goto LABEL_74;
    }

    goto LABEL_61;
  }

LABEL_53:
  if (v8)
  {
    v33 = (v8 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v7 = v44;
    }

    v23 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_74:
  v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

char *sub_12DA244(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 24);
    *__dst = 18;
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

    __dst = sub_147B444(v8, v10, a3);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 40);
  *__dst = 9;
  *(__dst + 1) = v7;
  __dst += 9;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 8) == 0)
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

  v11 = *(a1 + 48);
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
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 52);
    *v6 = 32;
    v6[1] = v16;
    if (v16 > 0x7F)
    {
      v6[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v6[2] = v16 >> 7;
      v15 = v6 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v15 - 1) = v6 | 0x80;
          LODWORD(v6) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v6 + 2;
    }
  }

  else
  {
    v15 = v6;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 56);
    *v15 = 40;
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 60);
    *v19 = 48;
    v19[1] = v24;
    v19 += 2;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 32);
    *v19 = 58;
    v26 = *(v25 + 20);
    v19[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v19 + 1);
    }

    else
    {
      v27 = v19 + 2;
    }

    v19 = sub_12D879C(v25, v27, a3);
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v19;
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

  if ((*a3 - v19) >= v31)
  {
    v33 = v31;
    memcpy(v19, v32, v31);
    v19 += v33;
    return v19;
  }

  return sub_1957130(a3, v32, v31, v19);
}

unint64_t sub_12DA5B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = sub_147B788(*(a1 + 24));
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
    v6 = sub_12D8B64(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v7 = v3;
  }

  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v7 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v2 & 0x20) != 0)
  {
LABEL_13:
    v7 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  result = v7 + ((v2 >> 5) & 2);
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

std::string *sub_12DA71C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v8 = *v8;
        }

        data = sub_14BCA7C(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2772380;
      }

      result = sub_129DA38(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_31;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3[1].__r_.__value_.__l.__size_;
    if (!v10)
    {
      v11 = v3->__r_.__value_.__l.__size_;
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_12E1E68(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_276A000;
    }

    result = sub_12BF854(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }

LABEL_31:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }

LABEL_32:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }

LABEL_33:
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      v3[2].__r_.__value_.__s.__data_[12] = *(a2 + 60);
      goto LABEL_10;
    }

LABEL_34:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
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

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12DA89C(uint64_t a1)
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

  if (a1 != &off_276A0B0)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_147B0C8(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_12D834C(v6);
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

void sub_12DA96C(uint64_t a1)
{
  sub_12DA89C(a1);

  operator delete();
}

uint64_t sub_12DA9A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_147B104(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_12D83F8(*(v1 + 32));
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

char *sub_12DAA14(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 == 7)
    {
      if (v7 == 58)
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

          sub_12E1E68(v17);
          v15 = v18;
          *(a1 + 32) = v18;
          v6 = v23;
        }

        v14 = sub_21F8268(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
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

        v19 = sub_14BCA7C(v21);
        *(a1 + 24) = v19;
        v6 = v23;
      }

      v14 = sub_21F7F98(a3, v19, v6);
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

char *sub_12DABBC(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_147B444(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 58;
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

    v4 = sub_12D879C(v10, v12, a3);
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

uint64_t sub_12DAD38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_147B788(*(a1 + 24));
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
    v5 = sub_12D8B64(*(a1 + 32));
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

std::string *sub_12DAE08(std::string *result, uint64_t a2)
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

        data = sub_14BCA7C(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2772380;
      }

      result = sub_129DA38(data, v8);
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

        sub_12E1E68(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_276A000;
      }

      result = sub_12BF854(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12DAF24(uint64_t a1)
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
  if (a1 != &off_276A0D8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_12DB428(v6);
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

void sub_12DAFDC(uint64_t a1)
{
  sub_12DAF24(a1);

  operator delete();
}

uint64_t sub_12DB014(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    v2 = *(result + 24);
    v3 = *(v2 + 8);
    result = v2 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v3)
    {
      result = sub_1957EA8(result);
    }
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

uint64_t sub_12DB080(uint64_t a1)
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

char *sub_12DB098(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_12E2198(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_21F82F8(a3, v14, v6);
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

char *sub_12DB1DC(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_12DB638(v6, v8, a3);
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

uint64_t sub_12DB2E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_12DB760(*(a1 + 24));
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

std::string *sub_12DB368(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    data = result[1].__r_.__value_.__l.__data_;
    if (!data)
    {
      v6 = *(v3 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      data = sub_12E2198(v7);
      *(v3 + 24) = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_276A0F8;
    }

    result = sub_12B9D50(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12DB428(void *a1)
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

void sub_12DB49C(void *a1)
{
  sub_12DB428(a1);

  operator delete();
}

char *sub_12DB4D4(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v13)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = 0;
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

char *sub_12DB638(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_12DB760(uint64_t a1)
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

uint64_t sub_12DB7E4(uint64_t a1)
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

  if (a1 != &off_276A118)
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
      sub_12DAF24(v7);
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

void sub_12DB8D0(uint64_t a1)
{
  sub_12DB7E4(a1);

  operator delete();
}

uint64_t sub_12DB908(uint64_t result)
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
  result = sub_16E4E44(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_12DB014(*(v1 + 40));
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

uint64_t sub_12DB9B8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v29 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v29, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v29 + 1);
    v7 = **v29;
    if (**v29 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v29, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v29 + 2);
      }
    }

    *v29 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 24)
        {
          v23 = v6 + 1;
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            *v29 = sub_19587DC(v6, v22);
            if (!*v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v23 = v6 + 2;
LABEL_35:
            *v29 = v23;
          }

          if (v22 > 1)
          {
            sub_12E8578();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 48) = v22;
          }

          continue;
        }

LABEL_38:
        if (v7)
        {
          v25 = (v7 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v29;
          }

LABEL_54:
          *v29 = 0;
          return *v29;
        }

        v26 = *(a1 + 8);
        if (v26)
        {
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v27 = sub_11F1920((a1 + 8));
          v6 = *v29;
        }

        v15 = sub_1952690(v7, v27, v6, a3);
        goto LABEL_45;
      }

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

        v16 = sub_12E2120(v18);
        *(a1 + 40) = v16;
        v6 = *v29;
      }

      v15 = sub_21F8388(a3, v16, v6);
    }

    else if (v10 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_38;
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

        v19 = sub_16F5828(v21);
        *(a1 + 32) = v19;
        v6 = *v29;
      }

      v15 = sub_21F4D60(a3, v19, v6);
    }

    else
    {
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
      v15 = sub_1958890(v14, *v29, a3);
    }

LABEL_45:
    *v29 = v15;
    if (!v15)
    {
      goto LABEL_54;
    }
  }

  return *v29;
}

char *sub_12DBC30(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

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
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 8) == 0)
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

  v11 = *(a1 + 48);
  *v4 = 24;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
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
    v7 = v4 + 2;
  }

LABEL_19:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 34;
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

    v7 = sub_12DB1DC(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v21)
  {
    v23 = v21;
    memcpy(v7, v22, v21);
    v7 += v23;
    return v7;
  }

  return sub_1957130(a3, v22, v21, v7);
}

uint64_t sub_12DBE4C(uint64_t a1)
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
    v7 = sub_16E51F0(*(a1 + 32));
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
    v8 = sub_12DB2E8(*(a1 + 40));
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

void sub_12DBF9C(uint64_t a1, uint64_t a2)
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

      v13 = sub_12E2120(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_276A0D8;
    }

    sub_12DB368(v13, v16);
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

uint64_t sub_12DC0FC(uint64_t a1)
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

uint64_t sub_12DC13C(uint64_t a1)
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
  if (a1 != &off_276A150)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_147B0C8(v6);
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

void sub_12DC1F4(uint64_t a1)
{
  sub_12DC13C(a1);

  operator delete();
}

uint64_t sub_12DC22C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_147B104(*(result + 24));
  }

  if ((v2 & 6) != 0)
  {
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

char *sub_12DC294(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v30 + 1;
    v8 = *v30;
    if (*v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v30 + 2;
      }
    }

    v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 4)
    {
      break;
    }

    if (v8 != 32)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
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
      v30 = v20;
      *(a1 + 36) = v21;
      goto LABEL_36;
    }

    v28 = sub_1958770(v7, v21);
    v30 = v28;
    *(a1 + 36) = v29;
    if (!v28)
    {
      goto LABEL_45;
    }

LABEL_36:
    if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
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
      v30 = v18;
      *(a1 + 32) = v17 != 0;
      goto LABEL_36;
    }

    v26 = sub_19587DC(v7, v17);
    v30 = v26;
    *(a1 + 32) = v27 != 0;
    if (!v26)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v23 = *(a1 + 24);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_14BCA7C(v25);
      *(a1 + 24) = v23;
      v7 = v30;
    }

    v16 = sub_21F7F98(a3, v23, v7);
LABEL_35:
    v30 = v16;
    if (!v16)
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
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_45:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_12DC4E0(uint64_t a1, char *__dst, unint64_t *a3)
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
    *__dst = 24;
    __dst[1] = v10;
    __dst += 2;
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
  *__dst = 18;
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

  __dst = sub_147B444(v7, v9, a3);
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

  v11 = *(a1 + 36);
  *__dst = 32;
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
  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v18)
  {
    v20 = v18;
    memcpy(v6, v19, v18);
    v6 += v20;
    return v6;
  }

  return sub_1957130(a3, v19, v18, v6);
}

uint64_t sub_12DC6A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = sub_147B788(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    result = v3 + (v2 & 2);
    if ((v2 & 4) != 0)
    {
      result += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_12DC768(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v8 = *v8;
        }

        data = sub_14BCA7C(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2772380;
      }

      result = sub_129DA38(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v3[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
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

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12DC868(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D10A0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1959094((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 8 * *(a2 + 24));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    sub_1957EF4(v4, (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  if ((v8 & 2) != 0)
  {
    operator new();
  }

  v9 = *(a2 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = v9;
  return a1;
}

uint64_t sub_12DC9F4(uint64_t a1)
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

  if (a1 != &off_276A178)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_16E4E08(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
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
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12DCACC(uint64_t a1)
{
  sub_12DC9F4(a1);

  operator delete();
}

unsigned __int8 *sub_12DCB04(unsigned __int8 *result)
{
  v1 = result;
  *(result + 6) = 0;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16E4E44(*(result + 5));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E4E44(*(v1 + 48));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_12DCB7C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 25)
        {
          v5 |= 4u;
          *(a1 + 56) = *v7;
          v26 = v7 + 8;
          goto LABEL_47;
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 33)
        {
          v16 = v7 - 1;
          v17 = *(a1 + 24);
          do
          {
            v18 = v16 + 1;
            v26 = v16 + 1;
            v19 = *(v16 + 1);
            if (v17 == *(a1 + 28))
            {
              sub_1959094((a1 + 24), v17 + 1);
              *(*(a1 + 32) + 8 * v17) = v19;
              v18 = v26;
            }

            else
            {
              *(*(a1 + 32) + 8 * v17) = v19;
            }

            *(a1 + 24) = ++v17;
            v16 = v18 + 8;
            v26 = v18 + 8;
          }

          while (*a3 > (v18 + 8) && *v16 == 33);
          goto LABEL_47;
        }

        if (v8 == 34)
        {
          v22 = sub_1958A20(a1 + 24, v7, a3);
          goto LABEL_46;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 40);
        if (!v13)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v13 = sub_16F5828(v21);
          *(a1 + 40) = v13;
LABEL_33:
          v7 = v26;
        }

LABEL_34:
        v22 = sub_21F4D60(a3, v13, v7);
        goto LABEL_46;
      }
    }

    else if (v11 == 2 && v8 == 18)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 48);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_16F5828(v15);
        *(a1 + 48) = v13;
        goto LABEL_33;
      }

      goto LABEL_34;
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
LABEL_46:
    v26 = v22;
    if (!v22)
    {
      goto LABEL_52;
    }

LABEL_47:
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

LABEL_52:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_12DCE1C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
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

    v4 = sub_16E5070(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
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

  v10 = *(a1 + 48);
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
  if ((v6 & 4) != 0)
  {
LABEL_17:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 56);
    *v4 = 25;
    *(v4 + 1) = v13;
    v4 += 9;
  }

LABEL_20:
  v14 = *(a1 + 24);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 8 * v14;
    do
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v17 = *(*(a1 + 32) + v15);
      *v4 = 33;
      *(v4 + 1) = v17;
      v4 += 9;
      v15 += 8;
    }

    while (v16 != v15);
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

uint64_t sub_12DD038(uint64_t a1)
{
  v2 = 9 * *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v4 = sub_16E51F0(*(a1 + 40));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      v5 = sub_16E51F0(*(a1 + 48));
      v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 4) != 0)
    {
      v2 += 9;
    }
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

    v2 += v9;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12DD10C(char *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 24;
    v6 = *(result + 6);
    sub_1959094(result + 6, v6 + v4);
    v7 = *(result + 4);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 7) != 0)
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

        v10 = sub_16F5828(v12);
        *(result + 5) = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_277E5E8;
      }

      sub_16E527C(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
LABEL_8:
          *(result + 4) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        *(result + 7) = *(a2 + 56);
        goto LABEL_8;
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

      v14 = sub_16F5828(v16);
      *(result + 6) = v14;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &off_277E5E8;
    }

    sub_16E527C(v14, v17);
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4(result + 1, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12DD270(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E5370(*(a1 + 40));
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

  result = sub_16E5370(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

double sub_12DD2CC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D1120;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_12DD320(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D1120;
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
    sub_12E80BC((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v11 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v11 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  v13 = *(a2 + 80);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 80) = v13;
  return a1;
}

uint64_t sub_12DD57C(uint64_t a1)
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

  if (a1 != &off_276A1B8)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_147B0C8(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_12DC9F4(v7);
      operator delete();
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      sub_147B0C8(v8);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_12E7AE8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12DD694(uint64_t a1)
{
  sub_12DD57C(a1);

  operator delete();
}

uint64_t sub_12DD6CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12DC22C(v4);
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

LABEL_23:
    result = sub_147B104(*(v1 + 56));
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_24;
  }

  v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_24:
  result = sub_12DCB04(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = sub_147B104(*(v1 + 72));
  }

LABEL_11:
  if ((v5 & 0xF0) != 0)
  {
    *(v1 + 86) = 0;
    *(v1 + 80) = 0;
  }

  if ((v5 & 0x700) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 96) = 0;
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

uint64_t sub_12DD7DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v70 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v70, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v70 + 1);
    v8 = **v70;
    if (**v70 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v70, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v70 + 2);
      }
    }

    *v70 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 6)
    {
      if (v8 >> 3 > 3)
      {
        if (v11 == 4)
        {
          if (v8 == 34)
          {
            v32 = v7 - 1;
            while (1)
            {
              v33 = v32 + 1;
              *v70 = v32 + 1;
              v34 = *(a1 + 40);
              if (v34 && (v35 = *(a1 + 32), v35 < *v34))
              {
                *(a1 + 32) = v35 + 1;
                v36 = *&v34[2 * v35 + 2];
              }

              else
              {
                v37 = sub_12E229C(*(a1 + 24));
                v36 = sub_19593CC(a1 + 24, v37);
                v33 = *v70;
              }

              v32 = sub_21F8418(a3, v36, v33);
              *v70 = v32;
              if (!v32)
              {
                goto LABEL_119;
              }

              if (*a3 <= v32 || *v32 != 34)
              {
                goto LABEL_100;
              }
            }
          }

          goto LABEL_92;
        }

        if (v11 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 2u;
            v48 = *(a1 + 56);
            if (!v48)
            {
              v49 = *(a1 + 8);
              v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
              if (v49)
              {
                v50 = *v50;
              }

              v48 = sub_14BCA7C(v50);
              *(a1 + 56) = v48;
              goto LABEL_90;
            }

            goto LABEL_91;
          }

          goto LABEL_92;
        }

        if (v11 != 6 || v8 != 48)
        {
          goto LABEL_92;
        }

        v5 |= 0x20u;
        v19 = v7 + 1;
        v20 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        v21 = *v19;
        v20 = v20 + (v21 << 7) - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v19 = v7 + 2;
LABEL_36:
          *v70 = v19;
          *(a1 + 88) = v20;
          goto LABEL_100;
        }

        v60 = sub_1958770(v7, v20);
        *v70 = v60;
        *(a1 + 88) = v61;
        if (!v60)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (v11 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v25 = *(a1 + 8);
            v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v25)
            {
              v26 = *v26;
            }

            v27 = sub_194DB04((a1 + 48), v26);
            v28 = sub_1958890(v27, *v70, a3);
            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v11 == 2)
        {
          if (v8 != 16)
          {
            goto LABEL_92;
          }

          v5 |= 0x10u;
          v42 = v7 + 1;
          v41 = *v7;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_73;
          }

          v43 = *v42;
          v41 = (v43 << 7) + v41 - 128;
          if ((v43 & 0x80000000) == 0)
          {
            v42 = v7 + 2;
LABEL_73:
            *v70 = v42;
            *(a1 + 80) = v41;
            goto LABEL_100;
          }

          v68 = sub_19587DC(v7, v41);
          *v70 = v68;
          *(a1 + 80) = v69;
          if (!v68)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (v11 != 3 || v8 != 24)
          {
            goto LABEL_92;
          }

          v5 |= 0x40u;
          v14 = v7 + 1;
          v13 = *v7;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if ((v15 & 0x80000000) == 0)
          {
            v14 = v7 + 2;
LABEL_19:
            *v70 = v14;
            *(a1 + 92) = v13 != 0;
            goto LABEL_100;
          }

          v56 = sub_19587DC(v7, v13);
          *v70 = v56;
          *(a1 + 92) = v57 != 0;
          if (!v56)
          {
            goto LABEL_119;
          }
        }
      }

      goto LABEL_100;
    }

    if (v8 >> 3 > 9)
    {
      break;
    }

    if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_92;
      }

      v5 |= 0x100u;
      v29 = v7 + 1;
      v30 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      v31 = *v29;
      v30 = v30 + (v31 << 7) - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v29 = v7 + 2;
LABEL_53:
        *v70 = v29;
        *(a1 + 96) = v30;
        goto LABEL_100;
      }

      v64 = sub_1958770(v7, v30);
      *v70 = v64;
      *(a1 + 96) = v65;
      if (!v64)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if (v11 == 8)
      {
        if (v8 == 66)
        {
          *(a1 + 16) |= 4u;
          v44 = *(a1 + 64);
          if (!v44)
          {
            v45 = *(a1 + 8);
            v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
            if (v45)
            {
              v46 = *v46;
            }

            sub_12E2318(v46);
            v44 = v47;
            *(a1 + 64) = v47;
            v7 = *v70;
          }

          v28 = sub_21F84A8(a3, v44, v7);
          goto LABEL_99;
        }

        goto LABEL_92;
      }

      if (v11 != 9 || v8 != 72)
      {
        goto LABEL_92;
      }

      v5 |= 0x80u;
      v17 = v7 + 1;
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_28:
        *v70 = v17;
        *(a1 + 93) = v16 != 0;
        goto LABEL_100;
      }

      v58 = sub_19587DC(v7, v16);
      *v70 = v58;
      *(a1 + 93) = v59 != 0;
      if (!v58)
      {
        goto LABEL_119;
      }
    }

LABEL_100:
    if (sub_195ADC0(a3, v70, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 10)
  {
    if (v8 != 80)
    {
      goto LABEL_92;
    }

    v5 |= 0x200u;
    v38 = v7 + 1;
    v39 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    v40 = *v38;
    v39 = v39 + (v40 << 7) - 128;
    if ((v40 & 0x80000000) == 0)
    {
      v38 = v7 + 2;
LABEL_68:
      *v70 = v38;
      *(a1 + 100) = v39;
      goto LABEL_100;
    }

    v66 = sub_1958770(v7, v39);
    *v70 = v66;
    *(a1 + 100) = v67;
    if (!v66)
    {
      goto LABEL_119;
    }

    goto LABEL_100;
  }

  if (v11 != 11)
  {
    if (v11 != 12 || v8 != 96)
    {
      goto LABEL_92;
    }

    v5 |= 0x400u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_44:
      *v70 = v22;
      *(a1 + 104) = v23;
      goto LABEL_100;
    }

    v62 = sub_1958770(v7, v23);
    *v70 = v62;
    *(a1 + 104) = v63;
    if (!v62)
    {
      goto LABEL_119;
    }

    goto LABEL_100;
  }

  if (v8 == 90)
  {
    *(a1 + 16) |= 8u;
    v48 = *(a1 + 72);
    if (!v48)
    {
      v51 = *(a1 + 8);
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51)
      {
        v52 = *v52;
      }

      v48 = sub_14BCA7C(v52);
      *(a1 + 72) = v48;
LABEL_90:
      v7 = *v70;
    }

LABEL_91:
    v28 = sub_21F7F98(a3, v48, v7);
LABEL_99:
    *v70 = v28;
    if (!v28)
    {
      goto LABEL_119;
    }

    goto LABEL_100;
  }

LABEL_92:
  if (v8)
  {
    v53 = (v8 & 7) == 4;
  }

  else
  {
    v53 = 1;
  }

  if (!v53)
  {
    v54 = *(a1 + 8);
    if (v54)
    {
      v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v55 = sub_11F1920((a1 + 8));
      v7 = *v70;
    }

    v28 = sub_1952690(v8, v55, v7, a3);
    goto LABEL_99;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_119:
  *v70 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v70;
}

char *sub_12DDDC8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 80);
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

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 92);
    *v7 = 24;
    v7[1] = v12;
    v7 += 2;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v7 = 34;
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

      v7 = sub_12DC4E0(v15, v17, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 56);
    *v7 = 42;
    v19 = *(v18 + 20);
    v7[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v7 + 1);
    }

    else
    {
      v20 = v7 + 2;
    }

    v7 = sub_147B444(v18, v20, a3);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v22 = *(a1 + 88);
    *v7 = 48;
    v7[1] = v22;
    if (v22 > 0x7F)
    {
      v7[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v7[2] = v22 >> 7;
      v21 = v7 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v21 - 1) = v7 | 0x80;
          LODWORD(v7) = v23 >> 7;
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v7 + 2;
    }
  }

  else
  {
    v21 = v7;
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 96);
    *v21 = 56;
    v21[1] = v26;
    if (v26 > 0x7F)
    {
      v21[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v21[2] = v26 >> 7;
      v25 = v21 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v21) = v21[2];
        do
        {
          *(v25 - 1) = v21 | 0x80;
          LODWORD(v21) = v27 >> 7;
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = v21 + 2;
    }
  }

  else
  {
    v25 = v21;
  }

  if ((v6 & 4) == 0)
  {
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_51;
    }

LABEL_59:
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v33 = *(a1 + 93);
    *v25 = 72;
    v25[1] = v33;
    v25 += 2;
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_62;
  }

  if (*a3 <= v25)
  {
    v25 = sub_225EB68(a3, v25);
  }

  v30 = *(a1 + 64);
  *v25 = 66;
  v31 = *(v30 + 20);
  v25[1] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v25 + 1);
  }

  else
  {
    v32 = v25 + 2;
  }

  v25 = sub_12DCE1C(v30, v32, a3);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_59;
  }

LABEL_51:
  if ((v6 & 0x200) == 0)
  {
LABEL_52:
    v29 = v25;
    goto LABEL_69;
  }

LABEL_62:
  if (*a3 <= v25)
  {
    v25 = sub_225EB68(a3, v25);
  }

  v34 = *(a1 + 100);
  *v25 = 80;
  v25[1] = v34;
  if (v34 > 0x7F)
  {
    v25[1] = v34 | 0x80;
    v35 = v34 >> 7;
    v25[2] = v34 >> 7;
    v29 = v25 + 3;
    if (v34 >= 0x4000)
    {
      LOBYTE(v25) = v25[2];
      do
      {
        *(v29 - 1) = v25 | 0x80;
        LODWORD(v25) = v35 >> 7;
        *v29++ = v35 >> 7;
        v36 = v35 >> 14;
        v35 >>= 7;
      }

      while (v36);
    }
  }

  else
  {
    v29 = v25 + 2;
  }

LABEL_69:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v37 = *(a1 + 72);
    *v29 = 90;
    v38 = *(v37 + 20);
    v29[1] = v38;
    if (v38 > 0x7F)
    {
      v39 = sub_19575D0(v38, v29 + 1);
    }

    else
    {
      v39 = v29 + 2;
    }

    v29 = sub_147B444(v37, v39, a3);
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v41 = *(a1 + 104);
    *v29 = 96;
    v29[1] = v41;
    if (v41 > 0x7F)
    {
      v29[1] = v41 | 0x80;
      v42 = v41 >> 7;
      v29[2] = v41 >> 7;
      v40 = v29 + 3;
      if (v41 >= 0x4000)
      {
        LOBYTE(v29) = v29[2];
        do
        {
          *(v40 - 1) = v29 | 0x80;
          LODWORD(v29) = v42 >> 7;
          *v40++ = v42 >> 7;
          v43 = v42 >> 14;
          v42 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v40 = v29 + 2;
    }
  }

  else
  {
    v40 = v29;
  }

  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v40;
  }

  v46 = v44 & 0xFFFFFFFFFFFFFFFCLL;
  v47 = *(v46 + 31);
  if (v47 < 0)
  {
    v48 = *(v46 + 8);
    v47 = *(v46 + 16);
  }

  else
  {
    v48 = (v46 + 8);
  }

  if ((*a3 - v40) >= v47)
  {
    v49 = v47;
    memcpy(v40, v48, v47);
    v40 += v49;
    return v40;
  }

  return sub_1957130(a3, v48, v47, v40);
}

uint64_t sub_12DE374(uint64_t a1)
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
      v7 = sub_12DC6A8(v6);
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
  if (v8)
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

        goto LABEL_29;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v14 = sub_147B788(*(a1 + 56));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_29:
    v15 = sub_12DD038(*(a1 + 64));
    v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_14:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

LABEL_30:
    v16 = sub_147B788(*(a1 + 72));
    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_15:
      if ((v8 & 0x20) == 0)
      {
LABEL_17:
        v2 += ((v8 >> 6) & 2) + ((v8 >> 5) & 2);
        goto LABEL_18;
      }

LABEL_16:
      v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_17;
    }

LABEL_31:
    v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v8 & 0x700) == 0)
  {
    goto LABEL_23;
  }

  if ((v8 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x200) == 0)
    {
LABEL_21:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  v2 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x400) != 0)
  {
LABEL_22:
    v2 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_23:
  v9 = *(a1 + 8);
  if (v9)
  {
    v17 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v2 += v18;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12DE604(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E80BC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if (v9)
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
      *(a1 + 16) |= 2u;
      v14 = *(a1 + 56);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_14BCA7C(v16);
        *(a1 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_2772380;
      }

      sub_129DA38(v14, v17);
      if ((v9 & 4) == 0)
      {
LABEL_11:
        if ((v9 & 8) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_44;
      }
    }

    else if ((v9 & 4) == 0)
    {
      goto LABEL_11;
    }

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

      sub_12E2318(v20);
      *(a1 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v21 = *(a2 + 64);
    }

    else
    {
      v21 = &off_276A178;
    }

    sub_12DD10C(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_12:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_52;
    }

LABEL_44:
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 72);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_14BCA7C(v24);
      *(a1 + 72) = v22;
    }

    if (*(a2 + 72))
    {
      v25 = *(a2 + 72);
    }

    else
    {
      v25 = &off_2772380;
    }

    sub_129DA38(v22, v25);
    if ((v9 & 0x10) == 0)
    {
LABEL_13:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(a1 + 80) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
LABEL_14:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(a1 + 88) = *(a2 + 88);
    if ((v9 & 0x40) == 0)
    {
LABEL_15:
      if ((v9 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v9;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 93) = *(a2 + 93);
      goto LABEL_17;
    }

LABEL_54:
    *(a1 + 92) = *(a2 + 92);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v9 & 0x700) == 0)
  {
    goto LABEL_24;
  }

  if ((v9 & 0x100) == 0)
  {
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_21;
    }

LABEL_57:
    *(a1 + 100) = *(a2 + 100);
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *(a1 + 96) = *(a2 + 96);
  if ((v9 & 0x200) != 0)
  {
    goto LABEL_57;
  }

LABEL_21:
  if ((v9 & 0x400) != 0)
  {
LABEL_22:
    *(a1 + 104) = *(a2 + 104);
  }

LABEL_23:
  *(a1 + 16) |= v9;
LABEL_24:
  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_12DE878(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_12DD6CC(a1);

    sub_12DE604(a1, a2);
  }
}

uint64_t sub_12DE8C4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    return 1;
  }

  result = sub_12DD270(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 sub_12DE8F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  LODWORD(v11) = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v11;
  return result;
}

void *sub_12DE998(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 11));
  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12DEA2C(void *a1)
{
  sub_12DE998(a1);

  operator delete();
}

uint64_t *sub_12DEA64(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 14) = 0;
  *(result + 20) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12DEA84(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  if (sub_195ADC0(a3, &v17, a3[11].u32[1]))
  {
    return v17;
  }

  while (1)
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
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          v11 = (a1 + 64);
          goto LABEL_20;
        }

        if (v7 == 24)
        {
          LODWORD(v18) = sub_1211E88(&v17);
          v13 = (a1 + 64);
LABEL_29:
          sub_194FE98(v13, &v18);
          if (!v17)
          {
            return 0;
          }

          goto LABEL_39;
        }
      }

      else if (v10 == 4)
      {
        if (v7 == 34)
        {
          v12 = sub_1958A20(a1 + 88, v6, a3);
          goto LABEL_38;
        }

        if (v7 == 33)
        {
          v18 = *v6;
          sub_1950044((a1 + 88), &v18);
          v17 += 8;
          goto LABEL_39;
        }
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        v11 = (a1 + 16);
        goto LABEL_20;
      }

      if (v7 == 8)
      {
        LODWORD(v18) = sub_1211E88(&v17);
        v13 = (a1 + 16);
        goto LABEL_29;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v11 = (a1 + 40);
LABEL_20:
        v12 = sub_1958918(v11, v6, a3);
        goto LABEL_38;
      }

      if (v7 == 16)
      {
        LODWORD(v18) = sub_1211E88(&v17);
        v13 = (a1 + 40);
        goto LABEL_29;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v15 = *(a1 + 8);
    if (v15)
    {
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v16 = sub_11F1920((a1 + 8));
      v6 = v17;
    }

    v12 = sub_1952690(v7, v16, v6, a3);
LABEL_38:
    v17 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v17, a3[11].u32[1]))
    {
      return v17;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v17;
  }

  return 0;
}

char *sub_12DECB4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    *v4 = 10;
    v7 = v4 + 1;
    if (v6 >= 0x80)
    {
      do
      {
        *v7++ = v6 | 0x80;
        v48 = v6 >> 14;
        v6 >>= 7;
      }

      while (v48);
      v4 = v7 - 1;
    }

    v8 = v4 + 2;
    *v7 = v6;
    v9 = *(a1 + 24);
    v10 = &v9[*(a1 + 16)];
    do
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v12 = *v9++;
      v11 = v12;
      *v8 = v12;
      if (v12 > 0x7F)
      {
        *v8 = v11 | 0x80;
        v13 = v11 >> 7;
        v8[1] = v11 >> 7;
        v4 = v8 + 2;
        if (v11 >= 0x4000)
        {
          LOBYTE(v14) = v8[1];
          do
          {
            *(v4 - 1) = v14 | 0x80;
            v14 = v13 >> 7;
            *v4++ = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v4 = v8 + 1;
      }

      v8 = v4;
    }

    while (v9 < v10);
  }

  v16 = *(a1 + 56);
  if (v16 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    *v4 = 18;
    v17 = v4 + 1;
    if (v16 >= 0x80)
    {
      do
      {
        *v17++ = v16 | 0x80;
        v49 = v16 >> 14;
        v16 >>= 7;
      }

      while (v49);
      v4 = v17 - 1;
    }

    v18 = v4 + 2;
    *v17 = v16;
    v19 = *(a1 + 48);
    v20 = &v19[*(a1 + 40)];
    do
    {
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v22 = *v19++;
      v21 = v22;
      *v18 = v22;
      if (v22 > 0x7F)
      {
        *v18 = v21 | 0x80;
        v23 = v21 >> 7;
        v18[1] = v21 >> 7;
        v4 = v18 + 2;
        if (v21 >= 0x4000)
        {
          LOBYTE(v24) = v18[1];
          do
          {
            *(v4 - 1) = v24 | 0x80;
            v24 = v23 >> 7;
            *v4++ = v23 >> 7;
            v25 = v23 >> 14;
            v23 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v4 = v18 + 1;
      }

      v18 = v4;
    }

    while (v19 < v20);
  }

  v26 = *(a1 + 80);
  if (v26 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    *v4 = 26;
    v27 = v4 + 1;
    if (v26 >= 0x80)
    {
      do
      {
        *v27++ = v26 | 0x80;
        v50 = v26 >> 14;
        v26 >>= 7;
      }

      while (v50);
      v4 = v27 - 1;
    }

    v28 = v4 + 2;
    *v27 = v26;
    v29 = *(a1 + 72);
    v30 = &v29[*(a1 + 64)];
    do
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v32 = *v29++;
      v31 = v32;
      *v28 = v32;
      if (v32 > 0x7F)
      {
        *v28 = v31 | 0x80;
        v33 = v31 >> 7;
        v28[1] = v31 >> 7;
        v4 = v28 + 2;
        if (v31 >= 0x4000)
        {
          LOBYTE(v34) = v28[1];
          do
          {
            *(v4 - 1) = v34 | 0x80;
            v34 = v33 >> 7;
            *v4++ = v33 >> 7;
            v35 = v33 >> 14;
            v33 >>= 7;
          }

          while (v35);
        }
      }

      else
      {
        v4 = v28 + 1;
      }

      v28 = v4;
    }

    while (v29 < v30);
  }

  v36 = *(a1 + 88);
  if (v36 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v36 = *(a1 + 88);
    }

    v37 = 8 * v36;
    *v4 = 34;
    v38 = v4 + 1;
    v39 = v37;
    if (v37 >= 0x80)
    {
      do
      {
        *v38++ = v39 | 0x80;
        v51 = v39 >> 14;
        v39 >>= 7;
      }

      while (v51);
      v4 = v38 - 1;
    }

    v40 = v4 + 2;
    *v38 = v39;
    v41 = *(a1 + 96);
    if ((*a3 - v40) < v37)
    {
      v4 = sub_1957130(a3, v41, v37, v40);
    }

    else
    {
      v42 = v37;
      memcpy(v40, v41, v37);
      v4 = &v40[v42];
    }
  }

  v43 = *(a1 + 8);
  if ((v43 & 1) == 0)
  {
    return v4;
  }

  v45 = v43 & 0xFFFFFFFFFFFFFFFCLL;
  v46 = *(v45 + 31);
  if (v46 < 0)
  {
    v47 = *(v45 + 8);
    v46 = *(v45 + 16);
  }

  else
  {
    v47 = (v45 + 8);
  }

  if ((*a3 - v4) >= v46)
  {
    v52 = v46;
    memcpy(v4, v47, v46);
    v4 += v52;
    return v4;
  }

  return sub_1957130(a3, v47, v46, v4);
}

uint64_t sub_12DF0E0(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 16));
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

  *(a1 + 32) = v3;
  v5 = v4 + v2;
  v6 = sub_1959E5C((a1 + 40));
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

  *(a1 + 56) = v7;
  v9 = v5 + v6;
  v10 = sub_1959E5C((a1 + 64));
  if (v10)
  {
    v11 = v10;
    if ((v10 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v12;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 80) = v11;
  v13 = v9 + v10;
  v14 = *(a1 + 88);
  v15 = 8 * v14;
  if (v14)
  {
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v13 += v16;
  }

  result = v13 + v15;
  v18 = *(a1 + 8);
  if (v18)
  {
    v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    result += v20;
  }

  *(a1 + 104) = result;
  return result;
}

std::string *sub_12DF248(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__s.__data_[16];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1958E5C(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[4 * v6], *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    v10 = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&v10[4 * v9], *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 64);
  if (v11)
  {
    v12 = SLODWORD(v3[2].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[2].__r_.__value_.__r.__words[2], v12 + v11);
    v13 = v3[3].__r_.__value_.__l.__data_;
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) += *(a2 + 64);
    result = memcpy(&v13[4 * v12], *(a2 + 72), 4 * *(a2 + 64));
  }

  v14 = *(a2 + 88);
  if (v14)
  {
    v15 = SLODWORD(v3[3].__r_.__value_.__r.__words[2]);
    sub_1959094(&v3[3].__r_.__value_.__r.__words[2], v15 + v14);
    v16 = v3[4].__r_.__value_.__l.__data_;
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) += *(a2 + 88);
    result = memcpy(&v16[8 * v15], *(a2 + 96), 8 * *(a2 + 88));
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12DF3D0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12DF45C(void *a1)
{
  sub_12DF3D0(a1);

  operator delete();
}

uint64_t *sub_12DF494(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 14) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12DF4B0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  if (sub_195ADC0(a3, &v17, a3[11].u32[1]))
  {
    return v17;
  }

  while (1)
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 4)
    {
      if (v7 == 34)
      {
        v12 = sub_1958A20(a1 + 64, v6, a3);
        goto LABEL_32;
      }

      if (v7 == 33)
      {
        v18 = *v6;
        sub_1950044((a1 + 64), &v18);
        v17 += 8;
        goto LABEL_33;
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        v11 = (a1 + 40);
        goto LABEL_14;
      }

      if (v7 == 24)
      {
        LODWORD(v18) = sub_1211E88(&v17);
        v13 = (a1 + 40);
        goto LABEL_23;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v11 = (a1 + 16);
LABEL_14:
        v12 = sub_1958918(v11, v6, a3);
        goto LABEL_32;
      }

      if (v7 == 16)
      {
        LODWORD(v18) = sub_1211E88(&v17);
        v13 = (a1 + 16);
LABEL_23:
        sub_194FE98(v13, &v18);
        if (!v17)
        {
          return 0;
        }

        goto LABEL_33;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v15 = *(a1 + 8);
    if (v15)
    {
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v16 = sub_11F1920((a1 + 8));
      v6 = v17;
    }

    v12 = sub_1952690(v7, v16, v6, a3);
LABEL_32:
    v17 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_33:
    if (sub_195ADC0(a3, &v17, a3[11].u32[1]))
    {
      return v17;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v17;
  }

  return 0;
}

char *sub_12DF6A0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    *v4 = 18;
    v7 = v4 + 1;
    if (v6 >= 0x80)
    {
      do
      {
        *v7++ = v6 | 0x80;
        v38 = v6 >> 14;
        v6 >>= 7;
      }

      while (v38);
      v4 = v7 - 1;
    }

    v8 = v4 + 2;
    *v7 = v6;
    v9 = *(a1 + 24);
    v10 = &v9[*(a1 + 16)];
    do
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v12 = *v9++;
      v11 = v12;
      *v8 = v12;
      if (v12 > 0x7F)
      {
        *v8 = v11 | 0x80;
        v13 = v11 >> 7;
        v8[1] = v11 >> 7;
        v4 = v8 + 2;
        if (v11 >= 0x4000)
        {
          LOBYTE(v14) = v8[1];
          do
          {
            *(v4 - 1) = v14 | 0x80;
            v14 = v13 >> 7;
            *v4++ = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v4 = v8 + 1;
      }

      v8 = v4;
    }

    while (v9 < v10);
  }

  v16 = *(a1 + 56);
  if (v16 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    *v4 = 26;
    v17 = v4 + 1;
    if (v16 >= 0x80)
    {
      do
      {
        *v17++ = v16 | 0x80;
        v39 = v16 >> 14;
        v16 >>= 7;
      }

      while (v39);
      v4 = v17 - 1;
    }

    v18 = v4 + 2;
    *v17 = v16;
    v19 = *(a1 + 48);
    v20 = &v19[*(a1 + 40)];
    do
    {
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v22 = *v19++;
      v21 = v22;
      *v18 = v22;
      if (v22 > 0x7F)
      {
        *v18 = v21 | 0x80;
        v23 = v21 >> 7;
        v18[1] = v21 >> 7;
        v4 = v18 + 2;
        if (v21 >= 0x4000)
        {
          LOBYTE(v24) = v18[1];
          do
          {
            *(v4 - 1) = v24 | 0x80;
            v24 = v23 >> 7;
            *v4++ = v23 >> 7;
            v25 = v23 >> 14;
            v23 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v4 = v18 + 1;
      }

      v18 = v4;
    }

    while (v19 < v20);
  }

  v26 = *(a1 + 64);
  if (v26 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v26 = *(a1 + 64);
    }

    v27 = 8 * v26;
    *v4 = 34;
    v28 = v4 + 1;
    v29 = v27;
    if (v27 >= 0x80)
    {
      do
      {
        *v28++ = v29 | 0x80;
        v40 = v29 >> 14;
        v29 >>= 7;
      }

      while (v40);
      v4 = v28 - 1;
    }

    v30 = v4 + 2;
    *v28 = v29;
    v31 = *(a1 + 72);
    if ((*a3 - v30) < v27)
    {
      v4 = sub_1957130(a3, v31, v27, v30);
    }

    else
    {
      v32 = v27;
      memcpy(v30, v31, v27);
      v4 = &v30[v32];
    }
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v36)
  {
    v41 = v36;
    memcpy(v4, v37, v36);
    v4 += v41;
    return v4;
  }

  return sub_1957130(a3, v37, v36, v4);
}

uint64_t sub_12DF9DC(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 16));
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

  *(a1 + 32) = v3;
  v5 = v4 + v2;
  v6 = sub_1959E5C((a1 + 40));
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

  *(a1 + 56) = v7;
  v9 = v5 + v6;
  v10 = *(a1 + 64);
  v11 = 8 * v10;
  if (v10)
  {
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v12;
  }

  result = v9 + v11;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 80) = result;
  return result;
}

std::string *sub_12DFAF8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__s.__data_[16];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1958E5C(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[4 * v6], *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    v10 = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&v10[4 * v9], *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 64);
  if (v11)
  {
    v12 = SLODWORD(v3[2].__r_.__value_.__r.__words[2]);
    sub_1959094(&v3[2].__r_.__value_.__r.__words[2], v12 + v11);
    v13 = v3[3].__r_.__value_.__l.__data_;
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) += *(a2 + 64);
    result = memcpy(&v13[8 * v12], *(a2 + 72), 8 * *(a2 + 64));
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12DFC3C(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26D12A0;
  result[1] = v3;
  result[2] = a2;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = a2;
  result[7] = 0;
  return result;
}

void *sub_12DFC74(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 5));
  sub_12E7B6C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12DFCFC(void *a1)
{
  sub_12DFC74(a1);

  operator delete();
}

char *sub_12DFD34(uint64_t a1)
{
  result = sub_12E5F3C((a1 + 16));
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_12DFD88(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  if (sub_195ADC0(a3, &v21, a3[11].u32[1]))
  {
    return v21;
  }

  while (1)
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
    if (v7 >> 3 != 2)
    {
      break;
    }

    if (v7 == 18)
    {
      v14 = sub_1958918((a1 + 40), v6, a3);
      goto LABEL_21;
    }

    if (v7 != 16)
    {
      goto LABEL_12;
    }

    v22 = sub_1211E88(&v21);
    sub_194FE98((a1 + 40), &v22);
    if (!v21)
    {
      return 0;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v21, a3[11].u32[1]))
    {
      return v21;
    }
  }

  if (v7 >> 3 == 1 && v7 == 10)
  {
    v15 = v6 - 1;
    while (1)
    {
      v16 = v15 + 1;
      v21 = v15 + 1;
      v17 = *(a1 + 32);
      if (v17 && (v18 = *(a1 + 24), v18 < *v17))
      {
        *(a1 + 24) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = sub_12E2548(*(a1 + 16));
        v19 = sub_19593CC(a1 + 16, v20);
        v16 = v21;
      }

      v15 = sub_21F8538(a3, v19, v16);
      v21 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 10)
      {
        goto LABEL_31;
      }
    }
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
      v6 = v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_21:
    v21 = v14;
    if (!v14)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v21;
  }

  return 0;
}

char *sub_12DFF7C(uint64_t a1, char *__dst, unint64_t *a3)
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
      v9 = *(v8 + 80);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_12DF6A0(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11 > 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    *__dst = 18;
    v12 = __dst + 1;
    if (v11 >= 0x80)
    {
      do
      {
        *v12++ = v11 | 0x80;
        v26 = v11 >> 14;
        v11 >>= 7;
      }

      while (v26);
      __dst = v12 - 1;
    }

    v13 = __dst + 2;
    *v12 = v11;
    v14 = *(a1 + 48);
    v15 = &v14[*(a1 + 40)];
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
        __dst = v13 + 2;
        if (v16 >= 0x4000)
        {
          LOBYTE(v19) = v13[1];
          do
          {
            *(__dst - 1) = v19 | 0x80;
            v19 = v18 >> 7;
            *__dst++ = v18 >> 7;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
        }
      }

      else
      {
        __dst = v13 + 1;
      }

      v13 = __dst;
    }

    while (v14 < v15);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v24)
  {
    v27 = v24;
    memcpy(__dst, v25, v24);
    __dst += v27;
    return __dst;
  }

  return sub_1957130(a3, v25, v24, __dst);
}

uint64_t sub_12E01AC(uint64_t a1)
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
      v7 = sub_12DF9DC(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = sub_1959E5C((a1 + 40));
  if (v8)
  {
    v9 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v10;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 56) = v9;
  result = v2 + v8;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 60) = result;
  return result;
}

std::string *sub_12E029C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_12E8148(v3 + 2, v6, (v5 + 8), v4, **(v3 + 4) - *(v3 + 6));
    v7 = *(v3 + 6) + v4;
    *(v3 + 6) = v7;
    v8 = *(v3 + 4);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if (v9)
  {
    v10 = *(v3 + 10);
    sub_1958E5C(v3 + 10, v10 + v9);
    v11 = *(v3 + 6);
    *(v3 + 10) += *(a2 + 40);
    result = memcpy((v11 + 4 * v10), *(a2 + 48), 4 * *(a2 + 40));
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(v3 + 1, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_12E039C(std::string *result, char *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_12DFD34(result);

    return sub_12E029C(v4, a2);
  }

  return result;
}

__n128 sub_12E03F0(void *a1, uint64_t a2)
{
  v2 = a1[1];
  a1[1] = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = a1[2];
  v4 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  v5 = a1[4];
  a1[4] = *(a2 + 32);
  *(a2 + 32) = v5;
  v6 = a1[5];
  v7 = a1[6];
  result = *(a2 + 40);
  *(a1 + 5) = result;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  return result;
}

void *sub_12E0444(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E672C(a1 + 15);
  sub_12E7C74(a1 + 12);
  sub_1956AFC(a1 + 9);
  sub_12E7AE8(a1 + 6);
  sub_12E7BF0(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12E04F0(void *a1)
{
  sub_12E0444(a1);

  operator delete();
}

uint64_t sub_12E0528(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v52 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v52, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v52 + 1);
    v8 = **v52;
    if (**v52 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v52, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v52 + 2);
      }
    }

    *v52 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v26 = v7 - 1;
          while (1)
          {
            v27 = v26 + 1;
            *v52 = v26 + 1;
            v28 = *(a1 + 40);
            if (v28 && (v29 = *(a1 + 32), v29 < *v28))
            {
              *(a1 + 32) = v29 + 1;
              v30 = *&v28[2 * v29 + 2];
            }

            else
            {
              sub_12E23B8(*(a1 + 24));
              v30 = sub_19593CC(a1 + 24, v31);
              v27 = *v52;
            }

            v26 = sub_21F85C8(a3, v30, v27);
            *v52 = v26;
            if (!v26)
            {
              goto LABEL_85;
            }

            if (*a3 <= v26 || *v26 != 26)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 34)
        {
          v38 = v7 - 1;
          while (1)
          {
            v39 = v38 + 1;
            *v52 = v38 + 1;
            v40 = *(a1 + 64);
            if (v40 && (v41 = *(a1 + 56), v41 < *v40))
            {
              *(a1 + 56) = v41 + 1;
              v42 = *&v40[2 * v41 + 2];
            }

            else
            {
              v43 = sub_12E229C(*(a1 + 48));
              v42 = sub_19593CC(a1 + 48, v43);
              v39 = *v52;
            }

            v38 = sub_21F8418(a3, v42, v39);
            *v52 = v38;
            if (!v38)
            {
              goto LABEL_85;
            }

            if (*a3 <= v38 || *v38 != 34)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v11 == 5 && v8 == 42)
      {
        v12 = v7 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          *v52 = v12 + 1;
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
            v13 = *v52;
          }

          v12 = sub_1958890(v16, v13, a3);
          *v52 = v12;
          if (!v12)
          {
            goto LABEL_85;
          }

          if (*a3 <= v12 || *v12 != 42)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_71;
    }

    if (v11 == 6)
    {
      break;
    }

    if (v11 != 7)
    {
      if (v11 == 8 && v8 == 66)
      {
        v20 = v7 - 1;
        while (1)
        {
          v21 = v20 + 1;
          *v52 = v20 + 1;
          v22 = *(a1 + 136);
          if (v22 && (v23 = *(a1 + 128), v23 < *v22))
          {
            *(a1 + 128) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            sub_12E260C(*(a1 + 120));
            v24 = sub_19593CC(a1 + 120, v25);
            v21 = *v52;
          }

          v20 = sub_21F6FD8(a3, v24, v21);
          *v52 = v20;
          if (!v20)
          {
            goto LABEL_85;
          }

          if (*a3 <= v20 || *v20 != 66)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_71;
    }

    if (v8 != 56)
    {
      goto LABEL_71;
    }

    v45 = v7 + 1;
    v44 = *v7;
    if ((v44 & 0x8000000000000000) == 0)
    {
      goto LABEL_70;
    }

    v46 = *v45;
    v44 = (v46 << 7) + v44 - 128;
    if ((v46 & 0x80000000) == 0)
    {
      v45 = v7 + 2;
LABEL_70:
      *v52 = v45;
      *(a1 + 144) = v44 != 0;
      v5 = 1;
      goto LABEL_78;
    }

    v50 = sub_19587DC(v7, v44);
    *v52 = v50;
    *(a1 + 144) = v51 != 0;
    v5 = 1;
    if (!v50)
    {
      goto LABEL_85;
    }

LABEL_78:
    if (sub_195ADC0(a3, v52, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 50)
  {
    v32 = v7 - 1;
    while (1)
    {
      v33 = v32 + 1;
      *v52 = v32 + 1;
      v34 = *(a1 + 112);
      if (v34 && (v35 = *(a1 + 104), v35 < *v34))
      {
        *(a1 + 104) = v35 + 1;
        v36 = *&v34[2 * v35 + 2];
      }

      else
      {
        v37 = sub_12E2470(*(a1 + 96));
        v36 = sub_19593CC(a1 + 96, v37);
        v33 = *v52;
      }

      v32 = sub_21F8658(a3, v36, v33);
      *v52 = v32;
      if (!v32)
      {
        goto LABEL_85;
      }

      if (*a3 <= v32 || *v32 != 50)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_71:
  if (v8)
  {
    v47 = (v8 & 7) == 4;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    v48 = *(a1 + 8);
    if (v48)
    {
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v49 = sub_11F1920((a1 + 8));
      v7 = *v52;
    }

    *v52 = sub_1952690(v8, v49, v7, a3);
    if (!*v52)
    {
      goto LABEL_85;
    }

    goto LABEL_78;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_85:
  *v52 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v52;
}