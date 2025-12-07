uint64_t sub_1480BE8(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
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
      v9 = sub_147EC84(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 72);
  v11 = v4 + v10;
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
      v16 = sub_147F86C(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 96);
  v18 = v11 + v17;
  if (v17 >= 1)
  {
    v19 = (*(a1 + 104) + 8);
    do
    {
      v20 = *v19++;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v18 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      --v17;
    }

    while (v17);
  }

  v23 = *(a1 + 16);
  if ((v23 & 0x1F) != 0)
  {
    if (v23)
    {
      v30 = sub_1458DB4(*(a1 + 112));
      v18 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v23 & 2) == 0)
      {
LABEL_21:
        if ((v23 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if ((v23 & 2) == 0)
    {
      goto LABEL_21;
    }

    v31 = sub_1458DB4(*(a1 + 120));
    v18 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 4) == 0)
    {
LABEL_23:
      v18 += (v23 >> 2) & 2;
      if ((v23 & 0x10) != 0)
      {
        v25 = *(a1 + 140);
        v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v25 >= 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 11;
        }

        v18 += v27;
      }

      goto LABEL_28;
    }

LABEL_22:
    v24 = sub_14B71B8(*(a1 + 128));
    v18 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_23;
  }

LABEL_28:
  v28 = *(a1 + 8);
  if (v28)
  {
    v32 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v33 < 0)
    {
      v33 = *(v32 + 16);
    }

    v18 += v33;
  }

  *(a1 + 20) = v18;
  return v18;
}

