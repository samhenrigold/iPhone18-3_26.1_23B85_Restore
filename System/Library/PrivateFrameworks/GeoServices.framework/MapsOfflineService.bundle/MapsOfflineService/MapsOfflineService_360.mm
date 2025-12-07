unint64_t sub_149BB9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_14;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = sub_1458DB4(*(a1 + 32));
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
  if ((v2 & 4) != 0)
  {
    v11 = sub_1458DB4(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((v2 & 8) != 0)
  {
LABEL_12:
    v9 = sub_1458DB4(*(a1 + 48));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  result = v3 + ((v2 >> 3) & 2);
LABEL_14:
  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    result += v13;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_149BCF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
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
      v9 = *(a1 + 32);
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        sub_14BAE64(v11);
        *(a1 + 32) = v9;
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
LABEL_8:
        if ((v4 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_32;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

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

      sub_14BAE64(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2771738;
    }

    sub_144EF20(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_11;
    }

LABEL_32:
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

      sub_14BAE64(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_2771738;
    }

    sub_144EF20(v17, v20);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v8 = *(a2 + 8);
  if (v8)
  {

    sub_1957EF4((a1 + 8), (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_149BE8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_144F560(*(a1 + 40));
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

  result = sub_144F560(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_149BEFC(uint64_t a1)
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
  if (a1 != &off_2773148)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_149BFC0(uint64_t a1)
{
  sub_149BEFC(a1);

  operator delete();
}

uint64_t sub_149BFF8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_144E5CC(*(v1 + 48));
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

char *sub_149C088(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_14BAE64(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v26;
          }

          v15 = sub_22095B8(a3, v19, v16);
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

        sub_14BAE64(v23);
        v21 = v24;
        *(a1 + 48) = v24;
        v6 = v26;
      }

      v14 = sub_22095B8(a3, v21, v6);
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

char *sub_149C26C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_14589F4(v6, v8, a3);
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

      v4 = sub_14589F4(v11, v13, a3);
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

uint64_t sub_149C414(uint64_t a1)
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
      v7 = sub_1458DB4(v6);
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
    v8 = sub_1458DB4(*(a1 + 48));
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

void sub_149C4F0(char *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 24), *(a2 + 32));
    sub_144A454(result + 3, v6, (v5 + 8), v4, **(result + 5) - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = *(result + 5);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
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

      sub_14BAE64(v12);
      *(result + 6) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_2771738;
    }

    sub_144EF20(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4(result + 1, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_149C600(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 40) + 8 * v2));
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

  result = sub_144F560(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_149C674(uint64_t a1)
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

  if (a1 != &off_2773180)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_1458388(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1565490((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_149C764(uint64_t a1)
{
  sub_149C674(a1);

  operator delete();
}

uint64_t sub_149C79C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_149BFF8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      result = sub_144E5CC(*(v1 + 48));
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = sub_144E5CC(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      result = sub_144E5CC(*(v1 + 64));
    }
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

char *sub_149C858(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v32, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v32 + 1;
    v7 = *v32;
    if (*v32 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v32, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v32 + 2;
      }
    }

    v32 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 4)
    {
      if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 4u;
          v11 = *(a1 + 64);
          if (v11)
          {
            goto LABEL_38;
          }

          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          sub_14BAE64(v25);
          v11 = v26;
          *(a1 + 64) = v26;
          goto LABEL_37;
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = v15 + 1;
          v32 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_14BDD20(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v32;
          }

          v15 = sub_22112D0(a3, v19, v16);
          v32 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 50)
          {
            goto LABEL_47;
          }
        }
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 1u;
        v11 = *(a1 + 48);
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

        sub_14BAE64(v22);
        v11 = v23;
        *(a1 + 48) = v23;
LABEL_37:
        v6 = v32;
        goto LABEL_38;
      }
    }

    else if (v10 == 4 && v7 == 34)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 56);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_14BAE64(v13);
        v11 = v14;
        *(a1 + 56) = v14;
        goto LABEL_37;
      }

LABEL_38:
      v27 = sub_22095B8(a3, v11, v6);
      goto LABEL_46;
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
        return v32;
      }

      return 0;
    }

    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v6 = v32;
    }

    v27 = sub_1952690(v7, v30, v6, a3);
LABEL_46:
    v32 = v27;
    if (!v27)
    {
      return 0;
    }

LABEL_47:
    ;
  }

  return v32;
}

char *sub_149CAE0(uint64_t a1, char *__dst, unint64_t *a3)
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

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) != 0)
  {
LABEL_17:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 64);
    *v4 = 42;
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

    v4 = sub_14589F4(v13, v15, a3);
  }

LABEL_23:
  v16 = *(a1 + 32);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v18 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 50;
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

      v4 = sub_149C26C(v18, v20, a3);
    }
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v24)
  {
    v26 = v24;
    memcpy(v4, v25, v24);
    v4 += v26;
    return v4;
  }

  return sub_1957130(a3, v25, v24, v4);
}

uint64_t sub_149CD5C(uint64_t a1)
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
      v7 = sub_149C414(v6);
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
      v12 = sub_1458DB4(*(a1 + 48));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v13 = sub_1458DB4(*(a1 + 56));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v9 = sub_1458DB4(*(a1 + 64));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v10 = *(a1 + 8);
  if (v10)
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_149CEAC(void **result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    sub_156729C(result + 3, v6, (v5 + 8), v4, *result[5] - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = result[5];
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
      *(result + 4) |= 1u;
      v10 = result[6];
      if (!v10)
      {
        v11 = result[1];
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_14BAE64(v12);
        result[6] = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_2771738;
      }

      sub_144EF20(v10, v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(result + 4) |= 2u;
    v14 = result[7];
    if (!v14)
    {
      v15 = result[1];
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_14BAE64(v16);
      result[7] = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_2771738;
    }

    sub_144EF20(v14, v17);
    if ((v9 & 4) != 0)
    {
LABEL_25:
      *(result + 4) |= 4u;
      v18 = result[8];
      if (!v18)
      {
        v19 = result[1];
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_14BAE64(v20);
        result[8] = v18;
      }

      if (*(a2 + 64))
      {
        v21 = *(a2 + 64);
      }

      else
      {
        v21 = &off_2771738;
      }

      sub_144EF20(v18, v21);
    }
  }

LABEL_33:
  v22 = *(a2 + 8);
  if (v22)
  {

    sub_1957EF4(result + 1, (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_149D054(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_149C600(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_144F560(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_149D0F0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E6640;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = &qword_278E990;
  *(a1 + 88) = &qword_278E990;
  *(a1 + 96) = &qword_278E990;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 180) = 1;
  return a1;
}

void sub_149D194(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_149D1C4(void *a1)
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

  sub_149D258(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_149D258(uint64_t a1)
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

  result = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27731C8)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      sub_16E4E08(v5);
      operator delete();
    }

    v6 = *(a1 + 112);
    if (v6)
    {
      sub_149C674(v6);
      operator delete();
    }

    result = *(a1 + 120);
    if (result)
    {
      sub_14B64B0(result);

      operator delete();
    }
  }

  return result;
}

void sub_149D358(void *a1)
{
  sub_149D1C4(a1);

  operator delete();
}

uint64_t sub_149D390(uint64_t a1)
{
  sub_1951124((a1 + 16));
  result = sub_12A41D0(a1 + 48);
  v3 = *(a1 + 40);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_26:
    v8 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_34:
    result = sub_16E4E44(*(a1 + 104));
    if ((v3 & 0x20) == 0)
    {
LABEL_8:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_35;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_22:
  v7 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_30:
  v9 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

LABEL_7:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  result = sub_149C79C(*(a1 + 112));
  if ((v3 & 0x40) != 0)
  {
LABEL_9:
    result = sub_144E6A8(*(a1 + 120));
  }

LABEL_10:
  *(a1 + 128) = 0;
  if ((v3 & 0xFF00) != 0)
  {
    *(a1 + 168) = 0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
  }

  if ((v3 & 0x30000) != 0)
  {
    *(a1 + 176) = 1;
    *(a1 + 180) = 1;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_149D528(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v79 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v79, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v79 + 1);
    v8 = **v79;
    if (**v79 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v79, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v79 + 2);
      }
    }

    *v79 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 0x10u;
        v11 = *(a1 + 104);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v11 = sub_16F5828(v13);
          *(a1 + 104) = v11;
          v7 = *v79;
        }

        v14 = sub_21F4D60(a3, v11, v7);
        goto LABEL_86;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 1u;
        v48 = *(a1 + 8);
        v30 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v30 = *v30;
        }

        v31 = (a1 + 72);
        goto LABEL_85;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 2u;
        v38 = *(a1 + 8);
        v30 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v30 = *v30;
        }

        v31 = (a1 + 80);
        goto LABEL_85;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_112;
        }

        v42 = v7 + 1;
        v43 = *v7;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_67;
        }

        v44 = *v42;
        v45 = (v44 << 7) + v43;
        LODWORD(v43) = v45 - 128;
        if (v44 < 0)
        {
          *v79 = sub_19587DC(v7, (v45 - 128));
          if (!*v79)
          {
            goto LABEL_143;
          }

          LODWORD(v43) = v74;
        }

        else
        {
          v42 = v7 + 2;
LABEL_67:
          *v79 = v42;
        }

        if (sub_144E270(v43))
        {
          *(a1 + 40) |= 0x100u;
          *(a1 + 136) = v43;
        }

        else
        {
          sub_12E8500();
        }

        goto LABEL_110;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 4u;
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v31 = (a1 + 88);
        goto LABEL_85;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 8u;
        v52 = *(a1 + 8);
        v30 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v30 = *v30;
        }

        v31 = (a1 + 96);
