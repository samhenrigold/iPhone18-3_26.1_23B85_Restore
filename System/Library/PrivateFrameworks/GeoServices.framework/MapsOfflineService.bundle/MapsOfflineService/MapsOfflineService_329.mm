char *sub_1373510(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 120);
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v10 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_152C800(v10, v12, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 112);
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

    v4 = sub_16E5FE0(v13, v15, a3);
  }

  v16 = *(a1 + 56);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 64) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || (*a3 - v4 + 14) < v19)
      {
        v4 = sub_1957480(a3, 4, v18, v4);
      }

      else
      {
        *v4 = 34;
        v4[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = v4 + 2;
        memcpy(v4 + 2, v18, v19);
        v4 = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 80);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v23 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 42;
      v24 = *(v23 + 44);
      v4[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, v4 + 1);
      }

      else
      {
        v25 = v4 + 2;
      }

      v4 = sub_1838E28(v23, v25, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v27 = *(a1 + 128);
    *v4 = 48;
    v4[1] = v27;
    if (v27 > 0x7F)
    {
      v4[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v4[2] = v27 >> 7;
      v26 = v4 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v4[2];
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
      v26 = v4 + 2;
    }
  }

  else
  {
    v26 = v4;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_50;
    }

LABEL_53:
    v26 = sub_128AEEC(a3, 8, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  v26 = sub_128AEEC(a3, 7, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v26);
  if ((v6 & 2) != 0)
  {
    goto LABEL_53;
  }

LABEL_50:
  if ((v6 & 0x20) == 0)
  {
LABEL_51:
    v31 = v26;
    goto LABEL_61;
  }

LABEL_54:
  if (*a3 <= v26)
  {
    v26 = sub_225EB68(a3, v26);
  }

  v32 = *(a1 + 136);
  *v26 = 72;
  v26[1] = v32;
  if (v32 > 0x7F)
  {
    v26[1] = v32 | 0x80;
    v33 = v32 >> 7;
    v26[2] = v32 >> 7;
    v31 = v26 + 3;
    if (v32 >= 0x4000)
    {
      LOBYTE(v26) = v26[2];
      do
      {
        *(v31 - 1) = v26 | 0x80;
        v26 = (v33 >> 7);
        *v31++ = v33 >> 7;
        v34 = v33 >> 14;
        v33 >>= 7;
      }

      while (v34);
    }
  }

  else
  {
    v31 = v26 + 2;
  }

LABEL_61:
  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v31;
  }

  v37 = v35 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = *(v37 + 31);
  if (v38 < 0)
  {
    v39 = *(v37 + 8);
    v38 = *(v37 + 16);
  }

  else
  {
    v39 = (v37 + 8);
  }

  if ((*a3 - v31) >= v38)
  {
    v40 = v38;
    memcpy(v31, v39, v38);
    v31 += v40;
    return v31;
  }

  return sub_1957130(a3, v39, v38, v31);
}

uint64_t sub_1373960(uint64_t a1)
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
      v7 = sub_152D208(v6);
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
  if (v8 >= 1)
  {
    v10 = (*(a1 + 64) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 80);
  v15 = v9 + v14;
  v16 = *(a1 + 88);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = sub_1839564(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 16);
  if ((v21 & 0x3F) != 0)
  {
    if (v21)
    {
      v28 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v29 = *(v28 + 23);
      v30 = *(v28 + 8);
      if ((v29 & 0x80u) == 0)
      {
        v30 = v29;
      }

      v15 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v21 & 2) == 0)
      {
LABEL_23:
        if ((v21 & 4) == 0)
        {
LABEL_25:
          if ((v21 & 8) != 0)
          {
            v15 += 9;
          }

          if ((v21 & 0x10) != 0)
          {
            v15 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
          }

          if ((v21 & 0x20) != 0)
          {
            v23 = *(a1 + 136);
            v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
            if (v23 >= 0)
            {
              v25 = v24;
            }

            else
            {
              v25 = 11;
            }

            v15 += v25;
          }

          goto LABEL_34;
        }

LABEL_24:
        v22 = sub_16E62F4(*(a1 + 112));
        v15 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_25;
      }
    }

    else if ((v21 & 2) == 0)
    {
      goto LABEL_23;
    }

    v31 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v31 + 23);
    v33 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v33 = v32;
    }

    v15 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_34:
  v26 = *(a1 + 8);
  if (v26)
  {
    v34 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v15 += v35;
  }

  *(a1 + 20) = v15;
  return v15;
}

void sub_1373BE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B4864((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_13B315C((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x3F) != 0)
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

        goto LABEL_29;
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

      goto LABEL_37;
    }

LABEL_29:
    *(a1 + 16) |= 4u;
    v27 = *(a1 + 112);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      sub_16F58FC(v29);
      *(a1 + 112) = v27;
    }

    if (*(a2 + 112))
    {
      v30 = *(a2 + 112);
    }

    else
    {
      v30 = &off_277E650;
    }

    sub_16E645C(v27, v30);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(a1 + 120) = *(a2 + 120);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
LABEL_18:
        *(a1 + 16) |= v19;
        goto LABEL_19;
      }

LABEL_17:
      *(a1 + 136) = *(a2 + 136);
      goto LABEL_18;
    }

