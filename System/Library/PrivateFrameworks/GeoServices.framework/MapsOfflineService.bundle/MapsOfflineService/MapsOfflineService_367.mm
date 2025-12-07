char *sub_14DE6E4(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 44);
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

  if ((v5 & 0x20) != 0)
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

  if ((v5 & 0x10) != 0)
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
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 60);
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

  if (v5)
  {
    v23 = sub_128AEEC(a3, 6, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v23);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v29 = *(a1 + 64);
    *v23 = 56;
    v23[1] = v29;
    if (v29 > 0x7F)
    {
      v23[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v23[2] = v29 >> 7;
      v28 = v23 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v23[2];
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
      v28 = v23 + 2;
    }
  }

  else
  {
    v28 = v23;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 68);
    *v28 = 64;
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
          LODWORD(v28) = v35 >> 7;
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 72);
    *v33 = 72;
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

  if ((v5 & 2) != 0)
  {
    v37 = sub_128AEEC(a3, 10, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v37);
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v37;
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

  if ((*a3 - v37) >= v45)
  {
    v47 = v45;
    memcpy(v37, v46, v45);
    v37 += v47;
    return v37;
  }

  return sub_1957130(a3, v46, v45, v37);
}

uint64_t sub_14DEBF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_19;
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
    v11 = *(a1 + 40);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v12;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_37;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a1 + 44);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v16;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_17:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_39:
  v17 = *(a1 + 60);
  if (v17 < 0)
  {
    v18 = 11;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v18;
  if ((v1 & 0x80) != 0)
  {
LABEL_18:
    v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v1 & 0x300) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 0x200) != 0)
    {
      v9 = *(a1 + 72);
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
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v19 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_14DEE58(uint64_t a1, uint64_t a2)
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

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 56) = *(a2 + 56);
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
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_11;
    }

LABEL_32:
    *(a1 + 60) = *(a2 + 60);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x300) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 68) = *(a2 + 68);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 72) = *(a2 + 72);
    }

    *(a1 + 16) |= v4;
  }

  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14DEFE4(uint64_t a1)
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

void sub_14DF084(uint64_t a1)
{
  sub_14DEFE4(a1);

  operator delete();
}

uint64_t sub_14DF0BC(uint64_t a1)
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
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
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

uint64_t sub_14DF10C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v23 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v23, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v23 + 1);
    v8 = **v23;
    if (**v23 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v23, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v23 + 2);
      }
    }

    *v23 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 == 17)
      {
        v18 = *v7;
        v17 = v7 + 8;
        v5 |= 2u;
        *(a1 + 32) = v18;
LABEL_24:
        *v23 = v17;
        goto LABEL_29;
      }

      goto LABEL_13;
    }

    if (v11 != 1 || v8 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v16 = sub_1958890(v22, *v23, a3);
LABEL_28:
    *v23 = v16;
    if (!v16)
    {
      goto LABEL_34;
    }

LABEL_29:
    if (sub_195ADC0(a3, v23, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 25)
  {
    v19 = *v7;
    v17 = v7 + 8;
    v5 |= 4u;
    *(a1 + 40) = v19;
    goto LABEL_24;
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
      v7 = *v23;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_28;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_34:
  *v23 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v23;
}

char *sub_14DF2C0(uint64_t a1, char *__dst, unint64_t *a3)
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
        goto LABEL_12;
      }

      goto LABEL_9;
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

  v7 = *(a1 + 32);
  *v4 = 17;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
    *v4 = 25;
    *(v4 + 1) = v8;
    v4 += 9;
  }

LABEL_12:
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

uint64_t sub_14DF404(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
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
      v2 += 9;
    }

    if ((v1 & 4) != 0)
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

void sub_14DF4A8(uint64_t a1, uint64_t a2)
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
        *(a1 + 40) = *(a2 + 40);
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

uint64_t sub_14DF590(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_17;
    }
  }

  else if (v4)
  {
    goto LABEL_17;
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

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_17:
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14DF6A4(uint64_t a1)
{
  sub_14DF590(a1);

  operator delete();
}

uint64_t sub_14DF6DC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E72AC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x3F) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_17:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_21;
        }
      }

LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_25:
      v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_29;
        }
      }

LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_36;
      }

LABEL_33:
      v11 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
      }

      goto LABEL_36;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v10 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_33;
  }

LABEL_36:
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_14DF89C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 <= 3)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v22 = *(a1 + 8);
          v12 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v12 = *v12;
          }

          v13 = (a1 + 48);
          goto LABEL_53;
        }
      }

      else if (v10 == 2)
      {
        if (v7 == 18)
        {
          *(a1 + 16) |= 2u;
          v25 = *(a1 + 8);
          v12 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v12 = *v12;
          }

          v13 = (a1 + 56);
          goto LABEL_53;
        }
      }

      else if (v10 == 3 && v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v15 = *(a1 + 8);
        v12 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v12 = *v12;
        }

        v13 = (a1 + 64);
        goto LABEL_53;
      }
    }

    else if (v7 >> 3 > 5)
    {
      if (v10 == 6)
      {
        if (v7 == 50)
        {
          *(a1 + 16) |= 0x20u;
          v24 = *(a1 + 8);
          v12 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v12 = *v12;
          }

          v13 = (a1 + 88);
          goto LABEL_53;
        }
      }

      else if (v10 == 7 && v7 == 58)
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
            v21 = sub_16F5A54(*(a1 + 24));
            v20 = sub_19593CC(a1 + 24, v21);
            v17 = *v32;
          }

          v16 = sub_22002C0(a3, v20, v17);
          *v32 = v16;
          if (!v16)
          {
            break;
          }

          if (*a3 <= v16 || *v16 != 58)
          {
            goto LABEL_55;
          }
        }

LABEL_67:
        *v32 = 0;
        return *v32;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v23 = *(a1 + 8);
        v12 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v12 = *v12;
        }

        v13 = (a1 + 72);
        goto LABEL_53;
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      *(a1 + 16) |= 0x10u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 80);
LABEL_53:
      v26 = sub_194DB04(v13, v12);
      v27 = sub_1958890(v26, *v32, a3);
      goto LABEL_54;
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

      goto LABEL_67;
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

    v27 = sub_1952690(v7, v30, v6, a3);
LABEL_54:
    *v32 = v27;
    if (!v27)
    {
      goto LABEL_67;
    }

LABEL_55:
    ;
  }

  return *v32;
}

char *sub_14DFBB0(uint64_t a1, char *__dst, unint64_t *a3)
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
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_22:
  v4 = sub_128AEEC(a3, 5, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) != 0)
  {
LABEL_7:
    v4 = sub_128AEEC(a3, 6, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_8:
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
      *v4 = 58;
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

      v4 = sub_16E74A8(v9, v11, a3);
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

uint64_t sub_14DFDCC(uint64_t a1)
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
      v7 = sub_16E7590(v6);
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
  if ((v8 & 0x3F) == 0)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v17 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_27:
  v20 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_30:
  v23 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 23);
  v25 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v25 = v24;
  }

  v2 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_33:
  v26 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(v26 + 23);
  v28 = *(v26 + 8);
  if ((v27 & 0x80u) == 0)
  {
    v28 = v27;
  }

  v2 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
