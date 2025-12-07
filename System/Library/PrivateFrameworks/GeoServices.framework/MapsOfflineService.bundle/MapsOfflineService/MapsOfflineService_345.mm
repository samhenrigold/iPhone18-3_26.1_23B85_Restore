uint64_t sub_1411964(uint64_t a1)
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
      v9 = sub_140C1B0(v8);
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
      v16 = sub_140C1B0(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 40);
  if ((v17 & 0x3F) == 0)
  {
    goto LABEL_21;
  }

  if (v17)
  {
    v20 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v21 = *(v20 + 23);
    v22 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v22 = v21;
    }

    v11 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 2) == 0)
    {
LABEL_16:
      if ((v17 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_16;
  }

  v23 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 23);
  v25 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v25 = v24;
  }

  v11 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 4) == 0)
  {
LABEL_17:
    if ((v17 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    v11 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v17 & 0x10) == 0)
    {
LABEL_19:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_29:
  v26 = sub_16E51F0(*(a1 + 112));
  v11 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  if ((v17 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_31:
  v11 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 0x20) != 0)
  {
LABEL_20:
    v11 += ((9 * (__clz(*(a1 + 132) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  v18 = *(a1 + 8);
  if (v18)
  {
    v27 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v11 += v28;
  }

  *(a1 + 44) = v11;
  return v11;
}

void sub_1411BB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A34C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_144A34C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0x3F) != 0)
  {
    if (v14)
    {
      v16 = *(a2 + 96);
      *(a1 + 40) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a1 + 96), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_26;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v19 = *(a2 + 104);
    *(a1 + 40) |= 2u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 104), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }

LABEL_26:
    *(a1 + 40) |= 4u;
    v22 = *(a1 + 112);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16F5828(v24);
      *(a1 + 112) = v22;
    }

    if (*(a2 + 112))
    {
      v25 = *(a2 + 112);
    }

    else
    {
      v25 = &off_277E5E8;
    }

    sub_16E527C(v22, v25);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 120) = *(a2 + 120);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
LABEL_15:
        *(a1 + 40) |= v14;
        goto LABEL_16;
      }

LABEL_14:
      *(a1 + 132) = *(a2 + 132);
      goto LABEL_15;
    }

LABEL_35:
    *(a1 + 128) = *(a2 + 128);
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1411DDC(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 4) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(a1 + 112));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1411E30(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E0808;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = &qword_278E990;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_1411EB8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1411EE8(uint64_t a1)
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

  if (a1 != &off_276FFD8)
  {
    v6 = *(a1 + 88);
    if (v6)
    {
      sub_16E4E08(v6);
      operator delete();
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      sub_153BF18(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_144A0C0((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1412004(uint64_t a1)
{
  sub_1411EE8(a1);

  operator delete();
}

uint64_t sub_141203C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_140BDC0(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
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
        goto LABEL_21;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_25;
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

LABEL_25:
  result = sub_16E4E44(*(a1 + 88));
  if ((v6 & 8) != 0)
  {
LABEL_10:
    result = sub_144E31C(*(a1 + 96));
  }

LABEL_11:
  if ((v6 & 0x70) != 0)
  {
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_1412164(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v48 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v48, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v48 + 1);
    v8 = **v48;
    if (**v48 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v48, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v48 + 2);
      }
    }

    *v48 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0xE)
    {
      break;
    }

    if (v8 >> 3 > 6)
    {
      if (v11 == 7)
      {
        if (v8 == 58)
        {
          *(a1 + 40) |= 1u;
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v36 = (a1 + 72);
          goto LABEL_63;
        }
      }

      else if (v11 == 14 && v8 == 114)
      {
        *(a1 + 40) |= 8u;
        v22 = *(a1 + 96);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_1551A70(v24);
          *(a1 + 96) = v22;
          v7 = *v48;
        }

        v15 = sub_22030E0(a3, v22, v7);
        goto LABEL_64;
      }

      goto LABEL_67;
    }

    if (v11 != 1)
    {
      if (v11 == 4 && v8 == 34)
      {
        *(a1 + 40) |= 4u;
        v12 = *(a1 + 88);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_16F5828(v14);
          *(a1 + 88) = v12;
          v7 = *v48;
        }

        v15 = sub_21F4D60(a3, v12, v7);
        goto LABEL_64;
      }

      goto LABEL_67;
    }

    if (v8 != 8)
    {
      goto LABEL_67;
    }

    v5 |= 0x10u;
    v29 = v7 + 1;
    v28 = *v7;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v30 = *v29;
    v28 = (v30 << 7) + v28 - 128;
    if ((v30 & 0x80000000) == 0)
    {
      v29 = v7 + 2;
LABEL_49:
      *v48 = v29;
      *(a1 + 104) = v28;
      goto LABEL_65;
    }

    v42 = sub_19587DC(v7, v28);
    *v48 = v42;
    *(a1 + 104) = v43;
    if (!v42)
    {
      goto LABEL_85;
    }

LABEL_65:
    if (sub_195ADC0(a3, v48, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 0x10)
  {
    if (v11 != 15)
    {
      if (v11 == 16 && v8 == 130)
      {
        v16 = v7 - 2;
        while (1)
        {
          v17 = v16 + 2;
          *v48 = v16 + 2;
          v18 = *(a1 + 64);
          if (v18 && (v19 = *(a1 + 56), v19 < *v18))
          {
            *(a1 + 56) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_141B9A4(*(a1 + 48));
            v20 = sub_19593CC(a1 + 48, v21);
            v17 = *v48;
          }

          v16 = sub_22092E8(a3, v20, v17);
          *v48 = v16;
          if (!v16)
          {
            goto LABEL_85;
          }

          if (*a3 <= v16 || *v16 != 386)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_67;
    }

    if (v8 != 120)
    {
      goto LABEL_67;
    }

    v5 |= 0x20u;
    v31 = v7 + 1;
    v32 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    v33 = *v31;
    v32 = v32 + (v33 << 7) - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_54:
      *v48 = v31;
      *(a1 + 112) = v32;
      goto LABEL_65;
    }

    v44 = sub_1958770(v7, v32);
    *v48 = v44;
    *(a1 + 112) = v45;
    if (!v44)
    {
      goto LABEL_85;
    }

    goto LABEL_65;
  }

  if (v11 != 17)
  {
    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_67;
    }

    v5 |= 0x40u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_44:
      *v48 = v25;
      *(a1 + 116) = v26;
      goto LABEL_65;
    }

    v46 = sub_1958770(v7, v26);
    *v48 = v46;
    *(a1 + 116) = v47;
    if (!v46)
    {
      goto LABEL_85;
    }

    goto LABEL_65;
  }

  if (v8 == 138)
  {
    *(a1 + 40) |= 2u;
    v37 = *(a1 + 8);
    v35 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v35 = *v35;
    }

    v36 = (a1 + 80);
LABEL_63:
    v38 = sub_194DB04(v36, v35);
    v15 = sub_1958890(v38, *v48, a3);
LABEL_64:
    *v48 = v15;
    if (!v15)
    {
      goto LABEL_85;
    }

    goto LABEL_65;
  }

LABEL_67:
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
    if (v8 - 8000 > 0xF9F)
    {
      v40 = *(a1 + 8);
      if (v40)
      {
        v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v41 = sub_11F1920((a1 + 8));
        v7 = *v48;
      }

      v15 = sub_1952690(v8, v41, v7, a3);
    }

    else
    {
      v15 = sub_19525AC((a1 + 16), v8, v7, &off_276FFD8, (a1 + 8), a3);
    }

    goto LABEL_64;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_85:
  *v48 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v48;
}

char *sub_14125D0(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 104);
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

    v12 = *(a1 + 88);
    *v6 = 34;
    v13 = *(v12 + 44);
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v6 + 1);
    }

    else
    {
      v14 = v6 + 2;
    }

    v6 = sub_16E5070(v12, v14, a3);
    if ((v5 & 1) == 0)
    {
LABEL_12:
      if ((v5 & 8) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v15 = *(a1 + 96);
      *v6 = 114;
      v16 = *(v15 + 44);
      v6[1] = v16;
      if (v16 > 0x7F)
      {
        v17 = sub_19575D0(v16, v6 + 1);
      }

      else
      {
        v17 = v6 + 2;
      }

      v6 = sub_153C1A4(v15, v17, a3);
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 7, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v5 & 0x20) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 112);
  *v6 = 120;
  v6[1] = v18;
  if (v18 > 0x7F)
  {
    v6[1] = v18 | 0x80;
    v19 = v18 >> 7;
    v6[2] = v18 >> 7;
    v11 = v6 + 3;
    if (v18 >= 0x4000)
    {
      LOBYTE(v20) = v6[2];
      do
      {
        *(v11 - 1) = v20 | 0x80;
        v20 = v19 >> 7;
        *v11++ = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_35:
  v22 = *(a1 + 56);
  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v24 = *(*(a1 + 64) + 8 * i + 8);
      *v11 = 386;
      v25 = *(v24 + 20);
      v11[2] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, v11 + 2);
      }

      else
      {
        v26 = v11 + 3;
      }

      v11 = sub_140C048(v24, v26, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    v11 = sub_128AEEC(a3, 17, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 1000, 1500, v11, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v28 = *(a1 + 116);
    *v11 = 32760;
    v11[2] = v28;
    if (v28 > 0x7F)
    {
      v11[2] = v28 | 0x80;
      v29 = v28 >> 7;
      v11[3] = v28 >> 7;
      v27 = v11 + 4;
      if (v28 >= 0x4000)
      {
        LOBYTE(v11) = v11[3];
        do
        {
          *(v27 - 1) = v11 | 0x80;
          LODWORD(v11) = v29 >> 7;
          *v27++ = v29 >> 7;
          v30 = v29 >> 14;
          v29 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v27 = v11 + 3;
    }
  }

  else
  {
    v27 = v11;
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v27;
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

  if ((*a3 - v27) >= v34)
  {
    v36 = v34;
    memcpy(v27, v35, v34);
    v27 += v36;
    return v27;
  }

  return sub_1957130(a3, v35, v34, v27);
}

uint64_t sub_14129D8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + 2 * v3;
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
      v9 = sub_140C1B0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 0x7F) == 0)
  {
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v16 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v19 = sub_16E51F0(*(a1 + 88));
  v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 0x20) == 0)
    {
LABEL_14:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_25:
  v20 = sub_153C388(*(a1 + 96));
  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v10 & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_27:
  v4 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x40) != 0)
  {
LABEL_15:
    v4 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_16:
  v11 = *(a1 + 8);
  if (v11)
  {
    v21 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v4 += v22;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1412C08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A34C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 0x7F) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 72), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_24;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 80);
    *(a1 + 40) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 80), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }

