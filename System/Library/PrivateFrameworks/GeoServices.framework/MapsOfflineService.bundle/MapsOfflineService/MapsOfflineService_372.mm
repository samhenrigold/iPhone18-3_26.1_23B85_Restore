void sub_150CE94(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_150CED4(uint64_t a1)
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

void sub_150CF7C(uint64_t a1)
{
  sub_150CED4(a1);

  operator delete();
}

uint64_t sub_150CFB4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_150D1F8(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_150D370(uint64_t a1)
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

void *sub_150D460(void *a1)
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

void sub_150D4D4(void *a1)
{
  sub_150D460(a1);

  operator delete();
}

uint64_t sub_150D50C(uint64_t a1)
{
  if ((*(a1 + 16) & 0x3F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xFFFFFFF700000000;
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

char *sub_150D53C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 0xA)
    {
      if (v11 == 11)
      {
        if (v8 == 93)
        {
          v21 = *v7;
          v12 = v7 + 4;
          v5 |= 0x10u;
          *(a1 + 40) = v21;
          goto LABEL_38;
        }
      }

      else if (v11 == 12)
      {
        if (v8 == 101)
        {
          v23 = *v7;
          v12 = v7 + 4;
          v5 |= 4u;
          *(a1 + 32) = v23;
          goto LABEL_38;
        }
      }

      else if (v11 == 99 && v8 == 24)
      {
        v15 = v7 + 1;
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v15;
        v18 = (v17 << 7) + v16;
        v16 = (v18 - 128);
        if (v17 < 0)
        {
          v30 = sub_19587DC(v7, (v18 - 128));
          if (!v30)
          {
            goto LABEL_58;
          }

          v16 = v27;
        }

        else
        {
          v15 = v7 + 2;
LABEL_23:
          v30 = v15;
        }

        if ((v16 + 3) < 7 || v16 == -9)
        {
          *(a1 + 16) |= 0x20u;
          *(a1 + 44) = v16;
        }

        else
        {
          v28 = *(a1 + 8);
          if (v28)
          {
            v29 = ((v28 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v29 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(99, v16, v29);
        }

        goto LABEL_39;
      }
    }

    else if (v11 == 1)
    {
      if (v8 == 13)
      {
        v20 = *v7;
        v12 = v7 + 4;
        v5 |= 1u;
        *(a1 + 24) = v20;
        goto LABEL_38;
      }
    }

    else if (v11 == 2)
    {
      if (v8 == 21)
      {
        v22 = *v7;
        v12 = v7 + 4;
        v5 |= 2u;
        *(a1 + 28) = v22;
        goto LABEL_38;
      }
    }

    else if (v11 == 10 && v8 == 85)
    {
      v13 = *v7;
      v12 = v7 + 4;
      v5 |= 8u;
      *(a1 + 36) = v13;
LABEL_38:
      v30 = v12;
      goto LABEL_39;
    }

    if (!v8 || (v8 & 7) == 4)
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
      v7 = v30;
    }

    v30 = sub_1952690(v8, v26, v7, a3);
    if (!v30)
    {
      goto LABEL_58;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_150D7C8(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 13;
    *(__dst + 1) = v7;
    __dst += 5;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 28);
  *__dst = 21;
  *(__dst + 1) = v8;
  __dst += 5;
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 36);
  *__dst = 85;
  *(__dst + 1) = v9;
  __dst += 5;
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 32);
    *__dst = 101;
    *(__dst + 1) = v11;
    __dst += 5;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 40);
  *__dst = 93;
  *(__dst + 1) = v10;
  __dst += 5;
  if ((v5 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    v6 = __dst;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v12 = *(a1 + 44);
  *__dst = 1688;
  __dst[2] = v12;
  if (v12 > 0x7F)
  {
    __dst[2] = v12 | 0x80;
    v13 = v12 >> 7;
    __dst[3] = v12 >> 7;
    v6 = __dst + 4;
    if (v12 >= 0x4000)
    {
      LOBYTE(v14) = __dst[3];
      do
      {
        *(v6 - 1) = v14 | 0x80;
        v14 = v13 >> 7;
        *v6++ = v13 >> 7;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
    }
  }

  else
  {
    v6 = __dst + 3;
  }

LABEL_30:
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v19)
  {
    v21 = v19;
    memcpy(v6, v20, v19);
    v6 += v21;
    return v6;
  }

  return sub_1957130(a3, v20, v19, v6);
}

uint64_t sub_150DA08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) != 0)
  {
    v2 = 5;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x20) != 0)
    {
      v3 = *(a1 + 44);
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v3 >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 12;
      }

      v2 += v5;
    }
  }

  else
  {
    v2 = 0;
  }

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

std::string *sub_150DABC(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
  }

LABEL_9:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_10:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_150DB68(void *a1)
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

void sub_150DBDC(void *a1)
{
  sub_150DB68(a1);

  operator delete();
}

char *sub_150DC14(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v13 > 5)
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

char *sub_150DD7C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_150DEA4(uint64_t a1)
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

uint64_t sub_150DF28(uint64_t a1)
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

  if (a1 != &off_2775918)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_150EB60(v6);
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

void sub_150DFF4(uint64_t a1)
{
  sub_150DF28(a1);

  operator delete();
}

uint64_t sub_150E02C(uint64_t result)
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

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_14F6E84(v7);
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
      result = sub_14F00F0(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  *(v1 + 96) = 0;
  v11 = *(v1 + 120);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 128) + 8);
    do
    {
      v13 = *v12++;
      result = sub_14D9150(v13);
      --v11;
    }

    while (v11);
    *(v1 + 120) = 0;
  }

  *(v1 + 136) = 0;
  v14 = *(v1 + 160);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 168) + 8);
    do
    {
      v16 = *v15++;
      result = sub_14EA414(v16);
      --v14;
    }

    while (v14);
    *(v1 + 160) = 0;
  }

  v17 = *(v1 + 184);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 192) + 8);
    do
    {
      v19 = *v18++;
      result = sub_150FE2C(v19);
      --v17;
    }

    while (v17);
    *(v1 + 184) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_16F035C(*(v1 + 200));
  }

  v21 = *(v1 + 8);
  v20 = v1 + 8;
  *(v20 + 200) = 0;
  *(v20 + 8) = 0;
  if (v21)
  {

    return sub_1957EA8(v20);
  }

  return result;
}

uint64_t sub_150E190(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 3 && v8 == 26)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_152A23C(v15);
          *(a1 + 32) = v13;
          v7 = *v33;
        }

        v16 = sub_2218E38(a3, v13, v7);
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (v8 != 8)
    {
      goto LABEL_35;
    }

    v5 |= 4u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_29:
      *v33 = v21;
      *(a1 + 40) = v20;
      goto LABEL_43;
    }

    v29 = sub_19587DC(v7, v20);
    *v33 = v29;
    *(a1 + 40) = v30;
    if (!v29)
    {
      goto LABEL_52;
    }

LABEL_43:
    if (sub_195ADC0(a3, v33, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_35;
    }

    v5 |= 8u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_34:
      *v33 = v24;
      *(a1 + 48) = v23 != 0;
      goto LABEL_43;
    }

    v31 = sub_19587DC(v7, v23);
    *v33 = v31;
    *(a1 + 48) = v32 != 0;
    if (!v31)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = sub_194DB04((a1 + 24), v18);
    v16 = sub_1958890(v19, *v33, a3);
LABEL_42:
    *v33 = v16;
    if (!v16)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

LABEL_35:
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
      v7 = *v33;
    }

    v16 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_150E430(uint64_t a1, char *__dst, unint64_t *a3)
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

    v13 = *(a1 + 32);
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

    v6 = sub_150F42C(v13, v15, a3);
    if ((v5 & 8) == 0)
    {
LABEL_12:
      if ((v5 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v16 = *(a1 + 48);
  *v6 = 32;
  v6[1] = v16;
  v6 += 2;
  if (v5)
  {
LABEL_13:
    v6 = sub_128AEEC(a3, 5, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

LABEL_14:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
  }

  v17 = v11 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v6) >= v18)
  {
    v20 = v18;
    memcpy(v6, v19, v18);
    v6 += v20;
    return v6;
  }

  return sub_1957130(a3, v19, v18, v6);
}

unint64_t sub_150E62C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = sub_150FA40(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 2) & 2);
LABEL_13:
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

