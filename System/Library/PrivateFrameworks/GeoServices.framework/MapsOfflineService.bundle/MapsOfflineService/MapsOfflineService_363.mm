uint64_t sub_14B71B8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = sub_14B7DC4(*(a1 + 56));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = sub_14B8660(*(a1 + 64));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = sub_14B7DC4(*(a1 + 72));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = sub_14B8C64(*(a1 + 80));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = sub_14B8C64(*(a1 + 88));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x40) != 0)
  {
LABEL_20:
    v13 = *(a1 + 96);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v14;
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_24;
    }

LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_24:
  v15 = *(a1 + 100);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v16;
  if ((v4 & 0x100) != 0)
  {
LABEL_28:
    v17 = *(a1 + 104);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v18;
  }

LABEL_32:
  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v3 += v22;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_14B7418(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 48), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 40) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 64) = *(a2 + 64);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 56);
    *(a1 + 40) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 56), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14B751C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(a1 + 40) |= 1u;
      v6 = *(a1 + 48);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_1551A70(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_2776880;
      }

      sub_144F404(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 40) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14B7610(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 48);
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    sub_194EA1C((a1 + 48), (v4 & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v7 = *(a2 + 8);
  if (v7)
  {

    sub_1957EF4((a1 + 8), (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14B76B0(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 48) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14B7710(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E7B40;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = 0;
  return a1;
}

void sub_14B7784(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14B77B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E7B40;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 48) = &qword_278E990;
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v8);
    v7 = *(a2 + 40);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v7 & 2) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void sub_14B78BC(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14B78F8(uint64_t a1)
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
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14B79B8(uint64_t a1)
{
  sub_14B78F8(a1);

  operator delete();
}

uint64_t sub_14B79F0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v27 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v27, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v27 + 1);
    v8 = **v27;
    if (**v27 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v27, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v27 + 2);
      }
    }

    *v27 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_13;
      }

      *(a1 + 40) |= 2u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v20 = (a1 + 56);
      goto LABEL_31;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_23:
      *v27 = v15;
      *(a1 + 64) = v16;
      goto LABEL_33;
    }

    v25 = sub_1958770(v7, v16);
    *v27 = v25;
    *(a1 + 64) = v26;
    if (!v25)
    {
      goto LABEL_43;
    }

LABEL_33:
    if (sub_195ADC0(a3, v27, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 40) |= 1u;
    v21 = *(a1 + 8);
    v19 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v19 = *v19;
    }

    v20 = (a1 + 48);
LABEL_31:
    v22 = sub_194DB04(v20, v19);
    v14 = sub_1958890(v22, *v27, a3);
    goto LABEL_32;
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
    if (v8 - 8000 > 0xF9F)
    {
      v23 = *(a1 + 8);
      if (v23)
      {
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v24 = sub_11F1920((a1 + 8));
        v7 = *v27;
      }

      v14 = sub_1952690(v8, v24, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_2773B38, (a1 + 8), a3);
    }

LABEL_32:
    *v27 = v14;
    if (!v14)
    {
      goto LABEL_43;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_43:
  *v27 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v27;
}

char *sub_14B7C34(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 64);
    *v4 = 24;
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
    v7 = sub_128AEEC(a3, 4, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  if (*(a1 + 26))
  {
    v7 = sub_1953428(a1 + 16, 1000, 1500, v7, a3);
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

uint64_t sub_14B7DC4(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      result += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    v8 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    result += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) != 0)
    {
LABEL_5:
      result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_6:
  v4 = *(a1 + 8);
  if (v4)
  {
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 44) = result;
  return result;
}

void *sub_14B7EEC(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E7BC0;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void sub_14B7F54(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14B7F84(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_26E7BC0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  if (*(a2 + 40))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_14B80B8(uint64_t a1)
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
  if (a1 != &off_2773B80)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_153BE94(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14B8178(uint64_t a1)
{
  sub_14B80B8(a1);

  operator delete();
}

char *sub_14B81B0(uint64_t a1, char *a2, int32x2_t *a3)
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
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v15 = v7 + 1;
      v16 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v17 = *v15;
      v16 = v16 + (v17 << 7) - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v15 = v7 + 2;
LABEL_23:
        v30 = v15;
        *(a1 + 60) = v16;
        goto LABEL_38;
      }

      v26 = sub_1958770(v7, v16);
      v30 = v26;
      *(a1 + 60) = v27;
      if (!v26)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v21 = v7 + 1;
      v22 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      v23 = *v21;
      v22 = v22 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_33:
        v30 = v21;
        *(a1 + 56) = v22;
        goto LABEL_38;
      }

      v28 = sub_1958770(v7, v22);
      v30 = v28;
      *(a1 + 56) = v29;
      if (!v28)
      {
        goto LABEL_47;
      }
    }

LABEL_38:
    if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 40) |= 1u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1551A70(v20);
      *(a1 + 48) = v18;
      v7 = v30;
    }

    v14 = sub_22030E0(a3, v18, v7);
LABEL_37:
    v30 = v14;
    if (!v14)
    {
      goto LABEL_47;
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
    if (v8 - 8000 > 0xF9F)
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

      v14 = sub_1952690(v8, v25, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_2773B80, (a1 + 8), a3);
    }

    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_47:
  v30 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v30;
}

char *sub_14B8428(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 60);
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

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 48);
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

    v11 = sub_153C1A4(v15, v17, a3);
  }

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 1000, 1500, v11, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v21)
  {
    v23 = v21;
    memcpy(v11, v22, v21);
    v11 += v23;
    return v11;
  }

  return sub_1957130(a3, v22, v21, v11);
}

uint64_t sub_14B8660(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v6 = sub_153C388(*(a1 + 48));
      v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) != 0)
    {
LABEL_5:
      v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_6:
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 44) = v2;
  return v2;
}

void *sub_14B8768(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E7C40;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = &qword_278E990;
  return a1;
}

void sub_14B87D8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14B8808(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E7C40;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 40))
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  return a1;
}

void sub_14B88D8(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14B8914(uint64_t a1)
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
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14B89BC(uint64_t a1)
{
  sub_14B8914(a1);

  operator delete();
}

uint64_t sub_14B89F4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v17 = a2;
  if (sub_195ADC0(a3, v17, a3[11].u32[1]))
  {
    return *v17;
  }

  while (1)
  {
    v5 = (*v17 + 1);
    v6 = **v17;
    if (**v17 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(*v17, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = (*v17 + 2);
      }
    }

    *v17 = v5;
    if (v6 != 10)
    {
      break;
    }

    *(a1 + 40) |= 1u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v13 = sub_194DB04((a1 + 48), v12);
    v10 = sub_1958890(v13, *v17, a3);
LABEL_19:
    *v17 = v10;
    if (!v10)
    {
      goto LABEL_26;
    }

    if (sub_195ADC0(a3, v17, a3[11].u32[1]))
    {
      return *v17;
    }
  }

  if (v6)
  {
    v9 = (v6 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (v6 - 8000 > 0xF9F)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v15 = sub_11F1920((a1 + 8));
        v5 = *v17;
      }

      v10 = sub_1952690(v6, v15, v5, a3);
    }

    else
    {
      v10 = sub_19525AC((a1 + 16), v6, v5, &off_2773BC0, (a1 + 8), a3);
    }

    goto LABEL_19;
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return *v17;
  }

LABEL_26:
  *v17 = 0;
  return *v17;
}

char *sub_14B8B78(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  if (*(a1 + 40))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 1500, v4, a3);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if ((*a3 - v4) >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}

uint64_t sub_14B8C64(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    result += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  *(a1 + 44) = result;
  return result;
}

uint64_t sub_14B8D0C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E7CC0;
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