LABEL_85:
        v53 = sub_194DB04(v31, v30);
        v14 = sub_1958890(v53, *v79, a3);
        goto LABEL_86;
      case 7u:
        if (v8 != 57)
        {
          goto LABEL_112;
        }

        v57 = *v7;
        v46 = v7 + 8;
        v5 |= 0x80u;
        *(a1 + 128) = v57;
        goto LABEL_109;
      case 8u:
        if (v8 != 65)
        {
          goto LABEL_112;
        }

        v47 = *v7;
        v46 = v7 + 8;
        v5 |= 0x400u;
        *(a1 + 144) = v47;
        goto LABEL_109;
      case 9u:
        if (v8 != 73)
        {
          goto LABEL_112;
        }

        v64 = *v7;
        v46 = v7 + 8;
        v5 |= 0x800u;
        *(a1 + 152) = v64;
LABEL_109:
        *v79 = v46;
        goto LABEL_110;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_112;
        }

        v36 = v7 + 1;
        v35 = *v7;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if (v37 < 0)
        {
          *v79 = sub_19587DC(v7, v35);
          if (!*v79)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v36 = v7 + 2;
LABEL_51:
          *v79 = v36;
        }

        if ((v35 - 1) > 8)
        {
          sub_156E728();
        }

        else
        {
          *(a1 + 40) |= 0x10000u;
          *(a1 + 176) = v35;
        }

        goto LABEL_110;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_112;
        }

        v5 |= 0x200u;
        v61 = v7 + 1;
        v62 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_106;
        }

        v63 = *v61;
        v62 = v62 + (v63 << 7) - 128;
        if (v63 < 0)
        {
          v77 = sub_1958770(v7, v62);
          *v79 = v77;
          *(a1 + 140) = v78;
          if (!v77)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v61 = v7 + 2;
LABEL_106:
          *v79 = v61;
          *(a1 + 140) = v62;
        }

        goto LABEL_110;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_112;
        }

        v5 |= 0x1000u;
        v27 = v7 + 1;
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if (v28 < 0)
        {
          v70 = sub_19587DC(v7, v26);
          *v79 = v70;
          *(a1 + 160) = v71 != 0;
          if (!v70)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v27 = v7 + 2;
LABEL_35:
          *v79 = v27;
          *(a1 + 160) = v26 != 0;
        }

        goto LABEL_110;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_112;
        }

        v33 = v7 + 1;
        v32 = *v7;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          *v79 = sub_19587DC(v7, v32);
          if (!*v79)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v33 = v7 + 2;
LABEL_44:
          *v79 = v33;
        }

        if (v32 > 5)
        {
          sub_144E0C4();
        }

        else
        {
          *(a1 + 40) |= 0x2000u;
          *(a1 + 164) = v32;
        }

        goto LABEL_110;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 0x20u;
        v54 = *(a1 + 112);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_14BDDBC(v56);
          *(a1 + 112) = v54;
          v7 = *v79;
        }

        v14 = sub_2211360(a3, v54, v7);
        goto LABEL_86;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_112;
        }

        v5 |= 0x4000u;
        v23 = v7 + 1;
        v24 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if (v25 < 0)
        {
          v68 = sub_1958770(v7, v24);
          *v79 = v68;
          *(a1 + 168) = v69;
          if (!v68)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_30:
          *v79 = v23;
          *(a1 + 168) = v24;
        }

        goto LABEL_110;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_112;
        }

        v5 |= 0x20000u;
        v40 = v7 + 1;
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v72 = sub_19587DC(v7, v39);
          *v79 = v72;
          *(a1 + 180) = v73 != 0;
          if (!v72)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v40 = v7 + 2;
LABEL_62:
          *v79 = v40;
          *(a1 + 180) = v39 != 0;
        }

        goto LABEL_110;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_112;
        }

        v15 = v7 - 2;
        while (1)
        {
          v16 = (v15 + 2);
          *v79 = v15 + 2;
          v17 = *(a1 + 64);
          if (v17 && (v18 = *(a1 + 56), v18 < *v17))
          {
            *(a1 + 56) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = *(a1 + 48);
            if (!v20)
            {
              operator new();
            }

            *v22 = v21;
            v22[1] = sub_195A650;
            *v21 = 0;
            v21[1] = 0;
            v21[2] = 0;
            v19 = sub_19593CC(a1 + 48, v21);
            v16 = *v79;
          }

          v15 = sub_1958890(v19, v16, a3);
          *v79 = v15;
          if (!v15)
          {
            goto LABEL_143;
          }

          if (*a3 <= v15 || *v15 != 394)
          {
            goto LABEL_110;
          }
        }

      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_112;
        }

        v5 |= 0x8000u;
        v49 = v7 + 1;
        v50 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_80;
        }

        v51 = *v49;
        v50 = v50 + (v51 << 7) - 128;
        if (v51 < 0)
        {
          v75 = sub_1958770(v7, v50);
          *v79 = v75;
          *(a1 + 172) = v76;
          if (!v75)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v49 = v7 + 2;
LABEL_80:
          *v79 = v49;
          *(a1 + 172) = v50;
        }

        goto LABEL_110;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 0x40u;
        v58 = *(a1 + 120);
        if (!v58)
        {
          v59 = *(a1 + 8);
          v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
          if (v59)
          {
            v60 = *v60;
          }

          v58 = sub_14BF484(v60);
          *(a1 + 120) = v58;
          v7 = *v79;
        }

        v14 = sub_2209138(a3, v58, v7);
        goto LABEL_86;
      default:
LABEL_112:
        if (v8)
        {
          v65 = (v8 & 7) == 4;
        }

        else
        {
          v65 = 1;
        }

        if (!v65)
        {
          if (v8 - 8000 > 0x647)
          {
            v66 = *(a1 + 8);
            if (v66)
            {
              v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v67 = sub_11F1920((a1 + 8));
              v7 = *v79;
            }

            v14 = sub_1952690(v8, v67, v7, a3);
          }

          else
          {
            v14 = sub_19525AC((a1 + 16), v8, v7, &off_27731C8, (a1 + 8), a3);
          }

LABEL_86:
          *v79 = v14;
          if (!v14)
          {
            goto LABEL_143;
          }

LABEL_110:
          if (sub_195ADC0(a3, v79, a3[11].u32[1]))
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
LABEL_143:
          *v79 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v79;
    }
  }
}

