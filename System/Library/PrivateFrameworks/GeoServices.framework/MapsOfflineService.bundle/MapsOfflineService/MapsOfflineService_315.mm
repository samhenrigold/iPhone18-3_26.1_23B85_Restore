uint64_t sub_12ED54C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_22;
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
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v10 = *(a1 + 40);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v11;
  }

  v3 = v2 + ((v1 >> 2) & 2);
  if ((v1 & 0x10) != 0)
  {
    v12 = *(a1 + 48);
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 11;
    }

    v3 += v14;
  }

LABEL_22:
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

void sub_12ED694(uint64_t a1, uint64_t a2)
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

      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 40) = *(a2 + 40);
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
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_8;
    }

LABEL_20:
    *(a1 + 44) = *(a2 + 44);
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

void *sub_12ED7C4(void *a1)
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

void sub_12ED838(void *a1)
{
  sub_12ED7C4(a1);

  operator delete();
}

uint64_t sub_12ED870(uint64_t a1)
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

char *sub_12ED888(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v19, a3[11].u32[1]))
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = v19 + 1;
    v7 = *v19;
    if (*v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v19 + 2;
      }
    }

    v19 = v6;
    if (v7 != 8)
    {
      break;
    }

    v14 = v6 + 1;
    v13 = *v6;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v6 + 2;
LABEL_18:
      v19 = v14;
      *(a1 + 24) = v13;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_19587DC(v6, v13);
    v19 = v16;
    *(a1 + 24) = v17;
    v5 = 1;
    if (!v16)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (sub_195ADC0(a3, &v19, a3[11].u32[1]))
    {
      goto LABEL_26;
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
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v19;
    }

    v19 = sub_1952690(v7, v12, v6, a3);
    if (!v19)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_26;
  }

LABEL_27:
  v19 = 0;
LABEL_26:
  *(a1 + 16) |= v5;
  return v19;
}

char *sub_12ED9FC(uint64_t a1, char *__dst, void *a3)
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

unint64_t sub_12EDB24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
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

void *sub_12EDB9C(void *a1)
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

void sub_12EDC18(void *a1)
{
  sub_12EDB9C(a1);

  operator delete();
}

uint64_t *sub_12EDC50(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 8) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12EDC6C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v27, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v27 + 1;
    v8 = *v27;
    if (*v27 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v27, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v27 + 2;
      }
    }

    v27 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_38:
      v27 = v22;
      *(a1 + 40) = v23;
      v5 = 1;
      goto LABEL_39;
    }

    v25 = sub_1958770(v7, v23);
    v27 = v25;
    *(a1 + 40) = v26;
    v5 = 1;
    if (!v25)
    {
      goto LABEL_48;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v27, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v16 = v7 - 1;
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
      v20 = *(a1 + 24);
      if (v20 == *(a1 + 28))
      {
        v21 = v20 + 1;
        sub_1958E5C((a1 + 24), v20 + 1);
        *(*(a1 + 32) + 4 * v20) = v17;
        v16 = v27;
      }

      else
      {
        *(*(a1 + 32) + 4 * v20) = v17;
        v21 = v20 + 1;
      }

      *(a1 + 24) = v21;
      if (!v16)
      {
        goto LABEL_48;
      }

      if (*a3 <= v16 || *v16 != 16)
      {
        goto LABEL_39;
      }
    }
  }

  if (v8 == 18)
  {
    v15 = sub_1958918((a1 + 24), v7, a3);
    goto LABEL_19;
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
      v7 = v27;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
LABEL_19:
    v27 = v15;
    if (!v15)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v27 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

char *sub_12EDED8(uint64_t a1, char *a2, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 40);
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

      v12 = *(*(a1 + 32) + 4 * i);
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
            LODWORD(v5) = v14 >> 7;
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

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v13;
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

  if ((*a3 - v13) >= v19)
  {
    v21 = v19;
    memcpy(v13, v20, v19);
    v13 += v21;
    return v13;
  }

  return sub_1957130(a3, v20, v19, v13);
}

uint64_t sub_12EE0B4(uint64_t a1)
{
  result = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  if (*(a1 + 16))
  {
    result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

  *(a1 + 20) = result;
  return result;
}

std::string *sub_12EE138(std::string *result, uint64_t a2)
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

void *sub_12EE210(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12EE28C(void *a1)
{
  sub_12EE210(a1);

  operator delete();
}

uint64_t sub_12EE2C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12EE2D8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
  {
    return v20;
  }

  while (1)
  {
    v5 = v20 + 1;
    v6 = *v20;
    if (*v20 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(v20, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = v20 + 2;
      }
    }

    v20 = v5;
    if ((v6 & 0xFFFFFFF8) == 8)
    {
      if (v6 == 8)
      {
        v9 = v5 - 1;
        while (1)
        {
          v20 = v9 + 1;
          v10 = v9[1];
          if (v9[1] < 0)
          {
            v11 = v10 + (v9[2] << 7);
            v10 = v11 - 128;
            if (v9[2] < 0)
            {
              v9 = sub_1958770((v9 + 1), v11 - 128);
              v10 = v12;
            }

            else
            {
              v9 += 3;
            }
          }

          else
          {
            v9 += 2;
          }

          v20 = v9;
          v13 = *(a1 + 16);
          if (v13 == *(a1 + 20))
          {
            v14 = v13 + 1;
            sub_1958E5C((a1 + 16), v13 + 1);
            *(*(a1 + 24) + 4 * v13) = v10;
            v9 = v20;
          }

          else
          {
            *(*(a1 + 24) + 4 * v13) = v10;
            v14 = v13 + 1;
          }

          *(a1 + 16) = v14;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 8)
          {
            goto LABEL_31;
          }
        }
      }

      if (v6 == 10)
      {
        v15 = sub_1958918((a1 + 16), v5, a3);
        goto LABEL_30;
      }
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v18 = sub_11F1920((a1 + 8));
      v5 = v20;
    }

    v15 = sub_1952690(v6, v18, v5, a3);
LABEL_30:
    v20 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
    {
      return v20;
    }
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return v20;
  }

  return 0;
}

char *sub_12EE4C8(uint64_t a1, char *a2, void *a3)
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

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v15)
  {
    v17 = v15;
    memcpy(v8, v16, v15);
    v8 += v17;
    return v8;
  }

  return sub_1957130(a3, v16, v15, v8);
}

uint64_t sub_12EE618(uint64_t a1)
{
  result = sub_1959E5C((a1 + 16)) + *(a1 + 16);
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

  *(a1 + 32) = result;
  return result;
}

std::string *sub_12EE670(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 8);
  if (v8)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12EE72C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26D2140;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = &qword_278E990;
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  return a1;
}

