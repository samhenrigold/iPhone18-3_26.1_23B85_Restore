void sub_13CB2E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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
      v8 = *(a2 + 32);
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_13E1B40(v14);
        *(a1 + 40) = v12;
      }

      if (*(a2 + 40))
      {
        v15 = *(a2 + 40);
      }

      else
      {
        v15 = &off_276ED70;
      }

      sub_13C45EC(v12, v15);
      if ((v4 & 8) == 0)
      {
LABEL_12:
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_45;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 8u;
    v16 = *(a1 + 48);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_13E1B40(v18);
      *(a1 + 48) = v16;
    }

    if (*(a2 + 48))
    {
      v19 = *(a2 + 48);
    }

    else
    {
      v19 = &off_276ED70;
    }

    sub_13C45EC(v16, v19);
    if ((v4 & 0x10) == 0)
    {
LABEL_13:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(a1 + 16) |= 0x10u;
    v20 = *(a1 + 56);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_16F5828(v22);
      *(a1 + 56) = v20;
    }

    if (*(a2 + 56))
    {
      v23 = *(a2 + 56);
    }

    else
    {
      v23 = &off_277E5E8;
    }

    sub_16E527C(v20, v23);
    if ((v4 & 0x20) == 0)
    {
LABEL_14:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_15:
      if ((v4 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v4;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_17;
    }

LABEL_54:
    *(a1 + 68) = *(a2 + 68);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v4 & 0xF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 76) = *(a2 + 76);
    if ((v4 & 0x200) == 0)
    {
LABEL_21:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_22;
      }

LABEL_58:
      *(a1 + 84) = *(a2 + 84);
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  *(a1 + 80) = *(a2 + 80);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_58;
  }

LABEL_22:
  if ((v4 & 0x800) != 0)
  {
LABEL_23:
    *(a1 + 88) = *(a2 + 88);
  }

LABEL_24:
  *(a1 + 16) |= v4;
LABEL_25:
  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13CB52C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    v3 = *(a1 + 40);
    if ((*(v3 + 16) & 0x20) != 0)
    {
      result = sub_16E4B4C(*(v3 + 64));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 8) != 0)
  {
    v5 = *(a1 + 48);
    if ((*(v5 + 16) & 0x20) != 0)
    {
      result = sub_16E4B4C(*(v5 + 64));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13CB5B4(uint64_t a1)
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

  if (a1 != &off_276E768)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_13663C4(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_13C57C8(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_13EC208((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13CB690(uint64_t a1)
{
  sub_13CB5B4(a1);

  operator delete();
}

uint64_t sub_13CB6C8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13CA364(v4);
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
      result = sub_1359188(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_13C58F8(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 56) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_13CB770(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v34, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v34 + 1;
    v7 = *v34;
    if (*v34 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v34, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v34 + 2;
      }
    }

    v34 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v22 = v6 + 1;
          v23 = *v6;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v24 = *v22;
          v25 = (v24 << 7) + v23;
          LODWORD(v23) = v25 - 128;
          if (v24 < 0)
          {
            v34 = sub_19587DC(v6, (v25 - 128));
            if (!v34)
            {
              return 0;
            }

            LODWORD(v23) = v32;
          }

          else
          {
            v22 = v6 + 2;
LABEL_35:
            v34 = v22;
          }

          if (sub_1393054(v23))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v23;
          }

          else
          {
            sub_12E8450();
          }

          continue;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v12 = v6 - 1;
        while (1)
        {
          v13 = v12 + 1;
          v34 = v12 + 1;
          v14 = *(a1 + 40);
          if (v14 && (v15 = *(a1 + 32), v15 < *v14))
          {
            *(a1 + 32) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            sub_13D3DC4(*(a1 + 24));
            v16 = sub_19593CC(a1 + 24, v17);
            v13 = v34;
          }

          v12 = sub_22061D0(a3, v16, v13);
          v34 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_52;
          }
        }
      }

LABEL_44:
      if (v7)
      {
        v29 = (v7 & 7) == 4;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v34;
        }

        return 0;
      }

      v30 = *(a1 + 8);
      if (v30)
      {
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v31 = sub_11F1920((a1 + 8));
        v6 = v34;
      }

      v21 = sub_1952690(v7, v31, v6, a3);
      goto LABEL_51;
    }

    if (v10 == 3)
    {
      if (v7 != 26)
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

        v26 = sub_1379F3C(v28);
        *(a1 + 48) = v26;
        v6 = v34;
      }

      v21 = sub_2200590(a3, v26, v6);
    }

    else
    {
      if (v10 != 4 || v7 != 34)
      {
        goto LABEL_44;
      }

      *(a1 + 16) |= 2u;
      v18 = *(a1 + 56);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_13D3AEC(v20);
        *(a1 + 56) = v18;
        v6 = v34;
      }

      v21 = sub_2205B10(a3, v18, v6);
    }

LABEL_51:
    v34 = v21;
    if (!v21)
    {
      return 0;
    }

LABEL_52:
    ;
  }

  return v34;
}

char *sub_13CBA40(uint64_t a1, char *__dst, unint64_t *a3)
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

      v6 = sub_13CAA38(v13, v15, a3);
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

    v6 = sub_136659C(v16, v18, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v19 = *(a1 + 56);
    *v6 = 34;
    v20 = *(v19 + 20);
    v6[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v6 + 1);
    }

    else
    {
      v21 = v6 + 2;
    }

    v6 = sub_13C5CF4(v19, v21, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v25)
  {
    v27 = v25;
    memcpy(v6, v26, v25);
    v6 += v27;
    return v6;
  }

  return sub_1957130(a3, v26, v25, v6);
}

uint64_t sub_13CBCCC(uint64_t a1)
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
      v7 = sub_13CAFF8(v6);
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
    goto LABEL_20;
  }

  if (v8)
  {
    v9 = sub_1366718(*(a1 + 48));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_13C5FAC(*(a1 + 56));
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v11 = *(a1 + 64);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v12;
LABEL_20:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_13CBE20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EC750((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v11 = sub_1379F3C(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_276C8F0;
      }

      sub_131B904(v11, v14);
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

      v15 = sub_13D3AEC(v17);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_276E530;
    }

    sub_13C613C(v15, v18);
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

uint64_t sub_13CBFA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_13CB52C(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_135B770(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = sub_13C62F8(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13CC02C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    goto LABEL_32;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_7:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_29:
    v7 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_32;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_17:
  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_6:
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v1 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v9 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v9)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_13CC180(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13DBB90(v4);
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
      result = sub_13DBB90(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  *(v1 + 64) = 0;
  v8 = *(v1 + 88);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 96) + 8);
    do
    {
      v10 = *v9++;
      result = sub_13DBB90(v10);
      --v8;
    }

    while (v8);
    *(v1 + 88) = 0;
  }

  v11 = *(v1 + 112);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 120) + 8);
    do
    {
      v13 = *v12++;
      result = sub_13DBB90(v13);
      --v11;
    }

    while (v11);
    *(v1 + 112) = 0;
  }

  v14 = *(v1 + 136);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 144) + 8);
    do
    {
      v16 = *v15++;
      result = sub_13DBB90(v16);
      --v14;
    }

    while (v14);
    *(v1 + 136) = 0;
  }

  v18 = *(v1 + 8);
  v17 = (v1 + 8);
  if (v18)
  {

    return sub_1957EA8(v17);
  }

  return result;
}

void *sub_13CC2A0(void *a1)
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

  sub_13CC334(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13CC334(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = (a1 + 56);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C((a1 + 96));
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  result = (a1 + 112);
  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E7B0)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_13D86B0(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_16E4E08(v6);
      operator delete();
    }

    v7 = *(a1 + 136);
    if (v7)
    {
      sub_16E5B34(v7);
      operator delete();
    }

    v8 = *(a1 + 144);
    if (v8)
    {
      sub_13DAB74(v8);
      operator delete();
    }

    v9 = *(a1 + 152);
    if (v9)
    {
      sub_17998B0(v9);
      operator delete();
    }

    v10 = *(a1 + 160);
    if (v10)
    {
      sub_16EB0C0(v10);
      operator delete();
    }

    v11 = *(a1 + 168);
    if (v11)
    {
      sub_13DC130(v11);
      operator delete();
    }

    v12 = *(a1 + 176);
    if (v12)
    {
      sub_13DFF7C(v12);
      operator delete();
    }

    v13 = *(a1 + 184);
    if (v13)
    {
      sub_16E4E08(v13);
      operator delete();
    }

    v14 = *(a1 + 192);
    if (v14)
    {
      sub_16E4E08(v14);
      operator delete();
    }

    result = *(a1 + 200);
    if (result)
    {
      sub_13E755C(result);

      operator delete();
    }
  }

  return result;
}

void sub_13CC574(void *a1)
{
  sub_13CC2A0(a1);

  operator delete();
}

