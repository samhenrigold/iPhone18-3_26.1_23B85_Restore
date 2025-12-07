uint64_t sub_1533620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_15336A0(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v5 = sub_1533620(a1);
  }

  else
  {
    v2 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = v4 + ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v6 = *(a1 + 32);
  result = v5 + v6;
  if (v6 >= 1)
  {
    v8 = (*(a1 + 40) + 8);
    do
    {
      v9 = *v8++;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      result += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      --v6;
    }

    while (v6);
  }

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

void sub_15337B8(uint64_t a1, uint64_t a2)
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

uint64_t sub_15338F0(uint64_t a1)
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

void sub_15339BC(uint64_t a1)
{
  sub_15338F0(a1);

  operator delete();
}

uint64_t sub_15339F4(uint64_t a1)
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

uint64_t sub_1533AAC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1533C68(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1533D7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 3) != 0)
  {
    result = sub_132CD7C(a1);
    if ((v2 & 4) == 0)
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

  v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
  v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  v9 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  result = v5 + v9 + v6 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 4) != 0)
  {
LABEL_9:
    v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 20) = result;
  return result;
}

void *sub_1533EC0(void *a1)
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

void sub_1533F34(void *a1)
{
  sub_1533EC0(a1);

  operator delete();
}

uint64_t sub_1533F6C(uint64_t a1)
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

char *sub_1533F84(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1534108(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_15341E8(uint64_t a1)
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

uint64_t sub_1534238(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26EC940;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a2;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a2;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = a2;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = a2;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = a2;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 168) = a2;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 192) = a2;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 216) = a2;
  *(result + 224) = 0;
  *(result + 232) = 0;
  *(result + 240) = a2;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 264) = &qword_278E990;
  *(result + 272) = &qword_278E990;
  *(result + 280) = &qword_278E990;
  *(result + 288) = &qword_278E990;
  *(result + 296) = &qword_278E990;
  *(result + 304) = &qword_278E990;
  *(result + 312) = &qword_278E990;
  *(result + 320) = 0;
  *(result + 344) = 0;
  *(result + 328) = 0;
  *(result + 336) = 0;
  return result;
}

void *sub_15342C4(void *a1)
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

  sub_15343B8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_156CC9C(a1 + 30);
  sub_1956AFC(a1 + 27);
  sub_156CC18(a1 + 24);
  sub_156CB94(a1 + 21);
  sub_156CB10(a1 + 18);
  sub_13473FC(a1 + 15);
  sub_156CA8C(a1 + 12);
  sub_156CA08(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_1569688(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_15343B8(uint64_t result)
{
  if (*(result + 264) != &qword_278E990)
  {
    sub_194E89C((result + 264));
  }

  if (*(result + 272) != &qword_278E990)
  {
    sub_194E89C((result + 272));
  }

  if (*(result + 280) != &qword_278E990)
  {
    sub_194E89C((result + 280));
  }

  if (*(result + 288) != &qword_278E990)
  {
    sub_194E89C((result + 288));
  }

  if (*(result + 296) != &qword_278E990)
  {
    sub_194E89C((result + 296));
  }

  if (*(result + 304) != &qword_278E990)
  {
    sub_194E89C((result + 304));
  }

  if (*(result + 312) != &qword_278E990)
  {
    sub_194E89C((result + 312));
  }

  if (result != &off_2776520)
  {
    result = *(result + 320);
    if (result)
    {
      sub_16E4E08(result);

      operator delete();
    }
  }

  return result;
}

void sub_15344B8(void *a1)
{
  sub_15342C4(a1);

  operator delete();
}

void *sub_15344F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_14EAA78(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  sub_12A41D0(a1 + 48);
  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      sub_152E724(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 104);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 112) + 8);
    do
    {
      v10 = *v9++;
      sub_16EE624(v10);
      --v8;
    }

    while (v8);
    *(a1 + 104) = 0;
  }

  v11 = *(a1 + 128);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 136) + 8);
    do
    {
      v13 = *v12++;
      sub_1531498(v13);
      --v11;
    }

    while (v11);
    *(a1 + 128) = 0;
  }

  v14 = *(a1 + 152);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 160) + 8);
    do
    {
      v16 = *v15++;
      sub_15326DC(v16);
      --v14;
    }

    while (v14);
    *(a1 + 152) = 0;
  }

  v17 = *(a1 + 176);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 184) + 8);
    do
    {
      v19 = *v18++;
      sub_15330E4(v19);
      --v17;
    }

    while (v17);
    *(a1 + 176) = 0;
  }

  v20 = *(a1 + 200);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 208) + 8);
    do
    {
      v22 = *v21++;
      sub_15339F4(v22);
      --v20;
    }

    while (v20);
    *(a1 + 200) = 0;
  }

  sub_12A41D0(a1 + 216);
  result = sub_1563BF0((a1 + 240));
  v24 = *(a1 + 16);
  if (!v24)
  {
    goto LABEL_39;
  }

  if (v24)
  {
    v27 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v27 + 23) < 0)
    {
      **v27 = 0;
      *(v27 + 8) = 0;
      if ((v24 & 2) != 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      *v27 = 0;
      *(v27 + 23) = 0;
      if ((v24 & 2) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_32:
    if ((v24 & 4) == 0)
    {
      goto LABEL_33;
    }

LABEL_53:
    v29 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v29 + 23) < 0)
    {
      **v29 = 0;
      *(v29 + 8) = 0;
      if ((v24 & 8) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      *v29 = 0;
      *(v29 + 23) = 0;
      if ((v24 & 8) != 0)
      {
        goto LABEL_57;
      }
    }

LABEL_34:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_35;
    }

LABEL_61:
    v31 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v31 + 23) < 0)
    {
      **v31 = 0;
      *(v31 + 8) = 0;
      if ((v24 & 0x20) != 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      *v31 = 0;
      *(v31 + 23) = 0;
      if ((v24 & 0x20) != 0)
      {
        goto LABEL_65;
      }
    }

LABEL_36:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

  if ((v24 & 2) == 0)
  {
    goto LABEL_32;
  }

LABEL_49:
  v28 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v28 + 23) < 0)
  {
    **v28 = 0;
    *(v28 + 8) = 0;
    if ((v24 & 4) != 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    *v28 = 0;
    *(v28 + 23) = 0;
    if ((v24 & 4) != 0)
    {
      goto LABEL_53;
    }
  }

LABEL_33:
  if ((v24 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_57:
  v30 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v30 + 23) < 0)
  {
    **v30 = 0;
    *(v30 + 8) = 0;
    if ((v24 & 0x10) != 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    *v30 = 0;
    *(v30 + 23) = 0;
    if ((v24 & 0x10) != 0)
    {
      goto LABEL_61;
    }
  }

LABEL_35:
  if ((v24 & 0x20) == 0)
  {
    goto LABEL_36;
  }

LABEL_65:
  v32 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v32 + 23) & 0x80000000) == 0)
  {
    *v32 = 0;
    *(v32 + 23) = 0;
    if ((v24 & 0x40) != 0)
    {
      goto LABEL_69;
    }

LABEL_37:
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  **v32 = 0;
  *(v32 + 8) = 0;
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_69:
  v33 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v33 + 23) & 0x80000000) == 0)
  {
    *v33 = 0;
    *(v33 + 23) = 0;
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_39;
    }

LABEL_38:
    result = sub_16E4E44(*(a1 + 320));
    goto LABEL_39;
  }

  **v33 = 0;
  *(v33 + 8) = 0;
  if ((v24 & 0x80) != 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  if ((v24 & 0x3F00) != 0)
  {
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
  }

  v26 = *(a1 + 8);
  v25 = a1 + 8;
  *(v25 + 8) = 0;
  if (v26)
  {

    return sub_1957EA8(v25);
  }

  return result;
}

