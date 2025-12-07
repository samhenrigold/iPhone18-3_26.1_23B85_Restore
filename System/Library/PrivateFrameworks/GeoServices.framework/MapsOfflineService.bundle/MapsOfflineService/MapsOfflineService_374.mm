char *sub_151F150(uint64_t a1, char *a2, unint64_t *a3)
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
  if (v12)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v14 = *(a1 + 56);
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

  v17 = *(a1 + 40);
  if (v17 < 1)
  {
    v20 = v13;
  }

  else
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v13)
      {
        v13 = sub_225EB68(a3, v13);
      }

      v19 = *(*(a1 + 48) + 8 * j);
      *v13 = 24;
      v13[1] = v19;
      if (v19 > 0x7F)
      {
        v13[1] = v19 | 0x80;
        v21 = v19 >> 7;
        v13[2] = v19 >> 7;
        v20 = v13 + 3;
        if (v19 >= 0x4000)
        {
          LOBYTE(v22) = v13[2];
          do
          {
            *(v20 - 1) = v22 | 0x80;
            v22 = v21 >> 7;
            *v20++ = v21 >> 7;
            v23 = v21 >> 14;
            v21 >>= 7;
          }

          while (v23);
        }
      }

      else
      {
        v20 = v13 + 2;
      }

      v13 = v20;
    }
  }

  if ((v12 & 2) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v24 = *(a1 + 64);
    *v20 = 32;
    v20[1] = v24;
    v20 += 2;
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v20;
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

  if ((*a3 - v20) >= v28)
  {
    v30 = v28;
    memcpy(v20, v29, v28);
    v20 += v30;
    return v20;
  }

  return sub_1957130(a3, v29, v28, v20);
}

uint64_t sub_151F414(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 24);
  result = v2 + sub_1959F14((a1 + 40)) + v3 + *(a1 + 40);
  v5 = *(a1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    result += v5 & 2;
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

std::string *sub_151F4C4(std::string *result, uint64_t a2)
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

  v11 = *(a2 + 16);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    }

    if ((v11 & 2) != 0)
    {
      v3[2].__r_.__value_.__s.__data_[16] = *(a2 + 64);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v11;
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_151F5F4(uint64_t a1)
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

void sub_151F6AC(uint64_t a1)
{
  sub_151F5F4(a1);

  operator delete();
}

uint64_t sub_151F6E4(uint64_t a1)
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

uint64_t sub_151F760(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_151F8E0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_151F9C8(uint64_t a1)
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

uint64_t sub_151FAB4(uint64_t a1)
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
  sub_156A2E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151FB78(uint64_t a1)
{
  sub_151FAB4(a1);

  operator delete();
}

uint64_t sub_151FBB0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_151F6E4(v4);
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
  if ((v5 & 0xC) != 0)
  {
    *(v1 + 64) = 0;
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

uint64_t sub_151FCA4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v38, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v38 + 1);
    v7 = **v38;
    if (**v38 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v38, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v38 + 2);
      }
    }

    *v38 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v28 = v6 + 1;
          v29 = *v6;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_46;
          }

          v30 = *v28;
          v31 = (v30 << 7) + v29;
          LODWORD(v29) = v31 - 128;
          if (v30 < 0)
          {
            *v38 = sub_19587DC(v6, (v31 - 128));
            if (!*v38)
            {
              goto LABEL_68;
            }

            LODWORD(v29) = v35;
          }

          else
          {
            v28 = v6 + 2;
LABEL_46:
            *v38 = v28;
          }

          if (sub_1393054(v29))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v29;
          }

          else
          {
            sub_12E8450();
          }

          continue;
        }
      }

      else if (v10 == 2 && v7 == 16)
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
          *v38 = sub_19587DC(v6, (v21 - 128));
          if (!*v38)
          {
            goto LABEL_68;
          }

          LODWORD(v19) = v36;
        }

        else
        {
          v18 = v6 + 2;
LABEL_30:
          *v38 = v18;
        }

        if (sub_16E4BE4(v19))
        {
          *(a1 + 16) |= 8u;
          *(a1 + 68) = v19;
        }

        else
        {
          sub_12E8418();
        }

        continue;
      }

      goto LABEL_49;
    }

    if (v10 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_49;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = (a1 + 48);
    }

    else
    {
      if (v10 != 4)
      {
        if (v10 == 5 && v7 == 42)
        {
          v11 = v6 - 1;
          while (1)
          {
            v12 = v11 + 1;
            *v38 = v11 + 1;
            v13 = *(a1 + 40);
            if (v13 && (v14 = *(a1 + 32), v14 < *v13))
            {
              *(a1 + 32) = v14 + 1;
              v15 = *&v13[2 * v14 + 2];
            }

            else
            {
              v16 = sub_152B0F8(*(a1 + 24));
              v15 = sub_19593CC(a1 + 24, v16);
              v12 = *v38;
            }

            v11 = sub_22198E8(a3, v15, v12);
            *v38 = v11;
            if (!v11)
            {
              break;
            }

            if (*a3 <= v11 || *v11 != 42)
            {
              goto LABEL_57;
            }
          }

LABEL_68:
          *v38 = 0;
          return *v38;
        }

LABEL_49:
        if (v7)
        {
          v32 = (v7 & 7) == 4;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v38;
          }

          goto LABEL_68;
        }

        v33 = *(a1 + 8);
        if (v33)
        {
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v34 = sub_11F1920((a1 + 8));
          v6 = *v38;
        }

        v27 = sub_1952690(v7, v34, v6, a3);
        goto LABEL_56;
      }

      if (v7 != 34)
      {
        goto LABEL_49;
      }

      *(a1 + 16) |= 2u;
      v25 = *(a1 + 8);
      v23 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v23 = *v23;
      }

      v24 = (a1 + 56);
    }

    v26 = sub_194DB04(v24, v23);
    v27 = sub_1958890(v26, *v38, a3);
LABEL_56:
    *v38 = v27;
    if (!v27)
    {
      goto LABEL_68;
    }

LABEL_57:
    ;
  }

  return *v38;
}

char *sub_151FFD8(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 68);
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
    v11 = sub_128AEEC(a3, 3, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  if ((v5 & 2) != 0)
  {
    v11 = sub_128AEEC(a3, 4, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v11);
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
      *v11 = 42;
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

      v11 = sub_151F8E0(v17, v19, a3);
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

uint64_t sub_1520264(uint64_t a1)
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
      v7 = sub_151F9C8(v6);
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_29;
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
        goto LABEL_13;
      }

      goto LABEL_21;
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
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_21:
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
  if ((v8 & 8) != 0)
  {
LABEL_25:
    v17 = *(a1 + 68);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v18;
  }

LABEL_29:
  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v2 += v22;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1520418(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156C1F8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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

        goto LABEL_21;
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
LABEL_10:
        *(a1 + 16) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 68) = *(a2 + 68);
      goto LABEL_10;
    }

LABEL_21:
    *(a1 + 64) = *(a2 + 64);
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

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1520594(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26EBEC0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
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
  *(a1 + 232) = 0;
  *(a1 + 240) = a2;
  *(a1 + 248) = a2;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a2;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = a2;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a2;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = a2;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a2;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = a2;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = a2;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = a2;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = &qword_278E990;
  *(a1 + 472) = &qword_278E990;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  return a1;
}

