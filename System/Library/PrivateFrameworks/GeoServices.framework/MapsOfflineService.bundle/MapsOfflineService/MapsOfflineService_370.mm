void sub_14F9BC0(uint64_t a1, uint64_t a2)
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
  if (v8)
  {
    if (v8)
    {
      v10 = *(a2 + 40);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 40), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_24;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    v13 = *(a2 + 48);
    *(a1 + 16) |= 2u;
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 48), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_24:
    v16 = *(a2 + 56);
    *(a1 + 16) |= 4u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_194EA1C((a1 + 56), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_27:
    v19 = *(a2 + 64);
    *(a1 + 16) |= 8u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 64), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 16) |= 0x10u;
    v22 = *(a1 + 72);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_152710C(v24);
      *(a1 + 72) = v22;
    }

    if (*(a2 + 72))
    {
      v25 = *(a2 + 72);
    }

    else
    {
      v25 = &off_27746C0;
    }

    sub_14D95DC(v22, v25);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_39;
    }

LABEL_38:
    *(a1 + 80) = *(a2 + 80);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v8;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_13;
    }

LABEL_39:
    *(a1 + 84) = *(a2 + 84);
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14F9DF4(uint64_t a1)
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

void sub_14F9EAC(uint64_t a1)
{
  sub_14F9DF4(a1);

  operator delete();
}

uint64_t sub_14F9EE4(uint64_t a1)
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

uint64_t sub_14F9F60(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_14FA0E0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_14FA1C8(uint64_t a1)
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

void *sub_14FA2B4(void *a1)
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

void sub_14FA328(void *a1)
{
  sub_14FA2B4(a1);

  operator delete();
}

uint64_t sub_14FA360(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
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

char *sub_14FA390(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 16)
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

        if ((v13 - 1) > 0xD)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 48) = v13;
        }

        goto LABEL_41;
      }

      goto LABEL_34;
    }

    if (v8 != 8)
    {
      goto LABEL_34;
    }

    v5 |= 1u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_31:
      v29 = v20;
      *(a1 + 24) = v19;
      goto LABEL_41;
    }

    v27 = sub_19587DC(v7, v19);
    v29 = v27;
    *(a1 + 24) = v28;
    if (!v27)
    {
      goto LABEL_53;
    }

LABEL_41:
    if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_34;
    }

    v5 |= 4u;
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
      v29 = v17;
      *(a1 + 40) = v16;
      goto LABEL_41;
    }

    v25 = sub_19587DC(v7, v16);
    v29 = v25;
    *(a1 + 40) = v26;
    if (!v25)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  if (v8 == 25)
  {
    v5 |= 2u;
    *(a1 + 32) = *v7;
    v29 = v7 + 8;
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

char *sub_14FA624(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 32);
    *v11 = 25;
    *(v11 + 1) = v15;
    v11 += 9;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 40);
    *v11 = 32;
    v11[1] = v17;
    if (v17 > 0x7F)
    {
      v11[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v11[2] = v17 >> 7;
      v16 = v11 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v11[2];
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
      v16 = v11 + 2;
    }
  }

  else
  {
    v16 = v11;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v16;
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

  if ((*a3 - v16) >= v24)
  {
    v26 = v24;
    memcpy(v16, v25, v24);
    v16 += v26;
    return v16;
  }

  return sub_1957130(a3, v25, v24, v16);
}

unint64_t sub_14FA88C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v1 & 8) != 0)
    {
      v3 = *(a1 + 48);
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v3 >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 11;
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

std::string *sub_14FA960(std::string *result, uint64_t a2)
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
      result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
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

  result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
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

uint64_t sub_14FA9EC(uint64_t a1)
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

void sub_14FAAA4(uint64_t a1)
{
  sub_14FA9EC(a1);

  operator delete();
}

uint64_t sub_14FAADC(uint64_t a1)
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

uint64_t sub_14FAB58(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_14FACD8(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_14FADC0(uint64_t a1)
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

void *sub_14FAEAC(void *a1)
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

  sub_14FAF74(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1569604(a1 + 17);
  sub_1569604(a1 + 14);
  sub_1569604(a1 + 11);
  sub_13B31E8(a1 + 8);
  sub_13B31E8(a1 + 5);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_14FAF74(void *result)
{
  if (result != &off_2775270)
  {
    v1 = result;
    v2 = result[20];
    if (v2)
    {
      sub_16E4E08(v2);
      operator delete();
    }

    v3 = v1[21];
    if (v3)
    {
      sub_14FA2B4(v3);
      operator delete();
    }

    v4 = v1[22];
    if (v4)
    {
      sub_14FA2B4(v4);
      operator delete();
    }

    v5 = v1[23];
    if (v5)
    {
      sub_14FA9EC(v5);
      operator delete();
    }

    result = v1[24];
    if (result)
    {
      sub_150DB68(result);

      operator delete();
    }
  }

  return result;
}

void sub_14FB058(void *a1)
{
  sub_14FAEAC(a1);

  operator delete();
}

uint64_t sub_14FB090(uint64_t result)
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
      result = sub_16E72AC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 72);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 80) + 8);
    do
    {
      v7 = *v6++;
      result = sub_16E72AC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 72) = 0;
  }

  v8 = *(v1 + 96);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 104) + 8);
    do
    {
      v10 = *v9++;
      result = sub_14FA360(v10);
      --v8;
    }

    while (v8);
    *(v1 + 96) = 0;
  }

  v11 = *(v1 + 120);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 128) + 8);
    do
    {
      v13 = *v12++;
      result = sub_14FA360(v13);
      --v11;
    }

    while (v11);
    *(v1 + 120) = 0;
  }

  v14 = *(v1 + 144);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 152) + 8);
    do
    {
      v16 = *v15++;
      result = sub_14FA360(v16);
      --v14;
    }

    while (v14);
    *(v1 + 144) = 0;
  }

  v17 = *(v1 + 16);
  if ((v17 & 0x1F) != 0)
  {
    if (v17)
    {
      result = sub_16E4E44(*(v1 + 160));
      if ((v17 & 2) == 0)
      {
LABEL_24:
        if ((v17 & 4) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_24;
    }

    result = sub_14FA360(*(v1 + 168));
    if ((v17 & 4) == 0)
    {
LABEL_25:
      if ((v17 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }

LABEL_30:
    result = sub_14FA360(*(v1 + 176));
    if ((v17 & 8) == 0)
    {
LABEL_26:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_31:
    result = sub_14FAADC(*(v1 + 184));
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_34;
    }

LABEL_32:
    v18 = *(v1 + 192);
    v19 = *(v18 + 8);
    result = v18 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v19)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_34:
  if ((v17 & 0xE0) != 0)
  {
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
    *(v1 + 216) = 0;
  }

  if ((v17 & 0xFF00) != 0)
  {
    *(v1 + 256) = 0;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
  }

  if ((v17 & 0x30000) != 0)
  {
    *(v1 + 264) = 0;
    *(v1 + 272) = 1;
  }

  v21 = *(v1 + 8);
  v20 = v1 + 8;
  *(v20 + 8) = 0;
  if (v21)
  {

    return sub_1957EA8(v20);
  }

  return result;
}

uint64_t sub_14FB258(uint64_t a1)
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

char *sub_14FB270(uint64_t a1, char *a2, int32x2_t *a3)
{
  v128 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, &v128, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v128 + 1;
      v8 = *v128;
      if (*v128 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(v128, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = v128 + 2;
        }
      }

      v128 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_199;
          }

          v5 |= 0x20u;
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
            v128 = v12;
            *(a1 + 200) = v11;
            goto LABEL_207;
          }

          v111 = sub_19587DC(v7, v11);
          v128 = v111;
          *(a1 + 200) = v112;
          if (!v111)
          {
            goto LABEL_213;
          }

          goto LABEL_207;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_199;
          }

          v5 |= 0x40u;
          v55 = v7 + 1;
          v54 = *v7;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_87;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v113 = sub_19587DC(v7, v54);
            v128 = v113;
            *(a1 + 208) = v114;
            if (!v113)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v55 = v7 + 2;
LABEL_87:
            v128 = v55;
            *(a1 + 208) = v54;
          }

          goto LABEL_207;
        case 3u:
          if (v8 == 24)
          {
            v42 = v7 - 1;
            while (1)
            {
              v128 = v42 + 1;
              v43 = v42[1];
              if (v43 < 0)
              {
                v44 = (v42[2] << 7) + v43;
                v43 = (v44 - 128);
                if (v42[2] < 0)
                {
                  v42 = sub_19587DC((v42 + 1), (v44 - 128));
                  v43 = v45;
                }

                else
                {
                  v42 += 3;
                }
              }

              else
              {
                v42 += 2;
              }

              v128 = v42;
              v46 = *(a1 + 24);
              if (v46 == *(a1 + 28))
              {
                v47 = v46 + 1;
                sub_1959094((a1 + 24), v46 + 1);
                *(*(a1 + 32) + 8 * v46) = v43;
                v42 = v128;
              }

              else
              {
                *(*(a1 + 32) + 8 * v46) = v43;
                v47 = v46 + 1;
              }

              *(a1 + 24) = v47;
              if (!v42)
              {
                goto LABEL_213;
              }

              if (*a3 <= v42 || *v42 != 24)
              {
                goto LABEL_207;
              }
            }
          }

          if (v8 == 26)
          {
            v21 = sub_1958938((a1 + 24), v7, a3);
          }

          else
          {
LABEL_199:
            if (v8)
            {
              v125 = (v8 & 7) == 4;
            }

            else
            {
              v125 = 1;
            }

            if (v125)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_213:
              v128 = 0;
              goto LABEL_2;
            }

            v126 = *(a1 + 8);
            if (v126)
            {
              v127 = (v126 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v127 = sub_11F1920((a1 + 8));
              v7 = v128;
            }

            v21 = sub_1952690(v8, v127, v7, a3);
          }