void sub_12EE7D8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_12EE808(uint64_t a1)
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

  v5 = (a1 + 232);
  if (*(a1 + 232) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276A488)
  {
    v6 = *(a1 + 240);
    if (v6)
    {
      sub_17998B0(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_12E5194((a1 + 208));
  sub_12E5110((a1 + 184));
  sub_1956AFC((a1 + 160));
  sub_12E508C((a1 + 136));
  sub_1956ABC(a1 + 120);
  sub_12E5008((a1 + 96));
  sub_12E4F00((a1 + 72));
  sub_13117B8((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12EE934(uint64_t a1)
{
  sub_12EE808(a1);

  operator delete();
}

uint64_t sub_12EE96C(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_12F0E20(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      sub_12E9A98(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  sub_12E4E18((a1 + 96));
  *(a1 + 120) = 0;
  sub_13115E8((a1 + 136));
  sub_12A41D0(a1 + 160);
  result = sub_1311650((a1 + 184));
  v9 = *(a1 + 216);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 224) + 8);
    do
    {
      v11 = *v10++;
      result = sub_12EACE4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 216) = 0;
  }

  v12 = *(a1 + 40);
  if ((v12 & 3) != 0)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }

    v13 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v13 + 23) & 0x80000000) == 0)
    {
      *v13 = 0;
      *(v13 + 23) = 0;
LABEL_17:
      if ((v12 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    **v13 = 0;
    *(v13 + 8) = 0;
    if ((v12 & 2) != 0)
    {
LABEL_18:
      result = sub_17998EC(*(a1 + 240));
    }
  }

LABEL_19:
  if ((v12 & 0xFC) != 0)
  {
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 263) = 0;
  }

  if ((v12 & 0x300) != 0)
  {
    *(a1 + 275) = 0;
    *(a1 + 271) = 0;
  }

  v15 = *(a1 + 8);
  v14 = a1 + 8;
  *(v14 + 32) = 0;
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

uint64_t sub_12EEAD8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v109 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v109, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v109 + 1);
      v8 = **v109;
      if (**v109 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(*v109, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = (*v109 + 2);
        }
      }

      *v109 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_164;
          }

          v11 = v7 - 1;
          while (1)
          {
            v12 = v11 + 1;
            *v109 = v11 + 1;
            v13 = *(a1 + 64);
            if (v13 && (v14 = *(a1 + 56), v14 < *v13))
            {
              *(a1 + 56) = v14 + 1;
              v15 = *&v13[2 * v14 + 2];
            }

            else
            {
              sub_12F1D4C(*(a1 + 48));
              v15 = sub_19593CC(a1 + 48, v16);
              v12 = *v109;
            }

            v11 = sub_21F8A48(a3, v15, v12);
            *v109 = v11;
            if (!v11)
            {
              goto LABEL_180;
            }

            if (*a3 <= v11 || *v11 != 10)
            {
              goto LABEL_174;
            }
          }

        case 2u:
          if (v8 != 18)
          {
            goto LABEL_164;
          }

          v33 = v7 - 1;
          while (1)
          {
            v34 = v33 + 1;
            *v109 = v33 + 1;
            v35 = *(a1 + 88);
            if (v35 && (v36 = *(a1 + 80), v36 < *v35))
            {
              *(a1 + 80) = v36 + 1;
              v37 = *&v35[2 * v36 + 2];
            }

            else
            {
              sub_12F1890(*(a1 + 72));
              v37 = sub_19593CC(a1 + 72, v38);
              v34 = *v109;
            }

            v33 = sub_21F5030(a3, v37, v34);
            *v109 = v33;
            if (!v33)
            {
              goto LABEL_180;
            }

            if (*a3 <= v33 || *v33 != 18)
            {
              goto LABEL_174;
            }
          }

        case 3u:
          if (v8 != 26)
          {
            goto LABEL_164;
          }

          v51 = v7 - 1;
          while (1)
          {
            v52 = v51 + 1;
            *v109 = v51 + 1;
            v53 = *(a1 + 112);
            if (v53 && (v54 = *(a1 + 104), v54 < *v53))
            {
              *(a1 + 104) = v54 + 1;
              v55 = *&v53[2 * v54 + 2];
            }

            else
            {
              v56 = sub_12F1AC0(*(a1 + 96));
              v55 = sub_19593CC(a1 + 96, v56);
              v52 = *v109;
            }

            v51 = sub_21F5150(a3, v55, v52);
            *v109 = v51;
            if (!v51)
            {
              goto LABEL_180;
            }

            if (*a3 <= v51 || *v51 != 26)
            {
              goto LABEL_174;
            }
          }

        case 4u:
          if (v8 != 34)
          {
            goto LABEL_164;
          }

          *(a1 + 40) |= 2u;
          v48 = *(a1 + 240);
          if (!v48)
          {
            v49 = *(a1 + 8);
            v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
            if (v49)
            {
              v50 = *v50;
            }

            v48 = sub_185D614(v50);
            *(a1 + 240) = v48;
            v7 = *v109;
          }

          v32 = sub_21F51E0(a3, v48, v7);
          goto LABEL_173;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_164;
          }

          v5 |= 4u;
          v27 = v7 + 1;
          v26 = *v7;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v94 = sub_19587DC(v7, v26);
            *v109 = v94;
            *(a1 + 248) = v95;
            if (!v94)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v27 = v7 + 2;
LABEL_37:
            *v109 = v27;
            *(a1 + 248) = v26;
          }

          goto LABEL_174;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_164;
          }

          v5 |= 8u;
          v40 = v7 + 1;
          v39 = *v7;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v96 = sub_19587DC(v7, v39);
            *v109 = v96;
            *(a1 + 256) = v97;
            if (!v96)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v40 = v7 + 2;
LABEL_56:
            *v109 = v40;
            *(a1 + 256) = v39;
          }

          goto LABEL_174;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_164;
          }

          v5 |= 0x10u;
          v57 = v7 + 1;
          v58 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_87;
          }

          v59 = *v57;
          v58 = v58 + (v59 << 7) - 128;
          if (v59 < 0)
          {
            v98 = sub_1958770(v7, v58);
            *v109 = v98;
            *(a1 + 264) = v99;
            if (!v98)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v57 = v7 + 2;
LABEL_87:
            *v109 = v57;
            *(a1 + 264) = v58;
          }

          goto LABEL_174;
        case 8u:
          if (v8 == 64)
          {
            v60 = v7 - 1;
            while (1)
            {
              *v109 = v60 + 1;
              v61 = v60[1];
              if (v60[1] < 0)
              {
                v62 = v61 + (v60[2] << 7);
                v61 = v62 - 128;
                if (v60[2] < 0)
                {
                  v60 = sub_1958770((v60 + 1), v62 - 128);
                  v61 = v63;
                }

                else
                {
                  v60 += 3;
                }
              }

              else
              {
                v60 += 2;
              }

              *v109 = v60;
              v64 = *(a1 + 120);
              if (v64 == *(a1 + 124))
              {
                v65 = v64 + 1;
                sub_1958E5C((a1 + 120), v64 + 1);
                *(*(a1 + 128) + 4 * v64) = v61;
                v60 = *v109;
              }

              else
              {
                *(*(a1 + 128) + 4 * v64) = v61;
                v65 = v64 + 1;
              }

              *(a1 + 120) = v65;
              if (!v60)
              {
                goto LABEL_180;
              }

              if (*a3 <= v60 || *v60 != 64)
              {
                goto LABEL_174;
              }
            }
          }

          if (v8 == 66)
          {
            v32 = sub_1958918((a1 + 120), v7, a3);
          }

          else
          {
LABEL_164:
            if (v8)
            {
              v106 = (v8 & 7) == 4;
            }

            else
            {
              v106 = 1;
            }

            if (v106)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_180:
              *v109 = 0;
              goto LABEL_2;
            }

            if ((v8 - 80000) >> 3 > 0x3E8)
            {
              v107 = *(a1 + 8);
              if (v107)
              {
                v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL) + 8;
              }

              else
              {
                v108 = sub_11F1920((a1 + 8));
                v7 = *v109;
              }

              v32 = sub_1952690(v8, v108, v7, a3);
            }

            else
            {
              v32 = sub_19525AC((a1 + 16), v8, v7, &off_276A488, (a1 + 8), a3);
            }
          }

LABEL_173:
          *v109 = v32;
          if (!v32)
          {
            goto LABEL_180;
          }