void sub_1480E2C(uint64_t result, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = (result + 24);
    v7 = *(result + 24);
    sub_1958E5C((result + 24), v7 + v5);
    v8 = *(result + 32);
    *v6 += *(a2 + 24);
    memcpy((v8 + 4 * v7), *(a2 + 32), 4 * *(a2 + 24));
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(result + 40, *(a2 + 48));
    sub_15666C4((result + 40), v11, (v10 + 8), v9, **(result + 56) - *(result + 48), v12);
    v13 = *(result + 48) + v9;
    *(result + 48) = v13;
    v14 = *(result + 56);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 72);
  if (v15)
  {
    v16 = *(a2 + 80);
    v17 = sub_19592E8(result + 64, *(a2 + 72));
    sub_1566750((result + 64), v17, (v16 + 8), v15, **(result + 80) - *(result + 72), v18);
    v19 = *(result + 72) + v15;
    *(result + 72) = v19;
    v20 = *(result + 80);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 96);
  if (v21)
  {
    v22 = *(a2 + 104);
    v23 = sub_19592E8(result + 88, *(a2 + 96));
    sub_1201B48((result + 88), v23, (v22 + 8), v21, **(result + 104) - *(result + 96));
    v24 = *(result + 96) + v21;
    *(result + 96) = v24;
    v25 = *(result + 104);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 16);
  if ((v26 & 0x1F) != 0)
  {
    if (v26)
    {
      *(result + 16) |= 1u;
      v28 = *(result + 112);
      if (!v28)
      {
        v29 = *(result + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        sub_14BAE64(v30);
        *(result + 112) = v28;
      }

      if (*(a2 + 112))
      {
        v31 = *(a2 + 112);
      }

      else
      {
        v31 = &off_2771738;
      }

      sub_144EF20(v28, v31);
      if ((v26 & 2) == 0)
      {
LABEL_15:
        if ((v26 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_40;
      }
    }

    else if ((v26 & 2) == 0)
    {
      goto LABEL_15;
    }

    *(result + 16) |= 2u;
    v32 = *(result + 120);
    if (!v32)
    {
      v33 = *(result + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      sub_14BAE64(v34);
      *(result + 120) = v32;
    }

    if (*(a2 + 120))
    {
      v35 = *(a2 + 120);
    }

    else
    {
      v35 = &off_2771738;
    }

    sub_144EF20(v32, v35);
    if ((v26 & 4) == 0)
    {
LABEL_16:
      if ((v26 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }

LABEL_40:
    *(result + 16) |= 4u;
    v36 = *(result + 128);
    if (!v36)
    {
      v37 = *(result + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_14BF484(v38);
      *(result + 128) = v36;
    }

    if (*(a2 + 128))
    {
      v39 = *(a2 + 128);
    }

    else
    {
      v39 = &off_2773AC8;
    }

    sub_144F194(v36, v39);
    if ((v26 & 8) == 0)
    {
LABEL_17:
      if ((v26 & 0x10) == 0)
      {
LABEL_19:
        *(result + 16) |= v26;
        goto LABEL_20;
      }

LABEL_18:
      *(result + 140) = *(a2 + 140);
      goto LABEL_19;
    }

LABEL_48:
    *(result + 136) = *(a2 + 136);
    if ((v26 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  v27 = *(a2 + 8);
  if (v27)
  {

    sub_1957EF4((result + 8), (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1481104(uint64_t a1)
{
  v2 = *(a1 + 48);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_147F058(*(*(a1 + 56) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_148119C(a1 + 64);
  if (result)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      result = sub_144F560(*(a1 + 112));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 16);
    }

    if ((v6 & 2) != 0)
    {
      result = sub_144F560(*(a1 + 120));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 16);
    }

    if ((v6 & 4) == 0)
    {
      return 1;
    }

    result = sub_144F5D0(*(a1 + 128));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_148119C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_147F058(*(v3 + 48));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1481208(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E5840;
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
    sub_15667DC((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32), v8);
    v9 = *(a1 + 32) + v5;
    *(a1 + 32) = v9;
    v10 = *(a1 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(a2 + 64);
    v13 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_15667DC((a1 + 48), v13, (v12 + 8), v11, **(a1 + 64) - *(a1 + 56), v14);
    v15 = *(a1 + 56) + v11;
    *(a1 + 56) = v15;
    v16 = *(a1 + 64);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v17 = *(a2 + 80);
  if (v17)
  {
    v18 = *(a2 + 88);
    v19 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_15667DC((a1 + 72), v19, (v18 + 8), v17, **(a1 + 88) - *(a1 + 80), v20);
    v21 = *(a1 + 80) + v17;
    *(a1 + 80) = v21;
    v22 = *(a1 + 88);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 8);
  if (v23)
  {
    sub_1957EF4(v4, (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v24 = *(a2 + 16);
  if (v24)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v24 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v24 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  return a1;
}

uint64_t sub_1481514(uint64_t a1)
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

  if (a1 != &off_27725C0)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      sub_14B3C28(v5);
      operator delete();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      sub_147FE94(v6);
      operator delete();
    }

    v7 = *(a1 + 112);
    if (v7)
    {
      sub_147FE94(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1564A40((a1 + 72));
  sub_1564A40((a1 + 48));
  sub_1564A40((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1481628(uint64_t a1)
{
  sub_1481514(a1);

  operator delete();
}

uint64_t sub_1481660(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_147FFE4(v4);
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
      result = sub_147FFE4(v7);
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
      result = sub_147FFE4(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 7) != 0)
  {
    if (v11)
    {
      result = sub_148176C(*(v1 + 96));
      if ((v11 & 2) == 0)
      {
LABEL_16:
        if ((v11 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

    result = sub_147FFE4(*(v1 + 104));
    if ((v11 & 4) != 0)
    {
LABEL_17:
      result = sub_147FFE4(*(v1 + 112));
    }
  }

LABEL_18:
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_148176C(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_144E5CC(*(result + 40));
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

char *sub_14817CC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v44 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v44, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v44 + 1;
    v7 = *v44;
    if (*v44 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v44, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v44 + 2;
      }
    }

    v44 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 112);
          if (!v12)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            v12 = sub_14BCE94(v28);
            *(a1 + 112) = v12;
LABEL_47:
            v6 = v44;
          }

LABEL_48:
          v29 = sub_220E238(a3, v12, v6);
          goto LABEL_72;
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          v34 = v6 - 1;
          while (1)
          {
            v35 = v34 + 1;
            v44 = v34 + 1;
            v36 = *(a1 + 64);
            if (v36 && (v37 = *(a1 + 56), v37 < *v36))
            {
              *(a1 + 56) = v37 + 1;
              v38 = *&v36[2 * v37 + 2];
            }

            else
            {
              v39 = sub_14BCE94(*(a1 + 48));
              v38 = sub_19593CC(a1 + 48, v39);
              v35 = v44;
            }

            v34 = sub_220E238(a3, v38, v35);
            v44 = v34;
            if (!v34)
            {
              return 0;
            }

            if (*a3 <= v34 || *v34 != 42)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = v15 + 1;
          v44 = v15 + 1;
          v17 = *(a1 + 88);
          if (v17 && (v18 = *(a1 + 80), v18 < *v17))
          {
            *(a1 + 80) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_14BCE94(*(a1 + 72));
            v19 = sub_19593CC(a1 + 72, v20);
            v16 = v44;
          }

          v15 = sub_220E238(a3, v19, v16);
          v44 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 50)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        v21 = v6 - 1;
        while (1)
        {
          v22 = v21 + 1;
          v44 = v21 + 1;
          v23 = *(a1 + 40);
          if (v23 && (v24 = *(a1 + 32), v24 < *v23))
          {
            *(a1 + 32) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = sub_14BCE94(*(a1 + 24));
            v25 = sub_19593CC(a1 + 24, v26);
            v22 = v44;
          }

          v21 = sub_220E238(a3, v25, v22);
          v44 = v21;
          if (!v21)
          {
            return 0;
          }

          if (*a3 <= v21 || *v21 != 10)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v30 = *(a1 + 96);
        if (!v30)
        {
          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          sub_14BF2AC(v32);
          v30 = v33;
          *(a1 + 96) = v33;
          v6 = v44;
        }

        v29 = sub_220E2C8(a3, v30, v6);
        goto LABEL_72;
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 104);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_14BCE94(v14);
        *(a1 + 104) = v12;
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    if (v7)
    {
      v40 = (v7 & 7) == 4;
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v44;
      }

      return 0;
    }

    v41 = *(a1 + 8);
    if (v41)
    {
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v6 = v44;
    }

    v29 = sub_1952690(v7, v42, v6, a3);
LABEL_72:
    v44 = v29;
    if (!v29)
    {
      return 0;
    }

LABEL_73:
    ;
  }

  return v44;
}

char *sub_1481B84(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1480700(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 96);
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

    __dst = sub_14B3F58(v12, v14, a3);
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

  v15 = *(a1 + 104);
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

  __dst = sub_1480700(v15, v17, a3);
  if ((v11 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v18 = *(a1 + 112);
    *__dst = 34;
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

    __dst = sub_1480700(v18, v20, a3);
  }

LABEL_31:
  v21 = *(a1 + 56);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 64) + 8 * j + 8);
      *__dst = 42;
      v24 = *(v23 + 20);
      __dst[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, __dst + 1);
      }

      else
      {
        v25 = __dst + 2;
      }

      __dst = sub_1480700(v23, v25, a3);
    }
  }

  v26 = *(a1 + 80);
  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v28 = *(*(a1 + 88) + 8 * k + 8);
      *__dst = 50;
      v29 = *(v28 + 20);
      __dst[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, __dst + 1);
      }

      else
      {
        v30 = __dst + 2;
      }

      __dst = sub_1480700(v28, v30, a3);
    }
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return __dst;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if ((*a3 - __dst) >= v34)
  {
    v36 = v34;
    memcpy(__dst, v35, v34);
    __dst += v36;
    return __dst;
  }

  return sub_1957130(a3, v35, v34, __dst);
}

uint64_t sub_1481F08(uint64_t a1)
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
      v7 = sub_1480BE8(v6);
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
      v14 = sub_1480BE8(v13);
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
      v21 = sub_1480BE8(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 7) != 0)
  {
    if (v22)
    {
      v26 = sub_14B4110(*(a1 + 96));
      v16 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 2) == 0)
      {
LABEL_24:
        if ((v22 & 4) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_24;
    }

    v27 = sub_1480BE8(*(a1 + 104));
    v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 4) != 0)
    {
LABEL_25:
      v23 = sub_1480BE8(*(a1 + 112));
      v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_26:
  v24 = *(a1 + 8);
  if (v24)
  {
    v28 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v16 += v29;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_14820F8(uint64_t result, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(result + 24, *(a2 + 32));
    sub_15667DC((result + 24), v7, (v6 + 8), v5, **(result + 40) - *(result + 32), v8);
    v9 = *(result + 32) + v5;
    *(result + 32) = v9;
    v10 = *(result + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(a2 + 64);
    v13 = sub_19592E8(result + 48, *(a2 + 56));
    sub_15667DC((result + 48), v13, (v12 + 8), v11, **(result + 64) - *(result + 56), v14);
    v15 = *(result + 56) + v11;
    *(result + 56) = v15;
    v16 = *(result + 64);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 80);
  if (v17)
  {
    v18 = *(a2 + 88);
    v19 = sub_19592E8(result + 72, *(a2 + 80));
    sub_15667DC((result + 72), v19, (v18 + 8), v17, **(result + 88) - *(result + 80), v20);
    v21 = *(result + 80) + v17;
    *(result + 80) = v21;
    v22 = *(result + 88);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 16);
  if ((v23 & 7) != 0)
  {
    if (v23)
    {
      *(result + 16) |= 1u;
      v24 = *(result + 96);
      if (!v24)
      {
        v25 = *(result + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        sub_14BF2AC(v26);
        *(result + 96) = v24;
      }

      if (*(a2 + 96))
      {
        v27 = *(a2 + 96);
      }

      else
      {
        v27 = &off_27739D8;
      }

      sub_1482354(v24, v27);
    }

    if ((v23 & 2) != 0)
    {
      *(result + 16) |= 2u;
      v28 = *(result + 104);
      if (!v28)
      {
        v29 = *(result + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v28 = sub_14BCE94(v30);
        *(result + 104) = v28;
      }

      if (*(a2 + 104))
      {
        v31 = *(a2 + 104);
      }

      else
      {
        v31 = &off_2772530;
      }

      sub_1480E2C(v28, v31, a3);
    }

    if ((v23 & 4) != 0)
    {
      *(result + 16) |= 4u;
      v32 = *(result + 112);
      if (!v32)
      {
        v33 = *(result + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        v32 = sub_14BCE94(v34);
        *(result + 112) = v32;
      }

      if (*(a2 + 112))
      {
        v35 = *(a2 + 112);
      }

      else
      {
        v35 = &off_2772530;
      }

      sub_1480E2C(v32, v35, a3);
    }
  }

  v36 = *(a2 + 8);
  if (v36)
  {

    sub_1957EF4((result + 8), (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1482354(char *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 24;
    v6 = *(result + 6);
    sub_1958E5C(result + 6, v6 + v4);
    v7 = *(result + 4);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  if (*(a2 + 16))
  {
    v8 = *(a2 + 40);
    *(result + 4) |= 1u;
    v9 = *(result + 5);
    if (!v9)
    {
      v10 = *(result + 1);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_14BAE64(v11);
      *(result + 5) = v9;
      v8 = *(a2 + 40);
    }

    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &off_2771738;
    }

    sub_144EF20(v9, v12);
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4(result + 1, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_148244C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1481104(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_1481104(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = sub_1481104(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(a1 + 96);
    if (*(v13 + 16))
    {
      result = sub_144F560(*(v13 + 40));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 16);
    }
  }

  if ((v12 & 2) != 0)
  {
    result = sub_1481104(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 4) == 0)
  {
    return 1;
  }

  result = sub_1481104(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1482534(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1482574(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E58C0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_14825E8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1482618(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1564AC4(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14826A0(void *a1)
{
  sub_1482618(a1);

  operator delete();
}

unsigned __int8 *sub_14826D8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_147D580(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if ((*(a1 + 40) & 7) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
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

char *sub_1482774(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
  {
    return v31;
  }

  while (1)
  {
    v6 = v31 + 1;
    v7 = *v31;
    if (*v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v31 + 2;
      }
    }

    v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 != 3)
      {
        if (v10 != 4 || v7 != 32)
        {
          goto LABEL_46;
        }

        v16 = v6 + 1;
        v15 = *v6;
        if (v15 < 0)
        {
          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v31 = sub_19587DC(v6, v15);
            if (!v31)
            {
              return 0;
            }

            goto LABEL_27;
          }

          v16 = v6 + 2;
        }

        v31 = v16;
LABEL_27:
        if (v15 > 7)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 40) |= 4u;
          *(a1 + 80) = v15;
        }

        goto LABEL_56;
      }

      if (v7 != 24)
      {
        goto LABEL_46;
      }

      v25 = v6 + 1;
      v24 = *v6;
      if (v24 < 0)
      {
        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if (v26 < 0)
        {
          v31 = sub_19587DC(v6, v24);
          if (!v31)
          {
            return 0;
          }

          goto LABEL_44;
        }

        v25 = v6 + 2;
      }

      v31 = v25;
LABEL_44:
      if (v24 > 7)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 40) |= 2u;
        *(a1 + 76) = v24;
      }

      goto LABEL_56;
    }

    if (v10 == 1)
    {
      if (v7 == 10)
      {
        v18 = v6 - 1;
        while (1)
        {
          v19 = v18 + 1;
          v31 = v18 + 1;
          v20 = *(a1 + 64);
          if (v20 && (v21 = *(a1 + 56), v21 < *v20))
          {
            *(a1 + 56) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            sub_14BCC7C(*(a1 + 48));
            v22 = sub_19593CC(a1 + 48, v23);
            v19 = v31;
          }

          v18 = sub_220E358(a3, v22, v19);
          v31 = v18;
          if (!v18)
          {
            return 0;
          }

          if (*a3 <= v18 || *v18 != 10)
          {
            goto LABEL_56;
          }
        }
      }
    }

    else if (v10 == 2 && v7 == 16)
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
        v31 = sub_19587DC(v6, v12);
        if (!v31)
        {
          return 0;
        }
      }

      else
      {
        v13 = v6 + 2;
LABEL_17:
        v31 = v13;
      }

      if (v12 > 7)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 40) |= 1u;
        *(a1 + 72) = v12;
      }

      goto LABEL_56;
    }

LABEL_46:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if (v7 - 8000 > 0x647)
    {
      v29 = *(a1 + 8);
      if (v29)
      {
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v30 = sub_11F1920((a1 + 8));
        v6 = v31;
      }

      v28 = sub_1952690(v7, v30, v6, a3);
    }

    else
    {
      v28 = sub_19525AC((a1 + 16), v7, v6, &off_2772638, (a1 + 8), a3);
    }

    v31 = v28;
    if (!v28)
    {
      return 0;
    }

LABEL_56:
    if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
    {
      return v31;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v31;
  }

  return 0;
}

char *sub_1482ACC(uint64_t a1, char *a2, unint64_t *a3)
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

      a2 = sub_147D8A8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 72);
    *a2 = 16;
    a2[1] = v13;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      a2[2] = v13 >> 7;
      v12 = a2 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v12 - 1) = a2 | 0x80;
          a2 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = a2 + 2;
    }
  }

  else
  {
    v12 = a2;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 76);
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
          v12 = (v18 >> 7);
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

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 80);
    *v16 = 32;
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v16[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v16[2] = v21 >> 7;
      v20 = v16 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v23) = v16[2];
        do
        {
          *(v20 - 1) = v23 | 0x80;
          v23 = v22 >> 7;
          *v20++ = v22 >> 7;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v20 = v16 + 2;
    }
  }

  else
  {
    v20 = v16;
  }

  if (*(a1 + 26))
  {
    v20 = sub_1953428(a1 + 16, 1000, 1201, v20, a3);
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

uint64_t sub_1482DBC(uint64_t a1)
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
      v9 = sub_147DB40(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 72);
      if (v11 < 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v12;
      if ((v10 & 2) == 0)
      {
LABEL_10:
        if ((v10 & 4) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 76);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v14;
    if ((v10 & 4) != 0)
    {
LABEL_20:
      v15 = *(a1 + 80);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v16;
    }
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

    v4 += v20;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1482F1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1566868((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      *(a1 + 72) = *(a2 + 72);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(a1 + 40) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 80) = *(a2 + 80);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 76) = *(a2 + 76);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_148302C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {

    return sub_1483078(a1 + 48);
  }

  return result;
}

BOOL sub_1483078(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_16E6614(*(v3 + 24));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

void *sub_14830E4(void *a1)
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

void sub_1483158(void *a1)
{
  sub_14830E4(a1);

  operator delete();
}

uint64_t sub_1483190(uint64_t a1)
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

char *sub_14831B4(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 == 16)
      {
        v15 = v6 + 1;
        v14 = *v6;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v21 = sub_19587DC(v6, v14);
          if (!v21)
          {
            return 0;
          }
        }

        else
        {
          v15 = v6 + 2;
LABEL_24:
          v21 = v15;
        }

        if (v14 > 3)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 28) = v14;
        }

        continue;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v18 = v6 + 1;
      v17 = *v6;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if (v19 < 0)
      {
        v21 = sub_19587DC(v6, v17);
        if (!v21)
        {
          return 0;
        }
      }

      else
      {
        v18 = v6 + 2;
LABEL_30:
        v21 = v18;
      }

      if (v17 > 3)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v17;
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

    v21 = sub_1952690(v7, v13, v6, a3);
    if (!v21)
    {
      return 0;
    }
  }

  return v21;
}

char *sub_14833A4(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1483554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
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

void *sub_1483624(void *a1)
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

  sub_14836B4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144A1C8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_14836B4(void *result)
{
  if (result != &off_27726B0)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      sub_145C090(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_1458388(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_1458388(v4);
      operator delete();
    }

    v5 = v1[9];
    if (v5)
    {
      sub_1481514(v5);
      operator delete();
    }

    v6 = v1[10];
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = v1[11];
    if (v7)
    {
      sub_14B64B0(v7);
      operator delete();
    }

    v8 = v1[12];
    if (v8)
    {
      sub_14B64B0(v8);
      operator delete();
    }

    v9 = v1[13];
    if (v9)
    {
      sub_14830E4(v9);
      operator delete();
    }

    v10 = v1[14];
    if (v10)
    {
      sub_1458388(v10);
      operator delete();
    }

    result = v1[15];
    if (result)
    {
      sub_1458388(result);

      operator delete();
    }
  }

  return result;
}

void sub_1483818(void *a1)
{
  sub_1483624(a1);

  operator delete();
}

uint64_t sub_1483850(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    result = sub_145C210(*(v1 + 48));
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = sub_144E5CC(*(v1 + 56));
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_144E5CC(*(v1 + 64));
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = sub_1481660(*(v1 + 72));
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_29:
    result = sub_144E6A8(*(v1 + 88));
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_28:
  result = sub_144E5CC(*(v1 + 80));
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_30:
  result = sub_144E6A8(*(v1 + 96));
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    result = sub_1483190(*(v1 + 104));
  }

LABEL_15:
  if ((v5 & 0x300) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = sub_144E5CC(*(v1 + 112));
    }

    if ((v5 & 0x200) != 0)
    {
      result = sub_144E5CC(*(v1 + 120));
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

char *sub_148397C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v54 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v54, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v54 + 1;
    v7 = *v54;
    if (*v54 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v54, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v54 + 2;
      }
    }

    v54 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 5)
    {
      if (v7 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v7 == 10)
          {
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

              sub_14BB174(v28);
              v26 = v29;
              *(a1 + 48) = v29;
              v6 = v54;
            }

            v14 = sub_220E3E8(a3, v26, v6);
            goto LABEL_98;
          }
        }

        else if (v10 == 2 && v7 == 18)
        {
          *(a1 + 16) |= 2u;
          v15 = *(a1 + 56);
          if (!v15)
          {
            v23 = *(a1 + 8);
            v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
            if (v23)
            {
              v24 = *v24;
            }

            sub_14BAE64(v24);
            v15 = v25;
            *(a1 + 56) = v25;
LABEL_72:
            v6 = v54;
          }

LABEL_73:
          v14 = sub_22095B8(a3, v15, v6);
          goto LABEL_98;
        }
      }

      else if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v15 = *(a1 + 64);
          if (!v15)
          {
            v39 = *(a1 + 8);
            v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
            if (v39)
            {
              v40 = *v40;
            }

            sub_14BAE64(v40);
            v15 = v41;
            *(a1 + 64) = v41;
            goto LABEL_72;
          }

          goto LABEL_73;
        }
      }

      else if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 8u;
          v30 = *(a1 + 72);
          if (!v30)
          {
            v31 = *(a1 + 8);
            v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31)
            {
              v32 = *v32;
            }

            v30 = sub_14BCF4C(v32);
            *(a1 + 72) = v30;
            v6 = v54;
          }

          v14 = sub_2209D08(a3, v30, v6);
          goto LABEL_98;
        }
      }

      else if (v10 == 5 && v7 == 42)
      {
        *(a1 + 16) |= 0x10u;
        v15 = *(a1 + 80);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_14BAE64(v17);
          v15 = v18;
          *(a1 + 80) = v18;
          goto LABEL_72;
        }

        goto LABEL_73;
      }
    }

    else if (v7 >> 3 > 8)
    {
      if (v10 == 9)
      {
        if (v7 == 74)
        {
          v44 = v6 - 1;
          while (1)
          {
            v45 = v44 + 1;
            v54 = v44 + 1;
            v46 = *(a1 + 40);
            if (v46 && (v47 = *(a1 + 32), v47 < *v46))
            {
              *(a1 + 32) = v47 + 1;
              v48 = *&v46[2 * v47 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 24));
              v48 = sub_19593CC(a1 + 24, v49);
              v45 = v54;
            }

            v44 = sub_22095B8(a3, v48, v45);
            v54 = v44;
            if (!v44)
            {
              return 0;
            }

            if (*a3 <= v44 || *v44 != 74)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v10 == 10)
      {
        if (v7 == 82)
        {
          *(a1 + 16) |= 0x100u;
          v15 = *(a1 + 112);
          if (!v15)
          {
            v36 = *(a1 + 8);
            v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
            if (v36)
            {
              v37 = *v37;
            }

            sub_14BAE64(v37);
            v15 = v38;
            *(a1 + 112) = v38;
            goto LABEL_72;
          }

          goto LABEL_73;
        }
      }

      else if (v10 == 11 && v7 == 90)
      {
        *(a1 + 16) |= 0x200u;
        v15 = *(a1 + 120);
        if (!v15)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          sub_14BAE64(v20);
          v15 = v21;
          *(a1 + 120) = v21;
          goto LABEL_72;
        }

        goto LABEL_73;
      }
    }

    else if (v10 == 6)
    {
      if (v7 == 50)
      {
        *(a1 + 16) |= 0x20u;
        v33 = *(a1 + 88);
        if (!v33)
        {
          v42 = *(a1 + 8);
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
          if (v42)
          {
            v43 = *v43;
          }

          v33 = sub_14BF484(v43);
          *(a1 + 88) = v33;
LABEL_79:
          v6 = v54;
        }

LABEL_80:
        v14 = sub_2209138(a3, v33, v6);
        goto LABEL_98;
      }
    }

    else if (v10 == 7)
    {
      if (v7 == 58)
      {
        *(a1 + 16) |= 0x40u;
        v33 = *(a1 + 96);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_14BF484(v35);
          *(a1 + 96) = v33;
          goto LABEL_79;
        }

        goto LABEL_80;
      }
    }

    else if (v10 == 8 && v7 == 66)
    {
      *(a1 + 16) |= 0x80u;
      v11 = *(a1 + 104);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_14BD058(v13);
        *(a1 + 104) = v11;
        v6 = v54;
      }

      v14 = sub_220E478(a3, v11, v6);
      goto LABEL_98;
    }

    if (v7)
    {
      v50 = (v7 & 7) == 4;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v54;
      }

      return 0;
    }

    v51 = *(a1 + 8);
    if (v51)
    {
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v52 = sub_11F1920((a1 + 8));
      v6 = v54;
    }

    v14 = sub_1952690(v7, v52, v6, a3);