LABEL_206:
          v128 = v21;
          if (!v21)
          {
            goto LABEL_213;
          }

LABEL_207:
          if (sub_195ADC0(a3, &v128, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_199;
          }

          v5 |= 0x80u;
          v70 = v7 + 1;
          v69 = *v7;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_114;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v121 = sub_19587DC(v7, v69);
            v128 = v121;
            *(a1 + 216) = v122;
            if (!v121)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v70 = v7 + 2;
LABEL_114:
            v128 = v70;
            *(a1 + 216) = v69;
          }

          goto LABEL_207;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_199;
          }

          v5 |= 0x400u;
          LODWORD(v72) = *v7;
          if ((v72 & 0x80000000) == 0)
          {
            v73 = v7 + 1;
LABEL_170:
            v128 = v73;
            *(a1 + 240) = v72;
            goto LABEL_207;
          }

          v72 = (v7[1] << 7) + v72 - 128;
          if ((v7[1] & 0x80000000) == 0)
          {
            v73 = v7 + 2;
            goto LABEL_170;
          }

          v123 = sub_19587DC(v7, v72);
          v128 = v123;
          *(a1 + 240) = v124;
          if (!v123)
          {
            goto LABEL_213;
          }

          goto LABEL_207;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_199;
          }

          v5 |= 0x100u;
          v49 = v7 + 1;
          v48 = *v7;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_77;
          }

          v50 = *v49;
          v48 = (v50 << 7) + v48 - 128;
          if (v50 < 0)
          {
            v107 = sub_19587DC(v7, v48);
            v128 = v107;
            *(a1 + 224) = v108;
            if (!v107)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v49 = v7 + 2;
LABEL_77:
            v128 = v49;
            *(a1 + 224) = v48;
          }

          goto LABEL_207;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_199;
          }

          v5 |= 0x200u;
          v58 = v7 + 1;
          v57 = *v7;
          if ((v57 & 0x8000000000000000) == 0)
          {
            goto LABEL_92;
          }

          v59 = *v58;
          v57 = (v59 << 7) + v57 - 128;
          if (v59 < 0)
          {
            v115 = sub_19587DC(v7, v57);
            v128 = v115;
            *(a1 + 232) = v116;
            if (!v115)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v58 = v7 + 2;
LABEL_92:
            v128 = v58;
            *(a1 + 232) = v57;
          }

          goto LABEL_207;
        case 0x15u:
          if (v8 != 168)
          {
            goto LABEL_199;
          }

          v5 |= 0x800u;
          v61 = v7 + 1;
          v60 = *v7;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_97;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v117 = sub_19587DC(v7, v60);
            v128 = v117;
            *(a1 + 244) = v118 != 0;
            if (!v117)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v61 = v7 + 2;
LABEL_97:
            v128 = v61;
            *(a1 + 244) = v60 != 0;
          }

          goto LABEL_207;
        case 0x16u:
          if (v8 != 178)
          {
            goto LABEL_199;
          }

          v80 = v7 - 2;
          while (1)
          {
            v81 = v80 + 2;
            v128 = v80 + 2;
            v82 = *(a1 + 56);
            if (v82 && (v83 = *(a1 + 48), v83 < *v82))
            {
              *(a1 + 48) = v83 + 1;
              v84 = *&v82[2 * v83 + 2];
            }

            else
            {
              v85 = sub_16F5A54(*(a1 + 40));
              v84 = sub_19593CC(a1 + 40, v85);
              v81 = v128;
            }

            v80 = sub_22002C0(a3, v84, v81);
            v128 = v80;
            if (!v80)
            {
              goto LABEL_213;
            }

            if (*a3 <= v80 || *v80 != 434)
            {
              goto LABEL_207;
            }
          }

        case 0x17u:
          if (v8 != 186)
          {
            goto LABEL_199;
          }

          v74 = v7 - 2;
          while (1)
          {
            v75 = v74 + 2;
            v128 = v74 + 2;
            v76 = *(a1 + 80);
            if (v76 && (v77 = *(a1 + 72), v77 < *v76))
            {
              *(a1 + 72) = v77 + 1;
              v78 = *&v76[2 * v77 + 2];
            }

            else
            {
              v79 = sub_16F5A54(*(a1 + 64));
              v78 = sub_19593CC(a1 + 64, v79);
              v75 = v128;
            }

            v74 = sub_22002C0(a3, v78, v75);
            v128 = v74;
            if (!v74)
            {
              goto LABEL_213;
            }

            if (*a3 <= v74 || *v74 != 442)
            {
              goto LABEL_207;
            }
          }

        case 0x18u:
          if (v8 != 194)
          {
            goto LABEL_199;
          }

          *(a1 + 16) |= 1u;
          v27 = *(a1 + 160);
          if (!v27)
          {
            v28 = *(a1 + 8);
            v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
            if (v28)
            {
              v29 = *v29;
            }

            v27 = sub_16F5828(v29);
            *(a1 + 160) = v27;
            v7 = v128;
          }

          v21 = sub_21F4D60(a3, v27, v7);
          goto LABEL_206;
        case 0x19u:
          if (v8 != 200)
          {
            goto LABEL_199;
          }

          v5 |= 0x1000u;
          v52 = v7 + 1;
          v51 = *v7;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_82;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v109 = sub_19587DC(v7, v51);
            v128 = v109;
            *(a1 + 245) = v110 != 0;
            if (!v109)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v52 = v7 + 2;
LABEL_82:
            v128 = v52;
            *(a1 + 245) = v51 != 0;
          }

          goto LABEL_207;
        case 0x1Au:
          if (v8 != 208)
          {
            goto LABEL_199;
          }

          v5 |= 0x2000u;
          v34 = v7 + 1;
          v33 = *v7;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v105 = sub_19587DC(v7, v33);
            v128 = v105;
            *(a1 + 246) = v106 != 0;
            if (!v105)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v34 = v7 + 2;
LABEL_48:
            v128 = v34;
            *(a1 + 246) = v33 != 0;
          }

          goto LABEL_207;
        case 0x1Cu:
          if (v8 != 224)
          {
            goto LABEL_199;
          }

          v5 |= 0x8000u;
          v23 = v7 + 1;
          v22 = *v7;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v101 = sub_19587DC(v7, v22);
            v128 = v101;
            *(a1 + 256) = v102;
            if (!v101)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v23 = v7 + 2;
LABEL_28:
            v128 = v23;
            *(a1 + 256) = v22;
          }

          goto LABEL_207;
        case 0x1Du:
          if (v8 != 232)
          {
            goto LABEL_199;
          }

          v5 |= 0x10000u;
          v64 = v7 + 1;
          v63 = *v7;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_102;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v119 = sub_19587DC(v7, v63);
            v128 = v119;
            *(a1 + 264) = v120;
            if (!v119)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v64 = v7 + 2;
LABEL_102:
            v128 = v64;
            *(a1 + 264) = v63;
          }

          goto LABEL_207;
        case 0x1Eu:
          if (v8 != 240)
          {
            goto LABEL_199;
          }

          v67 = v7 + 1;
          v66 = *v7;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_107;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v128 = sub_19587DC(v7, v66);
            if (!v128)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v67 = v7 + 2;
LABEL_107:
            v128 = v67;
          }

          if ((v66 - 1) > 0xD)
          {
            sub_156E818();
          }

          else
          {
            *(a1 + 16) |= 0x20000u;
            *(a1 + 272) = v66;
          }

          goto LABEL_207;
        case 0x1Fu:
          if (v8 != 250)
          {
            goto LABEL_199;
          }

          *(a1 + 16) |= 2u;
          v14 = *(a1 + 168);
          if (v14)
          {
            goto LABEL_154;
          }

          v92 = *(a1 + 8);
          v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
          if (v92)
          {
            v93 = *v93;
          }

          sub_1528FB8(v93);
          v14 = v94;
          *(a1 + 168) = v94;
          goto LABEL_153;
        case 0x20u:
          if (v8 != 2)
          {
            goto LABEL_199;
          }

          v86 = v7 - 2;
          while (1)
          {
            v87 = v86 + 2;
            v128 = v86 + 2;
            v88 = *(a1 + 104);
            if (v88 && (v89 = *(a1 + 96), v89 < *v88))
            {
              *(a1 + 96) = v89 + 1;
              v90 = *&v88[2 * v89 + 2];
            }

            else
            {
              sub_1528FB8(*(a1 + 88));
              v90 = sub_19593CC(a1 + 88, v91);
              v87 = v128;
            }

            v86 = sub_2218028(a3, v90, v87);
            v128 = v86;
            if (!v86)
            {
              goto LABEL_213;
            }

            if (*a3 <= v86 || *v86 != 642)
            {
              goto LABEL_207;
            }
          }

        case 0x21u:
          if (v8 != 10)
          {
            goto LABEL_199;
          }

          *(a1 + 16) |= 4u;
          v14 = *(a1 + 176);
          if (v14)
          {
            goto LABEL_154;
          }

          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          sub_1528FB8(v16);
          v14 = v17;
          *(a1 + 176) = v17;
LABEL_153:
          v7 = v128;
