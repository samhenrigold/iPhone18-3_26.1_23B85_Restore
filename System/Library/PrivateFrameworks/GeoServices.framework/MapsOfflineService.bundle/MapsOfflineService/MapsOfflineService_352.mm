uint64_t sub_14545D8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v26, i) & 1) == 0; i = a3[11].u32[1])
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 4)
    {
      if (v7 == 32)
      {
        v20 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v26 = sub_19587DC(v6, v19);
          if (!*v26)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v20 = v6 + 2;
LABEL_31:
          *v26 = v20;
        }

        if (v19 > 3)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 36) = v19;
        }

        continue;
      }

      goto LABEL_13;
    }

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
          *v26 = sub_19587DC(v6, v16);
          if (!*v26)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v17 = v6 + 2;
LABEL_24:
          *v26 = v17;
        }

        if (v16 > 5)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v16;
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
          return *v26;
        }

LABEL_49:
        *v26 = 0;
        return *v26;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = *v26;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_37;
    }

    if (v10 != 1 || v7 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v24 = sub_194DB04((a1 + 24), v23);
    v15 = sub_1958890(v24, *v26, a3);
LABEL_37:
    *v26 = v15;
    if (!v15)
    {
      goto LABEL_49;
    }
  }

  return *v26;
}

char *sub_1454814(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 36);
    *v7 = 32;
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

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v20)
  {
    v22 = v20;
    memcpy(v12, v21, v20);
    v12 += v22;
    return v12;
  }

  return sub_1957130(a3, v21, v20, v12);
}

uint64_t sub_14549E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_18;
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
      goto LABEL_13;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

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
LABEL_13:
  if ((v1 & 4) != 0)
  {
    v8 = *(a1 + 36);
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

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_1454AF4(uint64_t a1)
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
  if (a1 != &off_27715E8)
  {
    v6 = *(a1 + 24);
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
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1454BAC(uint64_t a1)
{
  sub_1454AF4(a1);

  operator delete();
}

uint64_t sub_1454BE4(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_144E5CC(*(result + 24));
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

char *sub_1454C44(uint64_t a1, char *a2, int32x2_t *a3)
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

        if (v15 > 0xD)
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

      sub_14BAE64(v20);
      v18 = v21;
      *(a1 + 24) = v21;
      v6 = v23;
    }

    v14 = sub_22095B8(a3, v18, v6);
LABEL_31:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

char *sub_1454E10(uint64_t a1, char *__dst, unint64_t *a3)
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

    __dst = sub_14589F4(v6, v8, a3);
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

uint64_t sub_1454F9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
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

std::string *sub_1455064(std::string *result, uint64_t a2)
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
        size = v3->__r_.__value_.__l.__size_;
        v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v7 = *v7;
        }

        sub_14BAE64(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2771738;
      }

      result = sub_144EF20(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1455134(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1455174(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1563CD8(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14551F4(void *a1)
{
  sub_1455174(a1);

  operator delete();
}

uint64_t sub_145522C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1454BE4(v4);
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

char *sub_14552A8(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_14BAB80(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_220BFE8(a3, v16, v13);
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

char *sub_1455438(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1454E10(v8, v10, a3);
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

uint64_t sub_1455578(uint64_t a1)
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
      v7 = sub_1454F9C(v6);
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

uint64_t **sub_1455620(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    result = sub_1565A34((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
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

uint64_t sub_14556E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v3 = 8 * v1;
  while (1)
  {
    v4 = *(*(a1 + 16) + v3);
    if (*(v4 + 16))
    {
      result = sub_144F560(*(v4 + 24));
      if (!result)
      {
        break;
      }
    }

    v3 -= 8;
    v6 = __OFSUB__(v1, 1);
    LODWORD(v1) = v1 - 1;
    if ((v1 < 0) ^ v6 | (v1 == 0))
    {
      return 1;
    }
  }

  return result;
}

void *sub_1455758(void *a1)
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

  sub_14557F0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1563D5C(a1 + 5);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_14557F0(uint64_t a1)
{
  v3 = *(a1 + 64);
  v2 = (a1 + 64);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2771640)
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      sub_1451C84(v5);
      operator delete();
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      sub_14B64B0(v6);
      operator delete();
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      sub_14528F4(v7);
      operator delete();
    }

    v8 = *(a1 + 104);
    if (v8)
    {
      sub_145359C(v8);
      operator delete();
    }

    v9 = *(a1 + 112);
    if (v9)
    {
      sub_14538CC(v9);
      operator delete();
    }

    v10 = *(a1 + 120);
    if (v10)
    {
      sub_14517C4(v10);
      operator delete();
    }

    v11 = *(a1 + 128);
    if (v11)
    {
      sub_1453C48(v11);
      operator delete();
    }

    v12 = *(a1 + 136);
    if (v12)
    {
      sub_14544A8(v12);
      operator delete();
    }

    result = *(a1 + 144);
    if (result)
    {
      sub_1455174(result);

      operator delete();
    }
  }

  return result;
}

void sub_1455988(void *a1)
{
  sub_1455758(a1);

  operator delete();
}

uint64_t sub_14559C0(uint64_t result)
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
      result = sub_14521C4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_17:
      v7 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_22;
    }

    v6 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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
    result = sub_1451D5C(*(v1 + 80));
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

LABEL_22:
    result = sub_144E6A8(*(v1 + 88));
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
LABEL_26:
        if ((v5 & 0x40) != 0)
        {
          v10 = *(v1 + 112);
          v11 = *(v10 + 8);
          result = v10 + 8;
          *(result + 16) = 1;
          *(result + 8) = 0;
          if (v11)
          {
            result = sub_1957EA8(result);
          }
        }

        if ((v5 & 0x80) != 0)
        {
          result = sub_14518B4(*(v1 + 120));
        }

        goto LABEL_31;
      }

LABEL_24:
      v8 = *(v1 + 104);
      v9 = *(v8 + 8);
      result = v8 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v9)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_26;
    }

LABEL_23:
    result = sub_14529FC(*(v1 + 96));
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_31:
  if ((v5 & 0x700) == 0)
  {
    goto LABEL_36;
  }

  if ((v5 & 0x100) != 0)
  {
    result = sub_1453D38(*(v1 + 128));
    if ((v5 & 0x200) == 0)
    {
LABEL_34:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_34;
  }

  result = sub_1454580(*(v1 + 136));
  if ((v5 & 0x400) != 0)
  {
LABEL_35:
    result = sub_145522C(*(v1 + 144));
  }

LABEL_36:
  if ((v5 & 0x7800) != 0)
  {
    *(v1 + 152) = 0;
    *(v1 + 160) = 0xFFFFFFFF00000000;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_1455B7C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v82 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v82, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
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
            goto LABEL_134;
          }

          *(a1 + 16) |= 1u;
          v11 = *(a1 + 8);
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          if (v11)
          {
            v12 = *v12;
          }

          v13 = (a1 + 64);
          goto LABEL_58;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_134;
          }

          v30 = v7 + 1;
          v31 = *v7;
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          v32 = *v30;
          v33 = (v32 << 7) + v31;
          v31 = (v33 - 128);
          if (v32 < 0)
          {
            *v82 = sub_19587DC(v7, (v33 - 128));
            if (!*v82)
            {
              goto LABEL_148;
            }

            v31 = v70;
          }

          else
          {
            v30 = v7 + 2;
LABEL_48:
            *v82 = v30;
          }

          if (v31 > 0x12 || v31 == 7)
          {
            v77 = *(a1 + 8);
            if (v77)
            {
              v78 = ((v77 & 0xFFFFFFFFFFFFFFFCLL) + 8);
            }

            else
            {
              v78 = sub_11F1920((a1 + 8));
            }

            sub_19586BC(2, v31, v78);
          }

          else
          {
            *(a1 + 16) |= 0x800u;
            *(a1 + 152) = v31;
          }

          goto LABEL_142;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_134;
          }

          v5 |= 0x1000u;
          v43 = v7 + 1;
          v44 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_74;
          }

          v45 = *v43;
          v44 = v44 + (v45 << 7) - 128;
          if (v45 < 0)
          {
            v73 = sub_1958770(v7, v44);
            *v82 = v73;
            *(a1 + 156) = v74;
            if (!v73)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v43 = v7 + 2;
LABEL_74:
            *v82 = v43;
            *(a1 + 156) = v44;
          }

          goto LABEL_142;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_134;
          }

          v5 |= 0x2000u;
          v40 = v7 + 1;
          v41 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_69;
          }

          v42 = *v40;
          v41 = v41 + (v42 << 7) - 128;
          if (v42 < 0)
          {
            v71 = sub_1958770(v7, v41);
            *v82 = v71;
            *(a1 + 160) = v72;
            if (!v71)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v40 = v7 + 2;
LABEL_69:
            *v82 = v40;
            *(a1 + 160) = v41;
          }

          goto LABEL_142;
        case 5u:
          if (v8 == 40)
          {
            v21 = (v7 - 1);
            while (1)
            {
              *v82 = v21 + 1;
              v22 = v21[1];
              if (v21[1] < 0)
              {
                v23 = v22 + (v21[2] << 7);
                v22 = v23 - 128;
                if (v21[2] < 0)
                {
                  v21 = sub_1958770((v21 + 1), v23 - 128);
                  v22 = v24;
                }

                else
                {
                  v21 += 3;
                }
              }

              else
              {
                v21 += 2;
              }

              *v82 = v21;
              v25 = *(a1 + 24);
              if (v25 == *(a1 + 28))
              {
                v26 = v25 + 1;
                sub_1958E5C((a1 + 24), v25 + 1);
                *(*(a1 + 32) + 4 * v25) = v22;
                v21 = *v82;
              }

              else
              {
                *(*(a1 + 32) + 4 * v25) = v22;
                v26 = v25 + 1;
              }

              *(a1 + 24) = v26;
              if (!v21)
              {
                goto LABEL_148;
              }

              if (*a3 <= v21 || *v21 != 40)
              {
                goto LABEL_142;
              }
            }
          }

          if (v8 == 42)
          {
            v17 = sub_1958918((a1 + 24), v7, a3);
          }

          else
          {
LABEL_134:
            if (v8)
            {
              v79 = (v8 & 7) == 4;
            }

            else
            {
              v79 = 1;
            }

            if (v79)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_148:
              *v82 = 0;
              goto LABEL_2;
            }

            v80 = *(a1 + 8);
            if (v80)
            {
              v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v81 = sub_11F1920((a1 + 8));
              v7 = *v82;
            }

            v17 = sub_1952690(v8, v81, v7, a3);
          }