LABEL_24:
    *(a1 + 40) |= 4u;
    v17 = *(a1 + 88);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_16F5828(v19);
      *(a1 + 88) = v17;
    }

    if (*(a2 + 88))
    {
      v20 = *(a2 + 88);
    }

    else
    {
      v20 = &off_277E5E8;
    }

    sub_16E527C(v17, v20);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_40;
    }

LABEL_32:
    *(a1 + 40) |= 8u;
    v21 = *(a1 + 96);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_1551A70(v23);
      *(a1 + 96) = v21;
    }

    if (*(a2 + 96))
    {
      v24 = *(a2 + 96);
    }

    else
    {
      v24 = &off_2776880;
    }

    sub_144F404(v21, v24);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 104) = *(a2 + 104);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
LABEL_13:
        *(a1 + 40) |= v9;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 116) = *(a2 + 116);
      goto LABEL_13;
    }

LABEL_41:
    *(a1 + 112) = *(a2 + 112);
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1412E28(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 4) != 0)
    {
      result = sub_16E5370(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = sub_144F674(*(a1 + 96));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1412E90(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E0888;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_1412F10(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1412F40(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2770050)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      sub_16E4E08(v6);
      operator delete();
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      sub_153BF18(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_144A0C0((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1413040(uint64_t a1)
{
  sub_1412F40(a1);

  operator delete();
}

uint64_t sub_1413078(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_140BDC0(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v9 = 0;
  *(v9 + 23) = 0;
  if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  result = sub_16E4E44(*(a1 + 80));
  if ((v6 & 4) != 0)
  {
LABEL_9:
    result = sub_144E31C(*(a1 + 88));
  }

LABEL_10:
  if ((v6 & 0x38) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_141316C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v47 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v47, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v47 + 1);
    v8 = **v47;
    if (**v47 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v47, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v47 + 2);
      }
    }

    *v47 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 <= 7)
    {
      if (v11 == 6)
      {
        if (v8 == 50)
        {
          v26 = v7 - 1;
          while (1)
          {
            v27 = v26 + 1;
            *v47 = v26 + 1;
            v28 = *(a1 + 64);
            if (v28 && (v29 = *(a1 + 56), v29 < *v28))
            {
              *(a1 + 56) = v29 + 1;
              v30 = *&v28[2 * v29 + 2];
            }

            else
            {
              v31 = sub_141B9A4(*(a1 + 48));
              v30 = sub_19593CC(a1 + 48, v31);
              v27 = *v47;
            }

            v26 = sub_22092E8(a3, v30, v27);
            *v47 = v26;
            if (!v26)
            {
              goto LABEL_81;
            }

            if (*a3 <= v26 || *v26 != 50)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v11 == 7 && v8 == 58)
      {
        *(a1 + 40) |= 4u;
        v12 = *(a1 + 88);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_1551A70(v14);
          *(a1 + 88) = v12;
          v7 = *v47;
        }

        v15 = sub_22030E0(a3, v12, v7);
        goto LABEL_69;
      }

      goto LABEL_60;
    }

    if (v11 == 8)
    {
      if (v8 == 66)
      {
        *(a1 + 40) |= 1u;
        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        v34 = sub_194DB04((a1 + 72), v33);
        v15 = sub_1958890(v34, *v47, a3);
        goto LABEL_69;
      }

      goto LABEL_60;
    }

    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_60;
    }

    v5 |= 0x20u;
    v20 = v7 + 1;
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_35:
      *v47 = v20;
      *(a1 + 108) = v21;
      goto LABEL_70;
    }

    v43 = sub_1958770(v7, v21);
    *v47 = v43;
    *(a1 + 108) = v44;
    if (!v43)
    {
      goto LABEL_81;
    }

LABEL_70:
    if (sub_195ADC0(a3, v47, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_60;
    }

    v5 |= 8u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_40:
      *v47 = v24;
      *(a1 + 96) = v23;
      goto LABEL_70;
    }

    v41 = sub_19587DC(v7, v23);
    *v47 = v41;
    *(a1 + 96) = v42;
    if (!v41)
    {
      goto LABEL_81;
    }

    goto LABEL_70;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_60;
    }

    v5 |= 0x10u;
    v35 = v7 + 1;
    v36 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    v37 = *v35;
    v36 = v36 + (v37 << 7) - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v35 = v7 + 2;
LABEL_59:
      *v47 = v35;
      *(a1 + 104) = v36;
      goto LABEL_70;
    }

    v45 = sub_1958770(v7, v36);
    *v47 = v45;
    *(a1 + 104) = v46;
    if (!v45)
    {
      goto LABEL_81;
    }

    goto LABEL_70;
  }

  if (v11 == 3 && v8 == 26)
  {
    *(a1 + 40) |= 2u;
    v17 = *(a1 + 80);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_16F5828(v19);
      *(a1 + 80) = v17;
      v7 = *v47;
    }

    v15 = sub_21F4D60(a3, v17, v7);
LABEL_69:
    *v47 = v15;
    if (!v15)
    {
      goto LABEL_81;
    }

    goto LABEL_70;
  }

LABEL_60:
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
    if (v8 - 8000 > 0xF9F)
    {
      v39 = *(a1 + 8);
      if (v39)
      {
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v40 = sub_11F1920((a1 + 8));
        v7 = *v47;
      }

      v15 = sub_1952690(v8, v40, v7, a3);
    }

    else
    {
      v15 = sub_19525AC((a1 + 16), v8, v7, &off_2770050, (a1 + 8), a3);
    }

    goto LABEL_69;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_81:
  *v47 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v47;
}

char *sub_1413590(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 96);
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

    v12 = *(a1 + 104);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 80);
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

    v11 = sub_16E5070(v15, v17, a3);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v20 = *(*(a1 + 64) + 8 * i + 8);
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

      v11 = sub_140C048(v20, v22, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v23 = *(a1 + 88);
    *v11 = 58;
    v24 = *(v23 + 44);
    v11[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v11 + 1);
    }

    else
    {
      v25 = v11 + 2;
    }

    v11 = sub_153C1A4(v23, v25, a3);
  }

  if (v5)
  {
    v11 = sub_128AEEC(a3, 8, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 1000, 1500, v11, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v27 = *(a1 + 108);
    *v11 = 32760;
    v11[2] = v27;
    if (v27 > 0x7F)
    {
      v11[2] = v27 | 0x80;
      v28 = v27 >> 7;
      v11[3] = v27 >> 7;
      v26 = v11 + 4;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v11[3];
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
      v26 = v11 + 3;
    }
  }

  else
  {
    v26 = v11;
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v26;
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

  if ((*a3 - v26) >= v34)
  {
    v36 = v34;
    memcpy(v26, v35, v34);
    v26 += v36;
    return v26;
  }

  return sub_1957130(a3, v35, v34, v26);
}

uint64_t sub_1413968(uint64_t a1)
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
      v9 = sub_140C1B0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 0x3F) == 0)
  {
    goto LABEL_15;
  }

  if (v10)
  {
    v13 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v16 = sub_16E51F0(*(a1 + 80));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 0x10) == 0)
    {
LABEL_13:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_21:
  v17 = sub_153C388(*(a1 + 88));
  v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v10 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_23:
  v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x20) != 0)
  {
LABEL_14:
    v4 += ((9 * (__clz(*(a1 + 108) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_15:
  v11 = *(a1 + 8);
  if (v11)
  {
    v18 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v4 += v19;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1413B50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A34C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 0x3F) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 72), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_28;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 40) |= 2u;
    v14 = *(a1 + 80);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_16F5828(v16);
      *(a1 + 80) = v14;
    }

    if (*(a2 + 80))
    {
      v17 = *(a2 + 80);
    }

    else
    {
      v17 = &off_277E5E8;
    }

    sub_16E527C(v14, v17);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(a1 + 40) |= 4u;
    v18 = *(a1 + 88);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1551A70(v20);
      *(a1 + 88) = v18;
    }

    if (*(a2 + 88))
    {
      v21 = *(a2 + 88);
    }

    else
    {
      v21 = &off_2776880;
    }

    sub_144F404(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(a1 + 96) = *(a2 + 96);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
LABEL_12:
        *(a1 + 40) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 108) = *(a2 + 108);
      goto LABEL_12;
    }

