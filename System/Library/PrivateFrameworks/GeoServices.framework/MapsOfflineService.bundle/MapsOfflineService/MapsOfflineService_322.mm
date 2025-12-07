char *sub_13326E8(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 24);
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

      v7 = *(*(a1 + 32) + 4 * i);
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

  if (*(a1 + 16))
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v12 = *(a1 + 40);
    *v8 = 21;
    *(v8 + 1) = v12;
    v8 += 5;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v16)
  {
    v18 = v16;
    memcpy(v8, v17, v16);
    v8 += v18;
    return v8;
  }

  return sub_1957130(a3, v17, v16, v8);
}

uint64_t sub_1332874(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 32) + 4 * v2);
      if (v4 < 0)
      {
        v5 = 10;
      }

      else
      {
        v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v5;
      ++v2;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = 0;
  }

  v6 = v3 + v1;
  if (*(a1 + 16))
  {
    v6 += 5;
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

    v6 += v10;
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_133290C(std::string *result, uint64_t a2)
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

  if (*(a2 + 16))
  {
    v8 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = v8;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_13329E4(uint64_t a1)
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
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1332AA4(uint64_t a1)
{
  sub_13329E4(a1);

  operator delete();
}

uint64_t sub_1332ADC(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
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
  if ((v3 & 0x7C) != 0)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_1332BA8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v42, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v42 + 1);
    v8 = **v42;
    if (**v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v42 + 2);
      }
    }

    *v42 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v8 >> 3 > 6)
      {
        if (v11 == 7)
        {
          if (v8 == 58)
          {
            v29 = v7 - 1;
            while (1)
            {
              v30 = (v29 + 1);
              *v42 = v29 + 1;
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
                v30 = *v42;
              }

              v29 = sub_1958890(v33, v30, a3);
              *v42 = v29;
              if (!v29)
              {
                goto LABEL_79;
              }

              if (*a3 <= v29 || *v29 != 58)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_61;
        }

        if (v11 != 8 || v8 != 66)
        {
          goto LABEL_61;
        }

        *(a1 + 16) |= 2u;
        v21 = *(a1 + 8);
        v16 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v16 = *v16;
        }

        v17 = (a1 + 56);
        goto LABEL_36;
      }

      if (v11 != 5)
      {
        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_61;
        }

        *(a1 + 16) |= 1u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 48);
LABEL_36:
        v22 = sub_194DB04(v17, v16);
        v23 = sub_1958890(v22, *v42, a3);
        goto LABEL_68;
      }

      if (v8 != 40)
      {
        goto LABEL_61;
      }

      v26 = v7 + 1;
      v25 = *v7;
      if (v25 < 0)
      {
        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          *v42 = sub_19587DC(v7, v25);
          if (!*v42)
          {
            goto LABEL_79;
          }

          goto LABEL_44;
        }

        v26 = v7 + 2;
      }

      *v42 = v26;
LABEL_44:
      if (v25 > 5)
      {
        sub_12E85B8();
      }

      else
      {
        *(a1 + 16) |= 0x40u;
        *(a1 + 92) = v25;
      }

      goto LABEL_69;
    }

    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 == 25)
      {
        v28 = *v7;
        v13 = v7 + 8;
        v5 |= 0x10u;
        *(a1 + 80) = v28;
        goto LABEL_48;
      }

      goto LABEL_61;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_61;
    }

    v5 |= 0x20u;
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_29:
      *v42 = v18;
      *(a1 + 88) = v19;
      goto LABEL_69;
    }

    v40 = sub_1958770(v7, v19);
    *v42 = v40;
    *(a1 + 88) = v41;
    if (!v40)
    {
      goto LABEL_79;
    }

LABEL_69:
    if (sub_195ADC0(a3, v42, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v24 = *v7;
      v13 = v7 + 8;
      v5 |= 4u;
      *(a1 + 64) = v24;
      goto LABEL_48;
    }
  }

  else if (v11 == 2 && v8 == 17)
  {
    v14 = *v7;
    v13 = v7 + 8;
    v5 |= 8u;
    *(a1 + 72) = v14;
LABEL_48:
    *v42 = v13;
    goto LABEL_69;
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
      v7 = *v42;
    }

    v23 = sub_1952690(v8, v39, v7, a3);
LABEL_68:
    *v42 = v23;
    if (!v23)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_79:
  *v42 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v42;
}

char *sub_1332FA0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 64);
    *__dst = 9;
    *(__dst + 1) = v7;
    __dst += 9;
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v9 = *(a1 + 80);
      *__dst = 25;
      *(__dst + 1) = v9;
      __dst += 9;
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 72);
  *__dst = 17;
  *(__dst + 1) = v8;
  __dst += 9;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    v6 = __dst;
    goto LABEL_22;
  }

LABEL_15:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 88);
  *__dst = 32;
  __dst[1] = v10;
  if (v10 > 0x7F)
  {
    __dst[1] = v10 | 0x80;
    v11 = v10 >> 7;
    __dst[2] = v10 >> 7;
    v6 = __dst + 3;
    if (v10 >= 0x4000)
    {
      LOBYTE(v12) = __dst[2];
      do
      {
        *(v6 - 1) = v12 | 0x80;
        v12 = v11 >> 7;
        *v6++ = v11 >> 7;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_22:
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 92);
    *v6 = 40;
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v6[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v6[2] = v15 >> 7;
      v14 = v6 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v14 - 1) = v6 | 0x80;
          v6 = (v16 >> 7);
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v6 + 2;
    }
  }

  else
  {
    v14 = v6;
  }

  if (v5)
  {
    v14 = sub_128AEEC(a3, 6, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v14);
  }

  v18 = *(a1 + 32);
  if (v18 >= 1)
  {
    v19 = 8;
    do
    {
      v20 = *(*(a1 + 40) + v19);
      v21 = *(v20 + 23);
      if (v21 < 0 && (v21 = v20[1], v21 > 127) || (*a3 - v14 + 14) < v21)
      {
        v14 = sub_1957480(a3, 7, v20, v14);
      }

      else
      {
        *v14 = 58;
        v14[1] = v21;
        if (*(v20 + 23) < 0)
        {
          v20 = *v20;
        }

        v22 = v14 + 2;
        memcpy(v22, v20, v21);
        v14 = &v22[v21];
      }

      v19 += 8;
      --v18;
    }

    while (v18);
  }

  if ((v5 & 2) != 0)
  {
    v14 = sub_128AEEC(a3, 8, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v14);
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v14;
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

  if ((*a3 - v14) >= v26)
  {
    v28 = v26;
    memcpy(v14, v27, v26);
    v14 += v28;
    return v14;
  }

  return sub_1957130(a3, v27, v26, v14);
}

uint64_t sub_13332E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v2 = (*(a1 + 40) + 8);
    v3 = *(a1 + 32);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  v7 = *(a1 + 16);
  if ((v7 & 0x7F) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v7 & 2) != 0)
    {
      v11 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v7 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v7 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v7 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v7 & 0x20) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v7 & 0x40) != 0)
    {
      v14 = *(a1 + 92);
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 11;
      }

      v3 += v16;
    }
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v3 += v20;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_133348C(uint64_t a1, uint64_t a2)
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

        goto LABEL_24;
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

LABEL_24:
    *(a1 + 64) = *(a2 + 64);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(a1 + 72) = *(a2 + 72);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(a1 + 80) = *(a2 + 80);
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
      *(a1 + 92) = *(a2 + 92);
      goto LABEL_13;
    }

LABEL_27:
    *(a1 + 88) = *(a2 + 88);
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

void *sub_1333638(void *a1)
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

void sub_13336AC(void *a1)
{
  sub_1333638(a1);

  operator delete();
}

uint64_t sub_13336E4(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
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

char *sub_1333710(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 == 25)
      {
        v18 = *v7;
        v16 = v7 + 8;
        v5 |= 4u;
        *(a1 + 40) = v18;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_33;
      }

      v5 |= 8u;
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
        v30 = v20;
        *(a1 + 48) = v19 != 0;
        goto LABEL_40;
      }

      v26 = sub_19587DC(v7, v19);
      v30 = v26;
      *(a1 + 48) = v27 != 0;
      if (!v26)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_33;
      }

      v5 |= 0x10u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_15:
        v30 = v13;
        *(a1 + 49) = v12 != 0;
        goto LABEL_40;
      }

      v28 = sub_19587DC(v7, v12);
      v30 = v28;
      *(a1 + 49) = v29 != 0;
      if (!v28)
      {
        goto LABEL_49;
      }
    }

