uint64_t sub_138F6DC(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
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

  *(a1 + 40) = result;
  return result;
}

void sub_138F72C(uint64_t a1, uint64_t a2)
{
  sub_225EA0C(a1 + 16, a2 + 16);
  v4 = *(a2 + 8);
  if (v4)
  {

    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_138F7A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D9A90;
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
    sub_13B5808((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  return a1;
}

uint64_t sub_138F9B4(uint64_t a1)
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

  if (a1 != &off_276D6B0)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_13911AC(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_1390898(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_13B557C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_138FAAC(uint64_t a1)
{
  sub_138F9B4(a1);

  operator delete();
}

uint64_t sub_138FAE4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_138FC40(v4);
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
  result = sub_138FBC4(*(v1 + 56));
  if ((v5 & 4) != 0)
  {
LABEL_9:
    result = sub_138FC40(*(v1 + 64));
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

uint64_t sub_138FBC4(uint64_t a1)
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

unsigned __int8 *sub_138FC40(unsigned __int8 *result)
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
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
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

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_16E4E44(*(result + 5));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
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

uint64_t sub_138FD20(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
          v22 = v6 - 1;
          while (1)
          {
            v23 = v22 + 1;
            *v32 = v22 + 1;
            v24 = *(a1 + 40);
            if (v24 && (v25 = *(a1 + 32), v25 < *v24))
            {
              *(a1 + 32) = v25 + 1;
              v26 = *&v24[2 * v25 + 2];
            }

            else
            {
              v27 = sub_1392DFC(*(a1 + 24));
              v26 = sub_19593CC(a1 + 24, v27);
              v23 = *v32;
            }

            v22 = sub_2203290(a3, v26, v23);
            *v32 = v22;
            if (!v22)
            {
              break;
            }

            if (*a3 <= v22 || *v22 != 26)
            {
              goto LABEL_49;
            }
          }

LABEL_54:
          *v32 = 0;
          return *v32;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 4u;
        v16 = *(a1 + 64);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_1392DFC(v18);
          *(a1 + 64) = v16;
          v6 = *v32;
        }

        v15 = sub_2203290(a3, v16, v6);
        goto LABEL_48;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v21 = sub_194DB04((a1 + 48), v20);
        v15 = sub_1958890(v21, *v32, a3);
        goto LABEL_48;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 56);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_1392E88(v14);
        *(a1 + 56) = v12;
        v6 = *v32;
      }

      v15 = sub_2203200(a3, v12, v6);
      goto LABEL_48;
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

    v15 = sub_1952690(v7, v30, v6, a3);
LABEL_48:
    *v32 = v15;
    if (!v15)
    {
      goto LABEL_54;
    }

LABEL_49:
    ;
  }

  return *v32;
}

char *sub_138FFB0(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_139141C(v7, v9, a3);
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

      v4 = sub_1390CAC(v12, v14, a3);
    }
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

    v4 = sub_1390CAC(v15, v17, a3);
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

uint64_t sub_13901DC(uint64_t a1)
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
      v7 = sub_1390F04(v6);
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

    v15 = sub_1391504(*(a1 + 56));
    v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v9 = sub_1390F04(*(a1 + 64));
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

void sub_1390340(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B5808((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      v13 = sub_1392E88(v15);
      *(a1 + 56) = v13;
    }

    if (*(a2 + 56))
    {
      v16 = *(a2 + 56);
    }

    else
    {
      v16 = &off_276D738;
    }

    sub_12F5A34(v13, v16);
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

        v17 = sub_1392DFC(v19);
        *(a1 + 64) = v17;
      }

      if (*(a2 + 64))
      {
        v20 = *(a2 + 64);
      }

      else
      {
        v20 = &off_276D6F8;
      }

      sub_13904E0(v17, v20);
    }
  }

LABEL_28:
  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13904E0(uint64_t a1, uint64_t a2)
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

      goto LABEL_27;
    }

LABEL_19:
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

      v12 = sub_16F5828(v14);
      *(a1 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_277E5E8;
    }

    sub_16E527C(v12, v15);
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

LABEL_27:
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

uint64_t sub_1390638(uint64_t a1)
{
  result = sub_1390688(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 4) == 0)
    {
      return 1;
    }

    v3 = *(a1 + 64);
    if ((*(v3 + 16) & 4) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(v3 + 40));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1390688(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 4) != 0)
    {
      result = sub_16E5370(*(v3 + 40));
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

uint64_t sub_13906E4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1390724(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D9B10;
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

  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v9;
  return a1;
}

uint64_t sub_1390898(uint64_t a1)
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

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_276D6F8)
  {
    v6 = *(a1 + 40);
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

LABEL_12:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1390980(uint64_t a1)
{
  sub_1390898(a1);

  operator delete();
}

uint64_t sub_13909B8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_43;
      }

      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v19 = (a1 + 24);
LABEL_31:
      v21 = sub_194DB04(v19, v18);
      v22 = sub_1958890(v21, *v35, a3);
LABEL_50:
      *v35 = v22;
      if (!v22)
      {
        goto LABEL_61;
      }

      goto LABEL_51;
    }

    if (v8 != 8)
    {
      goto LABEL_43;
    }

    v5 |= 8u;
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
      *v35 = v27;
      *(a1 + 48) = v26;
      goto LABEL_51;
    }

    v32 = sub_19587DC(v7, v26);
    *v35 = v32;
    *(a1 + 48) = v33;
    if (!v32)
    {
      goto LABEL_61;
    }

LABEL_51:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_43;
    }

    *(a1 + 16) |= 2u;
    v20 = *(a1 + 8);
    v18 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v18 = *v18;
    }

    v19 = (a1 + 32);
    goto LABEL_31;
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_43;
    }

    *(a1 + 16) |= 4u;
    v23 = *(a1 + 40);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5828(v25);
      *(a1 + 40) = v23;
      v7 = *v35;
    }

    v22 = sub_21F4D60(a3, v23, v7);
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
        *v35 = sub_19587DC(v7, (v15 - 128));
        if (!*v35)
        {
          goto LABEL_61;
        }

        LODWORD(v13) = v34;
        goto LABEL_16;
      }

      v12 = v7 + 2;
    }

    *v35 = v12;
LABEL_16:
    if (sub_1796880(v13))
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 56) = v13;
    }

    else
    {
      sub_12E85B8();
    }

    goto LABEL_51;
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
      v7 = *v35;
    }

    v22 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_1390CAC(uint64_t a1, char *__dst, unint64_t *a3)
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

LABEL_17:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v12 = *(a1 + 40);
      *v6 = 34;
      v13 = *(v12 + 44);
      v6[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v6 + 1);
      }

      else
      {
        v14 = v6 + 2;
      }

      v6 = sub_16E5070(v12, v14, a3);
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 56);
  *v6 = 40;
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