void sub_150E73C(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_156BCC0((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_1348320((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a1 + 96);
    sub_1959094((a1 + 96), v20 + v19);
    v21 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy((v21 + 8 * v20), *(a2 + 104), 8 * *(a2 + 96));
  }

  v22 = *(a2 + 120);
  if (v22)
  {
    v23 = *(a2 + 128);
    v24 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_13486C4((a1 + 112), v24, (v23 + 8), v22, **(a1 + 128) - *(a1 + 120));
    v25 = *(a1 + 120) + v22;
    *(a1 + 120) = v25;
    v26 = *(a1 + 128);
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  v27 = *(a2 + 136);
  if (v27)
  {
    v28 = *(a1 + 136);
    sub_1958E5C((a1 + 136), v28 + v27);
    v29 = *(a1 + 144);
    *(a1 + 136) += *(a2 + 136);
    memcpy((v29 + 4 * v28), *(a2 + 144), 4 * *(a2 + 136));
  }

  v30 = *(a2 + 160);
  if (v30)
  {
    v31 = *(a2 + 168);
    v32 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_156BD4C((a1 + 152), v32, (v31 + 8), v30, **(a1 + 168) - *(a1 + 160));
    v33 = *(a1 + 160) + v30;
    *(a1 + 160) = v33;
    v34 = *(a1 + 168);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 184);
  if (v35)
  {
    v36 = *(a2 + 192);
    v37 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_156BDD8((a1 + 176), v37, (v36 + 8), v35, **(a1 + 192) - *(a1 + 184));
    v38 = *(a1 + 184) + v35;
    *(a1 + 184) = v38;
    v39 = *(a1 + 192);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 16);
  if ((v40 & 3) != 0)
  {
    if (v40)
    {
      *(a1 + 16) |= 1u;
      v41 = *(a1 + 200);
      if (!v41)
      {
        v42 = *(a1 + 8);
        v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v43 = *v43;
        }

        v41 = sub_16F6144(v43);
        *(a1 + 200) = v41;
      }

      if (*(a2 + 200))
      {
        v44 = *(a2 + 200);
      }

      else
      {
        v44 = &off_277EA18;
      }

      sub_132DE2C(v41, v44);
    }

    if ((v40 & 2) != 0)
    {
      *(a1 + 208) = *(a2 + 208);
    }

    *(a1 + 16) |= v40;
  }

  v45 = *(a2 + 8);
  if (v45)
  {

    sub_1957EF4((a1 + 8), (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_150EABC(uint64_t a1)
{
  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = *(*(a1 + 64) + 8 * v2--);
    if ((~*(v3 + 16) & 9) != 0)
    {
      return 0;
    }
  }

  v4 = *(a1 + 184);
  while (v4 >= 1)
  {
    v5 = v4 - 1;
    v6 = sub_15104E0(*(*(a1 + 192) + 8 * v4) + 40);
    v4 = v5;
    if (!v6)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16F061C(*(a1 + 200));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_150EB60(uint64_t a1)
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
  if (a1 != &off_2775950)
  {
    v6 = *(a1 + 200);
    if (v6)
    {
      sub_16F0320(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1569EC8((a1 + 176));
  sub_1569E44((a1 + 152));
  sub_1956ABC(a1 + 136);
  sub_1347AB0((a1 + 112));
  sub_1956ABC(a1 + 96);
  sub_1347714((a1 + 72));
  sub_1569DC0((a1 + 48));
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150EC70(uint64_t a1)
{
  sub_150EB60(a1);

  operator delete();
}

char *sub_150ECA8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v75 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, &v75, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = v75 + 1;
    v10 = *v75;
    if (*v75 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(v75, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = v75 + 2;
      }
    }

    v75 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 <= 5)
    {
      if (v10 >> 3 <= 2)
      {
        if (v14 == 1)
        {
          if (v10 == 10)
          {
            v42 = v9 - 1;
            while (1)
            {
              v43 = v42 + 1;
              v75 = v42 + 1;
              v44 = *(a1 + 40);
              if (v44 && (v45 = *(a1 + 32), v45 < *v44))
              {
                *(a1 + 32) = v45 + 1;
                v46 = *&v44[2 * v45 + 2];
              }

              else
              {
                v47 = sub_16F5A54(*(a1 + 24));
                v46 = sub_19593CC(a1 + 24, v47);
                v43 = v75;
              }

              v42 = sub_22002C0(a3, v46, v43);
              v75 = v42;
              if (!v42)
              {
                break;
              }

              if (*a3 <= v42 || *v42 != 10)
              {
                goto LABEL_141;
              }
            }

LABEL_146:
            v75 = 0;
            goto LABEL_2;
          }
        }

        else if (v14 == 2 && v10 == 18)
        {
          v28 = v9 - 1;
          while (1)
          {
            v29 = v28 + 1;
            v75 = v28 + 1;
            v30 = *(a1 + 64);
            if (v30 && (v31 = *(a1 + 56), v31 < *v30))
            {
              *(a1 + 56) = v31 + 1;
              v32 = *&v30[2 * v31 + 2];
            }

            else
            {
              v33 = sub_1528C84(*(a1 + 48));
              v32 = sub_19593CC(a1 + 48, v33);
              v29 = v75;
            }

            v28 = sub_2218EC8(a3, v32, v29);
            v75 = v28;
            if (!v28)
            {
              goto LABEL_146;
            }

            if (*a3 <= v28 || *v28 != 18)
            {
              goto LABEL_141;
            }
          }
        }

        goto LABEL_133;
      }

      switch(v14)
      {
        case 3u:
          if (v10 != 26)
          {
            goto LABEL_133;
          }

          *(a1 + 16) |= 1u;
          v54 = *(a1 + 200);
          if (!v54)
          {
            v55 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v8)
            {
              v55 = *v55;
            }

            v54 = sub_16F6144(v55);
            *(a1 + 200) = v54;
            v9 = v75;
          }

          v56 = sub_21FC730(a3, v54, v9);
          break;
        case 4u:
          if (v10 == 34)
          {
            v63 = v9 - 1;
            while (1)
            {
              v64 = v63 + 1;
              v75 = v63 + 1;
              v65 = *(a1 + 88);
              if (v65 && (v66 = *(a1 + 80), v66 < *v65))
              {
                *(a1 + 80) = v66 + 1;
                v67 = *&v65[2 * v66 + 2];
              }

              else
              {
                v68 = sub_1528744(*(a1 + 72));
                v67 = sub_19593CC(a1 + 72, v68);
                v64 = v75;
              }

              v63 = sub_21FCC40(a3, v67, v64);
              v75 = v63;
              if (!v63)
              {
                goto LABEL_146;
              }

              if (*a3 <= v63 || *v63 != 34)
              {
                goto LABEL_141;
              }
            }
          }

          goto LABEL_133;
        case 5u:
          if (v10 == 40)
          {
            v15 = v9 - 1;
            while (1)
            {
              v75 = v15 + 1;
              v16 = v15[1];
              if (v16 < 0)
              {
                v17 = (v15[2] << 7) + v16;
                v16 = (v17 - 128);
                if (v15[2] < 0)
                {
                  v15 = sub_19587DC((v15 + 1), (v17 - 128));
                  v16 = v18;
                }

                else
                {
                  v15 += 3;
                }
              }

              else
              {
                v15 += 2;
              }

              v75 = v15;
              v19 = *(a1 + 96);
              if (v19 == *(a1 + 100))
              {
                v20 = v19 + 1;
                sub_1959094((a1 + 96), v19 + 1);
                *(*(a1 + 104) + 8 * v19) = v16;
                v15 = v75;
              }

              else
              {
                *(*(a1 + 104) + 8 * v19) = v16;
                v20 = v19 + 1;
              }

              *(a1 + 96) = v20;
              if (!v15)
              {
                goto LABEL_146;
              }

              if (*a3 <= v15 || *v15 != 40)
              {
                goto LABEL_141;
              }
            }
          }

          if (v10 != 42)
          {
            goto LABEL_133;
          }

          v56 = sub_1958938((a1 + 96), v9, a3);
          break;
        default:
          goto LABEL_133;
      }

LABEL_140:
      v75 = v56;
      if (!v56)
      {
        goto LABEL_146;
      }

      goto LABEL_141;
    }

    if (v10 >> 3 <= 9)
    {
      if (v14 == 6)
      {
        if (v10 == 50)
        {
          v48 = v9 - 1;
          while (1)
          {
            v49 = v48 + 1;
            v75 = v48 + 1;
            v50 = *(a1 + 128);
            if (v50 && (v51 = *(a1 + 120), v51 < *v50))
            {
              *(a1 + 120) = v51 + 1;
              v52 = *&v50[2 * v51 + 2];
            }

            else
            {
              v53 = sub_152710C(*(a1 + 112));
              v52 = sub_19593CC(a1 + 112, v53);
              v49 = v75;
            }

            v48 = sub_21FCB20(a3, v52, v49);
            v75 = v48;
            if (!v48)
            {
              goto LABEL_146;
            }

            if (*a3 <= v48 || *v48 != 50)
            {
              goto LABEL_141;
            }
          }
        }

        goto LABEL_133;
      }

      if (v14 != 7)
      {
        goto LABEL_133;
      }

      if (v10 != 56)
      {
        if (v10 != 58)
        {
          goto LABEL_133;
        }

        *&v76 = a1 + 136;
        *(&v76 + 1) = sub_17A7C30;
        v77 = a1 + 8;
        v78 = 7;
        v56 = sub_1216588(a3, v9, &v76, v5);
        goto LABEL_140;
      }

      v34 = v9 - 1;
      while (1)
      {
        v75 = v34 + 1;
        v35 = v34[1];
        v36 = v34 + 2;
        if (v35 < 0)
        {
          v37 = *v36;
          v38 = (v37 << 7) + v35;
          LODWORD(v35) = v38 - 128;
          if (v37 < 0)
          {
            v75 = sub_19587DC((v34 + 1), (v38 - 128));
            if (!v75)
            {
              goto LABEL_146;
            }

            LODWORD(v35) = v41;
            goto LABEL_64;
          }

          v36 = v34 + 3;
        }

        v75 = v36;
LABEL_64:
        if (sub_17A7C30(v35))
        {
          v39 = *(a1 + 136);
          if (v39 == *(a1 + 140))
          {
            v40 = v39 + 1;
            sub_1958E5C((a1 + 136), v39 + 1);
            *(*(a1 + 144) + 4 * v39) = v35;
          }

          else
          {
            *(*(a1 + 144) + 4 * v39) = v35;
            v40 = v39 + 1;
          }

          *(a1 + 136) = v40;
        }

        else
        {
          sub_13ED178();
        }

        v34 = v75;
        if (*a3 <= v75 || *v75 != 56)
        {
          goto LABEL_141;
        }
      }
    }

    if (v14 == 10)
    {
      if (v10 == 82)
      {
        v57 = v9 - 1;
        while (1)
        {
          v58 = v57 + 1;
          v75 = v57 + 1;
          v59 = *(a1 + 168);
          if (v59 && (v60 = *(a1 + 160), v60 < *v59))
          {
            *(a1 + 160) = v60 + 1;
            v61 = *&v59[2 * v60 + 2];
          }

          else
          {
            v62 = sub_1528174(*(a1 + 152));
            v61 = sub_19593CC(a1 + 152, v62);
            v58 = v75;
          }

          v57 = sub_2218F58(a3, v61, v58);
          v75 = v57;
          if (!v57)
          {
            goto LABEL_146;
          }

          if (*a3 <= v57 || *v57 != 82)
          {
            goto LABEL_141;
          }
        }
      }

      goto LABEL_133;
    }

    if (v14 != 11)
    {
      break;
    }

    if (v10 != 88)
    {
      goto LABEL_133;
    }

    v6 |= 2u;
    LODWORD(v69) = *v9;
    if ((v69 & 0x80000000) != 0)
    {
      v69 = (v9[1] << 7) + v69 - 128;
      if (v9[1] < 0)
      {
        v71 = sub_19587DC(v9, v69);
        v75 = v71;
        *(a1 + 208) = v72;
        if (!v71)
        {
          goto LABEL_146;
        }

        goto LABEL_141;
      }

      v70 = v9 + 2;
    }

    else
    {
      v70 = v9 + 1;
    }

    v75 = v70;
    *(a1 + 208) = v69;
LABEL_141:
    if (sub_195ADC0(a3, &v75, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v14 == 12 && v10 == 98)
  {
    v21 = v9 - 1;
    while (1)
    {
      v22 = v21 + 1;
      v75 = v21 + 1;
      v23 = *(a1 + 192);
      if (v23 && (v24 = *(a1 + 184), v24 < *v23))
      {
        *(a1 + 184) = v24 + 1;
        v25 = *&v23[2 * v24 + 2];
      }

      else
      {
        v26 = sub_152A314(*(a1 + 176));
        v25 = sub_19593CC(a1 + 176, v26);
        v22 = v75;
      }

      v21 = sub_2218FE8(a3, v25, v22);
      v75 = v21;
      if (!v21)
      {
        goto LABEL_146;
      }

      if (*a3 <= v21 || *v21 != 98)
      {
        goto LABEL_141;
      }
    }
  }

LABEL_133:
  if (v10)
  {
    v73 = (v10 & 7) == 4;
  }

  else
  {
    v73 = 1;
  }

  if (!v73)
  {
    if (*v8)
    {
      v74 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v74 = sub_11F1920((a1 + 8));
      v9 = v75;
    }

    v56 = sub_1952690(v10, v74, v9, a3);
    goto LABEL_140;
  }

  if (!v9)
  {
    goto LABEL_146;
  }

  a3[10].i32[0] = v10 - 1;
LABEL_2:
  *(a1 + 16) |= v6;
  return v75;
}

char *sub_150F42C(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
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

      a2 = sub_16E74A8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
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

      a2 = sub_14F71E8(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v17 = *(a1 + 200);
    *a2 = 26;
    v18 = *(v17 + 20);
    a2[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, a2 + 1);
    }

    else
    {
      v19 = a2 + 2;
    }

    a2 = sub_16F04D8(v17, v19, a3);
  }

  v20 = *(a1 + 80);
  if (v20)
  {
    for (k = 0; k != v20; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v22 = *(*(a1 + 88) + 8 * k + 8);
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

      a2 = sub_14F04AC(v22, v24, a3);
    }
  }

  v25 = *(a1 + 96);
  if (v25 < 1)
  {
    v28 = a2;
  }

  else
  {
    for (m = 0; m != v25; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v27 = *(*(a1 + 104) + 8 * m);
      *a2 = 40;
      a2[1] = v27;
      if (v27 > 0x7F)
      {
        a2[1] = v27 | 0x80;
        v29 = v27 >> 7;
        a2[2] = v27 >> 7;
        v28 = (a2 + 3);
        if (v27 >= 0x4000)
        {
          LOBYTE(a2) = a2[2];
          do
          {
            *(v28 - 1) = a2 | 0x80;
            a2 = (v29 >> 7);
            *v28++ = v29 >> 7;
            v30 = v29 >> 14;
            v29 >>= 7;
          }

          while (v30);
        }
      }

      else
      {
        v28 = (a2 + 2);
      }

      a2 = v28;
    }
  }

  v31 = *(a1 + 120);
  if (v31)
  {
    for (n = 0; n != v31; ++n)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v33 = *(*(a1 + 128) + 8 * n + 8);
      *v28 = 50;
      v34 = *(v33 + 20);
      *(v28 + 1) = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, (v28 + 1));
      }

      else
      {
        v35 = (v28 + 2);
      }

      v28 = sub_14D9394(v33, v35, a3);
    }
  }

  v36 = *(a1 + 136);
  if (v36 < 1)
  {
    v39 = v28;
  }

  else
  {
    for (ii = 0; ii != v36; ++ii)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v38 = *(*(a1 + 144) + 4 * ii);
      *v28 = 56;
      *(v28 + 1) = v38;
      if (v38 > 0x7F)
      {
        *(v28 + 1) = v38 | 0x80;
        v40 = v38 >> 7;
        *(v28 + 2) = v38 >> 7;
        v39 = (v28 + 3);
        if (v38 >= 0x4000)
        {
          LOBYTE(v28) = *(v28 + 2);
          do
          {
            *(v39 - 1) = v28 | 0x80;
            v28 = v40 >> 7;
            *v39++ = v40 >> 7;
            v41 = v40 >> 14;
            v40 >>= 7;
          }

          while (v41);
        }
      }

      else
      {
        v39 = (v28 + 2);
      }

      v28 = v39;
    }
  }

  v42 = *(a1 + 160);
  if (v42)
  {
    for (jj = 0; jj != v42; ++jj)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v44 = *(*(a1 + 168) + 8 * jj + 8);
      *v39 = 82;
      v45 = *(v44 + 20);
      v39[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v39 + 1);
      }

      else
      {
        v46 = v39 + 2;
      }

      v39 = sub_14EA6BC(v44, v46, a3);
    }
  }

  if ((v16 & 2) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v48 = *(a1 + 208);
    *v39 = 88;
    v39[1] = v48;
    if (v48 > 0x7F)
    {
      v39[1] = v48 | 0x80;
      v49 = v48 >> 7;
      v39[2] = v48 >> 7;
      v47 = v39 + 3;
      if (v48 >= 0x4000)
      {
        LOBYTE(v39) = v39[2];
        do
        {
          *(v47 - 1) = v39 | 0x80;
          v39 = (v49 >> 7);
          *v47++ = v49 >> 7;
          v50 = v49 >> 14;
          v49 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v47 = v39 + 2;
    }
  }

  else
  {
    v47 = v39;
  }

  v51 = *(a1 + 184);
  if (v51)
  {
    for (kk = 0; kk != v51; ++kk)
    {
      if (*a3 <= v47)
      {
        v47 = sub_225EB68(a3, v47);
      }

      v53 = *(*(a1 + 192) + 8 * kk + 8);
      *v47 = 98;
      v54 = *(v53 + 64);
      v47[1] = v54;
      if (v54 > 0x7F)
      {
        v55 = sub_19575D0(v54, v47 + 1);
      }

      else
      {
        v55 = v47 + 2;
      }

      v47 = sub_1510104(v53, v55, a3);
    }
  }

  v56 = *(a1 + 8);
  if ((v56 & 1) == 0)
  {
    return v47;
  }

  v58 = v56 & 0xFFFFFFFFFFFFFFFCLL;
  v59 = *(v58 + 31);
  if (v59 < 0)
  {
    v60 = *(v58 + 8);
    v59 = *(v58 + 16);
  }

  else
  {
    v60 = (v58 + 8);
  }

  if ((*a3 - v47) >= v59)
  {
    v61 = v59;
    memcpy(v47, v60, v59);
    v47 += v61;
    return v47;
  }

  return sub_1957130(a3, v60, v59, v47);
}

uint64_t sub_150FA40(uint64_t a1)
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
      v14 = sub_14F7418(v13);
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
      v21 = sub_14F0760(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = sub_1959F14((a1 + 96));
  v23 = *(a1 + 120);
  v24 = v22 + *(a1 + 96) + v23 + v16;
  v25 = *(a1 + 128);
  if (v25)
  {
    v26 = (v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = 8 * v23;
    do
    {
      v28 = *v26++;
      v29 = sub_14D9520(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 136);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = *(*(a1 + 144) + 4 * v32);
      if (v33 < 0)
      {
        v34 = 10;
      }

      else
      {
        v34 = (9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6;
      }

      v31 += v34;
      ++v32;
    }

    while (v30 != v32);
  }

  else
  {
    v31 = 0;
  }

  v35 = *(a1 + 160);
  v36 = v24 + v30 + v31 + v35;
  v37 = *(a1 + 168);
  if (v37)
  {
    v38 = (v37 + 8);
  }

  else
  {
    v38 = 0;
  }

  if (v35)
  {
    v39 = 8 * v35;
    do
    {
      v40 = *v38++;
      v41 = sub_14EA814(v40);
      v36 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      v39 -= 8;
    }

    while (v39);
  }

  v42 = *(a1 + 184);
  v43 = v36 + v42;
  v44 = *(a1 + 192);
  if (v44)
  {
    v45 = (v44 + 8);
  }

  else
  {
    v45 = 0;
  }

  if (v42)
  {
    v46 = 8 * v42;
    do
    {
      v47 = *v45++;
      v48 = sub_15102C8(v47);
      v43 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6);
      v46 -= 8;
    }

    while (v46);
  }

  v49 = *(a1 + 16);
  if ((v49 & 3) != 0)
  {
    if (v49)
    {
      v50 = sub_16F05A0(*(a1 + 200));
      v43 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v49 & 2) != 0)
    {
      v51 = *(a1 + 208);
      v52 = ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v51 >= 0)
      {
        v53 = v52;
      }

      else
      {
        v53 = 11;
      }

      v43 += v53;
    }
  }

  v54 = *(a1 + 8);
  if (v54)
  {
    v56 = v54 & 0xFFFFFFFFFFFFFFFCLL;
    v57 = *((v54 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v57 < 0)
    {
      v57 = *(v56 + 16);
    }

    v43 += v57;
  }

  *(a1 + 20) = v43;
  return v43;
}

void *sub_150FD68(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1569F4C(a1 + 5);
  sub_1347714(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150FDF4(void *a1)
{
  sub_150FD68(a1);

  operator delete();
}

uint64_t sub_150FE2C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14F00F0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1510670(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_150FED0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  if ((sub_195ADC0(a3, &v26, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
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
          v14 = v6 - 1;
          while (1)
          {
            v15 = v14 + 1;
            v26 = v14 + 1;
            v16 = *(a1 + 56);
            if (v16 && (v17 = *(a1 + 48), v17 < *v16))
            {
              *(a1 + 48) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              sub_152A3B8(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_2219078(a3, v18, v15);
            v26 = v14;
            if (!v14)
            {
              return 0;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = v20 + 1;
          v26 = v20 + 1;
          v22 = *(a1 + 32);
          if (v22 && (v23 = *(a1 + 24), v23 < *v22))
          {
            *(a1 + 24) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_1528744(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_21FCC40(a3, v24, v21);
          v26 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_38;
          }
        }
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
        v6 = v26;
      }

      v26 = sub_1952690(v7, v13, v6, a3);
      if (!v26)
      {
        return 0;
      }

LABEL_38:
      if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
      {
        return v26;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v26;
    }

    return 0;
  }

  return v26;
}

char *sub_1510104(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_14F04AC(v8, v10, a3);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 56) + 8 * j + 8);
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

      __dst = sub_1510B20(v13, v15, a3);
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v19)
  {
    v21 = v19;
    memcpy(__dst, v20, v19);
    __dst += v21;
    return __dst;
  }

  return sub_1957130(a3, v20, v19, __dst);
}

uint64_t sub_15102C8(uint64_t a1)
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
      v7 = sub_14F0760(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  v9 = v2 + v8;
  v10 = *(a1 + 56);
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
      v14 = sub_1510E74(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
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

    v9 += v18;
  }

  *(a1 + 64) = v9;
  return v9;
}

void sub_15103C0(uint64_t *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    sub_1348320(result + 2, v6, (v5 + 8), v4, *result[4] - *(result + 6));
    v7 = *(result + 6) + v4;
    *(result + 6) = v7;
    v8 = result[4];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8((result + 5), *(a2 + 48));
    sub_156BE64(result + 5, v11, (v10 + 8), v9, *result[7] - *(result + 12));
    v12 = *(result + 12) + v9;
    *(result + 12) = v12;
    v13 = result[7];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4(result + 1, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15104E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 16) + 8;
  do
  {
    v3 = *(v2 + 8 * (v1 - 1));
    result = (*(v3 + 16) & 6) == 6;
    if ((*(v3 + 16) & 6) != 6)
    {
      break;
    }

    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
    while (v5 >= 1)
    {
      v7 = *(v6 + 8 * v5--);
      if ((~*(v7 + 16) & 3) != 0)
      {
        return 0;
      }
    }

    v9 = __OFSUB__(v1, 2);
    v8 = v1 - 2 < 0;
    --v1;
  }

  while (v8 == v9);
  return result;
}

uint64_t sub_151056C(uint64_t a1)
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
  if (a1 != &off_2775A28)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_1511714(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1569FD0((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1510638(uint64_t a1)
{
  sub_151056C(a1);

  operator delete();
}

uint64_t sub_1510670(uint64_t result)
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
      result = sub_1511238(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    result = sub_1510714(*(v1 + 64));
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 76) = 0;
    *(v1 + 72) = 0;
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

uint64_t sub_1510714(uint64_t a1)
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

char *sub_1510738(uint64_t a1, char *a2, int32x2_t *a3)
{
  v40 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v40, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v40 + 1;
    v8 = *v40;
    if (*v40 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v40, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v40 + 2;
      }
    }

    v40 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 8)
        {
          v29 = v7 - 1;
          while (1)
          {
            v40 = v29 + 1;
            v30 = v29[1];
            if (v30 < 0)
            {
              v31 = (v29[2] << 7) + v30;
              v30 = (v31 - 128);
              if (v29[2] < 0)
              {
                v29 = sub_19587DC((v29 + 1), (v31 - 128));
                v30 = v32;
              }

              else
              {
                v29 += 3;
              }
            }

            else
            {
              v29 += 2;
            }

            v40 = v29;
            v33 = *(a1 + 24);
            if (v33 == *(a1 + 28))
            {
              v34 = v33 + 1;
              sub_1959094((a1 + 24), v33 + 1);
              *(*(a1 + 32) + 8 * v33) = v30;
              v29 = v40;
            }

            else
            {
              *(*(a1 + 32) + 8 * v33) = v30;
              v34 = v33 + 1;
            }

            *(a1 + 24) = v34;
            if (!v29)
            {
              goto LABEL_78;
            }

            if (*a3 <= v29 || *v29 != 8)
            {
              goto LABEL_72;
            }
          }
        }

        if (v8 == 10)
        {
          v15 = sub_1958938((a1 + 24), v7, a3);
          goto LABEL_71;
        }
      }

      else if (v11 == 2 && v8 == 16)
      {
        v18 = v7 + 1;
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v40 = sub_19587DC(v7, v17);
          if (!v40)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_26:
          v40 = v18;
        }

        if (v17 > 5)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 72) = v17;
        }

        goto LABEL_72;
      }

      goto LABEL_64;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_64;
    }

    v5 |= 4u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_33:
      v40 = v21;
      *(a1 + 76) = v20 != 0;
      goto LABEL_72;
    }

    v35 = sub_19587DC(v7, v20);
    v40 = v35;
    *(a1 + 76) = v36 != 0;
    if (!v35)
    {
      goto LABEL_78;
    }

LABEL_72:
    if (sub_195ADC0(a3, &v40, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 == 34)
    {
      v23 = v7 - 1;
      while (1)
      {
        v24 = v23 + 1;
        v40 = v23 + 1;
        v25 = *(a1 + 56);
        if (v25 && (v26 = *(a1 + 48), v26 < *v25))
        {
          *(a1 + 48) = v26 + 1;
          v27 = *&v25[2 * v26 + 2];
        }

        else
        {
          v28 = sub_152A464(*(a1 + 40));
          v27 = sub_19593CC(a1 + 40, v28);
          v24 = v40;
        }

        v23 = sub_2219108(a3, v27, v24);
        v40 = v23;
        if (!v23)
        {
          goto LABEL_78;
        }

        if (*a3 <= v23 || *v23 != 34)
        {
          goto LABEL_72;
        }
      }
    }
  }

  else if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_152A4DC(v14);
      *(a1 + 64) = v12;
      v7 = v40;
    }

    v15 = sub_2219198(a3, v12, v7);
LABEL_71:
    v40 = v15;
    if (!v15)
    {
      goto LABEL_78;
    }

    goto LABEL_72;
  }

LABEL_64:
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
      v7 = v40;
    }

    v15 = sub_1952690(v8, v39, v7, a3);
    goto LABEL_71;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_78:
  v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