LABEL_38:
    *(a1 + 128) = *(a2 + 128);
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1373E60(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_152DE60(*(*(a1 + 40) + 8 * v2));
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
    v7 = sub_1836CF0(*(*(a1 + 88) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 4) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1373EFC(uint64_t a1)
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

void sub_1373FB4(uint64_t a1)
{
  sub_1373EFC(a1);

  operator delete();
}

uint64_t sub_1373FEC(uint64_t a1)
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

uint64_t sub_1374068(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_13741E8(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_13742D0(uint64_t a1)
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

uint64_t sub_13743BC(uint64_t a1)
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

  if (a1 != &off_276CDE8)
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

void sub_1374488(uint64_t a1)
{
  sub_13743BC(a1);

  operator delete();
}

unsigned __int8 *sub_13744C0(unsigned __int8 *result)
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

uint64_t sub_1374554(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
          v6 = *v22;
        }

        v14 = sub_21F4D60(a3, v15, v6);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v20 = sub_194DB04((a1 + 24), v19);
      v14 = sub_1958890(v20, *v22, a3);
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

char *sub_13746F0(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 18;
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

uint64_t sub_137481C(uint64_t a1)
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

uint64_t sub_13748F8(uint64_t a1)
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

uint64_t sub_1374938(uint64_t a1)
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

void sub_13749D8(uint64_t a1)
{
  sub_1374938(a1);

  operator delete();
}

uint64_t sub_1374A10(uint64_t a1)
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

uint64_t sub_1374A58(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

        if (v15 > 1)
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

char *sub_1374C18(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1374D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
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
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
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

    v2 += v11;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1374E40(void *a1)
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

  sub_1374ED0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B30D8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1374ED0(uint64_t a1)
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

  if (a1 != &off_276CE38)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      sub_16E5B34(v5);
      operator delete();
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      sub_186702C(v6);
      operator delete();
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      sub_13743BC(v7);
      operator delete();
    }

    result = *(a1 + 88);
    if (result)
    {
      sub_1374938(result);

      operator delete();
    }
  }

  return result;
}

void sub_1374FC8(void *a1)
{
  sub_1374E40(a1);

  operator delete();
}

uint64_t sub_1375000(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1835AE0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x3F) == 0)
  {
    goto LABEL_13;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = sub_17DB104(*(v1 + 72));
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
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

LABEL_27:
  result = sub_16E5B70(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = sub_13744C0(*(v1 + 80));
  if ((v5 & 0x20) != 0)
  {
LABEL_12:
    result = sub_1374A10(*(v1 + 88));
  }

LABEL_13:
  if ((v5 & 0xC0) != 0)
  {
    *(v1 + 96) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 96) = 1;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_1375148(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v55 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v55, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v55 + 1);
    v7 = **v55;
    if (**v55 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v55, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v55 + 2);
      }
    }

    *v55 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 5)
    {
      if (v7 >> 3 <= 7)
      {
        if (v10 == 6)
        {
          if (v7 == 50)
          {
            v29 = v6 - 1;
            while (1)
            {
              v30 = v29 + 1;
              *v55 = v29 + 1;
              v31 = *(a1 + 40);
              if (v31 && (v32 = *(a1 + 32), v32 < *v31))
              {
                *(a1 + 32) = v32 + 1;
                v33 = *&v31[2 * v32 + 2];
              }

              else
              {
                v34 = sub_18648BC(*(a1 + 24));
                v33 = sub_19593CC(a1 + 24, v34);
                v30 = *v55;
              }

              v29 = sub_2200230(a3, v33, v30);
              *v55 = v29;
              if (!v29)
              {
                break;
              }

              if (*a3 <= v29 || *v29 != 50)
              {
                goto LABEL_95;
              }
            }

LABEL_109:
            *v55 = 0;
            return *v55;
          }

LABEL_87:
          if (v7)
          {
            v49 = (v7 & 7) == 4;
          }

          else
          {
            v49 = 1;
          }

          if (v49)
          {
            if (v6)
            {
              a3[10].i32[0] = v7 - 1;
              return *v55;
            }

            goto LABEL_109;
          }

          v50 = *(a1 + 8);
          if (v50)
          {
            v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v51 = sub_11F1920((a1 + 8));
            v6 = *v55;
          }

          v15 = sub_1952690(v7, v51, v6, a3);
          goto LABEL_94;
        }

        if (v10 != 7 || v7 != 58)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 0x10u;
        v23 = *(a1 + 80);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_137AB54(v25);
          *(a1 + 80) = v23;
          v6 = *v55;
        }

        v15 = sub_2202090(a3, v23, v6);
      }

      else
      {
        if (v10 == 8)
        {
          if (v7 == 64)
          {
            v37 = v6 + 1;
            v38 = *v6;
            if ((v38 & 0x8000000000000000) == 0)
            {
              goto LABEL_71;
            }

            v39 = *v37;
            v40 = (v39 << 7) + v38;
            LODWORD(v38) = v40 - 128;
            if (v39 < 0)
            {
              *v55 = sub_19587DC(v6, (v40 - 128));
              if (!*v55)
              {
                goto LABEL_109;
              }

              LODWORD(v38) = v52;
            }

            else
            {
              v37 = v6 + 2;
LABEL_71:
              *v55 = v37;
            }

            if (sub_1470AE4(v38))
            {
              *(a1 + 16) |= 0x40u;
              *(a1 + 96) = v38;
            }

            else
            {
              sub_13B67EC();
            }

            continue;
          }

          goto LABEL_87;
        }

        if (v10 == 9)
        {
          if (v7 == 72)
          {
            v45 = v6 + 1;
            v46 = *v6;
            if ((v46 & 0x8000000000000000) == 0)
            {
              goto LABEL_84;
            }

            v47 = *v45;
            v48 = (v47 << 7) + v46;
            LODWORD(v46) = v48 - 128;
            if (v47 < 0)
            {
              *v55 = sub_19587DC(v6, (v48 - 128));
              if (!*v55)
              {
                goto LABEL_109;
              }

              LODWORD(v46) = v53;
            }

            else
            {
              v45 = v6 + 2;
LABEL_84:
              *v55 = v45;
            }

            if (sub_144E2E8(v46))
            {
              *(a1 + 16) |= 0x80u;
              *(a1 + 100) = v46;
            }

            else
            {
              sub_13B6774();
            }

            continue;
          }

          goto LABEL_87;
        }

        if (v10 != 10 || v7 != 82)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 0x20u;
        v16 = *(a1 + 88);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_137ABD8(v18);
          *(a1 + 88) = v16;
          v6 = *v55;
        }

        v15 = sub_2202120(a3, v16, v6);
      }
    }

    else
    {
      if (v7 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v7 == 8)
          {
            v27 = v6 + 1;
            v26 = *v6;
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_49;
            }

            v28 = *v27;
            v26 = (v28 << 7) + v26 - 128;
            if (v28 < 0)
            {
              *v55 = sub_19587DC(v6, v26);
              if (!*v55)
              {
                goto LABEL_109;
              }
            }

            else
            {
              v27 = v6 + 2;
LABEL_49:
              *v55 = v27;
            }

            if ((v26 - 1) > 5)
            {
              sub_12E8450();
            }

            else
            {
              *(a1 + 16) |= 0x100u;
              *(a1 + 104) = v26;
            }

            continue;
          }

          goto LABEL_87;
        }

        if (v10 != 2 || v7 != 18)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v22 = (a1 + 48);
        goto LABEL_66;
      }

      if (v10 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 2u;
        v35 = *(a1 + 8);
        v21 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v21 = *v21;
        }

        v22 = (a1 + 56);
