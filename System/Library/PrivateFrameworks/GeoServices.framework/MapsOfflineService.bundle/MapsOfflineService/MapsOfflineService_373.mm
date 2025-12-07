char *sub_15161F8(uint64_t a1, char *__dst, unint64_t *a3)
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

    v6 = sub_15544E4(v11, v13, a3);
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

uint64_t sub_1516384(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1554640(*(a1 + 24));
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

std::string *sub_1516440(std::string *result, uint64_t a2)
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

        sub_155A500(v7);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2777198;
      }

      result = sub_14F406C(data, v8);
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

void *sub_1516528(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_26EB6C0;
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
  if ((v4 & 4) != 0)
  {
    operator new();
  }

  a1[5] = 0;
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  a1[6] = 0;
  if ((v4 & 0x10) != 0)
  {
    operator new();
  }

  a1[7] = 0;
  v6 = *(a2 + 64);
  *(a1 + 69) = *(a2 + 69);
  a1[8] = v6;
  return a1;
}

uint64_t (***sub_1516738(uint64_t (***a1)(void)))(void)
{
  v3 = (a1 + 1);
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

  sub_15167BC(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_15167BC(uint64_t (***result)(void)))(void)
{
  if (result != &off_2775C78)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_1515A14(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_1515A14(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_1515ED0(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_1515A14(v5);
      operator delete();
    }

    result = v1[7];
    if (result)
    {
      sub_1515A14(result);

      operator delete();
    }
  }

  return result;
}

void sub_1516888(uint64_t (***a1)(void))
{
  sub_1516738(a1);

  operator delete();
}

char *sub_15168C0(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 4)
    {
      if (v8 >> 3 > 6)
      {
        if (v11 == 7)
        {
          if (v8 == 58)
          {
            *(a1 + 16) |= 8u;
            v16 = *(a1 + 48);
            if (!v16)
            {
              v30 = *(a1 + 8);
              v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
              if (v30)
              {
                v31 = *v31;
              }

              v16 = sub_152A7C8(v31);
              *(a1 + 48) = v16;
              goto LABEL_70;
            }

            goto LABEL_71;
          }

          goto LABEL_75;
        }

        if (v11 == 8)
        {
          if (v8 == 66)
          {
            *(a1 + 16) |= 0x10u;
            v16 = *(a1 + 56);
            if (!v16)
            {
              v36 = *(a1 + 8);
              v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
              if (v36)
              {
                v37 = *v37;
              }

              v16 = sub_152A7C8(v37);
              *(a1 + 56) = v16;
              goto LABEL_70;
            }

            goto LABEL_71;
          }

          goto LABEL_75;
        }

        if (v11 != 9 || v8 != 72)
        {
          goto LABEL_75;
        }

        v5 |= 0x100u;
        v13 = v7 + 1;
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = v7 + 2;
LABEL_16:
          v47 = v13;
          *(a1 + 76) = v12 != 0;
          goto LABEL_73;
        }

        v45 = sub_19587DC(v7, v12);
        v47 = v45;
        *(a1 + 76) = v46 != 0;
        if (!v45)
        {
          goto LABEL_94;
        }

        goto LABEL_73;
      }

      if (v11 == 5)
      {
        if (v8 == 42)
        {
          *(a1 + 16) |= 4u;
          v32 = *(a1 + 40);
          if (!v32)
          {
            v33 = *(a1 + 8);
            v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
            if (v33)
            {
              v34 = *v34;
            }

            v32 = sub_152A844(v34);
            *(a1 + 40) = v32;
            v7 = v47;
          }

          v35 = sub_2219588(a3, v32, v7);
          goto LABEL_72;
        }

        goto LABEL_75;
      }

      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_75;
      }

      v22 = v7 + 1;
      v21 = *v7;
      if (v21 < 0)
      {
        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          v47 = sub_19587DC(v7, v21);
          if (!v47)
          {
            goto LABEL_94;
          }

          goto LABEL_42;
        }

        v22 = v7 + 2;
      }

      v47 = v22;
LABEL_42:
      if (v21 > 4)
      {
        sub_12E84C8();
      }

      else
      {
        *(a1 + 16) |= 0x80u;
        *(a1 + 72) = v21;
      }

      goto LABEL_73;
    }

    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 18)
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

          v16 = sub_152A7C8(v18);
          *(a1 + 24) = v16;
          goto LABEL_70;
        }

        goto LABEL_71;
      }

      goto LABEL_75;
    }

    if (v8 != 8)
    {
      goto LABEL_75;
    }

    v5 |= 0x20u;
    v24 = v7 + 1;
    v25 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v26 = *v24;
    v25 = v25 + (v26 << 7) - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_48:
      v47 = v24;
      *(a1 + 64) = v25;
      goto LABEL_73;
    }

    v41 = sub_1958770(v7, v25);
    v47 = v41;
    *(a1 + 64) = v42;
    if (!v41)
    {
      goto LABEL_94;
    }

LABEL_73:
    if (sub_195ADC0(a3, &v47, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_75;
    }

    v5 |= 0x40u;
    v27 = v7 + 1;
    v28 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    v29 = *v27;
    v28 = v28 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_53:
      v47 = v27;
      *(a1 + 68) = v28;
      goto LABEL_73;
    }

    v43 = sub_1958770(v7, v28);
    v47 = v43;
    *(a1 + 68) = v44;
    if (!v43)
    {
      goto LABEL_94;
    }

    goto LABEL_73;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 2u;
    v16 = *(a1 + 32);
    if (!v16)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v16 = sub_152A7C8(v20);
      *(a1 + 32) = v16;
LABEL_70:
      v7 = v47;
    }

LABEL_71:
    v35 = sub_22194F8(a3, v16, v7);
LABEL_72:
    v47 = v35;
    if (!v35)
    {
      goto LABEL_94;
    }

    goto LABEL_73;
  }

LABEL_75:
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

    v35 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_72;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_94:
  v47 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v47;
}

char *sub_1516D40(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
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
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
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

    v6 = sub_1515C48(v11, v13, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 68);
    *v6 = 24;
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
          LODWORD(v6) = v16 >> 7;
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

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_28;
    }

LABEL_36:
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v22 = *(a1 + 40);
    *v14 = 42;
    v23 = *(v22 + 20);
    v14[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v14 + 1);
    }

    else
    {
      v24 = v14 + 2;
    }

    v14 = sub_15161F8(v22, v24, a3);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_42;
  }

  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v19 = *(a1 + 32);
  *v14 = 34;
  v20 = *(v19 + 20);
  v14[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v14 + 1);
  }

  else
  {
    v21 = v14 + 2;
  }

  v14 = sub_1515C48(v19, v21, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  if ((v5 & 0x80) == 0)
  {
LABEL_29:
    v18 = v14;
    goto LABEL_49;
  }

LABEL_42:
  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v25 = *(a1 + 72);
  *v14 = 48;
  v14[1] = v25;
  if (v25 > 0x7F)
  {
    v14[1] = v25 | 0x80;
    v26 = v25 >> 7;
    v14[2] = v25 >> 7;
    v18 = v14 + 3;
    if (v25 >= 0x4000)
    {
      LOBYTE(v14) = v14[2];
      do
      {
        *(v18 - 1) = v14 | 0x80;
        v14 = (v26 >> 7);
        *v18++ = v26 >> 7;
        v27 = v26 >> 14;
        v26 >>= 7;
      }

      while (v27);
    }
  }

  else
  {
    v18 = v14 + 2;
  }

LABEL_49:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v28 = *(a1 + 48);
    *v18 = 58;
    v29 = *(v28 + 20);
    v18[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v18 + 1);
    }

    else
    {
      v30 = v18 + 2;
    }

    v18 = sub_1515C48(v28, v30, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_51:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_65;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_51;
  }

  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v31 = *(a1 + 56);
  *v18 = 66;
  v32 = *(v31 + 20);
  v18[1] = v32;
  if (v32 > 0x7F)
  {
    v33 = sub_19575D0(v32, v18 + 1);
  }

  else
  {
    v33 = v18 + 2;
  }

  v18 = sub_1515C48(v31, v33, a3);
  if ((v5 & 0x100) != 0)
  {
LABEL_65:
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v34 = *(a1 + 76);
    *v18 = 72;
    v18[1] = v34;
    v18 += 2;
  }

