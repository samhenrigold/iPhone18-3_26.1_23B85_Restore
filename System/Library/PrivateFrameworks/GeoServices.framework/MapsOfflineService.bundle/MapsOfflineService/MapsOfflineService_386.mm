uint64_t sub_159C020(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 2 * v1;
  if (v1 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  v7 = *(a1 + 16);
  v8 = vdupq_n_s32(v7);
  if (v7)
  {
    if (v7)
    {
      v16 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v7 & 2) == 0)
      {
LABEL_9:
        if ((v7 & 4) == 0)
        {
LABEL_13:
          v12.i64[0] = 0x200000002;
          v12.i64[1] = 0x200000002;
          v2 += vaddvq_s32(vandq_s8(vshlq_u32(v8, xmmword_232F5A0), v12)) + ((v7 >> 6) & 2);
          goto LABEL_14;
        }

LABEL_10:
        v9 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
        v10 = *(v9 + 23);
        v11 = *(v9 + 8);
        if ((v10 & 0x80u) == 0)
        {
          v11 = v10;
        }

        v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_13;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

    v19 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_14:
  if ((v7 & 0x7F00) != 0)
  {
    v13.i64[0] = 0x200000002;
    v13.i64[1] = 0x200000002;
    v2 += vaddvq_s32(vandq_s8(vshlq_u32(v8, xmmword_232B880), v13)) + ((v7 >> 11) & 2) + ((v7 >> 12) & 2) + ((v7 >> 13) & 2);
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v22 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v2 += v23;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_159C208(uint64_t a1, uint64_t a2)
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

        goto LABEL_35;
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
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_35:
    v17 = *(a2 + 64);
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 64), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }

LABEL_38:
    *(a1 + 72) = *(a2 + 72);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(a1 + 73) = *(a2 + 73);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 74) = *(a2 + 74);
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
      *(a1 + 76) = *(a2 + 76);
      goto LABEL_14;
    }

LABEL_41:
    *(a1 + 75) = *(a2 + 75);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0x7F00) == 0)
  {
    goto LABEL_25;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 77) = *(a2 + 77);
    if ((v9 & 0x200) == 0)
    {
LABEL_18:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_45;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  *(a1 + 78) = *(a2 + 78);
  if ((v9 & 0x400) == 0)
  {
LABEL_19:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a1 + 79) = *(a2 + 79);
  if ((v9 & 0x800) == 0)
  {
LABEL_20:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a1 + 80) = *(a2 + 80);
  if ((v9 & 0x1000) == 0)
  {
LABEL_21:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_48:
    *(a1 + 82) = *(a2 + 82);
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  *(a1 + 81) = *(a2 + 81);
  if ((v9 & 0x2000) != 0)
  {
    goto LABEL_48;
  }

LABEL_22:
  if ((v9 & 0x4000) != 0)
  {
LABEL_23:
    *(a1 + 83) = *(a2 + 83);
  }

LABEL_24:
  *(a1 + 16) |= v9;
LABEL_25:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_159C470(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (a1 != &off_27782D8)
  {
    v6 = *(a1 + 88);
    if (v6)
    {
      sub_159B13C(v6);
      operator delete();
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      sub_159B13C(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956AFC((a1 + 48));
  sub_15B4DD8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_159C584(uint64_t a1)
{
  sub_159C470(a1);

  operator delete();
}

uint64_t sub_159C5BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_157E0B4(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 16);
  if ((v6 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *v10 = 0;
  *(v10 + 23) = 0;
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  result = sub_159B248(*(a1 + 88));
  if ((v6 & 8) != 0)
  {
LABEL_10:
    result = sub_159B248(*(a1 + 96));
  }

LABEL_11:
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 96) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_159C6DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v45, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v45 + 1);
    v8 = **v45;
    if (**v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v45 + 2);
      }
    }

    *v45 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      if (v8 >> 3 <= 5)
      {
        if (v11 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_65;
          }

          *(a1 + 16) |= 2u;
          v29 = *(a1 + 8);
          v22 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v22 = *v22;
          }

          v23 = (a1 + 80);
          goto LABEL_47;
        }

        if (v11 == 5 && v8 == 42)
        {
          v12 = v7 - 1;
          while (1)
          {
            v13 = (v12 + 1);
            *v45 = v12 + 1;
            v14 = *(a1 + 64);
            if (v14 && (v15 = *(a1 + 56), v15 < *v14))
            {
              *(a1 + 56) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              v17 = *(a1 + 48);
              if (!v17)
              {
                operator new();
              }

              *v19 = v18;
              v19[1] = sub_195A650;
              *v18 = 0;
              v18[1] = 0;
              v18[2] = 0;
              v16 = sub_19593CC(a1 + 48, v18);
              v13 = *v45;
            }

            v12 = sub_1958890(v16, v13, a3);
            *v45 = v12;
            if (!v12)
            {
              goto LABEL_83;
            }

            if (*a3 <= v12 || *v12 != 42)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_65;
      }

      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 4u;
        v24 = *(a1 + 88);
        if (v24)
        {
          goto LABEL_54;
        }

        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        v24 = sub_15ADBC8(v33);
        *(a1 + 88) = v24;
      }

      else
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 8u;
        v24 = *(a1 + 96);
        if (v24)
        {
          goto LABEL_54;
        }

        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_15ADBC8(v26);
        *(a1 + 96) = v24;
      }

      v7 = *v45;
LABEL_54:
      v31 = sub_22200AC(a3, v24, v7);
      goto LABEL_72;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_65;
    }

    v5 |= 0x10u;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80000000) == 0)
    {
      v28 = (v7 + 1);
LABEL_77:
      *v45 = v28;
      *(a1 + 104) = v27;
      goto LABEL_73;
    }

    v27 = (v7[1] << 7) + v27 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v28 = (v7 + 2);
      goto LABEL_77;
    }

    v43 = sub_19587DC(v7, v27);
    *v45 = v43;
    *(a1 + 104) = v44;
    if (!v43)
    {
      goto LABEL_83;
    }

LABEL_73:
    if (sub_195ADC0(a3, v45, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 2)
  {
    if (v11 != 3 || v8 != 26)
    {
      goto LABEL_65;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v23 = (a1 + 72);
LABEL_47:
    v30 = sub_194DB04(v23, v22);
    v31 = sub_1958890(v30, *v45, a3);
LABEL_72:
    *v45 = v31;
    if (!v31)
    {
      goto LABEL_83;
    }

    goto LABEL_73;
  }

  if (v8 == 18)
  {
    v34 = (v7 - 1);
    while (1)
    {
      v35 = (v34 + 1);
      *v45 = v34 + 1;
      v36 = *(a1 + 40);
      if (v36 && (v37 = *(a1 + 32), v37 < *v36))
      {
        *(a1 + 32) = v37 + 1;
        v38 = *&v36[2 * v37 + 2];
      }

      else
      {
        v39 = sub_15AC14C(*(a1 + 24));
        v38 = sub_19593CC(a1 + 24, v39);
        v35 = *v45;
      }

      v34 = sub_221F9EC(a3, v38, v35);
      *v45 = v34;
      if (!v34)
      {
        goto LABEL_83;
      }

      if (*a3 <= v34 || *v34 != 18)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_65:
  if (v8)
  {
    v40 = (v8 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = *(a1 + 8);
    if (v41)
    {
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v7 = *v45;
    }

    v31 = sub_1952690(v8, v42, v7, a3);
    goto LABEL_72;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  *v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v45;
}

char *sub_159CB1C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
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

      v6 = sub_157E2B0(v13, v15, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 3, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 4, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  v16 = *(a1 + 56);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 64) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || (*a3 - v6 + 14) < v19)
      {
        v6 = sub_1957480(a3, 5, v18, v6);
      }

      else
      {
        *v6 = 42;
        v6[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = v6 + 2;
        memcpy(v20, v18, v19);
        v6 = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v21 = *(a1 + 88);
    *v6 = 50;
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

    v6 = sub_159BB8C(v21, v23, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v24 = *(a1 + 96);
    *v6 = 58;
    v25 = *(v24 + 20);
    v6[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v6 + 1);
    }

    else
    {
      v26 = v6 + 2;
    }

    v6 = sub_159BB8C(v24, v26, a3);
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v6;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if ((*a3 - v6) >= v30)
  {
    v32 = v30;
    memcpy(v6, v31, v30);
    v6 += v32;
    return v6;
  }

  return sub_1957130(a3, v31, v30, v6);
}

uint64_t sub_159CE80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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
    v6 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 0x10) != 0)
  {
    v9 = *(a1 + 104);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v10;
  }

  return v2;
}

uint64_t sub_159CF50(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x13) != 0)
  {
    v13 = sub_159CE80(a1);
  }

  else
  {
    v2 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    v10 = *(a1 + 104);
    v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 10;
    }

    v13 = v4 + v8 + v5 + v9 + v12 + 3;
  }

  v14 = *(a1 + 32);
  v15 = v13 + v14;
  v16 = *(a1 + 40);
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
      v20 = sub_157E398(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 56);
  v22 = v15 + v21;
  if (v21 >= 1)
  {
    v23 = (*(a1 + 64) + 8);
    do
    {
      v24 = *v23++;
      v25 = *(v24 + 23);
      v26 = *(v24 + 8);
      if ((v25 & 0x80u) == 0)
      {
        v26 = v25;
      }

      v22 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      --v21;
    }

    while (v21);
  }

  v27 = *(a1 + 16);
  if ((v27 & 0xC) != 0)
  {
    if ((v27 & 4) != 0)
    {
      v28 = sub_159C020(*(a1 + 88));
      v22 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v27 & 8) != 0)
    {
      v29 = sub_159C020(*(a1 + 96));
      v22 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v30 = *(a1 + 8);
  if (v30)
  {
    v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = *((v30 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v33 < 0)
    {
      v33 = *(v32 + 16);
    }

    v22 += v33;
  }

  *(a1 + 20) = v22;
  return v22;
}

void sub_159D174(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B5C60((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

  v14 = *(a2 + 16);
  if ((v14 & 0x1F) != 0)
  {
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
    }

    if ((v14 & 2) != 0)
    {
      v18 = *(a2 + 80);
      *(a1 + 16) |= 2u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      sub_194EA1C((a1 + 80), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    }

    if ((v14 & 4) != 0)
    {
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

        v22 = sub_15ADBC8(v24);
        *(a1 + 88) = v22;
      }

      if (*(a2 + 88))
      {
        v25 = *(a2 + 88);
      }

      else
      {
        v25 = &off_2778280;
      }

      sub_159C208(v22, v25);
      if ((v14 & 8) == 0)
      {
LABEL_18:
        if ((v14 & 0x10) == 0)
        {
LABEL_20:
          *(a1 + 16) |= v14;
          goto LABEL_21;
        }

LABEL_19:
        *(a1 + 104) = *(a2 + 104);
        goto LABEL_20;
      }
    }

    else if ((v14 & 8) == 0)
    {
      goto LABEL_18;
    }

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

      v26 = sub_15ADBC8(v28);
      *(a1 + 96) = v26;
    }

    if (*(a2 + 96))
    {
      v29 = *(a2 + 96);
    }

    else
    {
      v29 = &off_2778280;
    }

    sub_159C208(v26, v29);
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_159D3B4(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x13) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  do
  {
    result = v1 < 1;
    if (v1 < 1)
    {
      break;
    }

    v4 = *(v2 + 8 * v1--);
  }

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

uint64_t sub_159D40C(uint64_t a1)
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

  if (a1 != &off_2778348)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15954E4(v6);
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

void sub_159D4D8(uint64_t a1)
{
  sub_159D40C(a1);

  operator delete();
}

uint64_t sub_159D510(uint64_t result)
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
      result = sub_159562C(*(result + 32));
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

uint64_t sub_159D5A8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v26, i) & 1) == 0; i = a3[11].u32[1])
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 32);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_15AD608(v21);
        *(a1 + 32) = v19;
        v6 = *v26;
      }

      v15 = sub_222013C(a3, v19, v6);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 1 && v7 == 8)
        {
          v23 = v6 + 1;
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            *v26 = sub_19587DC(v6, v22);
            if (!*v26)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v23 = v6 + 2;
LABEL_35:
            *v26 = v23;
          }

          if (v22 > 3)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v22;
          }

          continue;
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
            return *v26;
          }