void sub_1520680(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15206B0(void *a1)
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

  sub_1520804(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_156A57C(a1 + 55);
  sub_156A36C(a1 + 52);
  sub_1956AFC(a1 + 49);
  sub_1956AFC(a1 + 46);
  sub_156A054(a1 + 43);
  sub_156A4F8(a1 + 40);
  sub_13B31E8(a1 + 37);
  sub_156A474(a1 + 34);
  sub_156A3F0(a1 + 31);
  sub_1956ABC((a1 + 29));
  sub_1569370(a1 + 26);
  sub_1347AB0(a1 + 23);
  sub_156A264(a1 + 20);
  sub_13B31E8(a1 + 17);
  sub_1569370(a1 + 14);
  sub_156A36C(a1 + 11);
  sub_156A36C(a1 + 8);
  sub_1956ABC((a1 + 6));
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1520804(uint64_t result)
{
  v1 = result;
  if (*(result + 464) != &qword_278E990)
  {
    sub_194E89C((result + 464));
  }

  if (*(result + 472) != &qword_278E990)
  {
    sub_194E89C((result + 472));
  }

  if (result != &off_2775FB0)
  {
    v2 = *(result + 480);
    if (v2)
    {
      sub_14EAD6C(v2);
      operator delete();
    }

    v3 = v1[61];
    if (v3)
    {
      sub_14F6D94(v3);
      operator delete();
    }

    v4 = v1[62];
    if (v4)
    {
      sub_151ECAC(v4);
      operator delete();
    }

    result = v1[63];
    if (result)
    {
      sub_151B18C(result);

      operator delete();
    }
  }

  return result;
}

void sub_1520900(void *a1)
{
  sub_15206B0(a1);

  operator delete();
}

uint64_t sub_1520938(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v193 = a2;
  v6 = 0;
  if ((sub_195ADC0(a3, v193, a3[11].u32[1]) & 1) == 0)
  {
    v8 = (a1 + 8);
    do
    {
      v9 = (*v193 + 1);
      v10 = **v193;
      if (**v193 < 0)
      {
        v11 = *v9;
        v10 = v10 + (v11 << 7) - 128;
        if (v11 < 0)
        {
          v9 = sub_1958824(*v193, v10);
        }

        else
        {
          v9 = (*v193 + 2);
        }
      }

      *v193 = v9;
      v12 = v10 >> 3;
      if (v10 >> 3 <= 0x3B)
      {
        switch(v12)
        {
          case 1u:
            if (v10 != 8)
            {
              goto LABEL_337;
            }

            v6 |= 0x40u;
            v14 = v9 + 1;
            v13 = *v9;
            if ((v13 & 0x8000000000000000) == 0)
            {
              goto LABEL_14;
            }

            v15 = *v14;
            v13 = (v15 << 7) + v13 - 128;
            if (v15 < 0)
            {
              v177 = sub_19587DC(v9, v13);
              *v193 = v177;
              *(a1 + 512) = v178;
              if (!v177)
              {
                goto LABEL_353;
              }
            }

            else
            {
              v14 = v9 + 2;
LABEL_14:
              *v193 = v14;
              *(a1 + 512) = v13;
            }

            continue;
          case 3u:
            if (v10 != 24)
            {
              goto LABEL_337;
            }

            v6 |= 0x80u;
            v98 = v9 + 1;
            v97 = *v9;
            if ((v97 & 0x8000000000000000) == 0)
            {
              goto LABEL_189;
            }

            v99 = *v98;
            v97 = (v99 << 7) + v97 - 128;
            if (v99 < 0)
            {
              v173 = sub_19587DC(v9, v97);
              *v193 = v173;
              *(a1 + 520) = v174;
              if (!v173)
              {
                goto LABEL_353;
              }
            }

            else
            {
              v98 = v9 + 2;
LABEL_189:
              *v193 = v98;
              *(a1 + 520) = v97;
            }

            continue;
          case 4u:
            if (v10 != 32)
            {
              goto LABEL_337;
            }

            v6 |= 0x100u;
            v101 = v9 + 1;
            v100 = *v9;
            if ((v100 & 0x8000000000000000) == 0)
            {
              goto LABEL_194;
            }

            v102 = *v101;
            v100 = (v102 << 7) + v100 - 128;
            if (v102 < 0)
            {
              v175 = sub_19587DC(v9, v100);
              *v193 = v175;
              *(a1 + 528) = v176;
              if (!v175)
              {
                goto LABEL_353;
              }
            }

            else
            {
              v101 = v9 + 2;
LABEL_194:
              *v193 = v101;
              *(a1 + 528) = v100;
            }

            continue;
          case 5u:
            if (v10 != 42)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 1u;
            v117 = *(a1 + 8);
            v104 = (v117 & 0xFFFFFFFFFFFFFFFCLL);
            if (v117)
            {
              v104 = *v104;
            }

            v105 = (a1 + 464);
            goto LABEL_221;
          case 6u:
            if (v10 != 48)
            {
              goto LABEL_337;
            }

            v6 |= 0x400u;
            v115 = v9 + 1;
            v114 = *v9;
            if ((v114 & 0x8000000000000000) == 0)
            {
              goto LABEL_216;
            }

            v116 = *v115;
            v114 = (v116 << 7) + v114 - 128;
            if (v116 < 0)
            {
              v181 = sub_19587DC(v9, v114);
              *v193 = v181;
              *(a1 + 544) = v182 != 0;
              if (!v181)
              {
                goto LABEL_353;
              }
            }

            else
            {
              v115 = v9 + 2;
LABEL_216:
              *v193 = v115;
              *(a1 + 544) = v114 != 0;
            }

            continue;
          case 7u:
            if (v10 == 56)
            {
              v65 = (v9 - 1);
              while (1)
              {
                *v193 = v65 + 1;
                v66 = *(v65 + 1);
                v67 = (v65 + 2);
                if (v66 < 0)
                {
                  v68 = *v67;
                  v69 = (v68 << 7) + v66;
                  LODWORD(v66) = v69 - 128;
                  if (v68 < 0)
                  {
                    *v193 = sub_19587DC(v65 + 1, (v69 - 128));
                    if (!*v193)
                    {
                      goto LABEL_353;
                    }

                    LODWORD(v66) = v72;
                    goto LABEL_130;
                  }

                  v67 = (v65 + 3);
                }

                *v193 = v67;
LABEL_130:
                if (v66 > 3)
                {
                  sub_13ED178();
                }

                else
                {
                  v70 = *(a1 + 48);
                  if (v70 == *(a1 + 52))
                  {
                    v71 = v70 + 1;
                    sub_1958E5C((a1 + 48), v70 + 1);
                    *(*(a1 + 56) + 4 * v70) = v66;
                  }

                  else
                  {
                    *(*(a1 + 56) + 4 * v70) = v66;
                    v71 = v70 + 1;
                  }

                  *(a1 + 48) = v71;
                }

                v65 = *v193;
                if (*a3 <= *v193 || **v193 != 56)
                {
                  goto LABEL_347;
                }
              }
            }

            if (v10 != 58)
            {
              goto LABEL_337;
            }

            *&v194 = a1 + 48;
            *(&v194 + 1) = sub_14D6D0C;
            v195 = a1 + 8;
            v196 = 7;
            v28 = sub_1216588(a3, v9, &v194, v5);
            break;
          case 0xAu:
            if (v10 != 82)
            {
              goto LABEL_337;
            }

            v119 = v9 - 1;
            while (1)
            {
              v120 = v119 + 1;
              *v193 = v119 + 1;
              v121 = *(a1 + 80);
              if (v121 && (v122 = *(a1 + 72), v122 < *v121))
              {
                *(a1 + 72) = v122 + 1;
                v123 = *&v121[2 * v122 + 2];
              }

              else
              {
                v124 = sub_152ADEC(*(a1 + 64));
                v123 = sub_19593CC(a1 + 64, v124);
                v120 = *v193;
              }

              v119 = sub_2219978(a3, v123, v120);
              *v193 = v119;
              if (!v119)
              {
                goto LABEL_353;
              }

              if (*a3 <= v119 || *v119 != 82)
              {
                goto LABEL_347;
              }
            }

          case 0xBu:
            if (v10 != 90)
            {
              goto LABEL_337;
            }

            v85 = v9 - 1;
            while (1)
            {
              v86 = v85 + 1;
              *v193 = v85 + 1;
              v87 = *(a1 + 104);
              if (v87 && (v88 = *(a1 + 96), v88 < *v87))
              {
                *(a1 + 96) = v88 + 1;
                v89 = *&v87[2 * v88 + 2];
              }

              else
              {
                v90 = sub_152ADEC(*(a1 + 88));
                v89 = sub_19593CC(a1 + 88, v90);
                v86 = *v193;
              }

              v85 = sub_2219978(a3, v89, v86);
              *v193 = v85;
              if (!v85)
              {
                goto LABEL_353;
              }

              if (*a3 <= v85 || *v85 != 90)
              {
                goto LABEL_347;
              }
            }

          case 0xCu:
            if (v10 != 98)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 2u;
            v103 = *(a1 + 8);
            v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
            if (v103)
            {
              v104 = *v104;
            }

            v105 = (a1 + 472);
LABEL_221:
            v118 = sub_194DB04(v105, v104);
            v28 = sub_1958890(v118, *v193, a3);
            goto LABEL_346;
          case 0xDu:
            if (v10 != 106)
            {
              goto LABEL_337;
            }

            v79 = v9 - 1;
            while (1)
            {
              v80 = v79 + 1;
              *v193 = v79 + 1;
              v81 = *(a1 + 128);
              if (v81 && (v82 = *(a1 + 120), v82 < *v81))
              {
                *(a1 + 120) = v82 + 1;
                v83 = *&v81[2 * v82 + 2];
              }

              else
              {
                v84 = sub_1528AA8(*(a1 + 112));
                v83 = sub_19593CC(a1 + 112, v84);
                v80 = *v193;
              }

              v79 = sub_2217968(a3, v83, v80);
              *v193 = v79;
              if (!v79)
              {
                goto LABEL_353;
              }

              if (*a3 <= v79 || *v79 != 106)
              {
                goto LABEL_347;
              }
            }

          case 0xFu:
            if (v10 != 122)
            {
              goto LABEL_337;
            }

            v91 = v9 - 1;
            while (1)
            {
              v92 = v91 + 1;
              *v193 = v91 + 1;
              v93 = *(a1 + 152);
              if (v93 && (v94 = *(a1 + 144), v94 < *v93))
              {
                *(a1 + 144) = v94 + 1;
                v95 = *&v93[2 * v94 + 2];
              }

              else
              {
                v96 = sub_16F5A54(*(a1 + 136));
                v95 = sub_19593CC(a1 + 136, v96);
                v92 = *v193;
              }

              v91 = sub_22002C0(a3, v95, v92);
              *v193 = v91;
              if (!v91)
              {
                goto LABEL_353;
              }

              if (*a3 <= v91 || *v91 != 122)
              {
                goto LABEL_347;
              }
            }

          case 0x10u:
            if (v10 != 130)
            {
              goto LABEL_337;
            }

            v106 = v9 - 2;
            while (1)
            {
              v107 = v106 + 2;
              *v193 = v106 + 2;
              v108 = *(a1 + 176);
              if (v108 && (v109 = *(a1 + 168), v109 < *v108))
              {
                *(a1 + 168) = v109 + 1;
                v110 = *&v108[2 * v109 + 2];
              }

              else
              {
                v111 = sub_152AD60(*(a1 + 160));
                v110 = sub_19593CC(a1 + 160, v111);
                v107 = *v193;
              }

              v106 = sub_2219858(a3, v110, v107);
              *v193 = v106;
              if (!v106)
              {
                goto LABEL_353;
              }

              if (*a3 <= v106 || *v106 != 386)
              {
                goto LABEL_347;
              }
            }

          case 0x14u:
            if (v10 != 162)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 4u;
            v52 = *(a1 + 480);
            if (!v52)
            {
              v53 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v8)
              {
                v53 = *v53;
              }

              v52 = sub_15281FC(v53);
              *(a1 + 480) = v52;
              v9 = *v193;
            }

            v28 = sub_21FBEC0(a3, v52, v9);
            goto LABEL_346;
          case 0x15u:
            if (v10 != 168)
            {
              goto LABEL_337;
            }

            v6 |= 0x200u;
            v63 = v9 + 1;
            v62 = *v9;
            if ((v62 & 0x8000000000000000) == 0)
            {
              goto LABEL_123;
            }

            v64 = *v63;
            v62 = (v64 << 7) + v62 - 128;
            if (v64 < 0)
            {
              v171 = sub_19587DC(v9, v62);
              *v193 = v171;
              *(a1 + 536) = v172;
              if (!v171)
              {
                goto LABEL_353;
              }
            }

            else
            {
              v63 = v9 + 2;
LABEL_123:
              *v193 = v63;
              *(a1 + 536) = v62;
            }

            continue;
          case 0x19u:
            if (v10 != 202)
            {
              goto LABEL_337;
            }

            v54 = v9 - 2;
            while (1)
            {
              v55 = v54 + 2;
              *v193 = v54 + 2;
              v56 = *(a1 + 200);
              if (v56 && (v57 = *(a1 + 192), v57 < *v56))
              {
                *(a1 + 192) = v57 + 1;
                v58 = *&v56[2 * v57 + 2];
              }

              else
              {
                v59 = sub_152710C(*(a1 + 184));
                v58 = sub_19593CC(a1 + 184, v59);
                v55 = *v193;
              }

              v54 = sub_21FCB20(a3, v58, v55);
              *v193 = v54;
              if (!v54)
              {
                goto LABEL_353;
              }

              if (*a3 <= v54 || *v54 != 458)
              {
                goto LABEL_347;
              }
            }

          case 0x1Eu:
            if (v10 != 242)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 8u;
            v60 = *(a1 + 488);
            if (!v60)
            {
              v61 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v8)
              {
                v61 = *v61;
              }

              v60 = sub_1528C84(v61);
              *(a1 + 488) = v60;
              v9 = *v193;
            }

            v28 = sub_2218EC8(a3, v60, v9);
            goto LABEL_346;
          case 0x23u:
            if (v10 != 26)
            {
              goto LABEL_337;
            }

            v46 = v9 - 2;
            while (1)
            {
              v47 = v46 + 2;
              *v193 = v46 + 2;
              v48 = *(a1 + 224);
              if (v48 && (v49 = *(a1 + 216), v49 < *v48))
              {
                *(a1 + 216) = v49 + 1;
                v50 = *&v48[2 * v49 + 2];
              }

              else
              {
                v51 = sub_1528AA8(*(a1 + 208));
                v50 = sub_19593CC(a1 + 208, v51);
                v47 = *v193;
              }

              v46 = sub_2217968(a3, v50, v47);
              *v193 = v46;
              if (!v46)
              {
                goto LABEL_353;
              }

              if (*a3 <= v46 || *v46 != 666)
              {
                goto LABEL_347;
              }
            }

          case 0x28u:
            if (v10 != 69)
            {
              goto LABEL_337;
            }

            v6 |= 0x1000u;
            *(a1 + 548) = *v9;
            *v193 = v9 + 4;
            continue;
          case 0x2Du:
            if (v10 == 104)
            {
              v73 = (v9 - 2);
              while (1)
              {
                *v193 = v73 + 2;
                v74 = *(v73 + 2);
                if (v74 < 0)
                {
                  v75 = (*(v73 + 3) << 7) + v74;
                  v74 = (v75 - 128);
                  if (*(v73 + 3) < 0)
                  {
                    v73 = sub_19587DC(v73 + 2, (v75 - 128));
                    v74 = v76;
                  }

                  else
                  {
                    v73 += 4;
                  }
                }

                else
                {
                  v73 += 3;
                }

                *v193 = v73;
                v77 = *(a1 + 232);
                if (v77 == *(a1 + 236))
                {
                  v78 = v77 + 1;
                  sub_1959094((a1 + 232), v77 + 1);
                  *(*(a1 + 240) + 8 * v77) = v74;
                  v73 = *v193;
                }

                else
                {
                  *(*(a1 + 240) + 8 * v77) = v74;
                  v78 = v77 + 1;
                }

                *(a1 + 232) = v78;
                if (!v73)
                {
                  goto LABEL_353;
                }

                if (*a3 <= v73 || *v73 != 744)
                {
                  goto LABEL_347;
                }
              }
            }

            if (v10 != 106)
            {
              goto LABEL_337;
            }

            v28 = sub_1958938((a1 + 232), v9, a3);
            goto LABEL_346;
          case 0x31u:
            if (v10 != 136)
            {
              goto LABEL_337;
            }

            v6 |= 0x2000u;
            LODWORD(v112) = *v9;
            if ((v112 & 0x80000000) == 0)
            {
              v113 = v9 + 1;
LABEL_312:
              *v193 = v113;
              *(a1 + 552) = v112;
              continue;
            }

            v112 = (v9[1] << 7) + v112 - 128;
            if ((v9[1] & 0x80000000) == 0)
            {
              v113 = v9 + 2;
              goto LABEL_312;
            }

            v179 = sub_19587DC(v9, v112);
            *v193 = v179;
            *(a1 + 552) = v180;
            if (!v179)
            {
              goto LABEL_353;
            }

            continue;
          case 0x32u:
            if (v10 != 146)
            {
              goto LABEL_337;
            }

            v125 = v9 - 2;
            while (1)
            {
              v126 = v125 + 2;
              *v193 = v125 + 2;
              v127 = *(a1 + 264);
              if (v127 && (v128 = *(a1 + 256), v128 < *v127))
              {
                *(a1 + 256) = v128 + 1;
                v129 = *&v127[2 * v128 + 2];
              }

              else
              {
                v130 = sub_152AE74(*(a1 + 248));
                v129 = sub_19593CC(a1 + 248, v130);
                v126 = *v193;
              }

              v125 = sub_2219A08(a3, v129, v126);
              *v193 = v125;
              if (!v125)
              {
                goto LABEL_353;
              }

              if (*a3 <= v125 || *v125 != 914)
              {
                goto LABEL_347;
              }
            }

          case 0x37u:
            if (v10 != 186)
            {
              goto LABEL_337;
            }

            v40 = v9 - 2;
            while (1)
            {
              v41 = v40 + 2;
              *v193 = v40 + 2;
              v42 = *(a1 + 288);
              if (v42 && (v43 = *(a1 + 280), v43 < *v42))
              {
                *(a1 + 280) = v43 + 1;
                v44 = *&v42[2 * v43 + 2];
              }

              else
              {
                sub_152AF24(*(a1 + 272));
                v44 = sub_19593CC(a1 + 272, v45);
                v41 = *v193;
              }

              v40 = sub_2219A98(a3, v44, v41);
              *v193 = v40;
              if (!v40)
              {
                goto LABEL_353;
              }

              if (*a3 <= v40 || *v40 != 954)
              {
                goto LABEL_347;
              }
            }

          default:
            goto LABEL_337;
        }

        goto LABEL_346;
      }

      if (v10 >> 3 <= 0x54)
      {
        if (v10 >> 3 > 0x45)
        {
          if (v12 == 70)
          {
            if (v10 == 50)
            {
              v145 = v9 - 2;
              while (1)
              {
                v146 = v145 + 2;
                *v193 = v145 + 2;
                v147 = *(a1 + 360);
                if (v147 && (v148 = *(a1 + 352), v148 < *v147))
                {
                  *(a1 + 352) = v148 + 1;
                  v149 = *&v147[2 * v148 + 2];
                }

                else
                {
                  sub_152B3B8(*(a1 + 344));
                  v149 = sub_19593CC(a1 + 344, v150);
                  v146 = *v193;
                }

                v145 = sub_2219228(a3, v149, v146);
                *v193 = v145;
                if (!v145)
                {
                  goto LABEL_353;
                }

                if (*a3 <= v145 || *v145 != 1202)
                {
                  goto LABEL_347;
                }
              }
            }

            goto LABEL_337;
          }

          if (v12 == 75)
          {
            if (v10 != 90)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 0x10u;
            v137 = *(a1 + 496);
            if (!v137)
            {
              v138 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v8)
              {
                v138 = *v138;
              }

              v137 = sub_152B054(v138);
              *(a1 + 496) = v137;
              v9 = *v193;
            }

            v28 = sub_2219BB8(a3, v137, v9);
          }

          else
          {
            if (v12 != 80 || v10 != 130)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 0x20u;
            v26 = *(a1 + 504);
            if (!v26)
            {
              v27 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v8)
              {
                v27 = *v27;
              }

              v26 = sub_152ACC0(v27);
              *(a1 + 504) = v26;
              v9 = *v193;
            }

            v28 = sub_2219C48(a3, v26, v9);
          }

          goto LABEL_346;
        }

        if (v12 == 60)
        {
          if (v10 == 226)
          {
            v139 = v9 - 2;
            while (1)
            {
              v140 = v139 + 2;
              *v193 = v139 + 2;
              v141 = *(a1 + 312);
              if (v141 && (v142 = *(a1 + 304), v142 < *v141))
              {
                *(a1 + 304) = v142 + 1;
                v143 = *&v141[2 * v142 + 2];
              }

              else
              {
                v144 = sub_16F5A54(*(a1 + 296));
                v143 = sub_19593CC(a1 + 296, v144);
                v140 = *v193;
              }

              v139 = sub_22002C0(a3, v143, v140);
              *v193 = v139;
              if (!v139)
              {
                goto LABEL_353;
              }

              if (*a3 <= v139 || *v139 != 994)
              {
                goto LABEL_347;
              }
            }
          }

          goto LABEL_337;
        }

        if (v12 == 61)
        {
          if (v10 == 234)
          {
            v131 = v9 - 2;
            while (1)
            {
              v132 = v131 + 2;
              *v193 = v131 + 2;
              v133 = *(a1 + 336);
              if (v133 && (v134 = *(a1 + 328), v134 < *v133))
              {
                *(a1 + 328) = v134 + 1;
                v135 = *&v133[2 * v134 + 2];
              }

              else
              {
                v136 = sub_152AFD8(*(a1 + 320));
                v135 = sub_19593CC(a1 + 320, v136);
                v132 = *v193;
              }

              v131 = sub_2219B28(a3, v135, v132);
              *v193 = v131;
              if (!v131)
              {
                goto LABEL_353;
              }

              if (*a3 <= v131 || *v131 != 1002)
              {
                goto LABEL_347;
              }
            }
          }

          goto LABEL_337;
        }

        if (v12 != 65 || v10 != 8)
        {
          goto LABEL_337;
        }

        v6 |= 0x800u;
        v24 = v9 + 1;
        v23 = *v9;
        if (v23 < 0)
        {
          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v183 = sub_19587DC(v9, v23);
            *v193 = v183;
            *(a1 + 545) = v184 != 0;
            if (!v183)
            {
              goto LABEL_353;
            }

            continue;
          }

          v24 = v9 + 2;
        }

        *v193 = v24;
        *(a1 + 545) = v23 != 0;
      }

      else
      {
        if (v10 >> 3 > 0x5A)
        {
          if (v10 >> 3 <= 0x6D)
          {
            if (v12 == 91)
            {
              if (v10 == 218)
              {
                v151 = v9 - 2;
                while (1)
                {
                  v152 = (v151 + 2);
                  *v193 = v151 + 2;
                  v153 = *(a1 + 408);
                  if (v153 && (v154 = *(a1 + 400), v154 < *v153))
                  {
                    *(a1 + 400) = v154 + 1;
                    v155 = *&v153[2 * v154 + 2];
                  }

                  else
                  {
                    v156 = *(a1 + 392);
                    if (!v156)
                    {
                      operator new();
                    }

                    *v158 = v157;
                    v158[1] = sub_195A650;
                    *v157 = 0;
                    v157[1] = 0;
                    v157[2] = 0;
                    v155 = sub_19593CC(a1 + 392, v157);
                    v152 = *v193;
                  }

                  v151 = sub_1958890(v155, v152, a3);
                  *v193 = v151;
                  if (!v151)
                  {
                    goto LABEL_353;
                  }

                  if (*a3 <= v151 || *v151 != 1498)
                  {
                    goto LABEL_347;
                  }
                }
              }
            }

            else if (v12 == 100 && v10 == 34)
            {
              v16 = v9 - 2;
              while (1)
              {
                v17 = v16 + 2;
                *v193 = v16 + 2;
                v18 = *(a1 + 432);
                if (v18 && (v19 = *(a1 + 424), v19 < *v18))
                {
                  *(a1 + 424) = v19 + 1;
                  v20 = *&v18[2 * v19 + 2];
                }

                else
                {
                  v21 = sub_152ADEC(*(a1 + 416));
                  v20 = sub_19593CC(a1 + 416, v21);
                  v17 = *v193;
                }

                v16 = sub_2219978(a3, v20, v17);
                *v193 = v16;
                if (!v16)
                {
                  goto LABEL_353;
                }

                if (*a3 <= v16 || *v16 != 1698)
                {
                  goto LABEL_347;
                }
              }
            }

LABEL_337:
            if (v10)
            {
              v189 = (v10 & 7) == 4;
            }

            else
            {
              v189 = 1;
            }

            if (v189)
            {
              if (v9)
              {
                a3[10].i32[0] = v10 - 1;
                break;
              }

LABEL_353:
              *v193 = 0;
              break;
            }

            if (v10 - 8000 > 0x31F)
            {
              if (*v8)
              {
                v190 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
              }

              else
              {
                v191 = v10;
                v192 = sub_11F1920((a1 + 8));
                v10 = v191;
                v190 = v192;
                v9 = *v193;
              }

              v28 = sub_1952690(v10, v190, v9, a3);
            }

            else
            {
              v28 = sub_19525AC((a1 + 16), v10, v9, &off_2775FB0, (a1 + 8), a3);
            }

LABEL_346:
            *v193 = v28;
            if (!v28)
            {
              goto LABEL_353;
            }

            continue;
          }

          if (v12 == 110)
          {
            if (v10 == 114)
            {
              v159 = v9 - 2;
              while (1)
              {
                v160 = v159 + 2;
                *v193 = v159 + 2;
                v161 = *(a1 + 456);
                if (v161 && (v162 = *(a1 + 448), v162 < *v161))
                {
                  *(a1 + 448) = v162 + 1;
                  v163 = *&v161[2 * v162 + 2];
                }

                else
                {
                  v164 = sub_152B17C(*(a1 + 440));
                  v163 = sub_19593CC(a1 + 440, v164);
                  v160 = *v193;
                }

                v159 = sub_2219CD8(a3, v163, v160);
                *v193 = v159;
                if (!v159)
                {
                  goto LABEL_353;
                }

                if (*a3 <= v159 || *v159 != 1778)
                {
                  goto LABEL_347;
                }
              }
            }

            goto LABEL_337;
          }

          if (v12 != 115 || v10 != 152)
          {
            goto LABEL_337;
          }

          v38 = v9 + 1;
          v37 = *v9;
          if (v37 < 0)
          {
            v39 = *v38;
            v37 = (v39 << 7) + v37 - 128;
            if ((v39 & 0x80000000) == 0)
            {
              v38 = v9 + 2;
              goto LABEL_72;
            }

            *v193 = sub_19587DC(v9, v37);
            if (!*v193)
            {
              goto LABEL_353;
            }
          }

          else
          {
LABEL_72:
            *v193 = v38;
          }

          if (v37 > 3)
          {
            sub_156E858();
          }

          else
          {
            *(a1 + 40) |= 0x4000u;
            *(a1 + 556) = v37;
          }

          continue;
        }

        if (v12 == 85)
        {
          if (v10 != 168)
          {
            goto LABEL_337;
          }

          v6 |= 0x8000u;
          v169 = v9 + 1;
          v168 = *v9;
          if (v168 < 0)
          {
            v170 = *v169;
            v168 = (v170 << 7) + v168 - 128;
            if (v170 < 0)
            {
              v187 = sub_19587DC(v9, v168);
              *v193 = v187;
              *(a1 + 560) = v188;
              if (!v187)
              {
                goto LABEL_353;
              }

              continue;
            }

            v169 = v9 + 2;
          }

          *v193 = v169;
          *(a1 + 560) = v168;
        }

        else
        {
          if (v12 != 86)
          {
            if (v12 == 90 && v10 == 210)
            {
              v29 = v9 - 2;
              while (1)
              {
                v30 = (v29 + 2);
                *v193 = v29 + 2;
                v31 = *(a1 + 384);
                if (v31 && (v32 = *(a1 + 376), v32 < *v31))
                {
                  *(a1 + 376) = v32 + 1;
                  v33 = *&v31[2 * v32 + 2];
                }

                else
                {
                  v34 = *(a1 + 368);
                  if (!v34)
                  {
                    operator new();
                  }

                  *v36 = v35;
                  v36[1] = sub_195A650;
                  *v35 = 0;
                  v35[1] = 0;
                  v35[2] = 0;
                  v33 = sub_19593CC(a1 + 368, v35);
                  v30 = *v193;
                }

                v29 = sub_1958890(v33, v30, a3);
                *v193 = v29;
                if (!v29)
                {
                  goto LABEL_353;
                }

                if (*a3 <= v29 || *v29 != 1490)
                {
                  goto LABEL_347;
                }
              }
            }

            goto LABEL_337;
          }

          if (v10 != 176)
          {
            goto LABEL_337;
          }

          v6 |= 0x10000u;
          v166 = v9 + 1;
          v165 = *v9;
          if (v165 < 0)
          {
            v167 = *v166;
            v165 = (v167 << 7) + v165 - 128;
            if (v167 < 0)
            {
              v185 = sub_19587DC(v9, v165);
              *v193 = v185;
              *(a1 + 568) = v186;
              if (!v185)
              {
                goto LABEL_353;
              }

              continue;
            }

            v166 = v9 + 2;
          }

          *v193 = v166;
          *(a1 + 568) = v165;
        }
      }