LABEL_154:
          v21 = sub_2218028(a3, v14, v7);
          goto LABEL_206;
        case 0x22u:
          if (v8 != 18)
          {
            goto LABEL_199;
          }

          v36 = v7 - 2;
          while (1)
          {
            v37 = v36 + 2;
            v128 = v36 + 2;
            v38 = *(a1 + 128);
            if (v38 && (v39 = *(a1 + 120), v39 < *v38))
            {
              *(a1 + 120) = v39 + 1;
              v40 = *&v38[2 * v39 + 2];
            }

            else
            {
              sub_1528FB8(*(a1 + 112));
              v40 = sub_19593CC(a1 + 112, v41);
              v37 = v128;
            }

            v36 = sub_2218028(a3, v40, v37);
            v128 = v36;
            if (!v36)
            {
              goto LABEL_213;
            }

            if (*a3 <= v36 || *v36 != 658)
            {
              goto LABEL_207;
            }
          }

        case 0x23u:
          if (v8 != 26)
          {
            goto LABEL_199;
          }

          v95 = v7 - 2;
          while (1)
          {
            v96 = v95 + 2;
            v128 = v95 + 2;
            v97 = *(a1 + 152);
            if (v97 && (v98 = *(a1 + 144), v98 < *v97))
            {
              *(a1 + 144) = v98 + 1;
              v99 = *&v97[2 * v98 + 2];
            }

            else
            {
              sub_1528FB8(*(a1 + 136));
              v99 = sub_19593CC(a1 + 136, v100);
              v96 = v128;
            }

            v95 = sub_2218028(a3, v99, v96);
            v128 = v95;
            if (!v95)
            {
              goto LABEL_213;
            }

            if (*a3 <= v95 || *v95 != 666)
            {
              goto LABEL_207;
            }
          }

        case 0x24u:
          if (v8 != 34)
          {
            goto LABEL_199;
          }

          *(a1 + 16) |= 8u;
          v18 = *(a1 + 184);
          if (!v18)
          {
            v19 = *(a1 + 8);
            v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
            if (v19)
            {
              v20 = *v20;
            }

            v18 = sub_152903C(v20);
            *(a1 + 184) = v18;
            v7 = v128;
          }

          v21 = sub_22180B8(a3, v18, v7);
          goto LABEL_206;
        case 0x25u:
          if (v8 != 42)
          {
            goto LABEL_199;
          }

          *(a1 + 16) |= 0x10u;
          v30 = *(a1 + 192);
          if (!v30)
          {
            v31 = *(a1 + 8);
            v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31)
            {
              v32 = *v32;
            }

            v30 = sub_152A138(v32);
            *(a1 + 192) = v30;
            v7 = v128;
          }

          v21 = sub_2218148(a3, v30, v7);
          goto LABEL_206;
        case 0x26u:
          if (v8 != 48)
          {
            goto LABEL_199;
          }

          v5 |= 0x4000u;
          LODWORD(v25) = *v7;
          if ((v25 & 0x80000000) == 0)
          {
            v26 = v7 + 1;
LABEL_167:
            v128 = v26;
            *(a1 + 248) = v25;
            goto LABEL_207;
          }

          v25 = (v7[1] << 7) + v25 - 128;
          if ((v7[1] & 0x80000000) == 0)
          {
            v26 = v7 + 2;
            goto LABEL_167;
          }

          v103 = sub_19587DC(v7, v25);
          v128 = v103;
          *(a1 + 248) = v104;
          if (!v103)
          {
            goto LABEL_213;
          }

          goto LABEL_207;
        default:
          goto LABEL_199;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v128;
}

char *sub_14FBE74(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 200);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 208);
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

  v15 = *(a1 + 24);
  if (v15 < 1)
  {
    v18 = v11;
  }

  else
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 32) + 8 * i);
      *v11 = 24;
      v11[1] = v17;
      if (v17 > 0x7F)
      {
        v11[1] = v17 | 0x80;
        v19 = v17 >> 7;
        v11[2] = v17 >> 7;
        v18 = v11 + 3;
        if (v17 >= 0x4000)
        {
          LOBYTE(v20) = v11[2];
          do
          {
            *(v18 - 1) = v20 | 0x80;
            v20 = v19 >> 7;
            *v18++ = v19 >> 7;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
        }
      }

      else
      {
        v18 = v11 + 2;
      }

      v11 = v18;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 216);
    *v18 = 32;
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

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 240);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v32 = *(a1 + 224);
    *v26 = 48;
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
          v26 = (v33 >> 7);
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v36 = *(a1 + 232);
    *v31 = 56;
    v31[1] = v36;
    if (v36 > 0x7F)
    {
      v31[1] = v36 | 0x80;
      v37 = v36 >> 7;
      v31[2] = v36 >> 7;
      v35 = v31 + 3;
      if (v36 >= 0x4000)
      {
        LOBYTE(v31) = v31[2];
        do
        {
          *(v35 - 1) = v31 | 0x80;
          v31 = (v37 >> 7);
          *v35++ = v37 >> 7;
          v38 = v37 >> 14;
          v37 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v35 = v31 + 2;
    }
  }

  else
  {
    v35 = v31;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v39 = *(a1 + 244);
    *v35 = 424;
    v35[2] = v39;
    v35 += 3;
  }

  v40 = *(a1 + 48);
  if (v40)
  {
    for (j = 0; j != v40; ++j)
    {
      if (*a3 <= v35)
      {
        v35 = sub_225EB68(a3, v35);
      }

      v42 = *(*(a1 + 56) + 8 * j + 8);
      *v35 = 434;
      v43 = *(v42 + 20);
      v35[2] = v43;
      if (v43 > 0x7F)
      {
        v44 = sub_19575D0(v43, v35 + 2);
      }

      else
      {
        v44 = v35 + 3;
      }

      v35 = sub_16E74A8(v42, v44, a3);
    }
  }

  v45 = *(a1 + 72);
  if (v45)
  {
    for (k = 0; k != v45; ++k)
    {
      if (*a3 <= v35)
      {
        v35 = sub_225EB68(a3, v35);
      }

      v47 = *(*(a1 + 80) + 8 * k + 8);
      *v35 = 442;
      v48 = *(v47 + 20);
      v35[2] = v48;
      if (v48 > 0x7F)
      {
        v49 = sub_19575D0(v48, v35 + 2);
      }

      else
      {
        v49 = v35 + 3;
      }

      v35 = sub_16E74A8(v47, v49, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v51 = *(a1 + 160);
    *v35 = 450;
    v52 = *(v51 + 44);
    v35[2] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v35 + 2);
    }

    else
    {
      v53 = v35 + 3;
    }

    v35 = sub_16E5070(v51, v53, a3);
    if ((v5 & 0x1000) == 0)
    {
LABEL_89:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_90;
      }

LABEL_101:
      if (*a3 <= v35)
      {
        v35 = sub_225EB68(a3, v35);
      }

      v55 = *(a1 + 246);
      *v35 = 464;
      v35[2] = v55;
      v35 += 3;
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_104;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_89;
  }

  if (*a3 <= v35)
  {
    v35 = sub_225EB68(a3, v35);
  }

  v54 = *(a1 + 245);
  *v35 = 456;
  v35[2] = v54;
  v35 += 3;
  if ((v5 & 0x2000) != 0)
  {
    goto LABEL_101;
  }

LABEL_90:
  if ((v5 & 0x8000) == 0)
  {
LABEL_91:
    v50 = v35;
    goto LABEL_111;
  }

LABEL_104:
  if (*a3 <= v35)
  {
    v35 = sub_225EB68(a3, v35);
  }

  v56 = *(a1 + 256);
  *v35 = 480;
  v35[2] = v56;
  if (v56 > 0x7F)
  {
    v35[2] = v56 | 0x80;
    v57 = v56 >> 7;
    v35[3] = v56 >> 7;
    v50 = v35 + 4;
    if (v56 >= 0x4000)
    {
      LOBYTE(v35) = v35[3];
      do
      {
        *(v50 - 1) = v35 | 0x80;
        v35 = (v57 >> 7);
        *v50++ = v57 >> 7;
        v58 = v57 >> 14;
        v57 >>= 7;
      }

      while (v58);
    }
  }

  else
  {
    v50 = v35 + 3;
  }

LABEL_111:
  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v50)
    {
      v50 = sub_225EB68(a3, v50);
    }

    v60 = *(a1 + 264);
    *v50 = 488;
    v50[2] = v60;
    if (v60 > 0x7F)
    {
      v50[2] = v60 | 0x80;
      v61 = v60 >> 7;
      v50[3] = v60 >> 7;
      v59 = v50 + 4;
      if (v60 >= 0x4000)
      {
        LOBYTE(v50) = v50[3];
        do
        {
          *(v59 - 1) = v50 | 0x80;
          v50 = (v61 >> 7);
          *v59++ = v61 >> 7;
          v62 = v61 >> 14;
          v61 >>= 7;
        }

        while (v62);
      }
    }

    else
    {
      v59 = v50 + 3;
    }
  }

  else
  {
    v59 = v50;
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v59)
    {
      v59 = sub_225EB68(a3, v59);
    }

    v64 = *(a1 + 272);
    *v59 = 496;
    v59[2] = v64;
    if (v64 > 0x7F)
    {
      v59[2] = v64 | 0x80;
      v65 = v64 >> 7;
      v59[3] = v64 >> 7;
      v63 = v59 + 4;
      if (v64 >= 0x4000)
      {
        LOBYTE(v59) = v59[3];
        do
        {
          *(v63 - 1) = v59 | 0x80;
          v59 = (v65 >> 7);
          *v63++ = v65 >> 7;
          v66 = v65 >> 14;
          v65 >>= 7;
        }

        while (v66);
      }
    }

    else
    {
      v63 = v59 + 3;
    }
  }

  else
  {
    v63 = v59;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v67 = *(a1 + 168);
    *v63 = 506;
    v68 = *(v67 + 20);
    v63[2] = v68;
    if (v68 > 0x7F)
    {
      v69 = sub_19575D0(v68, v63 + 2);
    }

    else
    {
      v69 = v63 + 3;
    }

    v63 = sub_14FA624(v67, v69, a3);
  }

  v70 = *(a1 + 96);
  if (v70)
  {
    for (m = 0; m != v70; ++m)
    {
      if (*a3 <= v63)
      {
        v63 = sub_225EB68(a3, v63);
      }

      v72 = *(*(a1 + 104) + 8 * m + 8);
      *v63 = 642;
      v73 = *(v72 + 20);
      v63[2] = v73;
      if (v73 > 0x7F)
      {
        v74 = sub_19575D0(v73, v63 + 2);
      }

      else
      {
        v74 = v63 + 3;
      }

      v63 = sub_14FA624(v72, v74, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v75 = *(a1 + 176);
    *v63 = 650;
    v76 = *(v75 + 20);
    v63[2] = v76;
    if (v76 > 0x7F)
    {
      v77 = sub_19575D0(v76, v63 + 2);
    }

    else
    {
      v77 = v63 + 3;
    }

    v63 = sub_14FA624(v75, v77, a3);
  }

  v78 = *(a1 + 120);
  if (v78)
  {
    for (n = 0; n != v78; ++n)
    {
      if (*a3 <= v63)
      {
        v63 = sub_225EB68(a3, v63);
      }

      v80 = *(*(a1 + 128) + 8 * n + 8);
      *v63 = 658;
      v81 = *(v80 + 20);
      v63[2] = v81;
      if (v81 > 0x7F)
      {
        v82 = sub_19575D0(v81, v63 + 2);
      }

      else
      {
        v82 = v63 + 3;
      }

      v63 = sub_14FA624(v80, v82, a3);
    }
  }

  v83 = *(a1 + 144);
  if (v83)
  {
    for (ii = 0; ii != v83; ++ii)
    {
      if (*a3 <= v63)
      {
        v63 = sub_225EB68(a3, v63);
      }

      v85 = *(*(a1 + 152) + 8 * ii + 8);
      *v63 = 666;
      v86 = *(v85 + 20);
      v63[2] = v86;
      if (v86 > 0x7F)
      {
        v87 = sub_19575D0(v86, v63 + 2);
      }

      else
      {
        v87 = v63 + 3;
      }

      v63 = sub_14FA624(v85, v87, a3);
    }
  }

  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_169;
    }

LABEL_177:
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v92 = *(a1 + 192);
    *v63 = 682;
    v93 = *(v92 + 20);
    v63[2] = v93;
    if (v93 > 0x7F)
    {
      v94 = sub_19575D0(v93, v63 + 2);
    }

    else
    {
      v94 = v63 + 3;
    }

    v63 = sub_150DD7C(v92, v94, a3);
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_183;
  }

  if (*a3 <= v63)
  {
    v63 = sub_225EB68(a3, v63);
  }

  v89 = *(a1 + 184);
  *v63 = 674;
  v90 = *(v89 + 20);
  v63[2] = v90;
  if (v90 > 0x7F)
  {
    v91 = sub_19575D0(v90, v63 + 2);
  }

  else
  {
    v91 = v63 + 3;
  }

  v63 = sub_14FACD8(v89, v91, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_177;
  }

