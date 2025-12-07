uint64_t sub_12FF938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7F) == 0)
  {
    v2 = 0;
    goto LABEL_31;
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

      goto LABEL_19;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 36);
  if (v3 < 0)
  {
    v4 = 11;
  }

  else
  {
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v4;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_19:
  v5 = *(a1 + 40);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v6;
  if ((v1 & 0x20) == 0)
  {
LABEL_12:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_23:
  v7 = *(a1 + 44);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v8;
  if ((v1 & 0x40) != 0)
  {
LABEL_27:
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

LABEL_31:
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

uint64_t sub_12FFAF8(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276A8F8)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_12FEAE8(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1312520((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12FFBD0(uint64_t a1)
{
  sub_12FFAF8(a1);

  operator delete();
}

uint64_t sub_12FFC08(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12FF054(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      result = sub_12FEBD8(*(v1 + 56));
    }
  }

LABEL_11:
  if ((v5 & 0xC) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 1;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_12FFCE4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 2u;
        v20 = *(a1 + 56);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_1306C30(v22);
          *(a1 + 56) = v20;
          v7 = *v37;
        }

        v15 = sub_21F94F8(a3, v20, v7);
      }

      else
      {
        if (v11 == 4)
        {
          if (v8 == 34)
          {
            v23 = v7 - 1;
            while (1)
            {
              v24 = v23 + 1;
              *v37 = v23 + 1;
              v25 = *(a1 + 40);
              if (v25 && (v26 = *(a1 + 32), v26 < *v25))
              {
                *(a1 + 32) = v26 + 1;
                v27 = *&v25[2 * v26 + 2];
              }

              else
              {
                sub_1306CB4(*(a1 + 24));
                v27 = sub_19593CC(a1 + 24, v28);
                v24 = *v37;
              }

              v23 = sub_21F9588(a3, v27, v24);
              *v37 = v23;
              if (!v23)
              {
                goto LABEL_66;
              }

              if (*a3 <= v23 || *v23 != 34)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_48;
        }

        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 1u;
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v14 = sub_194DB04((a1 + 48), v13);
        v15 = sub_1958890(v14, *v37, a3);
      }

LABEL_55:
      *v37 = v15;
      if (!v15)
      {
        goto LABEL_66;
      }

      goto LABEL_56;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_48;
    }

    v5 |= 4u;
    v30 = v7 + 1;
    v29 = *v7;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_47;
    }

    v31 = *v30;
    v29 = (v31 << 7) + v29 - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_47:
      *v37 = v30;
      *(a1 + 64) = v29;
      goto LABEL_56;
    }

    v35 = sub_19587DC(v7, v29);
    *v37 = v35;
    *(a1 + 64) = v36;
    if (!v35)
    {
      goto LABEL_66;
    }

LABEL_56:
    if (sub_195ADC0(a3, v37, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2 && v8 == 16)
  {
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if (v19 < 0)
    {
      *v37 = sub_19587DC(v7, v17);
      if (!*v37)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v18 = v7 + 2;
LABEL_24:
      *v37 = v18;
    }

    if ((v17 - 1) > 3)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 72) = v17;
    }

    goto LABEL_56;
  }

LABEL_48:
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
      v7 = *v37;
    }

    v15 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  *v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v37;
}

char *sub_1300024(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 64);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 72);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 56);
    *v11 = 26;
    v16 = *(v15 + 20);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_12FEDD4(v15, v17, a3);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v20 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 34;
      v21 = *(v20 + 20);
      v11[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v11 + 1);
      }

      else
      {
        v22 = v11 + 2;
      }

      v11 = sub_12FF4E8(v20, v22, a3);
    }
  }

  if (v5)
  {
    v11 = sub_128AEEC(a3, 5, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v11;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v11) >= v26)
  {
    v28 = v26;
    memcpy(v11, v27, v26);
    v11 += v28;
    return v11;
  }

  return sub_1957130(a3, v27, v26, v11);
}

uint64_t sub_13002F4(uint64_t a1)
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
      v7 = sub_12FF938(v6);
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
    goto LABEL_24;
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

      goto LABEL_19;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_12FEEBC(*(a1 + 56));
  v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_19:
  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v13 = *(a1 + 72);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v14;
LABEL_24:
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

