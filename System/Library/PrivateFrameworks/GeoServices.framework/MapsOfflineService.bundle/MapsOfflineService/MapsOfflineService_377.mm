uint64_t sub_153CADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 40);
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

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 32) + 4 * v5);
      if (v7 < 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      }

      v6 += v8;
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = v2 + v4 + v6;
  if ((v1 & 2) != 0)
  {
    v10 = *(a1 + 44);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v11;
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

    v9 += v15;
  }

  *(a1 + 20) = v9;
  return v9;
}

uint64_t sub_153CBF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ECE40;
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
    sub_156D890((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
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

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_153CD4C(_Unwind_Exception *a1)
{
  sub_1956AFC(v3);
  sub_156CD20(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_153CDA0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 6);
  sub_156CD20(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_153CE28(void *a1)
{
  sub_153CDA0(a1);

  operator delete();
}

uint64_t sub_153CE60(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_153C520(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 68) = 1;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_153CEF4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v44, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v44 + 1);
    v8 = **v44;
    if (**v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v44 + 2);
      }
    }

    *v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          v29 = v7 - 1;
          while (1)
          {
            v30 = v29 + 1;
            *v44 = v29 + 1;
            v31 = *(a1 + 40);
            if (v31 && (v32 = *(a1 + 32), v32 < *v31))
            {
              *(a1 + 32) = v32 + 1;
              v33 = *&v31[2 * v32 + 2];
            }

            else
            {
              sub_1551ACC(*(a1 + 24));
              v33 = sub_19593CC(a1 + 24, v34);
              v30 = *v44;
            }

            v29 = sub_221BFE8(a3, v33, v30);
            *v44 = v29;
            if (!v29)
            {
              goto LABEL_73;
            }

            if (*a3 <= v29 || *v29 != 10)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        v16 = v7 - 1;
        while (1)
        {
          v17 = (v16 + 1);
          *v44 = v16 + 1;
          v18 = *(a1 + 64);
          if (v18 && (v19 = *(a1 + 56), v19 < *v18))
          {
            *(a1 + 56) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = *(a1 + 48);
            if (!v21)
            {
              operator new();
            }

            *v23 = v22;
            v23[1] = sub_195A650;
            *v22 = 0;
            v22[1] = 0;
            v22[2] = 0;
            v20 = sub_19593CC(a1 + 48, v22);
            v17 = *v44;
          }

          v16 = sub_1958890(v20, v17, a3);
          *v44 = v16;
          if (!v16)
          {
            goto LABEL_73;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_51;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_51;
      }

      v5 |= 1u;
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
        *v44 = v25;
        *(a1 + 72) = v24 != 0;
        goto LABEL_62;
      }

      v38 = sub_19587DC(v7, v24);
      *v44 = v38;
      *(a1 + 72) = v39 != 0;
      if (!v38)
      {
        goto LABEL_73;
      }

      goto LABEL_62;
    }

    if (v11 == 4)
    {
      break;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_51;
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
      *v44 = v13;
      *(a1 + 73) = v12 != 0;
      goto LABEL_62;
    }

    v42 = sub_19587DC(v7, v12);
    *v44 = v42;
    *(a1 + 73) = v43 != 0;
    if (!v42)
    {
      goto LABEL_73;
    }

LABEL_62:
    if (sub_195ADC0(a3, v44, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 32)
  {
    v5 |= 4u;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80000000) != 0)
    {
      v27 = (v7[1] << 7) + v27 - 128;
      if (v7[1] < 0)
      {
        v40 = sub_19587DC(v7, v27);
        *v44 = v40;
        *(a1 + 76) = v41;
        if (!v40)
        {
          goto LABEL_73;
        }

        goto LABEL_62;
      }

      v28 = (v7 + 2);
    }

    else
    {
      v28 = (v7 + 1);
    }

    *v44 = v28;
    *(a1 + 76) = v27;
    goto LABEL_62;
  }

LABEL_51:
  if (v8)
  {
    v35 = (v8 & 7) == 4;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = *v44;
    }

    *v44 = sub_1952690(v8, v37, v7, a3);
    if (!*v44)
    {
      goto LABEL_73;
    }

    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_73:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_153D2E8(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_153C87C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 64) + v12);
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
        memcpy(__dst + 2, v13, v14);
        __dst = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v17 = *(a1 + 72);
    *__dst = 24;
    __dst[1] = v17;
    __dst += 2;
  }

  if ((v16 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v19 = *(a1 + 76);
    *__dst = 32;
    __dst[1] = v19;
    if (v19 > 0x7F)
    {
      __dst[1] = v19 | 0x80;
      v20 = v19 >> 7;
      __dst[2] = v19 >> 7;
      v18 = __dst + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v21) = __dst[2];
        do
        {
          *(v18 - 1) = v21 | 0x80;
          v21 = v20 >> 7;
          *v18++ = v20 >> 7;
          v22 = v20 >> 14;
          v20 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v18 = __dst + 2;
    }
  }

  else
  {
    v18 = __dst;
  }

  if ((v16 & 2) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 73);
    *v18 = 40;
    v18[1] = v23;
    v18 += 2;
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v18;
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

  if ((*a3 - v18) >= v27)
  {
    v29 = v27;
    memcpy(v18, v28, v27);
    v18 += v29;
    return v18;
  }

  return sub_1957130(a3, v28, v27, v18);
}

uint64_t sub_153D5B8(uint64_t a1)
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
      v7 = sub_153CADC(v6);
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
  if ((v14 & 7) != 0)
  {
    result += (v14 & 2) + 2 * (v14 & 1);
    if ((v14 & 4) != 0)
    {
      v15 = *(a1 + 76);
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
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    result += v20;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_153D704(void **result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    sub_156D890(result + 3, v6, (v5 + 8), v4, *result[5] - *(result + 8));
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
  if ((v14 & 7) != 0)
  {
    if (v14)
    {
      *(result + 72) = *(a2 + 72);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
LABEL_12:
          *(result + 4) |= v14;
          goto LABEL_13;
        }

LABEL_11:
        *(result + 19) = *(a2 + 76);
        goto LABEL_12;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(result + 73) = *(a2 + 73);
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

    sub_1957EF4(result + 1, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_153D864(uint64_t a1)
{
  v1 = *(a1 + 32);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 40) + 8 * v1--);
  }

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t sub_153D8A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ECEC0;
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

  v11 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v11;
  return a1;
}

void sub_153D99C(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_153D9DC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_153DA58(void *a1)
{
  sub_153D9DC(a1);

  operator delete();
}

uint64_t sub_153DA90(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_153DAF8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 16)
        {
          v5 |= 2u;
          LODWORD(v13) = *v7;
          if ((v13 & 0x80000000) != 0)
          {
            v13 = (v7[1] << 7) + v13 - 128;
            if (v7[1] < 0)
            {
              v31 = sub_19587DC(v7, v13);
              *v35 = v31;
              *(a1 + 52) = v32;
              if (!v31)
              {
                goto LABEL_66;
              }

              goto LABEL_54;
            }

            v14 = (v7 + 2);
          }

          else
          {
            v14 = (v7 + 1);
          }

          *v35 = v14;
          *(a1 + 52) = v13;
          goto LABEL_54;
        }

        goto LABEL_40;
      }

      if (v8 != 8)
      {
        goto LABEL_40;
      }

      v24 = v7 + 1;
      v23 = *v7;
      if (v23 < 0)
      {
        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          *v35 = sub_19587DC(v7, v23);
          if (!*v35)
          {
            goto LABEL_66;
          }

          goto LABEL_35;
        }

        v24 = v7 + 2;
      }

      *v35 = v24;
LABEL_35:
      if (v23 > 4)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v23;
      }

      goto LABEL_54;
    }

    if (v11 == 3)
    {
      if (v8 == 24)
      {
        v5 |= 4u;
        LODWORD(v26) = *v7;
        if ((v26 & 0x80000000) != 0)
        {
          v26 = (v7[1] << 7) + v26 - 128;
          if (v7[1] < 0)
          {
            v33 = sub_19587DC(v7, v26);
            *v35 = v33;
            *(a1 + 56) = v34;
            if (!v33)
            {
              goto LABEL_66;
            }

            goto LABEL_54;
          }

          v27 = (v7 + 2);
        }

        else
        {
          v27 = (v7 + 1);
        }

        *v35 = v27;
        *(a1 + 56) = v26;
        goto LABEL_54;
      }
    }

    else if (v11 == 4 && v8 == 34)
    {
      v15 = v7 - 1;
      while (1)
      {
        v16 = (v15 + 1);
        *v35 = v15 + 1;
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
          v16 = *v35;
        }

        v15 = sub_1958890(v19, v16, a3);
        *v35 = v15;
        if (!v15)
        {
          goto LABEL_66;
        }

        if (*a3 <= v15 || *v15 != 34)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_40:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

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

    *v35 = sub_1952690(v8, v30, v7, a3);
    if (!*v35)
    {
      goto LABEL_66;
    }

LABEL_54:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_153DE54(uint64_t a1, char *__dst, unint64_t *a3)
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

  v19 = *(a1 + 32);
  if (v19 >= 1)
  {
    v20 = 8;
    do
    {
      v21 = *(*(a1 + 40) + v20);
      v22 = *(v21 + 23);
      if (v22 < 0 && (v22 = v21[1], v22 > 127) || (*a3 - v15 + 14) < v22)
      {
        v15 = sub_1957480(a3, 4, v21, v15);
      }

      else
      {
        *v15 = 34;
        v15[1] = v22;
        if (*(v21 + 23) < 0)
        {
          v21 = *v21;
        }

        v23 = v15 + 2;
        memcpy(v23, v21, v22);
        v15 = &v23[v22];
      }

      v20 += 8;
      --v19;
    }

    while (v19);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v27)
  {
    v29 = v27;
    memcpy(v15, v28, v27);
    v15 += v29;
    return v15;
  }

  return sub_1957130(a3, v28, v27, v15);
}

uint64_t sub_153E13C(_DWORD *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v4 = a1[12];
    if (v4 < 0)
    {
      result = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = a1[13];
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_12:
  if ((v2 & 4) != 0)
  {
    v7 = a1[14];
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

uint64_t sub_153E1F4(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v4 = sub_153E13C(a1);
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 < 0)
    {
      v3 = 13;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
    }

    v5 = *(a1 + 52);
    if (v5 < 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    v7 = *(a1 + 56);
    if (v7 < 0)
    {
      v8 = 10;
    }

    else
    {
      v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    }

    v4 = v3 + v6 + v8;
  }

  v9 = *(a1 + 32);
  result = v4 + v9;
  if (v9 >= 1)
  {
    v11 = (*(a1 + 40) + 8);
    do
    {
      v12 = *v11++;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      result += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      --v9;
    }

    while (v9);
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    result += v17;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_153E358(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ECF40;
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
    sub_156D90C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v11 & 2) != 0)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v13);
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void sub_153E4B0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_153E4F4(uint64_t a1)
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
  sub_156CDA4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_153E5B8(uint64_t a1)
{
  sub_153E4F4(a1);

  operator delete();
}

uint64_t sub_153E5F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_153E5F0(v4);
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

uint64_t sub_153E6DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v30, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v30 + 1);
    v7 = **v30;
    if (**v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v30 + 2);
      }
    }

    *v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 4)
    {
      if (v10 != 5)
      {
        if (v10 == 6 && v7 == 50)
        {
          v14 = v6 - 1;
          while (1)
          {
            v15 = (v14 + 1);
            *v30 = v14 + 1;
            v16 = *(a1 + 40);
            if (v16 && (v17 = *(a1 + 32), v17 < *v16))
            {
              *(a1 + 32) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = sub_1551CBC(*(a1 + 24));
              v18 = sub_19593CC(a1 + 24, v19);
              v15 = *v30;
            }

            v14 = sub_221C078(a3, v18, v15);
            *v30 = v14;
            if (!v14)
            {
              break;
            }

            if (*a3 <= v14 || *v14 != 50)
            {
              goto LABEL_46;
            }
          }

LABEL_54:
          *v30 = 0;
          return *v30;
        }

LABEL_38:
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
            return *v30;
          }

          goto LABEL_54;
        }

        v27 = *(a1 + 8);
        if (v27)
        {
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v28 = sub_11F1920((a1 + 8));
          v6 = *v30;
        }

        v25 = sub_1952690(v7, v28, v6, a3);
        goto LABEL_45;
      }

      if (v7 != 42)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 2u;
      v23 = *(a1 + 8);
      v12 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v12 = *v12;
      }

      v13 = (a1 + 56);
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v21 = v6 + 1;
          v20 = *v6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            *v30 = sub_19587DC(v6, v20);
            if (!*v30)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v21 = v6 + 2;
LABEL_30:
            *v30 = v21;
          }

          if (v20 > 3)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v20;
          }

          continue;
        }

        goto LABEL_38;
      }

      if (v10 != 4 || v7 != 34)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 48);
    }

    v24 = sub_194DB04(v13, v12);
    v25 = sub_1958890(v24, *v30, a3);
LABEL_45:
    *v30 = v25;
    if (!v25)
    {
      goto LABEL_54;
    }

LABEL_46:
    ;
  }

  return *v30;
}

char *sub_153E978(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 64);
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
    v6 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 5, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v6);
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
      *v6 = 50;
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

      v6 = sub_153E978(v13, v15, a3);
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

uint64_t sub_153EB7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    v4 = *(a1 + 64);
    if (v4 < 0)
    {
      v3 = 11;
    }

    else
    {
      v3 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 32);
  v6 = v3 + v5;
  v7 = *(a1 + 40);
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
      v11 = sub_153EB7C(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
    v2 = *(a1 + 16);
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v6 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v15 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v6 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v6 += v21;
  }

  *(a1 + 20) = v6;
  return v6;
}

void sub_153ECF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156D90C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

BOOL sub_153EE5C(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((*(v4 + 16) & 4) == 0)
    {
      break;
    }

    --v2;
  }

  while (sub_153EE5C(v4 + 24));
  return v3 < 1;
}

