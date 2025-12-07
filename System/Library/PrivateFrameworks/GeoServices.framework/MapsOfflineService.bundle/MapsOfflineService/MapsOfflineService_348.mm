char *sub_142CF3C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 <= 3)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          v23 = v6 - 1;
          while (1)
          {
            v24 = v23 + 1;
            v33 = v23 + 1;
            v25 = *(a1 + 40);
            if (v25 && (v26 = *(a1 + 32), v26 < *v25))
            {
              *(a1 + 32) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              sub_14360B8(*(a1 + 24));
              v27 = sub_19593CC(a1 + 24, v28);
              v24 = v33;
            }

            v23 = sub_220A3C8(a3, v27, v24);
            v33 = v23;
            if (!v23)
            {
              return 0;
            }

            if (*a3 <= v23 || *v23 != 10)
            {
              goto LABEL_57;
            }
          }
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_143601C(v17);
          *(a1 + 48) = v15;
          v6 = v33;
        }

        v18 = sub_220A2A8(a3, v15, v6);
        goto LABEL_56;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 2u;
        v11 = *(a1 + 56);
        if (v11)
        {
          goto LABEL_38;
        }

        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v11 = sub_14BB324(v20);
        *(a1 + 56) = v11;
LABEL_37:
        v6 = v33;
        goto LABEL_38;
      }
    }

    else if (v10 == 5)
    {
      if (v7 == 42)
      {
        *(a1 + 16) |= 4u;
        v11 = *(a1 + 64);
        if (v11)
        {
          goto LABEL_38;
        }

        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v11 = sub_14BB324(v22);
        *(a1 + 64) = v11;
        goto LABEL_37;
      }
    }

    else if (v10 == 6 && v7 == 50)
    {
      *(a1 + 16) |= 8u;
      v11 = *(a1 + 72);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_14BB324(v13);
        *(a1 + 72) = v11;
        goto LABEL_37;
      }

LABEL_38:
      v18 = sub_220A338(a3, v11, v6);
      goto LABEL_56;
    }

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

    v18 = sub_1952690(v7, v31, v6, a3);
LABEL_56:
    v33 = v18;
    if (!v18)
    {
      return 0;
    }

LABEL_57:
    ;
  }

  return v33;
}

char *sub_142D218(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_142C430(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 18;
    v13 = *(v12 + 20);
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, __dst + 1);
    }

    else
    {
      v14 = __dst + 2;
    }

    __dst = sub_142B934(v12, v14, a3);
    if ((v11 & 2) == 0)
    {
LABEL_11:
      if ((v11 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v15 = *(a1 + 56);
  *__dst = 34;
  v16 = *(v15 + 20);
  __dst[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, __dst + 1);
  }

  else
  {
    v17 = __dst + 2;
  }

  __dst = sub_145E07C(v15, v17, a3);
  if ((v11 & 4) == 0)
  {
LABEL_12:
    if ((v11 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v18 = *(a1 + 64);
  *__dst = 42;
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

  __dst = sub_145E07C(v18, v20, a3);
  if ((v11 & 8) != 0)
  {
LABEL_32:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v21 = *(a1 + 72);
    *__dst = 50;
    v22 = *(v21 + 20);
    __dst[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, __dst + 1);
    }

    else
    {
      v23 = __dst + 2;
    }

    __dst = sub_145E07C(v21, v23, a3);
  }

LABEL_38:
  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v27)
  {
    v29 = v27;
    memcpy(__dst, v28, v27);
    __dst += v29;
    return __dst;
  }

  return sub_1957130(a3, v28, v27, __dst);
}

uint64_t sub_142D4FC(uint64_t a1)
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
      v7 = sub_142C810(v6);
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
    goto LABEL_15;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v13 = sub_145E23C(*(a1 + 56));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v12 = sub_142BB80(*(a1 + 48));
  v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  v14 = sub_145E23C(*(a1 + 64));
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
LABEL_14:
    v9 = sub_145E23C(*(a1 + 72));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v10 = *(a1 + 8);
  if (v10)
  {
    v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_142D680(char *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 24), *(a2 + 32));
    sub_144C164(result + 3, v6, (v5 + 8), v4, **(result + 5) - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = *(result + 5);
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
      *(result + 4) |= 1u;
      v10 = *(result + 6);
      if (!v10)
      {
        v11 = *(result + 1);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_143601C(v12);
        *(result + 6) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_2770A18;
      }

      sub_142BC48(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 4) |= 2u;
      v14 = *(result + 7);
      if (!v14)
      {
        v15 = *(result + 1);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_14BB324(v16);
        *(result + 7) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_27719B0;
      }

      sub_145E314(v14, v17);
      if ((v9 & 4) == 0)
      {
LABEL_16:
        if ((v9 & 8) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_34;
      }
    }

    else if ((v9 & 4) == 0)
    {
      goto LABEL_16;
    }

    *(result + 4) |= 4u;
    v18 = *(result + 8);
    if (!v18)
    {
      v19 = *(result + 1);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_14BB324(v20);
      *(result + 8) = v18;
    }

    if (*(a2 + 64))
    {
      v21 = *(a2 + 64);
    }

    else
    {
      v21 = &off_27719B0;
    }

    sub_145E314(v18, v21);
    if ((v9 & 8) != 0)
    {
LABEL_34:
      *(result + 4) |= 8u;
      v22 = *(result + 9);
      if (!v22)
      {
        v23 = *(result + 1);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_14BB324(v24);
        *(result + 9) = v22;
      }

      if (*(a2 + 72))
      {
        v25 = *(a2 + 72);
      }

      else
      {
        v25 = &off_27719B0;
      }

      sub_145E314(v22, v25);
    }
  }

LABEL_42:
  v26 = *(a2 + 8);
  if (v26)
  {

    sub_1957EF4(result + 1, (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_142D874(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_142CC4C(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 48);
    if (*(v7 + 16))
    {
      result = sub_144F560(*(v7 + 40));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 16);
    }
  }

  if ((v6 & 2) != 0)
  {
    result = sub_145E434(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) != 0)
  {
    result = sub_145E434(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) == 0)
  {
    return 1;
  }

  result = sub_145E434(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_142D930(uint64_t a1)
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

  if (a1 != &off_2770AF0)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_14B662C(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_145847C(v6);
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

void sub_142DA00(uint64_t a1)
{
  sub_142D930(a1);

  operator delete();
}

uint64_t sub_142DA38(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_144E6A8(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_144E5CC(*(v1 + 32));
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

char *sub_142DAA8(uint64_t a1, char *a2, int32x2_t *a3)
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

          sub_14BAE64(v17);
          v15 = v18;
          *(a1 + 32) = v18;
          v6 = v23;
        }

        v14 = sub_22095B8(a3, v15, v6);
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

        v19 = sub_14BF484(v21);
        *(a1 + 24) = v19;
        v6 = v23;
      }

      v14 = sub_2209138(a3, v19, v6);
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

char *sub_142DC50(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_14B6D24(v7, v9, a3);
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

    v4 = sub_14589F4(v10, v12, a3);
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

uint64_t sub_142DDCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_14B71B8(*(a1 + 24));
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
    v5 = sub_1458DB4(*(a1 + 32));
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

void sub_142DE9C(uint64_t result, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
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

        v6 = sub_14BF484(v8);
        *(result + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2773AC8;
      }

      sub_144F194(v6, v9);
    }

    if ((v5 & 2) != 0)
    {
      *(result + 16) |= 2u;
      v10 = *(result + 32);
      if (!v10)
      {
        v11 = *(result + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_14BAE64(v12);
        *(result + 32) = v10;
      }

      if (*(a2 + 32))
      {
        v13 = *(a2 + 32);
      }

      else
      {
        v13 = &off_2771738;
      }

      sub_144EF20(v10, v13);
    }
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((result + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_142DFA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F5D0(*(a1 + 24));
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

  result = sub_144F560(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_142DFFC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E1D88;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = &qword_278E990;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  return a1;
}

void sub_142E0B8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_142E0E8(void *a1)
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

  sub_142E1C0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144B3B4(a1 + 22);
  sub_144B330(a1 + 19);
  sub_1956ABC((a1 + 17));
  sub_1956ABC((a1 + 15));
  sub_144B2AC(a1 + 12);
  sub_144B228(a1 + 9);
  sub_144B1A4(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_142E1C0(uint64_t a1)
{
  v3 = *(a1 + 200);
  result = (a1 + 200);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2770B18)
  {
    v4 = *(a1 + 208);
    if (v4)
    {
      sub_1425630(v4);
      operator delete();
    }

    v5 = *(a1 + 216);
    if (v5)
    {
      sub_16E4E08(v5);
      operator delete();
    }

    v6 = *(a1 + 224);
    if (v6)
    {
      sub_14609A0(v6);
      operator delete();
    }

    v7 = *(a1 + 232);
    if (v7)
    {
      sub_1427AD0(v7);
      operator delete();
    }

    v8 = *(a1 + 240);
    if (v8)
    {
      sub_1428F58(v8);
      operator delete();
    }

    v9 = *(a1 + 248);
    if (v9)
    {
      sub_1429DA0(v9);
      operator delete();
    }

    v10 = *(a1 + 256);
    if (v10)
    {
      sub_142AC64(v10);
      operator delete();
    }

    v11 = *(a1 + 264);
    if (v11)
    {
      sub_142CCF0(v11);
      operator delete();
    }

    result = *(a1 + 272);
    if (result)
    {
      sub_1481624(result);

      operator delete();
    }
  }

  return result;
}

void sub_142E344(void *a1)
{
  sub_142E0E8(a1);

  operator delete();
}

uint64_t sub_142E37C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14261A4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_14246C0(v8);
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
      result = sub_1425084(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  v12 = *(a1 + 160);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 168) + 8);
    do
    {
      v14 = *v13++;
      result = sub_142DA38(v14);
      --v12;
    }

    while (v12);
    *(a1 + 160) = 0;
  }

  v15 = *(a1 + 184);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 192) + 8);
    do
    {
      v17 = *v16++;
      result = sub_1434D24(v17);
      --v15;
    }

    while (v15);
    *(a1 + 184) = 0;
  }

  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_36;
  }

  if (v18)
  {
    v19 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v19 + 23) < 0)
    {
      **v19 = 0;
      *(v19 + 8) = 0;
      if ((v18 & 2) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    *v19 = 0;
    *(v19 + 23) = 0;
  }

  if ((v18 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v20 = *(a1 + 208);
  v21 = *(v20 + 8);
  result = v20 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v21)
  {
    result = sub_1957EA8(result);
  }

LABEL_29:
  if ((v18 & 4) != 0)
  {
    result = sub_16E4E44(*(a1 + 216));
    if ((v18 & 8) == 0)
    {
LABEL_31:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_51;
    }
  }

  else if ((v18 & 8) == 0)
  {
    goto LABEL_31;
  }

  result = sub_14609DC(*(a1 + 224));
  if ((v18 & 0x10) == 0)
  {
LABEL_32:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_52:
    result = sub_1429018(*(a1 + 240));
    if ((v18 & 0x40) == 0)
    {
LABEL_34:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_53;
  }

LABEL_51:
  result = sub_1427BDC(*(a1 + 232));
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_52;
  }

LABEL_33:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_53:
  result = sub_1429E58(*(a1 + 248));
  if ((v18 & 0x80) != 0)
  {
LABEL_35:
    result = sub_142AD54(*(a1 + 256));
  }

LABEL_36:
  if ((v18 & 0x300) != 0)
  {
    if ((v18 & 0x100) != 0)
    {
      result = sub_142CE70(*(a1 + 264));
    }

    if ((v18 & 0x200) != 0)
    {
      result = sub_1481660(*(a1 + 272));
    }
  }

  if ((v18 & 0xFC00) != 0)
  {
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
  }

  if ((v18 & 0xFF0000) != 0)
  {
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
  }

  v23 = *(a1 + 8);
  v22 = a1 + 8;
  *(v22 + 328) = 0;
  *(v22 + 32) = 0;
  if (v23)
  {

    return sub_1957EA8(v22);
  }

  return result;
}

uint64_t sub_142E5A8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v159 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v159, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v159 + 1);
      v8 = **v159;
      if (**v159 < 0)
      {
        v8 = v8 + (*v7 << 7) - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(*v159, v8);
        }

        else
        {
          v7 = (*v159 + 2);
        }
      }

      *v159 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_258;
          }

          v10 = v7 + 1;
          v9 = *v7;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v11 = *v10;
          v9 = (v11 << 7) + v9 - 128;
          if (v11 < 0)
          {
            *v159 = sub_19587DC(v7, v9);
            if (!*v159)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v10 = v7 + 2;
LABEL_12:
            *v159 = v10;
          }

          if (v9 > 0xA)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 40) |= 0x400u;
            *(a1 + 280) = v9;
          }

          goto LABEL_268;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_258;
          }

          v5 |= 0x800u;
          v64 = v7 + 1;
          v65 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

          v66 = *v64;
          v65 = v65 + (v66 << 7) - 128;
          if (v66 < 0)
          {
            v141 = sub_1958770(v7, v65);
            *v159 = v141;
            *(a1 + 284) = v142;
            if (!v141)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v64 = v7 + 2;
LABEL_111:
            *v159 = v64;
            *(a1 + 284) = v65;
          }

          goto LABEL_268;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_258;
          }

          v5 |= 0x1000u;
          v43 = v7 + 1;
          v44 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_72;
          }

          v45 = *v43;
          v44 = v44 + (v45 << 7) - 128;
          if (v45 < 0)
          {
            v137 = sub_1958770(v7, v44);
            *v159 = v137;
            *(a1 + 288) = v138;
            if (!v137)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v43 = v7 + 2;
LABEL_72:
            *v159 = v43;
            *(a1 + 288) = v44;
          }

          goto LABEL_268;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_258;
          }

          v94 = v7 - 1;
          while (1)
          {
            v95 = v94 + 1;
            *v159 = v94 + 1;
            v96 = *(a1 + 64);
            if (v96 && (v97 = *(a1 + 56), v97 < *v96))
            {
              *(a1 + 56) = v97 + 1;
              v98 = *&v96[2 * v97 + 2];
            }

            else
            {
              v99 = sub_1435BB8(*(a1 + 48));
              v98 = sub_19593CC(a1 + 48, v99);
              v95 = *v159;
            }

            v94 = sub_220A458(a3, v98, v95);
            *v159 = v94;
            if (!v94)
            {
              goto LABEL_275;
            }

            if (*a3 <= v94 || *v94 != 34)
            {
              goto LABEL_268;
            }
          }

        case 6u:
          if (v8 != 48)
          {
            goto LABEL_258;
          }

          v5 |= 0x2000u;
          v101 = v7 + 1;
          v100 = *v7;
          if ((v100 & 0x8000000000000000) == 0)
          {
            goto LABEL_175;
          }

          v102 = *v101;
          v100 = (v102 << 7) + v100 - 128;
          if (v102 < 0)
          {
            v145 = sub_19587DC(v7, v100);
            *v159 = v145;
            *(a1 + 292) = v146 != 0;
            if (!v145)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v101 = v7 + 2;
LABEL_175:
            *v159 = v101;
            *(a1 + 292) = v100 != 0;
          }

          goto LABEL_268;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_258;
          }

          v5 |= 0x4000u;
          v55 = v7 + 1;
          v56 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_93;
          }

          v57 = *v55;
          v56 = v56 + (v57 << 7) - 128;
          if (v57 < 0)
          {
            v139 = sub_1958770(v7, v56);
            *v159 = v139;
            *(a1 + 296) = v140;
            if (!v139)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v55 = v7 + 2;
LABEL_93:
            *v159 = v55;
            *(a1 + 296) = v56;
          }

          goto LABEL_268;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_258;
          }

          v67 = v7 - 1;
          while (1)
          {
            v68 = v67 + 1;
            *v159 = v67 + 1;
            v69 = *(a1 + 88);
            if (v69 && (v70 = *(a1 + 80), v70 < *v69))
            {
              *(a1 + 80) = v70 + 1;
              v71 = *&v69[2 * v70 + 2];
            }

            else
            {
              v72 = sub_1435A28(*(a1 + 72));
              v71 = sub_19593CC(a1 + 72, v72);
              v68 = *v159;
            }

            v67 = sub_220A4E8(a3, v71, v68);
            *v159 = v67;
            if (!v67)
            {
              goto LABEL_275;
            }

            if (*a3 <= v67 || *v67 != 74)
            {
              goto LABEL_268;
            }
          }

        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_258;
          }

          v73 = v7 - 1;
          while (1)
          {
            v74 = v73 + 1;
            *v159 = v73 + 1;
            v75 = *(a1 + 112);
            if (v75 && (v76 = *(a1 + 104), v76 < *v75))
            {
              *(a1 + 104) = v76 + 1;
              v77 = *&v75[2 * v76 + 2];
            }

            else
            {
              v78 = sub_1435A84(*(a1 + 96));
              v77 = sub_19593CC(a1 + 96, v78);
              v74 = *v159;
            }

            v73 = sub_220A578(a3, v77, v74);
            *v159 = v73;
            if (!v73)
            {
              goto LABEL_275;
            }

            if (*a3 <= v73 || *v73 != 82)
            {
              goto LABEL_268;
            }
          }

        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_258;
          }

          v5 |= 0x8000u;
          v106 = v7 + 1;
          v107 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_186;
          }

          v108 = *v106;
          v107 = v107 + (v108 << 7) - 128;
          if (v108 < 0)
          {
            v147 = sub_1958770(v7, v107);
            *v159 = v147;
            *(a1 + 300) = v148;
            if (!v147)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v106 = v7 + 2;
LABEL_186:
            *v159 = v106;
            *(a1 + 300) = v107;
          }

          goto LABEL_268;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 2u;
          v103 = *(a1 + 208);
          if (!v103)
          {
            v104 = *(a1 + 8);
            v105 = (v104 & 0xFFFFFFFFFFFFFFFCLL);
            if (v104)
            {
              v105 = *v105;
            }

            v103 = sub_1435AE0(v105);
            *(a1 + 208) = v103;
            v7 = *v159;
          }

          v24 = sub_220A608(a3, v103, v7);
          goto LABEL_267;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 4u;
          v28 = *(a1 + 216);
          if (!v28)
          {
            v29 = *(a1 + 8);
            v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v30 = *v30;
            }

            v28 = sub_16F5828(v30);
            *(a1 + 216) = v28;
            v7 = *v159;
          }

          v24 = sub_21F4D60(a3, v28, v7);
          goto LABEL_267;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_258;
          }

          v59 = v7 + 1;
          v58 = *v7;
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_98;
          }

          v60 = *v59;
          v58 = (v60 << 7) + v58 - 128;
          if (v60 < 0)
          {
            *v159 = sub_19587DC(v7, v58);
            if (!*v159)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v59 = v7 + 2;
LABEL_98:
            *v159 = v59;
          }

          if (v58 > 5)
          {
            sub_12E8538();
          }

          else
          {
            *(a1 + 40) |= 0x10000u;
            *(a1 + 304) = v58;
          }

          goto LABEL_268;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 8u;
          v37 = *(a1 + 224);
          if (!v37)
          {
            v38 = *(a1 + 8);
            v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
            if (v38)
            {
              v39 = *v39;
            }

            v37 = sub_14BB45C(v39);
            *(a1 + 224) = v37;
            v7 = *v159;
          }

          v24 = sub_220A698(a3, v37, v7);
          goto LABEL_267;
        case 0x13u:
          if (v8 != 152)
          {
            goto LABEL_258;
          }

          v5 |= 0x20000u;
          v18 = v7 + 1;
          v19 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          v20 = *v18;
          v19 = v19 + (v20 << 7) - 128;
          if (v20 < 0)
          {
            v131 = sub_1958770(v7, v19);
            *v159 = v131;
            *(a1 + 308) = v132;
            if (!v131)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v18 = v7 + 2;
LABEL_29:
            *v159 = v18;
            *(a1 + 308) = v19;
          }

          goto LABEL_268;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_258;
          }

          v5 |= 0x40000u;
          v79 = v7 + 1;
          v80 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_136;
          }

          v81 = *v79;
          v80 = v80 + (v81 << 7) - 128;
          if (v81 < 0)
          {
            v143 = sub_1958770(v7, v80);
            *v159 = v143;
            *(a1 + 312) = v144;
            if (!v143)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v79 = v7 + 2;
LABEL_136:
            *v159 = v79;
            *(a1 + 312) = v80;
          }

          goto LABEL_268;
        case 0x16u:
          if (v8 == 176)
          {
            v82 = (v7 - 2);
            while (1)
            {
              *v159 = v82 + 2;
              v83 = *(v82 + 2);
              if (*(v82 + 2) < 0)
              {
                v84 = v83 + (*(v82 + 3) << 7);
                v83 = v84 - 128;
                if (*(v82 + 3) < 0)
                {
                  v82 = sub_1958770(v82 + 2, v84 - 128);
                  v83 = v85;
                }

                else
                {
                  v82 += 4;
                }
              }

              else
              {
                v82 += 3;
              }

              *v159 = v82;
              v86 = *(a1 + 120);
              if (v86 == *(a1 + 124))
              {
                v87 = v86 + 1;
                sub_1958E5C((a1 + 120), v86 + 1);
                *(*(a1 + 128) + 4 * v86) = v83;
                v82 = *v159;
              }

              else
              {
                *(*(a1 + 128) + 4 * v86) = v83;
                v87 = v86 + 1;
              }

              *(a1 + 120) = v87;
              if (!v82)
              {
                goto LABEL_275;
              }

              if (*a3 <= v82 || *v82 != 432)
              {
                goto LABEL_268;
              }
            }
          }

          if (v8 == 178)
          {
            v153 = (a1 + 120);
LABEL_257:
            v24 = sub_1958918(v153, v7, a3);
          }

          else
          {
LABEL_258:
            if (v8)
            {
              v154 = (v8 & 7) == 4;
            }

            else
            {
              v154 = 1;
            }

            if (v154)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_275:
              *v159 = 0;
              goto LABEL_2;
            }

            if (v8 - 7600 > 0x18F)
            {
              v155 = *(a1 + 8);
              if (v155)
              {
                v156 = (v155 & 0xFFFFFFFFFFFFFFFCLL) + 8;
              }

              else
              {
                v157 = v8;
                v158 = sub_11F1920((a1 + 8));
                v8 = v157;
                v156 = v158;
                v7 = *v159;
              }

              v24 = sub_1952690(v8, v156, v7, a3);
            }

            else
            {
              v24 = sub_19525AC((a1 + 16), v8, v7, &off_2770B18, (a1 + 8), a3);
            }
          }