LABEL_37:
    *(a1 + 104) = *(a2 + 104);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1413D38(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) != 0)
    {
      result = sub_16E5370(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = sub_144F674(*(a1 + 88));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1413DA0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E0908;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = &qword_278E990;
  *(a1 + 72) = 0;
  return a1;
}

void sub_1413E18(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1413E48(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E0908;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  v6 = *(a2 + 48);
  if (v6)
  {
    sub_1958E5C((a1 + 48), v6);
    v7 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v7, *(a2 + 56), 4 * *(a2 + 48));
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    sub_1957EF4(v4, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 64) = &qword_278E990;
  if (*(a2 + 40))
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_1413F60(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1413FB0(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1414060(uint64_t a1)
{
  sub_1413FB0(a1);

  operator delete();
}

unsigned __int8 *sub_1414098(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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
  *(v4 + 64) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1414124(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v31, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v31 + 1);
    v8 = **v31;
    if (**v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v31 + 2);
      }
    }

    *v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 2047)
    {
      break;
    }

    if (v8 != 248)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v21 = v7 + 1;
    v22 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    v23 = *v21;
    v22 = v22 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_37:
      *v31 = v21;
      *(a1 + 72) = v22;
      goto LABEL_45;
    }

    v29 = sub_1958770(v7, v22);
    *v31 = v29;
    *(a1 + 72) = v30;
    if (!v29)
    {
      goto LABEL_54;
    }

LABEL_45:
    if (sub_195ADC0(a3, v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 == 16)
    {
      v15 = v7 - 1;
      while (1)
      {
        *v31 = v15 + 1;
        v16 = v15[1];
        if (v15[1] < 0)
        {
          v17 = v16 + (v15[2] << 7);
          v16 = v17 - 128;
          if (v15[2] < 0)
          {
            v15 = sub_1958770((v15 + 1), v17 - 128);
            v16 = v18;
          }

          else
          {
            v15 += 3;
          }
        }

        else
        {
          v15 += 2;
        }

        *v31 = v15;
        v19 = *(a1 + 48);
        if (v19 == *(a1 + 52))
        {
          v20 = v19 + 1;
          sub_1958E5C((a1 + 48), v19 + 1);
          *(*(a1 + 56) + 4 * v19) = v16;
          v15 = *v31;
        }

        else
        {
          *(*(a1 + 56) + 4 * v19) = v16;
          v20 = v19 + 1;
        }

        *(a1 + 48) = v20;
        if (!v15)
        {
          goto LABEL_54;
        }

        if (*a3 <= v15 || *v15 != 16)
        {
          goto LABEL_45;
        }
      }
    }

    if (v8 == 18)
    {
      v14 = sub_1958918((a1 + 48), v7, a3);
      goto LABEL_44;
    }
  }

  else if (v11 == 1 && v8 == 10)
  {
    *(a1 + 40) |= 1u;
    v24 = *(a1 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v26 = sub_194DB04((a1 + 64), v25);
    v14 = sub_1958890(v26, *v31, a3);
LABEL_44:
    *v31 = v14;
    if (!v14)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
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
      v27 = *(a1 + 8);
      if (v27)
      {
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v28 = sub_11F1920((a1 + 8));
        v7 = *v31;
      }

      v14 = sub_1952690(v8, v28, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_27700C0, (a1 + 8), a3);
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v31 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v31;
}

char *sub_1414414(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(a1 + 48);
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

      v9 = *(*(a1 + 56) + 4 * i);
      *v4 = 16;
      v4[1] = v9;
      if (v9 > 0x7F)
      {
        v4[1] = v9 | 0x80;
        v11 = v9 >> 7;
        v4[2] = v9 >> 7;
        v10 = v4 + 3;
        if (v9 >= 0x4000)
        {
          LOBYTE(v4) = v4[2];
          do
          {
            *(v10 - 1) = v4 | 0x80;
            LODWORD(v4) = v11 >> 7;
            *v10++ = v11 >> 7;
            v12 = v11 >> 14;
            v11 >>= 7;
          }

          while (v12);
        }
      }

      else
      {
        v10 = v4 + 2;
      }

      v4 = v10;
    }
  }

  if (*(a1 + 26))
  {
    v10 = sub_1953428(a1 + 16, 1000, 1500, v10, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v10)
    {
      v10 = sub_225EB68(a3, v10);
    }

    v14 = *(a1 + 72);
    *v10 = 32760;
    v10[2] = v14;
    if (v14 > 0x7F)
    {
      v10[2] = v14 | 0x80;
      v15 = v14 >> 7;
      v10[3] = v14 >> 7;
      v13 = v10 + 4;
      if (v14 >= 0x4000)
      {
        LOBYTE(v16) = v10[3];
        do
        {
          *(v13 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v13++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v13 = v10 + 3;
    }
  }

  else
  {
    v13 = v10;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v13;
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

  if ((*a3 - v13) >= v21)
  {
    v23 = v21;
    memcpy(v13, v22, v21);
    v13 += v23;
    return v13;
  }

  return sub_1957130(a3, v22, v21, v13);
}

uint64_t sub_1414638(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  result = sub_1959E5C((a1 + 48)) + v2 + *(a1 + 48);
  v4 = *(a1 + 40);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      result += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v4 & 2) != 0)
    {
      result += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
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

  *(a1 + 44) = result;
  return result;
}

void sub_1414718(uint64_t a1, uint64_t a2)
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
  if ((v8 & 3) != 0)
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
      *(a1 + 72) = *(a2 + 72);
    }

    *(a1 + 40) |= v8;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1414838(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E0988;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = &qword_278E990;
  *(a1 + 88) = &qword_278E990;
  *(a1 + 96) = &qword_278E990;
  *(a1 + 104) = &qword_278E990;
  *(a1 + 112) = &qword_278E990;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 148) = 0u;
  return a1;
}

void sub_14148CC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14148FC(void *a1)
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

  sub_1414994(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144A144(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1414994(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = (a1 + 72);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  if (a1 != &off_2770110)
  {
    result = *(a1 + 120);
    if (result)
    {
      sub_14B662C(result);

      operator delete();
    }
  }

  return result;
}

void sub_1414A7C(void *a1)
{
  sub_14148FC(a1);

  operator delete();
}

uint64_t sub_1414AB4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14167A4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 0x7F) == 0)
  {
    goto LABEL_14;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_24:
    v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_11:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

  v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  v11 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v6 & 8) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v6 & 8) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_10:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_36:
  v13 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v13 + 23) & 0x80000000) == 0)
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_40;
    }

LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  **v13 = 0;
  *(v13 + 8) = 0;
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_40:
  v14 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v14 + 23) & 0x80000000) == 0)
  {
    *v14 = 0;
    *(v14 + 23) = 0;
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_144E6A8(*(a1 + 120));
    goto LABEL_14;
  }

  **v14 = 0;
  *(v14 + 8) = 0;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  *(a1 + 128) = 0;
  if ((v6 & 0x7F00) != 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    *(a1 + 152) = 0;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_1414CA8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v71 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v71, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v71 + 1);
    v8 = **v71;
    if (**v71 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v71, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v71 + 2);
      }
    }

    *v71 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_95;
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
          *v71 = v12;
          *(a1 + 128) = v11;
          goto LABEL_93;
        }

        v57 = sub_19587DC(v7, v11);
        *v71 = v57;
        *(a1 + 128) = v58;
        if (!v57)
        {
          goto LABEL_124;
        }

        goto LABEL_93;
      case 2u:
      case 3u:
      case 4u:
        goto LABEL_95;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_95;
        }

        v40 = v7 + 1;
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_61;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          *v71 = sub_19587DC(v7, v39);
          if (!*v71)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v40 = v7 + 2;