void sub_14B8D88(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14B8DBC(void *a1)
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

void sub_14B8E30(void *a1)
{
  sub_14B8DBC(a1);

  operator delete();
}

uint64_t sub_14B8E68(uint64_t a1)
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

char *sub_14B8E80(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 24) = v13 != 0;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_19587DC(v6, v13);
    v19 = v16;
    *(a1 + 24) = v17 != 0;
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

char *sub_14B9004(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
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

uint64_t sub_14B90E4(uint64_t a1)
{
  v1 = 2 * (*(a1 + 16) & 1);
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

void *sub_14B9134(void *a1)
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

void sub_14B91A8(void *a1)
{
  sub_14B9134(a1);

  operator delete();
}

uint64_t sub_14B91E0(uint64_t a1)
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

char *sub_14B9204(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_14B93E8(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_14B9598(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
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

uint64_t sub_14B964C(uint64_t a1)
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
  if (a1 != &off_2773C38)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_14B9134(v6);
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

void sub_14B9704(uint64_t a1)
{
  sub_14B964C(a1);

  operator delete();
}

uint64_t sub_14B973C(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_14B91E0(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_14B9798(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v18, i) & 1) == 0; i = a3[11].u32[1])
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
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_14BF670(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2212050(a3, v14, v6);
    }

    else
    {
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
          return v18;
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
        v6 = v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
}

char *sub_14B98DC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
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

    v4 = sub_14B93E8(v6, v8, a3);
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

uint64_t sub_14B99E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_14B9598(*(a1 + 24));
    result = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    result = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    result += v6;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_14B9A68(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      data = sub_14BF670(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2773C18;
    }

    result = sub_128F8FC(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_14B9B28(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1565934(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14B9BA8(void *a1)
{
  sub_14B9B28(a1);

  operator delete();
}

char *sub_14B9BE0(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_14BF6E8(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_22120E0(a3, v16, v13);
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

char *sub_14B9D70(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_14B98DC(v8, v10, a3);
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

uint64_t sub_14B9EB0(uint64_t a1)
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
      v7 = sub_14B99E8(v6);
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

uint64_t sub_14B9F70(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E7EC0;
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

void sub_14B9FEC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14BA020(void *a1)
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

void sub_14BA094(void *a1)
{
  sub_14BA020(a1);

  operator delete();
}

uint64_t sub_14BA0CC(uint64_t a1)
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

char *sub_14BA0E4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v19, i) & 1) == 0; i = a3[11].u32[1])
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
    if (v7 == 8)
    {
      v13 = v6 + 1;
      v14 = *v6;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v13;
      v16 = (v15 << 7) + v14;
      LODWORD(v14) = v16 - 128;
      if (v15 < 0)
      {
        v19 = sub_19587DC(v6, (v16 - 128));
        if (!v19)
        {
          return 0;
        }

        LODWORD(v14) = v17;
      }

      else
      {
        v13 = v6 + 2;
LABEL_19:
        v19 = v13;
      }

      if (sub_16E4BFC(v14))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v14;
      }

      else
      {
        sub_12E8450();
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
        return v19;
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
      v6 = v19;
    }

    v19 = sub_1952690(v7, v12, v6, a3);
    if (!v19)
    {
      return 0;
    }
  }

  return v19;
}

char *sub_14BA25C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_14BA384(uint64_t a1)
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

std::string *sub_14BA3F0(std::string *result, std::string *a2)
{
  if (a2 != result)
  {
    v4 = result;
    v6 = result->__r_.__value_.__s.__data_[8];
    p_size = &result->__r_.__value_.__l.__size_;
    *(p_size + 4) = 0;
    *(p_size + 2) = 0;
    if (v6)
    {
      sub_1957EA8(p_size);
    }

    return sub_12B9D50(v4, a2);
  }

  return result;
}

double sub_14BA464(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E30C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_14BA4E4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E3140;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14BA560(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E31C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 60) = 0u;
  *(result + 76) = 1;
  return result;
}

uint64_t sub_14BA608(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E3240;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_14BA684(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E32C0;
  *(v2 + 8) = a1;
  result = 0.0;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  return result;
}

void *sub_14BA738(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E3340;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_14BA7BC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E33C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

void *sub_14BA844(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E3440;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  *(result + 37) = 0;
  return result;
}

void *sub_14BA8CC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E34C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = a1;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = a1;
  result[10] = &qword_278E990;
  result[11] = &qword_278E990;
  return result;
}

uint64_t sub_14BA97C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E3540;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_14BA9F8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E35C0;
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t sub_14BAA78(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E3640;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_14BAAF4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2[1] = a1;
  *v2 = &off_26E36C0;
  v2[2] = 0;
  v2[3] = &qword_278E990;
  *&result = 0x100000000;
  v2[4] = 0x100000000;
  return result;
}

uint64_t sub_14BAB80(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E3740;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14BABFC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E37C0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_14BAC9C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E3840;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = a1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = &qword_278E990;
  *(v2 + 72) = &qword_278E990;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0xFFFFFFFF00000000;
  return result;
}

uint64_t sub_14BAD60(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E38C0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_14BADDC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E3940;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_14BAE64(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26E39C0;
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
  return result;
}

void *sub_14BAF28(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E3A40;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_14BAFC4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E3AC0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_14BB040(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E3B40;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  return result;
}

uint64_t sub_14BB0C4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E3BC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0;
  return result;
}

double sub_14BB174(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E3C40;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

uint64_t sub_14BB1FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E3CC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0;
  return result;
}

void *sub_14BB2A0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E3D40;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_14BB324(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E3DC0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_14BB3A4(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567758();
  }

  return sub_145E490(v3, a1, 0);
}

uint64_t sub_14BB400(uint64_t *a1)
{
  if (!a1)
  {

    sub_15677C4();
  }

  return sub_145F784(v3, a1, 0);
}

uint64_t sub_14BB45C(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567830();
  }

  return sub_1460734(v3, a1, 0);
}

uint64_t sub_14BB4B8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E3FC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

double sub_14BB54C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E4040;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 1;
  return result;
}

void *sub_14BB5DC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E40C0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_14BB658(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E4140;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  return result;
}

uint64_t sub_14BB6FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E41C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  return result;
}

uint64_t sub_14BB7AC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E4240;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14BB828(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E42C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 84) = 0u;
  *(result + 100) = 1;
  return result;
}

uint64_t sub_14BB8E8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E4340;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 47) = 0;
  return result;
}

void *sub_14BB984(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E43C0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_14BB9FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E4440;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

void *sub_14BBAAC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E44C0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_14BBB28(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E4540;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_14BBBD0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E45C0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_14BBC70(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E4640;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_14BBCE8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E46C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_14BBD84(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E4740;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_14BBE00(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E47C0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_14BBE78(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E4840;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_14BBEF0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E48C0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_14BBF6C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E4940;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  return result;
}

uint64_t sub_14BC020(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E49C0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_14BC09C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E4A40;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_14BC118(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E4AC0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_14BC198(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E4B40;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_14BC220(uint64_t *a1)
{
  if (!a1)
  {

    sub_156789C();
  }

  return sub_146F2DC(v3, a1, 0);
}

void *sub_14BC27C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E4C40;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_14BC2F4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E4CC0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_14BC394(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E4D40;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_14BC40C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E4DC0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_14BC4AC(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567908();
  }

  return sub_1474140(v3, a1, 0);
}

uint64_t sub_14BC508(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E4EC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 1;
  return result;
}

void *sub_14BC5AC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E4F40;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_14BC634(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E4FC0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_14BC6D4(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567974();
  }

  return sub_1477038(v3, a1, 0);
}

void *sub_14BC730(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E50C0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_14BC7A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E5140;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14BC824(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E51C0;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_14BC8C8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E5240;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_14BC948(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E52C0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_14BC9E8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26E5340;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 92) = 0u;
  return result;
}

uint64_t sub_14BCA7C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E53C0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_14BCAFC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E5440;
  *(result + 16) = 0;
  *(result + 23) = 0;
  return result;
}

double sub_14BCB78(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E54C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

double sub_14BCBFC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E5540;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_14BCC7C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E55C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

uint64_t sub_14BCCF8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E5640;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_14BCD74(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E56C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t sub_14BCDF8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E5740;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

uint64_t sub_14BCE94(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E57C0;
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
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  return result;
}

uint64_t sub_14BCF4C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E5840;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_14BCFFC(uint64_t *a1)
{
  if (!a1)
  {

    sub_15679E0();
  }

  return sub_1482574(v3, a1, 0);
}

void *sub_14BD058(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E5940;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_14BD0D0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E59C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  return result;
}

void *sub_14BD174(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E5A40;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_14BD1EC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E5AC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_14BD268(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E5B40;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_14BD2E4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E5BC0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_14BD364(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E5C40;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_14BD400(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E5CC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  return result;
}

uint64_t sub_14BD4AC(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567A4C();
  }

  return sub_1487BC8(v3, a1, 0);
}

uint64_t sub_14BD508(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E5DC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = -1;
  return result;
}

double sub_14BD5AC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E5E40;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = 0;
  return result;
}

void *sub_14BD644(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E5EC0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_14BD6BC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E5F40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14BD738(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567AB8();
  }

  return sub_148BDB4(v3, a1, 0);
}

uint64_t sub_14BD794(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E6040;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_14BD814(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E60C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = &qword_278E990;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 140) = 0u;
  *(result + 156) = 800000;
  *(result + 160) = 257;
  *(result + 164) = 1;
  return result;
}

uint64_t sub_14BD8FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E6140;
  *(result + 16) = 0;
  *(result + 22) = 0;
  *(result + 30) = 1;
  return result;
}

uint64_t sub_14BD980(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E61C0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_14BDA20(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E6240;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_14BDABC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E62C0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14BDB38(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E6340;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_14BDBB8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E63C0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_14BDC34(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1497D08(v2, a1, 0);
}

uint64_t sub_14BDC94(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E64C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

void *sub_14BDD20(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E6540;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_14BDDBC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E65C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_14BDE5C(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567B24();
  }

  return sub_149D0F0(v3, a1, 0);
}

uint64_t sub_14BDEB8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E66C0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14BDF34(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E6740;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

uint64_t sub_14BDFD0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E67C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_14BE058(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E6840;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  return result;
}

void *sub_14BE0EC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E68C0;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

double sub_14BE174(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E6940;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  return result;
}

double sub_14BE228(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E69C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

uint64_t sub_14BE2A4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E6A40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14BE320(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E6AC0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 1;
  return result;
}

double sub_14BE3A4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E6B40;
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

double sub_14BE448(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26E6BC0;
  result = 0.0;
  *(v2 + 16) = xmmword_23365C0;
  return result;
}

void *sub_14BE4C8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E6C40;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  return result;
}

double sub_14BE550(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2[1] = a1;
  *v2 = off_26E6CC0;
  v2[2] = 0;
  v2[3] = &qword_278E990;
  v2[4] = &qword_278E990;
  result = NAN;
  v2[5] = 0xFFFFFFFF00000000;
  return result;
}

void *sub_14BE5DC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E6D40;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_14BE658(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E6DC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14BE6D4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E6E40;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

double sub_14BE764(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26E6EC0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 84) = 0u;
  return result;
}

void *sub_14BE7FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E6F40;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_14BE874(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26E6FC0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 1;
  return result;
}

uint64_t sub_14BE8F8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E7040;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_14BE994(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E70C0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  *(result + 44) = 1;
  *(result + 48) = 1;
  return result;
}

uint64_t sub_14BEA20(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E7140;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14BEA9C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E71C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_14BEB38(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E7240;
  *(result + 16) = 0;
  *(result + 23) = 0;
  return result;
}

uint64_t sub_14BEBB4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E72C0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_14BEC30(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E7340;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_14BECAC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E73C0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_14BED24(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567B90();
  }

  return sub_14ADEF0(v3, a1, 0);
}

uint64_t sub_14BED80(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E74C0;
  *(result + 16) = 0;
  *(result + 23) = 0;
  return result;
}

double sub_14BEDFC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26E7540;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = a1;
  return result;
}

void *sub_14BEE9C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E75C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_14BEF24(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E7640;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_14BEFAC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E76C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

double sub_14BF034(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E7740;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  return result;
}

void *sub_14BF0E8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E77C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_14BF184(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E7840;
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
  result[12] = 0;
  return result;
}

void *sub_14BF234(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E78C0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_14BF2AC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26E7940;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = 0;
  return result;
}

double sub_14BF344(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E79C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

uint64_t sub_14BF3C4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E7A40;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = &qword_278E990;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = &qword_278E990;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 1;
  return result;
}

uint64_t sub_14BF484(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567BFC();
  }

  return sub_14B617C(v3, a1, 0);
}

uint64_t sub_14BF4E0(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567C68();
  }

  return sub_14B7710(v3, a1, 0);
}

void *sub_14BF53C(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567CD4();
  }

  return sub_14B7EEC(v3, a1, 0);
}

void *sub_14BF598(uint64_t *a1)
{
  if (!a1)
  {

    sub_1567D40();
  }

  return sub_14B8768(v3, a1, 0);
}

uint64_t sub_14BF5F4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E7CC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_14BF670(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E7D40;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_14BF6E8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E7DC0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_14BF760(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E7E40;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_14BF800(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E7EC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_14BF87C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E7F40;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = -1;
  return a1;
}

void sub_14BF8F4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14BF924(uint64_t a1)
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

  if (a1 != &off_2773CC8)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_14510E4(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_14B41B0(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_1477814(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14BFA1C(uint64_t a1)
{
  sub_14BF924(a1);

  operator delete();
}

uint64_t sub_14BFA54(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = *(v4 + 8);
      result = v4 + 8;
      *(result + 8) = 0;
      *(result + 32) = 0;
      if (v5)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 2) != 0)
    {
      result = sub_14B425C(*(a1 + 56));
    }

    if ((v3 & 4) != 0)
    {
      result = sub_146F8D4(*(a1 + 64));
    }
  }

  if ((v3 & 0xF8) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = -1;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_14BFAFC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v52 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v52, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v52 + 1;
    v8 = *v52;
    if (*v52 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v52, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v52 + 2;
      }
    }

    v52 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 != 3)
        {
          if (v11 == 4 && v8 == 34)
          {
            *(a1 + 40) |= 1u;
            v21 = *(a1 + 48);
            if (!v21)
            {
              v22 = *(a1 + 8);
              v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
              if (v22)
              {
                v23 = *v23;
              }

              sub_14BA684(v23);
              v21 = v24;
              *(a1 + 48) = v24;
              v7 = v52;
            }

            v20 = sub_220D5D8(a3, v21, v7);
            goto LABEL_71;
          }

          goto LABEL_62;
        }

        if (v8 != 24)
        {
          goto LABEL_62;
        }

        v5 |= 0x80u;
        LODWORD(v34) = *v7;
        if ((v34 & 0x80000000) == 0)
        {
          v35 = v7 + 1;
LABEL_76:
          v52 = v35;
          *(a1 + 88) = v34;
          goto LABEL_72;
        }

        v34 = (v7[1] << 7) + v34 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v35 = v7 + 2;
          goto LABEL_76;
        }

        v46 = sub_19587DC(v7, v34);
        v52 = v46;
        *(a1 + 88) = v47;
        if (!v46)
        {
          goto LABEL_90;
        }
      }

      else if (v11 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_62;
        }

        v5 |= 8u;
        v28 = v7 + 1;
        v29 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v30 = *v28;
        v29 = v29 + (v30 << 7) - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v28 = v7 + 2;
LABEL_47:
          v52 = v28;
          *(a1 + 72) = v29;
          goto LABEL_72;
        }

        v42 = sub_1958770(v7, v29);
        v52 = v42;
        *(a1 + 72) = v43;
        if (!v42)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v11 != 2 || v8 != 16)
        {
          goto LABEL_62;
        }

        v5 |= 0x10u;
        v13 = v7 + 1;
        v14 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v15 = *v13;
        v14 = v14 + (v15 << 7) - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v13 = v7 + 2;
LABEL_18:
          v52 = v13;
          *(a1 + 76) = v14;
          goto LABEL_72;
        }

        v48 = sub_1958770(v7, v14);
        v52 = v48;
        *(a1 + 76) = v49;
        if (!v48)
        {
          goto LABEL_90;
        }
      }

      goto LABEL_72;
    }

    if (v8 >> 3 > 6)
    {
      break;
    }

    if (v11 != 5)
    {
      if (v11 == 6 && v8 == 50)
      {
        *(a1 + 40) |= 2u;
        v16 = *(a1 + 56);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          sub_14BF344(v18);
          v16 = v19;
          *(a1 + 56) = v19;
          v7 = v52;
        }

        v20 = sub_2212170(a3, v16, v7);
        goto LABEL_71;
      }

      goto LABEL_62;
    }

    if (v8 != 40)
    {
      goto LABEL_62;
    }

    v5 |= 0x20u;
    v31 = v7 + 1;
    v32 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    v33 = *v31;
    v32 = v32 + (v33 << 7) - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_52:
      v52 = v31;
      *(a1 + 80) = v32;
      goto LABEL_72;
    }

    v44 = sub_1958770(v7, v32);
    v52 = v44;
    *(a1 + 80) = v45;
    if (!v44)
    {
      goto LABEL_90;
    }

LABEL_72:
    if (sub_195ADC0(a3, &v52, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 7)
  {
    if (v11 != 8 || v8 != 64)
    {
      goto LABEL_62;
    }

    v5 |= 0x40u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_42:
      v52 = v25;
      *(a1 + 84) = v26;
      goto LABEL_72;
    }

    v50 = sub_1958770(v7, v26);
    v52 = v50;
    *(a1 + 84) = v51;
    if (!v50)
    {
      goto LABEL_90;
    }

    goto LABEL_72;
  }

  if (v8 == 58)
  {
    *(a1 + 40) |= 4u;
    v36 = *(a1 + 64);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_14BC730(v38);
      *(a1 + 64) = v36;
      v7 = v52;
    }

    v20 = sub_220D6F8(a3, v36, v7);
LABEL_71:
    v52 = v20;
    if (!v20)
    {
      goto LABEL_90;
    }

    goto LABEL_72;
  }

LABEL_62:
  if (v8)
  {
    v39 = (v8 & 7) == 4;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    if (v8 - 800 > 0x31F)
    {
      v40 = *(a1 + 8);
      if (v40)
      {
        v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v41 = sub_11F1920((a1 + 8));
        v7 = v52;
      }

      v20 = sub_1952690(v8, v41, v7, a3);
    }

    else
    {
      v20 = sub_19525AC((a1 + 16), v8, v7, &off_2773CC8, (a1 + 8), a3);
    }

    goto LABEL_71;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_90:
  v52 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v52;
}

char *sub_14BFF68(uint64_t a1, char *a2, unint64_t *a3)
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

  if ((v5 & 0x10) != 0)
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 88);
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

  if (v5)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 48);
    *v15 = 34;
    v21 = *(v20 + 60);
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v15 + 1);
    }

    else
    {
      v22 = v15 + 2;
    }

    v15 = sub_1451354(v20, v22, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v24 = *(a1 + 80);
    *v15 = 40;
    v15[1] = v24;
    if (v24 > 0x7F)
    {
      v15[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v15[2] = v24 >> 7;
      v23 = v15 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v23 - 1) = v15 | 0x80;
          LODWORD(v15) = v25 >> 7;
          *v23++ = v25 >> 7;
          v26 = v25 >> 14;
          v25 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v23 = v15 + 2;
    }
  }

  else
  {
    v23 = v15;
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_46;
    }

LABEL_54:
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v31 = *(a1 + 64);
    *v23 = 58;
    v32 = *(v31 + 20);
    v23[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v23 + 1);
    }

    else
    {
      v33 = v23 + 2;
    }

    v23 = sub_1477AA4(v31, v33, a3);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_60;
  }

  if (*a3 <= v23)
  {
    v23 = sub_225EB68(a3, v23);
  }

  v28 = *(a1 + 56);
  *v23 = 50;
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

  v23 = sub_14B45F8(v28, v30, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_54;
  }

LABEL_46:
  if ((v5 & 0x40) == 0)
  {
LABEL_47:
    v27 = v23;
    goto LABEL_67;
  }

LABEL_60:
  if (*a3 <= v23)
  {
    v23 = sub_225EB68(a3, v23);
  }

  v34 = *(a1 + 84);
  *v23 = 64;
  v23[1] = v34;
  if (v34 > 0x7F)
  {
    v23[1] = v34 | 0x80;
    v35 = v34 >> 7;
    v23[2] = v34 >> 7;
    v27 = v23 + 3;
    if (v34 >= 0x4000)
    {
      LOBYTE(v23) = v23[2];
      do
      {
        *(v27 - 1) = v23 | 0x80;
        LODWORD(v23) = v35 >> 7;
        *v27++ = v35 >> 7;
        v36 = v35 >> 14;
        v35 >>= 7;
      }

      while (v36);
    }
  }

  else
  {
    v27 = v23 + 2;
  }

LABEL_67:
  if (*(a1 + 26))
  {
    v27 = sub_1953428(a1 + 16, 100, 200, v27, a3);
  }

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v27;
  }

  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 31);
  if (v40 < 0)
  {
    v41 = *(v39 + 8);
    v40 = *(v39 + 16);
  }

  else
  {
    v41 = (v39 + 8);
  }

  if ((*a3 - v27) >= v40)
  {
    v42 = v40;
    memcpy(v27, v41, v40);
    v27 += v42;
    return v27;
  }

  return sub_1957130(a3, v41, v40, v27);
}

uint64_t sub_14C0404(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_22;
  }

  if (*(a1 + 40))
  {
    v4 = sub_14515E4(*(a1 + 48));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_4;
  }

  v5 = sub_14B49AC(*(a1 + 56));
  v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = sub_1477C54(*(a1 + 64));
  v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v2 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x40) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_17:
  v2 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v7 = *(a1 + 88);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v8;
