char *sub_136ADAC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x400) != 0)
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 64);
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

  if (v5)
  {
    v11 = sub_128AEEC(a3, 3, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 68);
    *v11 = 32;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v11[2];
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

    v20 = *(a1 + 56);
    *v15 = 42;
    v21 = *(v20 + 44);
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v15 + 1);
    }

    else
    {
      v22 = v15 + 2;
    }

    v15 = sub_16E5070(v20, v22, a3);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v24 = *(a1 + 72);
    *v15 = 56;
    v15[1] = v24;
    if (v24 > 0x7F)
    {
      v15[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v15[2] = v24 >> 7;
      v23 = v15 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v23 - 1) = v15 | 0x80;
          LODWORD(v15) = v25 >> 7;
          *v23++ = v25 >> 7;
          v26 = v25 >> 14;
          v25 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v23 = v15 + 2;
    }
  }

  else
  {
    v23 = v15;
  }

  if ((v5 & 2) != 0)
  {
    v23 = sub_128AEEC(a3, 8, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v23);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v28 = *(a1 + 76);
    *v23 = 72;
    v23[1] = v28;
    if (v28 > 0x7F)
    {
      v23[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v23[2] = v28 >> 7;
      v27 = v23 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v23) = v23[2];
        do
        {
          *(v27 - 1) = v23 | 0x80;
          v23 = (v29 >> 7);
          *v27++ = v29 >> 7;
          v30 = v29 >> 14;
          v29 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v27 = v23 + 2;
    }
  }

  else
  {
    v27 = v23;
  }

  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_59;
    }

LABEL_62:
    v27 = sub_128AEEC(a3, 11, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

  v27 = sub_128AEEC(a3, 10, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v27);
  if ((v5 & 8) != 0)
  {
    goto LABEL_62;
  }

LABEL_59:
  if ((v5 & 0x200) == 0)
  {
LABEL_60:
    v31 = v27;
    goto LABEL_70;
  }

LABEL_63:
  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v32 = *(a1 + 80);
  *v27 = 96;
  v27[1] = v32;
  if (v32 > 0x7F)
  {
    v27[1] = v32 | 0x80;
    v33 = v32 >> 7;
    v27[2] = v32 >> 7;
    v31 = v27 + 3;
    if (v32 >= 0x4000)
    {
      LOBYTE(v34) = v27[2];
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
    v31 = v27 + 2;
  }

LABEL_70:
  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v31;
  }

  v38 = v36 & 0xFFFFFFFFFFFFFFFCLL;
  v39 = *(v38 + 31);
  if (v39 < 0)
  {
    v40 = *(v38 + 8);
    v39 = *(v38 + 16);
  }

  else
  {
    v40 = (v38 + 8);
  }

  if ((*a3 - v31) >= v39)
  {
    v41 = v39;
    memcpy(v31, v40, v39);
    v31 += v41;
    return v31;
  }

  return sub_1957130(a3, v40, v39, v31);
}

uint64_t sub_136B25C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
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

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v10 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = sub_16E51F0(*(a1 + 56));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_32:
  v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v3 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_43;
  }

  if ((v2 & 0x100) != 0)
  {
    v17 = *(a1 + 76);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v18;
    if ((v2 & 0x200) == 0)
    {
LABEL_22:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  v19 = *(a1 + 88);
  if (v19 < 0)
  {
    v20 = 11;
  }

  else
  {
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v20;
LABEL_43:
  v21 = *(a1 + 8);
  if (v21)
  {
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v3 += v24;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_136B53C(uint64_t a1, uint64_t a2)
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

        goto LABEL_28;
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

      goto LABEL_31;
    }

LABEL_28:
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

      goto LABEL_34;
    }

LABEL_31:
    v15 = *(a2 + 48);
    *(a1 + 16) |= 8u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 48), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(a1 + 16) |= 0x10u;
    v18 = *(a1 + 56);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_16F5828(v20);
      *(a1 + 56) = v18;
    }

    if (*(a2 + 56))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = &off_277E5E8;
    }

    sub_16E527C(v18, v21);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 64) = *(a2 + 64);
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
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_43:
    *(a1 + 68) = *(a2 + 68);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_18;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_46:
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *(a1 + 76) = *(a2 + 76);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_46;
  }

LABEL_15:
  if ((v4 & 0x400) != 0)
  {
LABEL_16:
    *(a1 + 88) = *(a2 + 88);
  }

LABEL_17:
  *(a1 + 16) |= v4;
LABEL_18:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_136B758(uint64_t a1)
{
  if ((*(a1 + 16) & 0x10) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_136B798(uint64_t a1)
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

  v5 = (a1 + 168);
  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C((a1 + 176));
  }

  if (*(a1 + 184) != &qword_278E990)
  {
    sub_194E89C((a1 + 184));
  }

  if (a1 != &off_276CA20)
  {
    v6 = *(a1 + 192);
    if (v6)
    {
      sub_136DC40(v6);
      operator delete();
    }

    v7 = *(a1 + 200);
    if (v7)
    {
      sub_136DC40(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_13B3BAC((a1 + 144));
  sub_13B3B28((a1 + 120));
  sub_13B3AA4((a1 + 96));
  sub_13B3A20((a1 + 72));
  sub_13B357C((a1 + 48));
  sub_13B34F8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_136B8F4(uint64_t a1)
{
  sub_136B798(a1);

  operator delete();
}

uint64_t sub_136B92C(uint64_t result)
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
    result = sub_1835AE0(*(result + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_21:
  result = sub_1402588(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_16E4E44(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 56) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_136BA20(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v82 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v82, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v82 + 1);
    v8 = **v82;
    if (**v82 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v82, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v82 + 2);
      }
    }

    *v82 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_113;
        }

        v11 = v7 - 1;
        while (1)
        {
          v12 = v11 + 1;
          *v82 = v11 + 1;
          v13 = *(a1 + 40);
          if (v13 && (v14 = *(a1 + 32), v14 < *v13))
          {
            *(a1 + 32) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_175D31C(*(a1 + 24));
            v15 = sub_19593CC(a1 + 24, v16);
            v12 = *v82;
          }

          sub_21F46A0(a3, v15, v12);
          *v82 = v11;
          if (!v11)
          {
            goto LABEL_134;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_121;
          }
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_113;
        }

        v38 = v7 - 1;
        while (1)
        {
          v39 = v38 + 1;
          *v82 = v38 + 1;
          v40 = *(a1 + 64);
          if (v40 && (v41 = *(a1 + 56), v41 < *v40))
          {
            *(a1 + 56) = v41 + 1;
            v42 = *&v40[2 * v41 + 2];
          }

          else
          {
            v43 = sub_175D3D4(*(a1 + 48));
            v42 = sub_19593CC(a1 + 48, v43);
            v39 = *v82;
          }

          v38 = sub_2200CE0(a3, v42, v39);
          *v82 = v38;
          if (!v38)
          {
            goto LABEL_134;
          }

          if (*a3 <= v38 || *v38 != 18)
          {
            goto LABEL_121;
          }
        }

      case 3u:
        if (v8 != 26)
        {
          goto LABEL_113;
        }

        *(a1 + 16) |= 1u;
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v31 = (a1 + 168);
        goto LABEL_87;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_113;
        }

        *(a1 + 16) |= 2u;
        v54 = *(a1 + 8);
        v30 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
        if (v54)
        {
          v30 = *v30;
        }

        v31 = (a1 + 176);
        goto LABEL_87;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_113;
        }

        v56 = v7 - 1;
        while (1)
        {
          v57 = v56 + 1;
          *v82 = v56 + 1;
          v58 = *(a1 + 88);
          if (v58 && (v59 = *(a1 + 80), v59 < *v58))
          {
            *(a1 + 80) = v59 + 1;
            v60 = *&v58[2 * v59 + 2];
          }

          else
          {
            sub_137A3A4(*(a1 + 72));
            v60 = sub_19593CC(a1 + 72, v61);
            v57 = *v82;
          }

          v56 = sub_22018B0(a3, v60, v57);
          *v82 = v56;
          if (!v56)
          {
            goto LABEL_134;
          }

          if (*a3 <= v56 || *v56 != 42)
          {
            goto LABEL_121;
          }
        }

      case 6u:
        if (v8 != 48)
        {
          goto LABEL_113;
        }

        v5 |= 0x20u;
        v32 = v7 + 1;
        v33 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        v34 = *v32;
        v33 = v33 + (v34 << 7) - 128;
        if (v34 < 0)
        {
          v74 = sub_1958770(v7, v33);
          *v82 = v74;
          *(a1 + 208) = v75;
          if (!v74)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_48:
          *v82 = v32;
          *(a1 + 208) = v33;
        }

        goto LABEL_121;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_113;
        }

        *(a1 + 16) |= 4u;
        v44 = *(a1 + 8);
        v30 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v30 = *v30;
        }

        v31 = (a1 + 184);