LABEL_40:
    if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v22 = *v7;
      v16 = v7 + 8;
      v5 |= 1u;
      *(a1 + 24) = v22;
      goto LABEL_32;
    }
  }

  else if (v11 == 2 && v8 == 17)
  {
    v17 = *v7;
    v16 = v7 + 8;
    v5 |= 2u;
    *(a1 + 32) = v17;
LABEL_32:
    v30 = v16;
    goto LABEL_40;
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
      v7 = v30;
    }

    v30 = sub_1952690(v8, v25, v7, a3);
    if (!v30)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_133398C(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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

  v8 = *(a1 + 32);
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 40);
  *v4 = 25;
  *(v4 + 1) = v9;
  v4 += 9;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 48);
  *v4 = 32;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_19:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 49);
    *v4 = 40;
    v4[1] = v11;
    v4 += 2;
  }

LABEL_22:
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

uint64_t sub_1333B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 4) != 0)
  {
    v2 += 9;
  }

  v3 = v2 + ((v1 >> 3) & 2) + ((v1 >> 2) & 2);
  if ((v1 & 0x1F) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
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

    v4 += v8;
  }

  *(a1 + 20) = v4;
  return v4;
}

std::string *sub_1333BD8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_9;
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

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    result[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result[2].__r_.__value_.__s.__data_[1] = *(a2 + 49);
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

uint64_t sub_1333C74(uint64_t a1)
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

void sub_1333D14(uint64_t a1)
{
  sub_1333C74(a1);

  operator delete();
}

uint64_t sub_1333D4C(uint64_t a1)
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

uint64_t sub_1333D94(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].u32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].u32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 21)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 4;
    goto LABEL_24;
  }

LABEL_11:
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
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_1333F20(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 21;
    *(v4 + 1) = v7;
    v4 += 5;
  }

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

uint64_t sub_1334020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
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
      v3 = v2 + 5;
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

uint64_t sub_13340D0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D5668;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1334170(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D56E8;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

double sub_13341F8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D5768;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_1334278(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D57E8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = &qword_278E990;
  *(v2 + 80) = &qword_278E990;
  result = 0.0;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 116) = 0u;
  return result;
}

void *sub_1334338(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D5868;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_13343B4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D58E8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  return result;
}

uint64_t sub_1334460(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D5968;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

double sub_13344FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D59E8;
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
  return result;
}

double sub_13345A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D5A68;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_1334628(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D5AE8;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_13346B0(uint64_t a1)
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
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1334758(uint64_t a1)
{
  sub_13346B0(a1);

  operator delete();
}

uint64_t sub_1334790(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1334814(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  if (sub_195ADC0(a3, v26, a3[11].u32[1]))
  {
    return *v26;
  }

  while (1)
  {
    v6 = (*v26 + 1);
    v7 = **v26;
    if (**v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v26 + 2);
      }
    }

    *v26 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 48), v24);
    v14 = sub_1958890(v25, *v26, a3);
LABEL_34:
    *v26 = v14;
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_35:
    if (sub_195ADC0(a3, v26, a3[11].u32[1]))
    {
      return *v26;
    }
  }

  if (v7 == 18)
  {
    v15 = v6 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      *v26 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        *v22 = v21;
        v22[1] = sub_195A650;
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
        v19 = sub_19593CC(a1 + 24, v21);
        v16 = *v26;
      }

      v15 = sub_1958890(v19, v16, a3);
      *v26 = v15;
      if (!v15)
      {
        goto LABEL_40;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_35;
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
      v6 = *v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_34;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v26;
  }

LABEL_40:
  *v26 = 0;
  return *v26;
}

char *sub_1334A58(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - v4 + 14) < v9)
      {
        v4 = sub_1957480(a3, 2, v8, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = v4 + 2;
        memcpy(v10, v8, v9);
        v4 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
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

uint64_t sub_1334BD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v2 = (*(a1 + 40) + 8);
    v3 = *(a1 + 32);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  if (*(a1 + 16))
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1334CC0(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26D5BE8;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_1334CF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D5BE8;
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
    sub_1347370((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_1334DE8(_Unwind_Exception *a1)
{
  sub_13472EC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1334E30(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13472EC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1334EB0(void *a1)
{
  sub_1334E30(a1);

  operator delete();
}

uint64_t sub_1334EE8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1334790(v4);
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

char *sub_1334F6C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_33:
      v26 = v22;
      *(a1 + 48) = v21;
      v5 = 1;
      goto LABEL_34;
    }

    v24 = sub_19587DC(v7, v21);
    v26 = v24;
    *(a1 + 48) = v25;
    v5 = 1;
    if (!v24)
    {
      goto LABEL_41;
    }

LABEL_34:
    if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    v15 = v7 - 1;
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
        v20 = sub_13355A8(*(a1 + 24));
        v19 = sub_19593CC(a1 + 24, v20);
        v16 = v26;
      }

      v15 = sub_21FC2B0(a3, v19, v16);
      v26 = v15;
      if (!v15)
      {
        goto LABEL_41;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_34;
      }
    }
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
      v7 = v26;
    }

    v26 = sub_1952690(v8, v14, v7, a3);
    if (!v26)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_1335184(uint64_t a1, char *__dst, unint64_t *a3)
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

      v5 = sub_1334A58(v12, v14, a3);
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

uint64_t sub_1335348(uint64_t a1)
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
      v7 = sub_1334BD0(v6);
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
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

  *(a1 + 20) = v2;
  return v2;
}

void sub_1335418(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1347370((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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

void sub_13354F0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_1334EE8(result);

    sub_1335418(result, a2);
  }
}

__n128 sub_1335544(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  return result;
}

void *sub_13355A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D5B68;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_133564C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D5BE8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_13356E8(uint64_t a1)
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

void sub_13357A0(uint64_t a1)
{
  sub_13356E8(a1);

  operator delete();
}

uint64_t sub_13357D8(uint64_t a1)
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

uint64_t sub_1335854(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_13359D4(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1335ABC(uint64_t a1)
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

uint64_t sub_1335BA8(uint64_t a1)
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

  if (a1 != &off_276B8E0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_14FF2C8(v6);
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

void sub_1335C74(uint64_t a1)
{
  sub_1335BA8(a1);

  operator delete();
}

uint64_t sub_1335CAC(uint64_t result)
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
      result = sub_14FD484(*(result + 32));
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

uint64_t sub_1335D40(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

          sub_1529410(v17);
          v15 = v18;
          *(a1 + 32) = v18;
          v6 = *v23;
        }

        v14 = sub_21FC340(a3, v15, v6);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = sub_194DB04((a1 + 24), v20);
      v14 = sub_1958890(v21, *v23, a3);
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
        return *v23;
      }

LABEL_34:
      *v23 = 0;
      return *v23;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v23;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_28:
    *v23 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  return *v23;
}

char *sub_1335EDC(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_14FF5C8(v7, v9, a3);
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

uint64_t sub_1336008(uint64_t a1)
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
    v7 = sub_14FF7DC(*(a1 + 32));
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

void sub_13360E4(uint64_t a1, uint64_t a2)
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

        sub_1529410(v10);
        *(a1 + 32) = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_2775388;
      }

      sub_14FD510(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13361E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  if ((v1 & 0x3F00) != 0)
  {
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
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

uint64_t sub_1336234(uint64_t a1)
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

std::string *sub_1336258(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
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

        goto LABEL_25;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }

LABEL_25:
    result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }

LABEL_26:
    result[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }

LABEL_27:
    result[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }

LABEL_28:
    result[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
        goto LABEL_12;
      }

LABEL_10:
      result[3].__r_.__value_.__l.__size_ = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_29:
    result[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x3F00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    result[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    if ((v2 & 0x200) == 0)
    {
LABEL_15:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  result[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  result[4].__r_.__value_.__l.__size_ = *(a2 + 104);
  if ((v2 & 0x800) == 0)
  {
LABEL_17:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

LABEL_35:
    result[5].__r_.__value_.__r.__words[0] = *(a2 + 120);
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_34:
  result[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
  if ((v2 & 0x1000) != 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  if ((v2 & 0x2000) != 0)
  {
LABEL_19:
    result[5].__r_.__value_.__l.__size_ = *(a2 + 128);
  }

LABEL_20:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_21:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1336380(std::string *result, uint64_t a2)
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

uint64_t sub_13363CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 24);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_14D9038(*(*(v4 + 32) + 8 * v5));
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

uint64_t sub_1336458(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 24);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_14F252C(*(*(v4 + 32) + 8 * v5));
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

void *sub_13364E4(void *a1)
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

void sub_1336558(void *a1)
{
  sub_13364E4(a1);

  operator delete();
}

char *sub_1336590(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v18, a3[11].u32[1]))
  {
    goto LABEL_28;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 17)
      {
        v15 = *v6;
        v14 = v6 + 8;
        v5 |= 2u;
        *(a1 + 32) = v15;
LABEL_22:
        v18 = v14;
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 9)
    {
      v16 = *v6;
      v14 = v6 + 8;
      v5 |= 1u;
      *(a1 + 24) = v16;
      goto LABEL_22;
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
      v6 = v18;
    }

    v18 = sub_1952690(v7, v13, v6, a3);
    if (!v18)
    {
      goto LABEL_29;
    }

LABEL_23:
    if (sub_195ADC0(a3, &v18, a3[11].u32[1]))
    {
      goto LABEL_28;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_28;
  }

LABEL_29:
  v18 = 0;
LABEL_28:
  *(a1 + 16) |= v5;
  return v18;
}

char *sub_13366F4(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 17;
    *(v4 + 1) = v8;
    v4 += 9;
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

uint64_t sub_133680C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 3) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    v3 += v7;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1336878(void *a1)
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

void sub_13368EC(void *a1)
{
  sub_1336878(a1);

  operator delete();
}

uint64_t sub_1336924(uint64_t a1)
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

char *sub_133694C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
  {
    goto LABEL_32;
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
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 8)
    {
      goto LABEL_11;
    }

    v5 |= 2u;
    v14 = v6 + 1;
    v15 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v16 = *v14;
    v15 = v15 + (v16 << 7) - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v14 = v6 + 2;
LABEL_24:
      v20 = v14;
      *(a1 + 32) = v15;
      goto LABEL_25;
    }

    v17 = sub_1958770(v6, v15);
    v20 = v17;
    *(a1 + 32) = v18;
    if (!v17)
    {
      goto LABEL_33;
    }

LABEL_25:
    if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
    {
      goto LABEL_32;
    }
  }

  if (v7 == 17)
  {
    v5 |= 1u;
    *(a1 + 24) = *v6;
    v20 = v6 + 8;
    goto LABEL_25;
  }

LABEL_11:
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
      v6 = v20;
    }

    v20 = sub_1952690(v7, v13, v6, a3);
    if (!v20)
    {
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_32;
  }

LABEL_33:
  v20 = 0;
LABEL_32:
  *(a1 + 16) |= v5;
  return v20;
}

char *sub_1336AF0(uint64_t a1, char *__dst, void *a3)
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
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
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

  if (*a3 - v6 >= v15)
  {
    v17 = v15;
    memcpy(v6, v16, v15);
    v6 += v17;
    return v6;
  }

  return sub_1957130(a3, v16, v15, v6);
}

uint64_t sub_1336C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
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

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_1336CE0(uint64_t a1)
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

void sub_1336D80(uint64_t a1)
{
  sub_1336CE0(a1);

  operator delete();
}

uint64_t sub_1336DB8(uint64_t a1)
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

uint64_t sub_1336E00(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].u32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 3)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].u32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 25)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 8;
    goto LABEL_24;
  }