LABEL_267:
          *v159 = v24;
          if (!v24)
          {
            goto LABEL_275;
          }

LABEL_268:
          if (sub_195ADC0(a3, v159, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 0x17u:
          if (v8 == 184)
          {
            v112 = (v7 - 2);
            while (1)
            {
              *v159 = v112 + 2;
              v113 = *(v112 + 2);
              if (*(v112 + 2) < 0)
              {
                v114 = v113 + (*(v112 + 3) << 7);
                v113 = v114 - 128;
                if (*(v112 + 3) < 0)
                {
                  v112 = sub_1958770(v112 + 2, v114 - 128);
                  v113 = v115;
                }

                else
                {
                  v112 += 4;
                }
              }

              else
              {
                v112 += 3;
              }

              *v159 = v112;
              v116 = *(a1 + 136);
              if (v116 == *(a1 + 140))
              {
                v117 = v116 + 1;
                sub_1958E5C((a1 + 136), v116 + 1);
                *(*(a1 + 144) + 4 * v116) = v113;
                v112 = *v159;
              }

              else
              {
                *(*(a1 + 144) + 4 * v116) = v113;
                v117 = v116 + 1;
              }

              *(a1 + 136) = v117;
              if (!v112)
              {
                goto LABEL_275;
              }

              if (*a3 <= v112 || *v112 != 440)
              {
                goto LABEL_268;
              }
            }
          }

          if (v8 != 186)
          {
            goto LABEL_258;
          }

          v153 = (a1 + 136);
          goto LABEL_257;
        case 0x18u:
          if (v8 != 192)
          {
            goto LABEL_258;
          }

          v5 |= 0x80000u;
          v109 = v7 + 1;
          v110 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_191;
          }

          v111 = *v109;
          v110 = v110 + (v111 << 7) - 128;
          if (v111 < 0)
          {
            v149 = sub_1958770(v7, v110);
            *v159 = v149;
            *(a1 + 316) = v150;
            if (!v149)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v109 = v7 + 2;
LABEL_191:
            *v159 = v109;
            *(a1 + 316) = v110;
          }

          goto LABEL_268;
        case 0x19u:
          if (v8 != 200)
          {
            goto LABEL_258;
          }

          v5 |= 0x100000u;
          v12 = v7 + 1;
          v13 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          v14 = *v12;
          v13 = v13 + (v14 << 7) - 128;
          if (v14 < 0)
          {
            v127 = sub_1958770(v7, v13);
            *v159 = v127;
            *(a1 + 320) = v128;
            if (!v127)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v12 = v7 + 2;
LABEL_19:
            *v159 = v12;
            *(a1 + 320) = v13;
          }

          goto LABEL_268;
        case 0x1Au:
          if (v8 != 208)
          {
            goto LABEL_258;
          }

          v5 |= 0x200000u;
          v40 = v7 + 1;
          v41 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_67;
          }

          v42 = *v40;
          v41 = v41 + (v42 << 7) - 128;
          if (v42 < 0)
          {
            v135 = sub_1958770(v7, v41);
            *v159 = v135;
            *(a1 + 324) = v136;
            if (!v135)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v40 = v7 + 2;
LABEL_67:
            *v159 = v40;
            *(a1 + 324) = v41;
          }

          goto LABEL_268;
        case 0x1Bu:
          if (v8 != 216)
          {
            goto LABEL_258;
          }

          v5 |= 0x400000u;
          v118 = v7 + 1;
          v119 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_210;
          }

          v120 = *v118;
          v119 = v119 + (v120 << 7) - 128;
          if (v120 < 0)
          {
            v151 = sub_1958770(v7, v119);
            *v159 = v151;
            *(a1 + 328) = v152;
            if (!v151)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v118 = v7 + 2;
LABEL_210:
            *v159 = v118;
            *(a1 + 328) = v119;
          }

          goto LABEL_268;
        case 0x1Cu:
          if (v8 != 224)
          {
            goto LABEL_258;
          }

          v5 |= 0x800000u;
          v15 = v7 + 1;
          v16 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v15;
          v16 = v16 + (v17 << 7) - 128;
          if (v17 < 0)
          {
            v129 = sub_1958770(v7, v16);
            *v159 = v129;
            *(a1 + 332) = v130;
            if (!v129)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v15 = v7 + 2;
LABEL_24:
            *v159 = v15;
            *(a1 + 332) = v16;
          }

          goto LABEL_268;
        case 0x1Du:
          if (v8 != 232)
          {
            goto LABEL_258;
          }

          v5 |= 0x1000000u;
          v34 = v7 + 1;
          v35 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          v36 = *v34;
          v35 = v35 + (v36 << 7) - 128;
          if (v36 < 0)
          {
            v133 = sub_1958770(v7, v35);
            *v159 = v133;
            *(a1 + 336) = v134;
            if (!v133)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v34 = v7 + 2;
LABEL_56:
            *v159 = v34;
            *(a1 + 336) = v35;
          }

          goto LABEL_268;
        case 0x1Eu:
          if (v8 != 242)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x10u;
          v25 = *(a1 + 232);
          if (!v25)
          {
            v26 = *(a1 + 8);
            v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
            if (v26)
            {
              v27 = *v27;
            }

            v25 = sub_1435C70(v27);
            *(a1 + 232) = v25;
            v7 = *v159;
          }

          v24 = sub_220A728(a3, v25, v7);
          goto LABEL_267;
        case 0x1Fu:
          if (v8 != 250)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x20u;
          v61 = *(a1 + 240);
          if (!v61)
          {
            v62 = *(a1 + 8);
            v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
            if (v62)
            {
              v63 = *v63;
            }

            v61 = sub_1435D28(v63);
            *(a1 + 240) = v61;
            v7 = *v159;
          }

          v24 = sub_220A7B8(a3, v61, v7);
          goto LABEL_267;
        case 0x20u:
          if (v8 != 2)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 1u;
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v23 = sub_194DB04((a1 + 200), v22);
          v24 = sub_1958890(v23, *v159, a3);
          goto LABEL_267;
        case 0x21u:
          if (v8 != 10)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x40u;
          v124 = *(a1 + 248);
          if (!v124)
          {
            v125 = *(a1 + 8);
            v126 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
            if (v125)
            {
              v126 = *v126;
            }

            v124 = sub_1435E00(v126);
            *(a1 + 248) = v124;
            v7 = *v159;
          }

          v24 = sub_220A848(a3, v124, v7);
          goto LABEL_267;
        case 0x22u:
          if (v8 != 18)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x80u;
          v121 = *(a1 + 256);
          if (!v121)
          {
            v122 = *(a1 + 8);
            v123 = (v122 & 0xFFFFFFFFFFFFFFFCLL);
            if (v122)
            {
              v123 = *v123;
            }

            v121 = sub_1435F28(v123);
            *(a1 + 256) = v121;
            v7 = *v159;
          }

          v24 = sub_220A8D8(a3, v121, v7);
          goto LABEL_267;
        case 0x23u:
          if (v8 != 26)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x100u;
          v31 = *(a1 + 264);
          if (!v31)
          {
            v32 = *(a1 + 8);
            v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
            if (v32)
            {
              v33 = *v33;
            }

            v31 = sub_143613C(v33);
            *(a1 + 264) = v31;
            v7 = *v159;
          }

          v24 = sub_220A968(a3, v31, v7);
          goto LABEL_267;
        case 0x24u:
          if (v8 != 34)
          {
            goto LABEL_258;
          }

          v46 = v7 - 2;
          while (1)
          {
            v47 = v46 + 2;
            *v159 = v46 + 2;
            v48 = *(a1 + 168);
            if (v48 && (v49 = *(a1 + 160), v49 < *v48))
            {
              *(a1 + 160) = v49 + 1;
              v50 = *&v48[2 * v49 + 2];
            }

            else
            {
              v51 = sub_14361DC(*(a1 + 152));
              v50 = sub_19593CC(a1 + 152, v51);
              v47 = *v159;
            }

            v46 = sub_220A9F8(a3, v50, v47);
            *v159 = v46;
            if (!v46)
            {
              goto LABEL_275;
            }

            if (*a3 <= v46 || *v46 != 674)
            {
              goto LABEL_268;
            }
          }

        case 0x25u:
          if (v8 != 42)
          {
            goto LABEL_258;
          }

          v88 = v7 - 2;
          while (1)
          {
            v89 = v88 + 2;
            *v159 = v88 + 2;
            v90 = *(a1 + 192);
            if (v90 && (v91 = *(a1 + 184), v91 < *v90))
            {
              *(a1 + 184) = v91 + 1;
              v92 = *&v90[2 * v91 + 2];
            }

            else
            {
              v93 = sub_1436404(*(a1 + 176));
              v92 = sub_19593CC(a1 + 176, v93);
              v89 = *v159;
            }

            v88 = sub_220AA88(a3, v92, v89);
            *v159 = v88;
            if (!v88)
            {
              goto LABEL_275;
            }

            if (*a3 <= v88 || *v88 != 682)
            {
              goto LABEL_268;
            }
          }

        case 0x26u:
          if (v8 != 50)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x200u;
          v52 = *(a1 + 272);
          if (!v52)
          {
            v53 = *(a1 + 8);
            v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
            if (v53)
            {
              v54 = *v54;
            }

            v52 = sub_14BCF4C(v54);
            *(a1 + 272) = v52;
            v7 = *v159;
          }

          v24 = sub_2209D08(a3, v52, v7);
          goto LABEL_267;
        default:
          goto LABEL_258;
      }
    }
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return *v159;
}