uint64_t sub_1534810(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v122 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v122, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v122 + 1);
    v8 = **v122;
    if (**v122 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v122, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v122 + 2);
      }
    }

    *v122 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0x63)
    {
      break;
    }

    switch(v11)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_182;
        }

        v5 |= 0x100u;
        v13 = v7 + 1;
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if (v14 < 0)
        {
          v112 = sub_19587DC(v7, v12);
          *v122 = v112;
          *(a1 + 328) = v113;
          if (!v112)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v13 = v7 + 2;
LABEL_13:
          *v122 = v13;
          *(a1 + 328) = v12;
        }

        break;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_182;
        }

        v5 |= 0x200u;
        LODWORD(v69) = *v7;
        if ((v69 & 0x80000000) == 0)
        {
          v70 = (v7 + 1);
LABEL_191:
          *v122 = v70;
          *(a1 + 336) = v69;
          break;
        }

        v69 = (v7[1] << 7) + v69 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v70 = (v7 + 2);
          goto LABEL_191;
        }

        v114 = sub_19587DC(v7, v69);
        *v122 = v114;
        *(a1 + 336) = v115;
        if (!v114)
        {
          goto LABEL_207;
        }

        break;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 1u;
        v60 = *(a1 + 8);
        v32 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
        if (v60)
        {
          v32 = *v32;
        }

        v33 = (a1 + 264);
        goto LABEL_143;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 2u;
        v67 = *(a1 + 8);
        v32 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
        if (v67)
        {
          v32 = *v32;
        }

        v33 = (a1 + 272);
        goto LABEL_143;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 4u;
        v40 = *(a1 + 8);
        v32 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v32 = *v32;
        }

        v33 = (a1 + 280);
        goto LABEL_143;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 8u;
        v77 = *(a1 + 8);
        v32 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
        if (v77)
        {
          v32 = *v32;
        }

        v33 = (a1 + 288);
        goto LABEL_143;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 0x10u;
        v84 = *(a1 + 8);
        v32 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
        if (v84)
        {
          v32 = *v32;
        }

        v33 = (a1 + 296);
        goto LABEL_143;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 0x20u;
        v68 = *(a1 + 8);
        v32 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
        if (v68)
        {
          v32 = *v32;
        }

        v33 = (a1 + 304);
        goto LABEL_143;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_182;
        }

        v5 |= 0x400u;
        v99 = v7 + 1;
        v98 = *v7;
        if ((v98 & 0x8000000000000000) == 0)
        {
          goto LABEL_171;
        }

        v100 = *v99;
        v98 = (v100 << 7) + v98 - 128;
        if (v100 < 0)
        {
          v120 = sub_19587DC(v7, v98);
          *v122 = v120;
          *(a1 + 340) = v121 != 0;
          if (!v120)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v99 = v7 + 2;
LABEL_171:
          *v122 = v99;
          *(a1 + 340) = v98 != 0;
        }

        break;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_182;
        }

        v5 |= 0x800u;
        v50 = v7 + 1;
        v49 = *v7;
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_77;
        }

        v51 = *v50;
        v49 = (v51 << 7) + v49 - 128;
        if (v51 < 0)
        {
          v110 = sub_19587DC(v7, v49);
          *v122 = v110;
          *(a1 + 341) = v111 != 0;
          if (!v110)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_77:
          *v122 = v50;
          *(a1 + 341) = v49 != 0;
        }

        break;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_182;
        }

        v92 = (v7 - 1);
        while (1)
        {
          v93 = (v92 + 1);
          *v122 = v92 + 1;
          v94 = *(a1 + 40);
          if (v94 && (v95 = *(a1 + 32), v95 < *v94))
          {
            *(a1 + 32) = v95 + 1;
            v96 = *&v94[2 * v95 + 2];
          }

          else
          {
            v97 = sub_1551110(*(a1 + 24));
            v96 = sub_19593CC(a1 + 24, v97);
            v93 = *v122;
          }

          v92 = sub_2217458(a3, v96, v93);
          *v122 = v92;
          if (!v92)
          {
            goto LABEL_207;
          }

          if (*a3 <= v92 || *v92 != 90)
          {
            goto LABEL_145;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 0x40u;
        v31 = *(a1 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        v33 = (a1 + 312);
LABEL_143:
        v85 = sub_194DB04(v33, v32);
        v24 = sub_1958890(v85, *v122, a3);
        goto LABEL_144;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_182;
        }

        v41 = v7 - 1;
        while (1)
        {
          v42 = (v41 + 1);
          *v122 = v41 + 1;
          v43 = *(a1 + 64);
          if (v43 && (v44 = *(a1 + 56), v44 < *v43))
          {
            *(a1 + 56) = v44 + 1;
            v45 = *&v43[2 * v44 + 2];
          }

          else
          {
            v46 = *(a1 + 48);
            if (!v46)
            {
              operator new();
            }

            *v48 = v47;
            v48[1] = sub_195A650;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = 0;
            v45 = sub_19593CC(a1 + 48, v47);
            v42 = *v122;
          }

          v41 = sub_1958890(v45, v42, a3);
          *v122 = v41;
          if (!v41)
          {
            goto LABEL_207;
          }

          if (*a3 <= v41 || *v41 != 106)
          {
            goto LABEL_145;
          }
        }

      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_182;
        }

        v78 = (v7 - 1);
        while (1)
        {
          v79 = (v78 + 1);
          *v122 = v78 + 1;
          v80 = *(a1 + 88);
          if (v80 && (v81 = *(a1 + 80), v81 < *v80))
          {
            *(a1 + 80) = v81 + 1;
            v82 = *&v80[2 * v81 + 2];
          }

          else
          {
            v83 = sub_1551248(*(a1 + 72));
            v82 = sub_19593CC(a1 + 72, v83);
            v79 = *v122;
          }

          v78 = sub_2219FA8(a3, v82, v79);
          *v122 = v78;
          if (!v78)
          {
            goto LABEL_207;
          }

          if (*a3 <= v78 || *v78 != 114)
          {
            goto LABEL_145;
          }
        }

      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_182;
        }

        v25 = (v7 - 1);
        while (1)
        {
          v26 = (v25 + 1);
          *v122 = v25 + 1;
          v27 = *(a1 + 112);
          if (v27 && (v28 = *(a1 + 104), v28 < *v27))
          {
            *(a1 + 104) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            v30 = sub_16F5FB4(*(a1 + 96));
            v29 = sub_19593CC(a1 + 96, v30);
            v26 = *v122;
          }

          v25 = sub_221A278(a3, v29, v26);
          *v122 = v25;
          if (!v25)
          {
            goto LABEL_207;
          }

          if (*a3 <= v25 || *v25 != 122)
          {
            goto LABEL_145;
          }
        }

      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_182;
        }

        v61 = v7 - 2;
        while (1)
        {
          v62 = v61 + 2;
          *v122 = v61 + 2;
          v63 = *(a1 + 136);
          if (v63 && (v64 = *(a1 + 128), v64 < *v63))
          {
            *(a1 + 128) = v64 + 1;
            v65 = *&v63[2 * v64 + 2];
          }

          else
          {
            sub_155136C(*(a1 + 120));
            v65 = sub_19593CC(a1 + 120, v66);
            v62 = *v122;
          }

          v61 = sub_21FC4F0(a3, v65, v62);
          *v122 = v61;
          if (!v61)
          {
            goto LABEL_207;
          }

          if (*a3 <= v61 || *v61 != 386)
          {
            goto LABEL_145;
          }
        }

      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 0x80u;
        v21 = *(a1 + 320);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          v21 = sub_16F5828(v23);
          *(a1 + 320) = v21;
          v7 = *v122;
        }

        v24 = sub_21F4D60(a3, v21, v7);
        goto LABEL_144;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_182;
        }

        v5 |= 0x2000u;
        v71 = v7 + 1;
        v72 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_119;
        }

        v73 = *v71;
        v72 = v72 + (v73 << 7) - 128;
        if (v73 < 0)
        {
          v116 = sub_1958770(v7, v72);
          *v122 = v116;
          *(a1 + 344) = v117;
          if (!v116)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v71 = v7 + 2;
LABEL_119:
          *v122 = v71;
          *(a1 + 344) = v72;
        }

        break;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_182;
        }

        v86 = (v7 - 2);
        while (1)
        {
          v87 = (v86 + 2);
          *v122 = v86 + 2;
          v88 = *(a1 + 160);
          if (v88 && (v89 = *(a1 + 152), v89 < *v88))
          {
            *(a1 + 152) = v89 + 1;
            v90 = *&v88[2 * v89 + 2];
          }

          else
          {
            v91 = sub_155149C(*(a1 + 144));
            v90 = sub_19593CC(a1 + 144, v91);
            v87 = *v122;
          }

          v86 = sub_221A308(a3, v90, v87);
          *v122 = v86;
          if (!v86)
          {
            goto LABEL_207;
          }

          if (*a3 <= v86 || *v86 != 410)
          {
            goto LABEL_145;
          }
        }

      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_182;
        }

        v101 = (v7 - 2);
        while (1)
        {
          v102 = (v101 + 2);
          *v122 = v101 + 2;
          v103 = *(a1 + 184);
          if (v103 && (v104 = *(a1 + 176), v104 < *v103))
          {
            *(a1 + 176) = v104 + 1;
            v105 = *&v103[2 * v104 + 2];
          }

          else
          {
            v106 = sub_1551544(*(a1 + 168));
            v105 = sub_19593CC(a1 + 168, v106);
            v102 = *v122;
          }

          v101 = sub_221A398(a3, v105, v102);
          *v122 = v101;
          if (!v101)
          {
            goto LABEL_207;
          }

          if (*a3 <= v101 || *v101 != 418)
          {
            goto LABEL_145;
          }
        }

      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_182;
        }

        v5 |= 0x1000u;
        v75 = v7 + 1;
        v74 = *v7;
        if ((v74 & 0x8000000000000000) == 0)
        {
          goto LABEL_124;
        }

        v76 = *v75;
        v74 = (v76 << 7) + v74 - 128;
        if (v76 < 0)
        {
          v118 = sub_19587DC(v7, v74);
          *v122 = v118;
          *(a1 + 342) = v119 != 0;
          if (!v118)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v75 = v7 + 2;
LABEL_124:
          *v122 = v75;
          *(a1 + 342) = v74 != 0;
        }

        break;
      default:
        goto LABEL_182;
    }