LABEL_66:
        v36 = sub_194DB04(v22, v21);
        v15 = sub_1958890(v36, *v55, a3);
        goto LABEL_94;
      }

      if (v10 == 4)
      {
        if (v7 != 34)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 4u;
        v41 = *(a1 + 64);
        if (!v41)
        {
          v42 = *(a1 + 8);
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
          if (v42)
          {
            v43 = *v43;
          }

          sub_16F58FC(v43);
          v41 = v44;
          *(a1 + 64) = v44;
          v6 = *v55;
        }

        v15 = sub_21F86E8(a3, v41, v6);
      }

      else
      {
        if (v10 != 5 || v7 != 42)
        {
          goto LABEL_87;
        }

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

          sub_1868ECC(v13);
          v11 = v14;
          *(a1 + 72) = v14;
          v6 = *v55;
        }

        v15 = sub_2200B30(a3, v11, v6);
      }
    }

LABEL_94:
    *v55 = v15;
    if (!v15)
    {
      goto LABEL_109;
    }

LABEL_95:
    ;
  }

  return *v55;
}

char *sub_137566C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 104);
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
    v6 = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v6);
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

  v6 = sub_128AEEC(a3, 3, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v11 = *(a1 + 64);
  *v6 = 34;
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

  v6 = sub_16E5FE0(v11, v13, a3);
  if ((v5 & 8) != 0)
  {
LABEL_23:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 72);
    *v6 = 42;
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

    v6 = sub_186732C(v14, v16, a3);
  }

LABEL_29:
  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 50;
      v20 = *(v19 + 44);
      v6[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v6 + 1);
      }

      else
      {
        v21 = v6 + 2;
      }

      v6 = sub_1838E28(v19, v21, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 80);
    *v6 = 58;
    v23 = *(v22 + 20);
    v6[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v6 + 1);
    }

    else
    {
      v24 = v6 + 2;
    }

    v6 = sub_13746F0(v22, v24, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v26 = *(a1 + 96);
    *v6 = 64;
    v6[1] = v26;
    if (v26 > 0x7F)
    {
      v6[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v6[2] = v26 >> 7;
      v25 = v6 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v28) = v6[2];
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
      v25 = v6 + 2;
    }
  }

  else
  {
    v25 = v6;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v31 = *(a1 + 100);
    *v25 = 72;
    v25[1] = v31;
    if (v31 > 0x7F)
    {
      v25[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v25[2] = v31 >> 7;
      v30 = v25 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v33) = v25[2];
        do
        {
          *(v30 - 1) = v33 | 0x80;
          v33 = v32 >> 7;
          *v30++ = v32 >> 7;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
      }
    }

    else
    {
      v30 = v25 + 2;
    }
  }

  else
  {
    v30 = v25;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v35 = *(a1 + 88);
    *v30 = 82;
    v36 = *(v35 + 20);
    v30[1] = v36;
    if (v36 > 0x7F)
    {
      v37 = sub_19575D0(v36, v30 + 1);
    }

    else
    {
      v37 = v30 + 2;
    }

    v30 = sub_1374C18(v35, v37, a3);
  }

  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return v30;
  }

  v40 = v38 & 0xFFFFFFFFFFFFFFFCLL;
  v41 = *(v40 + 31);
  if (v41 < 0)
  {
    v42 = *(v40 + 8);
    v41 = *(v40 + 16);
  }

  else
  {
    v42 = (v40 + 8);
  }

  if ((*a3 - v30) >= v41)
  {
    v43 = v41;
    memcpy(v30, v42, v41);
    v30 += v43;
    return v30;
  }

  return sub_1957130(a3, v42, v41, v30);
}

uint64_t sub_1375B14(uint64_t a1)
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
      v7 = sub_1839564(v6);
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
  if (!v8)
  {
    goto LABEL_18;
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

      goto LABEL_26;
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

    goto LABEL_27;
  }

LABEL_26:
  v15 = sub_16E62F4(*(a1 + 64));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v16 = sub_1867668(*(a1 + 72));
  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = sub_137481C(*(a1 + 80));
  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) == 0)
  {
LABEL_16:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  v18 = sub_1374D64(*(a1 + 88));
  v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x40) != 0)
  {
LABEL_30:
    v19 = *(a1 + 96);
    if (v19 < 0)
    {
      v20 = 11;
    }

    else
    {
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v20;
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_34;
    }

LABEL_18:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_17:
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_34:
  v21 = *(a1 + 100);
  if (v21 < 0)
  {
    v22 = 11;
  }

  else
  {
    v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v22;
  if ((v8 & 0x100) != 0)
  {
LABEL_38:
    v23 = *(a1 + 104);
    if (v23 < 0)
    {
      v24 = 11;
    }

    else
    {
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v24;
  }

LABEL_42:
  v25 = *(a1 + 8);
  if (v25)
  {
    v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v2 += v28;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1375DD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B315C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      v12 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_194EA1C((a1 + 48), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_27;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v15 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 56), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_27:
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

      sub_16F58FC(v20);
      *(a1 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v21 = *(a2 + 64);
    }

    else
    {
      v21 = &off_277E650;
    }

    sub_16E645C(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }

LABEL_35:
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

      sub_1868ECC(v24);
      *(a1 + 72) = v22;
    }

    if (*(a2 + 72))
    {
      v25 = *(a2 + 72);
    }

    else
    {
      v25 = &off_2787A70;
    }

    sub_17DBC2C(v22, v25);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    }

LABEL_43:
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

      v26 = sub_137AB54(v28);
      *(a1 + 80) = v26;
    }

    if (*(a2 + 80))
    {
      v29 = *(a2 + 80);
    }

    else
    {
      v29 = &off_276CDE8;
    }

    sub_13054EC(v26, v29);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_59;
    }

LABEL_51:
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

      v30 = sub_137ABD8(v32);
      *(a1 + 88) = v30;
    }

    if (*(a2 + 88))
    {
      v33 = *(a2 + 88);
    }

    else
    {
      v33 = &off_276CE10;
    }

    sub_12B0A14(v30, v33);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 100) = *(a2 + 100);
      goto LABEL_14;
    }