LABEL_174:
          if (sub_195ADC0(a3, v109, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_164;
          }

          v80 = v7 - 1;
          while (1)
          {
            v81 = v80 + 1;
            *v109 = v80 + 1;
            v82 = *(a1 + 152);
            if (v82 && (v83 = *(a1 + 144), v83 < *v82))
            {
              *(a1 + 144) = v83 + 1;
              v84 = *&v82[2 * v83 + 2];
            }

            else
            {
              v85 = sub_12F1B38(*(a1 + 136));
              v84 = sub_19593CC(a1 + 136, v85);
              v81 = *v109;
            }

            v80 = sub_21F5270(a3, v84, v81);
            *v109 = v80;
            if (!v80)
            {
              goto LABEL_180;
            }

            if (*a3 <= v80 || *v80 != 74)
            {
              goto LABEL_174;
            }
          }

        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_164;
          }

          v72 = v7 - 1;
          while (1)
          {
            v73 = (v72 + 1);
            *v109 = v72 + 1;
            v74 = *(a1 + 176);
            if (v74 && (v75 = *(a1 + 168), v75 < *v74))
            {
              *(a1 + 168) = v75 + 1;
              v76 = *&v74[2 * v75 + 2];
            }

            else
            {
              v77 = *(a1 + 160);
              if (!v77)
              {
                operator new();
              }

              *v79 = v78;
              v79[1] = sub_195A650;
              *v78 = 0;
              v78[1] = 0;
              v78[2] = 0;
              v76 = sub_19593CC(a1 + 160, v78);
              v73 = *v109;
            }

            v72 = sub_1958890(v76, v73, a3);
            *v109 = v72;
            if (!v72)
            {
              goto LABEL_180;
            }

            if (*a3 <= v72 || *v72 != 82)
            {
              goto LABEL_174;
            }
          }

        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_164;
          }

          v20 = v7 - 1;
          while (1)
          {
            v21 = v20 + 1;
            *v109 = v20 + 1;
            v22 = *(a1 + 200);
            if (v22 && (v23 = *(a1 + 192), v23 < *v22))
            {
              *(a1 + 192) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_12F1BD4(*(a1 + 184));
              v24 = sub_19593CC(a1 + 184, v25);
              v21 = *v109;
            }

            v20 = sub_21F5300(a3, v24, v21);
            *v109 = v20;
            if (!v20)
            {
              goto LABEL_180;
            }

            if (*a3 <= v20 || *v20 != 90)
            {
              goto LABEL_174;
            }
          }

        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_164;
          }

          v42 = v7 - 1;
          while (1)
          {
            v43 = v42 + 1;
            *v109 = v42 + 1;
            v44 = *(a1 + 224);
            if (v44 && (v45 = *(a1 + 216), v45 < *v44))
            {
              *(a1 + 216) = v45 + 1;
              v46 = *&v44[2 * v45 + 2];
            }

            else
            {
              v47 = sub_12F1954(*(a1 + 208));
              v46 = sub_19593CC(a1 + 208, v47);
              v43 = *v109;
            }

            v42 = sub_21F5390(a3, v46, v43);
            *v109 = v42;
            if (!v42)
            {
              goto LABEL_180;
            }

            if (*a3 <= v42 || *v42 != 98)
            {
              goto LABEL_174;
            }
          }

        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_164;
          }

          *(a1 + 40) |= 1u;
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v31 = sub_194DB04((a1 + 232), v30);
          v32 = sub_1958890(v31, *v109, a3);
          goto LABEL_173;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_164;
          }

          v5 |= 0x20u;
          v18 = v7 + 1;
          v17 = *v7;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if (v19 < 0)
          {
            v92 = sub_19587DC(v7, v17);
            *v109 = v92;
            *(a1 + 268) = v93 != 0;
            if (!v92)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v18 = v7 + 2;
LABEL_22:
            *v109 = v18;
            *(a1 + 268) = v17 != 0;
          }

          goto LABEL_174;
        case 0x15u:
          if (v8 != 168)
          {
            goto LABEL_164;
          }

          v5 |= 0x40u;
          v67 = v7 + 1;
          v66 = *v7;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_106;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v100 = sub_19587DC(v7, v66);
            *v109 = v100;
            *(a1 + 269) = v101 != 0;
            if (!v100)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v67 = v7 + 2;
LABEL_106:
            *v109 = v67;
            *(a1 + 269) = v66 != 0;
          }

          goto LABEL_174;
        case 0x16u:
          if (v8 != 176)
          {
            goto LABEL_164;
          }

          v5 |= 0x80u;
          v70 = v7 + 1;
          v69 = *v7;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_111;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v102 = sub_19587DC(v7, v69);
            *v109 = v102;
            *(a1 + 270) = v103 != 0;
            if (!v102)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v70 = v7 + 2;
LABEL_111:
            *v109 = v70;
            *(a1 + 270) = v69 != 0;
          }

          goto LABEL_174;
        case 0x17u:
          if (v8 != 184)
          {
            goto LABEL_164;
          }

          v5 |= 0x100u;
          v90 = v7 + 1;
          v89 = *v7;
          if ((v89 & 0x8000000000000000) == 0)
          {
            goto LABEL_145;
          }

          v91 = *v90;
          v89 = (v91 << 7) + v89 - 128;
          if (v91 < 0)
          {
            v104 = sub_19587DC(v7, v89);
            *v109 = v104;
            *(a1 + 271) = v105 != 0;
            if (!v104)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v90 = v7 + 2;
LABEL_145:
            *v109 = v90;
            *(a1 + 271) = v89 != 0;
          }

          goto LABEL_174;
        case 0x18u:
          if (v8 != 192)
          {
            goto LABEL_164;
          }

          v87 = v7 + 1;
          v86 = *v7;
          if ((v86 & 0x8000000000000000) == 0)
          {
            goto LABEL_138;
          }

          v88 = *v87;
          v86 = (v88 << 7) + v86 - 128;
          if (v88 < 0)
          {
            *v109 = sub_19587DC(v7, v86);
            if (!*v109)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v87 = v7 + 2;
LABEL_138:
            *v109 = v87;
          }

          if (v86 > 5)
          {
            sub_13136C0();
          }

          else
          {
            *(a1 + 40) |= 0x200u;
            *(a1 + 272) = v86;
          }

          goto LABEL_174;
        default:
          goto LABEL_164;
      }
    }
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return *v109;
}