LABEL_16:
    v9 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  v12 = *(a1 + 8);
  if (v12)
  {
    v29 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v30 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v30 < 0)
    {
      v30 = *(v29 + 16);
    }

    v2 += v30;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_14E0030(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B326C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x3F) == 0)
  {
    goto LABEL_30;
  }

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
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 56);
  *(a1 + 16) |= 2u;
  v14 = *(a1 + 8);
  v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14)
  {
    v15 = *v15;
  }

  sub_194EA1C((a1 + 56), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v9 & 4) == 0)
  {
LABEL_8:
    if ((v9 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    v19 = *(a2 + 72);
    *(a1 + 16) |= 8u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 72), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_18:
  v16 = *(a2 + 64);
  *(a1 + 16) |= 4u;
  v17 = *(a1 + 8);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  sub_194EA1C((a1 + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v9 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((v9 & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_24:
  v22 = *(a2 + 80);
  *(a1 + 16) |= 0x10u;
  v23 = *(a1 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v24 = *v24;
  }

  sub_194EA1C((a1 + 80), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v9 & 0x20) != 0)
  {
LABEL_27:
    v25 = *(a2 + 88);
    *(a1 + 16) |= 0x20u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 88), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
  }

LABEL_30:
  v28 = *(a2 + 8);
  if (v28)
  {

    sub_1957EF4((a1 + 8), (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14E0260(uint64_t a1)
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

void sub_14E0300(uint64_t a1)
{
  sub_14E0260(a1);

  operator delete();
}

uint64_t sub_14E0338(uint64_t a1)
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
    *(a1 + 40) = 0;
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

uint64_t sub_14E038C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

      v5 |= 2u;
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
        *(a1 + 32) = v20;
        goto LABEL_35;
      }

      v28 = sub_19587DC(v7, v20);
      *v30 = v28;
      *(a1 + 32) = v29;
      if (!v28)
      {
        goto LABEL_44;
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
      *v30 = v23;
      *(a1 + 40) = v24;
      goto LABEL_35;
    }

    v26 = sub_1958770(v7, v24);
    *v30 = v26;
    *(a1 + 40) = v27;
    if (!v26)
    {
      goto LABEL_44;
    }

LABEL_35:
    if (sub_195ADC0(a3, v30, a3[11].u32[1]))
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

    v19 = sub_194DB04((a1 + 24), v18);
    v16 = sub_1958890(v19, *v30, a3);
LABEL_24:
    *v30 = v16;
    if (!v16)
    {
      goto LABEL_44;
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

LABEL_44:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_14E05BC(uint64_t a1, char *__dst, unint64_t *a3)
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
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 32);
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

uint64_t sub_14E0788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_12;
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
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
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

void *sub_14E087C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 5);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14E0900(void *a1)
{
  sub_14E087C(a1);

  operator delete();
}

uint64_t sub_14E0938(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 56) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_14E0994(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      if (v8 == 26)
      {
        v23 = v7 - 1;
        while (1)
        {
          v24 = (v23 + 1);
          *v36 = v23 + 1;
          v25 = *(a1 + 56);
          if (v25 && (v26 = *(a1 + 48), v26 < *v25))
          {
            *(a1 + 48) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            v28 = *(a1 + 40);
            if (!v28)
            {
              operator new();
            }

            *v30 = v29;
            v30[1] = sub_195A650;
            *v29 = 0;
            v29[1] = 0;
            v29[2] = 0;
            v27 = sub_19593CC(a1 + 40, v29);
            v24 = *v36;
          }

          v23 = sub_1958890(v27, v24, a3);
          *v36 = v23;
          if (!v23)
          {
            goto LABEL_61;
          }

          if (*a3 <= v23 || *v23 != 26)
          {
            goto LABEL_52;
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

    v32 = v7 + 1;
    v31 = *v7;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v33 = *v32;
    v31 = (v33 << 7) + v31 - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v32 = v7 + 2;
LABEL_51:
      *v36 = v32;
      *(a1 + 64) = v31;
      v5 = 1;
      goto LABEL_52;
    }

    v34 = sub_19587DC(v7, v31);
    *v36 = v34;
    *(a1 + 64) = v35;
    v5 = 1;
    if (!v34)
    {
      goto LABEL_61;
    }

LABEL_52:
    if (sub_195ADC0(a3, v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v17 = v7 - 1;
    while (1)
    {
      *v36 = v17 + 1;
      v18 = v17[1];
      if (v18 < 0)
      {
        v19 = (v17[2] << 7) + v18;
        v18 = (v19 - 128);
        if (v17[2] < 0)
        {
          v17 = sub_19587DC((v17 + 1), (v19 - 128));
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

      *v36 = v17;
      v21 = *(a1 + 24);
      if (v21 == *(a1 + 28))
      {
        v22 = v21 + 1;
        sub_1959094((a1 + 24), v21 + 1);
        *(*(a1 + 32) + 8 * v21) = v18;
        v17 = *v36;
      }

      else
      {
        *(*(a1 + 32) + 8 * v21) = v18;
        v22 = v21 + 1;
      }

      *(a1 + 24) = v22;
      if (!v17)
      {
        goto LABEL_61;
      }

      if (*a3 <= v17 || *v17 != 16)
      {
        goto LABEL_52;
      }
    }
  }

  if (v8 == 18)
  {
    v16 = sub_1958938((a1 + 24), v7, a3);
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
      v7 = *v36;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
LABEL_20:
    *v36 = v16;
    if (!v16)
    {
      goto LABEL_61;
    }

    goto LABEL_52;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  *v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v36;
}

char *sub_14E0CEC(uint64_t a1, char *a2, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 64);
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

  v10 = *(a1 + 24);
  if (v10 < 1)
  {
    v13 = v5;
  }

  else
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 32) + 8 * i);
      *v5 = 16;
      v5[1] = v12;
      if (v12 > 0x7F)
      {
        v5[1] = v12 | 0x80;
        v14 = v12 >> 7;
        v5[2] = v12 >> 7;
        v13 = v5 + 3;
        if (v12 >= 0x4000)
        {
          LOBYTE(v5) = v5[2];
          do
          {
            *(v13 - 1) = v5 | 0x80;
            v5 = (v14 >> 7);
            *v13++ = v14 >> 7;
            v15 = v14 >> 14;
            v14 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v13 = v5 + 2;
      }

      v5 = v13;
    }
  }

  v16 = *(a1 + 48);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 56) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || (*a3 - v13 + 14) < v19)
      {
        v13 = sub_1957480(a3, 3, v18, v13);
      }

      else
      {
        *v13 = 26;
        v13[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = v13 + 2;
        memcpy(v20, v18, v19);
        v13 = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v13;
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

  if ((*a3 - v13) >= v24)
  {
    v26 = v24;
    memcpy(v13, v25, v24);
    v13 += v26;
    return v13;
  }

  return sub_1957130(a3, v25, v24, v13);
}

uint64_t sub_14E0F6C(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 48);
  result = v2 + *(a1 + 24) + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 56) + 8);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      result += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      --v3;
    }

    while (v3);
  }

  if (*(a1 + 16))
  {
    result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_14E1044(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = &result[1];
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1959094(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    *v5 += *(a2 + 24);
    result = memcpy((size + 8 * data_low), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_1201B48(&v3[1].__r_.__value_.__r.__words[2], v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v11 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v8;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v11;
    v12 = v3[2].__r_.__value_.__l.__size_;
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  if (*(a2 + 16))
  {
    v13 = *(a2 + 64);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v3[2].__r_.__value_.__r.__words[2] = v13;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_14E1178(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1568818(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14E11F8(void *a1)
{
  sub_14E1178(a1);

  operator delete();
}

uint64_t sub_14E1230(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14E0938(v4);
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

char *sub_14E12AC(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_1527B64(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2214A9C(a3, v16, v13);
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

char *sub_14E143C(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_14E0CEC(v8, v10, a3);
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

uint64_t sub_14E157C(uint64_t a1)
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
      v7 = sub_14E0F6C(v6);
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

void sub_14E1624(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_156A708((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

uint64_t sub_14E16F8(uint64_t a1)
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

  if (a1 != &off_27747D0)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_14DEFE4(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_14DF590(v6);
      operator delete();
    }

    v7 = *(a1 + 136);
    if (v7)
    {
      sub_14E1178(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_15689A4((a1 + 96));
  sub_1568920((a1 + 72));
  sub_156889C((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14E1814(uint64_t a1)
{
  sub_14E16F8(a1);

  operator delete();
}

uint64_t sub_14E184C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14DE10C(v5);
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
      result = sub_14DDBF0(v8);
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
      result = sub_14E0338(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 16);
  if ((v12 & 7) != 0)
  {
    if (v12)
    {
      result = sub_14DF0BC(*(a1 + 120));
      if ((v12 & 2) == 0)
      {
LABEL_16:
        if ((v12 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

    result = sub_14DF6DC(*(a1 + 128));
    if ((v12 & 4) != 0)
    {
LABEL_17:
      result = sub_14E1230(*(a1 + 136));
    }
  }

LABEL_18:
  if ((v12 & 0x78) != 0)
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_14E196C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v68 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v68, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v68 + 1);
    v8 = **v68;
    if (**v68 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v68, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v68 + 2);
      }
    }

    *v68 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 <= 8)
      {
        if (v11 == 6)
        {
          if (v8 == 50)
          {
            v52 = v7 - 1;
            while (1)
            {
              v53 = v52 + 1;
              *v68 = v52 + 1;
              v54 = *(a1 + 88);
              if (v54 && (v55 = *(a1 + 80), v55 < *v54))
              {
                *(a1 + 80) = v55 + 1;
                v56 = *&v54[2 * v55 + 2];
              }

              else
              {
                v57 = sub_152788C(*(a1 + 72));
                v56 = sub_19593CC(a1 + 72, v57);
                v53 = *v68;
              }

              v52 = sub_2214C4C(a3, v56, v53);
              *v68 = v52;
              if (!v52)
              {
                goto LABEL_131;
              }

              if (*a3 <= v52 || *v52 != 50)
              {
                goto LABEL_116;
              }
            }
          }
        }

        else if (v11 == 7)
        {
          if (v8 == 58)
          {
            *(a1 + 16) |= 2u;
            v43 = *(a1 + 128);
            if (!v43)
            {
              v44 = *(a1 + 8);
              v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
              if (v44)
              {
                v45 = *v45;
              }

              v43 = sub_1527A30(v45);
              *(a1 + 128) = v43;
              v7 = *v68;
            }

            v24 = sub_2214CDC(a3, v43, v7);
            goto LABEL_115;
          }
        }

        else if (v11 == 8 && v8 == 66)
        {
          v12 = v7 - 1;
          while (1)
          {
            v13 = v12 + 1;
            *v68 = v12 + 1;
            v14 = *(a1 + 112);
            if (v14 && (v15 = *(a1 + 104), v15 < *v14))
            {
              *(a1 + 104) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              v17 = sub_1527ADC(*(a1 + 96));
              v16 = sub_19593CC(a1 + 96, v17);
              v13 = *v68;
            }

            v12 = sub_2214D6C(a3, v16, v13);
            *v68 = v12;
            if (!v12)
            {
              goto LABEL_131;
            }

            if (*a3 <= v12 || *v12 != 66)
            {
              goto LABEL_116;
            }
          }
        }

        goto LABEL_108;
      }

      if (v11 != 9)
      {
        if (v11 != 10)
        {
          if (v11 == 11 && v8 == 90)
          {
            *(a1 + 16) |= 4u;
            v21 = *(a1 + 136);
            if (!v21)
            {
              v22 = *(a1 + 8);
              v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
              if (v22)
              {
                v23 = *v23;
              }

              v21 = sub_1527C0C(v23);
              *(a1 + 136) = v21;
              v7 = *v68;
            }

            v24 = sub_2214DFC(a3, v21, v7);
            goto LABEL_115;
          }

          goto LABEL_108;
        }

        if (v8 != 80)
        {
          goto LABEL_108;
        }

        v47 = v7 + 1;
        v46 = *v7;
        if (v46 < 0)
        {
          v48 = *v47;
          v46 = (v48 << 7) + v46 - 128;
          if (v48 < 0)
          {
            *v68 = sub_19587DC(v7, v46);
            if (!*v68)
            {
              goto LABEL_131;
            }

            goto LABEL_84;
          }

          v47 = v7 + 2;
        }

        *v68 = v47;
LABEL_84:
        if (v46 > 3)
        {
          sub_156E728();
        }

        else
        {
          *(a1 + 16) |= 0x40u;
          *(a1 + 156) = v46;
        }

        goto LABEL_116;
      }

      if (v8 != 72)
      {
        goto LABEL_108;
      }

      v59 = v7 + 1;
      v58 = *v7;
      if (v58 < 0)
      {
        v60 = *v59;
        v58 = (v60 << 7) + v58 - 128;
        if (v60 < 0)
        {
          *v68 = sub_19587DC(v7, v58);
          if (!*v68)
          {
            goto LABEL_131;
          }

          goto LABEL_106;
        }

        v59 = v7 + 2;
      }

      *v68 = v59;
LABEL_106:
      if (v58 > 3)
      {
        sub_13B6774();
      }

      else
      {
        *(a1 + 16) |= 0x20u;
        *(a1 + 152) = v58;
      }

      goto LABEL_116;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          v32 = v7 - 1;
          while (1)
          {
            v33 = (v32 + 1);
            *v68 = v32 + 1;
            v34 = *(a1 + 40);
            if (v34 && (v35 = *(a1 + 32), v35 < *v34))
            {
              *(a1 + 32) = v35 + 1;
              v36 = *&v34[2 * v35 + 2];
            }

            else
            {
              v37 = *(a1 + 24);
              if (!v37)
              {
                operator new();
              }

              *v39 = v38;
              v39[1] = sub_195A650;
              *v38 = 0;
              v38[1] = 0;
              v38[2] = 0;
              v36 = sub_19593CC(a1 + 24, v38);
              v33 = *v68;
            }

            v32 = sub_1958890(v36, v33, a3);
            *v68 = v32;
            if (!v32)
            {
              goto LABEL_131;
            }

            if (*a3 <= v32 || *v32 != 10)
            {
              goto LABEL_116;
            }
          }
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        v26 = v7 - 1;
        while (1)
        {
          v27 = v26 + 1;
          *v68 = v26 + 1;
          v28 = *(a1 + 64);
          if (v28 && (v29 = *(a1 + 56), v29 < *v28))
          {
            *(a1 + 56) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            sub_1527914(*(a1 + 48));
            v30 = sub_19593CC(a1 + 48, v31);
            v27 = *v68;
          }

          v26 = sub_2214B2C(a3, v30, v27);
          *v68 = v26;
          if (!v26)
          {
            goto LABEL_131;
          }

          if (*a3 <= v26 || *v26 != 18)
          {
            goto LABEL_116;
          }
        }
      }

      goto LABEL_108;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_108;
      }

      v5 |= 8u;
      v50 = v7 + 1;
      v49 = *v7;
      if ((v49 & 0x8000000000000000) == 0)
      {
        goto LABEL_90;
      }

      v51 = *v50;
      v49 = (v51 << 7) + v49 - 128;
      if ((v51 & 0x80000000) == 0)
      {
        v50 = v7 + 2;
LABEL_90:
        *v68 = v50;
        *(a1 + 144) = v49 != 0;
        goto LABEL_116;
      }

      v66 = sub_19587DC(v7, v49);
      *v68 = v66;
      *(a1 + 144) = v67 != 0;
      if (!v66)
      {
        goto LABEL_131;
      }

      goto LABEL_116;
    }

    if (v11 == 4)
    {
      break;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_108;
    }

    v5 |= 0x10u;
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_30:
      *v68 = v18;
      *(a1 + 148) = v19;
      goto LABEL_116;
    }

    v64 = sub_1958770(v7, v19);
    *v68 = v64;
    *(a1 + 148) = v65;
    if (!v64)
    {
      goto LABEL_131;
    }

LABEL_116:
    if (sub_195ADC0(a3, v68, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 34)
  {
    *(a1 + 16) |= 1u;
    v40 = *(a1 + 120);
    if (!v40)
    {
      v41 = *(a1 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v40 = sub_15279A8(v42);
      *(a1 + 120) = v40;
      v7 = *v68;
    }

    v24 = sub_2214BBC(a3, v40, v7);
LABEL_115:
    *v68 = v24;
    if (!v24)
    {
      goto LABEL_131;
    }

    goto LABEL_116;
  }

LABEL_108:
  if (v8)
  {
    v61 = (v8 & 7) == 4;
  }

  else
  {
    v61 = 1;
  }

  if (!v61)
  {
    v62 = *(a1 + 8);
    if (v62)
    {
      v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v63 = sub_11F1920((a1 + 8));
      v7 = *v68;
    }

    v24 = sub_1952690(v8, v63, v7, a3);
    goto LABEL_115;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_131:
  *v68 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v68;
}

char *sub_14E2020(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - __dst + 14) < v9)
      {
        __dst = sub_1957480(a3, 1, v8, __dst);
      }

      else
      {
        *__dst = 10;
        __dst[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = __dst + 2;
        memcpy(__dst + 2, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
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

      __dst = sub_14DE6E4(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if ((v16 & 8) == 0)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_27:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v19 = *(a1 + 120);
    *__dst = 34;
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

    __dst = sub_14DF2C0(v19, v21, a3);
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v18 = *(a1 + 144);
  *__dst = 24;
  __dst[1] = v18;
  __dst += 2;
  if (v16)
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((v16 & 0x10) == 0)
  {
LABEL_23:
    v17 = __dst;
    goto LABEL_40;
  }

LABEL_33:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v22 = *(a1 + 148);
  *__dst = 40;
  __dst[1] = v22;
  if (v22 > 0x7F)
  {
    __dst[1] = v22 | 0x80;
    v23 = v22 >> 7;
    __dst[2] = v22 >> 7;
    v17 = __dst + 3;
    if (v22 >= 0x4000)
    {
      LOBYTE(v24) = __dst[2];
      do
      {
        *(v17 - 1) = v24 | 0x80;
        v24 = v23 >> 7;
        *v17++ = v23 >> 7;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
    }
  }

  else
  {
    v17 = __dst + 2;
  }

LABEL_40:
  v26 = *(a1 + 80);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v28 = *(*(a1 + 88) + 8 * j + 8);
      *v17 = 50;
      v29 = *(v28 + 20);
      v17[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v17 + 1);
      }

      else
      {
        v30 = v17 + 2;
      }

      v17 = sub_14DDDF8(v28, v30, a3);
    }
  }

  if ((v16 & 2) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v31 = *(a1 + 128);
    *v17 = 58;
    v32 = *(v31 + 20);
    v17[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v17 + 1);
    }

    else
    {
      v33 = v17 + 2;
    }

    v17 = sub_14DFBB0(v31, v33, a3);
  }

  v34 = *(a1 + 104);
  if (v34)
  {
    for (k = 0; k != v34; ++k)
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v36 = *(*(a1 + 112) + 8 * k + 8);
      *v17 = 66;
      v37 = *(v36 + 20);
      v17[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v17 + 1);
      }

      else
      {
        v38 = v17 + 2;
      }

      v17 = sub_14E05BC(v36, v38, a3);
    }
  }

  if ((v16 & 0x20) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v40 = *(a1 + 152);
    *v17 = 72;
    v17[1] = v40;
    if (v40 > 0x7F)
    {
      v17[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v17[2] = v40 >> 7;
      v39 = v17 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v39 - 1) = v17 | 0x80;
          v17 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v17 + 2;
    }
  }

  else
  {
    v39 = v17;
  }

  if ((v16 & 0x40) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v44 = *(a1 + 156);
    *v39 = 80;
    v39[1] = v44;
    if (v44 > 0x7F)
    {
      v39[1] = v44 | 0x80;
      v45 = v44 >> 7;
      v39[2] = v44 >> 7;
      v43 = v39 + 3;
      if (v44 >= 0x4000)
      {
        LOBYTE(v39) = v39[2];
        do
        {
          *(v43 - 1) = v39 | 0x80;
          v39 = (v45 >> 7);
          *v43++ = v45 >> 7;
          v46 = v45 >> 14;
          v45 >>= 7;
        }

        while (v46);
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

  if ((v16 & 4) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v47 = *(a1 + 136);
    *v43 = 90;
    v48 = *(v47 + 40);
    v43[1] = v48;
    if (v48 > 0x7F)
    {
      v49 = sub_19575D0(v48, v43 + 1);
    }

    else
    {
      v49 = v43 + 2;
    }

    v43 = sub_14E143C(v47, v49, a3);
  }

  v50 = *(a1 + 8);
  if ((v50 & 1) == 0)
  {
    return v43;
  }

  v52 = v50 & 0xFFFFFFFFFFFFFFFCLL;
  v53 = *(v52 + 31);
  if (v53 < 0)
  {
    v54 = *(v52 + 8);
    v53 = *(v52 + 16);
  }

  else
  {
    v54 = (v52 + 8);
  }

  if ((*a3 - v43) >= v53)
  {
    v55 = v53;
    memcpy(v43, v54, v53);
    v43 += v55;
    return v43;
  }

  return sub_1957130(a3, v54, v53, v43);
}

uint64_t sub_14E2604(uint64_t a1)
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

  v8 = *(a1 + 56);
  v9 = v4 + v8;
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
      v14 = sub_14DEBF8(v13);
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
      v21 = sub_14DDF40(v20);
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
      v28 = sub_14E0788(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 16);
  if ((v29 & 0x7F) == 0)
  {
    goto LABEL_38;
  }

  if ((v29 & 1) == 0)
  {
    if ((v29 & 2) == 0)
    {
      goto LABEL_29;
    }

LABEL_41:
    v37 = sub_14DFDCC(*(a1 + 128));
    v23 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v36 = sub_14DF404(*(a1 + 120));
  v23 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v29 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_29:
  if ((v29 & 4) != 0)
  {
LABEL_30:
    v30 = sub_14E157C(*(a1 + 136));
    v23 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_31:
  v23 += (v29 >> 2) & 2;
  if ((v29 & 0x10) != 0)
  {
    v23 += ((9 * (__clz(*(a1 + 148) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 0x20) == 0)
    {
LABEL_33:
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }
  }

  else if ((v29 & 0x20) == 0)
  {
    goto LABEL_33;
  }

  v38 = *(a1 + 152);
  v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v38 >= 0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 11;
  }

  v23 += v40;
  if ((v29 & 0x40) != 0)
  {
LABEL_34:
    v31 = *(a1 + 156);
    v32 = ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v31 >= 0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 11;
    }

    v23 += v33;
  }

LABEL_38:
  v34 = *(a1 + 8);
  if (v34)
  {
    v41 = v34 & 0xFFFFFFFFFFFFFFFCLL;
    v42 = *((v34 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v42 < 0)
    {
      v42 = *(v41 + 16);
    }

    v23 += v42;
  }

  *(a1 + 20) = v23;
  return v23;
}

void sub_14E28F8(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_156A794((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_156A820((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_156A89C((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if ((v24 & 0x7F) != 0)
  {
    if (v24)
    {
      *(a1 + 16) |= 1u;
      v26 = *(a1 + 120);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_15279A8(v28);
        *(a1 + 120) = v26;
      }

      if (*(a2 + 120))
      {
        v29 = *(a2 + 120);
      }

      else
      {
        v29 = &off_2774710;
      }

      sub_14DF4A8(v26, v29);
      if ((v24 & 2) == 0)
      {
LABEL_16:
        if ((v24 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_43;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 16) |= 2u;
    v30 = *(a1 + 128);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_1527A30(v32);
      *(a1 + 128) = v30;
    }

    if (*(a2 + 128))
    {
      v33 = *(a2 + 128);
    }

    else
    {
      v33 = &off_2774740;
    }

    sub_14E0030(v30, v33);
    if ((v24 & 4) == 0)
    {
LABEL_17:
      if ((v24 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_51;
    }

LABEL_43:
    *(a1 + 16) |= 4u;
    v34 = *(a1 + 136);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_1527C0C(v36);
      *(a1 + 136) = v34;
    }

    if (*(a2 + 136))
    {
      v37 = *(a2 + 136);
    }

    else
    {
      v37 = &off_27747A0;
    }

    sub_14E1624(v34, v37);
    if ((v24 & 8) == 0)
    {
LABEL_18:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(a1 + 144) = *(a2 + 144);
    if ((v24 & 0x10) == 0)
    {
LABEL_19:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(a1 + 148) = *(a2 + 148);
    if ((v24 & 0x20) == 0)
    {
LABEL_20:
      if ((v24 & 0x40) == 0)
      {
LABEL_22:
        *(a1 + 16) |= v24;
        goto LABEL_23;
      }

LABEL_21:
      *(a1 + 156) = *(a2 + 156);
      goto LABEL_22;
    }

LABEL_53:
    *(a1 + 152) = *(a2 + 152);
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((a1 + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_14E2C28(void *a1)
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

void sub_14E2C9C(void *a1)
{
  sub_14E2C28(a1);

  operator delete();
}

uint64_t sub_14E2CD4(uint64_t a1)
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

char *sub_14E2CFC(uint64_t a1, char *a2, int32x2_t *a3)
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
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_30:
      v23 = v19;
      *(a1 + 24) = v18;
      v5 = 1;
      goto LABEL_31;
    }

    v21 = sub_19587DC(v7, v18);
    v23 = v21;
    *(a1 + 24) = v22;
    v5 = 1;
    if (!v21)
    {
      goto LABEL_41;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v23, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v16 = v7 + 1;
    v15 = *v7;
    if (v15 < 0)
    {
      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if (v17 < 0)
      {
        v23 = sub_19587DC(v7, v15);
        if (!v23)
        {
          goto LABEL_41;
        }

        goto LABEL_25;
      }

      v16 = v7 + 2;
    }

    v23 = v16;
LABEL_25:
    if (v15 > 4)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 32) = v15;
    }

    goto LABEL_31;
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
      v7 = v23;
    }

    v23 = sub_1952690(v8, v14, v7, a3);
    if (!v23)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v23 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

char *sub_14E2EFC(uint64_t a1, char *__dst, unint64_t *a3)
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

unint64_t sub_14E30AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 32);
  if (v3 < 0)
  {
    v4 = 11;
  }

  else
  {
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v4;
LABEL_11:
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

uint64_t sub_14E316C(uint64_t a1)
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
  if (a1 != &off_2774898)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_14E2C28(v6);
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

void sub_14E322C(uint64_t a1)
{
  sub_14E316C(a1);

  operator delete();
}

uint64_t sub_14E3264(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_14E2CD4(*(result + 40));
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

char *sub_14E32C8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = v34 + 1;
    v10 = *v34;
    if (*v34 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(v34, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = v34 + 2;
      }
    }

    v34 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 == 3)
    {
      if (v10 != 24)
      {
        if (v10 != 26)
        {
          goto LABEL_14;
        }

        *&v35 = a1 + 24;
        *(&v35 + 1) = sub_14D6C7C;
        v36 = a1 + 8;
        v37 = 3;
        v18 = sub_1216588(a3, v9, &v35, v5);
LABEL_48:
        v34 = v18;
        if (!v18)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      }

      v22 = v9 - 1;
      while (1)
      {
        v34 = v22 + 1;
        v23 = v22[1];
        v24 = v22 + 2;
        if (v23 < 0)
        {
          v25 = *v24;
          v26 = (v25 << 7) + v23;
          LODWORD(v23) = v26 - 128;
          if (v25 < 0)
          {
            v34 = sub_19587DC((v22 + 1), (v26 - 128));
            if (!v34)
            {
              goto LABEL_58;
            }

            LODWORD(v23) = v29;
            goto LABEL_32;
          }

          v24 = v22 + 3;
        }

        v34 = v24;
LABEL_32:
        if (v23 > 3)
        {
          sub_1313740();
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

        v22 = v34;
        if (*a3 <= v34 || *v34 != 24)
        {
          goto LABEL_49;
        }
      }
    }

    if (v14 != 2)
    {
      break;
    }

    if (v10 != 16)
    {
      goto LABEL_14;
    }

    v6 |= 2u;
    v20 = v9 + 1;
    v19 = *v9;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v9 + 2;
LABEL_25:
      v34 = v20;
      *(a1 + 48) = v19 != 0;
      goto LABEL_49;
    }

    v32 = sub_19587DC(v9, v19);
    v34 = v32;
    *(a1 + 48) = v33 != 0;
    if (!v32)
    {
      goto LABEL_58;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v14 == 1 && v10 == 10)
  {
    *(a1 + 16) |= 1u;
    v30 = *(a1 + 40);
    if (!v30)
    {
      v31 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v8)
      {
        v31 = *v31;
      }

      v30 = sub_1527D78(v31);
      *(a1 + 40) = v30;
      v9 = v34;
    }

    v18 = sub_2214E8C(a3, v30, v9);
    goto LABEL_48;
  }

LABEL_14:
  if (v10)
  {
    v16 = (v10 & 7) == 4;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (*v8)
    {
      v17 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v17 = sub_11F1920((a1 + 8));
      v9 = v34;
    }

    v18 = sub_1952690(v10, v17, v9, a3);
    goto LABEL_48;
  }

  if (v9)
  {
    a3[10].i32[0] = v10 - 1;
  }

  else
  {
LABEL_58:
    v34 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v34;
}

char *sub_14E35E4(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 40);
    *a2 = 10;
    v7 = *(v6 + 20);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_14E2EFC(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v9 = *(a1 + 48);
    *a2 = 16;
    a2[1] = v9;
    a2 += 2;
  }

  v10 = *(a1 + 24);
  if (v10 < 1)
  {
    v13 = a2;
  }

  else
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v12 = *(*(a1 + 32) + 4 * i);
      *a2 = 24;
      a2[1] = v12;
      if (v12 > 0x7F)
      {
        a2[1] = v12 | 0x80;
        v14 = v12 >> 7;
        a2[2] = v12 >> 7;
        v13 = a2 + 3;
        if (v12 >= 0x4000)
        {
          LOBYTE(v15) = a2[2];
          do
          {
            *(v13 - 1) = v15 | 0x80;
            v15 = v14 >> 7;
            *v13++ = v14 >> 7;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v13 = a2 + 2;
      }

      a2 = v13;
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v13;
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

  if ((*a3 - v13) >= v20)
  {
    v22 = v20;
    memcpy(v13, v21, v20);
    v13 += v22;
    return v13;
  }

  return sub_1957130(a3, v21, v20, v13);
}

uint64_t sub_14E37D0(uint64_t a1)
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
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = sub_14E30AC(*(a1 + 40));
      v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v8 & 2;
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

    v7 += v13;
  }

  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_14E38C0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1958E5C(&result[1], data_low + v4);
    v7 = *(v3 + 32);
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((v7 + 4 * data_low), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      *(v3 + 16) |= 1u;
      v9 = *(v3 + 40);
      if (!v9)
      {
        v10 = *(v3 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_1527D78(v11);
        *(v3 + 40) = v9;
      }

      if (*(a2 + 40))
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = &off_2774870;
      }

      result = sub_13BB240(v9, v12);
    }

    if ((v8 & 2) != 0)
    {
      *(v3 + 48) = *(a2 + 48);
    }

    *(v3 + 16) |= v8;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4((v3 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14E39EC(uint64_t a1)
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

  if (a1 != &off_27748D0)
  {
    v5 = *(a1 + 144);
    if (v5)
    {
      sub_16E7270(v5);
      operator delete();
    }

    v6 = *(a1 + 152);
    if (v6)
    {
      sub_16E7270(v6);
      operator delete();
    }

    v7 = *(a1 + 160);
    if (v7)
    {
      sub_14E9EB0(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1568AAC((a1 + 120));
  sub_1568A28((a1 + 96));
  sub_1568A28((a1 + 72));
  sub_1347714((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14E3B08(uint64_t a1)
{
  sub_14E39EC(a1);

  operator delete();
}

uint64_t sub_14E3B40(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14F00F0(v5);
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
      result = sub_14E2CD4(v8);
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
      result = sub_14E2CD4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 128);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 136) + 8);
    do
    {
      v14 = *v13++;
      result = sub_14E3264(v14);
      --v12;
    }

    while (v12);
    *(a1 + 128) = 0;
  }

  v15 = *(a1 + 16);
  if ((v15 & 7) != 0)
  {
    if (v15)
    {
      result = sub_16E72AC(*(a1 + 144));
      if ((v15 & 2) == 0)
      {
LABEL_20:
        if ((v15 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_20;
    }

    result = sub_16E72AC(*(a1 + 152));
    if ((v15 & 4) != 0)
    {
LABEL_21:
      result = sub_14E3C7C(*(a1 + 160));
    }
  }

LABEL_22:
  v17 = *(a1 + 8);
  v16 = a1 + 8;
  *(v16 + 8) = 0;
  if (v17)
  {

    return sub_1957EA8(v16);
  }

  return result;
}

uint64_t sub_14E3C7C(uint64_t a1)
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

uint64_t sub_14E3CF8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v56 = a2;
  if (sub_195ADC0(a3, v56, a3[11].u32[1]))
  {
    return *v56;
  }

  while (1)
  {
    v6 = (*v56 + 1);
    v7 = **v56;
    if (**v56 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v56, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v56 + 2);
      }
    }

    *v56 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 5)
    {
      if (v7 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v7 == 34)
          {
            v45 = v6 - 1;
            while (1)
            {
              v46 = v45 + 1;
              *v56 = v45 + 1;
              v47 = *(a1 + 88);
              if (v47 && (v48 = *(a1 + 80), v48 < *v47))
              {
                *(a1 + 80) = v48 + 1;
                v49 = *&v47[2 * v48 + 2];
              }

              else
              {
                v50 = sub_1527D78(*(a1 + 72));
                v49 = sub_19593CC(a1 + 72, v50);
                v46 = *v56;
              }

              v45 = sub_2214E8C(a3, v49, v46);
              *v56 = v45;
              if (!v45)
              {
                goto LABEL_104;
              }

              if (*a3 <= v45 || *v45 != 34)
              {
                goto LABEL_99;
              }
            }
          }
        }

        else if (v10 == 5 && v7 == 42)
        {
          v21 = v6 - 1;
          while (1)
          {
            v22 = v21 + 1;
            *v56 = v21 + 1;
            v23 = *(a1 + 112);
            if (v23 && (v24 = *(a1 + 104), v24 < *v23))
            {
              *(a1 + 104) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v26 = sub_1527D78(*(a1 + 96));
              v25 = sub_19593CC(a1 + 96, v26);
              v22 = *v56;
            }

            v21 = sub_2214E8C(a3, v25, v22);
            *v56 = v21;
            if (!v21)
            {
              goto LABEL_104;
            }

            if (*a3 <= v21 || *v21 != 42)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 10)
        {
          v31 = v6 - 1;
          while (1)
          {
            v32 = (v31 + 1);
            *v56 = v31 + 1;
            v33 = *(a1 + 40);
            if (v33 && (v34 = *(a1 + 32), v34 < *v33))
            {
              *(a1 + 32) = v34 + 1;
              v35 = *&v33[2 * v34 + 2];
            }

            else
            {
              v36 = *(a1 + 24);
              if (!v36)
              {
                operator new();
              }

              *v38 = v37;
              v38[1] = sub_195A650;
              *v37 = 0;
              v37[1] = 0;
              v37[2] = 0;
              v35 = sub_19593CC(a1 + 24, v37);
              v32 = *v56;
            }

            v31 = sub_1958890(v35, v32, a3);
            *v56 = v31;
            if (!v31)
            {
              goto LABEL_104;
            }

            if (*a3 <= v31 || *v31 != 10)
            {
              goto LABEL_99;
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
          *v56 = v12 + 1;
          v14 = *(a1 + 64);
          if (v14 && (v15 = *(a1 + 56), v15 < *v14))
          {
            *(a1 + 56) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_1528744(*(a1 + 48));
            v16 = sub_19593CC(a1 + 48, v17);
            v13 = *v56;
          }

          v12 = sub_21FCC40(a3, v16, v13);
          *v56 = v12;
          if (!v12)
          {
            goto LABEL_104;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_99;
          }
        }
      }

      goto LABEL_91;
    }

    if (v7 >> 3 <= 7)
    {
      if (v10 == 6)
      {
        if (v7 == 50)
        {
          v39 = v6 - 1;
          while (1)
          {
            v40 = v39 + 1;
            *v56 = v39 + 1;
            v41 = *(a1 + 136);
            if (v41 && (v42 = *(a1 + 128), v42 < *v41))
            {
              *(a1 + 128) = v42 + 1;
              v43 = *&v41[2 * v42 + 2];
            }

            else
            {
              v44 = sub_1527DF4(*(a1 + 120));
              v43 = sub_19593CC(a1 + 120, v44);
              v40 = *v56;
            }

            v39 = sub_2214F1C(a3, v43, v40);
            *v56 = v39;
            if (!v39)
            {
              goto LABEL_104;
            }

            if (*a3 <= v39 || *v39 != 50)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v10 == 7 && v7 == 58)
      {
        *(a1 + 16) |= 1u;
        v18 = *(a1 + 144);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_16F5A54(v20);
          *(a1 + 144) = v18;
          goto LABEL_89;
        }

        goto LABEL_90;
      }

      goto LABEL_91;
    }

    if (v10 == 8)
    {
      break;
    }

    if (v10 != 9 || v7 != 74)
    {
      goto LABEL_91;
    }

    *(a1 + 16) |= 4u;
    v27 = *(a1 + 160);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_15280F0(v29);
      *(a1 + 160) = v27;
      v6 = *v56;
    }

    v30 = sub_2214FAC(a3, v27, v6);
LABEL_98:
    *v56 = v30;
    if (!v30)
    {
      goto LABEL_104;
    }

LABEL_99:
    if (sub_195ADC0(a3, v56, a3[11].u32[1]))
    {
      return *v56;
    }
  }

  if (v7 == 66)
  {
    *(a1 + 16) |= 2u;
    v18 = *(a1 + 152);
    if (!v18)
    {
      v51 = *(a1 + 8);
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51)
      {
        v52 = *v52;
      }

      v18 = sub_16F5A54(v52);
      *(a1 + 152) = v18;
LABEL_89:
      v6 = *v56;
    }

LABEL_90:
    v30 = sub_22002C0(a3, v18, v6);
    goto LABEL_98;
  }

LABEL_91:
  if (v7)
  {
    v53 = (v7 & 7) == 4;
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
      v6 = *v56;
    }

    v30 = sub_1952690(v7, v55, v6, a3);
    goto LABEL_98;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v56;
  }

LABEL_104:
  *v56 = 0;
  return *v56;
}

char *sub_14E4254(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - __dst + 14) < v9)
      {
        __dst = sub_1957480(a3, 1, v8, __dst);
      }

      else
      {
        *__dst = 10;
        __dst[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = __dst + 2;
        memcpy(v10, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
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

      __dst = sub_14F04AC(v13, v15, a3);
    }
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 88) + 8 * j + 8);
      *__dst = 34;
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

      __dst = sub_14E2EFC(v18, v20, a3);
    }
  }

  v21 = *(a1 + 104);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 112) + 8 * k + 8);
      *__dst = 42;
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

      __dst = sub_14E2EFC(v23, v25, a3);
    }
  }

  v26 = *(a1 + 128);
  if (v26)
  {
    for (m = 0; m != v26; ++m)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v28 = *(*(a1 + 136) + 8 * m + 8);
      *__dst = 50;
      v29 = *(v28 + 20);
      __dst[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, __dst + 1);
      }

      else
      {
        v30 = __dst + 2;
      }

      __dst = sub_14E35E4(v28, v30, a3);
    }
  }

  v31 = *(a1 + 16);
  if (v31)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v32 = *(a1 + 144);
    *__dst = 58;
    v33 = *(v32 + 20);
    __dst[1] = v33;
    if (v33 > 0x7F)
    {
      v34 = sub_19575D0(v33, __dst + 1);
    }

    else
    {
      v34 = __dst + 2;
    }

    __dst = sub_16E74A8(v32, v34, a3);
    if ((v31 & 2) == 0)
    {
LABEL_46:
      if ((v31 & 4) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_46;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v35 = *(a1 + 152);
  *__dst = 66;
  v36 = *(v35 + 20);
  __dst[1] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, __dst + 1);
  }

  else
  {
    v37 = __dst + 2;
  }

  __dst = sub_16E74A8(v35, v37, a3);
  if ((v31 & 4) != 0)
  {
LABEL_60:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v38 = *(a1 + 160);
    *__dst = 74;
    v39 = *(v38 + 20);
    __dst[1] = v39;
    if (v39 > 0x7F)
    {
      v40 = sub_19575D0(v39, __dst + 1);
    }

    else
    {
      v40 = __dst + 2;
    }

    __dst = sub_14EA120(v38, v40, a3);
  }

LABEL_66:
  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return __dst;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFCLL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if ((*a3 - __dst) >= v44)
  {
    v46 = v44;
    memcpy(__dst, v45, v44);
    __dst += v46;
    return __dst;
  }

  return sub_1957130(a3, v45, v44, __dst);
}

uint64_t sub_14E46F4(uint64_t a1)
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

  v8 = *(a1 + 56);
  v9 = v4 + v8;
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
      v14 = sub_14F0760(v13);
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
      v21 = sub_14E30AC(v20);
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
      v28 = sub_14E30AC(v27);
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
      v35 = sub_14E37D0(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 16);
  if ((v36 & 7) != 0)
  {
    if (v36)
    {
      v40 = sub_16E7590(*(a1 + 144));
      v30 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v36 & 2) == 0)
      {
LABEL_35:
        if ((v36 & 4) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    else if ((v36 & 2) == 0)
    {
      goto LABEL_35;
    }

    v41 = sub_16E7590(*(a1 + 152));
    v30 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 4) != 0)
    {
LABEL_36:
      v37 = sub_14EA208(*(a1 + 160));
      v30 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_37:
  v38 = *(a1 + 8);
  if (v38)
  {
    v42 = v38 & 0xFFFFFFFFFFFFFFFCLL;
    v43 = *((v38 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v43 < 0)
    {
      v43 = *(v42 + 16);
    }

    v30 += v43;
  }

  *(a1 + 20) = v30;
  return v30;
}

void sub_14E4990(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1348320((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_156A918((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_156A918((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
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
    sub_156A994((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 16);
  if ((v29 & 7) != 0)
  {
    if (v29)
    {
      *(a1 + 16) |= 1u;
      v30 = *(a1 + 144);
      if (!v30)
      {
        v31 = *(a1 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        v30 = sub_16F5A54(v32);
        *(a1 + 144) = v30;
      }

      if (*(a2 + 144))
      {
        v33 = *(a2 + 144);
      }

      else
      {
        v33 = &off_277E6F0;
      }

      sub_12F5A34(v30, v33);
      if ((v29 & 2) == 0)
      {
LABEL_19:
        if ((v29 & 4) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 16) |= 2u;
    v34 = *(a1 + 152);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_16F5A54(v36);
      *(a1 + 152) = v34;
    }

    if (*(a2 + 152))
    {
      v37 = *(a2 + 152);
    }

    else
    {
      v37 = &off_277E6F0;
    }

    sub_12F5A34(v34, v37);
    if ((v29 & 4) != 0)
    {
LABEL_37:
      *(a1 + 16) |= 4u;
      v38 = *(a1 + 160);
      if (!v38)
      {
        v39 = *(a1 + 8);
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v40 = *v40;
        }

        v38 = sub_15280F0(v40);
        *(a1 + 160) = v38;
      }

      if (*(a2 + 160))
      {
        v41 = *(a2 + 160);
      }

      else
      {
        v41 = &off_2774C18;
      }

      sub_12F5A34(v38, v41);
    }
  }

LABEL_45:
  v42 = *(a2 + 8);
  if (v42)
  {

    sub_1957EF4((a1 + 8), (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14E4CC8(uint64_t a1)
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

void sub_14E4D68(uint64_t a1)
{
  sub_14E4CC8(a1);

  operator delete();
}

uint64_t sub_14E4DA0(uint64_t a1)
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

  if ((v1 & 0x3E) != 0)
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

uint64_t sub_14E4DF4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_50;
      }

      v21 = v7 + 1;
      v20 = *v7;
      if (v20 < 0)
      {
        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = v7 + 2;
          goto LABEL_32;
        }

        *v41 = sub_19587DC(v7, v20);
        if (!*v41)
        {
          goto LABEL_75;
        }
      }

      else
      {
LABEL_32:
        *v41 = v21;
      }

      if (v20 > 3)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 40) = v20;
      }

      goto LABEL_58;
    }

    if (v11 != 2)
    {
      if (v11 == 3 && v8 == 24)
      {
        v14 = v7 + 1;
        v13 = *v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if (v15 < 0)
        {
          *v41 = sub_19587DC(v7, v13);
          if (!*v41)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_18:
          *v41 = v14;
        }

        if (v13 > 1)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 44) = v13;
        }

        goto LABEL_58;
      }

      goto LABEL_50;
    }

    if (v8 != 16)
    {
      goto LABEL_50;
    }

    v5 |= 2u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_44;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_44:
      *v41 = v27;
      *(a1 + 32) = v26;
      goto LABEL_58;
    }

    v37 = sub_19587DC(v7, v26);
    *v41 = v37;
    *(a1 + 32) = v38;
    if (!v37)
    {
      goto LABEL_75;
    }

LABEL_58:
    if (sub_195ADC0(a3, v41, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_50;
    }

    v5 |= 0x10u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_39:
      *v41 = v24;
      *(a1 + 48) = v23 != 0;
      goto LABEL_58;
    }

    v35 = sub_19587DC(v7, v23);
    *v41 = v35;
    *(a1 + 48) = v36 != 0;
    if (!v35)
    {
      goto LABEL_75;
    }

    goto LABEL_58;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_50;
    }

    v5 |= 0x20u;
    v30 = v7 + 1;
    v29 = *v7;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v31 = *v30;
    v29 = (v31 << 7) + v29 - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_49:
      *v41 = v30;
      *(a1 + 49) = v29 != 0;
      goto LABEL_58;
    }

    v39 = sub_19587DC(v7, v29);
    *v41 = v39;
    *(a1 + 49) = v40 != 0;
    if (!v39)
    {
      goto LABEL_75;
    }

    goto LABEL_58;
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 24), v17);
    v19 = sub_1958890(v18, *v41, a3);
LABEL_57:
    *v41 = v19;
    if (!v19)
    {
      goto LABEL_75;
    }

    goto LABEL_58;
  }

LABEL_50:
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

    v19 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_57;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_75:
  *v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v41;
}

char *sub_14E51A8(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 44);
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

    v22 = *(a1 + 48);
    *v15 = 32;
    v15[1] = v22;
    v15 += 2;
    if ((v5 & 0x20) == 0)
    {
LABEL_30:
      if ((v5 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_30;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v23 = *(a1 + 49);
  *v15 = 40;
  v15[1] = v23;
  v15 += 2;
  if (v5)
  {
LABEL_31:
    v15 = sub_128AEEC(a3, 6, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v15);
  }

LABEL_32:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v15;
  }

  v24 = v20 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v15) >= v25)
  {
    v27 = v25;
    memcpy(v15, v26, v25);
    v15 += v27;
    return v15;
  }

  return sub_1957130(a3, v26, v25, v15);
}

uint64_t sub_14E5478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_17;
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
    goto LABEL_9;
  }

LABEL_10:
  if ((v1 & 4) != 0)
  {
    v12 = *(a1 + 40);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v13;
    if ((v1 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if ((v1 & 8) != 0)
  {
LABEL_12:
    v7 = *(a1 + 44);
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

LABEL_16:
  v3 = v2 + ((v1 >> 4) & 2) + ((v1 >> 3) & 2);
LABEL_17:
  v10 = *(a1 + 8);
  if (v10)
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v3 += v15;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_14E55B4(uint64_t a1, uint64_t a2)
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

        goto LABEL_18;
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

      goto LABEL_19;
    }

LABEL_18:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 44) = *(a2 + 44);
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
      *(a1 + 49) = *(a2 + 49);
      goto LABEL_9;
    }

LABEL_20:
    *(a1 + 48) = *(a2 + 48);
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

uint64_t sub_14E56CC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
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

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  sub_1568B30((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14E57B8(uint64_t a1)
{
  sub_14E56CC(a1);

  operator delete();
}

uint64_t sub_14E57F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14E4DA0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0xF) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_15:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }

LABEL_23:
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

      goto LABEL_26;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_23;
  }

LABEL_26:
  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 72) = 0;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_14E594C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v14 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v14 = *v14;
        }

        v15 = (a1 + 48);
      }

      else if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 2u;
        v24 = *(a1 + 8);
        v14 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v14 = *v14;
        }

        v15 = (a1 + 56);
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 4u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 64);
      }

      goto LABEL_43;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_52;
      }

      *(a1 + 16) |= 8u;
      v23 = *(a1 + 8);
      v14 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v14 = *v14;
      }

      v15 = (a1 + 72);
LABEL_43:
      v25 = sub_194DB04(v15, v14);
      v26 = sub_1958890(v25, *v35, a3);
      goto LABEL_44;
    }

    if (v11 != 5)
    {
      break;
    }

    if (v8 != 40)
    {
      goto LABEL_52;
    }

    v5 |= 0x10u;
    v28 = v7 + 1;
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_51:
      *v35 = v28;
      *(a1 + 80) = v27;
      goto LABEL_45;
    }

    v33 = sub_19587DC(v7, v27);
    *v35 = v33;
    *(a1 + 80) = v34;
    if (!v33)
    {
      goto LABEL_64;
    }

LABEL_45:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6 && v8 == 50)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = v16 + 1;
      *v35 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_1527F5C(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = *v35;
      }

      v16 = sub_221503C(a3, v20, v17);
      *v35 = v16;
      if (!v16)
      {
        goto LABEL_64;
      }

      if (*a3 <= v16 || *v16 != 50)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_52:
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

    v26 = sub_1952690(v8, v32, v7, a3);
LABEL_44:
    *v35 = v26;
    if (!v26)
    {
      goto LABEL_64;
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_14E5C68(uint64_t a1, char *__dst, unint64_t *a3)
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
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = sub_128AEEC(a3, 4, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 80);
  *v4 = 40;
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

LABEL_18:
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
      *v7 = 50;
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

      v7 = sub_14E51A8(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v20)
  {
    v22 = v20;
    memcpy(v7, v21, v20);
    v7 += v22;
    return v7;
  }

  return sub_1957130(a3, v21, v20, v7);
}

uint64_t sub_14E5EB4(uint64_t a1)
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
      v7 = sub_14E5478(v6);
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
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_16;
  }

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

LABEL_24:
      v17 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 8) == 0)
      {
LABEL_14:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_27;
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
  if ((v8 & 4) != 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  if ((v8 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_27:
  v20 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_16:
  v9 = *(a1 + 8);
  if (v9)
  {
    v23 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v2 += v24;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_14E60B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156AA20((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x1F) != 0)
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

        goto LABEL_22;
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

      goto LABEL_25;
    }

LABEL_22:
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
LABEL_11:
        *(a1 + 16) |= v9;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_25:
    v20 = *(a2 + 72);
    *(a1 + 16) |= 8u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 72), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

double sub_14E628C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26E93C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0u;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0u;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0u;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0u;
  *(a1 + 200) = a2;
  *(a1 + 208) = 0u;
  *(a1 + 224) = a2;
  *(a1 + 232) = 0u;
  *(a1 + 248) = a2;
  *(a1 + 256) = 0u;
  *(a1 + 272) = a2;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = a2;
  *(a1 + 312) = a2;
  *(a1 + 320) = 0u;
  *(a1 + 336) = a2;
  *(a1 + 344) = 0u;
  *(a1 + 360) = a2;
  *(a1 + 368) = 0u;
  *(a1 + 384) = a2;
  *(a1 + 392) = 0u;
  *(a1 + 408) = a2;
  *(a1 + 416) = 0u;
  *(a1 + 432) = a2;
  *(a1 + 440) = 0u;
  *(a1 + 456) = a2;
  *(a1 + 464) = 0u;
  *(a1 + 480) = a2;
  *(a1 + 488) = 0u;
  *(a1 + 504) = a2;
  *(a1 + 512) = 0u;
  *(a1 + 528) = a2;
  *(a1 + 536) = 0u;
  *(a1 + 552) = &qword_278E990;
  *(a1 + 560) = &qword_278E990;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 8086;
  return result;
}

uint64_t sub_14E63B0(uint64_t a1)
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

  if (*(a1 + 552) != &qword_278E990)
  {
    sub_194E89C((a1 + 552));
  }

  if (*(a1 + 560) != &qword_278E990)
  {
    sub_194E89C((a1 + 560));
  }

  if (a1 != &off_2774978)
  {
    v5 = *(a1 + 568);
    if (v5)
    {
      sub_14D9BD4(v5);
      operator delete();
    }

    v6 = *(a1 + 576);
    if (v6)
    {
      sub_14E16F8(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_15692EC((a1 + 528));
  sub_1956AFC((a1 + 504));
  sub_1569268((a1 + 480));
  sub_15691E4((a1 + 456));
  sub_1956AFC((a1 + 432));
  sub_1569160((a1 + 408));
  sub_15690DC((a1 + 384));
  sub_1569058((a1 + 360));
  sub_1568FD4((a1 + 336));
  sub_1568F50((a1 + 312));
  sub_1956ABC(a1 + 296);
  sub_1568ECC((a1 + 272));
  sub_1568E48((a1 + 248));
  sub_1568DC4((a1 + 224));
  sub_13473FC((a1 + 200));
  sub_1568D40((a1 + 176));
  sub_1568CBC((a1 + 152));
  sub_1568C38((a1 + 128));
  sub_13473FC((a1 + 104));
  sub_13473FC((a1 + 80));
  sub_1568BB4((a1 + 56));
  sub_1956AFC((a1 + 32));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14E65B0(uint64_t a1)
{
  sub_14E63B0(a1);

  operator delete();
}

uint64_t sub_14E65E8(uint64_t a1)
{
  sub_12A41D0(a1 + 32);
  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 72) + 8);
    do
    {
      v4 = *v3++;
      sub_14D9770(v4);
      --v2;
    }

    while (v2);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 88);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 96) + 8);
    do
    {
      v7 = *v6++;
      sub_1531498(v7);
      --v5;
    }

    while (v5);
    *(a1 + 88) = 0;
  }

  v8 = *(a1 + 112);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 120) + 8);
    do
    {
      v10 = *v9++;
      sub_1531498(v10);
      --v8;
    }

    while (v8);
    *(a1 + 112) = 0;
  }

  v11 = *(a1 + 136);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 144) + 8);
    do
    {
      v13 = *v12++;
      sub_14DA15C(v13);
      --v11;
    }

    while (v11);
    *(a1 + 136) = 0;
  }

  v14 = *(a1 + 160);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 168) + 8);
    do
    {
      v16 = *v15++;
      sub_14DA638(v16);
      --v14;
    }

    while (v14);
    *(a1 + 160) = 0;
  }

  v17 = *(a1 + 184);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 192) + 8);
    do
    {
      v19 = *v18++;
      sub_14DAB14(v19);
      --v17;
    }

    while (v17);
    *(a1 + 184) = 0;
  }

  v20 = *(a1 + 208);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 216) + 8);
    do
    {
      v22 = *v21++;
      sub_1531498(v22);
      --v20;
    }

    while (v20);
    *(a1 + 208) = 0;
  }

  v23 = *(a1 + 232);
  if (v23 >= 1)
  {
    v24 = (*(a1 + 240) + 8);
    do
    {
      v25 = *v24++;
      sub_14DB4CC(v25);
      --v23;
    }

    while (v23);
    *(a1 + 232) = 0;
  }

  v26 = *(a1 + 256);
  if (v26 >= 1)
  {
    v27 = (*(a1 + 264) + 8);
    do
    {
      v28 = *v27++;
      sub_14DB9A8(v28);
      --v26;
    }

    while (v26);
    *(a1 + 256) = 0;
  }

  v29 = *(a1 + 280);
  if (v29 >= 1)
  {
    v30 = (*(a1 + 288) + 8);
    do
    {
      v31 = *v30++;
      sub_14DAFF0(v31);
      --v29;
    }

    while (v29);
    *(a1 + 280) = 0;
  }

  *(a1 + 296) = 0;
  v32 = *(a1 + 320);
  if (v32 >= 1)
  {
    v33 = (*(a1 + 328) + 8);
    do
    {
      v34 = *v33++;
      sub_14DBE84(v34);
      --v32;
    }

    while (v32);
    *(a1 + 320) = 0;
  }

  v35 = *(a1 + 344);
  if (v35 >= 1)
  {
    v36 = (*(a1 + 352) + 8);
    do
    {
      v37 = *v36++;
      sub_14DC3A8(v37);
      --v35;
    }

    while (v35);
    *(a1 + 344) = 0;
  }

  v38 = *(a1 + 368);
  if (v38 >= 1)
  {
    v39 = (*(a1 + 376) + 8);
    do
    {
      v40 = *v39++;
      sub_14DC834(v40);
      --v38;
    }

    while (v38);
    *(a1 + 368) = 0;
  }

  v41 = *(a1 + 392);
  if (v41 >= 1)
  {
    v42 = (*(a1 + 400) + 8);
    do
    {
      v43 = *v42++;
      sub_14DCD1C(v43);
      --v41;
    }

    while (v41);
    *(a1 + 392) = 0;
  }

  v44 = *(a1 + 416);
  if (v44 >= 1)
  {
    v45 = (*(a1 + 424) + 8);
    do
    {
      v46 = *v45++;
      sub_14DD204(v46);
      --v44;
    }

    while (v44);
    *(a1 + 416) = 0;
  }

  sub_12A41D0(a1 + 432);
  v47 = *(a1 + 464);
  if (v47 >= 1)
  {
    v48 = (*(a1 + 472) + 8);
    do
    {
      v49 = *v48++;
      sub_14DD6E4(v49);
      --v47;
    }

    while (v47);
    *(a1 + 464) = 0;
  }

  v50 = *(a1 + 488);
  if (v50 >= 1)
  {
    v51 = (*(a1 + 496) + 8);
    do
    {
      v52 = *v51++;
      sub_14E3B40(v52);
      --v50;
    }

    while (v50);
    *(a1 + 488) = 0;
  }

  result = sub_12A41D0(a1 + 504);
  v54 = *(a1 + 536);
  if (v54 >= 1)
  {
    v55 = (*(a1 + 544) + 8);
    do
    {
      v56 = *v55++;
      result = sub_14E57F0(v56);
      --v54;
    }

    while (v54);
    *(a1 + 536) = 0;
  }

  v57 = *(a1 + 16);
  if ((v57 & 0xF) == 0)
  {
    goto LABEL_79;
  }

  if (v57)
  {
    v60 = *(a1 + 552) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v60 + 23) < 0)
    {
      **v60 = 0;
      *(v60 + 8) = 0;
      if ((v57 & 2) != 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      *v60 = 0;
      *(v60 + 23) = 0;
      if ((v57 & 2) != 0)
      {
        goto LABEL_97;
      }
    }

LABEL_76:
    if ((v57 & 4) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_101;
  }

  if ((v57 & 2) == 0)
  {
    goto LABEL_76;
  }

LABEL_97:
  v61 = *(a1 + 560) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v61 + 23) < 0)
  {
    **v61 = 0;
    *(v61 + 8) = 0;
    if ((v57 & 4) != 0)
    {
      goto LABEL_101;
    }

LABEL_77:
    if ((v57 & 8) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  *v61 = 0;
  *(v61 + 23) = 0;
  if ((v57 & 4) == 0)
  {
    goto LABEL_77;
  }

LABEL_101:
  result = sub_14D9C80(*(a1 + 568));
  if ((v57 & 8) != 0)
  {
LABEL_78:
    result = sub_14E184C(*(a1 + 576));
  }

LABEL_79:
  if ((v57 & 0xF0) != 0)
  {
    *(a1 + 584) = 0;
    *(a1 + 589) = 0;
  }

  if ((v57 & 0xFF00) != 0)
  {
    *(a1 + 612) = 0;
    *(a1 + 597) = 0u;
  }

  if ((v57 & 0xFF0000) != 0)
  {
    *(a1 + 620) = 0;
  }

  if (HIBYTE(v57))
  {
    *(a1 + 644) = 0;
    *(a1 + 628) = 0u;
  }

  if ((*(a1 + 20) & 0x7F) != 0)
  {
    *(a1 + 648) = 0u;
    *(a1 + 664) = 8086;
  }

  v59 = *(a1 + 8);
  v58 = (a1 + 8);
  v58[1] = 0;
  if (v59)
  {

    return sub_1957EA8(v58);
  }

  return result;
}

char *sub_14E6B90(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 596);
    *v4 = 40;
    v4[1] = v7;
    v4 += 2;
  }

  v8 = *(a1 + 40);
  if (v8 >= 1)
  {
    v9 = 8;
    do
    {
      v10 = *(*(a1 + 48) + v9);
      v11 = *(v10 + 23);
      if (v11 < 0 && (v11 = v10[1], v11 > 127) || (*a3 - v4 + 14) < v11)
      {
        v4 = sub_1957480(a3, 6, v10, v4);
      }

      else
      {
        *v4 = 50;
        v4[1] = v11;
        if (*(v10 + 23) < 0)
        {
          v10 = *v10;
        }

        v12 = v4 + 2;
        memcpy(v4 + 2, v10, v11);
        v4 = &v12[v11];
      }

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 597);
    *v4 = 56;
    v4[1] = v13;
    v4 += 2;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 584);
    *v4 = 64;
    v4[1] = v15;
    if (v15 > 0x7F)
    {
      v4[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v4[2] = v15 >> 7;
      v14 = v4 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v17) = v4[2];
        do
        {
          *(v14 - 1) = v17 | 0x80;
          v17 = v16 >> 7;
          *v14++ = v16 >> 7;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v14 = v4 + 2;
    }
  }

  else
  {
    v14 = v4;
  }

  v19 = *(a1 + 64);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v21 = *(*(a1 + 72) + 8 * i + 8);
      *v14 = 74;
      v22 = *(v21 + 20);
      v14[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v14 + 1);
      }

      else
      {
        v23 = v14 + 2;
      }

      v14 = sub_14D99D8(v21, v23, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v25 = *(a1 + 588);
    *v14 = 80;
    v14[1] = v25;
    if (v25 > 0x7F)
    {
      v14[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v14[2] = v25 >> 7;
      v24 = v14 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v14) = v14[2];
        do
        {
          *(v24 - 1) = v14 | 0x80;
          v14 = (v26 >> 7);
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v14 + 2;
    }
  }

  else
  {
    v24 = v14;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 592);
    *v24 = 88;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v24) = v24[2];
        do
        {
          *(v28 - 1) = v24 | 0x80;
          v24 = (v30 >> 7);
          *v28++ = v30 >> 7;
          v31 = v30 >> 14;
          v30 >>= 7;
        }

        while (v31);
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

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v32 = *(a1 + 598);
    *v28 = 96;
    v28[1] = v32;
    v28 += 2;
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 600);
    *v28 = 104;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v36) = v28[2];
        do
        {
          *(v33 - 1) = v36 | 0x80;
          v36 = v35 >> 7;
          *v33++ = v35 >> 7;
          v37 = v35 >> 14;
          v35 >>= 7;
        }

        while (v37);
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

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v39 = *(a1 + 604);
    *v33 = 112;
    v33[1] = v39;
    if (v39 > 0x7F)
    {
      v33[1] = v39 | 0x80;
      v40 = v39 >> 7;
      v33[2] = v39 >> 7;
      v38 = v33 + 3;
      if (v39 >= 0x4000)
      {
        LOBYTE(v33) = v33[2];
        do
        {
          *(v38 - 1) = v33 | 0x80;
          v33 = (v40 >> 7);
          *v38++ = v40 >> 7;
          v41 = v40 >> 14;
          v40 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v38 = v33 + 2;
    }
  }

  else
  {
    v38 = v33;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v38)
    {
      v38 = sub_225EB68(a3, v38);
    }

    v42 = *(a1 + 568);
    *v38 = 122;
    v43 = *(v42 + 20);
    v38[1] = v43;
    if (v43 > 0x7F)
    {
      v44 = sub_19575D0(v43, v38 + 1);
    }

    else
    {
      v44 = v38 + 2;
    }

    v38 = sub_14D9EB4(v42, v44, a3);
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v38)
    {
      v38 = sub_225EB68(a3, v38);
    }

    v46 = *(a1 + 608);
    *v38 = 384;
    v38[2] = v46;
    if (v46 > 0x7F)
    {
      v38[2] = v46 | 0x80;
      v47 = v46 >> 7;
      v38[3] = v46 >> 7;
      v45 = v38 + 4;
      if (v46 >= 0x4000)
      {
        LOBYTE(v38) = v38[3];
        do
        {
          *(v45 - 1) = v38 | 0x80;
          v38 = (v47 >> 7);
          *v45++ = v47 >> 7;
          v48 = v47 >> 14;
          v47 >>= 7;
        }

        while (v48);
      }
    }

    else
    {
      v45 = v38 + 3;
    }
  }

  else
  {
    v45 = v38;
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v50 = *(a1 + 612);
    *v45 = 392;
    v45[2] = v50;
    if (v50 > 0x7F)
    {
      v45[2] = v50 | 0x80;
      v51 = v50 >> 7;
      v45[3] = v50 >> 7;
      v49 = v45 + 4;
      if (v50 >= 0x4000)
      {
        LOBYTE(v45) = v45[3];
        do
        {
          *(v49 - 1) = v45 | 0x80;
          v45 = (v51 >> 7);
          *v49++ = v51 >> 7;
          v52 = v51 >> 14;
          v51 >>= 7;
        }

        while (v52);
      }
    }

    else
    {
      v49 = v45 + 3;
    }
  }

  else
  {
    v49 = v45;
  }

  v53 = *(a1 + 88);
  if (v53)
  {
    for (j = 0; j != v53; ++j)
    {
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v55 = *(*(a1 + 96) + 8 * j + 8);
      *v49 = 402;
      v56 = *(v55 + 56);
      v49[2] = v56;
      if (v56 > 0x7F)
      {
        v57 = sub_19575D0(v56, v49 + 2);
      }

      else
      {
        v57 = v49 + 3;
      }

      v49 = sub_15317E4(v55, v57, a3);
    }
  }

  v58 = *(a1 + 112);
  if (v58)
  {
    for (k = 0; k != v58; ++k)
    {
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v60 = *(*(a1 + 120) + 8 * k + 8);
      *v49 = 410;
      v61 = *(v60 + 56);
      v49[2] = v61;
      if (v61 > 0x7F)
      {
        v62 = sub_19575D0(v61, v49 + 2);
      }

      else
      {
        v62 = v49 + 3;
      }

      v49 = sub_15317E4(v60, v62, a3);
    }
  }

  v63 = *(a1 + 136);
  if (v63)
  {
    for (m = 0; m != v63; ++m)
    {
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v65 = *(*(a1 + 144) + 8 * m + 8);
      *v49 = 418;
      v66 = *(v65 + 20);
      v49[2] = v66;
      if (v66 > 0x7F)
      {
        v67 = sub_19575D0(v66, v49 + 2);
      }

      else
      {
        v67 = v49 + 3;
      }

      v49 = sub_14DA390(v65, v67, a3);
    }
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v49)
    {
      v49 = sub_225EB68(a3, v49);
    }

    v69 = *(a1 + 599);
    *v49 = 424;
    v49[2] = v69;
    v49 += 3;
    if ((v6 & 0x10000) == 0)
    {
LABEL_128:
      if ((v6 & 0x20000) == 0)
      {
        goto LABEL_129;
      }

LABEL_137:
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v71 = *(a1 + 621);
      *v49 = 440;
      v49[2] = v71;
      v49 += 3;
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_140;
    }
  }

  else if ((v6 & 0x10000) == 0)
  {
    goto LABEL_128;
  }

  if (*a3 <= v49)
  {
    v49 = sub_225EB68(a3, v49);
  }

  v70 = *(a1 + 620);
  *v49 = 432;
  v49[2] = v70;
  v49 += 3;
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_137;
  }