LABEL_347:
      ;
    }

    while ((sub_195ADC0(a3, v193, a3[11].u32[1]) & 1) == 0);
  }

  *(a1 + 40) |= v6;
  return *v193;
}

char *sub_1521D28(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 512);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 520);
    *v6 = 24;
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 528);
    *v11 = 32;
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

  if (v5)
  {
    v15 = sub_128AEEC(a3, 5, (*(a1 + 464) & 0xFFFFFFFFFFFFFFFELL), v15);
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 544);
    *v15 = 48;
    v15[1] = v19;
    v15 += 2;
  }

  v20 = *(a1 + 48);
  if (v20 < 1)
  {
    v23 = v15;
  }

  else
  {
    for (i = 0; i != v20; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v22 = *(*(a1 + 56) + 4 * i);
      *v15 = 56;
      v15[1] = v22;
      if (v22 > 0x7F)
      {
        v15[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v15[2] = v22 >> 7;
        v23 = v15 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v15) = v15[2];
          do
          {
            *(v23 - 1) = v15 | 0x80;
            v15 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v15 + 2;
      }

      v15 = v23;
    }
  }

  v26 = *(a1 + 72);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v28 = *(*(a1 + 80) + 8 * j + 8);
      *v23 = 82;
      v29 = *(v28 + 20);
      v23[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v23 + 1);
      }

      else
      {
        v30 = v23 + 2;
      }

      v23 = sub_151C22C(v28, v30, a3);
    }
  }

  v31 = *(a1 + 96);
  if (v31)
  {
    for (k = 0; k != v31; ++k)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v33 = *(*(a1 + 104) + 8 * k + 8);
      *v23 = 90;
      v34 = *(v33 + 20);
      v23[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v23 + 1);
      }

      else
      {
        v35 = v23 + 2;
      }

      v23 = sub_151C22C(v33, v35, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    v23 = sub_128AEEC(a3, 12, (*(a1 + 472) & 0xFFFFFFFFFFFFFFFELL), v23);
  }

  v36 = *(a1 + 120);
  if (v36)
  {
    for (m = 0; m != v36; ++m)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v38 = *(*(a1 + 128) + 8 * m + 8);
      *v23 = 106;
      v39 = *(v38 + 20);
      v23[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v23 + 1);
      }

      else
      {
        v40 = v23 + 2;
      }

      v23 = sub_14F5930(v38, v40, a3);
    }
  }

  v41 = *(a1 + 144);
  if (v41)
  {
    for (n = 0; n != v41; ++n)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v43 = *(*(a1 + 152) + 8 * n + 8);
      *v23 = 122;
      v44 = *(v43 + 20);
      v23[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v23 + 1);
      }

      else
      {
        v45 = v23 + 2;
      }

      v23 = sub_16E74A8(v43, v45, a3);
    }
  }

  v46 = *(a1 + 168);
  if (v46)
  {
    for (ii = 0; ii != v46; ++ii)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v48 = *(*(a1 + 176) + 8 * ii + 8);
      *v23 = 386;
      v49 = *(v48 + 20);
      v23[2] = v49;
      if (v49 > 0x7F)
      {
        v50 = sub_19575D0(v49, v23 + 2);
      }

      else
      {
        v50 = v23 + 3;
      }

      v23 = sub_151BB94(v48, v50, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v51 = *(a1 + 480);
    *v23 = 418;
    v52 = *(v51 + 20);
    v23[2] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v23 + 2);
    }

    else
    {
      v53 = v23 + 3;
    }

    v23 = sub_14EB170(v51, v53, a3);
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v55 = *(a1 + 536);
    *v23 = 424;
    v23[2] = v55;
    if (v55 > 0x7F)
    {
      v23[2] = v55 | 0x80;
      v56 = v55 >> 7;
      v23[3] = v55 >> 7;
      v54 = v23 + 4;
      if (v55 >= 0x4000)
      {
        LOBYTE(v57) = v23[3];
        do
        {
          *(v54 - 1) = v57 | 0x80;
          v57 = v56 >> 7;
          *v54++ = v56 >> 7;
          v58 = v56 >> 14;
          v56 >>= 7;
        }

        while (v58);
      }
    }

    else
    {
      v54 = v23 + 3;
    }
  }

  else
  {
    v54 = v23;
  }

  v59 = *(a1 + 192);
  if (v59)
  {
    for (jj = 0; jj != v59; ++jj)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v61 = *(*(a1 + 200) + 8 * jj + 8);
      *v54 = 458;
      v62 = *(v61 + 20);
      v54[2] = v62;
      if (v62 > 0x7F)
      {
        v63 = sub_19575D0(v62, v54 + 2);
      }

      else
      {
        v63 = v54 + 3;
      }

      v54 = sub_14D9394(v61, v63, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v64 = *(a1 + 488);
    *v54 = 498;
    v65 = *(v64 + 20);
    v54[2] = v65;
    if (v65 > 0x7F)
    {
      v66 = sub_19575D0(v65, v54 + 2);
    }

    else
    {
      v66 = v54 + 3;
    }

    v54 = sub_14F71E8(v64, v66, a3);
  }

  v67 = *(a1 + 216);
  if (v67)
  {
    for (kk = 0; kk != v67; ++kk)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v69 = *(*(a1 + 224) + 8 * kk + 8);
      *v54 = 666;
      v70 = *(v69 + 20);
      v54[2] = v70;
      if (v70 > 0x7F)
      {
        v71 = sub_19575D0(v70, v54 + 2);
      }

      else
      {
        v71 = v54 + 3;
      }

      v54 = sub_14F5930(v69, v71, a3);
    }
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v72 = *(a1 + 548);
    *v54 = 709;
    *(v54 + 2) = v72;
    v54 += 6;
  }

  v73 = *(a1 + 232);
  if (v73 < 1)
  {
    v76 = v54;
  }

  else
  {
    for (mm = 0; mm != v73; ++mm)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v75 = *(*(a1 + 240) + 8 * mm);
      *v54 = 744;
      v54[2] = v75;
      if (v75 > 0x7F)
      {
        v54[2] = v75 | 0x80;
        v77 = v75 >> 7;
        v54[3] = v75 >> 7;
        v76 = v54 + 4;
        if (v75 >= 0x4000)
        {
          LOBYTE(v54) = v54[3];
          do
          {
            *(v76 - 1) = v54 | 0x80;
            v54 = (v77 >> 7);
            *v76++ = v77 >> 7;
            v78 = v77 >> 14;
            v77 >>= 7;
          }

          while (v78);
        }
      }

      else
      {
        v76 = v54 + 3;
      }

      v54 = v76;
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v76)
    {
      v76 = sub_225EB68(a3, v76);
    }

    v80 = *(a1 + 552);
    *v76 = 904;
    v76[2] = v80;
    if (v80 > 0x7F)
    {
      v76[2] = v80 | 0x80;
      v81 = v80 >> 7;
      v76[3] = v80 >> 7;
      v79 = v76 + 4;
      if (v80 >= 0x4000)
      {
        LOBYTE(v76) = v76[3];
        do
        {
          *(v79 - 1) = v76 | 0x80;
          v76 = (v81 >> 7);
          *v79++ = v81 >> 7;
          v82 = v81 >> 14;
          v81 >>= 7;
        }

        while (v82);
      }
    }

    else
    {
      v79 = v76 + 3;
    }
  }

  else
  {
    v79 = v76;
  }

  v83 = *(a1 + 256);
  if (v83)
  {
    for (nn = 0; nn != v83; ++nn)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v85 = *(*(a1 + 264) + 8 * nn + 8);
      *v79 = 914;
      v86 = *(v85 + 20);
      v79[2] = v86;
      if (v86 > 0x7F)
      {
        v87 = sub_19575D0(v86, v79 + 2);
      }

      else
      {
        v87 = v79 + 3;
      }

      v79 = sub_151CB8C(v85, v87, a3);
    }
  }

  v88 = *(a1 + 280);
  if (v88)
  {
    for (i1 = 0; i1 != v88; ++i1)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v90 = *(*(a1 + 288) + 8 * i1 + 8);
      *v79 = 954;
      v91 = *(v90 + 20);
      v79[2] = v91;
      if (v91 > 0x7F)
      {
        v92 = sub_19575D0(v91, v79 + 2);
      }

      else
      {
        v92 = v79 + 3;
      }

      v79 = sub_151DB88(v90, v92, a3);
    }
  }

  v93 = *(a1 + 304);
  if (v93)
  {
    for (i2 = 0; i2 != v93; ++i2)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v95 = *(*(a1 + 312) + 8 * i2 + 8);
      *v79 = 994;
      v96 = *(v95 + 20);
      v79[2] = v96;
      if (v96 > 0x7F)
      {
        v97 = sub_19575D0(v96, v79 + 2);
      }

      else
      {
        v97 = v79 + 3;
      }

      v79 = sub_16E74A8(v95, v97, a3);
    }
  }

  v98 = *(a1 + 328);
  if (v98)
  {
    for (i3 = 0; i3 != v98; ++i3)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v100 = *(*(a1 + 336) + 8 * i3 + 8);
      *v79 = 1002;
      v101 = *(v100 + 20);
      v79[2] = v101;
      if (v101 > 0x7F)
      {
        v102 = sub_19575D0(v101, v79 + 2);
      }

      else
      {
        v102 = v79 + 3;
      }

      v79 = sub_151E918(v100, v102, a3);
    }
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v79)
    {
      v79 = sub_225EB68(a3, v79);
    }

    v103 = *(a1 + 545);
    *v79 = 1160;
    v79[2] = v103;
    v79 += 3;
  }

  v104 = *(a1 + 352);
  if (v104)
  {
    for (i4 = 0; i4 != v104; ++i4)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v106 = *(*(a1 + 360) + 8 * i4 + 8);
      *v79 = 1202;
      v107 = *(v106 + 20);
      v79[2] = v107;
      if (v107 > 0x7F)
      {
        v108 = sub_19575D0(v107, v79 + 2);
      }

      else
      {
        v108 = v79 + 3;
      }

      v79 = sub_1525040(v106, v108, a3);
    }
  }

  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_198;
    }

