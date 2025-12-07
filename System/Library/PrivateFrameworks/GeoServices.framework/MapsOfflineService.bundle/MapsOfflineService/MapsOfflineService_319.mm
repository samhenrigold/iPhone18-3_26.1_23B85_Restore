uint64_t sub_1314B80(uint64_t a1)
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
  if (a1 != &off_276AF38)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_13146AC(v6);
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

void sub_1314C38(uint64_t a1)
{
  sub_1314B80(a1);

  operator delete();
}

uint64_t sub_1314C70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1314758(*(result + 24));
  }

  if ((v2 & 0x1E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
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

char *sub_1314CDC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v35, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v35 + 1;
    v8 = *v35;
    if (*v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v35 + 2;
      }
    }

    v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_39;
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
      if ((v22 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_31:
        v35 = v21;
        *(a1 + 48) = v20 != 0;
        goto LABEL_47;
      }

      v29 = sub_19587DC(v7, v20);
      v35 = v29;
      *(a1 + 48) = v30 != 0;
      if (!v29)
      {
        goto LABEL_58;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_39;
      }

      v5 |= 4u;
      v24 = v7 + 1;
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_36:
        v35 = v24;
        *(a1 + 40) = v23;
        goto LABEL_47;
      }

      v31 = sub_19587DC(v7, v23);
      v35 = v31;
      *(a1 + 40) = v32;
      if (!v31)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_39;
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
        v35 = v13;
        *(a1 + 49) = v12 != 0;
        goto LABEL_47;
      }

      v33 = sub_19587DC(v7, v12);
      v35 = v33;
      *(a1 + 49) = v34 != 0;
      if (!v33)
      {
        goto LABEL_58;
      }
    }

LABEL_47:
    if (sub_195ADC0(a3, &v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v5 |= 2u;
      *(a1 + 32) = *v7;
      v35 = v7 + 8;
      goto LABEL_47;
    }
  }

  else if (v11 == 2 && v8 == 18)
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

      v16 = sub_1318114(v18);
      *(a1 + 24) = v16;
      v7 = v35;
    }

    v19 = sub_21FA668(a3, v16, v7);
LABEL_46:
    v35 = v19;
    if (!v19)
    {
      goto LABEL_58;
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
      v7 = v35;
    }

    v19 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

char *sub_1314FCC(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *__dst = 9;
    *(__dst + 1) = v7;
    __dst += 9;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v11 = *(a1 + 48);
      *__dst = 24;
      __dst[1] = v11;
      __dst += 2;
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 24);
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

  __dst = sub_131494C(v8, v10, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v5 & 4) == 0)
  {
LABEL_5:
    v6 = __dst;
    goto LABEL_25;
  }

LABEL_18:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v12 = *(a1 + 40);
  *__dst = 32;
  __dst[1] = v12;
  if (v12 > 0x7F)
  {
    __dst[1] = v12 | 0x80;
    v13 = v12 >> 7;
    __dst[2] = v12 >> 7;
    v6 = __dst + 3;
    if (v12 >= 0x4000)
    {
      LOBYTE(v14) = __dst[2];
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
    v6 = __dst + 2;
  }

LABEL_25:
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 49);
    *v6 = 40;
    v6[1] = v16;
    v6 += 2;
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v20)
  {
    v22 = v20;
    memcpy(v6, v21, v20);
    v6 += v22;
    return v6;
  }

  return sub_1957130(a3, v21, v20, v6);
}