LABEL_169:
  if ((v5 & 0x4000) == 0)
  {
LABEL_170:
    v88 = v63;
    goto LABEL_190;
  }

LABEL_183:
  if (*a3 <= v63)
  {
    v63 = sub_225EB68(a3, v63);
  }

  v95 = *(a1 + 248);
  *v63 = 688;
  v63[2] = v95;
  if (v95 > 0x7F)
  {
    v63[2] = v95 | 0x80;
    v96 = v95 >> 7;
    v63[3] = v95 >> 7;
    v88 = v63 + 4;
    if (v95 >= 0x4000)
    {
      LOBYTE(v63) = v63[3];
      do
      {
        *(v88 - 1) = v63 | 0x80;
        v63 = (v96 >> 7);
        *v88++ = v96 >> 7;
        v97 = v96 >> 14;
        v96 >>= 7;
      }

      while (v97);
    }
  }

  else
  {
    v88 = v63 + 3;
  }

LABEL_190:
  v98 = *(a1 + 8);
  if ((v98 & 1) == 0)
  {
    return v88;
  }

  v100 = v98 & 0xFFFFFFFFFFFFFFFCLL;
  v101 = *(v100 + 31);
  if (v101 < 0)
  {
    v102 = *(v100 + 8);
    v101 = *(v100 + 16);
  }

  else
  {
    v102 = (v100 + 8);
  }

  if ((*a3 - v88) >= v101)
  {
    v103 = v101;
    memcpy(v88, v102, v101);
    v88 += v103;
    return v88;
  }

  return sub_1957130(a3, v102, v101, v88);
}