LABEL_129:
  if ((v6 & 0x8000) == 0)
  {
LABEL_130:
    v68 = v49;
    goto LABEL_147;
  }

LABEL_140:
  if (*a3 <= v49)
  {
    v49 = sub_225EB68(a3, v49);
  }

  v72 = *(a1 + 616);
  *v49 = 448;
  v49[2] = v72;
  if (v72 > 0x7F)
  {
    v49[2] = v72 | 0x80;
    v73 = v72 >> 7;
    v49[3] = v72 >> 7;
    v68 = v49 + 4;
    if (v72 >= 0x4000)
    {
      LOBYTE(v49) = v49[3];
      do
      {
        *(v68 - 1) = v49 | 0x80;
        v49 = (v73 >> 7);
        *v68++ = v73 >> 7;
        v74 = v73 >> 14;
        v73 >>= 7;
      }

      while (v74);
    }
  }

  else
  {
    v68 = v49 + 3;
  }

LABEL_147:
  if ((v6 & 0x40000) != 0)
  {
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v75 = *(a1 + 622);
    *v68 = 456;
    v68[2] = v75;
    v68 += 3;
    if ((v6 & 0x80000) == 0)
    {
LABEL_149:
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_157;
    }
  }

  else if ((v6 & 0x80000) == 0)
  {
    goto LABEL_149;
  }

  if (*a3 <= v68)
  {
    v68 = sub_225EB68(a3, v68);
  }

  v76 = *(a1 + 623);
  *v68 = 464;
  v68[2] = v76;
  v68 += 3;
  if ((v6 & 0x100000) != 0)
  {
LABEL_157:
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v77 = *(a1 + 624);
    *v68 = 472;
    v68[2] = v77;
    v68 += 3;
  }