LABEL_30:
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

uint64_t sub_1390F04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_22;
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
    v10 = sub_16E51F0(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v11 = *(a1 + 56);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v12;
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

    v3 += v16;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_13910A0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_26D9B90;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4(a1 + 1, (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  a1[3] = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C(a1 + 3, (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  a1[4] = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C(a1 + 4, (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
  }

  return a1;
}

void sub_139117C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_13911AC(uint64_t a1)
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

void sub_1391264(uint64_t a1)
{
  sub_13911AC(a1);

  operator delete();
}

uint64_t sub_139129C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_139141C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1391504(uint64_t a1)
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

void *sub_13915F0(void *a1)
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

void sub_1391664(void *a1)
{
  sub_13915F0(a1);

  operator delete();
}

uint64_t sub_139169C(uint64_t a1)
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

char *sub_13916C0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v25, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v25 + 1;
    v7 = *v25;
    if (*v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v25 + 2;
      }
    }

    v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v14 = v6 + 1;
        v15 = *v6;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v14;
        v17 = (v16 << 7) + v15;
        LODWORD(v15) = v17 - 128;
        if (v16 < 0)
        {
          v25 = sub_19587DC(v6, (v17 - 128));
          if (!v25)
          {
            return 0;
          }

          LODWORD(v15) = v22;
        }

        else
        {
          v14 = v6 + 2;
LABEL_24:
          v25 = v14;
        }

        if (sub_143C3F0(v15))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 28) = v15;
        }

        else
        {
          sub_12E8418();
        }

        continue;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v18 = v6 + 1;
      v19 = *v6;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v20 = *v18;
      v21 = (v20 << 7) + v19;
      LODWORD(v19) = v21 - 128;
      if (v20 < 0)
      {
        v25 = sub_19587DC(v6, (v21 - 128));
        if (!v25)
        {
          return 0;
        }

        LODWORD(v19) = v23;
      }

      else
      {
        v18 = v6 + 2;
LABEL_30:
        v25 = v18;
      }

      if (sub_143C53C(v19))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v19;
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
        return v25;
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
      v6 = v25;
    }

    v25 = sub_1952690(v7, v13, v6, a3);
    if (!v25)
    {
      return 0;
    }
  }

  return v25;
}

char *sub_13918D0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1391A80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
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