LABEL_68:
  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v18;
  }

  v37 = v35 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = *(v37 + 31);
  if (v38 < 0)
  {
    v39 = *(v37 + 8);
    v38 = *(v37 + 16);
  }

  else
  {
    v39 = (v37 + 8);
  }

  if ((*a3 - v18) >= v38)
  {
    v40 = v38;
    memcpy(v18, v39, v38);
    v18 += v40;
    return v18;
  }

  return sub_1957130(a3, v39, v38, v18);
}

unint64_t sub_15171C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (v2)
  {
    v4 = sub_1515D60(*(a1 + 24));
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
    v5 = sub_1515D60(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_1516384(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v7 = sub_1515D60(*(a1 + 48));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = sub_1515D60(*(a1 + 56));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_18:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_19:
  v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v9 = *(a1 + 72);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v10;
LABEL_24:
  result = v3 + ((v2 >> 7) & 2);
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

void *sub_15173E0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 12));
  sub_1569478(a1 + 9);
  sub_1347AB0(a1 + 6);
  sub_1347AB0(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1517480(void *a1)
{
  sub_15173E0(a1);

  operator delete();
}

uint64_t sub_15174B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14D9150(v4);
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
      result = sub_14D9150(v7);
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
      result = sub_17CBC84(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  *(v1 + 96) = 0;
  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 116) = 0;
    *(v1 + 112) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

char *sub_15175A0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v54, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v54 + 1;
    v8 = *v54;
    if (*v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v54 + 2;
      }
    }

    v54 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          if (v8 == 18)
          {
            v40 = v7 - 1;
            while (1)
            {
              v41 = v40 + 1;
              v54 = v40 + 1;
              v42 = *(a1 + 40);
              if (v42 && (v43 = *(a1 + 32), v43 < *v42))
              {
                *(a1 + 32) = v43 + 1;
                v44 = *&v42[2 * v43 + 2];
              }

              else
              {
                v45 = sub_152710C(*(a1 + 24));
                v44 = sub_19593CC(a1 + 24, v45);
                v41 = v54;
              }

              v40 = sub_21FCB20(a3, v44, v41);
              v54 = v40;
              if (!v40)
              {
                goto LABEL_102;
              }

              if (*a3 <= v40 || *v40 != 18)
              {
                goto LABEL_96;
              }
            }
          }
        }

        else if (v11 == 3 && v8 == 26)
        {
          v16 = v7 - 1;
          while (1)
          {
            v17 = v16 + 1;
            v54 = v16 + 1;
            v18 = *(a1 + 64);
            if (v18 && (v19 = *(a1 + 56), v19 < *v18))
            {
              *(a1 + 56) = v19 + 1;
              v20 = *&v18[2 * v19 + 2];
            }

            else
            {
              v21 = sub_152710C(*(a1 + 48));
              v20 = sub_19593CC(a1 + 48, v21);
              v17 = v54;
            }

            v16 = sub_21FCB20(a3, v20, v17);
            v54 = v16;
            if (!v16)
            {
              goto LABEL_102;
            }

            if (*a3 <= v16 || *v16 != 26)
            {
              goto LABEL_96;
            }
          }
        }

        goto LABEL_88;
      }

      if (v8 != 8)
      {
        goto LABEL_88;
      }

      v29 = v7 + 1;
      v28 = *v7;
      if (v28 < 0)
      {
        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if (v30 < 0)
        {
          v54 = sub_19587DC(v7, v28);
          if (!v54)
          {
            goto LABEL_102;
          }

          goto LABEL_53;
        }

        v29 = v7 + 2;
      }

      v54 = v29;
LABEL_53:
      if (v28 > 2)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 112) = v28;
      }

      goto LABEL_96;
    }

    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 == 34)
      {
        v31 = v7 - 1;
        while (1)
        {
          v32 = v31 + 1;
          v54 = v31 + 1;
          v33 = *(a1 + 88);
          if (v33 && (v34 = *(a1 + 80), v34 < *v33))
          {
            *(a1 + 80) = v34 + 1;
            v35 = *&v33[2 * v34 + 2];
          }

          else
          {
            v36 = sub_18600A8(*(a1 + 72));
            v35 = sub_19593CC(a1 + 72, v36);
            v32 = v54;
          }

          v31 = sub_2217B18(a3, v35, v32);
          v54 = v31;
          if (!v31)
          {
            goto LABEL_102;
          }

          if (*a3 <= v31 || *v31 != 34)
          {
            goto LABEL_96;
          }
        }
      }

      goto LABEL_88;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_88;
    }

    v5 |= 2u;
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
      v54 = v13;
      *(a1 + 116) = v12 != 0;
      goto LABEL_96;
    }

    v48 = sub_19587DC(v7, v12);
    v54 = v48;
    *(a1 + 116) = v49 != 0;
    if (!v48)
    {
      goto LABEL_102;
    }

LABEL_96:
    if (sub_195ADC0(a3, &v54, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_88;
    }

    v5 |= 4u;
    v38 = v7 + 1;
    v37 = *v7;
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_69;
    }

    v39 = *v38;
    v37 = (v39 << 7) + v37 - 128;
    if ((v39 & 0x80000000) == 0)
    {
      v38 = v7 + 2;
LABEL_69:
      v54 = v38;
      *(a1 + 117) = v37 != 0;
      goto LABEL_96;
    }

    v46 = sub_19587DC(v7, v37);
    v54 = v46;
    *(a1 + 117) = v47 != 0;
    if (!v46)
    {
      goto LABEL_102;
    }

    goto LABEL_96;
  }

  if (v11 == 7)
  {
    if (v8 == 56)
    {
      v22 = v7 - 1;
      while (1)
      {
        v54 = v22 + 1;
        v23 = v22[1];
        if (v23 < 0)
        {
          v24 = (v22[2] << 7) + v23;
          v23 = (v24 - 128);
          if (v22[2] < 0)
          {
            v22 = sub_19587DC((v22 + 1), (v24 - 128));
            v23 = v25;
          }

          else
          {
            v22 += 3;
          }
        }

        else
        {
          v22 += 2;
        }

        v54 = v22;
        v26 = *(a1 + 96);
        if (v26 == *(a1 + 100))
        {
          v27 = v26 + 1;
          sub_1959094((a1 + 96), v26 + 1);
          *(*(a1 + 104) + 8 * v26) = v23;
          v22 = v54;
        }

        else
        {
          *(*(a1 + 104) + 8 * v26) = v23;
          v27 = v26 + 1;
        }

        *(a1 + 96) = v27;
        if (!v22)
        {
          goto LABEL_102;
        }

        if (*a3 <= v22 || *v22 != 56)
        {
          goto LABEL_96;
        }
      }
    }

    if (v8 == 58)
    {
      v50 = sub_1958938((a1 + 96), v7, a3);
      goto LABEL_95;
    }
  }