char *sub_1510B20(uint64_t a1, char *a2, unint64_t *a3)
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

      v7 = *(*(a1 + 32) + 8 * i);
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

  v12 = *(a1 + 16);
  if ((v12 & 2) != 0)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v14 = *(a1 + 72);
    *v8 = 16;
    v8[1] = v14;
    if (v14 > 0x7F)
    {
      v8[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v8[2] = v14 >> 7;
      v13 = v8 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v8) = v8[2];
        do
        {
          *(v13 - 1) = v8 | 0x80;
          v8 = (v15 >> 7);
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = v8 + 2;
    }
  }

  else
  {
    v13 = v8;
  }

  if ((v12 & 4) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v17 = *(a1 + 76);
    *v13 = 24;
    v13[1] = v17;
    v13 += 2;
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*a3 <= v13)
      {
        v13 = sub_225EB68(a3, v13);
      }

      v20 = *(*(a1 + 56) + 8 * j + 8);
      *v13 = 34;
      v21 = *(v20 + 20);
      v13[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v13 + 1);
      }

      else
      {
        v22 = v13 + 2;
      }

      v13 = sub_1511440(v20, v22, a3);
    }
  }

  if (v12)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v23 = *(a1 + 64);
    *v13 = 42;
    v24 = *(v23 + 20);
    v13[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v13 + 1);
    }

    else
    {
      v25 = v13 + 2;
    }

    v13 = sub_1511924(v23, v25, a3);
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v13;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if ((*a3 - v13) >= v29)
  {
    v31 = v29;
    memcpy(v13, v30, v29);
    v13 += v31;
    return v13;
  }

  return sub_1957130(a3, v30, v29, v13);
}