LABEL_98:
    v54 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_99:
    ;
  }

  return v54;
}

char *sub_1483E54(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_145C564(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
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

  v10 = *(a1 + 56);
  *v4 = 18;
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

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 64);
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

  v4 = sub_14589F4(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 72);
  *v4 = 34;
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

  v4 = sub_1481B84(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_34:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 80);
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

  v4 = sub_14589F4(v19, v21, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v22 = *(a1 + 88);
  *v4 = 50;
  v23 = *(v22 + 44);
  v4[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v4 + 1);
  }

  else
  {
    v24 = v4 + 2;
  }

  v4 = sub_14B6D24(v22, v24, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 96);
  *v4 = 58;
  v26 = *(v25 + 44);
  v4[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v4 + 1);
  }

  else
  {
    v27 = v4 + 2;
  }

  v4 = sub_14B6D24(v25, v27, a3);
  if ((v6 & 0x80) != 0)
  {
LABEL_52:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v28 = *(a1 + 104);
    *v4 = 66;
    v29 = *(v28 + 20);
    v4[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v4 + 1);
    }

    else
    {
      v30 = v4 + 2;
    }

    v4 = sub_14833A4(v28, v30, a3);
  }

LABEL_58:
  v31 = *(a1 + 32);
  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v33 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 74;
      v34 = *(v33 + 20);
      v4[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v4 + 1);
      }

      else
      {
        v35 = v4 + 2;
      }

      v4 = sub_14589F4(v33, v35, a3);
    }
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v36 = *(a1 + 112);
    *v4 = 82;
    v37 = *(v36 + 20);
    v4[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v4 + 1);
    }

    else
    {
      v38 = v4 + 2;
    }

    v4 = sub_14589F4(v36, v38, a3);
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v39 = *(a1 + 120);
    *v4 = 90;
    v40 = *(v39 + 20);
    v4[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v4 + 1);
    }

    else
    {
      v41 = v4 + 2;
    }

    v4 = sub_14589F4(v39, v41, a3);
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v45)
  {
    v47 = v45;
    memcpy(v4, v46, v45);
    v4 += v47;
    return v4;
  }

  return sub_1957130(a3, v46, v45, v4);
}

uint64_t sub_14843A0(uint64_t a1)
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
      v7 = sub_1458DB4(v6);
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
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v14 = sub_145C7DC(*(a1 + 48));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v15 = sub_1458DB4(*(a1 + 56));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = sub_1458DB4(*(a1 + 64));
  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = sub_1481F08(*(a1 + 72));
  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v19 = sub_14B71B8(*(a1 + 88));
    v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_30:
  v18 = sub_1458DB4(*(a1 + 80));
  v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_32:
  v20 = sub_14B71B8(*(a1 + 96));
  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    v9 = sub_1483554(*(a1 + 104));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v8 & 0x300) != 0)
  {
    if ((v8 & 0x100) != 0)
    {
      v10 = sub_1458DB4(*(a1 + 112));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 0x200) != 0)
    {
      v11 = sub_1458DB4(*(a1 + 120));
      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v21 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v2 += v22;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_148465C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144A454((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
    goto LABEL_79;
  }

  if (v10)
  {
    *(a1 + 16) |= 1u;
    v11 = *(a1 + 48);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_14BB174(v13);
      *(a1 + 48) = v11;
    }

    if (*(a2 + 48))
    {
      v14 = *(a2 + 48);
    }

    else
    {
      v14 = &off_27718F8;
    }

    sub_145C95C(v11, v14);
  }

  if ((v10 & 2) != 0)
  {
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_14BAE64(v17);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_2771738;
    }

    sub_144EF20(v15, v18);
    if ((v10 & 4) == 0)
    {
LABEL_16:
      if ((v10 & 8) == 0)
      {
        goto LABEL_17;
      }

LABEL_35:
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

        v23 = sub_14BCF4C(v25);
        *(a1 + 72) = v23;
      }

      if (*(a2 + 72))
      {
        v26 = *(a2 + 72);
      }

      else
      {
        v26 = &off_27725C0;
      }

      sub_14820F8(v23, v26, a3);
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_43;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_16;
  }

  *(a1 + 16) |= 4u;
  v19 = *(a1 + 64);
  if (!v19)
  {
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_14BAE64(v21);
    *(a1 + 64) = v19;
  }

  if (*(a2 + 64))
  {
    v22 = *(a2 + 64);
  }

  else
  {
    v22 = &off_2771738;
  }

  sub_144EF20(v19, v22);
  if ((v10 & 8) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((v10 & 0x10) != 0)
  {
LABEL_43:
    *(a1 + 16) |= 0x10u;
    v27 = *(a1 + 80);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      sub_14BAE64(v29);
      *(a1 + 80) = v27;
    }

    if (*(a2 + 80))
    {
      v30 = *(a2 + 80);
    }

    else
    {
      v30 = &off_2771738;
    }

    sub_144EF20(v27, v30);
  }