LABEL_87:
        v55 = sub_194DB04(v31, v30);
        v28 = sub_1958890(v55, *v82, a3);
        goto LABEL_120;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_113;
        }

        v5 |= 0x40u;
        v45 = v7 + 1;
        v46 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        v47 = *v45;
        v46 = v46 + (v47 << 7) - 128;
        if (v47 < 0)
        {
          v78 = sub_1958770(v7, v46);
          *v82 = v78;
          *(a1 + 212) = v79;
          if (!v78)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v45 = v7 + 2;
LABEL_72:
          *v82 = v45;
          *(a1 + 212) = v46;
        }

        goto LABEL_121;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_113;
        }

        v5 |= 0x80u;
        v69 = v7 + 1;
        v68 = *v7;
        if ((v68 & 0x8000000000000000) == 0)
        {
          goto LABEL_112;
        }

        v70 = *v69;
        v68 = (v70 << 7) + v68 - 128;
        if (v70 < 0)
        {
          v80 = sub_19587DC(v7, v68);
          *v82 = v80;
          *(a1 + 216) = v81;
          if (!v80)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v69 = v7 + 2;
LABEL_112:
          *v82 = v69;
          *(a1 + 216) = v68;
        }

        goto LABEL_121;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_113;
        }

        v62 = v7 - 1;
        while (1)
        {
          v63 = v62 + 1;
          *v82 = v62 + 1;
          v64 = *(a1 + 112);
          if (v64 && (v65 = *(a1 + 104), v65 < *v64))
          {
            *(a1 + 104) = v65 + 1;
            v66 = *&v64[2 * v65 + 2];
          }

          else
          {
            v67 = sub_14357EC(*(a1 + 96));
            v66 = sub_19593CC(a1 + 96, v67);
            v63 = *v82;
          }

          v62 = sub_2201940(a3, v66, v63);
          *v82 = v62;
          if (!v62)
          {
            goto LABEL_134;
          }

          if (*a3 <= v62 || *v62 != 82)
          {
            goto LABEL_121;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_113;
        }

        v20 = v7 - 1;
        while (1)
        {
          v21 = v20 + 1;
          *v82 = v20 + 1;
          v22 = *(a1 + 136);
          if (v22 && (v23 = *(a1 + 128), v23 < *v22))
          {
            *(a1 + 128) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            sub_137A640(*(a1 + 120));
            v24 = sub_19593CC(a1 + 120, v25);
            v21 = *v82;
          }

          v20 = sub_22019D0(a3, v24, v21);
          *v82 = v20;
          if (!v20)
          {
            goto LABEL_134;
          }

          if (*a3 <= v20 || *v20 != 90)
          {
            goto LABEL_121;
          }
        }

      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_113;
        }

        v5 |= 0x100u;
        v35 = v7 + 1;
        v36 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        v37 = *v35;
        v36 = v36 + (v37 << 7) - 128;
        if (v37 < 0)
        {
          v76 = sub_1958770(v7, v36);
          *v82 = v76;
          *(a1 + 224) = v77;
          if (!v76)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v35 = v7 + 2;
LABEL_53:
          *v82 = v35;
          *(a1 + 224) = v36;
        }

        goto LABEL_121;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_113;
        }

        *(a1 + 16) |= 8u;
        v17 = *(a1 + 192);
        if (v17)
        {
          goto LABEL_39;
        }

        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v17 = sub_137A5B0(v27);
        *(a1 + 192) = v17;
        goto LABEL_38;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_113;
        }

        *(a1 + 16) |= 0x10u;
        v17 = *(a1 + 200);
        if (v17)
        {
          goto LABEL_39;
        }

        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v17 = sub_137A5B0(v19);
        *(a1 + 200) = v17;
LABEL_38:
        v7 = *v82;
LABEL_39:
        v28 = sub_2201A60(a3, v17, v7);
        goto LABEL_120;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_113;
        }

        v48 = v7 - 2;
        while (1)
        {
          v49 = v48 + 2;
          *v82 = v48 + 2;
          v50 = *(a1 + 160);
          if (v50 && (v51 = *(a1 + 152), v51 < *v50))
          {
            *(a1 + 152) = v51 + 1;
            v52 = *&v50[2 * v51 + 2];
          }

          else
          {
            v53 = sub_137A524(*(a1 + 144));
            v52 = sub_19593CC(a1 + 144, v53);
            v49 = *v82;
          }

          v48 = sub_2201AF0(a3, v52, v49);
          *v82 = v48;
          if (!v48)
          {
            goto LABEL_134;
          }

          if (*a3 <= v48 || *v48 != 386)
          {
            goto LABEL_121;
          }
        }

      default:
LABEL_113:
        if (v8)
        {
          v71 = (v8 & 7) == 4;
        }

        else
        {
          v71 = 1;
        }

        if (!v71)
        {
          v72 = *(a1 + 8);
          if (v72)
          {
            v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v73 = sub_11F1920((a1 + 8));
            v7 = *v82;
          }

          v28 = sub_1952690(v8, v73, v7, a3);
LABEL_120:
          *v82 = v28;
          if (!v28)
          {
            goto LABEL_134;
          }

LABEL_121:
          if (sub_195ADC0(a3, v82, a3[11].u32[1]))
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
LABEL_134:
          *v82 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v82;
    }
  }
}

char *sub_136C1A4(uint64_t a1, char *__dst, unint64_t *a3)
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
      v9 = *(v8 + 48);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_1754B50(v8, v10, a3);
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

      __dst = sub_1759614(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    __dst = sub_128AEEC(a3, 3, (*(a1 + 168) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v16 & 2) != 0)
  {
    __dst = sub_128AEEC(a3, 4, (*(a1 + 176) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v19 = *(*(a1 + 88) + 8 * k + 8);
      *__dst = 42;
      v20 = *(v19 + 20);
      __dst[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, __dst + 1);
      }

      else
      {
        v21 = __dst + 2;
      }

      __dst = sub_136ADAC(v19, v21, a3);
    }
  }

  if ((v16 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v23 = *(a1 + 208);
    *__dst = 48;
    __dst[1] = v23;
    if (v23 > 0x7F)
    {
      __dst[1] = v23 | 0x80;
      v24 = v23 >> 7;
      __dst[2] = v23 >> 7;
      v22 = __dst + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = __dst[2];
        do
        {
          *(v22 - 1) = v25 | 0x80;
          v25 = v24 >> 7;
          *v22++ = v24 >> 7;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v22 = __dst + 2;
    }
  }

  else
  {
    v22 = __dst;
  }

  if ((v16 & 4) != 0)
  {
    v22 = sub_128AEEC(a3, 7, (*(a1 + 184) & 0xFFFFFFFFFFFFFFFELL), v22);
  }

  if ((v16 & 0x40) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v28 = *(a1 + 212);
    *v22 = 64;
    v22[1] = v28;
    if (v28 > 0x7F)
    {
      v22[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v22[2] = v28 >> 7;
      v27 = v22 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v22) = v22[2];
        do
        {
          *(v27 - 1) = v22 | 0x80;
          LODWORD(v22) = v29 >> 7;
          *v27++ = v29 >> 7;
          v30 = v29 >> 14;
          v29 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v27 = v22 + 2;
    }
  }

  else
  {
    v27 = v22;
  }

  if ((v16 & 0x80) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v32 = *(a1 + 216);
    *v27 = 72;
    v27[1] = v32;
    if (v32 > 0x7F)
    {
      v27[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v27[2] = v32 >> 7;
      v31 = v27 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v27) = v27[2];
        do
        {
          *(v31 - 1) = v27 | 0x80;
          v27 = (v33 >> 7);
          *v31++ = v33 >> 7;
          v34 = v33 >> 14;
          v33 >>= 7;
        }

        while (v34);
      }
    }

    else
    {
      v31 = v27 + 2;
    }
  }

  else
  {
    v31 = v27;
  }

  v35 = *(a1 + 104);
  if (v35)
  {
    for (m = 0; m != v35; ++m)
    {
      if (*a3 <= v31)
      {
        v31 = sub_225EB68(a3, v31);
      }

      v37 = *(*(a1 + 112) + 8 * m + 8);
      *v31 = 82;
      v38 = *(v37 + 44);
      v31[1] = v38;
      if (v38 > 0x7F)
      {
        v39 = sub_19575D0(v38, v31 + 1);
      }

      else
      {
        v39 = v31 + 2;
      }

      v31 = sub_1422044(v37, v39, a3);
    }
  }

  v40 = *(a1 + 128);
  if (v40)
  {
    for (n = 0; n != v40; ++n)
    {
      if (*a3 <= v31)
      {
        v31 = sub_225EB68(a3, v31);
      }

      v42 = *(*(a1 + 136) + 8 * n + 8);
      *v31 = 90;
      v43 = *(v42 + 20);
      v31[1] = v43;
      if (v43 > 0x7F)
      {
        v44 = sub_19575D0(v43, v31 + 1);
      }

      else
      {
        v44 = v31 + 2;
      }

      v31 = sub_136E90C(v42, v44, a3);
    }
  }

  if ((v16 & 0x100) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v46 = *(a1 + 224);
    *v31 = 104;
    v31[1] = v46;
    if (v46 > 0x7F)
    {
      v31[1] = v46 | 0x80;
      v47 = v46 >> 7;
      v31[2] = v46 >> 7;
      v45 = v31 + 3;
      if (v46 >= 0x4000)
      {
        LOBYTE(v31) = v31[2];
        do
        {
          *(v45 - 1) = v31 | 0x80;
          LODWORD(v31) = v47 >> 7;
          *v45++ = v47 >> 7;
          v48 = v47 >> 14;
          v47 >>= 7;
        }

        while (v48);
      }
    }

    else
    {
      v45 = v31 + 2;
    }
  }

  else
  {
    v45 = v31;
  }

  if ((v16 & 8) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v49 = *(a1 + 192);
    *v45 = 114;
    v50 = *(v49 + 20);
    v45[1] = v50;
    if (v50 > 0x7F)
    {
      v51 = sub_19575D0(v50, v45 + 1);
    }

    else
    {
      v51 = v45 + 2;
    }

    v45 = sub_136E0E0(v49, v51, a3);
  }

  if ((v16 & 0x10) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v52 = *(a1 + 200);
    *v45 = 122;
    v53 = *(v52 + 20);
    v45[1] = v53;
    if (v53 > 0x7F)
    {
      v54 = sub_19575D0(v53, v45 + 1);
    }

    else
    {
      v54 = v45 + 2;
    }

    v45 = sub_136E0E0(v52, v54, a3);
  }

  v55 = *(a1 + 152);
  if (v55)
  {
    for (ii = 0; ii != v55; ++ii)
    {
      if (*a3 <= v45)
      {
        v45 = sub_225EB68(a3, v45);
      }

      v57 = *(*(a1 + 160) + 8 * ii + 8);
      *v45 = 386;
      v58 = *(v57 + 20);
      v45[2] = v58;
      if (v58 > 0x7F)
      {
        v59 = sub_19575D0(v58, v45 + 2);
      }

      else
      {
        v59 = v45 + 3;
      }

      v45 = sub_136D574(v57, v59, a3);
    }
  }

  v60 = *(a1 + 8);
  if ((v60 & 1) == 0)
  {
    return v45;
  }

  v62 = v60 & 0xFFFFFFFFFFFFFFFCLL;
  v63 = *(v62 + 31);
  if (v63 < 0)
  {
    v64 = *(v62 + 8);
    v63 = *(v62 + 16);
  }

  else
  {
    v64 = (v62 + 8);
  }

  if ((*a3 - v45) >= v63)
  {
    v65 = v63;
    memcpy(v45, v64, v63);
    v45 += v65;
    return v45;
  }

  return sub_1957130(a3, v64, v63, v45);
}

uint64_t sub_136C8BC(uint64_t a1)
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
      v7 = sub_1755E4C(v6);
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
      v14 = sub_175A8F4(v13);
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
      v21 = sub_136B25C(v20);
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
      v28 = sub_142286C(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 128);
  v30 = v23 + v29;
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
      v35 = sub_136EB6C(v34);
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
      v42 = sub_136D818(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 16);
  if (!v43)
  {
    goto LABEL_49;
  }

  if (v43)
  {
    v46 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    v47 = *(v46 + 23);
    v48 = *(v46 + 8);
    if ((v47 & 0x80u) == 0)
    {
      v48 = v47;
    }

    v37 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v43 & 2) == 0)
    {
LABEL_42:
      if ((v43 & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }
  }

  else if ((v43 & 2) == 0)
  {
    goto LABEL_42;
  }

  v49 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v50 = *(v49 + 23);
  v51 = *(v49 + 8);
  if ((v50 & 0x80u) == 0)
  {
    v51 = v50;
  }

  v37 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 4) == 0)
  {
LABEL_43:
    if ((v43 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_62;
  }

LABEL_59:
  v52 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v53 = *(v52 + 23);
  v54 = *(v52 + 8);
  if ((v53 & 0x80u) == 0)
  {
    v54 = v53;
  }

  v37 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 8) == 0)
  {
LABEL_44:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_63;
  }

