double sub_15DEEEC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26F54E0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_15DEF24(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F54E0;
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
    sub_15EF5C8((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_15DF0B4(uint64_t a1)
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
  if (a1 != &off_2779880)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15E0864(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15EF1FC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DF178(uint64_t a1)
{
  sub_15DF0B4(a1);

  operator delete();
}

uint64_t sub_15DF1B0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15DFDA8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 48);
    v7 = *(v6 + 8);
    result = v6 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v7)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
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

char *sub_15DF25C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v36, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v36 + 1;
    v8 = *v36;
    if (*v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v36 + 2;
      }
    }

    v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
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
          v21 = v20 + 1;
          v36 = v20 + 1;
          v22 = *(a1 + 40);
          if (v22 && (v23 = *(a1 + 32), v23 < *v22))
          {
            *(a1 + 32) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_15E120C(*(a1 + 24));
            v24 = sub_19593CC(a1 + 24, v25);
            v21 = v36;
          }

          v20 = sub_22277D4(a3, v24, v21);
          v36 = v20;
          if (!v20)
          {
            goto LABEL_58;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_49;
          }
        }
      }

      goto LABEL_41;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_41;
    }

    v5 |= 2u;
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
      v36 = v13;
      *(a1 + 56) = v14;
      goto LABEL_49;
    }

    v32 = sub_1958770(v7, v14);
    v36 = v32;
    *(a1 + 56) = v33;
    if (!v32)
    {
      goto LABEL_58;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 4u;
    v26 = v7 + 1;
    v27 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    v28 = *v26;
    v27 = v27 + (v28 << 7) - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_40:
      v36 = v26;
      *(a1 + 60) = v27;
      goto LABEL_49;
    }

    v34 = sub_1958770(v7, v27);
    v36 = v34;
    *(a1 + 60) = v35;
    if (!v34)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 48);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_15E12B4(v18);
      *(a1 + 48) = v16;
      v7 = v36;
    }

    v19 = sub_22273E4(a3, v16, v7);
LABEL_48:
    v36 = v19;
    if (!v19)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

LABEL_41:
  if (v8)
  {
    v29 = (v8 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v7 = v36;
    }

    v19 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_15DF534(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_15E01D4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 56);
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

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 60);
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

  if (v11)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v20 = *(a1 + 48);
    *v16 = 42;
    v21 = *(v20 + 20);
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v16 + 1);
    }

    else
    {
      v22 = v16 + 2;
    }

    v16 = sub_15E0A78(v20, v22, a3);
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v16;
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

  if ((*a3 - v16) >= v26)
  {
    v28 = v26;
    memcpy(v16, v27, v26);
    v16 += v28;
    return v16;
  }

  return sub_1957130(a3, v27, v26, v16);
}