LABEL_46:
          *v26 = 0;
          return *v26;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v14 = sub_11F1920((a1 + 8));
          v6 = *v26;
        }

        v15 = sub_1952690(v7, v14, v6, a3);
        goto LABEL_30;
      }

      if (v7 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v18 = sub_194DB04((a1 + 24), v17);
      v15 = sub_1958890(v18, *v26, a3);
    }

LABEL_30:
    *v26 = v15;
    if (!v15)
    {
      goto LABEL_46;
    }
  }

  return *v26;
}

char *sub_159D7C0(uint64_t a1, char *__dst, unint64_t *a3)
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

    v6 = sub_1595FC8(v11, v13, a3);
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

uint64_t sub_159D96C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_15;
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
    v7 = sub_159657C(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = *(a1 + 40);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v9;
  }

LABEL_15:
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

void sub_159DA84(uint64_t a1, uint64_t a2)
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

      v9 = sub_15AD608(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27780C8;
    }

    sub_1596914(v9, v12);
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

BOOL sub_159DB94(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  do
  {
    result = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = *(v4 + 8 * v3--);
  }

  while ((~*(v5 + 16) & 3) == 0);
  return result;
}

uint64_t sub_159DBE8(uint64_t a1)
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

  v5 = (a1 + 80);
  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 64);
  sub_1956AFC((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_159DCA0(uint64_t a1)
{
  sub_159DBE8(a1);

  operator delete();
}

uint64_t sub_159DCD8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  *(a1 + 64) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v3 & 0x1E) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
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

uint64_t sub_159DD74(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v57 = a2;
  v6 = 0;
  if ((sub_195ADC0(a3, v57, a3[11].u32[1]) & 1) == 0)
  {
    v8 = (a1 + 8);
    do
    {
      v9 = (*v57 + 1);
      v10 = **v57;
      if (**v57 < 0)
      {
        v11 = *v9;
        v12 = v10 + (v11 << 7);
        v10 = v12 - 128;
        if (v11 < 0)
        {
          v9 = sub_1958824(*v57, v12 - 128);
          v10 = v13;
        }

        else
        {
          v9 = (*v57 + 2);
        }
      }

      *v57 = v9;
      v14 = v10 >> 3;
      if (v10 >> 3 > 4)
      {
        if (v10 >> 3 > 6)
        {
          if (v14 == 7)
          {
            if (v10 == 58)
            {
              v43 = v9 - 1;
              while (1)
              {
                v44 = (v43 + 1);
                *v57 = v43 + 1;
                v45 = *(a1 + 56);
                if (v45 && (v46 = *(a1 + 48), v46 < *v45))
                {
                  *(a1 + 48) = v46 + 1;
                  v47 = *&v45[2 * v46 + 2];
                }

                else
                {
                  v48 = *(a1 + 40);
                  if (!v48)
                  {
                    operator new();
                  }

                  *v50 = v49;
                  v50[1] = sub_195A650;
                  *v49 = 0;
                  v49[1] = 0;
                  v49[2] = 0;
                  v47 = sub_19593CC(a1 + 40, v49);
                  v44 = *v57;
                }

                v43 = sub_1958890(v47, v44, a3);
                *v57 = v43;
                if (!v43)
                {
                  goto LABEL_105;
                }

                if (*a3 <= v43 || *v43 != 58)
                {
                  goto LABEL_100;
                }
              }
            }

            goto LABEL_92;
          }

          if (v14 != 8)
          {
LABEL_92:
            if (v10)
            {
              v55 = (v10 & 7) == 4;
            }

            else
            {
              v55 = 1;
            }

            if (v55)
            {
              if (v9)
              {
                a3[10].i32[0] = v10 - 1;
                break;
              }

LABEL_105:
              *v57 = 0;
              break;
            }

            if (*v8)
            {
              v56 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v56 = sub_11F1920((a1 + 8));
              v9 = *v57;
            }

            v38 = sub_1952690(v10, v56, v9, a3);
            goto LABEL_99;
          }

          if (v10 != 64)
          {
            if (v10 != 66)
            {
              goto LABEL_92;
            }

            *&v58 = a1 + 64;
            *(&v58 + 1) = sub_1578F74;
            v59 = a1 + 8;
            v60 = 8;
            v38 = sub_1216588(a3, v9, &v58, v5);
            goto LABEL_99;
          }

          v27 = (v9 - 1);
LABEL_45:
          *v57 = v27 + 1;
          v28 = *(v27 + 1);
          v29 = (v27 + 2);
          if (v28 < 0)
          {
            v30 = *v29;
            v31 = (v30 << 7) + v28;
            LODWORD(v28) = v31 - 128;
            if ((v30 & 0x80000000) == 0)
            {
              v29 = (v27 + 3);
              goto LABEL_48;
            }

            *v57 = sub_19587DC(v27 + 1, (v31 - 128));
            if (!*v57)
            {
              goto LABEL_105;
            }

            LODWORD(v28) = v34;
          }

          else
          {
LABEL_48:
            *v57 = v29;
          }

          if (v28 > 0xF)
          {
            sub_13B67EC();
          }

          else
          {
            v32 = *(a1 + 64);
            if (v32 == *(a1 + 68))
            {
              v33 = v32 + 1;
              sub_1958E5C((a1 + 64), v32 + 1);
              *(*(a1 + 72) + 4 * v32) = v28;
            }

            else
            {
              *(*(a1 + 72) + 4 * v32) = v28;
              v33 = v32 + 1;
            }

            *(a1 + 64) = v33;
          }

          v27 = *v57;
          if (*a3 <= *v57 || **v57 != 64)
          {
            continue;
          }

          goto LABEL_45;
        }

        if (v14 == 5)
        {
          if (v10 != 45)
          {
            goto LABEL_92;
          }

          v39 = *v9;
          v16 = v9 + 4;
          v6 |= 8u;
          *(a1 + 100) = v39;
LABEL_66:
          *v57 = v16;
          continue;
        }

        if (v14 != 6 || v10 != 48)
        {
          goto LABEL_92;
        }

        v6 |= 0x10u;
        v19 = v9 + 1;
        v18 = *v9;
        if (v18 < 0)
        {
          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v53 = sub_19587DC(v9, v18);
            *v57 = v53;
            *(a1 + 104) = v54 != 0;
            if (!v53)
            {
              goto LABEL_105;
            }

            continue;
          }

          v19 = v9 + 2;
        }

        *v57 = v19;
        *(a1 + 104) = v18 != 0;
      }

      else
      {
        if (v10 >> 3 <= 2)
        {
          if (v14 != 1)
          {
            if (v14 != 2 || v10 != 21)
            {
              goto LABEL_92;
            }

            v17 = *v9;
            v16 = v9 + 4;
            v6 |= 4u;
            *(a1 + 96) = v17;
            goto LABEL_66;
          }

          if (v10 != 10)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 1u;
          v35 = *(a1 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v37 = sub_194DB04((a1 + 80), v36);
          v38 = sub_1958890(v37, *v57, a3);
LABEL_99:
          *v57 = v38;
          if (!v38)
          {
            goto LABEL_105;
          }

          continue;
        }

        if (v14 != 3)
        {
          if (v14 == 4)
          {
            if (v10 == 32)
            {
              v21 = v9 - 1;
              while (1)
              {
                *v57 = v21 + 1;
                v22 = v21[1];
                if (v22 < 0)
                {
                  v23 = (v21[2] << 7) + v22;
                  LODWORD(v22) = v23 - 128;
                  if (v21[2] < 0)
                  {
                    v21 = sub_19587DC((v21 + 1), (v23 - 128));
                    LODWORD(v22) = v24;
                  }

                  else
                  {
                    v21 += 3;
                  }
                }

                else
                {
                  v21 += 2;
                }

                *v57 = v21;
                v25 = *(a1 + 24);
                if (v25 == *(a1 + 28))
                {
                  v26 = v25 + 1;
                  sub_1958E5C((a1 + 24), v25 + 1);
                  *(*(a1 + 32) + 4 * v25) = v22;
                  v21 = *v57;
                }

                else
                {
                  *(*(a1 + 32) + 4 * v25) = v22;
                  v26 = v25 + 1;
                }

                *(a1 + 24) = v26;
                if (!v21)
                {
                  goto LABEL_105;
                }

                if (*a3 <= v21 || *v21 != 32)
                {
                  goto LABEL_100;
                }
              }
            }

            if (v10 == 34)
            {
              v38 = sub_1958908((a1 + 24), v9, a3);
              goto LABEL_99;
            }
          }

          goto LABEL_92;
        }

        if (v10 != 24)
        {
          goto LABEL_92;
        }

        v6 |= 2u;
        v41 = v9 + 1;
        v40 = *v9;
        if (v40 < 0)
        {
          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v51 = sub_19587DC(v9, v40);
            *v57 = v51;
            *(a1 + 88) = v52;
            if (!v51)
            {
              goto LABEL_105;
            }

            continue;
          }

          v41 = v9 + 2;
        }

        *v57 = v41;
        *(a1 + 88) = v40;
      }

LABEL_100:
      ;
    }

    while ((sub_195ADC0(a3, v57, a3[11].u32[1]) & 1) == 0);
  }

  *(a1 + 16) |= v6;
  return *v57;
}