LABEL_62:
  v55 = sub_136E388(*(a1 + 192));
  v37 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 0x10) == 0)
  {
LABEL_45:
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_46;
    }

LABEL_64:
    v37 += ((9 * (__clz(*(a1 + 208) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v43 & 0x40) == 0)
    {
LABEL_47:
      if ((v43 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    goto LABEL_65;
  }

LABEL_63:
  v56 = sub_136E388(*(a1 + 200));
  v37 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 0x20) != 0)
  {
    goto LABEL_64;
  }

LABEL_46:
  if ((v43 & 0x40) == 0)
  {
    goto LABEL_47;
  }

LABEL_65:
  v37 += ((9 * (__clz(*(a1 + 212) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 0x80) != 0)
  {
LABEL_48:
    v37 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_49:
  if ((v43 & 0x100) != 0)
  {
    v37 += ((9 * (__clz(*(a1 + 224) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v44 = *(a1 + 8);
  if (v44)
  {
    v57 = v44 & 0xFFFFFFFFFFFFFFFCLL;
    v58 = *((v44 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v58 < 0)
    {
      v58 = *(v57 + 16);
    }

    v37 += v58;
  }

  *(a1 + 20) = v37;
  return v37;
}

void sub_136CCE8(uint64_t a1, uint64_t a2)
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

      goto LABEL_28;
    }

LABEL_20:
    *(a1 + 16) |= 4u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_18648BC(v14);
      *(a1 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_27868A0;
    }

    sub_18367AC(v12, v15);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(a1 + 16) |= 8u;
    v16 = *(a1 + 48);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_14050A4(v18);
      *(a1 + 48) = v16;
    }

    if (*(a2 + 48))
    {
      v19 = *(a2 + 48);
    }

    else
    {
      v19 = &off_276FAB8;
    }

    sub_1403E5C(v16, v19);
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
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_9;
    }

LABEL_36:
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

      v20 = sub_16F5828(v22);
      *(a1 + 56) = v20;
    }

    if (*(a2 + 56))
    {
      v23 = *(a2 + 56);
    }

    else
    {
      v23 = &off_277E5E8;
    }

    sub_16E527C(v20, v23);
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

uint64_t sub_136CED0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 0x10) != 0)
    {
      result = sub_16E5370(*(v3 + 56));
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

uint64_t sub_136CF2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_1836CF0(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_140441C(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_136CF9C(uint64_t a1)
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

  if (a1 != &off_276CB08)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_13585B0(v6);
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

void sub_136D0AC(uint64_t a1)
{
  sub_136CF9C(a1);

  operator delete();
}

unsigned __int8 *sub_136D0E4(unsigned __int8 *result)
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

LABEL_18:
    v6 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_22:
  v7 = *(result + 5) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_26;
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

LABEL_26:
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
    result = sub_13586B4(*(result + 7));
    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_7;
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

uint64_t sub_136D228(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v38, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v38 + 1);
    v8 = **v38;
    if (**v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v38 + 2);
      }
    }

    *v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_55;
        }

        *(a1 + 16) |= 4u;
        v28 = *(a1 + 8);
        v13 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v13 = *v13;
        }

        v14 = (a1 + 40);
      }

      else
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_55;
        }

        *(a1 + 16) |= 8u;
        v21 = *(a1 + 8);
        v13 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v13 = *v13;
        }

        v14 = (a1 + 48);
      }

      goto LABEL_51;
    }

    if (v11 != 4)
    {
      if (v11 != 5 || v8 != 42)
      {
        goto LABEL_55;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 32);
LABEL_51:
      v30 = sub_194DB04(v14, v13);
      v20 = sub_1958890(v30, *v38, a3);
      goto LABEL_52;
    }

    if (v8 != 32)
    {
      goto LABEL_55;
    }

    v5 |= 0x40u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_42:
      *v38 = v25;
      *(a1 + 68) = v26;
      goto LABEL_53;
    }

    v36 = sub_1958770(v7, v26);
    *v38 = v36;
    *(a1 + 68) = v37;
    if (!v36)
    {
      goto LABEL_69;
    }

LABEL_53:
    if (sub_195ADC0(a3, v38, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_55;
    }

    v5 |= 0x20u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_37:
      *v38 = v22;
      *(a1 + 64) = v23;
      goto LABEL_53;
    }

    v34 = sub_1958770(v7, v23);
    *v38 = v34;
    *(a1 + 64) = v35;
    if (!v34)
    {
      goto LABEL_69;
    }

    goto LABEL_53;
  }

  if (v11 == 2)
  {
    if (v8 != 18)
    {
      goto LABEL_55;
    }

    *(a1 + 16) |= 1u;
    v29 = *(a1 + 8);
    v13 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v13 = *v13;
    }

    v14 = (a1 + 24);
    goto LABEL_51;
  }

  if (v11 == 3 && v8 == 26)
  {
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

      sub_137949C(v18);
      v16 = v19;
      *(a1 + 56) = v19;
      v7 = *v38;
    }

    v20 = sub_2200860(a3, v16, v7);
LABEL_52:
    *v38 = v20;
    if (!v20)
    {
      goto LABEL_69;
    }

    goto LABEL_53;
  }

LABEL_55:
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
      v7 = *v38;
    }

    v20 = sub_1952690(v8, v33, v7, a3);
    goto LABEL_52;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_69:
  *v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v38;
}

char *sub_136D574(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
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

  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 56);
    *v6 = 26;
    v13 = *(v12 + 20);
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v6 + 1);
    }

    else
    {
      v14 = v6 + 2;
    }

    v6 = sub_1358990(v12, v14, a3);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  v6 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    v11 = v6;
    goto LABEL_28;
  }