LABEL_88:
  if (v8)
  {
    v51 = (v8 & 7) == 4;
  }

  else
  {
    v51 = 1;
  }

  if (!v51)
  {
    v52 = *(a1 + 8);
    if (v52)
    {
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v53 = sub_11F1920((a1 + 8));
      v7 = v54;
    }

    v50 = sub_1952690(v8, v53, v7, a3);
LABEL_95:
    v54 = v50;
    if (!v50)
    {
      goto LABEL_102;
    }

    goto LABEL_96;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_102:
  v54 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

char *sub_1517AD4(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 112);
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

      v6 = sub_14D9394(v13, v15, a3);
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v18 = *(*(a1 + 64) + 8 * j + 8);
      *v6 = 26;
      v19 = *(v18 + 20);
      v6[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, v6 + 1);
      }

      else
      {
        v20 = v6 + 2;
      }

      v6 = sub_14D9394(v18, v20, a3);
    }
  }

  v21 = *(a1 + 80);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v23 = *(*(a1 + 88) + 8 * k + 8);
      *v6 = 34;
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

      v6 = sub_17CC1E4(v23, v25, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v26 = *(a1 + 116);
    *v6 = 40;
    v6[1] = v26;
    v6 += 2;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v27 = *(a1 + 117);
    *v6 = 48;
    v6[1] = v27;
    v6 += 2;
  }

  v28 = *(a1 + 96);
  if (v28 < 1)
  {
    v31 = v6;
  }

  else
  {
    for (m = 0; m != v28; ++m)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v30 = *(*(a1 + 104) + 8 * m);
      *v6 = 56;
      v6[1] = v30;
      if (v30 > 0x7F)
      {
        v6[1] = v30 | 0x80;
        v32 = v30 >> 7;
        v6[2] = v30 >> 7;
        v31 = v6 + 3;
        if (v30 >= 0x4000)
        {
          LOBYTE(v6) = v6[2];
          do
          {
            *(v31 - 1) = v6 | 0x80;
            v6 = (v32 >> 7);
            *v31++ = v32 >> 7;
            v33 = v32 >> 14;
            v32 >>= 7;
          }

          while (v33);
        }
      }

      else
      {
        v31 = v6 + 2;
      }

      v6 = v31;
    }
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v31;
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

  if ((*a3 - v31) >= v37)
  {
    v39 = v37;
    memcpy(v31, v38, v37);
    v31 += v39;
    return v31;
  }

  return sub_1957130(a3, v38, v37, v31);
}

uint64_t sub_1517EB8(uint64_t a1)
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
      v7 = sub_14D9520(v6);
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
      v14 = sub_14D9520(v13);
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
      v21 = sub_17CC490(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  result = sub_1959F14((a1 + 96)) + *(a1 + 96) + v16;
  v23 = *(a1 + 16);
  if ((v23 & 7) != 0)
  {
    if (v23)
    {
      v24 = *(a1 + 112);
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 11;
      }

      result += v26;
    }

    result += ((*(a1 + 16) >> 1) & 2) + (*(a1 + 16) & 2u);
  }

  v27 = *(a1 + 8);
  if (v27)
  {
    v28 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v27 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    result += v29;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_1518064(char *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 24), *(a2 + 32));
    sub_13486C4(result + 3, v6, (v5 + 8), v4, **(result + 5) - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = *(result + 5);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8((result + 48), *(a2 + 56));
    sub_13486C4(result + 6, v11, (v10 + 8), v9, **(result + 8) - *(result + 14));
    v12 = *(result + 14) + v9;
    *(result + 14) = v12;
    v13 = *(result + 8);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8((result + 72), *(a2 + 80));
    sub_156B328(result + 9, v16, (v15 + 8), v14, **(result + 11) - *(result + 20));
    v17 = *(result + 20) + v14;
    *(result + 20) = v17;
    v18 = *(result + 11);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(result + 24);
    sub_1959094(result + 24, v20 + v19);
    v21 = *(result + 13);
    *(result + 24) += *(a2 + 96);
    memcpy((v21 + 8 * v20), *(a2 + 104), 8 * *(a2 + 96));
  }

  v22 = *(a2 + 16);
  if ((v22 & 7) != 0)
  {
    if (v22)
    {
      *(result + 28) = *(a2 + 112);
      if ((v22 & 2) == 0)
      {
LABEL_15:
        if ((v22 & 4) == 0)
        {
LABEL_17:
          *(result + 4) |= v22;
          goto LABEL_18;
        }

LABEL_16:
        result[117] = *(a2 + 117);
        goto LABEL_17;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_15;
    }

    result[116] = *(a2 + 116);
    if ((v22 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4(result + 1, (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1518264(uint64_t a1)
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
    v5 = sub_17CC8D8(*(*(a1 + 88) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_15182CC(uint64_t a1)
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

  if (a1 != &off_2775D40)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_15173E0(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15173E0(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_15173E0(v7);
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

void sub_15183B0(uint64_t a1)
{
  sub_15182CC(a1);

  operator delete();
}

uint64_t sub_15183E8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      result = sub_15174B8(*(result + 24));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
LABEL_6:
          *(v1 + 48) = 1;
          goto LABEL_7;
        }

LABEL_5:
        result = sub_15174B8(*(v1 + 40));
        goto LABEL_6;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_15174B8(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
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

char *sub_1518478(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v30, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v30 + 1;
    v7 = *v30;
    if (*v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v30 + 2;
      }
    }

    v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4 && v7 == 32)
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
            v30 = sub_19587DC(v6, v16);
            if (!v30)
            {
              return 0;
            }
          }

          else
          {
            v17 = v6 + 2;
LABEL_24:
            v30 = v17;
          }

          if ((v16 - 1) > 8)
          {
            sub_12E8500();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 48) = v16;
          }

          continue;
        }

LABEL_39:
        if (v7)
        {
          v26 = (v7 & 7) == 4;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return v30;
          }

          return 0;
        }

        v27 = *(a1 + 8);
        if (v27)
        {
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v28 = sub_11F1920((a1 + 8));
          v6 = v30;
        }

        v25 = sub_1952690(v7, v28, v6, a3);
        goto LABEL_46;
      }

      if (v7 != 26)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        sub_152A944(v23);
        v12 = v24;
        *(a1 + 40) = v24;
        goto LABEL_37;
      }
    }

    else if (v10 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 24);
      if (!v12)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_152A944(v20);
        v12 = v21;
        *(a1 + 24) = v21;
        goto LABEL_37;
      }
    }

    else
    {
      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        sub_152A944(v14);
        v12 = v15;
        *(a1 + 32) = v15;
LABEL_37:
        v6 = v30;
      }
    }

    v25 = sub_2219618(a3, v12, v6);
LABEL_46:
    v30 = v25;
    if (!v25)
    {
      return 0;
    }
  }

  return v30;
}

char *sub_15186E8(uint64_t a1, char *__dst, unint64_t *a3)
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
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_1517AD4(v8, v10, a3);
    if ((v6 & 2) == 0)
    {
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

      v14 = *(a1 + 40);
      *v4 = 26;
      v15 = *(v14 + 20);
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v4 + 1);
      }

      else
      {
        v16 = v4 + 2;
      }

      v4 = sub_1517AD4(v14, v16, a3);
      if ((v6 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
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
  v4[1] = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, v4 + 1);
  }

  else
  {
    v13 = v4 + 2;
  }

  v4 = sub_1517AD4(v11, v13, a3);
  if ((v6 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 48);
  *v4 = 32;
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    v4[2] = v17 >> 7;
    v7 = v4 + 3;
    if (v17 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v18 >> 7);
        *v7++ = v18 >> 7;
        v19 = v18 >> 14;
        v18 >>= 7;
      }

      while (v19);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_31:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v23)
  {
    v25 = v23;
    memcpy(v7, v24, v23);
    v7 += v25;
    return v7;
  }

  return sub_1957130(a3, v24, v23, v7);
}