LABEL_61:
          *v71 = v40;
        }

        if (v39 > 1)
        {
          sub_1313700();
        }

        else
        {
          *(a1 + 40) |= 0x100u;
          *(a1 + 136) = v39;
        }

        goto LABEL_93;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_95;
        }

        v5 |= 0x200u;
        v33 = v7 + 1;
        v34 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        v35 = *v33;
        v34 = v34 + (v35 << 7) - 128;
        if (v35 < 0)
        {
          v63 = sub_1958770(v7, v34);
          *v71 = v63;
          *(a1 + 140) = v64;
          if (!v63)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v33 = v7 + 2;
LABEL_51:
          *v71 = v33;
          *(a1 + 140) = v34;
        }

        goto LABEL_93;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_95;
        }

        v5 |= 0x400u;
        v27 = v7 + 1;
        v28 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        v29 = *v27;
        v28 = v28 + (v29 << 7) - 128;
        if (v29 < 0)
        {
          v59 = sub_1958770(v7, v28);
          *v71 = v59;
          *(a1 + 144) = v60;
          if (!v59)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v27 = v7 + 2;
LABEL_41:
          *v71 = v27;
          *(a1 + 144) = v28;
        }

        goto LABEL_93;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_95;
        }

        v5 |= 0x800u;
        v36 = v7 + 1;
        v37 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        v38 = *v36;
        v37 = v37 + (v38 << 7) - 128;
        if (v38 < 0)
        {
          v65 = sub_1958770(v7, v37);
          *v71 = v65;
          *(a1 + 148) = v66;
          if (!v65)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v36 = v7 + 2;
LABEL_56:
          *v71 = v36;
          *(a1 + 148) = v37;
        }

        goto LABEL_93;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_95;
        }

        v5 |= 0x1000u;
        v47 = v7 + 1;
        v48 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_78;
        }

        v49 = *v47;
        v48 = v48 + (v49 << 7) - 128;
        if (v49 < 0)
        {
          v67 = sub_1958770(v7, v48);
          *v71 = v67;
          *(a1 + 152) = v68;
          if (!v67)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v47 = v7 + 2;
LABEL_78:
          *v71 = v47;
          *(a1 + 152) = v48;
        }

        goto LABEL_93;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_95;
        }

        v21 = v7 - 1;
        while (1)
        {
          v22 = v21 + 1;
          *v71 = v21 + 1;
          v23 = *(a1 + 64);
          if (v23 && (v24 = *(a1 + 56), v24 < *v23))
          {
            *(a1 + 56) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = sub_141BEF0(*(a1 + 48));
            v25 = sub_19593CC(a1 + 48, v26);
            v22 = *v71;
          }

          v21 = sub_2209378(a3, v25, v22);
          *v71 = v21;
          if (!v21)
          {
            goto LABEL_124;
          }

          if (*a3 <= v21 || *v21 != 82)
          {
            goto LABEL_93;
          }
        }

      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_95;
        }

        v5 |= 0x2000u;
        v31 = v7 + 1;
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          v61 = sub_19587DC(v7, v30);
          *v71 = v61;
          *(a1 + 156) = v62 != 0;
          if (!v61)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v31 = v7 + 2;
LABEL_46:
          *v71 = v31;
          *(a1 + 156) = v30 != 0;
        }

        goto LABEL_93;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 1u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = (a1 + 72);
        goto LABEL_91;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 2u;
        v20 = *(a1 + 8);
        v18 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v18 = *v18;
        }

        v19 = (a1 + 80);
        goto LABEL_91;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 4u;
        v42 = *(a1 + 8);
        v18 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v18 = *v18;
        }

        v19 = (a1 + 88);
        goto LABEL_91;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 8u;
        v50 = *(a1 + 8);
        v18 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if (v50)
        {
          v18 = *v18;
        }

        v19 = (a1 + 96);
        goto LABEL_91;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 0x10u;
        v51 = *(a1 + 8);
        v18 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v18 = *v18;
        }

        v19 = (a1 + 104);
        goto LABEL_91;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 0x20u;
        v52 = *(a1 + 8);
        v18 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v18 = *v18;
        }

        v19 = (a1 + 112);
LABEL_91:
        v53 = sub_194DB04(v19, v18);
        v46 = sub_1958890(v53, *v71, a3);
        goto LABEL_92;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 0x40u;
        v43 = *(a1 + 120);
        if (!v43)
        {
          v44 = *(a1 + 8);
          v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
          if (v44)
          {
            v45 = *v45;
          }

          v43 = sub_14BF484(v45);
          *(a1 + 120) = v43;
          v7 = *v71;
        }

        v46 = sub_2209138(a3, v43, v7);
        goto LABEL_92;
      default:
        if (v8 >> 3 == 2047 && v8 == 248)
        {
          v5 |= 0x4000u;
          v14 = v7 + 1;
          v15 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          v16 = *v14;
          v15 = v15 + (v16 << 7) - 128;
          if ((v16 & 0x80000000) == 0)
          {
            v14 = v7 + 2;
LABEL_18:
            *v71 = v14;
            *(a1 + 160) = v15;
            goto LABEL_93;
          }

          v69 = sub_1958770(v7, v15);
          *v71 = v69;
          *(a1 + 160) = v70;
          if (!v69)
          {
            goto LABEL_124;
          }

LABEL_93:
          if (sub_195ADC0(a3, v71, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_95:
        if (v8)
        {
          v54 = (v8 & 7) == 4;
        }

        else
        {
          v54 = 1;
        }

        if (!v54)
        {
          if (v8 - 8000 > 0xF9F)
          {
            v55 = *(a1 + 8);
            if (v55)
            {
              v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v56 = sub_11F1920((a1 + 8));
              v7 = *v71;
            }

            v46 = sub_1952690(v8, v56, v7, a3);
          }

          else
          {
            v46 = sub_19525AC((a1 + 16), v8, v7, &off_2770110, (a1 + 8), a3);
          }

LABEL_92:
          *v71 = v46;
          if (!v46)
          {
            goto LABEL_124;
          }

          goto LABEL_93;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_124:
          *v71 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v71;
    }
  }
}

char *sub_14153AC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x80) != 0)
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 136);
    *v6 = 40;
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 140);
    *v11 = 48;
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

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 144);
    *v15 = 56;
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

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 148);
    *v19 = 64;
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

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 152);
    *v24 = 72;
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

  v33 = *(a1 + 56);
  if (v33)
  {
    for (i = 0; i != v33; ++i)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v35 = *(*(a1 + 64) + 8 * i + 8);
      *v28 = 82;
      v36 = *(v35 + 44);
      v28[1] = v36;
      if (v36 > 0x7F)
      {
        v37 = sub_19575D0(v36, v28 + 1);
      }

      else
      {
        v37 = v28 + 2;
      }

      v28 = sub_1416A2C(v35, v37, a3);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v38 = *(a1 + 156);
    *v28 = 88;
    v28[1] = v38;
    v28 += 2;
    if ((v5 & 1) == 0)
    {
LABEL_65:
      if ((v5 & 2) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_76;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_65;
  }

  v28 = sub_128AEEC(a3, 12, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v5 & 2) == 0)
  {
LABEL_66:
    if ((v5 & 4) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_77;
  }

LABEL_76:
  v28 = sub_128AEEC(a3, 13, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v5 & 4) == 0)
  {
LABEL_67:
    if ((v5 & 8) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_78;
  }

LABEL_77:
  v28 = sub_128AEEC(a3, 14, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v5 & 8) == 0)
  {
LABEL_68:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_79;
  }

LABEL_78:
  v28 = sub_128AEEC(a3, 15, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v5 & 0x10) == 0)
  {
LABEL_69:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_80;
  }

LABEL_79:
  v28 = sub_128AEEC(a3, 16, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v5 & 0x20) == 0)
  {
LABEL_70:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_81;
  }

LABEL_80:
  v28 = sub_128AEEC(a3, 17, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_87;
  }

LABEL_81:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v39 = *(a1 + 120);
  *v28 = 402;
  v40 = *(v39 + 44);
  v28[2] = v40;
  if (v40 > 0x7F)
  {
    v41 = sub_19575D0(v40, v28 + 2);
  }

  else
  {
    v41 = v28 + 3;
  }

  v28 = sub_14B6D24(v39, v41, a3);