uint64_t sub_15DF7E0(uint64_t a1)
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
      v7 = sub_15E0430(v6);
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
      v11 = sub_15E0BA0(*(a1 + 48));
      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v12 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_15DF920(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_15EF5C8((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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
      v11 = *(result + 48);
      if (!v11)
      {
        v12 = *(result + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_15E12B4(v13);
        *(result + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_2779900;
      }

      sub_12B9D50(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(result + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(result + 60) = *(a2 + 60);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(result + 56) = *(a2 + 56);
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

    sub_1957EF4((result + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15DFA64(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_15DF1B0(result);

    sub_15DF920(result, a2);
  }
}

uint64_t sub_15DFAC8(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F5560;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_15DFB0C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F5560;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1958E5C((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 4 * *(a2 + 24));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    sub_1957EF4(v4, (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 40) = &qword_278E990;
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v8 = *(a2 + 16);
  }

  if ((v8 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_15DFC9C(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_27798C0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15DD81C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DFD70(uint64_t a1)
{
  sub_15DFC9C(a1);

  operator delete();
}

uint64_t sub_15DFDA8(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_15DD8C8(*(result + 48));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 48) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_15DFE44(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  if (sub_195ADC0(a3, v38, a3[11].u32[1]))
  {
    return *v38;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = (*v38 + 1);
    v9 = **v38;
    if (**v38 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v38, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v38 + 2);
      }
    }

    *v38 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 > 2)
    {
      break;
    }

    if (v13 == 1)
    {
      if (v9 == 10)
      {
        *(a1 + 16) |= 2u;
        v28 = *(a1 + 48);
        if (!v28)
        {
          v29 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v29 = *v29;
          }

          v28 = sub_15E104C(v29);
          *(a1 + 48) = v28;
          v8 = *v38;
        }

        v30 = sub_2227744(a3, v28, v8);
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    if (v13 != 2 || v9 != 16)
    {
      goto LABEL_60;
    }

    v15 = v8 + 1;
    v16 = *v8;
    if ((v16 & 0x8000000000000000) != 0)
    {
      v17 = *v15;
      v18 = (v17 << 7) + v16;
      v16 = (v18 - 128);
      if (v17 < 0)
      {
        *v38 = sub_19587DC(v8, (v18 - 128));
        if (!*v38)
        {
          return 0;
        }

        v16 = v34;
        goto LABEL_19;
      }

      v15 = v8 + 2;
    }

    *v38 = v15;
LABEL_19:
    if (v16 > 0xF || v16 == 8)
    {
      if (*v7)
      {
        v35 = ((*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v35 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(2, v16, v35);
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 56) = v16;
    }

LABEL_68:
    if (sub_195ADC0(a3, v38, a3[11].u32[1]))
    {
      return *v38;
    }
  }

  if (v13 != 3)
  {
    if (v13 != 4)
    {
      goto LABEL_60;
    }

    if (v9 != 32)
    {
      if (v9 == 34)
      {
        *&v39 = a1 + 24;
        *(&v39 + 1) = sub_15D86A0;
        v40 = a1 + 8;
        v41 = 4;
        v30 = sub_1216588(a3, v8, &v39, v5);
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    v20 = (v8 - 1);
    while (2)
    {
      *v38 = v20 + 1;
      v21 = *(v20 + 1);
      v22 = (v20 + 2);
      if (v21 < 0)
      {
        v23 = *v22;
        v24 = (v23 << 7) + v21;
        LODWORD(v21) = v24 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v20 + 3);
          goto LABEL_31;
        }

        *v38 = sub_19587DC(v20 + 1, (v24 - 128));
        if (!*v38)
        {
          return 0;
        }

        LODWORD(v21) = v27;
      }

      else
      {
LABEL_31:
        *v38 = v22;
      }

      if (v21 > 2)
      {
        sub_12E8500();
      }

      else
      {
        v25 = *(a1 + 24);
        if (v25 == *(a1 + 28))
        {
          v26 = v25 + 1;
          sub_1958E5C((a1 + 24), v25 + 1);
          *(*(a1 + 32) + 4 * v25) = v21;
        }

        else
        {
          *(*(a1 + 32) + 4 * v25) = v21;
          v26 = v25 + 1;
        }

        *(a1 + 24) = v26;
      }

      v20 = *v38;
      if (*a3 <= *v38 || **v38 != 32)
      {
        goto LABEL_68;
      }

      continue;
    }
  }

  if (v9 == 26)
  {
    *(a1 + 16) |= 1u;
    v31 = *(a1 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    v33 = sub_194DB04((a1 + 40), v32);
    v30 = sub_1958890(v33, *v38, a3);
LABEL_67:
    *v38 = v30;
    if (!v30)
    {
      return 0;
    }

    goto LABEL_68;
  }

LABEL_60:
  if (v9)
  {
    v36 = (v9 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    if (*v7)
    {
      v37 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v8 = *v38;
    }

    v30 = sub_1952690(v9, v37, v8, a3);
    goto LABEL_67;
  }

  if (!v8)
  {
    return 0;
  }

  a3[10].i32[0] = v9 - 1;
  return *v38;
}

char *sub_15E01D4(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *a2 = 10;
    v7 = *(v6 + 20);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_15DDAF8(v6, v8, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 56);
    *a2 = 16;
    a2[1] = v10;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      a2[2] = v10 >> 7;
      v9 = a2 + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = a2[2];
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
      v9 = a2 + 2;
    }
  }

  else
  {
    v9 = a2;
  }

  if (v5)
  {
    v9 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  v14 = *(a1 + 24);
  if (v14 < 1)
  {
    v17 = v9;
  }

  else
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v16 = *(*(a1 + 32) + 4 * i);
      *v9 = 32;
      v9[1] = v16;
      if (v16 > 0x7F)
      {
        v9[1] = v16 | 0x80;
        v18 = v16 >> 7;
        v9[2] = v16 >> 7;
        v17 = v9 + 3;
        if (v16 >= 0x4000)
        {
          LOBYTE(v19) = v9[2];
          do
          {
            *(v17 - 1) = v19 | 0x80;
            v19 = v18 >> 7;
            *v17++ = v18 >> 7;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
        }
      }

      else
      {
        v17 = v9 + 2;
      }

      v9 = v17;
    }
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v17;
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

  if ((*a3 - v17) >= v24)
  {
    v26 = v24;
    memcpy(v17, v25, v24);
    v17 += v26;
    return v17;
  }

  return sub_1957130(a3, v25, v24, v17);
}

uint64_t sub_15E0430(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4 + v2;
  v8 = *(a1 + 16);
  if ((v8 & 7) == 0)
  {
    goto LABEL_22;
  }

  if (v8)
  {
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v7 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_15DDCA8(*(a1 + 48));
  v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v13 = *(a1 + 56);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 += v14;
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

    v7 += v18;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_15E059C(uint64_t a1, uint64_t a2)
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
  if ((v8 & 7) != 0)
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
LABEL_8:
          *(a1 + 16) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        *(a1 + 56) = *(a2 + 56);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_15E104C(v15);
      *(a1 + 48) = v13;
    }

    if (*(a2 + 48))
    {
      v16 = *(a2 + 48);
    }

    else
    {
      v16 = &off_2779808;
    }

    sub_128F8FC(v13, v16);
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15E06F0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_15DFDA8(a1);

    sub_15E059C(a1, a2);
  }
}

__n128 sub_15E0744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v6 = *(a2 + 40);
  *(a2 + 40) = *(a1 + 40);
  *(a1 + 40) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  LODWORD(v7) = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  return result;
}

uint64_t sub_15E07B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26F55E0;
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

void sub_15E0834(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15E0864(void *a1)
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

void sub_15E08D8(void *a1)
{
  sub_15E0864(a1);

  operator delete();
}

char *sub_15E0910(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_15E0A78(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_15E0BA0(uint64_t a1)
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

uint64_t sub_15E0C24(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F5060;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 60) = 1;
  return result;
}

void *sub_15E0CD4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F50E0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_15E0D70(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F5160;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_15E0DEC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F51E0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 73) = 0u;
  return result;
}

uint64_t sub_15E0E70(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F5260;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_15E0F18(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F52E0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = a1;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

double sub_15E0FCC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F5360;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_15E104C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F53E0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_15E10C4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F5460;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  return result;
}

uint64_t sub_15E1170(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F54E0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

uint64_t sub_15E120C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F5560;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_15E12B4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F55E0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_15E1330(int a1)
{
  result = 1;
  if (a1 <= 899)
  {
    if (a1 > 299)
    {
      if (a1 <= 599)
      {
        if ((a1 - 400) >= 6 && a1 != 300 && a1 != 500)
        {
          return 0;
        }
      }

      else if ((a1 - 700) >= 0x12 && a1 != 600 && a1 != 800)
      {
        return 0;
      }
    }

    else if ((a1 - 100) >= 0x12 && (a1 - 200) >= 0xA && (a1 > 0xC || ((1 << a1) & 0x10FF) == 0))
    {
      return 0;
    }
  }

  else if (a1 <= 1099)
  {
    if ((a1 - 1000) >= 0x16 && (a1 - 900) >= 7)
    {
      return 0;
    }
  }

  else if (a1 > 1399)
  {
    if (a1 > 1599)
    {
      if ((a1 - 1600) >= 5 && (a1 - 1700) >= 2 && a1 != 1800)
      {
        return 0;
      }
    }

    else if ((a1 - 1500) >= 8 && (a1 - 1400) >= 3)
    {
      return 0;
    }
  }

  else if ((a1 - 1100) >= 0xF && (a1 - 1300) >= 8 && a1 != 1200)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_15E1490(uint64_t a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_27D09A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27D09A0))
  {
    byte_27D0998 = sub_1956BB4(&qword_27D08C0, "\b", 9, qword_27D09A8);
    __cxa_guard_release(&qword_27D09A0);
  }

  v2 = sub_1956B30(&qword_27D08C0, "\b", 9uLL, v1);
  if (v2 != -1)
  {
    return &qword_27D09A8[3 * v2];
  }

  if ((atomic_load_explicit(byte_278E9A8, memory_order_acquire) & 1) == 0)
  {
    sub_1956C4C();
  }

  return &qword_278E990;
}

uint64_t sub_15E1578(uint64_t a1)
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

void sub_15E1644(uint64_t a1)
{
  sub_15E1578(a1);

  operator delete();
}

uint64_t sub_15E167C(uint64_t a1)
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

uint64_t sub_15E1734(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 6)
    {
      if (v7 == 50)
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

    else if (v10 == 3 && v7 == 26)
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

char *sub_15E18F0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 3, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
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
    v4 = sub_128AEEC(a3, 6, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
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

uint64_t sub_15E1A04(uint64_t a1)
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

uint64_t sub_15E1B34(uint64_t a1)
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
  if (a1 != &off_2779950)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15E1578(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15EF654((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15E1BF8(uint64_t a1)
{
  sub_15E1B34(a1);

  operator delete();
}

uint64_t sub_15E1C30(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15E167C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_15E167C(*(v1 + 48));
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

char *sub_15E1CC4(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 == 24)
      {
        v20 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v29 = sub_19587DC(v6, v19);
          if (!v29)
          {
            return 0;
          }
        }

        else
        {
          v20 = v6 + 2;
LABEL_32:
          v29 = v20;
        }

        if (v19 > 4)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 56) = v19;
        }

        continue;
      }

      goto LABEL_13;
    }

    if (v10 != 2)
    {
      if (v10 == 1 && v7 == 10)
      {
        v22 = v6 - 1;
        while (1)
        {
          v23 = v22 + 1;
          v29 = v22 + 1;
          v24 = *(a1 + 40);
          if (v24 && (v25 = *(a1 + 32), v25 < *v24))
          {
            *(a1 + 32) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = sub_15ED498(*(a1 + 24));
            v26 = sub_19593CC(a1 + 24, v27);
            v23 = v29;
          }

          v22 = sub_2227864(a3, v26, v23);
          v29 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
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
      goto LABEL_26;
    }

    if (v7 != 18)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v16 = *(a1 + 48);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_15ED498(v18);
      *(a1 + 48) = v16;
      v6 = v29;
    }

    v15 = sub_2227864(a3, v16, v6);
LABEL_26:
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

char *sub_15E1F24(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_15E18F0(v8, v10, a3);
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
    v13 = *(v12 + 20);
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, __dst + 1);
    }

    else
    {
      v14 = __dst + 2;
    }

    __dst = sub_15E18F0(v12, v14, a3);
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v16 = *(a1 + 56);
    *__dst = 24;
    __dst[1] = v16;
    if (v16 > 0x7F)
    {
      __dst[1] = v16 | 0x80;
      v17 = v16 >> 7;
      __dst[2] = v16 >> 7;
      v15 = __dst + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v15 - 1) = __dst | 0x80;
          __dst = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = __dst + 2;
    }
  }

  else
  {
    v15 = __dst;
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

uint64_t sub_15E2148(uint64_t a1)
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
      v7 = sub_15E1A04(v6);
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
      v9 = sub_15E1A04(*(a1 + 48));
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

void sub_15E2260(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF8E8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v10 = sub_15ED498(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_2779920;
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

void *sub_15E23A4(void *a1)
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

void sub_15E2418(void *a1)
{
  sub_15E23A4(a1);

  operator delete();
}

uint64_t sub_15E2450(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
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

char *sub_15E2474(uint64_t a1, char *a2, int32x2_t *a3)
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
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 29)
        {
          v17 = *v7;
          v13 = v7 + 4;
          v5 |= 4u;
          *(a1 + 32) = v17;
          goto LABEL_23;
        }
      }

      else if (v11 == 4 && v8 == 37)
      {
        v15 = *v7;
        v13 = v7 + 4;
        v5 |= 8u;
        *(a1 + 36) = v15;
        goto LABEL_23;
      }
    }

    else if (v11 == 1)
    {
      if (v8 == 13)
      {
        v16 = *v7;
        v13 = v7 + 4;
        v5 |= 1u;
        *(a1 + 24) = v16;
        goto LABEL_23;
      }
    }

    else if (v11 == 2 && v8 == 21)
    {
      v14 = *v7;
      v13 = v7 + 4;
      v5 |= 2u;
      *(a1 + 28) = v14;
LABEL_23:
      v21 = v13;
      goto LABEL_24;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v20 = sub_11F1920((a1 + 8));
      v7 = v21;
    }

    v21 = sub_1952690(v8, v20, v7, a3);
    if (!v21)
    {
      goto LABEL_37;
    }

LABEL_24:
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

LABEL_37:
  v21 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v21;
}

char *sub_15E262C(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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

  v8 = *(a1 + 28);
  *v4 = 21;
  *(v4 + 1) = v8;
  v4 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 32);
  *v4 = 29;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 36);
    *v4 = 37;
    *(v4 + 1) = v10;
    v4 += 5;
  }

LABEL_18:
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

uint64_t sub_15E27C4(uint64_t a1)
{
  v1 = *(a1 + 16);
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

  if ((v1 & 0xF) != 0)
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

uint64_t sub_15E2848(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  result = sub_15E1C30(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_15E2450(*(v1 + 40));
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

void sub_15E28F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        goto LABEL_23;
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

      sub_15ED520(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2779950;
    }

    sub_15E2260(v9, v12);
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
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_23:
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

      v13 = sub_15ED5C4(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2779990;
    }

    sub_13F8718(v13, v16);
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

uint64_t sub_15E2A58(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_27799B8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15E1B34(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_15E23A4(v7);
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

void sub_15E2B44(uint64_t a1)
{
  sub_15E2A58(a1);

  operator delete();
}

uint64_t sub_15E2B7C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_36;
        }

        *(a1 + 16) |= 2u;
        v23 = *(a1 + 32);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          sub_15ED520(v25);
          v23 = v26;
          *(a1 + 32) = v26;
          v7 = *v32;
        }

        v19 = sub_2227A14(a3, v23, v7);
      }

      else
      {
        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_36;
        }

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

          v16 = sub_15ED5C4(v18);
          *(a1 + 40) = v16;
          v7 = *v32;
        }

        v19 = sub_2227AA4(a3, v16, v7);
      }

LABEL_43:
      *v32 = v19;
      if (!v19)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_36;
    }

    v5 |= 8u;
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
      *v32 = v13;
      *(a1 + 48) = v14;
      goto LABEL_44;
    }

    v30 = sub_1958770(v7, v14);
    *v32 = v30;
    *(a1 + 48) = v31;
    if (!v30)
    {
      goto LABEL_51;
    }

LABEL_44:
    if (sub_195ADC0(a3, v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v19 = sub_1958890(v22, *v32, a3);
    goto LABEL_43;
  }

LABEL_36:
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

    v19 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_43;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_51:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_15E2E00(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 48);
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
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 32);
    *v7 = 34;
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

    v7 = sub_15E1F24(v12, v14, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 42;
    v16 = *(v15 + 20);
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v7 + 1);
    }

    else
    {
      v17 = v7 + 2;
    }

    v7 = sub_15E262C(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v21)
  {
    v23 = v21;
    memcpy(v7, v22, v21);
    v7 += v23;
    return v7;
  }

  return sub_1957130(a3, v22, v21, v7);
}

uint64_t sub_15E3020(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_15E2148(*(a1 + 32));
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = sub_15E27C4(*(a1 + 40));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v11 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_15E317C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15EF6D8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15E31FC(void *a1)
{
  sub_15E317C(a1);

  operator delete();
}

uint64_t sub_15E3234(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15E3A3C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 56) = 0;
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

char *sub_15E32C8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_13;
      }

      v5 |= 1u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_35:
        v32 = v23;
        *(a1 + 48) = v22;
        goto LABEL_40;
      }

      v30 = sub_19587DC(v7, v22);
      v32 = v30;
      *(a1 + 48) = v31;
      if (!v30)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_39:
      v32 = v25;
      *(a1 + 56) = v26;
      goto LABEL_40;
    }

    v28 = sub_1958770(v7, v26);
    v32 = v28;
    *(a1 + 56) = v29;
    if (!v28)
    {
      goto LABEL_49;
    }

LABEL_40:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v16 = v7 - 1;
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
        v21 = sub_15ED76C(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = v32;
      }

      v16 = sub_2227BC4(a3, v20, v17);
      v32 = v16;
      if (!v16)
      {
        goto LABEL_49;
      }

      if (*a3 <= v16 || *v16 != 26)
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

char *sub_15E3540(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
    *__dst = 16;
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

      v6 = sub_15E3CBC(v13, v15, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 48);
    *v6 = 32;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v16 - 1) = v6 | 0x80;
          v6 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v6 + 2;
    }
  }

  else
  {
    v16 = v6;
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

uint64_t sub_15E378C(uint64_t a1)
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
      v7 = sub_15E3EA4(v6);
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
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_15E388C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15EF964((v3 + 24), v6, (v5 + 8), v4, **(v3 + 40) - *(v3 + 32));
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
      *(v3 + 56) = *(a2 + 56);
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

void *sub_15E3990(void *a1)
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

void sub_15E3A04(void *a1)
{
  sub_15E3990(a1);

  operator delete();
}

uint64_t sub_15E3A3C(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 29) = 0;
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

char *sub_15E3A64(uint64_t a1, char *a2, int32x2_t *a3)
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
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v31 = v20;
      *(a1 + 36) = v19 != 0;
      goto LABEL_35;
    }

    v29 = sub_19587DC(v7, v19);
    v31 = v29;
    *(a1 + 36) = v30 != 0;
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

    v5 |= 1u;
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
      v31 = v17;
      *(a1 + 24) = v16;
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v16);
    v31 = v25;
    *(a1 + 24) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 2u;
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
      *(a1 + 32) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
    v31 = v27;
    *(a1 + 32) = v28;
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

char *sub_15E3CBC(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 36);
    *v11 = 24;
    v11[1] = v15;
    v11 += 2;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v19)
  {
    v21 = v19;
    memcpy(v11, v20, v19);
    v11 += v21;
    return v11;
  }

  return sub_1957130(a3, v20, v19, v11);
}

unint64_t sub_15E3EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_9;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v3 = v2 + ((v1 >> 1) & 2);
LABEL_9:
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

std::string *sub_15E3F4C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result[1].__r_.__value_.__s.__data_[12] = *(a2 + 36);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15E3FC8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26F5960;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = &qword_278E990;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 132) = 0u;
  return a1;
}