char *sub_149DD64(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 104);
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
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      v4 = sub_128AEEC(a3, 3, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v6 & 0x100) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 136);
  *v4 = 32;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v12 >> 7);
        *v7++ = v12 >> 7;
        v13 = v12 >> 14;
        v12 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_21:
  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 5, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v6 & 8) == 0)
    {
LABEL_23:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_23;
  }

  v7 = sub_128AEEC(a3, 6, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 0x80) == 0)
  {
LABEL_24:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v15 = *(a1 + 128);
  *v7 = 57;
  *(v7 + 1) = v15;
  v7 += 9;
  if ((v6 & 0x400) == 0)
  {
LABEL_25:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_26;
    }

LABEL_36:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 152);
    *v7 = 73;
    *(v7 + 1) = v17;
    v7 += 9;
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_33:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v16 = *(a1 + 144);
  *v7 = 65;
  *(v7 + 1) = v16;
  v7 += 9;
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_36;
  }

LABEL_26:
  if ((v6 & 0x10000) == 0)
  {
LABEL_27:
    v14 = v7;
    goto LABEL_46;
  }

LABEL_39:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v18 = *(a1 + 176);
  *v7 = 80;
  v7[1] = v18;
  if (v18 > 0x7F)
  {
    v7[1] = v18 | 0x80;
    v19 = v18 >> 7;
    v7[2] = v18 >> 7;
    v14 = v7 + 3;
    if (v18 >= 0x4000)
    {
      LOBYTE(v20) = v7[2];
      do
      {
        *(v14 - 1) = v20 | 0x80;
        v20 = v19 >> 7;
        *v14++ = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }
  }

  else
  {
    v14 = v7 + 2;
  }

LABEL_46:
  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v23 = *(a1 + 140);
    *v14 = 88;
    v14[1] = v23;
    if (v23 > 0x7F)
    {
      v14[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v14[2] = v23 >> 7;
      v22 = v14 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v14[2];
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
      v22 = v14 + 2;
    }
  }

  else
  {
    v22 = v14;
  }

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 160);
    *v22 = 96;
    v22[1] = v27;
    v22 += 2;
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v29 = *(a1 + 164);
    *v22 = 104;
    v22[1] = v29;
    if (v29 > 0x7F)
    {
      v22[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v22[2] = v29 >> 7;
      v28 = v22 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v22) = v22[2];
        do
        {
          *(v28 - 1) = v22 | 0x80;
          v22 = (v30 >> 7);
          *v28++ = v30 >> 7;
          v31 = v30 >> 14;
          v30 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v28 = v22 + 2;
    }
  }

  else
  {
    v28 = v22;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v32 = *(a1 + 112);
    *v28 = 114;
    v33 = *(v32 + 20);
    v28[1] = v33;
    if (v33 > 0x7F)
    {
      v34 = sub_19575D0(v33, v28 + 1);
    }

    else
    {
      v34 = v28 + 2;
    }

    v28 = sub_149CAE0(v32, v34, a3);
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v36 = *(a1 + 168);
    *v28 = 120;
    v28[1] = v36;
    if (v36 > 0x7F)
    {
      v28[1] = v36 | 0x80;
      v37 = v36 >> 7;
      v28[2] = v36 >> 7;
      v35 = v28 + 3;
      if (v36 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v35 - 1) = v28 | 0x80;
          LODWORD(v28) = v37 >> 7;
          *v35++ = v37 >> 7;
          v38 = v37 >> 14;
          v37 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v35 = v28 + 2;
    }
  }

  else
  {
    v35 = v28;
  }

  if ((v6 & 0x20000) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v39 = *(a1 + 180);
    *v35 = 384;
    v35[2] = v39;
    v35 += 3;
  }

  v40 = *(a1 + 56);
  if (v40 >= 1)
  {
    v41 = 8;
    do
    {
      v42 = *(*(a1 + 64) + v41);
      v43 = *(v42 + 23);
      if (v43 < 0 && (v43 = v42[1], v43 > 127) || (*a3 - v35 + 13) < v43)
      {
        v35 = sub_1957480(a3, 17, v42, v35);
      }

      else
      {
        *v35 = 394;
        v35[2] = v43;
        if (*(v42 + 23) < 0)
        {
          v42 = *v42;
        }

        v44 = v35 + 3;
        memcpy(v35 + 3, v42, v43);
        v35 = &v44[v43];
      }

      v41 += 8;
      --v40;
    }

    while (v40);
  }

  if ((v6 & 0x8000) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v46 = *(a1 + 172);
    *v35 = 400;
    v35[2] = v46;
    if (v46 > 0x7F)
    {
      v35[2] = v46 | 0x80;
      v47 = v46 >> 7;
      v35[3] = v46 >> 7;
      v45 = v35 + 4;
      if (v46 >= 0x4000)
      {
        LOBYTE(v48) = v35[3];
        do
        {
          *(v45 - 1) = v48 | 0x80;
          v48 = v47 >> 7;
          *v45++ = v47 >> 7;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
      }
    }

    else
    {
      v45 = v35 + 3;
    }
  }

  else
  {
    v45 = v35;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v50 = *(a1 + 120);
    *v45 = 410;
    v51 = *(v50 + 44);
    v45[2] = v51;
    if (v51 > 0x7F)
    {
      v52 = sub_19575D0(v51, v45 + 2);
    }

    else
    {
      v52 = v45 + 3;
    }

    v45 = sub_14B6D24(v50, v52, a3);
  }

  if (*(a1 + 26))
  {
    v45 = sub_1953428(a1 + 16, 1000, 1201, v45, a3);
  }

  v53 = *(a1 + 8);
  if ((v53 & 1) == 0)
  {
    return v45;
  }

  v55 = v53 & 0xFFFFFFFFFFFFFFFCLL;
  v56 = *(v55 + 31);
  if (v56 < 0)
  {
    v57 = *(v55 + 8);
    v56 = *(v55 + 16);
  }

  else
  {
    v57 = (v55 + 8);
  }

  if ((*a3 - v45) >= v56)
  {
    v58 = v56;
    memcpy(v45, v57, v56);
    v45 += v58;
    return v45;
  }

  return sub_1957130(a3, v57, v56, v45);
}

uint64_t sub_149E4E4(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + 2 * v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 64) + 8);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 40);
  if (*(a1 + 40))
  {
    if (v9)
    {
      v13 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v9 & 2) == 0)
      {
LABEL_9:
        if ((v9 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_27;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_9;
    }

    v16 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 4) == 0)
    {
LABEL_10:
      if ((v9 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_27:
    v19 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 8) == 0)
    {
LABEL_11:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }

LABEL_30:
    v22 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(v22 + 23);
    v24 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v24 = v23;
    }

    v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x10) == 0)
    {
LABEL_12:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_34;
    }

LABEL_33:
    v25 = sub_16E51F0(*(a1 + 104));
    v4 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x20) == 0)
    {
LABEL_13:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_34:
    v26 = sub_149CD5C(*(a1 + 112));
    v4 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x40) == 0)
    {
LABEL_15:
      if ((v9 & 0x80) != 0)
      {
        v4 += 9;
      }

      goto LABEL_17;
    }

LABEL_14:
    v10 = sub_14B71B8(*(a1 + 120));
    v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
    goto LABEL_15;
  }