LABEL_141:
          *v82 = v17;
          if (!v17)
          {
            goto LABEL_148;
          }

LABEL_142:
          if (sub_195ADC0(a3, v82, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_134;
          }

          *(a1 + 16) |= 2u;
          v35 = *(a1 + 8);
          v12 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v12 = *v12;
          }

          v13 = (a1 + 72);
LABEL_58:
          v36 = sub_194DB04(v13, v12);
          v17 = sub_1958890(v36, *v82, a3);
          goto LABEL_141;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_134;
          }

          *(a1 + 16) |= 4u;
          v46 = *(a1 + 80);
          if (!v46)
          {
            v47 = *(a1 + 8);
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
            if (v47)
            {
              v48 = *v48;
            }

            v46 = sub_14BA7BC(v48);
            *(a1 + 80) = v46;
            v7 = *v82;
          }

          v17 = sub_220C078(a3, v46, v7);
          goto LABEL_141;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_134;
          }

          *(a1 + 16) |= 8u;
          v49 = *(a1 + 88);
          if (!v49)
          {
            v50 = *(a1 + 8);
            v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
            if (v50)
            {
              v51 = *v51;
            }

            v49 = sub_14BF484(v51);
            *(a1 + 88) = v49;
            v7 = *v82;
          }

          v17 = sub_2209138(a3, v49, v7);
          goto LABEL_141;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_134;
          }

          v62 = (v7 - 1);
          while (1)
          {
            v63 = (v62 + 1);
            *v82 = v62 + 1;
            v64 = *(a1 + 56);
            if (v64 && (v65 = *(a1 + 48), v65 < *v64))
            {
              *(a1 + 48) = v65 + 1;
              v66 = *&v64[2 * v65 + 2];
            }

            else
            {
              v67 = sub_14BA844(*(a1 + 40));
              v66 = sub_19593CC(a1 + 40, v67);
              v63 = *v82;
            }

            v62 = sub_220C108(a3, v66, v63);
            *v82 = v62;
            if (!v62)
            {
              goto LABEL_148;
            }

            if (*a3 <= v62 || *v62 != 82)
            {
              goto LABEL_142;
            }
          }

        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_134;
          }

          *(a1 + 16) |= 0x10u;
          v59 = *(a1 + 96);
          if (!v59)
          {
            v60 = *(a1 + 8);
            v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
            if (v60)
            {
              v61 = *v61;
            }

            v59 = sub_14BA8CC(v61);
            *(a1 + 96) = v59;
            v7 = *v82;
          }

          v17 = sub_220C198(a3, v59, v7);
          goto LABEL_141;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_134;
          }

          *(a1 + 16) |= 0x20u;
          v18 = *(a1 + 104);
          if (!v18)
          {
            v19 = *(a1 + 8);
            v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
            if (v19)
            {
              v20 = *v20;
            }

            v18 = sub_14BA97C(v20);
            *(a1 + 104) = v18;
            v7 = *v82;
          }

          v17 = sub_220C228(a3, v18, v7);
          goto LABEL_141;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_134;
          }

          *(a1 + 16) |= 0x40u;
          v37 = *(a1 + 112);
          if (!v37)
          {
            v38 = *(a1 + 8);
            v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
            if (v38)
            {
              v39 = *v39;
            }

            v37 = sub_14BA9F8(v39);
            *(a1 + 112) = v37;
            v7 = *v82;
          }

          v17 = sub_220C2B8(a3, v37, v7);
          goto LABEL_141;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_134;
          }

          *(a1 + 16) |= 0x80u;
          v27 = *(a1 + 120);
          if (!v27)
          {
            v28 = *(a1 + 8);
            v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
            if (v28)
            {
              v29 = *v29;
            }

            v27 = sub_14BA738(v29);
            *(a1 + 120) = v27;
            v7 = *v82;
          }

          v17 = sub_220C348(a3, v27, v7);
          goto LABEL_141;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_134;
          }

          *(a1 + 16) |= 0x100u;
          v14 = *(a1 + 128);
          if (!v14)
          {
            v15 = *(a1 + 8);
            v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
            if (v15)
            {
              v16 = *v16;
            }

            v14 = sub_14BAA78(v16);
            *(a1 + 128) = v14;
            v7 = *v82;
          }

          v17 = sub_220C3D8(a3, v14, v7);
          goto LABEL_141;
        case 0x10u:
          if (v8 != 130)
          {
            goto LABEL_134;
          }

          *(a1 + 16) |= 0x200u;
          v52 = *(a1 + 136);
          if (!v52)
          {
            v53 = *(a1 + 8);
            v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
            if (v53)
            {
              v54 = *v54;
            }

            sub_14BAAF4(v54);
            v52 = v55;
            *(a1 + 136) = v55;
            v7 = *v82;
          }

          v17 = sub_220C468(a3, v52, v7);
          goto LABEL_141;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_134;
          }

          *(a1 + 16) |= 0x400u;
          v56 = *(a1 + 144);
          if (!v56)
          {
            v57 = *(a1 + 8);
            v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
            if (v57)
            {
              v58 = *v58;
            }

            v56 = sub_14BABFC(v58);
            *(a1 + 144) = v56;
            v7 = *v82;
          }

          v17 = sub_220C4F8(a3, v56, v7);
          goto LABEL_141;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_134;
          }

          v5 |= 0x4000u;
          LODWORD(v68) = *v7;
          if ((v68 & 0x80000000) == 0)
          {
            v69 = (v7 + 1);
LABEL_120:
            *v82 = v69;
            *(a1 + 164) = v68;
            goto LABEL_142;
          }

          v68 = (v7[1] << 7) + v68 - 128;
          if ((v7[1] & 0x80000000) == 0)
          {
            v69 = (v7 + 2);
            goto LABEL_120;
          }

          v75 = sub_19587DC(v7, v68);
          *v82 = v75;
          *(a1 + 164) = v76;
          if (!v75)
          {
            goto LABEL_148;
          }

          goto LABEL_142;
        default:
          goto LABEL_134;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return *v82;
}

char *sub_1456380(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 152);
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

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 156);
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

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 160);
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
        LOBYTE(v12) = v12[2];
        do
        {
          *(v17 - 1) = v12 | 0x80;
          LODWORD(v12) = v19 >> 7;
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
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

  v21 = *(a1 + 24);
  if (v21 < 1)
  {
    v24 = v17;
  }

  else
  {
    for (i = 0; i != v21; ++i)
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v23 = *(*(a1 + 32) + 4 * i);
      *v17 = 40;
      v17[1] = v23;
      if (v23 > 0x7F)
      {
        v17[1] = v23 | 0x80;
        v25 = v23 >> 7;
        v17[2] = v23 >> 7;
        v24 = v17 + 3;
        if (v23 >= 0x4000)
        {
          LOBYTE(v26) = v17[2];
          do
          {
            *(v24 - 1) = v26 | 0x80;
            v26 = v25 >> 7;
            *v24++ = v25 >> 7;
            v27 = v25 >> 14;
            v25 >>= 7;
          }

          while (v27);
        }
      }

      else
      {
        v24 = v17 + 2;
      }

      v17 = v24;
    }
  }

  if ((v6 & 2) != 0)
  {
    v24 = sub_128AEEC(a3, 6, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v6 & 4) == 0)
    {
LABEL_44:
      if ((v6 & 8) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_44;
  }

  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v28 = *(a1 + 80);
  *v24 = 66;
  v29 = *(v28 + 20);
  v24[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v24 + 1);
  }

  else
  {
    v30 = v24 + 2;
  }

  v24 = sub_1451F30(v28, v30, a3);
  if ((v6 & 8) != 0)
  {
LABEL_53:
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v31 = *(a1 + 88);
    *v24 = 74;
    v32 = *(v31 + 44);
    v24[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v24 + 1);
    }

    else
    {
      v33 = v24 + 2;
    }

    v24 = sub_14B6D24(v31, v33, a3);
  }