LABEL_22:
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

  *(a1 + 44) = v2;
  return v2;
}

void sub_14C05F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    if (v4)
    {
      *(a1 + 40) |= 1u;
      v6 = *(a1 + 48);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        sub_14BA684(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_2771468;
      }

      sub_14516C4(v6, v9);
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

    *(a1 + 40) |= 2u;
    v10 = *(a1 + 56);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_14BF344(v12);
      *(a1 + 56) = v10;
    }

    if (*(a2 + 56))
    {
      v13 = *(a2 + 56);
    }

    else
    {
      v13 = &off_2773A08;
    }

    sub_14B4AE0(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }

LABEL_32:
    *(a1 + 40) |= 4u;
    v14 = *(a1 + 64);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_14BC730(v16);
      *(a1 + 64) = v14;
    }

    if (*(a2 + 64))
    {
      v17 = *(a2 + 64);
    }

    else
    {
      v17 = &off_2772248;
    }

    sub_128F8FC(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 76) = *(a2 + 76);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 40) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_11;
    }

LABEL_43:
    *(a1 + 84) = *(a2 + 84);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14C07CC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E7FC0;
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
  *(a1 + 136) = 0u;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a2;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a2;
  *(a1 + 280) = 0;
  *(a1 + 288) = a2;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = a2;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = a2;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a2;
  *(a1 + 376) = 0;
  *(a1 + 384) = a2;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = a2;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = a2;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = &qword_278E990;
  *(a1 + 464) = &qword_278E990;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 472) = 0u;
  return a1;
}