LABEL_59:
    *(a1 + 96) = *(a2 + 96);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0x100) != 0)
  {
    v10 = *(a2 + 104);
    *(a1 + 16) |= 0x100u;
    *(a1 + 104) = v10;
  }

  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_137608C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1836CF0(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    result = sub_16E6614(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x10) == 0)
  {
    return 1;
  }

  v7 = *(a1 + 80);
  if ((*(v7 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(v7 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1376120(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276CEA8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1372D5C(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1373EFC(v7);
      operator delete();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      sub_1374E40(v8);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_137622C(uint64_t a1)
{
  sub_1376120(a1);

  operator delete();
}

uint64_t sub_1376264(uint64_t result)
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

LABEL_17:
    result = sub_1372E9C(*(result + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_18:
  result = sub_1373FEC(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_1375000(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
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

uint64_t sub_1376334(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v33, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v33 + 1);
    v8 = **v33;
    if (**v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v33 + 2);
      }
    }

    *v33 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_48;
      }

      *(a1 + 16) |= 2u;
      v24 = *(a1 + 32);
      if (!v24)
      {
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_137AA0C(v26);
        *(a1 + 32) = v24;
        v7 = *v33;
      }

      v20 = sub_22021B0(a3, v24, v7);
    }

    else if (v11 == 5)
    {
      if (v8 != 42)
      {
        goto LABEL_48;
      }

      *(a1 + 16) |= 4u;
      v27 = *(a1 + 40);
      if (!v27)
      {
        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        v27 = sub_137AAD0(v29);
        *(a1 + 40) = v27;
        v7 = *v33;
      }

      v20 = sub_2202240(a3, v27, v7);
    }

    else
    {
      if (v11 != 6 || v8 != 50)
      {
        goto LABEL_48;
      }

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

        sub_137AC60(v18);
        v16 = v19;
        *(a1 + 48) = v19;
        v7 = *v33;
      }

      v20 = sub_22022D0(a3, v16, v7);
    }

LABEL_55:
    *v33 = v20;
    if (!v20)
    {
      goto LABEL_64;
    }

LABEL_56:
    if (sub_195ADC0(a3, v33, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_48;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v23 = sub_194DB04((a1 + 24), v22);
    v20 = sub_1958890(v23, *v33, a3);
    goto LABEL_55;
  }

  if (v11 == 2)
  {
    if (v8 == 17)
    {
      v5 |= 0x10u;
      *(a1 + 56) = *v7;
      *v33 = v7 + 8;
      goto LABEL_56;
    }
  }

  else if (v11 == 3 && v8 == 24)
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
      *v33 = sub_19587DC(v7, v13);
      if (!*v33)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v14 = v7 + 2;
LABEL_18:
      *v33 = v14;
    }

    if ((v13 - 1) > 4)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 64) = v13;
    }

    goto LABEL_56;
  }

LABEL_48:
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
      v7 = *v33;
    }

    v20 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_1376654(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 56);
    *v4 = 17;
    *(v4 + 1) = v8;
    v4 += 9;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 64);
  *v4 = 24;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_16:
  if ((v6 & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 32);
    *v7 = 34;
    v14 = *(v13 + 20);
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v7 + 1);
    }

    else
    {
      v15 = v7 + 2;
    }

    v7 = sub_1373510(v13, v15, a3);
    if ((v6 & 4) == 0)
    {
LABEL_18:
      if ((v6 & 8) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_18;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v16 = *(a1 + 40);
  *v7 = 42;
  v17 = *(v16 + 20);
  v7[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v7 + 1);
  }

  else
  {
    v18 = v7 + 2;
  }

  v7 = sub_13741E8(v16, v18, a3);
  if ((v6 & 8) != 0)
  {
LABEL_32:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 48);
    *v7 = 50;
    v20 = *(v19 + 20);
    v7[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v7 + 1);
    }

    else
    {
      v21 = v7 + 2;
    }

    v7 = sub_137566C(v19, v21, a3);
  }

LABEL_38:
  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v25)
  {
    v27 = v25;
    memcpy(v7, v26, v25);
    v7 += v27;
    return v7;
  }

  return sub_1957130(a3, v26, v25, v7);
}

uint64_t sub_1376924(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_21;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = sub_1373960(*(a1 + 32));
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
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = sub_13742D0(*(a1 + 40));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v9 = sub_1375B14(*(a1 + 48));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v2 & 0x10) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v10 = *(a1 + 64);
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 11;
    }

    result += v12;
  }

LABEL_21:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_1376AAC(uint64_t a1, uint64_t a2)
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

        goto LABEL_25;
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

      v9 = sub_137AA0C(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276CD30;
    }

    sub_1373BE4(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_33;
    }

LABEL_25:
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

      v13 = sub_137AAD0(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_276CDC0;
    }

    sub_12F5A34(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_41;
    }

LABEL_33:
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

      sub_137AC60(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_276CE38;
    }

    sub_1375DD0(v17, v20);
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

LABEL_41:
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

uint64_t sub_1376C6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_1373E60(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_137608C(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1376CC8(uint64_t a1)
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

  if (a1 != &off_276CEF0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16ED13C(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_17A2F70(v7);
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

void sub_1376DB4(uint64_t a1)
{
  sub_1376CC8(a1);

  operator delete();
}

uint64_t sub_1376DEC(uint64_t result)
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
  result = sub_16ED178(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_17A2FAC(*(v1 + 40));
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

uint64_t sub_1376E98(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v27 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v27, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v27 + 1);
    v7 = **v27;
    if (**v27 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v27, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v27 + 2);
      }
    }

    *v27 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 40);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_185DD6C(v21);
          *(a1 + 40) = v19;
          v6 = *v27;
        }

        v15 = sub_21F5810(a3, v19, v6);
        goto LABEL_35;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = sub_194DB04((a1 + 24), v17);
        v15 = sub_1958890(v18, *v27, a3);
        goto LABEL_35;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
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

        sub_16F5E18(v24);
        v22 = v25;
        *(a1 + 32) = v25;
        v6 = *v27;
      }

      v15 = sub_21F4F10(a3, v22, v6);
      goto LABEL_35;
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
        return *v27;
      }

LABEL_41:
      *v27 = 0;
      return *v27;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v27;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_35:
    *v27 = v15;
    if (!v15)
    {
      goto LABEL_41;
    }
  }

  return *v27;
}

char *sub_137708C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16ED4B0(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 40);
  *v4 = 26;
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

  v4 = sub_17A31A8(v10, v12, a3);
LABEL_18:
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