uint64_t sub_1315204(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) != 0)
  {
    if (v2)
    {
      v5 = sub_1314AE4(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    result = v3 + ((v2 >> 3) & 2) + ((v2 >> 2) & 2);
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

std::string *sub_13152DC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v8 = *v8;
        }

        data = sub_1318114(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276AF10;
      }

      result = sub_128F948(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      v3[2].__r_.__value_.__s.__data_[1] = *(a2 + 49);
      goto LABEL_8;
    }

LABEL_23:
    v3[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
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

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_13153FC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_134515C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_131547C(void *a1)
{
  sub_13153FC(a1);

  operator delete();
}

uint64_t sub_13154B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1314C70(v4);
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

char *sub_1315538(uint64_t a1, char *a2, int32x2_t *a3)
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
        sub_1318190(*(a1 + 24));
        v19 = sub_19593CC(a1 + 24, v20);
        v16 = v26;
      }

      v15 = sub_21FA6F8(a3, v19, v16);
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

char *sub_1315750(uint64_t a1, char *__dst, void *a3)
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

      v5 = sub_1314FCC(v12, v14, a3);
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

  if (*a3 - v5 >= v18)
  {
    v20 = v18;
    memcpy(v5, v19, v18);
    v5 += v20;
    return v5;
  }

  return sub_1957130(a3, v19, v18, v5);
}

uint64_t sub_1315914(uint64_t a1)
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
      v7 = sub_1315204(v6);
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

void sub_13159E4(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_13452E8((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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

uint64_t sub_1315AD4(uint64_t a1)
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

void sub_1315BA0(uint64_t a1)
{
  sub_1315AD4(a1);

  operator delete();
}

uint64_t sub_1315BD8(uint64_t a1)
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

uint64_t sub_1315C90(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1315E4C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1315F60(uint64_t a1)
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

uint64_t sub_1316090(uint64_t a1)
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
  if (a1 != &off_276AFA0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1315AD4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_13451E0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1316154(uint64_t a1)
{
  sub_1316090(a1);

  operator delete();
}

uint64_t sub_131618C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13154B4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_1315BD8(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1316220(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 != 2)
    {
      if (v11 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v26 = *(a1 + 48);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_13182AC(v28);
        *(a1 + 48) = v26;
        v7 = v31;
      }

      v16 = sub_21FA788(a3, v26, v7);
LABEL_40:
      v31 = v16;
      if (!v16)
      {
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_24:
      v31 = v18;
      *(a1 + 56) = v17;
      goto LABEL_41;
    }

    v29 = sub_19587DC(v7, v17);
    v31 = v29;
    *(a1 + 56) = v30;
    if (!v29)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v20 = v7 - 1;
    while (1)
    {
      v21 = v20 + 1;
      v31 = v20 + 1;
      v22 = *(a1 + 40);
      if (v22 && (v23 = *(a1 + 32), v23 < *v22))
      {
        *(a1 + 32) = v23 + 1;
        v24 = *&v22[2 * v23 + 2];
      }

      else
      {
        v25 = sub_1318210(*(a1 + 24));
        v24 = sub_19593CC(a1 + 24, v25);
        v21 = v31;
      }

      v20 = sub_21FA818(a3, v24, v21);
      v31 = v20;
      if (!v20)
      {
        goto LABEL_48;
      }

      if (*a3 <= v20 || *v20 != 26)
      {
        goto LABEL_41;
      }
    }
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

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_131648C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
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

    __dst = sub_1315E4C(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 56);
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

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v9 = 26;
      v17 = *(v16 + 20);
      v9[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v9 + 1);
      }

      else
      {
        v18 = v9 + 2;
      }

      v9 = sub_1315750(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v9;
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

  if ((*a3 - v9) >= v22)
  {
    v24 = v22;
    memcpy(v9, v23, v22);
    v9 += v24;
    return v9;
  }

  return sub_1957130(a3, v23, v22, v9);
}

uint64_t sub_13166B4(uint64_t a1)
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
      v7 = sub_1315914(v6);
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
      v9 = sub_1315F60(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
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

void sub_13167BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1345374((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v10 = sub_13182AC(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_276AF70;
      }

      sub_12EB184(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 16) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1316900(uint64_t a1)
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

void sub_13169CC(uint64_t a1)
{
  sub_1316900(a1);

  operator delete();
}

uint64_t sub_1316A04(uint64_t a1)
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

uint64_t sub_1316ABC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1316C78(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1316D8C(uint64_t a1)
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

uint64_t sub_1316EBC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26D40E8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_1316F2C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1316F5C(void *a1)
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

void sub_1316FD8(void *a1)
{
  sub_1316F5C(a1);

  operator delete();
}

unsigned __int8 *sub_1317010(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if ((*(a1 + 40) & 0xF) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_131707C(uint64_t a1, char *a2, int32x2_t *a3)
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
        if (v8 != 24)
        {
          goto LABEL_37;
        }

        v5 |= 2u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v24 = v7 + 2;
LABEL_36:
          v37 = v24;
          *(a1 + 56) = v23;
          goto LABEL_47;
        }

        v35 = sub_19587DC(v7, v23);
        v37 = v35;
        *(a1 + 56) = v36;
        if (!v35)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_37;
        }

        v5 |= 4u;
        v17 = v7 + 1;
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = v7 + 2;
LABEL_24:
          v37 = v17;
          *(a1 + 64) = v16;
          goto LABEL_47;
        }

        v30 = sub_19587DC(v7, v16);
        v37 = v30;
        *(a1 + 64) = v31;
        if (!v30)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_47;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_37;
    }

    v5 |= 1u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      v37 = v14;
      *(a1 + 48) = v13;
      goto LABEL_47;
    }

    v32 = sub_19587DC(v7, v13);
    v37 = v32;
    *(a1 + 48) = v33;
    if (!v32)
    {
      goto LABEL_61;
    }

LABEL_47:
    if (sub_195ADC0(a3, &v37, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 8)
  {
    v19 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v19;
    v22 = (v21 << 7) + v20;
    LODWORD(v20) = v22 - 128;
    if (v21 < 0)
    {
      v37 = sub_19587DC(v7, (v22 - 128));
      if (!v37)
      {
        goto LABEL_61;
      }

      LODWORD(v20) = v34;
    }

    else
    {
      v19 = v7 + 2;
LABEL_29:
      v37 = v19;
    }

    if (sub_1314694(v20))
    {
      *(a1 + 40) |= 8u;
      *(a1 + 72) = v20;
    }

    else
    {
      sub_1348DF8();
    }

    goto LABEL_47;
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
    if (v8 - 720 > 0x57)
    {
      v28 = *(a1 + 8);
      if (v28)
      {
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v29 = sub_11F1920((a1 + 8));
        v7 = v37;
      }

      v27 = sub_1952690(v8, v29, v7, a3);
    }

    else
    {
      v27 = sub_19525AC((a1 + 16), v8, v7, &off_276B010, (a1 + 8), a3);
    }

    v37 = v27;
    if (!v27)
    {
      goto LABEL_61;
    }

    goto LABEL_47;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v37 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v37;
}

char *sub_1317390(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 72);
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

    v12 = *(a1 + 48);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 56);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 64);
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

  if (*(a1 + 26))
  {
    v19 = sub_1953428(a1 + 16, 90, 101, v19, a3);
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

uint64_t sub_1317670(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_14;
  }

  if (v3)
  {
    result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_9:
  result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v4 = *(a1 + 72);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v5;
LABEL_14:
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

  *(a1 + 44) = result;
  return result;
}

void sub_131777C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 40) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_7;
    }

LABEL_14:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_131784C(uint64_t a1)
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
  if (a1 != &off_276B060)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1316900(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1345264((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1317910(uint64_t a1)
{
  sub_131784C(a1);

  operator delete();
}

uint64_t sub_1317948(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1317010(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_1316A04(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_13179DC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
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
            v24 = sub_1318458(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v29;
          }

          v19 = sub_21FA938(a3, v23, v20);
          v29 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_43;
          }
        }
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
      goto LABEL_42;
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
          v29 = sub_19587DC(v6, v16);
          if (!v29)
          {
            return 0;
          }
        }

        else
        {
          v17 = v6 + 2;
LABEL_24:
          v29 = v17;
        }

        if (v16 > 1)
        {
          sub_1348E38();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 56) = v16;
        }

        continue;
      }

      goto LABEL_13;
    }

    if (v10 != 1 || v7 != 10)
    {
      goto LABEL_13;
    }

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

      v25 = sub_13183D0(v27);
      *(a1 + 48) = v25;
      v6 = v29;
    }

    v15 = sub_21FA8A8(a3, v25, v6);
LABEL_42:
    v29 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_43:
    ;
  }

  return v29;
}

char *sub_1317C3C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
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

    __dst = sub_1316C78(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 56);
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

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v9 = 26;
      v17 = *(v16 + 44);
      v9[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v9 + 1);
      }

      else
      {
        v18 = v9 + 2;
      }

      v9 = sub_1317390(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v9;
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

  if ((*a3 - v9) >= v22)
  {
    v24 = v22;
    memcpy(v9, v23, v22);
    v9 += v24;
    return v9;
  }

  return sub_1957130(a3, v23, v22, v9);
}

uint64_t sub_1317E64(uint64_t a1)
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
      v7 = sub_1317670(v6);
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
      v9 = sub_1316D8C(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(a1 + 56);
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

void sub_1317F7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1345400((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v10 = sub_13183D0(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_276AFE0;
      }

      sub_12EB184(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 16) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_13180A8(uint64_t a1)
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
    v5 = sub_195228C(*(*(a1 + 40) + 8 * v2) + 16);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1318114(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26D3DE8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1318190(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26D3E68;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_1318210(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D3EE8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_13182AC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D3F68;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_1318334(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D3FE8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

void *sub_13183D0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D4068;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_1318458(uint64_t *a1)
{
  if (!a1)
  {

    sub_134548C();
  }

  return sub_1316EBC(v3, a1, 0);
}

double sub_13184B4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D4168;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  return result;
}

uint64_t sub_1318558(uint64_t a1)
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
  sub_134555C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1318604(uint64_t a1)
{
  sub_1318558(a1);

  operator delete();
}

uint64_t sub_131863C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_131863C(v4);
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

uint64_t sub_1318700(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v41, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v41 + 1);
    v8 = **v41;
    if (**v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v41 + 2);
      }
    }

    *v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        v20 = v7 - 1;
        while (1)
        {
          v21 = (v20 + 1);
          *v41 = v20 + 1;
          v22 = *(a1 + 40);
          if (v22 && (v23 = *(a1 + 32), v23 < *v22))
          {
            *(a1 + 32) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_131A0C8(*(a1 + 24));
            v24 = sub_19593CC(a1 + 24, v25);
            v21 = *v41;
          }

          v20 = sub_21FA9C8(a3, v24, v21);
          *v41 = v20;
          if (!v20)
          {
            goto LABEL_67;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_48;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_48;
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
        *v41 = v30;
        *(a1 + 80) = v29 != 0;
        goto LABEL_56;
      }

      v39 = sub_19587DC(v7, v29);
      *v41 = v39;
      *(a1 + 80) = v40 != 0;
      if (!v39)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_48;
      }

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
        *v41 = v14;
        *(a1 + 56) = v13;
        goto LABEL_56;
      }

      v37 = sub_19587DC(v7, v13);
      *v41 = v37;
      *(a1 + 56) = v38;
      if (!v37)
      {
        goto LABEL_67;
      }
    }

LABEL_56:
    if (sub_195ADC0(a3, v41, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_48;
    }

    v5 |= 4u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_40:
      *v41 = v27;
      *(a1 + 64) = v26;
      goto LABEL_56;
    }

    v35 = sub_19587DC(v7, v26);
    *v41 = v35;
    *(a1 + 64) = v36;
    if (!v35)
    {
      goto LABEL_67;
    }

    goto LABEL_56;
  }

  if (v11 == 5)
  {
    if (v8 == 41)
    {
      v5 |= 8u;
      *(a1 + 72) = *v7;
      *v41 = v7 + 8;
      goto LABEL_56;
    }
  }

  else if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 48), v17);
    v19 = sub_1958890(v18, *v41, a3);
LABEL_55:
    *v41 = v19;
    if (!v19)
    {
      goto LABEL_67;
    }

    goto LABEL_56;
  }