uint64_t sub_1518950(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_1517EB8(*(a1 + 24));
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
    v5 = sub_1517EB8(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_1517EB8(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v7 = *(a1 + 48);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v8;
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

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1518A8C(char *result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      *(result + 4) |= 1u;
      v6 = *(result + 3);
      if (!v6)
      {
        v7 = *(result + 1);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        sub_152A944(v8);
        *(result + 3) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2775CC8;
      }

      sub_1518064(v6, v9);
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
    v10 = *(result + 4);
    if (!v10)
    {
      v11 = *(result + 1);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_152A944(v12);
      *(result + 4) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2775CC8;
    }

    sub_1518064(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(result + 4) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(result + 12) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_28:
    *(result + 4) |= 4u;
    v14 = *(result + 5);
    if (!v14)
    {
      v15 = *(result + 1);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_152A944(v16);
      *(result + 5) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_2775CC8;
    }

    sub_1518064(v14, v17);
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

    sub_1957EF4(result + 1, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1518BF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(v3 + 80);
    do
    {
      if (v4 < 1)
      {
        v2 = *(a1 + 16);
        goto LABEL_7;
      }

      v5 = v4 - 1;
      v6 = sub_17CC8D8(*(*(v3 + 88) + 8 * v4));
      v4 = v5;
    }

    while ((v6 & 1) != 0);
    return 0;
  }

  else
  {
LABEL_7:
    if ((v2 & 2) != 0)
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 80);
      while (v8 >= 1)
      {
        v9 = v8 - 1;
        v10 = sub_17CC8D8(*(*(v7 + 88) + 8 * v8));
        v8 = v9;
        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      v2 = *(a1 + 16);
    }

    if ((v2 & 4) != 0)
    {
      v12 = *(a1 + 40);
      v13 = *(v12 + 80);
      do
      {
        v11 = v13 < 1;
        if (v13 < 1)
        {
          break;
        }

        v14 = v13 - 1;
        v15 = sub_17CC8D8(*(*(v12 + 88) + 8 * v13));
        v13 = v14;
      }

      while ((v15 & 1) != 0);
    }

    else
    {
      return 1;
    }
  }

  return v11;
}

uint64_t sub_1518CD8(uint64_t a1)
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
  if (a1 != &off_2775D78)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15182CC(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15693F4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1518D9C(uint64_t a1)
{
  sub_1518CD8(a1);

  operator delete();
}

uint64_t sub_1518DD4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1519CC0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_15183E8(*(v1 + 48));
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

char *sub_1518E68(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v8 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 48);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        sub_152AA00(v25);
        v23 = v26;
        *(a1 + 48) = v26;
        v7 = v32;
      }

      v16 = sub_22196A8(a3, v23, v7);
LABEL_36:
      v32 = v16;
      if (!v16)
      {
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v28 = v7 + 1;
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_41:
      v32 = v28;
      *(a1 + 56) = v27;
      goto LABEL_42;
    }

    v30 = sub_19587DC(v7, v27);
    v32 = v30;
    *(a1 + 56) = v31;
    if (!v30)
    {
      goto LABEL_49;
    }

LABEL_42:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    v17 = v7 - 1;
    while (1)
    {
      v18 = v17 + 1;
      v32 = v17 + 1;
      v19 = *(a1 + 40);
      if (v19 && (v20 = *(a1 + 32), v20 < *v19))
      {
        *(a1 + 32) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = sub_152AB9C(*(a1 + 24));
        v21 = sub_19593CC(a1 + 24, v22);
        v18 = v32;
      }

      v17 = sub_2217A88(a3, v21, v18);
      v32 = v17;
      if (!v17)
      {
        goto LABEL_49;
      }

      if (*a3 <= v17 || *v17 != 18)
      {
        goto LABEL_42;
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

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_36;
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

char *sub_15190D4(uint64_t a1, char *__dst, unint64_t *a3)
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

      v6 = sub_151A08C(v13, v15, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 48);
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

    v6 = sub_15186E8(v16, v18, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v22)
  {
    v24 = v22;
    memcpy(v6, v23, v22);
    v6 += v24;
    return v6;
  }

  return sub_1957130(a3, v23, v22, v6);
}

uint64_t sub_15192FC(uint64_t a1)
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
      v7 = sub_151A33C(v6);
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
      v9 = sub_1518950(*(a1 + 48));
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

void sub_1519404(char *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 24), *(a2 + 32));
    sub_156B29C(result + 3, v6, (v5 + 8), v4, **(result + 5) - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = *(result + 5);
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
      v10 = *(result + 6);
      if (!v10)
      {
        v11 = *(result + 1);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_152AA00(v12);
        *(result + 6) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_2775D40;
      }

      sub_1518A8C(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 7) = *(a2 + 56);
    }

    *(result + 4) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4(result + 1, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1519530(uint64_t a1)
{
  v1 = *(a1 + 32);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 40) + 8 * v1--);
    if ((*(v2 + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_1518BF4(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1519594(void *a1)
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

void sub_1519608(void *a1)
{
  sub_1519594(a1);

  operator delete();
}

uint64_t sub_1519640(uint64_t a1)
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

char *sub_1519668(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_15198B0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1519AE8(uint64_t a1)
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

uint64_t sub_1519BC4(uint64_t a1)
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
  if (a1 != &off_2775DE0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1519594(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1347AB0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1519C88(uint64_t a1)
{
  sub_1519BC4(a1);

  operator delete();
}

uint64_t sub_1519CC0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14D9150(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    result = sub_1519640(*(v1 + 48));
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
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

char *sub_1519D64(uint64_t a1, char *a2, int32x2_t *a3)
{
  v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v38, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v38 + 1;
    v8 = *v38;
    if (*v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v38 + 2;
      }
    }

    v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v11 != 5)
      {
        if (v11 == 6 && v8 == 50)
        {
          v17 = v7 - 1;
          while (1)
          {
            v18 = v17 + 1;
            v38 = v17 + 1;
            v19 = *(a1 + 40);
            if (v19 && (v20 = *(a1 + 32), v20 < *v19))
            {
              *(a1 + 32) = v20 + 1;
              v21 = *&v19[2 * v20 + 2];
            }

            else
            {
              v22 = sub_152710C(*(a1 + 24));
              v21 = sub_19593CC(a1 + 24, v22);
              v18 = v38;
            }

            v17 = sub_21FCB20(a3, v21, v18);
            v38 = v17;
            if (!v17)
            {
              goto LABEL_65;
            }

            if (*a3 <= v17 || *v17 != 50)
            {
              goto LABEL_52;
            }
          }
        }

        goto LABEL_44;
      }

      if (v8 != 42)
      {
        goto LABEL_44;
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

        v26 = sub_152AB20(v28);
        *(a1 + 48) = v26;
        v7 = v38;
      }

      v29 = sub_2219738(a3, v26, v7);
LABEL_51:
      v38 = v29;
      if (!v29)
      {
        goto LABEL_65;
      }

      goto LABEL_52;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_44;
    }

    v5 |= 2u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_37:
      v38 = v24;
      *(a1 + 56) = v23;
      goto LABEL_52;
    }

    v36 = sub_19587DC(v7, v23);
    v38 = v36;
    *(a1 + 56) = v37;
    if (!v36)
    {
      goto LABEL_65;
    }

LABEL_52:
    if (sub_195ADC0(a3, &v38, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 32)
  {
    v12 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = *v12;
      v15 = (v14 << 7) + v13;
      v13 = (v15 - 128);
      if (v14 < 0)
      {
        v38 = sub_19587DC(v7, (v15 - 128));
        if (!v38)
        {
          goto LABEL_65;
        }

        v13 = v35;
        goto LABEL_15;
      }

      v12 = v7 + 2;
    }

    v38 = v12;
LABEL_15:
    if ((v13 - 3) < 4 || v13 == 1)
    {
      *(a1 + 16) |= 4u;
      *(a1 + 64) = v13;
    }

    else
    {
      v33 = *(a1 + 8);
      if (v33)
      {
        v34 = ((v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v34 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(4, v13, v34);
    }

    goto LABEL_52;
  }

LABEL_44:
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
      v7 = v38;
    }

    v29 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_51;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_65:
  v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

char *sub_151A08C(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 64);
    *v6 = 32;
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

    v15 = *(a1 + 48);
    *v11 = 42;
    v16 = *(v15 + 20);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_15198B0(v15, v17, a3);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v20 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 50;
      v21 = *(v20 + 20);
      v11[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v11 + 1);
      }

      else
      {
        v22 = v11 + 2;
      }

      v11 = sub_14D9394(v20, v22, a3);
    }
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v26)
  {
    v28 = v26;
    memcpy(v11, v27, v26);
    v11 += v28;
    return v11;
  }

  return sub_1957130(a3, v27, v26, v11);
}

uint64_t sub_151A33C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v3 = ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v3 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_14D9520(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v11 = sub_1519AE8(*(a1 + 48));
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 4) != 0)
  {
    v12 = *(a1 + 64);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v13;
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

    v5 += v17;
  }

  *(a1 + 20) = v5;
  return v5;
}

void sub_151A478(char *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 24), *(a2 + 32));
    sub_13486C4(result + 3, v6, (v5 + 8), v4, **(result + 5) - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = *(result + 5);
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
      v11 = *(result + 6);
      if (!v11)
      {
        v12 = *(result + 1);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_152AB20(v13);
        *(result + 6) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_2775DB8;
      }

      sub_128F948(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(result + 4) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(result + 16) = *(a2 + 64);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(result + 7) = *(a2 + 56);
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

    sub_1957EF4(result + 1, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_151A5D8(void *a1)
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

void sub_151A64C(void *a1)
{
  sub_151A5D8(a1);

  operator delete();
}

uint64_t sub_151A684(uint64_t a1)
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

char *sub_151A6B0(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_151AB04(uint64_t a1, char *__dst, unint64_t *a3)
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

unint64_t sub_151AFD8(uint64_t a1)
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

void *sub_151B18C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_156A1E0(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151B20C(void *a1)
{
  sub_151B18C(a1);

  operator delete();
}

uint64_t sub_151B244(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_151A684(v4);
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

char *sub_151B2C0(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_152AC40(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_22197C8(a3, v16, v13);
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

char *sub_151B450(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_151AB04(v8, v10, a3);
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

uint64_t sub_151B590(uint64_t a1)
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
      v7 = sub_151AFD8(v6);
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

void sub_151B638(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_156C100((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

uint64_t sub_151B70C(uint64_t a1)
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151B800(uint64_t a1)
{
  sub_151B70C(a1);

  operator delete();
}

uint64_t sub_151B838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    goto LABEL_27;
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
        goto LABEL_12;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_27;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_12:
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  if ((v1 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_20:
  v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v8 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v8)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_151B958(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v18 = *(a1 + 8);
          v12 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v12 = *v12;
          }

          v13 = (a1 + 24);
          goto LABEL_36;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v12 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v12 = *v12;
        }

        v13 = (a1 + 32);
        goto LABEL_36;
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v12 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v12 = *v12;
        }

        v13 = (a1 + 40);
        goto LABEL_36;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v17 = *(a1 + 8);
        v12 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_36;
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      *(a1 + 16) |= 0x10u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 56);
LABEL_36:
      v19 = sub_194DB04(v13, v12);
      v20 = sub_1958890(v19, *v25, a3);
      goto LABEL_37;
    }

    if (v7)
    {
      v21 = (v7 & 7) == 4;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v25;
      }

LABEL_50:
      *v25 = 0;
      return *v25;
    }

    v22 = *(a1 + 8);
    if (v22)
    {
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v23 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v20 = sub_1952690(v7, v23, v6, a3);
LABEL_37:
    *v25 = v20;
    if (!v20)
    {
      goto LABEL_50;
    }
  }

  return *v25;
}

char *sub_151BB94(uint64_t a1, char *__dst, unint64_t *a3)
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
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    v4 = sub_128AEEC(a3, 5, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_7:
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

uint64_t sub_151BCF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_18;
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
    v14 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v17 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_15:
    v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v12 = *(a1 + 8);
  if (v12)
  {
    v20 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v2 += v21;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_151BEB4(uint64_t a1)
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

void sub_151BF80(uint64_t a1)
{
  sub_151BEB4(a1);

  operator delete();
}

uint64_t sub_151BFB8(uint64_t a1)
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

uint64_t sub_151C070(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 9)
    {
      if (v7 == 74)
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

    else if (v10 == 4)
    {
      if (v7 == 34)
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

    else if (v10 == 2 && v7 == 18)
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

char *sub_151C22C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
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

  v4 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 9, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
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

uint64_t sub_151C340(uint64_t a1)
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

uint64_t sub_151C470(uint64_t a1)
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

  if (a1 != &off_2775E58)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      sub_14F6D94(v5);
      operator delete();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      sub_14F8E00(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_156A264((a1 + 72));
  sub_13B31E8((a1 + 48));
  sub_1569370((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151C564(uint64_t a1)
{
  sub_151C470(a1);

  operator delete();
}

uint64_t sub_151C59C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14F5244(v4);
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
      result = sub_16E72AC(v7);
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
      result = sub_151B838(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      result = sub_14F6E84(*(v1 + 96));
    }

    if ((v11 & 2) != 0)
    {
      result = sub_14F8F50(*(v1 + 104));
    }
  }

  if ((v11 & 0x1C) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 112) = 0;
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

char *sub_151C6A0(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v38 = v7 - 1;
          while (1)
          {
            v39 = v38 + 1;
            v56 = v38 + 1;
            v40 = *(a1 + 64);
            if (v40 && (v41 = *(a1 + 56), v41 < *v40))
            {
              *(a1 + 56) = v41 + 1;
              v42 = *&v40[2 * v41 + 2];
            }

            else
            {
              v43 = sub_16F5A54(*(a1 + 48));
              v42 = sub_19593CC(a1 + 48, v43);
              v39 = v56;
            }

            v38 = sub_22002C0(a3, v42, v39);
            v56 = v38;
            if (!v38)
            {
              goto LABEL_97;
            }

            if (*a3 <= v38 || *v38 != 26)
            {
              goto LABEL_86;
            }
          }
        }
      }

      else if (v11 == 4 && v8 == 34)
      {
        *(a1 + 16) |= 1u;
        v25 = *(a1 + 96);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_1528C84(v27);
          *(a1 + 96) = v25;
          v7 = v56;
        }

        v28 = sub_2218EC8(a3, v25, v7);
        goto LABEL_85;
      }

      goto LABEL_78;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 18)
      {
        v13 = v7 - 1;
        while (1)
        {
          v14 = v13 + 1;
          v56 = v13 + 1;
          v15 = *(a1 + 40);
          if (v15 && (v16 = *(a1 + 32), v16 < *v15))
          {
            *(a1 + 32) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            v18 = sub_1528AA8(*(a1 + 24));
            v17 = sub_19593CC(a1 + 24, v18);
            v14 = v56;
          }

          v13 = sub_2217968(a3, v17, v14);
          v56 = v13;
          if (!v13)
          {
            goto LABEL_97;
          }

          if (*a3 <= v13 || *v13 != 18)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_78;
    }

    if (v8 != 8)
    {
      goto LABEL_78;
    }

    v5 |= 4u;
    v33 = v7 + 1;
    v32 = *v7;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if ((v34 & 0x80000000) == 0)
    {
      v33 = v7 + 2;
LABEL_56:
      v56 = v33;
      *(a1 + 112) = v32;
      goto LABEL_86;
    }

    v50 = sub_19587DC(v7, v32);
    v56 = v50;
    *(a1 + 112) = v51;
    if (!v50)
    {
      goto LABEL_97;
    }

LABEL_86:
    if (sub_195ADC0(a3, &v56, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 != 5)
    {
      if (v11 == 6 && v8 == 50)
      {
        v19 = v7 - 1;
        while (1)
        {
          v20 = v19 + 1;
          v56 = v19 + 1;
          v21 = *(a1 + 88);
          if (v21 && (v22 = *(a1 + 80), v22 < *v21))
          {
            *(a1 + 80) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_152AD60(*(a1 + 72));
            v23 = sub_19593CC(a1 + 72, v24);
            v20 = v56;
          }

          v19 = sub_2219858(a3, v23, v20);
          v56 = v19;
          if (!v19)
          {
            goto LABEL_97;
          }

          if (*a3 <= v19 || *v19 != 50)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_78;
    }

    if (v8 != 40)
    {
      goto LABEL_78;
    }

    v5 |= 8u;
    v36 = v7 + 1;
    v35 = *v7;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_61;
    }

    v37 = *v36;
    v35 = (v37 << 7) + v35 - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v36 = v7 + 2;
LABEL_61:
      v56 = v36;
      *(a1 + 120) = v35 != 0;
      goto LABEL_86;
    }

    v52 = sub_19587DC(v7, v35);
    v56 = v52;
    *(a1 + 120) = v53 != 0;
    if (!v52)
    {
      goto LABEL_97;
    }

    goto LABEL_86;
  }

  if (v11 != 7)
  {
    if (v11 != 8 || v8 != 64)
    {
      goto LABEL_78;
    }

    v5 |= 0x10u;
    v30 = v7 + 1;
    v29 = *v7;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v31 = *v30;
    v29 = (v31 << 7) + v29 - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_51:
      v56 = v30;
      *(a1 + 121) = v29 != 0;
      goto LABEL_86;
    }

    v54 = sub_19587DC(v7, v29);
    v56 = v54;
    *(a1 + 121) = v55 != 0;
    if (!v54)
    {
      goto LABEL_97;
    }

    goto LABEL_86;
  }

  if (v8 == 58)
  {
    *(a1 + 16) |= 2u;
    v44 = *(a1 + 104);
    if (!v44)
    {
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      v44 = sub_1528E80(v46);
      *(a1 + 104) = v44;
      v7 = v56;
    }

    v28 = sub_22178D8(a3, v44, v7);
LABEL_85:
    v56 = v28;
    if (!v28)
    {
      goto LABEL_97;
    }

    goto LABEL_86;
  }

LABEL_78:
  if (v8)
  {
    v47 = (v8 & 7) == 4;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    v48 = *(a1 + 8);
    if (v48)
    {
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v49 = sub_11F1920((a1 + 8));
      v7 = v56;
    }

    v28 = sub_1952690(v8, v49, v7, a3);
    goto LABEL_85;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_97:
  v56 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

char *sub_151CB8C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 112);
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

      v6 = sub_14F5930(v13, v15, a3);
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v18 = *(*(a1 + 64) + 8 * j + 8);
      *v6 = 26;
      v19 = *(v18 + 20);
      v6[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, v6 + 1);
      }

      else
      {
        v20 = v6 + 2;
      }

      v6 = sub_16E74A8(v18, v20, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v21 = *(a1 + 96);
    *v6 = 34;
    v22 = *(v21 + 20);
    v6[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v6 + 1);
    }

    else
    {
      v23 = v6 + 2;
    }

    v6 = sub_14F71E8(v21, v23, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v24 = *(a1 + 120);
    *v6 = 40;
    v6[1] = v24;
    v6 += 2;
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v27 = *(*(a1 + 88) + 8 * k + 8);
      *v6 = 50;
      v28 = *(v27 + 20);
      v6[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v6 + 1);
      }

      else
      {
        v29 = v6 + 2;
      }

      v6 = sub_151BB94(v27, v29, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v30 = *(a1 + 104);
    *v6 = 58;
    v31 = *(v30 + 20);
    v6[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v6 + 1);
    }

    else
    {
      v32 = v6 + 2;
    }

    v6 = sub_14F95C8(v30, v32, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v33 = *(a1 + 121);
    *v6 = 64;
    v6[1] = v33;
    v6 += 2;
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v37)
  {
    v39 = v37;
    memcpy(v6, v38, v37);
    v6 += v39;
    return v6;
  }

  return sub_1957130(a3, v38, v37, v6);
}

uint64_t sub_151CF90(uint64_t a1)
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
      v7 = sub_14F5DE8(v6);
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
      v14 = sub_16E7590(v13);
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
      v21 = sub_151BCF0(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x1F) != 0)
  {
    if (v22)
    {
      v25 = sub_14F7418(*(a1 + 96));
      v16 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 2) == 0)
      {
LABEL_24:
        if ((v22 & 4) == 0)
        {
LABEL_26:
          v16 += ((v22 >> 3) & 2) + ((v22 >> 2) & 2);
          goto LABEL_27;
        }

LABEL_25:
        v16 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
        goto LABEL_26;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_24;
    }

    v26 = sub_14F994C(*(a1 + 104));
    v16 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_27:
  v23 = *(a1 + 8);
  if (v23)
  {
    v27 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v16 += v28;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_151D18C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156B210((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_13B326C((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_156C17C((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x1F) != 0)
  {
    if (v19)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 96);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_1528C84(v23);
        *(a1 + 96) = v21;
      }

      if (*(a2 + 96))
      {
        v24 = *(a2 + 96);
      }

      else
      {
        v24 = &off_27750E0;
      }

      sub_14F753C(v21, v24);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_38;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v25 = *(a1 + 104);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_1528E80(v27);
      *(a1 + 104) = v25;
    }

    if (*(a2 + 104))
    {
      v28 = *(a2 + 104);
    }

    else
    {
      v28 = &off_2775188;
    }

    sub_14F9BC0(v25, v28);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    }

LABEL_38:
    *(a1 + 112) = *(a2 + 112);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v19;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 121) = *(a2 + 121);
      goto LABEL_17;
    }

LABEL_39:
    *(a1 + 120) = *(a2 + 120);
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_151D424(uint64_t a1)
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

  if (a1 != &off_2775ED8)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_16EB0C0(v7);
      operator delete();
    }

    v8 = *(a1 + 72);
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
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151D538(uint64_t a1)
{
  sub_151D424(a1);

  operator delete();
}

uint64_t sub_151D570(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    result = sub_16E5B70(*(a1 + 56));
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_18:
  result = sub_16EB0FC(*(a1 + 64));
  if ((v3 & 8) != 0)
  {
LABEL_6:
    result = sub_16E4E44(*(a1 + 72));
  }

LABEL_7:
  if ((v3 & 0xF0) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
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

uint64_t sub_151D644(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v56, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v56 + 1);
    v8 = **v56;
    if (**v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v56 + 2);
      }
    }

    *v56 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 4u;
        v37 = *(a1 + 64);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          v37 = sub_16F5DB8(v39);
          *(a1 + 64) = v37;
          v7 = *v56;
        }

        v22 = sub_21F8D18(a3, v37, v7);
      }

      else
      {
        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 8u;
        v23 = *(a1 + 72);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_16F5828(v25);
          *(a1 + 72) = v23;
          v7 = *v56;
        }

        v22 = sub_21F4D60(a3, v23, v7);
      }

LABEL_87:
      *v56 = v22;
      if (!v22)
      {
        goto LABEL_103;
      }

      goto LABEL_88;
    }

    if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_80;
      }

      v33 = v7 + 1;
      v34 = *v7;
      if (v34 < 0)
      {
        v35 = *v33;
        v36 = (v35 << 7) + v34;
        LODWORD(v34) = v36 - 128;
        if ((v35 & 0x80000000) == 0)
        {
          v33 = v7 + 2;
          goto LABEL_59;
        }

        *v56 = sub_19587DC(v7, (v36 - 128));
        if (!*v56)
        {
          goto LABEL_103;
        }

        LODWORD(v34) = v53;
      }

      else
      {
LABEL_59:
        *v56 = v33;
      }

      if (sub_1796880(v34))
      {
        *(a1 + 16) |= 0x40u;
        *(a1 + 92) = v34;
      }

      else
      {
        sub_13ED178();
      }

      goto LABEL_88;
    }

    if (v11 == 8)
    {
      if (v8 == 66)
      {
        v40 = v7 - 1;
        while (1)
        {
          v41 = (v40 + 1);
          *v56 = v40 + 1;
          v42 = *(a1 + 40);
          if (v42 && (v43 = *(a1 + 32), v43 < *v42))
          {
            *(a1 + 32) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = *(a1 + 24);
            if (!v45)
            {
              operator new();
            }

            *v47 = v46;
            v47[1] = sub_195A650;
            *v46 = 0;
            v46[1] = 0;
            v46[2] = 0;
            v44 = sub_19593CC(a1 + 24, v46);
            v41 = *v56;
          }

          v40 = sub_1958890(v44, v41, a3);
          *v56 = v40;
          if (!v40)
          {
            goto LABEL_103;
          }

          if (*a3 <= v40 || *v40 != 66)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_80;
    }

    if (v11 != 9 || v8 != 72)
    {
      goto LABEL_80;
    }

    v5 |= 0x80u;
    v13 = v7 + 1;
    v12 = *v7;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

    v14 = *v13;
    v12 = (v14 << 7) + v12 - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_16:
      *v56 = v13;
      *(a1 + 96) = v12;
      goto LABEL_88;
    }

    v54 = sub_19587DC(v7, v12);
    *v56 = v54;
    *(a1 + 96) = v55;
    if (!v54)
    {
      goto LABEL_103;
    }

LABEL_88:
    if (sub_195ADC0(a3, v56, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 2u;
      v29 = *(a1 + 56);
      if (!v29)
      {
        v30 = *(a1 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        sub_16F58FC(v31);
        v29 = v32;
        *(a1 + 56) = v32;
        v7 = *v56;
      }

      v22 = sub_21F86E8(a3, v29, v7);
    }

    else
    {
      if (v11 != 4 || v8 != 34)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = sub_194DB04((a1 + 48), v20);
      v22 = sub_1958890(v21, *v56, a3);
    }

    goto LABEL_87;
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_80;
    }

    v5 |= 0x10u;
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
      *v56 = v17;
      *(a1 + 80) = v16;
      goto LABEL_88;
    }

    v51 = sub_19587DC(v7, v16);
    *v56 = v51;
    *(a1 + 80) = v52;
    if (!v51)
    {
      goto LABEL_103;
    }

    goto LABEL_88;
  }

  if (v8 == 8)
  {
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if (v28 < 0)
    {
      *v56 = sub_19587DC(v7, v26);
      if (!*v56)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v27 = v7 + 2;
LABEL_46:
      *v56 = v27;
    }

    if (v26 > 1)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 88) = v26;
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
      v7 = *v56;
    }

    v22 = sub_1952690(v8, v50, v7, a3);
    goto LABEL_87;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_103:
  *v56 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v56;
}

char *sub_151DB88(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 80);
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
    *v11 = 26;
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

    v11 = sub_16E5FE0(v16, v18, a3);
    if ((v5 & 1) == 0)
    {
LABEL_21:
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 4) == 0)
  {
LABEL_22:
    if ((v5 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_38:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v22 = *(a1 + 72);
    *v11 = 50;
    v23 = *(v22 + 44);
    v11[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v11 + 1);
    }

    else
    {
      v24 = v11 + 2;
    }

    v11 = sub_16E5070(v22, v24, a3);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_32:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v19 = *(a1 + 64);
  *v11 = 42;
  v20 = *(v19 + 20);
  v11[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v11 + 1);
  }

  else
  {
    v21 = v11 + 2;
  }

  v11 = sub_16EBD38(v19, v21, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_38;
  }

LABEL_23:
  if ((v5 & 0x40) == 0)
  {
LABEL_24:
    v15 = v11;
    goto LABEL_51;
  }

LABEL_44:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v25 = *(a1 + 92);
  *v11 = 56;
  v11[1] = v25;
  if (v25 > 0x7F)
  {
    v11[1] = v25 | 0x80;
    v26 = v25 >> 7;
    v11[2] = v25 >> 7;
    v15 = v11 + 3;
    if (v25 >= 0x4000)
    {
      LOBYTE(v27) = v11[2];
      do
      {
        *(v15 - 1) = v27 | 0x80;
        v27 = v26 >> 7;
        *v15++ = v26 >> 7;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
    }
  }

  else
  {
    v15 = v11 + 2;
  }

LABEL_51:
  v29 = *(a1 + 32);
  if (v29 >= 1)
  {
    v30 = 8;
    do
    {
      v31 = *(*(a1 + 40) + v30);
      v32 = *(v31 + 23);
      if (v32 < 0 && (v32 = v31[1], v32 > 127) || (*a3 - v15 + 14) < v32)
      {
        v15 = sub_1957480(a3, 8, v31, v15);
      }

      else
      {
        *v15 = 66;
        v15[1] = v32;
        if (*(v31 + 23) < 0)
        {
          v31 = *v31;
        }

        v33 = v15 + 2;
        memcpy(v15 + 2, v31, v32);
        v15 = &v33[v32];
      }

      v30 += 8;
      --v29;
    }

    while (v29);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v35 = *(a1 + 96);
    *v15 = 72;
    v15[1] = v35;
    if (v35 > 0x7F)
    {
      v15[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v15[2] = v35 >> 7;
      v34 = v15 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v34 - 1) = v15 | 0x80;
          v15 = (v36 >> 7);
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v15 + 2;
    }
  }

  else
  {
    v34 = v15;
  }

  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return v34;
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

  if ((*a3 - v34) >= v41)
  {
    v43 = v41;
    memcpy(v34, v42, v41);
    v34 += v43;
    return v34;
  }

  return sub_1957130(a3, v42, v41, v34);
}

uint64_t sub_151E050(uint64_t a1)
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
  if (!v8)
  {
    goto LABEL_18;
  }

  if (*(a1 + 16))
  {
    v11 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
LABEL_11:
      if ((*(a1 + 16) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a1 + 16) & 2) == 0)
  {
    goto LABEL_11;
  }

  v14 = sub_16E62F4(*(a1 + 56));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = sub_16EC25C(*(a1 + 64));
  v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_13:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = sub_16E51F0(*(a1 + 72));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_14:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_27:
    v17 = *(a1 + 88);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v18;
    if ((v8 & 0x40) == 0)
    {
LABEL_16:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_26:
  v4 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_15:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_31:
  v19 = *(a1 + 92);
  if (v19 < 0)
  {
    v20 = 11;
  }

  else
  {
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 += v20;
  if (v8 < 0)
  {
LABEL_17:
    v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_18:
  v9 = *(a1 + 8);
  if (v9)
  {
    v21 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v4 += v22;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_151E2B0(uint64_t a1, uint64_t a2)
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
  if (v9)
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

        goto LABEL_30;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v14 = *(a1 + 56);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_16F58FC(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_277E650;
    }

    sub_16E645C(v14, v17);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 64);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_16F5DB8(v20);
      *(a1 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v21 = *(a2 + 64);
    }

    else
    {
      v21 = &off_277E820;
    }

    sub_16EC8A0(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 72);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16F5828(v24);
      *(a1 + 72) = v22;
    }

    if (*(a2 + 72))
    {
      v25 = *(a2 + 72);
    }

    else
    {
      v25 = &off_277E5E8;
    }

    sub_16E527C(v22, v25);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(a1 + 80) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(a1 + 88) = *(a2 + 88);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_14;
    }

LABEL_48:
    *(a1 + 92) = *(a2 + 92);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_151E4EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16E6614(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_16ECE70(*(a1 + 64));
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

  result = sub_16E5370(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_151E55C(uint64_t a1)
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
  if (a1 != &off_2775F40)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16E7270(v6);
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

void sub_151E614(uint64_t a1)
{
  sub_151E55C(a1);

  operator delete();
}

uint64_t sub_151E64C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_16E72AC(*(result + 24));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
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

char *sub_151E6B4(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v21 = v7 + 1;
      v20 = *v7;
      if (v20 < 0)
      {
        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if (v22 < 0)
        {
          v28 = sub_19587DC(v7, v20);
          if (!v28)
          {
            goto LABEL_48;
          }

          goto LABEL_30;
        }

        v21 = v7 + 2;
      }

      v28 = v21;
LABEL_30:
      if (v20 > 2)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 36) = v20;
      }

      goto LABEL_38;
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
      v28 = v18;
      *(a1 + 32) = v17 != 0;
      goto LABEL_38;
    }

    v26 = sub_19587DC(v7, v17);
    v28 = v26;
    *(a1 + 32) = v27 != 0;
    if (!v26)
    {
      goto LABEL_48;
    }

LABEL_38:
    if (sub_195ADC0(a3, &v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v23 = *(a1 + 24);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5A54(v25);
      *(a1 + 24) = v23;
      v7 = v28;
    }

    v16 = sub_22002C0(a3, v23, v7);
LABEL_37:
    v28 = v16;
    if (!v16)
    {
      goto LABEL_48;
    }

    goto LABEL_38;
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
      v7 = v28;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

char *sub_151E918(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v10;
    __dst += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 24);
  *__dst = 10;
  v8 = *(v7 + 20);
  __dst[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, __dst + 1);
  }

  else
  {
    v9 = __dst + 2;
  }

  __dst = sub_16E74A8(v7, v9, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v11 = *(a1 + 36);
  *__dst = 24;
  __dst[1] = v11;
  if (v11 > 0x7F)
  {
    __dst[1] = v11 | 0x80;
    v12 = v11 >> 7;
    __dst[2] = v11 >> 7;
    v6 = __dst + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = __dst[2];
      do
      {
        *(v6 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v6++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_21:
  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v18)
  {
    v20 = v18;
    memcpy(v6, v19, v18);
    v6 += v20;
    return v6;
  }

  return sub_1957130(a3, v19, v18, v6);
}

uint64_t sub_151EAE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = sub_16E7590(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    result = v3 + (v2 & 2);
    if ((v2 & 4) != 0)
    {
      v6 = *(a1 + 36);
      if (v6 < 0)
      {
        v7 = 11;
      }

      else
      {
        v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v7;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    result += v10;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_151EBAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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

        v6 = sub_16F5A54(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E6F0;
      }

      sub_12F5A34(v6, v9);
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

void *sub_151ECAC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151ED30(void *a1)
{
  sub_151ECAC(a1);

  operator delete();
}

uint64_t sub_151ED68(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
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

char *sub_151ED98(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 8)
      {
        v19 = v7 - 1;
        while (1)
        {
          v40 = v19 + 1;
          v20 = v19[1];
          if (v20 < 0)
          {
            v21 = (v19[2] << 7) + v20;
            v20 = (v21 - 128);
            if (v19[2] < 0)
            {
              v19 = sub_19587DC((v19 + 1), (v21 - 128));
              v20 = v22;
            }

            else
            {
              v19 += 3;
            }
          }

          else
          {
            v19 += 2;
          }

          v40 = v19;
          v23 = *(a1 + 24);
          if (v23 == *(a1 + 28))
          {
            v24 = v23 + 1;
            sub_1959094((a1 + 24), v23 + 1);
            *(*(a1 + 32) + 8 * v23) = v20;
            v19 = v40;
          }

          else
          {
            *(*(a1 + 32) + 8 * v23) = v20;
            v24 = v23 + 1;
          }

          *(a1 + 24) = v24;
          if (!v19)
          {
            goto LABEL_75;
          }

          if (*a3 <= v19 || *v19 != 8)
          {
            goto LABEL_70;
          }
        }
      }

      if (v8 == 10)
      {
        v35 = (a1 + 24);
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_62;
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
      v40 = v14;
      *(a1 + 56) = v13;
      goto LABEL_70;
    }

    v33 = sub_19587DC(v7, v13);
    v40 = v33;
    *(a1 + 56) = v34;
    if (!v33)
    {
      goto LABEL_75;
    }

LABEL_70:
    if (sub_195ADC0(a3, &v40, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_62;
    }

    v5 |= 2u;
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
      v40 = v17;
      *(a1 + 64) = v16 != 0;
      goto LABEL_70;
    }

    v31 = sub_19587DC(v7, v16);
    v40 = v31;
    *(a1 + 64) = v32 != 0;
    if (!v31)
    {
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  if (v8 == 24)
  {
    v25 = v7 - 1;
    while (1)
    {
      v40 = v25 + 1;
      v26 = v25[1];
      if (v26 < 0)
      {
        v27 = (v25[2] << 7) + v26;
        v26 = (v27 - 128);
        if (v25[2] < 0)
        {
          v25 = sub_19587DC((v25 + 1), (v27 - 128));
          v26 = v28;
        }

        else
        {
          v25 += 3;
        }
      }

      else
      {
        v25 += 2;
      }

      v40 = v25;
      v29 = *(a1 + 40);
      if (v29 == *(a1 + 44))
      {
        v30 = v29 + 1;
        sub_1959094((a1 + 40), v29 + 1);
        *(*(a1 + 48) + 8 * v29) = v26;
        v25 = v40;
      }

      else
      {
        *(*(a1 + 48) + 8 * v29) = v26;
        v30 = v29 + 1;
      }

      *(a1 + 40) = v30;
      if (!v25)
      {
        goto LABEL_75;
      }

      if (*a3 <= v25 || *v25 != 24)
      {
        goto LABEL_70;
      }
    }
  }

  if (v8 == 26)
  {
    v35 = (a1 + 40);
LABEL_61:
    v36 = sub_1958938(v35, v7, a3);
LABEL_69:
    v40 = v36;
    if (!v36)
    {
      goto LABEL_75;
    }

    goto LABEL_70;
  }

LABEL_62:
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

    v36 = sub_1952690(v8, v39, v7, a3);
    goto LABEL_69;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_75:
  v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}