void sub_14C08D8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14C0908(void *a1)
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

  sub_14C0A48(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1565280(a1 + 54);
  sub_1564494(a1 + 51);
  sub_1565280(a1 + 48);
  sub_1956ABC((a1 + 45));
  sub_1565178(a1 + 42);
  sub_15650F4(a1 + 39);
  sub_1564EE4(a1 + 36);
  sub_1956ABC((a1 + 33));
  sub_144D914(a1 + 30);
  sub_144D914(a1 + 27);
  sub_144D914(a1 + 24);
  sub_1956ABC((a1 + 21));
  sub_1956ABC((a1 + 18));
  sub_1956AFC(a1 + 15);
  sub_144B648(a1 + 12);
  sub_1956AFC(a1 + 9);
  sub_1567DAC(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_14C0A48(uint64_t result)
{
  v1 = result;
  if (*(result + 456) != &qword_278E990)
  {
    sub_194E89C((result + 456));
  }

  if (*(result + 464) != &qword_278E990)
  {
    sub_194E89C((result + 464));
  }

  if (result != &off_2773D28)
  {
    v2 = *(result + 472);
    if (v2)
    {
      sub_1498398(v2);
      operator delete();
    }

    v3 = v1[60];
    if (v3)
    {
      sub_147A07C(v3);
      operator delete();
    }

    v4 = v1[61];
    if (v4)
    {
      sub_147A07C(v4);
      operator delete();
    }

    result = v1[62];
    if (result)
    {
      sub_14850EC(result);

      operator delete();
    }
  }

  return result;
}

void sub_14C0B3C(void *a1)
{
  sub_14C0908(a1);

  operator delete();
}

uint64_t sub_14C0B74(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_14BFA54(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  sub_12A41D0(a1 + 72);
  v5 = *(a1 + 104);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 112) + 8);
    do
    {
      v7 = *v6++;
      sub_148C3F4(v7);
      --v5;
    }

    while (v5);
    *(a1 + 104) = 0;
  }

  result = sub_12A41D0(a1 + 120);
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  v9 = *(a1 + 200);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 208) + 8);
    do
    {
      v11 = *v10++;
      result = sub_149D390(v11);
      --v9;
    }

    while (v9);
    *(a1 + 200) = 0;
  }

  v12 = *(a1 + 224);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 232) + 8);
    do
    {
      v14 = *v13++;
      result = sub_149D390(v14);
      --v12;
    }

    while (v12);
    *(a1 + 224) = 0;
  }

  v15 = *(a1 + 248);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 256) + 8);
    do
    {
      v17 = *v16++;
      result = sub_149D390(v17);
      --v15;
    }

    while (v15);
    *(a1 + 248) = 0;
  }

  *(a1 + 264) = 0;
  v18 = *(a1 + 296);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 304) + 8);
    do
    {
      v20 = *v19++;
      result = sub_14A1FA8(v20);
      --v18;
    }

    while (v18);
    *(a1 + 296) = 0;
  }

  v21 = *(a1 + 320);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 328) + 8);
    do
    {
      v23 = *v22++;
      result = sub_14731E0(v23);
      --v21;
    }

    while (v21);
    *(a1 + 320) = 0;
  }

  v24 = *(a1 + 344);
  if (v24 >= 1)
  {
    v25 = (*(a1 + 352) + 8);
    do
    {
      v26 = *v25++;
      result = sub_1473C78(v26);
      --v24;
    }

    while (v24);
    *(a1 + 344) = 0;
  }

  *(a1 + 360) = 0;
  v27 = *(a1 + 392);
  if (v27 >= 1)
  {
    v28 = (*(a1 + 400) + 8);
    do
    {
      v29 = *v28++;
      result = sub_144FDD0(v29);
      --v27;
    }

    while (v27);
    *(a1 + 392) = 0;
  }

  v30 = *(a1 + 416);
  if (v30 >= 1)
  {
    v31 = (*(a1 + 424) + 8);
    do
    {
      v32 = *v31++;
      result = sub_14620AC(v32);
      --v30;
    }

    while (v30);
    *(a1 + 416) = 0;
  }

  v33 = *(a1 + 440);
  if (v33 >= 1)
  {
    v34 = (*(a1 + 448) + 8);
    do
    {
      v35 = *v34++;
      result = sub_144FDD0(v35);
      --v33;
    }

    while (v33);
    *(a1 + 440) = 0;
  }

  v36 = *(a1 + 40);
  if ((v36 & 0x3F) != 0)
  {
    if ((v36 & 1) == 0)
    {
      if ((v36 & 2) == 0)
      {
        goto LABEL_48;
      }

LABEL_57:
      v38 = *(a1 + 464) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v38 + 23) < 0)
      {
        **v38 = 0;
        *(v38 + 8) = 0;
        if ((v36 & 4) != 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        *v38 = 0;
        *(v38 + 23) = 0;
        if ((v36 & 4) != 0)
        {
          goto LABEL_61;
        }
      }

LABEL_49:
      if ((v36 & 8) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_62;
    }

    v37 = *(a1 + 456) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v37 + 23) < 0)
    {
      **v37 = 0;
      *(v37 + 8) = 0;
      if ((v36 & 2) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      *v37 = 0;
      *(v37 + 23) = 0;
      if ((v36 & 2) != 0)
      {
        goto LABEL_57;
      }
    }

LABEL_48:
    if ((v36 & 4) == 0)
    {
      goto LABEL_49;
    }

LABEL_61:
    result = sub_14985CC(*(a1 + 472));
    if ((v36 & 8) == 0)
    {
LABEL_50:
      if ((v36 & 0x10) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_63;
    }

LABEL_62:
    result = sub_147447C(*(a1 + 480));
    if ((v36 & 0x10) == 0)
    {
LABEL_51:
      if ((v36 & 0x20) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

LABEL_63:
    result = sub_147447C(*(a1 + 488));
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_66;
    }

LABEL_64:
    v39 = *(a1 + 496);
    v40 = *(v39 + 8);
    result = v39 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v40)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_66:
  if ((v36 & 0xC0) != 0)
  {
    *(a1 + 504) = 0;
  }

  if ((v36 & 0xF00) != 0)
  {
    *(a1 + 512) = 0u;
  }

  v42 = *(a1 + 8);
  v41 = a1 + 8;
  *(v41 + 32) = 0;
  if (v42)
  {

    return sub_1957EA8(v41);
  }

  return result;
}

uint64_t sub_14C0E8C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v148 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v148, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v148 + 1);
    v8 = **v148;
    if (**v148 < 0)
    {
      v8 = v8 + (*v7 << 7) - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v148, v8);
      }

      else
      {
        v7 = (*v148 + 2);
      }
    }

    *v148 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_239;
        }

        *(a1 + 40) |= 1u;
        v9 = *(a1 + 8);
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v11 = (a1 + 456);
        goto LABEL_37;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_239;
        }

        v73 = v7 - 1;
        while (1)
        {
          v74 = v73 + 1;
          *v148 = v73 + 1;
          v75 = *(a1 + 64);
          if (v75 && (v76 = *(a1 + 56), v76 < *v75))
          {
            *(a1 + 56) = v76 + 1;
            v77 = *&v75[2 * v76 + 2];
          }

          else
          {
            v78 = sub_14D5948(*(a1 + 48));
            v77 = sub_19593CC(a1 + 48, v78);
            v74 = *v148;
          }

          v73 = sub_2212200(a3, v77, v74);
          *v148 = v73;
          if (!v73)
          {
            goto LABEL_252;
          }

          if (*a3 <= v73 || *v73 != 18)
          {
            goto LABEL_130;
          }
        }

      case 3u:
        if (v8 != 26)
        {
          goto LABEL_239;
        }

        v51 = v7 - 1;
        while (1)
        {
          v52 = (v51 + 1);
          *v148 = v51 + 1;
          v53 = *(a1 + 88);
          if (v53 && (v54 = *(a1 + 80), v54 < *v53))
          {
            *(a1 + 80) = v54 + 1;
            v55 = *&v53[2 * v54 + 2];
          }

          else
          {
            v56 = *(a1 + 72);
            if (!v56)
            {
              operator new();
            }

            *v58 = v57;
            v58[1] = sub_195A650;
            *v57 = 0;
            v57[1] = 0;
            v57[2] = 0;
            v55 = sub_19593CC(a1 + 72, v57);
            v52 = *v148;
          }

          v51 = sub_1958890(v55, v52, a3);
          *v148 = v51;
          if (!v51)
          {
            goto LABEL_252;
          }

          if (*a3 <= v51 || *v51 != 26)
          {
            goto LABEL_130;
          }
        }

      case 4u:
        if (v8 != 32)
        {
          goto LABEL_239;
        }

        v5 |= 0x40u;
        v86 = v7 + 1;
        v85 = *v7;
        if ((v85 & 0x8000000000000000) == 0)
        {
          goto LABEL_146;
        }

        v87 = *v86;
        v85 = (v87 << 7) + v85 - 128;
        if (v87 < 0)
        {
          v136 = sub_19587DC(v7, v85);
          *v148 = v136;
          *(a1 + 504) = v137 != 0;
          if (!v136)
          {
            goto LABEL_252;
          }
        }

        else
        {
          v86 = v7 + 2;
LABEL_146:
          *v148 = v86;
          *(a1 + 504) = v85 != 0;
        }

        goto LABEL_130;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_239;
        }

        v88 = v7 - 1;
        while (1)
        {
          v89 = v88 + 1;
          *v148 = v88 + 1;
          v90 = *(a1 + 112);
          if (v90 && (v91 = *(a1 + 104), v91 < *v90))
          {
            *(a1 + 104) = v91 + 1;
            v92 = *&v90[2 * v91 + 2];
          }

          else
          {
            v93 = sub_14BD738(*(a1 + 96));
            v92 = sub_19593CC(a1 + 96, v93);
            v89 = *v148;
          }

          sub_220AD58(a3, v92, v89);
          *v148 = v88;
          if (!v88)
          {
            goto LABEL_252;
          }

          if (*a3 <= v88 || *v88 != 42)
          {
            goto LABEL_130;
          }
        }

      case 6u:
        if (v8 != 50)
        {
          goto LABEL_239;
        }

        v59 = v7 - 1;
        while (1)
        {
          v60 = (v59 + 1);
          *v148 = v59 + 1;
          v61 = *(a1 + 136);
          if (v61 && (v62 = *(a1 + 128), v62 < *v61))
          {
            *(a1 + 128) = v62 + 1;
            v63 = *&v61[2 * v62 + 2];
          }

          else
          {
            v64 = *(a1 + 120);
            if (!v64)
            {
              operator new();
            }

            *v66 = v65;
            v66[1] = sub_195A650;
            *v65 = 0;
            v65[1] = 0;
            v65[2] = 0;
            v63 = sub_19593CC(a1 + 120, v65);
            v60 = *v148;
          }

          v59 = sub_1958890(v63, v60, a3);
          *v148 = v59;
          if (!v59)
          {
            goto LABEL_252;
          }

          if (*a3 <= v59 || *v59 != 50)
          {
            goto LABEL_130;
          }
        }

      case 7u:
        if (v8 == 58)
        {
          v29 = (a1 + 144);
          goto LABEL_128;
        }

        if (v8 != 56)
        {
          goto LABEL_239;
        }

        v149 = sub_1211E88(v148);
        v142 = (a1 + 144);
        break;
      case 8u:
        if (v8 == 66)
        {
          v29 = (a1 + 168);
          goto LABEL_128;
        }

        if (v8 == 64)
        {
          v149 = sub_1211E88(v148);
          v142 = (a1 + 168);
          break;
        }

LABEL_239:
        if (v8)
        {
          v143 = (v8 & 7) == 4;
        }

        else
        {
          v143 = 1;
        }

        if (!v143)
        {
          if (v8 - 8000 < 0x648 || v8 - 80008 <= 0x31F)
          {
            v26 = sub_19525AC((a1 + 16), v8, v7, &off_2773D28, (a1 + 8), a3);
          }

          else
          {
            v144 = *(a1 + 8);
            if (v144)
            {
              v145 = (v144 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v147 = v8;
              v146 = sub_11F1920((a1 + 8));
              v8 = v147;
              v7 = *v148;
              v145 = v146;
            }

            v26 = sub_1952690(v8, v145, v7, a3);
          }

LABEL_129:
          *v148 = v26;
          if (!v26)
          {
            goto LABEL_252;
          }

          goto LABEL_130;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_252:
          *v148 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v148;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_239;
        }

        v100 = v7 - 1;
        while (1)
        {
          v101 = v100 + 1;
          *v148 = v100 + 1;
          v102 = *(a1 + 208);
          if (v102 && (v103 = *(a1 + 200), v103 < *v102))
          {
            *(a1 + 200) = v103 + 1;
            v104 = *&v102[2 * v103 + 2];
          }

          else
          {
            v105 = sub_14BDE5C(*(a1 + 192));
            v104 = sub_19593CC(a1 + 192, v105);
            v101 = *v148;
          }

          v100 = sub_21F6500(a3, v104, v101);
          *v148 = v100;
          if (!v100)
          {
            goto LABEL_252;
          }

          if (*a3 <= v100 || *v100 != 82)
          {
            goto LABEL_130;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_239;
        }

        v94 = v7 - 1;
        while (1)
        {
          v95 = v94 + 1;
          *v148 = v94 + 1;
          v96 = *(a1 + 232);
          if (v96 && (v97 = *(a1 + 224), v97 < *v96))
          {
            *(a1 + 224) = v97 + 1;
            v98 = *&v96[2 * v97 + 2];
          }

          else
          {
            v99 = sub_14BDE5C(*(a1 + 216));
            v98 = sub_19593CC(a1 + 216, v99);
            v95 = *v148;
          }

          v94 = sub_21F6500(a3, v98, v95);
          *v148 = v94;
          if (!v94)
          {
            goto LABEL_252;
          }

          if (*a3 <= v94 || *v94 != 90)
          {
            goto LABEL_130;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_239;
        }

        v30 = v7 - 1;
        while (1)
        {
          v31 = v30 + 1;
          *v148 = v30 + 1;
          v32 = *(a1 + 256);
          if (v32 && (v33 = *(a1 + 248), v33 < *v32))
          {
            *(a1 + 248) = v33 + 1;
            v34 = *&v32[2 * v33 + 2];
          }

          else
          {
            v35 = sub_14BDE5C(*(a1 + 240));
            v34 = sub_19593CC(a1 + 240, v35);
            v31 = *v148;
          }

          v30 = sub_21F6500(a3, v34, v31);
          *v148 = v30;
          if (!v30)
          {
            goto LABEL_252;
          }

          if (*a3 <= v30 || *v30 != 98)
          {
            goto LABEL_130;
          }
        }

      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_239;
        }

        v5 |= 0x80u;
        v67 = v7 + 1;
        v68 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_107;
        }

        v69 = *v67;
        v68 = v68 + (v69 << 7) - 128;
        if (v69 < 0)
        {
          v130 = sub_1958770(v7, v68);
          *v148 = v130;
          *(a1 + 508) = v131;
          if (!v130)
          {
            goto LABEL_252;
          }
        }

        else
        {
          v67 = v7 + 2;
LABEL_107:
          *v148 = v67;
          *(a1 + 508) = v68;
        }

        goto LABEL_130;
      case 0xEu:
        if (v8 == 114)
        {
          v29 = (a1 + 264);
          goto LABEL_128;
        }

        if (v8 != 112)
        {
          goto LABEL_239;
        }

        v149 = sub_1211E88(v148);
        v142 = (a1 + 264);
        break;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_239;
        }

        *(a1 + 40) |= 4u;
        v22 = *(a1 + 472);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_14BDC34(v24);
          v22 = v25;
          *(a1 + 472) = v25;
          v7 = *v148;
        }

        v26 = sub_220EB38(a3, v22, v7);
        goto LABEL_129;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_239;
        }

        v5 |= 0x100u;
        v79 = v7 + 1;
        v80 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_136;
        }

        v81 = *v79;
        v80 = v80 + (v81 << 7) - 128;
        if (v81 < 0)
        {
          v132 = sub_1958770(v7, v80);
          *v148 = v132;
          *(a1 + 512) = v133;
          if (!v132)
          {
            goto LABEL_252;
          }
        }

        else
        {
          v79 = v7 + 2;
LABEL_136:
          *v148 = v79;
          *(a1 + 512) = v80;
        }

        goto LABEL_130;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_239;
        }

        v5 |= 0x200u;
        v82 = v7 + 1;
        v83 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_141;
        }

        v84 = *v82;
        v83 = v83 + (v84 << 7) - 128;
        if (v84 < 0)
        {
          v134 = sub_1958770(v7, v83);
          *v148 = v134;
          *(a1 + 516) = v135;
          if (!v134)
          {
            goto LABEL_252;
          }
        }

        else
        {
          v82 = v7 + 2;
LABEL_141:
          *v148 = v82;
          *(a1 + 516) = v83;
        }

        goto LABEL_130;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_239;
        }

        v5 |= 0x400u;
        v109 = v7 + 1;
        v110 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_186;
        }

        v111 = *v109;
        v110 = v110 + (v111 << 7) - 128;
        if (v111 < 0)
        {
          v140 = sub_1958770(v7, v110);
          *v148 = v140;
          *(a1 + 520) = v141;
          if (!v140)
          {
            goto LABEL_252;
          }
        }

        else
        {
          v109 = v7 + 2;
LABEL_186:
          *v148 = v109;
          *(a1 + 520) = v110;
        }

        goto LABEL_130;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_239;
        }

        v5 |= 0x800u;
        v106 = v7 + 1;
        v107 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_181;
        }

        v108 = *v106;
        v107 = v107 + (v108 << 7) - 128;
        if (v108 < 0)
        {
          v138 = sub_1958770(v7, v107);
          *v148 = v138;
          *(a1 + 524) = v139;
          if (!v138)
          {
            goto LABEL_252;
          }
        }

        else
        {
          v106 = v7 + 2;
LABEL_181:
          *v148 = v106;
          *(a1 + 524) = v107;
        }

        goto LABEL_130;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_239;
        }

        v12 = v7 - 2;
        while (1)
        {
          v13 = v12 + 2;
          *v148 = v12 + 2;
          v14 = *(a1 + 304);
          if (v14 && (v15 = *(a1 + 296), v15 < *v14))
          {
            *(a1 + 296) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            sub_14BE174(*(a1 + 288));
            v16 = sub_19593CC(a1 + 288, v17);
            v13 = *v148;
          }

          v12 = sub_2210670(a3, v16, v13);
          *v148 = v12;
          if (!v12)
          {
            goto LABEL_252;
          }

          if (*a3 <= v12 || *v12 != 418)
          {
            goto LABEL_130;
          }
        }

      case 0x15u:
        if (v8 != 170)
        {
          goto LABEL_239;
        }

        v45 = v7 - 2;
        while (1)
        {
          v46 = v45 + 2;
          *v148 = v45 + 2;
          v47 = *(a1 + 328);
          if (v47 && (v48 = *(a1 + 320), v48 < *v47))
          {
            *(a1 + 320) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            v50 = sub_14BC2F4(*(a1 + 312));
            v49 = sub_19593CC(a1 + 312, v50);
            v46 = *v148;
          }

          v45 = sub_22109D0(a3, v49, v46);
          *v148 = v45;
          if (!v45)
          {
            goto LABEL_252;
          }

          if (*a3 <= v45 || *v45 != 426)
          {
            goto LABEL_130;
          }
        }

      case 0x16u:
        if (v8 != 178)
        {
          goto LABEL_239;
        }

        v112 = v7 - 2;
        while (1)
        {
          v113 = v112 + 2;
          *v148 = v112 + 2;
          v114 = *(a1 + 352);
          if (v114 && (v115 = *(a1 + 344), v115 < *v114))
          {
            *(a1 + 344) = v115 + 1;
            v116 = *&v114[2 * v115 + 2];
          }

          else
          {
            v117 = sub_14BC40C(*(a1 + 336));
            v116 = sub_19593CC(a1 + 336, v117);
            v113 = *v148;
          }

          v112 = sub_2210A60(a3, v116, v113);
          *v148 = v112;
          if (!v112)
          {
            goto LABEL_252;
          }

          if (*a3 <= v112 || *v112 != 434)
          {
            goto LABEL_130;
          }
        }

      case 0x17u:
        if (v8 != 186)
        {
          goto LABEL_239;
        }

        *(a1 + 40) |= 8u;
        v18 = *(a1 + 480);
        if (v18)
        {
          goto LABEL_66;
        }

        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_14BC9E8(v20);
        v18 = v21;
        *(a1 + 480) = v21;
        goto LABEL_65;
      case 0x18u:
        if (v8 != 194)
        {
          goto LABEL_239;
        }

        *(a1 + 40) |= 0x10u;
        v18 = *(a1 + 488);
        if (v18)
        {
          goto LABEL_66;
        }

        v42 = *(a1 + 8);
        v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v43 = *v43;
        }

        sub_14BC9E8(v43);
        v18 = v44;
        *(a1 + 488) = v44;