char *sub_159E30C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 96);
    *v4 = 21;
    *(v4 + 1) = v8;
    v4 += 5;
    if ((v6 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 2) == 0)
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

  v9 = *(a1 + 88);
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
  v13 = *(a1 + 24);
  if (v13 < 1)
  {
    v16 = v7;
  }

  else
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v15 = *(*(a1 + 32) + 4 * i);
      *v7 = 32;
      v7[1] = v15;
      if (v15 > 0x7F)
      {
        v7[1] = v15 | 0x80;
        v17 = v15 >> 7;
        v7[2] = v15 >> 7;
        v16 = v7 + 3;
        if (v15 >= 0x4000)
        {
          LOBYTE(v18) = v7[2];
          do
          {
            *(v16 - 1) = v18 | 0x80;
            v18 = v17 >> 7;
            *v16++ = v17 >> 7;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
        }
      }

      else
      {
        v16 = v7 + 2;
      }

      v7 = v16;
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v20 = *(a1 + 100);
    *v16 = 45;
    *(v16 + 1) = v20;
    v16 += 5;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 104);
    *v16 = 48;
    v16[1] = v21;
    v16 += 2;
  }

  v22 = *(a1 + 48);
  if (v22 >= 1)
  {
    v23 = 8;
    do
    {
      v24 = *(*(a1 + 56) + v23);
      v25 = *(v24 + 23);
      if (v25 < 0 && (v25 = v24[1], v25 > 127) || (*a3 - v16 + 14) < v25)
      {
        v16 = sub_1957480(a3, 7, v24, v16);
      }

      else
      {
        *v16 = 58;
        v16[1] = v25;
        if (*(v24 + 23) < 0)
        {
          v24 = *v24;
        }

        v26 = v16 + 2;
        memcpy(v16 + 2, v24, v25);
        v16 = &v26[v25];
      }

      v23 += 8;
      --v22;
    }

    while (v22);
  }

  v27 = *(a1 + 64);
  if (v27 < 1)
  {
    v30 = v16;
  }

  else
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v29 = *(*(a1 + 72) + 4 * j);
      *v16 = 64;
      v16[1] = v29;
      if (v29 > 0x7F)
      {
        v16[1] = v29 | 0x80;
        v31 = v29 >> 7;
        v16[2] = v29 >> 7;
        v30 = v16 + 3;
        if (v29 >= 0x4000)
        {
          LOBYTE(v32) = v16[2];
          do
          {
            *(v30 - 1) = v32 | 0x80;
            v32 = v31 >> 7;
            *v30++ = v31 >> 7;
            v33 = v31 >> 14;
            v31 >>= 7;
          }

          while (v33);
        }
      }

      else
      {
        v30 = v16 + 2;
      }

      v16 = v30;
    }
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v30;
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

  if ((*a3 - v30) >= v37)
  {
    v39 = v37;
    memcpy(v30, v38, v37);
    v30 += v39;
    return v30;
  }

  return sub_1957130(a3, v38, v37, v30);
}

uint64_t sub_159E700(uint64_t a1)
{
  v2 = sub_1959E04((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 56) + 8);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(*(a1 + 72) + 4 * v10);
      if (v12 < 0)
      {
        v13 = 10;
      }

      else
      {
        v13 = (9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6;
      }

      v11 += v13;
      ++v10;
    }

    while (v9 != v10);
  }

  else
  {
    v11 = 0;
  }

  result = v4 + v9 + v11;
  v15 = *(a1 + 16);
  if ((v15 & 0x1F) != 0)
  {
    if (v15)
    {
      v16 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      result += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      result += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v19 = result + 5;
    if ((v15 & 4) == 0)
    {
      v19 = result;
    }

    if ((v15 & 8) != 0)
    {
      v19 += 5;
    }

    result = v19 + ((v15 >> 3) & 2);
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    result += v22;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_159E8A4(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v14 + v13);
    v15 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v15 + 4 * v14), *(a2 + 72), 4 * *(a2 + 64));
  }

  v16 = *(a2 + 16);
  if ((v16 & 0x1F) != 0)
  {
    if (v16)
    {
      v18 = *(a2 + 80);
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      sub_194EA1C((a1 + 80), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
      if ((v16 & 2) == 0)
      {
LABEL_11:
        if ((v16 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }
    }

    else if ((v16 & 2) == 0)
    {
      goto LABEL_11;
    }

    *(a1 + 88) = *(a2 + 88);
    if ((v16 & 4) == 0)
    {
LABEL_12:
      if ((v16 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 96) = *(a2 + 96);
    if ((v16 & 8) == 0)
    {
LABEL_13:
      if ((v16 & 0x10) == 0)
      {
LABEL_15:
        *(a1 + 16) |= v16;
        goto LABEL_16;
      }

LABEL_14:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_15;
    }

LABEL_25:
    *(a1 + 100) = *(a2 + 100);
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_159EA90(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
  }

  v5 = (a1 + 112);
  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C(v5);
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  sub_15B4A3C((a1 + 88));
  sub_1311EE8((a1 + 64));
  sub_1956AFC((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_159EB98(uint64_t a1)
{
  sub_159EA90(a1);

  operator delete();
}

uint64_t sub_159EBD0(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  v3 = *(a1 + 72);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 80) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1579070(v5);
      --v3;
    }

    while (v3);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 96);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 104) + 8);
    do
    {
      v8 = *v7++;
      result = sub_157EBD8(v8);
      --v6;
    }

    while (v6);
    *(a1 + 96) = 0;
  }

  v9 = *(a1 + 16);
  if ((v9 & 0xF) != 0)
  {
    if ((v9 & 1) == 0)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_19:
      v11 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
        if ((v9 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
        if ((v9 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      v13 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v13 + 23) < 0)
      {
        **v13 = 0;
        *(v13 + 8) = 0;
      }

      else
      {
        *v13 = 0;
        *(v13 + 23) = 0;
      }

      goto LABEL_30;
    }

    v10 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v12 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v9 & 8) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v9 & 8) == 0)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_27;
  }

LABEL_30:
  if ((v9 & 0xF0) != 0)
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
  }

  if ((v9 & 0xFF00) != 0)
  {
    *(a1 + 212) = 0;
    *(a1 + 196) = 0u;
    *(a1 + 180) = 0u;
    *(a1 + 164) = 0u;
    *(a1 + 216) = 0x7FEFFFFFFFFFFFFFLL;
  }

  v15 = *(a1 + 8);
  v14 = a1 + 8;
  *(v14 + 216) = 0x7FEFFFFFFFFFFFFFLL;
  *(v14 + 8) = 0;
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

uint64_t sub_159ED98(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v93 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v93, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = (*v93 + 1);
    v10 = **v93;
    if (**v93 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v93, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v93 + 2);
      }
    }

    *v93 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 10)
        {
          goto LABEL_144;
        }

        *(a1 + 16) |= 1u;
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = (a1 + 112);
        goto LABEL_69;
      case 2u:
        if (v10 != 18)
        {
          goto LABEL_144;
        }

        *(a1 + 16) |= 2u;
        v44 = *(a1 + 8);
        v15 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v15 = *v15;
        }

        v16 = (a1 + 120);
        goto LABEL_69;
      case 3u:
        if (v10 != 24)
        {
          goto LABEL_144;
        }

        v6 |= 0x10u;
        LODWORD(v37) = *v9;
        if ((v37 & 0x80000000) == 0)
        {
          v38 = v9 + 1;
LABEL_127:
          *v93 = v38;
          *(a1 + 144) = v37;
          goto LABEL_113;
        }

        v37 = (v9[1] << 7) + v37 - 128;
        if ((v9[1] & 0x80000000) == 0)
        {
          v38 = v9 + 2;
          goto LABEL_127;
        }

        v83 = sub_19587DC(v9, v37);
        *v93 = v83;
        *(a1 + 144) = v84;
        if (!v83)
        {
          goto LABEL_154;
        }

        goto LABEL_113;
      case 4u:
        if (v10 != 34)
        {
          goto LABEL_144;
        }

        *(a1 + 16) |= 4u;
        v42 = *(a1 + 8);
        v15 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v15 = *v15;
        }

        v16 = (a1 + 128);
        goto LABEL_69;
      case 5u:
        if (v10 != 40)
        {
          goto LABEL_144;
        }

        v6 |= 0x40u;
        v31 = v9 + 1;
        v30 = *v9;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_41;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          v79 = sub_19587DC(v9, v30);
          *v93 = v79;
          *(a1 + 152) = v80;
          if (!v79)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v31 = v9 + 2;
LABEL_41:
          *v93 = v31;
          *(a1 + 152) = v30;
        }

        goto LABEL_113;
      case 6u:
        if (v10 != 53)
        {
          goto LABEL_144;
        }

        v58 = *v9;
        v20 = v9 + 4;
        v6 |= 0x20u;
        *(a1 + 148) = v58;
        goto LABEL_112;
      case 7u:
        if (v10 != 61)
        {
          goto LABEL_144;
        }

        v60 = *v9;
        v20 = v9 + 4;
        v6 |= 0x80u;
        *(a1 + 160) = v60;
        goto LABEL_112;
      case 8u:
        if (v10 != 65)
        {
          goto LABEL_144;
        }

        v43 = *v9;
        v20 = v9 + 8;
        v6 |= 0x8000u;
        *(a1 + 216) = v43;
        goto LABEL_112;
      case 9u:
        if (v10 != 73)
        {
          goto LABEL_144;
        }

        v70 = *v9;
        v20 = v9 + 8;
        v6 |= 0x10000u;
        *(a1 + 224) = v70;
        goto LABEL_112;
      case 0xAu:
        if (v10 != 82)
        {
          goto LABEL_144;
        }

        *(a1 + 16) |= 8u;
        v36 = *(a1 + 8);
        v15 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if (v36)
        {
          v15 = *v15;
        }

        v16 = (a1 + 136);