LABEL_206:
    if (*a3 <= v79)
    {
      v79 = sub_225EB68(a3, v79);
    }

    v113 = *(a1 + 504);
    *v79 = 1410;
    v114 = *(v113 + 40);
    v79[2] = v114;
    if (v114 > 0x7F)
    {
      v115 = sub_19575D0(v114, v79 + 2);
    }

    else
    {
      v115 = v79 + 3;
    }

    v79 = sub_151B450(v113, v115, a3);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_212;
  }

  if (*a3 <= v79)
  {
    v79 = sub_225EB68(a3, v79);
  }

  v110 = *(a1 + 496);
  *v79 = 1242;
  v111 = *(v110 + 20);
  v79[2] = v111;
  if (v111 > 0x7F)
  {
    v112 = sub_19575D0(v111, v79 + 2);
  }

  else
  {
    v112 = v79 + 3;
  }

  v79 = sub_151F150(v110, v112, a3);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_206;
  }

LABEL_198:
  if ((v5 & 0x8000) == 0)
  {
LABEL_199:
    v109 = v79;
    goto LABEL_219;
  }

LABEL_212:
  if (*a3 <= v79)
  {
    v79 = sub_225EB68(a3, v79);
  }

  v116 = *(a1 + 560);
  *v79 = 1448;
  v79[2] = v116;
  if (v116 > 0x7F)
  {
    v79[2] = v116 | 0x80;
    v117 = v116 >> 7;
    v79[3] = v116 >> 7;
    v109 = v79 + 4;
    if (v116 >= 0x4000)
    {
      LOBYTE(v79) = v79[3];
      do
      {
        *(v109 - 1) = v79 | 0x80;
        v79 = (v117 >> 7);
        *v109++ = v117 >> 7;
        v118 = v117 >> 14;
        v117 >>= 7;
      }

      while (v118);
    }
  }

  else
  {
    v109 = v79 + 3;
  }