unint64_t sub_1510E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) != 0)
  {
    v3 = *(a1 + 72);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 1) & 2);
}

uint64_t sub_1510E74(uint64_t a1)
{
  if ((~*(a1 + 16) & 6) != 0)
  {
    v3 = sub_1510E28(a1);
  }

  else
  {
    v2 = *(a1 + 72);
    if (v2 < 0)
    {
      v3 = 13;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
    }
  }

  v4 = sub_1959F14((a1 + 24));
  v5 = *(a1 + 48);
  v6 = v4 + v3 + *(a1 + 24) + v5;
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
      v11 = sub_1511654(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  if (*(a1 + 16))
  {
    v12 = sub_1511A3C(*(a1 + 64));
    v6 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v6 += v16;
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_1510FAC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1959094(&result[1], data_low + v4);
    v7 = *(v3 + 32);
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((v7 + 8 * data_low), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(v3 + 40, *(a2 + 48));
    result = sub_156BEF0((v3 + 40), v10, (v9 + 8), v8, **(v3 + 56) - *(v3 + 48));
    v11 = *(v3 + 48) + v8;
    *(v3 + 48) = v11;
    v12 = *(v3 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if ((v13 & 7) != 0)
  {
    if (v13)
    {
      *(v3 + 16) |= 1u;
      v15 = *(v3 + 64);
      if (!v15)
      {
        v16 = *(v3 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v15 = sub_152A4DC(v17);
        *(v3 + 64) = v15;
      }

      if (*(a2 + 64))
      {
        v18 = *(a2 + 64);
      }

      else
      {
        v18 = &off_2775A78;
      }

      result = sub_1336380(v15, v18);
      if ((v13 & 2) == 0)
      {
LABEL_9:
        if ((v13 & 4) == 0)
        {
LABEL_11:
          *(v3 + 16) |= v13;
          goto LABEL_12;
        }

LABEL_10:
        *(v3 + 76) = *(a2 + 76);
        goto LABEL_11;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 72) = *(a2 + 72);
    if ((v13 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4((v3 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_1511134(uint64_t a1)
{
  if ((~*(a1 + 16) & 6) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  do
  {
    result = v1 < 1;
    if (v1 < 1)
    {
      break;
    }

    v4 = *(v2 + 8 * v1--);
  }

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

void *sub_151118C(void *a1)
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

void sub_1511200(void *a1)
{
  sub_151118C(a1);

  operator delete();
}

uint64_t sub_1511238(uint64_t a1)
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

char *sub_151125C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v25 + 1;
    v8 = *v25;
    if (*v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v25 + 2;
      }
    }

    v25 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_24:
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
    v25 = v21;
    *(a1 + 28) = v22;
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_29:
    if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_28:
      v25 = v18;
      *(a1 + 24) = v19;
      goto LABEL_29;
    }

    v23 = sub_1958770(v7, v19);
    v25 = v23;
    *(a1 + 24) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
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
      v7 = v25;
    }

    v25 = sub_1952690(v8, v14, v7, a3);
    if (!v25)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_38:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_1511440(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_15115F0(_DWORD *a1)
{
  v2 = a1[4];
  if (v2)
  {
    result = ((9 * (__clz(a1[6] | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(a1[7] | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_1511654(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_15115F0(a1);
  }

  else
  {
    result = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 2;
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

void *sub_1511714(void *a1)
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

void sub_1511788(void *a1)
{
  sub_1511714(a1);

  operator delete();
}

char *sub_15117C0(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1511924(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1511A3C(uint64_t a1)
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

void *sub_1511AA8(void *a1)
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

void sub_1511B1C(void *a1)
{
  sub_1511AA8(a1);

  operator delete();
}

uint64_t sub_1511B54(uint64_t a1)
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

char *sub_1511B7C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v16 = v7 + 1;
    v15 = *v7;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v15 = (v17 << 7) + v15 - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_24:
      v23 = v16;
      *(a1 + 24) = v15;
      v5 = 1;
      goto LABEL_31;
    }

    v21 = sub_19587DC(v7, v15);
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

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if (v20 < 0)
    {
      v23 = sub_19587DC(v7, v18);
      if (!v23)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v19 = v7 + 2;
LABEL_28:
      v23 = v19;
    }

    if (v18 > 4)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 32) = v18;
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

char *sub_1511D7C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v12 = *(a1 + 24);
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

unint64_t sub_1511F2C(uint64_t a1)
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

void *sub_1511FEC(void *a1)
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

void sub_1512060(void *a1)
{
  sub_1511FEC(a1);

  operator delete();
}

uint64_t sub_1512098(uint64_t a1)
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

char *sub_15120B0(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1512224(uint64_t a1, char *__dst, void *a3)
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

unint64_t sub_151234C(uint64_t a1)
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

uint64_t sub_15123C4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26EB440;
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
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = &qword_278E990;
  *(a1 + 248) = &qword_278E990;
  *(a1 + 256) = &qword_278E990;
  *(a1 + 264) = &qword_278E990;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 302) = 0;
  return a1;
}

void sub_151247C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15124AC(void *a1)
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

  sub_1512590(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B31E8(a1 + 27);
  sub_13B31E8(a1 + 24);
  sub_156A0D8(a1 + 21);
  sub_13B31E8(a1 + 18);
  sub_13B31E8(a1 + 15);
  sub_156A054(a1 + 12);
  sub_1956AFC(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1512590(uint64_t a1)
{
  v3 = *(a1 + 240);
  v2 = (a1 + 240);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 248);
  if (*(a1 + 248) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (*(a1 + 256) != &qword_278E990)
  {
    sub_194E89C((a1 + 256));
  }

  if (*(a1 + 264) != &qword_278E990)
  {
    sub_194E89C((a1 + 264));
  }

  if (a1 != &off_2775AC0)
  {
    v5 = *(a1 + 272);
    if (v5)
    {
      sub_14F5100(v5);
      operator delete();
    }

    v6 = *(a1 + 280);
    if (v6)
    {
      sub_1515520(v6);
      operator delete();
    }

    v7 = *(a1 + 288);
    if (v7)
    {
      sub_14F6D94(v7);
      operator delete();
    }

    result = *(a1 + 296);
    if (result)
    {
      sub_1511FEC(result);

      operator delete();
    }
  }

  return result;
}

void sub_15126B0(void *a1)
{
  sub_15124AC(a1);

  operator delete();
}

uint64_t sub_15126E8(uint64_t a1)
{
  sub_1951124((a1 + 16));
  sub_12A41D0(a1 + 48);
  result = sub_12A41D0(a1 + 72);
  v3 = *(a1 + 104);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 112) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1524920(v5);
      --v3;
    }

    while (v3);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 128);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 136) + 8);
    do
    {
      v8 = *v7++;
      result = sub_16E72AC(v8);
      --v6;
    }

    while (v6);
    *(a1 + 128) = 0;
  }

  v9 = *(a1 + 152);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 160) + 8);
    do
    {
      v11 = *v10++;
      result = sub_16E72AC(v11);
      --v9;
    }

    while (v9);
    *(a1 + 152) = 0;
  }

  v12 = *(a1 + 176);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 184) + 8);
    do
    {
      v14 = *v13++;
      result = sub_1511B54(v14);
      --v12;
    }

    while (v12);
    *(a1 + 176) = 0;
  }

  v15 = *(a1 + 200);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 208) + 8);
    do
    {
      v17 = *v16++;
      result = sub_16E72AC(v17);
      --v15;
    }

    while (v15);
    *(a1 + 200) = 0;
  }

  v18 = *(a1 + 224);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 232) + 8);
    do
    {
      v20 = *v19++;
      result = sub_16E72AC(v20);
      --v18;
    }

    while (v18);
    *(a1 + 224) = 0;
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    if ((v21 & 1) == 0)
    {
      if ((v21 & 2) == 0)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v23 + 23) < 0)
      {
        **v23 = 0;
        *(v23 + 8) = 0;
        if ((v21 & 4) != 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        *v23 = 0;
        *(v23 + 23) = 0;
        if ((v21 & 4) != 0)
        {
          goto LABEL_43;
        }
      }

LABEL_29:
      if ((v21 & 8) == 0)
      {
        goto LABEL_30;
      }

LABEL_47:
      v25 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v25 + 23) < 0)
      {
        **v25 = 0;
        *(v25 + 8) = 0;
        if ((v21 & 0x10) != 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        *v25 = 0;
        *(v25 + 23) = 0;
        if ((v21 & 0x10) != 0)
        {
          goto LABEL_51;
        }
      }

LABEL_31:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_52;
    }

    v22 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v22 + 23) < 0)
    {
      **v22 = 0;
      *(v22 + 8) = 0;
      if ((v21 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v22 = 0;
      *(v22 + 23) = 0;
      if ((v21 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_28:
    if ((v21 & 4) == 0)
    {
      goto LABEL_29;
    }

LABEL_43:
    v24 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v24 + 23) < 0)
    {
      **v24 = 0;
      *(v24 + 8) = 0;
      if ((v21 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *v24 = 0;
      *(v24 + 23) = 0;
      if ((v21 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_30:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_31;
    }

LABEL_51:
    result = sub_14F5244(*(a1 + 272));
    if ((v21 & 0x20) == 0)
    {
LABEL_32:
      if ((v21 & 0x40) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_53;
    }

LABEL_52:
    result = sub_1512984(*(a1 + 280));
    if ((v21 & 0x40) == 0)
    {
LABEL_33:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

LABEL_53:
    result = sub_14F6E84(*(a1 + 288));
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_56;
    }

LABEL_54:
    v26 = *(a1 + 296);
    v27 = *(v26 + 8);
    result = v26 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v27)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_56:
  if ((v21 & 0x700) != 0)
  {
    *(a1 + 308) = 0;
    *(a1 + 304) = 0;
  }

  v29 = *(a1 + 8);
  v28 = a1 + 8;
  *(v28 + 32) = 0;
  if (v29)
  {

    return sub_1957EA8(v28);
  }

  return result;
}

uint64_t sub_1512984(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1514964(v4);
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

uint64_t sub_1512A00(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v101 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v101, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v101 + 1);
    v8 = **v101;
    if (**v101 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v101, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v101 + 2);
      }
    }

    *v101 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_151;
        }

        *(a1 + 40) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 240);
        goto LABEL_46;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_151;
        }

        *(a1 + 40) |= 0x10u;
        v33 = *(a1 + 272);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_1528AA8(v35);
          *(a1 + 272) = v33;
          v7 = *v101;
        }

        v32 = sub_2217968(a3, v33, v7);
        goto LABEL_47;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_151;
        }

        v5 |= 0x100u;
        v50 = v7 + 1;
        v51 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        v52 = *v50;
        v51 = v51 + (v52 << 7) - 128;
        if (v52 < 0)
        {
          v97 = sub_1958770(v7, v51);
          *v101 = v97;
          *(a1 + 304) = v98;
          if (!v97)
          {
            goto LABEL_169;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_83:
          *v101 = v50;
          *(a1 + 304) = v51;
        }

        goto LABEL_48;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_151;
        }

        v42 = v7 - 1;
        while (1)
        {
          v43 = (v42 + 1);
          *v101 = v42 + 1;
          v44 = *(a1 + 64);
          if (v44 && (v45 = *(a1 + 56), v45 < *v44))
          {
            *(a1 + 56) = v45 + 1;
            v46 = *&v44[2 * v45 + 2];
          }

          else
          {
            v47 = *(a1 + 48);
            if (!v47)
            {
              operator new();
            }

            *v49 = v48;
            v49[1] = sub_195A650;
            *v48 = 0;
            v48[1] = 0;
            v48[2] = 0;
            v46 = sub_19593CC(a1 + 48, v48);
            v43 = *v101;
          }

          v42 = sub_1958890(v46, v43, a3);
          *v101 = v42;
          if (!v42)
          {
            goto LABEL_169;
          }

          if (*a3 <= v42 || *v42 != 34)
          {
            goto LABEL_48;
          }
        }

      case 5u:
        if (v8 != 42)
        {
          goto LABEL_151;
        }

        v22 = v7 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          *v101 = v22 + 1;
          v24 = *(a1 + 88);
          if (v24 && (v25 = *(a1 + 80), v25 < *v24))
          {
            *(a1 + 80) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 72);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 72, v28);
            v23 = *v101;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v101 = v22;
          if (!v22)
          {
            goto LABEL_169;
          }

          if (*a3 <= v22 || *v22 != 42)
          {
            goto LABEL_48;
          }
        }

      case 6u:
        if (v8 != 48)
        {
          goto LABEL_151;
        }

        v5 |= 0x200u;
        v37 = v7 + 1;
        v36 = *v7;
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_60;
        }

        v38 = *v37;
        v36 = (v38 << 7) + v36 - 128;
        if (v38 < 0)
        {
          v95 = sub_19587DC(v7, v36);
          *v101 = v95;
          *(a1 + 308) = v96 != 0;
          if (!v95)
          {
            goto LABEL_169;
          }
        }

        else
        {
          v37 = v7 + 2;
LABEL_60:
          *v101 = v37;
          *(a1 + 308) = v36 != 0;
        }

        goto LABEL_48;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_151;
        }

        v53 = v7 - 1;
        while (1)
        {
          v54 = v53 + 1;
          *v101 = v53 + 1;
          v55 = *(a1 + 112);
          if (v55 && (v56 = *(a1 + 104), v56 < *v55))
          {
            *(a1 + 104) = v56 + 1;
            v57 = *&v55[2 * v56 + 2];
          }

          else
          {
            sub_152B3B8(*(a1 + 96));
            v57 = sub_19593CC(a1 + 96, v58);
            v54 = *v101;
          }

          v53 = sub_2219228(a3, v57, v54);
          *v101 = v53;
          if (!v53)
          {
            goto LABEL_169;
          }

          if (*a3 <= v53 || *v53 != 58)
          {
            goto LABEL_48;
          }
        }

      case 8u:
        if (v8 != 66)
        {
          goto LABEL_151;
        }

        v59 = v7 - 1;
        while (1)
        {
          v60 = v59 + 1;
          *v101 = v59 + 1;
          v61 = *(a1 + 136);
          if (v61 && (v62 = *(a1 + 128), v62 < *v61))
          {
            *(a1 + 128) = v62 + 1;
            v63 = *&v61[2 * v62 + 2];
          }

          else
          {
            v64 = sub_16F5A54(*(a1 + 120));
            v63 = sub_19593CC(a1 + 120, v64);
            v60 = *v101;
          }

          v59 = sub_22002C0(a3, v63, v60);
          *v101 = v59;
          if (!v59)
          {
            goto LABEL_169;
          }

          if (*a3 <= v59 || *v59 != 66)
          {
            goto LABEL_48;
          }
        }

      case 9u:
        if (v8 != 74)
        {
          goto LABEL_151;
        }

        v77 = v7 - 1;
        while (1)
        {
          v78 = v77 + 1;
          *v101 = v77 + 1;
          v79 = *(a1 + 160);
          if (v79 && (v80 = *(a1 + 152), v80 < *v79))
          {
            *(a1 + 152) = v80 + 1;
            v81 = *&v79[2 * v80 + 2];
          }

          else
          {
            v82 = sub_16F5A54(*(a1 + 144));
            v81 = sub_19593CC(a1 + 144, v82);
            v78 = *v101;
          }

          v77 = sub_22002C0(a3, v81, v78);
          *v101 = v77;
          if (!v77)
          {
            goto LABEL_169;
          }

          if (*a3 <= v77 || *v77 != 74)
          {
            goto LABEL_48;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_151;
        }

        v71 = v7 - 1;
        while (1)
        {
          v72 = v71 + 1;
          *v101 = v71 + 1;
          v73 = *(a1 + 184);
          if (v73 && (v74 = *(a1 + 176), v74 < *v73))
          {
            *(a1 + 176) = v74 + 1;
            v75 = *&v73[2 * v74 + 2];
          }

          else
          {
            v76 = sub_152A558(*(a1 + 168));
            v75 = sub_19593CC(a1 + 168, v76);
            v72 = *v101;
          }

          v71 = sub_22192B8(a3, v75, v72);
          *v101 = v71;
          if (!v71)
          {
            goto LABEL_169;
          }

          if (*a3 <= v71 || *v71 != 98)
          {
            goto LABEL_48;
          }
        }

      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_151;
        }

        *(a1 + 40) |= 2u;
        v21 = *(a1 + 8);
        v12 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v12 = *v12;
        }

        v13 = (a1 + 248);
        goto LABEL_46;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_151;
        }

        *(a1 + 40) |= 0x20u;
        v39 = *(a1 + 280);
        if (!v39)
        {
          v40 = *(a1 + 8);
          v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          if (v40)
          {
            v41 = *v41;
          }

          v39 = sub_152A728(v41);
          *(a1 + 280) = v39;
          v7 = *v101;
        }

        v32 = sub_2219348(a3, v39, v7);
        goto LABEL_47;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_151;
        }

        *(a1 + 40) |= 4u;
        v30 = *(a1 + 8);
        v12 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v12 = *v12;
        }

        v13 = (a1 + 256);
        goto LABEL_46;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_151;
        }

        *(a1 + 40) |= 8u;
        v20 = *(a1 + 8);
        v12 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v12 = *v12;
        }

        v13 = (a1 + 264);