LABEL_69:
        v45 = sub_194DB04(v16, v15);
        v46 = sub_1958890(v45, *v93, a3);
        goto LABEL_70;
      case 0xBu:
        if (v10 != 88)
        {
          goto LABEL_144;
        }

        v6 |= 0x200u;
        v68 = v9 + 1;
        v67 = *v9;
        if ((v67 & 0x8000000000000000) == 0)
        {
          goto LABEL_109;
        }

        v69 = *v68;
        v67 = (v69 << 7) + v67 - 128;
        if (v69 < 0)
        {
          v89 = sub_19587DC(v9, v67);
          *v93 = v89;
          *(a1 + 168) = v90;
          if (!v89)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v68 = v9 + 2;
LABEL_109:
          *v93 = v68;
          *(a1 + 168) = v67;
        }

        goto LABEL_113;
      case 0xCu:
        if (v10 == 96)
        {
          v22 = (v9 - 1);
          while (1)
          {
            *v93 = v22 + 1;
            v23 = *(v22 + 1);
            v24 = (v22 + 2);
            if (v23 < 0)
            {
              v25 = *v24;
              v26 = (v25 << 7) + v23;
              LODWORD(v23) = v26 - 128;
              if (v25 < 0)
              {
                *v93 = sub_19587DC(v22 + 1, (v26 - 128));
                if (!*v93)
                {
                  goto LABEL_154;
                }

                LODWORD(v23) = v29;
                goto LABEL_26;
              }

              v24 = (v22 + 3);
            }

            *v93 = v24;
LABEL_26:
            if (v23 > 0xF)
            {
              sub_1348EB8();
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

            v22 = *v93;
            if (*a3 <= *v93 || **v93 != 96)
            {
              goto LABEL_113;
            }
          }
        }

        if (v10 == 98)
        {
          *&v94 = a1 + 24;
          *(&v94 + 1) = sub_1578F74;
          v95 = a1 + 8;
          v96 = 12;
          v46 = sub_1216588(a3, v9, &v94, v5);
          goto LABEL_70;
        }

LABEL_144:
        if (v10)
        {
          v91 = (v10 & 7) == 4;
        }

        else
        {
          v91 = 1;
        }

        if (!v91)
        {
          if (*v8)
          {
            v92 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v92 = sub_11F1920((a1 + 8));
            v9 = *v93;
          }

          v46 = sub_1952690(v10, v92, v9, a3);
LABEL_70:
          *v93 = v46;
          if (!v46)
          {
            goto LABEL_154;
          }

LABEL_113:
          if (sub_195ADC0(a3, v93, a3[11].u32[1]))
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
LABEL_154:
          *v93 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v6;
        return *v93;
      case 0xDu:
        if (v10 != 104)
        {
          goto LABEL_144;
        }

        v6 |= 0x100u;
        v34 = v9 + 1;
        v33 = *v9;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v35 = *v34;
        v33 = (v35 << 7) + v33 - 128;
        if (v35 < 0)
        {
          v81 = sub_19587DC(v9, v33);
          *v93 = v81;
          *(a1 + 164) = v82 != 0;
          if (!v81)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v34 = v9 + 2;
LABEL_46:
          *v93 = v34;
          *(a1 + 164) = v33 != 0;
        }

        goto LABEL_113;
      case 0xEu:
        if (v10 != 113)
        {
          goto LABEL_144;
        }

        v59 = *v9;
        v20 = v9 + 8;
        v6 |= 0x400u;
        *(a1 + 176) = v59;
        goto LABEL_112;
      case 0xFu:
        if (v10 != 121)
        {
          goto LABEL_144;
        }

        v21 = *v9;
        v20 = v9 + 8;
        v6 |= 0x800u;
        *(a1 + 184) = v21;
LABEL_112:
        *v93 = v20;
        goto LABEL_113;
      case 0x10u:
        if (v10 != 128)
        {
          goto LABEL_144;
        }

        v6 |= 0x1000u;
        v40 = v9 + 1;
        v39 = *v9;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_58;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v85 = sub_19587DC(v9, v39);
          *v93 = v85;
          *(a1 + 192) = v86;
          if (!v85)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v40 = v9 + 2;
LABEL_58:
          *v93 = v40;
          *(a1 + 192) = v39;
        }

        goto LABEL_113;
      case 0x11u:
        if (v10 != 136)
        {
          goto LABEL_144;
        }

        v6 |= 0x2000u;
        v18 = v9 + 1;
        v17 = *v9;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v77 = sub_19587DC(v9, v17);
          *v93 = v77;
          *(a1 + 200) = v78;
          if (!v77)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v18 = v9 + 2;
LABEL_17:
          *v93 = v18;
          *(a1 + 200) = v17;
        }

        goto LABEL_113;
      case 0x12u:
        if (v10 != 146)
        {
          goto LABEL_144;
        }

        v47 = v9 - 2;
        while (1)
        {
          v48 = (v47 + 2);
          *v93 = v47 + 2;
          v49 = *(a1 + 56);
          if (v49 && (v50 = *(a1 + 48), v50 < *v49))
          {
            *(a1 + 48) = v50 + 1;
            v51 = *&v49[2 * v50 + 2];
          }

          else
          {
            v52 = *(a1 + 40);
            if (!v52)
            {
              operator new();
            }

            *v54 = v53;
            v54[1] = sub_195A650;
            *v53 = 0;
            v53[1] = 0;
            v53[2] = 0;
            v51 = sub_19593CC(a1 + 40, v53);
            v48 = *v93;
          }

          v47 = sub_1958890(v51, v48, a3);
          *v93 = v47;
          if (!v47)
          {
            goto LABEL_154;
          }

          if (*a3 <= v47 || *v47 != 402)
          {
            goto LABEL_113;
          }
        }

      case 0x13u:
        if (v10 != 154)
        {
          goto LABEL_144;
        }

        v61 = v9 - 2;
        while (1)
        {
          v62 = v61 + 2;
          *v93 = v61 + 2;
          v63 = *(a1 + 80);
          if (v63 && (v64 = *(a1 + 72), v64 < *v63))
          {
            *(a1 + 72) = v64 + 1;
            v65 = *&v63[2 * v64 + 2];
          }

          else
          {
            v66 = sub_157B674(*(a1 + 64));
            v65 = sub_19593CC(a1 + 64, v66);
            v62 = *v93;
          }

          v61 = sub_21F8DA8(a3, v65, v62);
          *v93 = v61;
          if (!v61)
          {
            goto LABEL_154;
          }

          if (*a3 <= v61 || *v61 != 410)
          {
            goto LABEL_113;
          }
        }

      case 0x14u:
        if (v10 != 162)
        {
          goto LABEL_144;
        }

        v71 = v9 - 2;
        while (1)
        {
          v72 = v71 + 2;
          *v93 = v71 + 2;
          v73 = *(a1 + 104);
          if (v73 && (v74 = *(a1 + 96), v74 < *v73))
          {
            *(a1 + 96) = v74 + 1;
            v75 = *&v73[2 * v74 + 2];
          }

          else
          {
            v76 = sub_15AC274(*(a1 + 88));
            v75 = sub_19593CC(a1 + 88, v76);
            v72 = *v93;
          }

          v71 = sub_221EC6C(a3, v75, v72);
          *v93 = v71;
          if (!v71)
          {
            goto LABEL_154;
          }

          if (*a3 <= v71 || *v71 != 418)
          {
            goto LABEL_113;
          }
        }

      case 0x15u:
        if (v10 != 168)
        {
          goto LABEL_144;
        }

        v6 |= 0x4000u;
        v56 = v9 + 1;
        v55 = *v9;
        if ((v55 & 0x8000000000000000) == 0)
        {
          goto LABEL_88;
        }

        v57 = *v56;
        v55 = (v57 << 7) + v55 - 128;
        if (v57 < 0)
        {
          v87 = sub_19587DC(v9, v55);
          *v93 = v87;
          *(a1 + 208) = v88;
          if (!v87)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v56 = v9 + 2;
LABEL_88:
          *v93 = v56;
          *(a1 + 208) = v55;
        }

        goto LABEL_113;
      default:
        goto LABEL_144;
    }
  }
}

char *sub_159F678(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 144);
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

LABEL_14:
  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 4, (*(a1 + 128) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 152);
    *v7 = 40;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v12 - 1) = v7 | 0x80;
          v7 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
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

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 148);
    *v12 = 53;
    *(v12 + 1) = v17;
    v12 += 5;
    if ((v6 & 0x80) == 0)
    {
LABEL_27:
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_27;
  }

  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v18 = *(a1 + 160);
  *v12 = 61;
  *(v12 + 1) = v18;
  v12 += 5;
  if ((v6 & 0x8000) == 0)
  {
LABEL_28:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v19 = *(a1 + 216);
  *v12 = 65;
  *(v12 + 1) = v19;
  v12 += 9;
  if ((v6 & 0x10000) == 0)
  {
LABEL_29:
    if ((v6 & 8) == 0)
    {
      goto LABEL_30;
    }

LABEL_44:
    v12 = sub_128AEEC(a3, 10, (*(a1 + 136) & 0xFFFFFFFFFFFFFFFELL), v12);
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_45;
  }

LABEL_41:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v20 = *(a1 + 224);
  *v12 = 73;
  *(v12 + 1) = v20;
  v12 += 9;
  if ((v6 & 8) != 0)
  {
    goto LABEL_44;
  }

LABEL_30:
  if ((v6 & 0x200) == 0)
  {
LABEL_31:
    v16 = v12;
    goto LABEL_52;
  }

LABEL_45:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v21 = *(a1 + 168);
  *v12 = 88;
  v12[1] = v21;
  if (v21 > 0x7F)
  {
    v12[1] = v21 | 0x80;
    v22 = v21 >> 7;
    v12[2] = v21 >> 7;
    v16 = v12 + 3;
    if (v21 >= 0x4000)
    {
      LOBYTE(v23) = v12[2];
      do
      {
        *(v16 - 1) = v23 | 0x80;
        v23 = v22 >> 7;
        *v16++ = v22 >> 7;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
    }
  }

  else
  {
    v16 = v12 + 2;
  }

LABEL_52:
  v25 = *(a1 + 24);
  if (v25 < 1)
  {
    v28 = v16;
  }

  else
  {
    for (i = 0; i != v25; ++i)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v27 = *(*(a1 + 32) + 4 * i);
      *v16 = 96;
      v16[1] = v27;
      if (v27 > 0x7F)
      {
        v16[1] = v27 | 0x80;
        v29 = v27 >> 7;
        v16[2] = v27 >> 7;
        v28 = v16 + 3;
        if (v27 >= 0x4000)
        {
          LOBYTE(v16) = v16[2];
          do
          {
            *(v28 - 1) = v16 | 0x80;
            v16 = (v29 >> 7);
            *v28++ = v29 >> 7;
            v30 = v29 >> 14;
            v29 >>= 7;
          }

          while (v30);
        }
      }

      else
      {
        v28 = v16 + 2;
      }

      v16 = v28;
    }
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v32 = *(a1 + 164);
    *v28 = 104;
    v28[1] = v32;
    v28 += 2;
    if ((v6 & 0x400) == 0)
    {
LABEL_66:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_67;
      }

LABEL_75:
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v34 = *(a1 + 184);
      *v28 = 121;
      *(v28 + 1) = v34;
      v28 += 9;
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_78;
    }
  }

  else if ((v6 & 0x400) == 0)
  {
    goto LABEL_66;
  }

  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v33 = *(a1 + 176);
  *v28 = 113;
  *(v28 + 1) = v33;
  v28 += 9;
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_75;
  }

LABEL_67:
  if ((v6 & 0x1000) == 0)
  {
LABEL_68:
    v31 = v28;
    goto LABEL_85;
  }