LABEL_11:
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
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_1336F8C(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 25;
    *(v4 + 1) = v7;
    v4 += 9;
  }

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

uint64_t sub_133708C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
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

void *sub_133713C(void *a1)
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

void sub_13371B0(void *a1)
{
  sub_133713C(a1);

  operator delete();
}

char *sub_13371E8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v29 + 1;
    v8 = *v29;
    if (*v29 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v29, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v29 + 2;
      }
    }

    v29 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 9)
        {
          goto LABEL_39;
        }

        v12 = *v7;
        v11 = v7 + 8;
        v5 |= 1u;
        *(a1 + 24) = v12;
        goto LABEL_36;
      case 2u:
        if (v8 != 17)
        {
          goto LABEL_39;
        }

        v20 = *v7;
        v11 = v7 + 8;
        v5 |= 2u;
        *(a1 + 32) = v20;
        goto LABEL_36;
      case 3u:
        if (v8 != 25)
        {
          goto LABEL_39;
        }

        v17 = *v7;
        v11 = v7 + 8;
        v5 |= 4u;
        *(a1 + 40) = v17;
        goto LABEL_36;
      case 4u:
        if (v8 != 33)
        {
          goto LABEL_39;
        }

        v18 = *v7;
        v11 = v7 + 8;
        v5 |= 8u;
        *(a1 + 48) = v18;
        goto LABEL_36;
      case 5u:
        if (v8 != 41)
        {
          goto LABEL_39;
        }

        v14 = *v7;
        v11 = v7 + 8;
        v5 |= 0x10u;
        *(a1 + 56) = v14;
        goto LABEL_36;
      case 6u:
        if (v8 != 49)
        {
          goto LABEL_39;
        }

        v21 = *v7;
        v11 = v7 + 8;
        v5 |= 0x20u;
        *(a1 + 64) = v21;
        goto LABEL_36;
      case 7u:
        if (v8 != 57)
        {
          goto LABEL_39;
        }

        v23 = *v7;
        v11 = v7 + 8;
        v5 |= 0x40u;
        *(a1 + 72) = v23;
        goto LABEL_36;
      case 8u:
        if (v8 != 65)
        {
          goto LABEL_39;
        }

        v19 = *v7;
        v11 = v7 + 8;
        v5 |= 0x80u;
        *(a1 + 80) = v19;
        goto LABEL_36;
      case 9u:
        if (v8 != 73)
        {
          goto LABEL_39;
        }

        v25 = *v7;
        v11 = v7 + 8;
        v5 |= 0x100u;
        *(a1 + 88) = v25;
        goto LABEL_36;
      case 0xAu:
        if (v8 != 81)
        {
          goto LABEL_39;
        }

        v16 = *v7;
        v11 = v7 + 8;
        v5 |= 0x200u;
        *(a1 + 96) = v16;
        goto LABEL_36;
      case 0xBu:
        if (v8 != 89)
        {
          goto LABEL_39;
        }

        v24 = *v7;
        v11 = v7 + 8;
        v5 |= 0x400u;
        *(a1 + 104) = v24;
        goto LABEL_36;
      case 0xCu:
        if (v8 != 97)
        {
          goto LABEL_39;
        }

        v13 = *v7;
        v11 = v7 + 8;
        v5 |= 0x800u;
        *(a1 + 112) = v13;
        goto LABEL_36;
      case 0xDu:
        if (v8 != 105)
        {
          goto LABEL_39;
        }

        v15 = *v7;
        v11 = v7 + 8;
        v5 |= 0x1000u;
        *(a1 + 120) = v15;
        goto LABEL_36;
      case 0xEu:
        if (v8 != 113)
        {
          goto LABEL_39;
        }

        v22 = *v7;
        v11 = v7 + 8;
        v5 |= 0x2000u;
        *(a1 + 128) = v22;
LABEL_36:
        v29 = v11;
        goto LABEL_37;
      default:
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
            v7 = v29;
          }

          v29 = sub_1952690(v8, v28, v7, a3);
          if (!v29)
          {
            goto LABEL_50;
          }

LABEL_37:
          if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
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
LABEL_50:
          v29 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v29;
    }
  }
}

char *sub_13374F8(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
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

  v8 = *(a1 + 32);
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 40);
  *v4 = 25;
  *(v4 + 1) = v9;
  v4 += 9;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 48);
  *v4 = 33;
  *(v4 + 1) = v10;
  v4 += 9;
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 56);
  *v4 = 41;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 64);
  *v4 = 49;
  *(v4 + 1) = v12;
  v4 += 9;
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 72);
  *v4 = 57;
  *(v4 + 1) = v13;
  v4 += 9;
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 80);
  *v4 = 65;
  *(v4 + 1) = v14;
  v4 += 9;
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 88);
  *v4 = 73;
  *(v4 + 1) = v15;
  v4 += 9;
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 96);
  *v4 = 81;
  *(v4 + 1) = v16;
  v4 += 9;
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 104);
  *v4 = 89;
  *(v4 + 1) = v17;
  v4 += 9;
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 112);
  *v4 = 97;
  *(v4 + 1) = v18;
  v4 += 9;
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 120);
  *v4 = 105;
  *(v4 + 1) = v19;
  v4 += 9;
  if ((v6 & 0x2000) != 0)
  {
LABEL_55:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v20 = *(a1 + 128);
    *v4 = 113;
    *(v4 + 1) = v20;
    v4 += 9;
  }

LABEL_58:
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

uint64_t sub_13378E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x40) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x80) != 0)
    {
      v2 += 9;
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x3F00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x200) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x400) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x800) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x1000) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x2000) != 0)
    {
      v2 += 9;
    }
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

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_13379F4(void *a1)
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

void sub_1337A68(void *a1)
{
  sub_13379F4(a1);

  operator delete();
}

uint64_t sub_1337AA0(uint64_t a1)
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

char *sub_1337AB8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v14 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v14, a3[11].u32[1]))
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = v14 + 1;
    v7 = *v14;
    if (*v14 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v14, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v14 + 2;
      }
    }

    v14 = v6;
    if (v7 == 9)
    {
      *(a1 + 24) = *v6;
      v14 = v6 + 8;
      v5 = 1;
      goto LABEL_16;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v14;
    }

    v14 = sub_1952690(v7, v12, v6, a3);
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_16:
    if (sub_195ADC0(a3, &v14, a3[11].u32[1]))
    {
      goto LABEL_21;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_21;
  }