LABEL_48:
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
      v7 = *v41;
    }

    v19 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_67:
  *v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v41;
}

char *sub_1318A68(uint64_t a1, unint64_t a2, unint64_t *a3)
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
      *(a2 + 1) = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, (a2 + 1));
      }

      else
      {
        v10 = (a2 + 2);
      }

      a2 = sub_1318A68(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v12 = *(a1 + 80);
    *a2 = 16;
    *(a2 + 1) = v12;
    a2 += 2;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v14 = *(a1 + 56);
    *a2 = 24;
    *(a2 + 1) = v14;
    if (v14 > 0x7F)
    {
      *(a2 + 1) = v14 | 0x80;
      v15 = v14 >> 7;
      *(a2 + 2) = v14 >> 7;
      v13 = (a2 + 3);
      if (v14 >= 0x4000)
      {
        LOBYTE(a2) = *(a2 + 2);
        do
        {
          *(v13 - 1) = a2 | 0x80;
          a2 = v15 >> 7;
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = (a2 + 2);
    }
  }

  else
  {
    v13 = a2;
  }

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v18 = *(a1 + 64);
    *v13 = 32;
    v13[1] = v18;
    if (v18 > 0x7F)
    {
      v13[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v13[2] = v18 >> 7;
      v17 = v13 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v13) = v13[2];
        do
        {
          *(v17 - 1) = v13 | 0x80;
          v13 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v13 + 2;
    }
  }

  else
  {
    v17 = v13;
  }

  if ((v11 & 8) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v21 = *(a1 + 72);
    *v17 = 41;
    *(v17 + 1) = v21;
    v17 += 9;
  }

  if (v11)
  {
    v17 = sub_128AEEC(a3, 6, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v17);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v17;
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

  if ((*a3 - v17) >= v25)
  {
    v27 = v25;
    memcpy(v17, v26, v25);
    v17 += v27;
    return v17;
  }

  return sub_1957130(a3, v26, v25, v17);
}

uint64_t sub_1318D40(uint64_t a1)
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
      v7 = sub_1318D40(v6);
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
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_17;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v8 & 4) != 0)
  {
LABEL_13:
    v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_14:
  v9 = v2 + 9;
  if ((v8 & 8) == 0)
  {
    v9 = v2;
  }

  v2 = v9 + ((v8 >> 3) & 2);
LABEL_17:
  v10 = *(a1 + 8);
  if (v10)
  {
    v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1318EA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1345664((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

void *sub_1319008(void *a1)
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

void sub_131908C(void *a1)
{
  sub_1319008(a1);

  operator delete();
}

uint64_t sub_13190C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  *(result + 24) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_13190DC(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_13193A8(uint64_t a1, char *a2, unint64_t *a3)
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

uint64_t sub_13195A0(uint64_t a1)
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

std::string *sub_1319618(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 32);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[1]);
    sub_1958E5C(&v3[1].__r_.__value_.__r.__words[1], v9 + v8);
    v10 = v3[1].__r_.__value_.__r.__words[2];
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) += *(a2 + 32);
    result = memcpy((v10 + 4 * v9), *(a2 + 40), 4 * *(a2 + 32));
  }

  v11 = *(a2 + 8);
  if (v11)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1319718(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_134555C(a1 + 8);
  sub_1956AFC(a1 + 5);
  sub_13455E0(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13197AC(void *a1)
{
  sub_1319718(a1);

  operator delete();
}

uint64_t sub_13197E4(uint64_t a1)
{
  sub_13454F8((a1 + 16));
  result = sub_12A41D0(a1 + 40);
  v3 = *(a1 + 72);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 80) + 8);
    do
    {
      v5 = *v4++;
      result = sub_131863C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 72) = 0;
  }

  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_1319870(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  if ((sub_195ADC0(a3, v35, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (*v35 + 1);
      v7 = **v35;
      if (**v35 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(*v35, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = (*v35 + 2);
        }
      }

      *v35 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        if (v7 == 26)
        {
          v23 = v6 - 1;
          while (1)
          {
            v24 = v23 + 1;
            *v35 = v23 + 1;
            v25 = *(a1 + 80);
            if (v25 && (v26 = *(a1 + 72), v26 < *v25))
            {
              *(a1 + 72) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = sub_131A0C8(*(a1 + 64));
              v27 = sub_19593CC(a1 + 64, v28);
              v24 = *v35;
            }

            v23 = sub_21FA9C8(a3, v27, v24);
            *v35 = v23;
            if (!v23)
            {
              goto LABEL_56;
            }

            if (*a3 <= v23 || *v23 != 26)
            {
              goto LABEL_51;
            }
          }
        }
      }

      else if (v10 == 2)
      {
        if (v7 == 18)
        {
          v15 = v6 - 1;
          while (1)
          {
            v16 = (v15 + 1);
            *v35 = v15 + 1;
            v17 = *(a1 + 56);
            if (v17 && (v18 = *(a1 + 48), v18 < *v17))
            {
              *(a1 + 48) = v18 + 1;
              v19 = *&v17[2 * v18 + 2];
            }

            else
            {
              v20 = *(a1 + 40);
              if (!v20)
              {
                operator new();
              }

              *v22 = v21;
              v22[1] = sub_195A650;
              *v21 = 0;
              v21[1] = 0;
              v21[2] = 0;
              v19 = sub_19593CC(a1 + 40, v21);
              v16 = *v35;
            }

            v15 = sub_1958890(v19, v16, a3);
            *v35 = v15;
            if (!v15)
            {
              goto LABEL_56;
            }

            if (*a3 <= v15 || *v15 != 18)
            {
              goto LABEL_51;
            }
          }
        }
      }

      else if (v10 == 1 && v7 == 10)
      {
        v29 = v6 - 1;
        while (1)
        {
          v30 = v29 + 1;
          *v35 = v29 + 1;
          v31 = *(a1 + 32);
          if (v31 && (v32 = *(a1 + 24), v32 < *v31))
          {
            *(a1 + 24) = v32 + 1;
            v33 = *&v31[2 * v32 + 2];
          }

          else
          {
            v34 = sub_131A174(*(a1 + 16));
            v33 = sub_19593CC(a1 + 16, v34);
            v30 = *v35;
          }

          v29 = sub_21FAA58(a3, v33, v30);
          *v35 = v29;
          if (!v29)
          {
            goto LABEL_56;
          }

          if (*a3 <= v29 || *v29 != 10)
          {
            goto LABEL_51;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = *v35;
      }

      *v35 = sub_1952690(v7, v14, v6, a3);
      if (!*v35)
      {
        goto LABEL_56;
      }

LABEL_51:
      if (sub_195ADC0(a3, v35, a3[11].u32[1]))
      {
        return *v35;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return *v35;
    }

LABEL_56:
    *v35 = 0;
  }

  return *v35;
}

char *sub_1319B90(uint64_t a1, char *__dst, unint64_t *a3)
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
      v9 = *(v8 + 48);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_13193A8(v8, v10, a3);
    }
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
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 80) + 8 * j + 8);
      *__dst = 26;
      v19 = *(v18 + 20);
      __dst[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, __dst + 1);
      }

      else
      {
        v20 = __dst + 2;
      }

      __dst = sub_1318A68(v18, v20, a3);
    }
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v24)
  {
    v26 = v24;
    memcpy(__dst, v25, v24);
    __dst += v26;
    return __dst;
  }

  return sub_1957130(a3, v25, v24, __dst);
}