LABEL_21:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 68);
  *v6 = 32;
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v6[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v6[2] = v15 >> 7;
    v11 = v6 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v17) = v6[2];
      do
      {
        *(v11 - 1) = v17 | 0x80;
        v17 = v16 >> 7;
        *v11++ = v16 >> 7;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_28:
  if ((v5 & 2) != 0)
  {
    v11 = sub_128AEEC(a3, 5, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v5 & 4) == 0)
    {
LABEL_30:
      if ((v5 & 8) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_30;
  }

  v11 = sub_128AEEC(a3, 6, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 8) != 0)
  {
LABEL_31:
    v11 = sub_128AEEC(a3, 7, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

LABEL_32:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v22)
  {
    v24 = v22;
    memcpy(v11, v23, v22);
    v11 += v24;
    return v11;
  }

  return sub_1957130(a3, v23, v22, v11);
}

uint64_t sub_136D818(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
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

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v12 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = sub_1358B84(*(a1 + 56));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_27:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) != 0)
  {
LABEL_17:
    v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v10 = *(a1 + 8);
  if (v10)
  {
    v19 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v3 += v20;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_136DA2C(uint64_t a1, uint64_t a2)
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

      goto LABEL_27;
    }

LABEL_24:
    v15 = *(a2 + 48);
    *(a1 + 16) |= 8u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 48), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_35;
    }

LABEL_27:
    *(a1 + 16) |= 0x10u;
    v18 = *(a1 + 56);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      sub_137949C(v20);
      *(a1 + 56) = v18;
    }

    if (*(a2 + 56))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = &off_276C388;
    }

    sub_1358C88(v18, v21);
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
      *(a1 + 68) = *(a2 + 68);
      goto LABEL_10;
    }

LABEL_35:
    *(a1 + 64) = *(a2 + 64);
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

uint64_t sub_136DBF4(uint64_t a1)
{
  if ((*(a1 + 16) & 0x10) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 56);
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

void *sub_136DC40(void *a1)
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

  sub_136DCC4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_136DCC4(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 32);
  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276CB50)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_18385C8(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_140254C(v6);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_16E4E08(result);

      operator delete();
    }
  }

  return result;
}

void sub_136DD9C(void *a1)
{
  sub_136DC40(a1);

  operator delete();
}

uint64_t sub_136DDD4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v34 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v34, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v34 + 1);
    v7 = **v34;
    if (**v34 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v34, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v34 + 2);
      }
    }

    *v34 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 != 34)
        {
          goto LABEL_51;
        }

        *(a1 + 16) |= 8u;
        v22 = *(a1 + 48);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_14050A4(v24);
          *(a1 + 48) = v22;
          v6 = *v34;
        }

        v15 = sub_2201B80(a3, v22, v6);
      }

      else
      {
        if (v10 != 5)
        {
          if (v10 == 6 && v7 == 48)
          {
            v17 = v6 + 1;
            v16 = *v6;
            if ((v16 & 0x8000000000000000) == 0)
            {
              goto LABEL_27;
            }

            v18 = *v17;
            v16 = (v18 << 7) + v16 - 128;
            if (v18 < 0)
            {
              *v34 = sub_19587DC(v6, v16);
              if (!*v34)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v17 = v6 + 2;
LABEL_27:
              *v34 = v17;
            }

            if (v16 > 3)
            {
              sub_12E84C8();
            }

            else
            {
              *(a1 + 16) |= 0x20u;
              *(a1 + 64) = v16;
            }

            continue;
          }

LABEL_51:
          if (v7)
          {
            v30 = (v7 & 7) == 4;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            if (v6)
            {
              a3[10].i32[0] = v7 - 1;
              return *v34;
            }

LABEL_67:
            *v34 = 0;
            return *v34;
          }

          v31 = *(a1 + 8);
          if (v31)
          {
            v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v32 = sub_11F1920((a1 + 8));
            v6 = *v34;
          }

          v15 = sub_1952690(v7, v32, v6, a3);
          goto LABEL_58;
        }

        if (v7 != 42)
        {
          goto LABEL_51;
        }

        *(a1 + 16) |= 0x10u;
        v27 = *(a1 + 56);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_16F5828(v29);
          *(a1 + 56) = v27;
          v6 = *v34;
        }

        v15 = sub_21F4D60(a3, v27, v6);
      }
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_51;
        }

        *(a1 + 16) |= 1u;
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v21 = (a1 + 24);
LABEL_44:
        v26 = sub_194DB04(v21, v20);
        v15 = sub_1958890(v26, *v34, a3);
        goto LABEL_58;
      }

      if (v10 == 2)
      {
        if (v7 != 18)
        {
          goto LABEL_51;
        }

        *(a1 + 16) |= 2u;
        v25 = *(a1 + 8);
        v20 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v20 = *v20;
        }

        v21 = (a1 + 32);
        goto LABEL_44;
      }

      if (v10 != 3 || v7 != 26)
      {
        goto LABEL_51;
      }

      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_18648BC(v14);
        *(a1 + 40) = v12;
        v6 = *v34;
      }

      v15 = sub_2200230(a3, v12, v6);
    }

LABEL_58:
    *v34 = v15;
    if (!v15)
    {
      goto LABEL_67;
    }
  }

  return *v34;
}

char *sub_136E0E0(uint64_t a1, char *__dst, unint64_t *a3)
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
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 40);
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

  v4 = sub_1838E28(v8, v10, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v14 = *(a1 + 56);
    *v4 = 42;
    v15 = *(v14 + 44);
    v4[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v4 + 1);
    }

    else
    {
      v16 = v4 + 2;
    }

    v4 = sub_16E5070(v14, v16, a3);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 48);
  *v4 = 34;
  v12 = *(v11 + 44);
  v4[1] = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, v4 + 1);
  }

  else
  {
    v13 = v4 + 2;
  }

  v4 = sub_1403020(v11, v13, a3);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    v7 = v4;
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 64);
  *v4 = 48;
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    v4[2] = v17 >> 7;
    v7 = v4 + 3;
    if (v17 >= 0x4000)
    {
      LOBYTE(v19) = v4[2];
      do
      {
        *(v7 - 1) = v19 | 0x80;
        v19 = v18 >> 7;
        *v7++ = v18 >> 7;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_35:
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v24)
  {
    v26 = v24;
    memcpy(v7, v25, v24);
    v7 += v26;
    return v7;
  }

  return sub_1957130(a3, v25, v24, v7);
}

uint64_t sub_136E388(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
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

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v10 = sub_1839564(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v11 = sub_1403980(*(a1 + 48));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = sub_16E51F0(*(a1 + 56));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v13 = *(a1 + 64);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v14;
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

    v3 += v18;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_136E564(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_136E5E0(void *a1)
{
  sub_136E564(a1);

  operator delete();
}

uint64_t sub_136E618(uint64_t a1)
{
  *(a1 + 24) = 0;
  if ((*(a1 + 16) & 3) != 0)
  {
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

char *sub_136E640(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 5)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v17 = v7 + 1;
      v18 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v19 = *v17;
      v18 = v18 + (v19 << 7) - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_26:
        v33 = v17;
        *(a1 + 44) = v18;
        goto LABEL_45;
      }

      v29 = sub_1958770(v7, v18);
      v33 = v29;
      *(a1 + 44) = v30;
      if (!v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 1u;
      v26 = v7 + 1;
      v27 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v28 = *v26;
      v27 = v27 + (v28 << 7) - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_44:
        v33 = v26;
        *(a1 + 40) = v27;
        goto LABEL_45;
      }

      v31 = sub_1958770(v7, v27);
      v33 = v31;
      *(a1 + 40) = v32;
      if (!v31)
      {
        goto LABEL_56;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, &v33, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 40)
  {
    v20 = v7 - 1;
    while (1)
    {
      v33 = v20 + 1;
      v21 = v20[1];
      if (v20[1] < 0)
      {
        v22 = v21 + (v20[2] << 7);
        v21 = v22 - 128;
        if (v20[2] < 0)
        {
          v20 = sub_1958770((v20 + 1), v22 - 128);
          v21 = v23;
        }

        else
        {
          v20 += 3;
        }
      }

      else
      {
        v20 += 2;
      }

      v33 = v20;
      v24 = *(a1 + 24);
      if (v24 == *(a1 + 28))
      {
        v25 = v24 + 1;
        sub_1958E5C((a1 + 24), v24 + 1);
        *(*(a1 + 32) + 4 * v24) = v21;
        v20 = v33;
      }

      else
      {
        *(*(a1 + 32) + 4 * v24) = v21;
        v25 = v24 + 1;
      }

      *(a1 + 24) = v25;
      if (!v20)
      {
        goto LABEL_56;
      }

      if (*a3 <= v20 || *v20 != 40)
      {
        goto LABEL_45;
      }
    }
  }

  if (v8 == 42)
  {
    v16 = sub_1958918((a1 + 24), v7, a3);
    goto LABEL_20;
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
      v7 = v33;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
LABEL_20:
    v33 = v16;
    if (!v16)
    {
      goto LABEL_56;
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_56:
  v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

char *sub_136E90C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 40);
    *a2 = 16;
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

    v12 = *(a1 + 44);
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

  v15 = *(a1 + 24);
  if (v15 < 1)
  {
    v18 = v11;
  }

  else
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 32) + 4 * i);
      *v11 = 40;
      v11[1] = v17;
      if (v17 > 0x7F)
      {
        v11[1] = v17 | 0x80;
        v19 = v17 >> 7;
        v11[2] = v17 >> 7;
        v18 = v11 + 3;
        if (v17 >= 0x4000)
        {
          LOBYTE(v20) = v11[2];
          do
          {
            *(v18 - 1) = v20 | 0x80;
            v20 = v19 >> 7;
            *v18++ = v19 >> 7;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
        }
      }

      else
      {
        v18 = v11 + 2;
      }

      v11 = v18;
    }
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v18;
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

  if ((*a3 - v18) >= v25)
  {
    v27 = v25;
    memcpy(v18, v26, v25);
    v18 += v27;
    return v18;
  }

  return sub_1957130(a3, v26, v25, v18);
}

uint64_t sub_136EB6C(uint64_t a1)
{
  result = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      result += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  *(a1 + 20) = result;
  return result;
}

std::string *sub_136EC20(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = &result[1];
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1958E5C(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    *v5 += *(a2 + 24);
    result = memcpy((size + 4 * data_low), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    }

    if ((v8 & 2) != 0)
    {
      HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_136ED0C(void *a1)
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

void sub_136ED80(void *a1)
{
  sub_136ED0C(a1);

  operator delete();
}

char *sub_136EDB8(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_136F000(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_136F238(uint64_t a1)
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

void *sub_136F314(void *a1)
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

void sub_136F388(void *a1)
{
  sub_136F314(a1);

  operator delete();
}

uint64_t sub_136F3C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0x100000000;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_136F3E0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v41, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v41 + 1;
    v8 = *v41;
    if (*v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v41 + 2;
      }
    }

    v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_43;
      }

      v5 |= 1u;
      v27 = v7 + 1;
      v26 = *v7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_42:
        v41 = v27;
        *(a1 + 24) = v26 != 0;
        goto LABEL_50;
      }

      v36 = sub_19587DC(v7, v26);
      v41 = v36;
      *(a1 + 24) = v37 != 0;
      if (!v36)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_43;
      }

      v5 |= 2u;
      v18 = v7 + 1;
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = v7 + 2;
LABEL_27:
        v41 = v18;
        *(a1 + 25) = v17 != 0;
        goto LABEL_50;
      }

      v39 = sub_19587DC(v7, v17);
      v41 = v39;
      *(a1 + 25) = v40 != 0;
      if (!v39)
      {
        goto LABEL_66;
      }
    }

LABEL_50:
    if (sub_195ADC0(a3, &v41, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_43;
    }

    v5 |= 4u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_32:
      v41 = v21;
      *(a1 + 26) = v20 != 0;
      goto LABEL_50;
    }

    v32 = sub_19587DC(v7, v20);
    v41 = v32;
    *(a1 + 26) = v33 != 0;
    if (!v32)
    {
      goto LABEL_66;
    }

    goto LABEL_50;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_43;
    }

    v5 |= 8u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_37:
      v41 = v24;
      *(a1 + 27) = v23 != 0;
      goto LABEL_50;
    }

    v34 = sub_19587DC(v7, v23);
    v41 = v34;
    *(a1 + 27) = v35 != 0;
    if (!v34)
    {
      goto LABEL_66;
    }

    goto LABEL_50;
  }

  if (v11 == 5 && v8 == 40)
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
        v41 = sub_19587DC(v7, (v15 - 128));
        if (!v41)
        {
          goto LABEL_66;
        }

        LODWORD(v13) = v38;
        goto LABEL_16;
      }

      v12 = v7 + 2;
    }

    v41 = v12;