LABEL_22:
  v14 = 0;
LABEL_21:
  *(a1 + 16) |= v5;
  return v14;
}

char *sub_1337BEC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 9;
    *(v4 + 1) = v6;
    v4 += 9;
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

uint64_t sub_1337CCC(uint64_t a1)
{
  v1 = 9;
  if ((*(a1 + 16) & 1) == 0)
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

std::string *sub_1337D0C(std::string *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    result[1].__r_.__value_.__r.__words[0] = v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1337D5C(uint64_t a1)
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

void sub_1337E14(uint64_t a1)
{
  sub_1337D5C(a1);

  operator delete();
}

uint64_t sub_1337E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

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
  if ((v1 & 0x3C) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1337ED8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 9)
      {
        goto LABEL_41;
      }

      v20 = *v7;
      v19 = v7 + 8;
      v5 |= 4u;
      *(a1 + 40) = v20;
      goto LABEL_35;
    }

    if (v11 == 2)
    {
      if (v8 != 17)
      {
        goto LABEL_41;
      }

      v24 = *v7;
      v19 = v7 + 8;
      v5 |= 8u;
      *(a1 + 48) = v24;
LABEL_35:
      *v35 = v19;
      goto LABEL_49;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 0x10u;
    v14 = v7 + 1;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = v13 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_18:
      *v35 = v14;
      *(a1 + 56) = v13;
      goto LABEL_49;
    }

    v33 = sub_19587DC(v7, v13);
    *v35 = v33;
    *(a1 + 56) = v34;
    if (!v33)
    {
      goto LABEL_58;
    }

LABEL_49:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_41;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v23 = (a1 + 24);
LABEL_40:
    v26 = sub_194DB04(v23, v22);
    v27 = sub_1958890(v26, *v35, a3);
LABEL_48:
    *v35 = v27;
    if (!v27)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_41;
    }

    v5 |= 0x20u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      *v35 = v17;
      *(a1 + 60) = v16;
      goto LABEL_49;
    }

    v31 = sub_19587DC(v7, v16);
    *v35 = v31;
    *(a1 + 60) = v32;
    if (!v31)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 2u;
    v25 = *(a1 + 8);
    v22 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v22 = *v22;
    }

    v23 = (a1 + 32);
    goto LABEL_40;
  }

LABEL_41:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = *v35;
    }

    v27 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_1338190(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 48);
    *__dst = 17;
    *(__dst + 1) = v8;
    __dst += 9;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 40);
  *__dst = 9;
  *(__dst + 1) = v7;
  __dst += 9;
  if ((v5 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 56);
  *__dst = 24;
  __dst[1] = v9;
  if (v9 > 0x7F)
  {
    __dst[1] = v9 | 0x80;
    v10 = v9 >> 7;
    __dst[2] = v9 >> 7;
    v6 = __dst + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = __dst[2];
      do
      {
        *(v6 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v6++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_18:
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v6 = sub_128AEEC(a3, 5, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v6);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v6 = sub_128AEEC(a3, 4, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((v5 & 0x20) == 0)
  {
LABEL_21:
    v13 = v6;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v14 = *(a1 + 60);
  *v6 = 48;
  v6[1] = v14;
  if (v14 > 0x7F)
  {
    v6[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v6[2] = v14 >> 7;
    v13 = v6 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v16) = v6[2];
      do
      {
        *(v13 - 1) = v16 | 0x80;
        v16 = v15 >> 7;
        *v13++ = v15 >> 7;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v13 = v6 + 2;
  }

LABEL_31:
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v13;
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

  if ((*a3 - v13) >= v21)
  {
    v23 = v21;
    memcpy(v13, v22, v21);
    v13 += v23;
    return v13;
  }

  return sub_1957130(a3, v22, v21, v13);
}

uint64_t sub_13383F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v2 = 0;
    goto LABEL_26;
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
    v2 += 9;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x10) != 0)
  {
    v9 = *(a1 + 56);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    v2 += v11;
  }

  if ((v1 & 0x20) != 0)
  {
    v12 = *(a1 + 60);
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 11;
    }

    v2 += v14;
  }

LABEL_26:
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

void sub_1338544(uint64_t a1, uint64_t a2)
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

      goto LABEL_21;
    }

LABEL_20:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 48) = *(a2 + 48);
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
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_9;
    }

LABEL_22:
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

void *sub_1338684(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 9));
  sub_1956ABC((a1 + 7));
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1338718(void *a1)
{
  sub_1338684(a1);

  operator delete();
}

uint64_t sub_1338750(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  if (*(a1 + 16))
  {
    *(a1 + 136) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 136) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1338794(uint64_t a1, char *a2, int32x2_t *a3)
{
  v85 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, &v85, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v85 + 1;
      v8 = *v85;
      if (*v85 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(v85, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = v85 + 2;
        }
      }

      v85 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_136;
          }

          v5 |= 1u;
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
            v85 = v12;
            *(a1 + 88) = v11;
            goto LABEL_144;
          }

          v70 = sub_19587DC(v7, v11);
          v85 = v70;
          *(a1 + 88) = v71;
          if (!v70)
          {
            goto LABEL_149;
          }

          goto LABEL_144;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_136;
          }

          v5 |= 2u;
          v45 = v7 + 1;
          v44 = *v7;
          if ((v44 & 0x8000000000000000) == 0)
          {
            goto LABEL_79;
          }

          v46 = *v45;
          v44 = (v46 << 7) + v44 - 128;
          if (v46 < 0)
          {
            v72 = sub_19587DC(v7, v44);
            v85 = v72;
            *(a1 + 96) = v73;
            if (!v72)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v45 = v7 + 2;
LABEL_79:
            v85 = v45;
            *(a1 + 96) = v44;
          }

          goto LABEL_144;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_136;
          }

          v5 |= 4u;
          v33 = v7 + 1;
          v32 = *v7;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if (v34 < 0)
          {
            v66 = sub_19587DC(v7, v32);
            v85 = v66;
            *(a1 + 104) = v67;
            if (!v66)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v33 = v7 + 2;
LABEL_55:
            v85 = v33;
            *(a1 + 104) = v32;
          }

          goto LABEL_144;
        case 4u:
          if (v8 == 32)
          {
            v35 = v7 - 1;
            while (1)
            {
              v85 = v35 + 1;
              v36 = v35[1];
              if (v36 < 0)
              {
                v37 = (v35[2] << 7) + v36;
                v36 = (v37 - 128);
                if (v35[2] < 0)
                {
                  v35 = sub_19587DC((v35 + 1), (v37 - 128));
                  v36 = v38;
                }

                else
                {
                  v35 += 3;
                }
              }

              else
              {
                v35 += 2;
              }

              v85 = v35;
              v39 = *(a1 + 24);
              if (v39 == *(a1 + 28))
              {
                v40 = v39 + 1;
                sub_1959094((a1 + 24), v39 + 1);
                *(*(a1 + 32) + 8 * v39) = v36;
                v35 = v85;
              }

              else
              {
                *(*(a1 + 32) + 8 * v39) = v36;
                v40 = v39 + 1;
              }

              *(a1 + 24) = v40;
              if (!v35)
              {
                goto LABEL_149;
              }

              if (*a3 <= v35 || *v35 != 32)
              {
                goto LABEL_144;
              }
            }
          }

          if (v8 == 34)
          {
            v80 = (a1 + 24);
LABEL_135:
            v81 = sub_1958938(v80, v7, a3);
          }

          else
          {
LABEL_136:
            if (v8)
            {
              v82 = (v8 & 7) == 4;
            }

            else
            {
              v82 = 1;
            }

            if (v82)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_149:
              v85 = 0;
              goto LABEL_2;
            }

            v83 = *(a1 + 8);
            if (v83)
            {
              v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v84 = sub_11F1920((a1 + 8));
              v7 = v85;
            }

            v81 = sub_1952690(v8, v84, v7, a3);
          }

          v85 = v81;
          if (!v81)
          {
            goto LABEL_149;
          }