LABEL_145:
    if (sub_195ADC0(a3, v122, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 100)
  {
    if (v8 == 34)
    {
      v34 = (v7 - 2);
      while (1)
      {
        v35 = (v34 + 2);
        *v122 = v34 + 2;
        v36 = *(a1 + 208);
        if (v36 && (v37 = *(a1 + 200), v37 < *v36))
        {
          *(a1 + 200) = v37 + 1;
          v38 = *&v36[2 * v37 + 2];
        }

        else
        {
          v39 = sub_15515EC(*(a1 + 192));
          v38 = sub_19593CC(a1 + 192, v39);
          v35 = *v122;
        }

        v34 = sub_221A428(a3, v38, v35);
        *v122 = v34;
        if (!v34)
        {
          goto LABEL_207;
        }

        if (*a3 <= v34 || *v34 != 1698)
        {
          goto LABEL_145;
        }
      }
    }
  }

  else if (v11 == 101)
  {
    if (v8 == 42)
    {
      v52 = v7 - 2;
      while (1)
      {
        v53 = (v52 + 2);
        *v122 = v52 + 2;
        v54 = *(a1 + 232);
        if (v54 && (v55 = *(a1 + 224), v55 < *v54))
        {
          *(a1 + 224) = v55 + 1;
          v56 = *&v54[2 * v55 + 2];
        }

        else
        {
          v57 = *(a1 + 216);
          if (!v57)
          {
            operator new();
          }

          *v59 = v58;
          v59[1] = sub_195A650;
          *v58 = 0;
          v58[1] = 0;
          v58[2] = 0;
          v56 = sub_19593CC(a1 + 216, v58);
          v53 = *v122;
        }

        v52 = sub_1958890(v56, v53, a3);
        *v122 = v52;
        if (!v52)
        {
          goto LABEL_207;
        }

        if (*a3 <= v52 || *v52 != 1706)
        {
          goto LABEL_145;
        }
      }
    }
  }

  else if (v11 == 102 && v8 == 50)
  {
    v15 = v7 - 2;
    while (1)
    {
      v16 = v15 + 2;
      *v122 = v15 + 2;
      v17 = *(a1 + 256);
      if (v17 && (v18 = *(a1 + 248), v18 < *v17))
      {
        *(a1 + 248) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = sub_1551674(*(a1 + 240));
        v19 = sub_19593CC(a1 + 240, v20);
        v16 = *v122;
      }

      v15 = sub_221A4B8(a3, v19, v16);
      *v122 = v15;
      if (!v15)
      {
        goto LABEL_207;
      }

      if (*a3 <= v15 || *v15 != 1714)
      {
        goto LABEL_145;
      }
    }
  }

LABEL_182:
  if (v8)
  {
    v107 = (v8 & 7) == 4;
  }

  else
  {
    v107 = 1;
  }

  if (!v107)
  {
    v108 = *(a1 + 8);
    if (v108)
    {
      v109 = (v108 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v109 = sub_11F1920((a1 + 8));
      v7 = *v122;
    }

    v24 = sub_1952690(v8, v109, v7, a3);
LABEL_144:
    *v122 = v24;
    if (!v24)
    {
      goto LABEL_207;
    }

    goto LABEL_145;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_207:
  *v122 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v122;
}

char *sub_1535400(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 328);
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 336);
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
    v11 = sub_128AEEC(a3, 3, (*(a1 + 264) & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v5 & 2) == 0)
    {
LABEL_21:
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_21;
  }

  v11 = sub_128AEEC(a3, 4, (*(a1 + 272) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 4) == 0)
  {
LABEL_22:
    if ((v5 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = sub_128AEEC(a3, 5, (*(a1 + 280) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 8) == 0)
  {
LABEL_23:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = sub_128AEEC(a3, 6, (*(a1 + 288) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 0x10) == 0)
  {
LABEL_24:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = sub_128AEEC(a3, 7, (*(a1 + 296) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 0x20) == 0)
  {
LABEL_25:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = sub_128AEEC(a3, 8, (*(a1 + 304) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 0x400) == 0)
  {
LABEL_26:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v15 = *(a1 + 340);
  *v11 = 72;
  v11[1] = v15;
  v11 += 2;
  if ((v5 & 0x800) != 0)
  {
LABEL_37:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 341);
    *v11 = 80;
    v11[1] = v16;
    v11 += 2;
  }

LABEL_40:
  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 90;
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

      v11 = sub_152FD68(v19, v21, a3);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    v11 = sub_128AEEC(a3, 12, (*(a1 + 312) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v22 = *(a1 + 56);
  if (v22 >= 1)
  {
    v23 = 8;
    do
    {
      v24 = *(*(a1 + 64) + v23);
      v25 = *(v24 + 23);
      if (v25 < 0 && (v25 = v24[1], v25 > 127) || (*a3 - v11 + 14) < v25)
      {
        v11 = sub_1957480(a3, 13, v24, v11);
      }

      else
      {
        *v11 = 106;
        v11[1] = v25;
        if (*(v24 + 23) < 0)
        {
          v24 = *v24;
        }

        v26 = v11 + 2;
        memcpy(v11 + 2, v24, v25);
        v11 = &v26[v25];
      }

      v23 += 8;
      --v22;
    }

    while (v22);
  }

  v27 = *(a1 + 80);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v29 = *(*(a1 + 88) + 8 * j + 8);
      *v11 = 114;
      v30 = *(v29 + 20);
      v11[1] = v30;
      if (v30 > 0x7F)
      {
        v31 = sub_19575D0(v30, v11 + 1);
      }

      else
      {
        v31 = v11 + 2;
      }

      v11 = sub_1530ADC(v29, v31, a3);
    }
  }

  v32 = *(a1 + 104);
  if (v32)
  {
    for (k = 0; k != v32; ++k)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v34 = *(*(a1 + 112) + 8 * k + 8);
      *v11 = 122;
      v35 = *(v34 + 20);
      v11[1] = v35;
      if (v35 > 0x7F)
      {
        v36 = sub_19575D0(v35, v11 + 1);
      }

      else
      {
        v36 = v11 + 2;
      }

      v11 = sub_16EE820(v34, v36, a3);
    }
  }

  v37 = *(a1 + 128);
  if (v37)
  {
    for (m = 0; m != v37; ++m)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v39 = *(*(a1 + 136) + 8 * m + 8);
      *v11 = 386;
      v40 = *(v39 + 56);
      v11[2] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v11 + 2);
      }

      else
      {
        v41 = v11 + 3;
      }

      v11 = sub_15317E4(v39, v41, a3);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v42 = *(a1 + 320);
    *v11 = 394;
    v43 = *(v42 + 44);
    v11[2] = v43;
    if (v43 > 0x7F)
    {
      v44 = sub_19575D0(v43, v11 + 2);
    }

    else
    {
      v44 = v11 + 3;
    }

    v11 = sub_16E5070(v42, v44, a3);
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v46 = *(a1 + 344);
    *v11 = 400;
    v11[2] = v46;
    if (v46 > 0x7F)
    {
      v11[2] = v46 | 0x80;
      v47 = v46 >> 7;
      v11[3] = v46 >> 7;
      v45 = v11 + 4;
      if (v46 >= 0x4000)
      {
        LOBYTE(v48) = v11[3];
        do
        {
          *(v45 - 1) = v48 | 0x80;
          v48 = v47 >> 7;
          *v45++ = v47 >> 7;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
      }
    }

    else
    {
      v45 = v11 + 3;
    }
  }

  else
  {
    v45 = v11;
  }

  v50 = *(a1 + 152);
  if (v50)
  {
    for (n = 0; n != v50; ++n)
    {
      if (*a3 <= v45)
      {
        v45 = sub_225EB68(a3, v45);
      }

      v52 = *(*(a1 + 160) + 8 * n + 8);
      *v45 = 410;
      v53 = *(v52 + 20);
      v45[2] = v53;
      if (v53 > 0x7F)
      {
        v54 = sub_19575D0(v53, v45 + 2);
      }

      else
      {
        v54 = v45 + 3;
      }

      v45 = sub_1532A6C(v52, v54, a3);
    }
  }

  v55 = *(a1 + 176);
  if (v55)
  {
    for (ii = 0; ii != v55; ++ii)
    {
      if (*a3 <= v45)
      {
        v45 = sub_225EB68(a3, v45);
      }

      v57 = *(*(a1 + 184) + 8 * ii + 8);
      *v45 = 418;
      v58 = *(v57 + 20);
      v45[2] = v58;
      if (v58 > 0x7F)
      {
        v59 = sub_19575D0(v58, v45 + 2);
      }

      else
      {
        v59 = v45 + 3;
      }

      v45 = sub_1533424(v57, v59, a3);
    }
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v60 = *(a1 + 342);
    *v45 = 424;
    v45[2] = v60;
    v45 += 3;
  }

  v61 = *(a1 + 200);
  if (v61)
  {
    for (jj = 0; jj != v61; ++jj)
    {
      if (*a3 <= v45)
      {
        v45 = sub_225EB68(a3, v45);
      }

      v63 = *(*(a1 + 208) + 8 * jj + 8);
      *v45 = 1698;
      v64 = *(v63 + 20);
      v45[2] = v64;
      if (v64 > 0x7F)
      {
        v65 = sub_19575D0(v64, v45 + 2);
      }

      else
      {
        v65 = v45 + 3;
      }

      v45 = sub_1533C68(v63, v65, a3);
    }
  }

  v66 = *(a1 + 224);
  if (v66 >= 1)
  {
    v67 = 8;
    do
    {
      v68 = *(*(a1 + 232) + v67);
      v69 = *(v68 + 23);
      if (v69 < 0 && (v69 = v68[1], v69 > 127) || (*a3 - v45 + 13) < v69)
      {
        v45 = sub_1957480(a3, 101, v68, v45);
      }

      else
      {
        *v45 = 1706;
        v45[2] = v69;
        if (*(v68 + 23) < 0)
        {
          v68 = *v68;
        }

        v70 = v45 + 3;
        memcpy(v70, v68, v69);
        v45 = &v70[v69];
      }

      v67 += 8;
      --v66;
    }

    while (v66);
  }

  v71 = *(a1 + 248);
  if (v71)
  {
    for (kk = 0; kk != v71; ++kk)
    {
      if (*a3 <= v45)
      {
        v45 = sub_225EB68(a3, v45);
      }

      v73 = *(*(a1 + 256) + 8 * kk + 8);
      *v45 = 1714;
      v74 = *(v73 + 20);
      v45[2] = v74;
      if (v74 > 0x7F)
      {
        v75 = sub_19575D0(v74, v45 + 2);
      }

      else
      {
        v75 = v45 + 3;
      }

      v45 = sub_1534108(v73, v75, a3);
    }
  }

  v76 = *(a1 + 8);
  if ((v76 & 1) == 0)
  {
    return v45;
  }

  v78 = v76 & 0xFFFFFFFFFFFFFFFCLL;
  v79 = *(v78 + 31);
  if (v79 < 0)
  {
    v80 = *(v78 + 8);
    v79 = *(v78 + 16);
  }

  else
  {
    v80 = (v78 + 8);
  }

  if ((*a3 - v45) >= v79)
  {
    v81 = v79;
    memcpy(v45, v80, v79);
    v45 += v81;
    return v45;
  }

  return sub_1957130(a3, v80, v79, v45);
}

uint64_t sub_1535D8C(uint64_t a1)
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
      v7 = sub_153007C(v6);
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

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 80);
  v15 = v9 + v14;
  v16 = *(a1 + 88);
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
      v20 = sub_1530CC0(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 104);
  v22 = v15 + v21;
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
      v27 = sub_16EE908(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 128);
  v29 = v22 + 2 * v28;
  v30 = *(a1 + 136);
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
      v34 = sub_15319C4(v33);
      v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      v32 -= 8;
    }

    while (v32);
  }

  v35 = *(a1 + 152);
  v36 = v29 + 2 * v35;
  v37 = *(a1 + 160);
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
      v41 = sub_1532D64(v40);
      v36 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      v39 -= 8;
    }

    while (v39);
  }

  v42 = *(a1 + 176);
  v43 = v36 + 2 * v42;
  v44 = *(a1 + 184);
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
      v48 = sub_15336A0(v47);
      v43 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6);
      v46 -= 8;
    }

    while (v46);
  }

  v49 = *(a1 + 200);
  v50 = v43 + 2 * v49;
  v51 = *(a1 + 208);
  if (v51)
  {
    v52 = (v51 + 8);
  }

  else
  {
    v52 = 0;
  }

  if (v49)
  {
    v53 = 8 * v49;
    do
    {
      v54 = *v52++;
      v55 = sub_1533D7C(v54);
      v50 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6);
      v53 -= 8;
    }

    while (v53);
  }

  v56 = *(a1 + 224);
  v57 = v50 + 2 * v56;
  if (v56 >= 1)
  {
    v58 = (*(a1 + 232) + 8);
    do
    {
      v59 = *v58++;
      v60 = *(v59 + 23);
      v61 = *(v59 + 8);
      if ((v60 & 0x80u) == 0)
      {
        v61 = v60;
      }

      v57 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6);
      --v56;
    }

    while (v56);
  }

  v62 = *(a1 + 248);
  v63 = v57 + 2 * v62;
  v64 = *(a1 + 256);
  if (v64)
  {
    v65 = v64 + 8;
  }

  else
  {
    v65 = 0;
  }

  if (v62)
  {
    v66 = 8 * v62;
    do
    {
      v67 = 2 * (*(*v65 + 16) & 1);
      v68 = *(*v65 + 8);
      if (v68)
      {
        v69 = v68 & 0xFFFFFFFFFFFFFFFCLL;
        v70 = *((v68 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v70 < 0)
        {
          v70 = *(v69 + 16);
        }

        v67 += v70;
      }

      *(*v65 + 20) = v67;
      v63 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6);
      v65 += 8;
      v66 -= 8;
    }

    while (v66);
  }

  v71 = *(a1 + 16);
  if (!v71)
  {
    goto LABEL_76;
  }

  if (v71)
  {
    v78 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    v79 = *(v78 + 23);
    v80 = *(v78 + 8);
    if ((v79 & 0x80u) == 0)
    {
      v80 = v79;
    }

    v63 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v71 & 2) == 0)
    {
LABEL_69:
      if ((v71 & 4) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_97;
    }
  }

  else if ((v71 & 2) == 0)
  {
    goto LABEL_69;
  }

  v81 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
  v82 = *(v81 + 23);
  v83 = *(v81 + 8);
  if ((v82 & 0x80u) == 0)
  {
    v83 = v82;
  }

  v63 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v71 & 4) == 0)
  {
LABEL_70:
    if ((v71 & 8) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_100;
  }

LABEL_97:
  v84 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
  v85 = *(v84 + 23);
  v86 = *(v84 + 8);
  if ((v85 & 0x80u) == 0)
  {
    v86 = v85;
  }

  v63 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v71 & 8) == 0)
  {
LABEL_71:
    if ((v71 & 0x10) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_103;
  }

LABEL_100:
  v87 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
  v88 = *(v87 + 23);
  v89 = *(v87 + 8);
  if ((v88 & 0x80u) == 0)
  {
    v89 = v88;
  }

  v63 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v71 & 0x10) == 0)
  {
LABEL_72:
    if ((v71 & 0x20) == 0)
    {
      goto LABEL_73;
    }

LABEL_106:
    v93 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
    v94 = *(v93 + 23);
    v95 = *(v93 + 8);
    if ((v94 & 0x80u) == 0)
    {
      v95 = v94;
    }

    v63 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v71 & 0x40) == 0)
    {
LABEL_74:
      if ((v71 & 0x80) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    goto LABEL_109;
  }

LABEL_103:
  v90 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
  v91 = *(v90 + 23);
  v92 = *(v90 + 8);
  if ((v91 & 0x80u) == 0)
  {
    v92 = v91;
  }

  v63 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v71 & 0x20) != 0)
  {
    goto LABEL_106;
  }

LABEL_73:
  if ((v71 & 0x40) == 0)
  {
    goto LABEL_74;
  }