char *sub_142F4EC(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 280);
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

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 284);
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

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 288);
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

  v19 = *(a1 + 56);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 64) + 8 * i + 8);
      *v15 = 34;
      v22 = *(v21 + 44);
      v15[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v15 + 1);
      }

      else
      {
        v23 = v15 + 2;
      }

      v15 = sub_14267C8(v21, v23, a3);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v24 = *(a1 + 292);
    *v15 = 48;
    v15[1] = v24;
    v15 += 2;
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v26 = *(a1 + 296);
    *v15 = 56;
    v15[1] = v26;
    if (v26 > 0x7F)
    {
      v15[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v15[2] = v26 >> 7;
      v25 = v15 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v25 - 1) = v15 | 0x80;
          LODWORD(v15) = v27 >> 7;
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = v15 + 2;
    }
  }

  else
  {
    v25 = v15;
  }

  v29 = *(a1 + 80);
  if (v29)
  {
    for (j = 0; j != v29; ++j)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v31 = *(*(a1 + 88) + 8 * j + 8);
      *v25 = 74;
      v32 = *(v31 + 44);
      v25[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v25 + 1);
      }

      else
      {
        v33 = v25 + 2;
      }

      v25 = sub_1424A9C(v31, v33, a3);
    }
  }

  v34 = *(a1 + 104);
  if (v34)
  {
    for (k = 0; k != v34; ++k)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v36 = *(*(a1 + 112) + 8 * k + 8);
      *v25 = 82;
      v37 = *(v36 + 44);
      v25[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v25 + 1);
      }

      else
      {
        v38 = v25 + 2;
      }

      v25 = sub_142530C(v36, v38, a3);
    }
  }

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v40 = *(a1 + 300);
    *v25 = 88;
    v25[1] = v40;
    if (v40 > 0x7F)
    {
      v25[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v25[2] = v40 >> 7;
      v39 = v25 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v25) = v25[2];
        do
        {
          *(v39 - 1) = v25 | 0x80;
          LODWORD(v25) = v41 >> 7;
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v25 + 2;
    }
  }

  else
  {
    v39 = v25;
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_76;
    }

LABEL_84:
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v47 = *(a1 + 216);
    *v39 = 114;
    v48 = *(v47 + 44);
    v39[1] = v48;
    if (v48 > 0x7F)
    {
      v49 = sub_19575D0(v48, v39 + 1);
    }

    else
    {
      v49 = v39 + 2;
    }

    v39 = sub_16E5070(v47, v49, a3);
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_90;
  }

  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v44 = *(a1 + 208);
  *v39 = 98;
  v45 = *(v44 + 20);
  v39[1] = v45;
  if (v45 > 0x7F)
  {
    v46 = sub_19575D0(v45, v39 + 1);
  }

  else
  {
    v46 = v39 + 2;
  }

  v39 = sub_142585C(v44, v46, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_84;
  }

LABEL_76:
  if ((v5 & 0x10000) == 0)
  {
LABEL_77:
    v43 = v39;
    goto LABEL_97;
  }

LABEL_90:
  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v50 = *(a1 + 304);
  *v39 = 120;
  v39[1] = v50;
  if (v50 > 0x7F)
  {
    v39[1] = v50 | 0x80;
    v51 = v50 >> 7;
    v39[2] = v50 >> 7;
    v43 = v39 + 3;
    if (v50 >= 0x4000)
    {
      LOBYTE(v39) = v39[2];
      do
      {
        *(v43 - 1) = v39 | 0x80;
        v39 = (v51 >> 7);
        *v43++ = v51 >> 7;
        v52 = v51 >> 14;
        v51 >>= 7;
      }

      while (v52);
    }
  }

  else
  {
    v43 = v39 + 2;
  }

LABEL_97:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v53 = *(a1 + 224);
    *v43 = 394;
    v54 = *(v53 + 44);
    v43[2] = v54;
    if (v54 > 0x7F)
    {
      v55 = sub_19575D0(v54, v43 + 2);
    }

    else
    {
      v55 = v43 + 3;
    }

    v43 = sub_1460F40(v53, v55, a3);
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v57 = *(a1 + 308);
    *v43 = 408;
    v43[2] = v57;
    if (v57 > 0x7F)
    {
      v43[2] = v57 | 0x80;
      v58 = v57 >> 7;
      v43[3] = v57 >> 7;
      v56 = v43 + 4;
      if (v57 >= 0x4000)
      {
        LOBYTE(v43) = v43[3];
        do
        {
          *(v56 - 1) = v43 | 0x80;
          LODWORD(v43) = v58 >> 7;
          *v56++ = v58 >> 7;
          v59 = v58 >> 14;
          v58 >>= 7;
        }

        while (v59);
      }
    }

    else
    {
      v56 = v43 + 3;
    }
  }

  else
  {
    v56 = v43;
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v61 = *(a1 + 312);
    *v56 = 416;
    v56[2] = v61;
    if (v61 > 0x7F)
    {
      v56[2] = v61 | 0x80;
      v62 = v61 >> 7;
      v56[3] = v61 >> 7;
      v60 = v56 + 4;
      if (v61 >= 0x4000)
      {
        LOBYTE(v56) = v56[3];
        do
        {
          *(v60 - 1) = v56 | 0x80;
          LODWORD(v56) = v62 >> 7;
          *v60++ = v62 >> 7;
          v63 = v62 >> 14;
          v62 >>= 7;
        }

        while (v63);
      }
    }

    else
    {
      v60 = v56 + 3;
    }
  }

  else
  {
    v60 = v56;
  }

  v64 = *(a1 + 120);
  if (v64 < 1)
  {
    v67 = v60;
  }

  else
  {
    for (m = 0; m != v64; ++m)
    {
      if (*a3 <= v60)
      {
        v60 = sub_225EB68(a3, v60);
      }

      v66 = *(*(a1 + 128) + 4 * m);
      *v60 = 432;
      v60[2] = v66;
      if (v66 > 0x7F)
      {
        v60[2] = v66 | 0x80;
        v68 = v66 >> 7;
        v60[3] = v66 >> 7;
        v67 = v60 + 4;
        if (v66 >= 0x4000)
        {
          LOBYTE(v60) = v60[3];
          do
          {
            *(v67 - 1) = v60 | 0x80;
            LODWORD(v60) = v68 >> 7;
            *v67++ = v68 >> 7;
            v69 = v68 >> 14;
            v68 >>= 7;
          }

          while (v69);
        }
      }

      else
      {
        v67 = v60 + 3;
      }

      v60 = v67;
    }
  }

  v70 = *(a1 + 136);
  if (v70 < 1)
  {
    v73 = v67;
  }

  else
  {
    for (n = 0; n != v70; ++n)
    {
      if (*a3 <= v67)
      {
        v67 = sub_225EB68(a3, v67);
      }

      v72 = *(*(a1 + 144) + 4 * n);
      *v67 = 440;
      v67[2] = v72;
      if (v72 > 0x7F)
      {
        v67[2] = v72 | 0x80;
        v74 = v72 >> 7;
        v67[3] = v72 >> 7;
        v73 = v67 + 4;
        if (v72 >= 0x4000)
        {
          LOBYTE(v75) = v67[3];
          do
          {
            *(v73 - 1) = v75 | 0x80;
            v75 = v74 >> 7;
            *v73++ = v74 >> 7;
            v76 = v74 >> 14;
            v74 >>= 7;
          }

          while (v76);
        }
      }

      else
      {
        v73 = v67 + 3;
      }

      v67 = v73;
    }
  }

  if ((v5 & 0x80000) != 0)
  {
    if (*a3 <= v73)
    {
      v73 = sub_225EB68(a3, v73);
    }

    v78 = *(a1 + 316);
    *v73 = 448;
    v73[2] = v78;
    if (v78 > 0x7F)
    {
      v73[2] = v78 | 0x80;
      v79 = v78 >> 7;
      v73[3] = v78 >> 7;
      v77 = v73 + 4;
      if (v78 >= 0x4000)
      {
        LOBYTE(v73) = v73[3];
        do
        {
          *(v77 - 1) = v73 | 0x80;
          LODWORD(v73) = v79 >> 7;
          *v77++ = v79 >> 7;
          v80 = v79 >> 14;
          v79 >>= 7;
        }

        while (v80);
      }
    }

    else
    {
      v77 = v73 + 3;
    }
  }

  else
  {
    v77 = v73;
  }

  if ((v5 & 0x100000) != 0)
  {
    if (*a3 <= v77)
    {
      v77 = sub_225EB68(a3, v77);
    }

    v82 = *(a1 + 320);
    *v77 = 456;
    v77[2] = v82;
    if (v82 > 0x7F)
    {
      v77[2] = v82 | 0x80;
      v83 = v82 >> 7;
      v77[3] = v82 >> 7;
      v81 = v77 + 4;
      if (v82 >= 0x4000)
      {
        LOBYTE(v84) = v77[3];
        do
        {
          *(v81 - 1) = v84 | 0x80;
          v84 = v83 >> 7;
          *v81++ = v83 >> 7;
          v85 = v83 >> 14;
          v83 >>= 7;
        }

        while (v85);
      }
    }

    else
    {
      v81 = v77 + 3;
    }
  }

  else
  {
    v81 = v77;
  }

  if ((v5 & 0x200000) != 0)
  {
    if (*a3 <= v81)
    {
      v81 = sub_225EB68(a3, v81);
    }

    v87 = *(a1 + 324);
    *v81 = 464;
    v81[2] = v87;
    if (v87 > 0x7F)
    {
      v81[2] = v87 | 0x80;
      v88 = v87 >> 7;
      v81[3] = v87 >> 7;
      v86 = v81 + 4;
      if (v87 >= 0x4000)
      {
        LOBYTE(v81) = v81[3];
        do
        {
          *(v86 - 1) = v81 | 0x80;
          LODWORD(v81) = v88 >> 7;
          *v86++ = v88 >> 7;
          v89 = v88 >> 14;
          v88 >>= 7;
        }

        while (v89);
      }
    }

    else
    {
      v86 = v81 + 3;
    }
  }

  else
  {
    v86 = v81;
  }

  if ((v5 & 0x400000) != 0)
  {
    if (*a3 <= v86)
    {
      v86 = sub_225EB68(a3, v86);
    }

    v91 = *(a1 + 328);
    *v86 = 472;
    v86[2] = v91;
    if (v91 > 0x7F)
    {
      v86[2] = v91 | 0x80;
      v92 = v91 >> 7;
      v86[3] = v91 >> 7;
      v90 = v86 + 4;
      if (v91 >= 0x4000)
      {
        LOBYTE(v93) = v86[3];
        do
        {
          *(v90 - 1) = v93 | 0x80;
          v93 = v92 >> 7;
          *v90++ = v92 >> 7;
          v94 = v92 >> 14;
          v92 >>= 7;
        }

        while (v94);
      }
    }

    else
    {
      v90 = v86 + 3;
    }
  }

  else
  {
    v90 = v86;
  }

  if ((v5 & 0x800000) != 0)
  {
    if (*a3 <= v90)
    {
      v90 = sub_225EB68(a3, v90);
    }

    v96 = *(a1 + 332);
    *v90 = 480;
    v90[2] = v96;
    if (v96 > 0x7F)
    {
      v90[2] = v96 | 0x80;
      v97 = v96 >> 7;
      v90[3] = v96 >> 7;
      v95 = v90 + 4;
      if (v96 >= 0x4000)
      {
        LOBYTE(v90) = v90[3];
        do
        {
          *(v95 - 1) = v90 | 0x80;
          LODWORD(v90) = v97 >> 7;
          *v95++ = v97 >> 7;
          v98 = v97 >> 14;
          v97 >>= 7;
        }

        while (v98);
      }
    }

    else
    {
      v95 = v90 + 3;
    }
  }

  else
  {
    v95 = v90;
  }

  if ((v5 & 0x1000000) != 0)
  {
    if (*a3 <= v95)
    {
      v95 = sub_225EB68(a3, v95);
    }

    v100 = *(a1 + 336);
    *v95 = 488;
    v95[2] = v100;
    if (v100 > 0x7F)
    {
      v95[2] = v100 | 0x80;
      v101 = v100 >> 7;
      v95[3] = v100 >> 7;
      v99 = v95 + 4;
      if (v100 >= 0x4000)
      {
        LOBYTE(v102) = v95[3];
        do
        {
          *(v99 - 1) = v102 | 0x80;
          v102 = v101 >> 7;
          *v99++ = v101 >> 7;
          v103 = v101 >> 14;
          v101 >>= 7;
        }

        while (v103);
      }
    }

    else
    {
      v99 = v95 + 3;
    }
  }

  else
  {
    v99 = v95;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v99)
    {
      v99 = sub_225EB68(a3, v99);
    }

    v104 = *(a1 + 232);
    *v99 = 498;
    v105 = *(v104 + 44);
    v99[2] = v105;
    if (v105 > 0x7F)
    {
      v106 = sub_19575D0(v105, v99 + 2);
    }

    else
    {
      v106 = v99 + 3;
    }

    v99 = sub_1428128(v104, v106, a3);
    if ((v5 & 0x20) == 0)
    {
LABEL_202:
      if ((v5 & 1) == 0)
      {
        goto LABEL_203;
      }

      goto LABEL_219;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_202;
  }

  if (*a3 <= v99)
  {
    v99 = sub_225EB68(a3, v99);
  }

  v107 = *(a1 + 240);
  *v99 = 506;
  v108 = *(v107 + 44);
  v99[2] = v108;
  if (v108 > 0x7F)
  {
    v109 = sub_19575D0(v108, v99 + 2);
  }

  else
  {
    v109 = v99 + 3;
  }

  v99 = sub_1429394(v107, v109, a3);
  if ((v5 & 1) == 0)
  {
LABEL_203:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_220;
  }