LABEL_144:
          if (sub_195ADC0(a3, &v85, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_136;
          }

          v5 |= 8u;
          v21 = v7 + 1;
          v20 = *v7;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v62 = sub_19587DC(v7, v20);
            v85 = v62;
            *(a1 + 112) = v63;
            if (!v62)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v21 = v7 + 2;
LABEL_31:
            v85 = v21;
            *(a1 + 112) = v20;
          }

          goto LABEL_144;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_136;
          }

          v5 |= 0x20u;
          v48 = v7 + 1;
          LODWORD(v47) = *v7;
          if ((v47 & 0x80) == 0)
          {
            goto LABEL_84;
          }

          v49 = *v48;
          v47 = v47 + (v49 << 7) - 128;
          if (v49 < 0)
          {
            v74 = sub_19587DC(v7, v47);
            v85 = v74;
            *(a1 + 128) = v75;
            if (!v74)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v48 = v7 + 2;
LABEL_84:
            v85 = v48;
            *(a1 + 128) = v47;
          }

          goto LABEL_144;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_136;
          }

          v5 |= 0x10u;
          v51 = v7 + 1;
          v50 = *v7;
          if ((v50 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v52 = *v51;
          v50 = (v52 << 7) + v50 - 128;
          if (v52 < 0)
          {
            v76 = sub_19587DC(v7, v50);
            v85 = v76;
            *(a1 + 120) = v77;
            if (!v76)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v51 = v7 + 2;
LABEL_89:
            v85 = v51;
            *(a1 + 120) = v50;
          }

          goto LABEL_144;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_136;
          }

          v5 |= 0x80u;
          v42 = v7 + 1;
          v41 = *v7;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v43 = *v42;
          v41 = (v43 << 7) + v41 - 128;
          if (v43 < 0)
          {
            v68 = sub_19587DC(v7, v41);
            v85 = v68;
            *(a1 + 136) = v69;
            if (!v68)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v42 = v7 + 2;
LABEL_74:
            v85 = v42;
            *(a1 + 136) = v41;
          }

          goto LABEL_144;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_136;
          }

          v5 |= 0x40u;
          v60 = v7 + 1;
          v59 = *v7;
          if ((v59 & 0x8000000000000000) == 0)
          {
            goto LABEL_108;
          }

          v61 = *v60;
          v59 = (v61 << 7) + v59 - 128;
          if (v61 < 0)
          {
            v78 = sub_19587DC(v7, v59);
            v85 = v78;
            *(a1 + 132) = v79 != 0;
            if (!v78)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v60 = v7 + 2;
LABEL_108:
            v85 = v60;
            *(a1 + 132) = v59 != 0;
          }

          goto LABEL_144;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_136;
          }

          v5 |= 0x100u;
          v30 = v7 + 1;
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v64 = sub_19587DC(v7, v29);
            v85 = v64;
            *(a1 + 144) = v65;
            if (!v64)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v30 = v7 + 2;
LABEL_50:
            v85 = v30;
            *(a1 + 144) = v29;
          }

          goto LABEL_144;
        case 0xBu:
          if (v8 == 88)
          {
            v53 = v7 - 1;
            while (1)
            {
              v85 = v53 + 1;
              v54 = v53[1];
              if (v54 < 0)
              {
                v55 = (v53[2] << 7) + v54;
                v54 = (v55 - 128);
                if (v53[2] < 0)
                {
                  v53 = sub_19587DC((v53 + 1), (v55 - 128));
                  v54 = v56;
                }

                else
                {
                  v53 += 3;
                }
              }

              else
              {
                v53 += 2;
              }

              v85 = v53;
              v57 = *(a1 + 40);
              if (v57 == *(a1 + 44))
              {
                v58 = v57 + 1;
                sub_1959094((a1 + 40), v57 + 1);
                *(*(a1 + 48) + 8 * v57) = v54;
                v53 = v85;
              }

              else
              {
                *(*(a1 + 48) + 8 * v57) = v54;
                v58 = v57 + 1;
              }

              *(a1 + 40) = v58;
              if (!v53)
              {
                goto LABEL_149;
              }

              if (*a3 <= v53 || *v53 != 88)
              {
                goto LABEL_144;
              }
            }
          }

          if (v8 != 90)
          {
            goto LABEL_136;
          }

          v80 = (a1 + 40);
          goto LABEL_135;
        case 0xCu:
          if (v8 == 96)
          {
            v14 = v7 - 1;
            while (1)
            {
              v85 = v14 + 1;
              v15 = v14[1];
              if (v15 < 0)
              {
                v16 = (v14[2] << 7) + v15;
                v15 = (v16 - 128);
                if (v14[2] < 0)
                {
                  v14 = sub_19587DC((v14 + 1), (v16 - 128));
                  v15 = v17;
                }

                else
                {
                  v14 += 3;
                }
              }

              else
              {
                v14 += 2;
              }

              v85 = v14;
              v18 = *(a1 + 56);
              if (v18 == *(a1 + 60))
              {
                v19 = v18 + 1;
                sub_1959094((a1 + 56), v18 + 1);
                *(*(a1 + 64) + 8 * v18) = v15;
                v14 = v85;
              }

              else
              {
                *(*(a1 + 64) + 8 * v18) = v15;
                v19 = v18 + 1;
              }

              *(a1 + 56) = v19;
              if (!v14)
              {
                goto LABEL_149;
              }

              if (*a3 <= v14 || *v14 != 96)
              {
                goto LABEL_144;
              }
            }
          }

          if (v8 != 98)
          {
            goto LABEL_136;
          }

          v80 = (a1 + 56);
          goto LABEL_135;
        case 0xDu:
          if (v8 == 104)
          {
            v23 = v7 - 1;
            while (1)
            {
              v85 = v23 + 1;
              v24 = v23[1];
              if (v24 < 0)
              {
                v25 = (v23[2] << 7) + v24;
                v24 = (v25 - 128);
                if (v23[2] < 0)
                {
                  v23 = sub_19587DC((v23 + 1), (v25 - 128));
                  v24 = v26;
                }

                else
                {
                  v23 += 3;
                }
              }

              else
              {
                v23 += 2;
              }

              v85 = v23;
              v27 = *(a1 + 72);
              if (v27 == *(a1 + 76))
              {
                v28 = v27 + 1;
                sub_1959094((a1 + 72), v27 + 1);
                *(*(a1 + 80) + 8 * v27) = v24;
                v23 = v85;
              }

              else
              {
                *(*(a1 + 80) + 8 * v27) = v24;
                v28 = v27 + 1;
              }

              *(a1 + 72) = v28;
              if (!v23)
              {
                goto LABEL_149;
              }

              if (*a3 <= v23 || *v23 != 104)
              {
                goto LABEL_144;
              }
            }
          }

          if (v8 != 106)
          {
            goto LABEL_136;
          }

          v80 = (a1 + 72);
          goto LABEL_135;
        default:
          goto LABEL_136;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v85;
}