LABEL_16:
    if (sub_1538BA4(v13))
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 28) = v13;
    }

    else
    {
      sub_12E85B8();
    }

    goto LABEL_50;
  }

LABEL_43:
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
      v7 = v41;
    }

    v41 = sub_1952690(v8, v31, v7, a3);
    if (!v41)
    {
      goto LABEL_66;
    }

    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_136F760(uint64_t a1, char *__dst, void *a3)
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
    __dst += 2;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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

  v8 = *(a1 + 25);
  *__dst = 16;
  __dst[1] = v8;
  __dst += 2;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 27);
    *__dst = 32;
    __dst[1] = v10;
    __dst += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 26);
  *__dst = 24;
  __dst[1] = v9;
  __dst += 2;
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    v6 = __dst;
    goto LABEL_26;
  }

LABEL_19:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v11 = *(a1 + 28);
  *__dst = 40;
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

LABEL_26:
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

  if (*a3 - v6 >= v18)
  {
    v20 = v18;
    memcpy(v6, v19, v18);
    v6 += v20;
    return v6;
  }

  return sub_1957130(a3, v19, v18, v6);
}

uint64_t sub_136F968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) != 0)
  {
    v2 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2) + ((*(a1 + 16) >> 2) & 2u);
    if ((v1 & 0x10) != 0)
    {
      v3 = *(a1 + 28);
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v3 >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 11;
      }

      v2 += v5;
    }
  }

  else
  {
    v2 = 0;
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

std::string *sub_136FA04(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result[1].__r_.__value_.__s.__data_[1] = *(a2 + 25);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    result[1].__r_.__value_.__s.__data_[3] = *(a2 + 27);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  result[1].__r_.__value_.__s.__data_[2] = *(a2 + 26);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  }

LABEL_8:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_9:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_136FAA0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26D8390;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = &qword_278E990;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return a1;
}

void sub_136FB24(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_136FB54(void *a1)
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

  sub_136FBE0(a1);
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

void ***sub_136FBE0(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  result = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276CBE0)
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      sub_13565A4(v5);
      operator delete();
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      sub_13560E4(v6);
      operator delete();
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      sub_19182E4(v7);
      operator delete();
    }

    v8 = *(a1 + 104);
    if (v8)
    {
      sub_191A17C(v8);
      operator delete();
    }

    v9 = *(a1 + 112);
    if (v9)
    {
      sub_136F314(v9);
      operator delete();
    }

    result = *(a1 + 120);
    if (result)
    {
      sub_16F8B5C(result);

      operator delete();
    }
  }

  return result;
}

void sub_136FD40(void *a1)
{
  sub_136FB54(a1);

  operator delete();
}

uint64_t sub_136FD78(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_25:
    v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_33:
    v11 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_38:
    result = sub_13561D4(*(a1 + 88));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_39;
  }

  v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_29:
  v10 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_33;
    }
  }

LABEL_6:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_37:
  result = sub_13566B4(*(a1 + 80));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_39:
  result = sub_18F9A60(*(a1 + 96));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = sub_18F9CE4(*(a1 + 104));
  }

LABEL_11:
  if ((v3 & 0x300) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v4 = *(a1 + 112);
      v5 = *(v4 + 8);
      result = v4 + 8;
      *(result + 16) = 0x100000000;
      *(result + 8) = 0;
      if (v5)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x200) != 0)
    {
      result = sub_16F8B98(*(a1 + 120));
    }
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 120) = 0;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_136FF24(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v45 = a2;
  if (sub_195ADC0(a3, v45, a3[11].u32[1]))
  {
    return *v45;
  }

  while (1)
  {
    v6 = (*v45 + 1);
    v7 = **v45;
    if (**v45 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v45, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v45 + 2);
      }
    }

    *v45 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 0xB)
    {
      break;
    }

    if (v7 >> 3 > 8)
    {
      if (v10 == 9)
      {
        if (v7 != 74)
        {
          goto LABEL_84;
        }

        *(a1 + 40) |= 0x40u;
        v35 = *(a1 + 96);
        if (!v35)
        {
          v36 = *(a1 + 8);
          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v37 = *v37;
          }

          sub_191BB34(v37);
          v35 = v38;
          *(a1 + 96) = v38;
          v6 = *v45;
        }

        v15 = sub_2201D30(a3, v35, v6);
        goto LABEL_81;
      }

      if (v10 == 10)
      {
        if (v7 != 82)
        {
          goto LABEL_84;
        }

        *(a1 + 40) |= 0x80u;
        v28 = *(a1 + 104);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_191BBC4(v30);
          *(a1 + 104) = v28;
          v6 = *v45;
        }

        v15 = sub_2201DC0(a3, v28, v6);
        goto LABEL_81;
      }

      if (v10 != 11 || v7 != 90)
      {
        goto LABEL_84;
      }

      *(a1 + 40) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v18 = (a1 + 48);
      goto LABEL_80;
    }

    if (v10 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_84;
      }

      *(a1 + 40) |= 0x10u;
      v25 = *(a1 + 80);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_13793F0(v27);
        *(a1 + 80) = v25;
        v6 = *v45;
      }

      v15 = sub_2201C10(a3, v25, v6);
    }

    else
    {
      if (v10 != 6 || v7 != 50)
      {
        goto LABEL_84;
      }

      *(a1 + 40) |= 0x20u;
      v22 = *(a1 + 88);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_137936C(v24);
        *(a1 + 88) = v22;
        v6 = *v45;
      }

      v15 = sub_2201CA0(a3, v22, v6);
    }

LABEL_81:
    *v45 = v15;
    if (!v15)
    {
      goto LABEL_99;
    }

LABEL_82:
    if (sub_195ADC0(a3, v45, a3[11].u32[1]))
    {
      return *v45;
    }
  }

  if (v7 >> 3 <= 0xE)
  {
    if (v10 == 12)
    {
      if (v7 != 98)
      {
        goto LABEL_84;
      }

      *(a1 + 40) |= 2u;
      v39 = *(a1 + 8);
      v17 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v17 = *v17;
      }

      v18 = (a1 + 56);
    }

    else
    {
      if (v10 != 13)
      {
        if (v10 != 14 || v7 != 114)
        {
          goto LABEL_84;
        }

        *(a1 + 40) |= 0x100u;
        v11 = *(a1 + 112);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          sub_137A754(v13);
          v11 = v14;
          *(a1 + 112) = v14;
          v6 = *v45;
        }

        v15 = sub_2201E50(a3, v11, v6);
        goto LABEL_81;
      }

      if (v7 != 106)
      {
        goto LABEL_84;
      }

      *(a1 + 40) |= 4u;
      v31 = *(a1 + 8);
      v17 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v17 = *v17;
      }

      v18 = (a1 + 64);
    }