uint64_t sub_1391B50(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_26D9C90;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13B5894(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_1391C30(_Unwind_Exception *a1)
{
  sub_13B5600(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1391C78(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B5600(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1391CF8(void *a1)
{
  sub_1391C78(a1);

  operator delete();
}

uint64_t sub_1391D30(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_139169C(v4);
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

char *sub_1391DAC(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1392F0C(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2203320(a3, v16, v13);
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

char *sub_1391F3C(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_13918D0(v8, v10, a3);
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

uint64_t sub_139207C(uint64_t a1)
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
      v7 = sub_1391A80(v6);
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

std::string *sub_1392124(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_13B5894((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
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

void *sub_13921F8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D8F90;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1392270(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26D9010;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_13922EC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26D9090;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_1392368(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D9110;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_13923E0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26D9190;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1392460(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D9210;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

void *sub_13924FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D9290;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_1392574(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26D9310;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 85) = 0;
  return result;
}

uint64_t sub_1392628(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26D9390;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_13926A4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D9410;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_1392728(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D9490;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_13927A0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D9510;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_1392820(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D9590;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_13928A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D9610;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1392924(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D9690;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_139299C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D9710;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[9] = 0;
  result[10] = 0;
  result[8] = &qword_278E990;
  return result;
}

uint64_t sub_1392A48(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26D9790;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_1392AD4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D9810;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_1392B7C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D9890;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1392BF8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D9910;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_1392C78(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26D9990;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_1392CF8(uint64_t *a1)
{
  if (!a1)
  {

    sub_13B5910();
  }

  return sub_138F270(v3, a1, 0);
}

void *sub_1392D54(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D9A90;
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

uint64_t sub_1392DFC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26D9B10;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

void *sub_1392E88(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26D9B90;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_1392F0C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D9C10;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1392F84(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D9C90;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1393084(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_26D9D10;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13B5FAC(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_1393164(_Unwind_Exception *a1)
{
  sub_13B597C(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_13931AC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B597C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_139322C(void *a1)
{
  sub_13931AC(a1);

  operator delete();
}

uint64_t sub_1393264(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1393F44(v4);
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

char *sub_13932E0(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_13AE360(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_22033B0(a3, v16, v13);
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

char *sub_1393470(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1394708(v8, v10, a3);
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

uint64_t sub_13935B0(uint64_t a1)
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
      v7 = sub_1394BA0(v6);
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

void sub_1393658(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_13B5FAC((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

BOOL sub_1393714(uint64_t a1)
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
    v5 = sub_1395100(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

BOOL sub_139376C(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1395100(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_13937D4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26D9D90;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  return a1;
}

void sub_139383C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_139386C(void *a1)
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

void sub_13938E8(void *a1)
{
  sub_139386C(a1);

  operator delete();
}

unsigned __int8 *sub_1393920(uint64_t a1)
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

char *sub_1393978(uint64_t a1, char *a2, int32x2_t *a3)
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

    v13 = v6 + 1;
    v12 = *v6;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

    v14 = *v13;
    v12 = (v14 << 7) + v12 - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v6 + 2;
LABEL_16:
      v20 = v13;
      *(a1 + 48) = v12 != 0;
      v5 = 1;
      goto LABEL_21;
    }

    v17 = sub_19587DC(v6, v12);
    v20 = v17;
    *(a1 + 48) = v18 != 0;
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
    if ((v7 - 8000) >> 6 > 0x7C)
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
      v11 = sub_19525AC((a1 + 16), v7, v6, &off_276D7C0, (a1 + 8), a3);
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

char *sub_1393B3C(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, v4, a3);
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

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_1393C40(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16) + 2 * (*(a1 + 40) & 1);
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

void sub_1393C9C(uint64_t a1, uint64_t a2)
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

void *sub_1393D30(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26D9E10;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = &qword_278E990;
  a1[10] = &qword_278E990;
  a1[11] = &qword_278E990;
  a1[13] = 0;
  a1[14] = 0;
  a1[12] = &qword_278E990;
  *(a1 + 119) = 0;
  return a1;
}

void sub_1393DB8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1393DE8(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
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

  if (a1 != &off_276D7F8)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      sub_153BF18(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_13B597C((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1393F0C(uint64_t a1)
{
  sub_1393DE8(a1);

  operator delete();
}

uint64_t sub_1393F44(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1393F44(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 0x1F) == 0)
  {
    goto LABEL_12;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_24:
    v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

  v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  v11 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v11 + 23) & 0x80000000) == 0)
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v6 & 8) != 0)
    {
      goto LABEL_32;
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  **v11 = 0;
  *(v11 + 8) = 0;
  if ((v6 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_32:
  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v12 + 23) & 0x80000000) == 0)
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_144E31C(*(a1 + 104));
    goto LABEL_12;
  }

  **v12 = 0;
  *(v12 + 8) = 0;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if ((v6 & 0xE0) != 0)
  {
    *(a1 + 120) = 0;
    *(a1 + 112) = 0;
  }

  if ((v6 & 0x700) != 0)
  {
    *(a1 + 126) = 0;
    *(a1 + 124) = 0;
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

uint64_t sub_13940D8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 6)
    {
      if (v8 >> 3 > 3)
      {
        if (v11 == 4)
        {
          if (v8 == 34)
          {
            v30 = v7 - 1;
            while (1)
            {
              v31 = (v30 + 1);
              *v57 = v30 + 1;
              v32 = *(a1 + 64);
              if (v32 && (v33 = *(a1 + 56), v33 < *v32))
              {
                *(a1 + 56) = v33 + 1;
                v34 = *&v32[2 * v33 + 2];
              }

              else
              {
                v35 = sub_13AE360(*(a1 + 48));
                v34 = sub_19593CC(a1 + 48, v35);
                v31 = *v57;
              }

              v30 = sub_22033B0(a3, v34, v31);
              *v57 = v30;
              if (!v30)
              {
                goto LABEL_124;
              }

              if (*a3 <= v30 || *v30 != 34)
              {
                goto LABEL_90;
              }
            }
          }

          goto LABEL_97;
        }

        if (v11 == 5)
        {
          if (v8 != 42)
          {
            goto LABEL_97;
          }

          *(a1 + 40) |= 4u;
          v43 = *(a1 + 8);
          v21 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v21 = *v21;
          }

          v22 = (a1 + 88);
        }

        else
        {
          if (v11 != 6 || v8 != 50)
          {
            goto LABEL_97;
          }

          *(a1 + 40) |= 8u;
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v22 = (a1 + 96);
        }
      }

      else if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_97;
        }

        *(a1 + 40) |= 1u;
        v26 = *(a1 + 8);
        v21 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v21 = *v21;
        }

        v22 = (a1 + 72);
      }

      else
      {
        if (v11 != 2)
        {
          if (v11 != 3 || v8 != 26)
          {
            goto LABEL_97;
          }

          *(a1 + 40) |= 0x10u;
          v13 = *(a1 + 104);
          if (!v13)
          {
            v14 = *(a1 + 8);
            v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
            if (v14)
            {
              v15 = *v15;
            }

            v13 = sub_1551A70(v15);
            *(a1 + 104) = v13;
            v7 = *v57;
          }

          v16 = sub_22030E0(a3, v13, v7);
LABEL_89:
          *v57 = v16;
          if (!v16)
          {
            goto LABEL_124;
          }

          goto LABEL_90;
        }

        if (v8 != 18)
        {
          goto LABEL_97;
        }

        *(a1 + 40) |= 2u;
        v39 = *(a1 + 8);
        v21 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v21 = *v21;
        }

        v22 = (a1 + 80);
      }

      v44 = sub_194DB04(v22, v21);
      v16 = sub_1958890(v44, *v57, a3);
      goto LABEL_89;
    }

    if (v8 >> 3 <= 9)
    {
      break;
    }

    if (v11 == 10)
    {
      if (v8 != 80)
      {
        goto LABEL_97;
      }

      v5 |= 0x100u;
      v37 = v7 + 1;
      v36 = *v7;
      if ((v36 & 0x8000000000000000) == 0)
      {
        goto LABEL_72;
      }

      v38 = *v37;
      v36 = (v38 << 7) + v36 - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v37 = v7 + 2;
LABEL_72:
        *v57 = v37;
        *(a1 + 124) = v36 != 0;
        goto LABEL_90;
      }

      v53 = sub_19587DC(v7, v36);
      *v57 = v53;
      *(a1 + 124) = v54 != 0;
      if (!v53)
      {
        goto LABEL_124;
      }
    }

    else if (v11 == 11)
    {
      if (v8 != 88)
      {
        goto LABEL_97;
      }

      v5 |= 0x200u;
      v46 = v7 + 1;
      v45 = *v7;
      if ((v45 & 0x8000000000000000) == 0)
      {
        goto LABEL_96;
      }

      v47 = *v46;
      v45 = (v47 << 7) + v45 - 128;
      if ((v47 & 0x80000000) == 0)
      {
        v46 = v7 + 2;
LABEL_96:
        *v57 = v46;
        *(a1 + 125) = v45 != 0;
        goto LABEL_90;
      }

      v55 = sub_19587DC(v7, v45);
      *v57 = v55;
      *(a1 + 125) = v56 != 0;
      if (!v55)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if (v11 != 12 || v8 != 96)
      {
        goto LABEL_97;
      }

      v5 |= 0x400u;
      v24 = v7 + 1;
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_46:
        *v57 = v24;
        *(a1 + 126) = v23 != 0;
        goto LABEL_90;
      }

      v51 = sub_19587DC(v7, v23);
      *v57 = v51;
      *(a1 + 126) = v52 != 0;
      if (!v51)
      {
        goto LABEL_124;
      }
    }

LABEL_90:
    if (sub_195ADC0(a3, v57, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 7)
  {
    if (v8 != 56)
    {
      goto LABEL_97;
    }

    v28 = v7 + 1;
    v27 = *v7;
    if (v27 < 0)
    {
      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if (v29 < 0)
      {
        *v57 = sub_19587DC(v7, v27);
        if (!*v57)
        {
          goto LABEL_124;
        }

        goto LABEL_56;
      }

      v28 = v7 + 2;
    }

    *v57 = v28;
LABEL_56:
    if (v27 > 2)
    {
      sub_13137F8();
    }

    else
    {
      *(a1 + 40) |= 0x20u;
      *(a1 + 112) = v27;
    }

    goto LABEL_90;
  }

  if (v11 == 8)
  {
    if (v8 != 64)
    {
      goto LABEL_97;
    }

    v41 = v7 + 1;
    v40 = *v7;
    if (v40 < 0)
    {
      v42 = *v41;
      v40 = (v42 << 7) + v40 - 128;
      if (v42 < 0)
      {
        *v57 = sub_19587DC(v7, v40);
        if (!*v57)
        {
          goto LABEL_124;
        }

        goto LABEL_82;
      }

      v41 = v7 + 2;
    }

    *v57 = v41;
LABEL_82:
    if (v40 > 2)
    {
      sub_13B67EC();
    }

    else
    {
      *(a1 + 40) |= 0x40u;
      *(a1 + 116) = v40;
    }

    goto LABEL_90;
  }

  if (v11 == 9 && v8 == 72)
  {
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if (v19 < 0)
    {
      *v57 = sub_19587DC(v7, v17);
      if (!*v57)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v18 = v7 + 2;
LABEL_29:
      *v57 = v18;
    }

    if (v17 > 2)
    {
      sub_13B6774();
    }

    else
    {
      *(a1 + 40) |= 0x80u;
      *(a1 + 120) = v17;
    }

    goto LABEL_90;
  }

LABEL_97:
  if (v8)
  {
    v48 = (v8 & 7) == 4;
  }

  else
  {
    v48 = 1;
  }

  if (!v48)
  {
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v49 = *(a1 + 8);
      if (v49)
      {
        v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v50 = sub_11F1920((a1 + 8));
        v7 = *v57;
      }

      v16 = sub_1952690(v8, v50, v7, a3);
    }

    else
    {
      v16 = sub_19525AC((a1 + 16), v8, v7, &off_276D7F8, (a1 + 8), a3);
    }

    goto LABEL_89;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_124:
  *v57 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v57;
}

char *sub_1394708(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
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

  v4 = sub_128AEEC(a3, 2, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 104);
  *v4 = 26;
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

  v4 = sub_153C1A4(v7, v9, a3);
LABEL_13:
  v10 = *(a1 + 56);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 34;
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

      v4 = sub_1394708(v12, v14, a3);
    }
  }

  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    v4 = sub_128AEEC(a3, 6, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v4 = sub_128AEEC(a3, 5, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  if ((v6 & 0x20) == 0)
  {
LABEL_24:
    v15 = v4;
    goto LABEL_34;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 112);
  *v4 = 56;
  v4[1] = v16;
  if (v16 > 0x7F)
  {
    v4[1] = v16 | 0x80;
    v17 = v16 >> 7;
    v4[2] = v16 >> 7;
    v15 = v4 + 3;
    if (v16 >= 0x4000)
    {
      LOBYTE(v18) = v4[2];
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
    v15 = v4 + 2;
  }

LABEL_34:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v21 = *(a1 + 116);
    *v15 = 64;
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v15[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v15[2] = v21 >> 7;
      v20 = v15 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v23) = v15[2];
        do
        {
          *(v20 - 1) = v23 | 0x80;
          v23 = v22 >> 7;
          *v20++ = v22 >> 7;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v20 = v15 + 2;
    }
  }

  else
  {
    v20 = v15;
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v26 = *(a1 + 120);
    *v20 = 72;
    v20[1] = v26;
    if (v26 > 0x7F)
    {
      v20[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v20[2] = v26 >> 7;
      v25 = v20 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v20) = v20[2];
        do
        {
          *(v25 - 1) = v20 | 0x80;
          v20 = (v27 >> 7);
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = v20 + 2;
    }
  }

  else
  {
    v25 = v20;
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v29 = *(a1 + 124);
    *v25 = 80;
    v25[1] = v29;
    v25 += 2;
    if ((v6 & 0x200) == 0)
    {
LABEL_54:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_54;
  }

  if (*a3 <= v25)
  {
    v25 = sub_225EB68(a3, v25);
  }

  v30 = *(a1 + 125);
  *v25 = 88;
  v25[1] = v30;
  v25 += 2;
  if ((v6 & 0x400) != 0)
  {
LABEL_62:
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v31 = *(a1 + 126);
    *v25 = 96;
    v25[1] = v31;
    v25 += 2;
  }

LABEL_65:
  if (*(a1 + 26))
  {
    v25 = sub_1953428(a1 + 16, 1000, 2000, v25, a3);
  }

  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return v25;
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

  if ((*a3 - v25) >= v35)
  {
    v37 = v35;
    memcpy(v25, v36, v35);
    v25 += v37;
    return v25;
  }

  return sub_1957130(a3, v36, v35, v25);
}

uint64_t sub_1394BA0(uint64_t a1)
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
      v9 = sub_1394BA0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if (!v10)
  {
    goto LABEL_20;
  }

  if (v10)
  {
    v16 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v19 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_31:
  v22 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_34:
  v25 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v4 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x10) == 0)
  {
LABEL_13:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_38:
    v29 = *(a1 + 112);
    if (v29 < 0)
    {
      v30 = 11;
    }

    else
    {
      v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v30;
    if ((v10 & 0x40) == 0)
    {
LABEL_15:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_37:
  v28 = sub_153C388(*(a1 + 104));
  v4 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_14:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_42:
  v31 = *(a1 + 116);
  if (v31 < 0)
  {
    v32 = 11;
  }

  else
  {
    v32 = ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 += v32;
  if ((v10 & 0x80) != 0)
  {
LABEL_16:
    v11 = *(a1 + 120);
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 11;
    }

    v4 += v13;
  }

LABEL_20:
  if ((v10 & 0x700) != 0)
  {
    result = v4 + ((v10 >> 8) & 2) + ((v10 >> 7) & 2) + ((v10 >> 9) & 2);
  }

  else
  {
    result = v4;
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v33 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    result += v34;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_1394E7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B5FAC((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if (v9)
  {
    if (v9)
    {
      v11 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 72), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_31;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 80);
    *(a1 + 40) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 80), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

LABEL_31:
    v17 = *(a2 + 88);
    *(a1 + 40) |= 4u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 88), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_37;
    }

LABEL_34:
    v20 = *(a2 + 96);
    *(a1 + 40) |= 8u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 96), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(a1 + 40) |= 0x10u;
    v23 = *(a1 + 104);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_1551A70(v25);
      *(a1 + 104) = v23;
    }

    if (*(a2 + 104))
    {
      v26 = *(a2 + 104);
    }

    else
    {
      v26 = &off_2776880;
    }

    sub_144F404(v23, v26);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(a1 + 112) = *(a2 + 112);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 40) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 120) = *(a2 + 120);
      goto LABEL_14;
    }

LABEL_46:
    *(a1 + 116) = *(a2 + 116);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0x700) == 0)
  {
    goto LABEL_21;
  }

  if ((v9 & 0x100) == 0)
  {
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_18;
    }

LABEL_49:
    *(a1 + 125) = *(a2 + 125);
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *(a1 + 124) = *(a2 + 124);
  if ((v9 & 0x200) != 0)
  {
    goto LABEL_49;
  }

LABEL_18:
  if ((v9 & 0x400) != 0)
  {
LABEL_19:
    *(a1 + 126) = *(a2 + 126);
  }

LABEL_20:
  *(a1 + 40) |= v9;
LABEL_21:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1395100(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    result = sub_139376C(a1 + 48);
    if (result)
    {
      if ((*(a1 + 40) & 0x10) == 0)
      {
        return 1;
      }

      result = sub_144F674(*(a1 + 104));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1395160(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D9E90;
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
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void sub_1395244(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1395278(uint64_t a1)
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

void sub_1395330(uint64_t a1)
{
  sub_1395278(a1);

  operator delete();
}

uint64_t sub_1395368(uint64_t a1)
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
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_13953E8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v25, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v25 + 1);
    v7 = **v25;
    if (**v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v25 + 2);
      }
    }

    *v25 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = (a1 + 32);
    }

    else
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
            *v25 = sub_19587DC(v6, v16);
            if (!*v25)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v17 = v6 + 2;
LABEL_24:
            *v25 = v17;
          }

          if (v16 > 2)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v16;
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
            return *v25;
          }

LABEL_44:
          *v25 = 0;
          return *v25;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v14 = sub_11F1920((a1 + 8));
          v6 = *v25;
        }

        v15 = sub_1952690(v7, v14, v6, a3);
        goto LABEL_35;
      }

      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v20 = *v20;
      }

      v21 = (a1 + 24);
    }

    v23 = sub_194DB04(v21, v20);
    v15 = sub_1958890(v23, *v25, a3);
LABEL_35:
    *v25 = v15;
    if (!v15)
    {
      goto LABEL_44;
    }
  }

  return *v25;
}

char *sub_13955E4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
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

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v7);
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

uint64_t sub_1395750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_17;
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
    v9 = *(a1 + 40);
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

LABEL_17:
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

void sub_1395858(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_1395368(a1);

    sub_128E5DC(a1, a2);
  }
}

void *sub_13958BC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_26D9F10;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4(a1 + 1, (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  a1[3] = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C(a1 + 3, (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  a1[4] = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C(a1 + 4, (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 16);
  }

  a1[5] = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C(a1 + 5, (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  return a1;
}

void sub_13959C8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_13959FC(uint64_t a1)
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

void sub_1395AC8(uint64_t a1)
{
  sub_13959FC(a1);

  operator delete();
}

uint64_t sub_1395B00(uint64_t a1)
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

uint64_t sub_1395BB8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1395D74(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1395E88(uint64_t a1)
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

uint64_t sub_1395FB8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = off_26D9F90;
  *(a1 + 24) = 0;
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_1958E5C((a1 + 16), v5);
    v6 = *(a1 + 24);
    *(a1 + 16) += *(a2 + 16);
    memcpy(v6, *(a2 + 24), 4 * *(a2 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7 = *(a2 + 32);
  if (v7)
  {
    sub_1958E5C((a1 + 32), v7);
    v8 = *(a1 + 40);
    *(a1 + 32) += *(a2 + 32);
    memcpy(v8, *(a2 + 40), 4 * *(a2 + 32));
  }

  *(a1 + 48) = 0;
  v9 = *(a2 + 8);
  if (v9)
  {
    sub_1957EF4(v4, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_13960AC(_Unwind_Exception *a1)
{
  sub_1956ABC(v4);
  sub_1956ABC(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_13960FC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 4));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1396180(void *a1)
{
  sub_13960FC(a1);

  operator delete();
}

char *sub_13961B8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  if (sub_195ADC0(a3, &v27, a3[11].u32[1]))
  {
    return v27;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v16 = v6 - 1;
        while (1)
        {
          v27 = v16 + 1;
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

          v27 = v16;
          v20 = *(a1 + 32);
          if (v20 == *(a1 + 36))
          {
            v21 = v20 + 1;
            sub_1958E5C((a1 + 32), v20 + 1);
            *(*(a1 + 40) + 4 * v20) = v17;
            v16 = v27;
          }

          else
          {
            *(*(a1 + 40) + 4 * v20) = v17;
            v21 = v20 + 1;
          }

          *(a1 + 32) = v21;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 16)
          {
            goto LABEL_50;
          }
        }
      }

      if (v7 == 18)
      {
        v22 = (a1 + 32);
        goto LABEL_41;
      }
    }

    else if (v7 >> 3 == 1)
    {
      if (v7 == 8)
      {
        v10 = v6 - 1;
        while (1)
        {
          v27 = v10 + 1;
          v11 = v10[1];
          if (v10[1] < 0)
          {
            v12 = v11 + (v10[2] << 7);
            v11 = v12 - 128;
            if (v10[2] < 0)
            {
              v10 = sub_1958770((v10 + 1), v12 - 128);
              v11 = v13;
            }

            else
            {
              v10 += 3;
            }
          }

          else
          {
            v10 += 2;
          }

          v27 = v10;
          v14 = *(a1 + 16);
          if (v14 == *(a1 + 20))
          {
            v15 = v14 + 1;
            sub_1958E5C((a1 + 16), v14 + 1);
            *(*(a1 + 24) + 4 * v14) = v11;
            v10 = v27;
          }

          else
          {
            *(*(a1 + 24) + 4 * v14) = v11;
            v15 = v14 + 1;
          }

          *(a1 + 16) = v15;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 8)
          {
            goto LABEL_50;
          }
        }
      }

      if (v7 == 10)
      {
        v22 = (a1 + 16);
LABEL_41:
        v23 = sub_1958918(v22, v6, a3);
        goto LABEL_49;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v6 = v27;
    }

    v23 = sub_1952690(v7, v26, v6, a3);
LABEL_49:
    v27 = v23;
    if (!v23)
    {
      return 0;
    }

LABEL_50:
    if (sub_195ADC0(a3, &v27, a3[11].u32[1]))
    {
      return v27;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v27;
  }

  return 0;
}

char *sub_1396484(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    v8 = a2;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v7 = *(*(a1 + 24) + 4 * i);
      *a2 = 8;
      a2[1] = v7;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v9 = v7 >> 7;
        a2[2] = v7 >> 7;
        v8 = a2 + 3;
        if (v7 >= 0x4000)
        {
          LOBYTE(v10) = a2[2];
          do
          {
            *(v8 - 1) = v10 | 0x80;
            v10 = v9 >> 7;
            *v8++ = v9 >> 7;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
        }
      }

      else
      {
        v8 = a2 + 2;
      }

      a2 = v8;
    }
  }

  v12 = *(a1 + 32);
  if (v12 < 1)
  {
    v15 = v8;
  }

  else
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 40) + 4 * j);
      *v8 = 16;
      v8[1] = v14;
      if (v14 > 0x7F)
      {
        v8[1] = v14 | 0x80;
        v16 = v14 >> 7;
        v8[2] = v14 >> 7;
        v15 = v8 + 3;
        if (v14 >= 0x4000)
        {
          LOBYTE(v8) = v8[2];
          do
          {
            *(v15 - 1) = v8 | 0x80;
            LODWORD(v8) = v16 >> 7;
            *v15++ = v16 >> 7;
            v17 = v16 >> 14;
            v16 >>= 7;
          }

          while (v17);
        }
      }

      else
      {
        v15 = v8 + 2;
      }

      v8 = v15;
    }
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v21)
  {
    v23 = v21;
    memcpy(v15, v22, v21);
    v15 += v23;
    return v15;
  }

  return sub_1957130(a3, v22, v21, v15);
}

uint64_t sub_139667C(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 16));
  v3 = *(a1 + 16);
  result = v2 + sub_1959E5C((a1 + 32)) + v3 + *(a1 + 32);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    result += v7;
  }

  *(a1 + 48) = result;
  return result;
}

uint64_t sub_139670C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = off_26DA010;
  *(a1 + 24) = 0;
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_1958E5C((a1 + 16), v5);
    v6 = *(a1 + 24);
    *(a1 + 16) += *(a2 + 16);
    memcpy(v6, *(a2 + 24), 4 * *(a2 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7 = *(a2 + 32);
  if (v7)
  {
    sub_1958E5C((a1 + 32), v7);
    v8 = *(a1 + 40);
    *(a1 + 32) += *(a2 + 32);
    memcpy(v8, *(a2 + 40), 4 * *(a2 + 32));
  }

  *(a1 + 48) = 0;
  v9 = *(a2 + 8);
  if (v9)
  {
    sub_1957EF4(v4, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_1396800(_Unwind_Exception *a1)
{
  sub_1956ABC(v4);
  sub_1956ABC(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1396850(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 4));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13968D4(void *a1)
{
  sub_1396850(a1);

  operator delete();
}

char *sub_139690C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
  {
    return v32;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v32 + 1;
    v9 = *v32;
    if (*v32 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v32, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v32 + 2;
      }
    }

    v32 = v8;
    if (v9 >> 3 != 2)
    {
      break;
    }

    if (v9 == 16)
    {
      v21 = v8 - 1;
      while (1)
      {
        v32 = v21 + 1;
        v22 = v21[1];
        v23 = v21 + 2;
        if (v22 < 0)
        {
          v24 = *v23;
          v25 = (v24 << 7) + v22;
          LODWORD(v22) = v25 - 128;
          if (v24 < 0)
          {
            v32 = sub_19587DC((v21 + 1), (v25 - 128));
            if (!v32)
            {
              return 0;
            }

            LODWORD(v22) = v28;
            goto LABEL_33;
          }

          v23 = v21 + 3;
        }

        v32 = v23;
LABEL_33:
        if (v22 > 6)
        {
          sub_12E8418();
        }

        else
        {
          v26 = *(a1 + 32);
          if (v26 == *(a1 + 36))
          {
            v27 = v26 + 1;
            sub_1958E5C((a1 + 32), v26 + 1);
            *(*(a1 + 40) + 4 * v26) = v22;
          }

          else
          {
            *(*(a1 + 40) + 4 * v26) = v22;
            v27 = v26 + 1;
          }

          *(a1 + 32) = v27;
        }

        v21 = v32;
        if (*a3 <= v32 || *v32 != 16)
        {
          goto LABEL_57;
        }
      }
    }

    if (v9 != 18)
    {
      goto LABEL_49;
    }

    *&v33 = a1 + 32;
    *(&v33 + 1) = sub_139303C;
    v34 = a1 + 8;
    v35 = 2;
LABEL_48:
    v29 = sub_1216588(a3, v8, &v33, v5);
LABEL_56:
    v32 = v29;
    if (!v29)
    {
      return 0;
    }

LABEL_57:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
    {
      return v32;
    }
  }

  if (v9 >> 3 == 1)
  {
    if (v9 == 8)
    {
      v13 = v8 - 1;
      while (1)
      {
        v32 = v13 + 1;
        v14 = v13[1];
        v15 = v13 + 2;
        if (v14 < 0)
        {
          v16 = *v15;
          v17 = (v16 << 7) + v14;
          LODWORD(v14) = v17 - 128;
          if (v16 < 0)
          {
            v32 = sub_19587DC((v13 + 1), (v17 - 128));
            if (!v32)
            {
              return 0;
            }

            LODWORD(v14) = v20;
            goto LABEL_16;
          }

          v15 = v13 + 3;
        }

        v32 = v15;
LABEL_16:
        if (v14 > 6)
        {
          sub_12E8450();
        }

        else
        {
          v18 = *(a1 + 16);
          if (v18 == *(a1 + 20))
          {
            v19 = v18 + 1;
            sub_1958E5C((a1 + 16), v18 + 1);
            *(*(a1 + 24) + 4 * v18) = v14;
          }

          else
          {
            *(*(a1 + 24) + 4 * v18) = v14;
            v19 = v18 + 1;
          }

          *(a1 + 16) = v19;
        }

        v13 = v32;
        if (*a3 <= v32 || *v32 != 8)
        {
          goto LABEL_57;
        }
      }
    }

    if (v9 == 10)
    {
      *&v33 = a1 + 16;
      *(&v33 + 1) = sub_139303C;
      v34 = a1 + 8;
      v35 = 1;
      goto LABEL_48;
    }
  }

LABEL_49:
  if (v9)
  {
    v30 = (v9 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    if (*v7)
    {
      v31 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v8 = v32;
    }

    v29 = sub_1952690(v9, v31, v8, a3);
    goto LABEL_56;
  }

  if (!v8)
  {
    return 0;
  }

  a3[10].i32[0] = v9 - 1;
  return v32;
}

char *sub_1396C4C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    v8 = a2;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v7 = *(*(a1 + 24) + 4 * i);
      *a2 = 8;
      a2[1] = v7;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v9 = v7 >> 7;
        a2[2] = v7 >> 7;
        v8 = a2 + 3;
        if (v7 >= 0x4000)
        {
          LOBYTE(v10) = a2[2];
          do
          {
            *(v8 - 1) = v10 | 0x80;
            v10 = v9 >> 7;
            *v8++ = v9 >> 7;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
        }
      }

      else
      {
        v8 = a2 + 2;
      }

      a2 = v8;
    }
  }

  v12 = *(a1 + 32);
  if (v12 < 1)
  {
    v15 = v8;
  }

  else
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 40) + 4 * j);
      *v8 = 16;
      v8[1] = v14;
      if (v14 > 0x7F)
      {
        v8[1] = v14 | 0x80;
        v16 = v14 >> 7;
        v8[2] = v14 >> 7;
        v15 = v8 + 3;
        if (v14 >= 0x4000)
        {
          LOBYTE(v8) = v8[2];
          do
          {
            *(v15 - 1) = v8 | 0x80;
            v8 = (v16 >> 7);
            *v15++ = v16 >> 7;
            v17 = v16 >> 14;
            v16 >>= 7;
          }

          while (v17);
        }
      }

      else
      {
        v15 = v8 + 2;
      }

      v8 = v15;
    }
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v21)
  {
    v23 = v21;
    memcpy(v15, v22, v21);
    v15 += v23;
    return v15;
  }

  return sub_1957130(a3, v22, v21, v15);
}

uint64_t sub_1396E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 24) + 4 * v3);
      if (v4 < 0)
      {
        v5 = 10;
      }

      else
      {
        v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
      }

      v2 += v5;
      ++v3;
    }

    while (v1 != v3);
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*(a1 + 40) + 4 * v7);
      if (v9 < 0)
      {
        v10 = 10;
      }

      else
      {
        v10 = (9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6;
      }

      v8 += v10;
      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = v2 + v1 + v6 + v8;
  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v11 += v15;
  }

  *(a1 + 48) = v11;
  return v11;
}

uint64_t sub_1396F40(uint64_t a1)
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

  if (a1 != &off_276D948)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1397A2C(v6);
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

void sub_139700C(uint64_t a1)
{
  sub_1396F40(a1);

  operator delete();
}

unsigned __int8 *sub_1397044(unsigned __int8 *result)
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
      result = sub_13970E4(*(result + 4));
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

unsigned __int8 *sub_13970E4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17A82BC(v4);
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

uint64_t sub_1397160(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v22 = sub_194DB04((a1 + 24), v21);
        v19 = sub_1958890(v22, *v31, a3);
        goto LABEL_44;
      }

      goto LABEL_37;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
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
      *v31 = v13;
      *(a1 + 40) = v14;
      goto LABEL_45;
    }

    v29 = sub_1958770(v7, v14);
    *v31 = v29;
    *(a1 + 40) = v30;
    if (!v29)
    {
      goto LABEL_55;
    }

LABEL_45:
    if (sub_195ADC0(a3, v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_37;
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
          goto LABEL_55;
        }

        goto LABEL_35;
      }

      v24 = v7 + 2;
    }

    *v31 = v24;
LABEL_35:
    if (v23 > 1)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 44) = v23;
    }

    goto LABEL_45;
  }

  if (v11 == 4 && v8 == 34)
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

      v16 = sub_13AE6A4(v18);
      *(a1 + 32) = v16;
      v7 = *v31;
    }

    v19 = sub_2203440(a3, v16, v7);