char *sub_1338FA0(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 88);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 96);
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

    v16 = *(a1 + 104);
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

  v19 = *(a1 + 24);
  if (v19 < 1)
  {
    v22 = v15;
  }

  else
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 32) + 8 * i);
      *v15 = 32;
      v15[1] = v21;
      if (v21 > 0x7F)
      {
        v15[1] = v21 | 0x80;
        v23 = v21 >> 7;
        v15[2] = v21 >> 7;
        v22 = v15 + 3;
        if (v21 >= 0x4000)
        {
          LOBYTE(v24) = v15[2];
          do
          {
            *(v22 - 1) = v24 | 0x80;
            v24 = v23 >> 7;
            *v22++ = v23 >> 7;
            v25 = v23 >> 14;
            v23 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v22 = v15 + 2;
      }

      v15 = v22;
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 112);
    *v22 = 40;
    v22[1] = v27;
    if (v27 > 0x7F)
    {
      v22[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[2] = v27 >> 7;
      v26 = v22 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v22) = v22[2];
        do
        {
          *(v26 - 1) = v22 | 0x80;
          v22 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v22 + 2;
    }
  }

  else
  {
    v26 = v22;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 128);
    *v26 = 48;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v33) = v26[2];
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
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v36 = *(a1 + 120);
    *v30 = 56;
    v30[1] = v36;
    if (v36 > 0x7F)
    {
      v30[1] = v36 | 0x80;
      v37 = v36 >> 7;
      v30[2] = v36 >> 7;
      v35 = v30 + 3;
      if (v36 >= 0x4000)
      {
        LOBYTE(v30) = v30[2];
        do
        {
          *(v35 - 1) = v30 | 0x80;
          v30 = (v37 >> 7);
          *v35++ = v37 >> 7;
          v38 = v37 >> 14;
          v37 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v35 = v30 + 2;
    }
  }

  else
  {
    v35 = v30;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v40 = *(a1 + 136);
    *v35 = 64;
    v35[1] = v40;
    if (v40 > 0x7F)
    {
      v35[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v35[2] = v40 >> 7;
      v39 = v35 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v35) = v35[2];
        do
        {
          *(v39 - 1) = v35 | 0x80;
          v35 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v35 + 2;
    }
  }

  else
  {
    v39 = v35;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v43 = *(a1 + 132);
    *v39 = 72;
    v39[1] = v43;
    v39 += 2;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v45 = *(a1 + 144);
    *v39 = 80;
    v39[1] = v45;
    if (v45 > 0x7F)
    {
      v39[1] = v45 | 0x80;
      v46 = v45 >> 7;
      v39[2] = v45 >> 7;
      v44 = v39 + 3;
      if (v45 >= 0x4000)
      {
        LOBYTE(v47) = v39[2];
        do
        {
          *(v44 - 1) = v47 | 0x80;
          v47 = v46 >> 7;
          *v44++ = v46 >> 7;
          v48 = v46 >> 14;
          v46 >>= 7;
        }

        while (v48);
      }
    }

    else
    {
      v44 = v39 + 2;
    }
  }

  else
  {
    v44 = v39;
  }

  v49 = *(a1 + 40);
  if (v49 < 1)
  {
    v52 = v44;
  }

  else
  {
    for (j = 0; j != v49; ++j)
    {
      if (*a3 <= v44)
      {
        v44 = sub_225EB68(a3, v44);
      }

      v51 = *(*(a1 + 48) + 8 * j);
      *v44 = 88;
      v44[1] = v51;
      if (v51 > 0x7F)
      {
        v44[1] = v51 | 0x80;
        v53 = v51 >> 7;
        v44[2] = v51 >> 7;
        v52 = v44 + 3;
        if (v51 >= 0x4000)
        {
          LOBYTE(v44) = v44[2];
          do
          {
            *(v52 - 1) = v44 | 0x80;
            v44 = (v53 >> 7);
            *v52++ = v53 >> 7;
            v54 = v53 >> 14;
            v53 >>= 7;
          }

          while (v54);
        }
      }

      else
      {
        v52 = v44 + 2;
      }

      v44 = v52;
    }
  }

  v55 = *(a1 + 56);
  if (v55 < 1)
  {
    v58 = v52;
  }

  else
  {
    for (k = 0; k != v55; ++k)
    {
      if (*a3 <= v52)
      {
        v52 = sub_225EB68(a3, v52);
      }

      v57 = *(*(a1 + 64) + 8 * k);
      *v52 = 96;
      v52[1] = v57;
      if (v57 > 0x7F)
      {
        v52[1] = v57 | 0x80;
        v59 = v57 >> 7;
        v52[2] = v57 >> 7;
        v58 = v52 + 3;
        if (v57 >= 0x4000)
        {
          LOBYTE(v60) = v52[2];
          do
          {
            *(v58 - 1) = v60 | 0x80;
            v60 = v59 >> 7;
            *v58++ = v59 >> 7;
            v61 = v59 >> 14;
            v59 >>= 7;
          }

          while (v61);
        }
      }

      else
      {
        v58 = v52 + 2;
      }

      v52 = v58;
    }
  }

  v62 = *(a1 + 72);
  if (v62 < 1)
  {
    v65 = v58;
  }

  else
  {
    for (m = 0; m != v62; ++m)
    {
      if (*a3 <= v58)
      {
        v58 = sub_225EB68(a3, v58);
      }

      v64 = *(*(a1 + 80) + 8 * m);
      *v58 = 104;
      v58[1] = v64;
      if (v64 > 0x7F)
      {
        v58[1] = v64 | 0x80;
        v66 = v64 >> 7;
        v58[2] = v64 >> 7;
        v65 = v58 + 3;
        if (v64 >= 0x4000)
        {
          LOBYTE(v58) = v58[2];
          do
          {
            *(v65 - 1) = v58 | 0x80;
            v58 = (v66 >> 7);
            *v65++ = v66 >> 7;
            v67 = v66 >> 14;
            v66 >>= 7;
          }

          while (v67);
        }
      }

      else
      {
        v65 = v58 + 2;
      }

      v58 = v65;
    }
  }

  v68 = *(a1 + 8);
  if ((v68 & 1) == 0)
  {
    return v65;
  }

  v70 = v68 & 0xFFFFFFFFFFFFFFFCLL;
  v71 = *(v70 + 31);
  if (v71 < 0)
  {
    v72 = *(v70 + 8);
    v71 = *(v70 + 16);
  }

  else
  {
    v72 = (v70 + 8);
  }

  if ((*a3 - v65) >= v71)
  {
    v73 = v71;
    memcpy(v65, v72, v71);
    v65 += v73;
    return v65;
  }

  return sub_1957130(a3, v72, v71, v65);
}

uint64_t sub_1339750(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 24);
  v4 = sub_1959F14((a1 + 40));
  v5 = *(a1 + 40);
  v6 = sub_1959F14((a1 + 56));
  v7 = *(a1 + 56);
  result = v2 + v4 + v3 + v5 + v6 + v7 + sub_1959F14((a1 + 72)) + *(a1 + 72);
  v9 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  if (v9)
  {
    result += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_4:
      if ((v9 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_4;
  }

  result += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v9 & 4) == 0)
  {
LABEL_5:
    if ((v9 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  result += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v9 & 8) == 0)
  {
LABEL_6:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_22:
    result += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_21:
  result += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_7:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v10 = *(a1 + 128);
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
LABEL_12:
  result += (v9 >> 5) & 2;
  if ((v9 & 0x80) != 0)
  {
    result += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_14:
  if ((v9 & 0x100) != 0)
  {
    result += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    result += v15;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_1339968(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1959094(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    data = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&data[8 * v9], *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = SLODWORD(v3[2].__r_.__value_.__r.__words[1]);
    sub_1959094(&v3[2].__r_.__value_.__r.__words[1], v12 + v11);
    v13 = v3[2].__r_.__value_.__r.__words[2];
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) += *(a2 + 56);
    result = memcpy((v13 + 8 * v12), *(a2 + 64), 8 * *(a2 + 56));
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = SLODWORD(v3[3].__r_.__value_.__l.__data_);
    sub_1959094(&v3[3], v15 + v14);
    v16 = v3[3].__r_.__value_.__l.__size_;
    LODWORD(v3[3].__r_.__value_.__l.__data_) += *(a2 + 72);
    result = memcpy((v16 + 8 * v15), *(a2 + 80), 8 * *(a2 + 72));
  }

  v17 = *(a2 + 16);
  if (v17)
  {
    if (v17)
    {
      v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
      if ((v17 & 2) == 0)
      {
LABEL_12:
        if ((v17 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_12;
    }

    v3[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
    if ((v17 & 4) == 0)
    {
LABEL_13:
      if ((v17 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_29;
    }

LABEL_28:
    v3[4].__r_.__value_.__l.__size_ = *(a2 + 104);
    if ((v17 & 8) == 0)
    {
LABEL_14:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }

LABEL_29:
    v3[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
    if ((v17 & 0x10) == 0)
    {
LABEL_15:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

LABEL_30:
    v3[5].__r_.__value_.__r.__words[0] = *(a2 + 120);
    if ((v17 & 0x20) == 0)
    {
LABEL_16:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }

LABEL_31:
    LODWORD(v3[5].__r_.__value_.__r.__words[1]) = *(a2 + 128);
    if ((v17 & 0x40) == 0)
    {
LABEL_17:
      if ((v17 & 0x80) == 0)
      {
LABEL_19:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v17;
        goto LABEL_20;
      }

LABEL_18:
      v3[5].__r_.__value_.__r.__words[2] = *(a2 + 136);
      goto LABEL_19;
    }

LABEL_32:
    v3[5].__r_.__value_.__s.__data_[12] = *(a2 + 132);
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  if ((v17 & 0x100) != 0)
  {
    v18 = *(a2 + 144);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v3[6].__r_.__value_.__r.__words[0] = v18;
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1339BA0(uint64_t a1)
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

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_17:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1339CA8(uint64_t a1)
{
  sub_1339BA0(a1);

  operator delete();
}

uint64_t sub_1339CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) != 0)
  {
    if ((v1 & 1) == 0)
    {
      if ((v1 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_17;
        }
      }

LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_21:
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v1 & 0x10) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v1 & 0x10) != 0)
        {
          goto LABEL_25;
        }
      }

LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      v7 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
      }

      goto LABEL_32;
    }

    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_17:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_25:
    v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_29;
  }

LABEL_32:
  if ((v1 & 0xC0) != 0)
  {
    *(a1 + 72) = 0;
  }

  v9 = *(a1 + 8);
  result = a1 + 8;
  *(result + 72) = 0;
  *(result + 8) = 0;
  if (v9)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1339E44(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_64;
          }

          *(a1 + 16) |= 4u;
          v23 = *(a1 + 8);
          v18 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v18 = *v18;
          }

          v19 = (a1 + 40);
        }

        else
        {
          if (v11 != 4 || v8 != 34)
          {
            goto LABEL_64;
          }

          *(a1 + 16) |= 8u;
          v20 = *(a1 + 8);
          v18 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v18 = *v18;
          }

          v19 = (a1 + 48);
        }
      }

      else if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_64;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v18 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v18 = *v18;
        }

        v19 = (a1 + 24);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_64;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = (a1 + 32);
      }

      goto LABEL_58;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_64;
        }

        *(a1 + 16) |= 0x10u;
        v27 = *(a1 + 8);
        v18 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v18 = *v18;
        }

        v19 = (a1 + 56);
      }

      else
      {
        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_64;
        }

        *(a1 + 16) |= 0x20u;
        v21 = *(a1 + 8);
        v18 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v18 = *v18;
        }

        v19 = (a1 + 64);
      }