uint64_t sub_1377234(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

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
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = sub_16ED6F0(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = sub_17A3294(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1377348(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_25;
  }

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
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

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

    sub_16F5E18(v10);
    *(a1 + 32) = v8;
  }

  if (*(a2 + 32))
  {
    v11 = *(a2 + 32);
  }

  else
  {
    v11 = &off_277E918;
  }

  sub_16ED814(v8, v11);
  if ((v4 & 4) != 0)
  {
LABEL_17:
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

      v12 = sub_185DD6C(v14);
      *(a1 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_27829E0;
    }

    sub_14B7610(v12, v15);
  }

LABEL_25:
  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((a1 + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_137748C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16ED98C(*(a1 + 32));
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

  result = sub_17A332C(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13774E8(uint64_t a1)
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
  if (a1 != &off_276CF20)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1376CC8(v6);
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

void sub_13775A0(uint64_t a1)
{
  sub_13774E8(a1);

  operator delete();
}

char *sub_13775D8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 != 3)
    {
      if (v10 == 2)
      {
        if (v7 == 16)
        {
          v17 = v6 + 1;
          v16 = *v6;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            v26 = sub_19587DC(v6, v16);
            if (!v26)
            {
              return 0;
            }
          }

          else
          {
            v17 = v6 + 2;
LABEL_24:
            v26 = v17;
          }

          if (v16 > 3)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 36) = v16;
          }

          continue;
        }
      }

      else if (v10 == 1 && v7 == 8)
      {
        v23 = v6 + 1;
        v22 = *v6;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
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
LABEL_38:
          v26 = v23;
        }

        if (v22 > 9)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v22;
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
      goto LABEL_33;
    }

    if (v7 != 26)
    {
      goto LABEL_13;
    }

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

      v19 = sub_137ADAC(v21);
      *(a1 + 24) = v19;
      v6 = v26;
    }

    v15 = sub_2202360(a3, v19, v6);
LABEL_33:
    v26 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v26;
}

char *sub_1377820(uint64_t a1, char *__dst, unint64_t *a3)
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

    v12 = *(a1 + 36);
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

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 24);
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

    v11 = sub_137708C(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v21)
  {
    v23 = v21;
    memcpy(v11, v22, v21);
    v11 += v23;
    return v11;
  }

  return sub_1957130(a3, v22, v21, v11);
}

uint64_t sub_1377A34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_1377234(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 36);
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

LABEL_16:
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

void *sub_1377B40(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26D8990;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = &qword_278E990;
  a1[10] = &qword_278E990;
  a1[11] = &qword_278E990;
  a1[12] = &qword_278E990;
  a1[13] = &qword_278E990;
  a1[14] = &qword_278E990;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  return a1;
}

void sub_1377BC8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1377BF8(void *a1)
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

  sub_1377C90(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B3D38(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1377C90(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = (a1 + 72);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C((a1 + 96));
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  result = (a1 + 112);
  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276CF48)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_13560E4(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_16E8374(v6);
      operator delete();
    }

    result = *(a1 + 136);
    if (result)
    {
      sub_16F8B5C(result);

      operator delete();
    }
  }

  return result;
}

void sub_1377DB8(void *a1)
{
  sub_1377BF8(a1);

  operator delete();
}

uint64_t sub_1377DF0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_13566B4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v11 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_37:
    v13 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_29;
    }
  }

LABEL_9:
  if ((v6 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_33:
  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_11:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_41:
  v14 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v14 + 23) < 0)
  {
    **v14 = 0;
    *(v14 + 8) = 0;
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_45;
    }

LABEL_13:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *v14 = 0;
  *(v14 + 23) = 0;
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_45:
  result = sub_13561D4(*(a1 + 120));
  if ((v6 & 0x80) != 0)
  {
LABEL_14:
    result = sub_16E48B0(*(a1 + 128));
  }

LABEL_15:
  if ((v6 & 0x100) != 0)
  {
    result = sub_16F8B98(*(a1 + 136));
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

uint64_t sub_1377FE8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v40 = a2;
  if (sub_195ADC0(a3, v40, a3[11].u32[1]))
  {
    return *v40;
  }

  while (1)
  {
    v6 = (*v40 + 1);
    v7 = **v40;
    if (**v40 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v40, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v40 + 2);
      }
    }

    *v40 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 5)
    {
      break;
    }

    if (v7 >> 3 <= 7)
    {
      if (v10 != 6)
      {
        if (v10 == 7 && v7 == 58)
        {
          *(a1 + 40) |= 0x10u;
          v20 = *(a1 + 8);
          v12 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v12 = *v12;
          }

          v13 = (a1 + 104);
          goto LABEL_69;
        }

        goto LABEL_79;
      }

      if (v7 != 50)
      {
        goto LABEL_79;
      }

      *(a1 + 40) |= 0x40u;
      v27 = *(a1 + 120);
      if (!v27)
      {
        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        v27 = sub_137936C(v29);
        *(a1 + 120) = v27;
        v6 = *v40;
      }

      v17 = sub_2201CA0(a3, v27, v6);
    }

    else
    {
      if (v10 == 8)
      {
        if (v7 == 66)
        {
          *(a1 + 40) |= 0x20u;
          v31 = *(a1 + 8);
          v12 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v12 = *v12;
          }

          v13 = (a1 + 112);
          goto LABEL_69;
        }

        goto LABEL_79;
      }

      if (v10 == 9)
      {
        if (v7 != 74)
        {
          goto LABEL_79;
        }

        *(a1 + 40) |= 0x80u;
        v34 = *(a1 + 128);
        if (!v34)
        {
          v35 = *(a1 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_16F5BD8(v36);
          *(a1 + 128) = v34;
          v6 = *v40;
        }

        v17 = sub_21F7188(a3, v34, v6);
      }

      else
      {
        if (v10 != 201 || v7 != 74)
        {
          goto LABEL_79;
        }

        *(a1 + 40) |= 0x100u;
        v14 = *(a1 + 136);
        if (!v14)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v14 = sub_16F9FEC(v16);
          *(a1 + 136) = v14;
          v6 = *v40;
        }

        v17 = sub_2201EE0(a3, v14, v6);
      }
    }

LABEL_70:
    *v40 = v17;
    if (!v17)
    {
      goto LABEL_91;
    }