char *sub_12EF5A0(uint64_t a1, char *a2, unint64_t *a3)
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

      a2 = sub_12F1254(v8, v10, a3);
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 88) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_12EA184(v13, v15, a3);
    }
  }

  v16 = *(a1 + 104);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v18 = *(*(a1 + 112) + 8 * k + 8);
      *a2 = 26;
      v19 = *(v18 + 20);
      a2[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, a2 + 1);
      }

      else
      {
        v20 = a2 + 2;
      }

      a2 = sub_12ED9FC(v18, v20, a3);
    }
  }

  v21 = *(a1 + 40);
  if ((v21 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v22 = *(a1 + 240);
    *a2 = 34;
    v23 = *(v22 + 20);
    a2[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, a2 + 1);
    }

    else
    {
      v24 = a2 + 2;
    }

    a2 = sub_1799A68(v22, v24, a3);
  }

  if ((v21 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v26 = *(a1 + 248);
    *a2 = 40;
    a2[1] = v26;
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v27 = v26 >> 7;
      a2[2] = v26 >> 7;
      v25 = a2 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v25 - 1) = a2 | 0x80;
          a2 = (v27 >> 7);
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = a2 + 2;
    }
  }

  else
  {
    v25 = a2;
  }

  if ((v21 & 8) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v30 = *(a1 + 256);
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
        LOBYTE(v25) = v25[2];
        do
        {
          *(v29 - 1) = v25 | 0x80;
          v25 = (v31 >> 7);
          *v29++ = v31 >> 7;
          v32 = v31 >> 14;
          v31 >>= 7;
        }

        while (v32);
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

  if ((v21 & 0x10) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v34 = *(a1 + 264);
    *v29 = 56;
    v29[1] = v34;
    if (v34 > 0x7F)
    {
      v29[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v29[2] = v34 >> 7;
      v33 = v29 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v29) = v29[2];
        do
        {
          *(v33 - 1) = v29 | 0x80;
          LODWORD(v29) = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v29 + 2;
    }
  }

  else
  {
    v33 = v29;
  }

  v37 = *(a1 + 120);
  if (v37 < 1)
  {
    v40 = v33;
  }

  else
  {
    for (m = 0; m != v37; ++m)
    {
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v39 = *(*(a1 + 128) + 4 * m);
      *v33 = 64;
      v33[1] = v39;
      if (v39 > 0x7F)
      {
        v33[1] = v39 | 0x80;
        v41 = v39 >> 7;
        v33[2] = v39 >> 7;
        v40 = v33 + 3;
        if (v39 >= 0x4000)
        {
          LOBYTE(v42) = v33[2];
          do
          {
            *(v40 - 1) = v42 | 0x80;
            v42 = v41 >> 7;
            *v40++ = v41 >> 7;
            v43 = v41 >> 14;
            v41 >>= 7;
          }

          while (v43);
        }
      }

      else
      {
        v40 = v33 + 2;
      }

      v33 = v40;
    }
  }

  v44 = *(a1 + 144);
  if (v44)
  {
    for (n = 0; n != v44; ++n)
    {
      if (*a3 <= v40)
      {
        v40 = sub_225EB68(a3, v40);
      }

      v46 = *(*(a1 + 152) + 8 * n + 8);
      *v40 = 74;
      v47 = *(v46 + 20);
      v40[1] = v47;
      if (v47 > 0x7F)
      {
        v48 = sub_19575D0(v47, v40 + 1);
      }

      else
      {
        v48 = v40 + 2;
      }

      v40 = sub_12EDED8(v46, v48, a3);
    }
  }

  v49 = *(a1 + 168);
  if (v49 >= 1)
  {
    v50 = 8;
    do
    {
      v51 = *(*(a1 + 176) + v50);
      v52 = *(v51 + 23);
      if (v52 < 0 && (v52 = v51[1], v52 > 127) || (*a3 - v40 + 14) < v52)
      {
        v40 = sub_1957480(a3, 10, v51, v40);
      }

      else
      {
        *v40 = 82;
        v40[1] = v52;
        if (*(v51 + 23) < 0)
        {
          v51 = *v51;
        }

        v53 = v40 + 2;
        memcpy(v40 + 2, v51, v52);
        v40 = &v53[v52];
      }

      v50 += 8;
      --v49;
    }

    while (v49);
  }

  v54 = *(a1 + 192);
  if (v54)
  {
    for (ii = 0; ii != v54; ++ii)
    {
      if (*a3 <= v40)
      {
        v40 = sub_225EB68(a3, v40);
      }

      v56 = *(*(a1 + 200) + 8 * ii + 8);
      *v40 = 90;
      v57 = *(v56 + 32);
      v40[1] = v57;
      if (v57 > 0x7F)
      {
        v58 = sub_19575D0(v57, v40 + 1);
      }

      else
      {
        v58 = v40 + 2;
      }

      v40 = sub_12EE4C8(v56, v58, a3);
    }
  }

  v59 = *(a1 + 216);
  if (v59)
  {
    for (jj = 0; jj != v59; ++jj)
    {
      if (*a3 <= v40)
      {
        v40 = sub_225EB68(a3, v40);
      }

      v61 = *(*(a1 + 224) + 8 * jj + 8);
      *v40 = 98;
      v62 = *(v61 + 20);
      v40[1] = v62;
      if (v62 > 0x7F)
      {
        v63 = sub_19575D0(v62, v40 + 1);
      }

      else
      {
        v63 = v40 + 2;
      }

      v40 = sub_12EAF58(v61, v63, a3);
    }
  }

  if (v21)
  {
    v40 = sub_128AEEC(a3, 13, (*(a1 + 232) & 0xFFFFFFFFFFFFFFFELL), v40);
    if ((v21 & 0x20) == 0)
    {
LABEL_108:
      if ((v21 & 0x40) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_117;
    }
  }

  else if ((v21 & 0x20) == 0)
  {
    goto LABEL_108;
  }

  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v65 = *(a1 + 268);
  *v40 = 416;
  v40[2] = v65;
  v40 += 3;
  if ((v21 & 0x40) == 0)
  {
LABEL_109:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_120;
  }

LABEL_117:
  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v66 = *(a1 + 269);
  *v40 = 424;
  v40[2] = v66;
  v40 += 3;
  if ((v21 & 0x80) == 0)
  {
LABEL_110:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_111;
    }

LABEL_123:
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v68 = *(a1 + 271);
    *v40 = 440;
    v40[2] = v68;
    v40 += 3;
    if ((v21 & 0x200) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

LABEL_120:
  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v67 = *(a1 + 270);
  *v40 = 432;
  v40[2] = v67;
  v40 += 3;
  if ((v21 & 0x100) != 0)
  {
    goto LABEL_123;
  }

LABEL_111:
  if ((v21 & 0x200) == 0)
  {
LABEL_112:
    v64 = v40;
    goto LABEL_133;
  }

LABEL_126:
  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v69 = *(a1 + 272);
  *v40 = 448;
  v40[2] = v69;
  if (v69 > 0x7F)
  {
    v40[2] = v69 | 0x80;
    v70 = v69 >> 7;
    v40[3] = v69 >> 7;
    v64 = v40 + 4;
    if (v69 >= 0x4000)
    {
      LOBYTE(v71) = v40[3];
      do
      {
        *(v64 - 1) = v71 | 0x80;
        v71 = v70 >> 7;
        *v64++ = v70 >> 7;
        v72 = v70 >> 14;
        v70 >>= 7;
      }

      while (v72);
    }
  }

  else
  {
    v64 = v40 + 3;
  }

LABEL_133:
  if (*(a1 + 26))
  {
    v64 = sub_1953428(a1 + 16, 10000, 11001, v64, a3);
  }

  v73 = *(a1 + 8);
  if ((v73 & 1) == 0)
  {
    return v64;
  }

  v75 = v73 & 0xFFFFFFFFFFFFFFFCLL;
  v76 = *(v75 + 31);
  if (v76 < 0)
  {
    v77 = *(v75 + 8);
    v76 = *(v75 + 16);
  }

  else
  {
    v77 = (v75 + 8);
  }

  if ((*a3 - v64) >= v76)
  {
    v78 = v76;
    memcpy(v64, v77, v76);
    v64 += v78;
    return v64;
  }

  return sub_1957130(a3, v77, v76, v64);
}

uint64_t sub_12EFE68(uint64_t a1)
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
      v9 = sub_12F1538(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + v10;
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_12EA66C(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  v19 = *(a1 + 112);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_12EDB24(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = sub_1959E5C((a1 + 120));
  v25 = *(a1 + 144);
  v26 = v24 + *(a1 + 120) + v25 + v18;
  v27 = *(a1 + 152);
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = sub_12EE0B4(v30);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(a1 + 168);
  v33 = v26 + v32;
  if (v32 >= 1)
  {
    v34 = (*(a1 + 176) + 8);
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

  v38 = *(a1 + 192);
  v39 = v33 + v38;
  v40 = *(a1 + 200);
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
      v44 = sub_12EE618(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 216);
  v46 = v39 + v45;
  v47 = *(a1 + 224);
  if (v47)
  {
    v48 = (v47 + 8);
  }

  else
  {
    v48 = 0;
  }

  if (v45)
  {
    v49 = 8 * v45;
    do
    {
      v50 = *v48++;
      v51 = sub_12EB06C(v50);
      v46 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6);
      v49 -= 8;
    }

    while (v49);
  }

  v52 = *(a1 + 40);
  if (v52)
  {
    if (v52)
    {
      v59 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
      v60 = *(v59 + 23);
      v61 = *(v59 + 8);
      if ((v60 & 0x80u) == 0)
      {
        v61 = v60;
      }

      v46 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v52 & 2) == 0)
      {
LABEL_45:
        if ((v52 & 4) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_70;
      }
    }

    else if ((v52 & 2) == 0)
    {
      goto LABEL_45;
    }

    v62 = sub_1799B30(*(a1 + 240));
    v46 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v52 & 4) == 0)
    {
LABEL_46:
      if ((v52 & 8) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_71;
    }

LABEL_70:
    v46 += ((9 * (__clz(*(a1 + 248) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v52 & 8) == 0)
    {
LABEL_47:
      if ((v52 & 0x10) == 0)
      {
LABEL_49:
        v53 = v46 + 3;
        if ((v52 & 0x20) == 0)
        {
          v53 = v46;
        }

        if ((v52 & 0x40) != 0)
        {
          v53 += 3;
        }

        if ((v52 & 0x80) != 0)
        {
          v46 = v53 + 3;
        }

        else
        {
          v46 = v53;
        }

        goto LABEL_56;
      }

LABEL_48:
      v46 += ((9 * (__clz(*(a1 + 264) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_49;
    }

LABEL_71:
    v46 += ((9 * (__clz(*(a1 + 256) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v52 & 0x10) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_56:
  if ((v52 & 0x300) != 0)
  {
    if ((v52 & 0x100) != 0)
    {
      v46 += 3;
    }

    if ((v52 & 0x200) != 0)
    {
      v54 = *(a1 + 272);
      v55 = ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v54 >= 0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 12;
      }

      v46 += v56;
    }
  }

  v57 = *(a1 + 8);
  if (v57)
  {
    v63 = v57 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = *((v57 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v64 < 0)
    {
      v64 = *(v63 + 16);
    }

    v46 += v64;
  }

  *(a1 + 44) = v46;
  return v46;
}

void sub_12F0280(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13119D8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_12E52A4((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_12E53BC((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 120);
  if (v19)
  {
    v20 = *(a1 + 120);
    sub_1958E5C((a1 + 120), v20 + v19);
    v21 = *(a1 + 128);
    *(a1 + 120) += *(a2 + 120);
    memcpy((v21 + 4 * v20), *(a2 + 128), 4 * *(a2 + 120));
  }

  v22 = *(a2 + 144);
  if (v22)
  {
    v23 = *(a2 + 152);
    v24 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_12E5438((a1 + 136), v24, (v23 + 8), v22, **(a1 + 152) - *(a1 + 144));
    v25 = *(a1 + 144) + v22;
    *(a1 + 144) = v25;
    v26 = *(a1 + 152);
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  v27 = *(a2 + 168);
  if (v27)
  {
    v28 = *(a2 + 176);
    v29 = sub_19592E8(a1 + 160, *(a2 + 168));
    sub_1201B48((a1 + 160), v29, (v28 + 8), v27, **(a1 + 176) - *(a1 + 168));
    v30 = *(a1 + 168) + v27;
    *(a1 + 168) = v30;
    v31 = *(a1 + 176);
    if (*v31 < v30)
    {
      *v31 = v30;
    }
  }

  v32 = *(a2 + 192);
  if (v32)
  {
    v33 = *(a2 + 200);
    v34 = sub_19592E8(a1 + 184, *(a2 + 192));
    sub_12E54C4((a1 + 184), v34, (v33 + 8), v32, **(a1 + 200) - *(a1 + 192));
    v35 = *(a1 + 192) + v32;
    *(a1 + 192) = v35;
    v36 = *(a1 + 200);
    if (*v36 < v35)
    {
      *v36 = v35;
    }
  }

  v37 = *(a2 + 216);
  if (v37)
  {
    v38 = *(a2 + 224);
    v39 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_12E5550((a1 + 208), v39, (v38 + 8), v37, **(a1 + 224) - *(a1 + 216));
    v40 = *(a1 + 216) + v37;
    *(a1 + 216) = v40;
    v41 = *(a1 + 224);
    if (*v41 < v40)
    {
      *v41 = v40;
    }
  }

  v42 = *(a2 + 40);
  if (v42)
  {
    if (v42)
    {
      v44 = *(a2 + 232);
      *(a1 + 40) |= 1u;
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      sub_194EA1C((a1 + 232), (v44 & 0xFFFFFFFFFFFFFFFELL), v46);
      if ((v42 & 2) == 0)
      {
LABEL_27:
        if ((v42 & 4) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_56;
      }
    }

    else if ((v42 & 2) == 0)
    {
      goto LABEL_27;
    }

    *(a1 + 40) |= 2u;
    v47 = *(a1 + 240);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_185D614(v49);
      *(a1 + 240) = v47;
    }

    if (*(a2 + 240))
    {
      v50 = *(a2 + 240);
    }

    else
    {
      v50 = &off_2782568;
    }

    sub_132DE2C(v47, v50);
    if ((v42 & 4) == 0)
    {
LABEL_28:
      if ((v42 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 248) = *(a2 + 248);
    if ((v42 & 8) == 0)
    {
LABEL_29:
      if ((v42 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(a1 + 256) = *(a2 + 256);
    if ((v42 & 0x10) == 0)
    {
LABEL_30:
      if ((v42 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(a1 + 264) = *(a2 + 264);
    if ((v42 & 0x20) == 0)
    {
LABEL_31:
      if ((v42 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_60;
    }

LABEL_59:
    *(a1 + 268) = *(a2 + 268);
    if ((v42 & 0x40) == 0)
    {
LABEL_32:
      if ((v42 & 0x80) == 0)
      {
LABEL_34:
        *(a1 + 40) |= v42;
        goto LABEL_35;
      }

LABEL_33:
      *(a1 + 270) = *(a2 + 270);
      goto LABEL_34;
    }

LABEL_60:
    *(a1 + 269) = *(a2 + 269);
    if ((v42 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_35:
  if ((v42 & 0x300) != 0)
  {
    if ((v42 & 0x100) != 0)
    {
      *(a1 + 271) = *(a2 + 271);
    }

    if ((v42 & 0x200) != 0)
    {
      *(a1 + 272) = *(a2 + 272);
    }

    *(a1 + 40) |= v42;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v43 = *(a2 + 8);
  if (v43)
  {

    sub_1957EF4((a1 + 8), (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_12F06E0(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 80);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_12EAB84(*(*(a1 + 88) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_12F0758(uint64_t a1)
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

void sub_12F0810(uint64_t a1)
{
  sub_12F0758(a1);

  operator delete();
}

uint64_t sub_12F0848(uint64_t a1)
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

uint64_t sub_12F08C8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v22 = (a1 + 32);
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
            *v27 = sub_19587DC(v6, (v19 - 128));
            if (!*v27)
            {
              goto LABEL_44;
            }

            LODWORD(v17) = v25;
          }

          else
          {
            v16 = v6 + 2;
LABEL_24:
            *v27 = v16;
          }

          if (sub_14E9E48(v17))
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
            return *v27;
          }

LABEL_44:
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
        goto LABEL_35;
      }

      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 8);
      v21 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v21 = *v21;
      }

      v22 = (a1 + 24);
    }

    v24 = sub_194DB04(v22, v21);
    v15 = sub_1958890(v24, *v27, a3);
LABEL_35:
    *v27 = v15;
    if (!v15)
    {
      goto LABEL_44;
    }
  }

  return *v27;
}

char *sub_12F0AD4(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_12F0C40(uint64_t a1)
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

void *sub_12F0D60(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 6);
  sub_131183C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12F0DE8(void *a1)
{
  sub_12F0D60(a1);

  operator delete();
}

uint64_t sub_12F0E20(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_12F0848(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 72) = 0;
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

uint64_t sub_12F0EB8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v37 = a2;
  if (sub_195ADC0(a3, v37, a3[11].u32[1]))
  {
    return *v37;
  }

  while (1)
  {
    v6 = (*v37 + 1);
    v7 = **v37;
    if (**v37 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v37, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v37 + 2);
      }
    }

    *v37 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          v27 = v6 - 1;
          while (1)
          {
            v28 = v27 + 1;
            *v37 = v27 + 1;
            v29 = *(a1 + 40);
            if (v29 && (v30 = *(a1 + 32), v30 < *v29))
            {
              *(a1 + 32) = v30 + 1;
              v31 = *&v29[2 * v30 + 2];
            }

            else
            {
              v32 = sub_12F1CC4(*(a1 + 24));
              v31 = sub_19593CC(a1 + 24, v32);
              v28 = *v37;
            }

            v27 = sub_21F8AD8(a3, v31, v28);
            *v37 = v27;
            if (!v27)
            {
              goto LABEL_69;
            }

            if (*a3 <= v27 || *v27 != 26)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          *v37 = v15 + 1;
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
            v16 = *v37;
          }

          v15 = sub_1958890(v19, v16, a3);
          *v37 = v15;
          if (!v15)
          {
            goto LABEL_69;
          }

          if (*a3 <= v15 || *v15 != 34)
          {
            goto LABEL_58;
          }
        }
      }

      goto LABEL_51;
    }

    if (v10 == 1)
    {
      if (v7 != 8)
      {
        goto LABEL_51;
      }

      v23 = v6 + 1;
      v24 = *v6;
      if (v24 < 0)
      {
        v25 = *v23;
        v26 = (v25 << 7) + v24;
        LODWORD(v24) = v26 - 128;
        if (v25 < 0)
        {
          *v37 = sub_19587DC(v6, (v26 - 128));
          if (!*v37)
          {
            goto LABEL_69;
          }

          LODWORD(v24) = v36;
          goto LABEL_39;
        }

        v23 = v6 + 2;
      }

      *v37 = v23;
LABEL_39:
      if (sub_14E9E48(v24))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 72) = v24;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_58;
    }

    if (v10 == 2 && v7 == 16)
    {
      v13 = v6 + 1;
      v12 = *v6;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if (v14 < 0)
      {
        *v37 = sub_19587DC(v6, v12);
        if (!*v37)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v13 = v6 + 2;
LABEL_17:
        *v37 = v13;
      }

      if (v12 > 3)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 76) = v12;
      }

      goto LABEL_58;
    }

LABEL_51:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v6 = *v37;
    }

    *v37 = sub_1952690(v7, v35, v6, a3);
    if (!*v37)
    {
      goto LABEL_69;
    }

LABEL_58:
    if (sub_195ADC0(a3, v37, a3[11].u32[1]))
    {
      return *v37;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v37;
  }

LABEL_69:
  *v37 = 0;
  return *v37;
}

char *sub_12F1254(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 72);
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

    v12 = *(a1 + 76);
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

      v11 = sub_12F0AD4(v17, v19, a3);
    }
  }

  v20 = *(a1 + 56);
  if (v20 >= 1)
  {
    v21 = 8;
    do
    {
      v22 = *(*(a1 + 64) + v21);
      v23 = *(v22 + 23);
      if (v23 < 0 && (v23 = v22[1], v23 > 127) || (*a3 - v11 + 14) < v23)
      {
        v11 = sub_1957480(a3, 4, v22, v11);
      }

      else
      {
        *v11 = 34;
        v11[1] = v23;
        if (*(v22 + 23) < 0)
        {
          v22 = *v22;
        }

        v24 = v11 + 2;
        memcpy(v24, v22, v23);
        v11 = &v24[v23];
      }

      v21 += 8;
      --v20;
    }

    while (v20);
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v11;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  if ((*a3 - v11) >= v28)
  {
    v30 = v28;
    memcpy(v11, v29, v28);
    v11 += v30;
    return v11;
  }

  return sub_1957130(a3, v29, v28, v11);
}

uint64_t sub_12F1538(uint64_t a1)
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
      v7 = sub_12F0C40(v6);
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
  result = v2 + v8;
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

      result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 11;
      }

      result += v17;
    }

    if ((v14 & 2) != 0)
    {
      v18 = *(a1 + 76);
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 11;
      }

      result += v20;
    }
  }

  v21 = *(a1 + 8);
  if (v21)
  {
    v22 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    result += v23;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_12F16A8(void **result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    sub_1311A64(result + 3, v6, (v5 + 8), v4, *result[5] - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = result[5];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8((result + 6), *(a2 + 56));
    sub_1201B48(result + 6, v11, (v10 + 8), v9, *result[8] - *(result + 14));
    v12 = *(result + 14) + v9;
    *(result + 14) = v12;
    v13 = result[8];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      *(result + 18) = *(a2 + 72);
    }

    if ((v14 & 2) != 0)
    {
      *(result + 19) = *(a2 + 76);
    }

    *(result + 4) |= v14;
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4(result + 1, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_12F1808(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D1D40;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  return result;
}

double sub_12F1890(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D1DC0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = a1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = a1;
  *(v2 + 88) = &qword_278E990;
  result = 0.0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0;
  return result;
}

void *sub_12F1954(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D1E40;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_12F19DC(uint64_t *a1)
{
  if (!a1)
  {

    sub_1311AE0();
  }

  return sub_12EB2B0(v3, a1, 0);
}

uint64_t sub_12F1A38(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D1F40;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_12F1AC0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D1FC0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_12F1B38(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D2040;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_12F1BD4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D20C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_12F1C68(uint64_t *a1)
{
  if (!a1)
  {

    sub_1311B4C();
  }

  return sub_12EE72C(v3, a1, 0);
}

uint64_t sub_12F1CC4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D21C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

double sub_12F1D4C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D2240;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = a1;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = a1;
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  return result;
}

uint64_t sub_12F1DF0(uint64_t a1)
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
  sub_1311BB8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12F1EB4(uint64_t a1)
{
  sub_12F1DF0(a1);

  operator delete();
}

uint64_t sub_12F1EEC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12F2804(v4);
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
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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
  }

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 56) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_12F1FD8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_39;
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

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 56);
      }

      v23 = sub_194DB04(v15, v14);
      v24 = sub_1958890(v23, *v33, a3);
LABEL_46:
      *v33 = v24;
      if (!v24)
      {
        goto LABEL_54;
      }

      goto LABEL_47;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_39;
    }

    v5 |= 4u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_38:
      *v33 = v26;
      *(a1 + 64) = v25 != 0;
      goto LABEL_47;
    }

    v31 = sub_19587DC(v7, v25);
    *v33 = v31;
    *(a1 + 64) = v32 != 0;
    if (!v31)
    {
      goto LABEL_54;
    }

LABEL_47:
    if (sub_195ADC0(a3, v33, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = v16 + 1;
      *v33 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_12F4494(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = *v33;
      }

      v16 = sub_21F8B68(a3, v20, v17);
      *v33 = v16;
      if (!v16)
      {
        goto LABEL_54;
      }

      if (*a3 <= v16 || *v16 != 34)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_39:
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
      v7 = *v33;
    }

    v24 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_12F228C(uint64_t a1, char *__dst, unint64_t *a3)
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
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 64);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
LABEL_10:
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

      v4 = sub_12F2B98(v10, v12, a3);
    }
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

uint64_t sub_12F2454(uint64_t a1)
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
      v7 = sub_12F2DA4(v6);
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
      v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += (v8 >> 1) & 2;
  }

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

void sub_12F259C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1311D44((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 64) = *(a2 + 64);
        goto LABEL_9;
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
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12F2708(uint64_t a1)
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
  sub_1311C3C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12F27CC(uint64_t a1)
{
  sub_12F2708(a1);

  operator delete();
}

uint64_t sub_12F2804(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12F3170(v4);
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
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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
  }

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 56) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_12F28F0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_37;
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

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_37;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 56);
      }

      v23 = sub_194DB04(v15, v14);
      v24 = sub_1958890(v23, *v32, a3);
LABEL_44:
      *v32 = v24;
      if (!v24)
      {
        goto LABEL_56;
      }

      goto LABEL_49;
    }

    if (v11 != 5)
    {
      break;
    }

    if (v8 != 40)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
    LODWORD(v25) = *v7;
    if ((v25 & 0x80000000) == 0)
    {
      v26 = (v7 + 1);
LABEL_48:
      *v32 = v26;
      *(a1 + 64) = v25;
      goto LABEL_49;
    }

    v25 = (v7[1] << 7) + v25 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v26 = (v7 + 2);
      goto LABEL_48;
    }

    v30 = sub_19587DC(v7, v25);
    *v32 = v30;
    *(a1 + 64) = v31;
    if (!v30)
    {
      goto LABEL_56;
    }

LABEL_49:
    if (sub_195ADC0(a3, v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 8 && v8 == 66)
  {
    v16 = (v7 - 1);
    while (1)
    {
      v17 = (v16 + 1);
      *v32 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_12F453C(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = *v32;
      }

      v16 = sub_21F8BF8(a3, v20, v17);
      *v32 = v16;
      if (!v16)
      {
        goto LABEL_56;
      }

      if (*a3 <= v16 || *v16 != 66)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_37:
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
      v7 = *v32;
    }

    v24 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_56:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_12F2B98(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 3, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 64);
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

LABEL_14:
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
      *v7 = 66;
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

      v7 = sub_12F355C(v14, v16, a3);
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

uint64_t sub_12F2DA4(uint64_t a1)
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
      v7 = sub_12F37F8(v6);
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
  if ((v8 & 7) == 0)
  {
    goto LABEL_24;
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
        goto LABEL_24;
      }

      goto LABEL_20;
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
  if ((v8 & 4) != 0)
  {
LABEL_20:
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
  }

LABEL_24:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12F2F20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1311DD0((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 64) = *(a2 + 64);
        goto LABEL_9;
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
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12F308C(uint64_t a1)
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
  sub_1311CC0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12F3138(uint64_t a1)
{
  sub_12F308C(a1);

  operator delete();
}

uint64_t sub_12F3170(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12F3BB4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v5 & 0x1E) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    *(v1 + 80) = 0;
    *(v1 + 72) = 0;
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

uint64_t sub_12F3234(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v39, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v39 + 1);
    v8 = **v39;
    if (**v39 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v39, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v39 + 2);
      }
    }

    *v39 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2)
      {
        if (v8 == 18)
        {
          v23 = v7 - 1;
          while (1)
          {
            v24 = v23 + 1;
            *v39 = v23 + 1;
            v25 = *(a1 + 40);
            if (v25 && (v26 = *(a1 + 32), v26 < *v25))
            {
              *(a1 + 32) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = sub_12F45E8(*(a1 + 24));
              v27 = sub_19593CC(a1 + 24, v28);
              v24 = *v39;
            }

            v23 = sub_21F8C88(a3, v27, v24);
            *v39 = v23;
            if (!v23)
            {
              goto LABEL_63;
            }

            if (*a3 <= v23 || *v23 != 18)
            {
              goto LABEL_54;
            }
          }
        }
      }

      else if (v11 == 3 && v8 == 25)
      {
        v14 = *v7;
        v13 = v7 + 8;
        v5 |= 4u;
        *(a1 + 64) = v14;
LABEL_30:
        *v39 = v13;
        goto LABEL_54;
      }

      goto LABEL_46;
    }

    if (v8 != 8)
    {
      goto LABEL_46;
    }

    v5 |= 2u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_27:
      *v39 = v20;
      *(a1 + 56) = v19;
      goto LABEL_54;
    }

    v35 = sub_19587DC(v7, v19);
    *v39 = v35;
    *(a1 + 56) = v36;
    if (!v35)
    {
      goto LABEL_63;
    }

LABEL_54:
    if (sub_195ADC0(a3, v39, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 == 33)
    {
      v22 = *v7;
      v13 = v7 + 8;
      v5 |= 8u;
      *(a1 + 72) = v22;
      goto LABEL_30;
    }

    goto LABEL_46;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_46;
    }

    v5 |= 0x10u;
    v30 = v7 + 1;
    v29 = *v7;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    v31 = *v30;
    v29 = (v31 << 7) + v29 - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_45:
      *v39 = v30;
      *(a1 + 80) = v29 != 0;
      goto LABEL_54;
    }

    v37 = sub_19587DC(v7, v29);
    *v39 = v37;
    *(a1 + 80) = v38 != 0;
    if (!v37)
    {
      goto LABEL_63;
    }

    goto LABEL_54;
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 48), v16);
    v18 = sub_1958890(v17, *v39, a3);
LABEL_53:
    *v39 = v18;
    if (!v18)
    {
      goto LABEL_63;
    }

    goto LABEL_54;
  }

LABEL_46:
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
      v7 = *v39;
    }

    v18 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_53;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  *v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v39;
}

char *sub_12F355C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
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
      *v6 = 18;
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

      v6 = sub_12F3F20(v13, v15, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v18 = *(a1 + 64);
    *v6 = 25;
    *(v6 + 1) = v18;
    v6 += 9;
    if ((v5 & 8) == 0)
    {
LABEL_20:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_20;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v19 = *(a1 + 72);
  *v6 = 33;
  *(v6 + 1) = v19;
  v6 += 9;
  if ((v5 & 0x10) == 0)
  {
LABEL_21:
    if ((v5 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_31:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 80);
  *v6 = 40;
  v6[1] = v20;
  v6 += 2;
  if (v5)
  {
LABEL_22:
    v6 = sub_128AEEC(a3, 6, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

LABEL_23:
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v6;
  }

  v21 = v16 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v6) >= v22)
  {
    v24 = v22;
    memcpy(v6, v23, v22);
    v6 += v24;
    return v6;
  }

  return sub_1957130(a3, v23, v22, v6);
}

uint64_t sub_12F37F8(uint64_t a1)
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
      v7 = sub_12F40D0(v6);
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
  if ((v8 & 0x1F) != 0)
  {
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
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v12 = v2 + 9;
    if ((v8 & 4) == 0)
    {
      v12 = v2;
    }

    if ((v8 & 8) != 0)
    {
      v12 += 9;
    }

    v2 = v12 + ((v8 >> 3) & 2);
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12F3938(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1311E5C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        goto LABEL_20;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 56) = *(a2 + 56);
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
    *(a1 + 64) = *(a2 + 64);
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

LABEL_21:
    *(a1 + 72) = *(a2 + 72);
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

uint64_t sub_12F3A9C(uint64_t a1)
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12F3B7C(uint64_t a1)
{
  sub_12F3A9C(a1);

  operator delete();
}

uint64_t sub_12F3BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_22;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  *v4 = 0;
  *(v4 + 23) = 0;
  if ((v1 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v7 = *(a1 + 8);
  result = a1 + 8;
  *(result + 48) = 0;
  *(result + 8) = 0;
  if (v7)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_12F3CA4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_42;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 8);
        v16 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v16 = *v16;
        }

        v17 = (a1 + 24);
      }

      else
      {
        if (v10 != 2 || v7 != 18)
        {
          goto LABEL_42;
        }

        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
      }
    }

    else if (v10 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_42;
      }

      *(a1 + 16) |= 4u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 40);
    }

    else
    {
      if (v10 != 4)
      {
        if (v10 == 5 && v7 == 40)
        {
          v12 = v6 + 1;
          v11 = *v6;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_15;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if (v13 < 0)
          {
            *v27 = sub_19587DC(v6, v11);
            if (!*v27)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v12 = v6 + 2;
LABEL_15:
            *v27 = v12;
          }

          if (v11 > 3)
          {
            sub_1313700();
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 56) = v11;
          }

          continue;
        }

LABEL_42:
        if (v7)
        {
          v23 = (v7 & 7) == 4;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v27;
          }

LABEL_56:
          *v27 = 0;
          return *v27;
        }

        v24 = *(a1 + 8);
        if (v24)
        {
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v25 = sub_11F1920((a1 + 8));
          v6 = *v27;
        }

        v22 = sub_1952690(v7, v25, v6, a3);
        goto LABEL_40;
      }

      if (v7 != 34)
      {
        goto LABEL_42;
      }

      *(a1 + 16) |= 8u;
      v19 = *(a1 + 8);
      v16 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v16 = *v16;
      }

      v17 = (a1 + 48);
    }

    v21 = sub_194DB04(v17, v16);
    v22 = sub_1958890(v21, *v27, a3);