void sub_15E4054(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_15E4084(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2779A30)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_15E1B34(v6);
      operator delete();
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      sub_15E1B34(v7);
      operator delete();
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      sub_15E317C(v8);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15E41A0(uint64_t a1)
{
  sub_15E4084(a1);

  operator delete();
}

uint64_t sub_15E41D8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  v3 = *(a1 + 40);
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

LABEL_19:
    result = sub_15E1C30(*(a1 + 72));
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v6 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  result = sub_15E1C30(*(a1 + 80));
  if ((v3 & 8) != 0)
  {
LABEL_6:
    result = sub_15E3234(*(a1 + 88));
  }

LABEL_7:
  if ((v3 & 0xF0) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  if ((v3 & 0x7F00) != 0)
  {
    *(a1 + 132) = 0u;
    *(a1 + 116) = 0u;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_15E42C4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v86 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v86, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v86 + 1);
      v8 = **v86;
      if (**v86 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(*v86, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = (*v86 + 2);
        }
      }

      *v86 = v7;
      switch(v8 >> 3)
      {
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_127;
          }

          v5 |= 0x10u;
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
            *v86 = v12;
            *(a1 + 96) = v11;
            goto LABEL_137;
          }

          v75 = sub_19587DC(v7, v11);
          *v86 = v75;
          *(a1 + 96) = v76;
          if (!v75)
          {
            goto LABEL_144;
          }

          goto LABEL_137;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_127;
          }

          v5 |= 0x20u;
          v47 = v7 + 1;
          LODWORD(v46) = *v7;
          if ((v46 & 0x80) == 0)
          {
            goto LABEL_75;
          }

          v48 = *v47;
          v46 = v46 + (v48 << 7) - 128;
          if (v48 < 0)
          {
            v77 = sub_19587DC(v7, v46);
            *v86 = v77;
            *(a1 + 104) = v78;
            if (!v77)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v47 = v7 + 2;
LABEL_75:
            *v86 = v47;
            *(a1 + 104) = v46;
          }

          goto LABEL_137;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_127;
          }

          v5 |= 0x40u;
          v33 = v7 + 1;
          LODWORD(v32) = *v7;
          if ((v32 & 0x80) == 0)
          {
            goto LABEL_53;
          }

          v34 = *v33;
          v32 = v32 + (v34 << 7) - 128;
          if (v34 < 0)
          {
            v71 = sub_19587DC(v7, v32);
            *v86 = v71;
            *(a1 + 108) = v72;
            if (!v71)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v33 = v7 + 2;
LABEL_53:
            *v86 = v33;
            *(a1 + 108) = v32;
          }

          goto LABEL_137;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_127;
          }

          *(a1 + 40) |= 2u;
          v38 = *(a1 + 72);
          if (v38)
          {
            goto LABEL_70;
          }

          v39 = *(a1 + 8);
          v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
          if (v39)
          {
            v40 = *v40;
          }

          sub_15ED520(v40);
          v38 = v41;
          *(a1 + 72) = v41;
          goto LABEL_69;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_127;
          }

          v24 = v7 + 1;
          v23 = *v7;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_36;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            *v86 = sub_19587DC(v7, v23);
            if (!*v86)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v24 = v7 + 2;