double sub_153EECC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26ECFC0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0uLL;
  *(a1 + 40) = a2;
  result = 0.0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 216) = &qword_278E990;
  *(a1 + 224) = &qword_278E990;
  *(a1 + 232) = &qword_278E990;
  *(a1 + 240) = &qword_278E990;
  *(a1 + 248) = &qword_278E990;
  *(a1 + 256) = &qword_278E990;
  *(a1 + 264) = &qword_278E990;
  *(a1 + 272) = &qword_278E990;
  *(a1 + 280) = &qword_278E990;
  *(a1 + 288) = &qword_278E990;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 528) = 10;
  return result;
}

uint64_t sub_153EF88(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ECFC0;
  v6 = (a2 + 16);
  v5 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  v7 = *(a2 + 32);
  if (v7)
  {
    sub_1959094((a1 + 32), v7);
    v8 = *(a1 + 40);
    *(a1 + 32) += *(a2 + 32);
    memcpy(v8, *(a2 + 40), 8 * *(a2 + 32));
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v9 = *(a2 + 48);
  if (v9)
  {
    sub_1959094((a1 + 48), v9);
    v10 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v10, *(a2 + 56), 8 * *(a2 + 48));
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v11 = *(a2 + 64);
  if (v11)
  {
    sub_1958E5C((a1 + 64), v11);
    v12 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy(v12, *(a2 + 72), 4 * *(a2 + 64));
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v13 = *(a2 + 88);
  if (v13)
  {
    v14 = *(a2 + 96);
    v15 = sub_19592E8(a1 + 80, v13);
    sub_1201B48((a1 + 80), v15, (v14 + 8), v13, **(a1 + 96) - *(a1 + 88));
    v16 = *(a1 + 88) + v13;
    *(a1 + 88) = v16;
    v17 = *(a1 + 96);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v18 = *(a2 + 112);
  if (v18)
  {
    v19 = *(a2 + 120);
    v20 = sub_19592E8(a1 + 104, v18);
    sub_1201B48((a1 + 104), v20, (v19 + 8), v18, **(a1 + 120) - *(a1 + 112));
    v21 = *(a1 + 112) + v18;
    *(a1 + 112) = v21;
    v22 = *(a1 + 120);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v23 = *(a2 + 136);
  if (v23)
  {
    v24 = *(a2 + 144);
    v25 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1201B48((a1 + 128), v25, (v24 + 8), v23, **(a1 + 144) - *(a1 + 136));
    v26 = *(a1 + 136) + v23;
    *(a1 + 136) = v26;
    v27 = *(a1 + 144);
    if (*v27 < v26)
    {
      *v27 = v26;
    }
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v28 = *(a2 + 160);
  if (v28)
  {
    v29 = *(a2 + 168);
    v30 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_156D998((a1 + 152), v30, (v29 + 8), v28, **(a1 + 168) - *(a1 + 160));
    v31 = *(a1 + 160) + v28;
    *(a1 + 160) = v31;
    v32 = *(a1 + 168);
    if (*v32 < v31)
    {
      *v32 = v31;
    }
  }

  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v33 = *(a2 + 184);
  if (v33)
  {
    v34 = *(a2 + 192);
    v35 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_12E5E34((a1 + 176), v35, (v34 + 8), v33, **(a1 + 192) - *(a1 + 184));
    v36 = *(a1 + 184) + v33;
    *(a1 + 184) = v36;
    v37 = *(a1 + 192);
    if (*v37 < v36)
    {
      *v37 = v36;
    }
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v38 = *(a2 + 200);
  if (v38)
  {
    sub_1958E5C((a1 + 200), v38);
    v39 = *(a1 + 208);
    *(a1 + 200) += *(a2 + 200);
    memcpy(v39, *(a2 + 208), 4 * *(a2 + 200));
  }

  v40 = *(a2 + 8);
  if (v40)
  {
    sub_1957EF4(v4, (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 216) = &qword_278E990;
  v41 = *v6;
  if (*v6)
  {
    v42 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v42 = *v42;
    }

    sub_194EA1C((a1 + 216), (*(a2 + 216) & 0xFFFFFFFFFFFFFFFELL), v42);
    v41 = *v6;
  }

  *(a1 + 224) = &qword_278E990;
  if ((v41 & 2) != 0)
  {
    v43 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v43 = *v43;
    }

    sub_194EA1C((a1 + 224), (*(a2 + 224) & 0xFFFFFFFFFFFFFFFELL), v43);
    v41 = *v6;
  }

  *(a1 + 232) = &qword_278E990;
  if ((v41 & 4) != 0)
  {
    v44 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v44 = *v44;
    }

    sub_194EA1C((a1 + 232), (*(a2 + 232) & 0xFFFFFFFFFFFFFFFELL), v44);
    v41 = *v6;
  }

  *(a1 + 240) = &qword_278E990;
  if ((v41 & 8) != 0)
  {
    v45 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v45 = *v45;
    }

    sub_194EA1C((a1 + 240), (*(a2 + 240) & 0xFFFFFFFFFFFFFFFELL), v45);
    v41 = *v6;
  }

  *(a1 + 248) = &qword_278E990;
  if ((v41 & 0x10) != 0)
  {
    v46 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v46 = *v46;
    }

    sub_194EA1C((a1 + 248), (*(a2 + 248) & 0xFFFFFFFFFFFFFFFELL), v46);
    v41 = *v6;
  }

  *(a1 + 256) = &qword_278E990;
  if ((v41 & 0x20) != 0)
  {
    v47 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v47 = *v47;
    }

    sub_194EA1C((a1 + 256), (*(a2 + 256) & 0xFFFFFFFFFFFFFFFELL), v47);
    v41 = *v6;
  }

  *(a1 + 264) = &qword_278E990;
  if ((v41 & 0x40) != 0)
  {
    v48 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v48 = *v48;
    }

    sub_194EA1C((a1 + 264), (*(a2 + 264) & 0xFFFFFFFFFFFFFFFELL), v48);
    v41 = *v6;
  }

  *(a1 + 272) = &qword_278E990;
  if ((v41 & 0x80) != 0)
  {
    v49 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v49 = *v49;
    }

    sub_194EA1C((a1 + 272), (*(a2 + 272) & 0xFFFFFFFFFFFFFFFELL), v49);
    v41 = *v6;
  }

  *(a1 + 280) = &qword_278E990;
  if ((v41 & 0x100) != 0)
  {
    v50 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v50 = *v50;
    }

    sub_194EA1C((a1 + 280), (*(a2 + 280) & 0xFFFFFFFFFFFFFFFELL), v50);
    v41 = *v6;
  }

  *(a1 + 288) = &qword_278E990;
  if ((v41 & 0x200) != 0)
  {
    v51 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v51 = *v51;
    }

    sub_194EA1C((a1 + 288), (*(a2 + 288) & 0xFFFFFFFFFFFFFFFELL), v51);
    v41 = *v6;
  }

  if ((v41 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 296) = 0;
  if ((v41 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 304) = 0;
  if ((v41 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 312) = 0;
  if ((v41 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 320) = 0;
  if ((v41 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 328) = 0;
  if ((v41 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v41 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v41 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v41 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v41 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v41 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v41 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v41 & 0x400000) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  if ((v41 & 0x800000) != 0)
  {
    operator new();
  }

  *(a1 + 400) = 0;
  v52 = *(a2 + 408);
  v53 = *(a2 + 424);
  v54 = *(a2 + 456);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = v54;
  *(a1 + 408) = v52;
  *(a1 + 424) = v53;
  v55 = *(a2 + 472);
  v56 = *(a2 + 488);
  v57 = *(a2 + 504);
  *(a1 + 516) = *(a2 + 516);
  *(a1 + 488) = v56;
  *(a1 + 504) = v57;
  *(a1 + 472) = v55;
  return a1;
}

void *sub_153F9F4(void *a1)
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

  sub_153FAC8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 25));
  sub_12E5CA0(a1 + 22);
  sub_156CE28(a1 + 19);
  sub_1956AFC(a1 + 16);
  sub_1956AFC(a1 + 13);
  sub_1956AFC(a1 + 10);
  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 6));
  sub_1956ABC((a1 + 4));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_153FAC8(uint64_t a1)
{
  v3 = *(a1 + 216);
  v2 = (a1 + 216);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 224) != &qword_278E990)
  {
    sub_194E89C((a1 + 224));
  }

  if (*(a1 + 232) != &qword_278E990)
  {
    sub_194E89C((a1 + 232));
  }

  if (*(a1 + 240) != &qword_278E990)
  {
    sub_194E89C((a1 + 240));
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

  if (*(a1 + 272) != &qword_278E990)
  {
    sub_194E89C((a1 + 272));
  }

  if (*(a1 + 280) != &qword_278E990)
  {
    sub_194E89C((a1 + 280));
  }

  if (*(a1 + 288) != &qword_278E990)
  {
    sub_194E89C((a1 + 288));
  }

  if (a1 != &off_27769A8)
  {
    v5 = *(a1 + 296);
    if (v5)
    {
      sub_16ED13C(v5);
      operator delete();
    }

    v6 = *(a1 + 304);
    if (v6)
    {
      sub_16E8374(v6);
      operator delete();
    }

    v7 = *(a1 + 312);
    if (v7)
    {
      sub_16E5B34(v7);
      operator delete();
    }

    v8 = *(a1 + 320);
    if (v8)
    {
      sub_16EE080(v8);
      operator delete();
    }

    v9 = *(a1 + 328);
    if (v9)
    {
      sub_153CDA0(v9);
      operator delete();
    }

    v10 = *(a1 + 336);
    if (v10)
    {
      sub_16E4E08(v10);
      operator delete();
    }

    v11 = *(a1 + 344);
    if (v11)
    {
      sub_153875C(v11);
      operator delete();
    }

    v12 = *(a1 + 352);
    if (v12)
    {
      sub_153ABD0(v12);
      operator delete();
    }

    v13 = *(a1 + 360);
    if (v13)
    {
      sub_153D9DC(v13);
      operator delete();
    }

    v14 = *(a1 + 368);
    if (v14)
    {
      sub_16ED13C(v14);
      operator delete();
    }

    v15 = *(a1 + 376);
    if (v15)
    {
      sub_153E4F4(v15);
      operator delete();
    }

    v16 = *(a1 + 384);
    if (v16)
    {
      sub_16E4E08(v16);
      operator delete();
    }

    v17 = *(a1 + 392);
    if (v17)
    {
      sub_16E4E08(v17);
      operator delete();
    }

    result = *(a1 + 400);
    if (result)
    {
      sub_1550360(result);

      operator delete();
    }
  }

  return result;
}

void sub_153FD90(void *a1)
{
  sub_153F9F4(a1);

  operator delete();
}

uint64_t sub_153FDC8(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  sub_12A41D0(a1 + 80);
  sub_12A41D0(a1 + 104);
  result = sub_12A41D0(a1 + 128);
  v3 = *(a1 + 160);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 168) + 8);
    do
    {
      v5 = *v4++;
      result = sub_153DA90(v5);
      --v3;
    }

    while (v3);
    *(a1 + 160) = 0;
  }

  v6 = *(a1 + 184);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 192) + 8);
    do
    {
      v8 = *v7++;
      result = sub_16EEC04(v8);
      --v6;
    }

    while (v6);
    *(a1 + 184) = 0;
  }

  v9 = *(a1 + 16);
  *(a1 + 200) = 0;
  if (v9)
  {
    if ((v9 & 1) == 0)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_23:
      v11 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
        if ((v9 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
        if ((v9 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_14;
      }

LABEL_31:
      v13 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v13 + 23) < 0)
      {
        **v13 = 0;
        *(v13 + 8) = 0;
        if ((v9 & 0x10) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v13 = 0;
        *(v13 + 23) = 0;
        if ((v9 & 0x10) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_15:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_16;
      }

LABEL_39:
      v15 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v15 + 23) < 0)
      {
        **v15 = 0;
        *(v15 + 8) = 0;
        if ((v9 & 0x40) != 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        *v15 = 0;
        *(v15 + 23) = 0;
        if ((v9 & 0x40) != 0)
        {
          goto LABEL_43;
        }
      }

LABEL_17:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_50;
      }

LABEL_47:
      v17 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v17 + 23) < 0)
      {
        **v17 = 0;
        *(v17 + 8) = 0;
      }

      else
      {
        *v17 = 0;
        *(v17 + 23) = 0;
      }

      goto LABEL_50;
    }

    v10 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    v12 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v9 & 8) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v9 & 8) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_14:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_35:
    v14 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v9 & 0x20) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v9 & 0x20) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_16:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_43:
    v16 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v16 + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_47;
  }

LABEL_50:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v9 & 0x100) == 0)
  {
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_53;
    }

LABEL_98:
    v22 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v22 + 23) < 0)
    {
      **v22 = 0;
      *(v22 + 8) = 0;
      if ((v9 & 0x400) != 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      *v22 = 0;
      *(v22 + 23) = 0;
      if ((v9 & 0x400) != 0)
      {
        goto LABEL_102;
      }
    }

LABEL_54:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_103;
  }

  v21 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v21 + 23) < 0)
  {
    **v21 = 0;
    *(v21 + 8) = 0;
    if ((v9 & 0x200) != 0)
    {
      goto LABEL_98;
    }
  }

  else
  {
    *v21 = 0;
    *(v21 + 23) = 0;
    if ((v9 & 0x200) != 0)
    {
      goto LABEL_98;
    }
  }

LABEL_53:
  if ((v9 & 0x400) == 0)
  {
    goto LABEL_54;
  }

LABEL_102:
  result = sub_16ED178(*(a1 + 296));
  if ((v9 & 0x800) == 0)
  {
LABEL_55:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_104;
  }

LABEL_103:
  result = sub_16E48B0(*(a1 + 304));
  if ((v9 & 0x1000) == 0)
  {
LABEL_56:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_105;
  }

LABEL_104:
  result = sub_16E5B70(*(a1 + 312));
  if ((v9 & 0x2000) == 0)
  {
LABEL_57:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_106;
  }