void sub_1300484(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13129C4((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        goto LABEL_26;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

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

      v14 = sub_1306C30(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_276A8D0;
    }

    sub_12F5A34(v14, v17);
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

LABEL_26:
    *(a1 + 64) = *(a2 + 64);
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

void *sub_1300618(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13125A4(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1300698(void *a1)
{
  sub_1300618(a1);

  operator delete();
}

uint64_t sub_13006D0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12FFC08(v4);
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

char *sub_130074C(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1306D34(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F9618(a3, v16, v13);
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

char *sub_13008DC(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1300024(v8, v10, a3);
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

uint64_t sub_1300A1C(uint64_t a1)
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
      v7 = sub_13002F4(v6);
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

void sub_1300AC4(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_1312A40((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

uint64_t sub_1300B98(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C((a1 + 112));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_1312208((a1 + 72));
  sub_1312208((a1 + 48));
  sub_1312208((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1300C88(uint64_t a1)
{
  sub_1300B98(a1);

  operator delete();
}

uint64_t sub_1300CC0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12F567C(v4);
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
      result = sub_12F567C(v7);
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
      result = sub_12F567C(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 7) != 0)
  {
    if ((v11 & 1) == 0)
    {
      if ((v11 & 2) == 0)
      {
        goto LABEL_16;
      }

LABEL_22:
      v13 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v13 + 23) < 0)
      {
        **v13 = 0;
        *(v13 + 8) = 0;
        if ((v11 & 4) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        *v13 = 0;
        *(v13 + 23) = 0;
        if ((v11 & 4) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_26;
    }

    v12 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    if ((v11 & 4) == 0)
    {
      goto LABEL_29;
    }

LABEL_26:
    v14 = *(v1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
    }
  }

LABEL_29:
  if ((v11 & 0x18) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
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

uint64_t sub_1300E40(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v8 >> 3 > 6)
      {
        if (v11 == 7)
        {
          if (v8 == 58)
          {
            v38 = v7 - 1;
            while (1)
            {
              v39 = v38 + 1;
              *v51 = v38 + 1;
              v40 = *(a1 + 64);
              if (v40 && (v41 = *(a1 + 56), v41 < *v40))
              {
                *(a1 + 56) = v41 + 1;
                v42 = *&v40[2 * v41 + 2];
              }

              else
              {
                v43 = sub_1306464(*(a1 + 48));
                v42 = sub_19593CC(a1 + 48, v43);
                v39 = *v51;
              }

              v38 = sub_21F8F58(a3, v42, v39);
              *v51 = v38;
              if (!v38)
              {
                goto LABEL_91;
              }

              if (*a3 <= v38 || *v38 != 58)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v11 == 8 && v8 == 66)
        {
          v25 = v7 - 1;
          while (1)
          {
            v26 = v25 + 1;
            *v51 = v25 + 1;
            v27 = *(a1 + 88);
            if (v27 && (v28 = *(a1 + 80), v28 < *v27))
            {
              *(a1 + 80) = v28 + 1;
              v29 = *&v27[2 * v28 + 2];
            }

            else
            {
              v30 = sub_1306464(*(a1 + 72));
              v29 = sub_19593CC(a1 + 72, v30);
              v26 = *v51;
            }

            v25 = sub_21F8F58(a3, v29, v26);
            *v51 = v25;
            if (!v25)
            {
              goto LABEL_91;
            }

            if (*a3 <= v25 || *v25 != 66)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_74;
      }

      if (v11 != 5)
      {
        if (v11 == 6 && v8 == 50)
        {
          v16 = v7 - 1;
          while (1)
          {
            v17 = v16 + 1;
            *v51 = v16 + 1;
            v18 = *(a1 + 40);
            if (v18 && (v19 = *(a1 + 32), v19 < *v18))
            {
              *(a1 + 32) = v19 + 1;
              v20 = *&v18[2 * v19 + 2];
            }

            else
            {
              v21 = sub_1306464(*(a1 + 24));
              v20 = sub_19593CC(a1 + 24, v21);
              v17 = *v51;
            }

            v16 = sub_21F8F58(a3, v20, v17);
            *v51 = v16;
            if (!v16)
            {
              goto LABEL_91;
            }

            if (*a3 <= v16 || *v16 != 50)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_74;
      }

      if (v8 != 42)
      {
        goto LABEL_74;
      }

      *(a1 + 16) |= 4u;
      v32 = *(a1 + 8);
      v23 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v23 = *v23;
      }

      v24 = (a1 + 112);
LABEL_58:
      v33 = sub_194DB04(v24, v23);
      v34 = sub_1958890(v33, *v51, a3);
LABEL_81:
      *v51 = v34;
      if (!v34)
      {
        goto LABEL_91;
      }

      goto LABEL_82;
    }

    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v31 = *(a1 + 8);
        v23 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v23 = *v23;
        }

        v24 = (a1 + 96);
        goto LABEL_58;
      }

      goto LABEL_74;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_74;
    }

    v5 |= 8u;
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
      *(a1 + 120) = v13;
      goto LABEL_82;
    }

    v49 = sub_19587DC(v7, v13);
    *v51 = v49;
    *(a1 + 120) = v50;
    if (!v49)
    {
      goto LABEL_91;
    }

LABEL_82:
    if (sub_195ADC0(a3, v51, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_74;
    }

    v5 |= 0x10u;
    v36 = v7 + 1;
    v35 = *v7;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_63;
    }

    v37 = *v36;
    v35 = (v37 << 7) + v35 - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v36 = v7 + 2;
LABEL_63:
      *v51 = v36;
      *(a1 + 128) = v35;
      goto LABEL_82;
    }

    v47 = sub_19587DC(v7, v35);
    *v51 = v47;
    *(a1 + 128) = v48;
    if (!v47)
    {
      goto LABEL_91;
    }

    goto LABEL_82;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 2u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v24 = (a1 + 104);
    goto LABEL_58;
  }

LABEL_74:
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
    v45 = *(a1 + 8);
    if (v45)
    {
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v46 = sub_11F1920((a1 + 8));
      v7 = *v51;
    }

    v34 = sub_1952690(v8, v46, v7, a3);
    goto LABEL_81;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_91:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_13012BC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 120);
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

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 128);
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

  if ((v6 & 2) != 0)
  {
    v12 = sub_128AEEC(a3, 4, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), v12);
  }

  if ((v6 & 4) != 0)
  {
    v12 = sub_128AEEC(a3, 5, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), v12);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v12 = 50;
      v20 = *(v19 + 20);
      v12[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v12 + 1);
      }

      else
      {
        v21 = v12 + 2;
      }

      v12 = sub_12F5878(v19, v21, a3);
    }
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    for (j = 0; j != v22; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v24 = *(*(a1 + 64) + 8 * j + 8);
      *v12 = 58;
      v25 = *(v24 + 20);
      v12[1] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, v12 + 1);
      }

      else
      {
        v26 = v12 + 2;
      }

      v12 = sub_12F5878(v24, v26, a3);
    }
  }

  v27 = *(a1 + 80);
  if (v27)
  {
    for (k = 0; k != v27; ++k)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v29 = *(*(a1 + 88) + 8 * k + 8);
      *v12 = 66;
      v30 = *(v29 + 20);
      v12[1] = v30;
      if (v30 > 0x7F)
      {
        v31 = sub_19575D0(v30, v12 + 1);
      }

      else
      {
        v31 = v12 + 2;
      }

      v12 = sub_12F5878(v29, v31, a3);
    }
  }

  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return v12;
  }

  v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
  v35 = *(v34 + 31);
  if (v35 < 0)
  {
    v36 = *(v34 + 8);
    v35 = *(v34 + 16);
  }

  else
  {
    v36 = (v34 + 8);
  }

  if ((*a3 - v12) >= v35)
  {
    v37 = v35;
    memcpy(v12, v36, v35);
    v12 += v37;
    return v12;
  }

  return sub_1957130(a3, v36, v35, v12);
}

uint64_t sub_1301670(uint64_t a1)
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
      v7 = sub_12F5960(v6);
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
      v14 = sub_12F5960(v13);
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
      v21 = sub_12F5960(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x1F) == 0)
  {
    goto LABEL_28;
  }

  if (v22)
  {
    v25 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v25 + 23);
    v27 = *(v25 + 8);
    if ((v26 & 0x80u) == 0)
    {
      v27 = v26;
    }

    v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 2) == 0)
    {
LABEL_24:
      if ((v22 & 4) == 0)
      {
        goto LABEL_25;
      }

LABEL_36:
      v31 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
      v32 = *(v31 + 23);
      v33 = *(v31 + 8);
      if ((v32 & 0x80u) == 0)
      {
        v33 = v32;
      }

      v16 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 8) == 0)
      {
LABEL_26:
        if ((v22 & 0x10) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_39;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_24;
  }

  v28 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_25:
  if ((v22 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_39:
  v16 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v22 & 0x10) != 0)
  {
LABEL_27:
    v16 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_28:
  v23 = *(a1 + 8);
  if (v23)
  {
    v34 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v16 += v35;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_13018EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13126AC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_13126AC((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_13126AC((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x1F) != 0)
  {
    if (v19)
    {
      v21 = *(a2 + 96);
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((a1 + 96), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_28;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    v24 = *(a2 + 104);
    *(a1 + 16) |= 2u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 104), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

LABEL_28:
    v27 = *(a2 + 112);
    *(a1 + 16) |= 4u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_194EA1C((a1 + 112), (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v19;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_17;
    }

LABEL_31:
    *(a1 + 120) = *(a2 + 120);
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1301B58(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1312208((a1 + 48));
  sub_1312208((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1301C10(uint64_t a1)
{
  sub_1301B58(a1);

  operator delete();
}

uint64_t sub_1301C48(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12F567C(v4);
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
      result = sub_12F567C(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    v8 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_1301D20(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 4)
    {
      if (v7 == 34)
      {
        v22 = v6 - 1;
        while (1)
        {
          v23 = v22 + 1;
          *v32 = v22 + 1;
          v24 = *(a1 + 64);
          if (v24 && (v25 = *(a1 + 56), v25 < *v24))
          {
            *(a1 + 56) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = sub_1306464(*(a1 + 48));
            v26 = sub_19593CC(a1 + 48, v27);
            v23 = *v32;
          }

          v22 = sub_21F8F58(a3, v26, v23);
          *v32 = v22;
          if (!v22)
          {
            goto LABEL_49;
          }

          if (*a3 <= v22 || *v22 != 34)
          {
            goto LABEL_44;
          }
        }
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        v16 = v6 - 1;
        while (1)
        {
          v17 = v16 + 1;
          *v32 = v16 + 1;
          v18 = *(a1 + 40);
          if (v18 && (v19 = *(a1 + 32), v19 < *v18))
          {
            *(a1 + 32) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_1306464(*(a1 + 24));
            v20 = sub_19593CC(a1 + 24, v21);
            v17 = *v32;
          }

          v16 = sub_21F8F58(a3, v20, v17);
          *v32 = v16;
          if (!v16)
          {
            break;
          }

          if (*a3 <= v16 || *v16 != 26)
          {
            goto LABEL_44;
          }
        }

LABEL_49:
        *v32 = 0;
        return *v32;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 1u;
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v30 = sub_194DB04((a1 + 72), v29);
      v15 = sub_1958890(v30, *v32, a3);
      goto LABEL_43;
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
        return *v32;
      }

      goto LABEL_49;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v32;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_43:
    *v32 = v15;
    if (!v15)
    {
      goto LABEL_49;
    }

LABEL_44:
    ;
  }

  return *v32;
}

char *sub_1301F8C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
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

      v4 = sub_12F5878(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
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

      v4 = sub_12F5878(v13, v15, a3);
    }
  }

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

uint64_t sub_1302174(uint64_t a1)
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
      v7 = sub_12F5960(v6);
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
      v14 = sub_12F5960(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(a1 + 16))
  {
    v15 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v9 += v21;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_13022B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13126AC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_13126AC((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  if (*(a2 + 16))
  {
    v14 = *(a2 + 72);
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 72), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_130241C(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1312208((a1 + 48));
  sub_1312208((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13024D4(uint64_t a1)
{
  sub_130241C(a1);

  operator delete();
}

uint64_t sub_130250C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12F567C(v4);
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
      result = sub_12F567C(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
    }
  }

  if ((v8 & 6) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
  }

  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_13025F0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        v26 = v7 - 1;
        while (1)
        {
          v27 = v26 + 1;
          *v37 = v26 + 1;
          v28 = *(a1 + 40);
          if (v28 && (v29 = *(a1 + 32), v29 < *v28))
          {
            *(a1 + 32) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            v31 = sub_1306464(*(a1 + 24));
            v30 = sub_19593CC(a1 + 24, v31);
            v27 = *v37;
          }

          v26 = sub_21F8F58(a3, v30, v27);
          *v37 = v26;
          if (!v26)
          {
            goto LABEL_62;
          }

          if (*a3 <= v26 || *v26 != 10)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_47;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_47;
    }

    v5 |= 2u;
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
      *v37 = v20;
      *(a1 + 80) = v19;
      goto LABEL_55;
    }

    v35 = sub_19587DC(v7, v19);
    *v37 = v35;
    *(a1 + 80) = v36;
    if (!v35)
    {
      goto LABEL_62;
    }

LABEL_55:
    if (sub_195ADC0(a3, v37, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 != 4)
    {
      if (v11 == 5 && v8 == 42)
      {
        v12 = v7 - 1;
        while (1)
        {
          v13 = v12 + 1;
          *v37 = v12 + 1;
          v14 = *(a1 + 64);
          if (v14 && (v15 = *(a1 + 56), v15 < *v14))
          {
            *(a1 + 56) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_1306464(*(a1 + 48));
            v16 = sub_19593CC(a1 + 48, v17);
            v13 = *v37;
          }

          v12 = sub_21F8F58(a3, v16, v13);
          *v37 = v12;
          if (!v12)
          {
            goto LABEL_62;
          }

          if (*a3 <= v12 || *v12 != 42)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_47;
    }

    if (v8 != 34)
    {
      goto LABEL_47;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v24 = sub_194DB04((a1 + 72), v23);
    v25 = sub_1958890(v24, *v37, a3);
LABEL_54:
    *v37 = v25;
    if (!v25)
    {
      goto LABEL_62;
    }

    goto LABEL_55;
  }

  if (v8 == 25)
  {
    v5 |= 4u;
    *(a1 + 88) = *v7;
    *v37 = v7 + 8;
    goto LABEL_55;
  }

LABEL_47:
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
      v7 = *v37;
    }

    v25 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_62:
  *v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v37;
}

char *sub_1302914(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_12F5878(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 80);
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
          __dst = (v14 >> 7);
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

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v16 = *(a1 + 88);
    *v12 = 25;
    *(v12 + 1) = v16;
    v12 += 9;
  }

  if (v11)
  {
    v12 = sub_128AEEC(a3, 4, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v12);
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v19 = *(*(a1 + 64) + 8 * j + 8);
      *v12 = 42;
      v20 = *(v19 + 20);
      v12[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v12 + 1);
      }

      else
      {
        v21 = v12 + 2;
      }

      v12 = sub_12F5878(v19, v21, a3);
    }
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v25)
  {
    v27 = v25;
    memcpy(v12, v26, v25);
    v12 += v27;
    return v12;
  }

  return sub_1957130(a3, v26, v25, v12);
}

uint64_t sub_1302BBC(uint64_t a1)
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
      v7 = sub_12F5960(v6);
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
      v14 = sub_12F5960(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 7) != 0)
  {
    if (v15)
    {
      v16 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      v9 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v15 & 4) != 0)
    {
      v9 += 9;
    }
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v9 += v22;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_1302D34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13126AC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_13126AC((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 7) != 0)
  {
    if (v14)
    {
      v16 = *(a2 + 72);
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a1 + 72), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
LABEL_12:
          *(a1 + 16) |= v14;
          goto LABEL_13;
        }

LABEL_11:
        *(a1 + 88) = *(a2 + 88);
        goto LABEL_12;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 80) = *(a2 + 80);
    if ((v14 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1302ED4(uint64_t a1)
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

  if (a1 != &off_276AAB0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_12F558C(v6);
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

void sub_1302FA0(uint64_t a1)
{
  sub_1302ED4(a1);

  operator delete();
}

uint64_t sub_1302FD8(uint64_t result)
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
      result = sub_12F567C(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_130306C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = sub_194DB04((a1 + 24), v16);
        v14 = sub_1958890(v17, *v22, a3);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 2u;
      v18 = *(a1 + 32);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_1306464(v20);
        *(a1 + 32) = v18;
        v6 = *v22;
      }

      v14 = sub_21F8F58(a3, v18, v6);
      goto LABEL_28;
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
        return *v22;
      }

LABEL_34:
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
LABEL_28:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  return *v22;
}

char *sub_1303208(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
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

    v4 = sub_12F5878(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_1303340(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_12F5960(*(a1 + 32));
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

void sub_130341C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v8 = *(a1 + 32);
      if (!v8)
      {
        v9 = *(a1 + 8);
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_1306464(v10);
        *(a1 + 32) = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_276A620;
      }

      sub_12F5A34(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1303520(uint64_t a1)
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
  sub_1312628((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13035CC(uint64_t a1)
{
  sub_1303520(a1);

  operator delete();
}

uint64_t sub_1303604(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1302FD8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_13036C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v36, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v36 + 1);
    v8 = **v36;
    if (**v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v36 + 2);
      }
    }

    *v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_39;
      }

      v5 |= 2u;
      v27 = v7 + 1;
      v26 = *v7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_38:
        *v36 = v27;
        *(a1 + 56) = v26;
        goto LABEL_47;
      }

      v34 = sub_19587DC(v7, v26);
      *v36 = v34;
      *(a1 + 56) = v35;
      if (!v34)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_39;
      }

      v5 |= 4u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_29;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_29:
        *v36 = v20;
        *(a1 + 64) = v19;
        goto LABEL_47;
      }

      v32 = sub_19587DC(v7, v19);
      *v36 = v32;
      *(a1 + 64) = v33;
      if (!v32)
      {
        goto LABEL_56;
      }
    }

LABEL_47:
    if (sub_195ADC0(a3, v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = sub_194DB04((a1 + 48), v23);
      v25 = sub_1958890(v24, *v36, a3);
LABEL_46:
      *v36 = v25;
      if (!v25)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }
  }

  else if (v11 == 2 && v8 == 18)
  {
    v13 = v7 - 1;
    while (1)
    {
      v14 = v13 + 1;
      *v36 = v13 + 1;
      v15 = *(a1 + 40);
      if (v15 && (v16 = *(a1 + 32), v16 < *v15))
      {
        *(a1 + 32) = v16 + 1;
        v17 = *&v15[2 * v16 + 2];
      }

      else
      {
        v18 = sub_13070A8(*(a1 + 24));
        v17 = sub_19593CC(a1 + 24, v18);
        v14 = *v36;
      }

      v13 = sub_21F96A8(a3, v17, v14);
      *v36 = v13;
      if (!v13)
      {
        goto LABEL_56;
      }

      if (*a3 <= v13 || *v13 != 18)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_39:
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
      v7 = *v36;
    }

    v25 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_56:
  *v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v36;
}

char *sub_130398C(uint64_t a1, char *__dst, unint64_t *a3)
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

      v4 = sub_1303208(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 56);
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

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 64);
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

uint64_t sub_1303BF8(uint64_t a1)
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
      v7 = sub_1303340(v6);
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
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v14 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1303D44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1312ACC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 64) = *(a2 + 64);
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

void *sub_1303E88(void *a1)
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

  sub_1303F0C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_1303F0C(void *result)
{
  if (result != &off_276AB20)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_12FC4D4(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_12FA984(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_12FD350(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_12FE568(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_1300618(v6);
      operator delete();
    }

    v7 = v1[8];
    if (v7)
    {
      sub_1300B98(v7);
      operator delete();
    }

    v8 = v1[9];
    if (v8)
    {
      sub_130241C(v8);
      operator delete();
    }

    v9 = v1[10];
    if (v9)
    {
      sub_1301B58(v9);
      operator delete();
    }

    result = v1[11];
    if (result)
    {
      sub_1303520(result);

      operator delete();
    }
  }

  return result;
}

void sub_1304070(void *a1)
{
  sub_1303E88(a1);

  operator delete();
}

uint64_t sub_13040A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = sub_12FC5D8(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_12FAB64(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_12FD454(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = sub_12FE620(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    result = sub_1300CC0(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = sub_13006D0(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  result = sub_130250C(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_1301C48(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    result = sub_1303604(*(v1 + 88));
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

char *sub_130418C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v45 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v45, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v45 + 1;
    v7 = *v45;
    if (*v45 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v45, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v45 + 2;
      }
    }

    v45 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 4)
    {
      if (v7 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v7 == 26)
          {
            *(a1 + 16) |= 4u;
            v29 = *(a1 + 40);
            if (!v29)
            {
              v30 = *(a1 + 8);
              v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
              if (v30)
              {
                v31 = *v31;
              }

              v29 = sub_1306A78(v31);
              *(a1 + 40) = v29;
              v6 = v45;
            }

            v14 = sub_21F9858(a3, v29, v6);
            goto LABEL_83;
          }
        }

        else if (v10 == 4 && v7 == 34)
        {
          *(a1 + 16) |= 8u;
          v20 = *(a1 + 48);
          if (!v20)
          {
            v21 = *(a1 + 8);
            v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if (v21)
            {
              v22 = *v22;
            }

            v20 = sub_1306B90(v22);
            *(a1 + 48) = v20;
            v6 = v45;
          }

          v14 = sub_21F98E8(a3, v20, v6);
          goto LABEL_83;
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v26 = *(a1 + 24);
          if (!v26)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            v26 = sub_13069E8(v28);
            *(a1 + 24) = v26;
            v6 = v45;
          }

          v14 = sub_21F9738(a3, v26, v6);
          goto LABEL_83;
        }
      }

      else if (v10 == 2 && v7 == 18)
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

          sub_1306904(v18);
          v16 = v19;
          *(a1 + 32) = v19;
          v6 = v45;
        }

        v14 = sub_21F97C8(a3, v16, v6);
        goto LABEL_83;
      }
    }

    else if (v7 >> 3 <= 6)
    {
      if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 0x10u;
          v35 = *(a1 + 56);
          if (!v35)
          {
            v36 = *(a1 + 8);
            v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
            if (v36)
            {
              v37 = *v37;
            }

            v35 = sub_1306DE4(v37);
            *(a1 + 56) = v35;
            v6 = v45;
          }

          v14 = sub_21F9978(a3, v35, v6);
          goto LABEL_83;
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        *(a1 + 16) |= 0x20u;
        v23 = *(a1 + 64);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_1306E84(v25);
          *(a1 + 64) = v23;
          v6 = v45;
        }

        v14 = sub_21F9A08(a3, v23, v6);
        goto LABEL_83;
      }
    }

    else if (v10 == 7)
    {
      if (v7 == 58)
      {
        *(a1 + 16) |= 0x40u;
        v32 = *(a1 + 72);
        if (!v32)
        {
          v33 = *(a1 + 8);
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
          if (v33)
          {
            v34 = *v34;
          }

          v32 = sub_1306FF4(v34);
          *(a1 + 72) = v32;
          v6 = v45;
        }

        v14 = sub_21F9A98(a3, v32, v6);
        goto LABEL_83;
      }
    }

    else if (v10 == 8)
    {
      if (v7 == 66)
      {
        *(a1 + 16) |= 0x80u;
        v38 = *(a1 + 80);
        if (!v38)
        {
          v39 = *(a1 + 8);
          v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
          if (v39)
          {
            v40 = *v40;
          }

          v38 = sub_1306F44(v40);
          *(a1 + 80) = v38;
          v6 = v45;
        }

        v14 = sub_21F9B28(a3, v38, v6);
        goto LABEL_83;
      }
    }

    else if (v10 == 9 && v7 == 74)
    {
      *(a1 + 16) |= 0x100u;
      v11 = *(a1 + 88);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_130712C(v13);
        *(a1 + 88) = v11;
        v6 = v45;
      }

      v14 = sub_21F9BB8(a3, v11, v6);
      goto LABEL_83;
    }

    if (v7)
    {
      v41 = (v7 & 7) == 4;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v45;
      }

      return 0;
    }

    v42 = *(a1 + 8);
    if (v42)
    {
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v43 = sub_11F1920((a1 + 8));
      v6 = v45;
    }

    v14 = sub_1952690(v7, v43, v6, a3);
LABEL_83:
    v45 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v45;
}

char *sub_13045B4(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_12FCB80(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
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

  v4 = sub_12FB520(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
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

  v4 = sub_12FD80C(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 48);
  *v4 = 34;
  v17 = *(v16 + 40);
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v4 + 1);
  }

  else
  {
    v18 = v4 + 2;
  }

  v4 = sub_12FE82C(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 56);
  *v4 = 42;
  v20 = *(v19 + 40);
  v4[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v4 + 1);
  }

  else
  {
    v21 = v4 + 2;
  }

  v4 = sub_13008DC(v19, v21, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v22 = *(a1 + 64);
  *v4 = 50;
  v23 = *(v22 + 20);
  v4[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v4 + 1);
  }

  else
  {
    v24 = v4 + 2;
  }

  v4 = sub_13012BC(v22, v24, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 72);
  *v4 = 58;
  v26 = *(v25 + 20);
  v4[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v4 + 1);
  }

  else
  {
    v27 = v4 + 2;
  }

  v4 = sub_1302914(v25, v27, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

LABEL_53:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v28 = *(a1 + 80);
  *v4 = 66;
  v29 = *(v28 + 20);
  v4[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v4 + 1);
  }

  else
  {
    v30 = v4 + 2;
  }

  v4 = sub_1301F8C(v28, v30, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_59:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v31 = *(a1 + 88);
    *v4 = 74;
    v32 = *(v31 + 20);
    v4[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v4 + 1);
    }

    else
    {
      v33 = v4 + 2;
    }

    v4 = sub_130398C(v31, v33, a3);
  }

LABEL_65:
  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v4;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 31);
  if (v37 < 0)
  {
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
  }

  else
  {
    v38 = (v36 + 8);
  }

  if ((*a3 - v4) >= v37)
  {
    v39 = v37;
    memcpy(v4, v38, v37);
    v4 += v39;
    return v4;
  }

  return sub_1957130(a3, v38, v37, v4);
}

uint64_t sub_1304A10(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v6 = sub_1303BF8(*(a1 + 88));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_17;
  }

  if (v2)
  {
    v4 = sub_12FCF90(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_8:
    v5 = sub_12FBC80(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if ((v2 & 4) != 0)
  {
    v9 = sub_12FDA58(*(a1 + 40));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v10 = sub_12FE96C(*(a1 + 48));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = sub_1300A1C(*(a1 + 56));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = sub_1301670(*(a1 + 64));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = sub_1302BBC(*(a1 + 72));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  v14 = sub_1302174(*(a1 + 80));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x100) != 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v7 = *(a1 + 8);
  if (v7)
  {
    v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v3 += v16;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1304C50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_10;
  }

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

      v5 = sub_13069E8(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_276A808;
    }

    sub_12FD19C(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_28;
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

    sub_1306904(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_276A720;
  }

  sub_12FC06C(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_28:
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

    v13 = sub_1306A78(v15);
    *(a1 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_276A858;
  }

  sub_12FDBDC(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_36:
  *(a1 + 16) |= 8u;
  v17 = *(a1 + 48);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_1306B90(v19);
    *(a1 + 48) = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_276A8A0;
  }

  sub_12FEA14(v17, v20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_44:
  *(a1 + 16) |= 0x10u;
  v21 = *(a1 + 56);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_1306DE4(v23);
    *(a1 + 56) = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_276A948;
  }

  sub_1300AC4(v21, v24);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

LABEL_52:
  *(a1 + 16) |= 0x20u;
  v25 = *(a1 + 64);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    v25 = sub_1306E84(v27);
    *(a1 + 64) = v25;
  }

  if (*(a2 + 64))
  {
    v28 = *(a2 + 64);
  }

  else
  {
    v28 = &off_276A978;
  }

  sub_13018EC(v25, v28);
  if ((v4 & 0x40) != 0)
  {
LABEL_60:
    *(a1 + 16) |= 0x40u;
    v29 = *(a1 + 72);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_1306FF4(v31);
      *(a1 + 72) = v29;
    }

    if (*(a2 + 72))
    {
      v32 = *(a2 + 72);
    }

    else
    {
      v32 = &off_276AA50;
    }

    sub_1302D34(v29, v32);
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_68;
    }

LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_76;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_68:
  *(a1 + 16) |= 0x80u;
  v33 = *(a1 + 80);
  if (!v33)
  {
    v34 = *(a1 + 8);
    v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v35 = *v35;
    }

    v33 = sub_1306F44(v35);
    *(a1 + 80) = v33;
  }

  if (*(a2 + 80))
  {
    v36 = *(a2 + 80);
  }

  else
  {
    v36 = &off_276AA00;
  }

  sub_13022B4(v33, v36);
  if ((v4 & 0x100) != 0)
  {
LABEL_76:
    *(a1 + 16) |= 0x100u;
    v37 = *(a1 + 88);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      v37 = sub_130712C(v39);
      *(a1 + 88) = v37;
    }

    if (*(a2 + 88))
    {
      v40 = *(a2 + 88);
    }

    else
    {
      v40 = &off_276AAD8;
    }

    sub_1303D44(v37, v40);
  }

LABEL_84:
  v41 = *(a2 + 8);
  if (v41)
  {

    sub_1957EF4((a1 + 8), (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1304FA4(uint64_t a1)
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

  if (a1 != &off_276AB80)
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

void sub_1305070(uint64_t a1)
{
  sub_1304FA4(a1);

  operator delete();
}

unsigned __int8 *sub_13050A8(unsigned __int8 *result)
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
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_130513C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = sub_194DB04((a1 + 24), v16);
        v14 = sub_1958890(v17, *v22, a3);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 2u;
      v18 = *(a1 + 32);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_16F5828(v20);
        *(a1 + 32) = v18;
        v6 = *v22;
      }

      v14 = sub_21F4D60(a3, v18, v6);
      goto LABEL_28;
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
        return *v22;
      }

LABEL_34:
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
LABEL_28:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  return *v22;
}

char *sub_13052D8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
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

  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_1305410(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
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

void sub_13054EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v8 = *(a1 + 32);
      if (!v8)
      {
        v9 = *(a1 + 8);
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_16F5828(v10);
        *(a1 + 32) = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_277E5E8;
      }

      sub_16E527C(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13055D8(uint64_t a1)
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

uint64_t sub_1305618(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (a1 != &off_276ABA8)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_1303E88(v6);
      operator delete();
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      sub_1304FA4(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_130573C(uint64_t a1)
{
  sub_1305618(a1);

  operator delete();
}

uint64_t sub_1305774(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
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

LABEL_16:
    v6 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v5 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  v7 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *v7 = 0;
  *(v7 + 23) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  result = sub_13040A8(*(result + 64));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_13050A8(*(v1 + 72));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 72) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1305890(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v43 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v43, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = (*v43 + 1);
    v10 = **v43;
    if (**v43 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v43, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v43 + 2);
      }
    }

    *v43 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 <= 3)
    {
      if (v14 == 1)
      {
        if (v10 != 10)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 8u;
        v30 = *(a1 + 64);
        if (!v30)
        {
          v31 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v31 = *v31;
          }

          sub_13071D4(v31);
          v30 = v32;
          *(a1 + 64) = v32;
          v9 = *v43;
        }

        v33 = sub_21F9C48(a3, v30, v9);
        goto LABEL_78;
      }

      if (v14 == 2)
      {
        if (v10 != 18)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x10u;
        v37 = *(a1 + 72);
        if (!v37)
        {
          v38 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v38 = *v38;
          }

          v37 = sub_1307258(v38);
          *(a1 + 72) = v37;
          v9 = *v43;
        }

        v33 = sub_21F9CD8(a3, v37, v9);
        goto LABEL_78;
      }

      if (v14 != 3 || v10 != 26)
      {
        goto LABEL_71;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = (a1 + 40);
LABEL_60:
      v36 = sub_194DB04(v21, v20);
      v33 = sub_1958890(v36, *v43, a3);
      goto LABEL_78;
    }

    if (v10 >> 3 > 5)
    {
      if (v14 != 6)
      {
        if (v14 != 7)
        {
          goto LABEL_71;
        }

        if (v10 == 56)
        {
          v22 = (v9 - 1);
          while (1)
          {
            *v43 = v22 + 1;
            v23 = *(v22 + 1);
            v24 = (v22 + 2);
            if (v23 < 0)
            {
              v25 = *v24;
              v26 = (v25 << 7) + v23;
              LODWORD(v23) = v26 - 128;
              if (v25 < 0)
              {
                *v43 = sub_19587DC(v22 + 1, (v26 - 128));
                if (!*v43)
                {
                  goto LABEL_84;
                }

                LODWORD(v23) = v29;
                goto LABEL_35;
              }

              v24 = (v22 + 3);
            }

            *v43 = v24;
LABEL_35:
            if ((v23 - 1) > 2)
            {
              sub_13137F8();
            }

            else
            {
              v27 = *(a1 + 24);
              if (v27 == *(a1 + 28))
              {
                v28 = v27 + 1;
                sub_1958E5C((a1 + 24), v27 + 1);
                *(*(a1 + 32) + 4 * v27) = v23;
              }

              else
              {
                *(*(a1 + 32) + 4 * v27) = v23;
                v28 = v27 + 1;
              }

              *(a1 + 24) = v28;
            }

            v22 = *v43;
            if (*a3 <= *v43 || **v43 != 56)
            {
              goto LABEL_79;
            }
          }
        }

        if (v10 != 58)
        {
          goto LABEL_71;
        }

        *&v44 = a1 + 24;
        *(&v44 + 1) = sub_12F557C;
        v45 = a1 + 8;
        v46 = 7;
        v33 = sub_1216588(a3, v9, &v44, v5);
LABEL_78:
        *v43 = v33;
        if (!v33)
        {
          goto LABEL_84;
        }

        goto LABEL_79;
      }

      if (v10 != 50)
      {
        goto LABEL_71;
      }

      *(a1 + 16) |= 4u;
      v35 = *(a1 + 8);
      v20 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v20 = *v20;
      }

      v21 = (a1 + 56);
      goto LABEL_60;
    }

    if (v14 == 4)
    {
      break;
    }

    if (v14 != 5 || v10 != 40)
    {
      goto LABEL_71;
    }

    v6 |= 0x20u;
    v16 = v9 + 1;
    v15 = *v9;
    if (v15 < 0)
    {
      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if (v17 < 0)
      {
        v39 = sub_19587DC(v9, v15);
        *v43 = v39;
        *(a1 + 80) = v40;
        if (!v39)
        {
          goto LABEL_84;
        }

        goto LABEL_79;
      }

      v16 = v9 + 2;
    }

    *v43 = v16;
    *(a1 + 80) = v15;
LABEL_79:
    if (sub_195ADC0(a3, v43, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v10 == 34)
  {
    *(a1 + 16) |= 2u;
    v34 = *(a1 + 8);
    v20 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v20 = *v20;
    }

    v21 = (a1 + 48);
    goto LABEL_60;
  }

LABEL_71:
  if (v10)
  {
    v41 = (v10 & 7) == 4;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    if (*v8)
    {
      v42 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v9 = *v43;
    }

    v33 = sub_1952690(v10, v42, v9, a3);
    goto LABEL_78;
  }

  if (v9)
  {
    a3[10].i32[0] = v10 - 1;
  }

  else
  {
LABEL_84:
    *v43 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return *v43;
}

char *sub_1305CD0(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 64);
    *v4 = 10;
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

    v4 = sub_13045B4(v8, v10, a3);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
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

  v11 = *(a1 + 72);
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

  v4 = sub_13052D8(v11, v13, a3);
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v4 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_19:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_28;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 80);
  *v4 = 40;
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v7 = v4 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v16) = v4[2];
      do
      {
        *(v7 - 1) = v16 | 0x80;
        v16 = v15 >> 7;
        *v7++ = v15 >> 7;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_28:
  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 6, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  v18 = *(a1 + 24);
  if (v18 < 1)
  {
    v21 = v7;
  }

  else
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v20 = *(*(a1 + 32) + 4 * i);
      *v7 = 56;
      v7[1] = v20;
      if (v20 > 0x7F)
      {
        v7[1] = v20 | 0x80;
        v22 = v20 >> 7;
        v7[2] = v20 >> 7;
        v21 = v7 + 3;
        if (v20 >= 0x4000)
        {
          LOBYTE(v7) = v7[2];
          do
          {
            *(v21 - 1) = v7 | 0x80;
            v7 = (v22 >> 7);
            *v21++ = v22 >> 7;
            v23 = v22 >> 14;
            v22 >>= 7;
          }

          while (v23);
        }
      }

      else
      {
        v21 = v7 + 2;
      }

      v7 = v21;
    }
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v21;
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

  if ((*a3 - v21) >= v27)
  {
    v29 = v27;
    memcpy(v21, v28, v27);
    v21 += v29;
    return v21;
  }

  return sub_1957130(a3, v28, v27, v21);
}

uint64_t sub_1305FE4(uint64_t a1)
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
  if ((v8 & 0x3F) == 0)
  {
    goto LABEL_17;
  }

  if (v8)
  {
    v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v7 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v7 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_25:
  v17 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v7 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v20 = sub_1304A10(*(a1 + 64));
  v7 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_29:
  v21 = sub_1305410(*(a1 + 72));
  v7 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
LABEL_16:
    v7 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_17:
  v9 = *(a1 + 8);
  if (v9)
  {
    v22 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v7 += v23;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_1306204(uint64_t a1, uint64_t a2)
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
  if ((v8 & 0x3F) != 0)
  {
    if (v8)
    {
      v10 = *(a2 + 40);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 40), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_22;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    v13 = *(a2 + 48);
    *(a1 + 16) |= 2u;
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 48), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_22:
    v16 = *(a2 + 56);
    *(a1 + 16) |= 4u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_194EA1C((a1 + 56), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }

LABEL_25:
    *(a1 + 16) |= 8u;
    v19 = *(a1 + 64);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_13071D4(v21);
      *(a1 + 64) = v19;
    }

    if (*(a2 + 64))
    {
      v22 = *(a2 + 64);
    }

    else
    {
      v22 = &off_276AB20;
    }

    sub_1304C50(v19, v22);
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v8;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_33:
    *(a1 + 16) |= 0x10u;
    v23 = *(a1 + 72);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_1307258(v25);
      *(a1 + 72) = v23;
    }

    if (*(a2 + 72))
    {
      v26 = *(a2 + 72);
    }

    else
    {
      v26 = &off_276AB80;
    }

    sub_13054EC(v23, v26);
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1306418(uint64_t a1)
{
  if ((*(a1 + 16) & 0x10) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 72);
  if ((*(v1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(v1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1306464(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D25C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_13064E8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D2640;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1306564(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D26C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

uint64_t sub_13065E0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D2740;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_1306668(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D27C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_13066EC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D2840;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1306764(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_12F7E18(v2, a1, 0);
}

uint64_t sub_13067C4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D2940;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_1306860(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D29C0;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

double sub_1306904(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D2A40;
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
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = a1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = &qword_278E990;
  result = 0.0;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0;
  return result;
}

uint64_t sub_13069E8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D2AC0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

uint64_t sub_1306A78(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D2B40;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = &qword_278E990;
  *(result + 64) = 0;
  return result;
}

void *sub_1306B08(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D2BC0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_1306B90(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D2C40;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_1306C30(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D2CC0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

double sub_1306CB4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D2D40;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_1306D34(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D2DC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 72) = 1;
  return result;
}

uint64_t sub_1306DE4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D2E40;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_1306E84(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D2EC0;
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
  result[15] = 0;
  result[16] = 0;
  result[14] = &qword_278E990;
  return result;
}

void *sub_1306F44(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D2F40;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  return result;
}

void *sub_1306FF4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D2FC0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[10] = 0;
  result[11] = 0;
  result[9] = &qword_278E990;
  return result;
}

void *sub_13070A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D3040;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_130712C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D30C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = &qword_278E990;
  return result;
}

double sub_13071D4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D3140;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  return result;
}

void *sub_1307258(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D31C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_13072DC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D3240;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  return result;
}

uint64_t sub_1307388(uint64_t a1)
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

  if (a1 != &off_276AC00)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16EF178(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16E550C(v6);
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

void sub_1307458(uint64_t a1)
{
  sub_1307388(a1);

  operator delete();
}

uint64_t sub_1307490(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16EF1B4(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E5548(*(v1 + 32));
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

char *sub_1307500(uint64_t a1, char *a2, int32x2_t *a3)
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

          v15 = sub_16F5884(v17);
          *(a1 + 32) = v15;
          v6 = v23;
        }

        v14 = sub_21F9F18(a3, v15, v6);
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

        sub_16F60C0(v20);
        v18 = v21;
        *(a1 + 24) = v21;
        v6 = v23;
      }

      v14 = sub_21F9E88(a3, v18, v6);
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

char *sub_13076A8(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16EF7E0(v7, v9, a3);
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

    v4 = sub_16E56D0(v10, v12, a3);
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

uint64_t sub_1307824(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16EFD54(*(a1 + 24));
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
    v5 = sub_16E57E8(*(a1 + 32));
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

void sub_13078F4(_DWORD *result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      result[4] |= 1u;
      v5 = *(result + 3);
      if (!v5)
      {
        v6 = *(result + 1);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        sub_16F60C0(v7);
        *(result + 3) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277E9D0;
      }

      sub_16EFF94(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      result[4] |= 2u;
      v9 = *(result + 4);
      if (!v9)
      {
        v10 = *(result + 1);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_16F5884(v11);
        *(result + 4) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277E630;
      }

      sub_128F8FC(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4(result + 1, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13079F8(_DWORD *result, _DWORD *a2)
{
  if (a2 != result)
  {
    sub_1307490(result);

    sub_13078F4(result, a2);
  }
}

uint64_t sub_1307A44(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16F0144(*(a1 + 24));
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

  result = sub_16E5890(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1307AA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D3340;
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
    sub_131310C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_1307C30(uint64_t a1)
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
  if (a1 != &off_276AC28)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_16E550C(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1312C68((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1307CF4(uint64_t a1)
{
  sub_1307C30(a1);

  operator delete();
}

uint64_t sub_1307D2C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1307490(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_16E5548(*(v1 + 48));
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

char *sub_1307DC0(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      if (v8 == 26)
      {
        v20 = v7 - 1;
        while (1)
        {
          v21 = v20 + 1;
          v30 = v20 + 1;
          v22 = *(a1 + 40);
          if (v22 && (v23 = *(a1 + 32), v23 < *v22))
          {
            *(a1 + 32) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_130F79C(*(a1 + 24));
            v24 = sub_19593CC(a1 + 24, v25);
            v21 = v30;
          }

          v20 = sub_21F9FA8(a3, v24, v21);
          v30 = v20;
          if (!v20)
          {
            goto LABEL_50;
          }

          if (*a3 <= v20 || *v20 != 26)
          {
            goto LABEL_43;
          }
        }
      }

      goto LABEL_13;
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
    LODWORD(v26) = *v7;
    if ((v26 & 0x80000000) == 0)
    {
      v27 = v7 + 1;
LABEL_42:
      v30 = v27;
      *(a1 + 56) = v26;
      goto LABEL_43;
    }

    v26 = (v7[1] << 7) + v26 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v27 = v7 + 2;
      goto LABEL_42;
    }

    v28 = sub_19587DC(v7, v26);
    v30 = v28;
    *(a1 + 56) = v29;
    if (!v28)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 48);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_16F5884(v19);
      *(a1 + 48) = v17;
      v7 = v30;
    }

    v16 = sub_21F9F18(a3, v17, v7);
LABEL_26:
    v30 = v16;
    if (!v16)
    {
      goto LABEL_50;
    }

    goto LABEL_43;
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
    goto LABEL_26;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_50:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_1308030(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
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

    v11 = *(a1 + 48);
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

    v6 = sub_16E56D0(v11, v13, a3);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 26;
      v17 = *(v16 + 20);
      v6[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v6 + 1);
      }

      else
      {
        v18 = v6 + 2;
      }

      v6 = sub_13076A8(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v22)
  {
    v24 = v22;
    memcpy(v6, v23, v22);
    v6 += v24;
    return v6;
  }

  return sub_1957130(a3, v23, v22, v6);
}

uint64_t sub_1308258(uint64_t a1)
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
      v7 = sub_1307824(v6);
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
      v9 = sub_16E57E8(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(a1 + 56);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v11;
    }
  }

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

void sub_1308370(_DWORD *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 6), *(a2 + 32));
    sub_131310C(result + 3, v6, (v5 + 8), v4, **(result + 5) - result[8]);
    v7 = result[8] + v4;
    result[8] = v7;
    v8 = *(result + 5);
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
      result[4] |= 1u;
      v10 = *(result + 6);
      if (!v10)
      {
        v11 = *(result + 1);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_16F5884(v12);
        *(result + 6) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E630;
      }

      sub_128F8FC(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      result[14] = *(a2 + 56);
    }

    result[4] |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4(result + 1, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_130849C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1307A44(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5890(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1308510(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26D33C0;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

uint64_t sub_1308554(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D33C0;
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
    sub_131310C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  return a1;
}

uint64_t sub_1308714(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276AC68)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_16E550C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1312C68((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13087EC(uint64_t a1)
{
  sub_1308714(a1);

  operator delete();
}

uint64_t sub_1308824(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1307490(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      result = sub_16E5548(*(v1 + 56));
    }
  }

LABEL_11:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_13088EC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = v19 + 1;
          *v29 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_130F79C(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v29;
          }

          v19 = sub_21F9FA8(a3, v23, v20);
          *v29 = v19;
          if (!v19)
          {
            break;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_40;
          }
        }

LABEL_45:
        *v29 = 0;
        return *v29;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 56);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_16F5884(v18);
          *(a1 + 56) = v16;
          v6 = *v29;
        }

        v15 = sub_21F9F18(a3, v16, v6);
        goto LABEL_39;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v27 = sub_194DB04((a1 + 48), v26);
      v15 = sub_1958890(v27, *v29, a3);
      goto LABEL_39;
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
        return *v29;
      }

      goto LABEL_45;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v29;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_39:
    *v29 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }

LABEL_40:
    ;
  }

  return *v29;
}

char *sub_1308B1C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v7 = *(a1 + 56);
    *v4 = 18;
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

    v4 = sub_16E56D0(v7, v9, a3);
  }

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
      *v4 = 26;
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

      v4 = sub_13076A8(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v18)
  {
    v20 = v18;
    memcpy(v4, v19, v18);
    v4 += v20;
    return v4;
  }

  return sub_1957130(a3, v19, v18, v4);
}

uint64_t sub_1308CE4(uint64_t a1)
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
      v7 = sub_1307824(v6);
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
      v12 = sub_16E57E8(*(a1 + 56));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_1308E0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_131310C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v13 = sub_16F5884(v15);
        *(a1 + 56) = v13;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = &off_277E630;
      }

      sub_128F8FC(v13, v16);
    }
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1308F54(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1307A44(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5890(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1308FC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26D3440;
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

void sub_1309044(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1309078(void *a1)
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

void sub_13090EC(void *a1)
{
  sub_1309078(a1);

  operator delete();
}

uint64_t sub_1309124(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0x100000001;
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

char *sub_1309150(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_35;
        }

        v16 = v7 + 1;
        v15 = *v7;
        if (v15 < 0)
        {
          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v30 = sub_19587DC(v7, v15);
            if (!v30)
            {
              goto LABEL_64;
            }

            goto LABEL_23;
          }

          v16 = v7 + 2;
        }

        v30 = v16;
LABEL_23:
        if ((v15 - 1) > 1)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 36) = v15;
        }

        goto LABEL_49;
      }

      if (v8 != 24)
      {
        goto LABEL_35;
      }

      v21 = v7 + 1;
      v20 = *v7;
      if (v20 < 0)
      {
        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if (v22 < 0)
        {
          v30 = sub_19587DC(v7, v20);
          if (!v30)
          {
            goto LABEL_64;
          }

          goto LABEL_33;
        }

        v21 = v7 + 2;
      }

      v30 = v21;
LABEL_33:
      if ((v20 - 1) > 3)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 32) = v20;
      }

      goto LABEL_49;
    }

    if (v11 == 1)
    {
      if (v8 == 8)
      {
        v5 |= 1u;
        LODWORD(v18) = *v7;
        if ((v18 & 0x80000000) != 0)
        {
          v18 = (v7[1] << 7) + v18 - 128;
          if (v7[1] < 0)
          {
            v28 = sub_19587DC(v7, v18);
            v30 = v28;
            *(a1 + 24) = v29;
            if (!v28)
            {
              goto LABEL_64;
            }

            goto LABEL_49;
          }

          v19 = v7 + 2;
        }

        else
        {
          v19 = v7 + 1;
        }

        v30 = v19;
        *(a1 + 24) = v18;
        goto LABEL_49;
      }
    }

    else if (v11 == 2 && v8 == 16)
    {
      v5 |= 2u;
      LODWORD(v13) = *v7;
      if ((v13 & 0x80000000) != 0)
      {
        v13 = (v7[1] << 7) + v13 - 128;
        if (v7[1] < 0)
        {
          v26 = sub_19587DC(v7, v13);
          v30 = v26;
          *(a1 + 28) = v27;
          if (!v26)
          {
            goto LABEL_64;
          }

          goto LABEL_49;
        }

        v14 = v7 + 2;
      }

      else
      {
        v14 = v7 + 1;
      }

      v30 = v14;
      *(a1 + 28) = v13;
      goto LABEL_49;
    }

LABEL_35:
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
      v7 = v30;
    }

    v30 = sub_1952690(v8, v25, v7, a3);
    if (!v30)
    {
      goto LABEL_64;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_1309444(uint64_t a1, char *__dst, unint64_t *a3)
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