LABEL_40:
    *v27 = v22;
    if (!v22)
    {
      goto LABEL_56;
    }
  }

  return *v27;
}

char *sub_12F3F20(uint64_t a1, char *__dst, unint64_t *a3)
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

      goto LABEL_9;
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

LABEL_10:
    v4 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
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

  v8 = *(a1 + 56);
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

uint64_t sub_12F40D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_26;
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
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_22:
    v15 = *(a1 + 56);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v16;
  }

LABEL_26:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12F426C(uint64_t a1, uint64_t a2)
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

      goto LABEL_22;
    }

LABEL_19:
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
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_8;
    }

LABEL_22:
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

uint64_t sub_12F43EC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D22C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_12F4494(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D2340;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_12F453C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D23C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_12F45E8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D2440;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_12F4674(uint64_t a1)
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

void sub_12F4714(uint64_t a1)
{
  sub_12F4674(a1);

  operator delete();
}

uint64_t sub_12F474C(uint64_t a1)
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

uint64_t sub_12F479C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v29, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v29 + 1);
    v8 = **v29;
    if (**v29 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v29, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v29 + 2);
      }
    }

    *v29 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v19 = v7 + 1;
      v20 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      v21 = *v19;
      v20 = v20 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_27:
        *v29 = v19;
        *(a1 + 36) = v20;
        goto LABEL_36;
      }

      v27 = sub_1958770(v7, v20);
      *v29 = v27;
      *(a1 + 36) = v28;
      if (!v27)
      {
        goto LABEL_45;
      }

      goto LABEL_36;
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
    LODWORD(v17) = *v7;
    if ((v17 & 0x80000000) == 0)
    {
      v18 = (v7 + 1);
LABEL_35:
      *v29 = v18;
      *(a1 + 32) = v17;
      goto LABEL_36;
    }

    v17 = (v7[1] << 7) + v17 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v18 = (v7 + 2);
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v17);
    *v29 = v25;
    *(a1 + 32) = v26;
    if (!v25)
    {
      goto LABEL_45;
    }