LABEL_87:
  if (*(a1 + 26))
  {
    v28 = sub_1953428(a1 + 16, 1000, 1500, v28, a3);
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v43 = *(a1 + 160);
    *v28 = 32760;
    v28[2] = v43;
    if (v43 > 0x7F)
    {
      v28[2] = v43 | 0x80;
      v44 = v43 >> 7;
      v28[3] = v43 >> 7;
      v42 = v28 + 4;
      if (v43 >= 0x4000)
      {
        LOBYTE(v45) = v28[3];
        do
        {
          *(v42 - 1) = v45 | 0x80;
          v45 = v44 >> 7;
          *v42++ = v44 >> 7;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
      }
    }

    else
    {
      v42 = v28 + 3;
    }
  }

  else
  {
    v42 = v28;
  }

  v47 = *(a1 + 8);
  if ((v47 & 1) == 0)
  {
    return v42;
  }

  v49 = v47 & 0xFFFFFFFFFFFFFFFCLL;
  v50 = *(v49 + 31);
  if (v50 < 0)
  {
    v51 = *(v49 + 8);
    v50 = *(v49 + 16);
  }

  else
  {
    v51 = (v49 + 8);
  }

  if ((*a3 - v42) >= v50)
  {
    v52 = v50;
    memcpy(v42, v51, v50);
    v42 += v52;
    return v42;
  }

  return sub_1957130(a3, v51, v50, v42);
}

uint64_t sub_1415A1C(uint64_t a1)
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
      v9 = sub_1416BDC(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_17;
  }

  if (v10)
  {
    v13 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_34;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v16 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_34:
  v19 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_37:
  v22 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x10) == 0)
  {
LABEL_13:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_43:
    v28 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v4 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 0x40) == 0)
    {
LABEL_15:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_40:
  v25 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v4 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_14:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_46:
  v31 = sub_14B71B8(*(a1 + 120));
  v4 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x80) != 0)
  {
LABEL_16:
    v4 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v10 & 0x7F00) == 0)
  {
    goto LABEL_26;
  }

  if ((v10 & 0x100) != 0)
  {
    v32 = *(a1 + 136);
    if (v32 < 0)
    {
      v33 = 11;
    }

    else
    {
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v33;
    if ((v10 & 0x200) == 0)
    {
LABEL_20:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_53;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v4 += ((9 * (__clz(*(a1 + 140) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x400) == 0)
  {
LABEL_21:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v4 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x800) == 0)
  {
LABEL_22:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_54:
  v4 += ((9 * (__clz(*(a1 + 148) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x1000) != 0)
  {
LABEL_23:
    v4 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_24:
  v4 += (v10 >> 12) & 2;
  if ((v10 & 0x4000) != 0)
  {
    v4 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  v11 = *(a1 + 8);
  if (v11)
  {
    v34 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v4 += v35;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1415E04(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A3C8((a1 + 48), v7, (v6 + 8), v5, **(a1 + 64) - *(a1 + 56));
    v8 = *(a1 + 56) + v5;
    *(a1 + 56) = v8;
    v9 = *(a1 + 64);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 40);
  if (v10)
  {
    if (v10)
    {
      v12 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_194EA1C((a1 + 72), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
      if ((v10 & 2) == 0)
      {
LABEL_7:
        if ((v10 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_35;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_7;
    }

    v15 = *(a2 + 80);
    *(a1 + 40) |= 2u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 80), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v10 & 4) == 0)
    {
LABEL_8:
      if ((v10 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_35:
    v18 = *(a2 + 88);
    *(a1 + 40) |= 4u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 88), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v10 & 8) == 0)
    {
LABEL_9:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_41;
    }

LABEL_38:
    v21 = *(a2 + 96);
    *(a1 + 40) |= 8u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 96), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
    if ((v10 & 0x10) == 0)
    {
LABEL_10:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }

LABEL_41:
    v24 = *(a2 + 104);
    *(a1 + 40) |= 0x10u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 104), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v10 & 0x20) == 0)
    {
LABEL_11:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_47;
    }

LABEL_44:
    v27 = *(a2 + 112);
    *(a1 + 40) |= 0x20u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_194EA1C((a1 + 112), (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
    if ((v10 & 0x40) == 0)
    {
LABEL_12:
      if ((v10 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 40) |= v10;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_14;
    }

LABEL_47:
    *(a1 + 40) |= 0x40u;
    v30 = *(a1 + 120);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_14BF484(v32);
      *(a1 + 120) = v30;
    }

    if (*(a2 + 120))
    {
      v33 = *(a2 + 120);
    }

    else
    {
      v33 = &off_2773AC8;
    }

    sub_144F194(v30, v33);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v10 & 0x7F00) == 0)
  {
    goto LABEL_25;
  }

  if ((v10 & 0x100) != 0)
  {
    *(a1 + 136) = *(a2 + 136);
    if ((v10 & 0x200) == 0)
    {
LABEL_18:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_58;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  *(a1 + 140) = *(a2 + 140);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a1 + 144) = *(a2 + 144);
  if ((v10 & 0x800) == 0)
  {
LABEL_20:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a1 + 148) = *(a2 + 148);
  if ((v10 & 0x1000) == 0)
  {
LABEL_21:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_61:
    *(a1 + 156) = *(a2 + 156);
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_60:
  *(a1 + 152) = *(a2 + 152);
  if ((v10 & 0x2000) != 0)
  {
    goto LABEL_61;
  }

LABEL_22:
  if ((v10 & 0x4000) != 0)
  {
LABEL_23:
    *(a1 + 160) = *(a2 + 160);
  }

LABEL_24:
  *(a1 + 40) |= v10;
LABEL_25:
  sub_225EA0C(a1 + 16, a2 + 16);
  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1416118(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_195228C(*(*(a1 + 64) + 8 * v3) + 16);
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 0x40) == 0)
    {
      return 1;
    }

    result = sub_144F5D0(*(a1 + 120));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_141619C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1416218(void *a1)
{
  sub_141619C(a1);

  operator delete();
}

uint64_t sub_1416250(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1416264(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
  {
    return v20;
  }

  while (1)
  {
    v5 = v20 + 1;
    v6 = *v20;
    if (*v20 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(v20, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = v20 + 2;
      }
    }

    v20 = v5;
    if ((v6 & 0xFFFFFFF8) == 8)
    {
      if (v6 == 8)
      {
        v9 = v5 - 1;
        while (1)
        {
          v20 = v9 + 1;
          v10 = v9[1];
          if (v10 < 0)
          {
            v11 = (v9[2] << 7) + v10;
            v10 = (v11 - 128);
            if (v9[2] < 0)
            {
              v9 = sub_19587DC((v9 + 1), (v11 - 128));
              v10 = v12;
            }

            else
            {
              v9 += 3;
            }
          }

          else
          {
            v9 += 2;
          }

          v20 = v9;
          v13 = *(a1 + 16);
          if (v13 == *(a1 + 20))
          {
            v14 = v13 + 1;
            sub_1959094((a1 + 16), v13 + 1);
            *(*(a1 + 24) + 8 * v13) = v10;
            v9 = v20;
          }

          else
          {
            *(*(a1 + 24) + 8 * v13) = v10;
            v14 = v13 + 1;
          }

          *(a1 + 16) = v14;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 8)
          {
            goto LABEL_31;
          }
        }
      }

      if (v6 == 10)
      {
        v15 = sub_1958938((a1 + 16), v5, a3);
        goto LABEL_30;
      }
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v18 = sub_11F1920((a1 + 8));
      v5 = v20;
    }

    v15 = sub_1952690(v6, v18, v5, a3);
LABEL_30:
    v20 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
    {
      return v20;
    }
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return v20;
  }

  return 0;
}

char *sub_1416454(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 16);
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

      v7 = *(*(a1 + 24) + 8 * i);
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

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v15)
  {
    v17 = v15;
    memcpy(v8, v16, v15);
    v8 += v17;
    return v8;
  }

  return sub_1957130(a3, v16, v15, v8);
}

uint64_t sub_14165A4(uint64_t a1)
{
  result = sub_1959F14((a1 + 16)) + *(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    result += v5;
  }

  *(a1 + 32) = result;
  return result;
}

void *sub_1416614(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E0A88;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void sub_141667C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14166AC(uint64_t a1)
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
  if (a1 != &off_27701E0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_141619C(v6);
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

void sub_141676C(uint64_t a1)
{
  sub_14166AC(a1);

  operator delete();
}

uint64_t sub_14167A4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if (*(a1 + 40))
  {
    v3 = *(a1 + 48);
    v4 = *(v3 + 8);
    result = v3 + 8;
    *(result + 8) = 0;
    if (v4)
    {
      result = sub_1957EA8(result);
    }
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1416818(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v24, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v24 + 1;
    v8 = *v24;
    if (*v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v24 + 2;
      }
    }

    v24 = v7;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_27:
      v24 = v18;
      *(a1 + 56) = v17;
      goto LABEL_32;
    }

    v22 = sub_19587DC(v7, v17);
    v24 = v22;
    *(a1 + 56) = v23;
    if (!v22)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (sub_195ADC0(a3, &v24, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 40) |= 1u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_141BE5C(v16);
      *(a1 + 48) = v14;
      v7 = v24;
    }

    v13 = sub_2209408(a3, v14, v7);
LABEL_31:
    v24 = v13;
    if (!v13)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
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
    if (v8 - 8000 > 0xF9F)
    {
      v20 = *(a1 + 8);
      if (v20)
      {
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v21 = sub_11F1920((a1 + 8));
        v7 = v24;
      }

      v13 = sub_1952690(v8, v21, v7, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v8, v7, &off_27701E0, (a1 + 8), a3);
    }

    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_39:
  v24 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v24;
}

char *sub_1416A2C(uint64_t a1, char *a2, void *a3)
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 48);
    *v6 = 26;
    v12 = *(v11 + 32);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_1416454(v11, v13, a3);
  }

  if (*(a1 + 26))
  {
    v6 = sub_1953428(a1 + 16, 1000, 1500, v6, a3);
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

  if (*a3 - v6 >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_1416BDC(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = sub_14165A4(*(a1 + 48));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 44) = v2;
  return v2;
}

void sub_1416C9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(a1 + 40) |= 1u;
      v5 = *(a1 + 48);
      if (!v5)
      {
        v6 = *(a1 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = sub_141BE5C(v7);
        *(a1 + 48) = v5;
      }

      if (*(a2 + 48))
      {
        v8 = *(a2 + 48);
      }

      else
      {
        v8 = &off_27701B8;
      }

      sub_1326DC0(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 40) |= v4;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1416D90(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E0B08;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  *(a1 + 32) = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 32), (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 16);
  }

  *(a1 + 40) = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 16);
  }

  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v5 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  v10 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v10;
  return a1;
}

void *sub_1417010(void *a1)
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

  sub_1417094(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1417094(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  result = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2770220)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_16E4E08(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_14B79B4(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_153BF18(v7);
      operator delete();
    }

    result = *(a1 + 72);
    if (result)
    {
      sub_14B662C(result);

      operator delete();
    }
  }

  return result;
}

void sub_14171A0(void *a1)
{
  sub_1417010(a1);

  operator delete();
}

uint64_t sub_14171D8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_29:
    result = sub_14B6668(*(v1 + 56));
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_30;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_28:
  result = sub_16E4E44(*(result + 48));
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_30:
  result = sub_144E31C(*(v1 + 64));
  if ((v2 & 0x40) != 0)
  {
LABEL_9:
    result = sub_144E6A8(*(v1 + 72));
  }

LABEL_10:
  *(v1 + 80) = 0;
  if ((v2 & 0x700) != 0)
  {
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
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

uint64_t sub_141731C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v48 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v48, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v48 + 1);
    v8 = **v48;
    if (**v48 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v48, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v48 + 2);
      }
    }

    *v48 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 > 8)
      {
        if (v11 != 9)
        {
          if (v11 == 10)
          {
            if (v8 != 82)
            {
              goto LABEL_76;
            }

            *(a1 + 16) |= 0x20u;
            v32 = *(a1 + 64);
            if (!v32)
            {
              v33 = *(a1 + 8);
              v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
              if (v33)
              {
                v34 = *v34;
              }

              v32 = sub_1551A70(v34);
              *(a1 + 64) = v32;
              v7 = *v48;
            }

            v15 = sub_22030E0(a3, v32, v7);
          }

          else
          {
            if (v11 != 11 || v8 != 90)
            {
              goto LABEL_76;
            }

            *(a1 + 16) |= 0x40u;
            v18 = *(a1 + 72);
            if (!v18)
            {
              v19 = *(a1 + 8);
              v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
              if (v19)
              {
                v20 = *v20;
              }

              v18 = sub_14BF484(v20);
              *(a1 + 72) = v18;
              v7 = *v48;
            }

            v15 = sub_2209138(a3, v18, v7);
          }

LABEL_83:
          *v48 = v15;
          if (!v15)
          {
            goto LABEL_93;
          }

          goto LABEL_84;
        }

        if (v8 != 74)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 4u;
        v39 = *(a1 + 8);
        v30 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v30 = *v30;
        }

        v31 = (a1 + 40);
      }

      else if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 1u;
        v38 = *(a1 + 8);
        v30 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v30 = *v30;
        }

        v31 = (a1 + 24);
      }

      else
      {
        if (v11 != 7)
        {
          if (v11 != 8 || v8 != 66)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 0x10u;
          v12 = *(a1 + 56);
          if (!v12)
          {
            v13 = *(a1 + 8);
            v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
            if (v13)
            {
              v14 = *v14;
            }

            v12 = sub_14BF4E0(v14);
            *(a1 + 56) = v12;
            v7 = *v48;
          }

          v15 = sub_2209498(a3, v12, v7);
          goto LABEL_83;
        }

        if (v8 != 58)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 2u;
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v31 = (a1 + 32);
      }

      v40 = sub_194DB04(v31, v30);
      v15 = sub_1958890(v40, *v48, a3);
      goto LABEL_83;
    }

    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v8 != 37)
        {
          goto LABEL_76;
        }

        v28 = *v7;
        v16 = v7 + 4;
        v5 |= 0x200u;
        *(a1 + 96) = v28;
      }

      else
      {
        if (v11 != 5 || v8 != 45)
        {
          goto LABEL_76;
        }

        v17 = *v7;
        v16 = v7 + 4;
        v5 |= 0x400u;
        *(a1 + 100) = v17;
      }

      *v48 = v16;
      goto LABEL_84;
    }

    if (v8 != 24)
    {
      goto LABEL_76;
    }

    v5 |= 0x100u;
    v36 = v7 + 1;
    v35 = *v7;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_66;
    }

    v37 = *v36;
    v35 = (v37 << 7) + v35 - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v36 = v7 + 2;