uint64_t sub_13CC5AC(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  v2 = *(result + 16);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v4 = *(result + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6 = *(result + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v8 = *(result + 96) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v10 = *(result + 112) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
      }

      goto LABEL_42;
    }

    v3 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v5 = *(result + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v7 = *(result + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v9 = *(result + 104) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_52;
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_13BA608(*(result + 120));
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_65;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  result = sub_16E4E44(*(v1 + 128));
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = sub_16E5B70(*(v1 + 136));
  if ((v2 & 0x800) == 0)
  {
LABEL_47:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = sub_13CC02C(*(v1 + 144));
  if ((v2 & 0x1000) == 0)
  {
LABEL_48:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = sub_17998EC(*(v1 + 152));
  if ((v2 & 0x2000) == 0)
  {
LABEL_49:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = sub_16EB0FC(*(v1 + 160));
  if ((v2 & 0x4000) == 0)
  {
LABEL_50:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_69:
  result = sub_13CC180(*(v1 + 168));
  if ((v2 & 0x8000) != 0)
  {
LABEL_51:
    result = sub_13BC600(*(v1 + 176));
  }

LABEL_52:
  if ((v2 & 0x70000) == 0)
  {
    goto LABEL_57;
  }

  if ((v2 & 0x10000) != 0)
  {
    result = sub_16E4E44(*(v1 + 184));
    if ((v2 & 0x20000) == 0)
    {
LABEL_55:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_55;
  }

  result = sub_16E4E44(*(v1 + 192));
  if ((v2 & 0x40000) != 0)
  {
LABEL_56:
    result = sub_13C168C(*(v1 + 200));
  }

LABEL_57:
  if ((v2 & 0x780000) != 0)
  {
    *(v1 + 208) = 0;
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

uint64_t sub_13CC874(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v85 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v85, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = (*v85 + 1);
    v10 = **v85;
    if (**v85 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v85, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v85 + 2);
      }
    }

    *v85 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 10)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 1u;
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = (a1 + 56);
        goto LABEL_162;
      case 2u:
        if (v10 != 18)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x100u;
        v46 = *(a1 + 120);
        if (!v46)
        {
          v47 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v47 = *v47;
          }

          v46 = sub_13E1810(v47);
          *(a1 + 120) = v46;
          v9 = *v85;
        }

        v34 = sub_2204E20(a3, v46, v9);
        goto LABEL_163;
      case 3u:
        if (v10 != 26)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x200u;
        v17 = *(a1 + 128);
        if (v17)
        {
          goto LABEL_73;
        }

        v39 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v39 = *v39;
        }

        v17 = sub_16F5828(v39);
        *(a1 + 128) = v17;
        goto LABEL_72;
      case 4u:
        if (v10 != 34)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x400u;
        v41 = *(a1 + 136);
        if (!v41)
        {
          v42 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v42 = *v42;
          }

          sub_16F58FC(v42);
          v41 = v43;
          *(a1 + 136) = v43;
          v9 = *v85;
        }

        v34 = sub_21F86E8(a3, v41, v9);
        goto LABEL_163;
      case 5u:
        if (v10 != 42)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 2u;
        v30 = *(a1 + 8);
        v15 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v15 = *v15;
        }

        v16 = (a1 + 64);
        goto LABEL_162;
      case 6u:
        if (v10 != 50)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 4u;
        v52 = *(a1 + 8);
        v15 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v15 = *v15;
        }

        v16 = (a1 + 72);
        goto LABEL_162;
      case 7u:
        if (v10 != 56)
        {
          goto LABEL_179;
        }

        v6 |= 0x80000u;
        v57 = v9 + 1;
        v56 = *v9;
        if ((v56 & 0x8000000000000000) == 0)
        {
          goto LABEL_121;
        }

        v58 = *v57;
        v56 = (v58 << 7) + v56 - 128;
        if (v58 < 0)
        {
          v78 = sub_19587DC(v9, v56);
          *v85 = v78;
          *(a1 + 208) = v79 != 0;
          if (!v78)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v57 = v9 + 2;
LABEL_121:
          *v85 = v57;
          *(a1 + 208) = v56 != 0;
        }

        goto LABEL_164;
      case 8u:
        if (v10 != 66)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x800u;
        v44 = *(a1 + 144);
        if (!v44)
        {
          v45 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v45 = *v45;
          }

          v44 = sub_13E1AB4(v45);
          *(a1 + 144) = v44;
          v9 = *v85;
        }

        v34 = sub_2206410(a3, v44, v9);
        goto LABEL_163;
      case 9u:
        if (v10 != 72)
        {
          goto LABEL_179;
        }

        v6 |= 0x100000u;
        v63 = v9 + 1;
        v62 = *v9;
        if ((v62 & 0x8000000000000000) == 0)
        {
          goto LABEL_136;
        }

        v64 = *v63;
        v62 = (v64 << 7) + v62 - 128;
        if (v64 < 0)
        {
          v80 = sub_19587DC(v9, v62);
          *v85 = v80;
          *(a1 + 209) = v81 != 0;
          if (!v80)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v63 = v9 + 2;
LABEL_136:
          *v85 = v63;
          *(a1 + 209) = v62 != 0;
        }

        goto LABEL_164;
      case 0xAu:
        if (v10 != 82)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x1000u;
        v35 = *(a1 + 152);
        if (!v35)
        {
          v36 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v36 = *v36;
          }

          v35 = sub_185D614(v36);
          *(a1 + 152) = v35;
          v9 = *v85;
        }

        v34 = sub_21F51E0(a3, v35, v9);
        goto LABEL_163;
      case 0xBu:
        if (v10 != 90)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x2000u;
        v60 = *(a1 + 160);
        if (!v60)
        {
          v61 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v61 = *v61;
          }

          v60 = sub_16F5DB8(v61);
          *(a1 + 160) = v60;
          v9 = *v85;
        }

        v34 = sub_21F8D18(a3, v60, v9);
        goto LABEL_163;
      case 0xCu:
        if (v10 != 96)
        {
          goto LABEL_179;
        }

        v6 |= 0x200000u;
        v28 = v9 + 1;
        v27 = *v9;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if (v29 < 0)
        {
          v76 = sub_19587DC(v9, v27);
          *v85 = v76;
          *(a1 + 210) = v77 != 0;
          if (!v76)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v28 = v9 + 2;
LABEL_39:
          *v85 = v28;
          *(a1 + 210) = v27 != 0;
        }

        goto LABEL_164;
      case 0xDu:
        if (v10 != 106)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x4000u;
        v31 = *(a1 + 168);
        if (!v31)
        {
          v32 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v32 = *v32;
          }

          sub_13E1C54(v32);
          v31 = v33;
          *(a1 + 168) = v33;
          v9 = *v85;
        }

        v34 = sub_22064A0(a3, v31, v9);
        goto LABEL_163;
      case 0xEu:
        if (v10 != 114)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x8000u;
        v54 = *(a1 + 176);
        if (!v54)
        {
          v55 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v55 = *v55;
          }

          v54 = sub_13E2128(v55);
          *(a1 + 176) = v54;
          v9 = *v85;
        }

        v34 = sub_2205060(a3, v54, v9);
        goto LABEL_163;
      case 0xFu:
        if (v10 == 120)
        {
          v19 = (v9 - 1);
          while (1)
          {
            *v85 = v19 + 1;
            v20 = *(v19 + 1);
            v21 = (v19 + 2);
            if (v20 < 0)
            {
              v22 = *v21;
              v23 = (v22 << 7) + v20;
              LODWORD(v20) = v23 - 128;
              if (v22 < 0)
              {
                *v85 = sub_19587DC(v19 + 1, (v23 - 128));
                if (!*v85)
                {
                  goto LABEL_190;
                }

                LODWORD(v20) = v26;
                goto LABEL_24;
              }

              v21 = (v19 + 3);
            }

            *v85 = v21;
LABEL_24:
            if (v20 > 6)
            {
              sub_12E8538();
            }

            else
            {
              v24 = *(a1 + 24);
              if (v24 == *(a1 + 28))
              {
                v25 = v24 + 1;
                sub_1958E5C((a1 + 24), v24 + 1);
                *(*(a1 + 32) + 4 * v24) = v20;
              }

              else
              {
                *(*(a1 + 32) + 4 * v24) = v20;
                v25 = v24 + 1;
              }

              *(a1 + 24) = v25;
            }

            v19 = *v85;
            if (*a3 <= *v85 || **v85 != 120)
            {
              goto LABEL_164;
            }
          }
        }

        if (v10 != 122)
        {
          goto LABEL_179;
        }

        *&v86 = a1 + 24;
        *(&v86 + 1) = sub_13CD324;
        v87 = a1 + 8;
        v82 = 15;
        goto LABEL_178;
      case 0x10u:
        if (v10 != 130)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x10000u;
        v17 = *(a1 + 184);
        if (v17)
        {
          goto LABEL_73;
        }

        v40 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v40 = *v40;
        }

        v17 = sub_16F5828(v40);
        *(a1 + 184) = v17;
        goto LABEL_72;
      case 0x11u:
        if (v10 != 138)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x20000u;
        v17 = *(a1 + 192);
        if (v17)
        {
          goto LABEL_73;
        }

        v18 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v18 = *v18;
        }

        v17 = sub_16F5828(v18);
        *(a1 + 192) = v17;
LABEL_72:
        v9 = *v85;
LABEL_73:
        v34 = sub_21F4D60(a3, v17, v9);
        goto LABEL_163;
      case 0x12u:
        if (v10 != 144)
        {
          goto LABEL_179;
        }

        v49 = v9 + 1;
        v48 = *v9;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_96;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if (v50 < 0)
        {
          *v85 = sub_19587DC(v9, v48);
          if (!*v85)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v49 = v9 + 2;
LABEL_96:
          *v85 = v49;
        }

        if (v48 > 9)
        {
          sub_13ED138();
        }

        else
        {
          *(a1 + 16) |= 0x400000u;
          *(a1 + 212) = v48;
        }

        goto LABEL_164;
      case 0x13u:
        if (v10 != 154)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 8u;
        v59 = *(a1 + 8);
        v15 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
        if (v59)
        {
          v15 = *v15;
        }

        v16 = (a1 + 80);
        goto LABEL_162;
      case 0x14u:
        if (v10 == 160)
        {
          v66 = (v9 - 2);
          while (1)
          {
            *v85 = v66 + 2;
            v67 = *(v66 + 2);
            v68 = (v66 + 3);
            if (v67 < 0)
            {
              v69 = *v68;
              v70 = (v69 << 7) + v67;
              LODWORD(v67) = v70 - 128;
              if (v69 < 0)
              {
                *v85 = sub_19587DC(v66 + 2, (v70 - 128));
                if (!*v85)
                {
                  goto LABEL_190;
                }

                LODWORD(v67) = v73;
                goto LABEL_147;
              }

              v68 = (v66 + 4);
            }

            *v85 = v68;
LABEL_147:
            if (v67 > 1)
            {
              sub_13B6824();
            }

            else
            {
              v71 = *(a1 + 40);
              if (v71 == *(a1 + 44))
              {
                v72 = v71 + 1;
                sub_1958E5C((a1 + 40), v71 + 1);
                *(*(a1 + 48) + 4 * v71) = v67;
              }

              else
              {
                *(*(a1 + 48) + 4 * v71) = v67;
                v72 = v71 + 1;
              }

              *(a1 + 40) = v72;
            }

            v66 = *v85;
            if (*a3 <= *v85 || **v85 != 416)
            {
              goto LABEL_164;
            }
          }
        }

        if (v10 == 162)
        {
          *&v86 = a1 + 40;
          *(&v86 + 1) = sub_13CD330;
          v87 = a1 + 8;
          v82 = 20;
LABEL_178:
          v88 = v82;
          v34 = sub_1216588(a3, v9, &v86, v5);
LABEL_163:
          *v85 = v34;
          if (!v34)
          {
            goto LABEL_190;
          }

LABEL_164:
          if (sub_195ADC0(a3, v85, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_179:
        if (v10)
        {
          v83 = (v10 & 7) == 4;
        }

        else
        {
          v83 = 1;
        }

        if (!v83)
        {
          if (*v8)
          {
            v84 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v84 = sub_11F1920((a1 + 8));
            v9 = *v85;
          }

          v34 = sub_1952690(v10, v84, v9, a3);
          goto LABEL_163;
        }

        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
        }

        else
        {
LABEL_190:
          *v85 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v6;
        return *v85;
      case 0x15u:
        if (v10 != 170)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x10u;
        v51 = *(a1 + 8);
        v15 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v15 = *v15;
        }

        v16 = (a1 + 88);
        goto LABEL_162;
      case 0x16u:
        if (v10 != 178)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x20u;
        v53 = *(a1 + 8);
        v15 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
        if (v53)
        {
          v15 = *v15;
        }

        v16 = (a1 + 96);
        goto LABEL_162;
      case 0x17u:
        if (v10 != 186)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x40u;
        v65 = *(a1 + 8);
        v15 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
        if (v65)
        {
          v15 = *v15;
        }

        v16 = (a1 + 104);
        goto LABEL_162;
      case 0x18u:
        if (v10 != 194)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x80u;
        v74 = *(a1 + 8);
        v15 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
        if (v74)
        {
          v15 = *v15;
        }

        v16 = (a1 + 112);
LABEL_162:
        v75 = sub_194DB04(v16, v15);
        v34 = sub_1958890(v75, *v85, a3);
        goto LABEL_163;
      case 0x19u:
        if (v10 != 202)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x40000u;
        v37 = *(a1 + 200);
        if (!v37)
        {
          v38 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v38 = *v38;
          }

          v37 = sub_13E9684(v38);
          *(a1 + 200) = v37;
          v9 = *v85;
        }

        v34 = sub_22057B0(a3, v37, v9);
        goto LABEL_163;
      default:
        goto LABEL_179;
    }
  }
}