LABEL_17:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v9 & 0x100) != 0)
  {
    v11 = *(a1 + 136);
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

  if ((v9 & 0x200) != 0)
  {
    v4 += ((9 * (__clz(*(a1 + 140) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v27 = v4 + 9;
  if ((v9 & 0x400) == 0)
  {
    v27 = v4;
  }

  if ((v9 & 0x800) != 0)
  {
    v27 += 9;
  }

  v4 = v27 + ((v9 >> 11) & 2);
  if ((v9 & 0x2000) != 0)
  {
    v30 = *(a1 + 164);
    v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v30 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 11;
    }

    v4 += v32;
    if ((v9 & 0x4000) == 0)
    {
LABEL_46:
      if ((v9 & 0x8000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  else if ((v9 & 0x4000) == 0)
  {
    goto LABEL_46;
  }

  v4 += ((9 * (__clz(*(a1 + 168) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x8000) != 0)
  {
LABEL_47:
    v4 += ((9 * (__clz(*(a1 + 172) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_48:
  if ((v9 & 0x30000) != 0)
  {
    if ((v9 & 0x10000) != 0)
    {
      v28 = *(a1 + 176);
      if (v28 < 0)
      {
        v29 = 11;
      }

      else
      {
        v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v29;
    }

    if ((v9 & 0x20000) != 0)
    {
      v4 += 3;
    }
  }

  v33 = *(a1 + 8);
  if (v33)
  {
    v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v36 < 0)
    {
      v36 = *(v35 + 16);
    }

    v4 += v36;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_149E8CC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48((a1 + 48), v7, (v6 + 8), v5, **(a1 + 64) - *(a1 + 56));
    v8 = *(a1 + 56) + v5;
    *(a1 + 56) = v8;
    v9 = *(a1 + 64);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 40);
  if (v10)
  {
    if (v10)
    {
      v12 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_194EA1C((a1 + 72), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
      if ((v10 & 2) == 0)
      {
LABEL_7:
        if ((v10 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_42;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_7;
    }

    v15 = *(a2 + 80);
    *(a1 + 40) |= 2u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 80), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v10 & 4) == 0)
    {
LABEL_8:
      if ((v10 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }

LABEL_42:
    v18 = *(a2 + 88);
    *(a1 + 40) |= 4u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 88), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v10 & 8) == 0)
    {
LABEL_9:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_48;
    }

LABEL_45:
    v21 = *(a2 + 96);
    *(a1 + 40) |= 8u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 96), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
    if ((v10 & 0x10) == 0)
    {
LABEL_10:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_56;
    }

LABEL_48:
    *(a1 + 40) |= 0x10u;
    v24 = *(a1 + 104);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5828(v26);
      *(a1 + 104) = v24;
    }

    if (*(a2 + 104))
    {
      v27 = *(a2 + 104);
    }

    else
    {
      v27 = &off_277E5E8;
    }

    sub_16E527C(v24, v27);
    if ((v10 & 0x20) == 0)
    {
LABEL_11:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_64;
    }

LABEL_56:
    *(a1 + 40) |= 0x20u;
    v28 = *(a1 + 112);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_14BDDBC(v30);
      *(a1 + 112) = v28;
    }

    if (*(a2 + 112))
    {
      v31 = *(a2 + 112);
    }

    else
    {
      v31 = &off_2773180;
    }

    sub_149CEAC(v28, v31);
    if ((v10 & 0x40) == 0)
    {
LABEL_12:
      if ((v10 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 40) |= v10;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_14;
    }

LABEL_64:
    *(a1 + 40) |= 0x40u;
    v32 = *(a1 + 120);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_14BF484(v34);
      *(a1 + 120) = v32;
    }

    if (*(a2 + 120))
    {
      v35 = *(a2 + 120);
    }

    else
    {
      v35 = &off_2773AC8;
    }

    sub_144F194(v32, v35);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v10 & 0x100) != 0)
  {
    *(a1 + 136) = *(a2 + 136);
    if ((v10 & 0x200) == 0)
    {
LABEL_18:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_75;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  *(a1 + 140) = *(a2 + 140);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a1 + 144) = *(a2 + 144);
  if ((v10 & 0x800) == 0)
  {
LABEL_20:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a1 + 152) = *(a2 + 152);
  if ((v10 & 0x1000) == 0)
  {
LABEL_21:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a1 + 160) = *(a2 + 160);
  if ((v10 & 0x2000) == 0)
  {
LABEL_22:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

LABEL_79:
    *(a1 + 168) = *(a2 + 168);
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_78:
  *(a1 + 164) = *(a2 + 164);
  if ((v10 & 0x4000) != 0)
  {
    goto LABEL_79;
  }

LABEL_23:
  if ((v10 & 0x8000) != 0)
  {
LABEL_24:
    *(a1 + 172) = *(a2 + 172);
  }

LABEL_25:
  *(a1 + 40) |= v10;
LABEL_26:
  if ((v10 & 0x30000) != 0)
  {
    if ((v10 & 0x10000) != 0)
    {
      *(a1 + 176) = *(a2 + 176);
    }

    if ((v10 & 0x20000) != 0)
    {
      *(a1 + 180) = *(a2 + 180);
    }

    *(a1 + 40) |= v10;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_149EC4C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_149D390(result);

    sub_149E8CC(result, a2, v5);
  }
}

uint64_t sub_149EC98(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 0x10) != 0)
    {
      result = sub_16E5370(*(a1 + 104));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20) != 0)
    {
      result = sub_149D054(*(a1 + 112));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) == 0)
    {
      return 1;
    }

    result = sub_144F5D0(*(a1 + 120));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_149ED14(uint64_t a1)
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
  if (a1 != &off_2773280)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_149D1C4(v6);
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

void sub_149EDCC(uint64_t a1)
{
  sub_149ED14(a1);

  operator delete();
}

uint64_t sub_149EE04(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_149D390(*(result + 24));
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

char *sub_149EE64(uint64_t a1, char *a2, int32x2_t *a3)
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
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_23:
      v24 = v16;
      *(a1 + 32) = v17;
      goto LABEL_30;
    }

    v22 = sub_1958770(v7, v17);
    v24 = v22;
    *(a1 + 32) = v23;
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

      v19 = sub_14BDE5C(v21);
      *(a1 + 24) = v19;
      v7 = v24;
    }

    v15 = sub_21F6500(a3, v19, v7);
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

char *sub_149F03C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_149F1C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_149E4E4(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
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

  *(a1 + 20) = result;
  return result;
}

void sub_149F284(uint64_t result, uint64_t a2, __n128 a3)
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

        v6 = sub_14BDE5C(v8);
        *(result + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_27731C8;
      }

      sub_149E8CC(v6, v9, a3);
    }

    if ((v5 & 2) != 0)
    {
      *(result + 32) = *(a2 + 32);
    }

    *(result + 16) |= v5;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_149F354(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_149EC98(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_149F394(uint64_t a1)
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

  if (a1 != &off_27732A8)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_16E8374(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_16E8374(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_140996C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_149F470(uint64_t a1)
{
  sub_149F394(a1);

  operator delete();
}

uint64_t sub_149F4A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E48B0(v4);
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
      result = sub_16E48B0(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_16E48B0(*(v1 + 56));
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

char *sub_149F54C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v28, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v28 + 1;
    v7 = *v28;
    if (*v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v28 + 2;
      }
    }

    v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 4)
    {
      if (v7 == 34)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = v19 + 1;
          v28 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_16F5BD8(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v28;
          }

          v19 = sub_21F7188(a3, v23, v20);
          v28 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 34)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
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

          v16 = sub_16F5BD8(v18);
          *(a1 + 56) = v16;
LABEL_39:
          v6 = v28;
        }

LABEL_40:
        v15 = sub_21F7188(a3, v16, v6);
        goto LABEL_41;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 48);
      if (!v16)
      {
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v16 = sub_16F5BD8(v26);
        *(a1 + 48) = v16;
        goto LABEL_39;
      }

      goto LABEL_40;
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
        return v28;
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
      v6 = v28;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_41:
    v28 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  return v28;
}

char *sub_149F77C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16E886C(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 56);
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

    v4 = sub_16E886C(v10, v12, a3);
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

      v4 = sub_16E886C(v15, v17, a3);
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

uint64_t sub_149F988(uint64_t a1)
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
      v7 = sub_16E8DA4(v6);
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
      v9 = sub_16E8DA4(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_16E8DA4(*(a1 + 56));
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

void sub_149FA9C(uint64_t *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    sub_1409AF8(result + 3, v6, (v5 + 8), v4, *result[5] - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = result[5];
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
      *(result + 4) |= 1u;
      v10 = result[6];
      if (!v10)
      {
        v11 = result[1];
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_16F5BD8(v12);
        result[6] = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E738;
      }

      sub_16E4964(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 4) |= 2u;
      v14 = result[7];
      if (!v14)
      {
        v15 = result[1];
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_16F5BD8(v16);
        result[7] = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_277E738;
      }

      sub_16E4964(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4(result + 1, (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_149FBF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E4B4C(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_16E4B4C(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = sub_16E4B4C(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_149FC7C(uint64_t a1)
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

  if (a1 != &off_27732E8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_149F394(v6);
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

void sub_149FD48(uint64_t a1)
{
  sub_149FC7C(a1);

  operator delete();
}

uint64_t sub_149FD80(uint64_t result)
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
      result = sub_149F4A8(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 32) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_149FE18(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v7 != 26)
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
      v15 = sub_1958890(v22, *v28, a3);
    }

    else
    {
      if (v10 == 2)
      {
        if (v7 == 16)
        {
          v16 = v6 + 1;
          v17 = *v6;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v18 = *v16;
          v19 = (v18 << 7) + v17;
          LODWORD(v17) = v19 - 128;
          if (v18 < 0)
          {
            *v28 = sub_19587DC(v6, (v19 - 128));
            if (!*v28)
            {
              goto LABEL_45;
            }

            LODWORD(v17) = v26;
          }

          else
          {
            v16 = v6 + 2;
LABEL_24:
            *v28 = v16;
          }

          if (sub_140BCAC(v17))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v17;
          }

          else
          {
            sub_12E8418();
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
            return *v28;
          }

LABEL_45:
          *v28 = 0;
          return *v28;
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
        goto LABEL_36;
      }

      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

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

        v23 = sub_14BDF34(v25);
        *(a1 + 32) = v23;
        v6 = *v28;
      }

      v15 = sub_22113F0(a3, v23, v6);
    }

LABEL_36:
    *v28 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  return *v28;
}

char *sub_14A0040(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 32);
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

    __dst = sub_149F77C(v6, v8, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 40);
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

  if (v5)
  {
    v9 = sub_128AEEC(a3, 3, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v9);
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

uint64_t sub_14A01EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_15;
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
    v7 = sub_149F988(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = *(a1 + 40);
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

LABEL_15:
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

void sub_14A0304(uint64_t a1, uint64_t a2)
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

      v9 = sub_14BDF34(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27732A8;
    }

    sub_149FA9C(v9, v12);
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

uint64_t sub_14A0414(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_149FBF4(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_14A0454(void *a1)
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

  sub_14A04D8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_14A04D8(uint64_t a1)
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

  if (a1 != &off_2773318)
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
      sub_149B484(v6);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_149B484(result);

      operator delete();
    }
  }

  return result;
}

void sub_14A05A8(void *a1)
{
  sub_14A0454(a1);

  operator delete();
}

uint64_t sub_14A05E0(uint64_t result)
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
    result = sub_16E4E44(*(result + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_25:
  result = sub_149B5BC(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_149B5BC(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
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

uint64_t sub_14A06E8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v48 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v48, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v48 + 1);
    v8 = **v48;
    if (**v48 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v48, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v48 + 2);
      }
    }

    *v48 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 16)
        {
          v20 = v7 + 1;
          v19 = *v7;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            *v48 = sub_19587DC(v7, v19);
            if (!*v48)
            {
              goto LABEL_96;
            }
          }

          else
          {
            v20 = v7 + 2;
LABEL_35:
            *v48 = v20;
          }

          if (v19 > 6)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 64) = v19;
          }

          goto LABEL_82;
        }

        goto LABEL_74;
      }

      if (v8 != 10)
      {
        goto LABEL_74;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = (a1 + 24);
      goto LABEL_50;
    }

    if (v11 == 3)
    {
      if (v8 == 26)
      {
        *(a1 + 16) |= 4u;
        v28 = *(a1 + 40);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_16F5828(v30);
          *(a1 + 40) = v28;
          v7 = *v48;
        }

        v27 = sub_21F4D60(a3, v28, v7);
        goto LABEL_81;
      }

      goto LABEL_74;
    }

    if (v11 != 4)
    {
      if (v11 == 5 && v8 == 42)
      {
        *(a1 + 16) |= 8u;
        v12 = *(a1 + 48);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_14BDC94(v14);
          *(a1 + 48) = v12;
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      goto LABEL_74;
    }

    if (v8 != 32)
    {
      goto LABEL_74;
    }

    v5 |= 0x40u;
    v33 = v7 + 1;
    v34 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    v35 = *v33;
    v34 = v34 + (v35 << 7) - 128;
    if ((v35 & 0x80000000) == 0)
    {
      v33 = v7 + 2;
LABEL_68:
      *v48 = v33;
      *(a1 + 68) = v34;
      goto LABEL_82;
    }

    v44 = sub_1958770(v7, v34);
    *v48 = v44;
    *(a1 + 68) = v45;
    if (!v44)
    {
      goto LABEL_96;
    }

LABEL_82:
    if (sub_195ADC0(a3, v48, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 7)
  {
    if (v11 != 6)
    {
      if (v11 == 7 && v8 == 57)
      {
        v5 |= 0x80u;
        *(a1 + 72) = *v7;
        *v48 = v7 + 8;
        goto LABEL_82;
      }

      goto LABEL_74;
    }

    if (v8 != 50)
    {
      goto LABEL_74;
    }

    *(a1 + 16) |= 2u;
    v25 = *(a1 + 8);
    v23 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v23 = *v23;
    }

    v24 = (a1 + 32);
LABEL_50:
    v26 = sub_194DB04(v24, v23);
    v27 = sub_1958890(v26, *v48, a3);
    goto LABEL_81;
  }

  if (v11 != 8)
  {
    if (v11 == 9)
    {
      if (v8 != 72)
      {
        goto LABEL_74;
      }

      v5 |= 0x100u;
      v36 = v7 + 1;
      v37 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      v38 = *v36;
      v37 = v37 + (v38 << 7) - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v36 = v7 + 2;
LABEL_73:
        *v48 = v36;
        *(a1 + 80) = v37;
        goto LABEL_82;
      }

      v46 = sub_1958770(v7, v37);
      *v48 = v46;
      *(a1 + 80) = v47;
      if (!v46)
      {
        goto LABEL_96;
      }
    }

    else
    {
      if (v11 != 10 || v8 != 80)
      {
        goto LABEL_74;
      }

      v5 |= 0x200u;
      v15 = v7 + 1;
      v16 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v17 = *v15;
      v16 = v16 + (v17 << 7) - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v15 = v7 + 2;
LABEL_25:
        *v48 = v15;
        *(a1 + 84) = v16;
        goto LABEL_82;
      }

      v42 = sub_1958770(v7, v16);
      *v48 = v42;
      *(a1 + 84) = v43;
      if (!v42)
      {
        goto LABEL_96;
      }
    }

    goto LABEL_82;
  }

  if (v8 == 66)
  {
    *(a1 + 16) |= 0x10u;
    v12 = *(a1 + 56);
    if (!v12)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v12 = sub_14BDC94(v32);
      *(a1 + 56) = v12;
LABEL_62:
      v7 = *v48;
    }

LABEL_63:
    v27 = sub_2211480(a3, v12, v7);
LABEL_81:
    *v48 = v27;
    if (!v27)
    {
      goto LABEL_96;
    }

    goto LABEL_82;
  }

LABEL_74:
  if (v8)
  {
    v39 = (v8 & 7) == 4;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v40 = *(a1 + 8);
    if (v40)
    {
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v41 = sub_11F1920((a1 + 8));
      v7 = *v48;
    }

    v27 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_81;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_96:
  *v48 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v48;
}

char *sub_14A0B70(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 64);
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

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 40);
    *v7 = 26;
    v13 = *(v12 + 44);
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v7 + 1);
    }

    else
    {
      v14 = v7 + 2;
    }

    v7 = sub_16E5070(v12, v14, a3);
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 68);
    *v7 = 32;
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v7[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v7[2] = v16 >> 7;
      v15 = v7 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v15 - 1) = v7 | 0x80;
          LODWORD(v7) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v7 + 2;
    }
  }

  else
  {
    v15 = v7;
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 48);
    *v15 = 42;
    v21 = *(v20 + 20);
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v15 + 1);
    }

    else
    {
      v22 = v15 + 2;
    }

    v15 = sub_149B950(v20, v22, a3);
    if ((v6 & 2) == 0)
    {
LABEL_30:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_30;
  }

  v15 = sub_128AEEC(a3, 6, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v6 & 0x80) == 0)
  {
LABEL_31:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_32;
    }