LABEL_36:
            *v86 = v24;
          }

          if (v23 > 3)
          {
            sub_12E84C8();
          }

          else
          {
            *(a1 + 40) |= 0x80u;
            *(a1 + 112) = v23;
          }

          goto LABEL_137;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_127;
          }

          v50 = v7 + 1;
          v49 = *v7;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_80;
          }

          v51 = *v50;
          v49 = (v51 << 7) + v49 - 128;
          if (v51 < 0)
          {
            *v86 = sub_19587DC(v7, v49);
            if (!*v86)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v50 = v7 + 2;
LABEL_80:
            *v86 = v50;
          }

          if (v49 > 3)
          {
            sub_13ED178();
          }

          else
          {
            *(a1 + 40) |= 0x100u;
            *(a1 + 116) = v49;
          }

          goto LABEL_137;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_127;
          }

          v5 |= 0x200u;
          v57 = v7 + 1;
          v56 = *v7;
          if ((v56 & 0x8000000000000000) == 0)
          {
            goto LABEL_93;
          }

          v58 = *v57;
          v56 = (v58 << 7) + v56 - 128;
          if (v58 < 0)
          {
            v79 = sub_19587DC(v7, v56);
            *v86 = v79;
            *(a1 + 120) = v80 != 0;
            if (!v79)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v57 = v7 + 2;
LABEL_93:
            *v86 = v57;
            *(a1 + 120) = v56 != 0;
          }

          goto LABEL_137;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_127;
          }

          *(a1 + 40) |= 4u;
          v38 = *(a1 + 80);
          if (v38)
          {
            goto LABEL_70;
          }

          v42 = *(a1 + 8);
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
          if (v42)
          {
            v43 = *v43;
          }

          sub_15ED520(v43);
          v38 = v44;
          *(a1 + 80) = v44;
LABEL_69:
          v7 = *v86;
LABEL_70:
          v45 = sub_2227A14(a3, v38, v7);
          goto LABEL_136;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_127;
          }

          *(a1 + 40) |= 1u;
          v62 = *(a1 + 8);
          v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
          if (v62)
          {
            v63 = *v63;
          }

          v64 = sub_194DB04((a1 + 64), v63);
          v45 = sub_1958890(v64, *v86, a3);
          goto LABEL_136;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_127;
          }

          v5 |= 0x400u;
          v30 = v7 + 1;
          LODWORD(v29) = *v7;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v31 = *v30;
          v29 = v29 + (v31 << 7) - 128;
          if (v31 < 0)
          {
            v69 = sub_19587DC(v7, v29);
            *v86 = v69;
            *(a1 + 124) = v70;
            if (!v69)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v30 = v7 + 2;
LABEL_48:
            *v86 = v30;
            *(a1 + 124) = v29;
          }

          goto LABEL_137;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_127;
          }

          v5 |= 0x800u;
          v60 = v7 + 1;
          LODWORD(v59) = *v7;
          if ((v59 & 0x80) == 0)
          {
            goto LABEL_98;
          }

          v61 = *v60;
          v59 = v59 + (v61 << 7) - 128;
          if (v61 < 0)
          {
            v81 = sub_19587DC(v7, v59);
            *v86 = v81;
            *(a1 + 128) = v82;
            if (!v81)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v60 = v7 + 2;
LABEL_98:
            *v86 = v60;
            *(a1 + 128) = v59;
          }

          goto LABEL_137;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_127;
          }

          v5 |= 0x1000u;
          v20 = v7 + 1;
          v21 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          v22 = *v20;
          v21 = v21 + (v22 << 7) - 128;
          if (v22 < 0)
          {
            v65 = sub_1958770(v7, v21);
            *v86 = v65;
            *(a1 + 132) = v66;
            if (!v65)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v20 = v7 + 2;
LABEL_31:
            *v86 = v20;
            *(a1 + 132) = v21;
          }

          goto LABEL_137;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_127;
          }

          v5 |= 0x4000u;
          v26 = v7 + 1;
          v27 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          v28 = *v26;
          v27 = v27 + (v28 << 7) - 128;
          if (v28 < 0)
          {
            v67 = sub_1958770(v7, v27);
            *v86 = v67;
            *(a1 + 144) = v68;
            if (!v67)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v26 = v7 + 2;
LABEL_43:
            *v86 = v26;
            *(a1 + 144) = v27;
          }

          goto LABEL_137;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_127;
          }

          *(a1 + 40) |= 8u;
          v52 = *(a1 + 88);
          if (!v52)
          {
            v53 = *(a1 + 8);
            v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
            if (v53)
            {
              v54 = *v54;
            }

            sub_15ED6C8(v54);
            v52 = v55;
            *(a1 + 88) = v55;
            v7 = *v86;
          }

          v45 = sub_2227C54(a3, v52, v7);
          goto LABEL_136;
        case 0x10u:
          if (v8 == 128)
          {
            v14 = (v7 - 2);
            while (1)
            {
              *v86 = v14 + 2;
              v15 = *(v14 + 2);
              if (*(v14 + 2) < 0)
              {
                v16 = v15 + (*(v14 + 3) << 7);
                v15 = v16 - 128;
                if (*(v14 + 3) < 0)
                {
                  v14 = sub_1958770(v14 + 2, v16 - 128);
                  v15 = v17;
                }

                else
                {
                  v14 += 4;
                }
              }

              else
              {
                v14 += 3;
              }

              *v86 = v14;
              v18 = *(a1 + 48);
              if (v18 == *(a1 + 52))
              {
                v19 = v18 + 1;
                sub_1958E5C((a1 + 48), v18 + 1);
                *(*(a1 + 56) + 4 * v18) = v15;
                v14 = *v86;
              }

              else
              {
                *(*(a1 + 56) + 4 * v18) = v15;
                v19 = v18 + 1;
              }

              *(a1 + 48) = v19;
              if (!v14)
              {
                goto LABEL_144;
              }

              if (*a3 <= v14 || *v14 != 384)
              {
                goto LABEL_137;
              }
            }
          }

          if (v8 == 130)
          {
            v45 = sub_1958918((a1 + 48), v7, a3);
          }

          else
          {
LABEL_127:
            if (v8)
            {
              v83 = (v8 & 7) == 4;
            }

            else
            {
              v83 = 1;
            }

            if (v83)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_144:
              *v86 = 0;
              goto LABEL_2;
            }

            if (v8 - 7600 > 0x18F)
            {
              v84 = *(a1 + 8);
              if (v84)
              {
                v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL) + 8;
              }

              else
              {
                v85 = sub_11F1920((a1 + 8));
                v7 = *v86;
              }

              v45 = sub_1952690(v8, v85, v7, a3);
            }

            else
            {
              v45 = sub_19525AC((a1 + 16), v8, v7, &off_2779A30, (a1 + 8), a3);
            }
          }

LABEL_136:
          *v86 = v45;
          if (!v45)
          {
            goto LABEL_144;
          }

LABEL_137:
          if (sub_195ADC0(a3, v86, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 0x11u:
          if (v8 != 136)
          {
            goto LABEL_127;
          }

          v5 |= 0x2000u;
          v36 = v7 + 1;
          v35 = *v7;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_58;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if (v37 < 0)
          {
            v73 = sub_19587DC(v7, v35);
            *v86 = v73;
            *(a1 + 136) = v74;
            if (!v73)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v36 = v7 + 2;
LABEL_58:
            *v86 = v36;
            *(a1 + 136) = v35;
          }

          goto LABEL_137;
        default:
          goto LABEL_127;
      }
    }
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return *v86;
}