LABEL_58:
      v28 = sub_194DB04(v19, v18);
      v29 = sub_1958890(v28, *v36, a3);
      goto LABEL_59;
    }

    if (v11 != 7)
    {
      break;
    }

    if (v8 != 56)
    {
      goto LABEL_64;
    }

    v5 |= 0x40u;
    v24 = v7 + 1;
    v25 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    v26 = *v24;
    v25 = v25 + (v26 << 7) - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_53:
      *v36 = v24;
      *(a1 + 72) = v25;
      goto LABEL_60;
    }

    v33 = sub_1958770(v7, v25);
    *v36 = v33;
    *(a1 + 72) = v34;
    if (!v33)
    {
      goto LABEL_79;
    }

LABEL_60:
    if (sub_195ADC0(a3, v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 8)
  {
    if (v8 == 69)
    {
      v5 |= 0x80u;
      *(a1 + 76) = *v7;
      *v36 = v7 + 4;
      goto LABEL_60;
    }
  }

  else if (v11 == 9 && v8 == 72)
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
        *v36 = sub_19587DC(v7, (v15 - 128));
        if (!*v36)
        {
          goto LABEL_79;
        }

        LODWORD(v13) = v35;
        goto LABEL_17;
      }

      v12 = v7 + 2;
    }

    *v36 = v12;
LABEL_17:
    if (sub_13560D8(v13))
    {
      *(a1 + 16) |= 0x100u;
      *(a1 + 80) = v13;
    }

    else
    {
      sub_1348EF8();
    }

    goto LABEL_60;
  }

LABEL_64:
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
      v7 = *v36;
    }

    v29 = sub_1952690(v8, v32, v7, a3);
LABEL_59:
    *v36 = v29;
    if (!v29)
    {
      goto LABEL_79;
    }

    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_79:
  *v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v36;
}

char *sub_133A208(uint64_t a1, char *__dst, unint64_t *a3)
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

      goto LABEL_11;
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

    goto LABEL_12;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v4 = sub_128AEEC(a3, 6, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v4 = sub_128AEEC(a3, 5, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    v7 = v4;
    goto LABEL_22;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 72);
  *v4 = 56;
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

LABEL_22:
  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 76);
    *v7 = 69;
    *(v7 + 1) = v12;
    v7 += 5;
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 80);
    *v7 = 72;
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v7[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v7[2] = v14 >> 7;
      v13 = v7 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v16) = v7[2];
        do
        {
          *(v13 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v13++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v13 = v7 + 2;
    }
  }

  else
  {
    v13 = v7;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v13;
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

  if ((*a3 - v13) >= v21)
  {
    v23 = v21;
    memcpy(v13, v22, v21);
    v13 += v23;
    return v13;
  }

  return sub_1957130(a3, v22, v21, v13);
}

uint64_t sub_133A4B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
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
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v1 & 4) != 0)
  {
    v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_15:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_16:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_30:
  v17 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_17:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_33:
  v20 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) != 0)
  {
LABEL_18:
    v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v1 & 0x80) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_22:
    v9 = *(a1 + 80);
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

LABEL_39:
  v23 = *(a1 + 8);
  if (v23)
  {
    v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v2 += v26;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_133A714(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v8 = *(a1 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      sub_194EA1C((a1 + 24), (v7 & 0xFFFFFFFFFFFFFFFELL), v9);
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

    v10 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 32), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

LABEL_24:
    v13 = *(a2 + 40);
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 40), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }

LABEL_27:
    v16 = *(a2 + 48);
    *(a1 + 16) |= 8u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_194EA1C((a1 + 48), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_33;
    }

LABEL_30:
    v19 = *(a2 + 56);
    *(a1 + 16) |= 0x10u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 56), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_36;
    }

LABEL_33:
    v22 = *(a2 + 64);
    *(a1 + 16) |= 0x20u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 64), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
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
      *(a1 + 76) = *(a2 + 76);
      goto LABEL_11;
    }

LABEL_36:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 80);
    *(a1 + 16) |= 0x100u;
    *(a1 + 80) = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_133A92C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1347D44(a1 + 20);
  sub_1956AFC(a1 + 17);
  sub_1956AFC(a1 + 14);
  sub_1956AFC(a1 + 11);
  sub_1956AFC(a1 + 8);
  sub_1956AFC(a1 + 5);
  sub_1956AFC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_133A9DC(void *a1)
{
  sub_133A92C(a1);

  operator delete();
}

uint64_t sub_133AA14(uint64_t a1)
{
  sub_12A41D0(a1 + 16);
  sub_12A41D0(a1 + 40);
  sub_12A41D0(a1 + 64);
  sub_12A41D0(a1 + 88);
  sub_12A41D0(a1 + 112);
  result = sub_12A41D0(a1 + 136);
  v3 = *(a1 + 168);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 176) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1339CE0(v5);
      --v3;
    }

    while (v3);
    *(a1 + 168) = 0;
  }

  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_133AAC0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v69 = a2;
  if ((sub_195ADC0(a3, v69, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (*v69 + 1);
      v7 = **v69;
      if (**v69 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(*v69, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = (*v69 + 2);
        }
      }

      *v69 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v7 == 10)
          {
            v34 = v6 - 1;
            while (1)
            {
              v35 = (v34 + 1);
              *v69 = v34 + 1;
              v36 = *(a1 + 32);
              if (v36 && (v37 = *(a1 + 24), v37 < *v36))
              {
                *(a1 + 24) = v37 + 1;
                v38 = *&v36[2 * v37 + 2];
              }

              else
              {
                v39 = *(a1 + 16);
                if (!v39)
                {
                  operator new();
                }

                *v41 = v40;
                v41[1] = sub_195A650;
                *v40 = 0;
                v40[1] = 0;
                v40[2] = 0;
                v38 = sub_19593CC(a1 + 16, v40);
                v35 = *v69;
              }

              v34 = sub_1958890(v38, v35, a3);
              *v69 = v34;
              if (!v34)
              {
                goto LABEL_113;
              }

              if (*a3 <= v34 || *v34 != 10)
              {
                goto LABEL_108;
              }
            }
          }
        }

        else if (v10 == 2)
        {
          if (v7 == 18)
          {
            v58 = v6 - 1;
            while (1)
            {
              v59 = (v58 + 1);
              *v69 = v58 + 1;
              v60 = *(a1 + 56);
              if (v60 && (v61 = *(a1 + 48), v61 < *v60))
              {
                *(a1 + 48) = v61 + 1;
                v62 = *&v60[2 * v61 + 2];
              }

              else
              {
                v63 = *(a1 + 40);
                if (!v63)
                {
                  operator new();
                }

                *v65 = v64;
                v65[1] = sub_195A650;
                *v64 = 0;
                v64[1] = 0;
                v64[2] = 0;
                v62 = sub_19593CC(a1 + 40, v64);
                v59 = *v69;
              }

              v58 = sub_1958890(v62, v59, a3);
              *v69 = v58;
              if (!v58)
              {
                goto LABEL_113;
              }

              if (*a3 <= v58 || *v58 != 18)
              {
                goto LABEL_108;
              }
            }
          }
        }

        else if (v10 == 3 && v7 == 26)
        {
          v20 = v6 - 1;
          while (1)
          {
            v21 = (v20 + 1);
            *v69 = v20 + 1;
            v22 = *(a1 + 80);
            if (v22 && (v23 = *(a1 + 72), v23 < *v22))
            {
              *(a1 + 72) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = *(a1 + 64);
              if (!v25)
              {
                operator new();
              }

              *v27 = v26;
              v27[1] = sub_195A650;
              *v26 = 0;
              v26[1] = 0;
              v26[2] = 0;
              v24 = sub_19593CC(a1 + 64, v26);
              v21 = *v69;
            }

            v20 = sub_1958890(v24, v21, a3);
            *v69 = v20;
            if (!v20)
            {
              goto LABEL_113;
            }

            if (*a3 <= v20 || *v20 != 26)
            {
              goto LABEL_108;
            }
          }
        }
      }

      else if (v7 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v7 == 50)
          {
            v50 = v6 - 1;
            while (1)
            {
              v51 = (v50 + 1);
              *v69 = v50 + 1;
              v52 = *(a1 + 152);
              if (v52 && (v53 = *(a1 + 144), v53 < *v52))
              {
                *(a1 + 144) = v53 + 1;
                v54 = *&v52[2 * v53 + 2];
              }

              else
              {
                v55 = *(a1 + 136);
                if (!v55)
                {
                  operator new();
                }

                *v57 = v56;
                v57[1] = sub_195A650;
                *v56 = 0;
                v56[1] = 0;
                v56[2] = 0;
                v54 = sub_19593CC(a1 + 136, v56);
                v51 = *v69;
              }

              v50 = sub_1958890(v54, v51, a3);
              *v69 = v50;
              if (!v50)
              {
                goto LABEL_113;
              }

              if (*a3 <= v50 || *v50 != 50)
              {
                goto LABEL_108;
              }
            }
          }
        }

        else if (v10 == 7 && v7 == 58)
        {
          v28 = v6 - 1;
          while (1)
          {
            v29 = v28 + 1;
            *v69 = v28 + 1;
            v30 = *(a1 + 176);
            if (v30 && (v31 = *(a1 + 168), v31 < *v30))
            {
              *(a1 + 168) = v31 + 1;
              v32 = *&v30[2 * v31 + 2];
            }

            else
            {
              v33 = sub_1342EFC(*(a1 + 160));
              v32 = sub_19593CC(a1 + 160, v33);
              v29 = *v69;
            }

            v28 = sub_21FD4B0(a3, v32, v29);
            *v69 = v28;
            if (!v28)
            {
              goto LABEL_113;
            }

            if (*a3 <= v28 || *v28 != 58)
            {
              goto LABEL_108;
            }
          }
        }
      }

      else if (v10 == 4)
      {
        if (v7 == 34)
        {
          v42 = v6 - 1;
          while (1)
          {
            v43 = (v42 + 1);
            *v69 = v42 + 1;
            v44 = *(a1 + 104);
            if (v44 && (v45 = *(a1 + 96), v45 < *v44))
            {
              *(a1 + 96) = v45 + 1;
              v46 = *&v44[2 * v45 + 2];
            }

            else
            {
              v47 = *(a1 + 88);
              if (!v47)
              {
                operator new();
              }

              *v49 = v48;
              v49[1] = sub_195A650;
              *v48 = 0;
              v48[1] = 0;
              v48[2] = 0;
              v46 = sub_19593CC(a1 + 88, v48);
              v43 = *v69;
            }

            v42 = sub_1958890(v46, v43, a3);
            *v69 = v42;
            if (!v42)
            {
              goto LABEL_113;
            }

            if (*a3 <= v42 || *v42 != 34)
            {
              goto LABEL_108;
            }
          }
        }
      }

      else if (v10 == 5 && v7 == 42)
      {
        v11 = v6 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          *v69 = v11 + 1;
          v13 = *(a1 + 128);
          if (v13 && (v14 = *(a1 + 120), v14 < *v13))
          {
            *(a1 + 120) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = *(a1 + 112);
            if (!v16)
            {
              operator new();
            }

            *v18 = v17;
            v18[1] = sub_195A650;
            *v17 = 0;
            v17[1] = 0;
            v17[2] = 0;
            v15 = sub_19593CC(a1 + 112, v17);
            v12 = *v69;
          }

          v11 = sub_1958890(v15, v12, a3);
          *v69 = v11;
          if (!v11)
          {
            goto LABEL_113;
          }

          if (*a3 <= v11 || *v11 != 42)
          {
            goto LABEL_108;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v67 = *(a1 + 8);
      if (v67)
      {
        v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v68 = sub_11F1920((a1 + 8));
        v6 = *v69;
      }

      *v69 = sub_1952690(v7, v68, v6, a3);
      if (!*v69)
      {
        goto LABEL_113;
      }

LABEL_108:
      if (sub_195ADC0(a3, v69, a3[11].u32[1]))
      {
        return *v69;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return *v69;
    }

LABEL_113:
    *v69 = 0;
  }

  return *v69;
}