LABEL_46:
        v31 = sub_194DB04(v13, v12);
        v32 = sub_1958890(v31, *v101, a3);
        goto LABEL_47;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_151;
        }

        *(a1 + 40) |= 0x40u;
        v65 = *(a1 + 288);
        if (!v65)
        {
          v66 = *(a1 + 8);
          v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
          if (v66)
          {
            v67 = *v67;
          }

          v65 = sub_1528C84(v67);
          *(a1 + 288) = v65;
          v7 = *v101;
        }

        v32 = sub_2218EC8(a3, v65, v7);
        goto LABEL_47;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_151;
        }

        v5 |= 0x400u;
        v69 = v7 + 1;
        v68 = *v7;
        if ((v68 & 0x8000000000000000) == 0)
        {
          goto LABEL_114;
        }

        v70 = *v69;
        v68 = (v70 << 7) + v68 - 128;
        if (v70 < 0)
        {
          v99 = sub_19587DC(v7, v68);
          *v101 = v99;
          *(a1 + 309) = v100 != 0;
          if (!v99)
          {
            goto LABEL_169;
          }
        }

        else
        {
          v69 = v7 + 2;
LABEL_114:
          *v101 = v69;
          *(a1 + 309) = v68 != 0;
        }

        goto LABEL_48;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_151;
        }

        v86 = v7 - 2;
        while (1)
        {
          v87 = v86 + 2;
          *v101 = v86 + 2;
          v88 = *(a1 + 208);
          if (v88 && (v89 = *(a1 + 200), v89 < *v88))
          {
            *(a1 + 200) = v89 + 1;
            v90 = *&v88[2 * v89 + 2];
          }

          else
          {
            v91 = sub_16F5A54(*(a1 + 192));
            v90 = sub_19593CC(a1 + 192, v91);
            v87 = *v101;
          }

          v86 = sub_22002C0(a3, v90, v87);
          *v101 = v86;
          if (!v86)
          {
            goto LABEL_169;
          }

          if (*a3 <= v86 || *v86 != 418)
          {
            goto LABEL_48;
          }
        }

      case 0x19u:
        if (v8 != 202)
        {
          goto LABEL_151;
        }

        *(a1 + 40) |= 0x80u;
        v83 = *(a1 + 296);
        if (!v83)
        {
          v84 = *(a1 + 8);
          v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
          if (v84)
          {
            v85 = *v85;
          }

          v83 = sub_152A5D4(v85);
          *(a1 + 296) = v83;
          v7 = *v101;
        }

        v32 = sub_22193D8(a3, v83, v7);
        goto LABEL_47;
      case 0x1Au:
        if (v8 != 210)
        {
          goto LABEL_151;
        }

        v14 = v7 - 2;
        while (1)
        {
          v15 = v14 + 2;
          *v101 = v14 + 2;
          v16 = *(a1 + 232);
          if (v16 && (v17 = *(a1 + 224), v17 < *v16))
          {
            *(a1 + 224) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            v19 = sub_16F5A54(*(a1 + 216));
            v18 = sub_19593CC(a1 + 216, v19);
            v15 = *v101;
          }

          v14 = sub_22002C0(a3, v18, v15);
          *v101 = v14;
          if (!v14)
          {
            goto LABEL_169;
          }

          if (*a3 <= v14 || *v14 != 466)
          {
            goto LABEL_48;
          }
        }

      default:
LABEL_151:
        if (v8)
        {
          v92 = (v8 & 7) == 4;
        }

        else
        {
          v92 = 1;
        }

        if (!v92)
        {
          if (v8 - 8000 > 0x31F)
          {
            v93 = *(a1 + 8);
            if (v93)
            {
              v94 = (v93 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v94 = sub_11F1920((a1 + 8));
              v7 = *v101;
            }

            v32 = sub_1952690(v8, v94, v7, a3);
          }

          else
          {
            v32 = sub_19525AC((a1 + 16), v8, v7, &off_2775AC0, (a1 + 8), a3);
          }

LABEL_47:
          *v101 = v32;
          if (!v32)
          {
            goto LABEL_169;
          }

LABEL_48:
          if (sub_195ADC0(a3, v101, a3[11].u32[1]))
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
LABEL_169:
          *v101 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v101;
    }
  }
}

char *sub_1513434(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
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

    v8 = *(a1 + 272);
    *v4 = 18;
    v9 = *(v8 + 20);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_14F5930(v8, v10, a3);
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 240) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x100) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 304);
  *v4 = 24;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
      do
      {
        *(v7 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v7++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_19:
  v15 = *(a1 + 56);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      v17 = *(*(a1 + 64) + v16);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = v17[1], v18 > 127) || (*a3 - v7 + 14) < v18)
      {
        v7 = sub_1957480(a3, 4, v17, v7);
      }

      else
      {
        *v7 = 34;
        v7[1] = v18;
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = v7 + 2;
        memcpy(v19, v17, v18);
        v7 = &v19[v18];
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

  v20 = *(a1 + 80);
  if (v20 >= 1)
  {
    v21 = 8;
    do
    {
      v22 = *(*(a1 + 88) + v21);
      v23 = *(v22 + 23);
      if (v23 < 0 && (v23 = v22[1], v23 > 127) || (*a3 - v7 + 14) < v23)
      {
        v7 = sub_1957480(a3, 5, v22, v7);
      }

      else
      {
        *v7 = 42;
        v7[1] = v23;
        if (*(v22 + 23) < 0)
        {
          v22 = *v22;
        }

        v24 = v7 + 2;
        memcpy(v24, v22, v23);
        v7 = &v24[v23];
      }

      v21 += 8;
      --v20;
    }

    while (v20);
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v25 = *(a1 + 308);
    *v7 = 48;
    v7[1] = v25;
    v7 += 2;
  }

  v26 = *(a1 + 104);
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v28 = *(*(a1 + 112) + 8 * i + 8);
      *v7 = 58;
      v29 = *(v28 + 20);
      v7[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v7 + 1);
      }

      else
      {
        v30 = v7 + 2;
      }

      v7 = sub_1525040(v28, v30, a3);
    }
  }

  v31 = *(a1 + 128);
  if (v31)
  {
    for (j = 0; j != v31; ++j)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v33 = *(*(a1 + 136) + 8 * j + 8);
      *v7 = 66;
      v34 = *(v33 + 20);
      v7[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v7 + 1);
      }

      else
      {
        v35 = v7 + 2;
      }

      v7 = sub_16E74A8(v33, v35, a3);
    }
  }

  v36 = *(a1 + 152);
  if (v36)
  {
    for (k = 0; k != v36; ++k)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v38 = *(*(a1 + 160) + 8 * k + 8);
      *v7 = 74;
      v39 = *(v38 + 20);
      v7[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v7 + 1);
      }

      else
      {
        v40 = v7 + 2;
      }

      v7 = sub_16E74A8(v38, v40, a3);
    }
  }

  v41 = *(a1 + 176);
  if (v41)
  {
    for (m = 0; m != v41; ++m)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v43 = *(*(a1 + 184) + 8 * m + 8);
      *v7 = 98;
      v44 = *(v43 + 20);
      v7[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v7 + 1);
      }

      else
      {
        v45 = v7 + 2;
      }

      v7 = sub_1511D7C(v43, v45, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 13, (*(a1 + 248) & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v6 & 0x20) == 0)
    {
LABEL_79:
      if ((v6 & 4) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_91;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_79;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v46 = *(a1 + 280);
  *v7 = 122;
  v47 = *(v46 + 40);
  v7[1] = v47;
  if (v47 > 0x7F)
  {
    v48 = sub_19575D0(v47, v7 + 1);
  }

  else
  {
    v48 = v7 + 2;
  }

  v7 = sub_1515768(v46, v48, a3);
  if ((v6 & 4) == 0)
  {
LABEL_80:
    if ((v6 & 8) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_92;
  }

LABEL_91:
  v7 = sub_128AEEC(a3, 16, (*(a1 + 256) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 8) == 0)
  {
LABEL_81:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

LABEL_92:
  v7 = sub_128AEEC(a3, 17, (*(a1 + 264) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 0x40) == 0)
  {
LABEL_82:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_99;
  }

LABEL_93:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v49 = *(a1 + 288);
  *v7 = 402;
  v50 = *(v49 + 20);
  v7[2] = v50;
  if (v50 > 0x7F)
  {
    v51 = sub_19575D0(v50, v7 + 2);
  }

  else
  {
    v51 = v7 + 3;
  }

  v7 = sub_14F71E8(v49, v51, a3);
  if ((v6 & 0x400) != 0)
  {
LABEL_99:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v52 = *(a1 + 309);
    *v7 = 408;
    v7[2] = v52;
    v7 += 3;
  }

LABEL_102:
  v53 = *(a1 + 200);
  if (v53)
  {
    for (n = 0; n != v53; ++n)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v55 = *(*(a1 + 208) + 8 * n + 8);
      *v7 = 418;
      v56 = *(v55 + 20);
      v7[2] = v56;
      if (v56 > 0x7F)
      {
        v57 = sub_19575D0(v56, v7 + 2);
      }

      else
      {
        v57 = v7 + 3;
      }

      v7 = sub_16E74A8(v55, v57, a3);
    }
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v58 = *(a1 + 296);
    *v7 = 458;
    v59 = *(v58 + 20);
    v7[2] = v59;
    if (v59 > 0x7F)
    {
      v60 = sub_19575D0(v59, v7 + 2);
    }

    else
    {
      v60 = v7 + 3;
    }

    v7 = sub_1512224(v58, v60, a3);
  }

  v61 = *(a1 + 224);
  if (v61)
  {
    for (ii = 0; ii != v61; ++ii)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v63 = *(*(a1 + 232) + 8 * ii + 8);
      *v7 = 466;
      v64 = *(v63 + 20);
      v7[2] = v64;
      if (v64 > 0x7F)
      {
        v65 = sub_19575D0(v64, v7 + 2);
      }

      else
      {
        v65 = v7 + 3;
      }

      v7 = sub_16E74A8(v63, v65, a3);
    }
  }

  if (*(a1 + 26))
  {
    v7 = sub_1953428(a1 + 16, 1000, 1100, v7, a3);
  }

  v66 = *(a1 + 8);
  if ((v66 & 1) == 0)
  {
    return v7;
  }

  v68 = v66 & 0xFFFFFFFFFFFFFFFCLL;
  v69 = *(v68 + 31);
  if (v69 < 0)
  {
    v70 = *(v68 + 8);
    v69 = *(v68 + 16);
  }

  else
  {
    v70 = (v68 + 8);
  }

  if ((*a3 - v7) >= v69)
  {
    v71 = v69;
    memcpy(v7, v70, v69);
    v7 += v71;
    return v7;
  }

  return sub_1957130(a3, v70, v69, v7);
}

uint64_t sub_1513C84(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
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

  v9 = *(a1 + 80);
  v10 = v4 + v9;
  if (v9 >= 1)
  {
    v11 = (*(a1 + 88) + 8);
    do
    {
      v12 = *v11++;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v10 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      --v9;
    }

    while (v9);
  }

  v15 = *(a1 + 104);
  v16 = v10 + v15;
  v17 = *(a1 + 112);
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
      v21 = sub_1525584(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 128);
  v23 = v16 + v22;
  v24 = *(a1 + 136);
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
      v28 = sub_16E7590(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 152);
  v30 = v23 + v29;
  v31 = *(a1 + 160);
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
      v35 = sub_16E7590(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 176);
  v37 = v30 + v36;
  v38 = *(a1 + 184);
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
      v42 = sub_1511F2C(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 200);
  v44 = v37 + 2 * v43;
  v45 = *(a1 + 208);
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
      v49 = sub_16E7590(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 224);
  v51 = v44 + 2 * v50;
  v52 = *(a1 + 232);
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
      v56 = sub_16E7590(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_57;
  }

  if (v57)
  {
    v61 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
    v62 = *(v61 + 23);
    v63 = *(v61 + 8);
    if ((v62 & 0x80u) == 0)
    {
      v63 = v62;
    }

    v51 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v57 & 2) == 0)
    {
LABEL_50:
      if ((v57 & 4) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_71;
    }
  }

  else if ((v57 & 2) == 0)
  {
    goto LABEL_50;
  }

  v64 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v51 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v57 & 4) == 0)
  {
LABEL_51:
    if ((v57 & 8) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_74;
  }

LABEL_71:
  v67 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
  v68 = *(v67 + 23);
  v69 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v69 = v68;
  }

  v51 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v57 & 8) == 0)
  {
LABEL_52:
    if ((v57 & 0x10) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_77;
  }

LABEL_74:
  v70 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v51 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v57 & 0x10) == 0)
  {
LABEL_53:
    if ((v57 & 0x20) == 0)
    {
      goto LABEL_54;
    }

LABEL_78:
    v74 = sub_15158A8(*(a1 + 280));
    v51 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v57 & 0x40) == 0)
    {
LABEL_55:
      if ((v57 & 0x80) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    goto LABEL_79;
  }

LABEL_77:
  v73 = sub_14F5DE8(*(a1 + 272));
  v51 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v57 & 0x20) != 0)
  {
    goto LABEL_78;
  }