LABEL_44:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v24 = *(a1 + 56);
    *v15 = 66;
    v25 = *(v24 + 20);
    v15[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v15 + 1);
    }

    else
    {
      v26 = v15 + 2;
    }

    v15 = sub_149B950(v24, v26, a3);
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_50;
  }

LABEL_41:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v23 = *(a1 + 72);
  *v15 = 57;
  *(v15 + 1) = v23;
  v15 += 9;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_44;
  }

LABEL_32:
  if ((v6 & 0x100) == 0)
  {
LABEL_33:
    v19 = v15;
    goto LABEL_57;
  }

LABEL_50:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v27 = *(a1 + 80);
  *v15 = 72;
  v15[1] = v27;
  if (v27 > 0x7F)
  {
    v15[1] = v27 | 0x80;
    v28 = v27 >> 7;
    v15[2] = v27 >> 7;
    v19 = v15 + 3;
    if (v27 >= 0x4000)
    {
      LOBYTE(v29) = v15[2];
      do
      {
        *(v19 - 1) = v29 | 0x80;
        v29 = v28 >> 7;
        *v19++ = v28 >> 7;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
    }
  }

  else
  {
    v19 = v15 + 2;
  }

LABEL_57:
  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v32 = *(a1 + 84);
    *v19 = 80;
    v19[1] = v32;
    if (v32 > 0x7F)
    {
      v19[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v19[2] = v32 >> 7;
      v31 = v19 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v34) = v19[2];
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
      v31 = v19 + 2;
    }
  }

  else
  {
    v31 = v19;
  }

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