char *sub_13CD33C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 120);
  *v4 = 18;
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

  v4 = sub_13D893C(v7, v9, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_4:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 128);
  *v4 = 26;
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
  if ((v6 & 0x400) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 136);
  *v4 = 34;
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

  v4 = sub_16E5FE0(v13, v15, a3);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4 = sub_128AEEC(a3, 5, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4 = sub_128AEEC(a3, 6, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80000) == 0)
  {
LABEL_8:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 208);
  *v4 = 56;
  v4[1] = v16;
  v4 += 2;
  if ((v6 & 0x800) == 0)
  {
LABEL_9:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 144);
  *v4 = 66;
  v18 = *(v17 + 20);
  v4[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v4 + 1);
  }

  else
  {
    v19 = v4 + 2;
  }

  v4 = sub_13DAF2C(v17, v19, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_10:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v20 = *(a1 + 209);
  *v4 = 72;
  v4[1] = v20;
  v4 += 2;
  if ((v6 & 0x1000) == 0)
  {
LABEL_11:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 152);
  *v4 = 82;
  v22 = *(v21 + 20);
  v4[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v4 + 1);
  }

  else
  {
    v23 = v4 + 2;
  }

  v4 = sub_1799A68(v21, v23, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_12:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 160);
  *v4 = 90;
  v25 = *(v24 + 20);
  v4[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v4 + 1);
  }

  else
  {
    v26 = v4 + 2;
  }

  v4 = sub_16EBD38(v24, v26, a3);
  if ((v6 & 0x200000) == 0)
  {
LABEL_13:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v27 = *(a1 + 210);
  *v4 = 96;
  v4[1] = v27;
  v4 += 2;
  if ((v6 & 0x4000) == 0)
  {
LABEL_14:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_70;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v28 = *(a1 + 168);
  *v4 = 106;
  v29 = *(v28 + 152);
  v4[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v4 + 1);
  }

  else
  {
    v30 = v4 + 2;
  }

  v4 = sub_13DC704(v28, v30, a3);
  if ((v6 & 0x8000) != 0)
  {
LABEL_70:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v31 = *(a1 + 176);
    *v4 = 114;
    v32 = *(v31 + 20);
    v4[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v4 + 1);
    }

    else
    {
      v33 = v4 + 2;
    }

    v4 = sub_13E0334(v31, v33, a3);
  }

LABEL_76:
  v34 = *(a1 + 24);
  if (v34 < 1)
  {
    v37 = v4;
  }

  else
  {
    for (i = 0; i != v34; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v36 = *(*(a1 + 32) + 4 * i);
      *v4 = 120;
      v4[1] = v36;
      if (v36 > 0x7F)
      {
        v4[1] = v36 | 0x80;
        v38 = v36 >> 7;
        v4[2] = v36 >> 7;
        v37 = v4 + 3;
        if (v36 >= 0x4000)
        {
          LOBYTE(v39) = v4[2];
          do
          {
            *(v37 - 1) = v39 | 0x80;
            v39 = v38 >> 7;
            *v37++ = v38 >> 7;
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
        }
      }

      else
      {
        v37 = v4 + 2;
      }

      v4 = v37;
    }
  }

  if ((v6 & 0x10000) == 0)
  {
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_90;
    }

LABEL_98:
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v45 = *(a1 + 192);
    *v37 = 394;
    v46 = *(v45 + 44);
    v37[2] = v46;
    if (v46 > 0x7F)
    {
      v47 = sub_19575D0(v46, v37 + 2);
    }

    else
    {
      v47 = v37 + 3;
    }

    v37 = sub_16E5070(v45, v47, a3);
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_104;
  }

  if (*a3 <= v37)
  {
    v37 = sub_225EB68(a3, v37);
  }

  v42 = *(a1 + 184);
  *v37 = 386;
  v43 = *(v42 + 44);
  v37[2] = v43;
  if (v43 > 0x7F)
  {
    v44 = sub_19575D0(v43, v37 + 2);
  }

  else
  {
    v44 = v37 + 3;
  }

  v37 = sub_16E5070(v42, v44, a3);
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_98;
  }

LABEL_90:
  if ((v6 & 0x400000) == 0)
  {
LABEL_91:
    v41 = v37;
    goto LABEL_111;
  }

LABEL_104:
  if (*a3 <= v37)
  {
    v37 = sub_225EB68(a3, v37);
  }

  v48 = *(a1 + 212);
  *v37 = 400;
  v37[2] = v48;
  if (v48 > 0x7F)
  {
    v37[2] = v48 | 0x80;
    v49 = v48 >> 7;
    v37[3] = v48 >> 7;
    v41 = v37 + 4;
    if (v48 >= 0x4000)
    {
      LOBYTE(v37) = v37[3];
      do
      {
        *(v41 - 1) = v37 | 0x80;
        v37 = (v49 >> 7);
        *v41++ = v49 >> 7;
        v50 = v49 >> 14;
        v49 >>= 7;
      }

      while (v50);
    }
  }

  else
  {
    v41 = v37 + 3;
  }

LABEL_111:
  if ((v6 & 8) != 0)
  {
    v41 = sub_128AEEC(a3, 19, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v41);
  }

  v51 = *(a1 + 40);
  if (v51 < 1)
  {
    v54 = v41;
  }

  else
  {
    for (j = 0; j != v51; ++j)
    {
      if (*a3 <= v41)
      {
        v41 = sub_225EB68(a3, v41);
      }

      v53 = *(*(a1 + 48) + 4 * j);
      *v41 = 416;
      v41[2] = v53;
      if (v53 > 0x7F)
      {
        v41[2] = v53 | 0x80;
        v55 = v53 >> 7;
        v41[3] = v53 >> 7;
        v54 = v41 + 4;
        if (v53 >= 0x4000)
        {
          LOBYTE(v56) = v41[3];
          do
          {
            *(v54 - 1) = v56 | 0x80;
            v56 = v55 >> 7;
            *v54++ = v55 >> 7;
            v57 = v55 >> 14;
            v55 >>= 7;
          }

          while (v57);
        }
      }

      else
      {
        v54 = v41 + 3;
      }

      v41 = v54;
    }
  }

  if ((v6 & 0x10) != 0)
  {
    v54 = sub_128AEEC(a3, 21, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v54);
    if ((v6 & 0x20) == 0)
    {
LABEL_127:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_133;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_127;
  }

  v54 = sub_128AEEC(a3, 22, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v54);
  if ((v6 & 0x40) == 0)
  {
LABEL_128:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_134;
  }

LABEL_133:
  v54 = sub_128AEEC(a3, 23, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), v54);
  if ((v6 & 0x80) == 0)
  {
LABEL_129:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_135;
  }

LABEL_134:
  v54 = sub_128AEEC(a3, 24, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), v54);
  if ((v6 & 0x40000) == 0)
  {
    goto LABEL_141;
  }

LABEL_135:
  if (*a3 <= v54)
  {
    v54 = sub_225EB68(a3, v54);
  }

  v58 = *(a1 + 200);
  *v54 = 458;
  v59 = *(v58 + 40);
  v54[2] = v59;
  if (v59 > 0x7F)
  {
    v60 = sub_19575D0(v59, v54 + 2);
  }

  else
  {
    v60 = v54 + 3;
  }

  v54 = sub_13E77A4(v58, v60, a3);
LABEL_141:
  v61 = *(a1 + 8);
  if ((v61 & 1) == 0)
  {
    return v54;
  }

  v63 = v61 & 0xFFFFFFFFFFFFFFFCLL;
  v64 = *(v63 + 31);
  if (v64 < 0)
  {
    v65 = *(v63 + 8);
    v64 = *(v63 + 16);
  }

  else
  {
    v65 = (v63 + 8);
  }

  if ((*a3 - v54) >= v64)
  {
    v66 = v64;
    memcpy(v54, v65, v64);
    v54 += v66;
    return v54;
  }

  return sub_1957130(a3, v65, v64, v54);
}

uint64_t sub_13CDC0C(uint64_t a1)
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

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 48) + 4 * v8);
      if (v10 < 0)
      {
        v11 = 10;
      }

      else
      {
        v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v11;
      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = v4 + v2 + 2 * v7 + v9;
  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_29;
  }

  if (v13)
  {
    v24 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v12 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 2) == 0)
    {
LABEL_20:
      if ((v13 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_57;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_20;
  }

  v27 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v12 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 4) == 0)
  {
LABEL_21:
    if ((v13 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_57:
  v30 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(v30 + 23);
  v32 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v31;
  }

  v12 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 8) == 0)
  {
LABEL_22:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_60:
  v33 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v33 + 23);
  v35 = *(v33 + 8);
  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  v12 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x10) == 0)
  {
LABEL_23:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_66;
  }

LABEL_63:
  v36 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  v38 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v38 = v37;
  }

  v12 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x20) == 0)
  {
LABEL_24:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_66:
  v39 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v39 + 23);
  v41 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v41 = v40;
  }

  v12 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40) == 0)
  {
LABEL_25:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_69:
  v42 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v42 + 23);
  v44 = *(v42 + 8);
  if ((v43 & 0x80u) == 0)
  {
    v44 = v43;
  }

  v12 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x80) != 0)
  {
LABEL_26:
    v14 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v12 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_29:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_39;
  }

  if ((v13 & 0x100) != 0)
  {
    v45 = sub_13D8AEC(*(a1 + 120));
    v12 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 0x200) == 0)
    {
LABEL_32:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_75;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  v46 = sub_16E51F0(*(a1 + 128));
  v12 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x400) == 0)
  {
LABEL_33:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_76;
  }

LABEL_75:
  v47 = sub_16E62F4(*(a1 + 136));
  v12 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x800) == 0)
  {
LABEL_34:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_77;
  }

LABEL_76:
  v48 = sub_13DB0AC(*(a1 + 144));
  v12 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x1000) == 0)
  {
LABEL_35:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_78;
  }

LABEL_77:
  v49 = sub_1799B30(*(a1 + 152));
  v12 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x2000) == 0)
  {
LABEL_36:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_79;
  }

LABEL_78:
  v50 = sub_16EC25C(*(a1 + 160));
  v12 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x4000) == 0)
  {
LABEL_37:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_79:
  v51 = sub_13DCAFC(*(a1 + 168));
  v12 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x8000) != 0)
  {
LABEL_38:
    v17 = sub_13E04B4(*(a1 + 176));
    v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_39:
  if ((v13 & 0x7F0000) == 0)
  {
    goto LABEL_49;
  }

  if ((v13 & 0x10000) != 0)
  {
    v52 = sub_16E51F0(*(a1 + 184));
    v12 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x20000) == 0)
    {
LABEL_42:
      if ((v13 & 0x40000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_42;
  }

  v53 = sub_16E51F0(*(a1 + 192));
  v12 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40000) != 0)
  {
LABEL_43:
    v18 = sub_13E78E4(*(a1 + 200));
    v12 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_44:
  v12 += ((v13 >> 19) & 2) + ((v13 >> 18) & 2) + ((v13 >> 20) & 2);
  if ((v13 & 0x400000) != 0)
  {
    v19 = *(a1 + 212);
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v19 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 12;
    }

    v12 += v21;
  }

LABEL_49:
  v22 = *(a1 + 8);
  if (v22)
  {
    v54 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v55 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v55 < 0)
    {
      v55 = *(v54 + 16);
    }

    v12 += v55;
  }

  *(a1 + 20) = v12;
  return v12;
}