LABEL_105:
  result = sub_16EE0BC(*(a1 + 320));
  if ((v9 & 0x4000) == 0)
  {
LABEL_58:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_106:
  result = sub_153CE60(*(a1 + 328));
  if ((v9 & 0x8000) != 0)
  {
LABEL_59:
    result = sub_16E4E44(*(a1 + 336));
  }

LABEL_60:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v9 & 0x10000) != 0)
  {
    result = sub_14C56B8(*(a1 + 344));
    if ((v9 & 0x20000) == 0)
    {
LABEL_63:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_91;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  result = sub_153ACC8(*(a1 + 352));
  if ((v9 & 0x40000) == 0)
  {
LABEL_64:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = sub_153DA90(*(a1 + 360));
  if ((v9 & 0x80000) == 0)
  {
LABEL_65:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = sub_16ED178(*(a1 + 368));
  if ((v9 & 0x100000) == 0)
  {
LABEL_66:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = sub_153E5F0(*(a1 + 376));
  if ((v9 & 0x200000) == 0)
  {
LABEL_67:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = sub_16E4E44(*(a1 + 384));
  if ((v9 & 0x400000) == 0)
  {
LABEL_68:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_95:
  result = sub_16E4E44(*(a1 + 392));
  if ((v9 & 0x800000) != 0)
  {
LABEL_69:
    result = sub_14C5A04(*(a1 + 400));
  }

LABEL_70:
  if (HIBYTE(v9))
  {
    *(a1 + 408) = 0;
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
  }

  v18 = *(a1 + 20);
  if (v18)
  {
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
    *(a1 + 448) = 0;
  }

  if ((v18 & 0xFF00) != 0)
  {
    *(a1 + 456) = 0;
    *(a1 + 464) = 0;
    *(a1 + 480) = 0;
    *(a1 + 472) = 0;
  }

  if ((v18 & 0xFF0000) != 0)
  {
    *(a1 + 491) = 0;
    *(a1 + 484) = 0;
  }

  if (HIBYTE(v18))
  {
    *(a1 + 512) = 0;
    *(a1 + 507) = 0;
    *(a1 + 499) = 0;
  }

  if ((*(a1 + 24) & 0x1F) != 0)
  {
    *(a1 + 520) = 0;
    *(a1 + 528) = 10;
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  v20 = *(a1 + 8);
  v19 = (a1 + 8);
  if (v20)
  {

    return sub_1957EA8(v19);
  }

  return result;
}

char *sub_1540418(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 32);
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

      v7 = *(*(a1 + 40) + 8 * i);
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

  v12 = *(a1 + 48);
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

      v14 = *(*(a1 + 56) + 8 * j);
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
            v8 = (v16 >> 7);
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

  v18 = *(a1 + 16);
  if ((v18 & 0x400) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 296);
    *v15 = 26;
    v20 = *(v19 + 20);
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v15 + 1);
    }

    else
    {
      v21 = v15 + 2;
    }

    v15 = sub_16ED4B0(v19, v21, a3);
    if ((v18 & 0x800) == 0)
    {
LABEL_27:
      if ((v18 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_42;
    }
  }

  else if ((v18 & 0x800) == 0)
  {
    goto LABEL_27;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v22 = *(a1 + 304);
  *v15 = 34;
  v23 = *(v22 + 44);
  v15[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v15 + 1);
  }

  else
  {
    v24 = v15 + 2;
  }

  v15 = sub_16E886C(v22, v24, a3);
  if ((v18 & 1) == 0)
  {
LABEL_28:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = sub_128AEEC(a3, 5, (*(a1 + 216) & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v18 & 0x1000) == 0)
  {
    goto LABEL_49;
  }

LABEL_43:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v25 = *(a1 + 312);
  *v15 = 50;
  v26 = *(v25 + 20);
  v15[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v15 + 1);
  }

  else
  {
    v27 = v15 + 2;
  }

  v15 = sub_16E5FE0(v25, v27, a3);
LABEL_49:
  v28 = *(a1 + 64);
  if (v28 < 1)
  {
    v31 = v15;
  }

  else
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v30 = *(*(a1 + 72) + 4 * k);
      *v15 = 56;
      v15[1] = v30;
      if (v30 > 0x7F)
      {
        v15[1] = v30 | 0x80;
        v32 = v30 >> 7;
        v15[2] = v30 >> 7;
        v31 = v15 + 3;
        if (v30 >= 0x4000)
        {
          LOBYTE(v33) = v15[2];
          do
          {
            *(v31 - 1) = v33 | 0x80;
            v33 = v32 >> 7;
            *v31++ = v32 >> 7;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
        }
      }

      else
      {
        v31 = v15 + 2;
      }

      v15 = v31;
    }
  }

  if ((v18 & 0x8000000) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v35 = *(a1 + 420);
    *v31 = 64;
    v31[1] = v35;
    v31 += 2;
  }

  if ((*(a1 + 24) & 0x10) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v37 = *(a1 + 528);
    *v31 = 72;
    v31[1] = v37;
    if (v37 > 0x7F)
    {
      v31[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v31[2] = v37 >> 7;
      v36 = v31 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v39) = v31[2];
        do
        {
          *(v36 - 1) = v39 | 0x80;
          v39 = v38 >> 7;
          *v36++ = v38 >> 7;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v36 = v31 + 2;
    }
  }

  else
  {
    v36 = v31;
  }

  v41 = *(a1 + 16);
  if ((v41 & 0x1000000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v43 = *(a1 + 408);
    *v36 = 80;
    v36[1] = v43;
    if (v43 > 0x7F)
    {
      v36[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v36[2] = v43 >> 7;
      v42 = v36 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v36) = v36[2];
        do
        {
          *(v42 - 1) = v36 | 0x80;
          v36 = (v44 >> 7);
          *v42++ = v44 >> 7;
          v45 = v44 >> 14;
          v44 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v42 = v36 + 2;
    }
  }

  else
  {
    v42 = v36;
  }

  if ((v41 & 0x2000000) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v47 = *(a1 + 412);
    *v42 = 88;
    v42[1] = v47;
    if (v47 > 0x7F)
    {
      v42[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v42[2] = v47 >> 7;
      v46 = v42 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v49) = v42[2];
        do
        {
          *(v46 - 1) = v49 | 0x80;
          v49 = v48 >> 7;
          *v46++ = v48 >> 7;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v46 = v42 + 2;
    }
  }

  else
  {
    v46 = v42;
  }

  if ((v41 & 0x2000) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v51 = *(a1 + 320);
    *v46 = 98;
    v52 = *(v51 + 20);
    v46[1] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v46 + 1);
    }

    else
    {
      v53 = v46 + 2;
    }

    v46 = sub_16EE2C4(v51, v53, a3);
  }

  if ((v41 & 0x4000000) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v55 = *(a1 + 416);
    *v46 = 104;
    v46[1] = v55;
    if (v55 > 0x7F)
    {
      v46[1] = v55 | 0x80;
      v56 = v55 >> 7;
      v46[2] = v55 >> 7;
      v54 = v46 + 3;
      if (v55 >= 0x4000)
      {
        LOBYTE(v46) = v46[2];
        do
        {
          *(v54 - 1) = v46 | 0x80;
          v46 = (v56 >> 7);
          *v54++ = v56 >> 7;
          v57 = v56 >> 14;
          v56 >>= 7;
        }

        while (v57);
      }
    }

    else
    {
      v54 = v46 + 2;
    }
  }

  else
  {
    v54 = v46;
  }

  if ((v41 & 0x10000000) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v58 = *(a1 + 421);
    *v54 = 112;
    v54[1] = v58;
    v54 += 2;
  }

  if ((v41 & 0x20000000) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v59 = *(a1 + 422);
    *v54 = 120;
    v54[1] = v59;
    v54 += 2;
  }

  if (*(a1 + 20))
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v61 = *(a1 + 432);
    *v54 = 384;
    v54[2] = v61;
    if (v61 > 0x7F)
    {
      v54[2] = v61 | 0x80;
      v62 = v61 >> 7;
      v54[3] = v61 >> 7;
      v60 = v54 + 4;
      if (v61 >= 0x4000)
      {
        LOBYTE(v63) = v54[3];
        do
        {
          *(v60 - 1) = v63 | 0x80;
          v63 = v62 >> 7;
          *v60++ = v62 >> 7;
          v64 = v62 >> 14;
          v62 >>= 7;
        }

        while (v64);
      }
    }

    else
    {
      v60 = v54 + 3;
    }
  }

  else
  {
    v60 = v54;
  }

  v65 = *(a1 + 88);
  if (v65 >= 1)
  {
    v66 = 8;
    do
    {
      v67 = *(*(a1 + 96) + v66);
      v68 = *(v67 + 23);
      if (v68 < 0 && (v68 = v67[1], v68 > 127) || (*a3 - v60 + 13) < v68)
      {
        v60 = sub_1957480(a3, 17, v67, v60);
      }

      else
      {
        *v60 = 394;
        v60[2] = v68;
        if (*(v67 + 23) < 0)
        {
          v67 = *v67;
        }

        v69 = v60 + 3;
        memcpy(v60 + 3, v67, v68);
        v60 = &v69[v68];
      }

      v66 += 8;
      --v65;
    }

    while (v65);
  }

  v70 = *(a1 + 16);
  if ((v70 & 0x40000000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v75 = *(a1 + 423);
    *v60 = 400;
    v60[2] = v75;
    v60 += 3;
    if ((v70 & 0x80000000) == 0)
    {
LABEL_138:
      if ((v70 & 2) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_139;
    }
  }

  else if ((v70 & 0x80000000) == 0)
  {
    goto LABEL_138;
  }

  if (*a3 <= v60)
  {
    v60 = sub_225EB68(a3, v60);
  }

  v76 = *(a1 + 424);
  *v60 = 409;
  *(v60 + 2) = v76;
  v60 += 10;
  if ((v70 & 2) != 0)
  {
LABEL_139:
    v60 = sub_128AEEC(a3, 20, (*(a1 + 224) & 0xFFFFFFFFFFFFFFFELL), v60);
  }

LABEL_140:
  if ((*(a1 + 20) & 4) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v71 = *(a1 + 440);
    *v60 = 424;
    v60[2] = v71;
    v60 += 3;
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v72 = *(a1 + 328);
    *v60 = 434;
    v73 = *(v72 + 20);
    v60[2] = v73;
    if (v73 > 0x7F)
    {
      v74 = sub_19575D0(v73, v60 + 2);
    }

    else
    {
      v74 = v60 + 3;
    }

    v60 = sub_153D2E8(v72, v74, a3);
  }

  v77 = *(a1 + 20);
  if ((v77 & 2) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v79 = *(a1 + 436);
    *v60 = 440;
    v60[2] = v79;
    if (v79 > 0x7F)
    {
      v60[2] = v79 | 0x80;
      v80 = v79 >> 7;
      v60[3] = v79 >> 7;
      v78 = v60 + 4;
      if (v79 >= 0x4000)
      {
        LOBYTE(v81) = v60[3];
        do
        {
          *(v78 - 1) = v81 | 0x80;
          v81 = v80 >> 7;
          *v78++ = v80 >> 7;
          v82 = v80 >> 14;
          v80 >>= 7;
        }

        while (v82);
      }
    }

    else
    {
      v78 = v60 + 3;
    }
  }

  else
  {
    v78 = v60;
  }

  if ((v77 & 8) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v83 = *(a1 + 441);
    *v78 = 448;
    v78[2] = v83;
    v78 += 3;
    if ((v77 & 0x10) == 0)
    {
LABEL_169:
      if ((v77 & 0x20) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_177;
    }
  }

  else if ((v77 & 0x10) == 0)
  {
    goto LABEL_169;
  }

  if (*a3 <= v78)
  {
    v78 = sub_225EB68(a3, v78);
  }

  v84 = *(a1 + 442);
  *v78 = 456;
  v78[2] = v84;
  v78 += 3;
  if ((v77 & 0x20) != 0)
  {
LABEL_177:
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v85 = *(a1 + 443);
    *v78 = 464;
    v78[2] = v85;
    v78 += 3;
  }

LABEL_180:
  v86 = *(a1 + 16);
  if ((v86 & 4) != 0)
  {
    v78 = sub_128AEEC(a3, 27, (*(a1 + 232) & 0xFFFFFFFFFFFFFFFELL), v78);
    if ((v86 & 8) == 0)
    {
LABEL_182:
      if ((v86 & 0x8000) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_190;
    }
  }

  else if ((v86 & 8) == 0)
  {
    goto LABEL_182;
  }

  v78 = sub_128AEEC(a3, 28, (*(a1 + 240) & 0xFFFFFFFFFFFFFFFELL), v78);
  if ((v86 & 0x8000) == 0)
  {
LABEL_183:
    if ((v86 & 0x10) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_200;
  }

LABEL_190:
  if (*a3 <= v78)
  {
    v78 = sub_225EB68(a3, v78);
  }

  v89 = *(a1 + 336);
  *v78 = 490;
  v90 = *(v89 + 44);
  v78[2] = v90;
  if (v90 > 0x7F)
  {
    v91 = sub_19575D0(v90, v78 + 2);
  }

  else
  {
    v91 = v78 + 3;
  }

  v78 = sub_16E5070(v89, v91, a3);
  if ((v86 & 0x10) == 0)
  {
LABEL_184:
    if ((v86 & 0x20) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_185;
  }

LABEL_200:
  v78 = sub_128AEEC(a3, 30, (*(a1 + 248) & 0xFFFFFFFFFFFFFFFELL), v78);
  if ((v86 & 0x20) != 0)
  {
LABEL_185:
    v78 = sub_128AEEC(a3, 31, (*(a1 + 256) & 0xFFFFFFFFFFFFFFFELL), v78);
  }

LABEL_186:
  v87 = *(a1 + 20);
  if ((v87 & 0x40) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v92 = *(a1 + 444);
    *v78 = 640;
    v78[2] = v92;
    if (v92 > 0x7F)
    {
      v78[2] = v92 | 0x80;
      v93 = v92 >> 7;
      v78[3] = v92 >> 7;
      v88 = v78 + 4;
      if (v92 >= 0x4000)
      {
        LOBYTE(v78) = v78[3];
        do
        {
          *(v88 - 1) = v78 | 0x80;
          v78 = (v93 >> 7);
          *v88++ = v93 >> 7;
          v94 = v93 >> 14;
          v93 >>= 7;
        }

        while (v94);
      }
    }

    else
    {
      v88 = v78 + 3;
    }
  }

  else
  {
    v88 = v78;
  }

  if ((v87 & 0x400) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v95 = *(a1 + 472);
    *v88 = 648;
    v88[2] = v95;
    v88 += 3;
  }

  if ((v87 & 0x800) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v96 = *(a1 + 473);
    *v88 = 656;
    v88[2] = v96;
    v88 += 3;
  }

  v97 = *(a1 + 112);
  if (v97 >= 1)
  {
    v98 = 8;
    do
    {
      v99 = *(*(a1 + 120) + v98);
      v100 = *(v99 + 23);
      if (v100 < 0 && (v100 = v99[1], v100 > 127) || (*a3 - v88 + 13) < v100)
      {
        v88 = sub_1957480(a3, 35, v99, v88);
      }

      else
      {
        *v88 = 666;
        v88[2] = v100;
        if (*(v99 + 23) < 0)
        {
          v99 = *v99;
        }

        v101 = v88 + 3;
        memcpy(v88 + 3, v99, v100);
        v88 = &v101[v100];
      }

      v98 += 8;
      --v97;
    }

    while (v97);
  }

  if ((v87 & 0x80) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v102 = *(a1 + 448);
    *v88 = 673;
    *(v88 + 2) = v102;
    v88 += 10;
    if ((v87 & 0x100) == 0)
    {
LABEL_226:
      if ((v87 & 0x200) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_235;
    }
  }

  else if ((v87 & 0x100) == 0)
  {
    goto LABEL_226;
  }

  if (*a3 <= v88)
  {
    v88 = sub_225EB68(a3, v88);
  }

  v103 = *(a1 + 456);
  *v88 = 681;
  *(v88 + 2) = v103;
  v88 += 10;
  if ((v87 & 0x200) == 0)
  {
LABEL_227:
    if ((v87 & 0x1000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_238;
  }

LABEL_235:
  if (*a3 <= v88)
  {
    v88 = sub_225EB68(a3, v88);
  }

  v104 = *(a1 + 464);
  *v88 = 689;
  *(v88 + 2) = v104;
  v88 += 10;
  if ((v87 & 0x1000) != 0)
  {
LABEL_238:
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v105 = *(a1 + 474);
    *v88 = 696;
    v88[2] = v105;
    v88 += 3;
  }

LABEL_241:
  v106 = *(a1 + 16);
  if ((v106 & 0x40) != 0)
  {
    v88 = sub_128AEEC(a3, 42, (*(a1 + 264) & 0xFFFFFFFFFFFFFFFELL), v88);
  }

  if ((v106 & 0x10000) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v107 = *(a1 + 344);
    *v88 = 730;
    v108 = *(v107 + 24);
    v88[2] = v108;
    if (v108 > 0x7F)
    {
      v109 = sub_19575D0(v108, v88 + 2);
    }

    else
    {
      v109 = v88 + 3;
    }

    v88 = sub_1538BB4(v107, v109, a3);
  }

  v110 = *(a1 + 20);
  if ((v110 & 0x2000) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v111 = *(a1 + 475);
    *v88 = 736;
    v88[2] = v111;
    v88 += 3;
  }

  if ((v110 & 0x4000) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v113 = *(a1 + 476);
    *v88 = 744;
    v88[2] = v113;
    if (v113 > 0x7F)
    {
      v88[2] = v113 | 0x80;
      v114 = v113 >> 7;
      v88[3] = v113 >> 7;
      v112 = v88 + 4;
      if (v113 >= 0x4000)
      {
        LOBYTE(v115) = v88[3];
        do
        {
          *(v112 - 1) = v115 | 0x80;
          v115 = v114 >> 7;
          *v112++ = v114 >> 7;
          v116 = v114 >> 14;
          v114 >>= 7;
        }

        while (v116);
      }
    }

    else
    {
      v112 = v88 + 3;
    }
  }

  else
  {
    v112 = v88;
  }

  if ((*(a1 + 18) & 2) != 0)
  {
    if (*a3 <= v112)
    {
      v112 = sub_225EB68(a3, v112);
    }

    v117 = *(a1 + 352);
    *v112 = 754;
    v118 = *(v117 + 44);
    v112[2] = v118;
    if (v118 > 0x7F)
    {
      v119 = sub_19575D0(v118, v112 + 2);
    }

    else
    {
      v119 = v112 + 3;
    }

    v112 = sub_153B1D4(v117, v119, a3);
  }

  v120 = *(a1 + 20);
  if ((v120 & 0x8000) != 0)
  {
    if (*a3 <= v112)
    {
      v112 = sub_225EB68(a3, v112);
    }

    v122 = *(a1 + 480);
    *v112 = 760;
    v112[2] = v122;
    if (v122 > 0x7F)
    {
      v112[2] = v122 | 0x80;
      v123 = v122 >> 7;
      v112[3] = v122 >> 7;
      v121 = v112 + 4;
      if (v122 >= 0x4000)
      {
        LOBYTE(v112) = v112[3];
        do
        {
          *(v121 - 1) = v112 | 0x80;
          v112 = (v123 >> 7);
          *v121++ = v123 >> 7;
          v124 = v123 >> 14;
          v123 >>= 7;
        }

        while (v124);
      }
    }

    else
    {
      v121 = v112 + 3;
    }
  }

  else
  {
    v121 = v112;
  }

  if ((v120 & 0x10000) != 0)
  {
    if (*a3 <= v121)
    {
      v121 = sub_225EB68(a3, v121);
    }

    v125 = *(a1 + 484);
    *v121 = 896;
    v121[2] = v125;
    v121 += 3;
    if ((v120 & 0x20000) == 0)
    {
LABEL_281:
      if ((v120 & 0x40000) == 0)
      {
        goto LABEL_282;
      }

      goto LABEL_290;
    }
  }

  else if ((v120 & 0x20000) == 0)
  {
    goto LABEL_281;
  }

  if (*a3 <= v121)
  {
    v121 = sub_225EB68(a3, v121);
  }

  v126 = *(a1 + 485);
  *v121 = 904;
  v121[2] = v126;
  v121 += 3;
  if ((v120 & 0x40000) == 0)
  {
LABEL_282:
    if ((v120 & 0x80000) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_293;
  }

LABEL_290:
  if (*a3 <= v121)
  {
    v121 = sub_225EB68(a3, v121);
  }

  v127 = *(a1 + 486);
  *v121 = 912;
  v121[2] = v127;
  v121 += 3;
  if ((v120 & 0x80000) != 0)
  {
LABEL_293:
    if (*a3 <= v121)
    {
      v121 = sub_225EB68(a3, v121);
    }

    v128 = *(a1 + 487);
    *v121 = 920;
    v121[2] = v128;
    v121 += 3;
  }

LABEL_296:
  v129 = *(a1 + 136);
  if (v129 >= 1)
  {
    v130 = 8;
    do
    {
      v131 = *(*(a1 + 144) + v130);
      v132 = *(v131 + 23);
      if (v132 < 0 && (v132 = v131[1], v132 > 127) || (*a3 - v121 + 13) < v132)
      {
        v121 = sub_1957480(a3, 52, v131, v121);
      }

      else
      {
        *v121 = 930;
        v121[2] = v132;
        if (*(v131 + 23) < 0)
        {
          v131 = *v131;
        }

        v133 = v121 + 3;
        memcpy(v121 + 3, v131, v132);
        v121 = &v133[v132];
      }

      v130 += 8;
      --v129;
    }

    while (v129);
  }

  if ((v120 & 0x200000) != 0)
  {
    if (*a3 <= v121)
    {
      v121 = sub_225EB68(a3, v121);
    }

    v134 = *(a1 + 496);
    *v121 = 936;
    v121[2] = v134;
    v121 += 3;
  }

  if ((v120 & 0x100000) != 0)
  {
    if (*a3 <= v121)
    {
      v121 = sub_225EB68(a3, v121);
    }

    v136 = *(a1 + 488);
    *v121 = 1696;
    v121[2] = v136;
    if (v136 > 0x7F)
    {
      v121[2] = v136 | 0x80;
      v137 = v136 >> 7;
      v121[3] = v136 >> 7;
      v135 = v121 + 4;
      if (v136 >= 0x4000)
      {
        LOBYTE(v121) = v121[3];
        do
        {
          *(v135 - 1) = v121 | 0x80;
          v121 = (v137 >> 7);
          *v135++ = v137 >> 7;
          v138 = v137 >> 14;
          v137 >>= 7;
        }

        while (v138);
      }
    }

    else
    {
      v135 = v121 + 3;
    }
  }

  else
  {
    v135 = v121;
  }

  if ((v120 & 0x400000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v139 = *(a1 + 497);
    *v135 = 1704;
    v135[2] = v139;
    v135 += 3;
  }

  if ((v120 & 0x800000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v140 = *(a1 + 498);
    *v135 = 1712;
    v135[2] = v140;
    v135 += 3;
  }

  v141 = *(a1 + 160);
  if (v141)
  {
    for (m = 0; m != v141; ++m)
    {
      if (*a3 <= v135)
      {
        v135 = sub_225EB68(a3, v135);
      }

      v143 = *(*(a1 + 168) + 8 * m + 8);
      *v135 = 1722;
      v144 = *(v143 + 20);
      v135[2] = v144;
      if (v144 > 0x7F)
      {
        v145 = sub_19575D0(v144, v135 + 2);
      }

      else
      {
        v145 = v135 + 3;
      }

      v135 = sub_153DE54(v143, v145, a3);
    }
  }

  if ((v120 & 0x1000000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v146 = *(a1 + 499);
    *v135 = 1728;
    v135[2] = v146;
    v135 += 3;
  }

  v147 = *(a1 + 16);
  if ((v147 & 0x80) != 0)
  {
    v135 = sub_128AEEC(a3, 105, (*(a1 + 272) & 0xFFFFFFFFFFFFFFFELL), v135);
  }

  if ((v147 & 0x40000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v148 = *(a1 + 360);
    *v135 = 1746;
    v149 = *(v148 + 20);
    v135[2] = v149;
    if (v149 > 0x7F)
    {
      v150 = sub_19575D0(v149, v135 + 2);
    }

    else
    {
      v150 = v135 + 3;
    }

    v135 = sub_153DE54(v148, v150, a3);
  }

  if ((*(a1 + 23) & 2) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v151 = *(a1 + 500);
    *v135 = 1752;
    v135[2] = v151;
    v135 += 3;
  }

  if ((*(a1 + 18) & 8) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v152 = *(a1 + 368);
    *v135 = 1762;
    v153 = *(v152 + 20);
    v135[2] = v153;
    if (v153 > 0x7F)
    {
      v154 = sub_19575D0(v153, v135 + 2);
    }

    else
    {
      v154 = v135 + 3;
    }

    v135 = sub_16ED4B0(v152, v154, a3);
  }

  if ((*(a1 + 23) & 4) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v155 = *(a1 + 501);
    *v135 = 1768;
    v135[2] = v155;
    v135 += 3;
  }

  if ((*(a1 + 18) & 0x10) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v156 = *(a1 + 376);
    *v135 = 1778;
    v157 = *(v156 + 20);
    v135[2] = v157;
    if (v157 > 0x7F)
    {
      v158 = sub_19575D0(v157, v135 + 2);
    }

    else
    {
      v158 = v135 + 3;
    }

    v135 = sub_153E978(v156, v158, a3);
  }

  v159 = *(a1 + 20);
  if ((v159 & 0x8000000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v160 = *(a1 + 502);
    *v135 = 1784;
    v135[2] = v160;
    v135 += 3;
  }

  v161 = *(a1 + 184);
  if (v161)
  {
    for (n = 0; n != v161; ++n)
    {
      if (*a3 <= v135)
      {
        v135 = sub_225EB68(a3, v135);
      }

      v163 = *(*(a1 + 192) + 8 * n + 8);
      *v135 = 1922;
      v164 = *(v163 + 20);
      v135[2] = v164;
      if (v164 > 0x7F)
      {
        v165 = sub_19575D0(v164, v135 + 2);
      }

      else
      {
        v165 = v135 + 3;
      }

      v135 = sub_16EEE1C(v163, v165, a3);
    }
  }

  if ((v159 & 0x20000000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v167 = *(a1 + 504);
    *v135 = 1928;
    v135[2] = v167;
    if (v167 > 0x7F)
    {
      v135[2] = v167 | 0x80;
      v168 = v167 >> 7;
      v135[3] = v167 >> 7;
      v166 = v135 + 4;
      if (v167 >= 0x4000)
      {
        LOBYTE(v169) = v135[3];
        do
        {
          *(v166 - 1) = v169 | 0x80;
          v169 = v168 >> 7;
          *v166++ = v168 >> 7;
          v170 = v168 >> 14;
          v168 >>= 7;
        }

        while (v170);
      }
    }

    else
    {
      v166 = v135 + 3;
    }
  }

  else
  {
    v166 = v135;
  }

  if ((*(a1 + 18) & 0x20) != 0)
  {
    if (*a3 <= v166)
    {
      v166 = sub_225EB68(a3, v166);
    }

    v171 = *(a1 + 384);
    *v166 = 1938;
    v172 = *(v171 + 44);
    v166[2] = v172;
    if (v172 > 0x7F)
    {
      v173 = sub_19575D0(v172, v166 + 2);
    }

    else
    {
      v173 = v166 + 3;
    }

    v166 = sub_16E5070(v171, v173, a3);
  }

  v174 = *(a1 + 20);
  if ((v174 & 0x40000000) != 0)
  {
    if (*a3 <= v166)
    {
      v166 = sub_225EB68(a3, v166);
    }

    v176 = *(a1 + 512);
    *v166 = 1944;
    v166[2] = v176;
    if (v176 > 0x7F)
    {
      v166[2] = v176 | 0x80;
      v177 = v176 >> 7;
      v166[3] = v176 >> 7;
      v175 = v166 + 4;
      if (v176 >= 0x4000)
      {
        LOBYTE(v166) = v166[3];
        do
        {
          *(v175 - 1) = v166 | 0x80;
          v166 = (v177 >> 7);
          *v175++ = v177 >> 7;
          v178 = v177 >> 14;
          v177 >>= 7;
        }

        while (v178);
      }
    }

    else
    {
      v175 = v166 + 3;
    }
  }

  else
  {
    v175 = v166;
  }

  if ((v174 & 0x10000000) != 0)
  {
    if (*a3 <= v175)
    {
      v175 = sub_225EB68(a3, v175);
    }

    v179 = *(a1 + 503);
    *v175 = 1952;
    v175[2] = v179;
    v175 += 3;
  }

  if (*(a1 + 24))
  {
    if (*a3 <= v175)
    {
      v175 = sub_225EB68(a3, v175);
    }

    v180 = *(a1 + 520);
    *v175 = 1960;
    v175[2] = v180;
    v175 += 3;
  }

  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*a3 <= v175)
    {
      v175 = sub_225EB68(a3, v175);
    }

    v182 = *(a1 + 516);
    *v175 = 1968;
    v175[2] = v182;
    if (v182 > 0x7F)
    {
      v175[2] = v182 | 0x80;
      v183 = v182 >> 7;
      v175[3] = v182 >> 7;
      v181 = v175 + 4;
      if (v182 >= 0x4000)
      {
        LOBYTE(v184) = v175[3];
        do
        {
          *(v181 - 1) = v184 | 0x80;
          v184 = v183 >> 7;
          *v181++ = v183 >> 7;
          v185 = v183 >> 14;
          v183 >>= 7;
        }

        while (v185);
      }
    }

    else
    {
      v181 = v175 + 3;
    }
  }

  else
  {
    v181 = v175;
  }

  v186 = *(a1 + 200);
  if (v186 < 1)
  {
    v189 = v181;
  }

  else
  {
    for (ii = 0; ii != v186; ++ii)
    {
      if (*a3 <= v181)
      {
        v181 = sub_225EB68(a3, v181);
      }

      v188 = *(*(a1 + 208) + 4 * ii);
      *v181 = 1976;
      v181[2] = v188;
      if (v188 > 0x7F)
      {
        v181[2] = v188 | 0x80;
        v190 = v188 >> 7;
        v181[3] = v188 >> 7;
        v189 = v181 + 4;
        if (v188 >= 0x4000)
        {
          LOBYTE(v181) = v181[3];
          do
          {
            *(v189 - 1) = v181 | 0x80;
            v181 = (v190 >> 7);
            *v189++ = v190 >> 7;
            v191 = v190 >> 14;
            v190 >>= 7;
          }

          while (v191);
        }
      }

      else
      {
        v189 = v181 + 3;
      }

      v181 = v189;
    }
  }

  if ((*(a1 + 18) & 0x40) != 0)
  {
    if (*a3 <= v189)
    {
      v189 = sub_225EB68(a3, v189);
    }

    v192 = *(a1 + 392);
    *v189 = 1986;
    v193 = *(v192 + 44);
    v189[2] = v193;
    if (v193 > 0x7F)
    {
      v194 = sub_19575D0(v193, v189 + 2);
    }

    else
    {
      v194 = v189 + 3;
    }

    v189 = sub_16E5070(v192, v194, a3);
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if (*a3 <= v189)
    {
      v189 = sub_225EB68(a3, v189);
    }

    v195 = *(a1 + 521);
    *v189 = 1992;
    v189[2] = v195;
    v189 += 3;
  }

  if ((*(a1 + 18) & 0x80) != 0)
  {
    if (*a3 <= v189)
    {
      v189 = sub_225EB68(a3, v189);
    }

    v196 = *(a1 + 400);
    *v189 = 2002;
    v197 = *(v196 + 64);
    v189[2] = v197;
    if (v197 > 0x7F)
    {
      v198 = sub_19575D0(v197, v189 + 2);
    }

    else
    {
      v198 = v189 + 3;
    }

    v189 = sub_15506E0(v196, v198, a3);
  }

  v199 = *(a1 + 24);
  if ((v199 & 8) != 0)
  {
    if (*a3 <= v189)
    {
      v189 = sub_225EB68(a3, v189);
    }

    v201 = *(a1 + 524);
    *v189 = 2008;
    v189[2] = v201;
    if (v201 > 0x7F)
    {
      v189[2] = v201 | 0x80;
      v202 = v201 >> 7;
      v189[3] = v201 >> 7;
      v200 = v189 + 4;
      if (v201 >= 0x4000)
      {
        LOBYTE(v189) = v189[3];
        do
        {
          *(v200 - 1) = v189 | 0x80;
          v189 = (v202 >> 7);
          *v200++ = v202 >> 7;
          v203 = v202 >> 14;
          v202 >>= 7;
        }

        while (v203);
      }
    }

    else
    {
      v200 = v189 + 3;
    }
  }

  else
  {
    v200 = v189;
  }

  if ((v199 & 4) != 0)
  {
    if (*a3 <= v200)
    {
      v200 = sub_225EB68(a3, v200);
    }

    v204 = *(a1 + 522);
    *v200 = 2016;
    v200[2] = v204;
    v200 += 3;
  }

  v205 = *(a1 + 16);
  if ((v205 & 0x100) != 0)
  {
    v200 = sub_128AEEC(a3, 125, (*(a1 + 280) & 0xFFFFFFFFFFFFFFFELL), v200);
  }

  if ((v205 & 0x200) != 0)
  {
    v200 = sub_128AEEC(a3, 126, (*(a1 + 288) & 0xFFFFFFFFFFFFFFFELL), v200);
  }

  v206 = *(a1 + 8);
  if ((v206 & 1) == 0)
  {
    return v200;
  }

  v208 = v206 & 0xFFFFFFFFFFFFFFFCLL;
  v209 = *(v208 + 31);
  if (v209 < 0)
  {
    v210 = *(v208 + 8);
    v209 = *(v208 + 16);
  }

  else
  {
    v210 = (v208 + 8);
  }

  if ((*a3 - v200) >= v209)
  {
    v211 = v209;
    memcpy(v200, v210, v209);
    v200 += v211;
    return v200;
  }

  return sub_1957130(a3, v210, v209, v200);
}

uint64_t sub_1541FC0(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 32));
  v3 = *(a1 + 32);
  v4 = sub_1959F14((a1 + 48));
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 72) + 4 * v7);
      if (v8 < 0)
      {
        v9 = 10;
      }

      else
      {
        v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
      }

      v6 += v9;
      ++v7;
    }

    while (v5 != v7);
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 88);
  v11 = v2 + v3 + v4 + *(a1 + 48) + v5 + v6 + 2 * v10;
  if (v10 >= 1)
  {
    v12 = (*(a1 + 96) + 8);
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

  v16 = *(a1 + 112);
  v17 = v11 + 2 * v16;
  if (v16 >= 1)
  {
    v18 = (*(a1 + 120) + 8);
    do
    {
      v19 = *v18++;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v17 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      --v16;
    }

    while (v16);
  }

  v22 = *(a1 + 136);
  v23 = v17 + 2 * v22;
  if (v22 >= 1)
  {
    v24 = (*(a1 + 144) + 8);
    do
    {
      v25 = *v24++;
      v26 = *(v25 + 23);
      v27 = *(v25 + 8);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v26;
      }

      v23 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      --v22;
    }

    while (v22);
  }

  v28 = *(a1 + 160);
  v29 = v23 + 2 * v28;
  v30 = *(a1 + 168);
  if (v30)
  {
    v31 = (v30 + 8);
  }

  else
  {
    v31 = 0;
  }

  if (v28)
  {
    v32 = 8 * v28;
    do
    {
      v33 = *v31++;
      v34 = sub_153E1F4(v33);
      v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      v32 -= 8;
    }

    while (v32);
  }

  v35 = *(a1 + 184);
  v36 = v29 + 2 * v35;
  v37 = *(a1 + 192);
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
      v41 = sub_16EEF64(v40);
      v36 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      v39 -= 8;
    }

    while (v39);
  }

  v42 = *(a1 + 200);
  if (v42)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = *(*(a1 + 208) + 4 * v43);
      if (v45 < 0)
      {
        v46 = 10;
      }

      else
      {
        v46 = (9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6;
      }

      v44 += v46;
      ++v43;
    }

    while (v42 != v43);
  }

  else
  {
    v44 = 0;
  }

  v47 = v36 + 2 * v42 + v44;
  v48 = *(a1 + 16);
  if (!v48)
  {
    goto LABEL_56;
  }

  if (v48)
  {
    v61 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    v62 = *(v61 + 23);
    v63 = *(v61 + 8);
    if ((v62 & 0x80u) == 0)
    {
      v63 = v62;
    }

    v47 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v48 & 2) == 0)
    {
LABEL_47:
      if ((v48 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_99;
    }
  }

  else if ((v48 & 2) == 0)
  {
    goto LABEL_47;
  }

  v64 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v47 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 4) == 0)
  {
LABEL_48:
    if ((v48 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_102;
  }

LABEL_99:
  v67 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
  v68 = *(v67 + 23);
  v69 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v69 = v68;
  }

  v47 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 8) == 0)
  {
LABEL_49:
    if ((v48 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_105;
  }

LABEL_102:
  v70 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v47 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x10) == 0)
  {
LABEL_50:
    if ((v48 & 0x20) == 0)
    {
      goto LABEL_51;
    }

LABEL_108:
    v76 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
    v77 = *(v76 + 23);
    v78 = *(v76 + 8);
    if ((v77 & 0x80u) == 0)
    {
      v78 = v77;
    }

    v47 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 0x40) == 0)
    {
LABEL_52:
      if ((v48 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    goto LABEL_111;
  }

LABEL_105:
  v73 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
  v74 = *(v73 + 23);
  v75 = *(v73 + 8);
  if ((v74 & 0x80u) == 0)
  {
    v75 = v74;
  }

  v47 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x20) != 0)
  {
    goto LABEL_108;
  }

LABEL_51:
  if ((v48 & 0x40) == 0)
  {
    goto LABEL_52;
  }

LABEL_111:
  v79 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
  v80 = *(v79 + 23);
  v81 = *(v79 + 8);
  if ((v80 & 0x80u) == 0)
  {
    v81 = v80;
  }

  v47 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x80) != 0)
  {
LABEL_53:
    v49 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
    v50 = *(v49 + 23);
    v51 = *(v49 + 8);
    if ((v50 & 0x80u) == 0)
    {
      v51 = v50;
    }

    v47 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_56:
  if ((v48 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  if ((v48 & 0x100) != 0)
  {
    v82 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
    v83 = *(v82 + 23);
    v84 = *(v82 + 8);
    if ((v83 & 0x80u) == 0)
    {
      v84 = v83;
    }

    v47 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 0x200) == 0)
    {
LABEL_59:
      if ((v48 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_121;
    }
  }

  else if ((v48 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v85 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
  v86 = *(v85 + 23);
  v87 = *(v85 + 8);
  if ((v86 & 0x80u) == 0)
  {
    v87 = v86;
  }

  v47 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x400) == 0)
  {
LABEL_60:
    if ((v48 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_122;
  }

LABEL_121:
  v88 = sub_16ED6F0(*(a1 + 296));
  v47 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v48 & 0x800) == 0)
  {
LABEL_61:
    if ((v48 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_123;
  }

LABEL_122:
  v89 = sub_16E8DA4(*(a1 + 304));
  v47 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v48 & 0x1000) == 0)
  {
LABEL_62:
    if ((v48 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_124;
  }

LABEL_123:
  v90 = sub_16E62F4(*(a1 + 312));
  v47 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v48 & 0x2000) == 0)
  {
LABEL_63:
    if ((v48 & 0x4000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_125;
  }

LABEL_124:
  v91 = sub_16EE474(*(a1 + 320));
  v47 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v48 & 0x4000) == 0)
  {
LABEL_64:
    if ((v48 & 0x8000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_125:
  v92 = sub_153D5B8(*(a1 + 328));
  v47 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x8000) != 0)
  {
LABEL_65:
    v52 = sub_16E51F0(*(a1 + 336));
    v47 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_66:
  if ((v48 & 0xFF0000) == 0)
  {
    goto LABEL_76;
  }

  if ((v48 & 0x10000) != 0)
  {
    v93 = sub_153A048(*(a1 + 344));
    v47 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 0x20000) == 0)
    {
LABEL_69:
      if ((v48 & 0x40000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_129;
    }
  }

  else if ((v48 & 0x20000) == 0)
  {
    goto LABEL_69;
  }

  v94 = sub_153B4A4(*(a1 + 352));
  v47 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x40000) == 0)
  {
LABEL_70:
    if ((v48 & 0x80000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_130;
  }

LABEL_129:
  v95 = sub_153E1F4(*(a1 + 360));
  v47 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x80000) == 0)
  {
LABEL_71:
    if ((v48 & 0x100000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_131;
  }

LABEL_130:
  v96 = sub_16ED6F0(*(a1 + 368));
  v47 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x100000) == 0)
  {
LABEL_72:
    if ((v48 & 0x200000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_132;
  }

LABEL_131:
  v97 = sub_153EB7C(*(a1 + 376));
  v47 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x200000) == 0)
  {
LABEL_73:
    if ((v48 & 0x400000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_133;
  }

LABEL_132:
  v98 = sub_16E51F0(*(a1 + 384));
  v47 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x400000) == 0)
  {
LABEL_74:
    if ((v48 & 0x800000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_133:
  v99 = sub_16E51F0(*(a1 + 392));
  v47 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x800000) != 0)
  {
LABEL_75:
    v53 = sub_15508CC(*(a1 + 400));
    v47 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_76:
  if (!HIBYTE(v48))
  {
    goto LABEL_89;
  }

  if ((v48 & 0x1000000) == 0)
  {
    if ((v48 & 0x2000000) == 0)
    {
      goto LABEL_79;
    }

LABEL_248:
    v133 = *(a1 + 412);
    if (v133 < 0)
    {
      v134 = 11;
    }

    else
    {
      v134 = ((9 * (__clz(v133 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v47 += v134;
    if ((v48 & 0x4000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

  v100 = *(a1 + 408);
  if (v100 < 0)
  {
    v101 = 11;
  }

  else
  {
    v101 = ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v47 += v101;
  if ((v48 & 0x2000000) != 0)
  {
    goto LABEL_248;
  }

LABEL_79:
  if ((v48 & 0x4000000) != 0)
  {
LABEL_80:
    v54 = *(a1 + 416);
    v55 = ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v54 >= 0)
    {
      v56 = v55;
    }

    else
    {
      v56 = 11;
    }

    v47 += v56;
  }

LABEL_84:
  v57 = v47 + ((v48 >> 27) & 2) + ((v48 >> 26) & 2) + ((v48 >> 28) & 2);
  if ((v48 & 0x40000000) != 0)
  {
    v57 += 3;
  }

  if ((v48 & 0x80000000) == 0)
  {
    v47 = v57;
  }

  else
  {
    v47 = v57 + 10;
  }

LABEL_89:
  v58 = *(a1 + 20);
  if (v58)
  {
    if (v58)
    {
      v59 = *(a1 + 432);
      if (v59 < 0)
      {
        v60 = 12;
      }

      else
      {
        v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v47 += v60;
    }

    if ((v58 & 2) != 0)
    {
      v102 = *(a1 + 436);
      if (v102 < 0)
      {
        v103 = 12;
      }

      else
      {
        v103 = ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v47 += v103;
    }

    v104 = v47 + 3;
    if ((v58 & 4) == 0)
    {
      v104 = v47;
    }

    if ((v58 & 8) != 0)
    {
      v104 += 3;
    }

    if ((v58 & 0x10) != 0)
    {
      v104 += 3;
    }

    if ((v58 & 0x20) != 0)
    {
      v104 += 3;
    }

    if ((v58 & 0x40) != 0)
    {
      v105 = *(a1 + 444);
      v106 = ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v105 >= 0)
      {
        v107 = v106;
      }

      else
      {
        v107 = 12;
      }

      v104 += v107;
    }

    if ((v58 & 0x80) != 0)
    {
      v47 = v104 + 10;
    }

    else
    {
      v47 = v104;
    }
  }

  if ((v58 & 0xFF00) != 0)
  {
    v108 = v47 + 10;
    if ((v58 & 0x100) == 0)
    {
      v108 = v47;
    }

    if ((v58 & 0x200) != 0)
    {
      v108 += 10;
    }

    if ((v58 & 0x400) != 0)
    {
      v108 += 3;
    }

    if ((v58 & 0x800) != 0)
    {
      v108 += 3;
    }

    if ((v58 & 0x1000) != 0)
    {
      v108 += 3;
    }

    if ((v58 & 0x2000) != 0)
    {
      v47 = v108 + 3;
    }

    else
    {
      v47 = v108;
    }

    if ((v58 & 0x4000) != 0)
    {
      v109 = *(a1 + 476);
      v110 = ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v109 >= 0)
      {
        v111 = v110;
      }

      else
      {
        v111 = 12;
      }

      v47 += v111;
    }

    if ((v58 & 0x8000) != 0)
    {
      v112 = *(a1 + 480);
      v113 = ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v112 >= 0)
      {
        v114 = v113;
      }

      else
      {
        v114 = 12;
      }

      v47 += v114;
    }
  }

  if ((v58 & 0xFF0000) != 0)
  {
    v115 = v47 + 3;
    if ((v58 & 0x10000) == 0)
    {
      v115 = v47;
    }

    if ((v58 & 0x20000) != 0)
    {
      v115 += 3;
    }

    if ((v58 & 0x40000) != 0)
    {
      v115 += 3;
    }

    if ((v58 & 0x80000) != 0)
    {
      v115 += 3;
    }

    if ((v58 & 0x100000) != 0)
    {
      v115 += ((9 * (__clz(*(a1 + 488) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v58 & 0x200000) != 0)
    {
      v115 += 3;
    }

    if ((v58 & 0x400000) != 0)
    {
      v115 += 3;
    }

    if ((v58 & 0x800000) != 0)
    {
      v47 = v115 + 3;
    }

    else
    {
      v47 = v115;
    }
  }

  if (HIBYTE(v58))
  {
    v116 = v47 + 3;
    if ((v58 & 0x1000000) == 0)
    {
      v116 = v47;
    }

    if ((v58 & 0x2000000) != 0)
    {
      v116 += 3;
    }

    if ((v58 & 0x4000000) != 0)
    {
      v116 += 3;
    }

    if ((v58 & 0x8000000) != 0)
    {
      v116 += 3;
    }

    if ((v58 & 0x10000000) != 0)
    {
      v47 = v116 + 3;
    }

    else
    {
      v47 = v116;
    }

    if ((v58 & 0x20000000) != 0)
    {
      v47 += ((9 * (__clz(*(a1 + 504) | 1) ^ 0x3F) + 73) >> 6) + 2;
      if ((v58 & 0x40000000) == 0)
      {
LABEL_216:
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_217;
        }

        goto LABEL_242;
      }
    }

    else if ((v58 & 0x40000000) == 0)
    {
      goto LABEL_216;
    }

    v127 = *(a1 + 512);
    v128 = ((9 * (__clz(v127 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v127 >= 0)
    {
      v129 = v128;
    }

    else
    {
      v129 = 12;
    }

    v47 += v129;
    if ((v58 & 0x80000000) != 0)
    {
LABEL_242:
      v130 = *(a1 + 516);
      v131 = ((9 * (__clz(v130 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v130 >= 0)
      {
        v132 = v131;
      }

      else
      {
        v132 = 12;
      }

      v47 += v132;
    }
  }

LABEL_217:
  v117 = *(a1 + 24);
  if ((v117 & 0x1F) != 0)
  {
    v118 = v47 + 3;
    if ((v117 & 1) == 0)
    {
      v118 = v47;
    }

    if ((v117 & 2) != 0)
    {
      v118 += 3;
    }

    if ((v117 & 4) != 0)
    {
      v47 = v118 + 3;
    }

    else
    {
      v47 = v118;
    }

    if ((v117 & 8) != 0)
    {
      v119 = *(a1 + 524);
      v120 = ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v119 >= 0)
      {
        v121 = v120;
      }

      else
      {
        v121 = 12;
      }

      v47 += v121;
    }

    if ((v117 & 0x10) != 0)
    {
      v122 = *(a1 + 528);
      v123 = ((9 * (__clz(v122 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v122 >= 0)
      {
        v124 = v123;
      }

      else
      {
        v124 = 11;
      }

      v47 += v124;
    }
  }

  v125 = *(a1 + 8);
  if (v125)
  {
    v135 = v125 & 0xFFFFFFFFFFFFFFFCLL;
    v136 = *((v125 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v136 < 0)
    {
      v136 = *(v135 + 16);
    }

    v47 += v136;
  }

  *(a1 + 28) = v47;
  return v47;
}

void sub_1542CDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = (a1 + 32);
    v6 = *(a1 + 32);
    sub_1959094((a1 + 32), v6 + v4);
    v7 = *(a1 + 40);
    *v5 += *(a2 + 32);
    memcpy((v7 + 8 * v6), *(a2 + 40), 8 * *(a2 + 32));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a1 + 48);
    sub_1959094((a1 + 48), v9 + v8);
    v10 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v10 + 8 * v9), *(a2 + 56), 8 * *(a2 + 48));
  }

  v11 = *(a2 + 64);
  if (v11)
  {
    v12 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v12 + v11);
    v13 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v13 + 4 * v12), *(a2 + 72), 4 * *(a2 + 64));
  }

  v14 = *(a2 + 88);
  if (v14)
  {
    v15 = *(a2 + 96);
    v16 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_1201B48((a1 + 80), v16, (v15 + 8), v14, **(a1 + 96) - *(a1 + 88));
    v17 = *(a1 + 88) + v14;
    *(a1 + 88) = v17;
    v18 = *(a1 + 96);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 112);
  if (v19)
  {
    v20 = *(a2 + 120);
    v21 = sub_19592E8(a1 + 104, *(a2 + 112));
    sub_1201B48((a1 + 104), v21, (v20 + 8), v19, **(a1 + 120) - *(a1 + 112));
    v22 = *(a1 + 112) + v19;
    *(a1 + 112) = v22;
    v23 = *(a1 + 120);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 136);
  if (v24)
  {
    v25 = *(a2 + 144);
    v26 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1201B48((a1 + 128), v26, (v25 + 8), v24, **(a1 + 144) - *(a1 + 136));
    v27 = *(a1 + 136) + v24;
    *(a1 + 136) = v27;
    v28 = *(a1 + 144);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 160);
  if (v29)
  {
    v30 = *(a2 + 168);
    v31 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_156D998((a1 + 152), v31, (v30 + 8), v29, **(a1 + 168) - *(a1 + 160));
    v32 = *(a1 + 160) + v29;
    *(a1 + 160) = v32;
    v33 = *(a1 + 168);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 184);
  if (v34)
  {
    v35 = *(a2 + 192);
    v36 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_12E5E34((a1 + 176), v36, (v35 + 8), v34, **(a1 + 192) - *(a1 + 184));
    v37 = *(a1 + 184) + v34;
    *(a1 + 184) = v37;
    v38 = *(a1 + 192);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 200);
  if (v39)
  {
    v40 = *(a1 + 200);
    sub_1958E5C((a1 + 200), v40 + v39);
    v41 = *(a1 + 208);
    *(a1 + 200) += *(a2 + 200);
    memcpy((v41 + 4 * v40), *(a2 + 208), 4 * *(a2 + 200));
  }

  v42 = *(a2 + 16);
  if (!v42)
  {
    goto LABEL_58;
  }

  if (v42)
  {
    v43 = *(a2 + 216);
    *(a1 + 16) |= 1u;
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    sub_194EA1C((a1 + 216), (v43 & 0xFFFFFFFFFFFFFFFELL), v45);
    if ((v42 & 2) == 0)
    {
LABEL_27:
      if ((v42 & 4) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }
  }

  else if ((v42 & 2) == 0)
  {
    goto LABEL_27;
  }

  v46 = *(a2 + 224);
  *(a1 + 16) |= 2u;
  v47 = *(a1 + 8);
  v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
  if (v47)
  {
    v48 = *v48;
  }

  sub_194EA1C((a1 + 224), (v46 & 0xFFFFFFFFFFFFFFFELL), v48);
  if ((v42 & 4) == 0)
  {
LABEL_28:
    if ((v42 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

LABEL_40:
  v49 = *(a2 + 232);
  *(a1 + 16) |= 4u;
  v50 = *(a1 + 8);
  v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
  if (v50)
  {
    v51 = *v51;
  }

  sub_194EA1C((a1 + 232), (v49 & 0xFFFFFFFFFFFFFFFELL), v51);
  if ((v42 & 8) == 0)
  {
LABEL_29:
    if ((v42 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

LABEL_43:
  v52 = *(a2 + 240);
  *(a1 + 16) |= 8u;
  v53 = *(a1 + 8);
  v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
  if (v53)
  {
    v54 = *v54;
  }

  sub_194EA1C((a1 + 240), (v52 & 0xFFFFFFFFFFFFFFFELL), v54);
  if ((v42 & 0x10) == 0)
  {
LABEL_30:
    if ((v42 & 0x20) == 0)
    {
      goto LABEL_31;
    }

LABEL_49:
    v58 = *(a2 + 256);
    *(a1 + 16) |= 0x20u;
    v59 = *(a1 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    sub_194EA1C((a1 + 256), (v58 & 0xFFFFFFFFFFFFFFFELL), v60);
    if ((v42 & 0x40) == 0)
    {
LABEL_32:
      if ((v42 & 0x80) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_55;
    }

    goto LABEL_52;
  }

LABEL_46:
  v55 = *(a2 + 248);
  *(a1 + 16) |= 0x10u;
  v56 = *(a1 + 8);
  v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
  if (v56)
  {
    v57 = *v57;
  }

  sub_194EA1C((a1 + 248), (v55 & 0xFFFFFFFFFFFFFFFELL), v57);
  if ((v42 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_31:
  if ((v42 & 0x40) == 0)
  {
    goto LABEL_32;
  }

LABEL_52:
  v61 = *(a2 + 264);
  *(a1 + 16) |= 0x40u;
  v62 = *(a1 + 8);
  v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
  if (v62)
  {
    v63 = *v63;
  }

  sub_194EA1C((a1 + 264), (v61 & 0xFFFFFFFFFFFFFFFELL), v63);
  if ((v42 & 0x80) != 0)
  {
LABEL_55:
    v64 = *(a2 + 272);
    *(a1 + 16) |= 0x80u;
    v65 = *(a1 + 8);
    v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
    if (v65)
    {
      v66 = *v66;
    }

    sub_194EA1C((a1 + 272), (v64 & 0xFFFFFFFFFFFFFFFELL), v66);
  }

LABEL_58:
  if ((v42 & 0xFF00) == 0)
  {
    goto LABEL_122;
  }

  if ((v42 & 0x100) != 0)
  {
    v67 = *(a2 + 280);
    *(a1 + 16) |= 0x100u;
    v68 = *(a1 + 8);
    v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
    if (v68)
    {
      v69 = *v69;
    }

    sub_194EA1C((a1 + 280), (v67 & 0xFFFFFFFFFFFFFFFELL), v69);
    if ((v42 & 0x200) == 0)
    {
LABEL_61:
      if ((v42 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_74;
    }
  }

  else if ((v42 & 0x200) == 0)
  {
    goto LABEL_61;
  }

  v70 = *(a2 + 288);
  *(a1 + 16) |= 0x200u;
  v71 = *(a1 + 8);
  v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
  if (v71)
  {
    v72 = *v72;
  }

  sub_194EA1C((a1 + 288), (v70 & 0xFFFFFFFFFFFFFFFELL), v72);
  if ((v42 & 0x400) == 0)
  {
LABEL_62:
    if ((v42 & 0x800) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_82;
  }

LABEL_74:
  *(a1 + 16) |= 0x400u;
  v73 = *(a1 + 296);
  if (!v73)
  {
    v74 = *(a1 + 8);
    v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
    if (v74)
    {
      v75 = *v75;
    }

    sub_16F5E18(v75);
    *(a1 + 296) = v73;
  }

  if (*(a2 + 296))
  {
    v76 = *(a2 + 296);
  }

  else
  {
    v76 = &off_277E918;
  }

  sub_16ED814(v73, v76);
  if ((v42 & 0x800) == 0)
  {
LABEL_63:
    if ((v42 & 0x1000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_90;
  }

LABEL_82:
  *(a1 + 16) |= 0x800u;
  v77 = *(a1 + 304);
  if (!v77)
  {
    v78 = *(a1 + 8);
    v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
    if (v78)
    {
      v79 = *v79;
    }

    v77 = sub_16F5BD8(v79);
    *(a1 + 304) = v77;
  }

  if (*(a2 + 304))
  {
    v80 = *(a2 + 304);
  }

  else
  {
    v80 = &off_277E738;
  }

  sub_16E4964(v77, v80);
  if ((v42 & 0x1000) == 0)
  {
LABEL_64:
    if ((v42 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_98;
  }

LABEL_90:
  *(a1 + 16) |= 0x1000u;
  v81 = *(a1 + 312);
  if (!v81)
  {
    v82 = *(a1 + 8);
    v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
    if (v82)
    {
      v83 = *v83;
    }

    sub_16F58FC(v83);
    *(a1 + 312) = v81;
  }

  if (*(a2 + 312))
  {
    v84 = *(a2 + 312);
  }

  else
  {
    v84 = &off_277E650;
  }

  sub_16E645C(v81, v84);
  if ((v42 & 0x2000) == 0)
  {
LABEL_65:
    if ((v42 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_106;
  }

LABEL_98:
  *(a1 + 16) |= 0x2000u;
  v85 = *(a1 + 320);
  if (!v85)
  {
    v86 = *(a1 + 8);
    v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
    if (v86)
    {
      v87 = *v87;
    }

    v85 = sub_16F5F38(v87);
    *(a1 + 320) = v85;
  }

  if (*(a2 + 320))
  {
    v88 = *(a2 + 320);
  }

  else
  {
    v88 = &off_277E980;
  }

  sub_121721C(v85, v88);
  if ((v42 & 0x4000) == 0)
  {
LABEL_66:
    if ((v42 & 0x8000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_114;
  }

LABEL_106:
  *(a1 + 16) |= 0x4000u;
  v89 = *(a1 + 328);
  if (!v89)
  {
    v90 = *(a1 + 8);
    v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
    if (v90)
    {
      v91 = *v91;
    }

    v89 = sub_1551B64(v91);
    *(a1 + 328) = v89;
  }

  if (*(a2 + 328))
  {
    v92 = *(a2 + 328);
  }

  else
  {
    v92 = &off_27768D0;
  }

  sub_153D704(v89, v92);
  if ((v42 & 0x8000) != 0)
  {
LABEL_114:
    *(a1 + 16) |= 0x8000u;
    v93 = *(a1 + 336);
    if (!v93)
    {
      v94 = *(a1 + 8);
      v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
      if (v94)
      {
        v95 = *v95;
      }

      v93 = sub_16F5828(v95);
      *(a1 + 336) = v93;
    }

    if (*(a2 + 336))
    {
      v96 = *(a2 + 336);
    }

    else
    {
      v96 = &off_277E5E8;
    }

    sub_16E527C(v93, v96);
  }

LABEL_122:
  if ((v42 & 0xFF0000) == 0)
  {
    goto LABEL_196;
  }

  if ((v42 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v97 = *(a1 + 344);
    if (!v97)
    {
      v98 = *(a1 + 8);
      v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
      if (v98)
      {
        v99 = *v99;
      }

      sub_155193C(v99);
      *(a1 + 344) = v97;
    }

    if (*(a2 + 344))
    {
      v100 = *(a2 + 344);
    }

    else
    {
      v100 = &off_2776700;
    }

    sub_14C9078(v97, v100);
    if ((v42 & 0x20000) == 0)
    {
LABEL_125:
      if ((v42 & 0x40000) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_148;
    }
  }

  else if ((v42 & 0x20000) == 0)
  {
    goto LABEL_125;
  }

  *(a1 + 16) |= 0x20000u;
  v101 = *(a1 + 352);
  if (!v101)
  {
    v102 = *(a1 + 8);
    v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
    if (v102)
    {
      v103 = *v103;
    }

    v101 = sub_155199C(v103);
    *(a1 + 352) = v101;
  }

  if (*(a2 + 352))
  {
    v104 = *(a2 + 352);
  }

  else
  {
    v104 = &off_2776830;
  }

  sub_153B624(v101, v104);
  if ((v42 & 0x40000) == 0)
  {
LABEL_126:
    if ((v42 & 0x80000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_156;
  }

LABEL_148:
  *(a1 + 16) |= 0x40000u;
  v105 = *(a1 + 360);
  if (!v105)
  {
    v106 = *(a1 + 8);
    v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
    if (v106)
    {
      v107 = *v107;
    }

    sub_1551C18(v107);
    *(a1 + 360) = v105;
  }

  if (*(a2 + 360))
  {
    v108 = *(a2 + 360);
  }

  else
  {
    v108 = &off_2776920;
  }

  sub_1362E50(v105, v108);
  if ((v42 & 0x80000) == 0)
  {
LABEL_127:
    if ((v42 & 0x100000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_164;
  }

LABEL_156:
  *(a1 + 16) |= 0x80000u;
  v109 = *(a1 + 368);
  if (!v109)
  {
    v110 = *(a1 + 8);
    v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
    if (v110)
    {
      v111 = *v111;
    }

    sub_16F5E18(v111);
    *(a1 + 368) = v109;
  }

  if (*(a2 + 368))
  {
    v112 = *(a2 + 368);
  }

  else
  {
    v112 = &off_277E918;
  }

  sub_16ED814(v109, v112);
  if ((v42 & 0x100000) == 0)
  {
LABEL_128:
    if ((v42 & 0x200000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_172;
  }

LABEL_164:
  *(a1 + 16) |= 0x100000u;
  v113 = *(a1 + 376);
  if (!v113)
  {
    v114 = *(a1 + 8);
    v115 = (v114 & 0xFFFFFFFFFFFFFFFCLL);
    if (v114)
    {
      v115 = *v115;
    }

    v113 = sub_1551CBC(v115);
    *(a1 + 376) = v113;
  }

  if (*(a2 + 376))
  {
    v116 = *(a2 + 376);
  }

  else
  {
    v116 = &off_2776960;
  }

  sub_153ECF0(v113, v116);
  if ((v42 & 0x200000) == 0)
  {
LABEL_129:
    if ((v42 & 0x400000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_180;
  }

LABEL_172:
  *(a1 + 16) |= 0x200000u;
  v117 = *(a1 + 384);
  if (!v117)
  {
    v118 = *(a1 + 8);
    v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
    if (v118)
    {
      v119 = *v119;
    }

    v117 = sub_16F5828(v119);
    *(a1 + 384) = v117;
  }

  if (*(a2 + 384))
  {
    v120 = *(a2 + 384);
  }

  else
  {
    v120 = &off_277E5E8;
  }

  sub_16E527C(v117, v120);
  if ((v42 & 0x400000) == 0)
  {
LABEL_130:
    if ((v42 & 0x800000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_188;
  }

LABEL_180:
  *(a1 + 16) |= 0x400000u;
  v121 = *(a1 + 392);
  if (!v121)
  {
    v122 = *(a1 + 8);
    v123 = (v122 & 0xFFFFFFFFFFFFFFFCLL);
    if (v122)
    {
      v123 = *v123;
    }

    v121 = sub_16F5828(v123);
    *(a1 + 392) = v121;
  }

  if (*(a2 + 392))
  {
    v124 = *(a2 + 392);
  }

  else
  {
    v124 = &off_277E5E8;
  }

  sub_16E527C(v121, v124);
  if ((v42 & 0x800000) != 0)
  {
LABEL_188:
    *(a1 + 16) |= 0x800000u;
    v125 = *(a1 + 400);
    if (!v125)
    {
      v126 = *(a1 + 8);
      v127 = (v126 & 0xFFFFFFFFFFFFFFFCLL);
      if (v126)
      {
        v127 = *v127;
      }

      v125 = sub_1552788(v127);
      *(a1 + 400) = v125;
    }

    if (*(a2 + 400))
    {
      v128 = *(a2 + 400);
    }

    else
    {
      v128 = &off_27770C8;
    }

    sub_14C99B8(v125, v128);
  }

LABEL_196:
  if (!HIBYTE(v42))
  {
    goto LABEL_206;
  }

  if ((v42 & 0x1000000) != 0)
  {
    *(a1 + 408) = *(a2 + 408);
    if ((v42 & 0x2000000) == 0)
    {
LABEL_199:
      if ((v42 & 0x4000000) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_292;
    }
  }

  else if ((v42 & 0x2000000) == 0)
  {
    goto LABEL_199;
  }

  *(a1 + 412) = *(a2 + 412);
  if ((v42 & 0x4000000) == 0)
  {
LABEL_200:
    if ((v42 & 0x8000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_293;
  }

LABEL_292:
  *(a1 + 416) = *(a2 + 416);
  if ((v42 & 0x8000000) == 0)
  {
LABEL_201:
    if ((v42 & 0x10000000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_294;
  }

LABEL_293:
  *(a1 + 420) = *(a2 + 420);
  if ((v42 & 0x10000000) == 0)
  {
LABEL_202:
    if ((v42 & 0x20000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_295;
  }

LABEL_294:
  *(a1 + 421) = *(a2 + 421);
  if ((v42 & 0x20000000) == 0)
  {
LABEL_203:
    if ((v42 & 0x40000000) == 0)
    {
      goto LABEL_204;
    }

LABEL_296:
    *(a1 + 423) = *(a2 + 423);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_205;
    }

LABEL_297:
    *(a1 + 424) = *(a2 + 424);
    goto LABEL_205;
  }

LABEL_295:
  *(a1 + 422) = *(a2 + 422);
  if ((v42 & 0x40000000) != 0)
  {
    goto LABEL_296;
  }

LABEL_204:
  if ((v42 & 0x80000000) != 0)
  {
    goto LABEL_297;
  }

LABEL_205:
  *(a1 + 16) |= v42;
LABEL_206:
  v129 = *(a2 + 20);
  if (!v129)
  {
    goto LABEL_217;
  }

  if (v129)
  {
    *(a1 + 432) = *(a2 + 432);
    if ((v129 & 2) == 0)
    {
LABEL_209:
      if ((v129 & 4) == 0)
      {
        goto LABEL_210;
      }

      goto LABEL_263;
    }
  }

  else if ((v129 & 2) == 0)
  {
    goto LABEL_209;
  }

  *(a1 + 436) = *(a2 + 436);
  if ((v129 & 4) == 0)
  {
LABEL_210:
    if ((v129 & 8) == 0)
    {
      goto LABEL_211;
    }

    goto LABEL_264;
  }

LABEL_263:
  *(a1 + 440) = *(a2 + 440);
  if ((v129 & 8) == 0)
  {
LABEL_211:
    if ((v129 & 0x10) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_265;
  }

LABEL_264:
  *(a1 + 441) = *(a2 + 441);
  if ((v129 & 0x10) == 0)
  {
LABEL_212:
    if ((v129 & 0x20) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_266;
  }

LABEL_265:
  *(a1 + 442) = *(a2 + 442);
  if ((v129 & 0x20) == 0)
  {
LABEL_213:
    if ((v129 & 0x40) == 0)
    {
      goto LABEL_214;
    }

LABEL_267:
    *(a1 + 444) = *(a2 + 444);
    if ((v129 & 0x80) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_215;
  }

LABEL_266:
  *(a1 + 443) = *(a2 + 443);
  if ((v129 & 0x40) != 0)
  {
    goto LABEL_267;
  }

LABEL_214:
  if ((v129 & 0x80) != 0)
  {
LABEL_215:
    *(a1 + 448) = *(a2 + 448);
  }

LABEL_216:
  *(a1 + 20) |= v129;
LABEL_217:
  if ((v129 & 0xFF00) == 0)
  {
    goto LABEL_228;
  }

  if ((v129 & 0x100) != 0)
  {
    *(a1 + 456) = *(a2 + 456);
    if ((v129 & 0x200) == 0)
    {
LABEL_220:
      if ((v129 & 0x400) == 0)
      {
        goto LABEL_221;
      }

      goto LABEL_271;
    }
  }

  else if ((v129 & 0x200) == 0)
  {
    goto LABEL_220;
  }

  *(a1 + 464) = *(a2 + 464);
  if ((v129 & 0x400) == 0)
  {
LABEL_221:
    if ((v129 & 0x800) == 0)
    {
      goto LABEL_222;
    }

    goto LABEL_272;
  }

LABEL_271:
  *(a1 + 472) = *(a2 + 472);
  if ((v129 & 0x800) == 0)
  {
LABEL_222:
    if ((v129 & 0x1000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_273;
  }

LABEL_272:
  *(a1 + 473) = *(a2 + 473);
  if ((v129 & 0x1000) == 0)
  {
LABEL_223:
    if ((v129 & 0x2000) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_274;
  }

LABEL_273:
  *(a1 + 474) = *(a2 + 474);
  if ((v129 & 0x2000) == 0)
  {
LABEL_224:
    if ((v129 & 0x4000) == 0)
    {
      goto LABEL_225;
    }

LABEL_275:
    *(a1 + 476) = *(a2 + 476);
    if ((v129 & 0x8000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_226;
  }

LABEL_274:
  *(a1 + 475) = *(a2 + 475);
  if ((v129 & 0x4000) != 0)
  {
    goto LABEL_275;
  }

LABEL_225:
  if ((v129 & 0x8000) != 0)
  {
LABEL_226:
    *(a1 + 480) = *(a2 + 480);
  }

LABEL_227:
  *(a1 + 20) |= v129;
LABEL_228:
  if ((v129 & 0xFF0000) == 0)
  {
    goto LABEL_239;
  }

  if ((v129 & 0x10000) != 0)
  {
    *(a1 + 484) = *(a2 + 484);
    if ((v129 & 0x20000) == 0)
    {
LABEL_231:
      if ((v129 & 0x40000) == 0)
      {
        goto LABEL_232;
      }

      goto LABEL_279;
    }
  }

  else if ((v129 & 0x20000) == 0)
  {
    goto LABEL_231;
  }

  *(a1 + 485) = *(a2 + 485);
  if ((v129 & 0x40000) == 0)
  {
LABEL_232:
    if ((v129 & 0x80000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_280;
  }

LABEL_279:
  *(a1 + 486) = *(a2 + 486);
  if ((v129 & 0x80000) == 0)
  {
LABEL_233:
    if ((v129 & 0x100000) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_281;
  }

LABEL_280:
  *(a1 + 487) = *(a2 + 487);
  if ((v129 & 0x100000) == 0)
  {
LABEL_234:
    if ((v129 & 0x200000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_282;
  }

LABEL_281:
  *(a1 + 488) = *(a2 + 488);
  if ((v129 & 0x200000) == 0)
  {
LABEL_235:
    if ((v129 & 0x400000) == 0)
    {
      goto LABEL_236;
    }

LABEL_283:
    *(a1 + 497) = *(a2 + 497);
    if ((v129 & 0x800000) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_237;
  }

LABEL_282:
  *(a1 + 496) = *(a2 + 496);
  if ((v129 & 0x400000) != 0)
  {
    goto LABEL_283;
  }

LABEL_236:
  if ((v129 & 0x800000) != 0)
  {
LABEL_237:
    *(a1 + 498) = *(a2 + 498);
  }

LABEL_238:
  *(a1 + 20) |= v129;
LABEL_239:
  if (!HIBYTE(v129))
  {
    goto LABEL_249;
  }

  if ((v129 & 0x1000000) != 0)
  {
    *(a1 + 499) = *(a2 + 499);
    if ((v129 & 0x2000000) == 0)
    {
LABEL_242:
      if ((v129 & 0x4000000) == 0)
      {
        goto LABEL_243;
      }

      goto LABEL_300;
    }
  }

  else if ((v129 & 0x2000000) == 0)
  {
    goto LABEL_242;
  }

  *(a1 + 500) = *(a2 + 500);
  if ((v129 & 0x4000000) == 0)
  {
LABEL_243:
    if ((v129 & 0x8000000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_301;
  }

LABEL_300:
  *(a1 + 501) = *(a2 + 501);
  if ((v129 & 0x8000000) == 0)
  {
LABEL_244:
    if ((v129 & 0x10000000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_302;
  }

LABEL_301:
  *(a1 + 502) = *(a2 + 502);
  if ((v129 & 0x10000000) == 0)
  {
LABEL_245:
    if ((v129 & 0x20000000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_303;
  }

LABEL_302:
  *(a1 + 503) = *(a2 + 503);
  if ((v129 & 0x20000000) == 0)
  {
LABEL_246:
    if ((v129 & 0x40000000) == 0)
    {
      goto LABEL_247;
    }

LABEL_304:
    *(a1 + 512) = *(a2 + 512);
    if ((v129 & 0x80000000) == 0)
    {
      goto LABEL_248;
    }

LABEL_305:
    *(a1 + 516) = *(a2 + 516);
    goto LABEL_248;
  }

LABEL_303:
  *(a1 + 504) = *(a2 + 504);
  if ((v129 & 0x40000000) != 0)
  {
    goto LABEL_304;
  }

LABEL_247:
  if ((v129 & 0x80000000) != 0)
  {
    goto LABEL_305;
  }

LABEL_248:
  *(a1 + 20) |= v129;
LABEL_249:
  v130 = *(a2 + 24);
  if ((v130 & 0x1F) == 0)
  {
    goto LABEL_257;
  }

  if (v130)
  {
    *(a1 + 520) = *(a2 + 520);
    if ((v130 & 2) == 0)
    {
LABEL_252:
      if ((v130 & 4) == 0)
      {
        goto LABEL_253;
      }

      goto LABEL_287;
    }
  }

  else if ((v130 & 2) == 0)
  {
    goto LABEL_252;
  }

  *(a1 + 521) = *(a2 + 521);
  if ((v130 & 4) == 0)
  {
LABEL_253:
    if ((v130 & 8) == 0)
    {
      goto LABEL_254;
    }

LABEL_288:
    *(a1 + 524) = *(a2 + 524);
    if ((v130 & 0x10) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_255;
  }

LABEL_287:
  *(a1 + 522) = *(a2 + 522);
  if ((v130 & 8) != 0)
  {
    goto LABEL_288;
  }

LABEL_254:
  if ((v130 & 0x10) != 0)
  {
LABEL_255:
    *(a1 + 528) = *(a2 + 528);
  }

LABEL_256:
  *(a1 + 24) |= v130;
LABEL_257:
  v131 = *(a2 + 8);
  if (v131)
  {

    sub_1957EF4((a1 + 8), (v131 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1543A14(uint64_t a1)
{
  v2 = *(a1 + 160);
  while (v2 >= 1)
  {
    v3 = *(*(a1 + 168) + 8 * v2--);
    if ((~*(v3 + 16) & 7) != 0)
    {
      return 0;
    }
  }

  v4 = *(a1 + 184);
  while (v4 >= 1)
  {
    v5 = v4 - 1;
    v6 = sub_16EF064(*(*(a1 + 192) + 8 * v4));
    v4 = v5;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 16);
  if ((v8 & 0x400) != 0)
  {
    result = sub_16ED98C(*(a1 + 296));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x800) != 0)
  {
    result = sub_16E4B4C(*(a1 + 304));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x1000) != 0)
  {
    result = sub_16E6614(*(a1 + 312));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x2000) != 0)
  {
    result = sub_16EE510(*(a1 + 320));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x4000) != 0)
  {
    v9 = *(a1 + 328);
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    while (v10 >= 1)
    {
      result = 0;
      v12 = *(v11 + 8 * v10--);
      if ((*(v12 + 16) & 1) == 0)
      {
        return result;
      }
    }
  }

  if ((v8 & 0x8000) != 0)
  {
    result = sub_16E5370(*(a1 + 336));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x10000) != 0)
  {
    result = sub_14C9D50(*(a1 + 344));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x20000) != 0)
  {
    result = sub_195228C(*(a1 + 352) + 16);
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x40000) != 0 && (~*(*(a1 + 360) + 16) & 7) != 0)
  {
    return 0;
  }

  if ((v8 & 0x80000) != 0)
  {
    result = sub_16ED98C(*(a1 + 368));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x100000) != 0)
  {
    v13 = *(a1 + 376);
    if ((*(v13 + 16) & 4) != 0)
    {
      result = sub_153EE5C(v13 + 24);
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
      if ((v8 & 0x200000) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_48;
    }

    return 0;
  }

  if ((v8 & 0x200000) != 0)
  {
LABEL_39:
    result = sub_16E5370(*(a1 + 384));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

LABEL_48:
  if ((v8 & 0x400000) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 392));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1543BDC(uint64_t a1)
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

void sub_1543C7C(uint64_t a1)
{
  sub_1543BDC(a1);

  operator delete();
}

uint64_t sub_1543CB4(uint64_t a1)
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

uint64_t sub_1543CFC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

  if (v7 == 17)
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

char *sub_1543E88(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 17;
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

uint64_t sub_1543F88(uint64_t a1)
{
  v1 = *(a1 + 16);
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
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    return v2 + 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1543FE4(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_1543F88(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 10;
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

uint64_t sub_15440A8(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1544150(uint64_t a1)
{
  sub_15440A8(a1);

  operator delete();
}

uint64_t sub_1544188(uint64_t a1)
{
  *(a1 + 24) = 0;
  if (*(a1 + 16))
  {
    v1 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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
  *(result + 40) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15441D4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      break;
    }

    if (v11 != 2)
    {
      if (v11 != 1 || v8 != 10)
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

      v27 = sub_194DB04((a1 + 40), v26);
      v16 = sub_1958890(v27, *v30, a3);
LABEL_40:
      *v30 = v16;
      if (!v16)
      {
        goto LABEL_54;
      }

      goto LABEL_45;
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
LABEL_44:
      *v30 = v18;
      *(a1 + 48) = v17;
      goto LABEL_45;
    }

    v17 = (v7[1] << 7) + v17 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v18 = (v7 + 2);
      goto LABEL_44;
    }

    v28 = sub_19587DC(v7, v17);
    *v30 = v28;
    *(a1 + 48) = v29;
    if (!v28)
    {
      goto LABEL_54;
    }

LABEL_45:
    if (sub_195ADC0(a3, v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 24)
  {
    v19 = (v7 - 1);
    while (1)
    {
      *v30 = v19 + 1;
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

      *v30 = v19;
      v23 = *(a1 + 24);
      if (v23 == *(a1 + 28))
      {
        v24 = v23 + 1;
        sub_1959094((a1 + 24), v23 + 1);
        *(*(a1 + 32) + 8 * v23) = v20;
        v19 = *v30;
      }

      else
      {
        *(*(a1 + 32) + 8 * v23) = v20;
        v24 = v23 + 1;
      }

      *(a1 + 24) = v24;
      if (!v19)
      {
        goto LABEL_54;
      }

      if (*a3 <= v19 || *v19 != 24)
      {
        goto LABEL_45;
      }
    }
  }

  if (v8 == 26)
  {
    v16 = sub_1958938((a1 + 24), v7, a3);
    goto LABEL_40;
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
      v7 = *v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_154448C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 48);
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

  v12 = *(a1 + 24);
  if (v12 < 1)
  {
    v15 = v7;
  }

  else
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v14 = *(*(a1 + 32) + 8 * i);
      *v7 = 24;
      v7[1] = v14;
      if (v14 > 0x7F)
      {
        v7[1] = v14 | 0x80;
        v16 = v14 >> 7;
        v7[2] = v14 >> 7;
        v15 = v7 + 3;
        if (v14 >= 0x4000)
        {
          LOBYTE(v17) = v7[2];
          do
          {
            *(v15 - 1) = v17 | 0x80;
            v17 = v16 >> 7;
            *v15++ = v16 >> 7;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
        }
      }

      else
      {
        v15 = v7 + 2;
      }

      v7 = v15;
    }
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

uint64_t sub_1544688(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  result = sub_1959F14((a1 + 24)) + v2 + *(a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    v7 = *(a1 + 48);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
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

void sub_1544768(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a2 + 40);
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_194EA1C((a1 + 40), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    }

    if ((v8 & 2) != 0)
    {
      *(a1 + 48) = *(a2 + 48);
    }

    *(a1 + 16) |= v8;
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1544880(uint64_t a1)
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

void sub_1544938(uint64_t a1)
{
  sub_1544880(a1);

  operator delete();
}

uint64_t sub_1544970(uint64_t a1)
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

uint64_t sub_15449EC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1544B6C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1544C54(uint64_t a1)
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

uint64_t sub_1544D40(uint64_t a1)
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

  if (a1 != &off_2776BE8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15458AC(v6);
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

void sub_1544E0C(uint64_t a1)
{
  sub_1544D40(a1);

  operator delete();
}

uint64_t sub_1544E44(uint64_t result)
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
      result = sub_1544EE8(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1544EE8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1544E44(v4);
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

uint64_t sub_1544F98(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_38;
      }

      v5 |= 8u;
      v21 = (v7 + 1);
      v20 = *v7;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (v7 + 2);
LABEL_30:
        *v33 = v21;
        *(a1 + 48) = v20;
        goto LABEL_46;
      }

      v29 = sub_19587DC(v7, v20);
      *v33 = v29;
      *(a1 + 48) = v30;
      if (!v29)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v11 != 4)
      {
        if (v11 == 5 && v8 == 42)
        {
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

            v12 = sub_1552000(v14);
            *(a1 + 32) = v12;
            v7 = *v33;
          }

          v15 = sub_221DCAC(a3, v12, v7);
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      if (v8 != 32)
      {
        goto LABEL_38;
      }

      v5 |= 0x10u;
      v24 = (v7 + 1);
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_35:
        *v33 = v24;
        *(a1 + 56) = v23 != 0;
        goto LABEL_46;
      }

      v31 = sub_19587DC(v7, v23);
      *v33 = v31;
      *(a1 + 56) = v32 != 0;
      if (!v31)
      {
        goto LABEL_55;
      }
    }

LABEL_46:
    if (sub_195ADC0(a3, v33, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v5 |= 4u;
      *(a1 + 40) = *v7;
      *v33 = v7 + 8;
      goto LABEL_46;
    }
  }

  else if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = sub_194DB04((a1 + 24), v18);
    v15 = sub_1958890(v19, *v33, a3);
LABEL_45:
    *v33 = v15;
    if (!v15)
    {
      goto LABEL_55;
    }

    goto LABEL_46;
  }

LABEL_38:
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

    v15 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_1545260(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 40);
  *v4 = 9;
  *(v4 + 1) = v8;
  v4 += 9;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 8) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 48);
  *v4 = 24;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_16:
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 56);
    *v7 = 32;
    v7[1] = v13;
    v7 += 2;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 32);
    *v7 = 42;
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

    v7 = sub_1545B68(v14, v16, a3);
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

unint64_t sub_1545488(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_15;
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

  v8 = sub_1545CCC(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  v9 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v9 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v9 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  result = v9 + ((v2 >> 3) & 2);
LABEL_15:
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15455A4(uint64_t a1, uint64_t a2)
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

        goto LABEL_24;
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

      v9 = sub_1552000(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2776C28;
    }

    sub_15456D4(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
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
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_8;
    }

LABEL_25:
    *(a1 + 48) = *(a2 + 48);
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

void sub_15456D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156DA14((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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