uint64_t sub_14A0FE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_21;
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
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v12 = sub_16E51F0(*(a1 + 40));
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

  v13 = sub_149BB9C(*(a1 + 48));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  v14 = sub_149BB9C(*(a1 + 56));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_31:
  v15 = *(a1 + 64);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v16;
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_17:
  v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_18:
  if ((v2 & 0x80) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

LABEL_21:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x200) != 0)
    {
      result += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v17 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    result += v18;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_14A1238(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_12;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v8 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v9 = *(a1 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
    if ((v4 & 4) == 0)
    {
LABEL_20:
      if ((v4 & 8) != 0)
      {
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

          v16 = sub_14BDC94(v18);
          *(a1 + 48) = v16;
        }

        if (*(a2 + 48))
        {
          v19 = *(a2 + 48);
        }

        else
        {
          v19 = &off_2773108;
        }

        sub_149BCF0(v16, v19);
        if ((v4 & 0x10) == 0)
        {
LABEL_22:
          if ((v4 & 0x20) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_53;
        }
      }

      else if ((v4 & 0x10) == 0)
      {
        goto LABEL_22;
      }

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

        v20 = sub_14BDC94(v22);
        *(a1 + 56) = v20;
      }

      if (*(a2 + 56))
      {
        v23 = *(a2 + 56);
      }

      else
      {
        v23 = &off_2773108;
      }

      sub_149BCF0(v20, v23);
      if ((v4 & 0x20) == 0)
      {
LABEL_23:
        if ((v4 & 0x40) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_54;
      }

LABEL_53:
      *(a1 + 64) = *(a2 + 64);
      if ((v4 & 0x40) == 0)
      {
LABEL_24:
        if ((v4 & 0x80) == 0)
        {
LABEL_26:
          *(a1 + 16) |= v4;
          goto LABEL_27;
        }

LABEL_25:
        *(a1 + 72) = *(a2 + 72);
        goto LABEL_26;
      }

LABEL_54:
      *(a1 + 68) = *(a2 + 68);
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_12:
    *(a1 + 16) |= 4u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_16F5828(v13);
      *(a1 + 40) = v11;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = &off_277E5E8;
    }

    sub_16E527C(v11, v14);
    goto LABEL_20;
  }

LABEL_27:
  if ((v4 & 0x300) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 84) = *(a2 + 84);
    }

    *(a1 + 16) |= v4;
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14A1464(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_14A05E0(a1);

    sub_14A1238(a1, a2);
  }
}

uint64_t sub_14A14B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_16E5370(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_149BE8C(*(a1 + 48));
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

  result = sub_149BE8C(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14A1520(uint64_t a1)
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

  if (a1 != &off_2773370)
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

void sub_14A15EC(uint64_t a1)
{
  sub_14A1520(a1);

  operator delete();
}

unsigned __int8 *sub_14A1624(unsigned __int8 *result)
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

uint64_t sub_14A16C4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v21 = sub_194DB04((a1 + 24), v20);
          v22 = sub_1958890(v21, *v31, a3);
          goto LABEL_44;
        }
      }

      else if (v11 == 2 && v8 == 16)
      {
        v14 = v7 + 1;
        v13 = *v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if (v15 < 0)
        {
          *v31 = sub_19587DC(v7, v13);
          if (!*v31)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_17:
          *v31 = v14;
        }

        if (v13 > 2)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 40) = v13;
        }

        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_37;
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
      *v31 = v16;
      *(a1 + 44) = v17;
      goto LABEL_45;
    }

    v29 = sub_1958770(v7, v17);
    *v31 = v29;
    *(a1 + 44) = v30;
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

  if (v8 == 26)
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

      v23 = sub_16F5828(v25);
      *(a1 + 32) = v23;
      v7 = *v31;
    }

    v22 = sub_21F4D60(a3, v23, v7);
LABEL_44:
    *v31 = v22;
    if (!v22)
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

    v22 = sub_1952690(v8, v28, v7, a3);
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

char *sub_14A196C(uint64_t a1, char *__dst, unint64_t *a3)
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
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 32);
    *v7 = 26;
    v13 = *(v12 + 44);
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v7 + 1);
    }

    else
    {
      v14 = v7 + 2;
    }

    v7 = sub_16E5070(v12, v14, a3);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 44);
    *v7 = 32;
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v7[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v7[2] = v16 >> 7;
      v15 = v7 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v15 - 1) = v7 | 0x80;
          LODWORD(v7) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v7 + 2;
    }
  }

  else
  {
    v15 = v7;
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

uint64_t sub_14A1BA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = *(a1 + 40);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v11;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v3 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_14A1CEC(uint64_t a1, uint64_t a2)
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

void sub_14A1E0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a2 != a1)
  {
    sub_14A1624(a1);

    sub_14A1CEC(a1, a2);
  }
}

uint64_t sub_14A1E58(uint64_t a1)
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

uint64_t sub_14A1E98(uint64_t a1)
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

  if (a1 != &off_27733A0)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_14A31E4(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1564494((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14A1F70(uint64_t a1)
{
  sub_14A1E98(a1);

  operator delete();
}

uint64_t sub_14A1FA8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14620AC(v4);
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
      result = sub_14A2084(*(v1 + 56));
    }
  }

LABEL_11:
  if ((v5 & 0xFC) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 80) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_14A2084(uint64_t result)
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
      result = sub_149B5BC(*(v1 + 32));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
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

uint64_t sub_14A2100(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v63 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v63, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v63 + 1);
    v8 = **v63;
    if (**v63 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v63, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v63 + 2);
      }
    }

    *v63 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v21 = sub_194DB04((a1 + 48), v20);
          v22 = sub_1958890(v21, *v63, a3);
          goto LABEL_87;
        }

        goto LABEL_80;
      }

      if (v8 != 8)
      {
        goto LABEL_80;
      }

      v28 = v7 + 1;
      v27 = *v7;
      if (v27 < 0)
      {
        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v28 = v7 + 2;
          goto LABEL_47;
        }

        *v63 = sub_19587DC(v7, v27);
        if (!*v63)
        {
          goto LABEL_108;
        }
      }

      else
      {
LABEL_47:
        *v63 = v28;
      }

      if (v27 > 3)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 64) = v27;
      }

      goto LABEL_88;
    }

    if (v11 == 3)
    {
      if (v8 == 26)
      {
        v33 = v7 - 1;
        while (1)
        {
          v34 = v33 + 1;
          *v63 = v33 + 1;
          v35 = *(a1 + 40);
          if (v35 && (v36 = *(a1 + 32), v36 < *v35))
          {
            *(a1 + 32) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            sub_14BB54C(*(a1 + 24));
            v37 = sub_19593CC(a1 + 24, v38);
            v34 = *v63;
          }

          v33 = sub_220D668(a3, v37, v34);
          *v63 = v33;
          if (!v33)
          {
            goto LABEL_108;
          }

          if (*a3 <= v33 || *v33 != 26)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_80;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_80;
      }

      v5 |= 8u;
      v42 = v7 + 1;
      v43 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      v44 = *v42;
      v43 = v43 + (v44 << 7) - 128;
      if ((v44 & 0x80000000) == 0)
      {
        v42 = v7 + 2;
LABEL_74:
        *v63 = v42;
        *(a1 + 68) = v43;
        goto LABEL_88;
      }

      v59 = sub_1958770(v7, v43);
      *v63 = v59;
      *(a1 + 68) = v60;
      if (!v59)
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_80;
      }

      v5 |= 0x10u;
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
        *v63 = v12;
        *(a1 + 72) = v13;
        goto LABEL_88;
      }

      v55 = sub_1958770(v7, v13);
      *v63 = v55;
      *(a1 + 72) = v56;
      if (!v55)
      {
        goto LABEL_108;
      }
    }

