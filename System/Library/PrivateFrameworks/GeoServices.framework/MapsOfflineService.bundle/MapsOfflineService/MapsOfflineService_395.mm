double sub_15F4680(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26F6198;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_15F46B8(uint64_t a1)
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

  if (a1 != &off_2779E38)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_16EE080(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_15F52B8(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_16365D0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15F4794(uint64_t a1)
{
  sub_15F46B8(a1);

  operator delete();
}

uint64_t sub_15F47CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15F8A04(v4);
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
      result = sub_16EE0BC(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_15F4870(*(v1 + 56));
    }
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

uint64_t sub_15F4870(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v8 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_15F53F4(*(a1 + 72));
    goto LABEL_7;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v3 & 8) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

char *sub_15F497C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v29, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v29 + 1;
    v7 = *v29;
    if (*v29 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v29, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v29 + 2;
      }
    }

    v29 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 5)
    {
      if (v7 == 42)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = v19 + 1;
          v29 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            sub_161758C(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v29;
          }

          v19 = sub_22281F4(a3, v23, v20);
          v29 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 42)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
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

          v16 = sub_16171FC(v18);
          *(a1 + 56) = v16;
          v6 = v29;
        }

        v15 = sub_2228164(a3, v16, v6);
        goto LABEL_41;
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 48);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_16F5F38(v27);
        *(a1 + 48) = v25;
        v6 = v29;
      }

      v15 = sub_21F4CD0(a3, v25, v6);
      goto LABEL_41;
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
        return v29;
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
      v6 = v29;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_41:
    v29 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  return v29;
}

char *sub_15F4BB8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
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

    v4 = sub_16EE2C4(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 56);
    *v4 = 34;
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

    v4 = sub_15F5758(v10, v12, a3);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 42;
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

      v4 = sub_15F92AC(v15, v17, a3);
    }
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

uint64_t sub_15F4DC4(uint64_t a1)
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
      v7 = sub_15F98DC(v6);
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
      v9 = sub_16EE474(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_15F5984(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_15F4ED8(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_16373BC((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
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
      *(result + 16) |= 1u;
      v10 = *(result + 48);
      if (!v10)
      {
        v11 = *(result + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_16F5F38(v12);
        *(result + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E980;
      }

      sub_121721C(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 16) |= 2u;
      v14 = *(result + 56);
      if (!v14)
      {
        v15 = *(result + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_16171FC(v16);
        *(result + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_2779E78;
      }

      sub_15F5038(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((result + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15F5038(uint64_t a1, uint64_t a2)
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
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_27;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
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
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v10 = *(a2 + 48);
  *(a1 + 16) |= 1u;
  v11 = *(a1 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
  if ((v9 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v9 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_16:
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
LABEL_19:
    *(a1 + 16) |= 8u;
    v19 = *(a1 + 72);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_16172A4(v21);
      *(a1 + 72) = v19;
    }

    if (*(a2 + 72))
    {
      v22 = *(a2 + 72);
    }

    else
    {
      v22 = &off_2779EC8;
    }

    sub_12C35F4(v19, v22);
  }

LABEL_27:
  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4((a1 + 8), (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15F51F8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_15F47CC(result);

    sub_15F4ED8(result, a2);
  }
}

BOOL sub_15F5244(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_15FA058(*(*(a1 + 40) + 8 * v2));
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

  result = sub_16EE510(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_15F52B8(uint64_t a1)
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

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (a1 != &off_2779E78)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_15F5B60(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15F53BC(uint64_t a1)
{
  sub_15F52B8(a1);

  operator delete();
}

uint64_t sub_15F53F4(uint64_t a1)
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

uint64_t sub_15F543C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  if (sub_195ADC0(a3, v33, a3[11].u32[1]))
  {
    return *v33;
  }

  while (1)
  {
    v6 = (*v33 + 1);
    v7 = **v33;
    if (**v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v33 + 2);
      }
    }

    *v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      break;
    }

    if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v23 = *(a1 + 8);
        v21 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v21 = *v21;
        }

        v22 = (a1 + 64);
LABEL_46:
        v29 = sub_194DB04(v22, v21);
        v27 = sub_1958890(v29, *v33, a3);
        goto LABEL_54;
      }

      goto LABEL_47;
    }

    if (v10 != 4)
    {
      if (v10 == 5 && v7 == 42)
      {
        v11 = v6 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          *v33 = v11 + 1;
          v13 = *(a1 + 40);
          if (v13 && (v14 = *(a1 + 32), v14 < *v13))
          {
            *(a1 + 32) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = *(a1 + 24);
            if (!v16)
            {
              operator new();
            }

            *v18 = v17;
            v18[1] = sub_195A650;
            *v17 = 0;
            v17[1] = 0;
            v17[2] = 0;
            v15 = sub_19593CC(a1 + 24, v17);
            v12 = *v33;
          }

          v11 = sub_1958890(v15, v12, a3);
          *v33 = v11;
          if (!v11)
          {
            goto LABEL_60;
          }

          if (*a3 <= v11 || *v11 != 42)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_47;
    }

    if (v7 != 34)
    {
      goto LABEL_47;
    }

    *(a1 + 16) |= 8u;
    v24 = *(a1 + 72);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16172A4(v26);
      *(a1 + 72) = v24;
      v6 = *v33;
    }

    v27 = sub_2228284(a3, v24, v6);
LABEL_54:
    *v33 = v27;
    if (!v27)
    {
      goto LABEL_60;
    }

LABEL_55:
    if (sub_195ADC0(a3, v33, a3[11].u32[1]))
    {
      return *v33;
    }
  }

  if (v10 == 1)
  {
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v28 = *(a1 + 8);
      v21 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v21 = *v21;
      }

      v22 = (a1 + 48);
      goto LABEL_46;
    }
  }

  else if (v10 == 2 && v7 == 18)
  {
    *(a1 + 16) |= 2u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = (a1 + 56);
    goto LABEL_46;
  }

LABEL_47:
  if (v7)
  {
    v30 = (v7 & 7) == 4;
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
      v6 = *v33;
    }

    v27 = sub_1952690(v7, v32, v6, a3);
    goto LABEL_54;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v33;
  }

LABEL_60:
  *v33 = 0;
  return *v33;
}

char *sub_15F5758(uint64_t a1, char *__dst, unint64_t *a3)
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

      goto LABEL_8;
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
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_8:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 72);
  *v4 = 34;
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

  v4 = sub_15F5E04(v7, v9, a3);
LABEL_15:
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
        v4 = sub_1957480(a3, 5, v12, v4);
      }

      else
      {
        *v4 = 42;
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

uint64_t sub_15F5984(uint64_t a1)
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_14;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v15 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_22;
  }

  v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  if ((v8 & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_22:
  v18 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
LABEL_13:
    v9 = sub_15F5F50(*(a1 + 72));
    v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v10 = *(a1 + 8);
  if (v10)
  {
    v21 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v4 += v22;
  }

  *(a1 + 20) = v4;
  return v4;
}

uint64_t sub_15F5B60(uint64_t a1)
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

void sub_15F5C00(uint64_t a1)
{
  sub_15F5B60(a1);

  operator delete();
}

uint64_t sub_15F5C38(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v24, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v24 + 1);
    v8 = **v24;
    if (**v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v24 + 2);
      }
    }

    *v24 = v7;
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
      *v24 = v17;
      *(a1 + 32) = v16;
      goto LABEL_28;
    }

    v22 = sub_19587DC(v7, v16);
    *v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_35;
    }

LABEL_28:
    if (sub_195ADC0(a3, v24, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v15 = sub_1958890(v21, *v24, a3);
LABEL_27:
    *v24 = v15;
    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
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
      v7 = *v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_27;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_35:
  *v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v24;
}

char *sub_15F5E04(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_15F5F50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_10;
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

void *sub_15F601C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1636654(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15F609C(void *a1)
{
  sub_15F601C(a1);

  operator delete();
}

uint64_t sub_15F60D4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15F6C68(v4);
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

char *sub_15F6158(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v24, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v24 + 1;
    v7 = *v24;
    if (*v24 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v24, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v24 + 2;
      }
    }

    v24 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v14 = v6 - 1;
        while (1)
        {
          v15 = (v14 + 1);
          v24 = v14 + 1;
          v16 = *(a1 + 40);
          if (v16 && (v17 = *(a1 + 32), v17 < *v16))
          {
            *(a1 + 32) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            v19 = sub_1617448(*(a1 + 24));
            v18 = sub_19593CC(a1 + 24, v19);
            v15 = v24;
          }

          v14 = sub_2228314(a3, v18, v15);
          v24 = v14;
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
      v21 = v6 + 1;
      v20 = *v6;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if (v22 < 0)
      {
        v24 = sub_19587DC(v6, v20);
        if (!v24)
        {
          return 0;
        }
      }

      else
      {
        v21 = v6 + 2;
LABEL_33:
        v24 = v21;
      }

      if (v20 > 9)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v20;
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
        return v24;
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
      v6 = v24;
    }

    v24 = sub_1952690(v7, v13, v6, a3);
    if (!v24)
    {
      return 0;
    }

LABEL_36:
    ;
  }

  return v24;
}

char *sub_15F6360(uint64_t a1, char *__dst, unint64_t *a3)
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

      v5 = sub_15F7520(v12, v14, a3);
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

uint64_t sub_15F6524(uint64_t a1)
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
      v7 = sub_15F7AB8(v6);
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

void sub_15F6604(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1637448((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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

uint64_t sub_15F66F4(uint64_t a1)
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

void sub_15F6794(uint64_t a1)
{
  sub_15F66F4(a1);

  operator delete();
}

uint64_t sub_15F67CC(uint64_t a1)
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
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15F6810(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v18 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v18, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v18 + 1);
    v7 = **v18;
    if (**v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v18 + 2);
      }
    }

    *v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v16 = sub_194DB04((a1 + 24), v15);
      v13 = sub_1958890(v16, *v18, a3);
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
          return *v18;
        }

LABEL_24:
        *v18 = 0;
        return *v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = *v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    *v18 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  return *v18;
}

char *sub_15F6948(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if ((*a3 - v4) >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}

uint64_t sub_15F6A10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
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

    v1 += v8;
  }

  *(a1 + 20) = v1;
  return v1;
}