LABEL_36:
    if (sub_195ADC0(a3, v29, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v24 = sub_194DB04((a1 + 24), v23);
    v16 = sub_1958890(v24, *v29, a3);
LABEL_31:
    *v29 = v16;
    if (!v16)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
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
      v7 = *v29;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_45:
  *v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v29;
}

char *sub_12F49D0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_12F4BA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_15;
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
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
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

void sub_12F4C8C(uint64_t a1, uint64_t a2)
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

void *sub_12F4D74(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13120F8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12F4DF4(void *a1)
{
  sub_12F4D74(a1);

  operator delete();
}

uint64_t sub_12F4E2C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12F474C(v4);
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

char *sub_12F4EB0(uint64_t a1, char *a2, int32x2_t *a3)
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
          v15 = v14 + 1;
          v24 = v14 + 1;
          v16 = *(a1 + 40);
          if (v16 && (v17 = *(a1 + 32), v17 < *v16))
          {
            *(a1 + 32) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            v19 = sub_12F544C(*(a1 + 24));
            v18 = sub_19593CC(a1 + 24, v19);
            v15 = v24;
          }

          v14 = sub_21F8EC8(a3, v18, v15);
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

      if (v20 > 2)
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

char *sub_12F50B8(uint64_t a1, char *__dst, unint64_t *a3)
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

      v5 = sub_12F49D0(v12, v14, a3);
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

uint64_t sub_12F527C(uint64_t a1)
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
      v7 = sub_12F4BA0(v6);
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

void sub_12F535C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_131217C((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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

void *sub_12F544C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D24C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_12F54D0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D2540;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_12F558C(uint64_t a1)
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

void sub_12F5644(uint64_t a1)
{
  sub_12F558C(a1);

  operator delete();
}

uint64_t sub_12F567C(uint64_t a1)
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

uint64_t sub_12F56F8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_12F5878(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_12F5960(uint64_t a1)
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

void sub_12F5A34(uint64_t a1, uint64_t a2)
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
      v8 = *(a2 + 32);
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
    }
  }

  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_12F5B20(void *a1)
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

void sub_12F5B94(void *a1)
{
  sub_12F5B20(a1);

  operator delete();
}

uint64_t sub_12F5BCC(uint64_t a1)
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

char *sub_12F5BF4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v27, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v27 + 1;
    v8 = *v27;
    if (*v27 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v27, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v27 + 2;
      }
    }

    v27 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v27 = sub_19587DC(v7, v19);
          if (!v27)
          {
            goto LABEL_52;
          }

          goto LABEL_31;
        }

        v20 = v7 + 2;
      }

      v27 = v20;