char *sub_15E4AB8(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 96);
    *a2 = 16;
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 104);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 108);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 72);
    *v15 = 42;
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

    v15 = sub_15E1F24(v19, v21, a3);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v23 = *(a1 + 112);
    *v15 = 48;
    v15[1] = v23;
    if (v23 > 0x7F)
    {
      v15[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v15[2] = v23 >> 7;
      v22 = v15 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v22 - 1) = v15 | 0x80;
          v15 = (v24 >> 7);
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v15 + 2;
    }
  }

  else
  {
    v22 = v15;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 116);
    *v22 = 56;
    v22[1] = v27;
    if (v27 > 0x7F)
    {
      v22[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[2] = v27 >> 7;
      v26 = v22 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v22) = v22[2];
        do
        {
          *(v26 - 1) = v22 | 0x80;
          v22 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 120);
    *v26 = 64;
    v26[1] = v31;
    v26 += 2;
    if ((v5 & 4) == 0)
    {
LABEL_55:
      if ((v5 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_67:
      v26 = sub_128AEEC(a3, 10, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v26);
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_68;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_55;
  }

  if (*a3 <= v26)
  {
    v26 = sub_225EB68(a3, v26);
  }

  v32 = *(a1 + 80);
  *v26 = 74;
  v33 = *(v32 + 20);
  v26[1] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, v26 + 1);
  }

  else
  {
    v34 = v26 + 2;
  }

  v26 = sub_15E1F24(v32, v34, a3);
  if (v5)
  {
    goto LABEL_67;
  }

LABEL_56:
  if ((v5 & 0x400) == 0)
  {
LABEL_57:
    v30 = v26;
    goto LABEL_75;
  }

LABEL_68:
  if (*a3 <= v26)
  {
    v26 = sub_225EB68(a3, v26);
  }

  v35 = *(a1 + 124);
  *v26 = 88;
  v26[1] = v35;
  if (v35 > 0x7F)
  {
    v26[1] = v35 | 0x80;
    v36 = v35 >> 7;
    v26[2] = v35 >> 7;
    v30 = v26 + 3;
    if (v35 >= 0x4000)
    {
      LOBYTE(v37) = v26[2];
      do
      {
        *(v30 - 1) = v37 | 0x80;
        v37 = v36 >> 7;
        *v30++ = v36 >> 7;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
    }
  }

  else
  {
    v30 = v26 + 2;
  }

LABEL_75:
  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v40 = *(a1 + 128);
    *v30 = 96;
    v30[1] = v40;
    if (v40 > 0x7F)
    {
      v30[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v30[2] = v40 >> 7;
      v39 = v30 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v42) = v30[2];
        do
        {
          *(v39 - 1) = v42 | 0x80;
          v42 = v41 >> 7;
          *v39++ = v41 >> 7;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v39 = v30 + 2;
    }
  }

  else
  {
    v39 = v30;
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v45 = *(a1 + 132);
    *v39 = 104;
    v39[1] = v45;
    if (v45 > 0x7F)
    {
      v39[1] = v45 | 0x80;
      v46 = v45 >> 7;
      v39[2] = v45 >> 7;
      v44 = v39 + 3;
      if (v45 >= 0x4000)
      {
        LOBYTE(v39) = v39[2];
        do
        {
          *(v44 - 1) = v39 | 0x80;
          LODWORD(v39) = v46 >> 7;
          *v44++ = v46 >> 7;
          v47 = v46 >> 14;
          v46 >>= 7;
        }

        while (v47);
      }
    }

    else
    {
      v44 = v39 + 2;
    }
  }

  else
  {
    v44 = v39;
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v44)
    {
      v44 = sub_225EB68(a3, v44);
    }

    v49 = *(a1 + 144);
    *v44 = 112;
    v44[1] = v49;
    if (v49 > 0x7F)
    {
      v44[1] = v49 | 0x80;
      v50 = v49 >> 7;
      v44[2] = v49 >> 7;
      v48 = v44 + 3;
      if (v49 >= 0x4000)
      {
        LOBYTE(v44) = v44[2];
        do
        {
          *(v48 - 1) = v44 | 0x80;
          LODWORD(v44) = v50 >> 7;
          *v48++ = v50 >> 7;
          v51 = v50 >> 14;
          v50 >>= 7;
        }

        while (v51);
      }
    }

    else
    {
      v48 = v44 + 2;
    }
  }

  else
  {
    v48 = v44;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v52 = *(a1 + 88);
    *v48 = 122;
    v53 = *(v52 + 20);
    v48[1] = v53;
    if (v53 > 0x7F)
    {
      v54 = sub_19575D0(v53, v48 + 1);
    }

    else
    {
      v54 = v48 + 2;
    }

    v48 = sub_15E3540(v52, v54, a3);
  }

  v55 = *(a1 + 48);
  if (v55 < 1)
  {
    v58 = v48;
  }

  else
  {
    for (i = 0; i != v55; ++i)
    {
      if (*a3 <= v48)
      {
        v48 = sub_225EB68(a3, v48);
      }

      v57 = *(*(a1 + 56) + 4 * i);
      *v48 = 384;
      v48[2] = v57;
      if (v57 > 0x7F)
      {
        v48[2] = v57 | 0x80;
        v59 = v57 >> 7;
        v48[3] = v57 >> 7;
        v58 = v48 + 4;
        if (v57 >= 0x4000)
        {
          LOBYTE(v48) = v48[3];
          do
          {
            *(v58 - 1) = v48 | 0x80;
            LODWORD(v48) = v59 >> 7;
            *v58++ = v59 >> 7;
            v60 = v59 >> 14;
            v59 >>= 7;
          }

          while (v60);
        }
      }

      else
      {
        v58 = v48 + 3;
      }

      v48 = v58;
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v58)
    {
      v58 = sub_225EB68(a3, v58);
    }

    v62 = *(a1 + 136);
    *v58 = 392;
    v58[2] = v62;
    if (v62 > 0x7F)
    {
      v58[2] = v62 | 0x80;
      v63 = v62 >> 7;
      v58[3] = v62 >> 7;
      v61 = v58 + 4;
      if (v62 >= 0x4000)
      {
        LOBYTE(v58) = v58[3];
        do
        {
          *(v61 - 1) = v58 | 0x80;
          v58 = (v63 >> 7);
          *v61++ = v63 >> 7;
          v64 = v63 >> 14;
          v63 >>= 7;
        }

        while (v64);
      }
    }

    else
    {
      v61 = v58 + 3;
    }
  }

  else
  {
    v61 = v58;
  }

  if (*(a1 + 26))
  {
    v61 = sub_1953428(a1 + 16, 950, 1000, v61, a3);
  }

  v65 = *(a1 + 8);
  if ((v65 & 1) == 0)
  {
    return v61;
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

  if ((*a3 - v61) >= v68)
  {
    v70 = v68;
    memcpy(v61, v69, v68);
    v61 += v70;
    return v61;
  }

  return sub_1957130(a3, v69, v68, v61);
}

uint64_t sub_15E5308(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959E5C((a1 + 48)) + v2 + 2 * *(a1 + 48);
  v4 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_30;
  }

  if (v4)
  {
    v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v8 = sub_15E2148(*(a1 + 72));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = sub_15E2148(*(a1 + 80));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = sub_15E378C(*(a1 + 88));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v3 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_18:
  v11 = *(a1 + 104);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v12;
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_22:
  v13 = *(a1 + 108);
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
LABEL_26:
    v15 = *(a1 + 112);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v16;
  }

LABEL_30:
  if ((v4 & 0x7F00) == 0)
  {
    goto LABEL_42;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a1 + 116);
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

  v3 += (v4 >> 8) & 2;
  if ((v4 & 0x400) != 0)
  {
    v21 = *(a1 + 124);
    v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v21 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 11;
    }

    v3 += v23;
    if ((v4 & 0x800) == 0)
    {
LABEL_38:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_52;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_38;
  }

  v24 = *(a1 + 128);
  v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v24 >= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 11;
  }

  v3 += v26;
  if ((v4 & 0x1000) == 0)
  {
LABEL_39:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_53;
  }