LABEL_65:
        v7 = *v148;
LABEL_66:
        v26 = sub_220DAE8(a3, v18, v7);
        goto LABEL_129;
      case 0x19u:
        if (v8 == 202)
        {
          v29 = (a1 + 360);
LABEL_128:
          v26 = sub_1958918(v29, v7, a3);
          goto LABEL_129;
        }

        if (v8 != 200)
        {
          goto LABEL_239;
        }

        v149 = sub_1211E88(v148);
        v142 = (a1 + 360);
        break;
      case 0x1Au:
        if (v8 != 210)
        {
          goto LABEL_239;
        }

        *(a1 + 40) |= 0x20u;
        v70 = *(a1 + 496);
        if (!v70)
        {
          v71 = *(a1 + 8);
          v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
          if (v71)
          {
            v72 = *v72;
          }

          v70 = sub_14BD1EC(v72);
          *(a1 + 496) = v70;
          v7 = *v148;
        }

        v26 = sub_2212290(a3, v70, v7);
        goto LABEL_129;
      case 0x1Bu:
        if (v8 != 218)
        {
          goto LABEL_239;
        }

        *(a1 + 40) |= 2u;
        v27 = *(a1 + 8);
        v10 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v10 = *v10;
        }

        v11 = (a1 + 464);
LABEL_37:
        v28 = sub_194DB04(v11, v10);
        v26 = sub_1958890(v28, *v148, a3);
        goto LABEL_129;
      case 0x1Cu:
        if (v8 != 226)
        {
          goto LABEL_239;
        }

        v124 = v7 - 2;
        while (1)
        {
          v125 = v124 + 2;
          *v148 = v124 + 2;
          v126 = *(a1 + 400);
          if (v126 && (v127 = *(a1 + 392), v127 < *v126))
          {
            *(a1 + 392) = v127 + 1;
            v128 = *&v126[2 * v127 + 2];
          }

          else
          {
            v129 = sub_14BA560(*(a1 + 384));
            v128 = sub_19593CC(a1 + 384, v129);
            v125 = *v148;
          }

          v124 = sub_2210B80(a3, v128, v125);
          *v148 = v124;
          if (!v124)
          {
            goto LABEL_252;
          }

          if (*a3 <= v124 || *v124 != 482)
          {
            goto LABEL_130;
          }
        }

      case 0x1Du:
        if (v8 != 234)
        {
          goto LABEL_239;
        }

        v118 = v7 - 2;
        while (1)
        {
          v119 = v118 + 2;
          *v148 = v118 + 2;
          v120 = *(a1 + 424);
          if (v120 && (v121 = *(a1 + 416), v121 < *v120))
          {
            *(a1 + 416) = v121 + 1;
            v122 = *&v120[2 * v121 + 2];
          }

          else
          {
            sub_14BB54C(*(a1 + 408));
            v122 = sub_19593CC(a1 + 408, v123);
            v119 = *v148;
          }

          v118 = sub_220D668(a3, v122, v119);
          *v148 = v118;
          if (!v118)
          {
            goto LABEL_252;
          }

          if (*a3 <= v118 || *v118 != 490)
          {
            goto LABEL_130;
          }
        }

      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_239;
        }

        v36 = v7 - 2;
        while (1)
        {
          v37 = v36 + 2;
          *v148 = v36 + 2;
          v38 = *(a1 + 448);
          if (v38 && (v39 = *(a1 + 440), v39 < *v38))
          {
            *(a1 + 440) = v39 + 1;
            v40 = *&v38[2 * v39 + 2];
          }

          else
          {
            v41 = sub_14BA560(*(a1 + 432));
            v40 = sub_19593CC(a1 + 432, v41);
            v37 = *v148;
          }

          v36 = sub_2210B80(a3, v40, v37);
          *v148 = v36;
          if (!v36)
          {
            goto LABEL_252;
          }

          if (*a3 <= v36 || *v36 != 498)
          {
            goto LABEL_130;
          }
        }

      default:
        goto LABEL_239;
    }

    sub_194FE98(v142, &v149);
    if (!*v148)
    {
      goto LABEL_252;
    }

LABEL_130:
    if (sub_195ADC0(a3, v148, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }
}