LABEL_31:
      if (v19 > 2)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 32) = v19;
      }

      goto LABEL_39;
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
      v27 = v16;
      *(a1 + 28) = v17;
      goto LABEL_39;
    }

    v25 = sub_1958770(v7, v17);
    v27 = v25;
    *(a1 + 28) = v26;
    if (!v25)
    {
      goto LABEL_52;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v27, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1 && v8 == 8)
  {
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if (v24 < 0)
    {
      v27 = sub_19587DC(v7, v22);
      if (!v27)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v23 = v7 + 2;
LABEL_36:
      v27 = v23;
    }

    if (v22 > 8)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 1u;
      *(a1 + 24) = v22;
    }

    goto LABEL_39;
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
      v7 = v27;
    }

    v27 = sub_1952690(v8, v15, v7, a3);
    if (!v27)
    {
      goto LABEL_52;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  v27 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

char *sub_12F5E6C(uint64_t a1, char *__dst, unint64_t *a3)
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

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v23)
  {
    v25 = v23;
    memcpy(v15, v24, v23);
    v15 += v25;
    return v15;
  }

  return sub_1957130(a3, v24, v23, v15);
}

uint64_t sub_12F60A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = *(a1 + 24);
  if ((v3 & 0x80000000) == 0)
  {
    v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v2 = 11;
  if ((v1 & 2) != 0)
  {
LABEL_8:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if ((v1 & 4) != 0)
  {
    v4 = *(a1 + 32);
    if (v4 < 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v5;
  }

LABEL_16:
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

uint64_t sub_12F6198(uint64_t a1)
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

  if (a1 != &off_276A670)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_12F5B20(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_12F558C(v6);
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

void sub_12F6268(uint64_t a1)
{
  sub_12F6198(a1);

  operator delete();
}

uint64_t sub_12F62A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_12F5BCC(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_12F567C(*(v1 + 32));
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

char *sub_12F631C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v20 = *(a1 + 24);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_13064E8(v22);
          *(a1 + 24) = v20;
          v7 = v33;
        }

        v19 = sub_21F8FE8(a3, v20, v7);
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
      v33 = v13;
      *(a1 + 40) = v14;
      goto LABEL_45;
    }

    v29 = sub_1958770(v7, v14);
    v33 = v29;
    *(a1 + 40) = v30;
    if (!v29)
    {
      goto LABEL_54;
    }

LABEL_45:
    if (sub_195ADC0(a3, &v33, a3[11].u32[1]))
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

    v5 |= 8u;
    v23 = v7 + 1;
    v24 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v25 = *v23;
    v24 = v24 + (v25 << 7) - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_36:
      v33 = v23;
      *(a1 + 44) = v24;
      goto LABEL_45;
    }

    v31 = sub_1958770(v7, v24);
    v33 = v31;
    *(a1 + 44) = v32;
    if (!v31)
    {
      goto LABEL_54;
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

      v16 = sub_1306464(v18);
      *(a1 + 32) = v16;
      v7 = v33;
    }

    v19 = sub_21F8F58(a3, v16, v7);
LABEL_44:
    v33 = v19;
    if (!v19)
    {
      goto LABEL_54;
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
      v7 = v33;
    }

    v19 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

char *sub_12F65B8(uint64_t a1, char *__dst, unint64_t *a3)
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

    __dst = sub_12F5E6C(v6, v8, a3);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 44);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v18 = *(a1 + 32);
    *v14 = 34;
    v19 = *(v18 + 20);
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v14 + 1);
    }

    else
    {
      v20 = v14 + 2;
    }

    v14 = sub_12F5878(v18, v20, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v14;
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

  if ((*a3 - v14) >= v24)
  {
    v26 = v24;
    memcpy(v14, v25, v24);
    v14 += v26;
    return v14;
  }

  return sub_1957130(a3, v25, v24, v14);
}

uint64_t sub_12F6830(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_12F60A0(*(a1 + 24));
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
    v5 = sub_12F5960(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v3 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
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

void sub_12F6958(uint64_t a1, uint64_t a2)
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

        v6 = sub_13064E8(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276A648;
      }

      sub_128F948(v6, v9);
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

      v10 = sub_1306464(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_276A620;
    }

    sub_12F5A34(v10, v13);
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

LABEL_28:
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

uint64_t sub_12F6AA8(uint64_t a1)
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

void sub_12F6B60(uint64_t a1)
{
  sub_12F6AA8(a1);

  operator delete();
}

uint64_t sub_12F6B98(uint64_t a1)
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
  if ((v1 & 0x1C) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
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