LABEL_78:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v35 = *(a1 + 192);
  *v28 = 384;
  v28[2] = v35;
  if (v35 > 0x7F)
  {
    v28[2] = v35 | 0x80;
    v36 = v35 >> 7;
    v28[3] = v35 >> 7;
    v31 = v28 + 4;
    if (v35 >= 0x4000)
    {
      LOBYTE(v37) = v28[3];
      do
      {
        *(v31 - 1) = v37 | 0x80;
        v37 = v36 >> 7;
        *v31++ = v36 >> 7;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
    }
  }

  else
  {
    v31 = v28 + 3;
  }

LABEL_85:
  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v40 = *(a1 + 200);
    *v31 = 392;
    v31[2] = v40;
    if (v40 > 0x7F)
    {
      v31[2] = v40 | 0x80;
      v41 = v40 >> 7;
      v31[3] = v40 >> 7;
      v39 = v31 + 4;
      if (v40 >= 0x4000)
      {
        LOBYTE(v31) = v31[3];
        do
        {
          *(v39 - 1) = v31 | 0x80;
          v31 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v31 + 3;
    }
  }

  else
  {
    v39 = v31;
  }

  v43 = *(a1 + 48);
  if (v43 >= 1)
  {
    v44 = 8;
    do
    {
      v45 = *(*(a1 + 56) + v44);
      v46 = *(v45 + 23);
      if (v46 < 0 && (v46 = v45[1], v46 > 127) || (*a3 - v39 + 13) < v46)
      {
        v39 = sub_1957480(a3, 18, v45, v39);
      }

      else
      {
        *v39 = 402;
        v39[2] = v46;
        if (*(v45 + 23) < 0)
        {
          v45 = *v45;
        }

        v47 = v39 + 3;
        memcpy(v39 + 3, v45, v46);
        v39 = &v47[v46];
      }

      v44 += 8;
      --v43;
    }

    while (v43);
  }

  v48 = *(a1 + 72);
  if (v48)
  {
    for (j = 0; j != v48; ++j)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v50 = *(*(a1 + 80) + 8 * j + 8);
      *v39 = 410;
      v51 = *(v50 + 20);
      v39[2] = v51;
      if (v51 > 0x7F)
      {
        v52 = sub_19575D0(v51, v39 + 2);
      }

      else
      {
        v52 = v39 + 3;
      }

      v39 = sub_157926C(v50, v52, a3);
    }
  }

  v53 = *(a1 + 96);
  if (v53)
  {
    for (k = 0; k != v53; ++k)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v55 = *(*(a1 + 104) + 8 * k + 8);
      *v39 = 418;
      v56 = *(v55 + 20);
      v39[2] = v56;
      if (v56 > 0x7F)
      {
        v57 = sub_19575D0(v56, v39 + 2);
      }

      else
      {
        v57 = v39 + 3;
      }

      v39 = sub_157EE74(v55, v57, a3);
    }
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v59 = *(a1 + 208);
    *v39 = 424;
    v39[2] = v59;
    if (v59 > 0x7F)
    {
      v39[2] = v59 | 0x80;
      v60 = v59 >> 7;
      v39[3] = v59 >> 7;
      v58 = v39 + 4;
      if (v59 >= 0x4000)
      {
        LOBYTE(v61) = v39[3];
        do
        {
          *(v58 - 1) = v61 | 0x80;
          v61 = v60 >> 7;
          *v58++ = v60 >> 7;
          v62 = v60 >> 14;
          v60 >>= 7;
        }

        while (v62);
      }
    }

    else
    {
      v58 = v39 + 3;
    }
  }

  else
  {
    v58 = v39;
  }

  v63 = *(a1 + 8);
  if ((v63 & 1) == 0)
  {
    return v58;
  }

  v65 = v63 & 0xFFFFFFFFFFFFFFFCLL;
  v66 = *(v65 + 31);
  if (v66 < 0)
  {
    v67 = *(v65 + 8);
    v66 = *(v65 + 16);
  }

  else
  {
    v67 = (v65 + 8);
  }

  if ((*a3 - v58) >= v66)
  {
    v68 = v66;
    memcpy(v58, v67, v66);
    v58 += v68;
    return v58;
  }

  return sub_1957130(a3, v67, v66, v58);
}

uint64_t sub_159FEC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v4);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v6;
      ++v4;
    }

    while (v2 != v4);
  }

  else
  {
    v3 = 0;
  }

  v7 = v3 + v2;
  v8 = *(a1 + 48);
  v9 = v7 + 2 * v8;
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
  v15 = v9 + 2 * v14;
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
      v20 = sub_1579354(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 96);
  v22 = v15 + 2 * v21;
  v23 = *(a1 + 104);
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
      v27 = sub_157F044(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v28)
    {
      v36 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
      v37 = *(v36 + 23);
      v38 = *(v36 + 8);
      if ((v37 & 0x80u) == 0)
      {
        v38 = v37;
      }

      v22 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v28 & 2) == 0)
      {
LABEL_29:
        if ((v28 & 4) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_68;
      }
    }

    else if ((v28 & 2) == 0)
    {
      goto LABEL_29;
    }

    v39 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(v39 + 23);
    v41 = *(v39 + 8);
    if ((v40 & 0x80u) == 0)
    {
      v41 = v40;
    }

    v22 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 4) == 0)
    {
LABEL_30:
      if ((v28 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_71;
    }

LABEL_68:
    v42 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(v42 + 23);
    v44 = *(v42 + 8);
    if ((v43 & 0x80u) == 0)
    {
      v44 = v43;
    }

    v22 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 8) == 0)
    {
LABEL_31:
      if ((v28 & 0x10) == 0)
      {
LABEL_36:
        v32 = v22 + 5;
        if ((v28 & 0x20) == 0)
        {
          v32 = v22;
        }

        if ((v28 & 0x40) != 0)
        {
          v32 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x3F) + 73) >> 6) + 1;
        }

        if ((v28 & 0x80) != 0)
        {
          v22 = v32 + 5;
        }

        else
        {
          v22 = v32;
        }

        goto LABEL_43;
      }

LABEL_32:
      v29 = *(a1 + 144);
      v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v29 >= 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 11;
      }

      v22 += v31;
      goto LABEL_36;
    }