char *sub_133B158(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 32) + v7);
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

  v11 = *(a1 + 48);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 56) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || (*a3 - __dst + 14) < v14)
      {
        __dst = sub_1957480(a3, 2, v13, __dst);
      }

      else
      {
        *__dst = 18;
        __dst[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = __dst + 2;
        memcpy(v15, v13, v14);
        __dst = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 72);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 80) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || (*a3 - __dst + 14) < v19)
      {
        __dst = sub_1957480(a3, 3, v18, __dst);
      }

      else
      {
        *__dst = 26;
        __dst[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = __dst + 2;
        memcpy(v20, v18, v19);
        __dst = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 96);
  if (v21 >= 1)
  {
    v22 = 8;
    do
    {
      v23 = *(*(a1 + 104) + v22);
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = v23[1], v24 > 127) || (*a3 - __dst + 14) < v24)
      {
        __dst = sub_1957480(a3, 4, v23, __dst);
      }

      else
      {
        *__dst = 34;
        __dst[1] = v24;
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v25 = __dst + 2;
        memcpy(v25, v23, v24);
        __dst = &v25[v24];
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  v26 = *(a1 + 120);
  if (v26 >= 1)
  {
    v27 = 8;
    do
    {
      v28 = *(*(a1 + 128) + v27);
      v29 = *(v28 + 23);
      if (v29 < 0 && (v29 = v28[1], v29 > 127) || (*a3 - __dst + 14) < v29)
      {
        __dst = sub_1957480(a3, 5, v28, __dst);
      }

      else
      {
        *__dst = 42;
        __dst[1] = v29;
        if (*(v28 + 23) < 0)
        {
          v28 = *v28;
        }

        v30 = __dst + 2;
        memcpy(v30, v28, v29);
        __dst = &v30[v29];
      }

      v27 += 8;
      --v26;
    }

    while (v26);
  }

  v31 = *(a1 + 144);
  if (v31 >= 1)
  {
    v32 = 8;
    do
    {
      v33 = *(*(a1 + 152) + v32);
      v34 = *(v33 + 23);
      if (v34 < 0 && (v34 = v33[1], v34 > 127) || (*a3 - __dst + 14) < v34)
      {
        __dst = sub_1957480(a3, 6, v33, __dst);
      }

      else
      {
        *__dst = 50;
        __dst[1] = v34;
        if (*(v33 + 23) < 0)
        {
          v33 = *v33;
        }

        v35 = __dst + 2;
        memcpy(v35, v33, v34);
        __dst = &v35[v34];
      }

      v32 += 8;
      --v31;
    }

    while (v31);
  }

  v36 = *(a1 + 168);
  if (v36)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v38 = *(*(a1 + 176) + 8 * i + 8);
      *__dst = 58;
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

      __dst = sub_133A208(v38, v40, a3);
    }
  }

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

uint64_t sub_133B628(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 < 1)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v3 = (*(a1 + 32) + 8);
    v4 = *(a1 + 24);
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

  v8 = *(a1 + 48);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = (*(a1 + 56) + 8);
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

  v14 = *(a1 + 72);
  v15 = v9 + v14;
  if (v14 >= 1)
  {
    v16 = (*(a1 + 80) + 8);
    do
    {
      v17 = *v16++;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v15 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      --v14;
    }

    while (v14);
  }

  v20 = *(a1 + 96);
  v21 = v15 + v20;
  if (v20 >= 1)
  {
    v22 = (*(a1 + 104) + 8);
    do
    {
      v23 = *v22++;
      v24 = *(v23 + 23);
      v25 = *(v23 + 8);
      if ((v24 & 0x80u) == 0)
      {
        v25 = v24;
      }

      v21 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      --v20;
    }

    while (v20);
  }

  v26 = *(a1 + 120);
  v27 = v21 + v26;
  if (v26 >= 1)
  {
    v28 = (*(a1 + 128) + 8);
    do
    {
      v29 = *v28++;
      v30 = *(v29 + 23);
      v31 = *(v29 + 8);
      if ((v30 & 0x80u) == 0)
      {
        v31 = v30;
      }

      v27 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      --v26;
    }

    while (v26);
  }

  v32 = *(a1 + 144);
  v33 = v27 + v32;
  if (v32 >= 1)
  {
    v34 = (*(a1 + 152) + 8);
    do
    {
      v35 = *v34++;
      v36 = *(v35 + 23);
      v37 = *(v35 + 8);
      if ((v36 & 0x80u) == 0)
      {
        v37 = v36;
      }

      v33 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      --v32;
    }

    while (v32);
  }

  v38 = *(a1 + 168);
  v39 = v33 + v38;
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
      v44 = sub_133A4B0(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 8);
  if (v45)
  {
    v47 = v45 & 0xFFFFFFFFFFFFFFFCLL;
    v48 = *((v45 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v48 < 0)
    {
      v48 = *(v47 + 16);
    }

    v39 += v48;
  }

  *(a1 + 184) = v39;
  return v39;
}