char *sub_14C1D0C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 456) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 18;
      v10 = *(v9 + 44);
      v4[1] = v10;
      if (v10 > 0x7F)
      {
        v11 = sub_19575D0(v10, v4 + 1);
      }

      else
      {
        v11 = v4 + 2;
      }

      v4 = sub_14BFF68(v9, v11, a3);
    }
  }

  v12 = *(a1 + 80);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v4 = sub_1355F54(a3, 3, *(*(a1 + 88) + v13), v4);
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v14 = *(a1 + 504);
    *v4 = 32;
    v4[1] = v14;
    v4 += 2;
  }

  v15 = *(a1 + 104);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v17 = *(*(a1 + 112) + 8 * j + 8);
      *v4 = 42;
      v18 = *(v17 + 48);
      v4[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v4 + 1);
      }

      else
      {
        v19 = v4 + 2;
      }

      v4 = sub_148CC30(v17, v19, a3);
    }
  }

  v20 = *(a1 + 128);
  if (v20 >= 1)
  {
    v21 = 8;
    do
    {
      v4 = sub_1355F54(a3, 6, *(*(a1 + 136) + v21), v4);
      v21 += 8;
      --v20;
    }

    while (v20);
  }

  v22 = *(a1 + 160);
  if (v22 > 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    *v4 = 58;
    v23 = v4 + 1;
    if (v22 >= 0x80)
    {
      do
      {
        *v23++ = v22 | 0x80;
        v146 = v22 >> 14;
        v22 >>= 7;
      }

      while (v146);
      v4 = v23 - 1;
    }

    v24 = v4 + 2;
    *v23 = v22;
    v25 = *(a1 + 152);
    v26 = &v25[*(a1 + 144)];
    do
    {
      if (*a3 <= v24)
      {
        v24 = sub_225EB68(a3, v24);
      }

      v28 = *v25++;
      v27 = v28;
      *v24 = v28;
      if (v28 > 0x7F)
      {
        *v24 = v27 | 0x80;
        v29 = v27 >> 7;
        v24[1] = v27 >> 7;
        v4 = v24 + 2;
        if (v27 >= 0x4000)
        {
          LOBYTE(v30) = v24[1];
          do
          {
            *(v4 - 1) = v30 | 0x80;
            v30 = v29 >> 7;
            *v4++ = v29 >> 7;
            v31 = v29 >> 14;
            v29 >>= 7;
          }

          while (v31);
        }
      }

      else
      {
        v4 = v24 + 1;
      }

      v24 = v4;
    }

    while (v25 < v26);
  }

  v32 = *(a1 + 184);
  if (v32 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    *v4 = 66;
    v33 = v4 + 1;
    if (v32 >= 0x80)
    {
      do
      {
        *v33++ = v32 | 0x80;
        v147 = v32 >> 14;
        v32 >>= 7;
      }

      while (v147);
      v4 = v33 - 1;
    }

    v34 = v4 + 2;
    *v33 = v32;
    v35 = *(a1 + 176);
    v36 = &v35[*(a1 + 168)];
    do
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v38 = *v35++;
      v37 = v38;
      *v34 = v38;
      if (v38 > 0x7F)
      {
        *v34 = v37 | 0x80;
        v39 = v37 >> 7;
        v34[1] = v37 >> 7;
        v4 = v34 + 2;
        if (v37 >= 0x4000)
        {
          LOBYTE(v40) = v34[1];
          do
          {
            *(v4 - 1) = v40 | 0x80;
            v40 = v39 >> 7;
            *v4++ = v39 >> 7;
            v41 = v39 >> 14;
            v39 >>= 7;
          }

          while (v41);
        }
      }

      else
      {
        v4 = v34 + 1;
      }

      v34 = v4;
    }

    while (v35 < v36);
  }

  v42 = *(a1 + 200);
  if (v42)
  {
    for (k = 0; k != v42; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v44 = *(*(a1 + 208) + 8 * k + 8);
      *v4 = 82;
      v45 = *(v44 + 44);
      v4[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v4 + 1);
      }

      else
      {
        v46 = v4 + 2;
      }

      v4 = sub_149DD64(v44, v46, a3);
    }
  }

  v47 = *(a1 + 224);
  if (v47)
  {
    for (m = 0; m != v47; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v49 = *(*(a1 + 232) + 8 * m + 8);
      *v4 = 90;
      v50 = *(v49 + 44);
      v4[1] = v50;
      if (v50 > 0x7F)
      {
        v51 = sub_19575D0(v50, v4 + 1);
      }

      else
      {
        v51 = v4 + 2;
      }

      v4 = sub_149DD64(v49, v51, a3);
    }
  }

  v52 = *(a1 + 248);
  if (v52)
  {
    for (n = 0; n != v52; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v54 = *(*(a1 + 256) + 8 * n + 8);
      *v4 = 98;
      v55 = *(v54 + 44);
      v4[1] = v55;
      if (v55 > 0x7F)
      {
        v56 = sub_19575D0(v55, v4 + 1);
      }

      else
      {
        v56 = v4 + 2;
      }

      v4 = sub_149DD64(v54, v56, a3);
    }
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v58 = *(a1 + 508);
    *v4 = 104;
    v4[1] = v58;
    if (v58 > 0x7F)
    {
      v4[1] = v58 | 0x80;
      v59 = v58 >> 7;
      v4[2] = v58 >> 7;
      v57 = v4 + 3;
      if (v58 >= 0x4000)
      {
        LOBYTE(v60) = v4[2];
        do
        {
          *(v57 - 1) = v60 | 0x80;
          v60 = v59 >> 7;
          *v57++ = v59 >> 7;
          v61 = v59 >> 14;
          v59 >>= 7;
        }

        while (v61);
      }
    }

    else
    {
      v57 = v4 + 2;
    }
  }

  else
  {
    v57 = v4;
  }

  v62 = *(a1 + 280);
  if (v62 >= 1)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    *v57 = 114;
    v63 = v57 + 1;
    if (v62 >= 0x80)
    {
      do
      {
        *v63++ = v62 | 0x80;
        v148 = v62 >> 14;
        v62 >>= 7;
      }

      while (v148);
      v57 = v63 - 1;
    }

    v64 = v57 + 2;
    *v63 = v62;
    v65 = *(a1 + 272);
    v66 = &v65[*(a1 + 264)];
    do
    {
      if (*a3 <= v64)
      {
        v64 = sub_225EB68(a3, v64);
      }

      v68 = *v65++;
      v67 = v68;
      *v64 = v68;
      if (v68 > 0x7F)
      {
        *v64 = v67 | 0x80;
        v69 = v67 >> 7;
        v64[1] = v67 >> 7;
        v57 = v64 + 2;
        if (v67 >= 0x4000)
        {
          LOBYTE(v64) = v64[1];
          do
          {
            *(v57 - 1) = v64 | 0x80;
            LODWORD(v64) = v69 >> 7;
            *v57++ = v69 >> 7;
            v70 = v69 >> 14;
            v69 >>= 7;
          }

          while (v70);
        }
      }

      else
      {
        v57 = v64 + 1;
      }

      v64 = v57;
    }

    while (v65 < v66);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v71 = *(a1 + 472);
    *v57 = 122;
    v72 = *(v71 + 20);
    v57[1] = v72;
    if (v72 > 0x7F)
    {
      v73 = sub_19575D0(v72, v57 + 1);
    }

    else
    {
      v73 = v57 + 2;
    }

    v57 = sub_149975C(v71, v73, a3);
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v75 = *(a1 + 512);
    *v57 = 384;
    v57[2] = v75;
    if (v75 > 0x7F)
    {
      v57[2] = v75 | 0x80;
      v76 = v75 >> 7;
      v57[3] = v75 >> 7;
      v74 = v57 + 4;
      if (v75 >= 0x4000)
      {
        LOBYTE(v57) = v57[3];
        do
        {
          *(v74 - 1) = v57 | 0x80;
          LODWORD(v57) = v76 >> 7;
          *v74++ = v76 >> 7;
          v77 = v76 >> 14;
          v76 >>= 7;
        }

        while (v77);
      }
    }

    else
    {
      v74 = v57 + 3;
    }
  }

  else
  {
    v74 = v57;
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v74)
    {
      v74 = sub_225EB68(a3, v74);
    }

    v79 = *(a1 + 516);
    *v74 = 392;
    v74[2] = v79;
    if (v79 > 0x7F)
    {
      v74[2] = v79 | 0x80;
      v80 = v79 >> 7;
      v74[3] = v79 >> 7;
      v78 = v74 + 4;
      if (v79 >= 0x4000)
      {
        LOBYTE(v74) = v74[3];
        do
        {
          *(v78 - 1) = v74 | 0x80;
          LODWORD(v74) = v80 >> 7;
          *v78++ = v80 >> 7;
          v81 = v80 >> 14;
          v80 >>= 7;
        }

        while (v81);
      }
    }

    else
    {
      v78 = v74 + 3;
    }
  }

  else
  {
    v78 = v74;
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v83 = *(a1 + 520);
    *v78 = 400;
    v78[2] = v83;
    if (v83 > 0x7F)
    {
      v78[2] = v83 | 0x80;
      v84 = v83 >> 7;
      v78[3] = v83 >> 7;
      v82 = v78 + 4;
      if (v83 >= 0x4000)
      {
        LOBYTE(v85) = v78[3];
        do
        {
          *(v82 - 1) = v85 | 0x80;
          v85 = v84 >> 7;
          *v82++ = v84 >> 7;
          v86 = v84 >> 14;
          v84 >>= 7;
        }

        while (v86);
      }
    }

    else
    {
      v82 = v78 + 3;
    }
  }

  else
  {
    v82 = v78;
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v82)
    {
      v82 = sub_225EB68(a3, v82);
    }

    v88 = *(a1 + 524);
    *v82 = 408;
    v82[2] = v88;
    if (v88 > 0x7F)
    {
      v82[2] = v88 | 0x80;
      v89 = v88 >> 7;
      v82[3] = v88 >> 7;
      v87 = v82 + 4;
      if (v88 >= 0x4000)
      {
        LOBYTE(v82) = v82[3];
        do
        {
          *(v87 - 1) = v82 | 0x80;
          LODWORD(v82) = v89 >> 7;
          *v87++ = v89 >> 7;
          v90 = v89 >> 14;
          v89 >>= 7;
        }

        while (v90);
      }
    }

    else
    {
      v87 = v82 + 3;
    }
  }

  else
  {
    v87 = v82;
  }

  v91 = *(a1 + 296);
  if (v91)
  {
    for (ii = 0; ii != v91; ++ii)
    {
      if (*a3 <= v87)
      {
        v87 = sub_225EB68(a3, v87);
      }

      v93 = *(*(a1 + 304) + 8 * ii + 8);
      *v87 = 418;
      v94 = *(v93 + 20);
      v87[2] = v94;
      if (v94 > 0x7F)
      {
        v95 = sub_19575D0(v94, v87 + 2);
      }

      else
      {
        v95 = v87 + 3;
      }

      v87 = sub_14A2640(v93, v95, a3);
    }
  }

  v96 = *(a1 + 320);
  if (v96)
  {
    for (jj = 0; jj != v96; ++jj)
    {
      if (*a3 <= v87)
      {
        v87 = sub_225EB68(a3, v87);
      }

      v98 = *(*(a1 + 328) + 8 * jj + 8);
      *v87 = 426;
      v99 = *(v98 + 40);
      v87[2] = v99;
      if (v99 > 0x7F)
      {
        v100 = sub_19575D0(v99, v87 + 2);
      }

      else
      {
        v100 = v87 + 3;
      }

      v87 = sub_14733EC(v98, v100, a3);
    }
  }

  v101 = *(a1 + 344);
  if (v101)
  {
    for (kk = 0; kk != v101; ++kk)
    {
      if (*a3 <= v87)
      {
        v87 = sub_225EB68(a3, v87);
      }

      v103 = *(*(a1 + 352) + 8 * kk + 8);
      *v87 = 434;
      v104 = *(v103 + 40);
      v87[2] = v104;
      if (v104 > 0x7F)
      {
        v105 = sub_19575D0(v104, v87 + 2);
      }

      else
      {
        v105 = v87 + 3;
      }

      v87 = sub_1473E84(v103, v105, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v87)
    {
      v87 = sub_225EB68(a3, v87);
    }

    v106 = *(a1 + 480);
    *v87 = 442;
    v107 = *(v106 + 20);
    v87[2] = v107;
    if (v107 > 0x7F)
    {
      v108 = sub_19575D0(v107, v87 + 2);
    }

    else
    {
      v108 = v87 + 3;
    }

    v87 = sub_147A7BC(v106, v108, a3);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v87)
    {
      v87 = sub_225EB68(a3, v87);
    }

    v109 = *(a1 + 488);
    *v87 = 450;
    v110 = *(v109 + 20);
    v87[2] = v110;
    if (v110 > 0x7F)
    {
      v111 = sub_19575D0(v110, v87 + 2);
    }

    else
    {
      v111 = v87 + 3;
    }

    v87 = sub_147A7BC(v109, v111, a3);
  }

  v112 = *(a1 + 376);
  if (v112 >= 1)
  {
    if (*a3 <= v87)
    {
      v87 = sub_225EB68(a3, v87);
    }

    *v87 = 458;
    v113 = v87 + 2;
    if (v112 >= 0x80)
    {
      do
      {
        *v113++ = v112 | 0x80;
        v114 = v112 >> 7;
        v149 = v112 >> 14;
        v112 >>= 7;
      }

      while (v149);
    }

    else
    {
      LOBYTE(v114) = v112;
    }

    *v113 = v114;
    v115 = *(a1 + 368);
    v116 = &v115[*(a1 + 360)];
    v117 = v113 + 1;
    do
    {
      if (*a3 <= v117)
      {
        v117 = sub_225EB68(a3, v117);
      }

      v119 = *v115++;
      v118 = v119;
      *v117 = v119;
      if (v119 > 0x7F)
      {
        *v117 = v118 | 0x80;
        v120 = v118 >> 7;
        v117[1] = v118 >> 7;
        v87 = v117 + 2;
        if (v118 >= 0x4000)
        {
          LOBYTE(v121) = v117[1];
          do
          {
            *(v87 - 1) = v121 | 0x80;
            v121 = v120 >> 7;
            *v87++ = v120 >> 7;
            v122 = v120 >> 14;
            v120 >>= 7;
          }

          while (v122);
        }
      }

      else
      {
        v87 = v117 + 1;
      }

      v117 = v87;
    }

    while (v115 < v116);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v87)
    {
      v87 = sub_225EB68(a3, v87);
    }

    v123 = *(a1 + 496);
    *v87 = 466;
    v124 = *(v123 + 20);
    v87[2] = v124;
    if (v124 > 0x7F)
    {
      v125 = sub_19575D0(v124, v87 + 2);
    }

    else
    {
      v125 = v87 + 3;
    }

    v87 = sub_14853B4(v123, v125, a3);
  }

  if ((v6 & 2) != 0)
  {
    v87 = sub_128AEEC(a3, 27, (*(a1 + 464) & 0xFFFFFFFFFFFFFFFELL), v87);
  }

  v126 = *(a1 + 392);
  if (v126)
  {
    for (mm = 0; mm != v126; ++mm)
    {
      if (*a3 <= v87)
      {
        v87 = sub_225EB68(a3, v87);
      }

      v128 = *(*(a1 + 400) + 8 * mm + 8);
      *v87 = 482;
      v129 = *(v128 + 20);
      v87[2] = v129;
      if (v129 > 0x7F)
      {
        v130 = sub_19575D0(v129, v87 + 2);
      }

      else
      {
        v130 = v87 + 3;
      }

      v87 = sub_14502B0(v128, v130, a3);
    }
  }

  v131 = *(a1 + 416);
  if (v131)
  {
    for (nn = 0; nn != v131; ++nn)
    {
      if (*a3 <= v87)
      {
        v87 = sub_225EB68(a3, v87);
      }

      v133 = *(*(a1 + 424) + 8 * nn + 8);
      *v87 = 490;
      v134 = *(v133 + 20);
      v87[2] = v134;
      if (v134 > 0x7F)
      {
        v135 = sub_19575D0(v134, v87 + 2);
      }

      else
      {
        v135 = v87 + 3;
      }

      v87 = sub_1462EF0(v133, v135, a3);
    }
  }

  v136 = *(a1 + 440);
  if (v136)
  {
    for (i1 = 0; i1 != v136; ++i1)
    {
      if (*a3 <= v87)
      {
        v87 = sub_225EB68(a3, v87);
      }

      v138 = *(*(a1 + 448) + 8 * i1 + 8);
      *v87 = 498;
      v139 = *(v138 + 20);
      v87[2] = v139;
      if (v139 > 0x7F)
      {
        v140 = sub_19575D0(v139, v87 + 2);
      }

      else
      {
        v140 = v87 + 3;
      }

      v87 = sub_14502B0(v138, v140, a3);
    }
  }

  if (*(a1 + 26))
  {
    v87 = sub_1953428(a1 + 16, 1000, 10101, v87, a3);
  }

  v141 = *(a1 + 8);
  if ((v141 & 1) == 0)
  {
    return v87;
  }

  v143 = v141 & 0xFFFFFFFFFFFFFFFCLL;
  v144 = *(v143 + 31);
  if (v144 < 0)
  {
    v145 = *(v143 + 8);
    v144 = *(v143 + 16);
  }

  else
  {
    v145 = (v143 + 8);
  }

  if ((*a3 - v87) >= v144)
  {
    v150 = v144;
    memcpy(v87, v145, v144);
    v87 += v150;
    return v87;
  }

  return sub_1957130(a3, v145, v144, v87);
}