LABEL_88:
    if (sub_195ADC0(a3, v63, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 7)
  {
    if (v11 == 8)
    {
      if (v8 != 64)
      {
        goto LABEL_80;
      }

      v5 |= 0x40u;
      v39 = v7 + 1;
      v40 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      v41 = *v39;
      v40 = v40 + (v41 << 7) - 128;
      if ((v41 & 0x80000000) == 0)
      {
        v39 = v7 + 2;
LABEL_69:
        *v63 = v39;
        *(a1 + 80) = v40;
        goto LABEL_88;
      }

      v53 = sub_1958770(v7, v40);
      *v63 = v53;
      *(a1 + 80) = v54;
      if (!v53)
      {
        goto LABEL_108;
      }
    }

    else if (v11 == 9)
    {
      if (v8 != 72)
      {
        goto LABEL_80;
      }

      v5 |= 0x80u;
      v45 = v7 + 1;
      v46 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      v47 = *v45;
      v46 = v46 + (v47 << 7) - 128;
      if ((v47 & 0x80000000) == 0)
      {
        v45 = v7 + 2;
LABEL_79:
        *v63 = v45;
        *(a1 + 84) = v46;
        goto LABEL_88;
      }

      v61 = sub_1958770(v7, v46);
      *v63 = v61;
      *(a1 + 84) = v62;
      if (!v61)
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (v11 != 10 || v8 != 80)
      {
        goto LABEL_80;
      }

      v5 |= 0x100u;
      v15 = v7 + 1;
      v16 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v17 = *v15;
      v16 = v16 + (v17 << 7) - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v15 = v7 + 2;
LABEL_25:
        *v63 = v15;
        *(a1 + 88) = v16;
        goto LABEL_88;
      }

      v57 = sub_1958770(v7, v16);
      *v63 = v57;
      *(a1 + 88) = v58;
      if (!v57)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_88;
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_80;
    }

    v5 |= 0x20u;
    v30 = v7 + 1;
    v31 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    v32 = *v30;
    v31 = v31 + (v32 << 7) - 128;
    if ((v32 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_54:
      *v63 = v30;
      *(a1 + 76) = v31;
      goto LABEL_88;
    }

    v51 = sub_1958770(v7, v31);
    *v63 = v51;
    *(a1 + 76) = v52;
    if (!v51)
    {
      goto LABEL_108;
    }

    goto LABEL_88;
  }

  if (v11 == 7 && v8 == 58)
  {
    *(a1 + 16) |= 2u;
    v23 = *(a1 + 56);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      sub_14BE228(v25);
      v23 = v26;
      *(a1 + 56) = v26;
      v7 = *v63;
    }

    v22 = sub_2211510(a3, v23, v7);
LABEL_87:
    *v63 = v22;
    if (!v22)
    {
      goto LABEL_108;
    }

    goto LABEL_88;
  }

LABEL_80:
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
    v49 = *(a1 + 8);
    if (v49)
    {
      v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v50 = sub_11F1920((a1 + 8));
      v7 = *v63;
    }

    v22 = sub_1952690(v8, v50, v7, a3);
    goto LABEL_87;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_108:
  *v63 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v63;
}

char *sub_14A2640(uint64_t a1, char *__dst, unint64_t *a3)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 26;
      v14 = *(v13 + 20);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_1462EF0(v13, v15, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 68);
    *v6 = 32;
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 72);
    *v16 = 40;
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v27 = *(a1 + 76);
    *v21 = 48;
    v21[1] = v27;
    if (v27 > 0x7F)
    {
      v21[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v21[2] = v27 >> 7;
      v26 = v21 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v21) = v21[2];
        do
        {
          *(v26 - 1) = v21 | 0x80;
          LODWORD(v21) = v28 >> 7;
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v21 + 2;
    }
  }

  else
  {
    v26 = v21;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v30 = *(a1 + 56);
    *v26 = 58;
    v31 = *(v30 + 20);
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v26 + 1);
    }

    else
    {
      v32 = v26 + 2;
    }

    v26 = sub_14A354C(v30, v32, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v34 = *(a1 + 80);
    *v26 = 64;
    v26[1] = v34;
    if (v34 > 0x7F)
    {
      v26[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v26[2] = v34 >> 7;
      v33 = v26 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v33 - 1) = v26 | 0x80;
          LODWORD(v26) = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v26 + 2;
    }
  }

  else
  {
    v33 = v26;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 84);
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
        LOBYTE(v33) = v33[2];
        do
        {
          *(v37 - 1) = v33 | 0x80;
          LODWORD(v33) = v39 >> 7;
          *v37++ = v39 >> 7;
          v40 = v39 >> 14;
          v39 >>= 7;
        }

        while (v40);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v42 = *(a1 + 88);
    *v37 = 80;
    v37[1] = v42;
    if (v42 > 0x7F)
    {
      v37[1] = v42 | 0x80;
      v43 = v42 >> 7;
      v37[2] = v42 >> 7;
      v41 = v37 + 3;
      if (v42 >= 0x4000)
      {
        LOBYTE(v44) = v37[2];
        do
        {
          *(v41 - 1) = v44 | 0x80;
          v44 = v43 >> 7;
          *v41++ = v43 >> 7;
          v45 = v43 >> 14;
          v43 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v41 = v37 + 2;
    }
  }

  else
  {
    v41 = v37;
  }

  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v41;
  }

  v48 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v49 = *(v48 + 31);
  if (v49 < 0)
  {
    v50 = *(v48 + 8);
    v49 = *(v48 + 16);
  }

  else
  {
    v50 = (v48 + 8);
  }

  if ((*a3 - v41) >= v49)
  {
    v51 = v49;
    memcpy(v41, v50, v49);
    v41 += v51;
    return v41;
  }

  return sub_1957130(a3, v50, v49, v41);
}

uint64_t sub_14A2BAC(uint64_t a1)
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
      v7 = sub_1463930(v6);
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
    goto LABEL_19;
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

      goto LABEL_27;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v14 = sub_14A378C(*(a1 + 56));
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_27:
  v15 = *(a1 + 64);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v16;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_33:
    v2 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_32:
  v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_34:
  v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    v2 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v8 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