LABEL_71:
    v45 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(v45 + 23);
    v47 = *(v45 + 8);
    if ((v46 & 0x80u) == 0)
    {
      v47 = v46;
    }

    v22 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_43:
  if ((v28 & 0xFF00) != 0)
  {
    v33 = v22 + ((v28 >> 7) & 2);
    if ((v28 & 0x200) != 0)
    {
      v33 += ((9 * (__clz(*(a1 + 168) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v28 & 0x400) != 0)
    {
      v33 += 9;
    }

    if ((v28 & 0x800) != 0)
    {
      v33 += 9;
    }

    if ((v28 & 0x1000) != 0)
    {
      v33 += ((9 * (__clz(*(a1 + 192) | 1) ^ 0x3F) + 73) >> 6) + 2;
      if ((v28 & 0x2000) == 0)
      {
LABEL_52:
        if ((v28 & 0x4000) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

    else if ((v28 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    v33 += ((9 * (__clz(*(a1 + 200) | 1) ^ 0x3F) + 73) >> 6) + 2;
    if ((v28 & 0x4000) == 0)
    {
LABEL_54:
      if ((v28 & 0x8000) != 0)
      {
        v22 = v33 + 9;
      }

      else
      {
        v22 = v33;
      }

      goto LABEL_57;
    }

LABEL_53:
    v33 += ((9 * (__clz(*(a1 + 208) | 1) ^ 0x3F) + 73) >> 6) + 2;
    goto LABEL_54;
  }

LABEL_57:
  if ((v28 & 0x10000) != 0)
  {
    result = v22 + 9;
  }

  else
  {
    result = v22;
  }

  v35 = *(a1 + 8);
  if (v35)
  {
    v48 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    v49 = *((v35 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v49 < 0)
    {
      v49 = *(v48 + 16);
    }

    result += v49;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15A02E0(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
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
    sub_1311FF0((a1 + 64), v15, (v14 + 8), v13, **(a1 + 80) - *(a1 + 72));
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
    sub_15B58AC((a1 + 88), v20, (v19 + 8), v18, **(a1 + 104) - *(a1 + 96));
    v21 = *(a1 + 96) + v18;
    *(a1 + 96) = v21;
    v22 = *(a1 + 104);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 16);
  if (v23)
  {
    if (v23)
    {
      v26 = *(a2 + 112);
      *(a1 + 16) |= 1u;
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_194EA1C((a1 + 112), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
      if ((v23 & 2) == 0)
      {
LABEL_15:
        if ((v23 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_46;
      }
    }

    else if ((v23 & 2) == 0)
    {
      goto LABEL_15;
    }

    v29 = *(a2 + 120);
    *(a1 + 16) |= 2u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    sub_194EA1C((a1 + 120), (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
    if ((v23 & 4) == 0)
    {
LABEL_16:
      if ((v23 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_49;
    }

LABEL_46:
    v32 = *(a2 + 128);
    *(a1 + 16) |= 4u;
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    sub_194EA1C((a1 + 128), (v32 & 0xFFFFFFFFFFFFFFFELL), v34);
    if ((v23 & 8) == 0)
    {
LABEL_17:
      if ((v23 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_52;
    }

LABEL_49:
    v35 = *(a2 + 136);
    *(a1 + 16) |= 8u;
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    sub_194EA1C((a1 + 136), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
    if ((v23 & 0x10) == 0)
    {
LABEL_18:
      if ((v23 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(a1 + 144) = *(a2 + 144);
    if ((v23 & 0x20) == 0)
    {
LABEL_19:
      if ((v23 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(a1 + 148) = *(a2 + 148);
    if ((v23 & 0x40) == 0)
    {
LABEL_20:
      if ((v23 & 0x80) == 0)
      {
LABEL_22:
        *(a1 + 16) |= v23;
        goto LABEL_23;
      }

LABEL_21:
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_22;
    }

LABEL_54:
    *(a1 + 152) = *(a2 + 152);
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_34;
  }

  if ((v23 & 0x100) != 0)
  {
    *(a1 + 164) = *(a2 + 164);
    if ((v23 & 0x200) == 0)
    {
LABEL_26:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_58;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  *(a1 + 168) = *(a2 + 168);
  if ((v23 & 0x400) == 0)
  {
LABEL_27:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a1 + 176) = *(a2 + 176);
  if ((v23 & 0x800) == 0)
  {
LABEL_28:
    if ((v23 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a1 + 184) = *(a2 + 184);
  if ((v23 & 0x1000) == 0)
  {
LABEL_29:
    if ((v23 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a1 + 192) = *(a2 + 192);
  if ((v23 & 0x2000) == 0)
  {
LABEL_30:
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

LABEL_62:
    *(a1 + 208) = *(a2 + 208);
    if ((v23 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_61:
  *(a1 + 200) = *(a2 + 200);
  if ((v23 & 0x4000) != 0)
  {
    goto LABEL_62;
  }

LABEL_31:
  if ((v23 & 0x8000) != 0)
  {
LABEL_32:
    *(a1 + 216) = *(a2 + 216);
  }

LABEL_33:
  *(a1 + 16) |= v23;
LABEL_34:
  if ((v23 & 0x10000) != 0)
  {
    v24 = *(a2 + 224);
    *(a1 + 16) |= 0x10000u;
    *(a1 + 224) = v24;
  }

  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((a1 + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15A0694(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_15B5408((a1 + 48));
  sub_15B506C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15A0764(uint64_t a1)
{
  sub_15A0694(a1);

  operator delete();
}

uint64_t sub_15A079C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157DB4C(v4);
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
      result = sub_159EBD0(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v8 & 2) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      *v9 = 0;
      *(v9 + 23) = 0;
    }

    if ((v8 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_14:
    v10 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
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
  }

LABEL_19:
  if ((v8 & 0xC) != 0)
  {
    *(v1 + 92) = 0;
    *(v1 + 88) = 0;
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

uint64_t sub_15A08BC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v39, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v39 + 1);
    v8 = **v39;
    if (**v39 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v39, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v39 + 2);
      }
    }

    *v39 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 == 13)
        {
          v5 |= 4u;
          *(a1 + 88) = *v7;
          *v39 = v7 + 4;
          goto LABEL_61;
        }
      }

      else if (v11 == 2)
      {
        if (v8 == 18)
        {
          v25 = v7 - 1;
          while (1)
          {
            v26 = v25 + 1;
            *v39 = v25 + 1;
            v27 = *(a1 + 40);
            if (v27 && (v28 = *(a1 + 32), v28 < *v27))
            {
              *(a1 + 32) = v28 + 1;
              v29 = *&v27[2 * v28 + 2];
            }

            else
            {
              v30 = sub_15AC0D4(*(a1 + 24));
              v29 = sub_19593CC(a1 + 24, v30);
              v26 = *v39;
            }

            v25 = sub_221FCBC(a3, v29, v26);
            *v39 = v25;
            if (!v25)
            {
              goto LABEL_68;
            }

            if (*a3 <= v25 || *v25 != 18)
            {
              goto LABEL_61;
            }
          }
        }
      }

      else if (v11 == 3 && v8 == 26)
      {
        v13 = v7 - 1;
        while (1)
        {
          v14 = v13 + 1;
          *v39 = v13 + 1;
          v15 = *(a1 + 64);
          if (v15 && (v16 = *(a1 + 56), v16 < *v15))
          {
            *(a1 + 56) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            sub_15ADE6C(*(a1 + 48));
            v17 = sub_19593CC(a1 + 48, v18);
            v14 = *v39;
          }

          v13 = sub_22201CC(a3, v17, v14);
          *v39 = v13;
          if (!v13)
          {
            goto LABEL_68;
          }

          if (*a3 <= v13 || *v13 != 26)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_53;
    }

    if (v11 != 4)
    {
      break;
    }

    if (v8 != 32)
    {
      goto LABEL_53;
    }

    v5 |= 8u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_37:
      *v39 = v23;
      *(a1 + 92) = v22 != 0;
      goto LABEL_61;
    }

    v37 = sub_19587DC(v7, v22);
    *v39 = v37;
    *(a1 + 92) = v38 != 0;
    if (!v37)
    {
      goto LABEL_68;
    }

LABEL_61:
    if (sub_195ADC0(a3, v39, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 5)
  {
    if (v8 != 42)
    {
      goto LABEL_53;
    }

    *(a1 + 16) |= 1u;
    v31 = *(a1 + 8);
    v20 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v20 = *v20;
    }

    v21 = (a1 + 72);
LABEL_52:
    v32 = sub_194DB04(v21, v20);
    v33 = sub_1958890(v32, *v39, a3);
LABEL_60:
    *v39 = v33;
    if (!v33)
    {
      goto LABEL_68;
    }

    goto LABEL_61;
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 2u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = (a1 + 80);
    goto LABEL_52;
  }

LABEL_53:
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
      v7 = *v39;
    }

    v33 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_68:
  *v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v39;
}

char *sub_15A0C2C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 88);
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
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

      v4 = sub_157DD18(v10, v12, a3);
    }
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 26;
      v16 = *(v15 + 20);
      v4[1] = v16;
      if (v16 > 0x7F)
      {
        v17 = sub_19575D0(v16, v4 + 1);
      }

      else
      {
        v17 = v4 + 2;
      }

      v4 = sub_159F678(v15, v17, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v20 = *(a1 + 92);
    *v4 = 32;
    v4[1] = v20;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
LABEL_23:
      if ((v6 & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = sub_128AEEC(a3, 5, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_24:
    v4 = sub_128AEEC(a3, 6, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_25:
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
  }

  v21 = v18 & 0xFFFFFFFFFFFFFFFCLL;
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

uint64_t sub_15A0EB0(uint64_t a1)
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
      v7 = sub_157DEC4(v6);
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
      v14 = sub_159FEC0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0xF) != 0)
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

    if ((v15 & 2) != 0)
    {
      v19 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v22 = v9 + 5;
    if ((v15 & 4) == 0)
    {
      v22 = v9;
    }

    v9 = v22 + ((v15 >> 2) & 2);
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v9 += v26;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_15A1054(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B5EFC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_15B62A0((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0xF) != 0)
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
          goto LABEL_11;
        }

        goto LABEL_24;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v19 = *(a2 + 80);
    *(a1 + 16) |= 2u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 80), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v14;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 92) = *(a2 + 92);
      goto LABEL_13;
    }

LABEL_24:
    *(a1 + 88) = *(a2 + 88);
    if ((v14 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15A1214(uint64_t a1)
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

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

void *sub_15A125C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B548C(a1 + 10);
  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 6));
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15A12F4(void *a1)
{
  sub_15A125C(a1);

  operator delete();
}

uint64_t sub_15A132C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  v3 = *(a1 + 88);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 96) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1580044(v5);
      --v3;
    }

    while (v3);
    *(a1 + 88) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 96) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_15A13C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v55 = a2;
  v6 = 0;
  if ((sub_195ADC0(a3, v55, a3[11].u32[1]) & 1) == 0)
  {
    v8 = (a1 + 8);
    do
    {
      v9 = (*v55 + 1);
      v10 = **v55;
      if (**v55 < 0)
      {
        v11 = *v9;
        v12 = v10 + (v11 << 7);
        v10 = v12 - 128;
        if (v11 < 0)
        {
          v9 = sub_1958824(*v55, v12 - 128);
          v10 = v13;
        }

        else
        {
          v9 = (*v55 + 2);
        }
      }

      *v55 = v9;
      v14 = v10 >> 3;
      if (v10 >> 3 > 3)
      {
        if (v14 != 4)
        {
          if (v14 != 5)
          {
            if (v14 == 6 && v10 == 50)
            {
              v19 = v9 - 1;
              while (1)
              {
                v20 = v19 + 1;
                *v55 = v19 + 1;
                v21 = *(a1 + 96);
                if (v21 && (v22 = *(a1 + 88), v22 < *v21))
                {
                  *(a1 + 88) = v22 + 1;
                  v23 = *&v21[2 * v22 + 2];
                }

                else
                {
                  v24 = sub_15B234C(*(a1 + 80));
                  v23 = sub_19593CC(a1 + 80, v24);
                  v20 = *v55;
                }

                v19 = sub_221ECFC(a3, v23, v20);
                *v55 = v19;
                if (!v19)
                {
                  goto LABEL_96;
                }

                if (*a3 <= v19 || *v19 != 50)
                {
                  goto LABEL_91;
                }
              }
            }

            goto LABEL_83;
          }

          if (v10 != 40)
          {
            if (v10 == 42)
            {
              *&v56 = a1 + 64;
              *(&v56 + 1) = sub_157DA4C;
              v57 = a1 + 8;
              v58 = 5;
              v52 = sub_1216588(a3, v9, &v56, v5);
LABEL_90:
              *v55 = v52;
              if (!v52)
              {
                goto LABEL_96;
              }

              continue;
            }

            goto LABEL_83;
          }

          v40 = (v9 - 1);
LABEL_60:
          *v55 = v40 + 1;
          v41 = *(v40 + 1);
          v42 = (v40 + 2);
          if (v41 < 0)
          {
            v43 = *v42;
            v44 = (v43 << 7) + v41;
            LODWORD(v41) = v44 - 128;
            if ((v43 & 0x80000000) == 0)
            {
              v42 = (v40 + 3);
              goto LABEL_63;
            }

            *v55 = sub_19587DC(v40 + 1, (v44 - 128));
            if (!*v55)
            {
              goto LABEL_96;
            }

            LODWORD(v41) = v47;
          }

          else
          {
LABEL_63:
            *v55 = v42;
          }

          if (v41 > 2)
          {
            sub_1313700();
          }

          else
          {
            v45 = *(a1 + 64);
            if (v45 == *(a1 + 68))
            {
              v46 = v45 + 1;
              sub_1958E5C((a1 + 64), v45 + 1);
              *(*(a1 + 72) + 4 * v45) = v41;
            }

            else
            {
              *(*(a1 + 72) + 4 * v45) = v41;
              v46 = v45 + 1;
            }

            *(a1 + 64) = v46;
          }

          v40 = *v55;
          if (*a3 <= *v55 || **v55 != 40)
          {
            continue;
          }

          goto LABEL_60;
        }

        if (v10 != 33)
        {
          if (v10 == 34)
          {
            v52 = sub_1958A20(a1 + 48, v9, a3);
            goto LABEL_90;
          }

LABEL_83:
          if (v10)
          {
            v53 = (v10 & 7) == 4;
          }

          else
          {
            v53 = 1;
          }

          if (v53)
          {
            if (v9)
            {
              a3[10].i32[0] = v10 - 1;
              break;
            }

LABEL_96:
            *v55 = 0;
            break;
          }

          if (*v8)
          {
            v54 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v54 = sub_11F1920((a1 + 8));
            v9 = *v55;
          }

          v52 = sub_1952690(v10, v54, v9, a3);
          goto LABEL_90;
        }

        v33 = v9 - 1;
        v34 = *(a1 + 48);
        do
        {
          v35 = (v33 + 1);
          *v55 = v33 + 1;
          v36 = *(v33 + 1);
          if (v34 == *(a1 + 52))
          {
            sub_1959094((a1 + 48), v34 + 1);
            *(*(a1 + 56) + 8 * v34) = v36;
            v35 = *v55;
          }

          else
          {
            *(*(a1 + 56) + 8 * v34) = v36;
          }

          *(a1 + 48) = ++v34;
          v33 = (v35 + 8);
          *v55 = v35 + 8;
        }

        while (*a3 > (v35 + 8) && *v33 == 33);
      }

      else
      {
        if (v14 == 1)
        {
          if (v10 == 10)
          {
            v25 = v9 - 1;
            while (1)
            {
              v26 = (v25 + 1);
              *v55 = v25 + 1;
              v27 = *(a1 + 40);
              if (v27 && (v28 = *(a1 + 32), v28 < *v27))
              {
                *(a1 + 32) = v28 + 1;
                v29 = *&v27[2 * v28 + 2];
              }

              else
              {
                v30 = *(a1 + 24);
                if (!v30)
                {
                  operator new();
                }

                *v32 = v31;
                v32[1] = sub_195A650;
                *v31 = 0;
                v31[1] = 0;
                v31[2] = 0;
                v29 = sub_19593CC(a1 + 24, v31);
                v26 = *v55;
              }

              v25 = sub_1958890(v29, v26, a3);
              *v55 = v25;
              if (!v25)
              {
                goto LABEL_96;
              }

              if (*a3 <= v25 || *v25 != 10)
              {
                goto LABEL_91;
              }
            }
          }

          goto LABEL_83;
        }

        if (v14 == 2)
        {
          if (v10 != 16)
          {
            goto LABEL_83;
          }

          v6 |= 1u;
          v38 = v9 + 1;
          v37 = *v9;
          if (v37 < 0)
          {
            v39 = *v38;
            v37 = (v39 << 7) + v37 - 128;
            if (v39 < 0)
            {
              v50 = sub_19587DC(v9, v37);
              *v55 = v50;
              *(a1 + 104) = v51 != 0;
              if (!v50)
              {
                goto LABEL_96;
              }

              continue;
            }

            v38 = v9 + 2;
          }

          *v55 = v38;
          *(a1 + 104) = v37 != 0;
        }

        else
        {
          if (v14 != 3 || v10 != 24)
          {
            goto LABEL_83;
          }

          v6 |= 2u;
          v17 = v9 + 1;
          v16 = *v9;
          if (v16 < 0)
          {
            v18 = *v17;
            v16 = (v18 << 7) + v16 - 128;
            if (v18 < 0)
            {
              v48 = sub_19587DC(v9, v16);
              *v55 = v48;
              *(a1 + 105) = v49 != 0;
              if (!v48)
              {
                goto LABEL_96;
              }

              continue;
            }

            v17 = v9 + 2;
          }

          *v55 = v17;
          *(a1 + 105) = v16 != 0;
        }
      }

LABEL_91:
      ;
    }

    while ((sub_195ADC0(a3, v55, a3[11].u32[1]) & 1) == 0);
  }

  *(a1 + 16) |= v6;
  return *v55;
}

char *sub_15A1924(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - a2 + 14) < v9)
      {
        a2 = sub_1957480(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = a2 + 2;
        memcpy(a2 + 2, v8, v9);
        a2 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v12 = *(a1 + 104);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 105);
    *a2 = 24;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(a1 + 48);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 8 * v14;
    do
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v17 = *(*(a1 + 56) + v15);
      *a2 = 33;
      *(a2 + 1) = v17;
      a2 += 9;
      v15 += 8;
    }

    while (v16 != v15);
  }

  v18 = *(a1 + 64);
  if (v18 < 1)
  {
    v21 = a2;
  }

  else
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v20 = *(*(a1 + 72) + 4 * i);
      *a2 = 40;
      a2[1] = v20;
      if (v20 > 0x7F)
      {
        a2[1] = v20 | 0x80;
        v22 = v20 >> 7;
        a2[2] = v20 >> 7;
        v21 = a2 + 3;
        if (v20 >= 0x4000)
        {
          LOBYTE(v23) = a2[2];
          do
          {
            *(v21 - 1) = v23 | 0x80;
            v23 = v22 >> 7;
            *v21++ = v22 >> 7;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
        }
      }

      else
      {
        v21 = a2 + 2;
      }

      a2 = v21;
    }
  }

  v25 = *(a1 + 88);
  if (v25)
  {
    for (j = 0; j != v25; ++j)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v27 = *(*(a1 + 96) + 8 * j + 8);
      *v21 = 50;
      v28 = *(v27 + 20);
      v21[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v21 + 1);
      }

      else
      {
        v29 = v21 + 2;
      }

      v21 = sub_15B1F3C(v27, v29, a3);
    }
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v21;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  if ((*a3 - v21) >= v33)
  {
    v35 = v33;
    memcpy(v21, v34, v33);
    v21 += v35;
    return v21;
  }

  return sub_1957130(a3, v34, v33, v21);
}

uint64_t sub_15A1C70(uint64_t a1)
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

  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 72) + 4 * v9);
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

  v13 = *(a1 + 88);
  v14 = v4 + *(a1 + 48) + 8 * *(a1 + 48) + v8 + v10 + v13;
  v15 = *(a1 + 96);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = sub_15B20A0(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  if ((*(a1 + 16) & 3) != 0)
  {
    result = v14 + (*(a1 + 16) & 2) + 2 * (*(a1 + 16) & 1);
  }

  else
  {
    result = v14;
  }

  v21 = *(a1 + 8);
  if (v21)
  {
    v22 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    result += v23;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15A1DF8(void **result, uint64_t a2)
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

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(result + 12);
    sub_1959094(result + 12, v10 + v9);
    v11 = result[7];
    *(result + 12) += *(a2 + 48);
    memcpy(&v11[8 * v10], *(a2 + 56), 8 * *(a2 + 48));
  }

  v12 = *(a2 + 64);
  if (v12)
  {
    v13 = *(result + 16);
    sub_1958E5C(result + 16, v13 + v12);
    v14 = result[9];
    *(result + 16) += *(a2 + 64);
    memcpy(&v14[4 * v13], *(a2 + 72), 4 * *(a2 + 64));
  }

  v15 = *(a2 + 88);
  if (v15)
  {
    v16 = *(a2 + 96);
    v17 = sub_19592E8((result + 10), *(a2 + 88));
    sub_15B632C(result + 10, v17, (v16 + 8), v15, *result[12] - *(result + 22));
    v18 = *(result + 22) + v15;
    *(result + 22) = v18;
    v19 = result[12];
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 16);
  if ((v20 & 3) != 0)
  {
    if (v20)
    {
      *(result + 104) = *(a2 + 104);
    }

    if ((v20 & 2) != 0)
    {
      *(result + 105) = *(a2 + 105);
    }

    *(result + 4) |= v20;
  }

  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4(result + 1, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15A1FD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    v2 = *(a1 + 16) + 8;
    do
    {
      v3 = v1--;
      v4 = *(v2 + 8 * v1);
      v5 = *(v4 + 32);
      v6 = *(v4 + 40);
      while (v5 >= 1)
      {
        v7 = v5 - 1;
        v8 = sub_15B16F0(*(v6 + 8 * v5));
        v5 = v7;
        if (!v8)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

uint64_t sub_15A2068(uint64_t a1)
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

void sub_15A2134(uint64_t a1)
{
  sub_15A2068(a1);

  operator delete();
}

uint64_t sub_15A216C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    if ((v1 & 1) == 0)
    {
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
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

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
  }

LABEL_17:
  if ((v1 & 0x78) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15A2230(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v37 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v37, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v37 + 1);
    v7 = **v37;
    if (**v37 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v37, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v37 + 2);
      }
    }

    *v37 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 3)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v21 = v6 + 1;
          v20 = *v6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            *v37 = sub_19587DC(v6, v20);
            if (!*v37)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v21 = v6 + 2;
LABEL_38:
            *v37 = v21;
          }

          if (v20 > 5)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 48) = v20;
          }

          continue;
        }

        goto LABEL_60;
      }

      if (v10 != 2)
      {
        if (v10 == 3 && v7 == 24)
        {
          v15 = v6 + 1;
          v16 = *v6;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v17 = *v15;
          v18 = (v17 << 7) + v16;
          LODWORD(v16) = v18 - 128;
          if (v17 < 0)
          {
            *v37 = sub_19587DC(v6, (v18 - 128));
            if (!*v37)
            {
              goto LABEL_85;
            }

            LODWORD(v16) = v35;
          }

          else
          {
            v15 = v6 + 2;
LABEL_25:
            *v37 = v15;
          }

          if (sub_1470AE4(v16))
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 52) = v16;
          }

          else
          {
            sub_1313740();
          }

          continue;
        }

        goto LABEL_60;
      }

      if (v7 != 18)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 1u;
      v29 = *(a1 + 8);
      v12 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v12 = *v12;
      }

      v13 = (a1 + 24);
    }

    else if (v7 >> 3 > 5)
    {
      if (v10 == 6)
      {
        if (v7 == 48)
        {
          v27 = v6 + 1;
          v26 = *v6;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            *v37 = sub_19587DC(v6, v26);
            if (!*v37)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v27 = v6 + 2;
LABEL_52:
            *v37 = v27;
          }

          if (v26 > 2)
          {
            sub_13137B8();
          }

          else
          {
            *(a1 + 16) |= 0x40u;
            *(a1 + 60) = v26;
          }

          continue;
        }

        goto LABEL_60;
      }

      if (v10 != 7 || v7 != 58)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 4u;
      v19 = *(a1 + 8);
      v12 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v12 = *v12;
      }

      v13 = (a1 + 40);
    }

    else
    {
      if (v10 == 4)
      {
        if (v7 == 32)
        {
          v24 = v6 + 1;
          v23 = *v6;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_45;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            *v37 = sub_19587DC(v6, v23);
            if (!*v37)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v24 = v6 + 2;
LABEL_45:
            *v37 = v24;
          }

          if (v23 > 2)
          {
            sub_12E8500();
          }

          else
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 56) = v23;
          }

          continue;
        }

LABEL_60:
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
            return *v37;
          }

LABEL_85:
          *v37 = 0;
          return *v37;
        }

        v33 = *(a1 + 8);
        if (v33)
        {
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v34 = sub_11F1920((a1 + 8));
          v6 = *v37;
        }

        v31 = sub_1952690(v7, v34, v6, a3);
        goto LABEL_67;
      }

      if (v10 != 5 || v7 != 42)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 32);
    }

    v30 = sub_194DB04(v13, v12);
    v31 = sub_1958890(v30, *v37, a3);
LABEL_67:
    *v37 = v31;
    if (!v31)
    {
      goto LABEL_85;
    }
  }

  return *v37;
}

char *sub_15A25FC(uint64_t a1, char *__dst, unint64_t *a3)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 52);
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
        LOBYTE(v14) = v6[2];
        do
        {
          *(v11 - 1) = v14 | 0x80;
          v14 = v13 >> 7;
          *v11++ = v13 >> 7;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 56);
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

  if ((v5 & 2) != 0)
  {
    v16 = sub_128AEEC(a3, 5, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v16);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 60);
    *v16 = 48;
    v16[1] = v22;
    if (v22 > 0x7F)
    {
      v16[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[2] = v22 >> 7;
      v21 = v16 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v24) = v16[2];
        do
        {
          *(v21 - 1) = v24 | 0x80;
          v24 = v23 >> 7;
          *v21++ = v23 >> 7;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v21 = v16 + 2;
    }
  }

  else
  {
    v21 = v16;
  }

  if ((v5 & 4) != 0)
  {
    v21 = sub_128AEEC(a3, 7, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v21);
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v21;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if ((*a3 - v21) >= v29)
  {
    v31 = v29;
    memcpy(v21, v30, v29);
    v21 += v31;
    return v21;
  }

  return sub_1957130(a3, v30, v29, v21);
}

uint64_t sub_15A2910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7F) == 0)
  {
    v2 = 0;
    goto LABEL_37;
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
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 48);
  if (v12 < 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v13;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_25:
  v14 = *(a1 + 52);
  if (v14 < 0)
  {
    v15 = 11;
  }

  else
  {
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v15;
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v16 = *(a1 + 56);
  if (v16 < 0)
  {
    v17 = 11;
  }

  else
  {
    v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v17;
  if ((v1 & 0x40) != 0)
  {
LABEL_33:
    v18 = *(a1 + 60);
    if (v18 < 0)
    {
      v19 = 11;
    }

    else
    {
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v19;
  }

LABEL_37:
  v20 = *(a1 + 8);
  if (v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v2 += v23;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_15A2B0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) != 0)
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

        goto LABEL_21;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 32), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_21:
    v12 = *(a2 + 40);
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 40), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(a1 + 52) = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        *(a1 + 16) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_10;
    }

