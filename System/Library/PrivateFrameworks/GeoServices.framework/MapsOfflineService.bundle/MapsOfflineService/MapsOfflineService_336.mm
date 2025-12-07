char *sub_13BAB98(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 24);
    *v4 = 10;
    v9 = *(v8 + 20);
    *(v4 + 1) = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, (v4 + 1));
    }

    else
    {
      v10 = (v4 + 2);
    }

    v4 = sub_13D893C(v8, v10, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
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

  v11 = *(a1 + 32);
  *v4 = 18;
  v12 = *(v11 + 20);
  *(v4 + 1) = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, (v4 + 1));
  }

  else
  {
    v13 = (v4 + 2);
  }

  v4 = sub_13D893C(v11, v13, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_25:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v17 = *(a1 + 48);
    *v4 = 34;
    v18 = *(v17 + 20);
    *(v4 + 1) = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, (v4 + 1));
    }

    else
    {
      v19 = (v4 + 2);
    }

    v4 = sub_13D8440(v17, v19, a3);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 40);
  *v4 = 26;
  v15 = *(v14 + 20);
  *(v4 + 1) = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, (v4 + 1));
  }

  else
  {
    v16 = (v4 + 2);
  }

  v4 = sub_13D8440(v14, v16, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_38;
  }

LABEL_31:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v20 = *(a1 + 56);
  *v4 = 40;
  *(v4 + 1) = v20;
  if (v20 > 0x7F)
  {
    *(v4 + 1) = v20 | 0x80;
    v21 = v20 >> 7;
    *(v4 + 2) = v20 >> 7;
    v7 = (v4 + 3);
    if (v20 >= 0x4000)
    {
      LOBYTE(v4) = *(v4 + 2);
      do
      {
        *(v7 - 1) = v4 | 0x80;
        LODWORD(v4) = v21 >> 7;
        *v7++ = v21 >> 7;
        v22 = v21 >> 14;
        v21 >>= 7;
      }

      while (v22);
    }
  }

  else
  {
    v7 = (v4 + 2);
  }

LABEL_38:
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v24 = *(a1 + 60);
    *v7 = 48;
    v7[1] = v24;
    if (v24 > 0x7F)
    {
      v7[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v7[2] = v24 >> 7;
      v23 = v7 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v23 - 1) = v7 | 0x80;
          LODWORD(v7) = v25 >> 7;
          *v23++ = v25 >> 7;
          v26 = v25 >> 14;
          v25 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v23 = v7 + 2;
    }
  }

  else
  {
    v23 = v7;
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v23;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if ((*a3 - v23) >= v30)
  {
    v32 = v30;
    memcpy(v23, v31, v30);
    v23 += v32;
    return v23;
  }

  return sub_1957130(a3, v31, v30, v23);
}

uint64_t sub_13BAEF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_13D8AEC(*(a1 + 24));
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
    v5 = sub_13D8AEC(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v8 = sub_13D85F0(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v9 = sub_13D85F0(*(a1 + 48));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v3 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v6 = *(a1 + 8);
  if (v6)
  {
    v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_13BB080(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
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

        data = sub_13E1810(v7);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_276EC28;
      }

      result = sub_13BB240(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_13E1810(v11);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_276EC28;
      }

      result = sub_13BB240(v9, v12);
    }

    if ((v4 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v14 = *(v3 + 40);
      if (!v14)
      {
        v15 = *(v3 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_13E1794(v16);
        *(v3 + 40) = v14;
      }

      if (*(a2 + 40))
      {
        v17 = *(a2 + 40);
      }

      else
      {
        v17 = &off_276EC00;
      }

      result = sub_13BB240(v14, v17);
      if ((v4 & 8) == 0)
      {
LABEL_22:
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_46;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

    *(v3 + 16) |= 8u;
    v18 = *(v3 + 48);
    if (!v18)
    {
      v19 = *(v3 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_13E1794(v20);
      *(v3 + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_276EC00;
    }

    result = sub_13BB240(v18, v21);
    if ((v4 & 0x10) == 0)
    {
LABEL_23:
      if ((v4 & 0x20) == 0)
      {
LABEL_25:
        *(v3 + 16) |= v4;
        goto LABEL_26;
      }

LABEL_24:
      *(v3 + 60) = *(a2 + 60);
      goto LABEL_25;
    }

LABEL_46:
    *(v3 + 56) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_26:
  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4((v3 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_13BB240(std::string *result, uint64_t a2)
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
      LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
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

void *sub_13BB2A4(void *a1)
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

  sub_13BB328(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13BB328(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  result = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E220)
  {
    result = *(a1 + 80);
    if (result)
    {
      sub_13BA658(result);

      operator delete();
    }
  }

  return result;
}

void sub_13BB424(void *a1)
{
  sub_13BB2A4(a1);

  operator delete();
}

uint64_t sub_13BB45C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
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
        goto LABEL_21;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_25:
    v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_33:
    v9 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_29:
  v8 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_33;
    }
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_37:
  v10 = *(result + 64) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v10 + 23) & 0x80000000) == 0)
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_41;
    }

LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  **v10 = 0;
  *(v10 + 8) = 0;
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_41:
  v11 = *(result + 72) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v11 + 23) & 0x80000000) == 0)
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = sub_13BA7C0(*(result + 80));
    goto LABEL_11;
  }

  **v11 = 0;
  *(v11 + 8) = 0;
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((v2 & 0xF00) != 0)
  {
    *(v1 + 93) = 0;
    *(v1 + 88) = 0;
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

uint64_t sub_13BB640(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v45, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v45 + 1);
    v8 = **v45;
    if (**v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v45 + 2);
      }
    }

    *v45 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 6)
    {
      if (v8 >> 3 <= 3)
      {
        if (v11 != 1)
        {
          if (v11 != 2)
          {
            if (v11 != 3 || v8 != 26)
            {
              goto LABEL_89;
            }

            *(a1 + 16) |= 1u;
            v13 = *(a1 + 8);
            v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
            if (v13)
            {
              v14 = *v14;
            }

            v15 = (a1 + 24);
            goto LABEL_85;
          }

          if (v8 != 16)
          {
            goto LABEL_89;
          }

          v32 = v7 + 1;
          v31 = *v7;
          if (v31 < 0)
          {
            v33 = *v32;
            v31 = (v33 << 7) + v31 - 128;
            if (v33 < 0)
            {
              *v45 = sub_19587DC(v7, v31);
              if (!*v45)
              {
                goto LABEL_110;
              }

              goto LABEL_68;
            }

            v32 = v7 + 2;
          }

          *v45 = v32;
LABEL_68:
          if (v31 > 5)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 0x200u;
            *(a1 + 92) = v31;
          }

          goto LABEL_87;
        }

        if (v8 != 8)
        {
          goto LABEL_89;
        }

        v22 = v7 + 1;
        v21 = *v7;
        if (v21 < 0)
        {
          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            *v45 = sub_19587DC(v7, v21);
            if (!*v45)
            {
              goto LABEL_110;
            }

            goto LABEL_47;
          }

          v22 = v7 + 2;
        }

        *v45 = v22;
LABEL_47:
        if (v21 > 0x17)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 88) = v21;
        }

        goto LABEL_87;
      }

      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_89;
        }

        *(a1 + 16) |= 0x80u;
        v25 = *(a1 + 80);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          sub_13BCE9C(v27);
          v25 = v28;
          *(a1 + 80) = v28;
          v7 = *v45;
        }

        v29 = sub_2204F40(a3, v25, v7);
LABEL_86:
        *v45 = v29;
        if (!v29)
        {
          goto LABEL_110;
        }

        goto LABEL_87;
      }

      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_89;
        }

        *(a1 + 16) |= 2u;
        v37 = *(a1 + 8);
        v14 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
      }

      else
      {
        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_89;
        }

        *(a1 + 16) |= 4u;
        v19 = *(a1 + 8);
        v14 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v14 = *v14;
        }

        v15 = (a1 + 40);
      }