LABEL_160:
  v78 = *(a1 + 160);
  if (v78)
  {
    for (n = 0; n != v78; ++n)
    {
      if (*a3 <= v68)
      {
        v68 = sub_225EB68(a3, v68);
      }

      v80 = *(*(a1 + 168) + 8 * n + 8);
      *v68 = 482;
      v81 = *(v80 + 20);
      v68[2] = v81;
      if (v81 > 0x7F)
      {
        v82 = sub_19575D0(v81, v68 + 2);
      }

      else
      {
        v82 = v68 + 3;
      }

      v68 = sub_14DA86C(v80, v82, a3);
    }
  }

  v83 = *(a1 + 184);
  if (v83)
  {
    for (ii = 0; ii != v83; ++ii)
    {
      if (*a3 <= v68)
      {
        v68 = sub_225EB68(a3, v68);
      }

      v85 = *(*(a1 + 192) + 8 * ii + 8);
      *v68 = 490;
      v86 = *(v85 + 20);
      v68[2] = v86;
      if (v86 > 0x7F)
      {
        v87 = sub_19575D0(v86, v68 + 2);
      }

      else
      {
        v87 = v68 + 3;
      }

      v68 = sub_14DAD48(v85, v87, a3);
    }
  }

  if ((v6 & 0x200000) != 0)
  {
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v88 = *(a1 + 625);
    *v68 = 496;
    v68[2] = v88;
    v68 += 3;
  }

  v89 = *(a1 + 208);
  if (v89)
  {
    for (jj = 0; jj != v89; ++jj)
    {
      if (*a3 <= v68)
      {
        v68 = sub_225EB68(a3, v68);
      }

      v91 = *(*(a1 + 216) + 8 * jj + 8);
      *v68 = 506;
      v92 = *(v91 + 56);
      v68[2] = v92;
      if (v92 > 0x7F)
      {
        v93 = sub_19575D0(v92, v68 + 2);
      }

      else
      {
        v93 = v68 + 3;
      }

      v68 = sub_15317E4(v91, v93, a3);
    }
  }

  if ((v6 & 0x400000) != 0)
  {
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v94 = *(a1 + 626);
    *v68 = 640;
    v68[2] = v94;
    v68 += 3;
  }

  if ((v6 & 0x1000000) != 0)
  {
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v96 = *(a1 + 628);
    *v68 = 656;
    v68[2] = v96;
    if (v96 > 0x7F)
    {
      v68[2] = v96 | 0x80;
      v97 = v96 >> 7;
      v68[3] = v96 >> 7;
      v95 = v68 + 4;
      if (v96 >= 0x4000)
      {
        LOBYTE(v68) = v68[3];
        do
        {
          *(v95 - 1) = v68 | 0x80;
          v68 = (v97 >> 7);
          *v95++ = v97 >> 7;
          v98 = v97 >> 14;
          v97 >>= 7;
        }

        while (v98);
      }
    }

    else
    {
      v95 = v68 + 3;
    }
  }

  else
  {
    v95 = v68;
  }

  if ((v6 & 0x800000) != 0)
  {
    if (*a3 <= v95)
    {
      v95 = sub_225EB68(a3, v95);
    }

    v99 = *(a1 + 627);
    *v95 = 664;
    v95[2] = v99;
    v95 += 3;
  }

  if ((v6 & 0x2000000) != 0)
  {
    if (*a3 <= v95)
    {
      v95 = sub_225EB68(a3, v95);
    }

    v101 = *(a1 + 632);
    *v95 = 672;
    v95[2] = v101;
    if (v101 > 0x7F)
    {
      v95[2] = v101 | 0x80;
      v102 = v101 >> 7;
      v95[3] = v101 >> 7;
      v100 = v95 + 4;
      if (v101 >= 0x4000)
      {
        LOBYTE(v95) = v95[3];
        do
        {
          *(v100 - 1) = v95 | 0x80;
          v95 = (v102 >> 7);
          *v100++ = v102 >> 7;
          v103 = v102 >> 14;
          v102 >>= 7;
        }

        while (v103);
      }
    }

    else
    {
      v100 = v95 + 3;
    }
  }

  else
  {
    v100 = v95;
  }

  if ((v6 & 0x8000000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v104 = *(a1 + 640);
    *v100 = 688;
    v100[2] = v104;
    v100 += 3;
  }

  v105 = *(a1 + 232);
  if (v105)
  {
    for (kk = 0; kk != v105; ++kk)
    {
      if (*a3 <= v100)
      {
        v100 = sub_225EB68(a3, v100);
      }

      v107 = *(*(a1 + 240) + 8 * kk + 8);
      *v100 = 698;
      v108 = *(v107 + 20);
      v100[2] = v108;
      if (v108 > 0x7F)
      {
        v109 = sub_19575D0(v108, v100 + 2);
      }

      else
      {
        v109 = v100 + 3;
      }

      v100 = sub_14DB700(v107, v109, a3);
    }
  }

  v110 = *(a1 + 256);
  if (v110)
  {
    for (mm = 0; mm != v110; ++mm)
    {
      if (*a3 <= v100)
      {
        v100 = sub_225EB68(a3, v100);
      }

      v112 = *(*(a1 + 264) + 8 * mm + 8);
      *v100 = 706;
      v113 = *(v112 + 20);
      v100[2] = v113;
      if (v113 > 0x7F)
      {
        v114 = sub_19575D0(v113, v100 + 2);
      }

      else
      {
        v114 = v100 + 3;
      }

      v100 = sub_14DBBDC(v112, v114, a3);
    }
  }

  if ((v6 & 0x4000000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v116 = *(a1 + 636);
    *v100 = 712;
    v100[2] = v116;
    if (v116 > 0x7F)
    {
      v100[2] = v116 | 0x80;
      v117 = v116 >> 7;
      v100[3] = v116 >> 7;
      v115 = v100 + 4;
      if (v116 >= 0x4000)
      {
        LOBYTE(v100) = v100[3];
        do
        {
          *(v115 - 1) = v100 | 0x80;
          v100 = (v117 >> 7);
          *v115++ = v117 >> 7;
          v118 = v117 >> 14;
          v117 >>= 7;
        }

        while (v118);
      }
    }

    else
    {
      v115 = v100 + 3;
    }
  }

  else
  {
    v115 = v100;
  }

  if ((v6 & 0x10000000) != 0)
  {
    if (*a3 <= v115)
    {
      v115 = sub_225EB68(a3, v115);
    }

    v119 = *(a1 + 641);
    *v115 = 720;
    v115[2] = v119;
    v115 += 3;
  }

  if (v6 < 0)
  {
    if (*a3 <= v115)
    {
      v115 = sub_225EB68(a3, v115);
    }

    v121 = *(a1 + 644);
    *v115 = 728;
    v115[2] = v121;
    if (v121 > 0x7F)
    {
      v115[2] = v121 | 0x80;
      v122 = v121 >> 7;
      v115[3] = v121 >> 7;
      v120 = v115 + 4;
      if (v121 >= 0x4000)
      {
        LOBYTE(v115) = v115[3];
        do
        {
          *(v120 - 1) = v115 | 0x80;
          v115 = (v122 >> 7);
          *v120++ = v122 >> 7;
          v123 = v122 >> 14;
          v122 >>= 7;
        }

        while (v123);
      }
    }

    else
    {
      v120 = v115 + 3;
    }
  }

  else
  {
    v120 = v115;
  }

  if ((v6 & 0x20000000) != 0)
  {
    if (*a3 <= v120)
    {
      v120 = sub_225EB68(a3, v120);
    }

    v124 = *(a1 + 642);
    *v120 = 736;
    v120[2] = v124;
    v120 += 3;
  }

  v125 = *(a1 + 280);
  if (v125)
  {
    for (nn = 0; nn != v125; ++nn)
    {
      if (*a3 <= v120)
      {
        v120 = sub_225EB68(a3, v120);
      }

      v127 = *(*(a1 + 288) + 8 * nn + 8);
      *v120 = 746;
      v128 = *(v127 + 20);
      v120[2] = v128;
      if (v128 > 0x7F)
      {
        v129 = sub_19575D0(v128, v120 + 2);
      }

      else
      {
        v129 = v120 + 3;
      }

      v120 = sub_14DB224(v127, v129, a3);
    }
  }

  if ((v6 & 0x40000000) != 0)
  {
    if (*a3 <= v120)
    {
      v120 = sub_225EB68(a3, v120);
    }

    v130 = *(a1 + 643);
    *v120 = 752;
    v120[2] = v130;
    v120 += 3;
  }

  v131 = *(a1 + 20);
  if ((v131 & 0x40) != 0)
  {
    if (*a3 <= v120)
    {
      v120 = sub_225EB68(a3, v120);
    }

    v133 = *(a1 + 664);
    *v120 = 912;
    v120[2] = v133;
    if (v133 > 0x7F)
    {
      v120[2] = v133 | 0x80;
      v134 = v133 >> 7;
      v120[3] = v133 >> 7;
      v132 = v120 + 4;
      if (v133 >= 0x4000)
      {
        LOBYTE(v120) = v120[3];
        do
        {
          *(v132 - 1) = v120 | 0x80;
          v120 = (v134 >> 7);
          *v132++ = v134 >> 7;
          v135 = v134 >> 14;
          v134 >>= 7;
        }

        while (v135);
      }
    }

    else
    {
      v132 = v120 + 3;
    }
  }

  else
  {
    v132 = v120;
  }

  v136 = *(a1 + 296);
  if (v136 >= 1)
  {
    v137 = 0;
    v138 = 8 * v136;
    do
    {
      if (*a3 <= v132)
      {
        v132 = sub_225EB68(a3, v132);
      }

      v139 = *(*(a1 + 304) + v137);
      *v132 = 921;
      *(v132 + 2) = v139;
      v132 += 10;
      v137 += 8;
    }

    while (v138 != v137);
  }

  if (v131)
  {
    if (*a3 <= v132)
    {
      v132 = sub_225EB68(a3, v132);
    }

    v141 = *(a1 + 648);
    *v132 = 952;
    v132[2] = v141;
    if (v141 > 0x7F)
    {
      v132[2] = v141 | 0x80;
      v142 = v141 >> 7;
      v132[3] = v141 >> 7;
      v140 = v132 + 4;
      if (v141 >= 0x4000)
      {
        LOBYTE(v132) = v132[3];
        do
        {
          *(v140 - 1) = v132 | 0x80;
          v132 = (v142 >> 7);
          *v140++ = v142 >> 7;
          v143 = v142 >> 14;
          v142 >>= 7;
        }

        while (v143);
      }
    }

    else
    {
      v140 = v132 + 3;
    }
  }

  else
  {
    v140 = v132;
  }

  v144 = *(a1 + 16);
  if (v144)
  {
    v140 = sub_128AEEC(a3, 60, (*(a1 + 552) & 0xFFFFFFFFFFFFFFFELL), v140);
  }

  if ((v144 & 2) != 0)
  {
    v140 = sub_128AEEC(a3, 65, (*(a1 + 560) & 0xFFFFFFFFFFFFFFFELL), v140);
  }

  v145 = *(a1 + 20);
  if ((v145 & 2) != 0)
  {
    if (*a3 <= v140)
    {
      v140 = sub_225EB68(a3, v140);
    }

    v146 = *(a1 + 652);
    *v140 = 1200;
    v140[2] = v146;
    v140 += 3;
    if ((v145 & 4) == 0)
    {
LABEL_301:
      if ((v145 & 8) == 0)
      {
        goto LABEL_312;
      }

      goto LABEL_309;
    }
  }

  else if ((v145 & 4) == 0)
  {
    goto LABEL_301;
  }

  if (*a3 <= v140)
  {
    v140 = sub_225EB68(a3, v140);
  }

  v147 = *(a1 + 653);
  *v140 = 1208;
  v140[2] = v147;
  v140 += 3;
  if ((v145 & 8) != 0)
  {
LABEL_309:
    if (*a3 <= v140)
    {
      v140 = sub_225EB68(a3, v140);
    }

    v148 = *(a1 + 654);
    *v140 = 1216;
    v140[2] = v148;
    v140 += 3;
  }

LABEL_312:
  v149 = *(a1 + 320);
  if (v149)
  {
    for (i1 = 0; i1 != v149; ++i1)
    {
      if (*a3 <= v140)
      {
        v140 = sub_225EB68(a3, v140);
      }

      v151 = *(*(a1 + 328) + 8 * i1 + 8);
      *v140 = 1242;
      v152 = *(v151 + 20);
      v140[2] = v152;
      if (v152 > 0x7F)
      {
        v153 = sub_19575D0(v152, v140 + 2);
      }

      else
      {
        v153 = v140 + 3;
      }

      v140 = sub_14DC0C4(v151, v153, a3);
    }
  }

  v154 = *(a1 + 344);
  if (v154)
  {
    for (i2 = 0; i2 != v154; ++i2)
    {
      if (*a3 <= v140)
      {
        v140 = sub_225EB68(a3, v140);
      }

      v156 = *(*(a1 + 352) + 8 * i2 + 8);
      *v140 = 1410;
      v157 = *(v156 + 20);
      v140[2] = v157;
      if (v157 > 0x7F)
      {
        v158 = sub_19575D0(v157, v140 + 2);
      }

      else
      {
        v158 = v140 + 3;
      }

      v140 = sub_14DC5A4(v156, v158, a3);
    }
  }

  if ((v145 & 0x10) != 0)
  {
    if (*a3 <= v140)
    {
      v140 = sub_225EB68(a3, v140);
    }

    v160 = *(a1 + 656);
    *v140 = 1416;
    v140[2] = v160;
    if (v160 > 0x7F)
    {
      v140[2] = v160 | 0x80;
      v161 = v160 >> 7;
      v140[3] = v160 >> 7;
      v159 = v140 + 4;
      if (v160 >= 0x4000)
      {
        LOBYTE(v140) = v140[3];
        do
        {
          *(v159 - 1) = v140 | 0x80;
          v140 = (v161 >> 7);
          *v159++ = v161 >> 7;
          v162 = v161 >> 14;
          v161 >>= 7;
        }

        while (v162);
      }
    }

    else
    {
      v159 = v140 + 3;
    }
  }

  else
  {
    v159 = v140;
  }

  v163 = *(a1 + 368);
  if (v163)
  {
    for (i3 = 0; i3 != v163; ++i3)
    {
      if (*a3 <= v159)
      {
        v159 = sub_225EB68(a3, v159);
      }

      v165 = *(*(a1 + 376) + 8 * i3 + 8);
      *v159 = 1426;
      v166 = *(v165 + 20);
      v159[2] = v166;
      if (v166 > 0x7F)
      {
        v167 = sub_19575D0(v166, v159 + 2);
      }

      else
      {
        v167 = v159 + 3;
      }

      v159 = sub_14DCA7C(v165, v167, a3);
    }
  }

  v168 = *(a1 + 392);
  if (v168)
  {
    for (i4 = 0; i4 != v168; ++i4)
    {
      if (*a3 <= v159)
      {
        v159 = sub_225EB68(a3, v159);
      }

      v170 = *(*(a1 + 400) + 8 * i4 + 8);
      *v159 = 1434;
      v171 = *(v170 + 20);
      v159[2] = v171;
      if (v171 > 0x7F)
      {
        v172 = sub_19575D0(v171, v159 + 2);
      }

      else
      {
        v172 = v159 + 3;
      }

      v159 = sub_14DCF64(v170, v172, a3);
    }
  }

  v173 = *(a1 + 416);
  if (v173)
  {
    for (i5 = 0; i5 != v173; ++i5)
    {
      if (*a3 <= v159)
      {
        v159 = sub_225EB68(a3, v159);
      }

      v175 = *(*(a1 + 424) + 8 * i5 + 8);
      *v159 = 1442;
      v176 = *(v175 + 20);
      v159[2] = v176;
      if (v176 > 0x7F)
      {
        v177 = sub_19575D0(v176, v159 + 2);
      }

      else
      {
        v177 = v159 + 3;
      }

      v159 = sub_14DD444(v175, v177, a3);
    }
  }

  v178 = *(a1 + 440);
  if (v178 >= 1)
  {
    v179 = 8;
    do
    {
      v180 = *(*(a1 + 448) + v179);
      v181 = *(v180 + 23);
      if (v181 < 0 && (v181 = v180[1], v181 > 127) || (*a3 - v159 + 13) < v181)
      {
        v159 = sub_1957480(a3, 85, v180, v159);
      }

      else
      {
        *v159 = 1450;
        v159[2] = v181;
        if (*(v180 + 23) < 0)
        {
          v180 = *v180;
        }

        v182 = v159 + 3;
        memcpy(v159 + 3, v180, v181);
        v159 = &v182[v181];
      }

      v179 += 8;
      --v178;
    }

    while (v178);
  }

  v183 = *(a1 + 464);
  if (v183)
  {
    for (i6 = 0; i6 != v183; ++i6)
    {
      if (*a3 <= v159)
      {
        v159 = sub_225EB68(a3, v159);
      }

      v185 = *(*(a1 + 472) + 8 * i6 + 8);
      *v159 = 1458;
      v186 = *(v185 + 20);
      v159[2] = v186;
      if (v186 > 0x7F)
      {
        v187 = sub_19575D0(v186, v159 + 2);
      }

      else
      {
        v187 = v159 + 3;
      }

      v159 = sub_14DD924(v185, v187, a3);
    }
  }

  if ((*(a1 + 16) & 8) != 0)
  {
    if (*a3 <= v159)
    {
      v159 = sub_225EB68(a3, v159);
    }

    v188 = *(a1 + 576);
    *v159 = 1466;
    v189 = *(v188 + 20);
    v159[2] = v189;
    if (v189 > 0x7F)
    {
      v190 = sub_19575D0(v189, v159 + 2);
    }

    else
    {
      v190 = v159 + 3;
    }

    v159 = sub_14E2020(v188, v190, a3);
  }

  v191 = *(a1 + 488);
  if (v191)
  {
    for (i7 = 0; i7 != v191; ++i7)
    {
      if (*a3 <= v159)
      {
        v159 = sub_225EB68(a3, v159);
      }

      v193 = *(*(a1 + 496) + 8 * i7 + 8);
      *v159 = 1474;
      v194 = *(v193 + 20);
      v159[2] = v194;
      if (v194 > 0x7F)
      {
        v195 = sub_19575D0(v194, v159 + 2);
      }

      else
      {
        v195 = v159 + 3;
      }

      v159 = sub_14E4254(v193, v195, a3);
    }
  }

  if ((*(a1 + 20) & 0x20) != 0)
  {
    if (*a3 <= v159)
    {
      v159 = sub_225EB68(a3, v159);
    }

    v197 = *(a1 + 660);
    *v159 = 1480;
    v159[2] = v197;
    if (v197 > 0x7F)
    {
      v159[2] = v197 | 0x80;
      v198 = v197 >> 7;
      v159[3] = v197 >> 7;
      v196 = v159 + 4;
      if (v197 >= 0x4000)
      {
        LOBYTE(v199) = v159[3];
        do
        {
          *(v196 - 1) = v199 | 0x80;
          v199 = v198 >> 7;
          *v196++ = v198 >> 7;
          v200 = v198 >> 14;
          v198 >>= 7;
        }

        while (v200);
      }
    }

    else
    {
      v196 = v159 + 3;
    }
  }

  else
  {
    v196 = v159;
  }

  v201 = *(a1 + 512);
  if (v201 >= 1)
  {
    v202 = 8;
    do
    {
      v203 = *(*(a1 + 520) + v202);
      v204 = *(v203 + 23);
      if (v204 < 0 && (v204 = v203[1], v204 > 127) || (*a3 - v196 + 13) < v204)
      {
        v196 = sub_1957480(a3, 90, v203, v196);
      }

      else
      {
        *v196 = 1490;
        v196[2] = v204;
        if (*(v203 + 23) < 0)
        {
          v203 = *v203;
        }

        v205 = v196 + 3;
        memcpy(v205, v203, v204);
        v196 = &v205[v204];
      }

      v202 += 8;
      --v201;
    }

    while (v201);
  }

  v206 = *(a1 + 536);
  if (v206)
  {
    for (i8 = 0; i8 != v206; ++i8)
    {
      if (*a3 <= v196)
      {
        v196 = sub_225EB68(a3, v196);
      }

      v208 = *(*(a1 + 544) + 8 * i8 + 8);
      *v196 = 1498;
      v209 = *(v208 + 20);
      v196[2] = v209;
      if (v209 > 0x7F)
      {
        v210 = sub_19575D0(v209, v196 + 2);
      }

      else
      {
        v210 = v196 + 3;
      }

      v196 = sub_14E5C68(v208, v210, a3);
    }
  }

  v211 = *(a1 + 8);
  if ((v211 & 1) == 0)
  {
    return v196;
  }

  v213 = v211 & 0xFFFFFFFFFFFFFFFCLL;
  v214 = *(v213 + 31);
  if (v214 < 0)
  {
    v215 = *(v213 + 8);
    v214 = *(v213 + 16);
  }

  else
  {
    v215 = (v213 + 8);
  }

  if ((*a3 - v196) >= v214)
  {
    v216 = v214;
    memcpy(v196, v215, v214);
    v196 += v216;
    return v196;
  }

  return sub_1957130(a3, v215, v214, v196);
}