void *sub_15F6AA4(void *a1)
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

  sub_15F6B48(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_163675C(a1 + 9);
  sub_16366D8(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_15F6B48(uint64_t a1)
{
  v3 = *(a1 + 96);
  v2 = (a1 + 96);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C((a1 + 112));
  }

  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C((a1 + 120));
  }

  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C((a1 + 128));
  }

  result = (a1 + 136);
  if (*(a1 + 136) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2779F10)
  {
    result = *(a1 + 144);
    if (result)
    {
      sub_15F66F4(result);

      operator delete();
    }
  }

  return result;
}

void sub_15F6C30(void *a1)
{
  sub_15F6AA4(a1);

  operator delete();
}

uint64_t sub_15F6C68(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_160F93C(v5);
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
      result = sub_15F60D4(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 16);
  if ((v9 & 0x7F) == 0)
  {
    goto LABEL_18;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    v13 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v9 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v9 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_13:
    if ((v9 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_36:
    v15 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v15 + 23) < 0)
    {
      **v15 = 0;
      *(v15 + 8) = 0;
      if ((v9 & 0x10) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *v15 = 0;
      *(v15 + 23) = 0;
      if ((v9 & 0x10) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_15:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_12:
  if ((v9 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_32:
  v14 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v14 + 23) < 0)
  {
    **v14 = 0;
    *(v14 + 8) = 0;
    if ((v9 & 8) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    *v14 = 0;
    *(v14 + 23) = 0;
    if ((v9 & 8) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_14:
  if ((v9 & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_40:
  v16 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v16 + 23) & 0x80000000) == 0)
  {
    *v16 = 0;
    *(v16 + 23) = 0;
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_44;
    }

LABEL_16:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  **v16 = 0;
  *(v16 + 8) = 0;
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_44:
  v17 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v17 + 23) & 0x80000000) == 0)
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = sub_15F67CC(*(a1 + 144));
    goto LABEL_18;
  }

  **v17 = 0;
  *(v17 + 8) = 0;
  if ((v9 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  *(a1 + 152) = 0;
  if ((v9 & 0x700) != 0)
  {
    *(a1 + 168) = 0;
    *(a1 + 160) = 0;
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

uint64_t sub_15F6E80(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v65 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v65, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v65 + 1);
    v8 = **v65;
    if (**v65 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v65, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v65 + 2);
      }
    }

    *v65 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_96;
        }

        v5 |= 0x80u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_12:
          *v65 = v12;
          *(a1 + 152) = v11;
          goto LABEL_94;
        }

        v59 = sub_19587DC(v7, v11);
        *v65 = v59;
        *(a1 + 152) = v60;
        if (v59)
        {
          goto LABEL_94;
        }

        goto LABEL_115;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 1u;
        v43 = *(a1 + 8);
        v21 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v21 = *v21;
        }

        v22 = (a1 + 96);
        goto LABEL_92;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 2u;
        v28 = *(a1 + 8);
        v21 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v21 = *v21;
        }

        v22 = (a1 + 104);
        goto LABEL_92;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_96;
        }

        v29 = v7 - 1;
        while (1)
        {
          v30 = (v29 + 1);
          *v65 = v29 + 1;
          v31 = *(a1 + 40);
          if (v31 && (v32 = *(a1 + 32), v32 < *v31))
          {
            *(a1 + 32) = v32 + 1;
            v33 = *&v31[2 * v32 + 2];
          }

          else
          {
            v34 = *(a1 + 24);
            if (!v34)
            {
              operator new();
            }

            *v36 = v35;
            v36[1] = sub_195A650;
            *v35 = 0;
            v35[1] = 0;
            v35[2] = 0;
            v33 = sub_19593CC(a1 + 24, v35);
            v30 = *v65;
          }

          v29 = sub_1958890(v33, v30, a3);
          *v65 = v29;
          if (!v29)
          {
            goto LABEL_115;
          }

          if (*a3 <= v29 || *v29 != 34)
          {
            goto LABEL_94;
          }
        }

      case 5u:
        if (v8 != 42)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 4u;
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v22 = (a1 + 112);
        goto LABEL_92;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 8u;
        v44 = *(a1 + 8);
        v21 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v21 = *v21;
        }

        v22 = (a1 + 120);
        goto LABEL_92;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_96;
        }

        v49 = v7 + 1;
        v48 = *v7;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_80;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if (v50 < 0)
        {
          *v65 = sub_19587DC(v7, v48);
          if (!*v65)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v49 = v7 + 2;
LABEL_80:
          *v65 = v49;
        }

        if (v48 > 0x50)
        {
          sub_13137F8();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 160) = v48;
        }

        goto LABEL_94;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_96;
        }

        v37 = v7 - 1;
        while (1)
        {
          v38 = v37 + 1;
          *v65 = v37 + 1;
          v39 = *(a1 + 64);
          if (v39 && (v40 = *(a1 + 56), v40 < *v39))
          {
            *(a1 + 56) = v40 + 1;
            v41 = *&v39[2 * v40 + 2];
          }

          else
          {
            v42 = sub_1618758(*(a1 + 48));
            v41 = sub_19593CC(a1 + 48, v42);
            v38 = *v65;
          }

          v37 = sub_22283A4(a3, v41, v38);
          *v65 = v37;
          if (!v37)
          {
            goto LABEL_115;
          }

          if (*a3 <= v37 || *v37 != 66)
          {
            goto LABEL_94;
          }
        }

      case 9u:
        if (v8 != 74)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x10u;
        v54 = *(a1 + 8);
        v21 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
        if (v54)
        {
          v21 = *v21;
        }

        v22 = (a1 + 128);
        goto LABEL_92;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x20u;
        v27 = *(a1 + 8);
        v21 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v21 = *v21;
        }

        v22 = (a1 + 136);