LABEL_85:
      v39 = sub_194DB04(v15, v14);
      v29 = sub_1958890(v39, *v45, a3);
      goto LABEL_86;
    }

    if (v8 >> 3 > 9)
    {
      if (v11 == 10)
      {
        if (v8 != 82)
        {
          goto LABEL_89;
        }

        *(a1 + 16) |= 0x10u;
        v30 = *(a1 + 8);
        v14 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v14 = *v14;
        }

        v15 = (a1 + 56);
      }

      else if (v11 == 11)
      {
        if (v8 != 90)
        {
          goto LABEL_89;
        }

        *(a1 + 16) |= 0x20u;
        v38 = *(a1 + 8);
        v14 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v14 = *v14;
        }

        v15 = (a1 + 64);
      }

      else
      {
        if (v11 != 12 || v8 != 98)
        {
          goto LABEL_89;
        }

        *(a1 + 16) |= 0x40u;
        v20 = *(a1 + 8);
        v14 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v14 = *v14;
        }

        v15 = (a1 + 72);
      }

      goto LABEL_85;
    }

    if (v11 == 7)
    {
      if (v8 != 58)
      {
        goto LABEL_89;
      }

      *(a1 + 16) |= 8u;
      v24 = *(a1 + 8);
      v14 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v14 = *v14;
      }

      v15 = (a1 + 48);
      goto LABEL_85;
    }

    if (v11 == 8)
    {
      break;
    }

    if (v11 != 9 || v8 != 72)
    {
      goto LABEL_89;
    }

    v5 |= 0x800u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_27:
      *v45 = v17;
      *(a1 + 100) = v16 != 0;
      goto LABEL_87;
    }

    v43 = sub_19587DC(v7, v16);
    *v45 = v43;
    *(a1 + 100) = v44 != 0;
    if (!v43)
    {
      goto LABEL_110;
    }

LABEL_87:
    if (sub_195ADC0(a3, v45, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 64)
  {
    v35 = v7 + 1;
    v34 = *v7;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_74;
    }

    v36 = *v35;
    v34 = (v36 << 7) + v34 - 128;
    if (v36 < 0)
    {
      *v45 = sub_19587DC(v7, v34);
      if (!*v45)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v35 = v7 + 2;
LABEL_74:
      *v45 = v35;
    }

    if (v34 > 7)
    {
      sub_12E85F0();
    }

    else
    {
      *(a1 + 16) |= 0x400u;
      *(a1 + 96) = v34;
    }

    goto LABEL_87;
  }

LABEL_89:
  if (v8)
  {
    v40 = (v8 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = *(a1 + 8);
    if (v41)
    {
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v7 = *v45;
    }

    v29 = sub_1952690(v8, v42, v7, a3);
    goto LABEL_86;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_110:
  *v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v45;
}

char *sub_13BBB68(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x100) != 0)
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 92);
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
    v11 = sub_128AEEC(a3, 3, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v5 & 0x80) == 0)
    {
LABEL_21:
      if ((v5 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_21;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v16 = *(a1 + 80);
  *v11 = 34;
  v17 = *(v16 + 20);
  v11[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v11 + 1);
  }

  else
  {
    v18 = v11 + 2;
  }

  v11 = sub_13BAB98(v16, v18, a3);
  if ((v5 & 2) == 0)
  {
LABEL_22:
    if ((v5 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = sub_128AEEC(a3, 5, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 4) == 0)
  {
LABEL_23:
    if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

LABEL_35:
    v11 = sub_128AEEC(a3, 7, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_34:
  v11 = sub_128AEEC(a3, 6, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 8) != 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  if ((v5 & 0x400) == 0)
  {
LABEL_25:
    v15 = v11;
    goto LABEL_43;
  }

LABEL_36:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v19 = *(a1 + 96);
  *v11 = 64;
  v11[1] = v19;
  if (v19 > 0x7F)
  {
    v11[1] = v19 | 0x80;
    v20 = v19 >> 7;
    v11[2] = v19 >> 7;
    v15 = v11 + 3;
    if (v19 >= 0x4000)
    {
      LOBYTE(v21) = v11[2];
      do
      {
        *(v15 - 1) = v21 | 0x80;
        v21 = v20 >> 7;
        *v15++ = v20 >> 7;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
    }
  }

  else
  {
    v15 = v11 + 2;
  }

LABEL_43:
  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v25 = *(a1 + 100);
    *v15 = 72;
    v15[1] = v25;
    v15 += 2;
    if ((v5 & 0x10) == 0)
    {
LABEL_45:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_54;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_45;
  }

  v15 = sub_128AEEC(a3, 10, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v5 & 0x20) == 0)
  {
LABEL_46:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_54:
  v15 = sub_128AEEC(a3, 11, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v5 & 0x40) != 0)
  {
LABEL_47:
    v15 = sub_128AEEC(a3, 12, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v15);
  }

LABEL_48:
  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v15;
  }

  v26 = v23 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v15) >= v27)
  {
    v29 = v27;
    memcpy(v15, v28, v27);
    v15 += v29;
    return v15;
  }

  return sub_1957130(a3, v28, v27, v15);
}

uint64_t sub_13BBF30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
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
    v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
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

  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_33:
  v20 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_36:
  v23 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 23);
  v25 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v25 = v24;
  }

  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = sub_13BAEF0(*(a1 + 80));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0xF00) == 0)
  {
    goto LABEL_53;
  }

  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    v28 = *(a1 + 92);
    if (v28 < 0)
    {
      v29 = 11;
    }

    else
    {
      v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v29;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  v26 = *(a1 + 88);
  if (v26 < 0)
  {
    v27 = 11;
  }

  else
  {
    v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v27;
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v2 & 0x400) != 0)
  {
LABEL_48:
    v30 = *(a1 + 96);
    if (v30 < 0)
    {
      v31 = 11;
    }

    else
    {
      v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v31;
  }

LABEL_52:
  v3 += (v2 >> 10) & 2;
LABEL_53:
  v32 = *(a1 + 8);
  if (v32)
  {
    v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v32 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v3 += v35;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_13BC280(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_40;
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
        goto LABEL_5;
      }

      goto LABEL_17;
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
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
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
  v14 = *(a2 + 48);
  *(a1 + 16) |= 8u;
  v15 = *(a1 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_23:
  v17 = *(a2 + 56);
  *(a1 + 16) |= 0x10u;
  v18 = *(a1 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a1 + 56), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_26:
  v20 = *(a2 + 64);
  *(a1 + 16) |= 0x20u;
  v21 = *(a1 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA1C((a1 + 64), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_32;
  }

LABEL_29:
  v23 = *(a2 + 72);
  *(a1 + 16) |= 0x40u;
  v24 = *(a1 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a1 + 72), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
  if ((v4 & 0x80) != 0)
  {
LABEL_32:
    *(a1 + 16) |= 0x80u;
    v26 = *(a1 + 80);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_13BCE9C(v28);
      *(a1 + 80) = v26;
    }

    if (*(a2 + 80))
    {
      v29 = *(a2 + 80);
    }

    else
    {
      v29 = &off_276E1E0;
    }

    sub_13BB080(v26, v29);
  }

LABEL_40:
  if ((v4 & 0xF00) == 0)
  {
    goto LABEL_47;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 88) = *(a2 + 88);
    if ((v4 & 0x200) == 0)
    {
LABEL_43:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_44;
      }

LABEL_53:
      *(a1 + 96) = *(a2 + 96);
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_43;
  }

  *(a1 + 92) = *(a2 + 92);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_53;
  }

LABEL_44:
  if ((v4 & 0x800) != 0)
  {
LABEL_45:
    *(a1 + 100) = *(a2 + 100);
  }

LABEL_46:
  *(a1 + 16) |= v4;
LABEL_47:
  v30 = *(a2 + 8);
  if (v30)
  {

    sub_1957EF4((a1 + 8), (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13BC530(int a1)
{
  result = 1;
  if (a1 > 299)
  {
    if (a1 <= 599)
    {
      if ((a1 - 500) >= 0xB && (a1 - 400) >= 7 && (a1 - 300) >= 3)
      {
        return 0;
      }

      return result;
    }

    if (a1 > 699)
    {
      if (a1 > 799)
      {
        if ((a1 - 800) >= 2 && a1 != 901 && a1 != 1001)
        {
          return 0;
        }

        return result;
      }

      if ((a1 - 700) < 5)
      {
        return result;
      }
    }

    else if ((a1 - 600) < 0xF)
    {
      return result;
    }

    return 0;
  }

  if ((a1 - 100) >= 0x1C && (a1 - 200) >= 0xC && (a1 > 0xA || ((1 << a1) & 0x47F) == 0))
  {
    return 0;
  }

  return result;
}

uint64_t sub_13BC600(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    goto LABEL_32;
  }

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

    goto LABEL_29;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v1 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v9 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v9)
  {
    return sub_1957EA8(result);
  }

  return result;
}

void sub_13BC754(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_27;
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
        goto LABEL_5;
      }

      goto LABEL_15;
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
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_18:
  v14 = *(a2 + 48);
  *(a1 + 16) |= 8u;
  v15 = *(a1 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_21:
  v17 = *(a2 + 56);
  *(a1 + 16) |= 0x10u;
  v18 = *(a1 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a1 + 56), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v4 & 0x20) != 0)
  {
LABEL_24:
    v20 = *(a2 + 64);
    *(a1 + 16) |= 0x20u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 64), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
  }