LABEL_26:
    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15A2C84(uint64_t a1)
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

void sub_15A2D50(uint64_t a1)
{
  sub_15A2C84(a1);

  operator delete();
}

uint64_t sub_15A2D88(uint64_t a1)
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

uint64_t sub_15A2E40(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_15A2FFC(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_15A3110(uint64_t a1)
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

uint64_t sub_15A3240(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15A333C(uint64_t a1)
{
  sub_15A3240(a1);

  operator delete();
}

uint64_t sub_15A3374(uint64_t a1)
{
  *(a1 + 24) = 0;
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    goto LABEL_27;
  }

  if (v1)
  {
    v2 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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
    v4 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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
    v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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
  v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
  v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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

uint64_t sub_15A3498(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v34 = a2;
  if (sub_195ADC0(a3, v34, a3[11].u32[1]))
  {
    return *v34;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = (*v34 + 1);
    v9 = **v34;
    if (**v34 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v34, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v34 + 2);
      }
    }

    *v34 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 <= 3)
    {
      break;
    }

    if (v13 == 4)
    {
      if (v9 != 34)
      {
        goto LABEL_61;
      }

      *(a1 + 16) |= 8u;
      v27 = *(a1 + 8);
      v16 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v16 = *v16;
      }

      v17 = (a1 + 64);
      goto LABEL_55;
    }

    if (v13 == 5)
    {
      if (v9 != 42)
      {
        goto LABEL_61;
      }

      *(a1 + 16) |= 0x10u;
      v29 = *(a1 + 8);
      v16 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v16 = *v16;
      }

      v17 = (a1 + 72);
      goto LABEL_55;
    }

    if (v13 != 6)
    {
      goto LABEL_61;
    }

    if (v9 == 48)
    {
      v18 = (v8 - 1);
      while (1)
      {
        *v34 = v18 + 1;
        v19 = *(v18 + 1);
        v20 = (v18 + 2);
        if (v19 < 0)
        {
          v21 = *v20;
          v22 = (v21 << 7) + v19;
          LODWORD(v19) = v22 - 128;
          if (v21 < 0)
          {
            *v34 = sub_19587DC(v18 + 1, (v22 - 128));
            if (!*v34)
            {
              return 0;
            }

            LODWORD(v19) = v25;
            goto LABEL_28;
          }

          v20 = (v18 + 3);
        }

        *v34 = v20;
LABEL_28:
        if ((v19 - 1) > 4)
        {
          sub_13137B8();
        }

        else
        {
          v23 = *(a1 + 24);
          if (v23 == *(a1 + 28))
          {
            v24 = v23 + 1;
            sub_1958E5C((a1 + 24), v23 + 1);
            *(*(a1 + 32) + 4 * v23) = v19;
          }

          else
          {
            *(*(a1 + 32) + 4 * v23) = v19;
            v24 = v23 + 1;
          }

          *(a1 + 24) = v24;
        }

        v18 = *v34;
        if (*a3 <= *v34 || **v34 != 48)
        {
          goto LABEL_57;
        }
      }
    }

    if (v9 != 50)
    {
      goto LABEL_61;
    }

    *&v35 = a1 + 24;
    *(&v35 + 1) = sub_157DA84;
    v36 = a1 + 8;
    v37 = 6;
    v31 = sub_1216588(a3, v8, &v35, v5);
LABEL_56:
    *v34 = v31;
    if (!v31)
    {
      return 0;
    }

LABEL_57:
    if (sub_195ADC0(a3, v34, a3[11].u32[1]))
    {
      return *v34;
    }
  }

  if (v13 == 1)
  {
    if (v9 != 10)
    {
      goto LABEL_61;
    }

    *(a1 + 16) |= 1u;
    v26 = *(a1 + 8);
    v16 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v16 = *v16;
    }

    v17 = (a1 + 40);
    goto LABEL_55;
  }

  if (v13 == 2)
  {
    if (v9 != 18)
    {
      goto LABEL_61;
    }

    *(a1 + 16) |= 2u;
    v28 = *(a1 + 8);
    v16 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v16 = *v16;
    }

    v17 = (a1 + 48);
    goto LABEL_55;
  }

  if (v13 == 3 && v9 == 26)
  {
    *(a1 + 16) |= 4u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = (a1 + 56);
LABEL_55:
    v30 = sub_194DB04(v17, v16);
    v31 = sub_1958890(v30, *v34, a3);
    goto LABEL_56;
  }