LABEL_51:
  if ((v10 & 0x20) != 0)
  {
    *(a1 + 16) |= 0x20u;
    v31 = *(a1 + 88);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_14BF484(v33);
      *(a1 + 88) = v31;
    }

    if (*(a2 + 88))
    {
      v34 = *(a2 + 88);
    }

    else
    {
      v34 = &off_2773AC8;
    }

    sub_144F194(v31, v34);
    if ((v10 & 0x40) == 0)
    {
LABEL_53:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_71;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  *(a1 + 16) |= 0x40u;
  v35 = *(a1 + 96);
  if (!v35)
  {
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_14BF484(v37);
    *(a1 + 96) = v35;
  }

  if (*(a2 + 96))
  {
    v38 = *(a2 + 96);
  }

  else
  {
    v38 = &off_2773AC8;
  }

  sub_144F194(v35, v38);
  if ((v10 & 0x80) != 0)
  {
LABEL_71:
    *(a1 + 16) |= 0x80u;
    v39 = *(a1 + 104);
    if (!v39)
    {
      v40 = *(a1 + 8);
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      v39 = sub_14BD058(v41);
      *(a1 + 104) = v39;
    }

    if (*(a2 + 104))
    {
      v42 = *(a2 + 104);
    }

    else
    {
      v42 = &off_2772690;
    }

    sub_128F8FC(v39, v42);
  }

LABEL_79:
  if ((v10 & 0x300) != 0)
  {
    if ((v10 & 0x100) != 0)
    {
      *(a1 + 16) |= 0x100u;
      v43 = *(a1 + 112);
      if (!v43)
      {
        v44 = *(a1 + 8);
        v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v45 = *v45;
        }

        sub_14BAE64(v45);
        *(a1 + 112) = v43;
      }

      if (*(a2 + 112))
      {
        v46 = *(a2 + 112);
      }

      else
      {
        v46 = &off_2771738;
      }

      sub_144EF20(v43, v46);
    }

    if ((v10 & 0x200) != 0)
    {
      *(a1 + 16) |= 0x200u;
      v47 = *(a1 + 120);
      if (!v47)
      {
        v48 = *(a1 + 8);
        v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v49 = *v49;
        }

        sub_14BAE64(v49);
        *(a1 + 120) = v47;
      }

      if (*(a2 + 120))
      {
        v50 = *(a2 + 120);
      }

      else
      {
        v50 = &off_2771738;
      }

      sub_144EF20(v47, v50);
    }
  }

  v51 = *(a2 + 8);
  if (v51)
  {

    sub_1957EF4((a1 + 8), (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1484A28(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_145CB24(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) != 0)
  {
    result = sub_144F560(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) != 0)
  {
    result = sub_148244C(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x10) != 0)
  {
    result = sub_144F560(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x20) != 0)
  {
    result = sub_144F5D0(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x40) != 0)
  {
    result = sub_144F5D0(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x100) != 0)
  {
    result = sub_144F560(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x200) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1484B3C(uint64_t a1)
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
  if (a1 != &off_2772730)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_147CA9C(v6);
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

void sub_1484BF4(uint64_t a1)
{
  sub_1484B3C(a1);

  operator delete();
}

uint64_t sub_1484C2C(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_147CC14(*(result + 24));
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

char *sub_1484C88(uint64_t a1, char *a2, int32x2_t *a3)
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

        sub_14BCBFC(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_220E508(a3, v14, v6);
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

char *sub_1484DCC(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_147CEF4(v6, v8, a3);
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

uint64_t sub_1484ED8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_147D148(*(a1 + 24));
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

void sub_1484F58(void **result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
    *(result + 4) |= 1u;
    v5 = result[3];
    if (!v5)
    {
      v6 = result[1];
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_14BCBFC(v7);
      result[3] = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2772418;
    }

    sub_147D280(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4(result + 1, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1485000(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_147D40C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1485040(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E5AC0;
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

void sub_14850BC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14850EC(void *a1)
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

void sub_1485160(void *a1)
{
  sub_14850EC(a1);

  operator delete();
}

uint64_t sub_1485198(uint64_t a1)
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

char *sub_14851B0(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_14853B4(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_14854CC(uint64_t a1)
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

std::string *sub_1485514(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      result[1].__r_.__value_.__s.__data_[1] = *(a2 + 25);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1485578(void *a1)
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

void sub_14855EC(void *a1)
{
  sub_1485578(a1);

  operator delete();
}

uint64_t sub_1485624(uint64_t a1)
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

char *sub_1485648(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_14857AC(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_14858C4(uint64_t a1)
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

uint64_t sub_1485930(uint64_t a1)
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
  if (a1 != &off_2772798)
  {
    v6 = *(a1 + 24);
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
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14859E8(uint64_t a1)
{
  sub_1485930(a1);

  operator delete();
}

unsigned __int8 *sub_1485A20(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E4E44(*(result + 3));
  }

  if ((v2 & 0xE) != 0)
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

char *sub_1485A8C(uint64_t a1, char *a2, int32x2_t *a3)
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
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 17)
        {
          v14 = *v7;
          v13 = v7 + 8;
          v5 |= 2u;
          *(a1 + 32) = v14;
LABEL_32:
          v26 = v13;
          goto LABEL_41;
        }

        goto LABEL_33;
      }

      if (v8 != 8)
      {
        goto LABEL_33;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v26 = sub_19587DC(v7, v19);
          if (!v26)
          {
            goto LABEL_49;
          }

          goto LABEL_28;
        }

        v20 = v7 + 2;
      }

      v26 = v20;
LABEL_28:
      if (v19 > 6)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 48) = v19;
      }

      goto LABEL_41;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 34)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_16F5828(v17);
      *(a1 + 24) = v15;
      v7 = v26;
    }

    v18 = sub_21F4D60(a3, v15, v7);
LABEL_40:
    v26 = v18;
    if (!v18)
    {
      goto LABEL_49;
    }

LABEL_41:
    if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 25)
  {
    v22 = *v7;
    v13 = v7 + 8;
    v5 |= 4u;
    *(a1 + 40) = v22;
    goto LABEL_32;
  }

LABEL_33:
  if (v8)
  {
    v23 = (v8 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v7 = v26;
    }

    v18 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_1485CD0(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
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

    v11 = *(a1 + 32);
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
    if ((v5 & 4) == 0)
    {
LABEL_12:
      if ((v5 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v12 = *(a1 + 40);
  *v6 = 25;
  *(v6 + 1) = v12;
  v6 += 9;
  if (v5)
  {
LABEL_20:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 24);
    *v6 = 34;
    v14 = *(v13 + 44);
    v6[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v6 + 1);
    }

    else
    {
      v15 = v6 + 2;
    }

    v6 = sub_16E5070(v13, v15, a3);
  }

LABEL_26:
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

uint64_t sub_1485ED8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v5 = sub_16E51F0(*(a1 + 24));
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
      result = v3 + 9;
    }

    else
    {
      result = v3;
    }

    if ((v2 & 8) != 0)
    {
      v6 = *(a1 + 48);
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v6 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 11;
      }

      result += v8;
    }
  }

  else
  {
    result = 0;
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

void sub_1485FB4(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        goto LABEL_21;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(result + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(result + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(result + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_21:
    *(result + 40) = *(a2 + 40);
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

    sub_1957EF4((result + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14860AC(uint64_t a1)
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

void *sub_14860EC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1564B48(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_148616C(void *a1)
{
  sub_14860EC(a1);

  operator delete();
}

unsigned __int8 *sub_14861A4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1485A20(v4);
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

char *sub_1486228(uint64_t a1, char *a2, int32x2_t *a3)
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
      v26 = v16;
      *(a1 + 48) = v15 != 0;
      v5 = 1;
      goto LABEL_33;
    }

    v24 = sub_19587DC(v7, v15);
    v26 = v24;
    *(a1 + 48) = v25 != 0;
    v5 = 1;
    if (!v24)
    {
      goto LABEL_40;
    }

LABEL_33:
    if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    v18 = v7 - 1;
    while (1)
    {
      v19 = v18 + 1;
      v26 = v18 + 1;
      v20 = *(a1 + 40);
      if (v20 && (v21 = *(a1 + 32), v21 < *v20))
      {
        *(a1 + 32) = v21 + 1;
        v22 = *&v20[2 * v21 + 2];
      }

      else
      {
        sub_14BD2E4(*(a1 + 24));
        v22 = sub_19593CC(a1 + 24, v23);
        v19 = v26;
      }

      v18 = sub_220E598(a3, v22, v19);
      v26 = v18;
      if (!v18)
      {
        goto LABEL_40;
      }

      if (*a3 <= v18 || *v18 != 10)
      {
        goto LABEL_33;
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
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_40:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_1486450(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_1485CD0(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v11;
    __dst += 2;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v15)
  {
    v17 = v15;
    memcpy(__dst, v16, v15);
    __dst += v17;
    return __dst;
  }

  return sub_1957130(a3, v16, v15, __dst);
}

uint64_t sub_14865CC(uint64_t a1)
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
      v7 = sub_1485ED8(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  result = v2 + 2 * (*(a1 + 16) & 1);
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

void sub_148667C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_15668F4((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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

uint64_t sub_148676C(uint64_t a1)
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

  if (a1 != &off_2772808)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      sub_1485578(v5);
      operator delete();
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      sub_14860EC(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 48);
  sub_12E6204((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1486850(uint64_t a1)
{
  sub_148676C(a1);

  operator delete();
}

uint64_t sub_1486888(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = sub_1485624(*(v1 + 64));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_14861A4(*(v1 + 72));
    }
  }

  if ((v5 & 0xFC) != 0)
  {
    *(v1 + 112) = 0;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
  }

  if ((v5 & 0x700) != 0)
  {
    *(v1 + 124) = 0;
    *(v1 + 116) = 0;
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

char *sub_1486954(uint64_t a1, char *a2, int32x2_t *a3)
{
  v68 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, &v68, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = v68 + 1;
    v10 = *v68;
    if (*v68 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(v68, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = v68 + 2;
      }
    }

    v68 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 9)
        {
          goto LABEL_100;
        }

        v15 = *v9;
        v14 = v9 + 8;
        v6 |= 4u;
        *(a1 + 80) = v15;
        goto LABEL_52;
      case 2u:
        if (v10 != 18)
        {
          goto LABEL_100;
        }

        v38 = v9 - 1;
        while (1)
        {
          v39 = v38 + 1;
          v68 = v38 + 1;
          v40 = *(a1 + 40);
          if (v40 && (v41 = *(a1 + 32), v41 < *v40))
          {
            *(a1 + 32) = v41 + 1;
            v42 = *&v40[2 * v41 + 2];
          }

          else
          {
            v43 = sub_16F5828(*(a1 + 24));
            v42 = sub_19593CC(a1 + 24, v43);
            v39 = v68;
          }

          v38 = sub_21F4D60(a3, v42, v39);
          v68 = v38;
          if (!v38)
          {
            goto LABEL_113;
          }

          if (*a3 <= v38 || *v38 != 18)
          {
            goto LABEL_108;
          }
        }

      case 3u:
        if (v10 != 25)
        {
          goto LABEL_100;
        }

        v37 = *v9;
        v14 = v9 + 8;
        v6 |= 8u;
        *(a1 + 88) = v37;
        goto LABEL_52;
      case 4u:
        if (v10 != 33)
        {
          goto LABEL_100;
        }

        v36 = *v9;
        v14 = v9 + 8;
        v6 |= 0x10u;
        *(a1 + 96) = v36;
LABEL_52:
        v68 = v14;
        goto LABEL_108;
      case 5u:
        if (v10 != 40)
        {
          goto LABEL_100;
        }

        v6 |= 0x20u;
        v24 = v9 + 1;
        v25 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v26 = *v24;
        v25 = v25 + (v26 << 7) - 128;
        if (v26 < 0)
        {
          v54 = sub_1958770(v9, v25);
          v68 = v54;
          *(a1 + 104) = v55;
          if (!v54)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v24 = v9 + 2;
LABEL_32:
          v68 = v24;
          *(a1 + 104) = v25;
        }

        goto LABEL_108;
      case 6u:
        if (v10 != 48)
        {
          goto LABEL_100;
        }

        v6 |= 0x40u;
        v30 = v9 + 1;
        v31 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v32 = *v30;
        v31 = v31 + (v32 << 7) - 128;
        if (v32 < 0)
        {
          v58 = sub_1958770(v9, v31);
          v68 = v58;
          *(a1 + 108) = v59;
          if (!v58)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v30 = v9 + 2;
LABEL_42:
          v68 = v30;
          *(a1 + 108) = v31;
        }

        goto LABEL_108;
      case 7u:
        if (v10 != 56)
        {
          goto LABEL_100;
        }

        v6 |= 0x80u;
        LODWORD(v44) = *v9;
        if ((v44 & 0x80000000) == 0)
        {
          v45 = v9 + 1;
LABEL_85:
          v68 = v45;
          *(a1 + 112) = v44;
          goto LABEL_108;
        }

        v44 = (v9[1] << 7) + v44 - 128;
        if ((v9[1] & 0x80000000) == 0)
        {
          v45 = v9 + 2;
          goto LABEL_85;
        }

        v62 = sub_19587DC(v9, v44);
        v68 = v62;
        *(a1 + 112) = v63;
        if (!v62)
        {
          goto LABEL_113;
        }

        goto LABEL_108;
      case 8u:
        if (v10 != 66)
        {
          goto LABEL_100;
        }

        *(a1 + 16) |= 1u;
        v46 = *(a1 + 64);
        if (!v46)
        {
          v47 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v47 = *v47;
          }

          v46 = sub_14BD268(v47);
          *(a1 + 64) = v46;
          v9 = v68;
        }

        v48 = sub_220E628(a3, v46, v9);
        goto LABEL_107;
      case 9u:
        if (v10 != 72)
        {
          goto LABEL_100;
        }

        v6 |= 0x100u;
        v51 = v9 + 1;
        v52 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

        v53 = *v51;
        v52 = v52 + (v53 << 7) - 128;
        if (v53 < 0)
        {
          v64 = sub_1958770(v9, v52);
          v68 = v64;
          *(a1 + 116) = v65;
          if (!v64)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v51 = v9 + 2;
LABEL_82:
          v68 = v51;
          *(a1 + 116) = v52;
        }

        goto LABEL_108;
      case 0xBu:
        if (v10 != 90)
        {
          goto LABEL_100;
        }

        *(a1 + 16) |= 2u;
        v49 = *(a1 + 72);
        if (!v49)
        {
          v50 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v50 = *v50;
          }

          v49 = sub_14BD364(v50);
          *(a1 + 72) = v49;
          v9 = v68;
        }

        v48 = sub_220E6B8(a3, v49, v9);
        goto LABEL_107;
      case 0xCu:
        if (v10 == 96)
        {
          v16 = v9 - 1;
          while (1)
          {
            v68 = v16 + 1;
            v17 = v16[1];
            v18 = v16 + 2;
            if (v17 < 0)
            {
              v19 = *v18;
              v20 = (v19 << 7) + v17;
              LODWORD(v17) = v20 - 128;
              if (v19 < 0)
              {
                v68 = sub_19587DC((v16 + 1), (v20 - 128));
                if (!v68)
                {
                  goto LABEL_113;
                }

                LODWORD(v17) = v23;
                goto LABEL_17;
              }

              v18 = v16 + 3;
            }

            v68 = v18;
LABEL_17:
            if (v17 > 0xF)
            {
              sub_1348EB8();
            }

            else
            {
              v21 = *(a1 + 48);
              if (v21 == *(a1 + 52))
              {
                v22 = v21 + 1;
                sub_1958E5C((a1 + 48), v21 + 1);
                *(*(a1 + 56) + 4 * v21) = v17;
              }

              else
              {
                *(*(a1 + 56) + 4 * v21) = v17;
                v22 = v21 + 1;
              }

              *(a1 + 48) = v22;
            }

            v16 = v68;
            if (*a3 <= v68 || *v68 != 96)
            {
              goto LABEL_108;
            }
          }
        }

        if (v10 == 98)
        {
          *&v69 = a1 + 48;
          *(&v69 + 1) = sub_144E304;
          v70 = a1 + 8;
          v71 = 12;
          v48 = sub_1216588(a3, v9, &v69, v5);
          goto LABEL_107;
        }

LABEL_100:
        if (v10)
        {
          v66 = (v10 & 7) == 4;
        }

        else
        {
          v66 = 1;
        }

        if (!v66)
        {
          if (*v8)
          {
            v67 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v67 = sub_11F1920((a1 + 8));
            v9 = v68;
          }

          v48 = sub_1952690(v10, v67, v9, a3);
LABEL_107:
          v68 = v48;
          if (!v48)
          {
            goto LABEL_113;
          }

LABEL_108:
          if (sub_195ADC0(a3, &v68, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
        }

        else
        {
LABEL_113:
          v68 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v6;
        return v68;
      case 0xDu:
        if (v10 != 104)
        {
          goto LABEL_100;
        }

        v6 |= 0x200u;
        v33 = v9 + 1;
        v34 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v35 = *v33;
        v34 = v34 + (v35 << 7) - 128;
        if (v35 < 0)
        {
          v60 = sub_1958770(v9, v34);
          v68 = v60;
          *(a1 + 120) = v61;
          if (!v60)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v33 = v9 + 2;
LABEL_47:
          v68 = v33;
          *(a1 + 120) = v34;
        }

        goto LABEL_108;
      case 0xEu:
        if (v10 != 112)
        {
          goto LABEL_100;
        }

        v6 |= 0x400u;
        v27 = v9 + 1;
        v28 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v29 = *v27;
        v28 = v28 + (v29 << 7) - 128;
        if (v29 < 0)
        {
          v56 = sub_1958770(v9, v28);
          v68 = v56;
          *(a1 + 124) = v57;
          if (!v56)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v27 = v9 + 2;
LABEL_37:
          v68 = v27;
          *(a1 + 124) = v28;
        }

        goto LABEL_108;
      default:
        goto LABEL_100;
    }
  }
}

char *sub_1486FB8(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 80);
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
  }

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
      *v4 = 18;
      v11 = *(v10 + 44);
      *(v4 + 1) = v11;
      if (v11 > 0x7F)
      {
        v12 = sub_19575D0(v11, (v4 + 1));
      }

      else
      {
        v12 = (v4 + 2);
      }

      v4 = sub_16E5070(v10, v12, a3);
    }
  }

  if ((v6 & 8) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 96);
    *v4 = 33;
    *(v4 + 1) = v15;
    v4 += 9;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 88);
  *v4 = 25;
  *(v4 + 1) = v14;
  v4 += 9;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((v6 & 0x20) == 0)
  {
LABEL_16:
    v13 = v4;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 104);
  *v4 = 40;
  *(v4 + 1) = v16;
  if (v16 > 0x7F)
  {
    *(v4 + 1) = v16 | 0x80;
    v17 = v16 >> 7;
    *(v4 + 2) = v16 >> 7;
    v13 = (v4 + 3);
    if (v16 >= 0x4000)
    {
      LOBYTE(v4) = *(v4 + 2);
      do
      {
        *(v13 - 1) = v4 | 0x80;
        LODWORD(v4) = v17 >> 7;
        *v13++ = v17 >> 7;
        v18 = v17 >> 14;
        v17 >>= 7;
      }

      while (v18);
    }
  }

  else
  {
    v13 = (v4 + 2);
  }

LABEL_30:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v20 = *(a1 + 108);
    *v13 = 48;
    v13[1] = v20;
    if (v20 > 0x7F)
    {
      v13[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v13[2] = v20 >> 7;
      v19 = v13 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v13) = v13[2];
        do
        {
          *(v19 - 1) = v13 | 0x80;
          LODWORD(v13) = v21 >> 7;
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v13 + 2;
    }
  }

  else
  {
    v19 = v13;
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 112);
    *v19 = 56;
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v19[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v19[2] = v24 >> 7;
      v23 = v19 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v26) = v19[2];
        do
        {
          *(v23 - 1) = v26 | 0x80;
          v26 = v25 >> 7;
          *v23++ = v25 >> 7;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v23 = v19 + 2;
    }
  }

  else
  {
    v23 = v19;
  }

  if (v6)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v28 = *(a1 + 64);
    *v23 = 66;
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

    v23 = sub_14857AC(v28, v30, a3);
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v32 = *(a1 + 116);
    *v23 = 72;
    v23[1] = v32;
    if (v32 > 0x7F)
    {
      v23[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v23[2] = v32 >> 7;
      v31 = v23 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v23) = v23[2];
        do
        {
          *(v31 - 1) = v23 | 0x80;
          LODWORD(v23) = v33 >> 7;
          *v31++ = v33 >> 7;
          v34 = v33 >> 14;
          v33 >>= 7;
        }

        while (v34);
      }
    }

    else
    {
      v31 = v23 + 2;
    }
  }

  else
  {
    v31 = v23;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v35 = *(a1 + 72);
    *v31 = 90;
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

    v31 = sub_1486450(v35, v37, a3);
  }

  v38 = *(a1 + 48);
  if (v38 < 1)
  {
    v41 = v31;
  }

  else
  {
    for (j = 0; j != v38; ++j)
    {
      if (*a3 <= v31)
      {
        v31 = sub_225EB68(a3, v31);
      }

      v40 = *(*(a1 + 56) + 4 * j);
      *v31 = 96;
      v31[1] = v40;
      if (v40 > 0x7F)
      {
        v31[1] = v40 | 0x80;
        v42 = v40 >> 7;
        v31[2] = v40 >> 7;
        v41 = v31 + 3;
        if (v40 >= 0x4000)
        {
          LOBYTE(v31) = v31[2];
          do
          {
            *(v41 - 1) = v31 | 0x80;
            v31 = (v42 >> 7);
            *v41++ = v42 >> 7;
            v43 = v42 >> 14;
            v42 >>= 7;
          }

          while (v43);
        }
      }

      else
      {
        v41 = v31 + 2;
      }

      v31 = v41;
    }
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v45 = *(a1 + 120);
    *v41 = 104;
    v41[1] = v45;
    if (v45 > 0x7F)
    {
      v41[1] = v45 | 0x80;
      v46 = v45 >> 7;
      v41[2] = v45 >> 7;
      v44 = v41 + 3;
      if (v45 >= 0x4000)
      {
        LOBYTE(v41) = v41[2];
        do
        {
          *(v44 - 1) = v41 | 0x80;
          LODWORD(v41) = v46 >> 7;
          *v44++ = v46 >> 7;
          v47 = v46 >> 14;
          v46 >>= 7;
        }

        while (v47);
      }
    }

    else
    {
      v44 = v41 + 2;
    }
  }

  else
  {
    v44 = v41;
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v44)
    {
      v44 = sub_225EB68(a3, v44);
    }

    v49 = *(a1 + 124);
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
        LOBYTE(v51) = v44[2];
        do
        {
          *(v48 - 1) = v51 | 0x80;
          v51 = v50 >> 7;
          *v48++ = v50 >> 7;
          v52 = v50 >> 14;
          v50 >>= 7;
        }

        while (v52);
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

  v53 = *(a1 + 8);
  if ((v53 & 1) == 0)
  {
    return v48;
  }

  v55 = v53 & 0xFFFFFFFFFFFFFFFCLL;
  v56 = *(v55 + 31);
  if (v56 < 0)
  {
    v57 = *(v55 + 8);
    v56 = *(v55 + 16);
  }

  else
  {
    v57 = (v55 + 8);
  }

  if ((*a3 - v48) >= v56)
  {
    v58 = v56;
    memcpy(v48, v57, v56);
    v48 += v58;
    return v48;
  }

  return sub_1957130(a3, v57, v56, v48);
}

uint64_t sub_1487644(uint64_t a1)
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

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v9);
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

  v13 = v2 + v8 + v10;
  v14 = *(a1 + 16);
  if (v14)
  {
    if (v14)
    {
      v15 = sub_14858C4(*(a1 + 64));
      v13 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v14 & 2) != 0)
    {
      v16 = sub_14865CC(*(a1 + 72));
      v13 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v17 = v13 + 9;
    if ((v14 & 4) == 0)
    {
      v17 = v13;
    }

    if ((v14 & 8) != 0)
    {
      v17 += 9;
    }

    if ((v14 & 0x10) != 0)
    {
      v13 = v17 + 9;
    }

    else
    {
      v13 = v17;
    }

    if ((v14 & 0x20) != 0)
    {
      v13 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v14 & 0x40) == 0)
      {
LABEL_31:
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_36;
        }

LABEL_32:
        v18 = *(a1 + 112);
        v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v18 >= 0)
        {
          v20 = v19;
        }

        else
        {
          v20 = 11;
        }

        v13 += v20;
        goto LABEL_36;
      }
    }

    else if ((v14 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    v13 += ((9 * (__clz(*(a1 + 108) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_36:
  if ((v14 & 0x700) == 0)
  {
    goto LABEL_41;
  }

  if ((v14 & 0x100) != 0)
  {
    v13 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 0x200) == 0)
    {
LABEL_39:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_39;
  }

  v13 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x400) != 0)
  {
LABEL_40:
    v13 += ((9 * (__clz(*(a1 + 124) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_41:
  v21 = *(a1 + 8);
  if (v21)
  {
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v13 += v24;
  }

  *(a1 + 20) = v13;
  return v13;
}

void sub_14878F4(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_11F1A54((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(result + 48);
    sub_1958E5C((result + 48), v10 + v9);
    v11 = *(result + 56);
    *(result + 48) += *(a2 + 48);
    memcpy((v11 + 4 * v10), *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    if (v12)
    {
      *(result + 16) |= 1u;
      v14 = *(result + 64);
      if (!v14)
      {
        v15 = *(result + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_14BD268(v16);
        *(result + 64) = v14;
      }

      if (*(a2 + 64))
      {
        v17 = *(a2 + 64);
      }

      else
      {
        v17 = &off_2772770;
      }

      sub_1336380(v14, v17);
      if ((v12 & 2) == 0)
      {
LABEL_9:
        if ((v12 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(result + 16) |= 2u;
    v18 = *(result + 72);
    if (!v18)
    {
      v19 = *(result + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_14BD364(v20);
      *(result + 72) = v18;
    }

    if (*(a2 + 72))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = &off_27727D0;
    }

    sub_148667C(v18, v21);
    if ((v12 & 4) == 0)
    {
LABEL_10:
      if ((v12 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(result + 80) = *(a2 + 80);
    if ((v12 & 8) == 0)
    {
LABEL_11:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(result + 88) = *(a2 + 88);
    if ((v12 & 0x10) == 0)
    {
LABEL_12:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(result + 96) = *(a2 + 96);
    if ((v12 & 0x20) == 0)
    {
LABEL_13:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(result + 104) = *(a2 + 104);
    if ((v12 & 0x40) == 0)
    {
LABEL_14:
      if ((v12 & 0x80) == 0)
      {
LABEL_16:
        *(result + 16) |= v12;
        goto LABEL_17;
      }

LABEL_15:
      *(result + 112) = *(a2 + 112);
      goto LABEL_16;
    }

LABEL_47:
    *(result + 108) = *(a2 + 108);
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v12 & 0x700) == 0)
  {
    goto LABEL_23;
  }

  if ((v12 & 0x100) == 0)
  {
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_20;
    }

LABEL_50:
    *(result + 120) = *(a2 + 120);
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  *(result + 116) = *(a2 + 116);
  if ((v12 & 0x200) != 0)
  {
    goto LABEL_50;
  }

LABEL_20:
  if ((v12 & 0x400) != 0)
  {
LABEL_21:
    *(result + 124) = *(a2 + 124);
  }

LABEL_22:
  *(result + 16) |= v12;
LABEL_23:
  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((result + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1487B50(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E5370(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_12B329C(*(a1 + 72) + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1487BC8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E5D40;
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
  *(a1 + 216) = 0;
  *(a1 + 224) = a2;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 293) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return a1;
}

void sub_1487C74(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1487CA4(void *a1)
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

  sub_1487D8C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 27));
  sub_1564D58(a1 + 24);
  sub_144D914(a1 + 21);
  sub_1564CD4(a1 + 18);
  sub_1564C50(a1 + 15);
  sub_1564BCC(a1 + 12);
  sub_1564410(a1 + 9);
  sub_144B648(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_1487D8C(void *result)
{
  if (result != &off_2772888)
  {
    v1 = result;
    v2 = result[29];
    if (v2)
    {
      sub_147B058(v2);
      operator delete();
    }

    v3 = v1[30];
    if (v3)
    {
      sub_147B8C0(v3);
      operator delete();
    }

    v4 = v1[31];
    if (v4)
    {
      sub_1483624(v4);
      operator delete();
    }

    v5 = v1[32];
    if (v5)
    {
      sub_1482618(v5);
      operator delete();
    }

    v6 = v1[33];
    if (v6)
    {
      sub_1484B3C(v6);
      operator delete();
    }

    result = v1[34];
    if (result)
    {
      sub_147B058(result);

      operator delete();
    }
  }

  return result;
}

void sub_1487E90(void *a1)
{
  sub_1487CA4(a1);

  operator delete();
}

uint64_t sub_1487EC8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_148C3F4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_16E979C(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 104);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 112) + 8);
    do
    {
      v11 = *v10++;
      result = sub_14A4824(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 128);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 136) + 8);
    do
    {
      v14 = *v13++;
      result = sub_14A1624(v14);
      --v12;
    }

    while (v12);
    *(a1 + 128) = 0;
  }

  v15 = *(a1 + 152);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 160) + 8);
    do
    {
      v17 = *v16++;
      result = sub_14A05E0(v17);
      --v15;
    }

    while (v15);
    *(a1 + 152) = 0;
  }

  v18 = *(a1 + 176);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 184) + 8);
    do
    {
      v20 = *v19++;
      result = sub_149D390(v20);
      --v18;
    }

    while (v18);
    *(a1 + 176) = 0;
  }

  v21 = *(a1 + 200);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 208) + 8);
    do
    {
      v23 = *v22++;
      result = sub_14985CC(v23);
      --v21;
    }

    while (v21);
    *(a1 + 200) = 0;
  }

  *(a1 + 216) = 0;
  v24 = *(a1 + 40);
  if ((v24 & 0x3F) == 0)
  {
    goto LABEL_40;
  }

  if (v24)
  {
    result = sub_147B104(*(a1 + 232));
  }

  if ((v24 & 2) != 0)
  {
    v25 = *(a1 + 240);
    v26 = *(v25 + 8);
    result = v25 + 8;
    *(result + 18) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v26)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v24 & 4) == 0)
  {
    if ((v24 & 8) == 0)
    {
      goto LABEL_37;
    }

LABEL_49:
    result = sub_14826D8(*(a1 + 256));
    if ((v24 & 0x10) == 0)
    {
LABEL_38:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    goto LABEL_50;
  }

  result = sub_1483850(*(a1 + 248));
  if ((v24 & 8) != 0)
  {
    goto LABEL_49;
  }

LABEL_37:
  if ((v24 & 0x10) == 0)
  {
    goto LABEL_38;
  }

LABEL_50:
  result = sub_1484C2C(*(a1 + 264));
  if ((v24 & 0x20) != 0)
  {
LABEL_39:
    result = sub_147B104(*(a1 + 272));
  }

LABEL_40:
  if ((v24 & 0xC0) != 0)
  {
    *(a1 + 280) = 0;
  }

  if ((v24 & 0xF00) != 0)
  {
    *(a1 + 288) = 0;
    *(a1 + 293) = 0;
  }

  v28 = *(a1 + 8);
  v27 = a1 + 8;
  *(v27 + 32) = 0;
  if (v28)
  {

    return sub_1957EA8(v27);
  }

  return result;
}

char *sub_14880DC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v102 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, &v102, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = v102 + 1;
    v10 = *v102;
    if (*v102 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(v102, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = v102 + 2;
      }
    }

    v102 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 8)
        {
          goto LABEL_182;
        }

        v6 |= 0x40u;
        v14 = v9 + 1;
        v15 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        v16 = *v14;
        v15 = v15 + (v16 << 7) - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v14 = v9 + 2;
LABEL_13:
          v102 = v14;
          *(a1 + 280) = v15;
          goto LABEL_192;
        }

        v94 = sub_1958770(v9, v15);
        v102 = v94;
        *(a1 + 280) = v95;
        if (!v94)
        {
          goto LABEL_200;
        }

        goto LABEL_192;
      case 2u:
        if (v10 != 18)
        {
          goto LABEL_182;
        }

        v53 = v9 - 1;
        while (1)
        {
          v54 = v53 + 1;
          v102 = v53 + 1;
          v55 = *(a1 + 64);
          if (v55 && (v56 = *(a1 + 56), v56 < *v55))
          {
            *(a1 + 56) = v56 + 1;
            v57 = *&v55[2 * v56 + 2];
          }

          else
          {
            v58 = sub_14BD738(*(a1 + 48));
            v57 = sub_19593CC(a1 + 48, v58);
            v54 = v102;
          }

          sub_220AD58(a3, v57, v54);
          v102 = v53;
          if (!v53)
          {
            goto LABEL_200;
          }

          if (*a3 <= v53 || *v53 != 18)
          {
            goto LABEL_192;
          }
        }

      case 3u:
        if (v10 != 24)
        {
          goto LABEL_182;
        }

        v44 = v9 + 1;
        v43 = *v9;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_67;
        }

        v45 = *v44;
        v43 = (v45 << 7) + v43 - 128;
        if (v45 < 0)
        {
          v102 = sub_19587DC(v9, v43);
          if (!v102)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v44 = v9 + 2;
LABEL_67:
          v102 = v44;
        }

        if (v43 > 6)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 40) |= 0x80u;
          *(a1 + 284) = v43;
        }

        goto LABEL_192;
      case 4u:
        if (v10 != 32)
        {
          goto LABEL_182;
        }

        v49 = v9 + 1;
        v48 = *v9;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_80;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if (v50 < 0)
        {
          v102 = sub_19587DC(v9, v48);
          if (!v102)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v49 = v9 + 2;
LABEL_80:
          v102 = v49;
        }

        if (v48 > 1)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 40) |= 0x100u;
          *(a1 + 288) = v48;
        }

        goto LABEL_192;
      case 5u:
        if (v10 != 40)
        {
          goto LABEL_182;
        }

        v33 = v9 + 1;
        v32 = *v9;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v102 = sub_19587DC(v9, v32);
          if (!v102)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v33 = v9 + 2;
LABEL_44:
          v102 = v33;
        }

        if (v32 > 5)
        {
          sub_12E85B8();
        }

        else
        {
          *(a1 + 40) |= 0x200u;
          *(a1 + 292) = v32;
        }

        goto LABEL_192;
      case 6u:
        if (v10 != 50)
        {
          goto LABEL_182;
        }

        v67 = v9 - 1;
        while (1)
        {
          v68 = v67 + 1;
          v102 = v67 + 1;
          v69 = *(a1 + 88);
          if (v69 && (v70 = *(a1 + 80), v70 < *v69))
          {
            *(a1 + 80) = v70 + 1;
            v71 = *&v69[2 * v70 + 2];
          }

          else
          {
            v72 = sub_16F5CD4(*(a1 + 72));
            v71 = sub_19593CC(a1 + 72, v72);
            v68 = v102;
          }

          v67 = sub_220D038(a3, v71, v68);
          v102 = v67;
          if (!v67)
          {
            goto LABEL_200;
          }

          if (*a3 <= v67 || *v67 != 50)
          {
            goto LABEL_192;
          }
        }

      case 7u:
        if (v10 != 56)
        {
          goto LABEL_182;
        }

        v6 |= 0x400u;
        v79 = v9 + 1;
        v80 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_139;
        }

        v81 = *v79;
        v80 = v80 + (v81 << 7) - 128;
        if (v81 < 0)
        {
          v96 = sub_1958770(v9, v80);
          v102 = v96;
          *(a1 + 296) = v97;
          if (!v96)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v79 = v9 + 2;
LABEL_139:
          v102 = v79;
          *(a1 + 296) = v80;
        }

        goto LABEL_192;
      case 8u:
        if (v10 != 66)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 1u;
        v51 = *(a1 + 232);
        if (v51)
        {
          goto LABEL_146;
        }

        v52 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v52 = *v52;
        }

        v51 = sub_14BCA7C(v52);
        *(a1 + 232) = v51;
        goto LABEL_145;
      case 9u:
        if (v10 != 74)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 2u;
        v89 = *(a1 + 240);
        if (!v89)
        {
          v90 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v90 = *v90;
          }

          v89 = sub_14BCAFC(v90);
          *(a1 + 240) = v89;
          v9 = v102;
        }

        v25 = sub_220E748(a3, v89, v9);
        goto LABEL_191;
      case 0xAu:
        if (v10 != 82)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 4u;
        v41 = *(a1 + 248);
        if (!v41)
        {
          v42 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v42 = *v42;
          }

          v41 = sub_14BD0D0(v42);
          *(a1 + 248) = v41;
          v9 = v102;
        }

        v25 = sub_220E7D8(a3, v41, v9);
        goto LABEL_191;
      case 0xBu:
        if (v10 != 90)
        {
          goto LABEL_182;
        }

        v83 = v9 - 1;
        while (1)
        {
          v84 = v83 + 1;
          v102 = v83 + 1;
          v85 = *(a1 + 112);
          if (v85 && (v86 = *(a1 + 104), v86 < *v85))
          {
            *(a1 + 104) = v86 + 1;
            v87 = *&v85[2 * v86 + 2];
          }

          else
          {
            sub_14BE3A4(*(a1 + 96));
            v87 = sub_19593CC(a1 + 96, v88);
            v84 = v102;
          }

          v83 = sub_220E868(a3, v87, v84);
          v102 = v83;
          if (!v83)
          {
            goto LABEL_200;
          }

          if (*a3 <= v83 || *v83 != 90)
          {
            goto LABEL_192;
          }
        }

      case 0xCu:
        if (v10 != 98)
        {
          goto LABEL_182;
        }

        v26 = v9 - 1;
        while (1)
        {
          v27 = v26 + 1;
          v102 = v26 + 1;
          v28 = *(a1 + 136);
          if (v28 && (v29 = *(a1 + 128), v29 < *v28))
          {
            *(a1 + 128) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            v31 = sub_14BE0EC(*(a1 + 120));
            v30 = sub_19593CC(a1 + 120, v31);
            v27 = v102;
          }

          v26 = sub_220E8F8(a3, v30, v27);
          v102 = v26;
          if (!v26)
          {
            goto LABEL_200;
          }

          if (*a3 <= v26 || *v26 != 98)
          {
            goto LABEL_192;
          }
        }

      case 0xDu:
        if (v10 != 106)
        {
          goto LABEL_182;
        }

        v35 = v9 - 1;
        while (1)
        {
          v36 = v35 + 1;
          v102 = v35 + 1;
          v37 = *(a1 + 160);
          if (v37 && (v38 = *(a1 + 152), v38 < *v37))
          {
            *(a1 + 152) = v38 + 1;
            v39 = *&v37[2 * v38 + 2];
          }

          else
          {
            sub_14BE058(*(a1 + 144));
            v39 = sub_19593CC(a1 + 144, v40);
            v36 = v102;
          }

          v35 = sub_220E988(a3, v39, v36);
          v102 = v35;
          if (!v35)
          {
            goto LABEL_200;
          }

          if (*a3 <= v35 || *v35 != 106)
          {
            goto LABEL_192;
          }
        }

      case 0xEu:
        if (v10 != 114)
        {
          goto LABEL_182;
        }

        v73 = v9 - 1;
        while (1)
        {
          v74 = v73 + 1;
          v102 = v73 + 1;
          v75 = *(a1 + 184);
          if (v75 && (v76 = *(a1 + 176), v76 < *v75))
          {
            *(a1 + 176) = v76 + 1;
            v77 = *&v75[2 * v76 + 2];
          }

          else
          {
            v78 = sub_14BDE5C(*(a1 + 168));
            v77 = sub_19593CC(a1 + 168, v78);
            v74 = v102;
          }

          v73 = sub_21F6500(a3, v77, v74);
          v102 = v73;
          if (!v73)
          {
            goto LABEL_200;
          }

          if (*a3 <= v73 || *v73 != 114)
          {
            goto LABEL_192;
          }
        }

      case 0xFu:
        if (v10 != 122)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 8u;
        v23 = *(a1 + 256);
        if (!v23)
        {
          v24 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v24 = *v24;
          }

          v23 = sub_14BCFFC(v24);
          *(a1 + 256) = v23;
          v9 = v102;
        }

        v25 = sub_220EA18(a3, v23, v9);
        goto LABEL_191;
      case 0x10u:
        if (v10 != 130)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 0x10u;
        v46 = *(a1 + 264);
        if (!v46)
        {
          v47 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v47 = *v47;
          }

          v46 = sub_14BD174(v47);
          *(a1 + 264) = v46;
          v9 = v102;
        }

        v25 = sub_220EAA8(a3, v46, v9);
        goto LABEL_191;
      case 0x11u:
        if (v10 != 138)
        {
          goto LABEL_182;
        }

        v17 = v9 - 2;
        while (1)
        {
          v18 = v17 + 2;
          v102 = v17 + 2;
          v19 = *(a1 + 208);
          if (v19 && (v20 = *(a1 + 200), v20 < *v19))
          {
            *(a1 + 200) = v20 + 1;
            v21 = *&v19[2 * v20 + 2];
          }

          else
          {
            sub_14BDC34(*(a1 + 192));
            v21 = sub_19593CC(a1 + 192, v22);
            v18 = v102;
          }

          v17 = sub_220EB38(a3, v21, v18);
          v102 = v17;
          if (!v17)
          {
            goto LABEL_200;
          }

          if (*a3 <= v17 || *v17 != 394)
          {
            goto LABEL_192;
          }
        }

      case 0x12u:
        if (v10 == 144)
        {
          v59 = v9 - 2;
          while (1)
          {
            v102 = v59 + 2;
            v60 = v59[2];
            v61 = v59 + 3;
            if (v60 < 0)
            {
              v62 = *v61;
              v63 = (v62 << 7) + v60;
              LODWORD(v60) = v63 - 128;
              if (v62 < 0)
              {
                v102 = sub_19587DC((v59 + 2), (v63 - 128));
                if (!v102)
                {
                  goto LABEL_200;
                }

                LODWORD(v60) = v66;
                goto LABEL_104;
              }

              v61 = v59 + 4;
            }

            v102 = v61;
LABEL_104:
            if (v60 > 1)
            {
              sub_13ED138();
            }

            else
            {
              v64 = *(a1 + 216);
              if (v64 == *(a1 + 220))
              {
                v65 = v64 + 1;
                sub_1958E5C((a1 + 216), v64 + 1);
                *(*(a1 + 224) + 4 * v64) = v60;
              }

              else
              {
                *(*(a1 + 224) + 4 * v64) = v60;
                v65 = v64 + 1;
              }

              *(a1 + 216) = v65;
            }

            v59 = v102;
            if (*a3 <= v102 || *v102 != 400)
            {
              goto LABEL_192;
            }
          }
        }

        if (v10 == 146)
        {
          *&v103 = a1 + 216;
          *(&v103 + 1) = sub_144E2D0;
          v104 = a1 + 8;
          v105 = 18;
          v25 = sub_1216588(a3, v9, &v103, v5);
LABEL_191:
          v102 = v25;
          if (!v25)
          {
            goto LABEL_200;
          }

LABEL_192:
          if (sub_195ADC0(a3, &v102, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_182:
        if (v10)
        {
          v100 = (v10 & 7) == 4;
        }

        else
        {
          v100 = 1;
        }

        if (!v100)
        {
          if (v10 - 8000 > 0x647)
          {
            if (*v8)
            {
              v101 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v101 = sub_11F1920((a1 + 8));
              v9 = v102;
            }

            v25 = sub_1952690(v10, v101, v9, a3);
          }

          else
          {
            v25 = sub_19525AC((a1 + 16), v10, v9, &off_2772888, (a1 + 8), a3);
          }

          goto LABEL_191;
        }

        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
        }

        else
        {
LABEL_200:
          v102 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v6;
        return v102;
      case 0x13u:
        if (v10 != 154)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 0x20u;
        v51 = *(a1 + 272);
        if (v51)
        {
          goto LABEL_146;
        }

        v82 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v82 = *v82;
        }

        v51 = sub_14BCA7C(v82);
        *(a1 + 272) = v51;
LABEL_145:
        v9 = v102;
LABEL_146:
        v25 = sub_21F7F98(a3, v51, v9);
        goto LABEL_191;
      case 0x14u:
        if (v10 != 160)
        {
          goto LABEL_182;
        }

        v6 |= 0x800u;
        v92 = v9 + 1;
        v91 = *v9;
        if ((v91 & 0x8000000000000000) == 0)
        {
          goto LABEL_167;
        }

        v93 = *v92;
        v91 = (v93 << 7) + v91 - 128;
        if (v93 < 0)
        {
          v98 = sub_19587DC(v9, v91);
          v102 = v98;
          *(a1 + 300) = v99 != 0;
          if (!v98)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v92 = v9 + 2;
LABEL_167:
          v102 = v92;
          *(a1 + 300) = v91 != 0;
        }

        goto LABEL_192;
      default:
        goto LABEL_182;
    }
  }
}

char *sub_1488C14(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 280);
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

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 48);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_148CC30(v13, v15, a3);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 284);
    *v6 = 24;
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 288);
    *v16 = 32;
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v16[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v16[2] = v21 >> 7;
      v20 = v16 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v16) = v16[2];
        do
        {
          *(v20 - 1) = v16 | 0x80;
          v16 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v16 + 2;
    }
  }

  else
  {
    v20 = v16;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 292);
    *v20 = 40;
    v20[1] = v25;
    if (v25 > 0x7F)
    {
      v20[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v20[2] = v25 >> 7;
      v24 = v20 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v27) = v20[2];
        do
        {
          *(v24 - 1) = v27 | 0x80;
          v27 = v26 >> 7;
          *v24++ = v26 >> 7;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v24 = v20 + 2;
    }
  }

  else
  {
    v24 = v20;
  }

  v29 = *(a1 + 80);
  if (v29)
  {
    for (j = 0; j != v29; ++j)
    {
      if (*a3 <= v24)
      {
        v24 = sub_225EB68(a3, v24);
      }

      v31 = *(*(a1 + 88) + 8 * j + 8);
      *v24 = 50;
      v32 = *(v31 + 44);
      v24[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v24 + 1);
      }

      else
      {
        v33 = v24 + 2;
      }

      v24 = sub_16E9CA0(v31, v33, a3);
    }
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v35 = *(a1 + 296);
    *v24 = 56;
    v24[1] = v35;
    if (v35 > 0x7F)
    {
      v24[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v24[2] = v35 >> 7;
      v34 = v24 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v24) = v24[2];
        do
        {
          *(v34 - 1) = v24 | 0x80;
          LODWORD(v24) = v36 >> 7;
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v24 + 2;
    }
  }

  else
  {
    v34 = v24;
  }

  if (v5)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v38 = *(a1 + 232);
    *v34 = 66;
    v39 = *(v38 + 20);
    v34[1] = v39;
    if (v39 > 0x7F)
    {
      v40 = sub_19575D0(v39, v34 + 1);
    }

    else
    {
      v40 = v34 + 2;
    }

    v34 = sub_147B444(v38, v40, a3);
    if ((v5 & 2) == 0)
    {
LABEL_64:
      if ((v5 & 4) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_78;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_64;
  }

  if (*a3 <= v34)
  {
    v34 = sub_225EB68(a3, v34);
  }

  v41 = *(a1 + 240);
  *v34 = 74;
  v42 = *(v41 + 20);
  v34[1] = v42;
  if (v42 > 0x7F)
  {
    v43 = sub_19575D0(v42, v34 + 1);
  }

  else
  {
    v43 = v34 + 2;
  }

  v34 = sub_147BC00(v41, v43, a3);
  if ((v5 & 4) != 0)
  {
LABEL_78:
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v44 = *(a1 + 248);
    *v34 = 82;
    v45 = *(v44 + 20);
    v34[1] = v45;
    if (v45 > 0x7F)
    {
      v46 = sub_19575D0(v45, v34 + 1);
    }

    else
    {
      v46 = v34 + 2;
    }

    v34 = sub_1483E54(v44, v46, a3);
  }

LABEL_84:
  v47 = *(a1 + 104);
  if (v47)
  {
    for (k = 0; k != v47; ++k)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v49 = *(*(a1 + 112) + 8 * k + 8);
      *v34 = 90;
      v50 = *(v49 + 20);
      v34[1] = v50;
      if (v50 > 0x7F)
      {
        v51 = sub_19575D0(v50, v34 + 1);
      }

      else
      {
        v51 = v34 + 2;
      }

      v34 = sub_14A4BF0(v49, v51, a3);
    }
  }

  v52 = *(a1 + 128);
  if (v52)
  {
    for (m = 0; m != v52; ++m)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v54 = *(*(a1 + 136) + 8 * m + 8);
      *v34 = 98;
      v55 = *(v54 + 20);
      v34[1] = v55;
      if (v55 > 0x7F)
      {
        v56 = sub_19575D0(v55, v34 + 1);
      }

      else
      {
        v56 = v34 + 2;
      }

      v34 = sub_14A196C(v54, v56, a3);
    }
  }

  v57 = *(a1 + 152);
  if (v57)
  {
    for (n = 0; n != v57; ++n)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v59 = *(*(a1 + 160) + 8 * n + 8);
      *v34 = 106;
      v60 = *(v59 + 20);
      v34[1] = v60;
      if (v60 > 0x7F)
      {
        v61 = sub_19575D0(v60, v34 + 1);
      }

      else
      {
        v61 = v34 + 2;
      }

      v34 = sub_14A0B70(v59, v61, a3);
    }
  }

  v62 = *(a1 + 176);
  if (v62)
  {
    for (ii = 0; ii != v62; ++ii)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v64 = *(*(a1 + 184) + 8 * ii + 8);
      *v34 = 114;
      v65 = *(v64 + 44);
      v34[1] = v65;
      if (v65 > 0x7F)
      {
        v66 = sub_19575D0(v65, v34 + 1);
      }

      else
      {
        v66 = v34 + 2;
      }

      v34 = sub_149DD64(v64, v66, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v67 = *(a1 + 256);
    *v34 = 122;
    v68 = *(v67 + 44);
    v34[1] = v68;
    if (v68 > 0x7F)
    {
      v69 = sub_19575D0(v68, v34 + 1);
    }

    else
    {
      v69 = v34 + 2;
    }

    v34 = sub_1482ACC(v67, v69, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v70 = *(a1 + 264);
    *v34 = 386;
    v71 = *(v70 + 20);
    v34[2] = v71;
    if (v71 > 0x7F)
    {
      v72 = sub_19575D0(v71, v34 + 2);
    }

    else
    {
      v72 = v34 + 3;
    }

    v34 = sub_1484DCC(v70, v72, a3);
  }

  v73 = *(a1 + 200);
  if (v73)
  {
    for (jj = 0; jj != v73; ++jj)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v75 = *(*(a1 + 208) + 8 * jj + 8);
      *v34 = 394;
      v76 = *(v75 + 20);
      v34[2] = v76;
      if (v76 > 0x7F)
      {
        v77 = sub_19575D0(v76, v34 + 2);
      }

      else
      {
        v77 = v34 + 3;
      }

      v34 = sub_149975C(v75, v77, a3);
    }
  }

  v78 = *(a1 + 216);
  if (v78 < 1)
  {
    v81 = v34;
  }

  else
  {
    for (kk = 0; kk != v78; ++kk)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v80 = *(*(a1 + 224) + 4 * kk);
      *v34 = 400;
      v34[2] = v80;
      if (v80 > 0x7F)
      {
        v34[2] = v80 | 0x80;
        v82 = v80 >> 7;
        v34[3] = v80 >> 7;
        v81 = v34 + 4;
        if (v80 >= 0x4000)
        {
          LOBYTE(v34) = v34[3];
          do
          {
            *(v81 - 1) = v34 | 0x80;
            v34 = (v82 >> 7);
            *v81++ = v82 >> 7;
            v83 = v82 >> 14;
            v82 >>= 7;
          }

          while (v83);
        }
      }

      else
      {
        v81 = v34 + 3;
      }

      v34 = v81;
    }
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v81)
    {
      v81 = sub_225EB68(a3, v81);
    }

    v84 = *(a1 + 272);
    *v81 = 410;
    v85 = *(v84 + 20);
    v81[2] = v85;
    if (v85 > 0x7F)
    {
      v86 = sub_19575D0(v85, v81 + 2);
    }

    else
    {
      v86 = v81 + 3;
    }

    v81 = sub_147B444(v84, v86, a3);
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v81)
    {
      v81 = sub_225EB68(a3, v81);
    }

    v87 = *(a1 + 300);
    *v81 = 416;
    v81[2] = v87;
    v81 += 3;
  }

  if (*(a1 + 26))
  {
    v81 = sub_1953428(a1 + 16, 1000, 1201, v81, a3);
  }

  v88 = *(a1 + 8);
  if ((v88 & 1) == 0)
  {
    return v81;
  }

  v90 = v88 & 0xFFFFFFFFFFFFFFFCLL;
  v91 = *(v90 + 31);
  if (v91 < 0)
  {
    v92 = *(v90 + 8);
    v91 = *(v90 + 16);
  }

  else
  {
    v92 = (v90 + 8);
  }

  if ((*a3 - v81) >= v91)
  {
    v93 = v91;
    memcpy(v81, v92, v91);
    v81 += v93;
    return v81;
  }

  return sub_1957130(a3, v92, v91, v81);
}