LABEL_219:
  v99 = sub_128AEEC(a3, 32, (*(a1 + 200) & 0xFFFFFFFFFFFFFFFELL), v99);
  if ((v5 & 0x40) == 0)
  {
LABEL_204:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_226;
  }

LABEL_220:
  if (*a3 <= v99)
  {
    v99 = sub_225EB68(a3, v99);
  }

  v110 = *(a1 + 248);
  *v99 = 650;
  v111 = *(v110 + 40);
  v99[2] = v111;
  if (v111 > 0x7F)
  {
    v112 = sub_19575D0(v111, v99 + 2);
  }

  else
  {
    v112 = v99 + 3;
  }

  v99 = sub_142A064(v110, v112, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_205:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_232;
  }

LABEL_226:
  if (*a3 <= v99)
  {
    v99 = sub_225EB68(a3, v99);
  }

  v113 = *(a1 + 256);
  *v99 = 658;
  v114 = *(v113 + 20);
  v99[2] = v114;
  if (v114 > 0x7F)
  {
    v115 = sub_19575D0(v114, v99 + 2);
  }

  else
  {
    v115 = v99 + 3;
  }

  v99 = sub_142AEF4(v113, v115, a3);
  if ((v5 & 0x100) != 0)
  {
LABEL_232:
    if (*a3 <= v99)
    {
      v99 = sub_225EB68(a3, v99);
    }

    v116 = *(a1 + 264);
    *v99 = 666;
    v117 = *(v116 + 20);
    v99[2] = v117;
    if (v117 > 0x7F)
    {
      v118 = sub_19575D0(v117, v99 + 2);
    }

    else
    {
      v118 = v99 + 3;
    }

    v99 = sub_142D218(v116, v118, a3);
  }

LABEL_238:
  v119 = *(a1 + 160);
  if (v119)
  {
    for (ii = 0; ii != v119; ++ii)
    {
      if (*a3 <= v99)
      {
        v99 = sub_225EB68(a3, v99);
      }

      v121 = *(*(a1 + 168) + 8 * ii + 8);
      *v99 = 674;
      v122 = *(v121 + 20);
      v99[2] = v122;
      if (v122 > 0x7F)
      {
        v123 = sub_19575D0(v122, v99 + 2);
      }

      else
      {
        v123 = v99 + 3;
      }

      v99 = sub_142DC50(v121, v123, a3);
    }
  }

  v124 = *(a1 + 184);
  if (v124)
  {
    for (jj = 0; jj != v124; ++jj)
    {
      if (*a3 <= v99)
      {
        v99 = sub_225EB68(a3, v99);
      }

      v126 = *(*(a1 + 192) + 8 * jj + 8);
      *v99 = 682;
      v127 = *(v126 + 20);
      v99[2] = v127;
      if (v127 > 0x7F)
      {
        v128 = sub_19575D0(v127, v99 + 2);
      }

      else
      {
        v128 = v99 + 3;
      }

      v99 = sub_1434F98(v126, v128, a3);
    }
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v99)
    {
      v99 = sub_225EB68(a3, v99);
    }

    v129 = *(a1 + 272);
    *v99 = 690;
    v130 = *(v129 + 20);
    v99[2] = v130;
    if (v130 > 0x7F)
    {
      v131 = sub_19575D0(v130, v99 + 2);
    }

    else
    {
      v131 = v99 + 3;
    }

    v99 = sub_1481B84(v129, v131, a3);
  }

  if (*(a1 + 26))
  {
    v99 = sub_1953428(a1 + 16, 950, 1000, v99, a3);
  }

  v132 = *(a1 + 8);
  if ((v132 & 1) == 0)
  {
    return v99;
  }

  v134 = v132 & 0xFFFFFFFFFFFFFFFCLL;
  v135 = *(v134 + 31);
  if (v135 < 0)
  {
    v136 = *(v134 + 8);
    v135 = *(v134 + 16);
  }

  else
  {
    v136 = (v134 + 8);
  }

  if ((*a3 - v99) >= v135)
  {
    v137 = v135;
    memcpy(v99, v136, v135);
    v99 += v137;
    return v99;
  }

  return sub_1957130(a3, v136, v135, v99);
}