LABEL_66:
      *v48 = v36;
      *(a1 + 88) = v35;
      goto LABEL_84;
    }

    v46 = sub_19587DC(v7, v35);
    *v48 = v46;
    *(a1 + 88) = v47;
    if (!v46)
    {
      goto LABEL_93;
    }

LABEL_84:
    if (sub_195ADC0(a3, v48, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_76;
    }

    v5 |= 0x80u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_48;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_48:
      *v48 = v26;
      *(a1 + 80) = v25;
      goto LABEL_84;
    }

    v44 = sub_19587DC(v7, v25);
    *v48 = v44;
    *(a1 + 80) = v45;
    if (!v44)
    {
      goto LABEL_93;
    }

    goto LABEL_84;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 48);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16F5828(v24);
      *(a1 + 48) = v22;
      v7 = *v48;
    }

    v15 = sub_21F4D60(a3, v22, v7);
    goto LABEL_83;
  }

LABEL_76:
  if (v8)
  {
    v41 = (v8 & 7) == 4;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v42 = *(a1 + 8);
    if (v42)
    {
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v43 = sub_11F1920((a1 + 8));
      v7 = *v48;
    }

    v15 = sub_1952690(v8, v43, v7, a3);
    goto LABEL_83;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_93:
  *v48 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v48;
}