LABEL_71:
    if (sub_195ADC0(a3, v40, a3[11].u32[1]))
    {
      return *v40;
    }
  }

  if (v7 >> 3 <= 2)
  {
    if (v10 == 1)
    {
      if (v7 == 10)
      {
        v21 = v6 - 1;
        while (1)
        {
          v22 = v21 + 1;
          *v40 = v21 + 1;
          v23 = *(a1 + 64);
          if (v23 && (v24 = *(a1 + 56), v24 < *v23))
          {
            *(a1 + 56) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = sub_13793F0(*(a1 + 48));
            v25 = sub_19593CC(a1 + 48, v26);
            v22 = *v40;
          }

          v21 = sub_2201C10(a3, v25, v22);
          *v40 = v21;
          if (!v21)
          {
            goto LABEL_91;
          }

          if (*a3 <= v21 || *v21 != 10)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 40) |= 1u;
      v19 = *(a1 + 8);
      v12 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v12 = *v12;
      }

      v13 = (a1 + 72);
      goto LABEL_69;
    }
  }

  else if (v10 == 3)
  {
    if (v7 == 26)
    {
      *(a1 + 40) |= 2u;
      v30 = *(a1 + 8);
      v12 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v12 = *v12;
      }

      v13 = (a1 + 80);
      goto LABEL_69;
    }
  }

  else if (v10 == 4)
  {
    if (v7 == 34)
    {
      *(a1 + 40) |= 4u;
      v32 = *(a1 + 8);
      v12 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v12 = *v12;
      }

      v13 = (a1 + 88);
      goto LABEL_69;
    }
  }

  else if (v10 == 5 && v7 == 42)
  {
    *(a1 + 40) |= 8u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v13 = (a1 + 96);
LABEL_69:
    v33 = sub_194DB04(v13, v12);
    v17 = sub_1958890(v33, *v40, a3);
    goto LABEL_70;
  }

LABEL_79:
  if (v7)
  {
    v37 = (v7 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    if (v7 - 800 > 0x31F)
    {
      v38 = *(a1 + 8);
      if (v38)
      {
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v39 = sub_11F1920((a1 + 8));
        v6 = *v40;
      }

      v17 = sub_1952690(v7, v39, v6, a3);
    }

    else
    {
      v17 = sub_19525AC((a1 + 16), v7, v6, &off_276CF48, (a1 + 8), a3);
    }

    goto LABEL_70;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v40;
  }

LABEL_91:
  *v40 = 0;
  return *v40;
}

char *sub_1378450(uint64_t a1, char *a2, unint64_t *a3)
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

      a2 = sub_1356FEC(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    a2 = sub_128AEEC(a3, 2, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v11 & 2) == 0)
    {
LABEL_11:
      if ((v11 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_11;
  }

  a2 = sub_128AEEC(a3, 3, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v11 & 4) == 0)
  {
LABEL_12:
    if ((v11 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  a2 = sub_128AEEC(a3, 4, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v11 & 8) == 0)
  {
LABEL_13:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  a2 = sub_128AEEC(a3, 5, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v11 & 0x40) == 0)
  {
LABEL_14:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_22:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v12 = *(a1 + 120);
  *a2 = 50;
  v13 = *(v12 + 20);
  a2[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, a2 + 1);
  }

  else
  {
    v14 = a2 + 2;
  }

  a2 = sub_13563D0(v12, v14, a3);
  if ((v11 & 0x10) == 0)
  {
LABEL_15:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  a2 = sub_128AEEC(a3, 7, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v11 & 0x20) == 0)
  {
LABEL_16:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

LABEL_29:
  a2 = sub_128AEEC(a3, 8, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v11 & 0x80) == 0)
  {
    goto LABEL_36;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v15 = *(a1 + 128);
  *a2 = 74;
  v16 = *(v15 + 44);
  a2[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, a2 + 1);
  }

  else
  {
    v17 = a2 + 2;
  }

  a2 = sub_16E886C(v15, v17, a3);
LABEL_36:
  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 100, 200, a2, a3);
  }

  if ((v11 & 0x100) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v18 = *(a1 + 136);
    *a2 = 3274;
    v19 = *(v18 + 20);
    a2[2] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, a2 + 2);
    }

    else
    {
      v20 = a2 + 3;
    }

    a2 = sub_16F8E64(v18, v20, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return a2;
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

  if ((*a3 - a2) >= v24)
  {
    v26 = v24;
    memcpy(a2, v25, v24);
    a2 += v26;
    return a2;
  }

  return sub_1957130(a3, v25, v24, a2);
}