uint64_t sub_1489674(uint64_t a1)
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
      v9 = sub_148EB94(v8);
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
      v16 = sub_16E9F88(v15);
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
      v23 = sub_14A4EC0(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 128);
  v25 = v18 + v24;
  v26 = *(a1 + 136);
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
      v30 = sub_14A1BA4(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 152);
  v32 = v25 + v31;
  v33 = *(a1 + 160);
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
      v37 = sub_14A0FE0(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 176);
  v39 = v32 + v38;
  v40 = *(a1 + 184);
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
      v44 = sub_149E4E4(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 200);
  v46 = v39 + 2 * v45;
  v47 = *(a1 + 208);
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
      v51 = sub_149A624(v50);
      v46 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6);
      v49 -= 8;
    }

    while (v49);
  }

  v52 = *(a1 + 216);
  if (v52)
  {
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(*(a1 + 224) + 4 * v53);
      if (v55 < 0)
      {
        v56 = 10;
      }

      else
      {
        v56 = (9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6;
      }

      v54 += v56;
      ++v53;
    }

    while (v52 != v53);
  }

  else
  {
    v54 = 0;
  }

  v57 = v46 + 2 * v52 + v54;
  v58 = *(a1 + 40);
  if (v58)
  {
    if (v58)
    {
      v59 = sub_147B788(*(a1 + 232));
      v57 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v58 & 2) == 0)
      {
LABEL_54:
        if ((v58 & 4) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_63;
      }
    }

    else if ((v58 & 2) == 0)
    {
      goto LABEL_54;
    }

    v60 = sub_147BD5C(*(a1 + 240));
    v57 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v58 & 4) == 0)
    {
LABEL_55:
      if ((v58 & 8) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_64;
    }

LABEL_63:
    v61 = sub_14843A0(*(a1 + 248));
    v57 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v58 & 8) == 0)
    {
LABEL_56:
      if ((v58 & 0x10) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_65;
    }

LABEL_64:
    v62 = sub_1482DBC(*(a1 + 256));
    v57 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v58 & 0x10) == 0)
    {
LABEL_57:
      if ((v58 & 0x20) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_66;
    }

LABEL_65:
    v63 = sub_1484ED8(*(a1 + 264));
    v57 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v58 & 0x20) == 0)
    {
LABEL_58:
      if ((v58 & 0x40) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_67;
    }

LABEL_66:
    v64 = sub_147B788(*(a1 + 272));
    v57 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v58 & 0x40) == 0)
    {
LABEL_59:
      if ((v58 & 0x80) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_68;
    }

LABEL_67:
    v57 += ((9 * (__clz(*(a1 + 280) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v58 & 0x80) == 0)
    {
      goto LABEL_72;
    }

LABEL_68:
    v65 = *(a1 + 284);
    if (v65 < 0)
    {
      v66 = 11;
    }

    else
    {
      v66 = ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v57 += v66;
  }

LABEL_72:
  if ((v58 & 0xF00) == 0)
  {
    goto LABEL_79;
  }

  if ((v58 & 0x100) != 0)
  {
    v69 = *(a1 + 288);
    if (v69 < 0)
    {
      v70 = 11;
    }

    else
    {
      v70 = ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v57 += v70;
    if ((v58 & 0x200) == 0)
    {
LABEL_75:
      if ((v58 & 0x400) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }
  }

  else if ((v58 & 0x200) == 0)
  {
    goto LABEL_75;
  }

  v71 = *(a1 + 292);
  if (v71 < 0)
  {
    v72 = 11;
  }

  else
  {
    v72 = ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v57 += v72;
  if ((v58 & 0x400) != 0)
  {
LABEL_76:
    v57 += ((9 * (__clz(*(a1 + 296) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_77:
  if ((v58 & 0x800) != 0)
  {
    v57 += 3;
  }

LABEL_79:
  v67 = *(a1 + 8);
  if (v67)
  {
    v73 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    v74 = *((v67 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v74 < 0)
    {
      v74 = *(v73 + 16);
    }

    v57 += v74;
  }

  *(a1 + 44) = v57;
  return v57;
}