char *sub_1417788(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 80);
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

    v15 = *(a1 + 88);
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

    v18 = *(a1 + 96);
    *v14 = 37;
    *(v14 + 1) = v18;
    v14 += 5;
    if ((v5 & 0x400) == 0)
    {
LABEL_28:
      if ((v5 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_41;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_28;
  }

  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v19 = *(a1 + 100);
  *v14 = 45;
  *(v14 + 1) = v19;
  v14 += 5;
  if ((v5 & 1) == 0)
  {
LABEL_29:
    if ((v5 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = sub_128AEEC(a3, 6, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v14);
  if ((v5 & 2) == 0)
  {
LABEL_30:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = sub_128AEEC(a3, 7, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v14);
  if ((v5 & 0x10) == 0)
  {
LABEL_31:
    if ((v5 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

LABEL_43:
  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v20 = *(a1 + 56);
  *v14 = 66;
  v21 = *(v20 + 44);
  v14[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v14 + 1);
  }

  else
  {
    v22 = v14 + 2;
  }

  v14 = sub_14B7C34(v20, v22, a3);
  if ((v5 & 4) == 0)
  {
LABEL_32:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_50;
  }

LABEL_49:
  v14 = sub_128AEEC(a3, 9, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v14);
  if ((v5 & 0x20) == 0)
  {
LABEL_33:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

LABEL_50:
  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v23 = *(a1 + 64);
  *v14 = 82;
  v24 = *(v23 + 44);
  v14[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v14 + 1);
  }

  else
  {
    v25 = v14 + 2;
  }

  v14 = sub_153C1A4(v23, v25, a3);
  if ((v5 & 0x40) != 0)
  {
LABEL_56:
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v26 = *(a1 + 72);
    *v14 = 90;
    v27 = *(v26 + 44);
    v14[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v14 + 1);
    }

    else
    {
      v28 = v14 + 2;
    }

    v14 = sub_14B6D24(v26, v28, a3);
  }

LABEL_62:
  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v14;
  }

  v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = *(v31 + 31);
  if (v32 < 0)
  {
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
  }

  else
  {
    v33 = (v31 + 8);
  }

  if ((*a3 - v14) >= v32)
  {
    v34 = v32;
    memcpy(v14, v33, v32);
    v14 += v34;
    return v14;
  }

  return sub_1957130(a3, v33, v32, v14);
}

uint64_t sub_1417BC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
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
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v13 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v16 = sub_16E51F0(*(a1 + 48));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = sub_14B7DC4(*(a1 + 56));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = sub_153C388(*(a1 + 64));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_35:
  v19 = sub_14B71B8(*(a1 + 72));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0x700) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v10 = v3 + 5;
    if ((v2 & 0x200) == 0)
    {
      v10 = v3;
    }

    if ((v2 & 0x400) != 0)
    {
      v3 = v10 + 5;
    }

    else
    {
      v3 = v10;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v20 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v3 += v21;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1417E40(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v8 = *(a1 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      sub_194EA1C((a1 + 24), (v7 & 0xFFFFFFFFFFFFFFFELL), v9);
      if ((v5 & 2) == 0)
      {
LABEL_4:
        if ((v5 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_28;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_4;
    }

    v10 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 32), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    }

LABEL_28:
    v13 = *(a2 + 40);
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 40), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v5 & 8) == 0)
    {
LABEL_6:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_39;
    }

LABEL_31:
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

      v16 = sub_16F5828(v18);
      *(a1 + 48) = v16;
    }

    if (*(a2 + 48))
    {
      v19 = *(a2 + 48);
    }

    else
    {
      v19 = &off_277E5E8;
    }

    sub_16E527C(v16, v19);
    if ((v5 & 0x10) == 0)
    {
LABEL_7:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_47;
    }

LABEL_39:
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

      v20 = sub_14BF4E0(v22);
      *(a1 + 56) = v20;
    }

    if (*(a2 + 56))
    {
      v23 = *(a2 + 56);
    }

    else
    {
      v23 = &off_2773B38;
    }

    sub_14B7418(v20, v23);
    if ((v5 & 0x20) == 0)
    {
LABEL_8:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_55;
    }

LABEL_47:
    *(a1 + 16) |= 0x20u;
    v24 = *(a1 + 64);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_1551A70(v26);
      *(a1 + 64) = v24;
    }

    if (*(a2 + 64))
    {
      v27 = *(a2 + 64);
    }

    else
    {
      v27 = &off_2776880;
    }

    sub_144F404(v24, v27);
    if ((v5 & 0x40) == 0)
    {
LABEL_9:
      if ((v5 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v5;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_55:
    *(a1 + 16) |= 0x40u;
    v28 = *(a1 + 72);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_14BF484(v30);
      *(a1 + 72) = v28;
    }

    if (*(a2 + 72))
    {
      v31 = *(a2 + 72);
    }

    else
    {
      v31 = &off_2773AC8;
    }

    sub_144F194(v28, v31);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v5 & 0x700) == 0)
  {
    goto LABEL_18;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_65:
    *(a1 + 96) = *(a2 + 96);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *(a1 + 88) = *(a2 + 88);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_65;
  }

LABEL_15:
  if ((v5 & 0x400) != 0)
  {
LABEL_16:
    *(a1 + 100) = *(a2 + 100);
  }

LABEL_17:
  *(a1 + 16) |= v5;
LABEL_18:
  v6 = *(a2 + 8);
  if (v6)
  {

    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14180F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    result = sub_16E5370(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_14B76A8(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_144F674(*(a1 + 64));
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

  result = sub_144F5D0(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1418178(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E0B88;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_14181F0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1418220(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E0B88;
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

  v8 = *(a2 + 56);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 56) = v8;
  return a1;
}

void sub_1418300(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1418340(uint64_t a1)
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

void sub_14183E8(uint64_t a1)
{
  sub_1418340(a1);

  operator delete();
}

unsigned __int8 *sub_1418420(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
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

  if ((v3 & 0x3E) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_14184B8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_46;
      }

      v5 |= 2u;
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
        *v45 = v20;
        *(a1 + 56) = v19;
        goto LABEL_56;
      }

      v35 = sub_19587DC(v7, v19);
      *v45 = v35;
      *(a1 + 56) = v36;
      if (!v35)
      {
        goto LABEL_71;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_46;
      }

      v5 |= 4u;
      v27 = v7 + 1;
      v26 = *v7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_40:
        *v45 = v27;
        *(a1 + 64) = v26;
        goto LABEL_56;
      }

      v41 = sub_19587DC(v7, v26);
      *v45 = v41;
      *(a1 + 64) = v42;
      if (!v41)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_46;
      }

      v5 |= 8u;
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
        *v45 = v14;
        *(a1 + 72) = v13;
        goto LABEL_56;
      }

      v39 = sub_19587DC(v7, v13);
      *v45 = v39;
      *(a1 + 72) = v40;
      if (!v39)
      {
        goto LABEL_71;
      }
    }

LABEL_56:
    if (sub_195ADC0(a3, v45, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_46;
      }

      v5 |= 0x10u;
      v30 = v7 + 1;
      v29 = *v7;
      if ((v29 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }

      v31 = *v30;
      v29 = (v31 << 7) + v29 - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v30 = v7 + 2;
LABEL_45:
        *v45 = v30;
        *(a1 + 80) = v29 != 0;
        goto LABEL_56;
      }

      v43 = sub_19587DC(v7, v29);
      *v45 = v43;
      *(a1 + 80) = v44 != 0;
      if (!v43)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_46;
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
        *v45 = v17;
        *(a1 + 81) = v16 != 0;
        goto LABEL_56;
      }

      v37 = sub_19587DC(v7, v16);
      *v45 = v37;
      *(a1 + 81) = v38 != 0;
      if (!v37)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_56;
  }

  if (v8 == 34)
  {
    *(a1 + 40) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v24 = sub_194DB04((a1 + 48), v23);
    v25 = sub_1958890(v24, *v45, a3);
LABEL_55:
    *v45 = v25;
    if (!v25)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
  }

LABEL_46:
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
    if (v8 - 8000 > 0xFA7)
    {
      v33 = *(a1 + 8);
      if (v33)
      {
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v34 = sub_11F1920((a1 + 8));
        v7 = *v45;
      }

      v25 = sub_1952690(v8, v34, v7, a3);
    }

    else
    {
      v25 = sub_19525AC((a1 + 16), v8, v7, &off_2770288, (a1 + 8), a3);
    }

    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  *v45 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v45;
}

char *sub_1418878(uint64_t a1, char *a2, unint64_t *a3)
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

    v12 = *(a1 + 64);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 72);
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

  if (v5)
  {
    v15 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v5 & 0x10) == 0)
    {
LABEL_30:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_30;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v19 = *(a1 + 80);
  *v15 = 40;
  v15[1] = v19;
  v15 += 2;
  if ((v5 & 0x20) != 0)
  {
LABEL_36:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 81);
    *v15 = 48;
    v15[1] = v20;
    v15 += 2;
  }

LABEL_39:
  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 1000, 1501, v15, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v24)
  {
    v26 = v24;
    memcpy(v15, v25, v24);
    v15 += v26;
    return v15;
  }

  return sub_1957130(a3, v25, v24, v15);
}

uint64_t sub_1418B70(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x3F) != 0)
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
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
LABEL_7:
        result += ((v3 >> 4) & 2) + ((v3 >> 3) & 2);
        goto LABEL_8;
      }

LABEL_6:
      result += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_7;
    }

LABEL_14:
    result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v4 = *(a1 + 8);
  if (v4)
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_1418CA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x3F) != 0)
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

        goto LABEL_18;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 40) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 81) = *(a2 + 81);
      goto LABEL_9;
    }

LABEL_20:
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1418DC8(uint64_t a1)
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
  if (a1 != &off_27702E0)
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

void sub_1418E80(uint64_t a1)
{
  sub_1418DC8(a1);

  operator delete();
}

unsigned __int8 *sub_1418EB8(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E4E44(*(result + 3));
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

char *sub_1418F24(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
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
            v31 = sub_19587DC(v7, v13);
            if (!v31)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v14 = v7 + 2;
LABEL_17:
            v31 = v14;
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

          goto LABEL_48;
        }

        goto LABEL_40;
      }

      if (v8 != 10)
      {
        goto LABEL_40;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 24);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_16F5828(v21);
        *(a1 + 24) = v19;
        v7 = v31;
      }

      v22 = sub_21F4D60(a3, v19, v7);