void sub_14A2E18(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1566218((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32), v8);
    v9 = *(a1 + 32) + v5;
    *(a1 + 32) = v9;
    v10 = *(a1 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    if (v11)
    {
      v14 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_194EA1C((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
      if ((v11 & 2) == 0)
      {
LABEL_7:
        if ((v11 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_32;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      a3.n128_f64[0] = sub_14BE228(v19);
      *(a1 + 56) = v17;
    }

    if (*(a2 + 56))
    {
      v20 = *(a2 + 56);
    }

    else
    {
      v20 = &off_2773400;
    }

    sub_14A2FEC(v17, v20, a3);
    if ((v11 & 4) == 0)
    {
LABEL_8:
      if ((v11 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(a1 + 64) = *(a2 + 64);
    if ((v11 & 8) == 0)
    {
LABEL_9:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(a1 + 68) = *(a2 + 68);
    if ((v11 & 0x10) == 0)
    {
LABEL_10:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 72) = *(a2 + 72);
    if ((v11 & 0x20) == 0)
    {
LABEL_11:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }

LABEL_35:
    *(a1 + 76) = *(a2 + 76);
    if ((v11 & 0x40) == 0)
    {
LABEL_12:
      if ((v11 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v11;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 84) = *(a2 + 84);
      goto LABEL_14;
    }

LABEL_36:
    *(a1 + 80) = *(a2 + 80);
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v11 & 0x100) != 0)
  {
    v12 = *(a2 + 88);
    *(a1 + 16) |= 0x100u;
    *(a1 + 88) = v12;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14A2FEC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        v8 = *(a1 + 8);
        v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (v8)
        {
          v9 = *v9;
        }

        v7 = sub_14BF484(v9);
        *(a1 + 24) = v7;
      }

      if (*(a2 + 24))
      {
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = &off_2773AC8;
      }

      sub_144F194(v7, v10);
      if ((v5 & 2) == 0)
      {
LABEL_4:
        if ((v5 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_28;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v11 = *(a1 + 32);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_14BDC94(v13);
      *(a1 + 32) = v11;
    }

    if (*(a2 + 32))
    {
      v14 = *(a2 + 32);
    }

    else
    {
      v14 = &off_2773108;
    }

    sub_149BCF0(v11, v14);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v5;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 44) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_28:
    *(a1 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v6 = *(a2 + 8);
  if (v6)
  {

    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14A3124(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1464954(*(*(a1 + 40) + 8 * v2));
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

  result = sub_14A3188(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14A3188(uint64_t a1)
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

  result = sub_149BE8C(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14A31E4(uint64_t a1)
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

  if (a1 != &off_2773400)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_14B64B0(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_149B484(v6);
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

void sub_14A32B4(uint64_t a1)
{
  sub_14A31E4(a1);

  operator delete();
}

char *sub_14A32EC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v28, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v28 + 1;
    v8 = *v28;
    if (*v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v28 + 2;
      }
    }

    v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_34;
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

        v13 = sub_14BF484(v15);
        *(a1 + 24) = v13;
        v7 = v28;
      }

      v16 = sub_2209138(a3, v13, v7);
LABEL_41:
      v28 = v16;
      if (!v16)
      {
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    if (v8 != 8)
    {
      goto LABEL_34;
    }

    v5 |= 4u;
    v17 = v7 + 1;
    v18 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v19 = *v17;
    v18 = v18 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_27:
      v28 = v17;
      *(a1 + 40) = v18;
      goto LABEL_42;
    }

    v26 = sub_1958770(v7, v18);
    v28 = v26;
    *(a1 + 40) = v27;
    if (!v26)
    {
      goto LABEL_49;
    }

LABEL_42:
    if (sub_195ADC0(a3, &v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_34;
    }

    *(a1 + 16) |= 2u;
    v20 = *(a1 + 32);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_14BDC94(v22);
      *(a1 + 32) = v20;
      v7 = v28;
    }

    v16 = sub_2211480(a3, v20, v7);
    goto LABEL_41;
  }

  if (v11 == 4 && v8 == 37)
  {
    v5 |= 8u;
    *(a1 + 44) = *v7;
    v28 = v7 + 4;
    goto LABEL_42;
  }

LABEL_34:
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
      v7 = v28;
    }

    v16 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

char *sub_14A354C(uint64_t a1, char *__dst, unint64_t *a3)
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
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
    v12 = *(v11 + 44);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_14B6D24(v11, v13, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
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

  v6 = sub_149B950(v14, v16, a3);
  if ((v5 & 8) != 0)
  {
LABEL_26:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 44);
    *v6 = 37;
    *(v6 + 1) = v17;
    v6 += 5;
  }

LABEL_29:
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v21)
  {
    v23 = v21;
    memcpy(v6, v22, v21);
    v6 += v23;
    return v6;
  }

  return sub_1957130(a3, v22, v21, v6);
}

uint64_t sub_14A378C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = sub_14B71B8(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_149BB9C(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 8) != 0)
  {
    result = v3 + 5;
  }

  else
  {
    result = v3;
  }

LABEL_13:
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

uint64_t sub_14A389C(uint64_t a1)
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
  if (a1 != &off_2773430)
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

void sub_14A3954(uint64_t a1)
{
  sub_14A389C(a1);

  operator delete();
}

unsigned __int8 *sub_14A398C(unsigned __int8 *result)
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

char *sub_14A39EC(uint64_t a1, char *a2, int32x2_t *a3)
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
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_23:
      v24 = v16;
      *(a1 + 32) = v17;
      goto LABEL_30;
    }

    v22 = sub_1958770(v7, v17);
    v24 = v22;
    *(a1 + 32) = v23;
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

char *sub_14A3BC4(uint64_t a1, char *__dst, void *a3)
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

    __dst = sub_16E5070(v6, v8, a3);
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

  if (*a3 - v9 >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_14A3D50(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
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

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_14A3E0C(uint64_t a1)
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

uint64_t sub_14A3E4C(uint64_t a1)
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
  if (a1 != &off_2773458)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16E5B34(v6);
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

void sub_14A3F04(uint64_t a1)
{
  sub_14A3E4C(a1);

  operator delete();
}

unsigned __int8 *sub_14A3F3C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E5B70(*(result + 3));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
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

char *sub_14A3FAC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v34 + 1;
    v8 = *v34;
    if (*v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v34 + 2;
      }
    }

    v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_38;
      }

      v5 |= 2u;
      v24 = v7 + 1;
      v25 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      v26 = *v24;
      v25 = v25 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_37:
        v34 = v24;
        *(a1 + 32) = v25;
        goto LABEL_46;
      }

      v32 = sub_1958770(v7, v25);
      v34 = v32;
      *(a1 + 32) = v33;
      if (!v32)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_38;
      }

      v5 |= 4u;
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
        v34 = v16;
        *(a1 + 36) = v17;
        goto LABEL_46;
      }

      v30 = sub_1958770(v7, v17);
      v34 = v30;
      *(a1 + 36) = v31;
      if (!v30)
      {
        goto LABEL_58;
      }
    }

LABEL_46:
    if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 10)
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

        sub_16F58FC(v21);
        v19 = v22;
        *(a1 + 24) = v22;
        v7 = v34;
      }

      v23 = sub_21F86E8(a3, v19, v7);
LABEL_45:
      v34 = v23;
      if (!v23)
      {
        goto LABEL_58;
      }

      goto LABEL_46;
    }
  }

  else if (v11 == 2 && v8 == 16)
  {
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if (v15 < 0)
    {
      v34 = sub_19587DC(v7, v13);
      if (!v34)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v14 = v7 + 2;
LABEL_17:
      v34 = v14;
    }

    if ((v13 - 1) > 7)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 40) = v13;
    }

    goto LABEL_46;
  }

LABEL_38:
  if (v8)
  {
    v27 = (v8 & 7) == 4;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v29 = sub_11F1920((a1 + 8));
      v7 = v34;
    }

    v23 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

char *sub_14A4270(uint64_t a1, char *__dst, unint64_t *a3)
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

    __dst = sub_16E5FE0(v6, v8, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 40);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 32);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v19 = *(a1 + 36);
    *v14 = 32;
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v14[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v14[2] = v19 >> 7;
      v18 = v14 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v21) = v14[2];
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
      v18 = v14 + 2;
    }
  }

  else
  {
    v18 = v14;
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v18;
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

  if ((*a3 - v18) >= v26)
  {
    v28 = v26;
    memcpy(v18, v27, v26);
    v18 += v28;
    return v18;
  }

  return sub_1957130(a3, v27, v26, v18);
}