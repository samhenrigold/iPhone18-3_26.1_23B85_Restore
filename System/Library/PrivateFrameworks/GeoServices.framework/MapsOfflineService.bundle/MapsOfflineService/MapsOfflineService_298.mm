uint64_t sub_1212280(uint64_t a1)
{
  result = sub_1959E5C((a1 + 24));
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
      *(a1 + 40) = result;
      result += 11;
      v3 = *(a1 + 16);
      if ((v3 & 7) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *(a1 + 40) = result;
      result += ((9 * (__clz(result | 1) ^ 0x1F) + 73) >> 6) + 1;
      v3 = *(a1 + 16);
      if ((v3 & 7) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    *(a1 + 40) = 0;
    v3 = *(a1 + 16);
    if ((v3 & 7) == 0)
    {
      goto LABEL_20;
    }
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    result += ((9 * (__clz((2 * *(a1 + 56)) ^ (*(a1 + 56) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_20;
    }

LABEL_16:
    v7 = *(a1 + 60);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
    goto LABEL_20;
  }

  v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v3 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_20:
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
    *(a1 + 20) = result;
  }

  else
  {
    *(a1 + 20) = result;
  }

  return result;
}

void sub_1212408(uint64_t a1, uint64_t a2)
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
  if ((v8 & 7) != 0)
  {
    if ((v8 & 1) == 0)
    {
      if ((v8 & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_15:
      *(a1 + 56) = *(a2 + 56);
      if ((v8 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v10 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), *v12);
      if ((v8 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v8 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_6:
    if ((v8 & 4) == 0)
    {
LABEL_8:
      *(a1 + 16) |= v8;
      goto LABEL_9;
    }

LABEL_7:
    *(a1 + 60) = *(a2 + 60);
    goto LABEL_8;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1212598(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_2677CB0;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_12125E0(uint64_t a1)
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
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  v6 = *(a1 + 8);
  if ((v6 & 2) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
      if (v7)
      {
LABEL_10:
        sub_194E188(v7);
        operator delete();
      }
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  return a1;
}

void sub_12126B8(uint64_t a1)
{
  sub_12125E0(a1);

  operator delete();
}

uint64_t sub_12126F0(uint64_t a1)
{
  *(a1 + 24) = 0;
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
LABEL_4:
    if ((v1 & 6) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_4;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 6) != 0)
  {
LABEL_5:
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
  }

LABEL_6:
  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

unint64_t sub_1212760(char **a1)
{
  v1 = *a1;
  v3 = *a1 + 1;
  v2 = **a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v5 = *v3;
    v6 = (v5 << 7) + v2 - 128;
    if (v5 < 0)
    {
      *a1 = sub_19587DC(v1, v6);
    }

    else
    {
      *a1 = (v1 + 2);
    }

    return -(v6 & 1) ^ (v6 >> 1);
  }

  else
  {
    *a1 = v3;
    return -(v2 & 1) ^ (v2 >> 1);
  }
}

char *sub_12127F8(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 8;
    v8 = (2 * v7) ^ (v7 >> 63);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v4 += 3;
      if (v8 >= 0x4000)
      {
        v10 = v8 >> 7;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v4++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  if ((v6 & 1) == 0)
  {
LABEL_17:
    v15 = *(a1 + 40);
    if (v15 >= 1)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  if ((v13 & 0x8000000000000000) == 0 || (v13 = *(v12 + 8), v13 <= 127))
  {
    if ((*a3 - v4 + 14) >= v13)
    {
      *v4 = 18;
      v4[1] = v13;
      if (*(v12 + 23) >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = *v12;
      }

      memcpy(v4 + 2, v14, v13);
      v4 += v13 + 2;
      goto LABEL_17;
    }
  }

  v4 = sub_19572D4(a3, 2, v12, v4);
  v15 = *(a1 + 40);
  if (v15 >= 1)
  {
LABEL_18:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 26;
      v16 = v4 + 1;
      if (v15 < 0x80)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v4 = 26;
      v16 = v4 + 1;
      if (v15 < 0x80)
      {
LABEL_20:
        v4 += 2;
        *v16 = v15;
        v17 = *(a1 + 32);
        v18 = &v17[*(a1 + 24)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v24 = *v17++;
            v19 = v24;
            *v4 = v24;
            if (v24 > 0x7F)
            {
LABEL_25:
              *v4 = v19 | 0x80;
              v21 = v19 >> 7;
              v4[1] = v19 >> 7;
              v4 += 2;
              if (v19 >= 0x4000)
              {
                v22 = v19 >> 7;
                do
                {
                  *(v4 - 1) = v21 | 0x80;
                  v21 = v22 >> 7;
                  *v4++ = v22 >> 7;
                  v23 = v22 >> 14;
                  v22 >>= 7;
                }

                while (v23);
              }

              goto LABEL_22;
            }
          }

          else
          {
            v20 = *v17++;
            v19 = v20;
            *v4 = v20;
            if (v20 > 0x7F)
            {
              goto LABEL_25;
            }
          }

          ++v4;
LABEL_22:
          if (v17 >= v18)
          {
            goto LABEL_32;
          }
        }
      }
    }

    do
    {
      *v16++ = v15 | 0x80;
      v26 = v15 >> 14;
      v15 = v15 >> 7;
    }

    while (v26);
    v4 = v16 - 1;
    goto LABEL_20;
  }

LABEL_32:
  if ((v6 & 4) == 0)
  {
    goto LABEL_43;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v25 = *(a1 + 64);
    *v4 = 32;
    v4[1] = v25;
    if (v25 <= 0x7F)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v25 = *(a1 + 64);
    *v4 = 32;
    v4[1] = v25;
    if (v25 <= 0x7F)
    {
LABEL_35:
      v4 += 2;
      goto LABEL_43;
    }
  }

  v4[1] = v25 | 0x80;
  v27 = v25 >> 7;
  v4[2] = v25 >> 7;
  v4 += 3;
  if (v25 >= 0x4000)
  {
    v28 = v25 >> 7;
    do
    {
      *(v4 - 1) = v28 | 0x80;
      v28 = v27 >> 7;
      *v4++ = v27 >> 7;
      v29 = v27 >> 14;
      v27 >>= 7;
    }

    while (v29);
  }

LABEL_43:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v4;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
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

  v35 = v33;
  if ((*a3 - v4) < v33)
  {

    return sub_1957130(a3, v34, v33, v4);
  }

  else
  {
    memcpy(v4, v34, v33);
    return &v4[v35];
  }
}

uint64_t sub_1212B70(uint64_t a1)
{
  result = sub_1959E5C((a1 + 24));
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
      *(a1 + 40) = result;
      result += 11;
      v3 = *(a1 + 16);
      if ((v3 & 7) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *(a1 + 40) = result;
      result += ((9 * (__clz(result | 1) ^ 0x1F) + 73) >> 6) + 1;
      v3 = *(a1 + 16);
      if ((v3 & 7) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    *(a1 + 40) = 0;
    v3 = *(a1 + 16);
    if ((v3 & 7) == 0)
    {
      goto LABEL_20;
    }
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    result += ((9 * (__clz((2 * *(a1 + 56)) ^ (*(a1 + 56) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_20;
    }

LABEL_16:
    v7 = *(a1 + 64);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
    goto LABEL_20;
  }

  v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v3 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_20:
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
    *(a1 + 20) = result;
  }

  else
  {
    *(a1 + 20) = result;
  }

  return result;
}

void sub_1212CF4(uint64_t a1, uint64_t a2)
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
  if ((v8 & 7) != 0)
  {
    if ((v8 & 1) == 0)
    {
      if ((v8 & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_15:
      *(a1 + 56) = *(a2 + 56);
      if ((v8 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v10 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), *v12);
      if ((v8 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v8 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_6:
    if ((v8 & 4) == 0)
    {
LABEL_8:
      *(a1 + 16) |= v8;
      goto LABEL_9;
    }

LABEL_7:
    *(a1 + 64) = *(a2 + 64);
    goto LABEL_8;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1212E84(uint64_t a1)
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

  if (a1 != &off_2734938)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1211C74(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1211C74(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1211C74(v7);
      operator delete();
    }
  }

  v2 = *v3;
  if (*v3)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_12:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v8 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      v8 = *v8;
      if (v8)
      {
LABEL_15:
        sub_194E188(v8);
        operator delete();
      }
    }

    else if (v8)
    {
      goto LABEL_15;
    }
  }

  return a1;
}

void sub_1212F98(uint64_t a1)
{
  sub_1212E84(a1);

  operator delete();
}

uint64_t sub_1212FD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_26;
  }

  if (v1)
  {
    v2 = *(a1 + 24);
    *(v2 + 24) = 0;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v2 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 6) == 0)
        {
LABEL_8:
          v6 = *(v2 + 8);
          v5 = v2 + 8;
          *(v5 + 8) = 0;
          if (v6)
          {
            v7 = a1;
            sub_1957EA8(v5);
            a1 = v7;
          }

          goto LABEL_10;
        }

LABEL_7:
        *(v2 + 56) = 0;
        goto LABEL_8;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 6) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_10:
  if ((v1 & 2) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(a1 + 32);
  *(v8 + 24) = 0;
  v9 = *(v8 + 16);
  if ((v9 & 1) == 0)
  {
LABEL_14:
    if ((v9 & 6) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v10 = *(v8 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v10 + 23) & 0x80000000) == 0)
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    goto LABEL_14;
  }

  **v10 = 0;
  *(v10 + 8) = 0;
  if ((v9 & 6) != 0)
  {
LABEL_15:
    *(v8 + 56) = 0;
  }

LABEL_16:
  v12 = *(v8 + 8);
  v11 = v8 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {
    v13 = a1;
    sub_1957EA8(v11);
    a1 = v13;
  }

LABEL_18:
  if ((v1 & 4) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(a1 + 40);
  *(v14 + 24) = 0;
  v15 = *(v14 + 16);
  if ((v15 & 1) == 0)
  {
LABEL_22:
    if ((v15 & 6) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v16 = *(v14 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v16 + 23) & 0x80000000) == 0)
  {
    *v16 = 0;
    *(v16 + 23) = 0;
    goto LABEL_22;
  }

  **v16 = 0;
  *(v16 + 8) = 0;
  if ((v15 & 6) != 0)
  {
LABEL_23:
    *(v14 + 56) = 0;
  }

LABEL_24:
  v18 = *(v14 + 8);
  v17 = v14 + 8;
  *(v17 + 8) = 0;
  if (v18)
  {
    v19 = a1;
    sub_1957EA8(v17);
    a1 = v19;
  }

LABEL_26:
  v21 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v21)
  {

    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1213164(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v9 = *(a1 + 24);
    *v4 = 10;
    v10 = *(v9 + 20);
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v11 = sub_19575D0(v10, v4 + 1);
      v4 = sub_1211F08(v9, v11, a3);
      if ((v6 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = sub_1211F08(v9, v4 + 2, a3);
      if ((v6 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 40);
    *v4 = 26;
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

    v4 = sub_1211F08(v15, v17, a3);
    v7 = *(a1 + 8);
    if ((v7 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_24;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 32);
  *v4 = 18;
  v13 = *(v12 + 20);
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v4 + 1);
    v4 = sub_1211F08(v12, v14, a3);
    if ((v6 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = sub_1211F08(v12, v4 + 2, a3);
    if ((v6 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

LABEL_24:
  v18 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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

  v21 = v19;
  if ((*a3 - v4) < v19)
  {

    return sub_1957130(a3, v20, v19, v4);
  }

  else
  {
    memcpy(v4, v20, v19);
    return &v4[v21];
  }
}

uint64_t sub_1213390(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = sub_1212280(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
LABEL_9:
        if ((v2 & 4) != 0)
        {
          v8 = sub_1212280(*(a1 + 40));
          v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
          v4 = *(a1 + 8);
          if ((v4 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v4 = *(a1 + 8);
          if ((v4 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_13;
      }
    }

    v6 = sub_1212280(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_9;
  }

  v3 = 0;
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    *(a1 + 20) = v3;
    return v3;
  }

LABEL_13:
  v9 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v10 < 0)
  {
    v10 = *(v9 + 16);
  }

  v11 = v10 + v3;
  *(a1 + 20) = v11;
  return v11;
}

void sub_12134B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_5;
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  *(a1 + 16) |= 1u;
  v6 = *(a1 + 24);
  if (!v6)
  {
    v7 = *(a1 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v6 = sub_1215DEC(v8);
    *(a1 + 24) = v6;
  }

  if (*(a2 + 24))
  {
    v9 = *(a2 + 24);
  }

  else
  {
    v9 = &off_27348F8;
  }

  sub_1212408(v6, v9);
  if ((v4 & 2) != 0)
  {
LABEL_15:
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_1215DEC(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_27348F8;
    }

    sub_1212408(v10, v13);
    if ((v4 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_5:
    v5 = *(a2 + 8);
    if ((v5 & 1) == 0)
    {
      return;
    }

    goto LABEL_31;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  *(a1 + 16) |= 4u;
  v14 = *(a1 + 40);
  if (!v14)
  {
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v14 = sub_1215DEC(v16);
    *(a1 + 40) = v14;
  }

  if (*(a2 + 40))
  {
    v17 = *(a2 + 40);
  }

  else
  {
    v17 = &off_27348F8;
  }

  sub_1212408(v14, v17);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_31:

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_1213674(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if ((v4 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(v2);
  }

  sub_1956ABC((a1 + 32));
  sub_1956ABC((a1 + 29));
  sub_1956ABC((a1 + 26));
  sub_1956AFC(a1 + 23);
  sub_1956ABC((a1 + 20));
  sub_1956ABC((a1 + 17));
  sub_1956ABC((a1 + 14));
  sub_1956ABC((a1 + 11));
  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  v5 = a1[1];
  if ((v5 & 2) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
      if (v6)
      {
LABEL_5:
        sub_194E188(v6);
        operator delete();
      }
    }

    else if (v6)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_1213768(void *a1)
{
  sub_1213674(a1);

  operator delete();
}

uint64_t *sub_12137A0(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  v1 = *(a1 + 192);
  if (v1 >= 1)
  {
    v2 = *(a1 + 200) + 8;
    do
    {
      while (1)
      {
        v3 = *v2;
        if (*(*v2 + 23) < 0)
        {
          break;
        }

        *v3 = 0;
        *(v3 + 23) = 0;
        v2 += 8;
        if (!--v1)
        {
          goto LABEL_6;
        }
      }

      **v3 = 0;
      *(v3 + 8) = 0;
      v2 += 8;
      --v1;
    }

    while (v1);
LABEL_6:
    *(a1 + 192) = 0;
  }

  v5 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 50) = 0;
  *(result + 56) = 0;
  *(result + 62) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1213858(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
      *v4 = 10;
      v7 = v4 + 1;
      if (v6 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *__dst = 10;
      v7 = __dst + 1;
      if (v6 < 0x80)
      {
LABEL_4:
        v4 += 2;
        *v7 = v6;
        v8 = *(a1 + 24);
        v9 = &v8[*(a1 + 16)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v15 = *v8++;
            v10 = v15;
            *v4 = v15;
            if (v15 > 0x7F)
            {
LABEL_9:
              *v4 = v10 | 0x80;
              v12 = v10 >> 7;
              v4[1] = v10 >> 7;
              v4 += 2;
              if (v10 >= 0x4000)
              {
                v13 = v10 >> 7;
                do
                {
                  *(v4 - 1) = v12 | 0x80;
                  v12 = v13 >> 7;
                  *v4++ = v13 >> 7;
                  v14 = v13 >> 14;
                  v13 >>= 7;
                }

                while (v14);
              }

              goto LABEL_6;
            }
          }

          else
          {
            v11 = *v8++;
            v10 = v11;
            *v4 = v11;
            if (v11 > 0x7F)
            {
              goto LABEL_9;
            }
          }

          ++v4;
LABEL_6:
          if (v8 >= v9)
          {
            goto LABEL_15;
          }
        }
      }
    }

    do
    {
      *v7++ = v6 | 0x80;
      v116 = v6 >> 14;
      v6 >>= 7;
    }

    while (v116);
    v4 = v7 - 1;
    goto LABEL_4;
  }

LABEL_15:
  v16 = *(a1 + 56);
  if (v16 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 18;
      v17 = v4 + 1;
      if (v16 < 0x80)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *v4 = 18;
      v17 = v4 + 1;
      if (v16 < 0x80)
      {
LABEL_18:
        v4 += 2;
        *v17 = v16;
        v18 = *(a1 + 48);
        v19 = &v18[*(a1 + 40)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v25 = *v18++;
            v21 = (2 * v25) ^ (v25 >> 63);
            *v4 = v21;
            if (v21 > 0x7F)
            {
LABEL_23:
              *v4 = v21 | 0x80;
              v22 = v21 >> 7;
              v4[1] = v21 >> 7;
              v4 += 2;
              if (v21 >= 0x4000)
              {
                v23 = v21 >> 7;
                do
                {
                  *(v4 - 1) = v23 | 0x80;
                  v23 = v22 >> 7;
                  *v4++ = v22 >> 7;
                  v24 = v22 >> 14;
                  v22 >>= 7;
                }

                while (v24);
              }

              goto LABEL_20;
            }
          }

          else
          {
            v20 = *v18++;
            v21 = (2 * v20) ^ (v20 >> 63);
            *v4 = v21;
            if (v21 > 0x7F)
            {
              goto LABEL_23;
            }
          }

          ++v4;
LABEL_20:
          if (v18 >= v19)
          {
            goto LABEL_29;
          }
        }
      }
    }

    do
    {
      *v17++ = v16 | 0x80;
      v117 = v16 >> 14;
      v16 >>= 7;
    }

    while (v117);
    v4 = v17 - 1;
    goto LABEL_18;
  }

LABEL_29:
  v26 = *(a1 + 80);
  if (v26 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 26;
      v27 = v4 + 1;
      if (v26 < 0x80)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v4 = 26;
      v27 = v4 + 1;
      if (v26 < 0x80)
      {
LABEL_32:
        v4 += 2;
        *v27 = v26;
        v28 = *(a1 + 72);
        v29 = &v28[*(a1 + 64)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v35 = *v28++;
            v30 = v35;
            *v4 = v35;
            if (v35 > 0x7F)
            {
LABEL_37:
              *v4 = v30 | 0x80;
              v32 = v30 >> 7;
              v4[1] = v30 >> 7;
              v4 += 2;
              if (v30 >= 0x4000)
              {
                v33 = v30 >> 7;
                do
                {
                  *(v4 - 1) = v32 | 0x80;
                  v32 = v33 >> 7;
                  *v4++ = v33 >> 7;
                  v34 = v33 >> 14;
                  v33 >>= 7;
                }

                while (v34);
              }

              goto LABEL_34;
            }
          }

          else
          {
            v31 = *v28++;
            v30 = v31;
            *v4 = v31;
            if (v31 > 0x7F)
            {
              goto LABEL_37;
            }
          }

          ++v4;
LABEL_34:
          if (v28 >= v29)
          {
            goto LABEL_43;
          }
        }
      }
    }

    do
    {
      *v27++ = v26 | 0x80;
      v118 = v26 >> 14;
      v26 >>= 7;
    }

    while (v118);
    v4 = v27 - 1;
    goto LABEL_32;
  }

LABEL_43:
  v36 = *(a1 + 104);
  if (v36 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 34;
      v37 = v4 + 1;
      if (v36 < 0x80)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v4 = 34;
      v37 = v4 + 1;
      if (v36 < 0x80)
      {
LABEL_46:
        v4 += 2;
        *v37 = v36;
        v38 = *(a1 + 96);
        v39 = &v38[*(a1 + 88)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v45 = *v38++;
            v40 = v45;
            *v4 = v45;
            if (v45 > 0x7F)
            {
LABEL_51:
              *v4 = v40 | 0x80;
              v42 = v40 >> 7;
              v4[1] = v40 >> 7;
              v4 += 2;
              if (v40 >= 0x4000)
              {
                v43 = v40 >> 7;
                do
                {
                  *(v4 - 1) = v42 | 0x80;
                  v42 = v43 >> 7;
                  *v4++ = v43 >> 7;
                  v44 = v43 >> 14;
                  v43 >>= 7;
                }

                while (v44);
              }

              goto LABEL_48;
            }
          }

          else
          {
            v41 = *v38++;
            v40 = v41;
            *v4 = v41;
            if (v41 > 0x7F)
            {
              goto LABEL_51;
            }
          }

          ++v4;
LABEL_48:
          if (v38 >= v39)
          {
            goto LABEL_57;
          }
        }
      }
    }

    do
    {
      *v37++ = v36 | 0x80;
      v119 = v36 >> 14;
      v36 >>= 7;
    }

    while (v119);
    v4 = v37 - 1;
    goto LABEL_46;
  }

LABEL_57:
  v46 = *(a1 + 128);
  if (v46 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 42;
      v47 = v4 + 1;
      if (v46 < 0x80)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = 42;
      v47 = v4 + 1;
      if (v46 < 0x80)
      {
LABEL_60:
        v4 += 2;
        *v47 = v46;
        v48 = *(a1 + 120);
        v49 = &v48[*(a1 + 112)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v55 = *v48++;
            v50 = v55;
            *v4 = v55;
            if (v55 > 0x7F)
            {
LABEL_65:
              *v4 = v50 | 0x80;
              v52 = v50 >> 7;
              v4[1] = v50 >> 7;
              v4 += 2;
              if (v50 >= 0x4000)
              {
                v53 = v50 >> 7;
                do
                {
                  *(v4 - 1) = v52 | 0x80;
                  v52 = v53 >> 7;
                  *v4++ = v53 >> 7;
                  v54 = v53 >> 14;
                  v53 >>= 7;
                }

                while (v54);
              }

              goto LABEL_62;
            }
          }

          else
          {
            v51 = *v48++;
            v50 = v51;
            *v4 = v51;
            if (v51 > 0x7F)
            {
              goto LABEL_65;
            }
          }

          ++v4;
LABEL_62:
          if (v48 >= v49)
          {
            goto LABEL_71;
          }
        }
      }
    }

    do
    {
      *v47++ = v46 | 0x80;
      v120 = v46 >> 14;
      v46 >>= 7;
    }

    while (v120);
    v4 = v47 - 1;
    goto LABEL_60;
  }

LABEL_71:
  v56 = *(a1 + 152);
  if (v56 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 50;
      v57 = v4 + 1;
      if (v56 < 0x80)
      {
        goto LABEL_74;
      }
    }

    else
    {
      *v4 = 50;
      v57 = v4 + 1;
      if (v56 < 0x80)
      {
LABEL_74:
        v4 += 2;
        *v57 = v56;
        v58 = *(a1 + 144);
        v59 = &v58[*(a1 + 136)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v65 = *v58++;
            v60 = v65;
            *v4 = v65;
            if (v65 > 0x7F)
            {
LABEL_79:
              *v4 = v60 | 0x80;
              v62 = v60 >> 7;
              v4[1] = v60 >> 7;
              v4 += 2;
              if (v60 >= 0x4000)
              {
                v63 = v60 >> 7;
                do
                {
                  *(v4 - 1) = v62 | 0x80;
                  v62 = v63 >> 7;
                  *v4++ = v63 >> 7;
                  v64 = v63 >> 14;
                  v63 >>= 7;
                }

                while (v64);
              }

              goto LABEL_76;
            }
          }

          else
          {
            v61 = *v58++;
            v60 = v61;
            *v4 = v61;
            if (v61 > 0x7F)
            {
              goto LABEL_79;
            }
          }

          ++v4;
LABEL_76:
          if (v58 >= v59)
          {
            goto LABEL_85;
          }
        }
      }
    }

    do
    {
      *v57++ = v56 | 0x80;
      v121 = v56 >> 14;
      v56 >>= 7;
    }

    while (v121);
    v4 = v57 - 1;
    goto LABEL_74;
  }

LABEL_85:
  v66 = *(a1 + 176);
  if (v66 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 58;
      v67 = v4 + 1;
      if (v66 < 0x80)
      {
        goto LABEL_88;
      }
    }

    else
    {
      *v4 = 58;
      v67 = v4 + 1;
      if (v66 < 0x80)
      {
LABEL_88:
        v4 += 2;
        *v67 = v66;
        v68 = *(a1 + 168);
        v69 = &v68[*(a1 + 160)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v75 = *v68++;
            v70 = v75;
            *v4 = v75;
            if (v75 > 0x7F)
            {
LABEL_93:
              *v4 = v70 | 0x80;
              v72 = v70 >> 7;
              v4[1] = v70 >> 7;
              v4 += 2;
              if (v70 >= 0x4000)
              {
                v73 = v70 >> 7;
                do
                {
                  *(v4 - 1) = v72 | 0x80;
                  v72 = v73 >> 7;
                  *v4++ = v73 >> 7;
                  v74 = v73 >> 14;
                  v73 >>= 7;
                }

                while (v74);
              }

              goto LABEL_90;
            }
          }

          else
          {
            v71 = *v68++;
            v70 = v71;
            *v4 = v71;
            if (v71 > 0x7F)
            {
              goto LABEL_93;
            }
          }

          ++v4;
LABEL_90:
          if (v68 >= v69)
          {
            goto LABEL_99;
          }
        }
      }
    }

    do
    {
      *v67++ = v66 | 0x80;
      v122 = v66 >> 14;
      v66 >>= 7;
    }

    while (v122);
    v4 = v67 - 1;
    goto LABEL_88;
  }

LABEL_99:
  v76 = *(a1 + 192);
  if (v76 >= 1)
  {
    v77 = 8;
    do
    {
      while (1)
      {
        v78 = *(*(a1 + 200) + v77);
        v79 = *(v78 + 23);
        if ((v79 & 0x8000000000000000) == 0 || (v79 = v78[1], v79 <= 127))
        {
          if (*a3 - v4 + 14 >= v79)
          {
            break;
          }
        }

        v4 = sub_1957480(a3, 8, v78, v4);
        v77 += 8;
        if (!--v76)
        {
          goto LABEL_109;
        }
      }

      *v4 = 66;
      v4[1] = v79;
      if (*(v78 + 23) < 0)
      {
        v78 = *v78;
      }

      v80 = v4 + 2;
      memcpy(v80, v78, v79);
      v4 = &v80[v79];
      v77 += 8;
      --v76;
    }

    while (v76);
  }

LABEL_109:
  v81 = *(a1 + 224);
  if (v81 > 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 74;
      v82 = v4 + 1;
      if (v81 < 0x80)
      {
        goto LABEL_112;
      }
    }

    else
    {
      *v4 = 74;
      v82 = v4 + 1;
      if (v81 < 0x80)
      {
LABEL_112:
        v4 += 2;
        *v82 = v81;
        v83 = *(a1 + 216);
        v84 = &v83[*(a1 + 208)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v90 = *v83++;
            v86 = (2 * v90) ^ (v90 >> 31);
            *v4 = (2 * v90) ^ (v90 >> 31);
            if (v86 > 0x7F)
            {
LABEL_117:
              *v4 = v86 | 0x80;
              v87 = v86 >> 7;
              v4[1] = v86 >> 7;
              v4 += 2;
              if (v86 >= 0x4000)
              {
                v88 = v86 >> 7;
                do
                {
                  *(v4 - 1) = v87 | 0x80;
                  v87 = v88 >> 7;
                  *v4++ = v88 >> 7;
                  v89 = v88 >> 14;
                  v88 >>= 7;
                }

                while (v89);
              }

              goto LABEL_114;
            }
          }

          else
          {
            v85 = *v83++;
            v86 = (2 * v85) ^ (v85 >> 31);
            *v4 = (2 * v85) ^ (v85 >> 31);
            if (v86 > 0x7F)
            {
              goto LABEL_117;
            }
          }

          ++v4;
LABEL_114:
          if (v83 >= v84)
          {
            goto LABEL_123;
          }
        }
      }
    }

    do
    {
      *v82++ = v81 | 0x80;
      v123 = v81 >> 14;
      v81 >>= 7;
    }

    while (v123);
    v4 = v82 - 1;
    goto LABEL_112;
  }

LABEL_123:
  v91 = *(a1 + 248);
  if (v91 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 82;
      v92 = v4 + 1;
      if (v91 < 0x80)
      {
        goto LABEL_126;
      }
    }

    else
    {
      *v4 = 82;
      v92 = v4 + 1;
      if (v91 < 0x80)
      {
LABEL_126:
        v4 += 2;
        *v92 = v91;
        v93 = *(a1 + 240);
        v94 = &v93[*(a1 + 232)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v100 = *v93++;
            v95 = v100;
            *v4 = v100;
            if (v100 > 0x7F)
            {
LABEL_131:
              *v4 = v95 | 0x80;
              v97 = v95 >> 7;
              v4[1] = v95 >> 7;
              v4 += 2;
              if (v95 >= 0x4000)
              {
                v98 = v95 >> 7;
                do
                {
                  *(v4 - 1) = v97 | 0x80;
                  v97 = v98 >> 7;
                  *v4++ = v98 >> 7;
                  v99 = v98 >> 14;
                  v98 >>= 7;
                }

                while (v99);
              }

              goto LABEL_128;
            }
          }

          else
          {
            v96 = *v93++;
            v95 = v96;
            *v4 = v96;
            if (v96 > 0x7F)
            {
              goto LABEL_131;
            }
          }

          ++v4;
LABEL_128:
          if (v93 >= v94)
          {
            goto LABEL_137;
          }
        }
      }
    }

    do
    {
      *v92++ = v91 | 0x80;
      v124 = v91 >> 14;
      v91 >>= 7;
    }

    while (v124);
    v4 = v92 - 1;
    goto LABEL_126;
  }

LABEL_137:
  v101 = *(a1 + 272);
  if (v101 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 90;
      v102 = v4 + 1;
      if (v101 < 0x80)
      {
        goto LABEL_140;
      }
    }

    else
    {
      *v4 = 90;
      v102 = v4 + 1;
      if (v101 < 0x80)
      {
LABEL_140:
        v4 += 2;
        *v102 = v101;
        v103 = *(a1 + 264);
        v104 = &v103[*(a1 + 256)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v110 = *v103++;
            v105 = v110;
            *v4 = v110;
            if (v110 > 0x7F)
            {
LABEL_145:
              *v4 = v105 | 0x80;
              v107 = v105 >> 7;
              v4[1] = v105 >> 7;
              v4 += 2;
              if (v105 >= 0x4000)
              {
                v108 = v105 >> 7;
                do
                {
                  *(v4 - 1) = v108 | 0x80;
                  v108 = v107 >> 7;
                  *v4++ = v107 >> 7;
                  v109 = v107 >> 14;
                  v107 >>= 7;
                }

                while (v109);
              }

              goto LABEL_142;
            }
          }

          else
          {
            v106 = *v103++;
            v105 = v106;
            *v4 = v106;
            if (v106 > 0x7F)
            {
              goto LABEL_145;
            }
          }

          ++v4;
LABEL_142:
          if (v103 >= v104)
          {
            goto LABEL_151;
          }
        }
      }
    }

    do
    {
      *v102++ = v101 | 0x80;
      v125 = v101 >> 14;
      v101 >>= 7;
    }

    while (v125);
    v4 = v102 - 1;
    goto LABEL_140;
  }

LABEL_151:
  v111 = *(a1 + 8);
  if ((v111 & 1) == 0)
  {
    return v4;
  }

  v113 = v111 & 0xFFFFFFFFFFFFFFFCLL;
  v114 = *(v113 + 31);
  if (v114 < 0)
  {
    v115 = *(v113 + 8);
    v114 = *(v113 + 16);
  }

  else
  {
    v115 = (v113 + 8);
  }

  v126 = v114;
  if (*a3 - v4 >= v114)
  {
    memcpy(v4, v115, v114);
    v4 += v126;
    return v4;
  }

  return sub_1957130(a3, v115, v114, v4);
}

uint64_t sub_1214474(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 16));
  v3 = 11;
  v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v2 >= 0)
  {
    v3 = v4;
  }

  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  if (!v2)
  {
    v3 = 0;
  }

  *(a1 + 32) = v5;
  v6 = v3 + v2;
  v7 = sub_1959F64((a1 + 40));
  if (!v7)
  {
    *(a1 + 56) = 0;
    v9 = sub_1959E5C((a1 + 64));
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_12:
    *(a1 + 80) = 0;
    v10 = v6 + v9;
    v11 = sub_1959E5C((a1 + 88));
    if (v11)
    {
      goto LABEL_24;
    }

LABEL_13:
    *(a1 + 104) = 0;
    v12 = v10 + v11;
    v13 = sub_1959E5C((a1 + 112));
    if (v13)
    {
      goto LABEL_27;
    }

LABEL_14:
    *(a1 + 128) = 0;
    v14 = v12 + v13;
    v15 = sub_1959E5C((a1 + 136));
    if (v15)
    {
      goto LABEL_30;
    }

LABEL_15:
    *(a1 + 152) = 0;
    v16 = v14 + v15;
    v17 = sub_1959E5C((a1 + 160));
    if (v17)
    {
      goto LABEL_33;
    }

    goto LABEL_16;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  *(a1 + 56) = v7;
  v6 += v8 + v7;
  v9 = sub_1959E5C((a1 + 64));
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_20:
  if ((v9 & 0x80000000) != 0)
  {
    v20 = 11;
  }

  else
  {
    v20 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  *(a1 + 80) = v9;
  v10 = v20 + v6 + v9;
  v11 = sub_1959E5C((a1 + 88));
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_24:
  v21 = 11;
  v22 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v11 >= 0)
  {
    v21 = v22;
  }

  *(a1 + 104) = v11;
  v12 = v21 + v10 + v11;
  v13 = sub_1959E5C((a1 + 112));
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_27:
  v23 = 11;
  v24 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v13 >= 0)
  {
    v23 = v24;
  }

  *(a1 + 128) = v13;
  v14 = v23 + v12 + v13;
  v15 = sub_1959E5C((a1 + 136));
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_30:
  v25 = 11;
  v26 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v15 >= 0)
  {
    v25 = v26;
  }

  *(a1 + 152) = v15;
  v16 = v25 + v14 + v15;
  v17 = sub_1959E5C((a1 + 160));
  if (v17)
  {
LABEL_33:
    v27 = 11;
    v28 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v17 >= 0)
    {
      v27 = v28;
    }

    v29 = v27 + v16;
    *(a1 + 176) = v17;
    v18 = *(a1 + 192);
    v19 = v29 + v17 + v18;
    if (v18 < 1)
    {
      goto LABEL_49;
    }

    goto LABEL_36;
  }

LABEL_16:
  *(a1 + 176) = 0;
  v18 = *(a1 + 192);
  v19 = v16 + v17 + v18;
  if (v18 < 1)
  {
    goto LABEL_49;
  }

LABEL_36:
  v30 = *(a1 + 200);
  if (v18 == 1)
  {
    v31 = 0;
LABEL_45:
    v39 = (v30 + 8 * v31 + 8);
    v40 = v18 - v31;
    do
    {
      v41 = *v39++;
      v42 = *(v41 + 23);
      v43 = *(v41 + 8);
      if ((v42 & 0x80u) == 0)
      {
        v43 = v42;
      }

      v19 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      --v40;
    }

    while (v40);
    goto LABEL_49;
  }

  v32 = 0;
  v31 = v18 & 0x7FFFFFFE;
  v33 = v30 + 16;
  v34 = v31;
  do
  {
    v35 = *(v33 - 8);
    v36 = *(v35 + 23);
    v37 = *(v35 + 8);
    v38 = *(*v33 + 8);
    if ((v36 & 0x80u) == 0)
    {
      v37 = v36;
    }

    if (*(*v33 + 23) >= 0)
    {
      v38 = *(*v33 + 23);
    }

    v19 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
    v32 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6);
    v33 += 16;
    v34 -= 2;
  }

  while (v34);
  v19 += v32;
  if (v31 != v18)
  {
    goto LABEL_45;
  }

LABEL_49:
  v44 = sub_1959EA8((a1 + 208));
  v45 = 11;
  v46 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v44 >= 0)
  {
    v45 = v46;
  }

  v47 = v45 + v19;
  if (v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = 0;
  }

  if (!v44)
  {
    v47 = v19;
  }

  *(a1 + 224) = v48;
  v49 = v47 + v44;
  v50 = sub_1959E5C((a1 + 232));
  v51 = 11;
  v52 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v50 >= 0)
  {
    v51 = v52;
  }

  v53 = v51 + v49;
  if (v50)
  {
    v54 = v50;
  }

  else
  {
    v54 = 0;
  }

  if (!v50)
  {
    v53 = v49;
  }

  *(a1 + 248) = v54;
  v55 = v53 + v50;
  v56 = *(a1 + 256);
  if (v56)
  {
    v57 = *(a1 + 264);
    if ((v56 + 0x7FFFFFFF) > 0x80000002)
    {
      v58 = v56 & 0xFFFFFFFC;
      v60 = v57 + 1;
      v61 = 0uLL;
      v62 = v56 & 0xFFFFFFFC;
      v63 = 0uLL;
      do
      {
        v61 = vaddw_u32(v61, vbsl_s8(vcltz_s32(v60[-1]), 0xA0000000ALL, vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*&v60[-1] | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL)));
        v63 = vaddw_u32(v63, vbsl_s8(vcltz_s32(*v60), 0xA0000000ALL, vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*v60 | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL)));
        v60 += 2;
        v62 -= 4;
      }

      while (v62);
      v59 = vaddvq_s64(vaddq_s64(v63, v61));
      goto LABEL_74;
    }

    v58 = 0;
    v59 = 0;
    do
    {
      v64 = v57->i32[v58];
      if (v64 < 0)
      {
        v65 = 10;
      }

      else
      {
        v65 = (9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6;
      }

      v59 += v65;
      ++v58;
LABEL_74:
      ;
    }

    while (v56 != v58);
    if (v59)
    {
      if ((v59 & 0x80000000) != 0)
      {
        v66 = 11;
      }

      else
      {
        v66 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v55 += v66;
      v56 = v59;
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v59 = 0;
  }

  *(a1 + 272) = v56;
  result = v55 + v59;
  v68 = *(a1 + 8);
  if (v68)
  {
    v69 = v68 & 0xFFFFFFFFFFFFFFFCLL;
    v70 = *((v68 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v70 < 0)
    {
      v70 = *(v69 + 16);
    }

    result += v70;
    *(a1 + 276) = result;
  }

  else
  {
    *(a1 + 276) = result;
  }

  return result;
}

std::string *sub_1214A0C(std::string *result, uint64_t a2)
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
    sub_1959094(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    v10 = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&v10[8 * v9], *(a2 + 48), 8 * *(a2 + 40));
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
    sub_1958E5C(&v3[3].__r_.__value_.__r.__words[2], v15 + v14);
    v16 = v3[4].__r_.__value_.__l.__data_;
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) += *(a2 + 88);
    result = memcpy(&v16[4 * v15], *(a2 + 96), 4 * *(a2 + 88));
  }

  v17 = *(a2 + 112);
  if (v17)
  {
    v18 = SLODWORD(v3[4].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[4].__r_.__value_.__r.__words[2], v18 + v17);
    v19 = v3[5].__r_.__value_.__l.__data_;
    LODWORD(v3[4].__r_.__value_.__r.__words[2]) += *(a2 + 112);
    result = memcpy(&v19[4 * v18], *(a2 + 120), 4 * *(a2 + 112));
  }

  v20 = *(a2 + 136);
  if (v20)
  {
    v21 = SLODWORD(v3[5].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[5].__r_.__value_.__r.__words[2], v21 + v20);
    v22 = v3[6].__r_.__value_.__l.__data_;
    LODWORD(v3[5].__r_.__value_.__r.__words[2]) += *(a2 + 136);
    result = memcpy(&v22[4 * v21], *(a2 + 144), 4 * *(a2 + 136));
  }

  v23 = *(a2 + 160);
  if (v23)
  {
    v24 = SLODWORD(v3[6].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[6].__r_.__value_.__r.__words[2], v24 + v23);
    v25 = v3[7].__r_.__value_.__l.__data_;
    LODWORD(v3[6].__r_.__value_.__r.__words[2]) += *(a2 + 160);
    result = memcpy(&v25[4 * v24], *(a2 + 168), 4 * *(a2 + 160));
  }

  v26 = *(a2 + 192);
  if (v26)
  {
    v27 = *(a2 + 200);
    v28 = sub_19592E8(&v3[7].__r_.__value_.__r.__words[2], *(a2 + 192));
    result = sub_1201B48(&v3[7].__r_.__value_.__r.__words[2], v28, (v27 + 8), v26, *v3[8].__r_.__value_.__l.__size_ - LODWORD(v3[8].__r_.__value_.__l.__data_));
    v29 = LODWORD(v3[8].__r_.__value_.__l.__data_) + v26;
    LODWORD(v3[8].__r_.__value_.__l.__data_) = v29;
    size = v3[8].__r_.__value_.__l.__size_;
    if (*size < v29)
    {
      *size = v29;
    }
  }

  v31 = *(a2 + 208);
  if (v31)
  {
    v32 = SLODWORD(v3[8].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[8].__r_.__value_.__r.__words[2], v32 + v31);
    v33 = v3[9].__r_.__value_.__l.__data_;
    LODWORD(v3[8].__r_.__value_.__r.__words[2]) += *(a2 + 208);
    result = memcpy(&v33[4 * v32], *(a2 + 216), 4 * *(a2 + 208));
  }

  v34 = *(a2 + 232);
  if (v34)
  {
    v35 = SLODWORD(v3[9].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[9].__r_.__value_.__r.__words[2], v35 + v34);
    v36 = v3[10].__r_.__value_.__l.__data_;
    LODWORD(v3[9].__r_.__value_.__r.__words[2]) += *(a2 + 232);
    result = memcpy(&v36[4 * v35], *(a2 + 240), 4 * *(a2 + 232));
  }

  v37 = *(a2 + 256);
  if (v37)
  {
    v38 = SLODWORD(v3[10].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[10].__r_.__value_.__r.__words[2], v38 + v37);
    v39 = v3[11].__r_.__value_.__l.__data_;
    LODWORD(v3[10].__r_.__value_.__r.__words[2]) += *(a2 + 256);
    result = memcpy(&v39[4 * v38], *(a2 + 264), 4 * *(a2 + 256));
  }

  v40 = *(a2 + 8);
  if (v40)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1214DD8(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if ((v4 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(v2);
  }

  v5 = a1[7];
  if (v5 && !a1[5])
  {
    v6 = (v5 + 2);
    v7 = *v5;
    if (v7 >= 1)
    {
      do
      {
        if (*v6)
        {
          sub_1216DB4(*v6);
          operator delete();
        }

        ++v6;
        --v7;
      }

      while (v7);
      v5 = a1[7];
    }

    operator delete(v5);
  }

  a1[7] = 0;
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  v8 = a1[1];
  if ((v8 & 2) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
      if (v9)
      {
LABEL_14:
        sub_194E188(v9);
        operator delete();
      }
    }

    else if (v9)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_1214EE8(void *a1)
{
  sub_1214DD8(a1);

  operator delete();
}

uint64_t sub_1214F20(uint64_t result)
{
  v1 = result;
  *(result + 16) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1216F14(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1214FA0(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 32);
  if (v5 >= 1)
  {
    v6 = __dst;
    if (*a3 <= __dst)
    {
      v6 = sub_225EB68(a3, __dst);
      *v6 = 10;
      v7 = v6 + 1;
      if (v5 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *__dst = 10;
      v7 = __dst + 1;
      if (v5 < 0x80)
      {
LABEL_4:
        result = v6 + 2;
        *v7 = v5;
        v9 = *(a1 + 24);
        v10 = &v9[*(a1 + 16)];
        while (1)
        {
          if (*a3 <= result)
          {
            result = sub_225EB68(a3, result);
            v16 = *v9++;
            v11 = v16;
            *result = v16;
            if (v16 > 0x7F)
            {
LABEL_9:
              *result = v11 | 0x80;
              v13 = v11 >> 7;
              result[1] = v11 >> 7;
              result += 2;
              if (v11 >= 0x4000)
              {
                v14 = v11 >> 7;
                do
                {
                  *(result - 1) = v13 | 0x80;
                  v13 = v14 >> 7;
                  *result++ = v14 >> 7;
                  v15 = v14 >> 14;
                  v14 >>= 7;
                }

                while (v15);
              }

              goto LABEL_6;
            }
          }

          else
          {
            v12 = *v9++;
            v11 = v12;
            *result = v12;
            if (v12 > 0x7F)
            {
              goto LABEL_9;
            }
          }

          ++result;
LABEL_6:
          if (v9 >= v10)
          {
            goto LABEL_16;
          }
        }
      }
    }

    do
    {
      *v7++ = v5 | 0x80;
      v26 = v5 >> 14;
      v5 >>= 7;
    }

    while (v26);
    v6 = v7 - 1;
    goto LABEL_4;
  }

  result = __dst;
LABEL_16:
  v17 = *(a1 + 48);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v20 = *(*(a1 + 56) + 8 * i + 8);
      *result = 18;
      v21 = *(v20 + 20);
      result[1] = v21;
      if (v21 > 0x7F)
      {
        v19 = sub_19575D0(v21, result + 1);
      }

      else
      {
        v19 = result + 2;
      }

      result = sub_1216F38(v20, v19, a3);
    }
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = v22 & 0xFFFFFFFFFFFFFFFCLL;
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

    v27 = v24;
    if (*a3 - result < v24)
    {

      return sub_1957130(a3, v25, v24, result);
    }

    else
    {
      v28 = result;
      memcpy(result, v25, v24);
      return &v28[v27];
    }
  }

  return result;
}

uint64_t sub_12151E8(uint64_t a1)
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
  v5 = *(a1 + 48);
  v6 = v4 + v2 + v5;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = sub_1217134(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
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

    v16 = v15 + v6;
    *(a1 + 64) = v16;
    return v16;
  }

  else
  {
    *(a1 + 64) = v6;
    return v6;
  }
}

std::string *sub_12152EC(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_1216880((v3 + 40), v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v11 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v8;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v11;
    size = v3[2].__r_.__value_.__l.__size_;
    if (*size < v11)
    {
      *size = v11;
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_1215458(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_2677EB0;
  *(a1 + 8) = v3;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1215490(uint64_t a1)
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

  if (a1 != &off_2734AC8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1212E84(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1213674(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1214DD8(v7);
      operator delete();
    }
  }

  v2 = *v3;
  if (*v3)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_12:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v8 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      v8 = *v8;
      if (v8)
      {
LABEL_15:
        sub_194E188(v8);
        operator delete();
      }
    }

    else if (v8)
    {
      goto LABEL_15;
    }
  }

  return a1;
}

void sub_12155B0(uint64_t a1)
{
  sub_1215490(a1);

  operator delete();
}

uint64_t sub_12155E8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_1212FD0(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 32);
      *(v3 + 16) = 0;
      *(v3 + 40) = 0;
      *(v3 + 64) = 0;
      *(v3 + 88) = 0;
      *(v3 + 112) = 0;
      *(v3 + 136) = 0;
      *(v3 + 160) = 0;
      v4 = *(v3 + 192);
      if (v4 >= 1)
      {
        v5 = *(v3 + 200) + 8;
        do
        {
          while (1)
          {
            v6 = *v5;
            if (*(*v5 + 23) < 0)
            {
              break;
            }

            *v6 = 0;
            *(v6 + 23) = 0;
            v5 += 8;
            if (!--v4)
            {
              goto LABEL_10;
            }
          }

          **v6 = 0;
          *(v6 + 8) = 0;
          v5 += 8;
          --v4;
        }

        while (v4);
LABEL_10:
        *(v3 + 192) = 0;
      }

      v7 = *(v3 + 8);
      result = v3 + 8;
      *(result + 200) = 0;
      *(result + 224) = 0;
      *(result + 248) = 0;
      if (v7)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 4) != 0)
    {
      v8 = *(v1 + 40);
      *(v8 + 16) = 0;
      v9 = *(v8 + 48);
      if (v9 >= 1)
      {
        v10 = (*(v8 + 56) + 8);
        do
        {
          v11 = *v10++;
          result = sub_1216F14(v11);
          --v9;
        }

        while (v9);
        *(v8 + 48) = 0;
      }

      v13 = *(v8 + 8);
      v12 = (v8 + 8);
      if (v13)
      {
        result = sub_1957EA8(v12);
      }
    }
  }

  v15 = *(v1 + 8);
  v14 = v1 + 8;
  *(v14 + 40) = 0;
  *(v14 + 8) = 0;
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

char *sub_1215740(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
      v7 = *(a1 + 48);
      *v4 = 8;
      v4[1] = v7;
      if (v7 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *(a1 + 48);
      *__dst = 8;
      __dst[1] = v7;
      if (v7 <= 0x7F)
      {
LABEL_4:
        v4 += 2;
        goto LABEL_9;
      }
    }

    v4[1] = v7 | 0x80;
    v8 = v7 >> 7;
    v4[2] = v7 >> 7;
    v4 += 3;
    if (v7 >= 0x4000)
    {
      v9 = v7 >> 7;
      do
      {
        *(v4 - 1) = v8 | 0x80;
        v8 = v9 >> 7;
        *v4++ = v9 >> 7;
        v10 = v9 >> 14;
        v9 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if (v6)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 24);
    *v4 = 18;
    v14 = *(v13 + 20);
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v4 + 1);
      v4 = sub_1213164(v13, v15, a3);
      if ((v6 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v4 = sub_1213164(v13, v4 + 2, a3);
      if ((v6 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_11:
    if ((v6 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v19 = *(a1 + 40);
    *v4 = 34;
    v20 = *(v19 + 64);
    v4[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v4 + 1);
    }

    else
    {
      v21 = v4 + 2;
    }

    v4 = sub_1214FA0(v19, v21, a3);
    v11 = *(a1 + 8);
    if ((v11 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_32;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 32);
  *v4 = 26;
  v17 = *(v16 + 276);
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v4 + 1);
    v4 = sub_1213858(v16, v18, a3);
    if ((v6 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = sub_1213858(v16, v4 + 2, a3);
    if ((v6 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

LABEL_12:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

LABEL_32:
  v22 = v11 & 0xFFFFFFFFFFFFFFFCLL;
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

  v25 = v23;
  if ((*a3 - v4) < v23)
  {

    return sub_1957130(a3, v24, v23, v4);
  }

  else
  {
    memcpy(v4, v24, v23);
    return &v4[v25];
  }
}

uint64_t sub_1215A00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    v4 = *(a1 + 8);
    if ((v4 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (v2)
  {
    v5 = sub_1213390(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v6 = sub_1214474(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 40);
    v8 = sub_1959E5C((v7 + 16));
    v9 = 11;
    v10 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v9 = v10;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    if (!v8)
    {
      v9 = 0;
    }

    *(v7 + 32) = v11;
    v12 = v9 + v8;
    v13 = *(v7 + 48);
    v14 = v12 + v13;
    v15 = *(v7 + 56);
    if (v15)
    {
      v16 = (v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    if (v13)
    {
      v17 = 8 * v13;
      do
      {
        v18 = *v16++;
        v19 = sub_1217134(v18);
        v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
        v17 -= 8;
      }

      while (v17);
    }

    v20 = *(v7 + 8);
    if (v20)
    {
      v24 = v20 & 0xFFFFFFFFFFFFFFFCLL;
      v25 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v25 < 0)
      {
        v25 = *(v24 + 16);
      }

      v14 += v25;
    }

    *(v7 + 64) = v14;
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_11:
      v4 = *(a1 + 8);
      if ((v4 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v22 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v23 < 0)
  {
    v23 = *(v22 + 16);
  }

  v3 += v23;
LABEL_29:
  *(a1 + 20) = v3;
  return v3;
}

void sub_1215C04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        sub_1215F40(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2734938;
      }

      sub_12134B4(v6, v9);
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
    v10 = *(a1 + 32);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_1215FBC(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2734968;
    }

    sub_1214A0C(v10, v13);
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

LABEL_28:
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_1216124(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_2734A80;
    }

    sub_12152EC(v14, v17);
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

uint64_t sub_1215DEC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2677C30;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_1215E94(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2677CB0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

double sub_1215F40(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2677D30;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

double sub_1215FBC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2677DB0;
  *(v2 + 8) = a1;
  result = 0.0;
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
  *(v2 + 168) = a1;
  *(v2 + 176) = 0;
  *(v2 + 184) = a1;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = a1;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 240) = a1;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = a1;
  *(v2 + 272) = 0;
  return result;
}

uint64_t sub_1216124(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2677E30;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = a1;
  *(result + 64) = 0;
  return result;
}

double sub_12161DC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2677EB0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

char *sub_1216520(char *a1, uint64_t *a2)
{
  v2 = *a1;
  if (v2 < 0)
  {
    v4 = (a1[1] << 7) + v2 - 128;
    if (a1[1] < 0)
    {
      result = sub_19587DC(a1, v4);
      *a2 = v6;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

char *sub_1216588(uint64_t a1, char *a2, __int128 *a3, uint64_t a4)
{
  v6 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    v8 = *(a1 + 8);
    v9 = v8 - result;
    if (v6 > v8 - result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = a3[1];
    v15 = &result[v6];
    v20 = *a3;
    v21 = v14;
    result = sub_1216734(result, v15, &v20);
    if (v15 != result)
    {
      return 0;
    }

    return result;
  }

  result = sub_225F208(a2, *a2);
  if (!result)
  {
    return result;
  }

  v6 = v16;
  v8 = *(a1 + 8);
  v9 = v8 - result;
  if (v6 <= v8 - result)
  {
    goto LABEL_8;
  }

LABEL_3:
  while (1)
  {
    v10 = a3[1];
    v20 = *a3;
    v21 = v10;
    result = sub_1216734(result, v8, &v20);
    if (!result)
    {
      return result;
    }

    v11 = *(a1 + 8);
    v12 = result - v11;
    v13 = v6 - v9;
    if (v6 - v9 <= 16)
    {
      v24 = 0;
      v23 = 0;
      v17 = *v11;
      v18 = v13;
      v19 = a3[1];
      v20 = *a3;
      v21 = v19;
      v22 = v17;
      if (sub_1216734(&v22 + v12, &v22 + v13, &v20) != &v22 + v13)
      {
        return 0;
      }

      return (*(a1 + 8) + v18);
    }

    if (*(a1 + 28) < 17)
    {
      return 0;
    }

    result = sub_1958134(a1);
    if (!result)
    {
      return result;
    }

    v6 = v6 - v9 - v12;
    result += v12;
    v8 = *(a1 + 8);
    v9 = v8 - result;
    if (v6 <= v8 - result)
    {
      goto LABEL_8;
    }
  }
}

char *sub_1216734(char *a1, unint64_t a2, unsigned int **a3)
{
  v3 = a1;
  while (v3 < a2)
  {
    v6 = *v3;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v3[1] << 7) + v6;
      v6 = (v7 - 128);
      if (v3[1] < 0)
      {
        v3 = sub_19587DC(v3, (v7 - 128));
        if (!v3)
        {
          return v3;
        }

        v6 = v10;
        if ((a3[1])(v10))
        {
LABEL_9:
          v8 = *a3;
          v9 = **a3;
          if (v9 == (*a3)[1])
          {
            sub_1958E5C(*a3, v9 + 1);
          }

          *(*(v8 + 1) + 4 * v9) = v6;
          *v8 = v9 + 1;
          continue;
        }
      }

      else
      {
        v3 += 2;
        if ((a3[1])((v7 - 128)))
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      ++v3;
      if ((a3[1])(v6))
      {
        goto LABEL_9;
      }
    }

    v11 = *(a3 + 6);
    v12 = *a3[2];
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v14 = *(a3 + 6);
      v13 = sub_11F1920(a3[2]);
      v11 = v14;
    }

    sub_19586BC(v11, v6, v13);
  }

  return v3;
}

std::string *sub_1216880(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_1219678(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12168FC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1216944()
{
  v2 = *(v1 + 28) + v0;
  *(v1 + 28) = v2;
  *v1 = *(v1 + 8) + (v2 & (v2 >> 31));
}

void *sub_12169BC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      v4 = *v4;
      if (v4)
      {
LABEL_5:
        sub_194E188(v4);
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_1216A5C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      v4 = *v4;
      if (v4)
      {
LABEL_5:
        sub_194E188(v4);
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_1216B1C(uint64_t a1)
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

char *sub_1216B40(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= v3)
    {
      v14 = a1;
      v15 = v3;
      v16 = a3;
      v17 = sub_225EB68(a3, v15);
      a3 = v16;
      v3 = v17;
      a1 = v14;
    }

    v8 = *(a1 + 28);
    *v3 = 21;
    *(v3 + 1) = v8;
    v3 += 5;
    v5 = *(a1 + 8);
    if ((v5 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    v19 = a1;
    v12 = a3;
    v13 = sub_225EB68(a3, __dst);
    a3 = v12;
    v3 = v13;
    a1 = v19;
  }

  v7 = *(a1 + 24);
  *v3 = 13;
  *(v3 + 1) = v7;
  v3 += 5;
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = *(a1 + 8);
  if ((v5 & 1) == 0)
  {
    return v3;
  }

LABEL_11:
  v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  v18 = v10;
  if ((*a3 - v3) < v10)
  {

    return sub_1957130(a3, v11, v10, v3);
  }

  else
  {
    memcpy(v3, v11, v10);
    return (v3 + v18);
  }
}

uint64_t sub_1216C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  v3 = (~v1 & 3) == 0;
  v4 = 10;
  if (!v3)
  {
    v4 = v2;
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

    v9 = v8 + v4;
    *(a1 + 20) = v9;
    return v9;
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

std::string *sub_1216CF0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1216DB4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      v4 = *v4;
      if (v4)
      {
LABEL_5:
        sub_194E188(v4);
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_1216E54(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      v4 = *v4;
      if (v4)
      {
LABEL_5:
        sub_194E188(v4);
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_1216F14(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
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

char *sub_1216F38(uint64_t a1, char *__dst, void *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v25 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v25;
      v5 = *(v25 + 24);
      *v3 = 8;
      v3[1] = v5;
      if (v5 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v5;
      if (v5 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v5 | 0x80;
    v8 = v5 >> 7;
    v3[2] = v5 >> 7;
    v3 += 3;
    if (v5 >= 0x4000)
    {
      v9 = v5 >> 7;
      do
      {
        *(v3 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v3++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v3)
  {
    v12 = a1;
    v13 = v3;
    v14 = a3;
    v15 = sub_225EB68(a3, v13);
    a3 = v14;
    v3 = v15;
    a1 = v12;
    v11 = *(v12 + 32);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 32);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v3 += 2;
      goto LABEL_17;
    }
  }

  v3[1] = v11 | 0x80;
  v16 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v17 = v11 >> 7;
    do
    {
      *(v3 - 1) = v17 | 0x80;
      v17 = v16 >> 7;
      *v3++ = v16 >> 7;
      v18 = v16 >> 14;
      v16 >>= 7;
    }

    while (v18);
  }

LABEL_17:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v3;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  v24 = v22;
  if (*a3 - v3 < v22)
  {

    return sub_1957130(a3, v23, v22, v3);
  }

  else
  {
    memcpy(v3, v23, v22);
    return &v3[v24];
  }
}

unint64_t sub_1217134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v7 = v6 + v2;
    *(a1 + 20) = v7;
    return v7;
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

std::string *sub_12171D0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_121721C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1217268(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    if ((result->__r_.__value_.__s.__data_[16] & 3) != 0)
    {
      result[1].__r_.__value_.__r.__words[0] = 0;
      result[1].__r_.__value_.__l.__size_ = 0;
    }

    p_size = &result->__r_.__value_.__l.__size_;
    v2 = result->__r_.__value_.__s.__data_[8];
    LODWORD(result->__r_.__value_.__r.__words[2]) = 0;
    if (v2)
    {
      v4 = result;
      v5 = a2;
      sub_1957EA8(&result->__r_.__value_.__l.__size_);
      result = v4;
      a2 = v5;
    }

    v6 = *(a2 + 16);
    if ((v6 & 3) != 0)
    {
      if (v6)
      {
        result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
      }

      if ((v6 & 2) != 0)
      {
        result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
      }

      LODWORD(result->__r_.__value_.__r.__words[2]) |= v6;
    }

    v7 = *(a2 + 8);
    if (v7)
    {

      return sub_1957EF4(p_size, (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  return result;
}

double sub_121739C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26780C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = &qword_278E990;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0x100000000;
  return result;
}

void *sub_12173EC(void *a1)
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

  sub_12174A0(a1);
  v2 = *v3;
  if (*v3)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_5:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      v5 = *v5;
      if (v5)
      {
LABEL_8:
        sub_194E188(v5);
        operator delete();
      }
    }

    else if (v5)
    {
      goto LABEL_8;
    }
  }

  return a1;
}

void ***sub_12174A0(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2734B48)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = v4[1];
      if ((v5 & 1) != 0 && !*(v5 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v4 + 1);
        v5 = v4[1];
      }

      *v4 = off_27215B8;
      if ((v5 & 2) != 0)
      {
        v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
        if (v5)
        {
          v6 = *v6;
          if (v6)
          {
LABEL_9:
            sub_194E188(v6);
            operator delete();
          }
        }

        else if (v6)
        {
          goto LABEL_9;
        }
      }

      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = v7[1];
      if ((v8 & 1) != 0 && !*(v8 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v7 + 1);
        v8 = v7[1];
      }

      *v7 = off_27215B8;
      if ((v8 & 2) != 0)
      {
        v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (v8)
        {
          v9 = *v9;
          if (v9)
          {
LABEL_16:
            sub_194E188(v9);
            operator delete();
          }
        }

        else if (v9)
        {
          goto LABEL_16;
        }
      }

      operator delete();
    }
  }

  return result;
}

void sub_1217650(void *a1)
{
  sub_12173EC(a1);

  operator delete();
}

uint64_t sub_1217688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_16;
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
        goto LABEL_6;
      }

      goto LABEL_11;
    }

    *v2 = 0;
    *(v2 + 23) = 0;
  }

  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(a1 + 32);
    if ((*(v3 + 16) & 3) != 0)
    {
      *(v3 + 24) = 0;
    }

    v5 = *(v3 + 8);
    v4 = v3 + 8;
    *(v4 + 8) = 0;
    if (v5)
    {
      v6 = a1;
      sub_1957EA8(v4);
      a1 = v6;
    }
  }

LABEL_11:
  if ((v1 & 4) != 0)
  {
    v7 = *(a1 + 40);
    if ((*(v7 + 16) & 3) != 0)
    {
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
    }

    v9 = *(v7 + 8);
    v8 = v7 + 8;
    *(v8 + 8) = 0;
    if (v9)
    {
      v10 = a1;
      sub_1957EA8(v8);
      a1 = v10;
    }
  }

LABEL_16:
  if ((v1 & 0xF8) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  if ((v1 & 0xF00) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0x100000000;
  }

  v12 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12177C0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
      v7 = *(a1 + 84);
      *v4 = 8;
      v4[1] = v7;
      if (v7 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *(a1 + 84);
      *__dst = 8;
      __dst[1] = v7;
      if (v7 <= 0x7F)
      {
LABEL_4:
        v4 += 2;
        goto LABEL_9;
      }
    }

    v4[1] = v7 | 0x80;
    v8 = v7 >> 7;
    v4[2] = v7 >> 7;
    v4 += 3;
    if (v7 >= 0x4000)
    {
      v9 = v7 >> 7;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v4++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 32);
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

    v4 = sub_1216B40(v11, v13, a3);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v14 = *(a1 + 56);
      *v4 = 24;
      v4[1] = v14;
      if (v14 <= 0x7F)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v14 = *(a1 + 56);
      *v4 = 24;
      v4[1] = v14;
      if (v14 <= 0x7F)
      {
LABEL_19:
        v4 += 2;
        goto LABEL_24;
      }
    }

    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v4 += 3;
    if (v14 >= 0x4000)
    {
      v16 = v14 >> 7;
      do
      {
        *(v4 - 1) = v16 | 0x80;
        v16 = v15 >> 7;
        *v4++ = v15 >> 7;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
    }
  }

LABEL_24:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 48);
    *v4 = 33;
    *(v4 + 1) = v18;
    v4 += 9;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v19 = *(a1 + 60);
      *v4 = 40;
      v4[1] = v19;
      if (v19 <= 0x7F)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *(a1 + 60);
      *v4 = 40;
      v4[1] = v19;
      if (v19 <= 0x7F)
      {
LABEL_31:
        v4 += 2;
        goto LABEL_36;
      }
    }

    v4[1] = v19 | 0x80;
    v20 = v19 >> 7;
    v4[2] = v19 >> 7;
    v4 += 3;
    if (v19 >= 0x4000)
    {
      v21 = v19 >> 7;
      do
      {
        *(v4 - 1) = v20 | 0x80;
        v20 = v21 >> 7;
        *v4++ = v21 >> 7;
        v22 = v21 >> 14;
        v21 >>= 7;
      }

      while (v22);
    }
  }

LABEL_36:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_44;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v23 = *(a1 + 64);
    *v4 = 48;
    v4[1] = v23;
    if (v23 <= 0x7F)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v23 = *(a1 + 64);
    *v4 = 48;
    v4[1] = v23;
    if (v23 <= 0x7F)
    {
LABEL_39:
      v4 += 2;
      goto LABEL_44;
    }
  }

  v4[1] = v23 | 0x80;
  v24 = v23 >> 7;
  v4[2] = v23 >> 7;
  v4 += 3;
  if (v23 >= 0x4000)
  {
    v25 = v23 >> 7;
    do
    {
      *(v4 - 1) = v24 | 0x80;
      v24 = v25 >> 7;
      *v4++ = v25 >> 7;
      v26 = v25 >> 14;
      v25 >>= 7;
    }

    while (v26);
  }

LABEL_44:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_52;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v27 = *(a1 + 68);
    *v4 = 56;
    v4[1] = v27;
    if (v27 <= 0x7F)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v27 = *(a1 + 68);
    *v4 = 56;
    v4[1] = v27;
    if (v27 <= 0x7F)
    {
LABEL_47:
      v4 += 2;
      goto LABEL_52;
    }
  }

  v4[1] = v27 | 0x80;
  v28 = v27 >> 7;
  v4[2] = v27 >> 7;
  v4 += 3;
  if (v27 >= 0x4000)
  {
    v29 = v27 >> 7;
    do
    {
      *(v4 - 1) = v28 | 0x80;
      v28 = v29 >> 7;
      *v4++ = v29 >> 7;
      v30 = v29 >> 14;
      v29 >>= 7;
    }

    while (v30);
  }

LABEL_52:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_60;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v31 = *(a1 + 72);
    *v4 = 64;
    v4[1] = v31;
    if (v31 <= 0x7F)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v31 = *(a1 + 72);
    *v4 = 64;
    v4[1] = v31;
    if (v31 <= 0x7F)
    {
LABEL_55:
      v4 += 2;
      goto LABEL_60;
    }
  }

  v4[1] = v31 | 0x80;
  v32 = v31 >> 7;
  v4[2] = v31 >> 7;
  v4 += 3;
  if (v31 >= 0x4000)
  {
    v33 = v31 >> 7;
    do
    {
      *(v4 - 1) = v32 | 0x80;
      v32 = v33 >> 7;
      *v4++ = v33 >> 7;
      v34 = v33 >> 14;
      v33 >>= 7;
    }

    while (v34);
  }

LABEL_60:
  if ((v6 & 0x200) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_62;
    }

LABEL_68:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v36 = *(a1 + 40);
    *v4 = 82;
    v37 = *(v36 + 20);
    v4[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v4 + 1);
      v4 = sub_1216F38(v36, v38, a3);
      if (v6)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v4 = sub_1216F38(v36, v4 + 2, a3);
      if (v6)
      {
        goto LABEL_74;
      }
    }

LABEL_63:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_81;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v35 = *(a1 + 76);
  *v4 = 72;
  v4[1] = v35;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
    goto LABEL_68;
  }

LABEL_62:
  if ((v6 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_74:
  v39 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v39 + 23);
  if (v40 < 0 && (v40 = *(v39 + 8), v40 > 127) || (*a3 - v4 + 14) < v40)
  {
    v4 = sub_19572D4(a3, 11, v39, v4);
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_90;
    }
  }

  else
  {
    *v4 = 90;
    v4[1] = v40;
    if (*(v39 + 23) >= 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = *v39;
    }

    memcpy(v4 + 2, v41, v40);
    v4 += v40 + 2;
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_90;
    }
  }

LABEL_81:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v42 = *(a1 + 80);
    *v4 = 96;
    v4[1] = v42;
    if (v42 <= 0x7F)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v42 = *(a1 + 80);
    *v4 = 96;
    v4[1] = v42;
    if (v42 <= 0x7F)
    {
LABEL_83:
      v4 += 2;
      goto LABEL_90;
    }
  }

  v4[1] = v42 | 0x80;
  v43 = v42 >> 7;
  v4[2] = v42 >> 7;
  v4 += 3;
  if (v42 >= 0x4000)
  {
    v44 = v42 >> 7;
    do
    {
      *(v4 - 1) = v44 | 0x80;
      v44 = v43 >> 7;
      *v4++ = v43 >> 7;
      v45 = v43 >> 14;
      v43 >>= 7;
    }

    while (v45);
  }

LABEL_90:
  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v4;
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

  v51 = v49;
  if ((*a3 - v4) < v49)
  {

    return sub_1957130(a3, v50, v49, v4);
  }

  else
  {
    memcpy(v4, v50, v49);
    return &v4[v51];
  }
}

uint64_t sub_1217E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v2 = 0;
    if ((v1 & 0xF00) == 0)
    {
      goto LABEL_53;
    }

LABEL_46:
    if ((v1 & 0x100) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1 + ((v1 >> 8) & 2);
      if ((v1 & 0x400) == 0)
      {
LABEL_48:
        if ((v1 & 0x800) == 0)
        {
          goto LABEL_53;
        }

LABEL_49:
        v16 = *(a1 + 84);
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v16 >= 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = 11;
        }

        v2 += v18;
        goto LABEL_53;
      }
    }

    else
    {
      v2 += (v1 >> 8) & 2;
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_48;
      }
    }

    v21 = *(a1 + 80);
    v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v21 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 11;
    }

    v2 += v23;
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_19;
    }

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
LABEL_10:
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    if ((~v7 & 3) != 0)
    {
      v9 = 5;
      if ((v7 & 1) == 0)
      {
        v9 = 0;
      }

      if ((v7 & 2) != 0)
      {
        v8 = v9 + 5;
      }

      else
      {
        v8 = v9;
      }
    }

    else
    {
      v8 = 10;
    }

    v10 = *(v6 + 8);
    if (v10)
    {
      v27 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      v28 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v28 < 0)
      {
        v28 = *(v27 + 16);
      }

      v8 += v28;
    }

    *(v6 + 20) = v8;
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) == 0)
    {
      goto LABEL_23;
    }

LABEL_39:
    v15 = *(a1 + 56);
    if (v15 < 0)
    {
      v2 += 11;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 += ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_24:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 16);
  if ((v12 & 3) == 0)
  {
    v13 = 0;
    goto LABEL_35;
  }

  if (v12)
  {
    v13 = ((9 * (__clz(*(v11 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v12 & 2) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = 0;
  if ((v12 & 2) != 0)
  {
LABEL_34:
    v13 += ((9 * (__clz(*(v11 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_35:
  v14 = *(v11 + 8);
  if (v14)
  {
    v29 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v30 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v30 < 0)
    {
      v30 = *(v29 + 16);
    }

    v13 += v30;
  }

  *(v11 + 20) = v13;
  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x10) != 0)
  {
    goto LABEL_39;
  }

LABEL_23:
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_43:
  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_25:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_45:
    v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0xF00) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

LABEL_26:
  if ((v1 & 0xF00) != 0)
  {
    goto LABEL_46;
  }

LABEL_53:
  v19 = *(a1 + 8);
  if (v19)
  {
    v24 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v26 = v25 + v2;
    *(a1 + 20) = v26;
    return v26;
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

void sub_12181EC(uint64_t a1, uint64_t a2)
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

        v8 = sub_1219600(v10);
        *(a1 + 32) = v8;
      }

      v11 = *(a2 + 32);
      if (!v11)
      {
        v11 = &off_2734B00;
      }

      v12 = *(v11 + 4);
      if ((v12 & 3) != 0)
      {
        if (v12)
        {
          *(v8 + 6) = *(v11 + 6);
        }

        if ((v12 & 2) != 0)
        {
          *(v8 + 7) = *(v11 + 7);
        }

        *(v8 + 4) |= v12;
      }

      v13 = v11[1];
      if (v13)
      {
        sub_1957EF4(v8 + 1, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 16) |= 4u;
      v14 = *(a1 + 40);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_1219678(v16);
        *(a1 + 40) = v14;
      }

      v17 = *(a2 + 40);
      if (!v17)
      {
        v17 = &off_2734B20;
      }

      v18 = *(v17 + 4);
      if ((v18 & 3) != 0)
      {
        if (v18)
        {
          v14[3] = v17[3];
        }

        if ((v18 & 2) != 0)
        {
          v14[4] = v17[4];
        }

        *(v14 + 4) |= v18;
      }

      v19 = v17[1];
      if (v19)
      {
        sub_1957EF4(v14 + 1, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 48) = *(a2 + 48);
      if ((v4 & 0x10) == 0)
      {
LABEL_38:
        if ((v4 & 0x20) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_56;
      }
    }

    else if ((v4 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_39:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 60) = *(a2 + 60);
    if ((v4 & 0x40) == 0)
    {
LABEL_40:
      if ((v4 & 0x80) == 0)
      {
LABEL_42:
        *(a1 + 16) |= v4;
        goto LABEL_43;
      }

LABEL_41:
      *(a1 + 68) = *(a2 + 68);
      goto LABEL_42;
    }

LABEL_57:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_43:
  if ((v4 & 0xF00) == 0)
  {
    goto LABEL_50;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x200) == 0)
    {
LABEL_46:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_47;
      }

LABEL_61:
      *(a1 + 80) = *(a2 + 80);
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_46;
  }

  *(a1 + 76) = *(a2 + 76);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_61;
  }

LABEL_47:
  if ((v4 & 0x800) != 0)
  {
LABEL_48:
    *(a1 + 84) = *(a2 + 84);
  }

LABEL_49:
  *(a1 + 16) |= v4;
LABEL_50:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_121845C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_1217688(a1);

    sub_12181EC(a1, a2);
  }
}

__n128 sub_12184D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a2 + 24);
  *(a2 + 24) = *(a1 + 24);
  *(a1 + 24) = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  LODWORD(v8) = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v8;
  LODWORD(v8) = *(a1 + 84);
  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = v8;
  return result;
}

void *sub_12185BC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      v4 = *v4;
      if (v4)
      {
LABEL_5:
        sub_194E188(v4);
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_121865C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      v4 = *v4;
      if (v4)
      {
LABEL_5:
        sub_194E188(v4);
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_121871C(uint64_t a1)
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

char *sub_1218734(uint64_t a1, char *__dst, void *a3)
{
  v3 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v5 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v5;
      v4 = *(v5 + 24);
      *v3 = 8;
      v3[1] = v4;
      if (v4 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v4;
      if (v4 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v4 | 0x80;
    v8 = v4 >> 7;
    v3[2] = v4 >> 7;
    v3 += 3;
    if (v4 >= 0x4000)
    {
      v9 = v4 >> 7;
      do
      {
        *(v3 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v3++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v3;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  v16 = v14;
  if (*a3 - v3 < v14)
  {

    return sub_1957130(a3, v15, v14, v3);
  }

  else
  {
    memcpy(v3, v15, v14);
    return &v3[v16];
  }
}

uint64_t sub_121887C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v1 = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      goto LABEL_8;
    }

LABEL_6:
    *(a1 + 20) = v1;
    return v1;
  }

  v3 = *(a1 + 24);
  if (v3 < 0)
  {
    v1 = 11;
    v2 = *(a1 + 8);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v1 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 8);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v6 < 0)
  {
    v6 = *(v5 + 16);
  }

  v7 = v6 + v1;
  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_12188F8(std::string *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    LODWORD(result[1].__r_.__value_.__l.__data_) = v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_121899C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v4 = (v2 + 2);
    v5 = *v2;
    if (v5 >= 1)
    {
      do
      {
        if (*v4)
        {
          sub_12173EC(*v4);
          operator delete();
        }

        ++v4;
        --v5;
      }

      while (v5);
      v2 = a1[2];
    }

    operator delete(v2);
    a1[2] = 0;
    return a1;
  }

  else
  {
    a1[2] = 0;
    return a1;
  }
}

void *sub_1218A44(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26781C0;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

uint64_t sub_1218A88(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26781C0;
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
    sub_1219AC4((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

void sub_1218C6C(_Unwind_Exception *a1)
{
  sub_121899C(v1 + 3);
  sub_11EE1AC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1218C8C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    goto LABEL_15;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2734BC0)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = v6[1];
      if (v7)
      {
        v15 = v6 + 1;
        if (!*(v7 & 0xFFFFFFFFFFFFFFFCLL))
        {
          sub_11F19CC(v15);
          v7 = *v15;
        }
      }

      *v6 = off_27215B8;
      if ((v7 & 2) != 0)
      {
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
          if (v8)
          {
LABEL_11:
            sub_194E188(v8);
            operator delete();
          }
        }

        else if (v8)
        {
          goto LABEL_11;
        }
      }

      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  v9 = *(a1 + 40);
  if (v9 && !*(a1 + 24))
  {
    v12 = (v9 + 2);
    v13 = *v9;
    if (v13 >= 1)
    {
      do
      {
        if (*v12)
        {
          sub_12173EC(*v12);
          operator delete();
        }

        ++v12;
        --v13;
      }

      while (v13);
      v9 = *(a1 + 40);
    }

    operator delete(v9);
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v10 = *(a1 + 8);
    if ((v10 & 2) == 0)
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v10 = *(a1 + 8);
    if ((v10 & 2) == 0)
    {
      return a1;
    }
  }

  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
    if (v11)
    {
LABEL_20:
      sub_194E188(v11);
      operator delete();
    }
  }

  else if (v11)
  {
    goto LABEL_20;
  }

  return a1;
}

void sub_1218EC0(uint64_t a1)
{
  sub_1218C8C(a1);

  operator delete();
}

uint64_t sub_1218EF8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1217688(v4);
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
      v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    v7 = *(v1 + 56);
    v8 = *(v7 + 8);
    result = v7 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v8)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_13:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

char *sub_1218FD0(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    result = a2;
    do
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v9 = *(*(a1 + 40) + 8 * v6 + 8);
      *result = 10;
      v10 = *(v9 + 20);
      result[1] = v10;
      if (v10 <= 0x7F)
      {
        v8 = result + 2;
      }

      else
      {
        v8 = sub_19575D0(v10, result + 1);
      }

      result = sub_12177C0(v9, v8, a3);
      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    result = a2;
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    v13 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    if (v14 < 0 && (v14 = *(v13 + 8), v14 > 127) || (*a3 - result + 14) < v14)
    {
      result = sub_19572D4(a3, 2, v13, result);
      if ((v11 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *result = 18;
      v15 = result + 2;
      result[1] = v14;
      if (*(v13 + 23) >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = *v13;
      }

      memcpy(result + 2, v16, v14);
      result = &v15[v14];
      if ((v11 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_12:
    v12 = *(a1 + 8);
    if ((v12 & 1) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_21:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v17 = *(a1 + 56);
  *result = 26;
  v18 = *(v17 + 20);
  result[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, result + 1);
    result = sub_1218734(v17, v19, a3);
    v12 = *(a1 + 8);
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = sub_1218734(v17, result + 2, a3);
    v12 = *(a1 + 8);
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

LABEL_27:
  v20 = v12 & 0xFFFFFFFFFFFFFFFCLL;
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

  v23 = v21;
  if ((*a3 - result) < v21)
  {

    return sub_1957130(a3, v22, v21, result);
  }

  else
  {
    v24 = result;
    memcpy(result, v22, v21);
    return &v24[v23];
  }
}

uint64_t sub_1219210(uint64_t a1)
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
      v7 = sub_1217E70(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
    v8 = *(a1 + 16);
    if ((v8 & 3) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v2 = 0;
    v8 = *(a1 + 16);
    if ((v8 & 3) == 0)
    {
      goto LABEL_23;
    }
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
  }

  if ((v8 & 2) != 0)
  {
    v12 = *(a1 + 56);
    if (*(v12 + 16))
    {
      v15 = *(v12 + 24);
      if (v15 < 0)
      {
        v13 = 11;
        v14 = *(v12 + 8);
        if (v14)
        {
LABEL_28:
          v21 = v14 & 0xFFFFFFFFFFFFFFFCLL;
          v22 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
          if (v22 < 0)
          {
            v22 = *(v21 + 16);
          }

          v13 += v22;
        }
      }

      else
      {
        v13 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
        v14 = *(v12 + 8);
        if (v14)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v13 = 0;
      v14 = *(v12 + 8);
      if (v14)
      {
        goto LABEL_28;
      }
    }

    *(v12 + 20) = v13;
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_23:
  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v20 = v19 + v2;
    *(a1 + 20) = v20;
    return v20;
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

void sub_12193C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1219AC4((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v13 = sub_121978C(v15);
        *(a1 + 56) = v13;
      }

      v16 = *(a2 + 56);
      if (!v16)
      {
        v16 = &off_2734BA0;
      }

      if (v16[2])
      {
        v17 = *(v16 + 6);
        *(v13 + 16) |= 1u;
        *(v13 + 24) = v17;
      }

      v18 = v16[1];
      if (v18)
      {
        sub_1957EF4((v13 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_121953C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 40) + 8 * v1; (*(*i + 16) & 2) == 0 || (~*(*(*i + 32) + 16) & 3) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

void *sub_1219600(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2677FC0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1219678(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2678040;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_12196F4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26780C0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0x100000000;
  return result;
}

uint64_t sub_121978C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2678140;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_1219808(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26781C0;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = a1;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = &qword_278E990;
  v2[7] = 0;
  return result;
}

void sub_1219AC4(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12196F4(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_1219B40(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1219B80(uint64_t **a1, uint64_t *a2)
{
  *(a1 + 1) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 13) = 0u;
  *a1 = a2;
  *(a1 + 17) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 23) = 0u;
  a1[25] = 0;
  v2 = (a2[1] - *a2) >> 3;
  if (v2 >= 2)
  {
    if (!(v2 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "not triangulation");
}

void sub_121A930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void **a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  if (__p)
  {
    operator delete(__p);
    v26 = v24[23];
    if (!v26)
    {
LABEL_3:
      v27 = *a12;
      if (!*a12)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v26 = v24[23];
    if (!v26)
    {
      goto LABEL_3;
    }
  }

  v24[24] = v26;
  operator delete(v26);
  v27 = *a12;
  if (!*a12)
  {
LABEL_4:
    v28 = *a14;
    if (!*a14)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v24[18] = v27;
  operator delete(v27);
  v28 = *a14;
  if (!*a14)
  {
LABEL_5:
    v29 = v24[10];
    if (!v29)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v24[14] = v28;
  operator delete(v28);
  v29 = v24[10];
  if (!v29)
  {
LABEL_6:
    v30 = *a13;
    if (!*a13)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v24[11] = v29;
  operator delete(v29);
  v30 = *a13;
  if (!*a13)
  {
LABEL_7:
    v31 = v24[4];
    if (!v31)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v24[8] = v30;
  operator delete(v30);
  v31 = v24[4];
  if (!v31)
  {
LABEL_8:
    v32 = *a24;
    if (!*a24)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v24[5] = v31;
  operator delete(v31);
  v32 = *a24;
  if (!*a24)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  v24[2] = v32;
  operator delete(v32);
  _Unwind_Resume(exception_object);
}

unint64_t sub_121AA54(uint64_t **a1, unint64_t a2)
{
  v4 = 0;
  v28 = a1 + 23;
  a1[24] = a1[23];
  while (1)
  {
    v5 = 3 * (a2 / 3);
    v6 = v5 + (a2 + 2) % 3;
    v7 = a1[4];
    v8 = v7[a2];
    if (v8 != -1)
    {
      while (1)
      {
        v9 = 3 * (v8 / 3);
        v10 = v9 + (v8 + 2) % 3;
        v11 = a1[1];
        v12 = v11[v6];
        v13 = v11[v10];
        v14 = **a1;
        v15 = *(v14 + 16 * v13);
        v16 = vsubq_f64(*(v14 + 16 * v12), v15);
        v17 = vsubq_f64(*(v14 + 16 * v11[a2]), v15);
        v18 = vsubq_f64(*(v14 + 16 * v11[3 * (a2 / 3) + (a2 + 1) % 3]), v15);
        v19 = vextq_s8(v18, v18, 8uLL);
        v20 = vaddvq_f64(vmulq_f64(v16, v16));
        v21 = vmulq_n_f64(v17, vmuld_n_f64(v18.f64[0], v18.f64[0]) + COERCE_DOUBLE(*&vmulq_f64(v18, v18).f64[1]));
        v22 = vmulq_f64(v16, vsubq_f64(vextq_s8(v21, v21, 8uLL), vmulq_n_f64(v19, vmulq_f64(v17, v17).f64[0] + vmuld_lane_f64(v17.f64[1], v17, 1))));
        if (v20 * (vmulq_f64(v17, v19).f64[0] - vmuld_lane_f64(v18.f64[0], v17, 1)) + vsubq_f64(v22, vdupq_laneq_s64(v22, 1)).f64[0] >= 0.0)
        {
          break;
        }

        v11[a2] = v13;
        v11[v8] = v12;
        v23 = v7[v10];
        if (v23 == -1)
        {
          v24 = a1[13];
          v25 = a1[16];
          while (v24[v25] != v10)
          {
            v25 = a1[7][v25];
            if (v25 == a1[16])
            {
              goto LABEL_12;
            }
          }

          v24[v25] = a2;
LABEL_12:
          v23 = -1;
        }

        sub_121ACC4(a1, a2, v23);
        sub_121ACC4(a1, v8, a1[4][v6]);
        sub_121ACC4(a1, v5 + (a2 + 2) % 3, v9 + (v8 + 2) % 3);
        v29 = v9 + (v8 + 1) % 3;
        v26 = a1[23];
        if (v4 < a1[24] - v26)
        {
          v26[v4++] = v9 + (v8 + 1) % 3;
          v7 = a1[4];
          v8 = v7[a2];
          if (v8 == -1)
          {
            break;
          }
        }

        else
        {
          sub_2512DC(v28, &v29);
          ++v4;
          v7 = a1[4];
          v8 = v7[a2];
          if (v8 == -1)
          {
            break;
          }
        }
      }
    }

    if (!v4)
    {
      return v5 + (a2 + 2) % 3;
    }

    a2 = (*v28)[--v4];
  }
}

void sub_121ACC4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11 = a3;
  v12 = a2;
  v5 = *(a1 + 32);
  v6 = a1 + 32;
  v7 = (*(a1 + 40) - v5) >> 3;
  if (v7 == a2)
  {
    sub_2512DC(a1 + 32, &v11);
    a3 = v11;
    if (v11 == -1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v7 <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot link edge");
    goto LABEL_12;
  }

  *(v5 + 8 * a2) = a3;
  if (a3 != -1)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = (*(a1 + 40) - v8) >> 3;
    if (a3 == v9)
    {
      sub_2512DC(v6, &v12);
      return;
    }

    if (a3 < v9)
    {
      *(v8 + 8 * a3) = a2;
      return;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot link edge");
LABEL_12:
  }
}

void sub_121AE08(uint64_t *result, uint64_t *a2, double *a3, uint64_t a4, uint64_t a5)
{
LABEL_1:
  v9 = a2 - 1;
  v48 = a2 - 3;
  v49 = a2 - 2;
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v37 = *(a2 - 1);
        v38 = *v10;
        v39 = **a3;
        v40 = (v39 + 16 * v37);
        v41 = v40[1];
        v42 = a3[1];
        v43 = (v39 + 16 * *v10);
        v44 = v43[1];
        v45 = (*v40 - v42) * (*v40 - v42) + (v41 - a3[2]) * (v41 - a3[2]) - ((*v43 - v42) * (*v43 - v42) + (v44 - a3[2]) * (v44 - a3[2]));
        v46 = v45 < 0.0;
        if (v45 == 0.0 && (v47 = *v40 - *v43, v46 = v47 < 0.0, v47 == 0.0))
        {
          if (v41 >= v44)
          {
            return;
          }
        }

        else if (!v46)
        {
          return;
        }

        *v10 = v37;
        *(a2 - 1) = v38;
        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_121B4F4(v10, v10 + 1, v10 + 2, v9, a3);
      return;
    }

    if (v13 == 5)
    {

      sub_121B6CC(v10, v10 + 1, v10 + 2, v10 + 3, v9, a3);
      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_121B924(v10, a2, a3);
      }

      else
      {

        sub_121BA74(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_121C380(v10, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v10[v13 >> 1];
    if (v13 < 0x81)
    {
      sub_121B2AC(&v10[v13 >> 1], v10, v9, a3);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_121B2AC(v10, &v10[v13 >> 1], v9, a3);
      v16 = v10 + 1;
      v50 = v12;
      v17 = a2;
      v18 = a5;
      v19 = v9;
      v20 = &result[v14];
      sub_121B2AC(result + 1, v20 - 1, v49, a3);
      sub_121B2AC(result + 2, &v16[v14], v48, a3);
      sub_121B2AC(v20 - 1, v15, &v16[v14], a3);
      v21 = *result;
      *result = *v20;
      *v20 = v21;
      v9 = v19;
      a5 = v18;
      a2 = v17;
      v12 = v50;
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v22 = **a3;
    v23 = (v22 + 16 * *(result - 1));
    v25 = *v23;
    v24 = v23[1];
    v26 = a3[1];
    v27 = a3[2];
    v28 = (*v23 - v26) * (*v23 - v26) + (v24 - v27) * (v24 - v27);
    v29 = (v22 + 16 * *result);
    v30 = v29[1];
    v31 = v28 - ((*v29 - v26) * (*v29 - v26) + (v30 - v27) * (v30 - v27));
    v32 = v31 < 0.0;
    if (v31 == 0.0 && (v36 = v25 - *v29, v32 = v36 < 0.0, v36 == 0.0))
    {
      if (v24 >= v30)
      {
LABEL_25:
        v10 = sub_121BB8C(result, a2, a3);
LABEL_27:
        a5 = 0;
        a4 = -v12;
        goto LABEL_2;
      }
    }

    else if (!v32)
    {
      goto LABEL_25;
    }

LABEL_19:
    v33 = sub_121BE28(result, a2, a3);
    if ((v34 & 1) == 0)
    {
      goto LABEL_26;
    }

    v35 = sub_121C07C(result, v33, a3);
    v10 = v33 + 1;
    if (sub_121C07C(v33 + 1, a2, a3))
    {
      a4 = -v12;
      a2 = v33;
      if (v35)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v35)
    {
LABEL_26:
      sub_121AE08(result, v33, a3, -v12, a5 & 1);
      v10 = v33 + 1;
      goto LABEL_27;
    }
  }

  sub_121B2AC(v10, v10 + 1, v9, a3);
}

uint64_t sub_121B2AC(uint64_t *a1, uint64_t *a2, uint64_t *a3, double *a4)
{
  v4 = *a2;
  v5 = *a1;
  v6 = **a4;
  v7 = (v6 + 16 * *a2);
  v9 = *v7;
  v8 = v7[1];
  v11 = a4[1];
  v10 = a4[2];
  v12 = (*v7 - v11) * (*v7 - v11) + (v8 - v10) * (v8 - v10);
  v13 = (v6 + 16 * *a1);
  v15 = *v13;
  v14 = v13[1];
  v16 = (*v13 - v11) * (*v13 - v11) + (v14 - v10) * (v14 - v10);
  if (v12 - v16 == 0.0)
  {
    if (v9 - v15 == 0.0)
    {
      if (v8 < v14)
      {
        goto LABEL_3;
      }
    }

    else if (v9 - v15 < 0.0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v22 = (v6 + 16 * *a3);
    v23 = v22[1];
    v24 = (*v22 - v11) * (*v22 - v11) + (v23 - v10) * (v23 - v10) - v12;
    if (v24 == 0.0)
    {
      v34 = *v22 - v9;
      if (v34 == 0.0)
      {
        if (v23 < v8)
        {
          goto LABEL_11;
        }
      }

      else if (v34 < 0.0)
      {
        goto LABEL_11;
      }
    }

    else if (v24 < 0.0)
    {
LABEL_11:
      *a2 = *a3;
      *a3 = v4;
      v25 = *a1;
      v26 = (v6 + 16 * *a2);
      v28 = *v26;
      v27 = v26[1];
      v29 = (v6 + 16 * *a1);
      v31 = *v29;
      v30 = v29[1];
      v32 = (*v26 - v11) * (*v26 - v11) + (v27 - v10) * (v27 - v10) - ((*v29 - v11) * (*v29 - v11) + (v30 - v10) * (v30 - v10));
      if (v32 == 0.0 && (v32 = v28 - v31, v28 - v31 == 0.0))
      {
        if (v27 >= v30)
        {
          return 1;
        }
      }

      else if (v32 >= 0.0)
      {
        return 1;
      }

      *a1 = *a2;
      *a2 = v25;
      return 1;
    }

    return 0;
  }

  if (v12 - v16 >= 0.0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v17 = (v6 + 16 * *a3);
  v18 = v17[1];
  v19 = (*v17 - v11) * (*v17 - v11) + (v18 - v10) * (v18 - v10) - v12;
  v20 = v19 < 0.0;
  if (v19 != 0.0 || (v33 = *v17 - v9, v20 = v33 < 0.0, v33 != 0.0))
  {
    if (!v20)
    {
      goto LABEL_24;
    }

LABEL_6:
    *a1 = *a3;
    *a3 = v5;
    return 1;
  }

  if (v18 < v8)
  {
    goto LABEL_6;
  }

LABEL_24:
  *a1 = v4;
  *a2 = v5;
  v35 = (v6 + 16 * *a3);
  v37 = *v35;
  v36 = v35[1];
  v38 = (*v35 - v11) * (*v35 - v11) + (v36 - v10) * (v36 - v10) - v16;
  if (v38 == 0.0 && (v38 = v37 - v15, v37 - v15 == 0.0))
  {
    if (v36 < v14)
    {
      goto LABEL_26;
    }
  }

  else if (v38 < 0.0)
  {
LABEL_26:
    *a2 = *a3;
    *a3 = v5;
    return 1;
  }

  return 1;
}

double sub_121B4F4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, double *a5)
{
  sub_121B2AC(a1, a2, a3, a5);
  v10 = *a3;
  v11 = **a5;
  v12 = (v11 + 16 * *a4);
  v14 = *v12;
  v13 = v12[1];
  result = a5[1];
  v16 = a5[2];
  v17 = (*v12 - result) * (*v12 - result) + (v13 - v16) * (v13 - v16);
  v18 = (v11 + 16 * *a3);
  v19 = v18[1];
  v20 = v17 - ((*v18 - result) * (*v18 - result) + (v19 - v16) * (v19 - v16));
  v21 = v20 < 0.0;
  if (v20 == 0.0 && (v39 = v14 - *v18, v21 = v39 < 0.0, v39 == 0.0))
  {
    if (v13 >= v19)
    {
      return result;
    }
  }

  else if (!v21)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v10;
  v22 = *a2;
  v23 = (v11 + 16 * *a3);
  v25 = *v23;
  v24 = v23[1];
  v26 = (*v23 - result) * (*v23 - result) + (v24 - v16) * (v24 - v16);
  v27 = (v11 + 16 * *a2);
  v28 = v27[1];
  v29 = v26 - ((*v27 - result) * (*v27 - result) + (v28 - v16) * (v28 - v16));
  v30 = v29 < 0.0;
  if (v29 == 0.0 && (v40 = v25 - *v27, v30 = v40 < 0.0, v40 == 0.0))
  {
    if (v24 >= v28)
    {
      return result;
    }
  }

  else if (!v30)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v22;
  v31 = *a1;
  v32 = (v11 + 16 * *a2);
  v34 = *v32;
  v33 = v32[1];
  v35 = (v11 + 16 * *a1);
  v37 = *v35;
  v36 = v35[1];
  result = (*v32 - result) * (*v32 - result) + (v33 - v16) * (v33 - v16) - ((*v35 - result) * (*v35 - result) + (v36 - v16) * (v36 - v16));
  v38 = result < 0.0;
  if (result == 0.0)
  {
    result = v34 - v37;
    v38 = v34 - v37 < 0.0;
    if (v34 - v37 == 0.0)
    {
      if (v33 >= v36)
      {
        return result;
      }

LABEL_10:
      *a1 = *a2;
      *a2 = v31;
      return result;
    }
  }

  if (v38)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_121B6CC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, double *a6)
{
  sub_121B4F4(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = **a6;
  v14 = (v13 + 16 * *a5);
  v16 = *v14;
  v15 = v14[1];
  result = a6[1];
  v18 = a6[2];
  v19 = (*v14 - result) * (*v14 - result) + (v15 - v18) * (v15 - v18);
  v20 = (v13 + 16 * *a4);
  v21 = v20[1];
  v22 = v19 - ((*v20 - result) * (*v20 - result) + (v21 - v18) * (v21 - v18));
  v23 = v22 < 0.0;
  if (v22 == 0.0 && (v50 = v16 - *v20, v23 = v50 < 0.0, v50 == 0.0))
  {
    if (v15 >= v21)
    {
      return result;
    }
  }

  else if (!v23)
  {
    return result;
  }

  *a4 = *a5;
  *a5 = v12;
  v24 = *a3;
  v25 = (v13 + 16 * *a4);
  v27 = *v25;
  v26 = v25[1];
  v28 = (*v25 - result) * (*v25 - result) + (v26 - v18) * (v26 - v18);
  v29 = (v13 + 16 * *a3);
  v30 = v29[1];
  v31 = v28 - ((*v29 - result) * (*v29 - result) + (v30 - v18) * (v30 - v18));
  v32 = v31 < 0.0;
  if (v31 == 0.0 && (v51 = v27 - *v29, v32 = v51 < 0.0, v51 == 0.0))
  {
    if (v26 >= v30)
    {
      return result;
    }
  }

  else if (!v32)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v24;
  v33 = *a2;
  v34 = (v13 + 16 * *a3);
  v36 = *v34;
  v35 = v34[1];
  v37 = (*v34 - result) * (*v34 - result) + (v35 - v18) * (v35 - v18);
  v38 = (v13 + 16 * *a2);
  v39 = v38[1];
  v40 = v37 - ((*v38 - result) * (*v38 - result) + (v39 - v18) * (v39 - v18));
  v41 = v40 < 0.0;
  if (v40 == 0.0 && (v52 = v36 - *v38, v41 = v52 < 0.0, v52 == 0.0))
  {
    if (v35 >= v39)
    {
      return result;
    }
  }

  else if (!v41)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v33;
  v42 = *a1;
  v43 = (v13 + 16 * *a2);
  v45 = *v43;
  v44 = v43[1];
  v46 = (v13 + 16 * *a1);
  v48 = *v46;
  v47 = v46[1];
  result = (*v43 - result) * (*v43 - result) + (v44 - v18) * (v44 - v18) - ((*v46 - result) * (*v46 - result) + (v47 - v18) * (v47 - v18));
  v49 = result < 0.0;
  if (result == 0.0)
  {
    result = v45 - v48;
    v49 = v45 - v48 < 0.0;
    if (v45 - v48 == 0.0)
    {
      if (v44 >= v47)
      {
        return result;
      }

LABEL_13:
      *a1 = *a2;
      *a2 = v42;
      return result;
    }
  }

  if (v49)
  {
    goto LABEL_13;
  }

  return result;
}

void *sub_121B924(void *result, void *a2, double *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = **a3;
      v6 = a3[1];
      v7 = a3[2];
      v8 = result;
      while (1)
      {
        v9 = v8;
        v8 = v3;
        v10 = v9[1];
        v11 = (v5 + 16 * v10);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*v11 - v6) * (*v11 - v6) + (v13 - v7) * (v13 - v7);
        v15 = (v5 + 16 * *v9);
        v16 = v15[1];
        v17 = v14 - ((*v15 - v6) * (*v15 - v6) + (v16 - v7) * (v16 - v7));
        v18 = v17 < 0.0;
        if (v17 == 0.0 && (v26 = v12 - *v15, v18 = v26 < 0.0, v26 == 0.0))
        {
          if (v13 >= v16)
          {
            goto LABEL_5;
          }
        }

        else if (!v18)
        {
          goto LABEL_5;
        }

        v9[1] = *v9;
        v19 = result;
        if (v9 == result)
        {
          goto LABEL_4;
        }

        v20 = v4;
        while (1)
        {
          v21 = *(result + v20 - 8);
          v22 = (v5 + 16 * v21);
          v23 = v22[1];
          v24 = v14 - ((*v22 - v6) * (*v22 - v6) + (v23 - v7) * (v23 - v7));
          if (v24 == 0.0)
          {
            break;
          }

          if (v24 >= 0.0)
          {
            goto LABEL_23;
          }

LABEL_13:
          --v9;
          *(result + v20) = v21;
          v20 -= 8;
          if (!v20)
          {
            v19 = result;
            goto LABEL_4;
          }
        }

        v25 = v12 - *v22;
        if (v25 == 0.0)
        {
          break;
        }

        if (v25 < 0.0)
        {
          goto LABEL_13;
        }

LABEL_23:
        v19 = v9;
LABEL_4:
        *v19 = v10;
LABEL_5:
        v3 = v8 + 1;
        v4 += 8;
        if (v8 + 1 == a2)
        {
          return result;
        }
      }

      if (v13 >= v23)
      {
        v19 = (result + v20);
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  return result;
}

void *sub_121BA74(void *result, void *a2, double *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = a3[1];
      v6 = a3[2];
      do
      {
        v7 = result;
        result = v3;
        v9 = *v7;
        v8 = v7[1];
        v10 = (v4 + 16 * v8);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*v10 - v5) * (*v10 - v5) + (v12 - v6) * (v12 - v6);
        v14 = (v4 + 16 * *v7);
        v15 = v14[1];
        v16 = v13 - ((*v14 - v5) * (*v14 - v5) + (v15 - v6) * (v15 - v6));
        v17 = v16 < 0.0;
        if (v16 == 0.0 && (v24 = v11 - *v14, v17 = v24 < 0.0, v24 == 0.0))
        {
          if (v12 < v15)
          {
            do
            {
              while (1)
              {
LABEL_9:
                while (1)
                {
                  v18 = v7;
                  v19 = *--v7;
                  v7[2] = v9;
                  v9 = v19;
                  v20 = (v4 + 16 * v19);
                  v21 = v20[1];
                  v22 = v13 - ((*v20 - v5) * (*v20 - v5) + (v21 - v6) * (v21 - v6));
                  if (v22 == 0.0)
                  {
                    break;
                  }

                  if (v22 >= 0.0)
                  {
                    goto LABEL_4;
                  }
                }

                v23 = v11 - *v20;
                if (v23 == 0.0)
                {
                  break;
                }

                if (v23 >= 0.0)
                {
                  goto LABEL_4;
                }
              }
            }

            while (v12 < v21);
LABEL_4:
            *v18 = v8;
          }
        }

        else if (v17)
        {
          goto LABEL_9;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_121BB8C(uint64_t *a1, uint64_t *a2, double *a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = **a3;
  v6 = (v5 + 16 * *a1);
  v7 = *v6;
  v8 = v6[1];
  v9 = a3[1];
  v10 = a3[2];
  v11 = (*v6 - v9) * (*v6 - v9) + (v8 - v10) * (v8 - v10);
  v12 = (v5 + 16 * v4);
  v13 = v12[1];
  v14 = v11 - ((*v12 - v9) * (*v12 - v9) + (v13 - v10) * (v13 - v10));
  if (v14 == 0.0)
  {
    v21 = v7 - *v12;
    if (v21 == 0.0)
    {
      if (v8 < v13)
      {
        goto LABEL_3;
      }
    }

    else if (v21 < 0.0)
    {
      goto LABEL_3;
    }
  }

  else if (v14 < 0.0)
  {
LABEL_3:
    for (i = a1 + 1; ; ++i)
    {
      v16 = (v5 + 16 * *i);
      v17 = v16[1];
      v18 = v11 - ((*v16 - v9) * (*v16 - v9) + (v17 - v10) * (v17 - v10));
      v19 = v18 < 0.0;
      if (v18 == 0.0 && (v20 = v7 - *v16, v19 = v20 < 0.0, v20 == 0.0))
      {
        if (v8 < v17)
        {
          goto LABEL_20;
        }
      }

      else if (v19)
      {
        goto LABEL_20;
      }
    }
  }

  for (i = a1 + 1; i < a2; ++i)
  {
    v24 = (v5 + 16 * *i);
    v25 = v24[1];
    v26 = v11 - ((*v24 - v9) * (*v24 - v9) + (v25 - v10) * (v25 - v10));
    v23 = v26 < 0.0;
    if (v26 == 0.0 && (v22 = v7 - *v24, v23 = v22 < 0.0, v22 == 0.0))
    {
      if (v8 < v25)
      {
        break;
      }
    }

    else if (v23)
    {
      break;
    }
  }

LABEL_20:
  if (i < a2)
  {
    for (--a2; ; --a2)
    {
      v27 = (v5 + 16 * v4);
      v28 = v27[1];
      v29 = v11 - ((*v27 - v9) * (*v27 - v9) + (v28 - v10) * (v28 - v10));
      v30 = v29 < 0.0;
      if (v29 == 0.0 && (v32 = v7 - *v27, v30 = v32 < 0.0, v32 == 0.0))
      {
        if (v8 >= v28)
        {
          break;
        }
      }

      else if (!v30)
      {
        break;
      }

      v31 = *(a2 - 1);
      v4 = v31;
    }
  }

  if (i < a2)
  {
    v33 = *i;
    v34 = *a2;
    do
    {
      *i++ = v34;
      *a2 = v33;
      while (1)
      {
        v33 = *i;
        v37 = (v5 + 16 * *i);
        v38 = v37[1];
        v39 = v11 - ((*v37 - v9) * (*v37 - v9) + (v38 - v10) * (v38 - v10));
        v36 = v39 < 0.0;
        if (v39 == 0.0)
        {
          v35 = v7 - *v37;
          v36 = v35 < 0.0;
          if (v35 == 0.0)
          {
            break;
          }
        }

        if (v36)
        {
          goto LABEL_38;
        }

LABEL_34:
        ++i;
      }

      if (v8 >= v38)
      {
        goto LABEL_34;
      }

      do
      {
        while (1)
        {
LABEL_38:
          while (1)
          {
            v40 = *--a2;
            v34 = v40;
            v41 = (v5 + 16 * v40);
            v42 = v41[1];
            v43 = v11 - ((*v41 - v9) * (*v41 - v9) + (v42 - v10) * (v42 - v10));
            if (v43 == 0.0)
            {
              break;
            }

            if (v43 >= 0.0)
            {
              goto LABEL_30;
            }
          }

          v44 = v7 - *v41;
          if (v44 == 0.0)
          {
            break;
          }

          if (v44 >= 0.0)
          {
            goto LABEL_30;
          }
        }
      }

      while (v8 < v42);
LABEL_30:
      ;
    }

    while (i < a2);
  }

  if (i - 1 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v3;
  return i;
}

uint64_t *sub_121BE28(uint64_t *a1, uint64_t *a2, double *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = **a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = (v5 + 16 * *a1);
  v9 = *v8;
  v10 = v8[1];
  v11 = (*v8 - v6) * (*v8 - v6) + (v10 - v7) * (v10 - v7);
  while (1)
  {
    v12 = a1[v3 + 1];
    v13 = (v5 + 16 * v12);
    v14 = v13[1];
    v15 = (*v13 - v6) * (*v13 - v6) + (v14 - v7) * (v14 - v7) - v11;
    v16 = v15 < 0.0;
    if (v15 == 0.0)
    {
      v17 = *v13 - v9;
      v16 = v17 < 0.0;
      if (v17 == 0.0)
      {
        break;
      }
    }

    if (!v16)
    {
      goto LABEL_8;
    }

LABEL_5:
    ++v3;
  }

  if (v14 < v10)
  {
    goto LABEL_5;
  }

LABEL_8:
  v18 = &a1[v3];
  v19 = &a1[v3 + 1];
  if (v3 * 8)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v27 = *--a2;
          v28 = (v5 + 16 * v27);
          v29 = v28[1];
          v30 = (*v28 - v6) * (*v28 - v6) + (v29 - v7) * (v29 - v7) - v11;
          if (v30 == 0.0)
          {
            break;
          }

          if (v30 < 0.0)
          {
            goto LABEL_25;
          }
        }

        v31 = *v28 - v9;
        if (v31 == 0.0)
        {
          break;
        }

        if (v31 < 0.0)
        {
          goto LABEL_25;
        }
      }
    }

    while (v29 >= v10);
  }

  else if (v19 < a2)
  {
    do
    {
      v20 = *--a2;
      v21 = (v5 + 16 * v20);
      v22 = v21[1];
      v23 = (*v21 - v6) * (*v21 - v6) + (v22 - v7) * (v22 - v7) - v11;
      v24 = v23 < 0.0;
      if (v23 == 0.0)
      {
        v26 = *v21 - v9;
        v24 = v26 < 0.0;
        if (v26 == 0.0)
        {
          v24 = v22 < v10;
        }
      }
    }

    while (!v24 && v19 < a2);
  }

LABEL_25:
  if (v19 >= a2)
  {
    goto LABEL_45;
  }

  v32 = *a2;
  v33 = v19;
  v34 = a2;
  while (2)
  {
    *v33++ = v32;
    *v34 = v12;
    while (2)
    {
      v12 = *v33;
      v37 = (v5 + 16 * *v33);
      v38 = v37[1];
      v39 = (*v37 - v6) * (*v37 - v6) + (v38 - v7) * (v38 - v7) - v11;
      v36 = v39 < 0.0;
      if (v39 == 0.0)
      {
        v35 = *v37 - v9;
        v36 = v35 < 0.0;
        if (v35 == 0.0)
        {
          if (v38 >= v10)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      if (v36)
      {
LABEL_32:
        ++v33;
        continue;
      }

      break;
    }

    do
    {
      while (1)
      {
LABEL_36:
        while (1)
        {
          v40 = *--v34;
          v32 = v40;
          v41 = (v5 + 16 * v40);
          v42 = v41[1];
          v43 = (*v41 - v6) * (*v41 - v6) + (v42 - v7) * (v42 - v7) - v11;
          if (v43 == 0.0)
          {
            break;
          }

          if (v43 < 0.0)
          {
            goto LABEL_27;
          }
        }

        v44 = *v41 - v9;
        if (v44 == 0.0)
        {
          break;
        }

        if (v44 < 0.0)
        {
          goto LABEL_27;
        }
      }
    }

    while (v42 >= v10);
LABEL_27:
    if (v33 < v34)
    {
      continue;
    }

    break;
  }

  v18 = v33 - 1;
LABEL_45:
  if (v18 != a1)
  {
    *a1 = *v18;
  }

  *v18 = v4;
  return v18;
}

BOOL sub_121C07C(uint64_t *a1, uint64_t *a2, double *a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_121B2AC(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        sub_121B4F4(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_121B6CC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *a1;
      v8 = **a3;
      v9 = (v8 + 16 * v6);
      v10 = v9[1];
      v11 = a3[1];
      v12 = (v8 + 16 * *a1);
      v13 = v12[1];
      v14 = (*v9 - v11) * (*v9 - v11) + (v10 - a3[2]) * (v10 - a3[2]) - ((*v12 - v11) * (*v12 - v11) + (v13 - a3[2]) * (v13 - a3[2]));
      if (v14 == 0.0)
      {
        v41 = *v9 - *v12;
        if (v41 == 0.0)
        {
          if (v10 >= v13)
          {
            return 1;
          }
        }

        else if (v41 >= 0.0)
        {
          return 1;
        }
      }

      else if (v14 >= 0.0)
      {
        return 1;
      }

      *a1 = v6;
      *(a2 - 1) = v7;
      return 1;
    }
  }

  v15 = a1 + 2;
  sub_121B2AC(a1, a1 + 1, a1 + 2, a3);
  v18 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v21 = **a3;
  v22 = a3[1];
  v23 = a3[2];
  while (1)
  {
    v24 = *v18;
    v25 = (v21 + 16 * *v18);
    v26 = *v25;
    v27 = v25[1];
    v28 = (*v25 - v22) * (*v25 - v22) + (v27 - v23) * (v27 - v23);
    v29 = (v21 + 16 * *v15);
    v30 = v29[1];
    v31 = v28 - ((*v29 - v22) * (*v29 - v22) + (v30 - v23) * (v30 - v23));
    v32 = v31 < 0.0;
    if (v31 == 0.0)
    {
      v40 = v26 - *v29;
      v32 = v40 < 0.0;
      if (v40 == 0.0)
      {
        break;
      }
    }

    if (v32)
    {
      goto LABEL_20;
    }

LABEL_16:
    v15 = v18;
    v19 += 8;
    if (++v18 == a2)
    {
      return 1;
    }
  }

  if (v27 >= v30)
  {
    goto LABEL_16;
  }

LABEL_20:
  *v18 = *v15;
  v33 = v19;
  while (1)
  {
    v34 = *(a1 + v33 + 8);
    v35 = (v21 + 16 * v34);
    v36 = v35[1];
    v37 = v28 - ((*v35 - v22) * (*v35 - v22) + (v36 - v23) * (v36 - v23));
    v38 = v37 < 0.0;
    if (v37 == 0.0)
    {
      v39 = v26 - *v35;
      v38 = v39 < 0.0;
      if (v39 == 0.0)
      {
        break;
      }
    }

    if (!v38)
    {
      goto LABEL_28;
    }

LABEL_24:
    *(a1 + v33 + 16) = v34;
    v33 -= 8;
    if (v33 == -16)
    {
      *a1 = v24;
      if (++v20 != 8)
      {
        goto LABEL_16;
      }

      return v18 + 1 == a2;
    }
  }

  if (v27 < v36)
  {
    goto LABEL_24;
  }

LABEL_28:
  *(a1 + v33 + 16) = v24;
  if (++v20 != 8)
  {
    goto LABEL_16;
  }

  return v18 + 1 == a2;
}

uint64_t *sub_121C380(uint64_t *a1, uint64_t *a2, uint64_t *a3, double *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_121C608(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; ++i)
      {
        v13 = *i;
        v14 = **a4;
        v15 = (v14 + 16 * *i);
        v16 = v15[1];
        v17 = a4[1];
        v18 = (v14 + 16 * *a1);
        v19 = v18[1];
        v20 = (*v15 - v17) * (*v15 - v17) + (v16 - a4[2]) * (v16 - a4[2]) - ((*v18 - v17) * (*v18 - v17) + (v19 - a4[2]) * (v19 - a4[2]));
        v21 = v20 < 0.0;
        if (v20 == 0.0 && (v22 = *v15 - *v18, v21 = v22 < 0.0, v22 == 0.0))
        {
          if (v16 >= v19)
          {
            continue;
          }
        }

        else if (!v21)
        {
          continue;
        }

        *i = *a1;
        *a1 = v13;
        sub_121C608(a1, a4, v8, a1);
      }
    }

    if (v8 < 2)
    {
      return i;
    }

LABEL_18:
    v24 = 0;
    v25 = *a1;
    v26 = *a4;
    v27 = a4[1];
    v28 = a4[2];
    v29 = a1;
    while (1)
    {
      v30 = v29;
      v31 = &v29[v24];
      v29 = v31 + 1;
      v32 = 2 * v24;
      v24 = (2 * v24) | 1;
      v33 = v32 + 2;
      if (v33 < v8)
      {
        v35 = v31[2];
        v34 = v31 + 2;
        v36 = (*v26 + 16 * *(v34 - 1));
        v37 = v36[1];
        v38 = (*v26 + 16 * v35);
        v39 = v38[1];
        v40 = (*v36 - v27) * (*v36 - v27) + (v37 - v28) * (v37 - v28) - ((*v38 - v27) * (*v38 - v27) + (v39 - v28) * (v39 - v28));
        v41 = v40 < 0.0;
        if (v40 == 0.0 && (v42 = *v36 - *v38, v41 = v42 < 0.0, v42 == 0.0))
        {
          if (v37 >= v39)
          {
            goto LABEL_20;
          }
        }

        else if (!v41)
        {
          goto LABEL_20;
        }

        v29 = v34;
        v24 = v33;
      }

LABEL_20:
      *v30 = *v29;
      if (v24 > ((v8 - 2) >> 1))
      {
        if (v29 == --v6)
        {
          *v29 = v25;
          v23 = v8-- <= 2;
          if (v23)
          {
            return i;
          }

          goto LABEL_18;
        }

        *v29 = *v6;
        *v6 = v25;
        sub_121C85C(a1, (v29 + 1), a4, v29 + 1 - a1, v27);
        v23 = v8-- <= 2;
        if (v23)
        {
          return i;
        }

        goto LABEL_18;
      }
    }
  }

  return a3;
}

uint64_t sub_121C608(uint64_t result, double *a2, uint64_t a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 3)
  {
    return result;
  }

  v6 = v4 >> 2;
  v7 = (v4 >> 2) + 1;
  v8 = (result + 8 * v7);
  v9 = v6 + 2;
  v10 = **a2;
  if (v9 >= a3)
  {
    v14 = a2[1];
    v15 = a2[2];
  }

  else
  {
    v11 = (v10 + 16 * *v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = a2[1];
    v15 = a2[2];
    v16 = (*v11 - v14) * (*v11 - v14) + (v12 - v15) * (v12 - v15);
    v17 = (v10 + 16 * v8[1]);
    v18 = v17[1];
    v19 = v16 - ((*v17 - v14) * (*v17 - v14) + (v18 - v15) * (v18 - v15));
    v20 = v19 < 0.0;
    if (v19 == 0.0 && (v21 = v13 - *v17, v20 = v21 < 0.0, v21 == 0.0))
    {
      if (v12 >= v18)
      {
        goto LABEL_11;
      }
    }

    else if (!v20)
    {
      goto LABEL_11;
    }

    ++v8;
    v7 = v9;
  }

LABEL_11:
  v22 = *a4;
  v23 = (v10 + 16 * *v8);
  v25 = *v23;
  v24 = v23[1];
  v26 = (*v23 - v14) * (*v23 - v14) + (v24 - v15) * (v24 - v15);
  v27 = (v10 + 16 * *a4);
  v28 = *v27;
  v29 = v27[1];
  v30 = (*v27 - v14) * (*v27 - v14) + (v29 - v15) * (v29 - v15);
  v31 = v26 - v30;
  v32 = v31 < 0.0;
  if (v31 == 0.0 && (v33 = v25 - v28, v32 = v33 < 0.0, v33 == 0.0))
  {
    if (v24 >= v29)
    {
LABEL_17:
      *a4 = *v8;
      while (1)
      {
        if (v5 < v7)
        {
LABEL_36:
          *v8 = v22;
          return result;
        }

        v38 = v8;
        v39 = 2 * v7;
        v7 = (2 * v7) | 1;
        v8 = (result + 8 * v7);
        v40 = v39 + 2;
        if (v40 < a3)
        {
          v41 = (v10 + 16 * *v8);
          v43 = *v41;
          v42 = v41[1];
          v44 = (*v41 - v14) * (*v41 - v14) + (v42 - v15) * (v42 - v15);
          v45 = (v10 + 16 * v8[1]);
          v46 = v45[1];
          v47 = v44 - ((*v45 - v14) * (*v45 - v14) + (v46 - v15) * (v46 - v15));
          v48 = v47 < 0.0;
          if (v47 == 0.0 && (v50 = v43 - *v45, v48 = v50 < 0.0, v50 == 0.0))
          {
            if (v42 >= v46)
            {
              goto LABEL_18;
            }
          }

          else if (!v48)
          {
            goto LABEL_18;
          }

          ++v8;
          v7 = v40;
        }

LABEL_18:
        v34 = (v10 + 16 * *v8);
        v35 = v34[1];
        v36 = (*v34 - v14) * (*v34 - v14) + (v35 - v15) * (v35 - v15) - v30;
        v37 = v36 < 0.0;
        if (v36 == 0.0 && (v49 = *v34 - v28, v37 = v49 < 0.0, v49 == 0.0))
        {
          if (v35 < v29)
          {
LABEL_35:
            v8 = v38;
            goto LABEL_36;
          }
        }

        else if (v37)
        {
          goto LABEL_35;
        }

        *v38 = *v8;
      }
    }
  }

  else if (!v32)
  {
    goto LABEL_17;
  }

  return result;
}

double sub_121C85C(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double result)
{
  v5 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v5 >> 1;
    v7 = (a1 + 8 * (v5 >> 1));
    v8 = *(a2 - 8);
    v9 = **a3;
    v10 = (v9 + 16 * *v7);
    v12 = *v10;
    v11 = v10[1];
    result = a3[1];
    v13 = a3[2];
    v14 = (*v10 - result) * (*v10 - result) + (v11 - v13) * (v11 - v13);
    v15 = (v9 + 16 * v8);
    v16 = *v15;
    v17 = v15[1];
    v18 = (*v15 - result) * (*v15 - result) + (v17 - v13) * (v17 - v13);
    v19 = v14 - v18;
    v20 = v19 < 0.0;
    if (v19 == 0.0 && (v28 = v12 - v16, v20 = v28 < 0.0, v28 == 0.0))
    {
      if (v11 >= v17)
      {
        return result;
      }
    }

    else if (!v20)
    {
      return result;
    }

    *(a2 - 8) = *v7;
    if (v5 >= 2)
    {
      while (1)
      {
        v22 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v21 = (a1 + 8 * v6);
        v23 = (v9 + 16 * *v21);
        v24 = v23[1];
        v25 = (*v23 - result) * (*v23 - result) + (v24 - v13) * (v24 - v13) - v18;
        v26 = v25 < 0.0;
        if (v25 == 0.0 && (v27 = *v23 - v16, v26 = v27 < 0.0, v27 == 0.0))
        {
          if (v24 >= v17)
          {
LABEL_15:
            *v7 = v8;
            return result;
          }
        }

        else if (!v26)
        {
          goto LABEL_15;
        }

        *v7 = *v21;
        v7 = (a1 + 8 * v6);
        if (v22 <= 1)
        {
          goto LABEL_7;
        }
      }
    }

    v21 = (a1 + 8 * (v5 >> 1));
LABEL_7:
    *v21 = v8;
  }

  return result;
}

void *sub_121C9AC(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x200000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:21: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
  }

  v3 = result[5];
  if (v3)
  {
    *(v3 + 108) = 0;
  }

  *result = a2;
  result[1] = a3;
  return result;
}

void *sub_121CA34(uint64_t a1)
{
  v1 = (a1 + 40);
  if (*(a1 + 40))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x100000024;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:36: MARISA_STATE_ERROR: state_.get() != NULL";
    goto LABEL_8;
  }

  v2 = operator new(0x70uLL, &std::nothrow);
  if (v2)
  {
    *(v2 + 25) = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    *(v2 + 73) = 0u;
    *(v2 + 12) = 0;
    *(v2 + 13) = 0;
  }

  result = sub_121CB40(v1, v2);
  if (!*v1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x800000026;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:38: MARISA_MEMORY_ERROR: state_.get() == NULL";
LABEL_8:
    exception[3] = v5;
  }

  return result;
}

void *sub_121CB40(uint64_t *a1, uint64_t a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
  }

  v4 = *a1;
  *a1 = a2;
  return sub_121CC1C(&v4);
}

void sub_121CBDC(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void *sub_121CC1C(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (v1[6])
    {
      operator delete[]();
    }

    if (*v1)
    {
      operator delete[]();
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_121CC98(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = -1;
  return result;
}

uint64_t sub_121CCB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    munmap(v2, *(a1 + 24));
  }

  v3 = *(a1 + 32);
  if (v3 != -1)
  {
    close(v3);
  }

  return a1;
}

uint64_t *sub_121CD00(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v4 = result[1];
  v3 = result[2];
  v5 = a2[2];
  result[1] = a2[1];
  result[2] = v5;
  a2[1] = v4;
  a2[2] = v3;
  v6 = result[3];
  result[3] = a2[3];
  a2[3] = v6;
  LODWORD(v6) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_121CD44(__int128 *a1, uint64_t a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x20000003FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:63: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v3 = *a1;
  v4 = a1[1];
  *a1 = a2;
  *(a1 + 1) = -1;
  a1[1] = a3;
  v8[0] = v3;
  v8[1] = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = -1;
  v9 = v5;
  return sub_121CCB0(v8);
}

uint64_t sub_121CDF4(uint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000047;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:71: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (a1[2] < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000048;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:72: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
  }

  return sub_121CED0(a1, a2);
}

uint64_t sub_121CED0(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000063;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:99: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
  }

  v3 = a1[2];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000064;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:100: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *a1 = v2 + a2;
  a1[2] = v5;
  return v2;
}

uint64_t sub_121CFAC(uint64_t a1)
{
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 185) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 345) = 0u;
  *(a1 + 393) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 297) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 441) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 553) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 601) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 505) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 649) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 697) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  sub_121F690((a1 + 744));
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 3;
  *(a1 + 1080) = 0x100000000200;
  *(a1 + 1088) = 0x20000;
  sub_121CC98(a1 + 1096);
  return a1;
}