LABEL_54:
  if ((v57 & 0x40) == 0)
  {
    goto LABEL_55;
  }

LABEL_79:
  v75 = sub_14F7418(*(a1 + 288));
  v51 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v57 & 0x80) != 0)
  {
LABEL_56:
    v58 = sub_151234C(*(a1 + 296));
    v51 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_57:
  if ((v57 & 0x700) != 0)
  {
    if ((v57 & 0x100) != 0)
    {
      v51 += ((9 * (__clz(*(a1 + 304) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v57 & 0x400) != 0)
    {
      v51 += ((v57 >> 8) & 2) + 3;
    }

    else
    {
      v51 += (v57 >> 8) & 2;
    }
  }

  v59 = *(a1 + 8);
  if (v59)
  {
    v76 = v59 & 0xFFFFFFFFFFFFFFFCLL;
    v77 = *((v59 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v77 < 0)
    {
      v77 = *(v76 + 16);
    }

    v51 += v77;
  }

  *(a1 + 44) = v51;
  return v51;
}

void sub_15141B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1201B48((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_156BF6C((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B326C((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B326C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 176);
  if (v29)
  {
    v30 = *(a2 + 184);
    v31 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_156BFF8((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 200);
  if (v34)
  {
    v35 = *(a2 + 208);
    v36 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_13B326C((a1 + 192), v36, (v35 + 8), v34, **(a1 + 208) - *(a1 + 200));
    v37 = *(a1 + 200) + v34;
    *(a1 + 200) = v37;
    v38 = *(a1 + 208);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 224);
  if (v39)
  {
    v40 = *(a2 + 232);
    v41 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_13B326C((a1 + 216), v41, (v40 + 8), v39, **(a1 + 232) - *(a1 + 224));
    v42 = *(a1 + 224) + v39;
    *(a1 + 224) = v42;
    v43 = *(a1 + 232);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 40);
  if (!v44)
  {
    goto LABEL_79;
  }

  if (v44)
  {
    v45 = *(a2 + 240);
    *(a1 + 40) |= 1u;
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    sub_194EA1C((a1 + 240), (v45 & 0xFFFFFFFFFFFFFFFELL), v47);
    if ((v44 & 2) == 0)
    {
LABEL_28:
      if ((v44 & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_41;
    }
  }

  else if ((v44 & 2) == 0)
  {
    goto LABEL_28;
  }

  v48 = *(a2 + 248);
  *(a1 + 40) |= 2u;
  v49 = *(a1 + 8);
  v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
  if (v49)
  {
    v50 = *v50;
  }

  sub_194EA1C((a1 + 248), (v48 & 0xFFFFFFFFFFFFFFFELL), v50);
  if ((v44 & 4) == 0)
  {
LABEL_29:
    if ((v44 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_41:
  v51 = *(a2 + 256);
  *(a1 + 40) |= 4u;
  v52 = *(a1 + 8);
  v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
  if (v52)
  {
    v53 = *v53;
  }

  sub_194EA1C((a1 + 256), (v51 & 0xFFFFFFFFFFFFFFFELL), v53);
  if ((v44 & 8) == 0)
  {
LABEL_30:
    if ((v44 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

LABEL_44:
  v54 = *(a2 + 264);
  *(a1 + 40) |= 8u;
  v55 = *(a1 + 8);
  v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
  if (v55)
  {
    v56 = *v56;
  }

  sub_194EA1C((a1 + 264), (v54 & 0xFFFFFFFFFFFFFFFELL), v56);
  if ((v44 & 0x10) == 0)
  {
LABEL_31:
    if ((v44 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_55:
    *(a1 + 40) |= 0x20u;
    v61 = *(a1 + 280);
    if (!v61)
    {
      v62 = *(a1 + 8);
      v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
      if (v62)
      {
        v63 = *v63;
      }

      v61 = sub_152A728(v63);
      *(a1 + 280) = v61;
    }

    if (*(a2 + 280))
    {
      v64 = *(a2 + 280);
    }

    else
    {
      v64 = &off_2775BF8;
    }

    sub_1514770(v61, v64);
    if ((v44 & 0x40) == 0)
    {
LABEL_33:
      if ((v44 & 0x80) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_71;
    }

    goto LABEL_63;
  }

LABEL_47:
  *(a1 + 40) |= 0x10u;
  v57 = *(a1 + 272);
  if (!v57)
  {
    v58 = *(a1 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    v57 = sub_1528AA8(v59);
    *(a1 + 272) = v57;
  }

  if (*(a2 + 272))
  {
    v60 = *(a2 + 272);
  }

  else
  {
    v60 = &off_2775000;
  }

  sub_14F609C(v57, v60);
  if ((v44 & 0x20) != 0)
  {
    goto LABEL_55;
  }

LABEL_32:
  if ((v44 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_63:
  *(a1 + 40) |= 0x40u;
  v65 = *(a1 + 288);
  if (!v65)
  {
    v66 = *(a1 + 8);
    v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
    if (v66)
    {
      v67 = *v67;
    }

    v65 = sub_1528C84(v67);
    *(a1 + 288) = v65;
  }

  if (*(a2 + 288))
  {
    v68 = *(a2 + 288);
  }

  else
  {
    v68 = &off_27750E0;
  }

  sub_14F753C(v65, v68);
  if ((v44 & 0x80) != 0)
  {
LABEL_71:
    *(a1 + 40) |= 0x80u;
    v69 = *(a1 + 296);
    if (!v69)
    {
      v70 = *(a1 + 8);
      v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
      if (v70)
      {
        v71 = *v71;
      }

      v69 = sub_152A5D4(v71);
      *(a1 + 296) = v69;
    }

    if (*(a2 + 296))
    {
      v72 = *(a2 + 296);
    }

    else
    {
      v72 = &off_2775AA0;
    }

    sub_12A7358(v69, v72);
  }

LABEL_79:
  if ((v44 & 0x700) == 0)
  {
    goto LABEL_85;
  }

  if ((v44 & 0x100) == 0)
  {
    if ((v44 & 0x200) == 0)
    {
      goto LABEL_82;
    }

LABEL_90:
    *(a1 + 308) = *(a2 + 308);
    if ((v44 & 0x400) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  *(a1 + 304) = *(a2 + 304);
  if ((v44 & 0x200) != 0)
  {
    goto LABEL_90;
  }

LABEL_82:
  if ((v44 & 0x400) != 0)
  {
LABEL_83:
    *(a1 + 309) = *(a2 + 309);
  }

LABEL_84:
  *(a1 + 40) |= v44;
LABEL_85:
  sub_225EA0C(a1 + 16, a2 + 16);
  v73 = *(a2 + 8);
  if (v73)
  {

    sub_1957EF4((a1 + 8), (v73 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1514770(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_156C074((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

uint64_t sub_151482C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 104);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1525B30(*(*(a1 + 112) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    return (*(a1 + 40) & 0x40) == 0 || (~*(*(a1 + 288) + 16) & 9) == 0;
  }

  return result;
}

void *sub_15148B8(void *a1)
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

void sub_151492C(void *a1)
{
  sub_15148B8(a1);

  operator delete();
}

uint64_t sub_1514964(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(a1 + 56) = 0;
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

char *sub_1514990(uint64_t a1, char *a2, int32x2_t *a3)
{
  v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v56, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v56 + 1;
    v8 = *v56;
    if (*v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v56 + 2;
      }
    }

    v56 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 > 6)
    {
      if (v11 == 7)
      {
        if (v8 != 56)
        {
          goto LABEL_61;
        }

        v5 |= 0x40u;
        v34 = v7 + 1;
        v35 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        v36 = *v34;
        v35 = v35 + (v36 << 7) - 128;
        if ((v36 & 0x80000000) == 0)
        {
          v34 = v7 + 2;
LABEL_60:
          v56 = v34;
          *(a1 + 56) = v35;
          goto LABEL_68;
        }

        v46 = sub_1958770(v7, v35);
        v56 = v46;
        *(a1 + 56) = v47;
        if (!v46)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v11 != 8 || v8 != 64)
        {
          goto LABEL_61;
        }

        v5 |= 0x80u;
        v22 = v7 + 1;
        v23 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        v24 = *v22;
        v23 = v23 + (v24 << 7) - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v22 = v7 + 2;
LABEL_40:
          v56 = v22;
          *(a1 + 60) = v23;
          goto LABEL_68;
        }

        v54 = sub_1958770(v7, v23);
        v56 = v54;
        *(a1 + 60) = v55;
        if (!v54)
        {
          goto LABEL_89;
        }
      }
    }

    else if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_61;
      }

      v5 |= 0x10u;
      v28 = v7 + 1;
      v29 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      v30 = *v28;
      v29 = v29 + (v30 << 7) - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_50:
        v56 = v28;
        *(a1 + 48) = v29;
        goto LABEL_68;
      }

      v42 = sub_1958770(v7, v29);
      v56 = v42;
      *(a1 + 48) = v43;
      if (!v42)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_61;
      }

      v5 |= 0x20u;
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
        v56 = v16;
        *(a1 + 52) = v17;
        goto LABEL_68;
      }

      v50 = sub_1958770(v7, v17);
      v56 = v50;
      *(a1 + 52) = v51;
      if (!v50)
      {
        goto LABEL_89;
      }
    }

LABEL_68:
    if (sub_195ADC0(a3, &v56, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_61;
      }

      v5 |= 4u;
      v31 = v7 + 1;
      v32 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      v33 = *v31;
      v32 = v32 + (v33 << 7) - 128;
      if ((v33 & 0x80000000) == 0)
      {
        v31 = v7 + 2;
LABEL_55:
        v56 = v31;
        *(a1 + 40) = v32;
        goto LABEL_68;
      }

      v44 = sub_1958770(v7, v32);
      v56 = v44;
      *(a1 + 40) = v45;
      if (!v44)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_61;
      }

      v5 |= 8u;
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
        v56 = v19;
        *(a1 + 44) = v20;
        goto LABEL_68;
      }

      v52 = sub_1958770(v7, v20);
      v56 = v52;
      *(a1 + 44) = v53;
      if (!v52)
      {
        goto LABEL_89;
      }
    }

    goto LABEL_68;
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_61;
    }

    v5 |= 1u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_45:
      v56 = v26;
      *(a1 + 24) = v25;
      goto LABEL_68;
    }

    v40 = sub_19587DC(v7, v25);
    v56 = v40;
    *(a1 + 24) = v41;
    if (!v40)
    {
      goto LABEL_89;
    }

    goto LABEL_68;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_18:
      v56 = v14;
      *(a1 + 32) = v13;
      goto LABEL_68;
    }

    v48 = sub_19587DC(v7, v13);
    v56 = v48;
    *(a1 + 32) = v49;
    if (!v48)
    {
      goto LABEL_89;
    }

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
      v7 = v56;
    }

    v56 = sub_1952690(v8, v39, v7, a3);
    if (!v56)
    {
      goto LABEL_89;
    }

    goto LABEL_68;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_89:
  v56 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

char *sub_1514DE4(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
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

    v20 = *(a1 + 44);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 48);
    *v19 = 40;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          LODWORD(v19) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 52);
    *v24 = 48;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
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
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 56);
    *v28 = 56;
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 60);
    *v33 = 64;
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

unint64_t sub_15152B8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v1 = 0;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_7:
    v1 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((*(a1 + 16) & 4) != 0)
  {
    v1 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 8) == 0)
    {
LABEL_10:
      if ((*(a1 + 16) & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a1 + 16) & 8) == 0)
  {
    goto LABEL_10;
  }

  v1 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 0x10) == 0)
  {
LABEL_11:
    if ((*(a1 + 16) & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v1 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 0x20) == 0)
  {
LABEL_12:
    if ((*(a1 + 16) & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v1 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 0x40) == 0)
  {
LABEL_13:
    if ((*(a1 + 16) & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  v1 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 0x80) != 0)
  {
LABEL_14:
    v1 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
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

std::string *sub_1515454(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_12;
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

      goto LABEL_16;
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

    goto LABEL_17;
  }

LABEL_16:
  LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
  if ((v2 & 0x20) == 0)
  {
LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    LODWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  HIDWORD(result[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    HIDWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
  }

LABEL_11:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_12:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1515520(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_156A15C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15155A0(void *a1)
{
  sub_1515520(a1);

  operator delete();
}

char *sub_15155D8(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_152A6A8(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2219468(a3, v16, v13);
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

char *sub_1515768(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1514DE4(v8, v10, a3);
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

uint64_t sub_15158A8(uint64_t a1)
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
      v7 = sub_15152B8(v6);
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

uint64_t sub_1515968(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26EB5C0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_15159E4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1515A14(void *a1)
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

void sub_1515A88(void *a1)
{
  sub_1515A14(a1);

  operator delete();
}

uint64_t sub_1515AC0(uint64_t a1)
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

char *sub_1515AE4(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1515C48(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1515D60(uint64_t a1)
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

uint64_t sub_1515DCC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26EB640;
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

uint64_t sub_1515ED0(uint64_t a1)
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
  if (a1 != &off_2775C50)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_15542AC(v6);
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

void sub_1515F88(uint64_t a1)
{
  sub_1515ED0(a1);

  operator delete();
}

uint64_t sub_1515FC0(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_14F37E0(*(result + 24));
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

char *sub_1516020(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v25 + 1;
    v8 = *v25;
    if (*v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v25 + 2;
      }
    }

    v25 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v20 = v7 + 1;
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v25 = v20;
      *(a1 + 32) = v21;
      goto LABEL_31;
    }

    v23 = sub_1958770(v7, v21);
    v25 = v23;
    *(a1 + 32) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 24);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_155A500(v18);
      v16 = v19;
      *(a1 + 24) = v19;
      v7 = v25;
    }

    v15 = sub_22179F8(a3, v16, v7);
LABEL_25:
    v25 = v15;
    if (!v15)
    {
      goto LABEL_38;
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
      v7 = v25;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_25;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_38:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}