uint64_t sub_13787C4(uint64_t a1)
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
      v9 = sub_1357318(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if (!v10)
  {
    goto LABEL_17;
  }

  if (v10)
  {
    v15 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v18 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_27:
  v21 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v4 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_30:
  v24 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  v26 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  v4 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x10) == 0)
  {
LABEL_13:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_36:
    v30 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v30 + 23);
    v32 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    v4 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 0x40) == 0)
    {
LABEL_15:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_33:
  v27 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v4 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_14:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_39:
  v33 = sub_13564B8(*(a1 + 120));
  v4 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x80) != 0)
  {
LABEL_16:
    v11 = sub_16E8DA4(*(a1 + 128));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v10 & 0x100) != 0)
  {
    v12 = sub_16F903C(*(a1 + 136));
    v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v34 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v4 += v35;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1378AC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B48F0((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if (!v9)
  {
    goto LABEL_13;
  }

  if (v9)
  {
    v10 = *(a2 + 72);
    *(a1 + 40) |= 1u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 72), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
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

  v13 = *(a2 + 80);
  *(a1 + 40) |= 2u;
  v14 = *(a1 + 8);
  v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14)
  {
    v15 = *v15;
  }

  sub_194EA1C((a1 + 80), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v9 & 4) == 0)
  {
LABEL_8:
    if ((v9 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_21:
  v16 = *(a2 + 88);
  *(a1 + 40) |= 4u;
  v17 = *(a1 + 8);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  sub_194EA1C((a1 + 88), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v9 & 8) == 0)
  {
LABEL_9:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_24:
  v19 = *(a2 + 96);
  *(a1 + 40) |= 8u;
  v20 = *(a1 + 8);
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    v21 = *v21;
  }

  sub_194EA1C((a1 + 96), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_27:
  v22 = *(a2 + 104);
  *(a1 + 40) |= 0x10u;
  v23 = *(a1 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v24 = *v24;
  }

  sub_194EA1C((a1 + 104), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v9 & 0x20) == 0)
  {
LABEL_11:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_30:
  v25 = *(a2 + 112);
  *(a1 + 40) |= 0x20u;
  v26 = *(a1 + 8);
  v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
  if (v26)
  {
    v27 = *v27;
  }

  sub_194EA1C((a1 + 112), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
  if ((v9 & 0x40) != 0)
  {
LABEL_33:
    *(a1 + 40) |= 0x40u;
    v28 = *(a1 + 120);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_137936C(v30);
      *(a1 + 120) = v28;
    }

    if (*(a2 + 120))
    {
      v31 = *(a2 + 120);
    }

    else
    {
      v31 = &off_276C320;
    }

    sub_12F5A34(v28, v31);
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_41;
    }

LABEL_13:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

LABEL_12:
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_41:
  *(a1 + 40) |= 0x80u;
  v32 = *(a1 + 128);
  if (!v32)
  {
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    v32 = sub_16F5BD8(v34);
    *(a1 + 128) = v32;
  }

  if (*(a2 + 128))
  {
    v35 = *(a2 + 128);
  }

  else
  {
    v35 = &off_277E738;
  }

  sub_16E4964(v32, v35);
  if ((v9 & 0x100) != 0)
  {
LABEL_49:
    *(a1 + 40) |= 0x100u;
    v36 = *(a1 + 136);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_16F9FEC(v38);
      *(a1 + 136) = v36;
    }

    if (*(a2 + 136))
    {
      v39 = *(a2 + 136);
    }

    else
    {
      v39 = &off_277ED18;
    }

    sub_1645A7C(v36, v39);
  }

LABEL_57:
  sub_225EA0C(a1 + 16, a2 + 16);
  v40 = *(a2 + 8);
  if (v40)
  {

    sub_1957EF4((a1 + 8), (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1378DD8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1358338(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 0x80) == 0)
    {
      return 1;
    }

    result = sub_16E4B4C(*(a1 + 128));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1378E58(uint64_t a1)
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

void sub_1378EF8(uint64_t a1)
{
  sub_1378E58(a1);

  operator delete();
}

uint64_t sub_1378F30(uint64_t a1)
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

uint64_t sub_1378F78(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v24, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v24 + 1);
    v7 = **v24;
    if (**v24 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v24, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v24 + 2);
      }
    }

    *v24 = v6;
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v18 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v18;
        v21 = (v20 << 7) + v19;
        LODWORD(v19) = v21 - 128;
        if (v20 < 0)
        {
          *v24 = sub_19587DC(v6, (v21 - 128));
          if (!*v24)
          {
            goto LABEL_39;
          }

          LODWORD(v19) = v22;
        }

        else
        {
          v18 = v6 + 2;
LABEL_28:
          *v24 = v18;
        }

        if (sub_14CB318(v19))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v19;
        }

        else
        {
          sub_12E8450();
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
          return *v24;
        }

LABEL_39:
        *v24 = 0;
        return *v24;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = *v24;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_23;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v24, a3);
LABEL_23:
    *v24 = v14;
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  return *v24;
}

char *sub_1379148(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1379290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
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
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
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

    v2 += v11;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_137936C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7190;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_13793F0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D7210;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = a1;
  *(result + 56) = 0;
  *(result + 60) = -1;
  return result;
}

double sub_137949C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D7290;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

double sub_1379524(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D7310;
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
  *(v2 + 120) = &qword_278E990;
  result = 0.0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 189) = 0u;
  return result;
}

void *sub_13795F4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7390;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_137967C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7410;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  return result;
}

void *sub_1379704(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7490;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_137977C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_135CCA8(v2, a1, 0);
}

double sub_1379840(uint64_t *a1)
{
  if (!a1)
  {

    sub_13B497C();
  }

  *v3 = &off_26D7590;
  *(v3 + 8) = a1;
  *(v3 + 16) = 0;
  *(v3 + 24) = &qword_278E990;
  *(v3 + 32) = &qword_278E990;
  *(v3 + 40) = &qword_278E990;
  *(v3 + 48) = &qword_278E990;
  *(v3 + 56) = &qword_278E990;
  *(v3 + 64) = &qword_278E990;
  *(v3 + 72) = &qword_278E990;
  *(v3 + 80) = &qword_278E990;
  result = 0.0;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0;
  return result;
}

uint64_t sub_13798CC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D7610;
  *(result + 16) = 0;
  *(result + 23) = 0;
  return result;
}

double sub_1379948(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D7690;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

void *sub_13799D8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7710;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_1379A5C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D7790;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  return result;
}

double sub_1379B00(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D7810;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  return result;
}

void *sub_1379BA4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D7890;
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

void *sub_1379C4C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7910;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  return result;
}

void *sub_1379CD4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7990;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1379D50(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7A10;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

void *sub_1379DD8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7A90;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1379E50(uint64_t *a1)
{
  if (!a1)
  {

    sub_13B49F0();
  }

  return sub_1365028(v3, a1, 0);
}

uint64_t sub_1379EAC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D7B90;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 52) = 0;
  return result;
}

void *sub_1379F3C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7C10;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1379FB8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7C90;
  result[2] = 0;
  *(result + 22) = 0;
  return result;
}

uint64_t sub_137A034(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D7D10;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = 0;
  *(result + 88) = 0;
  return result;
}

double sub_137A0E4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D7D90;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t sub_137A174(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D7E10;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_137A1F0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D7E90;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_137A28C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D7F10;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_137A304(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D7F90;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 60) = 0u;
  return result;
}

double sub_137A3A4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D8010;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 1;
  return result;
}

double sub_137A440(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D8090;
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
  *(v2 + 176) = &qword_278E990;
  *(v2 + 184) = &qword_278E990;
  result = 0.0;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0;
  return result;
}

void *sub_137A524(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D8110;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = 0;
  result[8] = 0;
  return result;
}

uint64_t sub_137A5B0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D8190;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  return result;
}

double sub_137A640(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D8210;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = 0;
  return result;
}

uint64_t sub_137A6D8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D8290;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_137A754(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D8310;
  result = 0.0;
  *(v2 + 16) = xmmword_232F5B0;
  return result;
}

uint64_t sub_137A7D4(uint64_t *a1)
{
  if (!a1)
  {

    sub_13B4A5C();
  }

  return sub_136FAA0(v3, a1, 0);
}

uint64_t sub_137A830(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D8410;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 36) = 0;
  return result;
}

double sub_137A8BC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D8490;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 81) = 0u;
  return result;
}

uint64_t sub_137A970(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D8510;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_137AA0C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D8590;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = &qword_278E990;
  *(result + 104) = &qword_278E990;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 112) = 0;
  *(result + 136) = 0;
  return result;
}