LABEL_59:
  v34 = *(a1 + 48);
  if (v34)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*a3 <= v24)
      {
        v24 = sub_225EB68(a3, v24);
      }

      v36 = *(*(a1 + 56) + 8 * j + 8);
      *v24 = 82;
      v37 = *(v36 + 20);
      v24[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v24 + 1);
      }

      else
      {
        v38 = v24 + 2;
      }

      v24 = sub_1452520(v36, v38, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v40 = *(a1 + 96);
    *v24 = 90;
    v41 = *(v40 + 20);
    v24[1] = v41;
    if (v41 > 0x7F)
    {
      v42 = sub_19575D0(v41, v24 + 1);
    }

    else
    {
      v42 = v24 + 2;
    }

    v24 = sub_1452F50(v40, v42, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_69:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_88;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_69;
  }

  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v43 = *(a1 + 104);
  *v24 = 98;
  v44 = *(v43 + 20);
  v24[1] = v44;
  if (v44 > 0x7F)
  {
    v45 = sub_19575D0(v44, v24 + 1);
  }

  else
  {
    v45 = v24 + 2;
  }

  v24 = sub_1453794(v43, v45, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_70:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_94;
  }

LABEL_88:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v46 = *(a1 + 112);
  *v24 = 106;
  v47 = *(v46 + 20);
  v24[1] = v47;
  if (v47 > 0x7F)
  {
    v48 = sub_19575D0(v47, v24 + 1);
  }

  else
  {
    v48 = v24 + 2;
  }

  v24 = sub_1453B18(v46, v48, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_71:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_100;
  }

LABEL_94:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v49 = *(a1 + 120);
  *v24 = 114;
  v50 = *(v49 + 20);
  v24[1] = v50;
  if (v50 > 0x7F)
  {
    v51 = sub_19575D0(v50, v24 + 1);
  }

  else
  {
    v51 = v24 + 2;
  }

  v24 = sub_1451AB0(v49, v51, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_72:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_106;
  }

LABEL_100:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v52 = *(a1 + 128);
  *v24 = 122;
  v53 = *(v52 + 20);
  v24[1] = v53;
  if (v53 > 0x7F)
  {
    v54 = sub_19575D0(v53, v24 + 1);
  }

  else
  {
    v54 = v24 + 2;
  }

  v24 = sub_1454068(v52, v54, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_73:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_74;
    }

LABEL_112:
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v58 = *(a1 + 144);
    *v24 = 394;
    v59 = *(v58 + 40);
    v24[2] = v59;
    if (v59 > 0x7F)
    {
      v60 = sub_19575D0(v59, v24 + 2);
    }

    else
    {
      v60 = v24 + 3;
    }

    v24 = sub_1455438(v58, v60, a3);
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_118;
  }

LABEL_106:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v55 = *(a1 + 136);
  *v24 = 386;
  v56 = *(v55 + 20);
  v24[2] = v56;
  if (v56 > 0x7F)
  {
    v57 = sub_19575D0(v56, v24 + 2);
  }

  else
  {
    v57 = v24 + 3;
  }

  v24 = sub_1454814(v55, v57, a3);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_112;
  }

LABEL_74:
  if ((v6 & 0x4000) == 0)
  {
LABEL_75:
    v39 = v24;
    goto LABEL_125;
  }

LABEL_118:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v61 = *(a1 + 164);
  *v24 = 400;
  v24[2] = v61;
  if (v61 > 0x7F)
  {
    v24[2] = v61 | 0x80;
    v62 = v61 >> 7;
    v24[3] = v61 >> 7;
    v39 = v24 + 4;
    if (v61 >= 0x4000)
    {
      LOBYTE(v63) = v24[3];
      do
      {
        *(v39 - 1) = v63 | 0x80;
        v63 = v62 >> 7;
        *v39++ = v62 >> 7;
        v64 = v62 >> 14;
        v62 >>= 7;
      }

      while (v64);
    }
  }

  else
  {
    v39 = v24 + 3;
  }

LABEL_125:
  v65 = *(a1 + 8);
  if ((v65 & 1) == 0)
  {
    return v39;
  }

  v67 = v65 & 0xFFFFFFFFFFFFFFFCLL;
  v68 = *(v67 + 31);
  if (v68 < 0)
  {
    v69 = *(v67 + 8);
    v68 = *(v67 + 16);
  }

  else
  {
    v69 = (v67 + 8);
  }

  if ((*a3 - v39) >= v68)
  {
    v70 = v68;
    memcpy(v39, v69, v68);
    v39 += v70;
    return v39;
  }

  return sub_1957130(a3, v69, v68, v39);
}

uint64_t sub_1456B68(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
  v5 = *(a1 + 56);
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
      v9 = sub_14526CC(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_17;
  }

  if (v10)
  {
    v12 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v15 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = sub_1452030(*(a1 + 80));
  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = sub_14B71B8(*(a1 + 88));
  v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x10) == 0)
  {
LABEL_13:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_35:
    v21 = *(a1 + 104);
    v22 = 5;
    if ((*(v21 + 16) & 1) == 0)
    {
      v22 = 0;
    }

    v23 = *(v21 + 8);
    if (v23)
    {
      v38 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v39 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v39 < 0)
      {
        v39 = *(v38 + 16);
      }

      v22 += v39;
    }

    *(v21 + 20) = v22;
    v4 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