LABEL_44:
    *v31 = v19;
    if (!v19)
    {
      goto LABEL_55;
    }

    goto LABEL_45;
  }

LABEL_37:
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

    v19 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_1397408(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
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

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 44);
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
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 32);
    *v12 = 34;
    v18 = *(v17 + 40);
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v12 + 1);
    }

    else
    {
      v19 = v12 + 2;
    }

    v12 = sub_1397C74(v17, v19, a3);
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v23)
  {
    v25 = v23;
    memcpy(v12, v24, v23);
    v12 += v25;
    return v12;
  }

  return sub_1957130(a3, v24, v23, v12);
}

uint64_t sub_139763C(uint64_t a1)
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
    v7 = sub_1397DB4(*(a1 + 32));
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
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(a1 + 44);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v9;
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

void sub_1397784(uint64_t a1, uint64_t a2)
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

      v9 = sub_13AE6A4(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276D978;
    }

    sub_13978A4(v9, v12);
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

void sub_13978A4(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_13B6038((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

BOOL sub_1397960(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    v5 = sub_17A8EF8(*(*(v2 + 32) + 8 * v3));
    v3 = v4;
  }

  while ((v5 & 1) != 0);
  return v1;
}

BOOL sub_13979C4(uint64_t a1)
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

void *sub_1397A2C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B5A00(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1397AAC(void *a1)
{
  sub_1397A2C(a1);

  operator delete();
}

char *sub_1397AE4(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v6 == 18)
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

          if (*a3 <= v12 || *v12 != 18)
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

char *sub_1397C74(uint64_t a1, char *__dst, unint64_t *a3)
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
      *__dst = 18;
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

uint64_t sub_1397DB4(uint64_t a1)
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

unsigned __int8 *sub_1397E6C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = sub_16E4E44(result);
  }

  *(a1 + 16) &= ~1u;
  return result;
}

uint64_t sub_1397EA4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26DA190;
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
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_1397FA8(uint64_t a1)
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
  if (a1 != &off_276D9A8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16E4E08(v6);
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

void sub_1398060(uint64_t a1)
{
  sub_1397FA8(a1);

  operator delete();
}

unsigned __int8 *sub_1398098(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_16E4E44(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_13980F8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v24, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v24 + 1;
    v8 = *v24;
    if (*v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v24 + 2;
      }
    }

    v24 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
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
      v24 = v17;
      *(a1 + 32) = v16 != 0;
      goto LABEL_30;
    }

    v22 = sub_19587DC(v7, v16);
    v24 = v22;
    *(a1 + 32) = v23 != 0;
    if (!v22)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (sub_195ADC0(a3, &v24, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
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

      v19 = sub_16F5828(v21);
      *(a1 + 24) = v19;
      v7 = v24;
    }

    v15 = sub_21F4D60(a3, v19, v7);
LABEL_29:
    v24 = v15;
    if (!v15)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
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
      v7 = v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_37:
  v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

char *sub_13982E0(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 16;
    v4[1] = v10;
    v4 += 2;
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_1398430(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = sub_16E51F0(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    result = v3 + (v2 & 2);
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

void sub_13984C8(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
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

        v5 = sub_16F5828(v7);
        *(result + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277E5E8;
      }

      sub_16E527C(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(result + 32) = *(a2 + 32);
    }

    *(result + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1398598(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13985D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26DA210;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1958E5C((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 4 * *(a2 + 24));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    sub_1957EF4(v4, (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_1398730(uint64_t a1)
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
  if (a1 != &off_276D9D0)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_1397FA8(v6);
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

void sub_13987F0(uint64_t a1)
{
  sub_1398730(a1);

  operator delete();
}

unsigned __int8 *sub_1398828(unsigned __int8 *result)
{
  v1 = result;
  *(result + 6) = 0;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_1398098(*(result + 5));
  }

  if ((v2 & 6) != 0)
  {
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

char *sub_1398894(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
  {
    return v34;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v34 + 1;
    v9 = *v34;
    if (*v34 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v34, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v34 + 2;
      }
    }

    v34 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 > 2)
    {
      if (v13 == 3)
      {
        if (v9 != 24)
        {
          if (v9 == 26)
          {
            *&v35 = a1 + 24;
            *(&v35 + 1) = sub_1393060;
            v36 = a1 + 8;
            v37 = 3;
            v17 = sub_1216588(a3, v8, &v35, v5);
            goto LABEL_66;
          }

          goto LABEL_59;
        }

        v24 = v8 - 1;
        while (2)
        {
          v34 = v24 + 1;
          v25 = v24[1];
          v26 = v24 + 2;
          if (v25 < 0)
          {
            v27 = *v26;
            v28 = (v27 << 7) + v25;
            LODWORD(v25) = v28 - 128;
            if ((v27 & 0x80000000) == 0)
            {
              v26 = v24 + 3;
              goto LABEL_41;
            }

            v34 = sub_19587DC((v24 + 1), (v28 - 128));
            if (!v34)
            {
              return 0;
            }

            LODWORD(v25) = v31;
          }

          else
          {
LABEL_41:
            v34 = v26;
          }

          if (v25 > 1)
          {
            sub_1313740();
          }

          else
          {
            v29 = *(a1 + 24);
            if (v29 == *(a1 + 28))
            {
              v30 = v29 + 1;
              sub_1958E5C((a1 + 24), v29 + 1);
              *(*(a1 + 32) + 4 * v29) = v25;
            }

            else
            {
              *(*(a1 + 32) + 4 * v29) = v25;
              v30 = v29 + 1;
            }

            *(a1 + 24) = v30;
          }

          v24 = v34;
          if (*a3 <= v34 || *v34 != 24)
          {
            goto LABEL_67;
          }

          continue;
        }
      }

      if (v13 != 4 || v9 != 32)
      {
        goto LABEL_59;
      }

      v19 = v8 + 1;
      v18 = *v8;
      if (v18 < 0)
      {
        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v34 = sub_19587DC(v8, v18);
          if (!v34)
          {
            return 0;
          }

          goto LABEL_27;
        }

        v19 = v8 + 2;
      }

      v34 = v19;
LABEL_27:
      if (v18 > 5)
      {
        sub_12E8500();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 52) = v18;
      }

      goto LABEL_67;
    }

    if (v13 != 1)
    {
      break;
    }

    if (v9 != 8)
    {
      goto LABEL_59;
    }

    v22 = v8 + 1;
    v21 = *v8;
    if (v21 < 0)
    {
      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if (v23 < 0)
      {
        v34 = sub_19587DC(v8, v21);
        if (!v34)
        {
          return 0;
        }

        goto LABEL_34;
      }

      v22 = v8 + 2;
    }

    v34 = v22;
LABEL_34:
    if (v21 > 3)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 48) = v21;
    }

LABEL_67:
    if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
    {
      return v34;
    }
  }

  if (v13 == 2 && v9 == 18)
  {
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 40);
    if (!v15)
    {
      v16 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v7)
      {
        v16 = *v16;
      }

      v15 = sub_13AE744(v16);
      *(a1 + 40) = v15;
      v8 = v34;
    }

    v17 = sub_22034D0(a3, v15, v8);
LABEL_66:
    v34 = v17;
    if (!v17)
    {
      return 0;
    }

    goto LABEL_67;
  }

LABEL_59:
  if (v9)
  {
    v32 = (v9 & 7) == 4;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    if (*v7)
    {
      v33 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v8 = v34;
    }

    v17 = sub_1952690(v9, v33, v8, a3);
    goto LABEL_66;
  }

  if (!v8)
  {
    return 0;
  }

  a3[10].i32[0] = v9 - 1;
  return v34;
}

char *sub_1398C24(uint64_t a1, char *a2, unint64_t *a3)
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 40);
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

    v6 = sub_13982E0(v11, v13, a3);
  }

  v14 = *(a1 + 24);
  if (v14 < 1)
  {
    v17 = v6;
  }

  else
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v16 = *(*(a1 + 32) + 4 * i);
      *v6 = 24;
      v6[1] = v16;
      if (v16 > 0x7F)
      {
        v6[1] = v16 | 0x80;
        v18 = v16 >> 7;
        v6[2] = v16 >> 7;
        v17 = v6 + 3;
        if (v16 >= 0x4000)
        {
          LOBYTE(v6) = v6[2];
          do
          {
            *(v17 - 1) = v6 | 0x80;
            v6 = (v18 >> 7);
            *v17++ = v18 >> 7;
            v19 = v18 >> 14;
            v18 >>= 7;
          }

          while (v19);
        }
      }

      else
      {
        v17 = v6 + 2;
      }

      v6 = v17;
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v21 = *(a1 + 52);
    *v17 = 32;
    v17[1] = v21;
    if (v21 > 0x7F)
    {
      v17[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v17[2] = v21 >> 7;
      v20 = v17 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v20 - 1) = v17 | 0x80;
          v17 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v17 + 2;
    }
  }

  else
  {
    v20 = v17;
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v20;
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

  if ((*a3 - v20) >= v27)
  {
    v29 = v27;
    memcpy(v20, v28, v27);
    v20 += v29;
    return v20;
  }

  return sub_1957130(a3, v28, v27, v20);
}

uint64_t sub_1398EEC(uint64_t a1)
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
  if ((v8 & 7) == 0)
  {
    goto LABEL_23;
  }

  if (v8)
  {
    v9 = sub_1398430(*(a1 + 40));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(a1 + 48);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 += v11;
  if ((v8 & 4) != 0)
  {
LABEL_19:
    v12 = *(a1 + 52);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v13;
  }

LABEL_23:
  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v7 += v17;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_1399048(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (result + 24);
    v6 = *(result + 24);
    sub_1958E5C((result + 24), v6 + v4);
    v7 = *(result + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      *(result + 16) |= 1u;
      v10 = *(result + 40);
      if (!v10)
      {
        v11 = *(result + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_13AE744(v12);
        *(result + 40) = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_276D9A8;
      }

      sub_13984C8(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
LABEL_8:
          *(result + 16) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        *(result + 52) = *(a2 + 52);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(result + 48) = *(a2 + 48);
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

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1399174(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (a2 != result)
  {
    sub_1398828(result);

    sub_1399048(result, a2);
  }
}

uint64_t sub_13991C0(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 40);
  if ((*(v1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(v1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_139920C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_26DA290;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13B6038(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_13992EC(_Unwind_Exception *a1)
{
  sub_13B5A00(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1399330(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B5A00(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13993B0(void *a1)
{
  sub_1399330(a1);

  operator delete();
}

unsigned __int8 *sub_13993E8(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17A82BC(v4);
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

char *sub_1399464(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_13995F4(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1399734(uint64_t a1)
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

BOOL sub_13997DC(uint64_t a1)
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

uint64_t sub_1399844(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_26DA310;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13B6038(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_1399924(_Unwind_Exception *a1)
{
  sub_13B5A00(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1399968(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B5A00(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13999E8(void *a1)
{
  sub_1399968(a1);

  operator delete();
}

unsigned __int8 *sub_1399A20(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17A82BC(v4);
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