LABEL_219:
  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v109)
    {
      v109 = sub_225EB68(a3, v109);
    }

    v120 = *(a1 + 568);
    *v109 = 1456;
    v109[2] = v120;
    if (v120 > 0x7F)
    {
      v109[2] = v120 | 0x80;
      v121 = v120 >> 7;
      v109[3] = v120 >> 7;
      v119 = v109 + 4;
      if (v120 >= 0x4000)
      {
        LOBYTE(v109) = v109[3];
        do
        {
          *(v119 - 1) = v109 | 0x80;
          v109 = (v121 >> 7);
          *v119++ = v121 >> 7;
          v122 = v121 >> 14;
          v121 >>= 7;
        }

        while (v122);
      }
    }

    else
    {
      v119 = v109 + 3;
    }
  }

  else
  {
    v119 = v109;
  }

  v123 = *(a1 + 376);
  if (v123 >= 1)
  {
    v124 = 8;
    do
    {
      v125 = *(*(a1 + 384) + v124);
      v126 = *(v125 + 23);
      if (v126 < 0 && (v126 = v125[1], v126 > 127) || (*a3 - v119 + 13) < v126)
      {
        v119 = sub_1957480(a3, 90, v125, v119);
      }

      else
      {
        *v119 = 1490;
        v119[2] = v126;
        if (*(v125 + 23) < 0)
        {
          v125 = *v125;
        }

        v127 = v119 + 3;
        memcpy(v119 + 3, v125, v126);
        v119 = &v127[v126];
      }

      v124 += 8;
      --v123;
    }

    while (v123);
  }

  v128 = *(a1 + 400);
  if (v128 >= 1)
  {
    v129 = 8;
    do
    {
      v130 = *(*(a1 + 408) + v129);
      v131 = *(v130 + 23);
      if (v131 < 0 && (v131 = v130[1], v131 > 127) || (*a3 - v119 + 13) < v131)
      {
        v119 = sub_1957480(a3, 91, v130, v119);
      }

      else
      {
        *v119 = 1498;
        v119[2] = v131;
        if (*(v130 + 23) < 0)
        {
          v130 = *v130;
        }

        v132 = v119 + 3;
        memcpy(v119 + 3, v130, v131);
        v119 = &v132[v131];
      }

      v129 += 8;
      --v128;
    }

    while (v128);
  }

  v133 = *(a1 + 424);
  if (v133)
  {
    for (i5 = 0; i5 != v133; ++i5)
    {
      if (*a3 <= v119)
      {
        v119 = sub_225EB68(a3, v119);
      }

      v135 = *(*(a1 + 432) + 8 * i5 + 8);
      *v119 = 1698;
      v136 = *(v135 + 20);
      v119[2] = v136;
      if (v136 > 0x7F)
      {
        v137 = sub_19575D0(v136, v119 + 2);
      }

      else
      {
        v137 = v119 + 3;
      }

      v119 = sub_151C22C(v135, v137, a3);
    }
  }

  v138 = *(a1 + 448);
  if (v138)
  {
    for (i6 = 0; i6 != v138; ++i6)
    {
      if (*a3 <= v119)
      {
        v119 = sub_225EB68(a3, v119);
      }

      v140 = *(*(a1 + 456) + 8 * i6 + 8);
      *v119 = 1778;
      v141 = *(v140 + 20);
      v119[2] = v141;
      if (v141 > 0x7F)
      {
        v142 = sub_19575D0(v141, v119 + 2);
      }

      else
      {
        v142 = v119 + 3;
      }

      v119 = sub_151FFD8(v140, v142, a3);
    }
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v119)
    {
      v119 = sub_225EB68(a3, v119);
    }

    v144 = *(a1 + 556);
    *v119 = 1944;
    v119[2] = v144;
    if (v144 > 0x7F)
    {
      v119[2] = v144 | 0x80;
      v145 = v144 >> 7;
      v119[3] = v144 >> 7;
      v143 = v119 + 4;
      if (v144 >= 0x4000)
      {
        LOBYTE(v146) = v119[3];
        do
        {
          *(v143 - 1) = v146 | 0x80;
          v146 = v145 >> 7;
          *v143++ = v145 >> 7;
          v147 = v145 >> 14;
          v145 >>= 7;
        }

        while (v147);
      }
    }

    else
    {
      v143 = v119 + 3;
    }
  }

  else
  {
    v143 = v119;
  }

  if (*(a1 + 26))
  {
    v143 = sub_1953428(a1 + 16, 1000, 1100, v143, a3);
  }

  v148 = *(a1 + 8);
  if ((v148 & 1) == 0)
  {
    return v143;
  }

  v150 = v148 & 0xFFFFFFFFFFFFFFFCLL;
  v151 = *(v150 + 31);
  if (v151 < 0)
  {
    v152 = *(v150 + 8);
    v151 = *(v150 + 16);
  }

  else
  {
    v152 = (v150 + 8);
  }

  if ((*a3 - v143) >= v151)
  {
    v153 = v151;
    memcpy(v143, v152, v151);
    v143 += v153;
    return v143;
  }

  return sub_1957130(a3, v152, v151, v143);
}