LABEL_27:
  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4((a1 + 8), (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13BC910(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v10 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_37:
    v12 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_29;
    }
  }

LABEL_9:
  if ((v5 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_33:
  v11 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_11:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_41:
  v13 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v13 + 23) < 0)
  {
    **v13 = 0;
    *(v13 + 8) = 0;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_45;
    }

LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *v13 = 0;
  *(v13 + 23) = 0;
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_45:
  result = sub_13BA608(*(v1 + 112));
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    result = sub_13D6DF0(*(v1 + 120));
  }

LABEL_15:
  if ((v5 & 0x700) != 0)
  {
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
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

void sub_13BCB04(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_11F1A54((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if (!v13)
  {
    goto LABEL_50;
  }

  if (v13)
  {
    v14 = *(a2 + 64);
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 64), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v13 & 2) == 0)
    {
LABEL_9:
      if ((v13 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_9;
  }

  v17 = *(a2 + 72);
  *(a1 + 16) |= 2u;
  v18 = *(a1 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a1 + 72), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v13 & 4) == 0)
  {
LABEL_10:
    if ((v13 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_22:
  v20 = *(a2 + 80);
  *(a1 + 16) |= 4u;
  v21 = *(a1 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA1C((a1 + 80), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v13 & 8) == 0)
  {
LABEL_11:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_25:
  v23 = *(a2 + 88);
  *(a1 + 16) |= 8u;
  v24 = *(a1 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a1 + 88), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
  if ((v13 & 0x10) == 0)
  {
LABEL_12:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_31:
    v29 = *(a2 + 104);
    *(a1 + 16) |= 0x20u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    sub_194EA1C((a1 + 104), (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
    if ((v13 & 0x40) == 0)
    {
LABEL_14:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    goto LABEL_34;
  }

LABEL_28:
  v26 = *(a2 + 96);
  *(a1 + 16) |= 0x10u;
  v27 = *(a1 + 8);
  v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
  if (v27)
  {
    v28 = *v28;
  }

  sub_194EA1C((a1 + 96), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_34:
  *(a1 + 16) |= 0x40u;
  v32 = *(a1 + 112);
  if (!v32)
  {
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    v32 = sub_13E1810(v34);
    *(a1 + 112) = v32;
  }

  if (*(a2 + 112))
  {
    v35 = *(a2 + 112);
  }

  else
  {
    v35 = &off_276EC28;
  }

  sub_13BB240(v32, v35);
  if ((v13 & 0x80) != 0)
  {
LABEL_42:
    *(a1 + 16) |= 0x80u;
    v36 = *(a1 + 120);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_13E22C4(v38);
      *(a1 + 120) = v36;
    }

    if (*(a2 + 120))
    {
      v39 = *(a2 + 120);
    }

    else
    {
      v39 = &off_276EFD8;
    }

    sub_13D7FAC(v36, v39);
  }

LABEL_50:
  if ((v13 & 0x700) == 0)
  {
    goto LABEL_56;
  }

  if ((v13 & 0x100) == 0)
  {
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_53;
    }

LABEL_61:
    *(a1 + 136) = *(a2 + 136);
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  *(a1 + 128) = *(a2 + 128);
  if ((v13 & 0x200) != 0)
  {
    goto LABEL_61;
  }

LABEL_53:
  if ((v13 & 0x400) != 0)
  {
LABEL_54:
    *(a1 + 140) = *(a2 + 140);
  }

LABEL_55:
  *(a1 + 16) |= v13;
LABEL_56:
  v40 = *(a2 + 8);
  if (v40)
  {

    sub_1957EF4((a1 + 8), (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_13BCE44(uint64_t a1)
{
  v2 = *(a1 + 48);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E5370(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

double sub_13BCE9C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26DC1B8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

void *sub_13BCF1C(uint64_t *a1)
{
  if (!a1)
  {

    sub_13EBB58();
  }

  *result = &off_26DC238;
  result[1] = a1;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  result[10] = 0;
  result[11] = 0;
  *(result + 93) = 0;
  return result;
}

uint64_t sub_13BCF9C(uint64_t a1)
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
  sub_13EBBC0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13BD048(uint64_t a1)
{
  sub_13BCF9C(a1);

  operator delete();
}

uint64_t sub_13BD080(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13C077C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_13BD130(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

        v17 = sub_194DB04((a1 + 48), v16);
        v14 = sub_1958890(v17, *v25, a3);
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v18 = v6 - 1;
      while (1)
      {
        v19 = v18 + 1;
        *v25 = v18 + 1;
        v20 = *(a1 + 40);
        if (v20 && (v21 = *(a1 + 32), v21 < *v20))
        {
          *(a1 + 32) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          v23 = sub_13C1600(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = *v25;
        }

        v18 = sub_2205180(a3, v22, v19);
        *v25 = v18;
        if (!v18)
        {
          break;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_33;
        }
      }

LABEL_38:
      *v25 = 0;
      return *v25;
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
        return *v25;
      }

      goto LABEL_38;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_23:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_13BD308(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_13C0B6C(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    __dst = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
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

uint64_t sub_13BD46C(uint64_t a1)
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
      v7 = sub_13C0DC4(v6);
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
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_13BD55C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EBD4C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_13BD650(uint64_t a1)
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
    v5 = sub_13C12B4(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_13BD6B8(uint64_t a1)
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
  if (a1 != &off_276E2C0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15EDD54(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_13EBC44((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13BD77C(uint64_t a1)
{
  sub_13BD6B8(a1);

  operator delete();
}

uint64_t sub_13BD7B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13C1C80(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_15EDD90(*(v1 + 48));
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

char *sub_13BD844(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = v15 + 1;
          v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_13E1B40(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v25;
          }

          v15 = sub_22052A0(a3, v19, v16);
          v25 = v15;
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

        v21 = sub_15EE248(v23);
        *(a1 + 48) = v21;
        v6 = v25;
      }

      v14 = sub_2205210(a3, v21, v6);
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

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_34:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v25;
}

char *sub_13BDA28(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_15EE004(v6, v8, a3);
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

      v4 = sub_13DB6A8(v11, v13, a3);
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

uint64_t sub_13BDBD0(uint64_t a1)
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
      v7 = sub_13DB86C(v6);
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
    v8 = sub_15EE118(*(a1 + 48));
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

void sub_13BDCAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EBDD8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v10 = *(a1 + 48);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_15EE248(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_2779E08;
    }

    sub_12EB184(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13BDDC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 0x20) != 0)
    {
      result = sub_16E4B4C(*(v3 + 64));
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

uint64_t sub_13BDE30(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
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
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = sub_13D5A9C(*(result + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_13D6034(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_13BDF10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_42;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_7:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_31:
    v7 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_9:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_42;
    }

LABEL_39:
    v9 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_42;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_6:
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_27:
  v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_8:
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_35:
  v8 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  *v8 = 0;
  *(v8 + 23) = 0;
  if (v1 < 0)
  {
    goto LABEL_39;
  }

LABEL_42:
  v11 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v11)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_13BE0C8(uint64_t a1)
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

  if (a1 != &off_276E2F8)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_13D65B4(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_13D86B0(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_13E27AC(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_13EBCC8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13BE1C4(uint64_t a1)
{
  sub_13BE0C8(a1);

  operator delete();
}

uint64_t sub_13BE1FC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13BA608(v4);
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
      result = sub_13BDE30(*(v1 + 48));
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

    result = sub_13BA608(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      result = sub_13BDF10(*(v1 + 64));
    }
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_13BE2BC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v37, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v37 + 1;
    v8 = *v37;
    if (*v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v37 + 2;
      }
    }

    v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v20 = v7 - 1;
          while (1)
          {
            v21 = v20 + 1;
            v37 = v20 + 1;
            v22 = *(a1 + 40);
            if (v22 && (v23 = *(a1 + 32), v23 < *v22))
            {
              *(a1 + 32) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_13E1810(*(a1 + 24));
              v24 = sub_19593CC(a1 + 24, v25);
              v21 = v37;
            }

            v20 = sub_2204E20(a3, v24, v21);
            v37 = v20;
            if (!v20)
            {
              goto LABEL_64;
            }

            if (*a3 <= v20 || *v20 != 26)
            {
              goto LABEL_57;
            }
          }
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 2u;
          v26 = *(a1 + 56);
          if (!v26)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            v26 = sub_13E1810(v28);
            *(a1 + 56) = v26;
            v7 = v37;
          }

          v15 = sub_2204E20(a3, v26, v7);
          goto LABEL_56;
        }
      }

      else if (v11 == 10 && v8 == 82)
      {
        *(a1 + 16) |= 4u;
        v12 = *(a1 + 64);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_13E6FF0(v14);
          *(a1 + 64) = v12;
          v7 = v37;
        }

        v15 = sub_22053C0(a3, v12, v7);
        goto LABEL_56;
      }

      goto LABEL_49;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_49;
    }

    v5 |= 8u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_26:
      v37 = v18;
      *(a1 + 72) = v17 != 0;
      goto LABEL_57;
    }

    v35 = sub_19587DC(v7, v17);
    v37 = v35;
    *(a1 + 72) = v36 != 0;
    if (!v35)
    {
      goto LABEL_64;
    }

LABEL_57:
    if (sub_195ADC0(a3, &v37, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v29 = *(a1 + 48);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_13D6D68(v31);
      *(a1 + 48) = v29;
      v7 = v37;
    }

    v15 = sub_2205330(a3, v29, v7);
LABEL_56:
    v37 = v15;
    if (!v15)
    {
      goto LABEL_64;
    }

    goto LABEL_57;
  }

LABEL_49:
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
      v7 = v37;
    }

    v15 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_56;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

char *sub_13BE5F0(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_13D692C(v7, v9, a3);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 72);
    *v4 = 16;
    v4[1] = v10;
    v4 += 2;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_13D893C(v13, v15, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 56);
    *v4 = 34;
    v17 = *(v16 + 20);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_13D893C(v16, v18, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v19 = *(a1 + 64);
    *v4 = 82;
    v20 = *(v19 + 20);
    v4[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v4 + 1);
    }

    else
    {
      v21 = v4 + 2;
    }

    v4 = sub_13E2C48(v19, v21, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v25)
  {
    v27 = v25;
    memcpy(v4, v26, v25);
    v4 += v27;
    return v4;
  }

  return sub_1957130(a3, v26, v25, v4);
}

uint64_t sub_13BE898(uint64_t a1)
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
      v7 = sub_13D8AEC(v6);
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
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v12 = sub_13D6AF8(*(a1 + 48));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
LABEL_14:
          v2 += (v8 >> 2) & 2;
          goto LABEL_15;
        }

LABEL_13:
        v9 = sub_13E2E10(*(a1 + 64));
        v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_14;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v13 = sub_13D8AEC(*(a1 + 56));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
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

void sub_13BE9F4(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_13EBE64((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
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

        v11 = sub_13D6D68(v13);
        *(result + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_276EB38;
      }

      sub_13BEBC8(v11, v14);
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

    *(result + 16) |= 2u;
    v15 = *(result + 56);
    if (!v15)
    {
      v16 = *(result + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_13E1810(v17);
      *(result + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_276EC28;
    }

    sub_13BB240(v15, v18);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
LABEL_10:
        *(result + 16) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      *(result + 72) = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_31:
    *(result + 16) |= 4u;
    v19 = *(result + 64);
    if (!v19)
    {
      v20 = *(result + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_13E6FF0(v21);
      *(result + 64) = v19;
    }

    if (*(a2 + 64))
    {
      v22 = *(a2 + 64);
    }

    else
    {
      v22 = &off_276F048;
    }

    sub_13BED44(v19, v22);
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

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13BEBC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_29;
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
        goto LABEL_5;
      }

      goto LABEL_13;
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
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

LABEL_13:
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

    v11 = sub_13D6C70(v13);
    *(a1 + 40) = v11;
  }

  if (*(a2 + 40))
  {
    v14 = *(a2 + 40);
  }

  else
  {
    v14 = &off_276EAE0;
  }

  sub_13D4848(v11, v14);
  if ((v4 & 8) != 0)
  {
LABEL_21:
    *(a1 + 16) |= 8u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_13D6CEC(v17);
      *(a1 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_276EB08;
    }

    sub_13D4FEC(v15, v18);
  }

LABEL_29:
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13BED44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_35;
  }

  if (*(a2 + 16))
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
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 16) & 2) == 0)
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
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
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
  v14 = *(a2 + 48);
  *(a1 + 16) |= 8u;
  v15 = *(a1 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_23:
  v17 = *(a2 + 56);
  *(a1 + 16) |= 0x10u;
  v18 = *(a1 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a1 + 56), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_26:
  v20 = *(a2 + 64);
  *(a1 + 16) |= 0x20u;
  v21 = *(a1 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA1C((a1 + 64), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_29:
  v23 = *(a2 + 72);
  *(a1 + 16) |= 0x40u;
  v24 = *(a1 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a1 + 72), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
  if (v4 < 0)
  {
LABEL_32:
    v26 = *(a2 + 80);
    *(a1 + 16) |= 0x80u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    sub_194EA1C((a1 + 80), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
  }

LABEL_35:
  v29 = *(a2 + 8);
  if (v29)
  {

    sub_1957EF4((a1 + 8), (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13BEF84(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
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
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = sub_13D43F0(*(result + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_13D4A84(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_13BF064(uint64_t a1)
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

  if (a1 != &off_276E348)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_13D5158(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_13D86B0(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_13EBCC8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13BF140(uint64_t a1)
{
  sub_13BF064(a1);

  operator delete();
}

uint64_t sub_13BF178(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13BA608(v4);
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
      result = sub_13BEF84(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_13BA608(*(v1 + 56));
    }
  }

  if ((v5 & 0xC) != 0)
  {
    *(v1 + 64) = 0;
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

char *sub_13BF228(uint64_t a1, char *a2, int32x2_t *a3)
{
  v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v39, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v39 + 1;
    v8 = *v39;
    if (*v39 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v39, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v39 + 2;
      }
    }

    v39 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v20 = v7 - 1;
          while (1)
          {
            v21 = v20 + 1;
            v39 = v20 + 1;
            v22 = *(a1 + 40);
            if (v22 && (v23 = *(a1 + 32), v23 < *v22))
            {
              *(a1 + 32) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_13E1810(*(a1 + 24));
              v24 = sub_19593CC(a1 + 24, v25);
              v21 = v39;
            }

            v20 = sub_2204E20(a3, v24, v21);
            v39 = v20;
            if (!v20)
            {
              goto LABEL_68;
            }

            if (*a3 <= v20 || *v20 != 26)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 2u;
          v26 = *(a1 + 56);
          if (!v26)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            v26 = sub_13E1810(v28);
            *(a1 + 56) = v26;
            v7 = v39;
          }

          v29 = sub_2204E20(a3, v26, v7);
          goto LABEL_57;
        }
      }

      else if (v11 == 5 && v8 == 40)
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
            v39 = sub_19587DC(v7, (v15 - 128));
            if (!v39)
            {
              goto LABEL_68;
            }

            LODWORD(v13) = v36;
            goto LABEL_16;
          }

          v12 = v7 + 2;
        }

        v39 = v12;
LABEL_16:
        if (sub_13BF590(v13))
        {
          *(a1 + 16) |= 8u;
          *(a1 + 68) = v13;
        }

        else
        {
          sub_12E85B8();
        }

        goto LABEL_58;
      }

      goto LABEL_50;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_50;
    }

    v5 |= 4u;
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
      v39 = v18;
      *(a1 + 64) = v17 != 0;
      goto LABEL_58;
    }

    v37 = sub_19587DC(v7, v17);
    v39 = v37;
    *(a1 + 64) = v38 != 0;
    if (!v37)
    {
      goto LABEL_68;
    }

LABEL_58:
    if (sub_195ADC0(a3, &v39, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v30 = *(a1 + 48);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_13D590C(v32);
      *(a1 + 48) = v30;
      v7 = v39;
    }

    v29 = sub_2205450(a3, v30, v7);
LABEL_57:
    v39 = v29;
    if (!v29)
    {
      goto LABEL_68;
    }

    goto LABEL_58;
  }

LABEL_50:
  if (v8)
  {
    v33 = (v8 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v7 = v39;
    }

    v29 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_57;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_68:
  v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

char *sub_13BF5B8(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_13D54D0(v7, v9, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 64);
    *v4 = 16;
    v4[1] = v10;
    v4 += 2;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_13D893C(v13, v15, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 56);
    *v4 = 34;
    v17 = *(v16 + 20);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_13D893C(v16, v18, a3);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v20 = *(a1 + 68);
    *v4 = 40;
    v4[1] = v20;
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v4[2] = v20 >> 7;
      v19 = v4 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v19 - 1) = v4 | 0x80;
          v4 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v4 + 2;
    }
  }

  else
  {
    v19 = v4;
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v19;
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

  if ((*a3 - v19) >= v26)
  {
    v28 = v26;
    memcpy(v19, v27, v26);
    v19 += v28;
    return v19;
  }

  return sub_1957130(a3, v27, v26, v19);
}

uint64_t sub_13BF884(uint64_t a1)
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
      v7 = sub_13D8AEC(v6);
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
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v9 = sub_13D569C(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_13D8AEC(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += (v8 >> 1) & 2;
    if ((v8 & 8) != 0)
    {
      v11 = *(a1 + 68);
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 11;
      }

      v2 += v13;
    }
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

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_13BF9D8(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_13EBE64((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
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

        v11 = sub_13D590C(v13);
        *(result + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_276EAA8;
      }

      sub_13BFB6C(v11, v14);
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

    *(result + 16) |= 2u;
    v15 = *(result + 56);
    if (!v15)
    {
      v16 = *(result + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_13E1810(v17);
      *(result + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_276EC28;
    }

    sub_13BB240(v15, v18);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
LABEL_10:
        *(result + 16) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      *(result + 68) = *(a2 + 68);
      goto LABEL_10;
    }

LABEL_31:
    *(result + 64) = *(a2 + 64);
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

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13BFB6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_29;
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
        goto LABEL_5;
      }

      goto LABEL_13;
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
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

LABEL_13:
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

    v11 = sub_13D5814(v13);
    *(a1 + 40) = v11;
  }

  if (*(a2 + 40))
  {
    v14 = *(a2 + 40);
  }

  else
  {
    v14 = &off_276EA50;
  }

  sub_13D4848(v11, v14);
  if ((v4 & 8) != 0)
  {
LABEL_21:
    *(a1 + 16) |= 8u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_13D5890(v17);
      *(a1 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_276EA78;
    }

    sub_13D4FEC(v15, v18);
  }

LABEL_29:
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13BFD00(uint64_t a1)
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

  if (a1 != &off_276E390)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_13BD6B8(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_13BE0C8(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_13BF064(v7);
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

void sub_13BFDF0(uint64_t a1)
{
  sub_13BFD00(a1);

  operator delete();
}

uint64_t sub_13BFE28(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_13BD7B4(*(result + 24));
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

    result = sub_13BE1FC(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_13BF178(*(v1 + 40));
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

char *sub_13BFEB0(uint64_t a1, char *a2, int32x2_t *a3)
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

          v19 = sub_13C14E4(v21);
          *(a1 + 40) = v19;
          v6 = v26;
        }

        v15 = sub_2205600(a3, v19, v6);
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

          v16 = sub_13C1444(v18);
          *(a1 + 32) = v16;
          v6 = v26;
        }

        v15 = sub_2205570(a3, v16, v6);
        goto LABEL_37;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 24);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_13C13A8(v24);
        *(a1 + 24) = v22;
        v6 = v26;
      }

      v15 = sub_22054E0(a3, v22, v6);
      goto LABEL_37;
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
LABEL_37:
    v26 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v26;
}

char *sub_13C00B0(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_13BDA28(v7, v9, a3);
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

  v4 = sub_13BE5F0(v10, v12, a3);
  if ((v6 & 4) != 0)
  {
LABEL_17:
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

    v4 = sub_13BF5B8(v13, v15, a3);
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

uint64_t sub_13C029C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_13BDBD0(*(a1 + 24));
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
    v5 = sub_13BE898(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_13BF884(*(a1 + 40));
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

void sub_13C039C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_30;
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

      v5 = sub_13C13A8(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_276E2C0;
    }

    sub_13BDCAC(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
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

    v9 = sub_13C1444(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_276E2F8;
  }

  sub_13BE9F4(v9, v12);
  if ((v4 & 4) != 0)
  {
LABEL_22:
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

      v13 = sub_13C14E4(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_276E348;
    }

    sub_13BF9D8(v13, v16);
  }

LABEL_30:
  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13C04F8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_13BDDC4(*(a1 + 24) + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13C053C(uint64_t result)
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
      result = sub_13E0798(*(result + 32));
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

void *sub_13C05D4(void *a1)
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

  sub_13C0658(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13C0658(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  result = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E3C0)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_13E0BC4(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_13D86B0(v6);
      operator delete();
    }

    result = *(a1 + 64);
    if (result)
    {
      sub_13BFD00(result);

      operator delete();
    }
  }

  return result;
}

void sub_13C0744(void *a1)
{
  sub_13C05D4(a1);

  operator delete();
}

uint64_t sub_13C077C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    result = sub_13C053C(*(result + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_26;
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

LABEL_21:
  v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_26:
  result = sub_13BA608(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result = sub_13BFE28(*(v1 + 64));
  }

LABEL_9:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_13C08A0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v33, i) & 1) == 0; i = a3[11].u32[1])
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
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 0x20u;
          v20 = *(a1 + 64);
          if (!v20)
          {
            v21 = *(a1 + 8);
            v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if (v21)
            {
              v22 = *v22;
            }

            sub_13C1584(v22);
            v20 = v23;
            *(a1 + 64) = v23;
            v6 = *v33;
          }

          v15 = sub_2205720(a3, v20, v6);
          goto LABEL_55;
        }
      }

      else if (v10 == 6)
      {
        if (v7 == 50)
        {
          *(a1 + 16) |= 2u;
          v27 = *(a1 + 8);
          v17 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v17 = *v17;
          }

          v18 = (a1 + 32);
          goto LABEL_47;
        }
      }

      else if (v10 == 9 && v7 == 74)
      {
        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 40);
        goto LABEL_47;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v19 = *(a1 + 8);
        v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v17 = *v17;
        }

        v18 = (a1 + 24);
LABEL_47:
        v28 = sub_194DB04(v18, v17);
        v15 = sub_1958890(v28, *v33, a3);
        goto LABEL_55;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 8u;
        v24 = *(a1 + 48);
        if (!v24)
        {
          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          v24 = sub_13E223C(v26);
          *(a1 + 48) = v24;
          v6 = *v33;
        }

        v15 = sub_2205690(a3, v24, v6);
        goto LABEL_55;
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      *(a1 + 16) |= 0x10u;
      v12 = *(a1 + 56);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_13E1810(v14);
        *(a1 + 56) = v12;
        v6 = *v33;
      }

      v15 = sub_2204E20(a3, v12, v6);
      goto LABEL_55;
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
        return *v33;
      }

LABEL_61:
      *v33 = 0;
      return *v33;
    }

    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v6 = *v33;
    }

    v15 = sub_1952690(v7, v31, v6, a3);
LABEL_55:
    *v33 = v15;
    if (!v15)
    {
      goto LABEL_61;
    }
  }

  return *v33;
}

char *sub_13C0B6C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 48);
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

  v4 = sub_13E0EE0(v9, v11, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 56);
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

  v4 = sub_13D893C(v12, v14, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_23:
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

  v4 = sub_13C00B0(v15, v17, a3);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_29:
  v4 = sub_128AEEC(a3, 6, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) != 0)
  {
LABEL_7:
    v4 = sub_128AEEC(a3, 9, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_8:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

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

  if ((*a3 - v4) >= v19)
  {
    v21 = v19;
    memcpy(v4, v20, v19);
    v4 += v21;
    return v4;
  }

  return sub_1957130(a3, v20, v19, v4);
}

uint64_t sub_13C0DC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_17;
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
    v13 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v16 = sub_13E1098(*(a1 + 48));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_23:
  v17 = sub_13D8AEC(*(a1 + 56));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_16:
    v10 = sub_13C029C(*(a1 + 64));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v11 = *(a1 + 8);
  if (v11)
  {
    v18 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v3 += v19;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_13C0FA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_42;
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
        goto LABEL_5;
      }

      goto LABEL_15;
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
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_18:
  *(a1 + 16) |= 8u;
  v14 = *(a1 + 48);
  if (!v14)
  {
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v14 = sub_13E223C(v16);
    *(a1 + 48) = v14;
  }

  if (*(a2 + 48))
  {
    v17 = *(a2 + 48);
  }

  else
  {
    v17 = &off_276EFA8;
  }

  sub_13C11A4(v14, v17);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

LABEL_26:
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

    v18 = sub_13E1810(v20);
    *(a1 + 56) = v18;
  }

  if (*(a2 + 56))
  {
    v21 = *(a2 + 56);
  }

  else
  {
    v21 = &off_276EC28;
  }

  sub_13BB240(v18, v21);
  if ((v4 & 0x20) != 0)
  {
LABEL_34:
    *(a1 + 16) |= 0x20u;
    v22 = *(a1 + 64);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_13C1584(v24);
      *(a1 + 64) = v22;
    }

    if (*(a2 + 64))
    {
      v25 = *(a2 + 64);
    }

    else
    {
      v25 = &off_276E390;
    }

    sub_13C039C(v22, v25);
  }

LABEL_42:
  v26 = *(a2 + 8);
  if (v26)
  {

    sub_1957EF4((a1 + 8), (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13C11A4(uint64_t a1, uint64_t a2)
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

      v9 = sub_13E21B4(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276EF80;
    }

    sub_12B0A14(v9, v12);
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

uint64_t sub_13C12B4(uint64_t a1)
{
  if ((*(a1 + 16) & 0x20) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 64);
  if ((*(v1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_13BDDC4(*(v1 + 24) + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_13C1304(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26DC2B8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_13C13A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26DC338;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_13C1444(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26DC3B8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 57) = 0u;
  return result;
}

uint64_t sub_13C14E4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26DC438;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

double sub_13C1584(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26DC4B8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void *sub_13C1600(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26DC538;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  return result;
}

uint64_t sub_13C168C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13E7A88(v4);
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

void sub_13C1708(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_13ED008((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

uint64_t sub_13C17C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (*(result + 16))
  {
    result = sub_13C20AC(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((*(result + 16) & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_13C4990(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = sub_13CC5AC(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = sub_13CFA4C(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    result = sub_13CB6C8(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = sub_13C826C(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  result = sub_13C58F8(*(v1 + 72));
  if (v2 < 0)
  {
LABEL_10:
    result = sub_13BC910(*(v1 + 80));
  }

LABEL_11:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

void sub_13C1898(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_75;
  }

  if (*(a2 + 16))
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

      sub_13D3918(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_276E408;
    }

    sub_13C3FB8(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else if ((*(a2 + 16) & 2) == 0)
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

    v9 = sub_13D39BC(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_276E4E8;
  }

  sub_13C503C(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_27:
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

    sub_13D3EFC(v15);
    *(a1 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_276E7B0;
  }

  sub_13CE204(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_35:
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

    sub_13D4090(v19);
    *(a1 + 48) = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_276E8C8;
  }

  sub_13D14C8(v17, v20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_43:
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

    sub_13D3CF4(v23);
    *(a1 + 56) = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_276E648;
  }

  sub_13C9B04(v21, v24);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_51:
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

    v25 = sub_13D3E5C(v27);
    *(a1 + 64) = v25;
  }

  if (*(a2 + 64))
  {
    v28 = *(a2 + 64);
  }

  else
  {
    v28 = &off_276E768;
  }

  sub_13CBE20(v25, v28);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

LABEL_59:
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

    v29 = sub_13D3AEC(v31);
    *(a1 + 72) = v29;
  }

  if (*(a2 + 72))
  {
    v32 = *(a2 + 72);
  }

  else
  {
    v32 = &off_276E530;
  }

  sub_13C613C(v29, v32);
  if (v4 < 0)
  {
LABEL_67:
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

      sub_13D80D4(v35);
      *(a1 + 80) = v33;
    }

    if (*(a2 + 80))
    {
      v36 = *(a2 + 80);
    }

    else
    {
      v36 = &off_276EB70;
    }

    sub_13BCB04(v33, v36);
  }

LABEL_75:
  v37 = *(a2 + 8);
  if (v37)
  {

    sub_1957EF4((a1 + 8), (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_13C1B80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!sub_13C47C0(*(a1 + 24)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    if (!sub_13BDDC4(*(a1 + 32) + 24))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    if (!sub_13CEAF4(*(a1 + 40)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    if (!sub_13D2128(*(a1 + 48)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    if (!sub_13CA0AC(*(a1 + 56)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    if (!sub_13CBFA4(*(a1 + 64)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) == 0)
  {
    goto LABEL_22;
  }

  if (!sub_13C62F8(*(a1 + 72)))
  {
    return 0;
  }

  v2 = *(a1 + 16);
LABEL_22:
  if ((v2 & 0x80) == 0)
  {
    return 1;
  }

  v5 = *(a1 + 80);
  v6 = *(v5 + 48);
  do
  {
    v3 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_16E5370(*(*(v5 + 56) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v3;
}

uint64_t sub_13C1C80(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
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

LABEL_21:
    v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  v8 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_29;
    }

LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_29:
  v9 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v9 + 23) & 0x80000000) == 0)
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    result = sub_16E48B0(*(result + 64));
    goto LABEL_9;
  }

  **v9 = 0;
  *(v9 + 8) = 0;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

void *sub_13C1DEC(void *a1)
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

  sub_13C1E80(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 5);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13C1E80(uint64_t a1)
{
  v3 = *(a1 + 64);
  v2 = (a1 + 64);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C((a1 + 96));
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

  result = (a1 + 128);
  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E408)
  {
    v5 = *(a1 + 136);
    if (v5)
    {
      sub_13D86B0(v5);
      operator delete();
    }

    v6 = *(a1 + 144);
    if (v6)
    {
      sub_13D81B4(v6);
      operator delete();
    }

    v7 = *(a1 + 152);
    if (v7)
    {
      sub_16E4E08(v7);
      operator delete();
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      sub_16E4E08(v8);
      operator delete();
    }

    v9 = *(a1 + 168);
    if (v9)
    {
      sub_16E5B34(v9);
      operator delete();
    }

    v10 = *(a1 + 176);
    if (v10)
    {
      sub_13DB2B8(v10);
      operator delete();
    }

    v11 = *(a1 + 184);
    if (v11)
    {
      sub_16F8B5C(v11);
      operator delete();
    }

    result = *(a1 + 192);
    if (result)
    {
      sub_170E740(result);

      operator delete();
    }
  }

  return result;
}

void sub_13C2074(void *a1)
{
  sub_13C1DEC(a1);

  operator delete();
}

uint64_t sub_13C20AC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  v3 = *(a1 + 16);
  if (v3)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v5 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v7 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v9 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v11 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_42;
    }

    v4 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
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

LABEL_19:
    v6 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v8 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v10 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_52;
  }

  if ((v3 & 0x100) != 0)
  {
    v14 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_66;
      }
    }

LABEL_45:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_67;
  }

  if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

LABEL_66:
  result = sub_13BA608(*(a1 + 136));
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = sub_13BA630(*(a1 + 144));
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = sub_16E4E44(*(a1 + 152));
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = sub_16E4E44(*(a1 + 160));
  if ((v3 & 0x2000) == 0)
  {
LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = sub_16E5B70(*(a1 + 168));
  if ((v3 & 0x4000) == 0)
  {
LABEL_50:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_71:
  result = sub_13C1C80(*(a1 + 176));
  if ((v3 & 0x8000) != 0)
  {
LABEL_51:
    result = sub_16F8B98(*(a1 + 184));
  }

LABEL_52:
  if ((v3 & 0x10000) != 0)
  {
    result = sub_170E77C(*(a1 + 192));
  }

  if ((v3 & 0xFE0000) != 0)
  {
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  if ((v3 & 0x3000000) != 0)
  {
    *(a1 + 220) = 0;
    *(a1 + 216) = 0;
  }

  v13 = *(a1 + 8);
  v12 = a1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_13C2380(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v105 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v105, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = (*v105 + 1);
    v10 = **v105;
    if (**v105 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v105, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v105 + 2);
      }
    }

    *v105 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 10)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x200u;
        v14 = *(a1 + 136);
        if (!v14)
        {
          v15 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v15 = *v15;
          }

          v14 = sub_13E1810(v15);
          *(a1 + 136) = v14;
          v9 = *v105;
        }

        v16 = sub_2204E20(a3, v14, v9);
        goto LABEL_174;
      case 2u:
        if (v10 != 18)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x400u;
        v52 = *(a1 + 144);
        if (!v52)
        {
          v53 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v53 = *v53;
          }

          v52 = sub_13E1794(v53);
          *(a1 + 144) = v52;
          v9 = *v105;
        }

        v16 = sub_2204EB0(a3, v52, v9);
        goto LABEL_174;
      case 3u:
        if (v10 != 24)
        {
          goto LABEL_197;
        }

        v43 = v9 + 1;
        v42 = *v9;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_70;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if (v44 < 0)
        {
          *v105 = sub_19587DC(v9, v42);
          if (!*v105)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v43 = v9 + 2;
LABEL_70:
          *v105 = v43;
        }

        if (v42 > 5)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 0x20000u;
          *(a1 + 200) = v42;
        }

        goto LABEL_175;
      case 4u:
        if (v10 != 34)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 1u;
        v48 = *(a1 + 8);
        v18 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v18 = *v18;
        }

        v19 = (a1 + 64);
        goto LABEL_173;
      case 5u:
        if (v10 != 42)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x800u;
        v34 = *(a1 + 152);
        if (v34)
        {
          goto LABEL_126;
        }

        v35 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v35 = *v35;
        }

        v34 = sub_16F5828(v35);
        *(a1 + 152) = v34;
        goto LABEL_125;
      case 6u:
        if (v10 != 48)
        {
          goto LABEL_197;
        }

        v60 = v9 + 1;
        v61 = *v9;
        if ((v61 & 0x8000000000000000) == 0)
        {
          goto LABEL_109;
        }

        v62 = *v60;
        v63 = (v62 << 7) + v61;
        LODWORD(v61) = v63 - 128;
        if (v62 < 0)
        {
          *v105 = sub_19587DC(v9, (v63 - 128));
          if (!*v105)
          {
            goto LABEL_210;
          }

          LODWORD(v61) = v97;
        }

        else
        {
          v60 = v9 + 2;
LABEL_109:
          *v105 = v60;
        }

        if (sub_144E2E8(v61))
        {
          *(a1 + 16) |= 0x40000u;
          *(a1 + 204) = v61;
        }

        else
        {
          sub_12E84C8();
        }

        goto LABEL_175;
      case 7u:
        if (v10 != 58)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x1000u;
        v34 = *(a1 + 160);
        if (v34)
        {
          goto LABEL_126;
        }

        v66 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v66 = *v66;
        }

        v34 = sub_16F5828(v66);
        *(a1 + 160) = v34;
LABEL_125:
        v9 = *v105;
LABEL_126:
        v16 = sub_21F4D60(a3, v34, v9);
        goto LABEL_174;
      case 8u:
        if (v10 != 66)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x2000u;
        v49 = *(a1 + 168);
        if (!v49)
        {
          v50 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v50 = *v50;
          }

          sub_16F58FC(v50);
          v49 = v51;
          *(a1 + 168) = v51;
          v9 = *v105;
        }

        v16 = sub_21F86E8(a3, v49, v9);
        goto LABEL_174;
      case 9u:
        if (v10 == 72)
        {
          v72 = (v9 - 1);
          while (1)
          {
            *v105 = v72 + 1;
            v73 = *(v72 + 1);
            v74 = (v72 + 2);
            if (v73 < 0)
            {
              v75 = *v74;
              v76 = (v75 << 7) + v73;
              LODWORD(v73) = v76 - 128;
              if (v75 < 0)
              {
                *v105 = sub_19587DC(v72 + 1, (v76 - 128));
                if (!*v105)
                {
                  goto LABEL_210;
                }

                LODWORD(v73) = v79;
                goto LABEL_144;
              }

              v74 = (v72 + 3);
            }

            *v105 = v74;
LABEL_144:
            if (sub_13560C0(v73))
            {
              v77 = *(a1 + 24);
              if (v77 == *(a1 + 28))
              {
                v78 = v77 + 1;
                sub_1958E5C((a1 + 24), v77 + 1);
                *(*(a1 + 32) + 4 * v77) = v73;
              }

              else
              {
                *(*(a1 + 32) + 4 * v77) = v73;
                v78 = v77 + 1;
              }

              *(a1 + 24) = v78;
            }

            else
            {
              sub_1348EF8();
            }

            v72 = *v105;
            if (*a3 <= *v105 || **v105 != 72)
            {
              goto LABEL_175;
            }
          }
        }

        if (v10 == 74)
        {
          *&v106 = a1 + 24;
          *(&v106 + 1) = sub_13560C0;
          v107 = a1 + 8;
          v108 = 9;
          v16 = sub_1216588(a3, v9, &v106, v5);
          goto LABEL_174;
        }

LABEL_197:
        if (v10)
        {
          v103 = (v10 & 7) == 4;
        }

        else
        {
          v103 = 1;
        }

        if (!v103)
        {
          if (*v8)
          {
            v104 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v104 = sub_11F1920((a1 + 8));
            v9 = *v105;
          }

          v16 = sub_1952690(v10, v104, v9, a3);
LABEL_174:
          *v105 = v16;
          if (!v16)
          {
            goto LABEL_210;
          }

LABEL_175:
          if (sub_195ADC0(a3, v105, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
        }

        else
        {
LABEL_210:
          *v105 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v6;
        return *v105;
      case 0xAu:
        if (v10 != 82)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x4000u;
        v38 = *(a1 + 176);
        if (!v38)
        {
          v39 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v39 = *v39;
          }

          v38 = sub_13E1B40(v39);
          *(a1 + 176) = v38;
          v9 = *v105;
        }

        v16 = sub_22052A0(a3, v38, v9);
        goto LABEL_174;
      case 0xBu:
        if (v10 != 88)
        {
          goto LABEL_197;
        }

        v68 = v9 + 1;
        v69 = *v9;
        if ((v69 & 0x8000000000000000) == 0)
        {
          goto LABEL_135;
        }

        v70 = *v68;
        v71 = (v70 << 7) + v69;
        LODWORD(v69) = v71 - 128;
        if (v70 < 0)
        {
          *v105 = sub_19587DC(v9, (v71 - 128));
          if (!*v105)
          {
            goto LABEL_210;
          }

          LODWORD(v69) = v98;
        }

        else
        {
          v68 = v9 + 2;
LABEL_135:
          *v105 = v68;
        }

        if (sub_16E4BF0(v69))
        {
          *(a1 + 16) |= 0x80000u;
          *(a1 + 208) = v69;
        }

        else
        {
          sub_1313680();
        }

        goto LABEL_175;
      case 0xCu:
        if (v10 != 98)
        {
          goto LABEL_197;
        }

        v26 = v9 - 1;
        while (1)
        {
          v27 = (v26 + 1);
          *v105 = v26 + 1;
          v28 = *(a1 + 56);
          if (v28 && (v29 = *(a1 + 48), v29 < *v28))
          {
            *(a1 + 48) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            v31 = *(a1 + 40);
            if (!v31)
            {
              operator new();
            }

            *v33 = v32;
            v33[1] = sub_195A650;
            *v32 = 0;
            v32[1] = 0;
            v32[2] = 0;
            v30 = sub_19593CC(a1 + 40, v32);
            v27 = *v105;
          }

          v26 = sub_1958890(v30, v27, a3);
          *v105 = v26;
          if (!v26)
          {
            goto LABEL_210;
          }

          if (*a3 <= v26 || *v26 != 98)
          {
            goto LABEL_175;
          }
        }

      case 0xDu:
        if (v10 != 106)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x8000u;
        v36 = *(a1 + 184);
        if (!v36)
        {
          v37 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v37 = *v37;
          }

          v36 = sub_16F9FEC(v37);
          *(a1 + 184) = v36;
          v9 = *v105;
        }

        v16 = sub_2201EE0(a3, v36, v9);
        goto LABEL_174;
      case 0xEu:
        if (v10 != 114)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 2u;
        v65 = *(a1 + 8);
        v18 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
        if (v65)
        {
          v18 = *v18;
        }

        v19 = (a1 + 72);
        goto LABEL_173;
      case 0xFu:
        if (v10 != 120)
        {
          goto LABEL_197;
        }

        v6 |= 0x100000u;
        v24 = v9 + 1;
        v23 = *v9;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          v91 = sub_19587DC(v9, v23);
          *v105 = v91;
          *(a1 + 212) = v92 != 0;
          if (!v91)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v24 = v9 + 2;
LABEL_28:
          *v105 = v24;
          *(a1 + 212) = v23 != 0;
        }

        goto LABEL_175;
      case 0x10u:
        if (v10 != 128)
        {
          goto LABEL_197;
        }

        v6 |= 0x200000u;
        v46 = v9 + 1;
        v45 = *v9;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_77;
        }

        v47 = *v46;
        v45 = (v47 << 7) + v45 - 128;
        if (v47 < 0)
        {
          v93 = sub_19587DC(v9, v45);
          *v105 = v93;
          *(a1 + 213) = v94 != 0;
          if (!v93)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v46 = v9 + 2;
LABEL_77:
          *v105 = v46;
          *(a1 + 213) = v45 != 0;
        }

        goto LABEL_175;
      case 0x11u:
        if (v10 != 136)
        {
          goto LABEL_197;
        }

        v6 |= 0x400000u;
        v21 = v9 + 1;
        v20 = *v9;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if (v22 < 0)
        {
          v89 = sub_19587DC(v9, v20);
          *v105 = v89;
          *(a1 + 214) = v90 != 0;
          if (!v89)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v21 = v9 + 2;
LABEL_23:
          *v105 = v21;
          *(a1 + 214) = v20 != 0;
        }

        goto LABEL_175;
      case 0x12u:
        if (v10 != 144)
        {
          goto LABEL_197;
        }

        v6 |= 0x1000000u;
        v55 = v9 + 1;
        LODWORD(v54) = *v9;
        if ((v54 & 0x80) == 0)
        {
          goto LABEL_98;
        }

        v56 = *v55;
        v54 = v54 + (v56 << 7) - 128;
        if (v56 < 0)
        {
          v95 = sub_19587DC(v9, v54);
          *v105 = v95;
          *(a1 + 216) = v96;
          if (!v95)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v55 = v9 + 2;
LABEL_98:
          *v105 = v55;
          *(a1 + 216) = v54;
        }

        goto LABEL_175;
      case 0x13u:
        if (v10 != 154)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 4u;
        v67 = *(a1 + 8);
        v18 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
        if (v67)
        {
          v18 = *v18;
        }

        v19 = (a1 + 80);
        goto LABEL_173;
      case 0x14u:
        if (v10 != 160)
        {
          goto LABEL_197;
        }

        v6 |= 0x800000u;
        v84 = v9 + 1;
        v83 = *v9;
        if ((v83 & 0x8000000000000000) == 0)
        {
          goto LABEL_164;
        }

        v85 = *v84;
        v83 = (v85 << 7) + v83 - 128;
        if (v85 < 0)
        {
          v101 = sub_19587DC(v9, v83);
          *v105 = v101;
          *(a1 + 215) = v102 != 0;
          if (!v101)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v84 = v9 + 2;
LABEL_164:
          *v105 = v84;
          *(a1 + 215) = v83 != 0;
        }

        goto LABEL_175;
      case 0x15u:
        if (v10 != 170)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x10000u;
        v57 = *(a1 + 192);
        if (!v57)
        {
          v58 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v58 = *v58;
          }

          sub_1728C2C(v58);
          v57 = v59;
          *(a1 + 192) = v59;
          v9 = *v105;
        }

        v16 = sub_2204FD0(a3, v57, v9);
        goto LABEL_174;
      case 0x16u:
        if (v10 != 178)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 8u;
        v64 = *(a1 + 8);
        v18 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
        if (v64)
        {
          v18 = *v18;
        }

        v19 = (a1 + 88);
        goto LABEL_173;
      case 0x17u:
        if (v10 != 184)
        {
          goto LABEL_197;
        }

        v6 |= 0x2000000u;
        v81 = v9 + 1;
        v80 = *v9;
        if ((v80 & 0x8000000000000000) == 0)
        {
          goto LABEL_159;
        }

        v82 = *v81;
        v80 = (v82 << 7) + v80 - 128;
        if (v82 < 0)
        {
          v99 = sub_19587DC(v9, v80);
          *v105 = v99;
          *(a1 + 220) = v100 != 0;
          if (!v99)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v81 = v9 + 2;
LABEL_159:
          *v105 = v81;
          *(a1 + 220) = v80 != 0;
        }

        goto LABEL_175;
      case 0x18u:
        if (v10 != 194)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x10u;
        v86 = *(a1 + 8);
        v18 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
        if (v86)
        {
          v18 = *v18;
        }

        v19 = (a1 + 96);
        goto LABEL_173;
      case 0x19u:
        if (v10 != 202)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x20u;
        v41 = *(a1 + 8);
        v18 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v18 = *v18;
        }

        v19 = (a1 + 104);
        goto LABEL_173;
      case 0x1Au:
        if (v10 != 210)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x40u;
        v40 = *(a1 + 8);
        v18 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v18 = *v18;
        }

        v19 = (a1 + 112);
        goto LABEL_173;
      case 0x1Bu:
        if (v10 != 218)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x80u;
        v87 = *(a1 + 8);
        v18 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
        if (v87)
        {
          v18 = *v18;
        }

        v19 = (a1 + 120);
        goto LABEL_173;
      case 0x1Cu:
        if (v10 != 226)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x100u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = (a1 + 128);
LABEL_173:
        v88 = sub_194DB04(v19, v18);
        v16 = sub_1958890(v88, *v105, a3);
        goto LABEL_174;
      default:
        goto LABEL_197;
    }
  }
}