void *sub_137AAD0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D8610;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_137AB54(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D8690;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_137ABD8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D8710;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

double sub_137AC60(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D8790;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  *(v2 + 56) = &qword_278E990;
  result = 0.0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 1;
  return result;
}

double sub_137AD18(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D8810;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 1;
  return result;
}

void *sub_137ADAC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D8890;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_137AE34(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D8910;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_137AEB0(uint64_t *a1)
{
  if (!a1)
  {

    sub_13B4AC8();
  }

  return sub_1377B40(v3, a1, 0);
}

uint64_t sub_137AF0C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D8A10;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

void *sub_137AFC4(void *a1)
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

void sub_137B038(void *a1)
{
  sub_137AFC4(a1);

  operator delete();
}

uint64_t sub_137B070(uint64_t a1)
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

char *sub_137B098(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_137B2E0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_137B518(_DWORD *a1)
{
  v2 = a1[4];
  if (v2)
  {
    result = ((9 * (__clz(a1[6] | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(a1[7] | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(a1[8] | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_137B5A8(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    result = sub_137B518(a1);
  }

  else
  {
    v2 = vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*(a1 + 28) | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL);
    result = v2.i32[0] + ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + v2.i32[1] + 3;
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

void *sub_137B680(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B4B34(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_137B700(void *a1)
{
  sub_137B680(a1);

  operator delete();
}

uint64_t sub_137B738(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_137B070(v4);
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

char *sub_137B7C8(uint64_t a1, char *a2, int32x2_t *a3)
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
            v24 = sub_1383294(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v32;
          }

          v19 = sub_2202480(a3, v23, v20);
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

char *sub_137BA68(uint64_t a1, char *__dst, unint64_t *a3)
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

      v11 = sub_137B2E0(v17, v19, a3);
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

uint64_t sub_137BCB4(_DWORD *a1)
{
  v1 = a1[4];
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_6;
  }

  v3 = a1[12];
  if (v3 < 0)
  {
    v2 = 11;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_6;
  }

  v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v2 += ((9 * (__clz(a1[13] | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_137BD28(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v6 = sub_137BCB4(a1);
  }

  else
  {
    v2 = 12;
    v3 = *(a1 + 48);
    v4 = v3 >= 0;
    v5 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v4)
    {
      v2 = v5;
    }

    v6 = v2 + ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6);
  }

  v7 = *(a1 + 32);
  v8 = v6 + v7;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v13 = sub_137B5A8(v12);
      v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      v11 -= 8;
    }

    while (v11);
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v8 += v17;
  }

  *(a1 + 20) = v8;
  return v8;
}

uint64_t **sub_137BE30(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    result = sub_13B4ED0((v3 + 24), v6, (v5 + 8), v4, **(v3 + 40) - *(v3 + 32));
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

BOOL sub_137BF1C(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  do
  {
    result = v1 < 1;
    if (v1 < 1)
    {
      break;
    }

    v4 = *(v2 + 8 * v1--);
  }

  while ((~*(v4 + 16) & 7) == 0);
  return result;
}

uint64_t sub_137BF74(uint64_t a1)
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

void sub_137C040(uint64_t a1)
{
  sub_137BF74(a1);

  operator delete();
}

uint64_t sub_137C078(uint64_t a1)
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
  *(result + 40) = 0;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_137C134(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v28, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v28 + 1);
    v8 = **v28;
    if (**v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v28 + 2);
      }
    }

    *v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v19 = *(a1 + 8);
          v14 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v14 = *v14;
          }

          v15 = (a1 + 24);
          goto LABEL_32;
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_33;
    }

    v5 |= 8u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_23:
      *v28 = v17;
      *(a1 + 48) = v16 != 0;
      goto LABEL_41;
    }

    v26 = sub_19587DC(v7, v16);
    *v28 = v26;
    *(a1 + 48) = v27 != 0;
    if (!v26)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (sub_195ADC0(a3, v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 4u;
    v20 = *(a1 + 8);
    v14 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v14 = *v14;
    }

    v15 = (a1 + 40);
LABEL_32:
    v21 = sub_194DB04(v15, v14);
    v22 = sub_1958890(v21, *v28, a3);
LABEL_40:
    *v28 = v22;
    if (!v22)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

LABEL_33:
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
      v7 = *v28;
    }

    v22 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_137C390(uint64_t a1, char *__dst, unint64_t *a3)
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

      goto LABEL_8;
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
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_8:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 48);
  *v4 = 32;
  v4[1] = v7;
  v4 += 2;
LABEL_12:
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

uint64_t sub_137C4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
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
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0xE) != 0)
  {
    if ((v1 & 2) != 0)
    {
      v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

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

    v2 += (v1 >> 2) & 2;
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

void sub_137C5F8(uint64_t a1, uint64_t a2)
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

        goto LABEL_18;
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
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_18:
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

void *sub_137C744(void *a1)
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

void sub_137C7B8(void *a1)
{
  sub_137C744(a1);

  operator delete();
}

uint64_t sub_137C7F0(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

char *sub_137C814(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_35;
      }

      v5 |= 4u;
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
        v36 = v22;
        *(a1 + 32) = v23;
        goto LABEL_42;
      }

      v34 = sub_1958770(v7, v23);
      v36 = v34;
      *(a1 + 32) = v35;
      if (!v34)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_35;
      }

      v5 |= 8u;
      v16 = v7 + 1;
      v17 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v16;
      v17 = v17 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_24:
        v36 = v16;
        *(a1 + 36) = v17;
        goto LABEL_42;
      }

      v28 = sub_1958770(v7, v17);
      v36 = v28;
      *(a1 + 36) = v29;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

LABEL_42:
    if (sub_195ADC0(a3, &v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_35;
    }

    v5 |= 1u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_29:
      v36 = v19;
      *(a1 + 24) = v20;
      goto LABEL_42;
    }

    v32 = sub_1958770(v7, v20);
    v36 = v32;
    *(a1 + 24) = v33;
    if (!v32)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
    v13 = v7 + 1;
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_17:
      v36 = v13;
      *(a1 + 28) = v14;
      goto LABEL_42;
    }

    v30 = sub_1958770(v7, v14);
    v36 = v30;
    *(a1 + 28) = v31;
    if (!v30)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = v36;
    }

    v36 = sub_1952690(v8, v27, v7, a3);
    if (!v36)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_137CAC8(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_137CD84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_11;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_10:
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
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

uint64_t sub_137CE90(uint64_t a1)
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

  if (a1 != &off_276D000)
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