LABEL_80:
    v41 = sub_194DB04(v18, v17);
    v15 = sub_1958890(v41, *v45, a3);
    goto LABEL_81;
  }

  if (v10 == 15)
  {
    if (v7 != 122)
    {
      goto LABEL_84;
    }

    *(a1 + 40) |= 8u;
    v40 = *(a1 + 8);
    v17 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v17 = *v17;
    }

    v18 = (a1 + 72);
    goto LABEL_80;
  }

  if (v10 != 201)
  {
    if (v10 != 202 || v7 != 82)
    {
      goto LABEL_84;
    }

    *(a1 + 40) |= 0x200u;
    v19 = *(a1 + 120);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_16F9FEC(v21);
      *(a1 + 120) = v19;
      v6 = *v45;
    }

    v15 = sub_2201EE0(a3, v19, v6);
    goto LABEL_81;
  }

  if (v7 == 72)
  {
    v33 = v6 + 1;
    v32 = *v6;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_63;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if (v34 < 0)
    {
      *v45 = sub_19587DC(v6, v32);
      if (!*v45)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v33 = v6 + 2;
LABEL_63:
      *v45 = v33;
    }

    if (v32 > 2)
    {
      sub_13B67AC();
    }

    else
    {
      *(a1 + 40) |= 0x400u;
      *(a1 + 128) = v32;
    }

    goto LABEL_82;
  }

LABEL_84:
  if (v7)
  {
    v42 = (v7 & 7) == 4;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    if (v7 - 800 > 0x31F)
    {
      v43 = *(a1 + 8);
      if (v43)
      {
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v44 = sub_11F1920((a1 + 8));
        v6 = *v45;
      }

      v15 = sub_1952690(v7, v44, v6, a3);
    }

    else
    {
      v15 = sub_19525AC((a1 + 16), v7, v6, &off_276CBE0, (a1 + 8), a3);
    }

    goto LABEL_81;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v45;
  }

LABEL_99:
  *v45 = 0;
  return *v45;
}

char *sub_1370408(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 40);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 80);
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

    v4 = sub_1356FEC(v8, v10, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 88);
  *v4 = 50;
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

  v4 = sub_13563D0(v12, v14, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 96);
  *v4 = 74;
  v22 = *(v21 + 20);
  v4[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v4 + 1);
  }

  else
  {
    v23 = v4 + 2;
  }

  v4 = sub_1918B64(v21, v23, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v26 = *(a1 + 104);
  *v4 = 82;
  v27 = *(v26 + 44);
  v4[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v4 + 1);
  }

  else
  {
    v28 = v4 + 2;
  }

  v4 = sub_191A244(v26, v28, a3);
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  v4 = sub_128AEEC(a3, 11, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_7:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  v4 = sub_128AEEC(a3, 12, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  v4 = sub_128AEEC(a3, 13, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v29 = *(a1 + 112);
  *v4 = 114;
  v30 = *(v29 + 20);
  v4[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, v4 + 1);
  }

  else
  {
    v31 = v4 + 2;
  }

  v4 = sub_136F760(v29, v31, a3);
  if ((v6 & 8) != 0)
  {
LABEL_10:
    v4 = sub_128AEEC(a3, 15, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_11:
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 200, v4, a3);
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 128);
    *v4 = 3272;
    v4[2] = v11;
    if (v11 > 0x7F)
    {
      v4[2] = v11 | 0x80;
      v15 = v11 >> 7;
      v4[3] = v11 >> 7;
      v7 = v4 + 4;
      if (v11 >= 0x4000)
      {
        LOBYTE(v16) = v4[3];
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
      v7 = v4 + 3;
    }
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 120);
    *v7 = 3282;
    v19 = *(v18 + 20);
    v7[2] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v7 + 2);
    }

    else
    {
      v20 = v7 + 3;
    }

    v7 = sub_16F8E64(v18, v20, a3);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v7;
  }

  v32 = v24 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v7) >= v33)
  {
    v35 = v33;
    memcpy(v7, v34, v33);
    v7 += v35;
    return v7;
  }

  return sub_1957130(a3, v34, v33, v7);
}

uint64_t sub_1370844(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_11;
  }

  if (v4)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v3 = v2 + v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_22:
  v12 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_25:
  v15 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_29:
    v19 = sub_13564B8(*(a1 + 88));
    v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_28:
  v18 = sub_1357318(*(a1 + 80));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_30:
  v20 = sub_191925C(*(a1 + 96));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x80) != 0)
  {
LABEL_10:
    v5 = sub_191B0B0(*(a1 + 104));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_38;
  }

  if ((v4 & 0x100) != 0)
  {
    v21 = sub_136F968(*(a1 + 112));
    v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x200) == 0)
    {
LABEL_14:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v22 = sub_16F903C(*(a1 + 120));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x400) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v23 = *(a1 + 128);
  if (v23 < 0)
  {
    v24 = 12;
  }

  else
  {
    v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v24;
LABEL_38:
  v25 = *(a1 + 8);
  if (v25)
  {
    v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v3 += v28;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_1370B48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    goto LABEL_55;
  }

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

  v8 = *(a2 + 56);
  *(a1 + 40) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 56), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v11 = *(a2 + 64);
  *(a1 + 40) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 64), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_20:
  v14 = *(a2 + 72);
  *(a1 + 40) |= 8u;
  v15 = *(a1 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a1 + 72), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_23:
  *(a1 + 40) |= 0x10u;
  v17 = *(a1 + 80);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_13793F0(v19);
    *(a1 + 80) = v17;
  }

  if (*(a2 + 80))
  {
    v20 = *(a2 + 80);
  }

  else
  {
    v20 = &off_276C348;
  }

  sub_135749C(v17, v20);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_31:
  *(a1 + 40) |= 0x20u;
  v21 = *(a1 + 88);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_137936C(v23);
    *(a1 + 88) = v21;
  }

  if (*(a2 + 88))
  {
    v24 = *(a2 + 88);
  }

  else
  {
    v24 = &off_276C320;
  }

  sub_12F5A34(v21, v24);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_47;
  }

LABEL_39:
  *(a1 + 40) |= 0x40u;
  v25 = *(a1 + 96);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_191BB34(v27);
    *(a1 + 96) = v25;
  }

  if (*(a2 + 96))
  {
    v28 = *(a2 + 96);
  }

  else
  {
    v28 = &off_278B8D0;
  }

  sub_18FBF24(v25, v28);
  if ((v4 & 0x80) != 0)
  {
LABEL_47:
    *(a1 + 40) |= 0x80u;
    v29 = *(a1 + 104);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_191BBC4(v31);
      *(a1 + 104) = v29;
    }

    if (*(a2 + 104))
    {
      v32 = *(a2 + 104);
    }

    else
    {
      v32 = &off_278B980;
    }

    sub_18FC364(v29, v32);
  }

LABEL_55:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_61;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_58;
    }

LABEL_73:
    *(a1 + 40) |= 0x200u;
    v38 = *(a1 + 120);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_16F9FEC(v40);
      *(a1 + 120) = v38;
    }

    if (*(a2 + 120))
    {
      v41 = *(a2 + 120);
    }

    else
    {
      v41 = &off_277ED18;
    }

    sub_1645A7C(v38, v41);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  *(a1 + 40) |= 0x100u;
  v34 = *(a1 + 112);
  if (!v34)
  {
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    sub_137A754(v36);
    *(a1 + 112) = v34;
  }

  if (*(a2 + 112))
  {
    v37 = *(a2 + 112);
  }

  else
  {
    v37 = &off_276CBC0;
  }

  sub_136FA04(v34, v37);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_73;
  }

LABEL_58:
  if ((v4 & 0x400) != 0)
  {
LABEL_59:
    *(a1 + 128) = *(a2 + 128);
  }

LABEL_60:
  *(a1 + 40) |= v4;
LABEL_61:
  sub_225EA0C(a1 + 16, a2 + 16);
  v33 = *(a2 + 8);
  if (v33)
  {

    sub_1957EF4((a1 + 8), (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1370EA4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 0x10) != 0)
    {
      result = sub_1358338(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) != 0)
    {
      result = sub_18FCBD0(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80) == 0)
    {
      return 1;
    }

    result = sub_18FCC5C(*(a1 + 104));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1370F20(uint64_t a1)
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

void sub_1370FC0(uint64_t a1)
{
  sub_1370F20(a1);

  operator delete();
}

uint64_t sub_1370FF8(uint64_t a1)
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
    *(a1 + 36) = 0;
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

uint64_t sub_137104C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_30:
      *v30 = v21;
      *(a1 + 36) = v20 != 0;
      goto LABEL_37;
    }

    v28 = sub_19587DC(v7, v20);
    *v30 = v28;
    *(a1 + 36) = v29 != 0;
    if (!v28)
    {
      goto LABEL_47;
    }