LABEL_47:
      v31 = v22;
      if (!v22)
      {
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_40;
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
      v31 = v16;
      *(a1 + 40) = v17;
      goto LABEL_48;
    }

    v29 = sub_1958770(v7, v17);
    v31 = v29;
    *(a1 + 40) = v30;
    if (!v29)
    {
      goto LABEL_61;
    }

LABEL_48:
    if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 24)
  {
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if (v25 < 0)
    {
      v31 = sub_19587DC(v7, v23);
      if (!v31)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v24 = v7 + 2;
LABEL_37:
      v31 = v24;
    }

    if (v23 > 2)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 36) = v23;
    }

    goto LABEL_48;
  }

LABEL_40:
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
      v7 = v31;
    }

    v22 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_47;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_14191FC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 10;
    v7 = *(v6 + 44);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_16E5070(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 36);
    *v9 = 24;
    v9[1] = v15;
    if (v15 > 0x7F)
    {
      v9[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v9[2] = v15 >> 7;
      v14 = v9 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v9) = v9[2];
        do
        {
          *(v14 - 1) = v9 | 0x80;
          v9 = (v16 >> 7);
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v9 + 2;
    }
  }

  else
  {
    v14 = v9;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v19 = *(a1 + 40);
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
        LOBYTE(v21) = v14[2];
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
      v18 = v14 + 2;
    }
  }

  else
  {
    v18 = v14;
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v18;
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

  if ((*a3 - v18) >= v26)
  {
    v28 = v26;
    memcpy(v18, v27, v26);
    v18 += v28;
    return v18;
  }

  return sub_1957130(a3, v27, v26, v18);
}

uint64_t sub_1419494(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_14;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = *(a1 + 36);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v9;
  if ((v2 & 8) != 0)
  {
LABEL_13:
    result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v7 = *(a1 + 8);
  if (v7)
  {
    v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_14195C0(uint64_t result, uint64_t a2)
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
      *(result + 40) = *(a2 + 40);
      goto LABEL_7;
    }

LABEL_21:
    *(result + 36) = *(a2 + 36);
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

uint64_t sub_14196B8(uint64_t a1)
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

uint64_t sub_14196F8(uint64_t a1)
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
  if (a1 != &off_2770310)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_141AF84(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14197B8(uint64_t a1)
{
  sub_14196F8(a1);

  operator delete();
}

uint64_t sub_14197F0(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_141985C(*(result + 40));
  }

  if ((v2 & 6) != 0)
  {
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

uint64_t sub_141985C(uint64_t result)
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

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1550AF0(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      result = sub_144E5CC(*(v1 + 72));
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

    result = sub_144E5CC(*(v1 + 80));
    if ((v8 & 4) != 0)
    {
LABEL_13:
      result = sub_144E5CC(*(v1 + 88));
    }
  }

LABEL_14:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 88) = 0;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

char *sub_1419944(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v33, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v33 + 1;
    v7 = *v33;
    if (*v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v33 + 2;
      }
    }

    v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 24)
        {
          v27 = v6 + 1;
          v26 = *v6;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_46;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v33 = sub_19587DC(v6, v26);
            if (!v33)
            {
              return 0;
            }
          }

          else
          {
            v27 = v6 + 2;
LABEL_46:
            v33 = v27;
          }

          if (v26 > 2)
          {
            sub_1313740();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 48) = v26;
          }

          continue;
        }
      }

      else if (v10 == 4 && v7 == 32)
      {
        v18 = v6 + 1;
        v17 = *v6;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v33 = sub_19587DC(v6, v17);
          if (!v33)
          {
            return 0;
          }
        }

        else
        {
          v18 = v6 + 2;
LABEL_25:
          v33 = v18;
        }

        if (v17 > 4)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 52) = v17;
        }

        continue;
      }

LABEL_55:
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
          return v33;
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
        v6 = v33;
      }

      v16 = sub_1952690(v7, v31, v6, a3);
      goto LABEL_62;
    }

    if (v10 == 1)
    {
      if (v7 == 8)
      {
        v20 = v6 - 1;
        while (1)
        {
          v33 = v20 + 1;
          v21 = v20[1];
          if (v20[1] < 0)
          {
            v22 = v21 + (v20[2] << 7);
            v21 = v22 - 128;
            if (v20[2] < 0)
            {
              v20 = sub_1958770((v20 + 1), v22 - 128);
              v21 = v23;
            }

            else
            {
              v20 += 3;
            }
          }

          else
          {
            v20 += 2;
          }

          v33 = v20;
          v24 = *(a1 + 24);
          if (v24 == *(a1 + 28))
          {
            v25 = v24 + 1;
            sub_1958E5C((a1 + 24), v24 + 1);
            *(*(a1 + 32) + 4 * v24) = v21;
            v20 = v33;
          }

          else
          {
            *(*(a1 + 32) + 4 * v24) = v21;
            v25 = v24 + 1;
          }

          *(a1 + 24) = v25;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 8)
          {
            goto LABEL_63;
          }
        }
      }

      if (v7 != 10)
      {
        goto LABEL_55;
      }

      v16 = sub_1958918((a1 + 24), v6, a3);
    }

    else
    {
      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_55;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        sub_141C1BC(v14);
        v12 = v15;
        *(a1 + 40) = v15;
        v6 = v33;
      }

      v16 = sub_2209528(a3, v12, v6);
    }

LABEL_62:
    v33 = v16;
    if (!v16)
    {
      return 0;
    }

LABEL_63:
    ;
  }

  return v33;
}

char *sub_1419C7C(uint64_t a1, char *a2, unint64_t *a3)
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

      v7 = *(*(a1 + 32) + 4 * i);
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

    v13 = *(a1 + 40);
    *v8 = 18;
    v14 = *(v13 + 20);
    v8[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v8 + 1);
    }

    else
    {
      v15 = v8 + 2;
    }

    v8 = sub_141B458(v13, v15, a3);
  }

  if ((v12 & 2) != 0)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v17 = *(a1 + 48);
    *v8 = 24;
    v8[1] = v17;
    if (v17 > 0x7F)
    {
      v8[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v8[2] = v17 >> 7;
      v16 = v8 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v8) = v8[2];
        do
        {
          *(v16 - 1) = v8 | 0x80;
          v8 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v8 + 2;
    }
  }

  else
  {
    v16 = v8;
  }

  if ((v12 & 4) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 52);
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

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v20;
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

  if ((*a3 - v20) >= v27)
  {
    v29 = v27;
    memcpy(v20, v28, v27);
    v20 += v29;
    return v20;
  }

  return sub_1957130(a3, v28, v27, v20);
}

uint64_t sub_1419F44(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 7) == 0)
  {
    goto LABEL_15;
  }

  if (v3)
  {
    v4 = sub_141B7CC(*(a1 + 40));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v5 = *(a1 + 48);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v6;
  if ((v3 & 4) != 0)
  {
LABEL_11:
    v7 = *(a1 + 52);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8;
  }

LABEL_15:
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

void sub_141A058(char *result, uint64_t a2)
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

  v8 = *(a2 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      *(result + 4) |= 1u;
      v10 = *(result + 5);
      if (!v10)
      {
        v11 = *(result + 1);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_141C1BC(v12);
        *(result + 5) = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_2770398;
      }

      sub_141A184(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
LABEL_8:
          *(result + 4) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        *(result + 13) = *(a2 + 52);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(result + 12) = *(a2 + 48);
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

    sub_1957EF4(result + 1, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_141A184(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_144A454((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(result + 48, *(a2 + 56));
    sub_144A4E0((result + 48), v11, (v10 + 8), v9, **(result + 64) - *(result + 56));
    v12 = *(result + 56) + v9;
    *(result + 56) = v12;
    v13 = *(result + 64);
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
      *(result + 16) |= 1u;
      v16 = *(result + 72);
      if (!v16)
      {
        v17 = *(result + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        sub_14BAE64(v18);
        *(result + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v19 = *(a2 + 72);
      }

      else
      {
        v19 = &off_2771738;
      }

      sub_144EF20(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_34;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(result + 16) |= 2u;
    v20 = *(result + 80);
    if (!v20)
    {
      v21 = *(result + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_14BAE64(v22);
      *(result + 80) = v20;
    }

    if (*(a2 + 80))
    {
      v23 = *(a2 + 80);
    }

    else
    {
      v23 = &off_2771738;
    }

    sub_144EF20(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
LABEL_13:
        *(result + 16) |= v14;
        goto LABEL_14;
      }

LABEL_12:
      *(result + 96) = *(a2 + 96);
      goto LABEL_13;
    }

LABEL_34:
    *(result + 16) |= 4u;
    v24 = *(result + 88);
    if (!v24)
    {
      v25 = *(result + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_14BAE64(v26);
      *(result + 88) = v24;
    }

    if (*(a2 + 88))
    {
      v27 = *(a2 + 88);
    }

    else
    {
      v27 = &off_2771738;
    }

    sub_144EF20(v24, v27);
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

    sub_1957EF4((result + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}