uint64_t sub_1522E70(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 56) + 4 * v5);
      if (v6 < 0)
      {
        v7 = 10;
      }

      else
      {
        v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v7;
      ++v5;
    }

    while (v3 != v5);
  }

  else
  {
    v4 = 0;
  }

  v8 = *(a1 + 72);
  v9 = v2 + v3 + v4 + v8;
  v10 = *(a1 + 80);
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
      v14 = sub_151C340(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 96);
  v16 = v9 + v15;
  v17 = *(a1 + 104);
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
      v21 = sub_151C340(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 120);
  v23 = v16 + v22;
  v24 = *(a1 + 128);
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
      v28 = sub_14F5DE8(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 144);
  v30 = v23 + v29;
  v31 = *(a1 + 152);
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

  v36 = *(a1 + 168);
  v37 = v30 + 2 * v36;
  v38 = *(a1 + 176);
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
      v42 = sub_151BCF0(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 192);
  v44 = v37 + 2 * v43;
  v45 = *(a1 + 200);
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
      v49 = sub_14D9520(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 216);
  v51 = v44 + 2 * v50;
  v52 = *(a1 + 224);
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
      v56 = sub_14F5DE8(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = sub_1959F14((a1 + 232));
  v58 = *(a1 + 256);
  v59 = v57 + v51 + 2 * (v58 + *(a1 + 232));
  v60 = *(a1 + 264);
  if (v60)
  {
    v61 = (v60 + 8);
  }

  else
  {
    v61 = 0;
  }

  if (v58)
  {
    v62 = 8 * v58;
    do
    {
      v63 = *v61++;
      v64 = sub_151CF90(v63);
      v59 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6);
      v62 -= 8;
    }

    while (v62);
  }

  v65 = *(a1 + 280);
  v66 = v59 + 2 * v65;
  v67 = *(a1 + 288);
  if (v67)
  {
    v68 = (v67 + 8);
  }

  else
  {
    v68 = 0;
  }

  if (v65)
  {
    v69 = 8 * v65;
    do
    {
      v70 = *v68++;
      v71 = sub_151E050(v70);
      v66 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6);
      v69 -= 8;
    }

    while (v69);
  }

  v72 = *(a1 + 304);
  v73 = v66 + 2 * v72;
  v74 = *(a1 + 312);
  if (v74)
  {
    v75 = (v74 + 8);
  }

  else
  {
    v75 = 0;
  }

  if (v72)
  {
    v76 = 8 * v72;
    do
    {
      v77 = *v75++;
      v78 = sub_16E7590(v77);
      v73 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6);
      v76 -= 8;
    }

    while (v76);
  }

  v79 = *(a1 + 328);
  v80 = v73 + 2 * v79;
  v81 = *(a1 + 336);
  if (v81)
  {
    v82 = (v81 + 8);
  }

  else
  {
    v82 = 0;
  }

  if (v79)
  {
    v83 = 8 * v79;
    do
    {
      v84 = *v82++;
      v85 = sub_151EAE0(v84);
      v80 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6);
      v83 -= 8;
    }

    while (v83);
  }

  v86 = *(a1 + 352);
  v87 = v80 + 2 * v86;
  v88 = *(a1 + 360);
  if (v88)
  {
    v89 = (v88 + 8);
  }

  else
  {
    v89 = 0;
  }

  if (v86)
  {
    v90 = 8 * v86;
    do
    {
      v91 = *v89++;
      v92 = sub_1525584(v91);
      v87 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6);
      v90 -= 8;
    }

    while (v90);
  }

  v93 = *(a1 + 376);
  v94 = v87 + 2 * v93;
  if (v93 >= 1)
  {
    v95 = (*(a1 + 384) + 8);
    do
    {
      v96 = *v95++;
      v97 = *(v96 + 23);
      v98 = *(v96 + 8);
      if ((v97 & 0x80u) == 0)
      {
        v98 = v97;
      }

      v94 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6);
      --v93;
    }

    while (v93);
  }

  v99 = *(a1 + 400);
  v100 = v94 + 2 * v99;
  if (v99 >= 1)
  {
    v101 = (*(a1 + 408) + 8);
    do
    {
      v102 = *v101++;
      v103 = *(v102 + 23);
      v104 = *(v102 + 8);
      if ((v103 & 0x80u) == 0)
      {
        v104 = v103;
      }

      v100 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6);
      --v99;
    }

    while (v99);
  }

  v105 = *(a1 + 424);
  v106 = v100 + 2 * v105;
  v107 = *(a1 + 432);
  if (v107)
  {
    v108 = (v107 + 8);
  }

  else
  {
    v108 = 0;
  }

  if (v105)
  {
    v109 = 8 * v105;
    do
    {
      v110 = *v108++;
      v111 = sub_151C340(v110);
      v106 += v111 + ((9 * (__clz(v111 | 1) ^ 0x1F) + 73) >> 6);
      v109 -= 8;
    }

    while (v109);
  }

  v112 = *(a1 + 448);
  v113 = v106 + 2 * v112;
  v114 = *(a1 + 456);
  if (v114)
  {
    v115 = (v114 + 8);
  }

  else
  {
    v115 = 0;
  }

  if (v112)
  {
    v116 = 8 * v112;
    do
    {
      v117 = *v115++;
      v118 = sub_1520264(v117);
      v113 += v118 + ((9 * (__clz(v118 | 1) ^ 0x1F) + 73) >> 6);
      v116 -= 8;
    }

    while (v116);
  }

  v119 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_113;
  }

  if (v119)
  {
    v123 = *(a1 + 464) & 0xFFFFFFFFFFFFFFFELL;
    v124 = *(v123 + 23);
    v125 = *(v123 + 8);
    if ((v124 & 0x80u) == 0)
    {
      v125 = v124;
    }

    v113 += v125 + ((9 * (__clz(v125 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v119 & 2) == 0)
    {
LABEL_106:
      if ((v119 & 4) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_137;
    }
  }

  else if ((v119 & 2) == 0)
  {
    goto LABEL_106;
  }

  v126 = *(a1 + 472) & 0xFFFFFFFFFFFFFFFELL;
  v127 = *(v126 + 23);
  v128 = *(v126 + 8);
  if ((v127 & 0x80u) == 0)
  {
    v128 = v127;
  }

  v113 += v128 + ((9 * (__clz(v128 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v119 & 4) == 0)
  {
LABEL_107:
    if ((v119 & 8) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_138;
  }

LABEL_137:
  v129 = sub_14EB2A8(*(a1 + 480));
  v113 += v129 + ((9 * (__clz(v129 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v119 & 8) == 0)
  {
LABEL_108:
    if ((v119 & 0x10) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_139;
  }

LABEL_138:
  v130 = sub_14F7418(*(a1 + 488));
  v113 += v130 + ((9 * (__clz(v130 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v119 & 0x10) == 0)
  {
LABEL_109:
    if ((v119 & 0x20) == 0)
    {
      goto LABEL_110;
    }

LABEL_140:
    v132 = sub_151B590(*(a1 + 504));
    v113 += v132 + ((9 * (__clz(v132 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v119 & 0x40) == 0)
    {
LABEL_111:
      if ((v119 & 0x80) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    goto LABEL_141;
  }

LABEL_139:
  v131 = sub_151F414(*(a1 + 496));
  v113 += v131 + ((9 * (__clz(v131 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v119 & 0x20) != 0)
  {
    goto LABEL_140;
  }

LABEL_110:
  if ((v119 & 0x40) == 0)
  {
    goto LABEL_111;
  }

LABEL_141:
  v113 += ((9 * (__clz(*(a1 + 512) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v119 & 0x80) != 0)
  {
LABEL_112:
    v113 += ((9 * (__clz(*(a1 + 520) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_113:
  if ((v119 & 0xFF00) == 0)
  {
    goto LABEL_127;
  }

  if ((v119 & 0x100) != 0)
  {
    v113 += ((9 * (__clz(*(a1 + 528) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  if ((v119 & 0x200) != 0)
  {
    v113 += ((9 * (__clz(*(a1 + 536) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

  v120 = v113 + ((v119 >> 9) & 2);
  if ((v119 & 0x800) != 0)
  {
    v120 += 3;
  }

  if ((v119 & 0x1000) != 0)
  {
    v113 = v120 + 6;
  }

  else
  {
    v113 = v120;
  }

  if ((v119 & 0x2000) != 0)
  {
    v133 = *(a1 + 552);
    v134 = ((9 * (__clz(v133 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v133 >= 0)
    {
      v135 = v134;
    }

    else
    {
      v135 = 12;
    }

    v113 += v135;
    if ((v119 & 0x4000) == 0)
    {
LABEL_125:
      if ((v119 & 0x8000) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_126;
    }
  }

  else if ((v119 & 0x4000) == 0)
  {
    goto LABEL_125;
  }

  v136 = *(a1 + 556);
  v137 = ((9 * (__clz(v136 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v136 >= 0)
  {
    v138 = v137;
  }

  else
  {
    v138 = 12;
  }

  v113 += v138;
  if ((v119 & 0x8000) != 0)
  {
LABEL_126:
    v113 += ((9 * (__clz(*(a1 + 560) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_127:
  if ((v119 & 0x10000) != 0)
  {
    v113 += ((9 * (__clz(*(a1 + 568) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

  v121 = *(a1 + 8);
  if (v121)
  {
    v139 = v121 & 0xFFFFFFFFFFFFFFFCLL;
    v140 = *((v121 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v140 < 0)
    {
      v140 = *(v139 + 16);
    }

    v113 += v140;
  }

  *(a1 + 44) = v113;
  return v113;
}

uint64_t sub_1523738(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 1) == 0 || (~*(*(*i + 96) + 16) & 9) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

void *sub_15237A0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13473FC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1523820(void *a1)
{
  sub_15237A0(a1);

  operator delete();
}

uint64_t sub_1523858(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1531498(v4);
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

char *sub_15238E8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v32 + 1;
    v8 = *v32;
    if (*v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v32 + 2;
      }
    }

    v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
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
      v32 = v19;
      *(a1 + 52) = v20;
      goto LABEL_39;
    }

    v30 = sub_1958770(v7, v20);
    v32 = v30;
    *(a1 + 52) = v31;
    if (!v30)
    {
      goto LABEL_48;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
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

    v5 |= 1u;
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
      v32 = v16;
      *(a1 + 48) = v17;
      goto LABEL_39;
    }

    v28 = sub_1958770(v7, v17);
    v32 = v28;
    *(a1 + 48) = v29;
    if (!v28)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v11 == 1 && v8 == 10)
  {
    v22 = v7 - 1;
    while (1)
    {
      v23 = v22 + 1;
      v32 = v22 + 1;
      v24 = *(a1 + 40);
      if (v24 && (v25 = *(a1 + 32), v25 < *v24))
      {
        *(a1 + 32) = v25 + 1;
        v26 = *&v24[2 * v25 + 2];
      }

      else
      {
        sub_155136C(*(a1 + 24));
        v26 = sub_19593CC(a1 + 24, v27);
        v23 = v32;
      }

      v22 = sub_21FC4F0(a3, v26, v23);
      v32 = v22;
      if (!v22)
      {
        goto LABEL_48;
      }

      if (*a3 <= v22 || *v22 != 10)
      {
        goto LABEL_39;
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
      v7 = v32;
    }

    v32 = sub_1952690(v8, v15, v7, a3);
    if (!v32)
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
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_1523B60(uint64_t a1, char *__dst, unint64_t *a3)
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
      v9 = *(v8 + 56);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_15317E4(v8, v10, a3);
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

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v16;
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

  if ((*a3 - v16) >= v23)
  {
    v25 = v23;
    memcpy(v16, v24, v23);
    v16 += v25;
    return v16;
  }

  return sub_1957130(a3, v24, v23, v16);
}

uint64_t sub_1523DA8(uint64_t a1)
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
      v7 = sub_15319C4(v6);
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
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

void sub_1523EAC(uint64_t *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    sub_1347FD8(result + 3, v6, (v5 + 8), v4, *result[5] - *(result + 8));
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
      *(result + 12) = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 13) = *(a2 + 52);
    }

    *(result + 4) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4(result + 1, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_1523FB0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_156A600(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1524030(void *a1)
{
  sub_1523FB0(a1);

  operator delete();
}

uint64_t sub_1524068(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1523858(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
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

char *sub_15240F8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v32 + 1;
    v8 = *v32;
    if (*v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v32 + 2;
      }
    }

    v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v17 = v7 + 1;
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_25:
        v32 = v17;
        *(a1 + 56) = v16;
        goto LABEL_40;
      }

      v28 = sub_19587DC(v7, v16);
      v32 = v28;
      *(a1 + 56) = v29;
      if (!v28)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 1u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_39:
        v32 = v26;
        *(a1 + 48) = v25;
        goto LABEL_40;
      }

      v30 = sub_19587DC(v7, v25);
      v32 = v30;
      *(a1 + 48) = v31;
      if (!v30)
      {
        goto LABEL_49;
      }
    }

LABEL_40:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v19 = v7 - 1;
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
        v24 = sub_152B280(*(a1 + 24));
        v23 = sub_19593CC(a1 + 24, v24);
        v20 = v32;
      }

      v19 = sub_2219D68(a3, v23, v20);
      v32 = v19;
      if (!v19)
      {
        goto LABEL_49;
      }

      if (*a3 <= v19 || *v19 != 26)
      {
        goto LABEL_40;
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
      v7 = v32;
    }

    v32 = sub_1952690(v8, v15, v7, a3);
    if (!v32)
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
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_1524370(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 56);
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

      v11 = sub_1523B60(v17, v19, a3);
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

uint64_t sub_15245BC(uint64_t a1)
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
      v7 = sub_1523DA8(v6);
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
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
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

void sub_15246B8(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_156C520((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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
      *(result + 48) = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 56) = *(a2 + 56);
    }

    *(result + 16) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15247BC(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_27761F0)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }

    v7 = *(a1 + 112);
    if (v7)
    {
      sub_16EB0C0(v7);
      operator delete();
    }

    v8 = *(a1 + 120);
    if (v8)
    {
      sub_16E4E08(v8);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956AFC((a1 + 72));
  sub_156A684((a1 + 48));
  sub_156A600((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15248E8(uint64_t a1)
{
  sub_15247BC(a1);

  operator delete();
}

uint64_t sub_1524920(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_1523858(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_1524068(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  result = sub_12A41D0(a1 + 72);
  v9 = *(a1 + 16);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    result = sub_16E5B70(*(a1 + 104));
    if ((v9 & 4) == 0)
    {
LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_26;
  }

  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_12:
  if ((v9 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_26:
  result = sub_16EB0FC(*(a1 + 112));
  if ((v9 & 8) != 0)
  {
LABEL_14:
    result = sub_16E4E44(*(a1 + 120));
  }

LABEL_15:
  if ((v9 & 0x70) != 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
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

uint64_t sub_1524A50(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v65 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v65, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
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
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 <= 7)
    {
      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 8u;
        v31 = *(a1 + 120);
        if (!v31)
        {
          v32 = *(a1 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_16F5828(v33);
          *(a1 + 120) = v31;
          v7 = *v65;
        }

        v15 = sub_21F4D60(a3, v31, v7);
        goto LABEL_101;
      }

      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_94;
      }

      v24 = v7 + 1;
      v25 = *v7;
      if (v25 < 0)
      {
        v26 = *v24;
        v27 = (v26 << 7) + v25;
        LODWORD(v25) = v27 - 128;
        if ((v26 & 0x80000000) == 0)
        {
          v24 = v7 + 2;
          goto LABEL_44;
        }

        *v65 = sub_19587DC(v7, (v27 - 128));
        if (!*v65)
        {
          goto LABEL_114;
        }

        LODWORD(v25) = v60;
      }

      else
      {
LABEL_44:
        *v65 = v24;
      }

      if (sub_1796880(v25))
      {
        *(a1 + 16) |= 0x40u;
        *(a1 + 144) = v25;
      }

      else
      {
        sub_13ED178();
      }

      goto LABEL_102;
    }

    if (v11 == 8)
    {
      if (v8 == 66)
      {
        v40 = v7 - 1;
        while (1)
        {
          v41 = v40 + 1;
          *v65 = v40 + 1;
          v42 = *(a1 + 64);
          if (v42 && (v43 = *(a1 + 56), v43 < *v42))
          {
            *(a1 + 56) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = sub_152B31C(*(a1 + 48));
            v44 = sub_19593CC(a1 + 48, v45);
            v41 = *v65;
          }

          v40 = sub_2219DF8(a3, v44, v41);
          *v65 = v40;
          if (!v40)
          {
            goto LABEL_114;
          }

          if (*a3 <= v40 || *v40 != 66)
          {
            goto LABEL_102;
          }
        }
      }

      goto LABEL_94;
    }

    if (v11 == 9)
    {
      if (v8 == 74)
      {
        v49 = v7 - 1;
        while (1)
        {
          v50 = (v49 + 1);
          *v65 = v49 + 1;
          v51 = *(a1 + 88);
          if (v51 && (v52 = *(a1 + 80), v52 < *v51))
          {
            *(a1 + 80) = v52 + 1;
            v53 = *&v51[2 * v52 + 2];
          }

          else
          {
            v54 = *(a1 + 72);
            if (!v54)
            {
              operator new();
            }

            *v56 = v55;
            v56[1] = sub_195A650;
            *v55 = 0;
            v55[1] = 0;
            v55[2] = 0;
            v53 = sub_19593CC(a1 + 72, v55);
            v50 = *v65;
          }

          v49 = sub_1958890(v53, v50, a3);
          *v65 = v49;
          if (!v49)
          {
            goto LABEL_114;
          }

          if (*a3 <= v49 || *v49 != 74)
          {
            goto LABEL_102;
          }
        }
      }

      goto LABEL_94;
    }

    if (v11 != 10 || v8 != 80)
    {
      goto LABEL_94;
    }

    v5 |= 0x20u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      *v65 = v17;
      *(a1 + 136) = v16;
      goto LABEL_102;
    }

    v63 = sub_19587DC(v7, v16);
    *v65 = v63;
    *(a1 + 136) = v64;
    if (!v63)
    {
      goto LABEL_114;
    }

LABEL_102:
    if (sub_195ADC0(a3, v65, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_94;
      }

      *(a1 + 16) |= 2u;
      v20 = *(a1 + 104);
      if (!v20)
      {
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        sub_16F58FC(v22);
        v20 = v23;
        *(a1 + 104) = v23;
        v7 = *v65;
      }

      v15 = sub_21F86E8(a3, v20, v7);
LABEL_101:
      *v65 = v15;
      if (!v15)
      {
        goto LABEL_114;
      }

      goto LABEL_102;
    }

    if (v8 != 8)
    {
      goto LABEL_94;
    }

    v5 |= 0x10u;
    v29 = v7 + 1;
    v28 = *v7;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v30 = *v29;
    v28 = (v30 << 7) + v28 - 128;
    if ((v30 & 0x80000000) == 0)
    {
      v29 = v7 + 2;
LABEL_51:
      *v65 = v29;
      *(a1 + 128) = v28;
      goto LABEL_102;
    }

    v61 = sub_19587DC(v7, v28);
    *v65 = v61;
    *(a1 + 128) = v62;
    if (!v61)
    {
      goto LABEL_114;
    }

    goto LABEL_102;
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_94;
      }

      *(a1 + 16) |= 1u;
      v46 = *(a1 + 8);
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      if (v46)
      {
        v47 = *v47;
      }

      v48 = sub_194DB04((a1 + 96), v47);
      v15 = sub_1958890(v48, *v65, a3);
    }

    else
    {
      if (v11 != 5 || v8 != 42)
      {
        goto LABEL_94;
      }

      *(a1 + 16) |= 4u;
      v12 = *(a1 + 112);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_16F5DB8(v14);
        *(a1 + 112) = v12;
        v7 = *v65;
      }

      v15 = sub_21F8D18(a3, v12, v7);
    }

    goto LABEL_101;
  }

  if (v8 == 26)
  {
    v34 = v7 - 1;
    while (1)
    {
      v35 = v34 + 1;
      *v65 = v34 + 1;
      v36 = *(a1 + 40);
      if (v36 && (v37 = *(a1 + 32), v37 < *v36))
      {
        *(a1 + 32) = v37 + 1;
        v38 = *&v36[2 * v37 + 2];
      }

      else
      {
        v39 = sub_152B280(*(a1 + 24));
        v38 = sub_19593CC(a1 + 24, v39);
        v35 = *v65;
      }

      v34 = sub_2219D68(a3, v38, v35);
      *v65 = v34;
      if (!v34)
      {
        goto LABEL_114;
      }

      if (*a3 <= v34 || *v34 != 26)
      {
        goto LABEL_102;
      }
    }
  }

LABEL_94:
  if (v8)
  {
    v57 = (v8 & 7) == 4;
  }

  else
  {
    v57 = 1;
  }

  if (!v57)
  {
    v58 = *(a1 + 8);
    if (v58)
    {
      v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v59 = sub_11F1920((a1 + 8));
      v7 = *v65;
    }

    v15 = sub_1952690(v8, v59, v7, a3);
    goto LABEL_101;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_114:
  *v65 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v65;
}

char *sub_1525040(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 128);
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

    v11 = *(a1 + 104);
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

    v6 = sub_16E5FE0(v11, v13, a3);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 26;
      v17 = *(v16 + 20);
      v6[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v6 + 1);
      }

      else
      {
        v18 = v6 + 2;
      }

      v6 = sub_1523B60(v16, v18, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 4, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v6);
    if ((v5 & 4) == 0)
    {
LABEL_27:
      if ((v5 & 8) == 0)
      {
        goto LABEL_28;
      }

LABEL_37:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v23 = *(a1 + 120);
      *v6 = 50;
      v24 = *(v23 + 44);
      v6[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, v6 + 1);
      }

      else
      {
        v25 = v6 + 2;
      }

      v6 = sub_16E5070(v23, v25, a3);
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_27;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 112);
  *v6 = 42;
  v21 = *(v20 + 20);
  v6[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v6 + 1);
  }

  else
  {
    v22 = v6 + 2;
  }

  v6 = sub_16EBD38(v20, v22, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  if ((v5 & 0x40) == 0)
  {
LABEL_29:
    v19 = v6;
    goto LABEL_50;
  }

LABEL_43:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v26 = *(a1 + 144);
  *v6 = 56;
  v6[1] = v26;
  if (v26 > 0x7F)
  {
    v6[1] = v26 | 0x80;
    v27 = v26 >> 7;
    v6[2] = v26 >> 7;
    v19 = v6 + 3;
    if (v26 >= 0x4000)
    {
      LOBYTE(v28) = v6[2];
      do
      {
        *(v19 - 1) = v28 | 0x80;
        v28 = v27 >> 7;
        *v19++ = v27 >> 7;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
    }
  }

  else
  {
    v19 = v6 + 2;
  }

LABEL_50:
  v30 = *(a1 + 56);
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v32 = *(*(a1 + 64) + 8 * j + 8);
      *v19 = 66;
      v33 = *(v32 + 20);
      v19[1] = v33;
      if (v33 > 0x7F)
      {
        v34 = sub_19575D0(v33, v19 + 1);
      }

      else
      {
        v34 = v19 + 2;
      }

      v19 = sub_1524370(v32, v34, a3);
    }
  }

  v35 = *(a1 + 80);
  if (v35 >= 1)
  {
    v36 = 8;
    do
    {
      v37 = *(*(a1 + 88) + v36);
      v38 = *(v37 + 23);
      if (v38 < 0 && (v38 = v37[1], v38 > 127) || (*a3 - v19 + 14) < v38)
      {
        v19 = sub_1957480(a3, 9, v37, v19);
      }

      else
      {
        *v19 = 74;
        v19[1] = v38;
        if (*(v37 + 23) < 0)
        {
          v37 = *v37;
        }

        v39 = v19 + 2;
        memcpy(v19 + 2, v37, v38);
        v19 = &v39[v38];
      }

      v36 += 8;
      --v35;
    }

    while (v35);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v41 = *(a1 + 136);
    *v19 = 80;
    v19[1] = v41;
    if (v41 > 0x7F)
    {
      v19[1] = v41 | 0x80;
      v42 = v41 >> 7;
      v19[2] = v41 >> 7;
      v40 = v19 + 3;
      if (v41 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v40 - 1) = v19 | 0x80;
          v19 = (v42 >> 7);
          *v40++ = v42 >> 7;
          v43 = v42 >> 14;
          v42 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v40 = v19 + 2;
    }
  }

  else
  {
    v40 = v19;
  }

  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v40;
  }

  v46 = v44 & 0xFFFFFFFFFFFFFFFCLL;
  v47 = *(v46 + 31);
  if (v47 < 0)
  {
    v48 = *(v46 + 8);
    v47 = *(v46 + 16);
  }

  else
  {
    v48 = (v46 + 8);
  }

  if ((*a3 - v40) >= v47)
  {
    v49 = v47;
    memcpy(v40, v48, v47);
    v40 += v49;
    return v40;
  }

  return sub_1957130(a3, v48, v47, v40);
}

uint64_t sub_1525584(uint64_t a1)
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
      v7 = sub_1523DA8(v6);
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
      v14 = sub_15245BC(v13);
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

  v21 = *(a1 + 16);
  if ((v21 & 0x7F) != 0)
  {
    if (v21)
    {
      v27 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v28 = *(v27 + 23);
      v29 = *(v27 + 8);
      if ((v28 & 0x80u) == 0)
      {
        v29 = v28;
      }

      v16 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v21 & 2) == 0)
      {
LABEL_23:
        if ((v21 & 4) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_38;
      }
    }

    else if ((v21 & 2) == 0)
    {
      goto LABEL_23;
    }

    v30 = sub_16E62F4(*(a1 + 104));
    v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 4) == 0)
    {
LABEL_24:
      if ((v21 & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_39;
    }

LABEL_38:
    v31 = sub_16EC25C(*(a1 + 112));
    v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 8) == 0)
    {
LABEL_25:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_40;
    }

LABEL_39:
    v32 = sub_16E51F0(*(a1 + 120));
    v16 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 0x10) == 0)
    {
LABEL_26:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }

LABEL_40:
    v16 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v21 & 0x20) == 0)
    {
LABEL_27:
      if ((v21 & 0x40) == 0)
      {
        goto LABEL_32;
      }

LABEL_28:
      v22 = *(a1 + 144);
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v22 >= 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 11;
      }

      v16 += v24;
      goto LABEL_32;
    }

LABEL_41:
    v16 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_32:
  v25 = *(a1 + 8);
  if (v25)
  {
    v33 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    v16 += v34;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_152584C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156C520((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_156C5AC((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_1201B48((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x7F) != 0)
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

        goto LABEL_35;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v24 = *(a1 + 104);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_16F58FC(v26);
      *(a1 + 104) = v24;
    }

    if (*(a2 + 104))
    {
      v27 = *(a2 + 104);
    }

    else
    {
      v27 = &off_277E650;
    }

    sub_16E645C(v24, v27);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(a1 + 16) |= 4u;
    v28 = *(a1 + 112);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_16F5DB8(v30);
      *(a1 + 112) = v28;
    }

    if (*(a2 + 112))
    {
      v31 = *(a2 + 112);
    }

    else
    {
      v31 = &off_277E820;
    }

    sub_16EC8A0(v28, v31);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_51;
    }

LABEL_43:
    *(a1 + 16) |= 8u;
    v32 = *(a1 + 120);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_16F5828(v34);
      *(a1 + 120) = v32;
    }

    if (*(a2 + 120))
    {
      v35 = *(a2 + 120);
    }

    else
    {
      v35 = &off_277E5E8;
    }

    sub_16E527C(v32, v35);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(a1 + 128) = *(a2 + 128);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
LABEL_19:
        *(a1 + 16) |= v19;
        goto LABEL_20;
      }

LABEL_18:
      *(a1 + 144) = *(a2 + 144);
      goto LABEL_19;
    }

LABEL_52:
    *(a1 + 136) = *(a2 + 136);
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1525B30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16E6614(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_16ECE70(*(a1 + 112));
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

  result = sub_16E5370(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1525BA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EC0C0;
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

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}

void sub_1525CC0(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1525D00(uint64_t a1)
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

void sub_1525DA8(uint64_t a1)
{
  sub_1525D00(a1);

  operator delete();
}

uint64_t sub_1525DE0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1526024(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_152619C(uint64_t a1)
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

void *sub_152628C(void *a1)
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

void sub_1526300(void *a1)
{
  sub_152628C(a1);

  operator delete();
}

uint64_t sub_1526338(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

char *sub_1526360(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
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
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_34;
      }

      v5 |= 4u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_33:
        v29 = v20;
        *(a1 + 36) = v19 != 0;
        goto LABEL_41;
      }

      v27 = sub_19587DC(v7, v19);
      v29 = v27;
      *(a1 + 36) = v28 != 0;
      if (!v27)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_34;
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
        v29 = v16;
        *(a1 + 40) = v17;
        goto LABEL_41;
      }

      v25 = sub_1958770(v7, v17);
      v29 = v25;
      *(a1 + 40) = v26;
      if (!v25)
      {
        goto LABEL_53;
      }
    }

LABEL_41:
    if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v5 |= 1u;
      *(a1 + 24) = *v7;
      v29 = v7 + 8;
      goto LABEL_41;
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
      v29 = sub_19587DC(v7, v13);
      if (!v29)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v14 = v7 + 2;
LABEL_17:
      v29 = v14;
    }

    if (v13 > 2)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 32) = v13;
    }

    goto LABEL_41;
  }

LABEL_34:
  if (v8)
  {
    v22 = (v8 & 7) == 4;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v7 = v29;
    }

    v29 = sub_1952690(v8, v24, v7, a3);
    if (!v29)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_1526600(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 9;
    *(__dst + 1) = v6;
    __dst += 9;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v8;
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v7 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
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
      v7 = __dst + 2;
    }
  }

  else
  {
    v7 = __dst;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 36);
    *v7 = 24;
    v7[1] = v12;
    v7 += 2;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 40);
    *v7 = 32;
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v7[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v7[2] = v14 >> 7;
      v13 = v7 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v13 - 1) = v7 | 0x80;
          LODWORD(v7) = v15 >> 7;
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
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

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v13;
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

  if ((*a3 - v13) >= v20)
  {
    v22 = v20;
    memcpy(v13, v21, v20);
    v13 += v22;
    return v13;
  }

  return sub_1957130(a3, v21, v20, v13);
}

uint64_t sub_152681C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
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
    }

    v5 = v2 + ((v1 >> 1) & 2);
    if ((v1 & 8) != 0)
    {
      v5 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v5 = 0;
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

    v5 += v9;
  }

  *(a1 + 20) = v5;
  return v5;
}

std::string *sub_15268D4(std::string *result, uint64_t a2)
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
      result[1].__r_.__value_.__s.__data_[12] = *(a2 + 36);
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

  LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
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

uint64_t sub_1526960(uint64_t a1)
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
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1526A24(uint64_t a1)
{
  sub_1526960(a1);

  operator delete();
}

uint64_t sub_1526A5C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v31, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v31 + 1);
    v7 = **v31;
    if (**v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v31 + 2);
      }
    }

    *v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4 && v7 == 34)
        {
          v15 = v6 - 1;
          while (1)
          {
            v16 = v15 + 1;
            *v31 = v15 + 1;
            v17 = *(a1 + 40);
            if (v17 && (v18 = *(a1 + 32), v18 < *v17))
            {
              *(a1 + 32) = v18 + 1;
              v19 = *&v17[2 * v18 + 2];
            }

            else
            {
              v20 = sub_16F5A54(*(a1 + 24));
              v19 = sub_19593CC(a1 + 24, v20);
              v16 = *v31;
            }

            v15 = sub_22002C0(a3, v19, v16);
            *v31 = v15;
            if (!v15)
            {
              break;
            }

            if (*a3 <= v15 || *v15 != 34)
            {
              goto LABEL_49;
            }
          }

LABEL_57:
          *v31 = 0;
          return *v31;
        }

LABEL_41:
        if (v7)
        {
          v27 = (v7 & 7) == 4;
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v31;
          }

          goto LABEL_57;
        }

        v28 = *(a1 + 8);
        if (v28)
        {
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v29 = sub_11F1920((a1 + 8));
          v6 = *v31;
        }

        v26 = sub_1952690(v7, v29, v6, a3);
        goto LABEL_48;
      }

      if (v7 != 26)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 2u;
      v24 = *(a1 + 8);
      v13 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v13 = *v13;
      }

      v14 = (a1 + 56);
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v22 = v6 + 1;
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            *v31 = sub_19587DC(v6, v21);
            if (!*v31)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v22 = v6 + 2;
LABEL_33:
            *v31 = v22;
          }

          if (v21 > 2)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v21;
          }

          continue;
        }

        goto LABEL_41;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 48);
    }

    v25 = sub_194DB04(v14, v13);
    v26 = sub_1958890(v25, *v31, a3);
LABEL_48:
    *v31 = v26;
    if (!v26)
    {
      goto LABEL_57;
    }

LABEL_49:
    ;
  }

  return *v31;
}

char *sub_1526CF4(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 3, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v6);
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
      *v6 = 34;
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

      v6 = sub_16E74A8(v13, v15, a3);
    }
  }

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

  if ((*a3 - v6) >= v19)
  {
    v21 = v19;
    memcpy(v6, v20, v19);
    v6 += v21;
    return v6;
  }

  return sub_1957130(a3, v20, v19, v6);
}

uint64_t sub_1526EF8(uint64_t a1)
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

void *sub_152708C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8540;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0x100000000;
  return result;
}

void *sub_152710C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E85C0;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_1527194(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8640;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_1527210(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E86C0;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_152728C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8740;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_1527308(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E87C0;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_1527384(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8840;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_1527400(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E88C0;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_152747C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8940;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_15274F8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E89C0;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

uint64_t sub_1527574(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8A40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  return result;
}

void *sub_15275F8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8AC0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_152767C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8B40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  return result;
}

uint64_t sub_1527700(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8BC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  return result;
}

uint64_t sub_1527784(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8C40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  return result;
}

uint64_t sub_1527808(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8CC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  return result;
}

uint64_t sub_152788C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8D40;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

double sub_1527914(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E8DC0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  return result;
}

void *sub_15279A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8E40;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_1527A30(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E8EC0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  result[10] = &qword_278E990;
  result[11] = &qword_278E990;
  return result;
}

uint64_t sub_1527ADC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8F40;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_1527B64(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E8FC0;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = a1;
  v2[7] = 0;
  v2[8] = 0;
  v2[6] = 0;
  return result;
}

uint64_t sub_1527C0C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9040;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_1527CAC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E90C0;
  *(v2 + 8) = a1;
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
  result = 0.0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0;
  return result;
}

uint64_t sub_1527D78(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E9140;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1527DF4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E91C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

double sub_1527E90(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E9240;
  *(v2 + 8) = a1;
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
  *(v2 + 160) = 0;
  result = 0.0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  return result;
}

uint64_t sub_1527F5C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E92C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_1527FE4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9340;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  result[10] = 0;
  return result;
}

double sub_1528090(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_14E628C(v2, a1, 0);
}

void *sub_15280F0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9440;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_1528174(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E94C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  return result;
}

void *sub_15281FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9540;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  return result;
}

double sub_1528284(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E95C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_1528304(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9640;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

double sub_1528388(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E96C0;
  result = 0.0;
  *(v2 + 16) = xmmword_232F5B0;
  *(v2 + 32) = 1;
  return result;
}

uint64_t sub_1528410(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E9740;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_152848C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E97C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

void *sub_1528528(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9840;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_15285A4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E98C0;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = a1;
  return result;
}

double sub_1528644(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E9940;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_15286C4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E99C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_1528744(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9A40;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_15287EC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E9AC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

void *sub_15288A0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9B40;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_152891C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E9BC0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  return result;
}

void *sub_15289A4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9C40;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_1528A2C(uint64_t *a1)
{
  if (!a1)
  {

    sub_156C638();
  }

  *result = &off_26E9CC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  return result;
}

void *sub_1528AA8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9D40;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = a1;
  result[10] = 0;
  result[11] = 0;
  result[12] = &qword_278E990;
  result[13] = &qword_278E990;
  result[14] = 0;
  result[15] = 0;
  *(result + 125) = 0;
  return result;
}

double sub_1528B68(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E9DC0;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = 0;
  return result;
}

void *sub_1528C00(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9E40;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_1528C84(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E9EC0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  *(result + 44) = 1;
  return result;
}

uint64_t sub_1528D14(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9F40;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = &qword_278E990;
  *(result + 72) = &qword_278E990;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  return result;
}

uint64_t sub_1528DCC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9FC0;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1528E80(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA040;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 1;
  return result;
}

void *sub_1528F34(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EA0C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

double sub_1528FB8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26EA140;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 1;
  return result;
}

void *sub_152903C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EA1C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_15290C0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA240;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = a1;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = a1;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 272) = 1;
  return result;
}

uint64_t sub_15291A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EA2C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1529230(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EA340;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

void *sub_15292B8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA3C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = 0;
  return result;
}

uint64_t sub_1529368(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA440;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

double sub_1529410(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26EA4C0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  return result;
}

uint64_t sub_15294BC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA540;
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

void *sub_1529564(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA5C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = a1;
  result[10] = 0;
  result[11] = 0;
  result[12] = &qword_278E990;
  result[13] = &qword_278E990;
  result[15] = 0;
  result[16] = 0;
  result[14] = 0;
  return result;
}

uint64_t sub_1529624(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EA640;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 58) = 0;
  return result;
}

void *sub_15296D0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EA6C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  return result;
}

void *sub_1529780(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EA740;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  return result;
}

uint64_t sub_152980C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EA7C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = &qword_278E990;
  *(result + 96) = 0;
  *(result + 102) = 0;
  *(result + 112) = -9;
  return result;
}

uint64_t sub_15298CC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26EA840;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_1529948(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EA8C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = 0;
  return result;
}