LABEL_37:
    if (sub_195ADC0(a3, v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
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
        goto LABEL_47;
      }

      goto LABEL_37;
    }
  }

  else if (v11 == 1 && v8 == 8)
  {
    v23 = v7 + 1;
    v24 = *v7;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v23;
    v26 = (v25 << 7) + v24;
    LODWORD(v24) = v26 - 128;
    if (v25 < 0)
    {
      *v30 = sub_19587DC(v7, (v26 - 128));
      if (!*v30)
      {
        goto LABEL_47;
      }

      LODWORD(v24) = v27;
    }

    else
    {
      v23 = v7 + 2;
LABEL_34:
      *v30 = v23;
    }

    if (sub_14CB318(v24))
    {
      *(a1 + 16) |= 2u;
      *(a1 + 32) = v24;
    }

    else
    {
      sub_12E8450();
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

LABEL_47:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_13712B4(uint64_t a1, char *__dst, unint64_t *a3)
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

    v11 = *(a1 + 36);
    *v6 = 24;
    v6[1] = v11;
    v6 += 2;
  }

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

uint64_t sub_1371434(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_14;
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
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8;
  }

LABEL_13:
  v3 = v2 + ((v1 >> 1) & 2);
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

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1371504(uint64_t a1, uint64_t a2)
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
        *(a1 + 36) = *(a2 + 36);
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

void *sub_13715EC(void *a1)
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

  sub_1371678(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1371678(uint64_t a1)
{
  v3 = *(a1 + 48);
  result = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276CC90)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      sub_13560E4(v4);
      operator delete();
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      sub_136F314(v5);
      operator delete();
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      sub_19182E4(v6);
      operator delete();
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      sub_13F1158(v7);
      operator delete();
    }

    result = *(a1 + 88);
    if (result)
    {
      sub_1552968(result);

      operator delete();
    }
  }

  return result;
}

void sub_137177C(void *a1)
{
  sub_13715EC(a1);

  operator delete();
}

uint64_t sub_13717B4(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x3F) == 0)
  {
    goto LABEL_17;
  }

  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_11:
    v5 = *(a1 + 64);
    v6 = *(v5 + 8);
    result = v5 + 8;
    *(result + 16) = 0x100000000;
    *(result + 8) = 0;
    if (v6)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_13;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  result = sub_13561D4(*(a1 + 56));
  if ((v3 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  if ((v3 & 8) != 0)
  {
    result = sub_18F9A60(*(a1 + 72));
    if ((v3 & 0x10) == 0)
    {
LABEL_15:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  result = sub_13F1194(*(a1 + 80));
  if ((v3 & 0x20) != 0)
  {
LABEL_16:
    result = sub_15529A4(*(a1 + 88));
  }

LABEL_17:
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 88) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_13718B4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v8 == 26)
          {
            v35 = v7 - 1;
            while (1)
            {
              v36 = (v35 + 1);
              *v51 = v35 + 1;
              v37 = *(a1 + 40);
              if (v37 && (v38 = *(a1 + 32), v38 < *v37))
              {
                *(a1 + 32) = v38 + 1;
                v39 = *&v37[2 * v38 + 2];
              }

              else
              {
                v40 = *(a1 + 24);
                if (!v40)
                {
                  operator new();
                }

                *v42 = v41;
                v42[1] = sub_195A650;
                *v41 = 0;
                v41[1] = 0;
                v41[2] = 0;
                v39 = sub_19593CC(a1 + 24, v41);
                v36 = *v51;
              }

              v35 = sub_1958890(v39, v36, a3);
              *v51 = v35;
              if (!v35)
              {
                goto LABEL_87;
              }

              if (*a3 <= v35 || *v35 != 26)
              {
                goto LABEL_80;
              }
            }
          }
        }

        else if (v11 == 4 && v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v21 = *(a1 + 64);
          if (!v21)
          {
            v22 = *(a1 + 8);
            v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
            if (v22)
            {
              v23 = *v23;
            }

            sub_137A754(v23);
            v21 = v24;
            *(a1 + 64) = v24;
            v7 = *v51;
          }

          v16 = sub_2201E50(a3, v21, v7);
          goto LABEL_79;
        }
      }

      else if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 2u;
          v28 = *(a1 + 56);
          if (!v28)
          {
            v29 = *(a1 + 8);
            v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v30 = *v30;
            }

            v28 = sub_137936C(v30);
            *(a1 + 56) = v28;
            v7 = *v51;
          }

          v16 = sub_2201CA0(a3, v28, v7);
          goto LABEL_79;
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = sub_194DB04((a1 + 48), v14);
        v16 = sub_1958890(v15, *v51, a3);
        goto LABEL_79;
      }

      goto LABEL_72;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 == 42)
        {
          *(a1 + 16) |= 8u;
          v31 = *(a1 + 72);
          if (!v31)
          {
            v32 = *(a1 + 8);
            v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
            if (v32)
            {
              v33 = *v33;
            }

            sub_191BB34(v33);
            v31 = v34;
            *(a1 + 72) = v34;
            v7 = *v51;
          }

          v16 = sub_2201D30(a3, v31, v7);
          goto LABEL_79;
        }
      }

      else if (v11 == 6 && v8 == 50)
      {
        *(a1 + 16) |= 0x10u;
        v17 = *(a1 + 80);
        if (!v17)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          sub_13F62B0(v19);
          v17 = v20;
          *(a1 + 80) = v20;
          v7 = *v51;
        }

        v16 = sub_2201F70(a3, v17, v7);
        goto LABEL_79;
      }

      goto LABEL_72;
    }

    if (v11 == 7)
    {
      break;
    }

    if (v11 != 8 || v8 != 64)
    {
      goto LABEL_72;
    }

    v5 |= 0x40u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_41:
      *v51 = v26;
      *(a1 + 96) = v25 != 0;
      goto LABEL_80;
    }

    v49 = sub_19587DC(v7, v25);
    *v51 = v49;
    *(a1 + 96) = v50 != 0;
    if (!v49)
    {
      goto LABEL_87;
    }

LABEL_80:
    if (sub_195ADC0(a3, v51, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 58)
  {
    *(a1 + 16) |= 0x20u;
    v43 = *(a1 + 88);
    if (!v43)
    {
      v44 = *(a1 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      v43 = sub_1552C7C(v45);
      *(a1 + 88) = v43;
      v7 = *v51;
    }

    v16 = sub_22010D0(a3, v43, v7);
LABEL_79:
    *v51 = v16;
    if (!v16)
    {
      goto LABEL_87;
    }

    goto LABEL_80;
  }

LABEL_72:
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
      v7 = *v51;
    }

    v16 = sub_1952690(v8, v48, v7, a3);
    goto LABEL_79;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_87:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_1371D4C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
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

    v4 = sub_13563D0(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v10 = *(a1 + 32);
  if (v10 >= 1)
  {
    v11 = 8;
    do
    {
      v12 = *(*(a1 + 40) + v11);
      v13 = *(v12 + 23);
      if (v13 < 0 && (v13 = v12[1], v13 > 127) || (*a3 - v4 + 14) < v13)
      {
        v4 = sub_1957480(a3, 3, v12, v4);
      }

      else
      {
        *v4 = 26;
        v4[1] = v13;
        if (*(v12 + 23) < 0)
        {
          v12 = *v12;
        }

        v14 = v4 + 2;
        memcpy(v14, v12, v13);
        v4 = &v14[v13];
      }

      v11 += 8;
      --v10;
    }

    while (v10);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 64);
    *v4 = 34;
    v16 = *(v15 + 20);
    v4[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v4 + 1);
    }

    else
    {
      v17 = v4 + 2;
    }

    v4 = sub_136F760(v15, v17, a3);
    if ((v6 & 8) == 0)
    {
LABEL_23:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_23;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 72);
  *v4 = 42;
  v19 = *(v18 + 20);
  v4[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v4 + 1);
  }

  else
  {
    v20 = v4 + 2;
  }

  v4 = sub_1918B64(v18, v20, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_24:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 80);
  *v4 = 50;
  v22 = *(v21 + 20);
  v4[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v4 + 1);
  }

  else
  {
    v23 = v4 + 2;
  }

  v4 = sub_13F14C4(v21, v23, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_25:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 88);
  *v4 = 58;
  v25 = *(v24 + 20);
  v4[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v4 + 1);
  }

  else
  {
    v26 = v4 + 2;
  }

  v4 = sub_1552B20(v24, v26, a3);
  if ((v6 & 0x40) != 0)
  {
LABEL_51:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v27 = *(a1 + 96);
    *v4 = 64;
    v4[1] = v27;
    v4 += 2;
  }

LABEL_54:
  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v31)
  {
    v33 = v31;
    memcpy(v4, v32, v31);
    v4 += v33;
    return v4;
  }

  return sub_1957130(a3, v32, v31, v4);
}

uint64_t sub_1372104(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v3 = (*(a1 + 40) + 8);
    v4 = *(a1 + 32);
    do
    {
      v5 = *v3++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = *(a1 + 16);
  if ((v8 & 0x7F) != 0)
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

      v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_23;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v15 = sub_13564B8(*(a1 + 56));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }

LABEL_23:
    v16 = sub_136F968(*(a1 + 64));
    v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_13:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }

LABEL_24:
    v17 = sub_191925C(*(a1 + 72));
    v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_14:
      if ((v8 & 0x20) == 0)
      {
LABEL_16:
        v4 += (v8 >> 5) & 2;
        goto LABEL_17;
      }

LABEL_15:
      v9 = sub_1552BE8(*(a1 + 88));
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_16;
    }