uint64_t sub_14C2C70(uint64_t a1)
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
      v9 = sub_14C0404(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + v10;
  if (v10 >= 1)
  {
    v12 = (*(a1 + 88) + 8);
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v11 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      --v10;
    }

    while (v10);
  }

  v16 = *(a1 + 104);
  v17 = v11 + v16;
  v18 = *(a1 + 112);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = sub_148EB94(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 128);
  v24 = v17 + v23;
  if (v23 >= 1)
  {
    v25 = (*(a1 + 136) + 8);
    do
    {
      v26 = *v25++;
      v27 = *(v26 + 23);
      v28 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v28 = v27;
      }

      v24 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      --v23;
    }

    while (v23);
  }

  v29 = sub_1959E5C((a1 + 144));
  v30 = 11;
  v31 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v29 >= 0)
  {
    v30 = v31;
  }

  v32 = v30 + v24;
  if (v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = 0;
  }

  if (!v29)
  {
    v32 = v24;
  }

  *(a1 + 160) = v33;
  v34 = v32 + v29;
  v35 = sub_1959E5C((a1 + 168));
  v36 = 11;
  v37 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v35 >= 0)
  {
    v36 = v37;
  }

  v38 = v36 + v34;
  if (v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = 0;
  }

  if (v35)
  {
    v40 = v38;
  }

  else
  {
    v40 = v34;
  }

  *(a1 + 184) = v39;
  v41 = *(a1 + 200);
  v42 = v40 + v35 + v41;
  v43 = *(a1 + 208);
  if (v43)
  {
    v44 = (v43 + 8);
  }

  else
  {
    v44 = 0;
  }

  if (v41)
  {
    v45 = 8 * v41;
    do
    {
      v46 = *v44++;
      v47 = sub_149E4E4(v46);
      v42 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6);
      v45 -= 8;
    }

    while (v45);
  }

  v48 = *(a1 + 224);
  v49 = v42 + v48;
  v50 = *(a1 + 232);
  if (v50)
  {
    v51 = (v50 + 8);
  }

  else
  {
    v51 = 0;
  }

  if (v48)
  {
    v52 = 8 * v48;
    do
    {
      v53 = *v51++;
      v54 = sub_149E4E4(v53);
      v49 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6);
      v52 -= 8;
    }

    while (v52);
  }

  v55 = *(a1 + 248);
  v56 = v49 + v55;
  v57 = *(a1 + 256);
  if (v57)
  {
    v58 = (v57 + 8);
  }

  else
  {
    v58 = 0;
  }

  if (v55)
  {
    v59 = 8 * v55;
    do
    {
      v60 = *v58++;
      v61 = sub_149E4E4(v60);
      v56 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6);
      v59 -= 8;
    }

    while (v59);
  }

  v62 = sub_1959E5C((a1 + 264));
  v63 = 11;
  v64 = ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v62 >= 0)
  {
    v63 = v64;
  }

  v65 = v63 + v56;
  if (v62)
  {
    v66 = v62;
  }

  else
  {
    v66 = 0;
  }

  if (!v62)
  {
    v65 = v56;
  }

  *(a1 + 280) = v66;
  v67 = *(a1 + 296);
  v68 = v65 + v62 + 2 * v67;
  v69 = *(a1 + 304);
  if (v69)
  {
    v70 = (v69 + 8);
  }

  else
  {
    v70 = 0;
  }

  if (v67)
  {
    v71 = 8 * v67;
    do
    {
      v72 = *v70++;
      v73 = sub_14A2BAC(v72);
      v68 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6);
      v71 -= 8;
    }

    while (v71);
  }

  v74 = *(a1 + 320);
  v75 = v68 + 2 * v74;
  v76 = *(a1 + 328);
  if (v76)
  {
    v77 = (v76 + 8);
  }

  else
  {
    v77 = 0;
  }

  if (v74)
  {
    v78 = 8 * v74;
    do
    {
      v79 = *v77++;
      v80 = sub_147352C(v79);
      v75 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6);
      v78 -= 8;
    }

    while (v78);
  }

  v81 = *(a1 + 344);
  v82 = v75 + 2 * v81;
  v83 = *(a1 + 352);
  if (v83)
  {
    v84 = (v83 + 8);
  }

  else
  {
    v84 = 0;
  }

  if (v81)
  {
    v85 = 8 * v81;
    do
    {
      v86 = *v84++;
      v87 = sub_1473FC4(v86);
      v82 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6);
      v85 -= 8;
    }

    while (v85);
  }

  v88 = sub_1959E5C((a1 + 360));
  v89 = 12;
  v90 = ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v88 >= 0)
  {
    v89 = v90;
  }

  v91 = v89 + v82;
  if (v88)
  {
    v92 = v88;
  }

  else
  {
    v92 = 0;
  }

  if (!v88)
  {
    v91 = v82;
  }

  *(a1 + 376) = v92;
  v93 = *(a1 + 392);
  v94 = v91 + v88 + 2 * v93;
  v95 = *(a1 + 400);
  if (v95)
  {
    v96 = (v95 + 8);
  }

  else
  {
    v96 = 0;
  }

  if (v93)
  {
    v97 = 8 * v93;
    do
    {
      v98 = *v96++;
      v99 = sub_1450690(v98);
      v94 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6);
      v97 -= 8;
    }

    while (v97);
  }

  v100 = *(a1 + 416);
  v101 = v94 + 2 * v100;
  v102 = *(a1 + 424);
  if (v102)
  {
    v103 = (v102 + 8);
  }

  else
  {
    v103 = 0;
  }

  if (v100)
  {
    v104 = 8 * v100;
    do
    {
      v105 = *v103++;
      v106 = sub_1463930(v105);
      v101 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6);
      v104 -= 8;
    }

    while (v104);
  }

  v107 = *(a1 + 440);
  v108 = v101 + 2 * v107;
  v109 = *(a1 + 448);
  if (v109)
  {
    v110 = (v109 + 8);
  }

  else
  {
    v110 = 0;
  }

  if (v107)
  {
    v111 = 8 * v107;
    do
    {
      v112 = *v110++;
      v113 = sub_1450690(v112);
      v108 += v113 + ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6);
      v111 -= 8;
    }

    while (v111);
  }

  v114 = *(a1 + 40);
  if (*(a1 + 40))
  {
    if (v114)
    {
      v118 = *(a1 + 456) & 0xFFFFFFFFFFFFFFFELL;
      v119 = *(v118 + 23);
      v120 = *(v118 + 8);
      if ((v119 & 0x80u) == 0)
      {
        v120 = v119;
      }

      v108 += v120 + ((9 * (__clz(v120 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v114 & 2) == 0)
      {
LABEL_109:
        if ((v114 & 4) == 0)
        {
          goto LABEL_110;
        }

        goto LABEL_130;
      }
    }

    else if ((v114 & 2) == 0)
    {
      goto LABEL_109;
    }

    v121 = *(a1 + 464) & 0xFFFFFFFFFFFFFFFELL;
    v122 = *(v121 + 23);
    v123 = *(v121 + 8);
    if ((v122 & 0x80u) == 0)
    {
      v123 = v122;
    }

    v108 += v123 + ((9 * (__clz(v123 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v114 & 4) == 0)
    {
LABEL_110:
      if ((v114 & 8) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_131;
    }

LABEL_130:
    v124 = sub_149A624(*(a1 + 472));
    v108 += v124 + ((9 * (__clz(v124 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v114 & 8) == 0)
    {
LABEL_111:
      if ((v114 & 0x10) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_132;
    }

LABEL_131:
    v125 = sub_147ACD8(*(a1 + 480));
    v108 += v125 + ((9 * (__clz(v125 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v114 & 0x10) == 0)
    {
LABEL_112:
      if ((v114 & 0x20) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_113;
    }

LABEL_132:
    v126 = sub_147ACD8(*(a1 + 488));
    v108 += v126 + ((9 * (__clz(v126 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v114 & 0x20) == 0)
    {
LABEL_114:
      v108 += (v114 >> 5) & 2;
      if ((v114 & 0x80) != 0)
      {
        v108 += ((9 * (__clz(*(a1 + 508) | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      goto LABEL_116;
    }

LABEL_113:
    v115 = sub_14854CC(*(a1 + 496));
    v108 += v115 + ((9 * (__clz(v115 | 1) ^ 0x1F) + 73) >> 6) + 2;
    goto LABEL_114;
  }

LABEL_116:
  if ((v114 & 0xF00) == 0)
  {
    goto LABEL_122;
  }

  if ((v114 & 0x100) != 0)
  {
    v108 += ((9 * (__clz(*(a1 + 512) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v114 & 0x200) == 0)
    {
LABEL_119:
      if ((v114 & 0x400) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_136;
    }
  }

  else if ((v114 & 0x200) == 0)
  {
    goto LABEL_119;
  }

  v108 += ((9 * (__clz(*(a1 + 516) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v114 & 0x400) == 0)
  {
LABEL_120:
    if ((v114 & 0x800) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

LABEL_136:
  v108 += ((9 * (__clz(*(a1 + 520) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v114 & 0x800) != 0)
  {
LABEL_121:
    v108 += ((9 * (__clz(*(a1 + 524) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_122:
  v116 = *(a1 + 8);
  if (v116)
  {
    v127 = v116 & 0xFFFFFFFFFFFFFFFCLL;
    v128 = *((v116 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v128 < 0)
    {
      v128 = *(v127 + 16);
    }

    v108 += v128;
  }

  *(a1 + 44) = v108;
  return v108;
}

void sub_14C3464(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_15681CC((a1 + 48), v7, (v6 + 8), v5, **(a1 + 64) - *(a1 + 56));
    v8 = *(a1 + 56) + v5;
    *(a1 + 56) = v8;
    v9 = *(a1 + 64);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 80);
  if (v10)
  {
    v11 = *(a2 + 88);
    v12 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1201B48((a1 + 72), v12, (v11 + 8), v10, **(a1 + 88) - *(a1 + 80));
    v13 = *(a1 + 80) + v10;
    *(a1 + 80) = v13;
    v14 = *(a1 + 88);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 104);
  if (v15)
  {
    v16 = *(a2 + 112);
    v17 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_144C6DC((a1 + 96), v17, (v16 + 8), v15, **(a1 + 112) - *(a1 + 104), v18);
    v19 = *(a1 + 104) + v15;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 128);
  if (v21)
  {
    v22 = *(a2 + 136);
    v23 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1201B48((a1 + 120), v23, (v22 + 8), v21, **(a1 + 136) - *(a1 + 128));
    v24 = *(a1 + 128) + v21;
    *(a1 + 128) = v24;
    v25 = *(a1 + 136);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 144);
  if (v26)
  {
    v27 = *(a1 + 144);
    sub_1958E5C((a1 + 144), v27 + v26);
    v28 = *(a1 + 152);
    *(a1 + 144) += *(a2 + 144);
    memcpy((v28 + 4 * v27), *(a2 + 152), 4 * *(a2 + 144));
  }

  v29 = *(a2 + 168);
  if (v29)
  {
    v30 = *(a1 + 168);
    sub_1958E5C((a1 + 168), v30 + v29);
    v31 = *(a1 + 176);
    *(a1 + 168) += *(a2 + 168);
    memcpy((v31 + 4 * v30), *(a2 + 176), 4 * *(a2 + 168));
  }

  v32 = *(a2 + 200);
  if (v32)
  {
    v33 = *(a2 + 208);
    v34 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_144DA24((a1 + 192), v34, (v33 + 8), v32, **(a1 + 208) - *(a1 + 200), v35);
    v36 = *(a1 + 200) + v32;
    *(a1 + 200) = v36;
    v37 = *(a1 + 208);
    if (*v37 < v36)
    {
      *v37 = v36;
    }
  }

  v38 = *(a2 + 224);
  if (v38)
  {
    v39 = *(a2 + 232);
    v40 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_144DA24((a1 + 216), v40, (v39 + 8), v38, **(a1 + 232) - *(a1 + 224), v41);
    v42 = *(a1 + 224) + v38;
    *(a1 + 224) = v42;
    v43 = *(a1 + 232);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 248);
  if (v44)
  {
    v45 = *(a2 + 256);
    v46 = sub_19592E8(a1 + 240, *(a2 + 248));
    sub_144DA24((a1 + 240), v46, (v45 + 8), v44, **(a1 + 256) - *(a1 + 248), v47);
    v48 = *(a1 + 248) + v44;
    *(a1 + 248) = v48;
    v49 = *(a1 + 256);
    if (*v49 < v48)
    {
      *v49 = v48;
    }
  }

  v50 = *(a2 + 264);
  if (v50)
  {
    v51 = *(a1 + 264);
    sub_1958E5C((a1 + 264), v51 + v50);
    v52 = *(a1 + 272);
    *(a1 + 264) += *(a2 + 264);
    memcpy((v52 + 4 * v51), *(a2 + 272), 4 * *(a2 + 264));
  }

  v53 = *(a2 + 296);
  if (v53)
  {
    v54 = *(a2 + 304);
    v55 = sub_19592E8(a1 + 288, *(a2 + 296));
    sub_1566CC8((a1 + 288), v55, (v54 + 8), v53, **(a1 + 304) - *(a1 + 296), v56);
    v57 = *(a1 + 296) + v53;
    *(a1 + 296) = v57;
    v58 = *(a1 + 304);
    if (*v58 < v57)
    {
      *v58 = v57;
    }
  }

  v59 = *(a2 + 320);
  if (v59)
  {
    v60 = *(a2 + 328);
    v61 = sub_19592E8(a1 + 312, *(a2 + 320));
    sub_1566EE8((a1 + 312), v61, (v60 + 8), v59, **(a1 + 328) - *(a1 + 320));
    v62 = *(a1 + 320) + v59;
    *(a1 + 320) = v62;
    v63 = *(a1 + 328);
    if (*v63 < v62)
    {
      *v63 = v62;
    }
  }

  v64 = *(a2 + 344);
  if (v64)
  {
    v65 = *(a2 + 352);
    v66 = sub_19592E8(a1 + 336, *(a2 + 344));
    sub_1566F74((a1 + 336), v66, (v65 + 8), v64, **(a1 + 352) - *(a1 + 344));
    v67 = *(a1 + 344) + v64;
    *(a1 + 344) = v67;
    v68 = *(a1 + 352);
    if (*v68 < v67)
    {
      *v68 = v67;
    }
  }

  v69 = *(a2 + 360);
  if (v69)
  {
    v70 = *(a1 + 360);
    sub_1958E5C((a1 + 360), v70 + v69);
    v71 = *(a1 + 368);
    *(a1 + 360) += *(a2 + 360);
    memcpy((v71 + 4 * v70), *(a2 + 368), 4 * *(a2 + 360));
  }

  v72 = *(a2 + 392);
  if (v72)
  {
    v73 = *(a2 + 400);
    v74 = sub_19592E8(a1 + 384, *(a2 + 392));
    sub_156707C((a1 + 384), v74, (v73 + 8), v72, **(a1 + 400) - *(a1 + 392), v75);
    v76 = *(a1 + 392) + v72;
    *(a1 + 392) = v76;
    v77 = *(a1 + 400);
    if (*v77 < v76)
    {
      *v77 = v76;
    }
  }

  v78 = *(a2 + 416);
  if (v78)
  {
    v79 = *(a2 + 424);
    v80 = sub_19592E8(a1 + 408, *(a2 + 416));
    sub_1566218((a1 + 408), v80, (v79 + 8), v78, **(a1 + 424) - *(a1 + 416), v81);
    v82 = *(a1 + 416) + v78;
    *(a1 + 416) = v82;
    v83 = *(a1 + 424);
    if (*v83 < v82)
    {
      *v83 = v82;
    }
  }

  v84 = *(a2 + 440);
  if (v84)
  {
    v85 = *(a2 + 448);
    v86 = sub_19592E8(a1 + 432, *(a2 + 440));
    sub_156707C((a1 + 432), v86, (v85 + 8), v84, **(a1 + 448) - *(a1 + 440), v87);
    v88 = *(a1 + 440) + v84;
    *(a1 + 440) = v88;
    v89 = *(a1 + 448);
    if (*v89 < v88)
    {
      *v89 = v88;
    }
  }

  v90 = *(a2 + 40);
  if (v90)
  {
    if (v90)
    {
      v91 = *(a2 + 456);
      *(a1 + 40) |= 1u;
      v92 = *(a1 + 8);
      v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
      if (v92)
      {
        v93 = *v93;
      }

      sub_194EA1C((a1 + 456), (v91 & 0xFFFFFFFFFFFFFFFELL), v93);
      if ((v90 & 2) == 0)
      {
LABEL_51:
        if ((v90 & 4) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_59;
      }
    }

    else if ((v90 & 2) == 0)
    {
      goto LABEL_51;
    }

    v94 = *(a2 + 464);
    *(a1 + 40) |= 2u;
    v95 = *(a1 + 8);
    v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
    if (v95)
    {
      v96 = *v96;
    }

    sub_194EA1C((a1 + 464), (v94 & 0xFFFFFFFFFFFFFFFELL), v96);
    if ((v90 & 4) == 0)
    {
LABEL_67:
      if ((v90 & 8) != 0)
      {
        *(a1 + 40) |= 8u;
        v102 = *(a1 + 480);
        if (!v102)
        {
          v103 = *(a1 + 8);
          v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
          if (v103)
          {
            v104 = *v104;
          }

          a3.n128_f64[0] = sub_14BC9E8(v104);
          *(a1 + 480) = v102;
        }

        if (*(a2 + 480))
        {
          v105 = *(a2 + 480);
        }

        else
        {
          v105 = &off_2772310;
        }

        sub_1474F58(v102, v105, a3);
        if ((v90 & 0x10) == 0)
        {
LABEL_69:
          if ((v90 & 0x20) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_101;
        }
      }

      else if ((v90 & 0x10) == 0)
      {
        goto LABEL_69;
      }

      *(a1 + 40) |= 0x10u;
      v106 = *(a1 + 488);
      if (!v106)
      {
        v107 = *(a1 + 8);
        v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL);
        if (v107)
        {
          v108 = *v108;
        }

        a3.n128_f64[0] = sub_14BC9E8(v108);
        *(a1 + 488) = v106;
      }

      if (*(a2 + 488))
      {
        v109 = *(a2 + 488);
      }

      else
      {
        v109 = &off_2772310;
      }

      sub_1474F58(v106, v109, a3);
      if ((v90 & 0x20) == 0)
      {
LABEL_70:
        if ((v90 & 0x40) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_109;
      }

LABEL_101:
      *(a1 + 40) |= 0x20u;
      v110 = *(a1 + 496);
      if (!v110)
      {
        v111 = *(a1 + 8);
        v112 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
        if (v111)
        {
          v112 = *v112;
        }

        v110 = sub_14BD1EC(v112);
        *(a1 + 496) = v110;
      }

      if (*(a2 + 496))
      {
        v113 = *(a2 + 496);
      }

      else
      {
        v113 = &off_2772750;
      }

      sub_1485514(v110, v113);
      if ((v90 & 0x40) == 0)
      {
LABEL_71:
        if ((v90 & 0x80) == 0)
        {
LABEL_73:
          *(a1 + 40) |= v90;
          goto LABEL_74;
        }

LABEL_72:
        *(a1 + 508) = *(a2 + 508);
        goto LABEL_73;
      }

LABEL_109:
      *(a1 + 504) = *(a2 + 504);
      if ((v90 & 0x80) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

LABEL_59:
    *(a1 + 40) |= 4u;
    v97 = *(a1 + 472);
    if (!v97)
    {
      v98 = *(a1 + 8);
      v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
      if (v98)
      {
        v99 = *v99;
      }

      a3.n128_f64[0] = sub_14BDC34(v99);
      *(a1 + 472) = v97;
    }

    if (*(a2 + 472))
    {
      v100 = *(a2 + 472);
    }

    else
    {
      v100 = &off_2772FD8;
    }

    sub_149AD40(v97, v100, a3);
    goto LABEL_67;
  }

LABEL_74:
  if ((v90 & 0xF00) == 0)
  {
    goto LABEL_81;
  }

  if ((v90 & 0x100) != 0)
  {
    *(a1 + 512) = *(a2 + 512);
    if ((v90 & 0x200) == 0)
    {
LABEL_77:
      if ((v90 & 0x400) == 0)
      {
        goto LABEL_78;
      }

LABEL_113:
      *(a1 + 520) = *(a2 + 520);
      if ((v90 & 0x800) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }
  }

  else if ((v90 & 0x200) == 0)
  {
    goto LABEL_77;
  }

  *(a1 + 516) = *(a2 + 516);
  if ((v90 & 0x400) != 0)
  {
    goto LABEL_113;
  }

LABEL_78:
  if ((v90 & 0x800) != 0)
  {
LABEL_79:
    *(a1 + 524) = *(a2 + 524);
  }

LABEL_80:
  *(a1 + 40) |= v90;
LABEL_81:
  sub_225EA0C(a1 + 16, a2 + 16);
  v101 = *(a2 + 8);
  if (v101)
  {

    sub_1957EF4((a1 + 8), (v101 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}