LABEL_92:
        v55 = sub_194DB04(v22, v21);
        v26 = sub_1958890(v55, *v65, a3);
        goto LABEL_93;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_96;
        }

        v5 |= 0x200u;
        v51 = v7 + 1;
        v52 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_87;
        }

        v53 = *v51;
        v52 = v52 + (v53 << 7) - 128;
        if (v53 < 0)
        {
          v63 = sub_1958770(v7, v52);
          *v65 = v63;
          *(a1 + 164) = v64;
          if (!v63)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v51 = v7 + 2;
LABEL_87:
          *v65 = v51;
          *(a1 + 164) = v52;
        }

        goto LABEL_94;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_96;
        }

        v14 = v7 - 1;
        while (1)
        {
          v15 = v14 + 1;
          *v65 = v14 + 1;
          v16 = *(a1 + 88);
          if (v16 && (v17 = *(a1 + 80), v17 < *v16))
          {
            *(a1 + 80) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            v19 = sub_1617328(*(a1 + 72));
            v18 = sub_19593CC(a1 + 72, v19);
            v15 = *v65;
          }

          v14 = sub_2228434(a3, v18, v15);
          *v65 = v14;
          if (!v14)
          {
            goto LABEL_115;
          }

          if (*a3 <= v14 || *v14 != 98)
          {
            goto LABEL_94;
          }
        }

      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x40u;
        v23 = *(a1 + 144);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_16173C4(v25);
          *(a1 + 144) = v23;
          v7 = *v65;
        }

        v26 = sub_22284C4(a3, v23, v7);
        goto LABEL_93;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_96;
        }

        v5 |= 0x400u;
        v45 = v7 + 1;
        v46 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        v47 = *v45;
        v46 = v46 + (v47 << 7) - 128;
        if (v47 < 0)
        {
          v61 = sub_1958770(v7, v46);
          *v65 = v61;
          *(a1 + 168) = v62;
          if (!v61)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v45 = v7 + 2;
LABEL_75:
          *v65 = v45;
          *(a1 + 168) = v46;
        }

        goto LABEL_94;
      default:
LABEL_96:
        if (v8)
        {
          v56 = (v8 & 7) == 4;
        }

        else
        {
          v56 = 1;
        }

        if (!v56)
        {
          v57 = *(a1 + 8);
          if (v57)
          {
            v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v58 = sub_11F1920((a1 + 8));
            v7 = *v65;
          }

          v26 = sub_1952690(v8, v58, v7, a3);
LABEL_93:
          *v65 = v26;
          if (!v26)
          {
            goto LABEL_115;
          }

LABEL_94:
          if (sub_195ADC0(a3, v65, a3[11].u32[1]))
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
LABEL_115:
          *v65 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v65;
    }
  }
}