LABEL_25:
    v18 = sub_13F16F0(*(a1 + 80));
    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v10 = *(a1 + 8);
  if (v10)
  {
    v19 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v4 += v20;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_137231C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201B48((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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

        goto LABEL_29;
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

      v14 = sub_137936C(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_276C320;
    }

    sub_12F5A34(v14, v17);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }

LABEL_29:
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

      sub_137A754(v20);
      *(a1 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v21 = *(a2 + 64);
    }

    else
    {
      v21 = &off_276CBC0;
    }

    sub_136FA04(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_45;
    }

LABEL_37:
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

      sub_191BB34(v24);
      *(a1 + 72) = v22;
    }

    if (*(a2 + 72))
    {
      v25 = *(a2 + 72);
    }

    else
    {
      v25 = &off_278B8D0;
    }

    sub_18FBF24(v22, v25);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(a1 + 16) |= 0x10u;
    v26 = *(a1 + 80);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_13F62B0(v28);
      *(a1 + 80) = v26;
    }

    if (*(a2 + 80))
    {
      v29 = *(a2 + 80);
    }

    else
    {
      v29 = &off_276F3C8;
    }

    sub_13F181C(v26, v29);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v9;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_13;
    }

LABEL_53:
    *(a1 + 16) |= 0x20u;
    v30 = *(a1 + 88);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_1552C7C(v32);
      *(a1 + 88) = v30;
    }

    if (*(a2 + 88))
    {
      v33 = *(a2 + 88);
    }

    else
    {
      v33 = &off_2777110;
    }

    sub_132DE2C(v30, v33);
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

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13725C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    result = sub_18FCBD0(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_13F1988(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1372624(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B3C30(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13726A4(void *a1)
{
  sub_1372624(a1);

  operator delete();
}

uint64_t sub_13726DC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1376264(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1372760(uint64_t a1, char *a2, int32x2_t *a3)
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
        v14 = v6 - 1;
        while (1)
        {
          v15 = v14 + 1;
          v26 = v14 + 1;
          v16 = *(a1 + 40);
          if (v16 && (v17 = *(a1 + 32), v17 < *v16))
          {
            *(a1 + 32) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            sub_137AD18(*(a1 + 24));
            v18 = sub_19593CC(a1 + 24, v19);
            v15 = v26;
          }

          v14 = sub_2202000(a3, v18, v15);
          v26 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_36;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v20 = v6 + 1;
      v21 = *v6;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      v22 = *v20;
      v23 = (v22 << 7) + v21;
      LODWORD(v21) = v23 - 128;
      if (v22 < 0)
      {
        v26 = sub_19587DC(v6, (v23 - 128));
        if (!v26)
        {
          return 0;
        }

        LODWORD(v21) = v24;
      }

      else
      {
        v20 = v6 + 2;
LABEL_33:
        v26 = v20;
      }

      if (sub_14CB318(v21))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v21;
      }

      else
      {
        sub_12E8450();
      }

      continue;
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

    v26 = sub_1952690(v7, v13, v6, a3);
    if (!v26)
    {
      return 0;
    }

LABEL_36:
    ;
  }

  return v26;
}

char *sub_1372978(uint64_t a1, char *__dst, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
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

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v5 = 18;
      v13 = *(v12 + 20);
      v5[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v5 + 1);
      }

      else
      {
        v14 = v5 + 2;
      }

      v5 = sub_1376654(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v5;
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

  if ((*a3 - v5) >= v18)
  {
    v20 = v18;
    memcpy(v5, v19, v18);
    v5 += v20;
    return v5;
  }

  return sub_1957130(a3, v19, v18, v5);
}

uint64_t sub_1372B3C(uint64_t a1)
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
      v7 = sub_1376924(v6);
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
    v8 = *(a1 + 48);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v9;
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

void sub_1372C1C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_13B47D8((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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
    *(result + 48) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1372CF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1376C6C(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1372D5C(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (a1 != &off_276CD30)
  {
    v6 = *(a1 + 112);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_13B30D8((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_13B3CB4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1372E64(uint64_t a1)
{
  sub_1372D5C(a1);

  operator delete();
}

uint64_t sub_1372E9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_152BAD4(v4);
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
      result = sub_1835AE0(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 16);
  if ((v9 & 7) == 0)
  {
    goto LABEL_14;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v12 + 23) & 0x80000000) == 0)
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_24;
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  **v12 = 0;
  *(v12 + 8) = 0;
  if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_24:
  v13 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v13 + 23) & 0x80000000) == 0)
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_16E5B70(*(a1 + 112));
    goto LABEL_14;
  }

  **v13 = 0;
  *(v13 + 8) = 0;
  if ((v9 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if ((v9 & 0x38) != 0)
  {
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_1372FE0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v54, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v54 + 1);
    v8 = **v54;
    if (**v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v54 + 2);
      }
    }

    *v54 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 > 6)
    {
      if (v11 == 7)
      {
        if (v8 != 58)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 1u;
        v38 = *(a1 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v39 = *v39;
        }

        v40 = (a1 + 96);
      }

      else
      {
        if (v11 != 8)
        {
          if (v11 == 9 && v8 == 72)
          {
            v13 = v7 + 1;
            v12 = *v7;
            if (v12 < 0)
            {
              v14 = *v13;
              v12 = (v14 << 7) + v12 - 128;
              if (v14 < 0)
              {
                *v54 = sub_19587DC(v7, v12);
                if (!*v54)
                {
                  goto LABEL_101;
                }

                goto LABEL_17;
              }

              v13 = v7 + 2;
            }

            *v54 = v13;
LABEL_17:
            if (v12 > 5)
            {
              sub_13B6774();
            }

            else
            {
              *(a1 + 16) |= 0x20u;
              *(a1 + 136) = v12;
            }

            goto LABEL_91;
          }

          goto LABEL_83;
        }

        if (v8 != 66)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 2u;
        v47 = *(a1 + 8);
        v39 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v39 = *v39;
        }

        v40 = (a1 + 104);
      }

      v48 = sub_194DB04(v40, v39);
      v37 = sub_1958890(v48, *v54, a3);
LABEL_90:
      *v54 = v37;
      if (!v37)
      {
        goto LABEL_101;
      }

      goto LABEL_91;
    }

    if (v11 == 5)
    {
      if (v8 == 42)
      {
        v41 = v7 - 1;
        while (1)
        {
          v42 = v41 + 1;
          *v54 = v41 + 1;
          v43 = *(a1 + 88);
          if (v43 && (v44 = *(a1 + 80), v44 < *v43))
          {
            *(a1 + 80) = v44 + 1;
            v45 = *&v43[2 * v44 + 2];
          }

          else
          {
            v46 = sub_18648BC(*(a1 + 72));
            v45 = sub_19593CC(a1 + 72, v46);
            v42 = *v54;
          }

          v41 = sub_2200230(a3, v45, v42);
          *v54 = v41;
          if (!v41)
          {
            goto LABEL_101;
          }

          if (*a3 <= v41 || *v41 != 42)
          {
            goto LABEL_91;
          }
        }
      }

      goto LABEL_83;
    }

    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_83;
    }

    v5 |= 0x10u;
    v31 = v7 + 1;
    v30 = *v7;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_55;
    }

    v32 = *v31;
    v30 = (v32 << 7) + v30 - 128;
    if ((v32 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_55:
      *v54 = v31;
      *(a1 + 128) = v30;
      goto LABEL_91;
    }

    v52 = sub_19587DC(v7, v30);
    *v54 = v52;
    *(a1 + 128) = v53;
    if (!v52)
    {
      goto LABEL_101;
    }

LABEL_91:
    if (sub_195ADC0(a3, v54, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 != 3)
    {
      if (v11 == 4 && v8 == 34)
      {
        v22 = v7 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          *v54 = v22 + 1;
          v24 = *(a1 + 64);
          if (v24 && (v25 = *(a1 + 56), v25 < *v24))
          {
            *(a1 + 56) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 48);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 48, v28);
            v23 = *v54;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v54 = v22;
          if (!v22)
          {
            goto LABEL_101;
          }

          if (*a3 <= v22 || *v22 != 34)
          {
            goto LABEL_91;
          }
        }
      }

      goto LABEL_83;
    }

    if (v8 != 26)
    {
      goto LABEL_83;
    }

    *(a1 + 16) |= 4u;
    v33 = *(a1 + 112);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      sub_16F58FC(v35);
      v33 = v36;
      *(a1 + 112) = v36;
      v7 = *v54;
    }

    v37 = sub_21F86E8(a3, v33, v7);
    goto LABEL_90;
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v5 |= 8u;
      *(a1 + 120) = *v7;
      *v54 = v7 + 8;
      goto LABEL_91;
    }
  }

  else if (v11 == 2 && v8 == 18)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = v16 + 1;
      *v54 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_1550F20(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = *v54;
      }

      v16 = sub_2200BC0(a3, v20, v17);
      *v54 = v16;
      if (!v16)
      {
        goto LABEL_101;
      }

      if (*a3 <= v16 || *v16 != 18)
      {
        goto LABEL_91;
      }
    }
  }

LABEL_83:
  if (v8)
  {
    v49 = (v8 & 7) == 4;
  }

  else
  {
    v49 = 1;
  }

  if (!v49)
  {
    v50 = *(a1 + 8);
    if (v50)
    {
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v51 = sub_11F1920((a1 + 8));
      v7 = *v54;
    }

    v37 = sub_1952690(v8, v51, v7, a3);
    goto LABEL_90;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_101:
  *v54 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v54;
}