LABEL_34:
  v20 = sub_145322C(*(a1 + 96));
  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_14:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_39:
  v24 = *(a1 + 112);
  v25 = 2 * (*(v24 + 16) & 1);
  v26 = *(v24 + 8);
  if (v26)
  {
    v40 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v41 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v41 < 0)
    {
      v41 = *(v40 + 16);
    }

    v25 += v41;
  }

  *(v24 + 20) = v25;
  v4 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x80) != 0)
  {
LABEL_16:
    v11 = sub_1451B98(*(a1 + 120));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v10 & 0x7F00) == 0)
  {
    goto LABEL_55;
  }

  if ((v10 & 0x100) != 0)
  {
    v27 = sub_14541F4(*(a1 + 128));
    v4 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 0x200) == 0)
    {
LABEL_20:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_44;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v28 = sub_14549E4(*(a1 + 136));
  v4 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x400) == 0)
  {
LABEL_21:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  v29 = sub_1455578(*(a1 + 144));
  v4 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x800) == 0)
  {
LABEL_22:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_45:
  v30 = *(a1 + 152);
  if (v30 < 0)
  {
    v31 = 11;
  }

  else
  {
    v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 += v31;
  if ((v10 & 0x1000) == 0)
  {
LABEL_23:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  v4 += ((9 * (__clz(*(a1 + 156) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x2000) == 0)
  {
LABEL_24:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

LABEL_50:
  v4 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x4000) == 0)
  {
    goto LABEL_55;
  }

LABEL_51:
  v32 = *(a1 + 164);
  if (v32 < 0)
  {
    v33 = 12;
  }

  else
  {
    v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v4 += v33;
LABEL_55:
  v34 = *(a1 + 8);
  if (v34)
  {
    v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *((v34 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v37 < 0)
    {
      v37 = *(v36 + 16);
    }

    v4 += v37;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_1456FB4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = (a1 + 24);
    v7 = *(a1 + 24);
    sub_1958E5C((a1 + 24), v7 + v5);
    v8 = *(a1 + 32);
    *v6 += *(a2 + 24);
    memcpy((v8 + 4 * v7), *(a2 + 32), 4 * *(a2 + 24));
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1565AC0((a1 + 40), v11, (v10 + 8), v9, **(a1 + 56) - *(a1 + 48));
    v12 = *(a1 + 48) + v9;
    *(a1 + 48) = v12;
    v13 = *(a1 + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (!v14)
  {
    goto LABEL_70;
  }

  if (v14)
  {
    v15 = *(a2 + 64);
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 64), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v14 & 2) == 0)
    {
LABEL_9:
      if ((v14 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_9;
  }

  v18 = *(a2 + 72);
  *(a1 + 16) |= 2u;
  v19 = *(a1 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  sub_194EA1C((a1 + 72), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
  if ((v14 & 4) == 0)
  {
LABEL_10:
    if ((v14 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_22:
  *(a1 + 16) |= 4u;
  v21 = *(a1 + 80);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_14BA7BC(v23);
    *(a1 + 80) = v21;
  }

  if (*(a2 + 80))
  {
    v24 = *(a2 + 80);
  }

  else
  {
    v24 = &off_27714D0;
  }

  sub_131CC68(v21, v24);
  if ((v14 & 8) == 0)
  {
LABEL_11:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_30:
  *(a1 + 16) |= 8u;
  v25 = *(a1 + 88);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    v25 = sub_14BF484(v27);
    *(a1 + 88) = v25;
  }

  if (*(a2 + 88))
  {
    v28 = *(a2 + 88);
  }

  else
  {
    v28 = &off_2773AC8;
  }

  sub_144F194(v25, v28);
  if ((v14 & 0x10) == 0)
  {
LABEL_12:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_46:
    *(a1 + 16) |= 0x20u;
    v33 = *(a1 + 104);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_14BA97C(v35);
      *(a1 + 104) = v33;
    }

    if (*(a2 + 104))
    {
      v36 = *(a2 + 104);
    }

    else
    {
      v36 = &off_2771558;
    }

    sub_12D67F8(v33, v36);
    if ((v14 & 0x40) == 0)
    {
LABEL_14:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_62;
    }

    goto LABEL_54;
  }

LABEL_38:
  *(a1 + 16) |= 0x10u;
  v29 = *(a1 + 96);
  if (!v29)
  {
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v29 = sub_14BA8CC(v31);
    *(a1 + 96) = v29;
  }

  if (*(a2 + 96))
  {
    v32 = *(a2 + 96);
  }

  else
  {
    v32 = &off_27714F8;
  }

  sub_14533CC(v29, v32);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_13:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_54:
  *(a1 + 16) |= 0x40u;
  v37 = *(a1 + 112);
  if (!v37)
  {
    v38 = *(a1 + 8);
    v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
    if (v38)
    {
      v39 = *v39;
    }

    v37 = sub_14BA9F8(v39);
    *(a1 + 112) = v37;
  }

  if (*(a2 + 112))
  {
    v40 = *(a2 + 112);
  }

  else
  {
    v40 = &off_2771578;
  }

  sub_140C624(v37, v40);
  if ((v14 & 0x80) != 0)
  {
LABEL_62:
    *(a1 + 16) |= 0x80u;
    v41 = *(a1 + 120);
    if (!v41)
    {
      v42 = *(a1 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      v41 = sub_14BA738(v43);
      *(a1 + 120) = v41;
    }

    if (*(a2 + 120))
    {
      v44 = *(a2 + 120);
    }

    else
    {
      v44 = &off_27714A8;
    }

    sub_12F5A34(v41, v44);
  }

LABEL_70:
  if ((v14 & 0x7F00) == 0)
  {
    goto LABEL_80;
  }

  if ((v14 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v46 = *(a1 + 128);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      v46 = sub_14BAA78(v48);
      *(a1 + 128) = v46;
    }

    if (*(a2 + 128))
    {
      v49 = *(a2 + 128);
    }

    else
    {
      v49 = &off_2771598;
    }

    sub_14542BC(v46, v49);
    if ((v14 & 0x200) == 0)
    {
LABEL_73:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_100;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(a1 + 16) |= 0x200u;
  v50 = *(a1 + 136);
  if (!v50)
  {
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    sub_14BAAF4(v52);
    *(a1 + 136) = v50;
  }

  if (*(a2 + 136))
  {
    v53 = *(a2 + 136);
  }

  else
  {
    v53 = &off_27715C0;
  }

  sub_12F4C8C(v50, v53);
  if ((v14 & 0x400) == 0)
  {
LABEL_74:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_108;
  }

LABEL_100:
  *(a1 + 16) |= 0x400u;
  v54 = *(a1 + 144);
  if (!v54)
  {
    v55 = *(a1 + 8);
    v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
    if (v55)
    {
      v56 = *v56;
    }

    v54 = sub_14BABFC(v56);
    *(a1 + 144) = v54;
  }

  if (*(a2 + 144))
  {
    v57 = *(a2 + 144);
  }

  else
  {
    v57 = &off_2771610;
  }

  sub_1455620(v54, v57);
  if ((v14 & 0x800) == 0)
  {
LABEL_75:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(a1 + 152) = *(a2 + 152);
  if ((v14 & 0x1000) == 0)
  {
LABEL_76:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

LABEL_110:
    *(a1 + 160) = *(a2 + 160);
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_109:
  *(a1 + 156) = *(a2 + 156);
  if ((v14 & 0x2000) != 0)
  {
    goto LABEL_110;
  }

LABEL_77:
  if ((v14 & 0x4000) != 0)
  {
LABEL_78:
    *(a1 + 164) = *(a2 + 164);
  }

LABEL_79:
  *(a1 + 16) |= v14;
LABEL_80:
  v45 = *(a2 + 8);
  if (v45)
  {

    sub_1957EF4((a1 + 8), (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1457454(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    result = sub_144F5D0(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) == 0)
  {
    return 1;
  }

  result = sub_14556E4(*(a1 + 144) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_14574B4(void *a1)
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

void sub_1457528(void *a1)
{
  sub_14574B4(a1);

  operator delete();
}

uint64_t sub_1457560(uint64_t a1)
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

char *sub_1457578(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v17, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v17 + 1;
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v17, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v17 + 2;
      }
    }

    v17 = v6;
    if (v7 == 8)
    {
      v14 = v6 + 1;
      v13 = *v6;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if (v15 < 0)
      {
        v17 = sub_19587DC(v6, v13);
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        v14 = v6 + 2;
LABEL_19:
        v17 = v14;
      }

      if (v13 > 1)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v13;
      }

      continue;
    }

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
        return v17;
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
      v6 = v17;
    }

    v17 = sub_1952690(v7, v12, v6, a3);
    if (!v17)
    {
      return 0;
    }
  }

  return v17;
}

char *sub_14576E0(uint64_t a1, char *__dst, void *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
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

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v5;
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

  if (*a3 - v5 >= v13)
  {
    v15 = v13;
    memcpy(v5, v14, v13);
    v5 += v15;
    return v5;
  }

  return sub_1957130(a3, v14, v13, v5);
}

uint64_t sub_1457808(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
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

    v1 += v6;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_145788C(uint64_t a1)
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

  if (a1 != &off_2771708)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_14574B4(v6);
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

void sub_1457958(uint64_t a1)
{
  sub_145788C(a1);

  operator delete();
}

uint64_t sub_1457990(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    *v3 = 0;
    *(v3 + 23) = 0;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v4 = *(result + 32);
  v5 = *(v4 + 8);
  result = v4 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    result = sub_1957EA8(result);
  }

LABEL_9:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 32) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_1457A38(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v26, i) & 1) == 0; i = a3[11].u32[1])
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 32);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_14BAD60(v21);
        *(a1 + 32) = v19;
        v6 = *v26;
      }

      v15 = sub_220C588(a3, v19, v6);
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
            *v26 = sub_19587DC(v6, v16);
            if (!*v26)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v17 = v6 + 2;
LABEL_24:
            *v26 = v17;
          }

          if (v16 > 4)
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
            return *v26;
          }

LABEL_45:
          *v26 = 0;
          return *v26;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v14 = sub_11F1920((a1 + 8));
          v6 = *v26;
        }

        v15 = sub_1952690(v7, v14, v6, a3);
        goto LABEL_36;
      }

      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = sub_194DB04((a1 + 24), v23);
      v15 = sub_1958890(v24, *v26, a3);
    }

LABEL_36:
    *v26 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  return *v26;
}

char *sub_1457C50(uint64_t a1, char *__dst, unint64_t *a3)
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

    v7 = sub_14576E0(v12, v14, a3);
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v18)
  {
    v20 = v18;
    memcpy(v7, v19, v18);
    v7 += v20;
    return v7;
  }

  return sub_1957130(a3, v19, v18, v7);
}

uint64_t sub_1457E00(uint64_t a1)
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
    v7 = sub_1457808(*(a1 + 32));
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

void sub_1457F18(uint64_t a1, uint64_t a2)
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

      v9 = sub_14BAD60(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27716E8;
    }

    sub_12B9D50(v9, v12);
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

uint64_t sub_1458040(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E39C0;
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
    sub_1201B48((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1565B4C((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56), v13);
    v14 = *(a1 + 56) + v10;
    *(a1 + 56) = v14;
    v15 = *(a1 + 64);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v16 = *(a2 + 80);
  if (v16)
  {
    v17 = *(a2 + 88);
    v18 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1201B48((a1 + 72), v18, (v17 + 8), v16, **(a1 + 88) - *(a1 + 80));
    v19 = *(a1 + 80) + v16;
    *(a1 + 80) = v19;
    v20 = *(a1 + 88);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v21 = *(a2 + 104);
  if (v21)
  {
    v22 = *(a2 + 112);
    v23 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1565BD8((a1 + 96), v23, (v22 + 8), v21, **(a1 + 112) - *(a1 + 104));
    v24 = *(a1 + 104) + v21;
    *(a1 + 104) = v24;
    v25 = *(a1 + 112);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 8);
  if (v26)
  {
    sub_1957EF4(v4, (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v27 = *(a2 + 16);
  if (v27)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v27 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  return a1;
}

uint64_t sub_1458388(uint64_t a1)
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

  if (a1 != &off_2771738)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_1459BC0(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_14B35C0(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1563E64((a1 + 96));
  sub_1956AFC((a1 + 72));
  sub_1563DE0((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1458480(uint64_t a1)
{
  sub_1458388(a1);

  operator delete();
}

uint64_t sub_14584B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_144E5CC(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_14592FC(*(v1 + 32));
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

uint64_t sub_1458528(uint64_t a1)
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

uint64_t sub_145854C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v49 = a2;
  if (sub_195ADC0(a3, v49, a3[11].u32[1]))
  {
    return *v49;
  }

  while (1)
  {
    v6 = (*v49 + 1);
    v7 = **v49;
    if (**v49 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v49, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v49 + 2);
      }
    }

    *v49 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 5)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          v23 = v6 - 1;
          while (1)
          {
            v24 = (v23 + 1);
            *v49 = v23 + 1;
            v25 = *(a1 + 40);
            if (v25 && (v26 = *(a1 + 32), v26 < *v25))
            {
              *(a1 + 32) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = *(a1 + 24);
              if (!v28)
              {
                operator new();
              }

              *v30 = v29;
              v30[1] = sub_195A650;
              *v29 = 0;
              v29[1] = 0;
              v29[2] = 0;
              v27 = sub_19593CC(a1 + 24, v29);
              v24 = *v49;
            }

            v23 = sub_1958890(v27, v24, a3);
            *v49 = v23;
            if (!v23)
            {
              goto LABEL_83;
            }

            if (*a3 <= v23 || *v23 != 26)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v10 == 4)
      {
        if (v7 == 34)
        {
          v37 = v6 - 1;
          while (1)
          {
            v38 = v37 + 1;
            *v49 = v37 + 1;
            v39 = *(a1 + 64);
            if (v39 && (v40 = *(a1 + 56), v40 < *v39))
            {
              *(a1 + 56) = v40 + 1;
              v41 = *&v39[2 * v40 + 2];
            }

            else
            {
              sub_14BAC9C(*(a1 + 48));
              v41 = sub_19593CC(a1 + 48, v42);
              v38 = *v49;
            }

            v37 = sub_220C618(a3, v41, v38);
            *v49 = v37;
            if (!v37)
            {
              goto LABEL_83;
            }

            if (*a3 <= v37 || *v37 != 34)
            {
              goto LABEL_78;
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
          *v49 = v11 + 1;
          v13 = *(a1 + 88);
          if (v13 && (v14 = *(a1 + 80), v14 < *v13))
          {
            *(a1 + 80) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = *(a1 + 72);
            if (!v16)
            {
              operator new();
            }

            *v18 = v17;
            v18[1] = sub_195A650;
            *v17 = 0;
            v17[1] = 0;
            v17[2] = 0;
            v15 = sub_19593CC(a1 + 72, v17);
            v12 = *v49;
          }

          v11 = sub_1958890(v15, v12, a3);
          *v49 = v11;
          if (!v11)
          {
            goto LABEL_83;
          }

          if (*a3 <= v11 || *v11 != 42)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_70;
    }

    if (v10 == 6)
    {
      break;
    }

    if (v10 == 7)
    {
      if (v7 != 58)
      {
        goto LABEL_70;
      }

      *(a1 + 16) |= 1u;
      v43 = *(a1 + 120);
      if (!v43)
      {
        v44 = *(a1 + 8);
        v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v45 = *v45;
        }

        v43 = sub_14BAFC4(v45);
        *(a1 + 120) = v43;
        v6 = *v49;
      }

      v22 = sub_220C738(a3, v43, v6);
    }

    else
    {
      if (v10 != 8 || v7 != 66)
      {
        goto LABEL_70;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 128);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_14BF234(v21);
        *(a1 + 128) = v19;
        v6 = *v49;
      }

      v22 = sub_220C7C8(a3, v19, v6);
    }

LABEL_77:
    *v49 = v22;
    if (!v22)
    {
      goto LABEL_83;
    }

LABEL_78:
    if (sub_195ADC0(a3, v49, a3[11].u32[1]))
    {
      return *v49;
    }
  }

  if (v7 == 50)
  {
    v31 = v6 - 1;
    while (1)
    {
      v32 = v31 + 1;
      *v49 = v31 + 1;
      v33 = *(a1 + 112);
      if (v33 && (v34 = *(a1 + 104), v34 < *v33))
      {
        *(a1 + 104) = v34 + 1;
        v35 = *&v33[2 * v34 + 2];
      }

      else
      {
        v36 = sub_14BADDC(*(a1 + 96));
        v35 = sub_19593CC(a1 + 96, v36);
        v32 = *v49;
      }

      v31 = sub_220C6A8(a3, v35, v32);
      *v49 = v31;
      if (!v31)
      {
        goto LABEL_83;
      }

      if (*a3 <= v31 || *v31 != 50)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_70:
  if (v7)
  {
    v46 = (v7 & 7) == 4;
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
      v6 = *v49;
    }

    v22 = sub_1952690(v7, v48, v6, a3);
    goto LABEL_77;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v49;
  }

LABEL_83:
  *v49 = 0;
  return *v49;
}

char *sub_14589F4(uint64_t a1, char *__dst, unint64_t *a3)
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
        __dst = sub_1957480(a3, 3, v8, __dst);
      }

      else
      {
        *__dst = 26;
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
      *__dst = 34;
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

      __dst = sub_1456380(v13, v15, a3);
    }
  }

  v16 = *(a1 + 80);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 88) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || (*a3 - __dst + 14) < v19)
      {
        __dst = sub_1957480(a3, 5, v18, __dst);
      }

      else
      {
        *__dst = 42;
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

  v21 = *(a1 + 104);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 112) + 8 * j + 8);
      *__dst = 50;
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

      __dst = sub_1457C50(v23, v25, a3);
    }
  }

  v26 = *(a1 + 16);
  if (v26)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v27 = *(a1 + 120);
    *__dst = 58;
    v28 = *(v27 + 20);
    __dst[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, __dst + 1);
    }

    else
    {
      v29 = __dst + 2;
    }

    __dst = sub_1459E70(v27, v29, a3);
  }

  if ((v26 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v30 = *(a1 + 128);
    *__dst = 66;
    v31 = *(v30 + 20);
    __dst[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, __dst + 1);
    }

    else
    {
      v32 = __dst + 2;
    }

    __dst = sub_14B385C(v30, v32, a3);
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return __dst;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  if ((*a3 - __dst) >= v36)
  {
    v38 = v36;
    memcpy(__dst, v37, v36);
    __dst += v38;
    return __dst;
  }

  return sub_1957130(a3, v37, v36, __dst);
}

uint64_t sub_1458DB4(uint64_t a1)
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
      v14 = sub_1456B68(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  if (v15 >= 1)
  {
    v17 = (*(a1 + 88) + 8);
    do
    {
      v18 = *v17++;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v16 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      --v15;
    }

    while (v15);
  }

  v21 = *(a1 + 104);
  v22 = v16 + v21;
  v23 = *(a1 + 112);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = sub_1457E00(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 16);
  if ((v28 & 3) != 0)
  {
    if (v28)
    {
      v29 = sub_1459FEC(*(a1 + 120));
      v22 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v28 & 2) != 0)
    {
      v30 = sub_14B3A0C(*(a1 + 128));
      v22 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v31 = *(a1 + 8);
  if (v31)
  {
    v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v31 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    v22 += v34;
  }

  *(a1 + 20) = v22;
  return v22;
}

std::string *sub_1458FCC(std::string *result, uint64_t a2)
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
        size = v3->__r_.__value_.__l.__size_;
        v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v7 = *v7;
        }

        sub_14BAE64(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2771738;
      }

      result = sub_144EF20(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v9 = v3[1].__r_.__value_.__l.__size_;
      if (!v9)
      {
        v10 = v3->__r_.__value_.__l.__size_;
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_14BAF28(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_27717C0;
      }

      result = sub_1459978(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14590D0(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1459110(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E3A40;
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
    sub_1565C64((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

void sub_1459200(_Unwind_Exception *a1)
{
  sub_1563EE8(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1459244(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1563EE8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14592C4(void *a1)
{
  sub_1459244(a1);

  operator delete();
}

uint64_t sub_14592FC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14592FC(v4);
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

char *sub_145938C(uint64_t a1, char *a2, int32x2_t *a3)
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
        v19 = v7 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v30 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_14BAF28(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v30;
          }

          v19 = sub_220C858(a3, v23, v20);
          v30 = v19;
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
      v30 = v16;
      *(a1 + 52) = v17;
      goto LABEL_42;
    }

    v28 = sub_1958770(v7, v17);
    v30 = v28;
    *(a1 + 52) = v29;
    if (!v28)
    {
      goto LABEL_52;
    }

LABEL_42:
    if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1 && v8 == 8)
  {
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if (v27 < 0)
    {
      v30 = sub_19587DC(v7, v25);
      if (!v30)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v26 = v7 + 2;
LABEL_39:
      v30 = v26;
    }

    if (v25 > 5)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 1u;
      *(a1 + 48) = v25;
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
      v7 = v30;
    }

    v30 = sub_1952690(v8, v15, v7, a3);
    if (!v30)
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
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_145961C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
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

      v11 = sub_145961C(v17, v19, a3);
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

uint64_t sub_1459868(uint64_t a1)
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
      v7 = sub_1459868(v6);
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

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t **sub_1459978(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    result = sub_1565C64((v3 + 24), v6, (v5 + 8), v4, **(v3 + 40) - *(v3 + 32));
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

void *sub_1459A7C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_26E3AC0;
  v4 = *(a2 + 16);
  a1[2] = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4(a1 + 1, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  a1[3] = 0;
  if ((v4 & 2) != 0)
  {
    operator new();
  }

  a1[4] = 0;
  return a1;
}

uint64_t sub_1459BC0(uint64_t a1)
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

  if (a1 != &off_27717F8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1459244(v6);
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

void sub_1459C90(uint64_t a1)
{
  sub_1459BC0(a1);

  operator delete();
}

char *sub_1459CC8(uint64_t a1, char *a2, int32x2_t *a3)
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

          v15 = sub_14BAF28(v17);
          *(a1 + 32) = v15;
          v6 = v23;
        }

        v14 = sub_220C858(a3, v15, v6);
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

        sub_14BAE64(v20);
        v18 = v21;
        *(a1 + 24) = v21;
        v6 = v23;
      }

      v14 = sub_22095B8(a3, v18, v6);
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

char *sub_1459E70(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_14589F4(v7, v9, a3);
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

    v4 = sub_145961C(v10, v12, a3);
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

uint64_t sub_1459FEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
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
    v5 = sub_1459868(*(a1 + 32));
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

void *sub_145A0CC(void *a1)
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

  sub_145A150(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_145A150(void *result)
{
  if (result != &off_2771820)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_1458388(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_1458388(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_1458388(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = v1[8];
    if (v7)
    {
      sub_1458388(v7);
      operator delete();
    }

    v8 = v1[9];
    if (v8)
    {
      sub_1458388(v8);
      operator delete();
    }

    v9 = v1[10];
    if (v9)
    {
      sub_1458388(v9);
      operator delete();
    }

    result = v1[11];
    if (result)
    {
      sub_1458388(result);

      operator delete();
    }
  }

  return result;
}

void sub_145A260(void *a1)
{
  sub_145A0CC(a1);

  operator delete();
}

uint64_t sub_145A298(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = sub_144E5CC(*(result + 24));
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

  result = sub_144E5CC(*(v1 + 32));
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
  result = sub_144E5CC(*(v1 + 40));
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
  result = sub_144E5CC(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    result = sub_144E5CC(*(v1 + 64));
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
  result = sub_144E5CC(*(v1 + 56));
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
  result = sub_144E5CC(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_144E5CC(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    result = sub_144E5CC(*(v1 + 88));
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

char *sub_145A37C(uint64_t a1, char *a2, int32x2_t *a3)
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
            v11 = *(a1 + 40);
            if (v11)
            {
              goto LABEL_68;
            }

            v28 = *(a1 + 8);
            v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
            if (v28)
            {
              v29 = *v29;
            }

            sub_14BAE64(v29);
            v11 = v30;
            *(a1 + 40) = v30;
            goto LABEL_67;
          }
        }

        else if (v10 == 4 && v7 == 34)
        {
          *(a1 + 16) |= 8u;
          v11 = *(a1 + 48);
          if (v11)
          {
            goto LABEL_68;
          }

          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          sub_14BAE64(v20);
          v11 = v21;
          *(a1 + 48) = v21;
LABEL_67:
          v6 = v45;
          goto LABEL_68;
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v11 = *(a1 + 24);
          if (v11)
          {
            goto LABEL_68;
          }

          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          sub_14BAE64(v26);
          v11 = v27;
          *(a1 + 24) = v27;
          goto LABEL_67;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v11 = *(a1 + 32);
        if (!v11)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_14BAE64(v17);
          v11 = v18;
          *(a1 + 32) = v18;
          goto LABEL_67;
        }

LABEL_68:
        v40 = sub_22095B8(a3, v11, v6);
        goto LABEL_69;
      }
    }

    else if (v7 >> 3 <= 6)
    {
      if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 0x10u;
          v11 = *(a1 + 56);
          if (!v11)
          {
            v34 = *(a1 + 8);
            v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
            if (v34)
            {
              v35 = *v35;
            }

            sub_14BAE64(v35);
            v11 = v36;
            *(a1 + 56) = v36;
            goto LABEL_67;
          }

          goto LABEL_68;
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        *(a1 + 16) |= 0x20u;
        v11 = *(a1 + 64);
        if (!v11)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          sub_14BAE64(v23);
          v11 = v24;
          *(a1 + 64) = v24;
          goto LABEL_67;
        }

        goto LABEL_68;
      }
    }

    else if (v10 == 7)
    {
      if (v7 == 58)
      {
        *(a1 + 16) |= 0x40u;
        v11 = *(a1 + 72);
        if (!v11)
        {
          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          sub_14BAE64(v32);
          v11 = v33;
          *(a1 + 72) = v33;
          goto LABEL_67;
        }

        goto LABEL_68;
      }
    }

    else if (v10 == 8)
    {
      if (v7 == 66)
      {
        *(a1 + 16) |= 0x80u;
        v11 = *(a1 + 80);
        if (!v11)
        {
          v37 = *(a1 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          sub_14BAE64(v38);
          v11 = v39;
          *(a1 + 80) = v39;
          goto LABEL_67;
        }

        goto LABEL_68;
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

        sub_14BAE64(v13);
        v11 = v14;
        *(a1 + 88) = v14;
        goto LABEL_67;
      }

      goto LABEL_68;
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

    v40 = sub_1952690(v7, v43, v6, a3);
LABEL_69:
    v45 = v40;
    if (!v40)
    {
      return 0;
    }
  }

  return v45;
}

char *sub_145A744(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_14589F4(v7, v9, a3);
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

  v4 = sub_14589F4(v10, v12, a3);
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

  v4 = sub_14589F4(v13, v15, a3);
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

  v4 = sub_14589F4(v16, v18, a3);
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

  v4 = sub_14589F4(v19, v21, a3);
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

  v4 = sub_14589F4(v22, v24, a3);
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

  v4 = sub_14589F4(v25, v27, a3);
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

  v4 = sub_14589F4(v28, v30, a3);
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

    v4 = sub_14589F4(v31, v33, a3);
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

uint64_t sub_145ABA0(uint64_t a1)
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
    v6 = sub_1458DB4(*(a1 + 88));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_17;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
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
    v5 = sub_1458DB4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if ((v2 & 4) != 0)
  {
    v9 = sub_1458DB4(*(a1 + 40));
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

  v10 = sub_1458DB4(*(a1 + 48));
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
  v11 = sub_1458DB4(*(a1 + 56));
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
  v12 = sub_1458DB4(*(a1 + 64));
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
  v13 = sub_1458DB4(*(a1 + 72));
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
  v14 = sub_1458DB4(*(a1 + 80));
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

void sub_145ADE0(void **result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    *(result + 4) |= 1u;
    v5 = result[3];
    if (!v5)
    {
      v6 = result[1];
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_14BAE64(v7);
      result[3] = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_2771738;
    }

    sub_144EF20(v5, v8);
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

  *(result + 4) |= 2u;
  v9 = result[4];
  if (!v9)
  {
    v10 = result[1];
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_14BAE64(v11);
    result[4] = v9;
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
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_28:
  *(result + 4) |= 4u;
  v13 = result[5];
  if (!v13)
  {
    v14 = result[1];
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    sub_14BAE64(v15);
    result[5] = v13;
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
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_36:
  *(result + 4) |= 8u;
  v17 = result[6];
  if (!v17)
  {
    v18 = result[1];
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_14BAE64(v19);
    result[6] = v17;
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
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_44:
  *(result + 4) |= 0x10u;
  v21 = result[7];
  if (!v21)
  {
    v22 = result[1];
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_14BAE64(v23);
    result[7] = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_2771738;
  }

  sub_144EF20(v21, v24);
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
  *(result + 4) |= 0x20u;
  v25 = result[8];
  if (!v25)
  {
    v26 = result[1];
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_14BAE64(v27);
    result[8] = v25;
  }

  if (*(a2 + 64))
  {
    v28 = *(a2 + 64);
  }

  else
  {
    v28 = &off_2771738;
  }

  sub_144EF20(v25, v28);
  if ((v4 & 0x40) != 0)
  {
LABEL_60:
    *(result + 4) |= 0x40u;
    v29 = result[9];
    if (!v29)
    {
      v30 = result[1];
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      sub_14BAE64(v31);
      result[9] = v29;
    }

    if (*(a2 + 72))
    {
      v32 = *(a2 + 72);
    }

    else
    {
      v32 = &off_2771738;
    }

    sub_144EF20(v29, v32);
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
  *(result + 4) |= 0x80u;
  v33 = result[10];
  if (!v33)
  {
    v34 = result[1];
    v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v35 = *v35;
    }

    sub_14BAE64(v35);
    result[10] = v33;
  }

  if (*(a2 + 80))
  {
    v36 = *(a2 + 80);
  }

  else
  {
    v36 = &off_2771738;
  }

  sub_144EF20(v33, v36);
  if ((v4 & 0x100) != 0)
  {
LABEL_76:
    *(result + 4) |= 0x100u;
    v37 = result[11];
    if (!v37)
    {
      v38 = result[1];
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      sub_14BAE64(v39);
      result[11] = v37;
    }

    if (*(a2 + 88))
    {
      v40 = *(a2 + 88);
    }

    else
    {
      v40 = &off_2771738;
    }

    sub_144EF20(v37, v40);
  }

LABEL_84:
  v41 = *(a2 + 8);
  if (v41)
  {

    sub_1957EF4(result + 1, (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_145B0DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F560(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

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

  if ((v2 & 8) != 0)
  {
    result = sub_144F560(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_144F560(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_144F560(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_144F560(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = sub_144F560(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_145B1C4(uint64_t a1)
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

  if (a1 != &off_2771880)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      sub_14B64B0(v6);
      operator delete();
    }

    v7 = *(a1 + 112);
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
  sub_144A1C8((a1 + 72));
  sub_144A1C8((a1 + 48));
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_145B2D8(uint64_t a1)
{
  sub_145B1C4(a1);

  operator delete();
}

uint64_t sub_145B310(uint64_t result)
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

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_144E5CC(v7);
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
      result = sub_144E5CC(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 7) != 0)
  {
    if (v11)
    {
      result = sub_144E5CC(*(v1 + 96));
      if ((v11 & 2) == 0)
      {
LABEL_16:
        if ((v11 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

    result = sub_144E6A8(*(v1 + 104));
    if ((v11 & 4) != 0)
    {
LABEL_17:
      result = sub_144E5CC(*(v1 + 112));
    }
  }

LABEL_18:
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

char *sub_145B41C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          v26 = v6 - 1;
          while (1)
          {
            v27 = v26 + 1;
            v45 = v26 + 1;
            v28 = *(a1 + 88);
            if (v28 && (v29 = *(a1 + 80), v29 < *v28))
            {
              *(a1 + 80) = v29 + 1;
              v30 = *&v28[2 * v29 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 72));
              v30 = sub_19593CC(a1 + 72, v31);
              v27 = v45;
            }

            v26 = sub_22095B8(a3, v30, v27);
            v45 = v26;
            if (!v26)
            {
              return 0;
            }

            if (*a3 <= v26 || *v26 != 34)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else if (v10 == 6)
      {
        if (v7 == 50)
        {
          *(a1 + 16) |= 2u;
          v38 = *(a1 + 104);
          if (!v38)
          {
            v39 = *(a1 + 8);
            v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
            if (v39)
            {
              v40 = *v40;
            }

            v38 = sub_14BF484(v40);
            *(a1 + 104) = v38;
            v6 = v45;
          }

          v25 = sub_2209138(a3, v38, v6);
          goto LABEL_72;
        }
      }

      else if (v10 == 7 && v7 == 58)
      {
        *(a1 + 16) |= 4u;
        v18 = *(a1 + 112);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          sub_14BAE64(v20);
          v18 = v21;
          *(a1 + 112) = v21;
LABEL_37:
          v6 = v45;
        }

LABEL_38:
        v25 = sub_22095B8(a3, v18, v6);
        goto LABEL_72;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v18 = *(a1 + 96);
        if (!v18)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          sub_14BAE64(v23);
          v18 = v24;
          *(a1 + 96) = v24;
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v32 = v6 - 1;
        while (1)
        {
          v33 = v32 + 1;
          v45 = v32 + 1;
          v34 = *(a1 + 40);
          if (v34 && (v35 = *(a1 + 32), v35 < *v34))
          {
            *(a1 + 32) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            sub_14BAE64(*(a1 + 24));
            v36 = sub_19593CC(a1 + 24, v37);
            v33 = v45;
          }

          v32 = sub_22095B8(a3, v36, v33);
          v45 = v32;
          if (!v32)
          {
            return 0;
          }

          if (*a3 <= v32 || *v32 != 18)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      v12 = v6 - 1;
      while (1)
      {
        v13 = v12 + 1;
        v45 = v12 + 1;
        v14 = *(a1 + 64);
        if (v14 && (v15 = *(a1 + 56), v15 < *v14))
        {
          *(a1 + 56) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          sub_14BAE64(*(a1 + 48));
          v16 = sub_19593CC(a1 + 48, v17);
          v13 = v45;
        }

        v12 = sub_22095B8(a3, v16, v13);
        v45 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 26)
        {
          goto LABEL_73;
        }
      }
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

    v25 = sub_1952690(v7, v43, v6, a3);
LABEL_72:
    v45 = v25;
    if (!v25)
    {
      return 0;
    }

LABEL_73:
    ;
  }

  return v45;
}

char *sub_145B7D4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 96);
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

    v4 = sub_14589F4(v7, v9, a3);
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

      v4 = sub_14589F4(v12, v14, a3);
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
      v18 = *(v17 + 20);
      v4[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v4 + 1);
      }

      else
      {
        v19 = v4 + 2;
      }

      v4 = sub_14589F4(v17, v19, a3);
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

      v4 = sub_14589F4(v22, v24, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v25 = *(a1 + 104);
    *v4 = 50;
    v26 = *(v25 + 44);
    v4[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v4 + 1);
    }

    else
    {
      v27 = v4 + 2;
    }

    v4 = sub_14B6D24(v25, v27, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v28 = *(a1 + 112);
    *v4 = 58;
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

    v4 = sub_14589F4(v28, v30, a3);
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v4;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if ((*a3 - v4) >= v34)
  {
    v36 = v34;
    memcpy(v4, v35, v34);
    v4 += v36;
    return v4;
  }

  return sub_1957130(a3, v35, v34, v4);
}

uint64_t sub_145BB4C(uint64_t a1)
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
      v14 = sub_1458DB4(v13);
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
      v21 = sub_1458DB4(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 7) != 0)
  {
    if (v22)
    {
      v26 = sub_1458DB4(*(a1 + 96));
      v16 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 2) == 0)
      {
LABEL_24:
        if ((v22 & 4) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_24;
    }

    v27 = sub_14B71B8(*(a1 + 104));
    v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 4) != 0)
    {
LABEL_25:
      v23 = sub_1458DB4(*(a1 + 112));
      v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_26:
  v24 = *(a1 + 8);
  if (v24)
  {
    v28 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v16 += v29;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_145BD3C(uint64_t result, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(result + 24, *(a2 + 32));
    sub_144A454((result + 24), v7, (v6 + 8), v5, **(result + 40) - *(result + 32));
    v8 = *(result + 32) + v5;
    *(result + 32) = v8;
    v9 = *(result + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_19592E8(result + 48, *(a2 + 56));
    sub_144A454((result + 48), v12, (v11 + 8), v10, **(result + 64) - *(result + 56));
    v13 = *(result + 56) + v10;
    *(result + 56) = v13;
    v14 = *(result + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_19592E8(result + 72, *(a2 + 80));
    sub_144A454((result + 72), v17, (v16 + 8), v15, **(result + 88) - *(result + 80));
    v18 = *(result + 80) + v15;
    *(result + 80) = v18;
    v19 = *(result + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 16);
  if ((v20 & 7) != 0)
  {
    if (v20)
    {
      *(result + 16) |= 1u;
      v21 = *(result + 96);
      if (!v21)
      {
        v22 = *(result + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        sub_14BAE64(v23);
        *(result + 96) = v21;
      }

      if (*(a2 + 96))
      {
        v24 = *(a2 + 96);
      }

      else
      {
        v24 = &off_2771738;
      }

      sub_144EF20(v21, v24);
      if ((v20 & 2) == 0)
      {
LABEL_13:
        if ((v20 & 4) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }
    }

    else if ((v20 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(result + 16) |= 2u;
    v25 = *(result + 104);
    if (!v25)
    {
      v26 = *(result + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_14BF484(v27);
      *(result + 104) = v25;
    }

    if (*(a2 + 104))
    {
      v28 = *(a2 + 104);
    }

    else
    {
      v28 = &off_2773AC8;
    }

    sub_144F194(v25, v28);
    if ((v20 & 4) != 0)
    {
LABEL_31:
      *(result + 16) |= 4u;
      v29 = *(result + 112);
      if (!v29)
      {
        v30 = *(result + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        sub_14BAE64(v31);
        *(result + 112) = v29;
      }

      if (*(a2 + 112))
      {
        v32 = *(a2 + 112);
      }

      else
      {
        v32 = &off_2771738;
      }

      sub_144EF20(v29, v32);
    }
  }

LABEL_39:
  v33 = *(a2 + 8);
  if (v33)
  {

    sub_1957EF4((result + 8), (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_145BFA4(uint64_t a1)
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

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_144F560(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = sub_144F560(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    result = sub_144F560(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 2) != 0)
  {
    result = sub_144F5D0(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 4) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_145C090(void *a1)
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

  sub_145C114(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_145C114(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27718F8)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_1458388(v4);
      operator delete();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_1458388(result);

      operator delete();
    }
  }

  return result;
}

void sub_145C1D8(void *a1)
{
  sub_145C090(a1);

  operator delete();
}

uint64_t sub_145C210(uint64_t result)
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

LABEL_17:
    result = sub_144E5CC(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_18;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = sub_144E5CC(*(result + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_18:
  result = sub_144E5CC(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_144E5CC(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_145C2DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 2u;
          v16 = *(a1 + 32);
          if (!v16)
          {
            v26 = *(a1 + 8);
            v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
            if (v26)
            {
              v27 = *v27;
            }

            sub_14BAE64(v27);
            v16 = v28;
            *(a1 + 32) = v28;
LABEL_40:
            v6 = *v33;
          }

LABEL_41:
          v14 = sub_22095B8(a3, v16, v6);
          goto LABEL_42;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 16) |= 4u;
        v16 = *(a1 + 40);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          sub_14BAE64(v18);
          v16 = v19;
          *(a1 + 40) = v19;
          goto LABEL_40;
        }

        goto LABEL_41;
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 8u;
        v16 = *(a1 + 48);
        if (!v16)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          sub_14BAE64(v21);
          v16 = v22;
          *(a1 + 48) = v22;
          goto LABEL_40;
        }

        goto LABEL_41;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 0x10u;
        v16 = *(a1 + 56);
        if (!v16)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_14BAE64(v24);
          v16 = v25;
          *(a1 + 56) = v25;
          goto LABEL_40;
        }

        goto LABEL_41;
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = sub_194DB04((a1 + 24), v12);
      v14 = sub_1958890(v13, *v33, a3);
      goto LABEL_42;
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

LABEL_55:
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

    v14 = sub_1952690(v7, v31, v6, a3);
LABEL_42:
    *v33 = v14;
    if (!v14)
    {
      goto LABEL_55;
    }
  }

  return *v33;
}

char *sub_145C564(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v9 = *(a1 + 32);
    *v4 = 10;
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

    v4 = sub_14589F4(v9, v11, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 40);
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

  v4 = sub_14589F4(v12, v14, a3);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 48);
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

  v4 = sub_14589F4(v15, v17, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 56);
  *v4 = 34;
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

  v4 = sub_14589F4(v18, v20, a3);
  if (v6)
  {
LABEL_6:
    v4 = sub_128AEEC(a3, 5, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_7:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v21 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v4) >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_145C7DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
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
    v7 = sub_1458DB4(*(a1 + 32));
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
    v11 = sub_1458DB4(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_1458DB4(*(a1 + 48));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_13:
    v8 = sub_1458DB4(*(a1 + 56));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v3 += v14;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_145C95C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) == 0)
  {
    goto LABEL_43;
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

      sub_14BAE64(v10);
      *(a1 + 32) = v8;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &off_2771738;
    }

    sub_144EF20(v8, v11);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
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

    sub_14BAE64(v14);
    *(a1 + 40) = v12;
  }

  if (*(a2 + 40))
  {
    v15 = *(a2 + 40);
  }

  else
  {
    v15 = &off_2771738;
  }

  sub_144EF20(v12, v15);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

LABEL_27:
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

    sub_14BAE64(v18);
    *(a1 + 48) = v16;
  }

  if (*(a2 + 48))
  {
    v19 = *(a2 + 48);
  }

  else
  {
    v19 = &off_2771738;
  }

  sub_144EF20(v16, v19);
  if ((v4 & 0x10) != 0)
  {
LABEL_35:
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

      sub_14BAE64(v22);
      *(a1 + 56) = v20;
    }

    if (*(a2 + 56))
    {
      v23 = *(a2 + 56);
    }

    else
    {
      v23 = &off_2771738;
    }

    sub_144EF20(v20, v23);
  }

LABEL_43:
  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((a1 + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_145CB24(uint64_t a1)
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

  if ((v2 & 8) != 0)
  {
    result = sub_144F560(*(a1 + 48));
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

  result = sub_144F560(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_145CBA8(void *a1)
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

  sub_145CC38(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144A1C8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_145CC38(void *result)
{
  if (result != &off_2771938)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      sub_1458388(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_1458388(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_1458388(v4);
      operator delete();
    }

    result = v1[9];
    if (result)
    {
      sub_1458388(result);

      operator delete();
    }
  }

  return result;
}

void sub_145CCE4(void *a1)
{
  sub_145CBA8(a1);

  operator delete();
}

uint64_t sub_145CD1C(uint64_t result)
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

  v5 = *(v1 + 16);
  if ((v5 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = sub_144E5CC(*(v1 + 56));
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  result = sub_144E5CC(*(v1 + 48));
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  result = sub_144E5CC(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = sub_144E5CC(*(v1 + 72));
  }

LABEL_11:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 72) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_145CDEC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_57;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 48);
        if (v13)
        {
          goto LABEL_43;
        }

        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        sub_14BAE64(v21);
        v13 = v22;
        *(a1 + 48) = v22;
      }

      else if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_57;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 56);
        if (v13)
        {
          goto LABEL_43;
        }

        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        sub_14BAE64(v27);
        v13 = v28;
        *(a1 + 56) = v28;
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_57;
        }

        *(a1 + 16) |= 4u;
        v13 = *(a1 + 64);
        if (v13)
        {
          goto LABEL_43;
        }

        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        sub_14BAE64(v15);
        v13 = v16;
        *(a1 + 64) = v16;
      }

LABEL_42:
      v7 = v41;
LABEL_43:
      v29 = sub_22095B8(a3, v13, v7);
      goto LABEL_44;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_57;
      }

      *(a1 + 16) |= 8u;
      v13 = *(a1 + 72);
      if (v13)
      {
        goto LABEL_43;
      }

      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_14BAE64(v24);
      v13 = v25;
      *(a1 + 72) = v25;
      goto LABEL_42;
    }

    if (v11 == 5)
    {
      break;
    }

    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_57;
    }

    v5 |= 0x10u;
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
      v41 = v17;
      *(a1 + 80) = v18;
      goto LABEL_45;
    }

    v39 = sub_1958770(v7, v18);
    v41 = v39;
    *(a1 + 80) = v40;
    if (!v39)
    {
      goto LABEL_69;
    }

LABEL_45:
    if (sub_195ADC0(a3, &v41, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 42)
  {
    v30 = v7 - 1;
    while (1)
    {
      v31 = v30 + 1;
      v41 = v30 + 1;
      v32 = *(a1 + 40);
      if (v32 && (v33 = *(a1 + 32), v33 < *v32))
      {
        *(a1 + 32) = v33 + 1;
        v34 = *&v32[2 * v33 + 2];
      }

      else
      {
        sub_14BAE64(*(a1 + 24));
        v34 = sub_19593CC(a1 + 24, v35);
        v31 = v41;
      }

      v30 = sub_22095B8(a3, v34, v31);
      v41 = v30;
      if (!v30)
      {
        goto LABEL_69;
      }

      if (*a3 <= v30 || *v30 != 42)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_57:
  if (v8)
  {
    v36 = (v8 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v37 = *(a1 + 8);
    if (v37)
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v7 = v41;
    }

    v29 = sub_1952690(v8, v38, v7, a3);
LABEL_44:
    v41 = v29;
    if (!v29)
    {
      goto LABEL_69;
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_69:
  v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_145D144(uint64_t a1, unint64_t __dst, unint64_t *a3)
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
    *(v4 + 1) = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, (v4 + 1));
    }

    else
    {
      v9 = (v4 + 2);
    }

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
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
  *v4 = 18;
  v11 = *(v10 + 20);
  *(v4 + 1) = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, (v4 + 1));
  }

  else
  {
    v12 = (v4 + 2);
  }

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 64);
  *v4 = 26;
  v14 = *(v13 + 20);
  *(v4 + 1) = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, (v4 + 1));
  }

  else
  {
    v15 = (v4 + 2);
  }

  v4 = sub_14589F4(v13, v15, a3);
  if ((v6 & 8) != 0)
  {
LABEL_24:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 72);
    *v4 = 34;
    v17 = *(v16 + 20);
    *(v4 + 1) = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, (v4 + 1));
    }

    else
    {
      v18 = (v4 + 2);
    }

    v4 = sub_14589F4(v16, v18, a3);
  }

LABEL_30:
  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 42;
      v22 = *(v21 + 20);
      *(v4 + 1) = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, (v4 + 1));
      }

      else
      {
        v23 = (v4 + 2);
      }

      v4 = sub_14589F4(v21, v23, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v25 = *(a1 + 80);
    *v4 = 48;
    *(v4 + 1) = v25;
    if (v25 > 0x7F)
    {
      *(v4 + 1) = v25 | 0x80;
      v26 = v25 >> 7;
      *(v4 + 2) = v25 >> 7;
      v24 = (v4 + 3);
      if (v25 >= 0x4000)
      {
        LOBYTE(v4) = *(v4 + 2);
        do
        {
          *(v24 - 1) = v4 | 0x80;
          LODWORD(v4) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = (v4 + 2);
    }
  }

  else
  {
    v24 = v4;
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v24;
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

  if ((*a3 - v24) >= v31)
  {
    v33 = v31;
    memcpy(v24, v32, v31);
    v24 += v33;
    return v24;
  }

  return sub_1957130(a3, v32, v31, v24);
}