uint64_t sub_1319DEC(uint64_t a1)
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
      v7 = sub_13195A0(v6);
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
  v16 = *(a1 + 80);
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
      v20 = sub_1318D40(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 8);
  if (v21)
  {
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v15 += v24;
  }

  *(a1 + 88) = v15;
  return v15;
}

void sub_1319F3C(void **result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    sub_13456F0(result + 2, v6, (v5 + 8), v4, *result[4] - *(result + 6));
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
    sub_1201B48(result + 5, v11, (v10 + 8), v9, *result[7] - *(result + 12));
    v12 = *(result + 12) + v9;
    *(result + 12) = v12;
    v13 = result[7];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8((result + 8), *(a2 + 72));
    sub_1345664(result + 8, v16, (v15 + 8), v14, *result[10] - *(result + 18));
    v17 = *(result + 18) + v14;
    *(result + 18) = v17;
    v18 = result[10];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4(result + 1, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_131A0C8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D41E8;
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

uint64_t sub_131A174(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D4268;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  return result;
}

double sub_131A21C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26D42E8;
  *(v2 + 8) = a1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = a1;
  *(v2 + 88) = 0;
  return result;
}

double sub_131A2D8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D4368;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_131A314(uint64_t a1)
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

  if (a1 != &off_276B100)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_131EB50(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1324EA0(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_1328458(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_134577C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_131A410(uint64_t a1)
{
  sub_131A314(a1);

  operator delete();
}

uint64_t sub_131A448(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_131C130(v4);
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
      result = sub_131A504(*(v1 + 48));
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

    result = sub_131A580(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      result = sub_131A640(*(v1 + 64));
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

uint64_t sub_131A504(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_131E2C4(v4);
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

uint64_t sub_131A580(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_13219BC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_1311650((a1 + 48));
  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_132429C(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  if (*(a1 + 16))
  {
    result = sub_1320E1C(*(a1 + 96));
  }

  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_131A640(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1327320(v4);
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

char *sub_131A6BC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 2u;
          v25 = *(a1 + 56);
          if (!v25)
          {
            v26 = *(a1 + 8);
            v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
            if (v26)
            {
              v27 = *v27;
            }

            v25 = sub_13294F0(v27);
            *(a1 + 56) = v25;
            v6 = v32;
          }

          v15 = sub_21FAC08(a3, v25, v6);
          goto LABEL_50;
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

          v16 = sub_13298C4(v18);
          *(a1 + 64) = v16;
          v6 = v32;
        }

        v15 = sub_21FAC98(a3, v16, v6);
        goto LABEL_50;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        v19 = v6 - 1;
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
            v24 = sub_1328A5C(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v32;
          }

          v19 = sub_21FAAE8(a3, v23, v20);
          v32 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_51;
          }
        }
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 48);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_1328D30(v14);
        *(a1 + 48) = v12;
        v6 = v32;
      }

      v15 = sub_21FAB78(a3, v12, v6);
      goto LABEL_50;
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

    v15 = sub_1952690(v7, v30, v6, a3);
LABEL_50:
    v32 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_51:
    ;
  }

  return v32;
}

char *sub_131A958(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_131C3EC(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 18;
    v13 = *(v12 + 40);
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, __dst + 1);
    }

    else
    {
      v14 = __dst + 2;
    }

    __dst = sub_131ED98(v12, v14, a3);
    if ((v11 & 2) == 0)
    {
LABEL_11:
      if ((v11 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v15 = *(a1 + 56);
  *__dst = 26;
  v16 = *(v15 + 20);
  __dst[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, __dst + 1);
  }

  else
  {
    v17 = __dst + 2;
  }

  __dst = sub_13252C8(v15, v17, a3);
  if ((v11 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v18 = *(a1 + 64);
    *__dst = 34;
    v19 = *(v18 + 40);
    __dst[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, __dst + 1);
    }

    else
    {
      v20 = __dst + 2;
    }

    __dst = sub_13286A0(v18, v20, a3);
  }

LABEL_31:
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v24)
  {
    v26 = v24;
    memcpy(__dst, v25, v24);
    __dst += v26;
    return __dst;
  }

  return sub_1957130(a3, v25, v24, __dst);
}

uint64_t sub_131ABD4(uint64_t a1)
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
      v7 = sub_131C598(v6);
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
      v12 = sub_131EED8(*(a1 + 48));
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

    v13 = sub_1325578(*(a1 + 56));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v9 = sub_13287E0(*(a1 + 64));
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

void sub_131AD24(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1345FBC((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
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

        v10 = sub_1328D30(v12);
        *(result + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_276B2A0;
      }

      sub_131AEDC(v10, v13);
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

      v14 = sub_13294F0(v16);
      *(result + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_276B490;
    }

    sub_131AF98(v14, v17);
    if ((v9 & 4) != 0)
    {
LABEL_25:
      *(result + 16) |= 4u;
      v18 = *(result + 64);
      if (!v18)
      {
        v19 = *(result + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_13298C4(v20);
        *(result + 64) = v18;
      }

      if (*(a2 + 64))
      {
        v21 = *(a2 + 64);
      }

      else
      {
        v21 = &off_276B4F8;
      }

      sub_131B160(v18, v21);
    }
  }

LABEL_33:
  v22 = *(a2 + 8);
  if (v22)
  {

    sub_1957EF4((result + 8), (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_131AEDC(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_1346160((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

void sub_131AF98(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_134641C((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(result + 48, *(a2 + 56));
    sub_13464A8((result + 48), v11, (v10 + 8), v9, **(result + 64) - *(result + 56));
    v12 = *(result + 56) + v9;
    *(result + 56) = v12;
    v13 = *(result + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(result + 72, *(a2 + 80));
    sub_1346524((result + 72), v16, (v15 + 8), v14, **(result + 88) - *(result + 80), v17);
    v18 = *(result + 80) + v14;
    *(result + 80) = v18;
    v19 = *(result + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 96);
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

      v21 = sub_1329018(v23);
      *(result + 96) = v21;
      v20 = *(a2 + 96);
    }

    if (v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = &off_276B328;
    }

    sub_1321210(v21, v24);
  }

  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((result + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_131B160(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_13467D0((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

BOOL sub_131B21C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_131C7B0(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(v6 + 24);
    while (v7 >= 1)
    {
      v8 = v7 - 1;
      v9 = sub_131EAB8(*(*(v6 + 32) + 8 * v7));
      v7 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    v5 = *(a1 + 16);
  }

  if ((v5 & 2) == 0)
  {
    return 1;
  }

  v11 = *(a1 + 56);
  v12 = *(v11 + 32);
  do
  {
    v10 = v12 < 1;
    if (v12 < 1)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = sub_132262C(*(*(v11 + 40) + 8 * v12));
    v12 = v13;
  }

  while ((v14 & 1) != 0);
  return v10;
}

BOOL sub_131B2E4(uint64_t a1)
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
    v5 = sub_131EAB8(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

BOOL sub_131B33C(uint64_t a1)
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
    v5 = sub_132262C(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_131B3A4(uint64_t a1)
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

  if (a1 != &off_276B148)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16E4E08(v5);
      operator delete();
    }

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

void sub_131B474(uint64_t a1)
{
  sub_131B3A4(a1);

  operator delete();
}

unsigned __int8 *sub_131B4AC(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16E4E44(*(result + 3));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E4E44(*(v1 + 32));
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

char *sub_131B51C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v21, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v21 + 1;
    v7 = *v21;
    if (*v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v21 + 2;
      }
    }

    v21 = v6;
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
LABEL_28:
          v6 = v21;
        }

LABEL_29:
        v14 = sub_21F4D60(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v15 = sub_16F5828(v19);
        *(a1 + 24) = v15;
        goto LABEL_28;
      }

      goto LABEL_29;
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
        return v21;
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
      v6 = v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v21 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v21;
}

char *sub_131B6B8(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16E5070(v10, v12, a3);
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

uint64_t sub_131B834(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
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
    v5 = sub_16E51F0(*(a1 + 32));
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

void sub_131B904(uint64_t result, uint64_t a2)
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
      *(result + 16) |= 2u;
      v9 = *(result + 32);
      if (!v9)
      {
        v10 = *(result + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_16F5828(v11);
        *(result + 32) = v9;
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
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((result + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_131BA00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E5370(*(a1 + 24));
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

  result = sub_16E5370(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_131BA5C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E6204(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_131BADC(void *a1)
{
  sub_131BA5C(a1);

  operator delete();
}

unsigned __int8 *sub_131BB14(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
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

char *sub_131BB90(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_16F5828(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F4D60(a3, v16, v13);
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

char *sub_131BD20(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_16E5070(v8, v10, a3);
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

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_131BE60(uint64_t a1)
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
      v7 = sub_16E51F0(v6);
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

void sub_131BF08(uint64_t *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    sub_11F1A54(result + 2, v6, (v5 + 8), v4, *result[4] - *(result + 6));
    v7 = *(result + 6) + v4;
    *(result + 6) = v7;
    v8 = result[4];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4(result + 1, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_131BFC4(uint64_t a1)
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
    v5 = sub_16E5370(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_131C02C(uint64_t a1)
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

  if (a1 != &off_276B1A0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_131BA5C(v6);
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

void sub_131C0F8(uint64_t a1)
{
  sub_131C02C(a1);

  operator delete();
}

unsigned __int8 *sub_131C130(unsigned __int8 *result)
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
      result = sub_131BB14(*(result + 4));
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

uint64_t sub_131C1C8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = sub_194DB04((a1 + 24), v18);
        v16 = sub_1958890(v19, *v28, a3);
        goto LABEL_30;
      }

      goto LABEL_13;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_35:
      *v28 = v24;
      *(a1 + 40) = v23;
      goto LABEL_36;
    }

    v26 = sub_19587DC(v7, v23);
    *v28 = v26;
    *(a1 + 40) = v27;
    if (!v26)
    {
      goto LABEL_43;
    }

LABEL_36:
    if (sub_195ADC0(a3, v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
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

      v20 = sub_13289BC(v22);
      *(a1 + 32) = v20;
      v7 = *v28;
    }

    v16 = sub_21FAD28(a3, v20, v7);
LABEL_30:
    *v28 = v16;
    if (!v16)
    {
      goto LABEL_43;
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
      v7 = *v28;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_30;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_43:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_131C3EC(uint64_t a1, char *__dst, unint64_t *a3)
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
    v6 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 32);
    *v6 = 26;
    v12 = *(v11 + 40);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_131BD20(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_131C598(uint64_t a1)
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
    v7 = sub_131BE60(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_12:
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

void sub_131C6A0(uint64_t a1, uint64_t a2)
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

      v9 = sub_13289BC(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276B170;
    }

    sub_131BF08(v9, v12);
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

BOOL sub_131C7B0(uint64_t a1)
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
    v5 = sub_16E5370(*(*(v2 + 32) + 8 * v3));
    v3 = v4;
  }

  while ((v5 & 1) != 0);
  return v1;
}

uint64_t sub_131C824(uint64_t a1)
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

void sub_131C8C4(uint64_t a1)
{
  sub_131C824(a1);

  operator delete();
}

uint64_t sub_131C8FC(uint64_t a1)
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

uint64_t sub_131C944(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_131CAD0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_131CBD0(uint64_t a1)
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

void sub_131CC68(uint64_t a1, uint64_t a2)
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
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 16) |= v4;
  }

  v8 = *(a2 + 8);
  if (v8)
  {

    sub_1957EF4((a1 + 8), (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_131CD38(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1345800(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_131CDB8(void *a1)
{
  sub_131CD38(a1);

  operator delete();
}

uint64_t sub_131CDF0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_131C8FC(v4);
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

char *sub_131CE74(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v21, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v21 + 1;
    v8 = *v21;
    if (*v21 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v21, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v21 + 2;
      }
    }

    v21 = v7;
    if (v8 >> 3 == 2)
    {
      if (v8 == 18)
      {
        v15 = v7 - 1;
        while (1)
        {
          v16 = v15 + 1;
          v21 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_1328AE4(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v21;
          }

          v15 = sub_21FADB8(a3, v19, v16);
          v21 = v15;
          if (!v15)
          {
            goto LABEL_36;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_31;
          }
        }
      }
    }

    else if (v8 >> 3 == 1 && v8 == 13)
    {
      *(a1 + 48) = *v7;
      v21 = v7 + 4;
      v5 = 1;
      goto LABEL_31;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v21;
    }

    v21 = sub_1952690(v8, v14, v7, a3);
    if (!v21)
    {
      goto LABEL_36;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v21, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_36:
  v21 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v21;
}

char *sub_131D04C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
    *v4 = 13;
    *(v4 + 1) = v6;
    v4 += 5;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_131CAD0(v9, v11, a3);
    }
  }

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

uint64_t sub_131D1C8(uint64_t a1)
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
      v7 = sub_131CBD0(v6);
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
    result = v2 + 5;
  }

  else
  {
    result = v2;
  }

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

void sub_131D27C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1346048((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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

uint64_t sub_131D36C(uint64_t a1)
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

  if (a1 != &off_276B208)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16E4E08(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_131CD38(v6);
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

void sub_131D43C(uint64_t a1)
{
  sub_131D36C(a1);

  operator delete();
}

uint64_t sub_131D474(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16E4E44(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_131CDF0(*(v1 + 32));
    }
  }

  if ((v2 & 0xFC) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 64) = 0;
    *(v1 + 56) = 0;
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

char *sub_131D4F8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v47 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v47, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v47 + 1;
    v8 = *v47;
    if (*v47 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v47, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v47 + 2;
      }
    }

    v47 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 != 1)
        {
          if (v11 == 2 && v8 == 16)
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
              v47 = sub_19587DC(v7, v13);
              if (!v47)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v14 = v7 + 2;
LABEL_18:
              v47 = v14;
            }

            if (v13 > 3)
            {
              sub_1348E38();
            }

            else
            {
              *(a1 + 16) |= 8u;
              *(a1 + 48) = v13;
            }

            goto LABEL_77;
          }

          goto LABEL_69;
        }

        if (v8 != 8)
        {
          goto LABEL_69;
        }

        v5 |= 4u;
        v27 = v7 + 1;
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_50;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = v7 + 2;
LABEL_50:
          v47 = v27;
          *(a1 + 40) = v26;
          goto LABEL_77;
        }

        v41 = sub_19587DC(v7, v26);
        v47 = v41;
        *(a1 + 40) = v42;
        if (!v41)
        {
          goto LABEL_97;
        }

        goto LABEL_77;
      }

      if (v11 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 1u;
          v32 = *(a1 + 24);
          if (!v32)
          {
            v33 = *(a1 + 8);
            v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
            if (v33)
            {
              v34 = *v34;
            }

            v32 = sub_16F5828(v34);
            *(a1 + 24) = v32;
            v7 = v47;
          }

          v25 = sub_21F4D60(a3, v32, v7);
          goto LABEL_76;
        }

        goto LABEL_69;
      }

      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_69;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v47 = sub_19587DC(v7, v19);
          if (!v47)
          {
            goto LABEL_97;
          }

          goto LABEL_36;
        }

        v20 = v7 + 2;
      }

      v47 = v20;
LABEL_36:
      if (v19 > 2)
      {
        sub_1348E78();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 52) = v19;
      }

      goto LABEL_77;
    }

    if (v8 >> 3 > 6)
    {
      break;
    }

    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_69;
      }

      v30 = v7 + 1;
      v29 = *v7;
      if (v29 < 0)
      {
        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v30 = v7 + 2;
          goto LABEL_55;
        }

        v47 = sub_19587DC(v7, v29);
        if (!v47)
        {
          goto LABEL_97;
        }
      }

      else
      {
LABEL_55:
        v47 = v30;
      }

      if (v29 > 7)
      {
        sub_12E85B8();
      }

      else
      {
        *(a1 + 16) |= 0x20u;
        *(a1 + 56) = v29;
      }

      goto LABEL_77;
    }

    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_69;
    }

    v5 |= 0x40u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_28:
      v47 = v16;
      *(a1 + 60) = v17;
      goto LABEL_77;
    }

    v45 = sub_1958770(v7, v17);
    v47 = v45;
    *(a1 + 60) = v46;
    if (!v45)
    {
      goto LABEL_97;
    }

LABEL_77:
    if (sub_195ADC0(a3, &v47, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 7)
  {
    if (v8 != 56)
    {
      goto LABEL_69;
    }

    v5 |= 0x80u;
    v35 = v7 + 1;
    v36 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    v37 = *v35;
    v36 = v36 + (v37 << 7) - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v35 = v7 + 2;
LABEL_68:
      v47 = v35;
      *(a1 + 64) = v36;
      goto LABEL_77;
    }

    v43 = sub_1958770(v7, v36);
    v47 = v43;
    *(a1 + 64) = v44;
    if (!v43)
    {
      goto LABEL_97;
    }

    goto LABEL_77;
  }

  if (v11 == 8 && v8 == 66)
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

      v22 = sub_1328B6C(v24);
      *(a1 + 32) = v22;
      v7 = v47;
    }

    v25 = sub_21FAE48(a3, v22, v7);
LABEL_76:
    v47 = v25;
    if (!v25)
    {
      goto LABEL_97;
    }

    goto LABEL_77;
  }

LABEL_69:
  if (v8)
  {
    v38 = (v8 & 7) == 4;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    v39 = *(a1 + 8);
    if (v39)
    {
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v40 = sub_11F1920((a1 + 8));
      v7 = v47;
    }

    v25 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_76;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_97:
  v47 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v47;
}

char *sub_131D97C(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 48);
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
    v16 = *(v15 + 44);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_16E5070(v15, v17, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v19 = *(a1 + 52);
    *v11 = 32;
    v11[1] = v19;
    if (v19 > 0x7F)
    {
      v11[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v11[2] = v19 >> 7;
      v18 = v11 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v18 - 1) = v11 | 0x80;
          v11 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v11 + 2;
    }
  }

  else
  {
    v18 = v11;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 56);
    *v18 = 40;
    v18[1] = v23;
    if (v23 > 0x7F)
    {
      v18[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v18[2] = v23 >> 7;
      v22 = v18 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v18) = v18[2];
        do
        {
          *(v22 - 1) = v18 | 0x80;
          v18 = (v24 >> 7);
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v18 + 2;
    }
  }

  else
  {
    v22 = v18;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 60);
    *v22 = 48;
    v22[1] = v27;
    if (v27 > 0x7F)
    {
      v22[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[2] = v27 >> 7;
      v26 = v22 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v22[2];
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
      v26 = v22 + 2;
    }
  }

  else
  {
    v26 = v22;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v32 = *(a1 + 64);
    *v26 = 56;
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
          LODWORD(v26) = v33 >> 7;
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
  }

  else
  {
    v31 = v26;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v35 = *(a1 + 32);
    *v31 = 66;
    v36 = *(v35 + 20);
    v31[1] = v36;
    if (v36 > 0x7F)
    {
      v37 = sub_19575D0(v36, v31 + 1);
    }

    else
    {
      v37 = v31 + 2;
    }

    v31 = sub_131D04C(v35, v37, a3);
  }

  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return v31;
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

  if ((*a3 - v31) >= v41)
  {
    v43 = v41;
    memcpy(v31, v42, v41);
    v31 += v43;
    return v31;
  }

  return sub_1957130(a3, v42, v41, v31);
}

uint64_t sub_131DE10(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (*(a1 + 16))
  {
    v4 = sub_16E51F0(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_7:
    v5 = sub_131D1C8(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(a1 + 48);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v9;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_22:
  v10 = *(a1 + 52);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v11;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_26:
  v12 = *(a1 + 56);
  if (v12 < 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v13;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_30:
  v3 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v2 < 0)
  {
LABEL_14:
    v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v6 = *(a1 + 8);
  if (v6)
  {
    v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v3 += v15;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_131E004(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
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

        v6 = sub_16F5828(v8);
        *(result + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E5E8;
      }

      sub_16E527C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(result + 16) |= 2u;
    v10 = *(result + 32);
    if (!v10)
    {
      v11 = *(result + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_1328B6C(v12);
      *(result + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_276B1D0;
    }

    sub_131D27C(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(result + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(result + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(result + 52) = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_36;
    }

LABEL_35:
    *(result + 56) = *(a2 + 56);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(result + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(result + 64) = *(a2 + 64);
      goto LABEL_11;
    }

LABEL_36:
    *(result + 60) = *(a2 + 60);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((result + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_131E17C(uint64_t a1)
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

uint64_t sub_131E1BC(uint64_t a1)
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
  if (a1 != &off_276B250)
  {
    v6 = *(a1 + 72);
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
  sub_1345884((a1 + 48));
  sub_1345884((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_131E28C(uint64_t a1)
{
  sub_131E1BC(a1);

  operator delete();
}

uint64_t sub_131E2C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_131D474(v4);
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
      result = sub_131D474(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_16E4E44(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_131E37C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v22 = v6 - 1;
        while (1)
        {
          v23 = v22 + 1;
          v32 = v22 + 1;
          v24 = *(a1 + 64);
          if (v24 && (v25 = *(a1 + 56), v25 < *v24))
          {
            *(a1 + 56) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            sub_1328C08(*(a1 + 48));
            v26 = sub_19593CC(a1 + 48, v27);
            v23 = v32;
          }

          v22 = sub_21FAED8(a3, v26, v23);
          v32 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 26)
          {
            goto LABEL_46;
          }
        }
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v16 = v6 - 1;
        while (1)
        {
          v17 = v16 + 1;
          v32 = v16 + 1;
          v18 = *(a1 + 40);
          if (v18 && (v19 = *(a1 + 32), v19 < *v18))
          {
            *(a1 + 32) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            sub_1328C08(*(a1 + 24));
            v20 = sub_19593CC(a1 + 24, v21);
            v17 = v32;
          }

          v16 = sub_21FAED8(a3, v20, v17);
          v32 = v16;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_46;
          }
        }
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v28 = *(a1 + 72);
      if (!v28)
      {
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v28 = sub_16F5828(v30);
        *(a1 + 72) = v28;
        v6 = v32;
      }

      v15 = sub_21F4D60(a3, v28, v6);
      goto LABEL_45;
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
        return v32;
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
      v6 = v32;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_45:
    v32 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_46:
    ;
  }

  return v32;
}