LABEL_52:
  v3 += ((9 * (__clz(*(a1 + 132) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x2000) == 0)
  {
LABEL_40:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_53:
  v3 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 2;
  if ((v4 & 0x4000) != 0)
  {
LABEL_41:
    v3 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_42:
  v19 = *(a1 + 8);
  if (v19)
  {
    v27 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v3 += v28;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_15E5674(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = (a1 + 48);
    v6 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v6 + v4);
    v7 = *(a1 + 56);
    *v5 += *(a2 + 48);
    memcpy((v7 + 4 * v6), *(a2 + 56), 4 * *(a2 + 48));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    if (v8)
    {
      v9 = *(a2 + 64);
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_194EA1C((a1 + 64), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    }

    if ((v8 & 2) != 0)
    {
      *(a1 + 40) |= 2u;
      v13 = *(a1 + 72);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        sub_15ED520(v15);
        *(a1 + 72) = v13;
      }

      if (*(a2 + 72))
      {
        v16 = *(a2 + 72);
      }

      else
      {
        v16 = &off_2779950;
      }

      sub_15E2260(v13, v16);
      if ((v8 & 4) == 0)
      {
LABEL_10:
        if ((v8 & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_47;
      }
    }

    else if ((v8 & 4) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 40) |= 4u;
    v17 = *(a1 + 80);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      sub_15ED520(v19);
      *(a1 + 80) = v17;
    }

    if (*(a2 + 80))
    {
      v20 = *(a2 + 80);
    }

    else
    {
      v20 = &off_2779950;
    }

    sub_15E2260(v17, v20);
    if ((v8 & 8) == 0)
    {
LABEL_11:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_55;
    }

LABEL_47:
    *(a1 + 40) |= 8u;
    v21 = *(a1 + 88);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_15ED6C8(v23);
      *(a1 + 88) = v21;
    }

    if (*(a2 + 88))
    {
      v24 = *(a2 + 88);
    }

    else
    {
      v24 = &off_27799F0;
    }

    sub_15E388C(v21, v24);
    if ((v8 & 0x10) == 0)
    {
LABEL_12:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 96) = *(a2 + 96);
    if ((v8 & 0x20) == 0)
    {
LABEL_13:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 104) = *(a2 + 104);
    if ((v8 & 0x40) == 0)
    {
LABEL_14:
      if ((v8 & 0x80) == 0)
      {
LABEL_16:
        *(a1 + 40) |= v8;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_16;
    }

LABEL_57:
    *(a1 + 108) = *(a2 + 108);
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v8 & 0x7F00) == 0)
  {
    goto LABEL_27;
  }

  if ((v8 & 0x100) != 0)
  {
    *(a1 + 116) = *(a2 + 116);
    if ((v8 & 0x200) == 0)
    {
LABEL_20:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_61;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  *(a1 + 120) = *(a2 + 120);
  if ((v8 & 0x400) == 0)
  {
LABEL_21:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a1 + 124) = *(a2 + 124);
  if ((v8 & 0x800) == 0)
  {
LABEL_22:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a1 + 128) = *(a2 + 128);
  if ((v8 & 0x1000) == 0)
  {
LABEL_23:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

LABEL_64:
    *(a1 + 136) = *(a2 + 136);
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_63:
  *(a1 + 132) = *(a2 + 132);
  if ((v8 & 0x2000) != 0)
  {
    goto LABEL_64;
  }

LABEL_24:
  if ((v8 & 0x4000) != 0)
  {
LABEL_25:
    *(a1 + 144) = *(a2 + 144);
  }

LABEL_26:
  *(a1 + 40) |= v8;
LABEL_27:
  sub_225EA0C(a1 + 16, a2 + 16);
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15E5934(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26F59E0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void sub_15E599C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15E59CC(void *a1)
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

void sub_15E5A48(void *a1)
{
  sub_15E59CC(a1);

  operator delete();
}

unsigned __int8 *sub_15E5A80(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if ((*(a1 + 40) & 7) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
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

char *sub_15E5AE8(uint64_t a1, char *a2, int32x2_t *a3)
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

    v5 |= 4u;
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
      v32 = v18;
      *(a1 + 56) = v19;
      goto LABEL_37;
    }

    v30 = sub_1958770(v7, v19);
    v32 = v30;
    *(a1 + 56) = v31;
    if (!v30)
    {
      goto LABEL_48;
    }

LABEL_37:
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

    v5 |= 2u;
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
      v32 = v15;
      *(a1 + 52) = v16;
      goto LABEL_37;
    }

    v26 = sub_1958770(v7, v16);
    v32 = v26;
    *(a1 + 52) = v27;
    if (!v26)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v21 = v7 + 1;
    v22 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v23 = *v21;
    v22 = v22 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_32:
      v32 = v21;
      *(a1 + 48) = v22;
      goto LABEL_37;
    }

    v28 = sub_1958770(v7, v22);
    v32 = v28;
    *(a1 + 48) = v29;
    if (!v28)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
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
    if (v8 - 7600 > 0x18F)
    {
      v24 = *(a1 + 8);
      if (v24)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v25 = sub_11F1920((a1 + 8));
        v7 = v32;
      }

      v14 = sub_1952690(v8, v25, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_2779AC8, (a1 + 8), a3);
    }

    v32 = v14;
    if (!v14)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v32 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v32;
}

char *sub_15E5D6C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
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

  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 950, 1000, v15, a3);
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

uint64_t sub_15E5FC8(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    result += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) != 0)
    {
LABEL_5:
      result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_6:
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

  *(a1 + 44) = result;
  return result;
}

void sub_15E60A8(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(a1 + 12) = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 10) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 14) = *(a2 + 56);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 13) = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  sub_225EA0C((a1 + 2), a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4(a1 + 1, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_15E6168(void *a1)
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

  sub_15E61F4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_15E61F4(void *result)
{
  if (result != &off_2779B08)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      sub_16E4E08(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_15E1B34(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_15E1B34(v4);
      operator delete();
    }

    v5 = v1[9];
    if (v5)
    {
      sub_15E2A58(v5);
      operator delete();
    }

    v6 = v1[10];
    if (v6)
    {
      sub_15E23A4(v6);
      operator delete();
    }

    v7 = v1[11];
    if (v7)
    {
      sub_153BF18(v7);
      operator delete();
    }

    result = v1[12];
    if (result)
    {
      sub_15E59CC(result);

      operator delete();
    }
  }

  return result;
}

void sub_15E6318(void *a1)
{
  sub_15E6168(a1);

  operator delete();
}

uint64_t sub_15E6350(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    result = sub_16E4E44(*(a1 + 48));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_15E1C30(*(a1 + 56));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = sub_15E1C30(*(a1 + 64));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    result = sub_15E2450(*(a1 + 80));
    if ((v3 & 0x20) == 0)
    {
LABEL_8:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = sub_15E2848(*(a1 + 72));
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  result = sub_144E31C(*(a1 + 88));
  if ((v3 & 0x40) != 0)
  {
LABEL_9:
    result = sub_15E5A80(*(a1 + 96));
  }

LABEL_10:
  *(a1 + 104) = 0;
  if ((v3 & 0xFF00) != 0)
  {
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 112) = 0u;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 152) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_15E643C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v86 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v86, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v86 + 1);
    v8 = **v86;
    if (**v86 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v86, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v86 + 2);
      }
    }

    *v86 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_109;
        }

        v5 |= 0x80u;
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
          *v86 = v12;
          *(a1 + 104) = v11;
          goto LABEL_117;
        }

        v82 = sub_19587DC(v7, v11);
        *v86 = v82;
        *(a1 + 104) = v83;
        if (v82)
        {
          goto LABEL_117;
        }

        goto LABEL_139;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 1u;
        v51 = *(a1 + 48);
        if (!v51)
        {
          v52 = *(a1 + 8);
          v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v53 = *v53;
          }

          v51 = sub_16F5828(v53);
          *(a1 + 48) = v51;
          v7 = *v86;
        }

        v20 = sub_21F4D60(a3, v51, v7);
        goto LABEL_116;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_109;
        }

        v5 |= 0x100u;
        v39 = v7 + 1;
        v38 = *v7;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_56;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v78 = sub_19587DC(v7, v38);
          *v86 = v78;
          *(a1 + 112) = v79;
          if (!v78)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v39 = v7 + 2;
LABEL_56:
          *v86 = v39;
          *(a1 + 112) = v38;
        }

        goto LABEL_117;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_109;
        }

        v5 |= 0x200u;
        v45 = v7 + 1;
        v44 = *v7;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_68;
        }

        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if (v46 < 0)
        {
          v80 = sub_19587DC(v7, v44);
          *v86 = v80;
          *(a1 + 120) = v81;
          if (!v80)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v45 = v7 + 2;
LABEL_68:
          *v86 = v45;
          *(a1 + 120) = v44;
        }

        goto LABEL_117;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_109;
        }

        v5 |= 0x400u;
        v30 = v7 + 1;
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_40;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          v74 = sub_19587DC(v7, v29);
          *v86 = v74;
          *(a1 + 128) = v75;
          if (!v74)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v30 = v7 + 2;
LABEL_40:
          *v86 = v30;
          *(a1 + 128) = v29;
        }

        goto LABEL_117;
      case 6u:
        if (v8 != 53)
        {
          goto LABEL_109;
        }

        v58 = *v7;
        v57 = v7 + 4;
        v5 |= 0x800u;
        *(a1 + 136) = v58;
        goto LABEL_95;
      case 7u:
        if (v8 != 61)
        {
          goto LABEL_109;
        }

        v62 = *v7;
        v57 = v7 + 4;
        v5 |= 0x1000u;
        *(a1 + 140) = v62;
LABEL_95:
        *v86 = v57;
        goto LABEL_117;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 2u;
        v47 = *(a1 + 56);
        if (v47)
        {
          goto LABEL_108;
        }

        v48 = *(a1 + 8);
        v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v49 = *v49;
        }

        sub_15ED520(v49);
        v47 = v50;
        *(a1 + 56) = v50;
        goto LABEL_107;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 4u;
        v47 = *(a1 + 64);
        if (v47)
        {
          goto LABEL_108;
        }

        v66 = *(a1 + 8);
        v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
        if (v66)
        {
          v67 = *v67;
        }

        sub_15ED520(v67);
        v47 = v68;
        *(a1 + 64) = v68;