char *sub_15F7520(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 152);
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
    v6 = sub_128AEEC(a3, 2, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 3, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  v11 = *(a1 + 32);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 40) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || (*a3 - v6 + 14) < v14)
      {
        v6 = sub_1957480(a3, 4, v13, v6);
      }

      else
      {
        *v6 = 34;
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

  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v6 = sub_128AEEC(a3, 6, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), v6);
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v6 = sub_128AEEC(a3, 5, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((v5 & 0x100) == 0)
  {
LABEL_28:
    v16 = v6;
    goto LABEL_38;
  }

LABEL_31:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v17 = *(a1 + 160);
  *v6 = 56;
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

LABEL_38:
  v21 = *(a1 + 56);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v23 = *(*(a1 + 64) + 8 * i + 8);
      *v16 = 66;
      v24 = *(v23 + 20);
      v16[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, v16 + 1);
      }

      else
      {
        v25 = v16 + 2;
      }

      v16 = sub_160FD48(v23, v25, a3);
    }
  }

  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    v16 = sub_128AEEC(a3, 10, (*(a1 + 136) & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v16 = sub_128AEEC(a3, 9, (*(a1 + 128) & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if ((v5 & 0x200) == 0)
  {
LABEL_49:
    v26 = v16;
    goto LABEL_59;
  }

LABEL_52:
  if (*a3 <= v16)
  {
    v16 = sub_225EB68(a3, v16);
  }

  v27 = *(a1 + 164);
  *v16 = 88;
  v16[1] = v27;
  if (v27 > 0x7F)
  {
    v16[1] = v27 | 0x80;
    v28 = v27 >> 7;
    v16[2] = v27 >> 7;
    v26 = v16 + 3;
    if (v27 >= 0x4000)
    {
      LOBYTE(v16) = v16[2];
      do
      {
        *(v26 - 1) = v16 | 0x80;
        LODWORD(v16) = v28 >> 7;
        *v26++ = v28 >> 7;
        v29 = v28 >> 14;
        v28 >>= 7;
      }

      while (v29);
    }
  }

  else
  {
    v26 = v16 + 2;
  }

LABEL_59:
  v30 = *(a1 + 80);
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v32 = *(*(a1 + 88) + 8 * j + 8);
      *v26 = 98;
      v33 = *(v32 + 20);
      v26[1] = v33;
      if (v33 > 0x7F)
      {
        v34 = sub_19575D0(v33, v26 + 1);
      }

      else
      {
        v34 = v26 + 2;
      }

      v26 = sub_15F6360(v32, v34, a3);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v35 = *(a1 + 144);
    *v26 = 106;
    v36 = *(v35 + 20);
    v26[1] = v36;
    if (v36 > 0x7F)
    {
      v37 = sub_19575D0(v36, v26 + 1);
    }

    else
    {
      v37 = v26 + 2;
    }

    v26 = sub_15F6948(v35, v37, a3);
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v39 = *(a1 + 168);
    *v26 = 112;
    v26[1] = v39;
    if (v39 > 0x7F)
    {
      v26[1] = v39 | 0x80;
      v40 = v39 >> 7;
      v26[2] = v39 >> 7;
      v38 = v26 + 3;
      if (v39 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v38 - 1) = v26 | 0x80;
          LODWORD(v26) = v40 >> 7;
          *v38++ = v40 >> 7;
          v41 = v40 >> 14;
          v40 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v38 = v26 + 2;
    }
  }

  else
  {
    v38 = v26;
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v38;
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

  if ((*a3 - v38) >= v45)
  {
    v47 = v45;
    memcpy(v38, v46, v45);
    v38 += v47;
    return v38;
  }

  return sub_1957130(a3, v46, v45, v38);
}

uint64_t sub_15F7AB8(uint64_t a1)
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
      v14 = sub_160FF64(v13);
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
      v21 = sub_15F6524(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if (!v22)
  {
    goto LABEL_30;
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
LABEL_23:
      if ((v22 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_23;
  }

  v28 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 4) == 0)
  {
LABEL_24:
    if ((v22 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

LABEL_43:
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
LABEL_25:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_46:
  v34 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(v34 + 23);
  v36 = *(v34 + 8);
  if ((v35 & 0x80u) == 0)
  {
    v36 = v35;
  }

  v16 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x10) == 0)
  {
LABEL_26:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_27;
    }

LABEL_52:
    v40 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
    v41 = *(v40 + 23);
    v42 = *(v40 + 8);
    if ((v41 & 0x80u) == 0)
    {
      v42 = v41;
    }

    v16 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x40) == 0)
    {
LABEL_28:
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_49:
  v37 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(v37 + 23);
  v39 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v39 = v38;
  }

  v16 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x20) != 0)
  {
    goto LABEL_52;
  }

LABEL_27:
  if ((v22 & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_55:
  v43 = sub_15F6A10(*(a1 + 144));
  v16 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x80) != 0)
  {
LABEL_29:
    v16 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_30:
  if ((v22 & 0x700) == 0)
  {
    goto LABEL_35;
  }

  if ((v22 & 0x100) != 0)
  {
    v44 = *(a1 + 160);
    v45 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v44 >= 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 11;
    }

    v16 += v46;
    if ((v22 & 0x200) == 0)
    {
LABEL_33:
      if ((v22 & 0x400) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((v22 & 0x200) == 0)
  {
    goto LABEL_33;
  }

  v16 += ((9 * (__clz(*(a1 + 164) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x400) != 0)
  {
LABEL_34:
    v16 += ((9 * (__clz(*(a1 + 168) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_35:
  v23 = *(a1 + 8);
  if (v23)
  {
    v47 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v48 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v48 < 0)
    {
      v48 = *(v47 + 16);
    }

    v16 += v48;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_15F7EBC(uint64_t a1, uint64_t a2)
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
    sub_16374D4((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_1637560((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if (v19)
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

        goto LABEL_37;
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

      goto LABEL_40;
    }

LABEL_37:
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
        goto LABEL_16;
      }

      goto LABEL_43;
    }

LABEL_40:
    v30 = *(a2 + 120);
    *(a1 + 16) |= 8u;
    v31 = *(a1 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    sub_194EA1C((a1 + 120), (v30 & 0xFFFFFFFFFFFFFFFELL), v32);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_46;
    }

LABEL_43:
    v33 = *(a2 + 128);
    *(a1 + 16) |= 0x10u;
    v34 = *(a1 + 8);
    v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v35 = *v35;
    }

    sub_194EA1C((a1 + 128), (v33 & 0xFFFFFFFFFFFFFFFELL), v35);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_49;
    }

LABEL_46:
    v36 = *(a2 + 136);
    *(a1 + 16) |= 0x20u;
    v37 = *(a1 + 8);
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    sub_194EA1C((a1 + 136), (v36 & 0xFFFFFFFFFFFFFFFELL), v38);
    if ((v19 & 0x40) == 0)
    {
LABEL_18:
      if ((v19 & 0x80) == 0)
      {
LABEL_20:
        *(a1 + 16) |= v19;
        goto LABEL_21;
      }

LABEL_19:
      *(a1 + 152) = *(a2 + 152);
      goto LABEL_20;
    }

LABEL_49:
    *(a1 + 16) |= 0x40u;
    v39 = *(a1 + 144);
    if (!v39)
    {
      v40 = *(a1 + 8);
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      v39 = sub_16173C4(v41);
      *(a1 + 144) = v39;
    }

    if (*(a2 + 144))
    {
      v42 = *(a2 + 144);
    }

    else
    {
      v42 = &off_2779EF0;
    }

    sub_132DE2C(v39, v42);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if ((v19 & 0x700) == 0)
  {
    goto LABEL_27;
  }

  if ((v19 & 0x100) == 0)
  {
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_24;
    }

LABEL_59:
    *(a1 + 164) = *(a2 + 164);
    if ((v19 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  *(a1 + 160) = *(a2 + 160);
  if ((v19 & 0x200) != 0)
  {
    goto LABEL_59;
  }

LABEL_24:
  if ((v19 & 0x400) != 0)
  {
LABEL_25:
    *(a1 + 168) = *(a2 + 168);
  }

LABEL_26:
  *(a1 + 16) |= v19;
LABEL_27:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15F8254(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_162D308(v4);
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

uint64_t sub_15F82D0(uint64_t a1)
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
  if (a1 != &off_2779FC0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_162E4F4(v6);
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

void sub_15F8388(uint64_t a1)
{
  sub_15F82D0(a1);

  operator delete();
}

uint64_t sub_15F83C0(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_15F8254(*(result + 24));
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

char *sub_15F841C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 == 18)
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

        v14 = sub_1632A08(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2228554(a3, v14, v6);
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

char *sub_15F8560(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 18;
    v7 = *(v6 + 40);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_162E73C(v6, v8, a3);
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

uint64_t sub_15F866C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_162E87C(*(a1 + 24));
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

void sub_15F86EC(uint64_t result, uint64_t a2)
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

      v5 = sub_1632A08(v7);
      *(result + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277B3A8;
    }

    sub_15F8794(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15F8794(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_16390E0((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

uint64_t sub_15F8850(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_162E924(*(a1 + 24) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_15F889C(uint64_t a1)
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

  if (a1 != &off_2779FE0)
  {
    v5 = *(a1 + 216);
    if (v5)
    {
      sub_15F6AA4(v5);
      operator delete();
    }

    v6 = *(a1 + 224);
    if (v6)
    {
      sub_15F82D0(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1636B7C((a1 + 192));
  sub_1636AF8((a1 + 168));
  sub_1636A74((a1 + 144));
  sub_16369F0((a1 + 120));
  sub_163696C((a1 + 96));
  sub_16368E8((a1 + 72));
  sub_1636864((a1 + 48));
  sub_16367E0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15F89CC(uint64_t a1)
{
  sub_15F889C(a1);

  operator delete();
}

uint64_t sub_15F8A04(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15FD60C(v4);
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
      result = sub_160C0D0(v7);
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
      result = sub_15FA30C(v10);
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
      result = sub_15FD6BC(v13);
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
      result = sub_15FF6FC(v16);
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
      result = sub_1616834(v19);
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
      result = sub_15FAD10(v22);
      --v20;
    }

    while (v20);
    *(v1 + 176) = 0;
  }

  v23 = *(v1 + 200);
  if (v23 >= 1)
  {
    v24 = (*(v1 + 208) + 8);
    do
    {
      v25 = *v24++;
      result = sub_15FE8C0(v25);
      --v23;
    }

    while (v23);
    *(v1 + 200) = 0;
  }

  v26 = *(v1 + 16);
  if ((v26 & 3) != 0)
  {
    if (v26)
    {
      result = sub_15F6C68(*(v1 + 216));
    }

    if ((v26 & 2) != 0)
    {
      result = sub_15F83C0(*(v1 + 224));
    }
  }

  v28 = *(v1 + 8);
  v27 = v1 + 8;
  *(v27 + 224) = 0;
  *(v27 + 8) = 0;
  if (v28)
  {

    return sub_1957EA8(v27);
  }

  return result;
}

char *sub_15F8BC4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v76 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v76, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v76 + 1;
    v8 = *v76;
    if (*v76 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v76, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v76 + 2;
      }
    }

    v76 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 > 8)
      {
        if (v11 == 9)
        {
          if (v8 == 74)
          {
            v65 = v7 - 1;
            while (1)
            {
              v66 = v65 + 1;
              v76 = v65 + 1;
              v67 = *(a1 + 160);
              if (v67 && (v68 = *(a1 + 152), v68 < *v67))
              {
                *(a1 + 152) = v68 + 1;
                v69 = *&v67[2 * v68 + 2];
              }

              else
              {
                v70 = sub_1618E98(*(a1 + 144));
                v69 = sub_19593CC(a1 + 144, v70);
                v66 = v76;
              }

              v65 = sub_2228948(a3, v69, v66);
              v76 = v65;
              if (!v65)
              {
                goto LABEL_136;
              }

              if (*a3 <= v65 || *v65 != 74)
              {
                goto LABEL_129;
              }
            }
          }
        }

        else if (v11 == 10)
        {
          if (v8 == 82)
          {
            v47 = v7 - 1;
            while (1)
            {
              v48 = v47 + 1;
              v76 = v47 + 1;
              v49 = *(a1 + 184);
              if (v49 && (v50 = *(a1 + 176), v50 < *v49))
              {
                *(a1 + 176) = v50 + 1;
                v51 = *&v49[2 * v50 + 2];
              }

              else
              {
                v52 = sub_16176F0(*(a1 + 168));
                v51 = sub_19593CC(a1 + 168, v52);
                v48 = v76;
              }

              v47 = sub_22289D8(a3, v51, v48);
              v76 = v47;
              if (!v47)
              {
                goto LABEL_136;
              }

              if (*a3 <= v47 || *v47 != 82)
              {
                goto LABEL_129;
              }
            }
          }
        }

        else if (v11 == 11 && v8 == 90)
        {
          v21 = v7 - 1;
          while (1)
          {
            v22 = v21 + 1;
            v76 = v21 + 1;
            v23 = *(a1 + 208);
            if (v23 && (v24 = *(a1 + 200), v24 < *v23))
            {
              *(a1 + 200) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v26 = sub_1617A14(*(a1 + 192));
              v25 = sub_19593CC(a1 + 192, v26);
              v22 = v76;
            }

            v21 = sub_2228A68(a3, v25, v22);
            v76 = v21;
            if (!v21)
            {
              goto LABEL_136;
            }

            if (*a3 <= v21 || *v21 != 90)
            {
              goto LABEL_129;
            }
          }
        }

        goto LABEL_121;
      }

      if (v11 == 6)
      {
        if (v8 == 50)
        {
          v59 = v7 - 1;
          while (1)
          {
            v60 = v59 + 1;
            v76 = v59 + 1;
            v61 = *(a1 + 112);
            if (v61 && (v62 = *(a1 + 104), v62 < *v61))
            {
              *(a1 + 104) = v62 + 1;
              v63 = *&v61[2 * v62 + 2];
            }

            else
            {
              v64 = sub_1617A90(*(a1 + 96));
              v63 = sub_19593CC(a1 + 96, v64);
              v60 = v76;
            }

            v59 = sub_2228798(a3, v63, v60);
            v76 = v59;
            if (!v59)
            {
              goto LABEL_136;
            }

            if (*a3 <= v59 || *v59 != 50)
            {
              goto LABEL_129;
            }
          }
        }

        goto LABEL_121;
      }

      if (v11 != 7)
      {
        if (v11 == 8 && v8 == 66)
        {
          v12 = v7 - 1;
          while (1)
          {
            v13 = v12 + 1;
            v76 = v12 + 1;
            v14 = *(a1 + 136);
            if (v14 && (v15 = *(a1 + 128), v15 < *v14))
            {
              *(a1 + 128) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              sub_1617B48(*(a1 + 120));
              v16 = sub_19593CC(a1 + 120, v17);
              v13 = v76;
            }

            v12 = sub_22288B8(a3, v16, v13);
            v76 = v12;
            if (!v12)
            {
              goto LABEL_136;
            }

            if (*a3 <= v12 || *v12 != 66)
            {
              goto LABEL_129;
            }
          }
        }

        goto LABEL_121;
      }

      if (v8 != 58)
      {
        goto LABEL_121;
      }

      *(a1 + 16) |= 2u;
      v44 = *(a1 + 224);
      if (!v44)
      {
        v45 = *(a1 + 8);
        v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
        if (v45)
        {
          v46 = *v46;
        }

        v44 = sub_1617514(v46);
        *(a1 + 224) = v44;
        v7 = v76;
      }

      v37 = sub_2228828(a3, v44, v7);
LABEL_128:
      v76 = v37;
      if (!v37)
      {
        goto LABEL_136;
      }

      goto LABEL_129;
    }

    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 == 26)
      {
        v53 = v7 - 1;
        while (1)
        {
          v54 = v53 + 1;
          v76 = v53 + 1;
          v55 = *(a1 + 64);
          if (v55 && (v56 = *(a1 + 56), v56 < *v55))
          {
            *(a1 + 56) = v56 + 1;
            v57 = *&v55[2 * v56 + 2];
          }

          else
          {
            sub_161862C(*(a1 + 48));
            v57 = sub_19593CC(a1 + 48, v58);
            v54 = v76;
          }

          sub_2228674(a3, v57, v54);
          v76 = v53;
          if (!v53)
          {
            goto LABEL_136;
          }

          if (*a3 <= v53 || *v53 != 26)
          {
            goto LABEL_129;
          }
        }
      }

      goto LABEL_121;
    }

    if (v11 == 4)
    {
      if (v8 == 34)
      {
        v38 = v7 - 1;
        while (1)
        {
          v39 = v38 + 1;
          v76 = v38 + 1;
          v40 = *(a1 + 88);
          if (v40 && (v41 = *(a1 + 80), v41 < *v40))
          {
            *(a1 + 80) = v41 + 1;
            v42 = *&v40[2 * v41 + 2];
          }

          else
          {
            v43 = sub_1617674(*(a1 + 72));
            v42 = sub_19593CC(a1 + 72, v43);
            v39 = v76;
          }

          v38 = sub_2228708(a3, v42, v39);
          v76 = v38;
          if (!v38)
          {
            goto LABEL_136;
          }

          if (*a3 <= v38 || *v38 != 34)
          {
            goto LABEL_129;
          }
        }
      }

      goto LABEL_121;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_121;
    }

    v5 |= 4u;
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
      v76 = v19;
      *(a1 + 232) = v18;
      goto LABEL_129;
    }

    v74 = sub_19587DC(v7, v18);
    v76 = v74;
    *(a1 + 232) = v75;
    if (!v74)
    {
      goto LABEL_136;
    }

LABEL_129:
    if (sub_195ADC0(a3, &v76, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_121;
    }

    *(a1 + 16) |= 1u;
    v34 = *(a1 + 216);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_1617448(v36);
      *(a1 + 216) = v34;
      v7 = v76;
    }

    v37 = sub_2228314(a3, v34, v7);
    goto LABEL_128;
  }

  if (v11 == 2 && v8 == 18)
  {
    v28 = v7 - 1;
    while (1)
    {
      v29 = v28 + 1;
      v76 = v28 + 1;
      v30 = *(a1 + 40);
      if (v30 && (v31 = *(a1 + 32), v31 < *v30))
      {
        *(a1 + 32) = v31 + 1;
        v32 = *&v30[2 * v31 + 2];
      }

      else
      {
        sub_1617990(*(a1 + 24));
        v32 = sub_19593CC(a1 + 24, v33);
        v29 = v76;
      }

      v28 = sub_22285E4(a3, v32, v29);
      v76 = v28;
      if (!v28)
      {
        goto LABEL_136;
      }

      if (*a3 <= v28 || *v28 != 18)
      {
        goto LABEL_129;
      }
    }
  }

LABEL_121:
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
      v7 = v76;
    }

    v37 = sub_1952690(v8, v73, v7, a3);
    goto LABEL_128;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_136:
  v76 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v76;
}

char *sub_15F92AC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 216);
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

    v4 = sub_15F7520(v7, v9, a3);
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
      *v4 = 18;
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

      v4 = sub_15FDBF0(v12, v14, a3);
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v17 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 26;
      v18 = *(v17 + 24);
      v4[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v4 + 1);
      }

      else
      {
        v19 = v4 + 2;
      }

      v4 = sub_160C484(v17, v19, a3);
    }
  }

  v20 = *(a1 + 80);
  if (v20)
  {
    for (k = 0; k != v20; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v22 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 34;
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

      v4 = sub_15FA608(v22, v24, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v26 = *(a1 + 232);
    *v4 = 40;
    v4[1] = v26;
    if (v26 > 0x7F)
    {
      v4[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v4[2] = v26 >> 7;
      v25 = v4 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v25 - 1) = v4 | 0x80;
          v4 = (v27 >> 7);
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = v4 + 2;
    }
  }

  else
  {
    v25 = v4;
  }

  v29 = *(a1 + 104);
  if (v29)
  {
    for (m = 0; m != v29; ++m)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v31 = *(*(a1 + 112) + 8 * m + 8);
      *v25 = 50;
      v32 = *(v31 + 20);
      v25[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v25 + 1);
      }

      else
      {
        v33 = v25 + 2;
      }

      v25 = sub_15FF174(v31, v33, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v34 = *(a1 + 224);
    *v25 = 58;
    v35 = *(v34 + 20);
    v25[1] = v35;
    if (v35 > 0x7F)
    {
      v36 = sub_19575D0(v35, v25 + 1);
    }

    else
    {
      v36 = v25 + 2;
    }

    v25 = sub_15F8560(v34, v36, a3);
  }

  v37 = *(a1 + 128);
  if (v37)
  {
    for (n = 0; n != v37; ++n)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v39 = *(*(a1 + 136) + 8 * n + 8);
      *v25 = 66;
      v40 = *(v39 + 20);
      v25[1] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v25 + 1);
      }

      else
      {
        v41 = v25 + 2;
      }

      v25 = sub_15FFB18(v39, v41, a3);
    }
  }

  v42 = *(a1 + 152);
  if (v42)
  {
    for (ii = 0; ii != v42; ++ii)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v44 = *(*(a1 + 160) + 8 * ii + 8);
      *v25 = 74;
      v45 = *(v44 + 20);
      v25[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v25 + 1);
      }

      else
      {
        v46 = v25 + 2;
      }

      v25 = sub_1616BD8(v44, v46, a3);
    }
  }

  v47 = *(a1 + 176);
  if (v47)
  {
    for (jj = 0; jj != v47; ++jj)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v49 = *(*(a1 + 184) + 8 * jj + 8);
      *v25 = 82;
      v50 = *(v49 + 20);
      v25[1] = v50;
      if (v50 > 0x7F)
      {
        v51 = sub_19575D0(v50, v25 + 1);
      }

      else
      {
        v51 = v25 + 2;
      }

      v25 = sub_15FAF68(v49, v51, a3);
    }
  }

  v52 = *(a1 + 200);
  if (v52)
  {
    for (kk = 0; kk != v52; ++kk)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v54 = *(*(a1 + 208) + 8 * kk + 8);
      *v25 = 90;
      v55 = *(v54 + 20);
      v25[1] = v55;
      if (v55 > 0x7F)
      {
        v56 = sub_19575D0(v55, v25 + 1);
      }

      else
      {
        v56 = v25 + 2;
      }

      v25 = sub_15FEAEC(v54, v56, a3);
    }
  }

  v57 = *(a1 + 8);
  if ((v57 & 1) == 0)
  {
    return v25;
  }

  v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
  v60 = *(v59 + 31);
  if (v60 < 0)
  {
    v61 = *(v59 + 8);
    v60 = *(v59 + 16);
  }

  else
  {
    v61 = (v59 + 8);
  }

  if ((*a3 - v25) >= v60)
  {
    v62 = v60;
    memcpy(v25, v61, v60);
    v25 += v62;
    return v25;
  }

  return sub_1957130(a3, v61, v60, v25);
}

uint64_t sub_15F98DC(uint64_t a1)
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
      v7 = sub_15FE144(v6);
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
      v14 = sub_160D7D4(v13);
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
      v21 = sub_15FA794(v20);
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
      v28 = sub_15FF46C(v27);
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
      v35 = sub_15FFE74(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 152);
  v37 = v30 + v36;
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
      v42 = sub_1616EAC(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 176);
  v44 = v37 + v43;
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
      v49 = sub_15FB0F4(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 200);
  v51 = v44 + v50;
  v52 = *(a1 + 208);
  if (v52)
  {
    v53 = (v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  if (v50)
  {
    v54 = 8 * v50;
    do
    {
      v55 = *v53++;
      v56 = sub_15FEC78(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = *(a1 + 16);
  if ((v57 & 7) != 0)
  {
    if (v57)
    {
      v60 = sub_15F7AB8(*(a1 + 216));
      v51 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v57 & 2) == 0)
      {
LABEL_54:
        if ((v57 & 4) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    else if ((v57 & 2) == 0)
    {
      goto LABEL_54;
    }

    v61 = sub_15F866C(*(a1 + 224));
    v51 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v57 & 4) != 0)
    {
LABEL_55:
      v51 += ((9 * (__clz(*(a1 + 232) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_56:
  v58 = *(a1 + 8);
  if (v58)
  {
    v62 = v58 & 0xFFFFFFFFFFFFFFFCLL;
    v63 = *((v58 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v63 < 0)
    {
      v63 = *(v62 + 16);
    }

    v51 += v63;
  }

  *(a1 + 20) = v51;
  return v51;
}

void sub_15F9C50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_16375EC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1637678((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_1637704((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_1637790((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
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
    sub_163781C((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
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
    sub_16378A8((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
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
    sub_1637934((a1 + 168), v36, (v35 + 8), v34, **(a1 + 184) - *(a1 + 176));
    v37 = *(a1 + 176) + v34;
    *(a1 + 176) = v37;
    v38 = *(a1 + 184);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 200);
  if (v39)
  {
    v40 = *(a2 + 208);
    v41 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_16379C0((a1 + 192), v41, (v40 + 8), v39, **(a1 + 208) - *(a1 + 200));
    v42 = *(a1 + 200) + v39;
    *(a1 + 200) = v42;
    v43 = *(a1 + 208);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 16);
  if ((v44 & 7) != 0)
  {
    if (v44)
    {
      *(a1 + 16) |= 1u;
      v46 = *(a1 + 216);
      if (!v46)
      {
        v47 = *(a1 + 8);
        v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v48 = *v48;
        }

        v46 = sub_1617448(v48);
        *(a1 + 216) = v46;
      }

      if (*(a2 + 216))
      {
        v49 = *(a2 + 216);
      }

      else
      {
        v49 = &off_2779F10;
      }

      sub_15F7EBC(v46, v49);
      if ((v44 & 2) == 0)
      {
LABEL_28:
        if ((v44 & 4) == 0)
        {
LABEL_30:
          *(a1 + 16) |= v44;
          goto LABEL_31;
        }

LABEL_29:
        *(a1 + 232) = *(a2 + 232);
        goto LABEL_30;
      }
    }

    else if ((v44 & 2) == 0)
    {
      goto LABEL_28;
    }

    *(a1 + 16) |= 2u;
    v50 = *(a1 + 224);
    if (!v50)
    {
      v51 = *(a1 + 8);
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51)
      {
        v52 = *v52;
      }

      v50 = sub_1617514(v52);
      *(a1 + 224) = v50;
    }

    if (*(a2 + 224))
    {
      v53 = *(a2 + 224);
    }

    else
    {
      v53 = &off_2779FC0;
    }

    sub_15F86EC(v50, v53);
    if ((v44 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_31:
  v45 = *(a2 + 8);
  if (v45)
  {

    sub_1957EF4((a1 + 8), (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15FA058(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_15FE6E4(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_160E974(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if (!v7)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = sub_15FAB54(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if (!v10)
    {
      return 0;
    }
  }

  v11 = *(a1 + 104);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = sub_15FE75C(*(*(a1 + 112) + 8 * v11));
    v11 = v12;
    if (!v13)
    {
      return 0;
    }
  }

  v14 = *(a1 + 152);
  while (v14 >= 1)
  {
    v15 = v14 - 1;
    v16 = sub_16170F4(*(*(a1 + 160) + 8 * v14) + 24);
    v14 = v15;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_15FA17C(a1 + 192);
  if (result)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      return 1;
    }

    v18 = *(a1 + 224);
    if ((*(v18 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_162E924(*(v18 + 24) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_15FA17C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_15FE6E4(*(v3 + 24));
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

uint64_t sub_15FA1E8(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F6598;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_15FA21C(uint64_t a1)
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
  if (a1 != &off_277A0D0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_160EA58(v6);
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

void sub_15FA2D4(uint64_t a1)
{
  sub_15FA21C(a1);

  operator delete();
}

unsigned __int8 *sub_15FA30C(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_15FA36C(*(result + 3));
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

unsigned __int8 *sub_15FA36C(unsigned __int8 *result)
{
  v1 = result;
  *(result + 6) = 0;
  *(result + 10) = 0;
  *(result + 14) = 0;
  v2 = *(result + 20);
  if (v2 >= 1)
  {
    v3 = (*(result + 11) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 80) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v5 & 0x3E) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
    *(v1 + 128) = 0;
    *(v1 + 120) = 0;
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

char *sub_15FA43C(uint64_t a1, char *a2, int32x2_t *a3)
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
          v22 = sub_19587DC(v6, v15);
          if (!v22)
          {
            return 0;
          }
        }

        else
        {
          v16 = v6 + 2;
LABEL_23:
          v22 = v16;
        }

        if (v15 > 4)
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
      goto LABEL_31;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

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

      v18 = sub_161868C(v20);
      *(a1 + 24) = v18;
      v6 = v22;
    }

    v14 = sub_2228AF8(a3, v18, v6);
LABEL_31:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_15FA608(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 10;
    v7 = *(v6 + 20);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_160F184(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v10;
    if (v10 > 0x7F)
    {
      __dst[1] = v10 | 0x80;
      v11 = v10 >> 7;
      __dst[2] = v10 >> 7;
      v9 = __dst + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = __dst[2];
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
      v9 = __dst + 2;
    }
  }

  else
  {
    v9 = __dst;
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v9;
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

  if ((*a3 - v9) >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_15FA794(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_160F680(*(a1 + 24));
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

void sub_15FA85C(uint64_t result, uint64_t a2)
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

        v5 = sub_161868C(v7);
        *(result + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277A890;
      }

      sub_15FA92C(v5, v8);
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

void sub_15FA92C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1959094((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a1 + 40);
    sub_1959094((a1 + 40), v9 + v8);
    v10 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy((v10 + 8 * v9), *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(a1 + 56);
    sub_1959094((a1 + 56), v12 + v11);
    v13 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy((v13 + 8 * v12), *(a2 + 64), 8 * *(a2 + 56));
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_11F1A54((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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

        goto LABEL_27;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 104) = *(a2 + 104);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 108) = *(a2 + 108);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 112) = *(a2 + 112);
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
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_18;
    }

LABEL_29:
    *(a1 + 120) = *(a2 + 120);
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

BOOL sub_15FAB54(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 24);
  v3 = *(v2 + 80);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    v5 = sub_16E5370(*(*(v2 + 88) + 8 * v3));
    v3 = v4;
  }

  while ((v5 & 1) != 0);
  return v1;
}

BOOL sub_15FABB8(uint64_t a1)
{
  v2 = *(a1 + 80);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E5370(*(*(a1 + 88) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_15FAC20(uint64_t a1)
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
  if (a1 != &off_277A0F8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16102A0(v6);
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

void sub_15FACD8(uint64_t a1)
{
  sub_15FAC20(a1);

  operator delete();
}

uint64_t sub_15FAD10(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_15FAD70(*(result + 24));
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

uint64_t sub_15FAD70(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
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

char *sub_15FAD9C(uint64_t a1, char *a2, int32x2_t *a3)
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
          v23 = sub_19587DC(v6, v15);
          if (!v23)
          {
            return 0;
          }
        }

        else
        {
          v16 = v6 + 2;
LABEL_23:
          v23 = v16;
        }

        if (v15 > 6)
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
      goto LABEL_31;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

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

      sub_1618808(v20);
      v18 = v21;
      *(a1 + 24) = v21;
      v6 = v23;
    }

    v14 = sub_2228B88(a3, v18, v6);
LABEL_31:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

char *sub_15FAF68(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 10;
    v7 = *(v6 + 20);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_1610504(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v10;
    if (v10 > 0x7F)
    {
      __dst[1] = v10 | 0x80;
      v11 = v10 >> 7;
      __dst[2] = v10 >> 7;
      v9 = __dst + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = __dst[2];
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
      v9 = __dst + 2;
    }
  }

  else
  {
    v9 = __dst;
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v9;
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

  if ((*a3 - v9) >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_15FB0F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_161069C(*(a1 + 24));
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

std::string *sub_15FB1BC(std::string *result, uint64_t a2)
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
        v6 = *(v3 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        sub_1618808(v7);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277A918;
      }

      result = sub_15FB28C(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_15FB28C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_15FB318(void *a1)
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

void sub_15FB38C(void *a1)
{
  sub_15FB318(a1);

  operator delete();
}

uint64_t sub_15FB3C4(uint64_t a1)
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

char *sub_15FB3EC(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_15FB634(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_15FB86C(uint64_t a1)
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

uint64_t sub_15FB948(uint64_t a1)
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

  if (a1 != &off_277A148)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_178E778(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_178F148(v7);
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

void sub_15FBA34(uint64_t a1)
{
  sub_15FB948(a1);

  operator delete();
}

uint64_t sub_15FBA6C(uint64_t result)
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

    goto LABEL_16;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
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

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = sub_178E7B4(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_178F068(*(v1 + 40));
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

uint64_t sub_15FBB28(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v11 == 3)
      {
        if (v8 == 26)
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

            v16 = sub_178F538(v18);
            *(a1 + 32) = v16;
            v7 = *v31;
          }

          v19 = sub_2228C18(a3, v16, v7);
          goto LABEL_46;
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 34)
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

            v20 = sub_178F5F8(v22);
            *(a1 + 40) = v20;
            v7 = *v31;
          }

          v19 = sub_2228CA8(a3, v20, v7);
          goto LABEL_46;
        }
      }

      else if (v11 == 5 && v8 == 45)
      {
        v5 |= 0x10u;
        *(a1 + 56) = *v7;
        *v31 = v7 + 4;
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_39;
    }

    v5 |= 8u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_22:
      *v31 = v14;
      *(a1 + 48) = v13;
      goto LABEL_47;
    }

    v29 = sub_19587DC(v7, v13);
    *v31 = v29;
    *(a1 + 48) = v30;
    if (!v29)
    {
      goto LABEL_54;
    }

LABEL_47:
    if (sub_195ADC0(a3, v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 24), v24);
    v19 = sub_1958890(v25, *v31, a3);
LABEL_46:
    *v31 = v19;
    if (!v19)
    {
      goto LABEL_54;
    }

    goto LABEL_47;
  }

LABEL_39:
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
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_15FBDD4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 48);
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
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 32);
    *v7 = 26;
    v13 = *(v12 + 20);
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v7 + 1);
    }

    else
    {
      v14 = v7 + 2;
    }

    v7 = sub_178EA60(v12, v14, a3);
    if ((v6 & 4) == 0)
    {
LABEL_14:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_14;
  }

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

  v7 = sub_178F340(v15, v17, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_28:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 56);
    *v7 = 45;
    *(v7 + 1) = v18;
    v7 += 5;
  }

LABEL_31:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v22)
  {
    v24 = v22;
    memcpy(v7, v23, v22);
    v7 += v24;
    return v7;
  }

  return sub_1957130(a3, v23, v22, v7);
}

uint64_t sub_15FC038(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
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
    v8 = sub_178EE00(*(a1 + 32));
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

  v10 = sub_178F49C(*(a1 + 40));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v2 & 0x10) != 0)
  {
    result = v3 + 5;
  }

  else
  {
    result = v3;
  }

LABEL_16:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15FC180(uint64_t a1, uint64_t a2)
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

      v9 = sub_178F538(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27821D8;
    }

    sub_178EF38(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }

LABEL_24:
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

      v13 = sub_178F5F8(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2782230;
    }

    sub_178F08C(v13, v16);
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

LABEL_32:
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

void *sub_15FC308(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1636C00(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15FC388(void *a1)
{
  sub_15FC308(a1);

  operator delete();
}

uint64_t sub_15FC3C0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15FBA6C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 0x7F) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
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

char *sub_15FC458(uint64_t a1, char *a2, int32x2_t *a3)
{
  v50 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v50, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v50 + 1;
    v8 = *v50;
    if (*v50 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v50, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v50 + 2;
      }
    }

    v50 = v7;
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
          goto LABEL_61;
        }

        v5 |= 2u;
        v33 = v7 + 1;
        v34 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v35 = *v33;
        v34 = v34 + (v35 << 7) - 128;
        if ((v35 & 0x80000000) == 0)
        {
          v33 = v7 + 2;
LABEL_57:
          v50 = v33;
          *(a1 + 52) = v34;
          goto LABEL_68;
        }

        v42 = sub_1958770(v7, v34);
        v50 = v42;
        *(a1 + 52) = v43;
        if (!v42)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_61;
        }

        v5 |= 4u;
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
          v50 = v19;
          *(a1 + 56) = v20;
          goto LABEL_68;
        }

        v48 = sub_1958770(v7, v20);
        v50 = v48;
        *(a1 + 56) = v49;
        if (!v48)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          v24 = v7 - 1;
          while (1)
          {
            v25 = v24 + 1;
            v50 = v24 + 1;
            v26 = *(a1 + 40);
            if (v26 && (v27 = *(a1 + 32), v27 < *v26))
            {
              *(a1 + 32) = v27 + 1;
              v28 = *&v26[2 * v27 + 2];
            }

            else
            {
              v29 = sub_16177E8(*(a1 + 24));
              v28 = sub_19593CC(a1 + 24, v29);
              v25 = v50;
            }

            v24 = sub_2228D38(a3, v28, v25);
            v50 = v24;
            if (!v24)
            {
              goto LABEL_83;
            }

            if (*a3 <= v24 || *v24 != 10)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_61;
      }

      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_61;
      }

      v5 |= 1u;
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
        v50 = v13;
        *(a1 + 48) = v14;
        goto LABEL_68;
      }

      v44 = sub_1958770(v7, v14);
      v50 = v44;
      *(a1 + 48) = v45;
      if (!v44)
      {
        goto LABEL_83;
      }
    }

LABEL_68:
    if (sub_195ADC0(a3, &v50, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_61;
      }

      v5 |= 8u;
      v30 = v7 + 1;
      v31 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      v32 = *v30;
      v31 = v31 + (v32 << 7) - 128;
      if ((v32 & 0x80000000) == 0)
      {
        v30 = v7 + 2;
LABEL_52:
        v50 = v30;
        *(a1 + 60) = v31;
        goto LABEL_68;
      }

      v40 = sub_1958770(v7, v31);
      v50 = v40;
      *(a1 + 60) = v41;
      if (!v40)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_61;
      }

      v5 |= 0x40u;
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
        v50 = v16;
        *(a1 + 80) = v17;
        goto LABEL_68;
      }

      v46 = sub_1958770(v7, v17);
      v50 = v46;
      *(a1 + 80) = v47;
      if (!v46)
      {
        goto LABEL_83;
      }
    }

    goto LABEL_68;
  }

  if (v11 == 7)
  {
    if (v8 == 57)
    {
      v36 = *v7;
      v22 = v7 + 8;
      v5 |= 0x10u;
      *(a1 + 64) = v36;
      goto LABEL_60;
    }
  }

  else if (v11 == 8 && v8 == 65)
  {
    v23 = *v7;
    v22 = v7 + 8;
    v5 |= 0x20u;
    *(a1 + 72) = v23;
LABEL_60:
    v50 = v22;
    goto LABEL_68;
  }

LABEL_61:
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
      v7 = v50;
    }

    v50 = sub_1952690(v8, v39, v7, a3);
    if (!v50)
    {
      goto LABEL_83;
    }

    goto LABEL_68;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  v50 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v50;
}

char *sub_15FC860(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_15FBDD4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 48);
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
          LODWORD(__dst) = v14 >> 7;
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

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 52);
    *v12 = 24;
    v12[1] = v17;
    if (v17 > 0x7F)
    {
      v12[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[2] = v17 >> 7;
      v16 = v12 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
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
      v16 = v12 + 2;
    }
  }

  else
  {
    v16 = v12;
  }

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 56);
    *v16 = 32;
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v16[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v16[2] = v21 >> 7;
      v20 = v16 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v23) = v16[2];
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
      v20 = v16 + 2;
    }
  }

  else
  {
    v20 = v16;
  }

  if ((v11 & 8) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v26 = *(a1 + 60);
    *v20 = 40;
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
          LODWORD(v20) = v27 >> 7;
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

  if ((v11 & 0x40) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v30 = *(a1 + 80);
    *v25 = 48;
    v25[1] = v30;
    if (v30 > 0x7F)
    {
      v25[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v25[2] = v30 >> 7;
      v29 = v25 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v32) = v25[2];
        do
        {
          *(v29 - 1) = v32 | 0x80;
          v32 = v31 >> 7;
          *v29++ = v31 >> 7;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v29 = v25 + 2;
    }
  }

  else
  {
    v29 = v25;
  }

  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v34 = *(a1 + 64);
    *v29 = 57;
    *(v29 + 1) = v34;
    v29 += 9;
  }

  if ((v11 & 0x20) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v35 = *(a1 + 72);
    *v29 = 65;
    *(v29 + 1) = v35;
    v29 += 9;
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v29;
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

  if ((*a3 - v29) >= v39)
  {
    v41 = v39;
    memcpy(v29, v40, v39);
    v29 += v41;
    return v29;
  }

  return sub_1957130(a3, v40, v39, v29);
}

uint64_t sub_15FCCA8(uint64_t a1)
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
      v7 = sub_15FC038(v6);
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
    goto LABEL_22;
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

LABEL_26:
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v8 & 8) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v9 = v2 + 9;
  if ((v8 & 0x10) == 0)
  {
    v9 = v2;
  }

  if ((v8 & 0x20) != 0)
  {
    v2 = v9 + 9;
  }

  else
  {
    v2 = v9;
  }

  if ((v8 & 0x40) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
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

void sub_15FCE4C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1637A4C((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
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
      *(result + 48) = *(a2 + 48);
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

    *(result + 52) = *(a2 + 52);
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
    *(result + 56) = *(a2 + 56);
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
    *(result + 60) = *(a2 + 60);
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
    *(result + 64) = *(a2 + 64);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
LABEL_13:
        *(result + 16) |= v9;
        goto LABEL_14;
      }

LABEL_12:
      *(result + 80) = *(a2 + 80);
      goto LABEL_13;
    }

LABEL_23:
    *(result + 72) = *(a2 + 72);
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

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15FCFA8(uint64_t a1)
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
  if (a1 != &off_277A1E0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_15FC308(v6);
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

void sub_15FD060(uint64_t a1)
{
  sub_15FCFA8(a1);

  operator delete();
}

uint64_t sub_15FD098(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_15FC3C0(*(result + 24));
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

char *sub_15FD0F4(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_1617874(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2228DC8(a3, v14, v6);
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

char *sub_15FD238(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_15FC860(v6, v8, a3);
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

uint64_t sub_15FD344(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_15FCCA8(*(a1 + 24));
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

void sub_15FD3C4(uint64_t result, uint64_t a2)
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

      v5 = sub_1617874(v7);
      *(result + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277A188;
    }

    sub_15FCE4C(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_15FD484(void *a1)
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

  sub_15FD508(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_15FD508(void *result)
{
  if (result != &off_277A200)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_160EA58(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_15FEE94(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_15FB318(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_15FCFA8(result);

      operator delete();
    }
  }

  return result;
}

void sub_15FD5D4(void *a1)
{
  sub_15FD484(a1);

  operator delete();
}

uint64_t sub_15FD60C(uint64_t result)
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

LABEL_16:
    result = sub_15FD6BC(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_17;
  }

  result = sub_15FA36C(*(result + 24));
  if ((v2 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_17:
  result = sub_15FB3C4(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_15FD098(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  if ((v2 & 0xF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
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