LABEL_109:
  v96 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  v97 = *(v96 + 23);
  v98 = *(v96 + 8);
  if ((v97 & 0x80u) == 0)
  {
    v98 = v97;
  }

  v63 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v71 & 0x80) != 0)
  {
LABEL_75:
    v72 = sub_16E51F0(*(a1 + 320));
    v63 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_76:
  if ((v71 & 0x3F00) != 0)
  {
    if ((v71 & 0x100) != 0)
    {
      v63 += ((9 * (__clz(*(a1 + 328) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v71 & 0x200) != 0)
    {
      v73 = *(a1 + 336);
      v74 = ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v73 >= 0)
      {
        v75 = v74;
      }

      else
      {
        v75 = 11;
      }

      v63 += v75;
    }

    if ((v71 & 0x1000) != 0)
    {
      v63 += ((v71 >> 10) & 2) + ((v71 >> 9) & 2) + 3;
    }

    else
    {
      v63 += ((v71 >> 10) & 2) + ((v71 >> 9) & 2);
    }

    if ((v71 & 0x2000) != 0)
    {
      v63 += ((9 * (__clz(*(a1 + 344) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  v76 = *(a1 + 8);
  if (v76)
  {
    v99 = v76 & 0xFFFFFFFFFFFFFFFCLL;
    v100 = *((v76 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v100 < 0)
    {
      v100 = *(v99 + 16);
    }

    v63 += v100;
  }

  *(a1 + 20) = v63;
  return v63;
}

void sub_1536428(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156B558((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_156D568((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_156D5F4((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1347FD8((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 152);
  if (v29)
  {
    v30 = *(a2 + 160);
    v31 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_156D670((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 176);
  if (v34)
  {
    v35 = *(a2 + 184);
    v36 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_156D6FC((a1 + 168), v36, (v35 + 8), v34, **(a1 + 184) - *(a1 + 176));
    v37 = *(a1 + 176) + v34;
    *(a1 + 176) = v37;
    v38 = *(a1 + 184);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 200);
  if (v39)
  {
    v40 = *(a2 + 208);
    v41 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_156D788((a1 + 192), v41, (v40 + 8), v39, **(a1 + 208) - *(a1 + 200));
    v42 = *(a1 + 200) + v39;
    *(a1 + 200) = v42;
    v43 = *(a1 + 208);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 224);
  if (v44)
  {
    v45 = *(a2 + 232);
    v46 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_1201B48((a1 + 216), v46, (v45 + 8), v44, **(a1 + 232) - *(a1 + 224));
    v47 = *(a1 + 224) + v44;
    *(a1 + 224) = v47;
    v48 = *(a1 + 232);
    if (*v48 < v47)
    {
      *v48 = v47;
    }
  }

  v49 = *(a2 + 248);
  if (v49)
  {
    v50 = *(a2 + 256);
    v51 = sub_19592E8(a1 + 240, *(a2 + 248));
    sub_156D804((a1 + 240), v51, (v50 + 8), v49, **(a1 + 256) - *(a1 + 248));
    v52 = *(a1 + 248) + v49;
    *(a1 + 248) = v52;
    v53 = *(a1 + 256);
    if (*v53 < v52)
    {
      *v53 = v52;
    }
  }

  v54 = *(a2 + 16);
  if (!v54)
  {
    goto LABEL_70;
  }

  if (v54)
  {
    v55 = *(a2 + 264);
    *(a1 + 16) |= 1u;
    v56 = *(a1 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    sub_194EA1C((a1 + 264), (v55 & 0xFFFFFFFFFFFFFFFELL), v57);
    if ((v54 & 2) == 0)
    {
LABEL_34:
      if ((v54 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    }
  }

  else if ((v54 & 2) == 0)
  {
    goto LABEL_34;
  }

  v58 = *(a2 + 272);
  *(a1 + 16) |= 2u;
  v59 = *(a1 + 8);
  v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
  if (v59)
  {
    v60 = *v60;
  }

  sub_194EA1C((a1 + 272), (v58 & 0xFFFFFFFFFFFFFFFELL), v60);
  if ((v54 & 4) == 0)
  {
LABEL_35:
    if ((v54 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_50;
  }

LABEL_47:
  v61 = *(a2 + 280);
  *(a1 + 16) |= 4u;
  v62 = *(a1 + 8);
  v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
  if (v62)
  {
    v63 = *v63;
  }

  sub_194EA1C((a1 + 280), (v61 & 0xFFFFFFFFFFFFFFFELL), v63);
  if ((v54 & 8) == 0)
  {
LABEL_36:
    if ((v54 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_53;
  }

LABEL_50:
  v64 = *(a2 + 288);
  *(a1 + 16) |= 8u;
  v65 = *(a1 + 8);
  v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
  if (v65)
  {
    v66 = *v66;
  }

  sub_194EA1C((a1 + 288), (v64 & 0xFFFFFFFFFFFFFFFELL), v66);
  if ((v54 & 0x10) == 0)
  {
LABEL_37:
    if ((v54 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_56:
    v70 = *(a2 + 304);
    *(a1 + 16) |= 0x20u;
    v71 = *(a1 + 8);
    v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
    if (v71)
    {
      v72 = *v72;
    }

    sub_194EA1C((a1 + 304), (v70 & 0xFFFFFFFFFFFFFFFELL), v72);
    if ((v54 & 0x40) == 0)
    {
LABEL_39:
      if ((v54 & 0x80) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_62;
    }

    goto LABEL_59;
  }

LABEL_53:
  v67 = *(a2 + 296);
  *(a1 + 16) |= 0x10u;
  v68 = *(a1 + 8);
  v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
  if (v68)
  {
    v69 = *v69;
  }

  sub_194EA1C((a1 + 296), (v67 & 0xFFFFFFFFFFFFFFFELL), v69);
  if ((v54 & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_38:
  if ((v54 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_59:
  v73 = *(a2 + 312);
  *(a1 + 16) |= 0x40u;
  v74 = *(a1 + 8);
  v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
  if (v74)
  {
    v75 = *v75;
  }

  sub_194EA1C((a1 + 312), (v73 & 0xFFFFFFFFFFFFFFFELL), v75);
  if ((v54 & 0x80) != 0)
  {
LABEL_62:
    *(a1 + 16) |= 0x80u;
    v76 = *(a1 + 320);
    if (!v76)
    {
      v77 = *(a1 + 8);
      v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
      if (v77)
      {
        v78 = *v78;
      }

      v76 = sub_16F5828(v78);
      *(a1 + 320) = v76;
    }

    if (*(a2 + 320))
    {
      v79 = *(a2 + 320);
    }

    else
    {
      v79 = &off_277E5E8;
    }

    sub_16E527C(v76, v79);
  }

LABEL_70:
  if ((v54 & 0x3F00) == 0)
  {
    goto LABEL_79;
  }

  if ((v54 & 0x100) != 0)
  {
    *(a1 + 328) = *(a2 + 328);
    if ((v54 & 0x200) == 0)
    {
LABEL_73:
      if ((v54 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_85;
    }
  }

  else if ((v54 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(a1 + 336) = *(a2 + 336);
  if ((v54 & 0x400) == 0)
  {
LABEL_74:
    if ((v54 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(a1 + 340) = *(a2 + 340);
  if ((v54 & 0x800) == 0)
  {
LABEL_75:
    if ((v54 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

LABEL_87:
    *(a1 + 342) = *(a2 + 342);
    if ((v54 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_86:
  *(a1 + 341) = *(a2 + 341);
  if ((v54 & 0x1000) != 0)
  {
    goto LABEL_87;
  }

LABEL_76:
  if ((v54 & 0x2000) != 0)
  {
LABEL_77:
    *(a1 + 344) = *(a2 + 344);
  }

LABEL_78:
  *(a1 + 16) |= v54;
LABEL_79:
  v80 = *(a2 + 8);
  if (v80)
  {

    sub_1957EF4((a1 + 8), (v80 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1536A78(uint64_t a1)
{
  v2 = *(a1 + 104);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16EE9E0(*(*(a1 + 112) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 152);
  while (v5 >= 1)
  {
    v6 = *(*(a1 + 160) + 8 * v5--);
    if ((~*(v6 + 16) & 5) != 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 176);
  while (v7 >= 1)
  {
    v8 = *(*(a1 + 184) + 8 * v7--);
    if ((~*(v8 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 200);
  while (v9 >= 1)
  {
    v10 = *(*(a1 + 208) + 8 * v9--);
    if ((~*(v10 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 0x80) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 320));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1536B70(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26EC9C0;
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

void sub_1536BEC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1536C1C(void *a1)
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

void sub_1536C90(void *a1)
{
  sub_1536C1C(a1);

  operator delete();
}

uint64_t sub_1536CC8(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
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

char *sub_1536CEC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_33;
      }

      v5 |= 1u;
      v19 = v7 + 1;
      v18 = *v7;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_27:
        v35 = v19;
        *(a1 + 24) = v18 != 0;
        goto LABEL_44;
      }

      v31 = sub_19587DC(v7, v18);
      v35 = v31;
      *(a1 + 24) = v32 != 0;
      if (!v31)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_33;
      }

      v5 |= 2u;
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
        v35 = v14;
        *(a1 + 25) = v13 != 0;
        goto LABEL_44;
      }

      v29 = sub_19587DC(v7, v13);
      v35 = v29;
      *(a1 + 25) = v30 != 0;
      if (!v29)
      {
        goto LABEL_57;
      }
    }

LABEL_44:
    if (sub_195ADC0(a3, &v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_33;
    }

    v5 |= 4u;
    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_32:
      v35 = v22;
      *(a1 + 26) = v21 != 0;
      goto LABEL_44;
    }

    v33 = sub_19587DC(v7, v21);
    v35 = v33;
    *(a1 + 26) = v34 != 0;
    if (!v33)
    {
      goto LABEL_57;
    }

    goto LABEL_44;
  }

  if (v11 == 4 && v8 == 32)
  {
    v5 |= 8u;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80000000) != 0)
    {
      v16 = (v7[1] << 7) + v16 - 128;
      if (v7[1] < 0)
      {
        v27 = sub_19587DC(v7, v16);
        v35 = v27;
        *(a1 + 28) = v28;
        if (!v27)
        {
          goto LABEL_57;
        }

        goto LABEL_44;
      }

      v17 = v7 + 2;
    }

    else
    {
      v17 = v7 + 1;
    }

    v35 = v17;
    *(a1 + 28) = v16;
    goto LABEL_44;
  }

LABEL_33:
  if (v8)
  {
    v24 = (v8 & 7) == 4;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v7 = v35;
    }

    v35 = sub_1952690(v8, v26, v7, a3);
    if (!v35)
    {
      goto LABEL_57;
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_57:
  v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

char *sub_1536FD4(uint64_t a1, char *__dst, void *a3)
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
    __dst += 2;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v9 = *(a1 + 26);
      *__dst = 24;
      __dst[1] = v9;
      __dst += 2;
      if ((v5 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
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

  v8 = *(a1 + 25);
  *__dst = 16;
  __dst[1] = v8;
  __dst += 2;
  if ((v5 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
LABEL_5:
    v6 = __dst;
    goto LABEL_22;
  }

LABEL_15:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 28);
  *__dst = 32;
  __dst[1] = v10;
  if (v10 > 0x7F)
  {
    __dst[1] = v10 | 0x80;
    v11 = v10 >> 7;
    __dst[2] = v10 >> 7;
    v6 = __dst + 3;
    if (v10 >= 0x4000)
    {
      LOBYTE(v12) = __dst[2];
      do
      {
        *(v6 - 1) = v12 | 0x80;
        v12 = v11 >> 7;
        *v6++ = v11 >> 7;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_22:
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

  if (*a3 - v6 >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_15371A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    v2 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2u);
    if ((v1 & 8) != 0)
    {
      v3 = *(a1 + 28);
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

std::string *sub_1537234(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      result[1].__r_.__value_.__s.__data_[2] = *(a2 + 26);
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

  result[1].__r_.__value_.__s.__data_[1] = *(a2 + 25);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
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

uint64_t sub_15372C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ECA40;
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

void sub_153733C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_153736C(void *a1)
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

void sub_15373E0(void *a1)
{
  sub_153736C(a1);

  operator delete();
}

uint64_t sub_1537418(uint64_t a1)
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

char *sub_1537430(uint64_t a1, char *a2, int32x2_t *a3)
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
      v25 = v16;
      *(a1 + 25) = v15 != 0;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 25) = v22 != 0;
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
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18 != 0;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
    v25 = v23;
    *(a1 + 24) = v24 != 0;
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

char *sub_1537634(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 25);
    *v4 = 16;
    v4[1] = v8;
    v4 += 2;
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

uint64_t sub_153774C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2u);
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

uint64_t sub_15377AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ECAC0;
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

void sub_1537828(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1537858(void *a1)
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

void sub_15378CC(void *a1)
{
  sub_1537858(a1);

  operator delete();
}

uint64_t sub_1537904(uint64_t a1)
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

char *sub_153791C(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1537AA0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1537B80(uint64_t a1)
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

uint64_t sub_1537BD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ECB40;
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

void sub_1537C4C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1537C7C(void *a1)
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

void sub_1537CF0(void *a1)
{
  sub_1537C7C(a1);

  operator delete();
}

uint64_t sub_1537D28(uint64_t a1)
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

char *sub_1537D40(uint64_t a1, char *a2, int32x2_t *a3)
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
      v25 = v16;
      *(a1 + 25) = v15 != 0;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 25) = v22 != 0;
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
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18 != 0;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
    v25 = v23;
    *(a1 + 24) = v24 != 0;
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

char *sub_1537F44(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 25);
    *v4 = 16;
    v4[1] = v8;
    v4 += 2;
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

uint64_t sub_153805C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2u);
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

double sub_15380BC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26ECBC0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0uLL;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = &qword_278E990;
  *(a1 + 112) = &qword_278E990;
  *(a1 + 120) = &qword_278E990;
  *(a1 + 128) = &qword_278E990;
  *(a1 + 136) = &qword_278E990;
  *(a1 + 144) = &qword_278E990;
  *(a1 + 152) = &qword_278E990;
  *(a1 + 160) = &qword_278E990;
  *(a1 + 168) = &qword_278E990;
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 276) = xmmword_23365D0;
  *(a1 + 292) = 7;
  *&result = 0x300000001;
  *(a1 + 296) = 0x300000001;
  return result;
}

uint64_t sub_1538164(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ECBC0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = *(a2 + 48);
    v8 = sub_19592E8(a1 + 32, *(a2 + 40));
    sub_1201B48(v5, v8, (v7 + 8), v6, **(a1 + 48) - *(a1 + 40));
    v9 = *(a1 + 40) + v6;
    *(a1 + 40) = v9;
    v10 = *(a1 + 48);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v11 = *(a2 + 56);
  if (v11)
  {
    sub_1958E5C((a1 + 56), v11);
    v12 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy(v12, *(a2 + 64), 4 * *(a2 + 56));
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v13 = *(a2 + 72);
  if (v13)
  {
    sub_1958E5C((a1 + 72), v13);
    v14 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy(v14, *(a2 + 80), 4 * *(a2 + 72));
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v15 = *(a2 + 88);
  if (v15)
  {
    sub_1958E5C((a1 + 88), v15);
    v16 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy(v16, *(a2 + 96), 4 * *(a2 + 88));
  }

  v17 = *(a2 + 8);
  if (v17)
  {
    sub_1957EF4(v4, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 104) = &qword_278E990;
  v18 = *(a2 + 16);
  if (v18)
  {
    v19 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 104), (*(a2 + 104) & 0xFFFFFFFFFFFFFFFELL), v19);
    v18 = *(a2 + 16);
  }

  *(a1 + 112) = &qword_278E990;
  if ((v18 & 2) != 0)
  {
    v20 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 112), (*(a2 + 112) & 0xFFFFFFFFFFFFFFFELL), v20);
    v18 = *(a2 + 16);
  }

  *(a1 + 120) = &qword_278E990;
  if ((v18 & 4) != 0)
  {
    v21 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 120), (*(a2 + 120) & 0xFFFFFFFFFFFFFFFELL), v21);
    v18 = *(a2 + 16);
  }

  *(a1 + 128) = &qword_278E990;
  if ((v18 & 8) != 0)
  {
    v22 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 128), (*(a2 + 128) & 0xFFFFFFFFFFFFFFFELL), v22);
    v18 = *(a2 + 16);
  }

  *(a1 + 136) = &qword_278E990;
  if ((v18 & 0x10) != 0)
  {
    v23 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 136), (*(a2 + 136) & 0xFFFFFFFFFFFFFFFELL), v23);
    v18 = *(a2 + 16);
  }

  *(a1 + 144) = &qword_278E990;
  if ((v18 & 0x20) != 0)
  {
    v24 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 144), (*(a2 + 144) & 0xFFFFFFFFFFFFFFFELL), v24);
    v18 = *(a2 + 16);
  }

  *(a1 + 152) = &qword_278E990;
  if ((v18 & 0x40) != 0)
  {
    v25 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v25 = *v25;
    }

    sub_194EA1C((a1 + 152), (*(a2 + 152) & 0xFFFFFFFFFFFFFFFELL), v25);
    v18 = *(a2 + 16);
  }

  *(a1 + 160) = &qword_278E990;
  if ((v18 & 0x80) != 0)
  {
    v26 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 160), (*(a2 + 160) & 0xFFFFFFFFFFFFFFFELL), v26);
    v18 = *(a2 + 16);
  }

  *(a1 + 168) = &qword_278E990;
  if ((v18 & 0x100) != 0)
  {
    v27 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 168), (*(a2 + 168) & 0xFFFFFFFFFFFFFFFELL), v27);
    v18 = *(a2 + 16);
  }

  if ((v18 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 176) = 0;
  if ((v18 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  if ((v18 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 192) = 0;
  if ((v18 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 200) = 0;
  if ((v18 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 208) = 0;
  if ((v18 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 216) = 0;
  if ((v18 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = *(a2 + 232);
  v28 = *(a2 + 248);
  v29 = *(a2 + 264);
  v30 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 264) = v29;
  *(a1 + 280) = v30;
  *(a1 + 248) = v28;
  return a1;
}

void *sub_153875C(void *a1)
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

  sub_1538800(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 11));
  sub_1956ABC((a1 + 9));
  sub_1956ABC((a1 + 7));
  sub_1956AFC(a1 + 4);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1538800(uint64_t a1)
{
  v3 = *(a1 + 104);
  v2 = (a1 + 104);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C((a1 + 112));
  }

  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C((a1 + 120));
  }

  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C((a1 + 128));
  }

  if (*(a1 + 136) != &qword_278E990)
  {
    sub_194E89C((a1 + 136));
  }

  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C((a1 + 144));
  }

  if (*(a1 + 152) != &qword_278E990)
  {
    sub_194E89C((a1 + 152));
  }

  if (*(a1 + 160) != &qword_278E990)
  {
    sub_194E89C((a1 + 160));
  }

  result = (a1 + 168);
  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2776700)
  {
    v5 = *(a1 + 176);
    if (v5)
    {
      sub_1536C1C(v5);
      operator delete();
    }

    v6 = *(a1 + 184);
    if (v6)
    {
      sub_16F2FF4(v6);
      operator delete();
    }

    v7 = *(a1 + 192);
    if (v7)
    {
      sub_16F285C(v7);
      operator delete();
    }

    v8 = *(a1 + 200);
    if (v8)
    {
      sub_16F4484(v8);
      operator delete();
    }

    v9 = *(a1 + 208);
    if (v9)
    {
      sub_153736C(v9);
      operator delete();
    }

    v10 = *(a1 + 216);
    if (v10)
    {
      sub_1537858(v10);
      operator delete();
    }

    result = *(a1 + 224);
    if (result)
    {
      sub_1537C7C(result);

      operator delete();
    }
  }

  return result;
}

void sub_15389DC(void *a1)
{
  sub_153875C(a1);

  operator delete();
}

char *sub_1538BB4(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), a2);
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

  v4 = sub_128AEEC(a3, 2, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  if ((*(a1 + 23) & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 280);
    *v4 = 32;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v7 - 1) = v4 | 0x80;
          v4 = (v9 >> 7);
          *v7++ = v9 >> 7;
          v10 = v9 >> 14;
          v9 >>= 7;
        }

        while (v10);
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

  v11 = *(a1 + 16);
  if ((v11 & 0x10000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 232);
    *v7 = 40;
    v7[1] = v12;
    v7 += 2;
  }

  v13 = *(a1 + 40);
  if (v13 >= 1)
  {
    v14 = 8;
    do
    {
      v15 = *(*(a1 + 48) + v14);
      v16 = *(v15 + 23);
      if (v16 < 0 && (v16 = v15[1], v16 > 127) || (*a3 - v7 + 14) < v16)
      {
        v7 = sub_1957480(a3, 6, v15, v7);
      }

      else
      {
        *v7 = 50;
        v7[1] = v16;
        if (*(v15 + 23) < 0)
        {
          v15 = *v15;
        }

        v17 = v7 + 2;
        memcpy(v7 + 2, v15, v16);
        v7 = &v17[v16];
      }

      v14 += 8;
      --v13;
    }

    while (v13);
  }

  if ((v11 & 8) != 0)
  {
    v7 = sub_128AEEC(a3, 7, (*(a1 + 128) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  v18 = *(a1 + 20);
  if ((v18 & 0x8000000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v20 = *(a1 + 284);
    *v7 = 64;
    v7[1] = v20;
    if (v20 > 0x7F)
    {
      v7[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v7[2] = v20 >> 7;
      v19 = v7 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v7[2];
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
      v19 = v7 + 2;
    }
  }

  else
  {
    v19 = v7;
  }

  if ((v18 & 0x10000000) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 288);
    *v19 = 72;
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
          v19 = (v26 >> 7);
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

  if ((v18 & 0x20000000) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 292);
    *v24 = 80;
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

  v33 = *(a1 + 16);
  if ((v33 & 0x10) != 0)
  {
    v28 = sub_128AEEC(a3, 11, (*(a1 + 136) & 0xFFFFFFFFFFFFFFFELL), v28);
    if ((v33 & 0x40000) == 0)
    {
LABEL_63:
      if ((v33 & 0x80000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    }
  }

  else if ((v33 & 0x40000) == 0)
  {
    goto LABEL_63;
  }

  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v34 = *(a1 + 234);
  *v28 = 96;
  v28[1] = v34;
  v28 += 2;
  if ((v33 & 0x80000) != 0)
  {
LABEL_69:
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v35 = *(a1 + 235);
    *v28 = 104;
    v28[1] = v35;
    v28 += 2;
  }

LABEL_72:
  if ((*(a1 + 23) & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v37 = *(a1 + 296);
    *v28 = 112;
    v28[1] = v37;
    if (v37 > 0x7F)
    {
      v28[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v28[2] = v37 >> 7;
      v36 = v28 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v36 - 1) = v28 | 0x80;
          v28 = (v38 >> 7);
          *v36++ = v38 >> 7;
          v39 = v38 >> 14;
          v38 >>= 7;
        }

        while (v39);
      }
    }

    else
    {
      v36 = v28 + 2;
    }
  }

  else
  {
    v36 = v28;
  }

  v40 = *(a1 + 16);
  if ((v40 & 0x200) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v41 = *(a1 + 176);
    *v36 = 386;
    v42 = *(v41 + 20);
    v36[2] = v42;
    if (v42 > 0x7F)
    {
      v43 = sub_19575D0(v42, v36 + 2);
    }

    else
    {
      v43 = v36 + 3;
    }

    v36 = sub_1536FD4(v41, v43, a3);
    if ((v40 & 0x100000) == 0)
    {
LABEL_83:
      if ((v40 & 0x200000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_101;
    }
  }

  else if ((v40 & 0x100000) == 0)
  {
    goto LABEL_83;
  }

  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v44 = *(a1 + 236);
  *v36 = 392;
  v36[2] = v44;
  v36 += 3;
  if ((v40 & 0x200000) == 0)
  {
LABEL_84:
    if ((v40 & 0x20) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_104;
  }

LABEL_101:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v45 = *(a1 + 237);
  *v36 = 400;
  v36[2] = v45;
  v36 += 3;
  if ((v40 & 0x20) == 0)
  {
LABEL_85:
    if ((v40 & 0x400000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_105;
  }

LABEL_104:
  v36 = sub_128AEEC(a3, 19, (*(a1 + 144) & 0xFFFFFFFFFFFFFFFELL), v36);
  if ((v40 & 0x400000) == 0)
  {
LABEL_86:
    if ((v40 & 0x800000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_108;
  }

LABEL_105:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v46 = *(a1 + 238);
  *v36 = 416;
  v36[2] = v46;
  v36 += 3;
  if ((v40 & 0x800000) == 0)
  {
LABEL_87:
    if ((v40 & 0x1000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v47 = *(a1 + 239);
  *v36 = 424;
  v36[2] = v47;
  v36 += 3;
  if ((v40 & 0x1000000) == 0)
  {
LABEL_88:
    if ((v40 & 0x20000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_114;
  }

LABEL_111:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v48 = *(a1 + 240);
  *v36 = 432;
  v36[2] = v48;
  v36 += 3;
  if ((v40 & 0x20000) == 0)
  {
LABEL_89:
    if ((v40 & 0x400) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_117;
  }

LABEL_114:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v49 = *(a1 + 233);
  *v36 = 440;
  v36[2] = v49;
  v36 += 3;
  if ((v40 & 0x400) == 0)
  {
LABEL_90:
    if ((v40 & 0x800) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_123;
  }

LABEL_117:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v50 = *(a1 + 184);
  *v36 = 450;
  v51 = *(v50 + 44);
  v36[2] = v51;
  if (v51 > 0x7F)
  {
    v52 = sub_19575D0(v51, v36 + 2);
  }

  else
  {
    v52 = v36 + 3;
  }

  v36 = sub_16F32C8(v50, v52, a3);
  if ((v40 & 0x800) != 0)
  {
LABEL_123:
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v53 = *(a1 + 192);
    *v36 = 458;
    v54 = *(v53 + 44);
    v36[2] = v54;
    if (v54 > 0x7F)
    {
      v55 = sub_19575D0(v54, v36 + 2);
    }

    else
    {
      v55 = v36 + 3;
    }

    v36 = sub_16F2AE0(v53, v55, a3);
  }

LABEL_129:
  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v57 = *(a1 + 300);
    *v36 = 464;
    v36[2] = v57;
    if (v57 > 0x7F)
    {
      v36[2] = v57 | 0x80;
      v58 = v57 >> 7;
      v36[3] = v57 >> 7;
      v56 = v36 + 4;
      if (v57 >= 0x4000)
      {
        LOBYTE(v59) = v36[3];
        do
        {
          *(v56 - 1) = v59 | 0x80;
          v59 = v58 >> 7;
          *v56++ = v58 >> 7;
          v60 = v58 >> 14;
          v58 >>= 7;
        }

        while (v60);
      }
    }

    else
    {
      v56 = v36 + 3;
    }
  }

  else
  {
    v56 = v36;
  }

  v61 = *(a1 + 56);
  if (v61 < 1)
  {
    v64 = v56;
  }

  else
  {
    for (i = 0; i != v61; ++i)
    {
      if (*a3 <= v56)
      {
        v56 = sub_225EB68(a3, v56);
      }

      v63 = *(*(a1 + 64) + 4 * i);
      *v56 = 472;
      v56[2] = v63;
      if (v63 > 0x7F)
      {
        v56[2] = v63 | 0x80;
        v65 = v63 >> 7;
        v56[3] = v63 >> 7;
        v64 = v56 + 4;
        if (v63 >= 0x4000)
        {
          LOBYTE(v66) = v56[3];
          do
          {
            *(v64 - 1) = v66 | 0x80;
            v66 = v65 >> 7;
            *v64++ = v65 >> 7;
            v67 = v65 >> 14;
            v65 >>= 7;
          }

          while (v67);
        }
      }

      else
      {
        v64 = v56 + 3;
      }

      v56 = v64;
    }
  }

  v68 = *(a1 + 16);
  if ((v68 & 0x2000000) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v69 = *(a1 + 241);
    *v64 = 480;
    v64[2] = v69;
    v64 += 3;
    if ((v68 & 0x4000000) == 0)
    {
LABEL_152:
      if ((v68 & 0x8000000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_166;
    }
  }

  else if ((v68 & 0x4000000) == 0)
  {
    goto LABEL_152;
  }

  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v70 = *(a1 + 242);
  *v64 = 488;
  v64[2] = v70;
  v64 += 3;
  if ((v68 & 0x8000000) == 0)
  {
LABEL_153:
    if ((v68 & 0x1000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_169;
  }

LABEL_166:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v71 = *(a1 + 243);
  *v64 = 496;
  v64[2] = v71;
  v64 += 3;
  if ((v68 & 0x1000) == 0)
  {
LABEL_154:
    if ((v68 & 0x40) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_175;
  }

LABEL_169:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v72 = *(a1 + 200);
  *v64 = 506;
  v73 = *(v72 + 20);
  v64[2] = v73;
  if (v73 > 0x7F)
  {
    v74 = sub_19575D0(v73, v64 + 2);
  }

  else
  {
    v74 = v64 + 3;
  }

  v64 = sub_16F47A4(v72, v74, a3);
  if ((v68 & 0x40) == 0)
  {
LABEL_155:
    if ((v68 & 0x10000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_176;
  }

LABEL_175:
  v64 = sub_128AEEC(a3, 32, (*(a1 + 152) & 0xFFFFFFFFFFFFFFFELL), v64);
  if ((v68 & 0x10000000) == 0)
  {
LABEL_156:
    if ((v68 & 0x20000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_179;
  }

LABEL_176:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v75 = *(a1 + 244);
  *v64 = 648;
  v64[2] = v75;
  v64 += 3;
  if ((v68 & 0x20000000) == 0)
  {
LABEL_157:
    if ((v68 & 0x40000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_182;
  }

LABEL_179:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v76 = *(a1 + 245);
  *v64 = 656;
  v64[2] = v76;
  v64 += 3;
  if ((v68 & 0x40000000) == 0)
  {
LABEL_158:
    if ((v68 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_185;
  }

LABEL_182:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v77 = *(a1 + 246);
  *v64 = 664;
  v64[2] = v77;
  v64 += 3;
  if (v68 < 0)
  {
LABEL_185:
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v78 = *(a1 + 247);
    *v64 = 672;
    v64[2] = v78;
    v64 += 3;
  }

LABEL_188:
  if (*(a1 + 20))
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v79 = *(a1 + 248);
    *v64 = 680;
    v64[2] = v79;
    v64 += 3;
  }

  if ((*(a1 + 16) & 0x80) != 0)
  {
    v64 = sub_128AEEC(a3, 38, (*(a1 + 160) & 0xFFFFFFFFFFFFFFFELL), v64);
  }

  v80 = *(a1 + 20);
  if ((v80 & 2) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v81 = *(a1 + 249);
    *v64 = 696;
    v64[2] = v81;
    v64 += 3;
  }

  if ((v80 & 4) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v82 = *(a1 + 250);
    *v64 = 704;
    v64[2] = v82;
    v64 += 3;
  }

  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v83 = *(a1 + 208);
    *v64 = 714;
    v84 = *(v83 + 20);
    v64[2] = v84;
    if (v84 > 0x7F)
    {
      v85 = sub_19575D0(v84, v64 + 2);
    }

    else
    {
      v85 = v64 + 3;
    }

    v64 = sub_1537634(v83, v85, a3);
  }

  v86 = *(a1 + 20);
  if ((v86 & 8) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v87 = *(a1 + 251);
    *v64 = 720;
    v64[2] = v87;
    v64 += 3;
    if ((v86 & 0x10) == 0)
    {
LABEL_211:
      if ((v86 & 0x20) == 0)
      {
        goto LABEL_212;
      }

      goto LABEL_226;
    }
  }

  else if ((v86 & 0x10) == 0)
  {
    goto LABEL_211;
  }

  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v88 = *(a1 + 252);
  *v64 = 728;
  v64[2] = v88;
  v64 += 3;
  if ((v86 & 0x20) == 0)
  {
LABEL_212:
    if ((v86 & 0x40) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_229;
  }

LABEL_226:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v89 = *(a1 + 253);
  *v64 = 736;
  v64[2] = v89;
  v64 += 3;
  if ((v86 & 0x40) == 0)
  {
LABEL_213:
    if ((v86 & 0x80) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_232;
  }

LABEL_229:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v90 = *(a1 + 254);
  *v64 = 744;
  v64[2] = v90;
  v64 += 3;
  if ((v86 & 0x80) == 0)
  {
LABEL_214:
    if ((v86 & 0x100) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_235;
  }

LABEL_232:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v91 = *(a1 + 255);
  *v64 = 752;
  v64[2] = v91;
  v64 += 3;
  if ((v86 & 0x100) == 0)
  {
LABEL_215:
    if ((v86 & 0x200) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_238;
  }

LABEL_235:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v92 = *(a1 + 256);
  *v64 = 760;
  v64[2] = v92;
  v64 += 3;
  if ((v86 & 0x200) == 0)
  {
LABEL_216:
    if ((v86 & 0x400) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_241;
  }

LABEL_238:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v93 = *(a1 + 257);
  *v64 = 896;
  v64[2] = v93;
  v64 += 3;
  if ((v86 & 0x400) == 0)
  {
LABEL_217:
    if ((v86 & 0x800) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_244;
  }

LABEL_241:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v94 = *(a1 + 258);
  *v64 = 904;
  v64[2] = v94;
  v64 += 3;
  if ((v86 & 0x800) == 0)
  {
LABEL_218:
    if ((v86 & 0x1000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_247;
  }

LABEL_244:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v95 = *(a1 + 259);
  *v64 = 912;
  v64[2] = v95;
  v64 += 3;
  if ((v86 & 0x1000) != 0)
  {
LABEL_247:
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v96 = *(a1 + 260);
    *v64 = 920;
    v64[2] = v96;
    v64 += 3;
  }

LABEL_250:
  v97 = *(a1 + 72);
  if (v97 < 1)
  {
    v100 = v64;
  }

  else
  {
    for (j = 0; j != v97; ++j)
    {
      if (*a3 <= v64)
      {
        v64 = sub_225EB68(a3, v64);
      }

      v99 = *(*(a1 + 80) + 4 * j);
      *v64 = 928;
      v64[2] = v99;
      if (v99 > 0x7F)
      {
        v64[2] = v99 | 0x80;
        v101 = v99 >> 7;
        v64[3] = v99 >> 7;
        v100 = v64 + 4;
        if (v99 >= 0x4000)
        {
          LOBYTE(v102) = v64[3];
          do
          {
            *(v100 - 1) = v102 | 0x80;
            v102 = v101 >> 7;
            *v100++ = v101 >> 7;
            v103 = v101 >> 14;
            v101 >>= 7;
          }

          while (v103);
        }
      }

      else
      {
        v100 = v64 + 3;
      }

      v64 = v100;
    }
  }

  if ((v86 & 0x2000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v104 = *(a1 + 261);
    *v100 = 936;
    v100[2] = v104;
    v100 += 3;
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v105 = *(a1 + 216);
    *v100 = 946;
    v106 = *(v105 + 20);
    v100[2] = v106;
    if (v106 > 0x7F)
    {
      v107 = sub_19575D0(v106, v100 + 2);
    }

    else
    {
      v107 = v100 + 3;
    }

    v100 = sub_1537AA0(v105, v107, a3);
  }

  v108 = *(a1 + 20);
  if ((v108 & 0x2000000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v110 = *(a1 + 276);
    *v100 = 952;
    v100[2] = v110;
    if (v110 > 0x7F)
    {
      v100[2] = v110 | 0x80;
      v111 = v110 >> 7;
      v100[3] = v110 >> 7;
      v109 = v100 + 4;
      if (v110 >= 0x4000)
      {
        LOBYTE(v100) = v100[3];
        do
        {
          *(v109 - 1) = v100 | 0x80;
          v100 = (v111 >> 7);
          *v109++ = v111 >> 7;
          v112 = v111 >> 14;
          v111 >>= 7;
        }

        while (v112);
      }
    }

    else
    {
      v109 = v100 + 3;
    }
  }

  else
  {
    v109 = v100;
  }

  if ((v108 & 0x4000) != 0)
  {
    if (*a3 <= v109)
    {
      v109 = sub_225EB68(a3, v109);
    }

    v113 = *(a1 + 262);
    *v109 = 960;
    v109[2] = v113;
    v109 += 3;
    if ((v108 & 0x8000) == 0)
    {
LABEL_284:
      if ((v108 & 0x10000) == 0)
      {
        goto LABEL_285;
      }

      goto LABEL_296;
    }
  }

  else if ((v108 & 0x8000) == 0)
  {
    goto LABEL_284;
  }

  if (*a3 <= v109)
  {
    v109 = sub_225EB68(a3, v109);
  }

  v114 = *(a1 + 263);
  *v109 = 968;
  v109[2] = v114;
  v109 += 3;
  if ((v108 & 0x10000) == 0)
  {
LABEL_285:
    if ((v108 & 0x20000) == 0)
    {
      goto LABEL_286;
    }

    goto LABEL_299;
  }

LABEL_296:
  if (*a3 <= v109)
  {
    v109 = sub_225EB68(a3, v109);
  }

  v115 = *(a1 + 264);
  *v109 = 976;
  v109[2] = v115;
  v109 += 3;
  if ((v108 & 0x20000) == 0)
  {
LABEL_286:
    if ((v108 & 0x40000) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_302;
  }

LABEL_299:
  if (*a3 <= v109)
  {
    v109 = sub_225EB68(a3, v109);
  }

  v116 = *(a1 + 265);
  *v109 = 984;
  v109[2] = v116;
  v109 += 3;
  if ((v108 & 0x40000) == 0)
  {
LABEL_287:
    if ((v108 & 0x80000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_305;
  }

LABEL_302:
  if (*a3 <= v109)
  {
    v109 = sub_225EB68(a3, v109);
  }

  v117 = *(a1 + 266);
  *v109 = 992;
  v109[2] = v117;
  v109 += 3;
  if ((v108 & 0x80000) == 0)
  {
LABEL_288:
    if ((v108 & 0x200000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_308;
  }

LABEL_305:
  if (*a3 <= v109)
  {
    v109 = sub_225EB68(a3, v109);
  }

  v118 = *(a1 + 267);
  *v109 = 1000;
  v109[2] = v118;
  v109 += 3;
  if ((v108 & 0x200000) != 0)
  {
LABEL_308:
    if (*a3 <= v109)
    {
      v109 = sub_225EB68(a3, v109);
    }

    v119 = *(a1 + 269);
    *v109 = 1008;
    v109[2] = v119;
    v109 += 3;
  }

LABEL_311:
  v120 = *(a1 + 88);
  if (v120 < 1)
  {
    v123 = v109;
  }

  else
  {
    for (k = 0; k != v120; ++k)
    {
      if (*a3 <= v109)
      {
        v109 = sub_225EB68(a3, v109);
      }

      v122 = *(*(a1 + 96) + 4 * k);
      *v109 = 1016;
      v109[2] = v122;
      if (v122 > 0x7F)
      {
        v109[2] = v122 | 0x80;
        v124 = v122 >> 7;
        v109[3] = v122 >> 7;
        v123 = v109 + 4;
        if (v122 >= 0x4000)
        {
          LOBYTE(v125) = v109[3];
          do
          {
            *(v123 - 1) = v125 | 0x80;
            v125 = v124 >> 7;
            *v123++ = v124 >> 7;
            v126 = v124 >> 14;
            v124 >>= 7;
          }

          while (v126);
        }
      }

      else
      {
        v123 = v109 + 3;
      }

      v109 = v123;
    }
  }

  if ((v108 & 0x400000) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v127 = *(a1 + 270);
    *v123 = 1152;
    v123[2] = v127;
    v123 += 3;
  }

  if (*(a1 + 17))
  {
    v123 = sub_128AEEC(a3, 65, (*(a1 + 168) & 0xFFFFFFFFFFFFFFFELL), v123);
  }

  if ((*(a1 + 22) & 0x80) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v128 = *(a1 + 271);
    *v123 = 1168;
    v123[2] = v128;
    v123 += 3;
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v129 = *(a1 + 224);
    *v123 = 1178;
    v130 = *(v129 + 20);
    v123[2] = v130;
    if (v130 > 0x7F)
    {
      v131 = sub_19575D0(v130, v123 + 2);
    }

    else
    {
      v131 = v123 + 3;
    }

    v123 = sub_1537F44(v129, v131, a3);
  }

  v132 = *(a1 + 20);
  if ((v132 & 0x100000) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v133 = *(a1 + 268);
    *v123 = 1184;
    v123[2] = v133;
    v123 += 3;
  }

  if ((v132 & 0x1000000) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v134 = *(a1 + 272);
    *v123 = 1696;
    v123[2] = v134;
    v123 += 3;
  }

  v135 = *(a1 + 8);
  if ((v135 & 1) == 0)
  {
    return v123;
  }

  v137 = v135 & 0xFFFFFFFFFFFFFFFCLL;
  v138 = *(v137 + 31);
  if (v138 < 0)
  {
    v139 = *(v137 + 8);
    v138 = *(v137 + 16);
  }

  else
  {
    v139 = (v137 + 8);
  }

  if ((*a3 - v123) >= v138)
  {
    v140 = v138;
    memcpy(v123, v139, v138);
    v123 += v140;
    return v123;
  }

  return sub_1957130(a3, v139, v138, v123);
}

uint64_t sub_153A048(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 < 1)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v3 = (*(a1 + 48) + 8);
    v4 = *(a1 + 40);
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
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 64) + 4 * v9);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v10 += v12;
      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 80) + 4 * v14);
      if (v16 < 0)
      {
        v17 = 10;
      }

      else
      {
        v17 = (9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6;
      }

      v15 += v17;
      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = *(a1 + 88);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(a1 + 96) + 4 * v19);
      if (v21 < 0)
      {
        v22 = 10;
      }

      else
      {
        v22 = (9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6;
      }

      v20 += v22;
      ++v19;
    }

    while (v18 != v19);
  }

  else
  {
    v20 = 0;
  }

  v23 = v10 + v4 + v15 + 2 * (v13 + v8 + v18) + v20;
  v24 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_44;
  }

  if (v24)
  {
    v38 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(v38 + 23);
    v40 = *(v38 + 8);
    if ((v39 & 0x80u) == 0)
    {
      v40 = v39;
    }

    v23 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 2) == 0)
    {
LABEL_35:
      if ((v24 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_156;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_35;
  }

  v41 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v41 + 23);
  v43 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v43 = v42;
  }

  v23 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 4) == 0)
  {
LABEL_36:
    if ((v24 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_159;
  }

LABEL_156:
  v44 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v44 + 23);
  v46 = *(v44 + 8);
  if ((v45 & 0x80u) == 0)
  {
    v46 = v45;
  }

  v23 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 8) == 0)
  {
LABEL_37:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_162;
  }

LABEL_159:
  v47 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v48 = *(v47 + 23);
  v49 = *(v47 + 8);
  if ((v48 & 0x80u) == 0)
  {
    v49 = v48;
  }

  v23 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x10) == 0)
  {
LABEL_38:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_39;
    }

LABEL_165:
    v53 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    v54 = *(v53 + 23);
    v55 = *(v53 + 8);
    if ((v54 & 0x80u) == 0)
    {
      v55 = v54;
    }

    v23 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v24 & 0x40) == 0)
    {
LABEL_40:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    goto LABEL_168;
  }

LABEL_162:
  v50 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(v50 + 23);
  v52 = *(v50 + 8);
  if ((v51 & 0x80u) == 0)
  {
    v52 = v51;
  }

  v23 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x20) != 0)
  {
    goto LABEL_165;
  }

LABEL_39:
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_40;
  }

LABEL_168:
  v56 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  v57 = *(v56 + 23);
  v58 = *(v56 + 8);
  if ((v57 & 0x80u) == 0)
  {
    v58 = v57;
  }

  v23 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x80) != 0)
  {
LABEL_41:
    v25 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v25 + 23);
    v27 = *(v25 + 8);
    if ((v26 & 0x80u) == 0)
    {
      v27 = v26;
    }

    v23 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_44:
  if ((v24 & 0xFF00) == 0)
  {
    goto LABEL_54;
  }

  if ((v24 & 0x100) != 0)
  {
    v59 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    v60 = *(v59 + 23);
    v61 = *(v59 + 8);
    if ((v60 & 0x80u) == 0)
    {
      v61 = v60;
    }

    v23 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v24 & 0x200) == 0)
    {
LABEL_47:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_176;
    }
  }

  else if ((v24 & 0x200) == 0)
  {
    goto LABEL_47;
  }

  v62 = sub_15371A4(*(a1 + 176));
  v23 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x400) == 0)
  {
LABEL_48:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_177;
  }

LABEL_176:
  v63 = sub_16F3438(*(a1 + 184));
  v23 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x800) == 0)
  {
LABEL_49:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_178;
  }

LABEL_177:
  v64 = sub_16F2C64(*(a1 + 192));
  v23 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x1000) == 0)
  {
LABEL_50:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_179;
  }

LABEL_178:
  v65 = sub_16F4930(*(a1 + 200));
  v23 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x2000) == 0)
  {
LABEL_51:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_180;
  }

LABEL_179:
  v66 = sub_153774C(*(a1 + 208));
  v23 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x4000) == 0)
  {
LABEL_52:
    if ((v24 & 0x8000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_180:
  v67 = *(a1 + 216);
  v68 = 2 * (*(v67 + 16) & 1);
  v69 = *(v67 + 8);
  if (v69)
  {
    v82 = v69 & 0xFFFFFFFFFFFFFFFCLL;
    v83 = *((v69 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v83 < 0)
    {
      v83 = *(v82 + 16);
    }

    v68 += v83;
  }

  *(v67 + 20) = v68;
  v23 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x8000) != 0)
  {
LABEL_53:
    v28 = sub_153805C(*(a1 + 224));
    v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_54:
  if ((v24 & 0xFF0000) != 0)
  {
    v29 = v23 + ((v24 >> 15) & 2);
    if ((v24 & 0x20000) != 0)
    {
      v29 += 3;
    }

    v30 = v29 + ((v24 >> 18) & 2) + ((v24 >> 17) & 2);
    if ((v24 & 0x100000) != 0)
    {
      v30 += 3;
    }

    if ((v24 & 0x200000) != 0)
    {
      v30 += 3;
    }

    if ((v24 & 0x400000) != 0)
    {
      v30 += 3;
    }

    if ((v24 & 0x800000) != 0)
    {
      v23 = v30 + 3;
    }

    else
    {
      v23 = v30;
    }
  }

  if (BYTE3(v24))
  {
    v31 = v23 + 3;
    if ((v24 & 0x1000000) == 0)
    {
      v31 = v23;
    }

    if ((v24 & 0x2000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x4000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x8000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x10000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x20000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x40000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x80000000) == 0)
    {
      v23 = v31;
    }

    else
    {
      v23 = v31 + 3;
    }
  }

  v32 = *(a1 + 20);
  if (v32)
  {
    v33 = v23 + 3;
    if ((v32 & 1) == 0)
    {
      v33 = v23;
    }

    if ((v32 & 2) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 4) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 8) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 0x10) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 0x20) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 0x40) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 0x80) != 0)
    {
      v23 = v33 + 3;
    }

    else
    {
      v23 = v33;
    }
  }

  if ((v32 & 0xFF00) != 0)
  {
    v34 = v23 + 3;
    if ((v32 & 0x100) == 0)
    {
      v34 = v23;
    }

    if ((v32 & 0x200) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x400) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x800) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x1000) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x2000) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x4000) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x8000) != 0)
    {
      v23 = v34 + 3;
    }

    else
    {
      v23 = v34;
    }
  }

  if ((v32 & 0xFF0000) != 0)
  {
    v35 = v23 + 3;
    if ((v32 & 0x10000) == 0)
    {
      v35 = v23;
    }

    if ((v32 & 0x20000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x40000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x80000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x100000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x200000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x400000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x800000) != 0)
    {
      v23 = v35 + 3;
    }

    else
    {
      v23 = v35;
    }
  }

  if (!HIBYTE(v32))
  {
    goto LABEL_148;
  }

  if ((v32 & 0x1000000) != 0)
  {
    v23 += 3;
  }

  if ((v32 & 0x2000000) != 0)
  {
    v70 = *(a1 + 276);
    if (v70 < 0)
    {
      v71 = 12;
    }

    else
    {
      v71 = ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v23 += v71;
    if ((v32 & 0x4000000) == 0)
    {
LABEL_143:
      if ((v32 & 0x8000000) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_191;
    }
  }

  else if ((v32 & 0x4000000) == 0)
  {
    goto LABEL_143;
  }

  v72 = *(a1 + 280);
  if (v72 < 0)
  {
    v73 = 11;
  }

  else
  {
    v73 = ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v23 += v73;
  if ((v32 & 0x8000000) == 0)
  {
LABEL_144:
    if ((v32 & 0x10000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_192;
  }

LABEL_191:
  v23 += ((9 * (__clz(*(a1 + 284) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 0x10000000) == 0)
  {
LABEL_145:
    if ((v32 & 0x20000000) == 0)
    {
      goto LABEL_146;
    }

LABEL_196:
    v76 = *(a1 + 292);
    if (v76 < 0)
    {
      v77 = 11;
    }

    else
    {
      v77 = ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v23 += v77;
    if ((v32 & 0x40000000) == 0)
    {
LABEL_147:
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_204;
    }

    goto LABEL_200;
  }

LABEL_192:
  v74 = *(a1 + 288);
  if (v74 < 0)
  {
    v75 = 11;
  }

  else
  {
    v75 = ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v23 += v75;
  if ((v32 & 0x20000000) != 0)
  {
    goto LABEL_196;
  }

LABEL_146:
  if ((v32 & 0x40000000) == 0)
  {
    goto LABEL_147;
  }

LABEL_200:
  v78 = *(a1 + 296);
  if (v78 < 0)
  {
    v79 = 11;
  }

  else
  {
    v79 = ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v23 += v79;
  if ((v32 & 0x80000000) != 0)
  {
LABEL_204:
    v23 += ((9 * (__clz(*(a1 + 300) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_148:
  v36 = *(a1 + 8);
  if (v36)
  {
    v80 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v81 = *((v36 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v81 < 0)
    {
      v81 = *(v80 + 16);
    }

    v23 += v81;
  }

  *(a1 + 24) = v23;
  return v23;
}

uint64_t sub_153A9E0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26ECC40;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = 0;
  *(a1 + 71) = 0;
  return a1;
}

void sub_153AA54(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_153AA84(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26ECC40;
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

  v10 = *(a2 + 64);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 64) = v10;
  return a1;
}

void sub_153AB94(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_153ABD0(uint64_t a1)
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

void sub_153AC90(uint64_t a1)
{
  sub_153ABD0(a1);

  operator delete();
}

unsigned __int8 *sub_153ACC8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
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
  if ((v3 & 0x7C) != 0)
  {
    *(a1 + 71) = 0;
    *(a1 + 64) = 0;
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

uint64_t sub_153AD94(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          if (v11 != 3 || v8 != 26)
          {
            goto LABEL_61;
          }

          *(a1 + 40) |= 1u;
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v18 = (a1 + 48);
LABEL_44:
          v26 = sub_194DB04(v18, v17);
          v27 = sub_1958890(v26, *v43, a3);
LABEL_45:
          *v43 = v27;
          if (!v27)
          {
            goto LABEL_85;
          }

          goto LABEL_59;
        }

        if (v8 != 16)
        {
          goto LABEL_61;
        }

        v32 = v7 + 1;
        v31 = *v7;
        if (v31 < 0)
        {
          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if (v33 < 0)
          {
            *v43 = sub_19587DC(v7, v31);
            if (!*v43)
            {
              goto LABEL_85;
            }

            goto LABEL_57;
          }

          v32 = v7 + 2;
        }

        *v43 = v32;
LABEL_57:
        if (v31 > 6)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 40) |= 8u;
          *(a1 + 68) = v31;
        }

        goto LABEL_59;
      }

      if (v8 != 8)
      {
        goto LABEL_61;
      }

      v23 = v7 + 1;
      v22 = *v7;
      if (v22 < 0)
      {
        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          *v43 = sub_19587DC(v7, v22);
          if (!*v43)
          {
            goto LABEL_85;
          }

          goto LABEL_38;
        }

        v23 = v7 + 2;
      }

      *v43 = v23;
LABEL_38:
      if (v22 > 2)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 40) |= 4u;
        *(a1 + 64) = v22;
      }

      goto LABEL_59;
    }

    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_61;
      }

      v5 |= 0x20u;
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
        *v43 = v29;
        *(a1 + 73) = v28 != 0;
        goto LABEL_59;
      }

      v37 = sub_19587DC(v7, v28);
      *v43 = v37;
      *(a1 + 73) = v38 != 0;
      if (!v37)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_61;
      }

      v5 |= 0x40u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_32:
        *v43 = v20;
        *(a1 + 74) = v19 != 0;
        goto LABEL_59;
      }

      v41 = sub_19587DC(v7, v19);
      *v43 = v41;
      *(a1 + 74) = v42 != 0;
      if (!v41)
      {
        goto LABEL_85;
      }
    }

LABEL_59:
    if (sub_195ADC0(a3, v43, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 4)
  {
    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_61;
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
      *v43 = v13;
      *(a1 + 72) = v12 != 0;
      goto LABEL_59;
    }

    v39 = sub_19587DC(v7, v12);
    *v43 = v39;
    *(a1 + 72) = v40 != 0;
    if (!v39)
    {
      goto LABEL_85;
    }

    goto LABEL_59;
  }

  if (v8 == 34)
  {
    *(a1 + 40) |= 2u;
    v25 = *(a1 + 8);
    v17 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v17 = *v17;
    }

    v18 = (a1 + 56);
    goto LABEL_44;
  }

LABEL_61:
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
    if (v8 - 4000 > 0x63F)
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

      v27 = sub_1952690(v8, v36, v7, a3);
    }

    else
    {
      v27 = sub_19525AC((a1 + 16), v8, v7, &off_2776830, (a1 + 8), a3);
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_85:
  *v43 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v43;
}

char *sub_153B1D4(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
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
    if ((v5 & 2) == 0)
    {
LABEL_21:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_21;
  }

  v11 = sub_128AEEC(a3, 4, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 0x10) == 0)
  {
LABEL_22:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v15 = *(a1 + 72);
  *v11 = 40;
  v11[1] = v15;
  v11 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_23:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v16 = *(a1 + 73);
  *v11 = 48;
  v11[1] = v16;
  v11 += 2;
  if ((v5 & 0x40) != 0)
  {
LABEL_33:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 74);
    *v11 = 56;
    v11[1] = v17;
    v11 += 2;
  }

LABEL_36:
  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 500, 700, v11, a3);
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

uint64_t sub_153B4A4(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x7F) != 0)
  {
    if (v3)
    {
      v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      result += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_19;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    v11 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
LABEL_10:
        result += ((v3 >> 4) & 2) + ((v3 >> 3) & 2) + ((v3 >> 5) & 2);
        goto LABEL_11;
      }

LABEL_6:
      v4 = *(a1 + 68);
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v4 >= 0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 11;
      }

      result += v6;
      goto LABEL_10;
    }

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

    result += v15;
    if ((v3 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v16 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    result += v17;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_153B624(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x7F) != 0)
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
          goto LABEL_5;
        }

        goto LABEL_21;
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
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 68) = *(a2 + 68);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        *(a1 + 40) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 74) = *(a2 + 74);
      goto LABEL_10;
    }

LABEL_24:
    *(a1 + 73) = *(a2 + 73);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_153B780(void *a1)
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

void sub_153B7F4(void *a1)
{
  sub_153B780(a1);

  operator delete();
}

uint64_t sub_153B82C(uint64_t a1)
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

char *sub_153B850(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_153BA34(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_153BBE4(uint64_t a1)
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

void *sub_153BC98(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26ECD40;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void sub_153BD08(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_153BD38(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26ECD40;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144E1CC((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_153BE44(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_153BE94(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144E148(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_153BF1C(void *a1)
{
  sub_153BE94(a1);

  operator delete();
}

char *sub_153BF54(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v15 = v7 + 1;
    v14 = *v7;
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    v16 = *v15;
    v14 = (v16 << 7) + v14 - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_22:
      v27 = v15;
      *(a1 + 72) = v14;
      v5 = 1;
      goto LABEL_36;
    }

    v25 = sub_19587DC(v7, v14);
    v27 = v25;
    *(a1 + 72) = v26;
    v5 = 1;
    if (!v25)
    {
      goto LABEL_43;
    }

LABEL_36:
    if (sub_195ADC0(a3, &v27, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    v17 = v7 - 1;
    while (1)
    {
      v18 = v17 + 1;
      v27 = v17 + 1;
      v19 = *(a1 + 64);
      if (v19 && (v20 = *(a1 + 56), v20 < *v19))
      {
        *(a1 + 56) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = sub_15519F8(*(a1 + 48));
        v21 = sub_19593CC(a1 + 48, v22);
        v18 = v27;
      }

      v17 = sub_220BDA8(a3, v21, v18);
      v27 = v17;
      if (!v17)
      {
        goto LABEL_43;
      }

      if (*a3 <= v17 || *v17 != 10)
      {
        goto LABEL_36;
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
    if (v8 - 1600 > 0xF9F)
    {
      v23 = *(a1 + 8);
      if (v23)
      {
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v24 = sub_11F1920((a1 + 8));
        v7 = v27;
      }

      v13 = sub_1952690(v8, v24, v7, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v8, v7, &off_2776880, (a1 + 8), a3);
    }

    v27 = v13;
    if (!v13)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_43:
  v27 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v27;
}

char *sub_153C1A4(uint64_t a1, char *a2, unint64_t *a3)
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

      a2 = sub_153BA34(v8, v10, a3);
    }
  }

  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v12 = *(a1 + 72);
    *a2 = 16;
    a2[1] = v12;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      a2[2] = v12 >> 7;
      v11 = a2 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v11 - 1) = a2 | 0x80;
          a2 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = a2 + 2;
    }
  }

  else
  {
    v11 = a2;
  }

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 200, 700, v11, a3);
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

uint64_t sub_153C388(uint64_t a1)
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
      v9 = sub_153BBE4(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  if (*(a1 + 40))
  {
    v4 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

    v4 += v13;
  }

  *(a1 + 44) = v4;
  return v4;
}

void *sub_153C46C(void *a1)
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

void sub_153C4E8(void *a1)
{
  sub_153C46C(a1);

  operator delete();
}

uint64_t sub_153C520(uint64_t a1)
{
  *(a1 + 24) = 0;
  if ((*(a1 + 16) & 3) != 0)
  {
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

char *sub_153C548(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = v34 + 1;
    v10 = *v34;
    if (*v34 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(v34, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = v34 + 2;
      }
    }

    v34 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 == 3)
    {
      break;
    }

    if (v14 == 2)
    {
      if (v10 != 16)
      {
        goto LABEL_14;
      }

      v20 = v9 + 1;
      v19 = *v9;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v9 + 2;
          goto LABEL_27;
        }

        v34 = sub_19587DC(v9, v19);
        if (!v34)
        {
          goto LABEL_64;
        }
      }

      else
      {
LABEL_27:
        v34 = v20;
      }

      if (v19 > 5)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 44) = v19;
      }

      goto LABEL_52;
    }

    if (v14 != 1 || v10 != 8)
    {
      goto LABEL_14;
    }

    LODWORD(v30) = *v9;
    if ((v30 & 0x80000000) == 0)
    {
      v31 = v9 + 1;
LABEL_51:
      v34 = v31;
      *(a1 + 40) = v30;
      v6 = 1;
      goto LABEL_52;
    }

    v30 = (v9[1] << 7) + v30 - 128;
    if ((v9[1] & 0x80000000) == 0)
    {
      v31 = v9 + 2;
      goto LABEL_51;
    }

    v32 = sub_19587DC(v9, v30);
    v34 = v32;
    *(a1 + 40) = v33;
    v6 = 1;
    if (!v32)
    {
      goto LABEL_64;
    }

LABEL_52:
    if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v10 == 24)
  {
    v22 = v9 - 1;
    while (1)
    {
      v34 = v22 + 1;
      v23 = v22[1];
      v24 = v22 + 2;
      if (v23 < 0)
      {
        v25 = *v24;
        v26 = (v25 << 7) + v23;
        LODWORD(v23) = v26 - 128;
        if (v25 < 0)
        {
          v34 = sub_19587DC((v22 + 1), (v26 - 128));
          if (!v34)
          {
            goto LABEL_64;
          }

          LODWORD(v23) = v29;
          goto LABEL_36;
        }

        v24 = v22 + 3;
      }

      v34 = v24;
LABEL_36:
      if (v23 > 9)
      {
        sub_1313740();
      }

      else
      {
        v27 = *(a1 + 24);
        if (v27 == *(a1 + 28))
        {
          v28 = v27 + 1;
          sub_1958E5C((a1 + 24), v27 + 1);
          *(*(a1 + 32) + 4 * v27) = v23;
        }

        else
        {
          *(*(a1 + 32) + 4 * v27) = v23;
          v28 = v27 + 1;
        }

        *(a1 + 24) = v28;
      }

      v22 = v34;
      if (*a3 <= v34 || *v34 != 24)
      {
        goto LABEL_52;
      }
    }
  }

  if (v10 == 26)
  {
    *&v35 = a1 + 24;
    *(&v35 + 1) = sub_152B658;
    v36 = a1 + 8;
    v37 = 3;
    v18 = sub_1216588(a3, v9, &v35, v5);
    goto LABEL_21;
  }

LABEL_14:
  if (v10)
  {
    v16 = (v10 & 7) == 4;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (*v8)
    {
      v17 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v17 = sub_11F1920((a1 + 8));
      v9 = v34;
    }

    v18 = sub_1952690(v10, v17, v9, a3);
LABEL_21:
    v34 = v18;
    if (!v18)
    {
      goto LABEL_64;
    }

    goto LABEL_52;
  }

  if (v9)
  {
    a3[10].i32[0] = v10 - 1;
  }

  else
  {
LABEL_64:
    v34 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v34;
}

char *sub_153C87C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 40);
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

    v12 = *(a1 + 44);
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

      v17 = *(*(a1 + 32) + 4 * i);
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

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v18;
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

  if ((*a3 - v18) >= v25)
  {
    v27 = v25;
    memcpy(v18, v26, v25);
    v18 += v27;
    return v18;
  }

  return sub_1957130(a3, v26, v25, v18);
}