LABEL_107:
        v7 = *v86;
LABEL_108:
        v20 = sub_2227A14(a3, v47, v7);
        goto LABEL_116;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 8u;
        v35 = *(a1 + 72);
        if (!v35)
        {
          v36 = *(a1 + 8);
          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v37 = *v37;
          }

          v35 = sub_15ED640(v37);
          *(a1 + 72) = v35;
          v7 = *v86;
        }

        v20 = sub_2227984(a3, v35, v7);
        goto LABEL_116;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 0x10u;
        v63 = *(a1 + 80);
        if (!v63)
        {
          v64 = *(a1 + 8);
          v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v64)
          {
            v65 = *v65;
          }

          v63 = sub_15ED5C4(v65);
          *(a1 + 80) = v63;
          v7 = *v86;
        }

        v20 = sub_2227AA4(a3, v63, v7);
        goto LABEL_116;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_109;
        }

        v21 = v7 - 1;
        while (1)
        {
          v22 = (v21 + 1);
          *v86 = v21 + 1;
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
            v22 = *v86;
          }

          v21 = sub_1958890(v25, v22, a3);
          *v86 = v21;
          if (!v21)
          {
            goto LABEL_139;
          }

          if (*a3 <= v21 || *v21 != 98)
          {
            goto LABEL_117;
          }
        }

      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_109;
        }

        v5 |= 0x2000u;
        v33 = v7 + 1;
        v32 = *v7;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v76 = sub_19587DC(v7, v32);
          *v86 = v76;
          *(a1 + 144) = v77;
          if (!v76)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v33 = v7 + 2;
LABEL_45:
          *v86 = v33;
          *(a1 + 144) = v32;
        }

        goto LABEL_117;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_109;
        }

        v5 |= 0x4000u;
        v60 = v7 + 1;
        v59 = *v7;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_92;
        }

        v61 = *v60;
        v59 = (v61 << 7) + v59 - 128;
        if (v61 < 0)
        {
          v84 = sub_19587DC(v7, v59);
          *v86 = v84;
          *(a1 + 152) = v85 != 0;
          if (!v84)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v60 = v7 + 2;
LABEL_92:
          *v86 = v60;
          *(a1 + 152) = v59 != 0;
        }

        goto LABEL_117;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 0x20u;
        v17 = *(a1 + 88);
        if (!v17)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v17 = sub_1551A70(v19);
          *(a1 + 88) = v17;
          v7 = *v86;
        }

        v20 = sub_22030E0(a3, v17, v7);
        goto LABEL_116;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_109;
        }

        v42 = v7 + 1;
        v41 = *v7;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_61;
        }

        v43 = *v42;
        v41 = (v43 << 7) + v41 - 128;
        if (v43 < 0)
        {
          *v86 = sub_19587DC(v7, v41);
          if (!*v86)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v42 = v7 + 2;
LABEL_61:
          *v86 = v42;
        }

        if (v41 > 4)
        {
          sub_144E0FC();
        }

        else
        {
          *(a1 + 16) |= 0x8000u;
          *(a1 + 156) = v41;
        }

        goto LABEL_117;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_109;
        }

        v5 |= 0x10000u;
        v14 = v7 + 1;
        v15 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v14;
        v15 = v15 + (v16 << 7) - 128;
        if (v16 < 0)
        {
          v72 = sub_1958770(v7, v15);
          *v86 = v72;
          *(a1 + 160) = v73;
          if (!v72)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_17:
          *v86 = v14;
          *(a1 + 160) = v15;
        }

        goto LABEL_117;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 0x40u;
        v54 = *(a1 + 96);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_15ED844(v56);
          *(a1 + 96) = v54;
          v7 = *v86;
        }

        v20 = sub_22278F4(a3, v54, v7);
        goto LABEL_116;
      default:
LABEL_109:
        if (v8)
        {
          v69 = (v8 & 7) == 4;
        }

        else
        {
          v69 = 1;
        }

        if (!v69)
        {
          v70 = *(a1 + 8);
          if (v70)
          {
            v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v71 = sub_11F1920((a1 + 8));
            v7 = *v86;
          }

          v20 = sub_1952690(v8, v71, v7, a3);
LABEL_116:
          *v86 = v20;
          if (!v20)
          {
            goto LABEL_139;
          }

LABEL_117:
          if (sub_195ADC0(a3, v86, a3[11].u32[1]))
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
LABEL_139:
          *v86 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v86;
    }
  }
}

char *sub_15E6C1C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 104);
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

    v11 = *(a1 + 48);
    *v6 = 18;
    v12 = *(v11 + 44);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_16E5070(v11, v13, a3);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 112);
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
          v6 = (v16 >> 7);
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v19 = *(a1 + 120);
    *v14 = 32;
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v14[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v14[2] = v19 >> 7;
      v18 = v14 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v14) = v14[2];
        do
        {
          *(v18 - 1) = v14 | 0x80;
          v14 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v14 + 2;
    }
  }

  else
  {
    v18 = v14;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 128);
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
        LOBYTE(v25) = v18[2];
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
      v22 = v18 + 2;
    }
  }

  else
  {
    v22 = v18;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 136);
    *v22 = 53;
    *(v22 + 1) = v27;
    v22 += 5;
    if ((v5 & 0x1000) == 0)
    {
LABEL_46:
      if ((v5 & 2) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_57;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v28 = *(a1 + 140);
  *v22 = 61;
  *(v22 + 1) = v28;
  v22 += 5;
  if ((v5 & 2) == 0)
  {
LABEL_47:
    if ((v5 & 4) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_63;
  }

LABEL_57:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v29 = *(a1 + 56);
  *v22 = 66;
  v30 = *(v29 + 20);
  v22[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, v22 + 1);
  }

  else
  {
    v31 = v22 + 2;
  }

  v22 = sub_15E1F24(v29, v31, a3);
  if ((v5 & 4) == 0)
  {
LABEL_48:
    if ((v5 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_69;
  }

LABEL_63:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v32 = *(a1 + 64);
  *v22 = 74;
  v33 = *(v32 + 20);
  v22[1] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, v22 + 1);
  }

  else
  {
    v34 = v22 + 2;
  }

  v22 = sub_15E1F24(v32, v34, a3);
  if ((v5 & 8) == 0)
  {
LABEL_49:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_75;
  }

LABEL_69:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v35 = *(a1 + 72);
  *v22 = 82;
  v36 = *(v35 + 20);
  v22[1] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, v22 + 1);
  }

  else
  {
    v37 = v22 + 2;
  }

  v22 = sub_15E2E00(v35, v37, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_75:
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v38 = *(a1 + 80);
    *v22 = 90;
    v39 = *(v38 + 20);
    v22[1] = v39;
    if (v39 > 0x7F)
    {
      v40 = sub_19575D0(v39, v22 + 1);
    }

    else
    {
      v40 = v22 + 2;
    }

    v22 = sub_15E262C(v38, v40, a3);
  }

LABEL_81:
  v41 = *(a1 + 32);
  if (v41 >= 1)
  {
    v42 = 8;
    do
    {
      v43 = *(*(a1 + 40) + v42);
      v44 = *(v43 + 23);
      if (v44 < 0 && (v44 = v43[1], v44 > 127) || (*a3 - v22 + 14) < v44)
      {
        v22 = sub_1957480(a3, 12, v43, v22);
      }

      else
      {
        *v22 = 98;
        v22[1] = v44;
        if (*(v43 + 23) < 0)
        {
          v43 = *v43;
        }

        v45 = v22 + 2;
        memcpy(v22 + 2, v43, v44);
        v22 = &v45[v44];
      }

      v42 += 8;
      --v41;
    }

    while (v41);
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v47 = *(a1 + 144);
    *v22 = 104;
    v22[1] = v47;
    if (v47 > 0x7F)
    {
      v22[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v22[2] = v47 >> 7;
      v46 = v22 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v49) = v22[2];
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
      v46 = v22 + 2;
    }
  }

  else
  {
    v46 = v22;
  }

  if ((v5 & 0x4000) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_103;
    }

LABEL_108:
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v53 = *(a1 + 88);
    *v46 = 122;
    v54 = *(v53 + 44);
    v46[1] = v54;
    if (v54 > 0x7F)
    {
      v55 = sub_19575D0(v54, v46 + 1);
    }

    else
    {
      v55 = v46 + 2;
    }

    v46 = sub_153C1A4(v53, v55, a3);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_114;
  }

  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v52 = *(a1 + 152);
  *v46 = 112;
  v46[1] = v52;
  v46 += 2;
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_108;
  }