void sub_13CE204(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a1 + 40);
    sub_1958E5C((a1 + 40), v9 + v8);
    v10 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy((v10 + 4 * v9), *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 16);
  if (!v11)
  {
    goto LABEL_39;
  }

  if (v11)
  {
    v12 = *(a2 + 56);
    *(a1 + 16) |= 1u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 56), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v11 & 2) == 0)
    {
LABEL_8:
      if ((v11 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_8;
  }

  v15 = *(a2 + 64);
  *(a1 + 16) |= 2u;
  v16 = *(a1 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  sub_194EA1C((a1 + 64), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
  if ((v11 & 4) == 0)
  {
LABEL_9:
    if ((v11 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_21:
  v18 = *(a2 + 72);
  *(a1 + 16) |= 4u;
  v19 = *(a1 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  sub_194EA1C((a1 + 72), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
  if ((v11 & 8) == 0)
  {
LABEL_10:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_24:
  v21 = *(a2 + 80);
  *(a1 + 16) |= 8u;
  v22 = *(a1 + 8);
  v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
  if (v22)
  {
    v23 = *v23;
  }

  sub_194EA1C((a1 + 80), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
  if ((v11 & 0x10) == 0)
  {
LABEL_11:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    v27 = *(a2 + 96);
    *(a1 + 16) |= 0x20u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_194EA1C((a1 + 96), (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
    if ((v11 & 0x40) == 0)
    {
LABEL_13:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_27:
  v24 = *(a2 + 88);
  *(a1 + 16) |= 0x10u;
  v25 = *(a1 + 8);
  v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
  if (v25)
  {
    v26 = *v26;
  }

  sub_194EA1C((a1 + 88), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_33:
  v30 = *(a2 + 104);
  *(a1 + 16) |= 0x40u;
  v31 = *(a1 + 8);
  v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
  if (v31)
  {
    v32 = *v32;
  }

  sub_194EA1C((a1 + 104), (v30 & 0xFFFFFFFFFFFFFFFELL), v32);
  if ((v11 & 0x80) != 0)
  {
LABEL_36:
    v33 = *(a2 + 112);
    *(a1 + 16) |= 0x80u;
    v34 = *(a1 + 8);
    v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v35 = *v35;
    }

    sub_194EA1C((a1 + 112), (v33 & 0xFFFFFFFFFFFFFFFELL), v35);
  }

LABEL_39:
  if ((v11 & 0xFF00) == 0)
  {
    goto LABEL_113;
  }

  if ((v11 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v36 = *(a1 + 120);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_13E1810(v38);
      *(a1 + 120) = v36;
    }

    if (*(a2 + 120))
    {
      v39 = *(a2 + 120);
    }

    else
    {
      v39 = &off_276EC28;
    }

    sub_13BB240(v36, v39);
    if ((v11 & 0x200) == 0)
    {
LABEL_42:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_65;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_42;
  }

  *(a1 + 16) |= 0x200u;
  v40 = *(a1 + 128);
  if (!v40)
  {
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    v40 = sub_16F5828(v42);
    *(a1 + 128) = v40;
  }

  if (*(a2 + 128))
  {
    v43 = *(a2 + 128);
  }

  else
  {
    v43 = &off_277E5E8;
  }

  sub_16E527C(v40, v43);
  if ((v11 & 0x400) == 0)
  {
LABEL_43:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_73;
  }

LABEL_65:
  *(a1 + 16) |= 0x400u;
  v44 = *(a1 + 136);
  if (!v44)
  {
    v45 = *(a1 + 8);
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    sub_16F58FC(v46);
    *(a1 + 136) = v44;
  }

  if (*(a2 + 136))
  {
    v47 = *(a2 + 136);
  }

  else
  {
    v47 = &off_277E650;
  }

  sub_16E645C(v44, v47);
  if ((v11 & 0x800) == 0)
  {
LABEL_44:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_81;
  }

LABEL_73:
  *(a1 + 16) |= 0x800u;
  v48 = *(a1 + 144);
  if (!v48)
  {
    v49 = *(a1 + 8);
    v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (v49)
    {
      v50 = *v50;
    }

    v48 = sub_13E1AB4(v50);
    *(a1 + 144) = v48;
  }

  if (*(a2 + 144))
  {
    v51 = *(a2 + 144);
  }

  else
  {
    v51 = &off_276ED28;
  }

  sub_13BC754(v48, v51);
  if ((v11 & 0x1000) == 0)
  {
LABEL_45:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_89;
  }

LABEL_81:
  *(a1 + 16) |= 0x1000u;
  v52 = *(a1 + 152);
  if (!v52)
  {
    v53 = *(a1 + 8);
    v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
    if (v53)
    {
      v54 = *v54;
    }

    v52 = sub_185D614(v54);
    *(a1 + 152) = v52;
  }

  if (*(a2 + 152))
  {
    v55 = *(a2 + 152);
  }

  else
  {
    v55 = &off_2782568;
  }

  sub_132DE2C(v52, v55);
  if ((v11 & 0x2000) == 0)
  {
LABEL_46:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_97;
  }

LABEL_89:
  *(a1 + 16) |= 0x2000u;
  v56 = *(a1 + 160);
  if (!v56)
  {
    v57 = *(a1 + 8);
    v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    if (v57)
    {
      v58 = *v58;
    }

    v56 = sub_16F5DB8(v58);
    *(a1 + 160) = v56;
  }

  if (*(a2 + 160))
  {
    v59 = *(a2 + 160);
  }

  else
  {
    v59 = &off_277E820;
  }

  sub_16EC8A0(v56, v59);
  if ((v11 & 0x4000) == 0)
  {
LABEL_47:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_105;
  }

LABEL_97:
  *(a1 + 16) |= 0x4000u;
  v60 = *(a1 + 168);
  if (!v60)
  {
    v61 = *(a1 + 8);
    v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (v61)
    {
      v62 = *v62;
    }

    sub_13E1C54(v62);
    *(a1 + 168) = v60;
  }

  if (*(a2 + 168))
  {
    v63 = *(a2 + 168);
  }

  else
  {
    v63 = &off_276EDB8;
  }

  sub_13CE884(v60, v63);
  if ((v11 & 0x8000) != 0)
  {
LABEL_105:
    *(a1 + 16) |= 0x8000u;
    v64 = *(a1 + 176);
    if (!v64)
    {
      v65 = *(a1 + 8);
      v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
      if (v65)
      {
        v66 = *v66;
      }

      v64 = sub_13E2128(v66);
      *(a1 + 176) = v64;
    }

    if (*(a2 + 176))
    {
      v67 = *(a2 + 176);
    }

    else
    {
      v67 = &off_276EF38;
    }

    sub_13BC754(v64, v67);
  }

LABEL_113:
  if ((v11 & 0x7F0000) == 0)
  {
    goto LABEL_123;
  }

  if ((v11 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v69 = *(a1 + 184);
    if (!v69)
    {
      v70 = *(a1 + 8);
      v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
      if (v70)
      {
        v71 = *v71;
      }

      v69 = sub_16F5828(v71);
      *(a1 + 184) = v69;
    }

    if (*(a2 + 184))
    {
      v72 = *(a2 + 184);
    }

    else
    {
      v72 = &off_277E5E8;
    }

    sub_16E527C(v69, v72);
    if ((v11 & 0x20000) == 0)
    {
LABEL_116:
      if ((v11 & 0x40000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_143;
    }
  }

  else if ((v11 & 0x20000) == 0)
  {
    goto LABEL_116;
  }

  *(a1 + 16) |= 0x20000u;
  v73 = *(a1 + 192);
  if (!v73)
  {
    v74 = *(a1 + 8);
    v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
    if (v74)
    {
      v75 = *v75;
    }

    v73 = sub_16F5828(v75);
    *(a1 + 192) = v73;
  }

  if (*(a2 + 192))
  {
    v76 = *(a2 + 192);
  }

  else
  {
    v76 = &off_277E5E8;
  }

  sub_16E527C(v73, v76);
  if ((v11 & 0x40000) == 0)
  {
LABEL_117:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_151;
  }

LABEL_143:
  *(a1 + 16) |= 0x40000u;
  v77 = *(a1 + 200);
  if (!v77)
  {
    v78 = *(a1 + 8);
    v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
    if (v78)
    {
      v79 = *v79;
    }

    v77 = sub_13E9684(v79);
    *(a1 + 200) = v77;
  }

  if (*(a2 + 200))
  {
    v80 = *(a2 + 200);
  }

  else
  {
    v80 = &off_276F278;
  }

  sub_13C1708(v77, v80);
  if ((v11 & 0x80000) == 0)
  {
LABEL_118:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(a1 + 208) = *(a2 + 208);
  if ((v11 & 0x100000) == 0)
  {
LABEL_119:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_120;
    }

LABEL_153:
    *(a1 + 210) = *(a2 + 210);
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

LABEL_152:
  *(a1 + 209) = *(a2 + 209);
  if ((v11 & 0x200000) != 0)
  {
    goto LABEL_153;
  }

LABEL_120:
  if ((v11 & 0x400000) != 0)
  {
LABEL_121:
    *(a1 + 212) = *(a2 + 212);
  }

LABEL_122:
  *(a1 + 16) |= v11;
LABEL_123:
  v68 = *(a2 + 8);
  if (v68)
  {

    sub_1957EF4((a1 + 8), (v68 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13CE884(char *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 16), *(a2 + 24));
    sub_13ECD18(result + 2, v6, (v5 + 8), v4, **(result + 4) - *(result + 6));
    v7 = *(result + 6) + v4;
    *(result + 6) = v7;
    v8 = *(result + 4);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8((result + 40), *(a2 + 48));
    sub_13ECD18(result + 5, v11, (v10 + 8), v9, **(result + 7) - *(result + 12));
    v12 = *(result + 12) + v9;
    *(result + 12) = v12;
    v13 = *(result + 7);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 64);
  if (v14)
  {
    v15 = *(result + 16);
    sub_1958E5C(result + 16, v15 + v14);
    v16 = *(result + 9);
    *(result + 16) += *(a2 + 64);
    memcpy((v16 + 4 * v15), *(a2 + 72), 4 * *(a2 + 64));
  }

  v17 = *(a2 + 88);
  if (v17)
  {
    v18 = *(a2 + 96);
    v19 = sub_19592E8((result + 80), *(a2 + 88));
    sub_13ECD18(result + 10, v19, (v18 + 8), v17, **(result + 12) - *(result + 22));
    v20 = *(result + 22) + v17;
    *(result + 22) = v20;
    v21 = *(result + 12);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 112);
  if (v22)
  {
    v23 = *(a2 + 120);
    v24 = sub_19592E8((result + 104), *(a2 + 112));
    sub_13ECD18(result + 13, v24, (v23 + 8), v22, **(result + 15) - *(result + 28));
    v25 = *(result + 28) + v22;
    *(result + 28) = v25;
    v26 = *(result + 15);
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  v27 = *(a2 + 136);
  if (v27)
  {
    v28 = *(a2 + 144);
    v29 = sub_19592E8((result + 128), *(a2 + 136));
    sub_13ECD18(result + 16, v29, (v28 + 8), v27, **(result + 18) - *(result + 34));
    v30 = *(result + 34) + v27;
    *(result + 34) = v30;
    v31 = *(result + 18);
    if (*v31 < v30)
    {
      *v31 = v30;
    }
  }

  v32 = *(a2 + 8);
  if (v32)
  {

    sub_1957EF4(result + 1, (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13CEAF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x200) != 0)
  {
    result = sub_16E5370(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = sub_16E6614(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = sub_16ECE70(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = sub_16E5370(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 192));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_13CEB8C(void *a1)
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

void sub_13CEC00(void *a1)
{
  sub_13CEB8C(a1);

  operator delete();
}

uint64_t sub_13CEC38(uint64_t a1)
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

char *sub_13CEC50(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v13 > 0x29)
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

char *sub_13CEDB8(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_13CEEE0(uint64_t a1)
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

uint64_t sub_13CEF64(uint64_t a1)
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
  if (a1 != &off_276E8A8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_13CEB8C(v6);
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

void sub_13CF01C(uint64_t a1)
{
  sub_13CEF64(a1);

  operator delete();
}

uint64_t sub_13CF054(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    v2 = *(result + 24);
    v3 = *(v2 + 8);
    result = v2 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v3)
    {
      result = sub_1957EA8(result);
    }
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

char *sub_13CF0C0(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_13D3F9C(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2206530(a3, v14, v6);
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

char *sub_13CF204(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_13CEDB8(v6, v8, a3);
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

uint64_t sub_13CF310(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_13CEEE0(*(a1 + 24));
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

std::string *sub_13CF390(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      data = sub_13D3F9C(v7);
      *(v3 + 24) = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_276E888;
    }

    result = sub_12B9D50(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_13CF450(uint64_t a1)
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

uint64_t sub_13CF4CC(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  if ((v3 & 6) != 0)
  {
    *(a1 + 60) = 0;
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_13CF560(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  if ((v3 & 6) != 0)
  {
    *(a1 + 60) = 0;
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_13CF5F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_13DE148(*(result + 24));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 40) = 0;
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

uint64_t sub_13CF660(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_22;
  }

  if (*(result + 16))
  {
    result = sub_13E32A0(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      v3 = *(v1 + 40);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 16) & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_13E3308(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ((v2 & 8) != 0)
  {
    result = sub_13E3388(*(v1 + 48));
  }

  if ((v2 & 0x10) != 0)
  {
    v5 = *(v1 + 56);
    v6 = *(v5 + 8);
    result = v5 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v6)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_13E33E8(*(v1 + 64));
  }

  if ((v2 & 0x40) != 0)
  {
    v7 = *(v1 + 72);
    v8 = *(v7 + 8);
    result = v7 + 8;
    if (v8)
    {
      result = sub_1957EA8(result);
    }
  }

  if (v2 < 0)
  {
    result = sub_13E3458(*(v1 + 80));
  }

LABEL_22:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

void *sub_13CF748(void *a1)
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

  sub_13CF7E4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13EC394(a1 + 6);
  sub_13EC310(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13CF7E4(uint64_t a1)
{
  v3 = *(a1 + 72);
  result = (a1 + 72);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E8C8)
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      sub_13D86B0(v4);
      operator delete();
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      sub_16E7270(v5);
      operator delete();
    }

    v6 = *(a1 + 96);
    if (v6)
    {
      sub_13E2368(v6);
      operator delete();
    }

    v7 = *(a1 + 104);
    if (v7)
    {
      sub_13E27AC(v7);
      operator delete();
    }

    v8 = *(a1 + 112);
    if (v8)
    {
      sub_13DF054(v8);
      operator delete();
    }

    v9 = *(a1 + 120);
    if (v9)
    {
      sub_13DF7E8(v9);
      operator delete();
    }

    v10 = *(a1 + 128);
    if (v10)
    {
      sub_13DEA00(v10);
      operator delete();
    }

    v11 = *(a1 + 136);
    if (v11)
    {
      sub_13E30A8(v11);
      operator delete();
    }

    v12 = *(a1 + 144);
    if (v12)
    {
      sub_172E648(v12);
      operator delete();
    }

    v13 = *(a1 + 152);
    if (v13)
    {
      sub_13DEA00(v13);
      operator delete();
    }

    v14 = *(a1 + 160);
    if (v14)
    {
      sub_13BCF9C(v14);
      operator delete();
    }

    v15 = *(a1 + 168);
    if (v15)
    {
      sub_13D21BC(v15);
      operator delete();
    }

    v16 = *(a1 + 176);
    if (v16)
    {
      sub_13D86B0(v16);
      operator delete();
    }

    v17 = *(a1 + 184);
    if (v17)
    {
      sub_13CEF64(v17);
      operator delete();
    }

    result = *(a1 + 192);
    if (result)
    {
      sub_13D2878(result);

      operator delete();
    }
  }

  return result;
}

void sub_13CFA14(void *a1)
{
  sub_13CF748(a1);

  operator delete();
}

uint64_t sub_13CFA4C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13DA134(v4);
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
      result = sub_13BB45C(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_47:
  result = sub_13BA608(*(v1 + 80));
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = sub_16E72AC(*(v1 + 88));
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = sub_13CF450(*(v1 + 96));
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_51:
    result = sub_13CF4CC(*(v1 + 112));
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_50:
  result = sub_13BDF10(*(v1 + 104));
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_52:
  result = sub_13CF560(*(v1 + 120));
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    result = sub_13CF5F4(*(v1 + 128));
  }

LABEL_19:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v8 & 0x100) != 0)
  {
    result = sub_13CF660(*(v1 + 136));
    if ((v8 & 0x200) == 0)
    {
LABEL_22:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  result = sub_172BCB4(*(v1 + 144));
  if ((v8 & 0x400) == 0)
  {
LABEL_23:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = sub_13CF5F4(*(v1 + 152));
  if ((v8 & 0x800) == 0)
  {
LABEL_24:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = sub_13BD080(*(v1 + 160));
  if ((v8 & 0x1000) == 0)
  {
LABEL_25:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = sub_13CFC3C(*(v1 + 168));
  if ((v8 & 0x2000) == 0)
  {
LABEL_26:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = sub_13BA608(*(v1 + 176));
  if ((v8 & 0x4000) == 0)
  {
LABEL_27:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_44:
  result = sub_13CF054(*(v1 + 184));
  if ((v8 & 0x8000) != 0)
  {
LABEL_28:
    result = sub_13CFCC4(*(v1 + 192));
  }

LABEL_29:
  if ((v8 & 0x70000) != 0)
  {
    *(v1 + 208) = 0;
    *(v1 + 200) = 0;
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

uint64_t sub_13CFC3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

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
  if ((v1 & 0xC) != 0)
  {
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_13CFCC4(uint64_t result)
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
      result = sub_13BA608(*(result + 32));
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

uint64_t sub_13CFD58(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v85 = a2;
  v5 = a3[11].u32[1];
  while (2)
  {
    if (sub_195ADC0(a3, v85, v5))
    {
      return *v85;
    }

    v6 = (*v85 + 1);
    v7 = **v85;
    if (**v85 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v85, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v85 + 2);
      }
    }

    *v85 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 8)
        {
          goto LABEL_143;
        }

        v10 = v6 + 1;
        v11 = *v6;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v12 = *v10;
        v13 = (v12 << 7) + v11;
        LODWORD(v11) = v13 - 128;
        if (v12 < 0)
        {
          *v85 = sub_19587DC(v6, (v13 - 128));
          if (!*v85)
          {
            return 0;
          }

          LODWORD(v11) = v83;
        }

        else
        {
          v10 = v6 + 2;
LABEL_12:
          *v85 = v10;
        }

        if (sub_13BC530(v11))
        {
          *(a1 + 16) |= 0x10000u;
          *(a1 + 200) = v11;
        }

        else
        {
          sub_12E8450();
        }

        goto LABEL_151;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 1u;
        v48 = *(a1 + 8);
        v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v49 = *v49;
        }

        v50 = sub_194DB04((a1 + 72), v49);
        v17 = sub_1958890(v50, *v85, a3);
        goto LABEL_150;
      case 3u:
        if (v7 != 26)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 2u;
        v33 = *(a1 + 80);
        if (v33)
        {
          goto LABEL_124;
        }

        v34 = *(a1 + 8);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        v33 = sub_13E1810(v35);
        *(a1 + 80) = v33;
        goto LABEL_123;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_143;
        }

        v39 = v6 - 1;
        while (1)
        {
          v40 = v39 + 1;
          *v85 = v39 + 1;
          v41 = *(a1 + 40);
          if (v41 && (v42 = *(a1 + 32), v42 < *v41))
          {
            *(a1 + 32) = v42 + 1;
            v43 = *&v41[2 * v42 + 2];
          }

          else
          {
            v44 = sub_13E1A28(*(a1 + 24));
            v43 = sub_19593CC(a1 + 24, v44);
            v40 = *v85;
          }

          v39 = sub_22065C0(a3, v43, v40);
          *v85 = v39;
          if (!v39)
          {
            return 0;
          }

          if (*a3 <= v39 || *v39 != 34)
          {
            goto LABEL_151;
          }
        }

      case 5u:
        if (v7 != 40)
        {
          goto LABEL_143;
        }

        v24 = v6 + 1;
        v23 = *v6;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          *v85 = sub_19587DC(v6, v23);
          if (!*v85)
          {
            return 0;
          }
        }

        else
        {
          v24 = v6 + 2;
LABEL_37:
          *v85 = v24;
        }

        if (v23 > 0xA)
        {
          sub_12E85B8();
        }

        else
        {
          *(a1 + 16) |= 0x20000u;
          *(a1 + 204) = v23;
        }

        goto LABEL_151;
      case 6u:
        if (v7 != 50)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 4u;
        v60 = *(a1 + 88);
        if (!v60)
        {
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          v60 = sub_16F5A54(v62);
          *(a1 + 88) = v60;
          v6 = *v85;
        }

        v17 = sub_22002C0(a3, v60, v6);
        goto LABEL_150;
      case 7u:
        if (v7 != 56)
        {
          goto LABEL_143;
        }

        v67 = v6 + 1;
        v66 = *v6;
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_115;
        }

        v68 = *v67;
        v66 = (v68 << 7) + v66 - 128;
        if (v68 < 0)
        {
          *v85 = sub_19587DC(v6, v66);
          if (!*v85)
          {
            return 0;
          }
        }

        else
        {
          v67 = v6 + 2;
LABEL_115:
          *v85 = v67;
        }

        if (v66 > 0x17)
        {
          sub_13ED178();
        }

        else
        {
          *(a1 + 16) |= 0x40000u;
          *(a1 + 208) = v66;
        }

        goto LABEL_151;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 8u;
        v45 = *(a1 + 96);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_13E6F6C(v47);
          *(a1 + 96) = v45;
          v6 = *v85;
        }

        v17 = sub_2206650(a3, v45, v6);
        goto LABEL_150;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x10u;
        v74 = *(a1 + 104);
        if (!v74)
        {
          v75 = *(a1 + 8);
          v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
          if (v75)
          {
            v76 = *v76;
          }

          v74 = sub_13E6FF0(v76);
          *(a1 + 104) = v74;
          v6 = *v85;
        }

        v17 = sub_22053C0(a3, v74, v6);
        goto LABEL_150;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x20u;
        v30 = *(a1 + 112);
        if (!v30)
        {
          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          v30 = sub_13E1FD0(v32);
          *(a1 + 112) = v30;
          v6 = *v85;
        }

        v17 = sub_22066E0(a3, v30, v6);
        goto LABEL_150;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x40u;
        v71 = *(a1 + 120);
        if (!v71)
        {
          v72 = *(a1 + 8);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          if (v72)
          {
            v73 = *v73;
          }

          v71 = sub_13E207C(v73);
          *(a1 + 120) = v71;
          v6 = *v85;
        }

        v17 = sub_2206770(a3, v71, v6);
        goto LABEL_150;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x80u;
        v18 = *(a1 + 128);
        if (v18)
        {
          goto LABEL_32;
        }

        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v18 = sub_13E1F50(v22);
        *(a1 + 128) = v18;
        goto LABEL_31;
      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x100u;
        v26 = *(a1 + 136);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          sub_13E706C(v28);
          v26 = v29;
          *(a1 + 136) = v29;
          v6 = *v85;
        }

        v17 = sub_2206890(a3, v26, v6);
        goto LABEL_150;
      case 0xEu:
        if (v7 != 114)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x200u;
        v63 = *(a1 + 144);
        if (!v63)
        {
          v64 = *(a1 + 8);
          v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v64)
          {
            v65 = *v65;
          }

          v63 = sub_1734BDC(v65);
          *(a1 + 144) = v63;
          v6 = *v85;
        }

        v17 = sub_2206920(a3, v63, v6);
        goto LABEL_150;
      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x400u;
        v18 = *(a1 + 152);
        if (v18)
        {
          goto LABEL_32;
        }

        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_13E1F50(v20);
        *(a1 + 152) = v18;
LABEL_31:
        v6 = *v85;
LABEL_32:
        v17 = sub_2206800(a3, v18, v6);
        goto LABEL_150;
      case 0x10u:
        if (v7 != 130)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x800u;
        v36 = *(a1 + 160);
        if (!v36)
        {
          v37 = *(a1 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          v36 = sub_13C1304(v38);
          *(a1 + 160) = v36;
          v6 = *v85;
        }

        v17 = sub_22069B0(a3, v36, v6);
        goto LABEL_150;
      case 0x11u:
        if (v7 != 138)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x1000u;
        v14 = *(a1 + 168);
        if (!v14)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v14 = sub_13D4158(v16);
          *(a1 + 168) = v14;
          v6 = *v85;
        }

        v17 = sub_2206A40(a3, v14, v6);
        goto LABEL_150;
      case 0x12u:
        if (v7 != 146)
        {
          goto LABEL_143;
        }

        v51 = v6 - 2;
        while (1)
        {
          v52 = v51 + 2;
          *v85 = v51 + 2;
          v53 = *(a1 + 64);
          if (v53 && (v54 = *(a1 + 56), v54 < *v53))
          {
            *(a1 + 56) = v54 + 1;
            v55 = *&v53[2 * v54 + 2];
          }

          else
          {
            v56 = sub_13BCF1C(*(a1 + 48));
            v55 = sub_19593CC(a1 + 48, v56);
            v52 = *v85;
          }

          v51 = sub_2206AD0(a3, v55, v52);
          *v85 = v51;
          if (!v51)
          {
            return 0;
          }

          if (*a3 <= v51 || *v51 != 402)
          {
            goto LABEL_151;
          }
        }

      case 0x13u:
        if (v7 != 154)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x2000u;
        v33 = *(a1 + 176);
        if (v33)
        {
          goto LABEL_124;
        }

        v69 = *(a1 + 8);
        v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
        if (v69)
        {
          v70 = *v70;
        }

        v33 = sub_13E1810(v70);
        *(a1 + 176) = v33;
LABEL_123:
        v6 = *v85;
LABEL_124:
        v17 = sub_2204E20(a3, v33, v6);
        goto LABEL_150;
      case 0x14u:
        if (v7 != 162)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x4000u;
        v77 = *(a1 + 184);
        if (!v77)
        {
          v78 = *(a1 + 8);
          v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
          if (v78)
          {
            v79 = *v79;
          }

          v77 = sub_13D4018(v79);
          *(a1 + 184) = v77;
          v6 = *v85;
        }

        v17 = sub_2206B60(a3, v77, v6);
        goto LABEL_150;
      case 0x15u:
        if (v7 != 170)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 0x8000u;
        v57 = *(a1 + 192);
        if (!v57)
        {
          v58 = *(a1 + 8);
          v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
          if (v58)
          {
            v59 = *v59;
          }

          v57 = sub_13D41E0(v59);
          *(a1 + 192) = v57;
          v6 = *v85;
        }

        v17 = sub_2206BF0(a3, v57, v6);
        goto LABEL_150;
      default:
LABEL_143:
        if (v7)
        {
          v80 = (v7 & 7) == 4;
        }

        else
        {
          v80 = 1;
        }

        if (!v80)
        {
          v81 = *(a1 + 8);
          if (v81)
          {
            v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v82 = sub_11F1920((a1 + 8));
            v6 = *v85;
          }

          v17 = sub_1952690(v7, v82, v6, a3);
LABEL_150:
          *v85 = v17;
          if (!v17)
          {
            return 0;
          }

LABEL_151:
          v5 = a3[11].u32[1];
          continue;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return *v85;
    }
  }
}

char *sub_13D0634(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 200);
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
    v6 = sub_128AEEC(a3, 2, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 80);
    *v6 = 26;
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

    v6 = sub_13D893C(v11, v13, a3);
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
      *v6 = 34;
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

      v6 = sub_13DA568(v16, v18, a3);
    }
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v20 = *(a1 + 204);
    *v6 = 40;
    v6[1] = v20;
    if (v20 > 0x7F)
    {
      v6[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v6[2] = v20 >> 7;
      v19 = v6 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v6[2];
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
      v19 = v6 + 2;
    }
  }

  else
  {
    v19 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 88);
    *v19 = 50;
    v25 = *(v24 + 20);
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v19 + 1);
    }

    else
    {
      v26 = v19 + 2;
    }

    v19 = sub_16E74A8(v24, v26, a3);
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v28 = *(a1 + 208);
    *v19 = 56;
    v19[1] = v28;
    if (v28 > 0x7F)
    {
      v19[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v19[2] = v28 >> 7;
      v27 = v19 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v27 - 1) = v19 | 0x80;
          v19 = (v29 >> 7);
          *v27++ = v29 >> 7;
          v30 = v29 >> 14;
          v29 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v27 = v19 + 2;
    }
  }

  else
  {
    v27 = v19;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v31 = *(a1 + 96);
    *v27 = 66;
    v32 = *(v31 + 20);
    v27[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v27 + 1);
    }

    else
    {
      v33 = v27 + 2;
    }

    v27 = sub_13E25D8(v31, v33, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_54:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_75;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_54;
  }

  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v34 = *(a1 + 104);
  *v27 = 74;
  v35 = *(v34 + 20);
  v27[1] = v35;
  if (v35 > 0x7F)
  {
    v36 = sub_19575D0(v35, v27 + 1);
  }

  else
  {
    v36 = v27 + 2;
  }

  v27 = sub_13E2C48(v34, v36, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_55:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_81;
  }

LABEL_75:
  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v37 = *(a1 + 112);
  *v27 = 82;
  v38 = *(v37 + 20);
  v27[1] = v38;
  if (v38 > 0x7F)
  {
    v39 = sub_19575D0(v38, v27 + 1);
  }

  else
  {
    v39 = v27 + 2;
  }

  v27 = sub_13DF480(v37, v39, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_56:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_87;
  }

LABEL_81:
  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v40 = *(a1 + 120);
  *v27 = 90;
  v41 = *(v40 + 20);
  v27[1] = v41;
  if (v41 > 0x7F)
  {
    v42 = sub_19575D0(v41, v27 + 1);
  }

  else
  {
    v42 = v27 + 2;
  }

  v27 = sub_13DFC14(v40, v42, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_57:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_93;
  }

LABEL_87:
  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v43 = *(a1 + 128);
  *v27 = 98;
  v44 = *(v43 + 20);
  v27[1] = v44;
  if (v44 > 0x7F)
  {
    v45 = sub_19575D0(v44, v27 + 1);
  }

  else
  {
    v45 = v27 + 2;
  }

  v27 = sub_13DED6C(v43, v45, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_58:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_99;
  }

LABEL_93:
  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v46 = *(a1 + 136);
  *v27 = 106;
  v47 = *(v46 + 20);
  v27[1] = v47;
  if (v47 > 0x7F)
  {
    v48 = sub_19575D0(v47, v27 + 1);
  }

  else
  {
    v48 = v27 + 2;
  }

  v27 = sub_13E38E8(v46, v48, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_59:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_105;
  }

LABEL_99:
  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v49 = *(a1 + 144);
  *v27 = 114;
  v50 = *(v49 + 40);
  v27[1] = v50;
  if (v50 > 0x7F)
  {
    v51 = sub_19575D0(v50, v27 + 1);
  }

  else
  {
    v51 = v27 + 2;
  }

  v27 = sub_172E814(v49, v51, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_60:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_111;
  }

LABEL_105:
  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v52 = *(a1 + 152);
  *v27 = 122;
  v53 = *(v52 + 20);
  v27[1] = v53;
  if (v53 > 0x7F)
  {
    v54 = sub_19575D0(v53, v27 + 1);
  }

  else
  {
    v54 = v27 + 2;
  }

  v27 = sub_13DED6C(v52, v54, a3);
  if ((v5 & 0x800) == 0)
  {
LABEL_61:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_117;
  }

LABEL_111:
  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v55 = *(a1 + 160);
  *v27 = 386;
  v56 = *(v55 + 20);
  v27[2] = v56;
  if (v56 > 0x7F)
  {
    v57 = sub_19575D0(v56, v27 + 2);
  }

  else
  {
    v57 = v27 + 3;
  }

  v27 = sub_13BD308(v55, v57, a3);
  if ((v5 & 0x1000) != 0)
  {
LABEL_117:
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v58 = *(a1 + 168);
    *v27 = 394;
    v59 = *(v58 + 20);
    v27[2] = v59;
    if (v59 > 0x7F)
    {
      v60 = sub_19575D0(v59, v27 + 2);
    }

    else
    {
      v60 = v27 + 3;
    }

    v27 = sub_13D252C(v58, v60, a3);
  }

LABEL_123:
  v61 = *(a1 + 56);
  if (v61)
  {
    for (j = 0; j != v61; ++j)
    {
      if (*a3 <= v27)
      {
        v27 = sub_225EB68(a3, v27);
      }

      v63 = *(*(a1 + 64) + 8 * j + 8);
      *v27 = 402;
      v64 = *(v63 + 20);
      v27[2] = v64;
      if (v64 > 0x7F)
      {
        v65 = sub_19575D0(v64, v27 + 2);
      }

      else
      {
        v65 = v27 + 3;
      }

      v27 = sub_13BBB68(v63, v65, a3);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v66 = *(a1 + 176);
    *v27 = 410;
    v67 = *(v66 + 20);
    v27[2] = v67;
    if (v67 > 0x7F)
    {
      v68 = sub_19575D0(v67, v27 + 2);
    }

    else
    {
      v68 = v27 + 3;
    }

    v27 = sub_13D893C(v66, v68, a3);
    if ((v5 & 0x4000) == 0)
    {
LABEL_133:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_147;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_133;
  }

  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v69 = *(a1 + 184);
  *v27 = 418;
  v70 = *(v69 + 20);
  v27[2] = v70;
  if (v70 > 0x7F)
  {
    v71 = sub_19575D0(v70, v27 + 2);
  }

  else
  {
    v71 = v27 + 3;
  }

  v27 = sub_13CF204(v69, v71, a3);
  if ((v5 & 0x8000) != 0)
  {
LABEL_147:
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v72 = *(a1 + 192);
    *v27 = 426;
    v73 = *(v72 + 20);
    v27[2] = v73;
    if (v73 > 0x7F)
    {
      v74 = sub_19575D0(v73, v27 + 2);
    }

    else
    {
      v74 = v27 + 3;
    }

    v27 = sub_13D2B18(v72, v74, a3);
  }

LABEL_153:
  v75 = *(a1 + 8);
  if ((v75 & 1) == 0)
  {
    return v27;
  }

  v77 = v75 & 0xFFFFFFFFFFFFFFFCLL;
  v78 = *(v77 + 31);
  if (v78 < 0)
  {
    v79 = *(v77 + 8);
    v78 = *(v77 + 16);
  }

  else
  {
    v79 = (v77 + 8);
  }

  if ((*a3 - v27) >= v78)
  {
    v80 = v78;
    memcpy(v27, v79, v78);
    v27 += v80;
    return v27;
  }

  return sub_1957130(a3, v79, v78, v27);
}

uint64_t sub_13D0FB8(uint64_t a1)
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
      v7 = sub_13DA7E8(v6);
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
  v9 = v2 + 2 * v8;
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
      v14 = sub_13BBF30(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_25;
  }

  if (v15)
  {
    v23 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v23 + 23);
    v25 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v25 = v24;
    }

    v9 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 2) == 0)
    {
LABEL_18:
      if ((v15 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_49;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  v26 = sub_13D8AEC(*(a1 + 80));
  v9 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 4) == 0)
  {
LABEL_19:
    if ((v15 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v27 = sub_16E7590(*(a1 + 88));
  v9 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) == 0)
  {
LABEL_20:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v28 = sub_13E26C0(*(a1 + 96));
  v9 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x10) == 0)
  {
LABEL_21:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_52:
    v30 = sub_13DF6B0(*(a1 + 112));
    v9 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x40) == 0)
    {
LABEL_23:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_51:
  v29 = sub_13E2E10(*(a1 + 104));
  v9 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_52;
  }

LABEL_22:
  if ((v15 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_53:
  v31 = sub_13DFE44(*(a1 + 120));
  v9 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x80) != 0)
  {
LABEL_24:
    v16 = sub_13DEF6C(*(a1 + 128));
    v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_25:
  if ((v15 & 0xFF00) == 0)
  {
    goto LABEL_35;
  }

  if ((v15 & 0x100) != 0)
  {
    v32 = sub_13E3CDC(*(a1 + 136));
    v9 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x200) == 0)
    {
LABEL_28:
      if ((v15 & 0x400) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    }
  }

  else if ((v15 & 0x200) == 0)
  {
    goto LABEL_28;
  }

  v33 = sub_172E954(*(a1 + 144));
  v9 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x400) == 0)
  {
LABEL_29:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

LABEL_57:
  v34 = sub_13DEF6C(*(a1 + 152));
  v9 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x800) == 0)
  {
LABEL_30:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_59;
  }

LABEL_58:
  v35 = sub_13BD46C(*(a1 + 160));
  v9 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x1000) == 0)
  {
LABEL_31:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

LABEL_59:
  v36 = sub_13D271C(*(a1 + 168));
  v9 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x2000) == 0)
  {
LABEL_32:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_61;
  }

LABEL_60:
  v37 = sub_13D8AEC(*(a1 + 176));
  v9 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x4000) == 0)
  {
LABEL_33:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_61:
  v38 = sub_13CF310(*(a1 + 184));
  v9 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x8000) != 0)
  {
LABEL_34:
    v17 = sub_13D2C44(*(a1 + 192));
    v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if ((v15 & 0x70000) == 0)
  {
    goto LABEL_43;
  }

  if ((v15 & 0x10000) != 0)
  {
    v39 = *(a1 + 200);
    v40 = ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v39 >= 0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 11;
    }

    v9 += v41;
    if ((v15 & 0x20000) == 0)
    {
LABEL_38:
      if ((v15 & 0x40000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_39;
    }
  }

  else if ((v15 & 0x20000) == 0)
  {
    goto LABEL_38;
  }

  v42 = *(a1 + 204);
  v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v42 >= 0)
  {
    v44 = v43;
  }

  else
  {
    v44 = 11;
  }

  v9 += v44;
  if ((v15 & 0x40000) != 0)
  {
LABEL_39:
    v18 = *(a1 + 208);
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v18 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 11;
    }

    v9 += v20;
  }

LABEL_43:
  v21 = *(a1 + 8);
  if (v21)
  {
    v45 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v46 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v46 < 0)
    {
      v46 = *(v45 + 16);
    }

    v9 += v46;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_13D14C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EC858((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_13EC8E4((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (!v14)
  {
    goto LABEL_76;
  }

  if (v14)
  {
    v15 = *(a2 + 72);
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 72), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v14 & 2) == 0)
    {
LABEL_10:
      if ((v14 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_10;
  }

  *(a1 + 16) |= 2u;
  v18 = *(a1 + 80);
  if (!v18)
  {
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v18 = sub_13E1810(v20);
    *(a1 + 80) = v18;
  }

  if (*(a2 + 80))
  {
    v21 = *(a2 + 80);
  }

  else
  {
    v21 = &off_276EC28;
  }

  sub_13BB240(v18, v21);
  if ((v14 & 4) == 0)
  {
LABEL_11:
    if ((v14 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_28:
  *(a1 + 16) |= 4u;
  v22 = *(a1 + 88);
  if (!v22)
  {
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v22 = sub_16F5A54(v24);
    *(a1 + 88) = v22;
  }

  if (*(a2 + 88))
  {
    v25 = *(a2 + 88);
  }

  else
  {
    v25 = &off_277E6F0;
  }

  sub_12F5A34(v22, v25);
  if ((v14 & 8) == 0)
  {
LABEL_12:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_36:
  *(a1 + 16) |= 8u;
  v26 = *(a1 + 96);
  if (!v26)
  {
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v26 = sub_13E6F6C(v28);
    *(a1 + 96) = v26;
  }

  if (*(a2 + 96))
  {
    v29 = *(a2 + 96);
  }

  else
  {
    v29 = &off_276F020;
  }

  sub_12F5A34(v26, v29);
  if ((v14 & 0x10) == 0)
  {
LABEL_13:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_52:
    *(a1 + 16) |= 0x20u;
    v34 = *(a1 + 112);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_13E1FD0(v36);
      *(a1 + 112) = v34;
    }

    if (*(a2 + 112))
    {
      v37 = *(a2 + 112);
    }

    else
    {
      v37 = &off_276EEB8;
    }

    sub_13D1B20(v34, v37);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_68;
    }

    goto LABEL_60;
  }

LABEL_44:
  *(a1 + 16) |= 0x10u;
  v30 = *(a1 + 104);
  if (!v30)
  {
    v31 = *(a1 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    v30 = sub_13E6FF0(v32);
    *(a1 + 104) = v30;
  }

  if (*(a2 + 104))
  {
    v33 = *(a2 + 104);
  }

  else
  {
    v33 = &off_276F048;
  }

  sub_13BED44(v30, v33);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_52;
  }

LABEL_14:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_60:
  *(a1 + 16) |= 0x40u;
  v38 = *(a1 + 120);
  if (!v38)
  {
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    v38 = sub_13E207C(v40);
    *(a1 + 120) = v38;
  }

  if (*(a2 + 120))
  {
    v41 = *(a2 + 120);
  }

  else
  {
    v41 = &off_276EEF8;
  }

  sub_13D1B20(v38, v41);
  if ((v14 & 0x80) != 0)
  {
LABEL_68:
    *(a1 + 16) |= 0x80u;
    v42 = *(a1 + 128);
    if (!v42)
    {
      v43 = *(a1 + 8);
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
      if (v43)
      {
        v44 = *v44;
      }

      v42 = sub_13E1F50(v44);
      *(a1 + 128) = v42;
    }

    if (*(a2 + 128))
    {
      v45 = *(a2 + 128);
    }

    else
    {
      v45 = &off_276EE88;
    }

    sub_13D1C4C(v42, v45);
  }

LABEL_76:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_150;
  }

  if ((v14 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v46 = *(a1 + 136);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      sub_13E706C(v48);
      *(a1 + 136) = v46;
    }

    if (*(a2 + 136))
    {
      v49 = *(a2 + 136);
    }

    else
    {
      v49 = &off_276F0A0;
    }

    sub_13D1D44(v46, v49);
    if ((v14 & 0x200) == 0)
    {
LABEL_79:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_102;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_79;
  }

  *(a1 + 16) |= 0x200u;
  v50 = *(a1 + 144);
  if (!v50)
  {
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    v50 = sub_1734BDC(v52);
    *(a1 + 144) = v50;
  }

  if (*(a2 + 144))
  {
    v53 = *(a2 + 144);
  }

  else
  {
    v53 = &off_2780140;
  }

  sub_172CB04(v50, v53);
  if ((v14 & 0x400) == 0)
  {
LABEL_80:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_110;
  }

LABEL_102:
  *(a1 + 16) |= 0x400u;
  v54 = *(a1 + 152);
  if (!v54)
  {
    v55 = *(a1 + 8);
    v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
    if (v55)
    {
      v56 = *v56;
    }

    v54 = sub_13E1F50(v56);
    *(a1 + 152) = v54;
  }

  if (*(a2 + 152))
  {
    v57 = *(a2 + 152);
  }

  else
  {
    v57 = &off_276EE88;
  }

  sub_13D1C4C(v54, v57);
  if ((v14 & 0x800) == 0)
  {
LABEL_81:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_118;
  }

LABEL_110:
  *(a1 + 16) |= 0x800u;
  v58 = *(a1 + 160);
  if (!v58)
  {
    v59 = *(a1 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    v58 = sub_13C1304(v60);
    *(a1 + 160) = v58;
  }

  if (*(a2 + 160))
  {
    v61 = *(a2 + 160);
  }

  else
  {
    v61 = &off_276E288;
  }

  sub_13BD55C(v58, v61);
  if ((v14 & 0x1000) == 0)
  {
LABEL_82:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_126;
  }

LABEL_118:
  *(a1 + 16) |= 0x1000u;
  v62 = *(a1 + 168);
  if (!v62)
  {
    v63 = *(a1 + 8);
    v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
    if (v63)
    {
      v64 = *v64;
    }

    v62 = sub_13D4158(v64);
    *(a1 + 168) = v62;
  }

  if (*(a2 + 168))
  {
    v65 = *(a2 + 168);
  }

  else
  {
    v65 = &off_276E9A0;
  }

  sub_12CC47C(v62, v65);
  if ((v14 & 0x2000) == 0)
  {
LABEL_83:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_134;
  }

LABEL_126:
  *(a1 + 16) |= 0x2000u;
  v66 = *(a1 + 176);
  if (!v66)
  {
    v67 = *(a1 + 8);
    v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
    if (v67)
    {
      v68 = *v68;
    }

    v66 = sub_13E1810(v68);
    *(a1 + 176) = v66;
  }

  if (*(a2 + 176))
  {
    v69 = *(a2 + 176);
  }

  else
  {
    v69 = &off_276EC28;
  }

  sub_13BB240(v66, v69);
  if ((v14 & 0x4000) == 0)
  {
LABEL_84:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_142;
  }

LABEL_134:
  *(a1 + 16) |= 0x4000u;
  v70 = *(a1 + 184);
  if (!v70)
  {
    v71 = *(a1 + 8);
    v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
    if (v71)
    {
      v72 = *v72;
    }

    v70 = sub_13D4018(v72);
    *(a1 + 184) = v70;
  }

  if (*(a2 + 184))
  {
    v73 = *(a2 + 184);
  }

  else
  {
    v73 = &off_276E8A8;
  }

  sub_13CF390(v70, v73);
  if ((v14 & 0x8000) != 0)
  {
LABEL_142:
    *(a1 + 16) |= 0x8000u;
    v74 = *(a1 + 192);
    if (!v74)
    {
      v75 = *(a1 + 8);
      v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
      if (v75)
      {
        v76 = *v76;
      }

      v74 = sub_13D41E0(v76);
      *(a1 + 192) = v74;
    }

    if (*(a2 + 192))
    {
      v77 = *(a2 + 192);
    }

    else
    {
      v77 = &off_276E9D0;
    }

    sub_13D203C(v74, v77);
  }

LABEL_150:
  if ((v14 & 0x70000) == 0)
  {
    goto LABEL_156;
  }

  if ((v14 & 0x10000) == 0)
  {
    if ((v14 & 0x20000) == 0)
    {
      goto LABEL_153;
    }

LABEL_161:
    *(a1 + 204) = *(a2 + 204);
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_154;
  }

  *(a1 + 200) = *(a2 + 200);
  if ((v14 & 0x20000) != 0)
  {
    goto LABEL_161;
  }

LABEL_153:
  if ((v14 & 0x40000) != 0)
  {
LABEL_154:
    *(a1 + 208) = *(a2 + 208);
  }

LABEL_155:
  *(a1 + 16) |= v14;
LABEL_156:
  v78 = *(a2 + 8);
  if (v78)
  {

    sub_1957EF4((a1 + 8), (v78 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13D1B20(uint64_t a1, uint64_t a2)
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
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 56) = *(a2 + 56);
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

std::string *sub_13D1C4C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        v7 = *(v3 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        sub_13E1ED4(v8);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276EE58;
      }

      result = sub_13DE954(data, v9);
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

    *(v3 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(v3 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(v3 + 40) = *(a2 + 40);
      goto LABEL_7;
    }

LABEL_21:
    *(v3 + 36) = *(a2 + 36);
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

    return sub_1957EF4((v3 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void sub_13D1D44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_75;
  }

  if (*(a2 + 16))
  {
    *(a1 + 16) |= 1u;
    v5 = *(a1 + 24);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_13E70F0(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_276F0F8;
    }

    sub_13E3F00(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a2 + 16) & 2) == 0)
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

    sub_13E7194(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_276F138;
  }

  sub_13E3F00(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_26:
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

    v13 = sub_13E72C0(v15);
    *(a1 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_276F1A0;
  }

  sub_12B9D50(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_34:
  *(a1 + 16) |= 8u;
  v17 = *(a1 + 48);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_13E7238(v19);
    *(a1 + 48) = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_276F178;
  }

  sub_12B0A14(v17, v20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_50:
    *(a1 + 16) |= 0x20u;
    v25 = *(a1 + 64);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_13E73B8(v27);
      *(a1 + 64) = v25;
    }

    if (*(a2 + 64))
    {
      v28 = *(a2 + 64);
    }

    else
    {
      v28 = &off_276F1E0;
    }

    sub_13E3FEC(v25, v28);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_58;
  }

LABEL_42:
  *(a1 + 16) |= 0x10u;
  v21 = *(a1 + 56);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_13E733C(v23);
    *(a1 + 56) = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_276F1C0;
  }

  sub_12B9D50(v21, v24);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_50;
  }

LABEL_8:
  if ((v4 & 0x40) != 0)
  {
LABEL_58:
    *(a1 + 16) |= 0x40u;
    v29 = *(a1 + 72);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_13E7434(v31);
      *(a1 + 72) = v29;
    }

    v32 = *(a2 + 72);
    if (!v32)
    {
      v32 = &off_276F208;
    }

    v33 = v32[1];
    if (v33)
    {
      sub_1957EF4((v29 + 8), (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_66:
  if (v4 < 0)
  {
    *(a1 + 16) |= 0x80u;
    v34 = *(a1 + 80);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_13E74AC(v36);
      *(a1 + 80) = v34;
    }

    if (*(a2 + 80))
    {
      v37 = *(a2 + 80);
    }

    else
    {
      v37 = &off_276F220;
    }

    sub_13E40BC(v34, v37);
  }

LABEL_75:
  v38 = *(a2 + 8);
  if (v38)
  {

    sub_1957EF4((a1 + 8), (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13D203C(uint64_t a1, uint64_t a2)
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

        v8 = sub_13E1810(v10);
        *(a1 + 32) = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_276EC28;
      }

      sub_13BB240(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_13D2128(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x200) != 0)
  {
    if (!sub_172CD84(*(a1 + 144)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 160);
  v5 = *(v4 + 32);
  do
  {
    v3 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v6 = v5 - 1;
    v7 = sub_13C12B4(*(*(v4 + 40) + 8 * v5));
    v5 = v6;
  }

  while ((v7 & 1) != 0);
  return v3;
}

uint64_t sub_13D21BC(uint64_t a1)
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

void sub_13D2274(uint64_t a1)
{
  sub_13D21BC(a1);

  operator delete();
}

uint64_t sub_13D22AC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v28, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v28 + 1);
    v7 = **v28;
    if (**v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v28 + 2);
      }
    }

    *v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 24)
        {
          v22 = v6 + 1;
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            *v28 = sub_19587DC(v6, v21);
            if (!*v28)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v22 = v6 + 2;
LABEL_35:
            *v28 = v22;
          }

          if (v21 > 4)
          {
            sub_1313740();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 44) = v21;
          }

          continue;
        }

        goto LABEL_38;
      }

      if (v10 != 4 || v7 != 34)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 2u;
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v17 = (a1 + 32);
    }

    else
    {
      if (v10 != 1)
      {
        if (v10 == 2 && v7 == 16)
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
            *v28 = sub_19587DC(v6, v12);
            if (!*v28)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v13 = v6 + 2;
LABEL_17:
            *v28 = v13;
          }

          if (v12 > 5)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v12;
          }

          continue;
        }

LABEL_38:
        if (v7)
        {
          v24 = (v7 & 7) == 4;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v28;
          }

LABEL_57:
          *v28 = 0;
          return *v28;
        }

        v25 = *(a1 + 8);
        if (v25)
        {
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v26 = sub_11F1920((a1 + 8));
          v6 = *v28;
        }

        v20 = sub_1952690(v7, v26, v6, a3);
        goto LABEL_45;
      }

      if (v7 != 10)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
    }

    v19 = sub_194DB04(v17, v16);
    v20 = sub_1958890(v19, *v28, a3);
LABEL_45:
    *v28 = v20;
    if (!v20)
    {
      goto LABEL_57;
    }
  }

  return *v28;
}

char *sub_13D252C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
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

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 44);
    *v7 = 24;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v7[2];
        do
        {
          *(v12 - 1) = v15 | 0x80;
          v15 = v14 >> 7;
          *v12++ = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  if ((v6 & 2) != 0)
  {
    v12 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v12);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v20)
  {
    v22 = v20;
    memcpy(v12, v21, v20);
    v12 += v22;
    return v12;
  }

  return sub_1957130(a3, v21, v20, v12);
}

uint64_t sub_13D271C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_23;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v9 = *(a1 + 40);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v10;
  if ((v1 & 8) != 0)
  {
LABEL_19:
    v11 = *(a1 + 44);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v12;
  }

LABEL_23:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_13D2878(uint64_t a1)
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

  if (a1 != &off_276E9D0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_13D86B0(v6);
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

void sub_13D2944(uint64_t a1)
{
  sub_13D2878(a1);

  operator delete();
}

uint64_t sub_13D297C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v22 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v22, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v22 + 1);
    v7 = **v22;
    if (**v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v22 + 2);
      }
    }

    *v22 = v6;
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

          v15 = sub_13E1810(v17);
          *(a1 + 32) = v15;
          v6 = *v22;
        }

        v14 = sub_2204E20(a3, v15, v6);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v20 = sub_194DB04((a1 + 24), v19);
      v14 = sub_1958890(v20, *v22, a3);
      goto LABEL_28;
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
        return *v22;
      }

LABEL_34:
      *v22 = 0;
      return *v22;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_28:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  return *v22;
}

char *sub_13D2B18(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 18;
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

    v4 = sub_13D893C(v7, v9, a3);
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_13D2C44(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_13D8AEC(*(a1 + 32));
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

void *sub_13D2D38(void *a1)
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

  sub_13D2DBC(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_13D2DBC(void *result)
{
  if (result != &off_276E9F8)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_13C1DEC(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_13C4880(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_13CC2A0(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_13CF748(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_13C8018(v6);
      operator delete();
    }

    v7 = v1[8];
    if (v7)
    {
      sub_13CB5B4(v7);
      operator delete();
    }

    v8 = v1[9];
    if (v8)
    {
      sub_13C57C8(v8);
      operator delete();
    }

    result = v1[10];
    if (result)
    {
      sub_13D6E94(result);

      operator delete();
    }
  }

  return result;
}

void sub_13D2F08(void *a1)
{
  sub_13D2D38(a1);

  operator delete();
}

char *sub_13D2F40(uint64_t a1, char *a2, int32x2_t *a3)
{
  v46 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v46, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v46 + 1;
    v7 = *v46;
    if (*v46 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v46, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v46 + 2;
      }
    }

    v46 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 4)
    {
      if (v7 >> 3 > 6)
      {
        if (v10 == 7)
        {
          if (v7 == 58)
          {
            *(a1 + 16) |= 0x40u;
            v39 = *(a1 + 72);
            if (!v39)
            {
              v40 = *(a1 + 8);
              v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
              if (v40)
              {
                v41 = *v41;
              }

              v39 = sub_13D3AEC(v41);
              *(a1 + 72) = v39;
              v6 = v46;
            }

            v15 = sub_2205B10(a3, v39, v6);
            goto LABEL_76;
          }
        }

        else if (v10 == 8 && v7 == 66)
        {
          *(a1 + 16) |= 0x80u;
          v23 = *(a1 + 80);
          if (!v23)
          {
            v24 = *(a1 + 8);
            v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
            if (v24)
            {
              v25 = *v25;
            }

            sub_13D80D4(v25);
            v23 = v26;
            *(a1 + 80) = v26;
            v6 = v46;
          }

          v15 = sub_22050F0(a3, v23, v6);
          goto LABEL_76;
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 0x10u;
          v31 = *(a1 + 56);
          if (!v31)
          {
            v32 = *(a1 + 8);
            v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
            if (v32)
            {
              v33 = *v33;
            }

            sub_13D3CF4(v33);
            v31 = v34;
            *(a1 + 56) = v34;
            v6 = v46;
          }

          v15 = sub_2206EC0(a3, v31, v6);
          goto LABEL_76;
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        *(a1 + 16) |= 0x20u;
        v16 = *(a1 + 64);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_13D3E5C(v18);
          *(a1 + 64) = v16;
          v6 = v46;
        }

        v15 = sub_2206F50(a3, v16, v6);
        goto LABEL_76;
      }
    }

    else if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v35 = *(a1 + 40);
          if (!v35)
          {
            v36 = *(a1 + 8);
            v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
            if (v36)
            {
              v37 = *v37;
            }

            sub_13D3EFC(v37);
            v35 = v38;
            *(a1 + 40) = v38;
            v6 = v46;
          }

          v15 = sub_2206DA0(a3, v35, v6);
          goto LABEL_76;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v19 = *(a1 + 48);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          sub_13D4090(v21);
          v19 = v22;
          *(a1 + 48) = v22;
          v6 = v46;
        }

        v15 = sub_2206E30(a3, v19, v6);
        goto LABEL_76;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v27 = *(a1 + 24);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          sub_13D3918(v29);
          v27 = v30;
          *(a1 + 24) = v30;
          v6 = v46;
        }

        v15 = sub_2206C80(a3, v27, v6);
        goto LABEL_76;
      }
    }

    else if (v10 == 2 && v7 == 18)
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

        v12 = sub_13D39BC(v14);
        *(a1 + 32) = v12;
        v6 = v46;
      }

      v15 = sub_2206D10(a3, v12, v6);
      goto LABEL_76;
    }

    if (v7)
    {
      v42 = (v7 & 7) == 4;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v46;
      }

      return 0;
    }

    v43 = *(a1 + 8);
    if (v43)
    {
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v44 = sub_11F1920((a1 + 8));
      v6 = v46;
    }

    v15 = sub_1952690(v7, v44, v6, a3);
LABEL_76:
    v46 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v46;
}