uint64_t sub_1430508(uint64_t a1)
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
      v9 = sub_1426DA8(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + v10;
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_1424D60(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  v19 = *(a1 + 112);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_14254E0(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = sub_1959E5C((a1 + 120));
  v25 = *(a1 + 120);
  v26 = sub_1959E5C((a1 + 136));
  v27 = *(a1 + 160);
  v28 = v24 + v26 + v18 + 2 * (*(a1 + 136) + v25 + v27);
  v29 = *(a1 + 168);
  if (v29)
  {
    v30 = (v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  if (v27)
  {
    v31 = 8 * v27;
    do
    {
      v32 = *v30++;
      v33 = sub_142DDCC(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 184);
  v35 = v28 + 2 * v34;
  v36 = *(a1 + 192);
  if (v36)
  {
    v37 = (v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  if (v34)
  {
    v38 = 8 * v34;
    do
    {
      v39 = *v37++;
      v40 = sub_1435140(v39);
      v35 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6);
      v38 -= 8;
    }

    while (v38);
  }

  v41 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_41;
  }

  if (v41)
  {
    v45 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(v45 + 23);
    v47 = *(v45 + 8);
    if ((v46 & 0x80u) == 0)
    {
      v47 = v46;
    }

    v35 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v41 & 2) == 0)
    {
LABEL_34:
      if ((v41 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_70;
    }
  }

  else if ((v41 & 2) == 0)
  {
    goto LABEL_34;
  }

  v48 = sub_1425984(*(a1 + 208));
  v35 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v41 & 4) == 0)
  {
LABEL_35:
    if ((v41 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_71;
  }

LABEL_70:
  v49 = sub_16E51F0(*(a1 + 216));
  v35 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v41 & 8) == 0)
  {
LABEL_36:
    if ((v41 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_72;
  }

LABEL_71:
  v50 = sub_14613D4(*(a1 + 224));
  v35 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x10) == 0)
  {
LABEL_37:
    if ((v41 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_73:
    v52 = sub_1429600(*(a1 + 240));
    v35 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v41 & 0x40) == 0)
    {
LABEL_39:
      if ((v41 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    goto LABEL_74;
  }

LABEL_72:
  v51 = sub_14284DC(*(a1 + 232));
  v35 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x20) != 0)
  {
    goto LABEL_73;
  }

LABEL_38:
  if ((v41 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_74:
  v53 = sub_142A1A4(*(a1 + 248));
  v35 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x80) != 0)
  {
LABEL_40:
    v42 = sub_142B000(*(a1 + 256));
    v35 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_41:
  if ((v41 & 0xFF00) == 0)
  {
    goto LABEL_52;
  }

  if ((v41 & 0x100) != 0)
  {
    v54 = sub_142D4FC(*(a1 + 264));
    v35 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v41 & 0x200) == 0)
    {
LABEL_44:
      if ((v41 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_78;
    }
  }

  else if ((v41 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v55 = sub_1481F08(*(a1 + 272));
  v35 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x400) == 0)
  {
LABEL_45:
    if ((v41 & 0x800) == 0)
    {
      goto LABEL_46;
    }

LABEL_82:
    v35 += ((9 * (__clz(*(a1 + 284) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v41 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_78:
  v56 = *(a1 + 280);
  v57 = ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v56 >= 0)
  {
    v58 = v57;
  }

  else
  {
    v58 = 11;
  }

  v35 += v58;
  if ((v41 & 0x800) != 0)
  {
    goto LABEL_82;
  }

LABEL_46:
  if ((v41 & 0x1000) != 0)
  {
LABEL_47:
    v35 += ((9 * (__clz(*(a1 + 288) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_48:
  v35 += (v41 >> 12) & 2;
  if ((v41 & 0x4000) != 0)
  {
    v35 += ((9 * (__clz(*(a1 + 296) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v41 & 0x8000) != 0)
  {
    v35 += ((9 * (__clz(*(a1 + 300) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_52:
  if ((v41 & 0xFF0000) == 0)
  {
    goto LABEL_62;
  }

  if ((v41 & 0x10000) != 0)
  {
    v59 = *(a1 + 304);
    v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v59 >= 0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 11;
    }

    v35 += v61;
    if ((v41 & 0x20000) == 0)
    {
LABEL_55:
      if ((v41 & 0x40000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_89;
    }
  }

  else if ((v41 & 0x20000) == 0)
  {
    goto LABEL_55;
  }

  v35 += ((9 * (__clz(*(a1 + 308) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x40000) == 0)
  {
LABEL_56:
    if ((v41 & 0x80000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_90;
  }

LABEL_89:
  v35 += ((9 * (__clz(*(a1 + 312) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x80000) == 0)
  {
LABEL_57:
    if ((v41 & 0x100000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_91;
  }

LABEL_90:
  v35 += ((9 * (__clz(*(a1 + 316) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x100000) == 0)
  {
LABEL_58:
    if ((v41 & 0x200000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_92;
  }

LABEL_91:
  v35 += ((9 * (__clz(*(a1 + 320) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x200000) == 0)
  {
LABEL_59:
    if ((v41 & 0x400000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_93;
  }

LABEL_92:
  v35 += ((9 * (__clz(*(a1 + 324) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x400000) == 0)
  {
LABEL_60:
    if ((v41 & 0x800000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_93:
  v35 += ((9 * (__clz(*(a1 + 328) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x800000) != 0)
  {
LABEL_61:
    v35 += ((9 * (__clz(*(a1 + 332) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_62:
  if ((v41 & 0x1000000) != 0)
  {
    v35 += ((9 * (__clz(*(a1 + 336) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v43 = *(a1 + 8);
  if (v43)
  {
    v62 = v43 & 0xFFFFFFFFFFFFFFFCLL;
    v63 = *((v43 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v63 < 0)
    {
      v63 = *(v62 + 16);
    }

    v35 += v63;
  }

  *(a1 + 44) = v35;
  return v35;
}

void sub_1430BD8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144C1F0((a1 + 48), v7, (v6 + 8), v5, **(a1 + 64) - *(a1 + 56));
    v8 = *(a1 + 56) + v5;
    *(a1 + 56) = v8;
    v9 = *(a1 + 64);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 80);
  if (v10)
  {
    v11 = *(a2 + 88);
    v12 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_144C27C((a1 + 72), v12, (v11 + 8), v10, **(a1 + 88) - *(a1 + 80));
    v13 = *(a1 + 80) + v10;
    *(a1 + 80) = v13;
    v14 = *(a1 + 88);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 104);
  if (v15)
  {
    v16 = *(a2 + 112);
    v17 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_144C308((a1 + 96), v17, (v16 + 8), v15, **(a1 + 112) - *(a1 + 104));
    v18 = *(a1 + 104) + v15;
    *(a1 + 104) = v18;
    v19 = *(a1 + 112);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 120);
  if (v20)
  {
    v21 = *(a1 + 120);
    sub_1958E5C((a1 + 120), v21 + v20);
    v22 = *(a1 + 128);
    *(a1 + 120) += *(a2 + 120);
    memcpy((v22 + 4 * v21), *(a2 + 128), 4 * *(a2 + 120));
  }

  v23 = *(a2 + 136);
  if (v23)
  {
    v24 = *(a1 + 136);
    sub_1958E5C((a1 + 136), v24 + v23);
    v25 = *(a1 + 144);
    *(a1 + 136) += *(a2 + 136);
    memcpy((v25 + 4 * v24), *(a2 + 144), 4 * *(a2 + 136));
  }

  v26 = *(a2 + 160);
  if (v26)
  {
    v27 = *(a2 + 168);
    v28 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_144C394((a1 + 152), v28, (v27 + 8), v26, **(a1 + 168) - *(a1 + 160), v29);
    v30 = *(a1 + 160) + v26;
    *(a1 + 160) = v30;
    v31 = *(a1 + 168);
    if (*v31 < v30)
    {
      *v31 = v30;
    }
  }

  v32 = *(a2 + 184);
  if (v32)
  {
    v33 = *(a2 + 192);
    v34 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_144C420((a1 + 176), v34, (v33 + 8), v32, **(a1 + 192) - *(a1 + 184), v35);
    v36 = *(a1 + 184) + v32;
    *(a1 + 184) = v36;
    v37 = *(a1 + 192);
    if (*v37 < v36)
    {
      *v37 = v36;
    }
  }

  v38 = *(a2 + 40);
  if (!v38)
  {
    goto LABEL_89;
  }

  if (v38)
  {
    v39 = *(a2 + 200);
    *(a1 + 40) |= 1u;
    v40 = *(a1 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    sub_194EA1C((a1 + 200), (v39 & 0xFFFFFFFFFFFFFFFELL), v41);
    if ((v38 & 2) == 0)
    {
LABEL_23:
      if ((v38 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_41;
    }
  }

  else if ((v38 & 2) == 0)
  {
    goto LABEL_23;
  }

  *(a1 + 40) |= 2u;
  v42 = *(a1 + 208);
  if (!v42)
  {
    v43 = *(a1 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    v42 = sub_1435AE0(v44);
    *(a1 + 208) = v42;
  }

  if (*(a2 + 208))
  {
    v45 = *(a2 + 208);
  }

  else
  {
    v45 = &off_2770760;
  }

  sub_12B9D50(v42, v45);
  if ((v38 & 4) == 0)
  {
LABEL_24:
    if ((v38 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_41:
  *(a1 + 40) |= 4u;
  v46 = *(a1 + 216);
  if (!v46)
  {
    v47 = *(a1 + 8);
    v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      v48 = *v48;
    }

    v46 = sub_16F5828(v48);
    *(a1 + 216) = v46;
  }

  if (*(a2 + 216))
  {
    v49 = *(a2 + 216);
  }

  else
  {
    v49 = &off_277E5E8;
  }

  sub_16E527C(v46, v49);
  if ((v38 & 8) == 0)
  {
LABEL_25:
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_49:
  *(a1 + 40) |= 8u;
  v50 = *(a1 + 224);
  if (!v50)
  {
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    v50 = sub_14BB45C(v52);
    *(a1 + 224) = v50;
  }

  if (*(a2 + 224))
  {
    v53 = *(a2 + 224);
  }

  else
  {
    v53 = &off_2771B40;
  }

  sub_1461614(v50, v53, a3);
  if ((v38 & 0x10) == 0)
  {
LABEL_26:
    if ((v38 & 0x20) == 0)
    {
      goto LABEL_27;
    }

LABEL_65:
    *(a1 + 40) |= 0x20u;
    v58 = *(a1 + 240);
    if (!v58)
    {
      v59 = *(a1 + 8);
      v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
      if (v59)
      {
        v60 = *v60;
      }

      v58 = sub_1435D28(v60);
      *(a1 + 240) = v58;
    }

    if (*(a2 + 240))
    {
      v61 = *(a2 + 240);
    }

    else
    {
      v61 = &off_2770920;
    }

    sub_1429714(v58, v61);
    if ((v38 & 0x40) == 0)
    {
LABEL_28:
      if ((v38 & 0x80) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_81;
    }

    goto LABEL_73;
  }

LABEL_57:
  *(a1 + 40) |= 0x10u;
  v54 = *(a1 + 232);
  if (!v54)
  {
    v55 = *(a1 + 8);
    v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
    if (v55)
    {
      v56 = *v56;
    }

    v54 = sub_1435C70(v56);
    *(a1 + 232) = v54;
  }

  if (*(a2 + 232))
  {
    v57 = *(a2 + 232);
  }

  else
  {
    v57 = &off_2770878;
  }

  sub_1428640(v54, v57);
  if ((v38 & 0x20) != 0)
  {
    goto LABEL_65;
  }

LABEL_27:
  if ((v38 & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_73:
  *(a1 + 40) |= 0x40u;
  v62 = *(a1 + 248);
  if (!v62)
  {
    v63 = *(a1 + 8);
    v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
    if (v63)
    {
      v64 = *v64;
    }

    v62 = sub_1435E00(v64);
    *(a1 + 248) = v62;
  }

  if (*(a2 + 248))
  {
    v65 = *(a2 + 248);
  }

  else
  {
    v65 = &off_2770970;
  }

  sub_142A24C(v62, v65);
  if ((v38 & 0x80) != 0)
  {
LABEL_81:
    *(a1 + 40) |= 0x80u;
    v66 = *(a1 + 256);
    if (!v66)
    {
      v67 = *(a1 + 8);
      v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
      if (v67)
      {
        v68 = *v68;
      }

      v66 = sub_1435F28(v68);
      *(a1 + 256) = v66;
    }

    if (*(a2 + 256))
    {
      v69 = *(a2 + 256);
    }

    else
    {
      v69 = &off_27709D8;
    }

    sub_142B080(v66, v69);
  }

LABEL_89:
  if ((v38 & 0xFF00) == 0)
  {
    goto LABEL_100;
  }

  if ((v38 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v72 = *(a1 + 264);
    if (!v72)
    {
      v73 = *(a1 + 8);
      v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
      if (v73)
      {
        v74 = *v74;
      }

      v72 = sub_143613C(v74);
      *(a1 + 264) = v72;
    }

    if (*(a2 + 264))
    {
      v75 = *(a2 + 264);
    }

    else
    {
      v75 = &off_2770AA0;
    }

    sub_142D680(v72, v75);
    if ((v38 & 0x200) == 0)
    {
LABEL_92:
      if ((v38 & 0x400) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_133;
    }
  }

  else if ((v38 & 0x200) == 0)
  {
    goto LABEL_92;
  }

  *(a1 + 40) |= 0x200u;
  v76 = *(a1 + 272);
  if (!v76)
  {
    v77 = *(a1 + 8);
    v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
    if (v77)
    {
      v78 = *v78;
    }

    v76 = sub_14BCF4C(v78);
    *(a1 + 272) = v76;
  }

  if (*(a2 + 272))
  {
    v79 = *(a2 + 272);
  }

  else
  {
    v79 = &off_27725C0;
  }

  sub_14820F8(v76, v79, a3);
  if ((v38 & 0x400) == 0)
  {
LABEL_93:
    if ((v38 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_134;
  }

LABEL_133:
  *(a1 + 280) = *(a2 + 280);
  if ((v38 & 0x800) == 0)
  {
LABEL_94:
    if ((v38 & 0x1000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_135;
  }

LABEL_134:
  *(a1 + 284) = *(a2 + 284);
  if ((v38 & 0x1000) == 0)
  {
LABEL_95:
    if ((v38 & 0x2000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_136;
  }

LABEL_135:
  *(a1 + 288) = *(a2 + 288);
  if ((v38 & 0x2000) == 0)
  {
LABEL_96:
    if ((v38 & 0x4000) == 0)
    {
      goto LABEL_97;
    }

LABEL_137:
    *(a1 + 296) = *(a2 + 296);
    if ((v38 & 0x8000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_136:
  *(a1 + 292) = *(a2 + 292);
  if ((v38 & 0x4000) != 0)
  {
    goto LABEL_137;
  }

LABEL_97:
  if ((v38 & 0x8000) != 0)
  {
LABEL_98:
    *(a1 + 300) = *(a2 + 300);
  }

LABEL_99:
  *(a1 + 40) |= v38;
LABEL_100:
  if ((v38 & 0xFF0000) == 0)
  {
    goto LABEL_111;
  }

  if ((v38 & 0x10000) != 0)
  {
    *(a1 + 304) = *(a2 + 304);
    if ((v38 & 0x20000) == 0)
    {
LABEL_103:
      if ((v38 & 0x40000) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_141;
    }
  }

  else if ((v38 & 0x20000) == 0)
  {
    goto LABEL_103;
  }

  *(a1 + 308) = *(a2 + 308);
  if ((v38 & 0x40000) == 0)
  {
LABEL_104:
    if ((v38 & 0x80000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(a1 + 312) = *(a2 + 312);
  if ((v38 & 0x80000) == 0)
  {
LABEL_105:
    if ((v38 & 0x100000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(a1 + 316) = *(a2 + 316);
  if ((v38 & 0x100000) == 0)
  {
LABEL_106:
    if ((v38 & 0x200000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(a1 + 320) = *(a2 + 320);
  if ((v38 & 0x200000) == 0)
  {
LABEL_107:
    if ((v38 & 0x400000) == 0)
    {
      goto LABEL_108;
    }

LABEL_145:
    *(a1 + 328) = *(a2 + 328);
    if ((v38 & 0x800000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_144:
  *(a1 + 324) = *(a2 + 324);
  if ((v38 & 0x400000) != 0)
  {
    goto LABEL_145;
  }

LABEL_108:
  if ((v38 & 0x800000) != 0)
  {
LABEL_109:
    *(a1 + 332) = *(a2 + 332);
  }

LABEL_110:
  *(a1 + 40) |= v38;
LABEL_111:
  if ((v38 & 0x1000000) != 0)
  {
    v70 = *(a2 + 336);
    *(a1 + 40) |= 0x1000000u;
    *(a1 + 336) = v70;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v71 = *(a2 + 8);
  if (v71)
  {

    sub_1957EF4((a1 + 8), (v71 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14312CC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_142E37C(result);

    sub_1430BD8(result, a2, v5);
  }
}

uint64_t sub_1431318(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1427218(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 80);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_195228C(*(*(a1 + 88) + 8 * v6) + 16);
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 104);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_195228C(*(*(a1 + 112) + 8 * v9) + 16);
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 160);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_142DFA0(*(*(a1 + 168) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(a1 + 184);
    while (v15 >= 1)
    {
      v16 = v15 - 1;
      v17 = sub_143532C(*(*(a1 + 192) + 8 * v15));
      result = 0;
      v15 = v16;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    v18 = *(a1 + 40);
    if ((v18 & 4) != 0)
    {
      result = sub_16E5370(*(a1 + 216));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 8) != 0)
    {
      result = sub_1461910(*(a1 + 224));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x10) != 0)
    {
      result = sub_14287E4(*(a1 + 232));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x20) != 0)
    {
      result = sub_142980C(*(a1 + 240));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x100) != 0)
    {
      result = sub_142D874(*(a1 + 264));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x200) == 0)
    {
      return 1;
    }

    result = sub_148244C(*(a1 + 272));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14314AC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E1E08;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a2;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a2;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a2;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = a2;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = a2;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = a2;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  return a1;
}

void sub_1431568(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1431598(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v82 = (a1 + 8);
  *(a1 + 16) = 0;
  v83 = a1 + 16;
  *a1 = off_26E1E08;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_144C4AC((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_144C538((a1 + 64), v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a2 + 104);
    v16 = sub_19592E8(a1 + 88, v14);
    sub_144C5C4((a1 + 88), v16, (v15 + 8), v14, **(a1 + 104) - *(a1 + 96), v17);
    v18 = *(a1 + 96) + v14;
    *(a1 + 96) = v18;
    v19 = *(a1 + 104);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v20 = *(a2 + 120);
  if (v20)
  {
    v21 = *(a2 + 128);
    v22 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_144C650((a1 + 112), v22, (v21 + 8), v20, **(a1 + 128) - *(a1 + 120));
    v23 = *(a1 + 120) + v20;
    *(a1 + 120) = v23;
    v24 = *(a1 + 128);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v25 = *(a2 + 144);
  if (v25)
  {
    v26 = *(a2 + 152);
    v27 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_144C6DC((a1 + 136), v27, (v26 + 8), v25, **(a1 + 152) - *(a1 + 144), v28);
    v29 = *(a1 + 144) + v25;
    *(a1 + 144) = v29;
    v30 = *(a1 + 152);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v31 = *(a2 + 168);
  if (v31)
  {
    v32 = *(a2 + 176);
    v33 = sub_19592E8(a1 + 160, *(a2 + 168));
    sub_144C768((a1 + 160), v33, (v32 + 8), v31, **(a1 + 176) - *(a1 + 168));
    v34 = *(a1 + 168) + v31;
    *(a1 + 168) = v34;
    v35 = *(a1 + 176);
    if (*v35 < v34)
    {
      *v35 = v34;
    }
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v36 = *(a2 + 192);
  if (v36)
  {
    v37 = *(a2 + 200);
    v38 = sub_19592E8(a1 + 184, *(a2 + 192));
    sub_1201B48((a1 + 184), v38, (v37 + 8), v36, **(a1 + 200) - *(a1 + 192));
    v39 = *(a1 + 192) + v36;
    *(a1 + 192) = v39;
    v40 = *(a1 + 200);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v41 = *(a2 + 216);
  if (v41)
  {
    v42 = *(a2 + 224);
    v43 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_144C7F4((a1 + 208), v43, (v42 + 8), v41, **(a1 + 224) - *(a1 + 216), v44);
    v45 = *(a1 + 216) + v41;
    *(a1 + 216) = v45;
    v46 = *(a1 + 224);
    if (*v46 < v45)
    {
      *v46 = v45;
    }
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v47 = *(a2 + 240);
  if (v47)
  {
    v48 = *(a2 + 248);
    v49 = sub_19592E8(a1 + 232, *(a2 + 240));
    sub_144C880((a1 + 232), v49, (v48 + 8), v47, **(a1 + 248) - *(a1 + 240), v50);
    v51 = *(a1 + 240) + v47;
    *(a1 + 240) = v51;
    v52 = *(a1 + 248);
    if (*v52 < v51)
    {
      *v52 = v51;
    }
  }

  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v53 = *(a2 + 264);
  if (v53)
  {
    v54 = *(a2 + 272);
    v55 = sub_19592E8(a1 + 256, *(a2 + 264));
    sub_144C90C((a1 + 256), v55, (v54 + 8), v53, **(a1 + 272) - *(a1 + 264));
    v56 = *(a1 + 264) + v53;
    *(a1 + 264) = v56;
    v57 = *(a1 + 272);
    if (*v57 < v56)
    {
      *v57 = v56;
    }
  }

  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v58 = *(a2 + 288);
  if (v58)
  {
    v59 = *(a2 + 296);
    v60 = sub_19592E8(a1 + 280, *(a2 + 288));
    sub_144C998((a1 + 280), v60, (v59 + 8), v58, **(a1 + 296) - *(a1 + 288), v61);
    v62 = *(a1 + 288) + v58;
    *(a1 + 288) = v62;
    v63 = *(a1 + 296);
    if (*v63 < v62)
    {
      *v63 = v62;
    }
  }

  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  v64 = *(a2 + 312);
  if (v64)
  {
    v65 = *(a2 + 320);
    v66 = sub_19592E8(a1 + 304, *(a2 + 312));
    sub_144CA24((a1 + 304), v66, (v65 + 8), v64, **(a1 + 320) - *(a1 + 312));
    v67 = *(a1 + 312) + v64;
    *(a1 + 312) = v67;
    v68 = *(a1 + 320);
    if (*v68 < v67)
    {
      *v68 = v67;
    }
  }

  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v69 = *(a2 + 336);
  if (v69)
  {
    v70 = *(a2 + 344);
    v71 = sub_19592E8(a1 + 328, *(a2 + 336));
    sub_144BC98((a1 + 328), v71, (v70 + 8), v69, **(a1 + 344) - *(a1 + 336), v72);
    v73 = *(a1 + 336) + v69;
    *(a1 + 336) = v73;
    v74 = *(a1 + 344);
    if (*v74 < v73)
    {
      *v74 = v73;
    }
  }

  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  v75 = *(a2 + 360);
  if (v75)
  {
    v76 = *(a2 + 368);
    v77 = sub_19592E8(a1 + 352, *(a2 + 360));
    sub_144BFD0((a1 + 352), v77, (v76 + 8), v75, **(a1 + 368) - *(a1 + 360));
    v78 = *(a1 + 360) + v75;
    *(a1 + 360) = v78;
    v79 = *(a1 + 368);
    if (*v79 < v78)
    {
      *v79 = v78;
    }
  }

  *(a1 + 376) = 0;
  v80 = *(a2 + 8);
  if (v80)
  {
    sub_1957EF4(v82, (v80 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v83, a2 + 16);
  return a1;
}

void sub_1431BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t *a11, uint64_t a12)
{
  sub_144AC7C(v12 + 41);
  sub_144B960(v12 + 38);
  sub_144B8DC(v12 + 35);
  sub_144B858(v12 + 32);
  sub_144B7D4(v14);
  sub_144B750(v13);
  sub_1956AFC(v18);
  sub_144B6CC(v17);
  sub_144B648(v16);
  sub_144B5C4(v15);
  sub_144B540(a9);
  sub_144B4BC(a10);
  sub_144B438(v12 + 5);
  sub_194F914(a12);
  *v12 = off_27215B8;
  sub_195A5E8(a11);
  _Unwind_Resume(a1);
}

void *sub_1431D3C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144AF94(a1 + 44);
  sub_144AC7C(a1 + 41);
  sub_144B960(a1 + 38);
  sub_144B8DC(a1 + 35);
  sub_144B858(a1 + 32);
  sub_144B7D4(a1 + 29);
  sub_144B750(a1 + 26);
  sub_1956AFC(a1 + 23);
  sub_144B6CC(a1 + 20);
  sub_144B648(a1 + 17);
  sub_144B5C4(a1 + 14);
  sub_144B540(a1 + 11);
  sub_144B4BC(a1 + 8);
  sub_144B438(a1 + 5);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1431E5C(void *a1)
{
  sub_1431D3C(a1);

  operator delete();
}

uint64_t sub_1431E94(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 48);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 56) + 8);
    do
    {
      v4 = *v3++;
      sub_140E900(v4);
      --v2;
    }

    while (v2);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 72);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 80) + 8);
    do
    {
      v7 = *v6++;
      sub_140F6C0(v7);
      --v5;
    }

    while (v5);
    *(a1 + 72) = 0;
  }

  v8 = *(a1 + 96);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 104) + 8);
    do
    {
      v10 = *v9++;
      sub_140CE38(v10);
      --v8;
    }

    while (v8);
    *(a1 + 96) = 0;
  }

  v11 = *(a1 + 120);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 128) + 8);
    do
    {
      v13 = *v12++;
      sub_1410F68(v13);
      --v11;
    }

    while (v11);
    *(a1 + 120) = 0;
  }

  v14 = *(a1 + 144);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 152) + 8);
    do
    {
      v16 = *v15++;
      sub_148C3F4(v16);
      --v14;
    }

    while (v14);
    *(a1 + 144) = 0;
  }

  v17 = *(a1 + 168);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 176) + 8);
    do
    {
      v19 = *v18++;
      sub_141203C(v19);
      --v17;
    }

    while (v17);
    *(a1 + 168) = 0;
  }

  result = sub_12A41D0(a1 + 184);
  v21 = *(a1 + 216);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 224) + 8);
    do
    {
      v23 = *v22++;
      result = sub_1410138(v23);
      --v21;
    }

    while (v21);
    *(a1 + 216) = 0;
  }

  v24 = *(a1 + 240);
  if (v24 >= 1)
  {
    v25 = (*(a1 + 248) + 8);
    do
    {
      v26 = *v25++;
      result = sub_1414AB4(v26);
      --v24;
    }

    while (v24);
    *(a1 + 240) = 0;
  }

  v27 = *(a1 + 264);
  if (v27 >= 1)
  {
    v28 = (*(a1 + 272) + 8);
    do
    {
      v29 = *v28++;
      result = sub_1413078(v29);
      --v27;
    }

    while (v27);
    *(a1 + 264) = 0;
  }

  v30 = *(a1 + 288);
  if (v30 >= 1)
  {
    v31 = (*(a1 + 296) + 8);
    do
    {
      v32 = *v31++;
      result = sub_144E6A8(v32);
      --v30;
    }

    while (v30);
    *(a1 + 288) = 0;
  }

  v33 = *(a1 + 312);
  if (v33 >= 1)
  {
    v34 = (*(a1 + 320) + 8);
    do
    {
      v35 = *v34++;
      result = sub_1414098(v35);
      --v33;
    }

    while (v33);
    *(a1 + 312) = 0;
  }

  v36 = *(a1 + 336);
  if (v36 >= 1)
  {
    v37 = (*(a1 + 344) + 8);
    do
    {
      v38 = *v37++;
      result = sub_142E37C(v38);
      --v36;
    }

    while (v36);
    *(a1 + 336) = 0;
  }

  v39 = *(a1 + 360);
  if (v39 >= 1)
  {
    v40 = (*(a1 + 368) + 8);
    do
    {
      v41 = *v40++;
      result = sub_141A60C(v41);
      --v39;
    }

    while (v39);
    *(a1 + 360) = 0;
  }

  v43 = *(a1 + 8);
  v42 = (a1 + 8);
  if (v43)
  {

    return sub_1957EA8(v42);
  }

  return result;
}

uint64_t sub_1432100(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v100 = a2;
  if (sub_195ADC0(a3, v100, a3[11].u32[1]))
  {
    return *v100;
  }

  while (2)
  {
    v6 = (*v100 + 1);
    v7 = **v100;
    if (**v100 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v100, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v100 + 2);
      }
    }

    *v100 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 10)
        {
          goto LABEL_150;
        }

        v10 = v6 - 1;
        while (1)
        {
          v11 = v10 + 1;
          *v100 = v10 + 1;
          v12 = *(a1 + 56);
          if (v12 && (v13 = *(a1 + 48), v13 < *v12))
          {
            *(a1 + 48) = v13 + 1;
            v14 = *&v12[2 * v13 + 2];
          }

          else
          {
            v15 = sub_141BB7C(*(a1 + 40));
            v14 = sub_19593CC(a1 + 40, v15);
            v11 = *v100;
          }

          v10 = sub_220AB18(a3, v14, v11);
          *v100 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 10)
          {
            goto LABEL_160;
          }
        }

      case 2u:
        if (v7 != 18)
        {
          goto LABEL_150;
        }

        v64 = v6 - 1;
        while (1)
        {
          v65 = v64 + 1;
          *v100 = v64 + 1;
          v66 = *(a1 + 80);
          if (v66 && (v67 = *(a1 + 72), v67 < *v66))
          {
            *(a1 + 72) = v67 + 1;
            v68 = *&v66[2 * v67 + 2];
          }

          else
          {
            v69 = sub_141BBD8(*(a1 + 64));
            v68 = sub_19593CC(a1 + 64, v69);
            v65 = *v100;
          }

          v64 = sub_220ABA8(a3, v68, v65);
          *v100 = v64;
          if (!v64)
          {
            return 0;
          }

          if (*a3 <= v64 || *v64 != 18)
          {
            goto LABEL_160;
          }
        }

      case 5u:
        if (v7 != 42)
        {
          goto LABEL_150;
        }

        v58 = v6 - 1;
        while (1)
        {
          v59 = v58 + 1;
          *v100 = v58 + 1;
          v60 = *(a1 + 104);
          if (v60 && (v61 = *(a1 + 96), v61 < *v60))
          {
            *(a1 + 96) = v61 + 1;
            v62 = *&v60[2 * v61 + 2];
          }

          else
          {
            v63 = sub_141BB20(*(a1 + 88));
            v62 = sub_19593CC(a1 + 88, v63);
            v59 = *v100;
          }

          v58 = sub_220AC38(a3, v62, v59);
          *v100 = v58;
          if (!v58)
          {
            return 0;
          }

          if (*a3 <= v58 || *v58 != 42)
          {
            goto LABEL_160;
          }
        }

      case 8u:
        if (v7 != 66)
        {
          goto LABEL_150;
        }

        v52 = v6 - 1;
        while (1)
        {
          v53 = v52 + 1;
          *v100 = v52 + 1;
          v54 = *(a1 + 128);
          if (v54 && (v55 = *(a1 + 120), v55 < *v54))
          {
            *(a1 + 120) = v55 + 1;
            v56 = *&v54[2 * v55 + 2];
          }

          else
          {
            v57 = sub_141BC90(*(a1 + 112));
            v56 = sub_19593CC(a1 + 112, v57);
            v53 = *v100;
          }

          v52 = sub_220ACC8(a3, v56, v53);
          *v100 = v52;
          if (!v52)
          {
            return 0;
          }

          if (*a3 <= v52 || *v52 != 66)
          {
            goto LABEL_160;
          }
        }

      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_150;
        }

        v28 = v6 - 1;
        while (1)
        {
          v29 = v28 + 1;
          *v100 = v28 + 1;
          v30 = *(a1 + 152);
          if (v30 && (v31 = *(a1 + 144), v31 < *v30))
          {
            *(a1 + 144) = v31 + 1;
            v32 = *&v30[2 * v31 + 2];
          }

          else
          {
            v33 = sub_14BD738(*(a1 + 136));
            v32 = sub_19593CC(a1 + 136, v33);
            v29 = *v100;
          }

          sub_220AD58(a3, v32, v29);
          *v100 = v28;
          if (!v28)
          {
            return 0;
          }

          if (*a3 <= v28 || *v28 != 82)
          {
            goto LABEL_160;
          }
        }

      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_150;
        }

        v40 = v6 - 1;
        while (1)
        {
          v41 = v40 + 1;
          *v100 = v40 + 1;
          v42 = *(a1 + 176);
          if (v42 && (v43 = *(a1 + 168), v43 < *v42))
          {
            *(a1 + 168) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = sub_141BCEC(*(a1 + 160));
            v44 = sub_19593CC(a1 + 160, v45);
            v41 = *v100;
          }

          v40 = sub_220ADE8(a3, v44, v41);
          *v100 = v40;
          if (!v40)
          {
            return 0;
          }

          if (*a3 <= v40 || *v40 != 90)
          {
            goto LABEL_160;
          }
        }

      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_150;
        }

        v70 = v6 - 1;
        while (1)
        {
          v71 = (v70 + 1);
          *v100 = v70 + 1;
          v72 = *(a1 + 200);
          if (v72 && (v73 = *(a1 + 192), v73 < *v72))
          {
            *(a1 + 192) = v73 + 1;
            v74 = *&v72[2 * v73 + 2];
          }

          else
          {
            v75 = *(a1 + 184);
            if (!v75)
            {
              operator new();
            }

            *v77 = v76;
            v77[1] = sub_195A650;
            *v76 = 0;
            v76[1] = 0;
            v76[2] = 0;
            v74 = sub_19593CC(a1 + 184, v76);
            v71 = *v100;
          }

          v70 = sub_1958890(v74, v71, a3);
          *v100 = v70;
          if (!v70)
          {
            return 0;
          }

          if (*a3 <= v70 || *v70 != 98)
          {
            goto LABEL_160;
          }
        }

      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_150;
        }

        v78 = v6 - 1;
        while (1)
        {
          v79 = v78 + 1;
          *v100 = v78 + 1;
          v80 = *(a1 + 224);
          if (v80 && (v81 = *(a1 + 216), v81 < *v80))
          {
            *(a1 + 216) = v81 + 1;
            v82 = *&v80[2 * v81 + 2];
          }

          else
          {
            v83 = sub_141BC34(*(a1 + 208));
            v82 = sub_19593CC(a1 + 208, v83);
            v79 = *v100;
          }

          v78 = sub_220AE78(a3, v82, v79);
          *v100 = v78;
          if (!v78)
          {
            return 0;
          }

          if (*a3 <= v78 || *v78 != 106)
          {
            goto LABEL_160;
          }
        }

      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_150;
        }

        v90 = v6 - 1;
        while (1)
        {
          v91 = v90 + 1;
          *v100 = v90 + 1;
          v92 = *(a1 + 248);
          if (v92 && (v93 = *(a1 + 240), v93 < *v92))
          {
            *(a1 + 240) = v93 + 1;
            v94 = *&v92[2 * v93 + 2];
          }

          else
          {
            v95 = sub_141BE00(*(a1 + 232));
            v94 = sub_19593CC(a1 + 232, v95);
            v91 = *v100;
          }

          v90 = sub_220AF08(a3, v94, v91);
          *v100 = v90;
          if (!v90)
          {
            return 0;
          }

          if (*a3 <= v90 || *v90 != 122)
          {
            goto LABEL_160;
          }
        }

      case 0x11u:
        if (v7 != 138)
        {
          goto LABEL_150;
        }

        v84 = v6 - 2;
        while (1)
        {
          v85 = v84 + 2;
          *v100 = v84 + 2;
          v86 = *(a1 + 272);
          if (v86 && (v87 = *(a1 + 264), v87 < *v86))
          {
            *(a1 + 264) = v87 + 1;
            v88 = *&v86[2 * v87 + 2];
          }

          else
          {
            v89 = sub_141BD48(*(a1 + 256));
            v88 = sub_19593CC(a1 + 256, v89);
            v85 = *v100;
          }

          v84 = sub_220AF98(a3, v88, v85);
          *v100 = v84;
          if (!v84)
          {
            return 0;
          }

          if (*a3 <= v84 || *v84 != 394)
          {
            goto LABEL_160;
          }
        }

      case 0x12u:
        if (v7 != 146)
        {
          goto LABEL_150;
        }

        v22 = v6 - 2;
        while (1)
        {
          v23 = v22 + 2;
          *v100 = v22 + 2;
          v24 = *(a1 + 296);
          if (v24 && (v25 = *(a1 + 288), v25 < *v24))
          {
            *(a1 + 288) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = sub_14BF484(*(a1 + 280));
            v26 = sub_19593CC(a1 + 280, v27);
            v23 = *v100;
          }

          v22 = sub_2209138(a3, v26, v23);
          *v100 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 402)
          {
            goto LABEL_160;
          }
        }

      case 0x13u:
        if (v7 != 154)
        {
          goto LABEL_150;
        }

        v46 = v6 - 2;
        while (1)
        {
          v47 = v46 + 2;
          *v100 = v46 + 2;
          v48 = *(a1 + 320);
          if (v48 && (v49 = *(a1 + 312), v49 < *v48))
          {
            *(a1 + 312) = v49 + 1;
            v50 = *&v48[2 * v49 + 2];
          }

          else
          {
            v51 = sub_141BDA4(*(a1 + 304));
            v50 = sub_19593CC(a1 + 304, v51);
            v47 = *v100;
          }

          v46 = sub_22099A8(a3, v50, v47);
          *v100 = v46;
          if (!v46)
          {
            return 0;
          }

          if (*a3 <= v46 || *v46 != 410)
          {
            goto LABEL_160;
          }
        }

      case 0x14u:
        if (v7 != 162)
        {
          goto LABEL_150;
        }

        v34 = v6 - 2;
        while (1)
        {
          v35 = v34 + 2;
          *v100 = v34 + 2;
          v36 = *(a1 + 344);
          if (v36 && (v37 = *(a1 + 336), v37 < *v36))
          {
            *(a1 + 336) = v37 + 1;
            v38 = *&v36[2 * v37 + 2];
          }

          else
          {
            v39 = sub_1436258(*(a1 + 328));
            v38 = sub_19593CC(a1 + 328, v39);
            v35 = *v100;
          }

          v34 = sub_2209918(a3, v38, v35);
          *v100 = v34;
          if (!v34)
          {
            return 0;
          }

          if (*a3 <= v34 || *v34 != 418)
          {
            goto LABEL_160;
          }
        }

      case 0x15u:
        if (v7 != 170)
        {
          goto LABEL_150;
        }

        v16 = v6 - 2;
        while (1)
        {
          v17 = v16 + 2;
          *v100 = v16 + 2;
          v18 = *(a1 + 368);
          if (v18 && (v19 = *(a1 + 360), v19 < *v18))
          {
            *(a1 + 360) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_141C160(*(a1 + 352));
            v20 = sub_19593CC(a1 + 352, v21);
            v17 = *v100;
          }

          v16 = sub_2209FD8(a3, v20, v17);
          *v100 = v16;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 426)
          {
            goto LABEL_160;
          }
        }

      default:
LABEL_150:
        if (v7)
        {
          v96 = (v7 & 7) == 4;
        }

        else
        {
          v96 = 1;
        }

        if (!v96)
        {
          if (v7 - 7600 > 0x18F)
          {
            v98 = *(a1 + 8);
            if (v98)
            {
              v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v99 = sub_11F1920((a1 + 8));
              v6 = *v100;
            }

            v97 = sub_1952690(v7, v99, v6, a3);
          }

          else
          {
            v97 = sub_19525AC((a1 + 16), v7, v6, &off_2770C70, (a1 + 8), a3);
          }

          *v100 = v97;
          if (!v97)
          {
            return 0;
          }

LABEL_160:
          if (sub_195ADC0(a3, v100, a3[11].u32[1]))
          {
            return *v100;
          }

          continue;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return *v100;
    }
  }
}

char *sub_1432ACC(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 56) + 8 * i + 8);
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

      a2 = sub_140EDF0(v8, v10, a3);
    }
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 80) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 44);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_140FA3C(v13, v15, a3);
    }
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v18 = *(*(a1 + 104) + 8 * k + 8);
      *a2 = 42;
      v19 = *(v18 + 44);
      a2[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, a2 + 1);
      }

      else
      {
        v20 = a2 + 2;
      }

      a2 = sub_140D73C(v18, v20, a3);
    }
  }

  v21 = *(a1 + 120);
  if (v21)
  {
    for (m = 0; m != v21; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v23 = *(*(a1 + 128) + 8 * m + 8);
      *a2 = 66;
      v24 = *(v23 + 44);
      a2[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, a2 + 1);
      }

      else
      {
        v25 = a2 + 2;
      }

      a2 = sub_1411550(v23, v25, a3);
    }
  }

  v26 = *(a1 + 144);
  if (v26)
  {
    for (n = 0; n != v26; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v28 = *(*(a1 + 152) + 8 * n + 8);
      *a2 = 82;
      v29 = *(v28 + 48);
      a2[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, a2 + 1);
      }

      else
      {
        v30 = a2 + 2;
      }

      a2 = sub_148CC30(v28, v30, a3);
    }
  }

  v31 = *(a1 + 168);
  if (v31)
  {
    for (ii = 0; ii != v31; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v33 = *(*(a1 + 176) + 8 * ii + 8);
      *a2 = 90;
      v34 = *(v33 + 44);
      a2[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, a2 + 1);
      }

      else
      {
        v35 = a2 + 2;
      }

      a2 = sub_14125D0(v33, v35, a3);
    }
  }

  v36 = *(a1 + 192);
  if (v36 >= 1)
  {
    v37 = 8;
    do
    {
      a2 = sub_1355F54(a3, 12, *(*(a1 + 200) + v37), a2);
      v37 += 8;
      --v36;
    }

    while (v36);
  }

  v38 = *(a1 + 216);
  if (v38)
  {
    for (jj = 0; jj != v38; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v40 = *(*(a1 + 224) + 8 * jj + 8);
      *a2 = 106;
      v41 = *(v40 + 44);
      a2[1] = v41;
      if (v41 > 0x7F)
      {
        v42 = sub_19575D0(v41, a2 + 1);
      }

      else
      {
        v42 = a2 + 2;
      }

      a2 = sub_14105FC(v40, v42, a3);
    }
  }

  v43 = *(a1 + 240);
  if (v43)
  {
    for (kk = 0; kk != v43; ++kk)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v45 = *(*(a1 + 248) + 8 * kk + 8);
      *a2 = 122;
      v46 = *(v45 + 44);
      a2[1] = v46;
      if (v46 > 0x7F)
      {
        v47 = sub_19575D0(v46, a2 + 1);
      }

      else
      {
        v47 = a2 + 2;
      }

      a2 = sub_14153AC(v45, v47, a3);
    }
  }

  v48 = *(a1 + 264);
  if (v48)
  {
    for (mm = 0; mm != v48; ++mm)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v50 = *(*(a1 + 272) + 8 * mm + 8);
      *a2 = 394;
      v51 = *(v50 + 44);
      a2[2] = v51;
      if (v51 > 0x7F)
      {
        v52 = sub_19575D0(v51, a2 + 2);
      }

      else
      {
        v52 = a2 + 3;
      }

      a2 = sub_1413590(v50, v52, a3);
    }
  }

  v53 = *(a1 + 288);
  if (v53)
  {
    for (nn = 0; nn != v53; ++nn)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v55 = *(*(a1 + 296) + 8 * nn + 8);
      *a2 = 402;
      v56 = *(v55 + 44);
      a2[2] = v56;
      if (v56 > 0x7F)
      {
        v57 = sub_19575D0(v56, a2 + 2);
      }

      else
      {
        v57 = a2 + 3;
      }

      a2 = sub_14B6D24(v55, v57, a3);
    }
  }

  v58 = *(a1 + 312);
  if (v58)
  {
    for (i1 = 0; i1 != v58; ++i1)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v60 = *(*(a1 + 320) + 8 * i1 + 8);
      *a2 = 410;
      v61 = *(v60 + 44);
      a2[2] = v61;
      if (v61 > 0x7F)
      {
        v62 = sub_19575D0(v61, a2 + 2);
      }

      else
      {
        v62 = a2 + 3;
      }

      a2 = sub_1414414(v60, v62, a3);
    }
  }

  v63 = *(a1 + 336);
  if (v63)
  {
    for (i2 = 0; i2 != v63; ++i2)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v65 = *(*(a1 + 344) + 8 * i2 + 8);
      *a2 = 418;
      v66 = *(v65 + 44);
      a2[2] = v66;
      if (v66 > 0x7F)
      {
        v67 = sub_19575D0(v66, a2 + 2);
      }

      else
      {
        v67 = a2 + 3;
      }

      a2 = sub_142F4EC(v65, v67, a3);
    }
  }

  v68 = *(a1 + 360);
  if (v68)
  {
    for (i3 = 0; i3 != v68; ++i3)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v70 = *(*(a1 + 368) + 8 * i3 + 8);
      *a2 = 426;
      v71 = *(v70 + 44);
      a2[2] = v71;
      if (v71 > 0x7F)
      {
        v72 = sub_19575D0(v71, a2 + 2);
      }

      else
      {
        v72 = a2 + 3;
      }

      a2 = sub_141AA28(v70, v72, a3);
    }
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 950, 1000, a2, a3);
  }

  v73 = *(a1 + 8);
  if ((v73 & 1) == 0)
  {
    return a2;
  }

  v75 = v73 & 0xFFFFFFFFFFFFFFFCLL;
  v76 = *(v75 + 31);
  if (v76 < 0)
  {
    v77 = *(v75 + 8);
    v76 = *(v75 + 16);
  }

  else
  {
    v77 = (v75 + 8);
  }

  if ((*a3 - a2) >= v76)
  {
    v78 = v76;
    memcpy(a2, v77, v76);
    a2 += v78;
    return a2;
  }

  return sub_1957130(a3, v77, v76, a2);
}

uint64_t sub_1433298(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
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
      v9 = sub_140F164(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 72);
  v11 = v4 + v10;
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_140FC8C(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 96);
  v18 = v11 + v17;
  v19 = *(a1 + 104);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_140DEF8(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 120);
  v25 = v18 + v24;
  v26 = *(a1 + 128);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = sub_1411964(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 144);
  v32 = v25 + v31;
  v33 = *(a1 + 152);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_148EB94(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 168);
  v39 = v32 + v38;
  v40 = *(a1 + 176);
  if (v40)
  {
    v41 = (v40 + 8);
  }

  else
  {
    v41 = 0;
  }

  if (v38)
  {
    v42 = 8 * v38;
    do
    {
      v43 = *v41++;
      v44 = sub_14129D8(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 192);
  v46 = v39 + v45;
  if (v45 >= 1)
  {
    v47 = (*(a1 + 200) + 8);
    do
    {
      v48 = *v47++;
      v49 = *(v48 + 23);
      v50 = *(v48 + 8);
      if ((v49 & 0x80u) == 0)
      {
        v50 = v49;
      }

      v46 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6);
      --v45;
    }

    while (v45);
  }

  v51 = *(a1 + 216);
  v52 = v46 + v51;
  v53 = *(a1 + 224);
  if (v53)
  {
    v54 = (v53 + 8);
  }

  else
  {
    v54 = 0;
  }

  if (v51)
  {
    v55 = 8 * v51;
    do
    {
      v56 = *v54++;
      v57 = sub_1410960(v56);
      v52 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6);
      v55 -= 8;
    }

    while (v55);
  }

  v58 = *(a1 + 240);
  v59 = v52 + v58;
  v60 = *(a1 + 248);
  if (v60)
  {
    v61 = (v60 + 8);
  }

  else
  {
    v61 = 0;
  }

  if (v58)
  {
    v62 = 8 * v58;
    do
    {
      v63 = *v61++;
      v64 = sub_1415A1C(v63);
      v59 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6);
      v62 -= 8;
    }

    while (v62);
  }

  v65 = *(a1 + 264);
  v66 = v59 + 2 * v65;
  v67 = *(a1 + 272);
  if (v67)
  {
    v68 = (v67 + 8);
  }

  else
  {
    v68 = 0;
  }

  if (v65)
  {
    v69 = 8 * v65;
    do
    {
      v70 = *v68++;
      v71 = sub_1413968(v70);
      v66 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6);
      v69 -= 8;
    }

    while (v69);
  }

  v72 = *(a1 + 288);
  v73 = v66 + 2 * v72;
  v74 = *(a1 + 296);
  if (v74)
  {
    v75 = (v74 + 8);
  }

  else
  {
    v75 = 0;
  }

  if (v72)
  {
    v76 = 8 * v72;
    do
    {
      v77 = *v75++;
      v78 = sub_14B71B8(v77);
      v73 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6);
      v76 -= 8;
    }

    while (v76);
  }

  v79 = *(a1 + 312);
  v80 = v73 + 2 * v79;
  v81 = *(a1 + 320);
  if (v81)
  {
    v82 = (v81 + 8);
  }

  else
  {
    v82 = 0;
  }

  if (v79)
  {
    v83 = 8 * v79;
    do
    {
      v84 = *v82++;
      v85 = sub_1414638(v84);
      v80 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6);
      v83 -= 8;
    }

    while (v83);
  }

  v86 = *(a1 + 336);
  v87 = v80 + 2 * v86;
  v88 = *(a1 + 344);
  if (v88)
  {
    v89 = (v88 + 8);
  }

  else
  {
    v89 = 0;
  }

  if (v86)
  {
    v90 = 8 * v86;
    do
    {
      v91 = *v89++;
      v92 = sub_1430508(v91);
      v87 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6);
      v90 -= 8;
    }

    while (v90);
  }

  v93 = *(a1 + 360);
  v94 = v87 + 2 * v93;
  v95 = *(a1 + 368);
  if (v95)
  {
    v96 = (v95 + 8);
  }

  else
  {
    v96 = 0;
  }

  if (v93)
  {
    v97 = 8 * v93;
    do
    {
      v98 = *v96++;
      v99 = sub_141ACC4(v98);
      v94 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6);
      v97 -= 8;
    }

    while (v97);
  }

  v100 = *(a1 + 8);
  if (v100)
  {
    v102 = v100 & 0xFFFFFFFFFFFFFFFCLL;
    v103 = *((v100 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v103 < 0)
    {
      v103 = *(v102 + 16);
    }

    v94 += v103;
  }

  *(a1 + 376) = v94;
  return v94;
}

void sub_143375C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_144C4AC((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_144C538((a1 + 64), v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a2 + 104);
    v16 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_144C5C4((a1 + 88), v16, (v15 + 8), v14, **(a1 + 104) - *(a1 + 96), v17);
    v18 = *(a1 + 96) + v14;
    *(a1 + 96) = v18;
    v19 = *(a1 + 104);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 120);
  if (v20)
  {
    v21 = *(a2 + 128);
    v22 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_144C650((a1 + 112), v22, (v21 + 8), v20, **(a1 + 128) - *(a1 + 120));
    v23 = *(a1 + 120) + v20;
    *(a1 + 120) = v23;
    v24 = *(a1 + 128);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 144);
  if (v25)
  {
    v26 = *(a2 + 152);
    v27 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_144C6DC((a1 + 136), v27, (v26 + 8), v25, **(a1 + 152) - *(a1 + 144), v28);
    v29 = *(a1 + 144) + v25;
    *(a1 + 144) = v29;
    v30 = *(a1 + 152);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 168);
  if (v31)
  {
    v32 = *(a2 + 176);
    v33 = sub_19592E8(a1 + 160, *(a2 + 168));
    sub_144C768((a1 + 160), v33, (v32 + 8), v31, **(a1 + 176) - *(a1 + 168));
    v34 = *(a1 + 168) + v31;
    *(a1 + 168) = v34;
    v35 = *(a1 + 176);
    if (*v35 < v34)
    {
      *v35 = v34;
    }
  }

  v36 = *(a2 + 192);
  if (v36)
  {
    v37 = *(a2 + 200);
    v38 = sub_19592E8(a1 + 184, *(a2 + 192));
    sub_1201B48((a1 + 184), v38, (v37 + 8), v36, **(a1 + 200) - *(a1 + 192));
    v39 = *(a1 + 192) + v36;
    *(a1 + 192) = v39;
    v40 = *(a1 + 200);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  v41 = *(a2 + 216);
  if (v41)
  {
    v42 = *(a2 + 224);
    v43 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_144C7F4((a1 + 208), v43, (v42 + 8), v41, **(a1 + 224) - *(a1 + 216), v44);
    v45 = *(a1 + 216) + v41;
    *(a1 + 216) = v45;
    v46 = *(a1 + 224);
    if (*v46 < v45)
    {
      *v46 = v45;
    }
  }

  v47 = *(a2 + 240);
  if (v47)
  {
    v48 = *(a2 + 248);
    v49 = sub_19592E8(a1 + 232, *(a2 + 240));
    sub_144C880((a1 + 232), v49, (v48 + 8), v47, **(a1 + 248) - *(a1 + 240), v50);
    v51 = *(a1 + 240) + v47;
    *(a1 + 240) = v51;
    v52 = *(a1 + 248);
    if (*v52 < v51)
    {
      *v52 = v51;
    }
  }

  v53 = *(a2 + 264);
  if (v53)
  {
    v54 = *(a2 + 272);
    v55 = sub_19592E8(a1 + 256, *(a2 + 264));
    sub_144C90C((a1 + 256), v55, (v54 + 8), v53, **(a1 + 272) - *(a1 + 264));
    v56 = *(a1 + 264) + v53;
    *(a1 + 264) = v56;
    v57 = *(a1 + 272);
    if (*v57 < v56)
    {
      *v57 = v56;
    }
  }

  v58 = *(a2 + 288);
  if (v58)
  {
    v59 = *(a2 + 296);
    v60 = sub_19592E8(a1 + 280, *(a2 + 288));
    sub_144C998((a1 + 280), v60, (v59 + 8), v58, **(a1 + 296) - *(a1 + 288), v61);
    v62 = *(a1 + 288) + v58;
    *(a1 + 288) = v62;
    v63 = *(a1 + 296);
    if (*v63 < v62)
    {
      *v63 = v62;
    }
  }

  v64 = *(a2 + 312);
  if (v64)
  {
    v65 = *(a2 + 320);
    v66 = sub_19592E8(a1 + 304, *(a2 + 312));
    sub_144CA24((a1 + 304), v66, (v65 + 8), v64, **(a1 + 320) - *(a1 + 312));
    v67 = *(a1 + 312) + v64;
    *(a1 + 312) = v67;
    v68 = *(a1 + 320);
    if (*v68 < v67)
    {
      *v68 = v67;
    }
  }

  v69 = *(a2 + 336);
  if (v69)
  {
    v70 = *(a2 + 344);
    v71 = sub_19592E8(a1 + 328, *(a2 + 336));
    sub_144BC98((a1 + 328), v71, (v70 + 8), v69, **(a1 + 344) - *(a1 + 336), v72);
    v73 = *(a1 + 336) + v69;
    *(a1 + 336) = v73;
    v74 = *(a1 + 344);
    if (*v74 < v73)
    {
      *v74 = v73;
    }
  }

  v75 = *(a2 + 360);
  if (v75)
  {
    v76 = *(a2 + 368);
    v77 = sub_19592E8(a1 + 352, *(a2 + 360));
    sub_144BFD0((a1 + 352), v77, (v76 + 8), v75, **(a1 + 368) - *(a1 + 360));
    v78 = *(a1 + 360) + v75;
    *(a1 + 360) = v78;
    v79 = *(a1 + 368);
    if (*v79 < v78)
    {
      *v79 = v78;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v80 = *(a2 + 8);
  if (v80)
  {

    sub_1957EF4((a1 + 8), (v80 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1433CD0(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_140F4BC(*(*(a1 + 56) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 72);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_140FEF4(*(*(a1 + 80) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 96);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = sub_140E690(*(*(a1 + 104) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 120);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = sub_1411DDC(*(*(a1 + 128) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(a1 + 144);
  while (v16 >= 1)
  {
    v17 = v16 - 1;
    v18 = sub_1490E5C(*(*(a1 + 152) + 8 * v16));
    v14 = 0;
    v16 = v17;
    if ((v18 & 1) == 0)
    {
      return v14;
    }
  }

  v19 = *(a1 + 168);
  while (v19 >= 1)
  {
    v20 = v19 - 1;
    v21 = sub_1412E28(*(*(a1 + 176) + 8 * v19));
    v14 = 0;
    v19 = v20;
    if ((v21 & 1) == 0)
    {
      return v14;
    }
  }

  v22 = *(a1 + 216);
  while (v22 >= 1)
  {
    v23 = v22 - 1;
    v24 = sub_1410D08(*(*(a1 + 224) + 8 * v22));
    v14 = 0;
    v22 = v23;
    if ((v24 & 1) == 0)
    {
      return v14;
    }
  }

  v25 = *(a1 + 240);
  while (v25 >= 1)
  {
    v26 = v25 - 1;
    v27 = sub_1416118(*(*(a1 + 248) + 8 * v25));
    v14 = 0;
    v25 = v26;
    if ((v27 & 1) == 0)
    {
      return v14;
    }
  }

  v28 = *(a1 + 264);
  while (v28 >= 1)
  {
    v29 = v28 - 1;
    v30 = sub_1413D38(*(*(a1 + 272) + 8 * v28));
    v14 = 0;
    v28 = v29;
    if ((v30 & 1) == 0)
    {
      return v14;
    }
  }

  v31 = *(a1 + 288);
  while (v31 >= 1)
  {
    v32 = v31 - 1;
    v33 = sub_144F5D0(*(*(a1 + 296) + 8 * v31));
    v14 = 0;
    v31 = v32;
    if ((v33 & 1) == 0)
    {
      return v14;
    }
  }

  v34 = *(a1 + 312);
  while (v34 >= 1)
  {
    v35 = v34 - 1;
    v36 = sub_195228C(*(*(a1 + 320) + 8 * v34) + 16);
    v14 = 0;
    v34 = v35;
    if ((v36 & 1) == 0)
    {
      return v14;
    }
  }

  v37 = *(a1 + 336);
  while (v37 >= 1)
  {
    v38 = v37 - 1;
    v39 = sub_1431318(*(*(a1 + 344) + 8 * v37));
    v14 = 0;
    v37 = v38;
    if ((v39 & 1) == 0)
    {
      return v14;
    }
  }

  v40 = *(a1 + 360);
  do
  {
    v14 = v40 < 1;
    if (v40 < 1)
    {
      break;
    }

    v41 = v40 - 1;
    v42 = sub_195228C(*(*(a1 + 368) + 8 * v40) + 16);
    v40 = v41;
  }

  while ((v42 & 1) != 0);
  return v14;
}

uint64_t sub_1433F4C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E1E88;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_1433FC8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1433FFC(void *a1)
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

void sub_1434070(void *a1)
{
  sub_1433FFC(a1);

  operator delete();
}

uint64_t sub_14340A8(uint64_t a1)
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

char *sub_14340C0(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1434234(uint64_t a1, char *__dst, void *a3)
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

unint64_t sub_143435C(uint64_t a1)
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

uint64_t sub_14343D4(uint64_t a1)
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

  if (a1 != &off_2770E10)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_145847C(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_145847C(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_14B662C(v7);
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

void sub_14344C4(uint64_t a1)
{
  sub_14343D4(a1);

  operator delete();
}

uint64_t sub_14344FC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_144E5CC(*(result + 24));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_144E5CC(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_144E6A8(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1434584(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v27, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v27 + 1;
    v7 = *v27;
    if (*v27 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v27, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v27 + 2;
      }
    }

    v27 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
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

          v20 = sub_14BF484(v22);
          *(a1 + 40) = v20;
          v6 = v27;
        }

        v15 = sub_2209138(a3, v20, v6);
        goto LABEL_37;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
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

          sub_14BAE64(v18);
          v16 = v19;
          *(a1 + 32) = v19;
LABEL_35:
          v6 = v27;
        }

LABEL_36:
        v15 = sub_22095B8(a3, v16, v6);
        goto LABEL_37;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 24);
      if (!v16)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        sub_14BAE64(v24);
        v16 = v25;
        *(a1 + 24) = v25;
        goto LABEL_35;
      }

      goto LABEL_36;
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
        return v27;
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
      v6 = v27;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_37:
    v27 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v27;
}

char *sub_1434778(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_23;
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

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) != 0)
  {
LABEL_17:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 40);
    *v4 = 26;
    v14 = *(v13 + 44);
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v4 + 1);
    }

    else
    {
      v15 = v4 + 2;
    }

    v4 = sub_14B6D24(v13, v15, a3);
  }

LABEL_23:
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

uint64_t sub_1434964(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
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
    v5 = sub_1458DB4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_14B71B8(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

void sub_1434A64(uint64_t result, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 16);
  if ((v5 & 7) == 0)
  {
    goto LABEL_30;
  }

  if (v5)
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

      sub_14BAE64(v8);
      *(result + 24) = v6;
    }

    if (*(a2 + 24))
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = &off_2771738;
    }

    sub_144EF20(v6, v9);
    if ((v5 & 2) == 0)
    {
LABEL_4:
      if ((v5 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(result + 16) |= 2u;
  v10 = *(result + 32);
  if (!v10)
  {
    v11 = *(result + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_14BAE64(v12);
    *(result + 32) = v10;
  }

  if (*(a2 + 32))
  {
    v13 = *(a2 + 32);
  }

  else
  {
    v13 = &off_2771738;
  }

  sub_144EF20(v10, v13);
  if ((v5 & 4) != 0)
  {
LABEL_22:
    *(result + 16) |= 4u;
    v14 = *(result + 40);
    if (!v14)
    {
      v15 = *(result + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_14BF484(v16);
      *(result + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_2773AC8;
    }

    sub_144F194(v14, v17);
  }

LABEL_30:
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((result + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1434BB8(uint64_t a1)
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

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = sub_144F5D0(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1434C28(uint64_t a1)
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
  if (a1 != &off_2770E40)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_14343D4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_144B9E4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1434CEC(uint64_t a1)
{
  sub_1434C28(a1);

  operator delete();
}

uint64_t sub_1434D24(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1418EB8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_14344FC(*(v1 + 48));
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

char *sub_1434DB4(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
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
            v20 = sub_141C040(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v26;
          }

          v15 = sub_220B0B8(a3, v19, v16);
          v26 = v15;
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

        sub_1436388(v23);
        v21 = v24;
        *(a1 + 48) = v24;
        v6 = v26;
      }

      v14 = sub_220B028(a3, v21, v6);
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
        return v26;
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
      v6 = v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_34:
    v26 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v26;
}

char *sub_1434F98(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_1434778(v6, v8, a3);
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

      v4 = sub_14191FC(v11, v13, a3);
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

uint64_t sub_1435140(uint64_t a1)
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
      v7 = sub_1419494(v6);
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
    v8 = sub_1434964(*(a1 + 48));
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

void sub_143521C(uint64_t result, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(result + 24, *(a2 + 32));
    sub_144CAB0((result + 24), v7, (v6 + 8), v5, **(result + 40) - *(result + 32));
    v8 = *(result + 32) + v5;
    *(result + 32) = v8;
    v9 = *(result + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 48);
    *(result + 16) |= 1u;
    v11 = *(result + 48);
    if (!v11)
    {
      v12 = *(result + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      a3.n128_f64[0] = sub_1436388(v13);
      *(result + 48) = v11;
      v10 = *(a2 + 48);
    }

    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = &off_2770E10;
    }

    sub_1434A64(v11, v14, a3);
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((result + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_143532C(uint64_t a1)
{
  result = sub_12B329C(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_1434BB8(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1435380(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CB3C();
  }

  return sub_141C280(v3, a1, 0);
}

void *sub_14353DC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E0E88;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1435454(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E0F08;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0;
  return result;
}

uint64_t sub_14354F8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E0F88;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1435574(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E1008;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  return result;
}

double sub_1435618(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E1088;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  return result;
}

uint64_t sub_14356BC(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CBA8();
  }

  return sub_141F80C(v3, a1, 0);
}

uint64_t sub_1435718(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CC14();
  }

  return sub_141FFCC(v3, a1, 0);
}

void *sub_1435774(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E1208;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_14357EC(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CC80();
  }

  return sub_14212DC(v3, a1, 0);
}

uint64_t sub_1435848(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E1308;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_14358E4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E1388;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_1435984(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E1408;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  return result;
}

void *sub_1435A28(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CCEC();
  }

  return sub_1424574(v3, a1, 0);
}

void *sub_1435A84(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CD58();
  }

  return sub_1424F38(v3, a1, 0);
}

uint64_t sub_1435AE0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E1588;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1435B5C(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CDC4();
  }

  return sub_1425A08(v3, a1, 0);
}

uint64_t sub_1435BB8(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CE30();
  }

  return sub_1425FB8(v3, a1, 0);
}

void *sub_1435C14(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CE9C();
  }

  return sub_1427288(v3, a1, 0);
}

uint64_t sub_1435C70(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CF08();
  }

  return sub_1427A20(v3, a1, 0);
}

void *sub_1435CCC(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CF74();
  }

  return sub_142886C(v3, a1, 0);
}

void *sub_1435D28(uint64_t *a1)
{
  if (!a1)
  {

    sub_144CFE0();
  }

  return sub_1428EB4(v3, a1, 0);
}

uint64_t sub_1435D84(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E1908;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1435E00(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E1988;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_1435EA0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E1A08;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_1435F28(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E1A88;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1435FA0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E1B08;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_143601C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E1B88;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

double sub_14360B8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E1C08;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 61) = 0u;
  return result;
}

uint64_t sub_143613C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E1C88;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  return result;
}

void *sub_14361DC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E1D08;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1436258(uint64_t *a1)
{
  if (!a1)
  {

    sub_144D04C();
  }

  return sub_142DFFC(v3, a1, 0);
}

uint64_t sub_14362B4(uint64_t *a1)
{
  if (!a1)
  {

    sub_144D0B8();
  }

  return sub_14314AC(v3, a1, 0);
}

void *sub_1436310(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E1E88;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_1436388(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E1F08;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void *sub_1436404(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E1F88;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_14364A0(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E2008;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = &qword_278E990;
  a1[7] = &qword_278E990;
  return a1;
}

void sub_1436510(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1436540(uint64_t a1)
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
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1436600(uint64_t a1)
{
  sub_1436540(a1);

  operator delete();
}

unsigned __int8 *sub_1436638(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_11:
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_14366F4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v20 = a2;
  if (sub_195ADC0(a3, v20, a3[11].u32[1]))
  {
    return *v20;
  }

  while (1)
  {
    v6 = (*v20 + 1);
    v7 = **v20;
    if (**v20 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v20, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v20 + 2);
      }
    }

    *v20 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 40) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 56);
        goto LABEL_25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 40) |= 1u;
      v16 = *(a1 + 8);
      v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v14 = *v14;
      }

      v15 = (a1 + 48);
LABEL_25:
      v17 = sub_194DB04(v15, v14);
      v12 = sub_1958890(v17, *v20, a3);
      goto LABEL_26;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if (v7 - 8000 > 0xF9F)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v19 = sub_11F1920((a1 + 8));
        v6 = *v20;
      }

      v12 = sub_1952690(v7, v19, v6, a3);
    }

    else
    {
      v12 = sub_19525AC((a1 + 16), v7, v6, &off_2770E78, (a1 + 8), a3);
    }

LABEL_26:
    *v20 = v12;
    if (!v12)
    {
      goto LABEL_35;
    }

    if (sub_195ADC0(a3, v20, a3[11].u32[1]))
    {
      return *v20;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v20;
  }

LABEL_35:
  *v20 = 0;
  return *v20;
}

char *sub_14368C4(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 1500, v4, a3);
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

uint64_t sub_14369D0(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      result += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

  *(a1 + 44) = result;
  return result;
}

void sub_1436AB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_194EA1C((a1 + 48), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      v8 = *(a2 + 56);
      *(a1 + 40) |= 2u;
      v9 = *(a1 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_194EA1C((a1 + 56), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}