LABEL_61:
  if (v9)
  {
    v32 = (v9 & 7) == 4;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    if (*v7)
    {
      v33 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v8 = *v34;
    }

    v31 = sub_1952690(v9, v33, v8, a3);
    goto LABEL_56;
  }

  if (!v8)
  {
    return 0;
  }

  a3[10].i32[0] = v9 - 1;
  return *v34;
}

char *sub_15A3814(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_21:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    v4 = sub_128AEEC(a3, 5, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_7:
  v7 = *(a1 + 24);
  if (v7 < 1)
  {
    v10 = v4;
  }

  else
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 32) + 4 * i);
      *v4 = 48;
      v4[1] = v9;
      if (v9 > 0x7F)
      {
        v4[1] = v9 | 0x80;
        v11 = v9 >> 7;
        v4[2] = v9 >> 7;
        v10 = v4 + 3;
        if (v9 >= 0x4000)
        {
          LOBYTE(v12) = v4[2];
          do
          {
            *(v10 - 1) = v12 | 0x80;
            v12 = v11 >> 7;
            *v10++ = v11 >> 7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        v10 = v4 + 2;
      }

      v4 = v10;
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v10;
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

  if ((*a3 - v10) >= v17)
  {
    v19 = v17;
    memcpy(v10, v18, v17);
    v10 += v19;
    return v10;
  }

  return sub_1957130(a3, v18, v17, v10);
}

uint64_t sub_15A3A10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 32) + 4 * v2);
      if (v4 < 0)
      {
        v5 = 10;
      }

      else
      {
        v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v5;
      ++v2;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = 0;
  }

  v6 = v3 + v1;
  v7 = *(a1 + 16);
  if ((v7 & 0x1F) == 0)
  {
    goto LABEL_18;
  }

  if (v7)
  {
    v13 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v6 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 2) == 0)
    {
LABEL_12:
      if ((v7 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_12;
  }

  v16 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v6 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 4) == 0)
  {
LABEL_13:
    if ((v7 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_26:
  v19 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v6 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 8) == 0)
  {
LABEL_14:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_29:
  v22 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v6 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x10) != 0)
  {
LABEL_15:
    v8 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v6 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v11 = *(a1 + 8);
  if (v11)
  {
    v25 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v6 += v26;
  }

  *(a1 + 20) = v6;
  return v6;
}

void sub_15A3C0C(uint64_t a1, uint64_t a2)
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
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_25;
  }

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
    if ((v8 & 2) == 0)
    {
LABEL_6:
      if ((v8 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      v15 = *(a2 + 56);
      *(a1 + 16) |= 4u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_194EA1C((a1 + 56), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
      if ((v8 & 8) == 0)
      {
LABEL_8:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(a2 + 48);
  *(a1 + 16) |= 2u;
  v13 = *(a1 + 8);
  v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v13)
  {
    v14 = *v14;
  }

  sub_194EA1C((a1 + 48), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
  if ((v8 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v8 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  v18 = *(a2 + 64);
  *(a1 + 16) |= 8u;
  v19 = *(a1 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  sub_194EA1C((a1 + 64), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
  if ((v8 & 0x10) != 0)
  {
LABEL_22:
    v21 = *(a2 + 72);
    *(a1 + 16) |= 0x10u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 72), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
  }

LABEL_25:
  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((a1 + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15A3DEC(uint64_t a1)
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

  if (a1 != &off_2778578)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15B1C80(v6);
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

void sub_15A3EB8(uint64_t a1)
{
  sub_15A3DEC(a1);

  operator delete();
}

uint64_t sub_15A3EF0(uint64_t result)
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
      result = sub_1580044(*(result + 32));
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

uint64_t sub_15A3F88(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v26, i) & 1) == 0; i = a3[11].u32[1])
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = sub_194DB04((a1 + 24), v20);
      v15 = sub_1958890(v21, *v26, a3);
    }

    else
    {
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
            *v26 = sub_19587DC(v6, v16);
            if (!*v26)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v17 = v6 + 2;
LABEL_24:
            *v26 = v17;
          }

          if (v16 > 7)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v16;
          }

          continue;
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
            return *v26;
          }

LABEL_45:
          *v26 = 0;
          return *v26;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v14 = sub_11F1920((a1 + 8));
          v6 = *v26;
        }

        v15 = sub_1952690(v7, v14, v6, a3);
        goto LABEL_36;
      }

      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

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

        v22 = sub_15B234C(v24);
        *(a1 + 32) = v22;
        v6 = *v26;
      }

      v15 = sub_221ECFC(a3, v22, v6);
    }

LABEL_36:
    *v26 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  return *v26;
}

char *sub_15A41A0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 32);
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

    __dst = sub_15B1F3C(v6, v8, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 40);
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

  if (v5)
  {
    v9 = sub_128AEEC(a3, 3, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v9;
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

  if ((*a3 - v9) >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_15A434C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_15;
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
    v7 = sub_15B20A0(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = *(a1 + 40);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v9;
  }

LABEL_15:
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

void sub_15A4464(uint64_t a1, uint64_t a2)
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

      v9 = sub_15B234C(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27789A0;
    }

    sub_1581C8C(v9, v12);
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

BOOL sub_15A4574(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

uint64_t sub_15A45E8(uint64_t a1)
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

void sub_15A46A0(uint64_t a1)
{
  sub_15A45E8(a1);

  operator delete();
}

uint64_t sub_15A46D8(uint64_t a1)
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
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15A4758(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 24)
      {
        v20 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v25 = sub_19587DC(v6, v19);
          if (!*v25)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v20 = v6 + 2;
LABEL_28:
          *v25 = v20;
        }

        if (v19 > 2)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 40) = v19;
        }

        continue;
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
          return *v25;
        }

LABEL_44:
        *v25 = 0;
        return *v25;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = *v25;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_35;
    }

    if (v10 == 2)
    {
      if (v7 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v18 = (a1 + 32);
    }

    else
    {
      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v17 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
    }

    v23 = sub_194DB04(v18, v17);
    v15 = sub_1958890(v23, *v25, a3);
LABEL_35:
    *v25 = v15;
    if (!v15)
    {
      goto LABEL_44;
    }
  }

  return *v25;
}

char *sub_15A4954(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 40);
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

LABEL_14:
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