uint64_t sub_14FCA60(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + 2 * v3;
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
      v9 = sub_16E7590(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 72);
  v11 = v4 + 2 * v10;
  v12 = *(a1 + 80);
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
      v16 = sub_16E7590(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 96);
  v18 = v11 + 2 * v17;
  v19 = *(a1 + 104);
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
      v23 = sub_14FA88C(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 120);
  v25 = v18 + 2 * v24;
  v26 = *(a1 + 128);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = sub_14FA88C(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 144);
  v32 = v25 + 2 * v31;
  v33 = *(a1 + 152);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_14FA88C(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 16);
  if (!v38)
  {
    goto LABEL_41;
  }

  if (v38)
  {
    v51 = sub_16E51F0(*(a1 + 160));
    v32 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v38 & 2) == 0)
    {
LABEL_34:
      if ((v38 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_75;
    }
  }

  else if ((v38 & 2) == 0)
  {
    goto LABEL_34;
  }

  v52 = sub_14FA88C(*(a1 + 168));
  v32 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 4) == 0)
  {
LABEL_35:
    if ((v38 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  v53 = sub_14FA88C(*(a1 + 176));
  v32 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 8) == 0)
  {
LABEL_36:
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  v54 = sub_14FADC0(*(a1 + 184));
  v32 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x10) == 0)
  {
LABEL_37:
    if ((v38 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_78:
    v32 += ((9 * (__clz(*(a1 + 200) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v38 & 0x40) == 0)
    {
LABEL_39:
      if ((v38 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    goto LABEL_79;
  }

LABEL_77:
  v55 = sub_150DEA4(*(a1 + 192));
  v32 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x20) != 0)
  {
    goto LABEL_78;
  }

LABEL_38:
  if ((v38 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_79:
  v32 += ((9 * (__clz(*(a1 + 208) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v38 & 0x80) != 0)
  {
LABEL_40:
    v32 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_41:
  if ((v38 & 0xFF00) == 0)
  {
    goto LABEL_63;
  }

  if ((v38 & 0x100) == 0)
  {
    if ((v38 & 0x200) == 0)
    {
      goto LABEL_44;
    }

LABEL_82:
    v32 += ((9 * (__clz(*(a1 + 232) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v38 & 0x400) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_49;
  }

  v32 += ((9 * (__clz(*(a1 + 224) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v38 & 0x200) != 0)
  {
    goto LABEL_82;
  }

LABEL_44:
  if ((v38 & 0x400) != 0)
  {
LABEL_45:
    v39 = *(a1 + 240);
    v40 = ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v39 >= 0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 11;
    }

    v32 += v41;
  }

LABEL_49:
  v42 = v32 + 3;
  if ((v38 & 0x800) == 0)
  {
    v42 = v32;
  }

  if ((v38 & 0x1000) != 0)
  {
    v42 += 3;
  }

  if ((v38 & 0x2000) != 0)
  {
    v32 = v42 + 3;
  }

  else
  {
    v32 = v42;
  }

  if ((v38 & 0x4000) != 0)
  {
    v43 = *(a1 + 248);
    v44 = ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v43 >= 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 12;
    }

    v32 += v45;
  }

  if ((v38 & 0x8000) != 0)
  {
    v32 += ((9 * (__clz(*(a1 + 256) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_63:
  if ((v38 & 0x30000) != 0)
  {
    if ((v38 & 0x10000) != 0)
    {
      v32 += ((9 * (__clz(*(a1 + 264) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v38 & 0x20000) != 0)
    {
      v46 = *(a1 + 272);
      v47 = ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v46 >= 0)
      {
        v48 = v47;
      }

      else
      {
        v48 = 12;
      }

      v32 += v48;
    }
  }

  v49 = *(a1 + 8);
  if (v49)
  {
    v56 = v49 & 0xFFFFFFFFFFFFFFFCLL;
    v57 = *((v49 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v57 < 0)
    {
      v57 = *(v56 + 16);
    }

    v32 += v57;
  }

  *(a1 + 20) = v32;
  return v32;
}

void sub_14FCF48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1959094((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_13B326C((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    v14 = *(a2 + 80);
    v15 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_13B326C((a1 + 64), v15, (v14 + 8), v13, **(a1 + 80) - *(a1 + 72));
    v16 = *(a1 + 72) + v13;
    *(a1 + 72) = v16;
    v17 = *(a1 + 80);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 96);
  if (v18)
  {
    v19 = *(a2 + 104);
    v20 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_156B4CC((a1 + 88), v20, (v19 + 8), v18, **(a1 + 104) - *(a1 + 96));
    v21 = *(a1 + 96) + v18;
    *(a1 + 96) = v21;
    v22 = *(a1 + 104);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 120);
  if (v23)
  {
    v24 = *(a2 + 128);
    v25 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_156B4CC((a1 + 112), v25, (v24 + 8), v23, **(a1 + 128) - *(a1 + 120));
    v26 = *(a1 + 120) + v23;
    *(a1 + 120) = v26;
    v27 = *(a1 + 128);
    if (*v27 < v26)
    {
      *v27 = v26;
    }
  }

  v28 = *(a2 + 144);
  if (v28)
  {
    v29 = *(a2 + 152);
    v30 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_156B4CC((a1 + 136), v30, (v29 + 8), v28, **(a1 + 152) - *(a1 + 144));
    v31 = *(a1 + 144) + v28;
    *(a1 + 144) = v31;
    v32 = *(a1 + 152);
    if (*v32 < v31)
    {
      *v32 = v31;
    }
  }

  v33 = *(a2 + 16);
  if (v33)
  {
    if (v33)
    {
      *(a1 + 16) |= 1u;
      v34 = *(a1 + 160);
      if (!v34)
      {
        v35 = *(a1 + 8);
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v36 = *v36;
        }

        v34 = sub_16F5828(v36);
        *(a1 + 160) = v34;
      }

      if (*(a2 + 160))
      {
        v37 = *(a2 + 160);
      }

      else
      {
        v37 = &off_277E5E8;
      }

      sub_16E527C(v34, v37);
    }

    if ((v33 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v39 = *(a1 + 168);
      if (!v39)
      {
        v40 = *(a1 + 8);
        v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v41 = *v41;
        }

        sub_1528FB8(v41);
        *(a1 + 168) = v39;
      }

      if (*(a2 + 168))
      {
        v42 = *(a2 + 168);
      }

      else
      {
        v42 = &off_2775210;
      }

      sub_14FA960(v39, v42);
      if ((v33 & 4) == 0)
      {
LABEL_30:
        if ((v33 & 8) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_74;
      }
    }

    else if ((v33 & 4) == 0)
    {
      goto LABEL_30;
    }

    *(a1 + 16) |= 4u;
    v43 = *(a1 + 176);
    if (!v43)
    {
      v44 = *(a1 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      sub_1528FB8(v45);
      *(a1 + 176) = v43;
    }

    if (*(a2 + 176))
    {
      v46 = *(a2 + 176);
    }

    else
    {
      v46 = &off_2775210;
    }

    sub_14FA960(v43, v46);
    if ((v33 & 8) == 0)
    {
LABEL_31:
      if ((v33 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_82;
    }

LABEL_74:
    *(a1 + 16) |= 8u;
    v47 = *(a1 + 184);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_152903C(v49);
      *(a1 + 184) = v47;
    }

    if (*(a2 + 184))
    {
      v50 = *(a2 + 184);
    }

    else
    {
      v50 = &off_2775248;
    }

    sub_12F5A34(v47, v50);
    if ((v33 & 0x10) == 0)
    {
LABEL_32:
      if ((v33 & 0x20) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_90;
    }

LABEL_82:
    *(a1 + 16) |= 0x10u;
    v51 = *(a1 + 192);
    if (!v51)
    {
      v52 = *(a1 + 8);
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
      if (v52)
      {
        v53 = *v53;
      }

      v51 = sub_152A138(v53);
      *(a1 + 192) = v51;
    }

    if (*(a2 + 192))
    {
      v54 = *(a2 + 192);
    }

    else
    {
      v54 = &off_27758F8;
    }

    sub_12B9D50(v51, v54);
    if ((v33 & 0x20) == 0)
    {
LABEL_33:
      if ((v33 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_91;
    }

LABEL_90:
    *(a1 + 200) = *(a2 + 200);
    if ((v33 & 0x40) == 0)
    {
LABEL_34:
      if ((v33 & 0x80) == 0)
      {
LABEL_36:
        *(a1 + 16) |= v33;
        goto LABEL_37;
      }

LABEL_35:
      *(a1 + 216) = *(a2 + 216);
      goto LABEL_36;
    }

LABEL_91:
    *(a1 + 208) = *(a2 + 208);
    if ((v33 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_37:
  if ((v33 & 0xFF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v33 & 0x100) != 0)
  {
    *(a1 + 224) = *(a2 + 224);
    if ((v33 & 0x200) == 0)
    {
LABEL_40:
      if ((v33 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_95;
    }
  }

  else if ((v33 & 0x200) == 0)
  {
    goto LABEL_40;
  }

  *(a1 + 232) = *(a2 + 232);
  if ((v33 & 0x400) == 0)
  {
LABEL_41:
    if ((v33 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(a1 + 240) = *(a2 + 240);
  if ((v33 & 0x800) == 0)
  {
LABEL_42:
    if ((v33 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(a1 + 244) = *(a2 + 244);
  if ((v33 & 0x1000) == 0)
  {
LABEL_43:
    if ((v33 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(a1 + 245) = *(a2 + 245);
  if ((v33 & 0x2000) == 0)
  {
LABEL_44:
    if ((v33 & 0x4000) == 0)
    {
      goto LABEL_45;
    }

LABEL_99:
    *(a1 + 248) = *(a2 + 248);
    if ((v33 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_98:
  *(a1 + 246) = *(a2 + 246);
  if ((v33 & 0x4000) != 0)
  {
    goto LABEL_99;
  }

LABEL_45:
  if ((v33 & 0x8000) != 0)
  {
LABEL_46:
    *(a1 + 256) = *(a2 + 256);
  }

LABEL_47:
  *(a1 + 16) |= v33;
LABEL_48:
  if ((v33 & 0x30000) != 0)
  {
    if ((v33 & 0x10000) != 0)
    {
      *(a1 + 264) = *(a2 + 264);
    }

    if ((v33 & 0x20000) != 0)
    {
      *(a1 + 272) = *(a2 + 272);
    }

    *(a1 + 16) |= v33;
  }

  v38 = *(a2 + 8);
  if (v38)
  {

    sub_1957EF4((a1 + 8), (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14FD444(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 160));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14FD484(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14FEB78(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

void sub_14FD510(void **result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    sub_1201B48(result + 3, v6, (v5 + 8), v4, *result[5] - *(result + 8));
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
    sub_156B7F4(result + 6, v11, (v10 + 8), v9, *result[8] - *(result + 14));
    v12 = *(result + 14) + v9;
    *(result + 14) = v12;
    v13 = result[8];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  if (*(a2 + 16))
  {
    v14 = *(a2 + 72);
    *(result + 4) |= 1u;
    *(result + 18) = v14;
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4(result + 1, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14FD644(uint64_t result)
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
      result = sub_152E724(*(result + 32));
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

void sub_14FD6D8(uint64_t a1, uint64_t a2)
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

        v8 = sub_1551248(v10);
        *(a1 + 32) = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_27764E0;
      }

      sub_152EB7C(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14FD7C4(uint64_t a1)
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

void sub_14FD864(uint64_t a1)
{
  sub_14FD7C4(a1);

  operator delete();
}

uint64_t sub_14FD89C(uint64_t a1)
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

uint64_t sub_14FD8E4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_14FDA70(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_14FDB70(uint64_t a1)
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

uint64_t sub_14FDC20(uint64_t a1)
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

void sub_14FDCC0(uint64_t a1)
{
  sub_14FDC20(a1);

  operator delete();
}

uint64_t sub_14FDCF8(uint64_t a1)
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

uint64_t sub_14FDD40(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_14FDECC(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_14FDFCC(uint64_t a1)
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

uint64_t sub_14FE07C(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1569898((a1 + 48));
  sub_1569814((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14FE134(uint64_t a1)
{
  sub_14FE07C(a1);

  operator delete();
}

uint64_t sub_14FE16C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14FD89C(v4);
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
      result = sub_14FDCF8(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  if ((v8 & 6) != 0)
  {
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_14FE250(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 29)
        {
          v21 = *v7;
          v19 = v7 + 4;
          v5 |= 4u;
          *(a1 + 84) = v21;
          goto LABEL_30;
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 34)
        {
          v22 = v7 - 1;
          while (1)
          {
            v23 = v22 + 1;
            *v35 = v22 + 1;
            v24 = *(a1 + 40);
            if (v24 && (v25 = *(a1 + 32), v25 < *v24))
            {
              *(a1 + 32) = v25 + 1;
              v26 = *&v24[2 * v25 + 2];
            }

            else
            {
              v27 = sub_15291A8(*(a1 + 24));
              v26 = sub_19593CC(a1 + 24, v27);
              v23 = *v35;
            }

            v22 = sub_2218388(a3, v26, v23);
            *v35 = v22;
            if (!v22)
            {
              goto LABEL_58;
            }

            if (*a3 <= v22 || *v22 != 34)
            {
              goto LABEL_53;
            }
          }
        }
      }

      else if (v11 == 5 && v8 == 42)
      {
        v12 = v7 - 1;
        while (1)
        {
          v13 = v12 + 1;
          *v35 = v12 + 1;
          v14 = *(a1 + 64);
          if (v14 && (v15 = *(a1 + 56), v15 < *v14))
          {
            *(a1 + 56) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_1529230(*(a1 + 48));
            v16 = sub_19593CC(a1 + 48, v17);
            v13 = *v35;
          }

          v12 = sub_2218418(a3, v16, v13);
          *v35 = v12;
          if (!v12)
          {
            goto LABEL_58;
          }

          if (*a3 <= v12 || *v12 != 42)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_45;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 10)
    {
      goto LABEL_45;
    }

    *(a1 + 16) |= 1u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v30 = sub_194DB04((a1 + 72), v29);
    v31 = sub_1958890(v30, *v35, a3);
LABEL_52:
    *v35 = v31;
    if (!v31)
    {
      goto LABEL_58;
    }

LABEL_53:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2 && v8 == 21)
  {
    v20 = *v7;
    v19 = v7 + 4;
    v5 |= 2u;
    *(a1 + 80) = v20;
LABEL_30:
    *v35 = v19;
    goto LABEL_53;
  }

LABEL_45:
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
      v7 = *v35;
    }

    v31 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_52;
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

char *sub_14FE534(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
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

  v7 = *(a1 + 80);
  *v4 = 21;
  *(v4 + 1) = v7;
  v4 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 84);
    *v4 = 29;
    *(v4 + 1) = v8;
    v4 += 5;
  }

LABEL_12:
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
      *v4 = 34;
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

      v4 = sub_14FDA70(v11, v13, a3);
    }
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v16 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 42;
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

      v4 = sub_14FDECC(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_14FE798(uint64_t a1)
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
      v7 = sub_14FDB70(v6);
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
      v14 = sub_14FDFCC(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 7) != 0)
  {
    if (v15)
    {
      v16 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v19 = v9 + 5;
    if ((v15 & 2) == 0)
    {
      v19 = v9;
    }

    if ((v15 & 4) != 0)
    {
      v9 = v19 + 5;
    }

    else
    {
      v9 = v19;
    }
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v9 += v23;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_14FE8F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156B6FC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_156B778((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 7) != 0)
  {
    if (v14)
    {
      v16 = *(a2 + 72);
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a1 + 72), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
LABEL_12:
          *(a1 + 16) |= v14;
          goto LABEL_13;
        }

LABEL_11:
        *(a1 + 84) = *(a2 + 84);
        goto LABEL_12;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 80) = *(a2 + 80);
    if ((v14 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14FEA98(uint64_t a1)
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

void sub_14FEB40(uint64_t a1)
{
  sub_14FEA98(a1);

  operator delete();
}

uint64_t sub_14FEB78(uint64_t a1)
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
  *(v4 + 48) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_14FEC00(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 26)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    v27 = sub_194DB04((a1 + 48), v26);
    v16 = sub_1958890(v27, *v28, a3);
LABEL_36:
    *v28 = v16;
    if (!v16)
    {
      goto LABEL_44;
    }

LABEL_39:
    if (sub_195ADC0(a3, v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 == 18)
    {
      v17 = v7 - 1;
      while (1)
      {
        v18 = (v17 + 1);
        *v28 = v17 + 1;
        v19 = *(a1 + 40);
        if (v19 && (v20 = *(a1 + 32), v20 < *v19))
        {
          *(a1 + 32) = v20 + 1;
          v21 = *&v19[2 * v20 + 2];
        }

        else
        {
          v22 = *(a1 + 24);
          if (!v22)
          {
            operator new();
          }

          *v24 = v23;
          v24[1] = sub_195A650;
          *v23 = 0;
          v23[1] = 0;
          v23[2] = 0;
          v21 = sub_19593CC(a1 + 24, v23);
          v18 = *v28;
        }

        v17 = sub_1958890(v21, v18, a3);
        *v28 = v17;
        if (!v17)
        {
          goto LABEL_44;
        }

        if (*a3 <= v17 || *v17 != 18)
        {
          goto LABEL_39;
        }
      }
    }
  }

  else if (v11 == 1 && v8 == 13)
  {
    v5 |= 2u;
    *(a1 + 56) = *v7;
    *v28 = v7 + 4;
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
      v7 = *v28;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_36;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_44:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_14FEE7C(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
  }

  v8 = *(a1 + 32);
  if (v8 >= 1)
  {
    v9 = 8;
    do
    {
      v10 = *(*(a1 + 40) + v9);
      v11 = *(v10 + 23);
      if (v11 < 0 && (v11 = v10[1], v11 > 127) || (*a3 - v4 + 14) < v11)
      {
        v4 = sub_1957480(a3, 2, v10, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v11;
        if (*(v10 + 23) < 0)
        {
          v10 = *v10;
        }

        v12 = v4 + 2;
        memcpy(v12, v10, v11);
        v4 = &v12[v11];
      }

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 3, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
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

uint64_t sub_14FF02C(uint64_t a1)
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
  if ((v7 & 3) != 0)
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
      v3 += 5;
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

    v3 += v14;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_14FF118(uint64_t a1, uint64_t a2)
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
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 16) |= v9;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_14FF244(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_156991C(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14FF2CC(void *a1)
{
  sub_14FF244(a1);

  operator delete();
}

uint64_t sub_14FF304(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v30, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v30 + 1);
    v8 = **v30;
    if (**v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v30 + 2);
      }
    }

    *v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 == 26)
      {
        v24 = v7 - 1;
        while (1)
        {
          v25 = v24 + 1;
          *v30 = v24 + 1;
          v26 = *(a1 + 64);
          if (v26 && (v27 = *(a1 + 56), v27 < *v26))
          {
            *(a1 + 56) = v27 + 1;
            v28 = *&v26[2 * v27 + 2];
          }

          else
          {
            v29 = sub_1529368(*(a1 + 48));
            v28 = sub_19593CC(a1 + 48, v29);
            v25 = *v30;
          }

          v24 = sub_22184A8(a3, v28, v25);
          *v30 = v24;
          if (!v24)
          {
            goto LABEL_49;
          }

          if (*a3 <= v24 || *v24 != 26)
          {
            goto LABEL_44;
          }
        }
      }
    }

    else if (v11 == 2)
    {
      if (v8 == 18)
      {
        v16 = v7 - 1;
        while (1)
        {
          v17 = (v16 + 1);
          *v30 = v16 + 1;
          v18 = *(a1 + 40);
          if (v18 && (v19 = *(a1 + 32), v19 < *v18))
          {
            *(a1 + 32) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = *(a1 + 24);
            if (!v21)
            {
              operator new();
            }

            *v23 = v22;
            v23[1] = sub_195A650;
            *v22 = 0;
            v22[1] = 0;
            v22[2] = 0;
            v20 = sub_19593CC(a1 + 24, v22);
            v17 = *v30;
          }

          v16 = sub_1958890(v20, v17, a3);
          *v30 = v16;
          if (!v16)
          {
            goto LABEL_49;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_44;
          }
        }
      }
    }

    else if (v11 == 1 && v8 == 13)
    {
      *(a1 + 72) = *v7;
      *v30 = v7 + 4;
      v5 = 1;
      goto LABEL_44;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = *v30;
    }

    *v30 = sub_1952690(v8, v15, v7, a3);
    if (!*v30)
    {
      goto LABEL_49;
    }

LABEL_44:
    if (sub_195ADC0(a3, v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_14FF5C8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 72);
    *v4 = 13;
    *(v4 + 1) = v6;
    v4 += 5;
  }

  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a1 + 40) + v8);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = v9[1], v10 > 127) || (*a3 - v4 + 14) < v10)
      {
        v4 = sub_1957480(a3, 2, v9, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v10;
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v11 = v4 + 2;
        memcpy(v11, v9, v10);
        v4 = &v11[v10];
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(*(a1 + 64) + 8 * i + 8);
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

      v4 = sub_14FEE7C(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v20)
  {
    v22 = v20;
    memcpy(v4, v21, v20);
    v4 += v22;
    return v4;
  }

  return sub_1957130(a3, v21, v20, v4);
}

uint64_t sub_14FF7DC(uint64_t a1)
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
      v14 = sub_14FF02C(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(a1 + 16))
  {
    result = v9 + 5;
  }

  else
  {
    result = v9;
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    result += v18;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_14FF904(uint64_t a1)
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

void sub_14FF9C4(uint64_t a1)
{
  sub_14FF904(a1);

  operator delete();
}

uint64_t sub_14FF9FC(uint64_t a1)
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
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 56) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_14FFABC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  if (sub_195ADC0(a3, v32, a3[11].u32[1]))
  {
    return *v32;
  }

  while (1)
  {
    v6 = (*v32 + 1);
    v7 = **v32;
    if (**v32 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v32, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v32 + 2);
      }
    }

    *v32 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 != 1)
      {
        if (v10 == 2 && v7 == 18)
        {
          *(a1 + 16) |= 1u;
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v14 = (a1 + 48);
LABEL_23:
          v16 = sub_194DB04(v14, v13);
          v17 = sub_1958890(v16, *v32, a3);
          goto LABEL_50;
        }

        goto LABEL_43;
      }

      if (v7 != 8)
      {
        goto LABEL_43;
      }

      v19 = v6 + 1;
      v18 = *v6;
      if (v18 < 0)
      {
        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          *v32 = sub_19587DC(v6, v18);
          if (!*v32)
          {
            goto LABEL_59;
          }

          goto LABEL_29;
        }

        v19 = v6 + 2;
      }

      *v32 = v19;
LABEL_29:
      if (v18 > 0xB)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 64) = v18;
      }

      goto LABEL_51;
    }

    if (v10 == 3)
    {
      if (v7 == 26)
      {
        v21 = v6 - 1;
        while (1)
        {
          v22 = (v21 + 1);
          *v32 = v21 + 1;
          v23 = *(a1 + 40);
          if (v23 && (v24 = *(a1 + 32), v24 < *v23))
          {
            *(a1 + 32) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = *(a1 + 24);
            if (!v26)
            {
              operator new();
            }

            *v28 = v27;
            v28[1] = sub_195A650;
            *v27 = 0;
            v27[1] = 0;
            v27[2] = 0;
            v25 = sub_19593CC(a1 + 24, v27);
            v22 = *v32;
          }

          v21 = sub_1958890(v25, v22, a3);
          *v32 = v21;
          if (!v21)
          {
            goto LABEL_59;
          }

          if (*a3 <= v21 || *v21 != 26)
          {
            goto LABEL_51;
          }
        }
      }
    }

    else if (v10 == 4 && v7 == 34)
    {
      *(a1 + 16) |= 2u;
      v15 = *(a1 + 8);
      v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v13 = *v13;
      }

      v14 = (a1 + 56);
      goto LABEL_23;
    }

LABEL_43:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v6 = *v32;
    }

    v17 = sub_1952690(v7, v31, v6, a3);
LABEL_50:
    *v32 = v17;
    if (!v17)
    {
      goto LABEL_59;
    }

LABEL_51:
    if (sub_195ADC0(a3, v32, a3[11].u32[1]))
    {
      return *v32;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v32;
  }

LABEL_59:
  *v32 = 0;
  return *v32;
}

char *sub_14FFDC0(uint64_t a1, char *__dst, unint64_t *a3)
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
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 40) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || (*a3 - v6 + 14) < v14)
      {
        v6 = sub_1957480(a3, 3, v13, v6);
      }

      else
      {
        *v6 = 26;
        v6[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = v6 + 2;
        memcpy(v15, v13, v14);
        v6 = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 4, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v6);
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

uint64_t sub_14FFFD8(uint64_t a1)
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
  if ((v7 & 7) != 0)
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
      if ((v7 & 2) == 0)
      {
LABEL_11:
        if ((v7 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) != 0)
    {
LABEL_19:
      v14 = *(a1 + 64);
      if (v14 < 0)
      {
        v15 = 11;
      }

      else
      {
        v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v15;
    }
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

    v3 += v19;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_150013C(uint64_t a1, uint64_t a2)
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

uint64_t sub_15002A8(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (a1 != &off_2775420)
  {
    v6 = *(a1 + 112);
    if (v6)
    {
      sub_14FF904(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1569370((a1 + 72));
  sub_13B31E8((a1 + 48));
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15003B4(uint64_t a1)
{
  sub_15002A8(a1);

  operator delete();
}

uint64_t sub_15003EC(uint64_t result)
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
      result = sub_14F5244(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 7) == 0)
  {
    goto LABEL_18;
  }

  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  v14 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v14 + 23) & 0x80000000) == 0)
  {
    *v14 = 0;
    *(v14 + 23) = 0;
    if ((v11 & 2) != 0)
    {
      goto LABEL_28;
    }

LABEL_16:
    if ((v11 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  **v14 = 0;
  *(v14 + 8) = 0;
  if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_28:
  v15 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v15 + 23) & 0x80000000) == 0)
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v11 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = sub_14FF9FC(*(v1 + 112));
    goto LABEL_18;
  }

  **v15 = 0;
  *(v15 + 8) = 0;
  if ((v11 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v11 & 0x18) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
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

uint64_t sub_150054C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v53 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v53, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v53 + 1);
    v8 = **v53;
    if (**v53 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v53, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v53 + 2);
      }
    }

    *v53 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 > 6)
    {
      if (v11 != 7)
      {
        if (v11 == 8 && v8 == 66)
        {
          *(a1 + 16) |= 4u;
          v25 = *(a1 + 112);
          if (!v25)
          {
            v26 = *(a1 + 8);
            v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
            if (v26)
            {
              v27 = *v27;
            }

            v25 = sub_15294BC(v27);
            *(a1 + 112) = v25;
            v7 = *v53;
          }

          v28 = sub_2218538(a3, v25, v7);
LABEL_83:
          *v53 = v28;
          if (!v28)
          {
            goto LABEL_93;
          }

          goto LABEL_84;
        }

        goto LABEL_76;
      }

      if (v8 != 56)
      {
        goto LABEL_76;
      }

      v5 |= 0x10u;
      v44 = v7 + 1;
      v43 = *v7;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_75;
      }

      v45 = *v44;
      v43 = (v45 << 7) + v43 - 128;
      if ((v45 & 0x80000000) == 0)
      {
        v44 = v7 + 2;
LABEL_75:
        *v53 = v44;
        *(a1 + 128) = v43;
        goto LABEL_84;
      }

      v49 = sub_19587DC(v7, v43);
      *v53 = v49;
      *(a1 + 128) = v50;
      if (!v49)
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (v11 == 5)
      {
        if (v8 == 42)
        {
          v31 = v7 - 1;
          while (1)
          {
            v32 = v31 + 1;
            *v53 = v31 + 1;
            v33 = *(a1 + 88);
            if (v33 && (v34 = *(a1 + 80), v34 < *v33))
            {
              *(a1 + 80) = v34 + 1;
              v35 = *&v33[2 * v34 + 2];
            }

            else
            {
              v36 = sub_1528AA8(*(a1 + 72));
              v35 = sub_19593CC(a1 + 72, v36);
              v32 = *v53;
            }

            v31 = sub_2217968(a3, v35, v32);
            *v53 = v31;
            if (!v31)
            {
              goto LABEL_93;
            }

            if (*a3 <= v31 || *v31 != 42)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_76;
      }

      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_76;
      }

      v5 |= 8u;
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
        *v53 = v17;
        *(a1 + 120) = v16;
        goto LABEL_84;
      }

      v51 = sub_19587DC(v7, v16);
      *v53 = v51;
      *(a1 + 120) = v52;
      if (!v51)
      {
        goto LABEL_93;
      }
    }

LABEL_84:
    if (sub_195ADC0(a3, v53, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 2)
  {
    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_76;
      }

      *(a1 + 16) |= 1u;
      v29 = *(a1 + 8);
      v14 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v14 = *v14;
      }

      v15 = (a1 + 96);
    }

    else
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_76;
      }

      *(a1 + 16) |= 2u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v15 = (a1 + 104);
    }

    v30 = sub_194DB04(v15, v14);
    v28 = sub_1958890(v30, *v53, a3);
    goto LABEL_83;
  }

  if (v11 == 3)
  {
    if (v8 == 26)
    {
      v37 = v7 - 1;
      while (1)
      {
        v38 = v37 + 1;
        *v53 = v37 + 1;
        v39 = *(a1 + 40);
        if (v39 && (v40 = *(a1 + 32), v40 < *v39))
        {
          *(a1 + 32) = v40 + 1;
          v41 = *&v39[2 * v40 + 2];
        }

        else
        {
          v42 = sub_16F5A54(*(a1 + 24));
          v41 = sub_19593CC(a1 + 24, v42);
          v38 = *v53;
        }

        v37 = sub_22002C0(a3, v41, v38);
        *v53 = v37;
        if (!v37)
        {
          goto LABEL_93;
        }

        if (*a3 <= v37 || *v37 != 26)
        {
          goto LABEL_84;
        }
      }
    }
  }

  else if (v11 == 4 && v8 == 34)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = v19 + 1;
      *v53 = v19 + 1;
      v21 = *(a1 + 64);
      if (v21 && (v22 = *(a1 + 56), v22 < *v21))
      {
        *(a1 + 56) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_16F5A54(*(a1 + 48));
        v23 = sub_19593CC(a1 + 48, v24);
        v20 = *v53;
      }

      v19 = sub_22002C0(a3, v23, v20);
      *v53 = v19;
      if (!v19)
      {
        goto LABEL_93;
      }

      if (*a3 <= v19 || *v19 != 34)
      {
        goto LABEL_84;
      }
    }
  }

LABEL_76:
  if (v8)
  {
    v46 = (v8 & 7) == 4;
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
      v7 = *v53;
    }

    v28 = sub_1952690(v8, v48, v7, a3);
    goto LABEL_83;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_93:
  *v53 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v53;
}

char *sub_15009E4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), v4);
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
      *v4 = 26;
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

      v4 = sub_16E74A8(v9, v11, a3);
    }
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 34;
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

      v4 = sub_16E74A8(v14, v16, a3);
    }
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v19 = *(*(a1 + 88) + 8 * k + 8);
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

      v4 = sub_14F5930(v19, v21, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v23 = *(a1 + 120);
    *v4 = 48;
    v4[1] = v23;
    if (v23 > 0x7F)
    {
      v4[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v4[2] = v23 >> 7;
      v22 = v4 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v4[2];
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
      v22 = v4 + 2;
    }
  }

  else
  {
    v22 = v4;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v28 = *(a1 + 128);
    *v22 = 56;
    v22[1] = v28;
    if (v28 > 0x7F)
    {
      v22[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v22[2] = v28 >> 7;
      v27 = v22 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v30) = v22[2];
        do
        {
          *(v27 - 1) = v30 | 0x80;
          v30 = v29 >> 7;
          *v27++ = v29 >> 7;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v27 = v22 + 2;
    }
  }

  else
  {
    v27 = v22;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v32 = *(a1 + 112);
    *v27 = 66;
    v33 = *(v32 + 20);
    v27[1] = v33;
    if (v33 > 0x7F)
    {
      v34 = sub_19575D0(v33, v27 + 1);
    }

    else
    {
      v34 = v27 + 2;
    }

    v27 = sub_14FFDC0(v32, v34, a3);
  }

  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v27;
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

  if ((*a3 - v27) >= v38)
  {
    v40 = v38;
    memcpy(v27, v39, v38);
    v27 += v40;
    return v27;
  }

  return sub_1957130(a3, v39, v38, v27);
}

uint64_t sub_1500DD8(uint64_t a1)
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
      v21 = sub_14F5DE8(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x1F) == 0)
  {
    goto LABEL_28;
  }

  if (v22)
  {
    v25 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v25 + 23);
    v27 = *(v25 + 8);
    if ((v26 & 0x80u) == 0)
    {
      v27 = v26;
    }

    v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 2) == 0)
    {
LABEL_24:
      if ((v22 & 4) == 0)
      {
        goto LABEL_25;
      }

LABEL_36:
      v31 = sub_14FFFD8(*(a1 + 112));
      v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 8) == 0)
      {
LABEL_26:
        if ((v22 & 0x10) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_37;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_24;
  }

  v28 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_25:
  if ((v22 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_37:
  v16 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v22 & 0x10) != 0)
  {
LABEL_27:
    v16 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_28:
  v23 = *(a1 + 8);
  if (v23)
  {
    v32 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v33 < 0)
    {
      v33 = *(v32 + 16);
    }

    v16 += v33;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_1501040(uint64_t a1, uint64_t a2)
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
    sub_156B210((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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

        goto LABEL_28;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    v24 = *(a2 + 104);
    *(a1 + 16) |= 2u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 104), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(a1 + 16) |= 4u;
    v27 = *(a1 + 112);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_15294BC(v29);
      *(a1 + 112) = v27;
    }

    if (*(a2 + 112))
    {
      v30 = *(a2 + 112);
    }

    else
    {
      v30 = &off_27753D8;
    }

    sub_150013C(v27, v30);
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
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_17;
    }

LABEL_36:
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

uint64_t sub_15012C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EA640;
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

  v12 = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 56) = v12;
  return a1;
}

void sub_15013F4(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1501434(uint64_t a1)
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

void sub_15014DC(uint64_t a1)
{
  sub_1501434(a1);

  operator delete();
}

uint64_t sub_1501514(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v43 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v43, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v43 + 1);
    v8 = **v43;
    if (**v43 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v43, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v43 + 2);
      }
    }

    *v43 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_47;
      }

      v5 |= 2u;
      v25 = v7 + 1;
      v24 = *v7;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_37:
        *v43 = v25;
        *(a1 + 56) = v24 != 0;
        goto LABEL_55;
      }

      v37 = sub_19587DC(v7, v24);
      *v43 = v37;
      *(a1 + 56) = v38 != 0;
      if (!v37)
      {
        goto LABEL_66;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_47;
      }

      v5 |= 4u;
      v28 = v7 + 1;
      v27 = *v7;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_42:
        *v43 = v28;
        *(a1 + 57) = v27 != 0;
        goto LABEL_55;
      }

      v39 = sub_19587DC(v7, v27);
      *v43 = v39;
      *(a1 + 57) = v40 != 0;
      if (!v39)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_47;
      }

      v5 |= 8u;
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
        *v43 = v13;
        *(a1 + 58) = v12 != 0;
        goto LABEL_55;
      }

      v41 = sub_19587DC(v7, v12);
      *v43 = v41;
      *(a1 + 58) = v42 != 0;
      if (!v41)
      {
        goto LABEL_66;
      }
    }

LABEL_55:
    if (sub_195ADC0(a3, v43, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v32 = sub_194DB04((a1 + 48), v31);
      v33 = sub_1958890(v32, *v43, a3);
LABEL_54:
      *v43 = v33;
      if (!v33)
      {
        goto LABEL_66;
      }

      goto LABEL_55;
    }
  }

  else if (v11 == 2 && v8 == 18)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      *v43 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = *(a1 + 24);
        if (!v21)
        {
          operator new();
        }

        *v23 = v22;
        v23[1] = sub_195A650;
        *v22 = 0;
        v22[1] = 0;
        v22[2] = 0;
        v20 = sub_19593CC(a1 + 24, v22);
        v17 = *v43;
      }

      v16 = sub_1958890(v20, v17, a3);
      *v43 = v16;
      if (!v16)
      {
        goto LABEL_66;
      }

      if (*a3 <= v16 || *v16 != 18)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_47:
  if (v8)
  {
    v34 = (v8 & 7) == 4;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    v35 = *(a1 + 8);
    if (v35)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v7 = *v43;
    }

    v33 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  *v43 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v43;
}

char *sub_15018CC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a1 + 40) + v8);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = v9[1], v10 > 127) || (*a3 - v4 + 14) < v10)
      {
        v4 = sub_1957480(a3, 2, v9, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v10;
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v11 = v4 + 2;
        memcpy(v11, v9, v10);
        v4 = &v11[v10];
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 56);
    *v4 = 24;
    v4[1] = v12;
    v4 += 2;
    if ((v6 & 4) == 0)
    {
LABEL_16:
      if ((v6 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_16;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 57);
  *v4 = 32;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_24:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v14 = *(a1 + 58);
    *v4 = 40;
    v4[1] = v14;
    v4 += 2;
  }

LABEL_27:
  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v18)
  {
    v20 = v18;
    memcpy(v4, v19, v18);
    v4 += v20;
    return v4;
  }

  return sub_1957130(a3, v19, v18, v4);
}

uint64_t sub_1501AF8(uint64_t a1)
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
  if ((v7 & 0xF) != 0)
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

    v3 += ((*(a1 + 16) >> 1) & 2) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 2) & 2u);
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

    v3 += v14;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1501C10(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26EA6C0;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = a2;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  return result;
}

uint64_t sub_1501C58(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EA6C0;
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
    sub_13B326C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_156B880((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    sub_1957EF4(v4, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 72) = &qword_278E990;
  if (*(a2 + 16))
  {
    v16 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v16);
  }

  return a1;
}

void sub_1501DE0(_Unwind_Exception *a1)
{
  sub_15699A0(v3);
  sub_13B31E8(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1501E3C(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_15699A0((a1 + 48));
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1501EF4(uint64_t a1)
{
  sub_1501E3C(a1);

  operator delete();
}

uint64_t sub_1501F2C(uint64_t result)
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
      result = sub_1504E8C(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    v8 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
    }
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_1502004(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v32, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v32 + 1);
    v7 = **v32;
    if (**v32 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v32, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v32 + 2);
      }
    }

    *v32 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v22 = v6 - 1;
        while (1)
        {
          v23 = v22 + 1;
          *v32 = v22 + 1;
          v24 = *(a1 + 64);
          if (v24 && (v25 = *(a1 + 56), v25 < *v24))
          {
            *(a1 + 56) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = sub_1529948(*(a1 + 48));
            v26 = sub_19593CC(a1 + 48, v27);
            v23 = *v32;
          }

          v22 = sub_22185C8(a3, v26, v23);
          *v32 = v22;
          if (!v22)
          {
            goto LABEL_49;
          }

          if (*a3 <= v22 || *v22 != 26)
          {
            goto LABEL_44;
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
          *v32 = v16 + 1;
          v18 = *(a1 + 40);
          if (v18 && (v19 = *(a1 + 32), v19 < *v18))
          {
            *(a1 + 32) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_16F5A54(*(a1 + 24));
            v20 = sub_19593CC(a1 + 24, v21);
            v17 = *v32;
          }

          v16 = sub_22002C0(a3, v20, v17);
          *v32 = v16;
          if (!v16)
          {
            break;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_44;
          }
        }

LABEL_49:
        *v32 = 0;
        return *v32;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v30 = sub_194DB04((a1 + 72), v29);
      v15 = sub_1958890(v30, *v32, a3);
      goto LABEL_43;
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
        return *v32;
      }

      goto LABEL_49;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v32;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_43:
    *v32 = v15;
    if (!v15)
    {
      goto LABEL_49;
    }

LABEL_44:
    ;
  }

  return *v32;
}

char *sub_1502270(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_16E74A8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
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

      v4 = sub_15051BC(v13, v15, a3);
    }
  }

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

uint64_t sub_1502458(uint64_t a1)
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
      v14 = sub_1505338(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(a1 + 16))
  {
    v15 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v9 += v21;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_1502598(uint64_t a1, uint64_t a2)
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
    sub_156B880((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  if (*(a2 + 16))
  {
    v14 = *(a2 + 72);
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 72), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15026E8(uint64_t a1)
{
  v1 = *(a1 + 56);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 64) + 8 * v1--);
  }

  while ((*(v3 + 16) & 2) != 0);
  return v2 < 1;
}

void *sub_1502728(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26EA740;
  result[1] = v3;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  return result;
}

void *sub_150276C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_26EA740;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4(a1 + 1, (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  a1[3] = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C(a1 + 3, (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  a1[4] = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C(a1 + 4, (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 16);
  }

  a1[5] = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C(a1 + 5, (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 16);
  }

  a1[6] = &qword_278E990;
  if ((v5 & 8) != 0)
  {
    v10 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v10 = *v10;
    }

    sub_194EA1C(a1 + 6, (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v10);
    v5 = *(a2 + 16);
  }

  a1[7] = &qword_278E990;
  if ((v5 & 0x10) != 0)
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C(a1 + 7, (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}

void sub_15028D8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_150290C(uint64_t a1)
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

void sub_1502A00(uint64_t a1)
{
  sub_150290C(a1);

  operator delete();
}

uint64_t sub_1502A38(uint64_t a1)
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

uint64_t sub_1502B58(uint64_t a1, uint64_t a2, int32x2_t *a3)
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