LABEL_103:
  if ((v5 & 0x8000) == 0)
  {
LABEL_104:
    v51 = v46;
    goto LABEL_121;
  }

LABEL_114:
  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v56 = *(a1 + 156);
  *v46 = 384;
  v46[2] = v56;
  if (v56 > 0x7F)
  {
    v46[2] = v56 | 0x80;
    v57 = v56 >> 7;
    v46[3] = v56 >> 7;
    v51 = v46 + 4;
    if (v56 >= 0x4000)
    {
      LOBYTE(v46) = v46[3];
      do
      {
        *(v51 - 1) = v46 | 0x80;
        v46 = (v57 >> 7);
        *v51++ = v57 >> 7;
        v58 = v57 >> 14;
        v57 >>= 7;
      }

      while (v58);
    }
  }

  else
  {
    v51 = v46 + 3;
  }

LABEL_121:
  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v60 = *(a1 + 160);
    *v51 = 392;
    v51[2] = v60;
    if (v60 > 0x7F)
    {
      v51[2] = v60 | 0x80;
      v61 = v60 >> 7;
      v51[3] = v60 >> 7;
      v59 = v51 + 4;
      if (v60 >= 0x4000)
      {
        LOBYTE(v51) = v51[3];
        do
        {
          *(v59 - 1) = v51 | 0x80;
          LODWORD(v51) = v61 >> 7;
          *v59++ = v61 >> 7;
          v62 = v61 >> 14;
          v61 >>= 7;
        }

        while (v62);
      }
    }

    else
    {
      v59 = v51 + 3;
    }
  }

  else
  {
    v59 = v51;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v59)
    {
      v59 = sub_225EB68(a3, v59);
    }

    v63 = *(a1 + 96);
    *v59 = 402;
    v64 = *(v63 + 44);
    v59[2] = v64;
    if (v64 > 0x7F)
    {
      v65 = sub_19575D0(v64, v59 + 2);
    }

    else
    {
      v65 = v59 + 3;
    }

    v59 = sub_15E5D6C(v63, v65, a3);
  }

  v66 = *(a1 + 8);
  if ((v66 & 1) == 0)
  {
    return v59;
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

  if ((*a3 - v59) >= v69)
  {
    v71 = v69;
    memcpy(v59, v70, v69);
    v59 += v71;
    return v59;
  }

  return sub_1957130(a3, v70, v69, v59);
}

uint64_t sub_15E74A0(uint64_t a1)
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
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v15 = sub_16E51F0(*(a1 + 48));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_11:
      if ((v8 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_11;
  }

  v16 = sub_15E2148(*(a1 + 56));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v17 = sub_15E2148(*(a1 + 64));
  v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_13:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = sub_15E3020(*(a1 + 72));
  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_14:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_43:
    v20 = sub_153C388(*(a1 + 88));
    v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_16:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_42:
  v19 = sub_15E27C4(*(a1 + 80));
  v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_15:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_44:
  v21 = sub_15E5FC8(*(a1 + 96));
  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x80) != 0)
  {
LABEL_17:
    v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_18:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_34;
  }

  if ((v8 & 0x100) == 0)
  {
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_21;
    }

LABEL_47:
    v4 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v4 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v8 & 0x200) != 0)
  {
    goto LABEL_47;
  }

LABEL_21:
  if ((v8 & 0x400) != 0)
  {
LABEL_22:
    v4 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_23:
  v9 = v4 + 5;
  if ((v8 & 0x800) == 0)
  {
    v9 = v4;
  }

  if ((v8 & 0x1000) != 0)
  {
    v9 += 5;
  }

  if ((v8 & 0x2000) != 0)
  {
    v9 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v4 = v9 + ((v8 >> 13) & 2);
  if ((v8 & 0x8000) != 0)
  {
    v10 = *(a1 + 156);
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 12;
    }

    v4 += v12;
  }

LABEL_34:
  if ((v8 & 0x10000) != 0)
  {
    v4 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v22 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v4 += v23;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_15E7818(uint64_t a1, uint64_t a2)
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

        v10 = sub_16F5828(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E5E8;
      }

      sub_16E527C(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v16 = *(a1 + 56);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        sub_15ED520(v18);
        *(a1 + 56) = v16;
      }

      if (*(a2 + 56))
      {
        v19 = *(a2 + 56);
      }

      else
      {
        v19 = &off_2779950;
      }

      sub_15E2260(v16, v19);
      if ((v9 & 4) == 0)
      {
LABEL_16:
        if ((v9 & 8) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_56;
      }
    }

    else if ((v9 & 4) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 16) |= 4u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_15ED520(v22);
      *(a1 + 64) = v20;
    }

    if (*(a2 + 64))
    {
      v23 = *(a2 + 64);
    }

    else
    {
      v23 = &off_2779950;
    }

    sub_15E2260(v20, v23);
    if ((v9 & 8) == 0)
    {
LABEL_17:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_64;
    }

LABEL_56:
    *(a1 + 16) |= 8u;
    v24 = *(a1 + 72);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_15ED640(v26);
      *(a1 + 72) = v24;
    }

    if (*(a2 + 72))
    {
      v27 = *(a2 + 72);
    }

    else
    {
      v27 = &off_27799B8;
    }

    sub_15E28F8(v24, v27);
    if ((v9 & 0x10) == 0)
    {
LABEL_18:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_72;
    }

LABEL_64:
    *(a1 + 16) |= 0x10u;
    v28 = *(a1 + 80);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_15ED5C4(v30);
      *(a1 + 80) = v28;
    }

    if (*(a2 + 80))
    {
      v31 = *(a2 + 80);
    }

    else
    {
      v31 = &off_2779990;
    }

    sub_13F8718(v28, v31);
    if ((v9 & 0x20) == 0)
    {
LABEL_19:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_80;
    }

LABEL_72:
    *(a1 + 16) |= 0x20u;
    v32 = *(a1 + 88);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_1551A70(v34);
      *(a1 + 88) = v32;
    }

    if (*(a2 + 88))
    {
      v35 = *(a2 + 88);
    }

    else
    {
      v35 = &off_2776880;
    }

    sub_144F404(v32, v35);
    if ((v9 & 0x40) == 0)
    {
LABEL_20:
      if ((v9 & 0x80) == 0)
      {
LABEL_22:
        *(a1 + 16) |= v9;
        goto LABEL_23;
      }

LABEL_21:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_22;
    }

LABEL_80:
    *(a1 + 16) |= 0x40u;
    v36 = *(a1 + 96);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_15ED844(v38);
      *(a1 + 96) = v36;
    }

    if (*(a2 + 96))
    {
      v39 = *(a2 + 96);
    }

    else
    {
      v39 = &off_2779AC8;
    }

    sub_15E60A8(v36, v39);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_34;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 112) = *(a2 + 112);
    if ((v9 & 0x200) == 0)
    {
LABEL_26:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_91;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  *(a1 + 120) = *(a2 + 120);
  if ((v9 & 0x400) == 0)
  {
LABEL_27:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(a1 + 128) = *(a2 + 128);
  if ((v9 & 0x800) == 0)
  {
LABEL_28:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(a1 + 136) = *(a2 + 136);
  if ((v9 & 0x1000) == 0)
  {
LABEL_29:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(a1 + 140) = *(a2 + 140);
  if ((v9 & 0x2000) == 0)
  {
LABEL_30:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

LABEL_95:
    *(a1 + 152) = *(a2 + 152);
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_94:
  *(a1 + 144) = *(a2 + 144);
  if ((v9 & 0x4000) != 0)
  {
    goto LABEL_95;
  }

LABEL_31:
  if ((v9 & 0x8000) != 0)
  {
LABEL_32:
    *(a1 + 156) = *(a2 + 156);
  }

LABEL_33:
  *(a1 + 16) |= v9;
LABEL_34:
  if ((v9 & 0x10000) != 0)
  {
    v14 = *(a2 + 160);
    *(a1 + 16) |= 0x10000u;
    *(a1 + 160) = v14;
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15E7BCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E5370(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_144F674(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) == 0)
  {
    return 1;
  }

  result = sub_195228C(*(a1 + 96) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_15E7C40(uint64_t a1)
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
  if (a1 != &off_2779BB0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_15E1B34(v6);
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

void sub_15E7CF8(uint64_t a1)
{
  sub_15E7C40(a1);

  operator delete();
}

uint64_t sub_15E7D30(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_15E1C30(*(result + 24));
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

char *sub_15E7D8C(uint64_t a1, char *a2, int32x2_t *a3)
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

        sub_15ED520(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_2227A14(a3, v14, v6);
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

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}