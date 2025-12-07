uint64_t sub_14F1104(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v46 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v46, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v46 + 1);
    v8 = **v46;
    if (**v46 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v46, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v46 + 2);
      }
    }

    *v46 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v27 = *(a1 + 8);
            v17 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v17 = *v17;
            }

            v18 = (a1 + 48);
            goto LABEL_66;
          }

          goto LABEL_80;
        }

        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x20u;
        v12 = *(a1 + 88);
        if (v12)
        {
          goto LABEL_36;
        }

        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        sub_16F5E18(v21);
        v12 = v22;
        *(a1 + 88) = v22;
      }

      else
      {
        if (v11 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v29 = *(a1 + 8);
            v17 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v17 = *v17;
            }

            v18 = (a1 + 56);
            goto LABEL_66;
          }

          goto LABEL_80;
        }

        if (v11 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 4u;
            v33 = *(a1 + 8);
            v17 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
            if (v33)
            {
              v17 = *v17;
            }

            v18 = (a1 + 64);
            goto LABEL_66;
          }

          goto LABEL_80;
        }

        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x40u;
        v12 = *(a1 + 96);
        if (v12)
        {
          goto LABEL_36;
        }

        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        sub_16F5E18(v14);
        v12 = v15;
        *(a1 + 96) = v15;
      }

      v7 = *v46;
LABEL_36:
      v23 = sub_21F4F10(a3, v12, v7);
      goto LABEL_67;
    }

    if (v8 >> 3 <= 7)
    {
      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 8u;
        v28 = *(a1 + 8);
        v17 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v17 = *v17;
        }

        v18 = (a1 + 72);
LABEL_66:
        v34 = sub_194DB04(v18, v17);
        v23 = sub_1958890(v34, *v46, a3);
      }

      else
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x80u;
        v24 = *(a1 + 104);
        if (!v24)
        {
          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          v24 = sub_16F5DB8(v26);
          *(a1 + 104) = v24;
          v7 = *v46;
        }

        v23 = sub_21F8D18(a3, v24, v7);
      }

LABEL_67:
      *v46 = v23;
      if (!v23)
      {
        goto LABEL_92;
      }

      goto LABEL_68;
    }

    if (v11 != 8)
    {
      break;
    }

    if (v8 != 64)
    {
      goto LABEL_80;
    }

    v5 |= 0x100u;
    v31 = v7 + 1;
    v30 = *v7;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_61;
    }

    v32 = *v31;
    v30 = (v32 << 7) + v30 - 128;
    if ((v32 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_61:
      *v46 = v31;
      *(a1 + 112) = v30 != 0;
      goto LABEL_68;
    }

    v44 = sub_19587DC(v7, v30);
    *v46 = v44;
    *(a1 + 112) = v45 != 0;
    if (!v44)
    {
      goto LABEL_92;
    }

LABEL_68:
    if (sub_195ADC0(a3, v46, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 20)
  {
    if (v8 == 162)
    {
      v35 = v7 - 2;
      while (1)
      {
        v36 = v35 + 2;
        *v46 = v35 + 2;
        v37 = *(a1 + 40);
        if (v37 && (v38 = *(a1 + 32), v38 < *v37))
        {
          *(a1 + 32) = v38 + 1;
          v39 = *&v37[2 * v38 + 2];
        }

        else
        {
          v40 = sub_13840C4(*(a1 + 24));
          v39 = sub_19593CC(a1 + 24, v40);
          v36 = *v46;
        }

        v35 = sub_21F8898(a3, v39, v36);
        *v46 = v35;
        if (!v35)
        {
          goto LABEL_92;
        }

        if (*a3 <= v35 || *v35 != 418)
        {
          goto LABEL_68;
        }
      }
    }
  }

  else if (v11 == 30 && v8 == 242)
  {
    *(a1 + 16) |= 0x10u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = (a1 + 80);
    goto LABEL_66;
  }

LABEL_80:
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
      v7 = *v46;
    }

    v23 = sub_1952690(v8, v43, v7, a3);
    goto LABEL_67;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_92:
  *v46 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v46;
}

char *sub_14F1578(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 88);
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

  v4 = sub_16ED4B0(v7, v9, a3);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 96);
  *v4 = 42;
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

  v4 = sub_16ED4B0(v10, v12, a3);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4 = sub_128AEEC(a3, 6, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 104);
  *v4 = 58;
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

  v4 = sub_16EBD38(v13, v15, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_32:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 112);
    *v4 = 64;
    v4[1] = v16;
    v4 += 2;
  }

LABEL_35:
  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 418;
      v20 = *(v19 + 20);
      v4[2] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v4 + 2);
      }

      else
      {
        v21 = v4 + 3;
      }

      v4 = sub_1383BD4(v19, v21, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    v4 = sub_128AEEC(a3, 30, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v25)
  {
    v27 = v25;
    memcpy(v4, v26, v25);
    v4 += v27;
    return v4;
  }

  return sub_1957130(a3, v26, v25, v4);
}

unint64_t sub_14F18E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 2 * v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = sub_1383D30(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  if (v9)
  {
    v13 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_10:
      if ((v9 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_10;
  }

  v16 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 4) == 0)
  {
LABEL_11:
    if ((v9 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_25:
  v19 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 8) == 0)
  {
LABEL_12:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_28:
  v22 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x10) == 0)
  {
LABEL_13:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_34:
    v28 = sub_16ED6F0(*(a1 + 88));
    v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x40) == 0)
    {
LABEL_15:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_31:
  v25 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_14:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_35:
  v29 = sub_16ED6F0(*(a1 + 96));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x80) != 0)
  {
LABEL_16:
    v10 = sub_16EC25C(*(a1 + 104));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  result = v3 + ((v9 >> 7) & 2);
  v12 = *(a1 + 8);
  if (v12)
  {
    v30 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v31 < 0)
    {
      v31 = *(v30 + 16);
    }

    result += v31;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_14F1B9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_131332C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_29;
  }

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
    if ((v9 & 2) == 0)
    {
LABEL_7:
      if ((v9 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 56);
  *(a1 + 16) |= 2u;
  v14 = *(a1 + 8);
  v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14)
  {
    v15 = *v15;
  }

  sub_194EA1C((a1 + 56), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v9 & 4) == 0)
  {
LABEL_8:
    if ((v9 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_17:
  v16 = *(a2 + 64);
  *(a1 + 16) |= 4u;
  v17 = *(a1 + 8);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  sub_194EA1C((a1 + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v9 & 8) == 0)
  {
LABEL_9:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_20:
  v19 = *(a2 + 72);
  *(a1 + 16) |= 8u;
  v20 = *(a1 + 8);
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    v21 = *v21;
  }

  sub_194EA1C((a1 + 72), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v9 & 0x10) != 0)
  {
LABEL_23:
    v22 = *(a2 + 80);
    *(a1 + 16) |= 0x10u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 80), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
  }

LABEL_26:
  if ((v9 & 0x20) == 0)
  {
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_43;
  }

  *(a1 + 16) |= 0x20u;
  v27 = *(a1 + 88);
  if (!v27)
  {
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_16F5E18(v29);
    *(a1 + 88) = v27;
  }

  if (*(a2 + 88))
  {
    v30 = *(a2 + 88);
  }

  else
  {
    v30 = &off_277E918;
  }

  sub_16ED814(v27, v30);
  if ((v9 & 0x40) != 0)
  {
LABEL_43:
    *(a1 + 16) |= 0x40u;
    v31 = *(a1 + 96);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_16F5E18(v33);
      *(a1 + 96) = v31;
    }

    if (*(a2 + 96))
    {
      v34 = *(a2 + 96);
    }

    else
    {
      v34 = &off_277E918;
    }

    sub_16ED814(v31, v34);
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_51;
    }

LABEL_29:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_28:
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_51:
  *(a1 + 16) |= 0x80u;
  v35 = *(a1 + 104);
  if (!v35)
  {
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_16F5DB8(v37);
    *(a1 + 104) = v35;
  }

  if (*(a2 + 104))
  {
    v38 = *(a2 + 104);
  }

  else
  {
    v38 = &off_277E820;
  }

  sub_16EC8A0(v35, v38);
  if ((v9 & 0x100) != 0)
  {
LABEL_30:
    v25 = *(a2 + 112);
    *(a1 + 16) |= 0x100u;
    *(a1 + 112) = v25;
  }

LABEL_31:
  v26 = *(a2 + 8);
  if (v26)
  {

    sub_1957EF4((a1 + 8), (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_14F1E80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x20) != 0)
  {
    result = sub_16ED98C(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_16ED98C(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) == 0)
  {
    return 1;
  }

  result = sub_16ECE70(*(a1 + 104));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14F1EF0(uint64_t a1)
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
  if (a1 != &off_2774F20)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16EF178(v6);
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

void sub_14F1FA8(uint64_t a1)
{
  sub_14F1EF0(a1);

  operator delete();
}

unsigned __int8 *sub_14F1FE0(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_16EF1B4(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_14F2040(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_23:
      v25 = v17;
      *(a1 + 32) = v16;
      goto LABEL_30;
    }

    v23 = sub_19587DC(v7, v16);
    v25 = v23;
    *(a1 + 32) = v24;
    if (!v23)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
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

      sub_16F60C0(v21);
      v19 = v22;
      *(a1 + 24) = v22;
      v7 = v25;
    }

    v15 = sub_21F9E88(a3, v19, v7);
LABEL_29:
    v25 = v15;
    if (!v15)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
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

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_37:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_14F2218(uint64_t a1, char *__dst, unint64_t *a3)
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

    __dst = sub_16EF7E0(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
    *__dst = 24;
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

uint64_t sub_14F23A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16EFD54(*(a1 + 24));
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
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

void sub_14F245C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(result + 16) |= 1u;
      v5 = *(result + 24);
      if (!v5)
      {
        v6 = *(result + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        sub_16F60C0(v7);
        *(result + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277E9D0;
      }

      sub_16EFF94(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(result + 32) = *(a2 + 32);
    }

    *(result + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14F252C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16F0144(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_14F256C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_26E9BC0;
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
  }

  a1[5] = *(a2 + 40);
  return a1;
}

void sub_14F2650(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14F2684(uint64_t a1)
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

void sub_14F273C(uint64_t a1)
{
  sub_14F2684(a1);

  operator delete();
}

uint64_t sub_14F2774(uint64_t a1)
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

uint64_t sub_14F27FC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 > 3)
    {
      if (v10 != 4)
      {
        if (v10 == 5 && v7 == 40)
        {
          v17 = v6 + 1;
          v16 = *v6;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            *v30 = sub_19587DC(v6, v16);
            if (!*v30)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v17 = v6 + 2;
LABEL_26:
            *v30 = v17;
          }

          if (v16 > 2)
          {
            sub_12E85B8();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 44) = v16;
          }

          continue;
        }

        goto LABEL_38;
      }

      if (v7 != 34)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 2u;
      v22 = *(a1 + 8);
      v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v20 = *v20;
      }

      v21 = (a1 + 32);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 3 && v7 == 24)
        {
          v12 = v6 + 1;
          v13 = *v6;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

          v14 = *v12;
          v15 = (v14 << 7) + v13;
          LODWORD(v13) = v15 - 128;
          if (v14 < 0)
          {
            *v30 = sub_19587DC(v6, (v15 - 128));
            if (!*v30)
            {
              goto LABEL_57;
            }

            LODWORD(v13) = v28;
          }

          else
          {
            v12 = v6 + 2;
LABEL_17:
            *v30 = v12;
          }

          if (sub_1792D7C(v13))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v13;
          }

          else
          {
            sub_1313740();
          }

          continue;
        }

LABEL_38:
        if (v7)
        {
          v25 = (v7 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v30;
          }

LABEL_57:
          *v30 = 0;
          return *v30;
        }

        v26 = *(a1 + 8);
        if (v26)
        {
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v27 = sub_11F1920((a1 + 8));
          v6 = *v30;
        }

        v24 = sub_1952690(v7, v27, v6, a3);
        goto LABEL_45;
      }

      if (v7 != 18)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = (a1 + 24);
    }

    v23 = sub_194DB04(v21, v20);
    v24 = sub_1958890(v23, *v30, a3);
LABEL_45:
    *v30 = v24;
    if (!v24)
    {
      goto LABEL_57;
    }
  }

  return *v30;
}

char *sub_14F2A8C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 4) != 0)
  {
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

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 44);
    *v7 = 40;
    v7[1] = v12;
    if (v12 > 0x7F)
    {
      v7[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v7[2] = v12 >> 7;
      v11 = v7 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v14) = v7[2];
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
      v11 = v7 + 2;
    }
  }

  else
  {
    v11 = v7;
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

uint64_t sub_14F2C80(uint64_t a1)
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

uint64_t sub_14F2DDC(uint64_t a1)
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

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_2774F78)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_14EAD6C(v6);
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

void sub_14F2EC4(uint64_t a1)
{
  sub_14F2DDC(a1);

  operator delete();
}

uint64_t sub_14F2EFC(uint64_t result)
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

    goto LABEL_16;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_14EAE84(*(result + 40));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
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

uint64_t sub_14F2FD8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_43;
          }

          *(a1 + 16) |= 4u;
          v22 = *(a1 + 40);
          if (!v22)
          {
            v23 = *(a1 + 8);
            v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
            if (v23)
            {
              v24 = *v24;
            }

            v22 = sub_15281FC(v24);
            *(a1 + 40) = v22;
            v7 = *v33;
          }

          v18 = sub_21FBEC0(a3, v22, v7);
LABEL_50:
          *v33 = v18;
          if (!v18)
          {
            goto LABEL_61;
          }

          goto LABEL_51;
        }

        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_43;
        }

        *(a1 + 16) |= 2u;
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v14 = (a1 + 32);
LABEL_24:
        v17 = sub_194DB04(v14, v13);
        v18 = sub_1958890(v17, *v33, a3);
        goto LABEL_50;
      }

      if (v8 != 24)
      {
        goto LABEL_43;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v33 = sub_19587DC(v7, v19);
          if (!*v33)
          {
            goto LABEL_61;
          }

          goto LABEL_30;
        }

        v20 = v7 + 2;
      }

      *v33 = v20;
LABEL_30:
      if (v19 > 4)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 52) = v19;
      }

      goto LABEL_51;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_43;
    }

    v5 |= 8u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_42:
      *v33 = v26;
      *(a1 + 48) = v25 != 0;
      goto LABEL_51;
    }

    v31 = sub_19587DC(v7, v25);
    *v33 = v31;
    *(a1 + 48) = v32 != 0;
    if (!v31)
    {
      goto LABEL_61;
    }

LABEL_51:
    if (sub_195ADC0(a3, v33, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v13 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v13 = *v13;
    }

    v14 = (a1 + 24);
    goto LABEL_24;
  }

LABEL_43:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = *v33;
    }

    v18 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_14F32CC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 8) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 48);
  *v4 = 8;
  v4[1] = v8;
  v4 += 2;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
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

  v9 = *(a1 + 52);
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
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 40);
    *v7 = 34;
    v14 = *(v13 + 20);
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v7 + 1);
    }

    else
    {
      v15 = v7 + 2;
    }

    v7 = sub_14EB170(v13, v15, a3);
  }

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 5, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v19)
  {
    v21 = v19;
    memcpy(v7, v20, v19);
    v7 += v21;
    return v7;
  }

  return sub_1957130(a3, v20, v19, v7);
}

unint64_t sub_14F34E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_19;
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
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v11 = sub_14EB2A8(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 2) & 2);
  if ((v2 & 0x10) != 0)
  {
    v12 = *(a1 + 52);
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 11;
    }

    result += v14;
  }

LABEL_19:
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

void sub_14F364C(uint64_t a1, uint64_t a2)
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

        goto LABEL_19;
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

      goto LABEL_27;
    }

LABEL_19:
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

      v12 = sub_15281FC(v14);
      *(a1 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_2774C70;
    }

    sub_135B4C0(v12, v15);
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
      *(a1 + 52) = *(a2 + 52);
      goto LABEL_8;
    }

LABEL_27:
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

uint64_t sub_14F37E0(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

std::string *sub_14F380C(std::string *result)
{
  v1 = result;
  v2 = result->__r_.__value_.__r.__words[2];
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = result[1].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_194EC40((result + 32), &off_2776308);
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

uint64_t sub_14F38BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_14F38D8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14F7768(v4);
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
      result = sub_14F7768(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      result = sub_14F7768(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v11 = *(v1 + 96);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 104) + 8);
    do
    {
      v13 = *v12++;
      result = sub_14F7768(v13);
      --v11;
    }

    while (v11);
    *(v1 + 96) = 0;
  }

  v15 = *(v1 + 8);
  v14 = (v1 + 8);
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

uint64_t sub_14F39CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result = sub_1515AC0(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      result = sub_1515FC0(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_1515AC0(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  result = sub_1515AC0(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1515AC0(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 68) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_14F3A88(uint64_t a1)
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
  *(v4 + 50) = 0;
  *(v4 + 48) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_14F3B14(uint64_t a1)
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
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_14F3B98(uint64_t a1)
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
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_14F3C1C(uint64_t result)
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

void sub_14F3D08(uint64_t a1, uint64_t a2)
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
      v8 = *(a2 + 32);
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_194EA44((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
    }
  }

  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_14F3DDC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = &result[1];
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1958E5C(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    *v5 += *(a2 + 24);
    result = memcpy((size + 4 * data_low), *(a2 + 32), 4 * *(a2 + 24));
  }

  if (*(a2 + 16))
  {
    v8 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v3[1].__r_.__value_.__r.__words[2] = v8;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void sub_14F3E9C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_156B440((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
    v7 = *(result + 24) + v4;
    *(result + 24) = v7;
    v8 = *(result + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(result + 40, *(a2 + 48));
    sub_156B440((result + 40), v11, (v10 + 8), v9, **(result + 56) - *(result + 48));
    v12 = *(result + 48) + v9;
    *(result + 48) = v12;
    v13 = *(result + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8(result + 64, *(a2 + 72));
    sub_156B440((result + 64), v16, (v15 + 8), v14, **(result + 80) - *(result + 72));
    v17 = *(result + 72) + v14;
    *(result + 72) = v17;
    v18 = *(result + 80);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a2 + 104);
    v21 = sub_19592E8(result + 88, *(a2 + 96));
    sub_156B440((result + 88), v21, (v20 + 8), v19, **(result + 104) - *(result + 96));
    v22 = *(result + 96) + v19;
    *(result + 96) = v22;
    v23 = *(result + 104);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((result + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_14F406C(std::string *result, uint64_t a2)
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
    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
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
    result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
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

std::string *sub_14F40D0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        v8 = *(v3 + 8);
        v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (v8)
        {
          v9 = *v9;
        }

        data = sub_152A7C8(v9);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = &off_2775C28;
      }

      result = sub_1336380(data, v10);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(v3 + 16) |= 2u;
    v11 = *(v3 + 32);
    if (!v11)
    {
      v12 = *(v3 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_152A7C8(v13);
      *(v3 + 32) = v11;
    }

    if (*(a2 + 32))
    {
      v14 = *(a2 + 32);
    }

    else
    {
      v14 = &off_2775C28;
    }

    result = sub_1336380(v11, v14);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(v3 + 16) |= 4u;
    v15 = *(v3 + 40);
    if (!v15)
    {
      v16 = *(v3 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_152A844(v17);
      *(v3 + 40) = v15;
    }

    if (*(a2 + 40))
    {
      v18 = *(a2 + 40);
    }

    else
    {
      v18 = &off_2775C50;
    }

    result = sub_1516440(v15, v18);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(v3 + 16) |= 8u;
    v19 = *(v3 + 48);
    if (!v19)
    {
      v20 = *(v3 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_152A7C8(v21);
      *(v3 + 48) = v19;
    }

    if (*(a2 + 48))
    {
      v22 = *(a2 + 48);
    }

    else
    {
      v22 = &off_2775C28;
    }

    result = sub_1336380(v19, v22);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_58;
    }

LABEL_50:
    *(v3 + 16) |= 0x10u;
    v23 = *(v3 + 56);
    if (!v23)
    {
      v24 = *(v3 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_152A7C8(v25);
      *(v3 + 56) = v23;
    }

    if (*(a2 + 56))
    {
      v26 = *(a2 + 56);
    }

    else
    {
      v26 = &off_2775C28;
    }

    result = sub_1336380(v23, v26);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(v3 + 64) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(v3 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_59:
    *(v3 + 68) = *(a2 + 68);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 76);
    *(v3 + 16) |= 0x100u;
    *(v3 + 76) = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    return sub_1957EF4((v3 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void sub_14F4308(uint64_t a1, uint64_t a2)
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
  if ((v9 & 0xF) != 0)
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

        goto LABEL_19;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
LABEL_10:
        *(a1 + 16) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 58) = *(a2 + 58);
      goto LABEL_10;
    }

LABEL_19:
    *(a1 + 57) = *(a2 + 57);
    if ((v9 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14F4444(uint64_t a1, uint64_t a2)
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

uint64_t sub_14F45A4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_17;
    }
  }

  else if (v4)
  {
    goto LABEL_17;
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

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_17:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F46AC(uint64_t a1)
{
  sub_14F45A4(a1);

  operator delete();
}

uint64_t sub_14F46E4(uint64_t a1)
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
  *(result + 64) = 0;
  *(result + 8) = 0;
  if (v9)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_14F483C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 8);
        v13 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v13 = *v13;
        }

        v14 = (a1 + 24);
      }

      else if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 2u;
        v23 = *(a1 + 8);
        v13 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v13 = *v13;
        }

        v14 = (a1 + 32);
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v13 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v13 = *v13;
        }

        v14 = (a1 + 40);
      }

LABEL_48:
      v24 = sub_194DB04(v14, v13);
      v25 = sub_1958890(v24, *v31, a3);
LABEL_49:
      *v31 = v25;
      if (!v25)
      {
        goto LABEL_64;
      }

      goto LABEL_50;
    }

    if (v8 >> 3 <= 5)
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 8u;
          v21 = *(a1 + 8);
          v13 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v13 = *v13;
          }

          v14 = (a1 + 48);
          goto LABEL_48;
        }
      }

      else if (v11 == 5 && v8 == 42)
      {
        *(a1 + 16) |= 0x10u;
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v14 = (a1 + 56);
        goto LABEL_48;
      }

      goto LABEL_52;
    }

    if (v11 == 6)
    {
      break;
    }

    if (v11 != 7 || v8 != 56)
    {
      goto LABEL_52;
    }

    v5 |= 0x40u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_31:
      *v31 = v18;
      *(a1 + 72) = v17 != 0;
      goto LABEL_50;
    }

    v29 = sub_19587DC(v7, v17);
    *v31 = v29;
    *(a1 + 72) = v30 != 0;
    if (!v29)
    {
      goto LABEL_64;
    }

LABEL_50:
    if (sub_195ADC0(a3, v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 50)
  {
    *(a1 + 16) |= 0x20u;
    v22 = *(a1 + 8);
    v13 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v13 = *v13;
    }

    v14 = (a1 + 64);
    goto LABEL_48;
  }

LABEL_52:
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
      v7 = *v31;
    }

    v25 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_14F4B54(uint64_t a1, char *__dst, unint64_t *a3)
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
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = sub_128AEEC(a3, 5, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = sub_128AEEC(a3, 6, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 72);
  *v4 = 56;
  v4[1] = v7;
  v4 += 2;
LABEL_18:
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

uint64_t sub_14F4D10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_20;
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

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

LABEL_28:
      v21 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(v21 + 23);
      v23 = *(v21 + 8);
      if ((v22 & 0x80u) == 0)
      {
        v23 = v22;
      }

      v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v18 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  if ((v1 & 0x20) != 0)
  {
LABEL_16:
    v10 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  v3 = v2 + ((v1 >> 5) & 2);
LABEL_20:
  v13 = *(a1 + 8);
  if (v13)
  {
    v24 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v3 += v25;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_14F4F10(uint64_t a1, uint64_t a2)
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

      goto LABEL_27;
    }

LABEL_24:
    v15 = *(a2 + 48);
    *(a1 + 16) |= 8u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 48), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_27:
    v18 = *(a2 + 56);
    *(a1 + 16) |= 0x10u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 56), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
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
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_30:
    v21 = *(a2 + 64);
    *(a1 + 16) |= 0x20u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 64), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
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

uint64_t sub_14F5100(uint64_t a1)
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

  if (a1 != &off_2775000)
  {
    v6 = *(a1 + 112);
    if (v6)
    {
      sub_14F45A4(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_15694FC((a1 + 72));
  sub_13B31E8((a1 + 48));
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F520C(uint64_t a1)
{
  sub_14F5100(a1);

  operator delete();
}

uint64_t sub_14F5244(uint64_t result)
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
      result = sub_17C5AA4(v10);
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
    result = sub_14F46E4(*(v1 + 112));
    goto LABEL_18;
  }

  **v15 = 0;
  *(v15 + 8) = 0;
  if ((v11 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v11 & 0x78) != 0)
  {
    *(v1 + 125) = 0;
    *(v1 + 120) = 0;
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

uint64_t sub_14F53A8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v61 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v61, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v61 + 1);
    v8 = **v61;
    if (**v61 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v61, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v61 + 2);
      }
    }

    *v61 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v24 = (a1 + 96);
        goto LABEL_84;
      }

      if (v8 != 8)
      {
        goto LABEL_90;
      }

      v32 = v7 + 1;
      v31 = *v7;
      if (v31 < 0)
      {
        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if ((v33 & 0x80000000) == 0)
        {
          v32 = v7 + 2;
          goto LABEL_56;
        }

        *v61 = sub_19587DC(v7, v31);
        if (!*v61)
        {
          goto LABEL_112;
        }
      }

      else
      {
LABEL_56:
        *v61 = v32;
      }

      if (v31 > 4)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 120) = v31;
      }

      goto LABEL_98;
    }

    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_90;
      }

      *(a1 + 16) |= 4u;
      v37 = *(a1 + 112);
      if (!v37)
      {
        v38 = *(a1 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v39 = *v39;
        }

        v37 = sub_1528A2C(v39);
        *(a1 + 112) = v37;
        v7 = *v61;
      }

      v40 = sub_2217E78(a3, v37, v7);
LABEL_97:
      *v61 = v40;
      if (!v40)
      {
        goto LABEL_112;
      }

      goto LABEL_98;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_90;
      }

      *(a1 + 16) |= 2u;
      v47 = *(a1 + 8);
      v23 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v23 = *v23;
      }

      v24 = (a1 + 104);
LABEL_84:
      v48 = sub_194DB04(v24, v23);
      v40 = sub_1958890(v48, *v61, a3);
      goto LABEL_97;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_90;
    }

    v5 |= 0x10u;
    v12 = v7 + 1;
    v13 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v14 = *v12;
    v13 = v13 + (v14 << 7) - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v12 = v7 + 2;
LABEL_16:
      *v61 = v12;
      *(a1 + 124) = v13;
      goto LABEL_98;
    }

    v57 = sub_1958770(v7, v13);
    *v61 = v57;
    *(a1 + 124) = v58;
    if (!v57)
    {
      goto LABEL_112;
    }

LABEL_98:
    if (sub_195ADC0(a3, v61, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 7)
  {
    if (v11 == 8)
    {
      if (v8 == 66)
      {
        v41 = v7 - 1;
        while (1)
        {
          v42 = v41 + 1;
          *v61 = v41 + 1;
          v43 = *(a1 + 64);
          if (v43 && (v44 = *(a1 + 56), v44 < *v43))
          {
            *(a1 + 56) = v44 + 1;
            v45 = *&v43[2 * v44 + 2];
          }

          else
          {
            v46 = sub_16F5A54(*(a1 + 48));
            v45 = sub_19593CC(a1 + 48, v46);
            v42 = *v61;
          }

          v41 = sub_22002C0(a3, v45, v42);
          *v61 = v41;
          if (!v41)
          {
            goto LABEL_112;
          }

          if (*a3 <= v41 || *v41 != 66)
          {
            goto LABEL_98;
          }
        }
      }

      goto LABEL_90;
    }

    if (v11 != 10)
    {
      if (v11 == 11 && v8 == 90)
      {
        v15 = v7 - 1;
        while (1)
        {
          v16 = v15 + 1;
          *v61 = v15 + 1;
          v17 = *(a1 + 88);
          if (v17 && (v18 = *(a1 + 80), v18 < *v17))
          {
            *(a1 + 80) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_185FA60(*(a1 + 72));
            v19 = sub_19593CC(a1 + 72, v20);
            v16 = *v61;
          }

          v15 = sub_2217F08(a3, v19, v16);
          *v61 = v15;
          if (!v15)
          {
            goto LABEL_112;
          }

          if (*a3 <= v15 || *v15 != 90)
          {
            goto LABEL_98;
          }
        }
      }

      goto LABEL_90;
    }

    if (v8 != 80)
    {
      goto LABEL_90;
    }

    v5 |= 0x40u;
    v50 = v7 + 1;
    v49 = *v7;
    if ((v49 & 0x8000000000000000) == 0)
    {
      goto LABEL_89;
    }

    v51 = *v50;
    v49 = (v51 << 7) + v49 - 128;
    if ((v51 & 0x80000000) == 0)
    {
      v50 = v7 + 2;
LABEL_89:
      *v61 = v50;
      *(a1 + 132) = v49 != 0;
      goto LABEL_98;
    }

    v59 = sub_19587DC(v7, v49);
    *v61 = v59;
    *(a1 + 132) = v60 != 0;
    if (!v59)
    {
      goto LABEL_112;
    }

    goto LABEL_98;
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_90;
    }

    v5 |= 0x20u;
    v34 = v7 + 1;
    v35 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    v36 = *v34;
    v35 = v35 + (v36 << 7) - 128;
    if ((v36 & 0x80000000) == 0)
    {
      v34 = v7 + 2;
LABEL_63:
      *v61 = v34;
      *(a1 + 128) = v35;
      goto LABEL_98;
    }

    v55 = sub_1958770(v7, v35);
    *v61 = v55;
    *(a1 + 128) = v56;
    if (!v55)
    {
      goto LABEL_112;
    }

    goto LABEL_98;
  }

  if (v11 == 7 && v8 == 58)
  {
    v25 = v7 - 1;
    while (1)
    {
      v26 = v25 + 1;
      *v61 = v25 + 1;
      v27 = *(a1 + 40);
      if (v27 && (v28 = *(a1 + 32), v28 < *v27))
      {
        *(a1 + 32) = v28 + 1;
        v29 = *&v27[2 * v28 + 2];
      }

      else
      {
        v30 = sub_16F5A54(*(a1 + 24));
        v29 = sub_19593CC(a1 + 24, v30);
        v26 = *v61;
      }

      v25 = sub_22002C0(a3, v29, v26);
      *v61 = v25;
      if (!v25)
      {
        goto LABEL_112;
      }

      if (*a3 <= v25 || *v25 != 58)
      {
        goto LABEL_98;
      }
    }
  }

LABEL_90:
  if (v8)
  {
    v52 = (v8 & 7) == 4;
  }

  else
  {
    v52 = 1;
  }

  if (!v52)
  {
    v53 = *(a1 + 8);
    if (v53)
    {
      v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v54 = sub_11F1920((a1 + 8));
      v7 = *v61;
    }

    v40 = sub_1952690(v8, v54, v7, a3);
    goto LABEL_97;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_112:
  *v61 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v61;
}

char *sub_14F5930(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 120);
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
    v6 = sub_128AEEC(a3, 2, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v6);
    if ((v5 & 4) == 0)
    {
LABEL_12:
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      v6 = sub_128AEEC(a3, 4, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), v6);
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
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

  v12 = *(a1 + 112);
  *v6 = 26;
  v13 = *(v12 + 20);
  v6[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v6 + 1);
  }

  else
  {
    v14 = v6 + 2;
  }

  v6 = sub_14F4B54(v12, v14, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 124);
  *v6 = 40;
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v6[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v6[2] = v15 >> 7;
    v11 = v6 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v17) = v6[2];
      do
      {
        *(v11 - 1) = v17 | 0x80;
        v17 = v16 >> 7;
        *v11++ = v16 >> 7;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_30:
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v20 = *(a1 + 128);
    *v11 = 48;
    v11[1] = v20;
    if (v20 > 0x7F)
    {
      v11[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v11[2] = v20 >> 7;
      v19 = v11 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v11[2];
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
      v19 = v11 + 2;
    }
  }

  else
  {
    v19 = v11;
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v26 = *(*(a1 + 40) + 8 * i + 8);
      *v19 = 58;
      v27 = *(v26 + 20);
      v19[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v19 + 1);
      }

      else
      {
        v28 = v19 + 2;
      }

      v19 = sub_16E74A8(v26, v28, a3);
    }
  }

  v29 = *(a1 + 56);
  if (v29)
  {
    for (j = 0; j != v29; ++j)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v31 = *(*(a1 + 64) + 8 * j + 8);
      *v19 = 66;
      v32 = *(v31 + 20);
      v19[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v19 + 1);
      }

      else
      {
        v33 = v19 + 2;
      }

      v19 = sub_16E74A8(v31, v33, a3);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v34 = *(a1 + 132);
    *v19 = 80;
    v19[1] = v34;
    v19 += 2;
  }

  v35 = *(a1 + 80);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v37 = *(*(a1 + 88) + 8 * k + 8);
      *v19 = 90;
      v38 = *(v37 + 20);
      v19[1] = v38;
      if (v38 > 0x7F)
      {
        v39 = sub_19575D0(v38, v19 + 1);
      }

      else
      {
        v39 = v19 + 2;
      }

      v19 = sub_17C5D88(v37, v39, a3);
    }
  }

  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v19;
  }

  v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
  v43 = *(v42 + 31);
  if (v43 < 0)
  {
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
  }

  else
  {
    v44 = (v42 + 8);
  }

  if ((*a3 - v19) >= v43)
  {
    v45 = v43;
    memcpy(v19, v44, v43);
    v19 += v45;
    return v19;
  }

  return sub_1957130(a3, v44, v43, v19);
}

uint64_t sub_14F5DE8(uint64_t a1)
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
      v21 = sub_17C5F78(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x7F) != 0)
  {
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

        goto LABEL_38;
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
    if ((v22 & 4) == 0)
    {
LABEL_25:
      if ((v22 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

LABEL_38:
    v31 = sub_14F4D10(*(a1 + 112));
    v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 8) == 0)
    {
LABEL_26:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_43;
    }

LABEL_39:
    v32 = *(a1 + 120);
    v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v32 >= 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 11;
    }

    v16 += v34;
    if ((v22 & 0x10) == 0)
    {
LABEL_27:
      if ((v22 & 0x20) == 0)
      {
LABEL_29:
        v16 += (v22 >> 5) & 2;
        goto LABEL_30;
      }

LABEL_28:
      v16 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_29;
    }

LABEL_43:
    v16 += ((9 * (__clz(*(a1 + 124) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_30:
  v23 = *(a1 + 8);
  if (v23)
  {
    v35 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v36 < 0)
    {
      v36 = *(v35 + 16);
    }

    v16 += v36;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_14F609C(uint64_t a1, uint64_t a2)
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
    sub_156B3B4((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x7F) != 0)
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

        goto LABEL_30;
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

      goto LABEL_38;
    }

LABEL_30:
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

      v27 = sub_1528A2C(v29);
      *(a1 + 112) = v27;
    }

    if (*(a2 + 112))
    {
      v30 = *(a2 + 112);
    }

    else
    {
      v30 = &off_2774FB0;
    }

    sub_14F4F10(v27, v30);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

LABEL_38:
    *(a1 + 120) = *(a2 + 120);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(a1 + 124) = *(a2 + 124);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
LABEL_19:
        *(a1 + 16) |= v19;
        goto LABEL_20;
      }

LABEL_18:
      *(a1 + 132) = *(a2 + 132);
      goto LABEL_19;
    }

LABEL_40:
    *(a1 + 128) = *(a2 + 128);
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_14F6340(void *a1)
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

void sub_14F63BC(void *a1)
{
  sub_14F6340(a1);

  operator delete();
}

char *sub_14F63F4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = v31 + 1;
    v10 = *v31;
    if (*v31 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(v31, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = v31 + 2;
      }
    }

    v31 = v9;
    if (v10 >> 3 == 2)
    {
      break;
    }

    if (v10 >> 3 != 1 || v10 != 8)
    {
      goto LABEL_13;
    }

    v27 = v9 + 1;
    v26 = *v9;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v9 + 2;
LABEL_42:
      v31 = v27;
      *(a1 + 40) = v26;
      v6 = 1;
      goto LABEL_43;
    }

    v29 = sub_19587DC(v9, v26);
    v31 = v29;
    *(a1 + 40) = v30;
    v6 = 1;
    if (!v29)
    {
      goto LABEL_52;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v10 == 16)
  {
    v18 = v9 - 1;
    while (1)
    {
      v31 = v18 + 1;
      v19 = v18[1];
      v20 = v18 + 2;
      if (v19 < 0)
      {
        v21 = *v20;
        v22 = (v21 << 7) + v19;
        LODWORD(v19) = v22 - 128;
        if (v21 < 0)
        {
          v31 = sub_19587DC((v18 + 1), (v22 - 128));
          if (!v31)
          {
            goto LABEL_52;
          }

          LODWORD(v19) = v25;
          goto LABEL_28;
        }

        v20 = v18 + 3;
      }

      v31 = v20;
LABEL_28:
      if ((v19 - 3) > 2)
      {
        sub_12E8418();
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

      v18 = v31;
      if (*a3 <= v31 || *v31 != 16)
      {
        goto LABEL_43;
      }
    }
  }

  if (v10 == 18)
  {
    *&v32 = a1 + 24;
    *(&v32 + 1) = sub_14D6CC0;
    v33 = a1 + 8;
    v34 = 2;
    v17 = sub_1216588(a3, v9, &v32, v5);
    goto LABEL_20;
  }

LABEL_13:
  if (v10)
  {
    v15 = (v10 & 7) == 4;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (*v8)
    {
      v16 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v16 = sub_11F1920((a1 + 8));
      v9 = v31;
    }

    v17 = sub_1952690(v10, v16, v9, a3);
LABEL_20:
    v31 = v17;
    if (!v17)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  if (v9)
  {
    a3[10].i32[0] = v10 - 1;
  }

  else
  {
LABEL_52:
    v31 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v31;
}

char *sub_14F66AC(uint64_t a1, char *a2, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 40);
    *a2 = 8;
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      a2[2] = v6 >> 7;
      v5 = a2 + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = a2[2];
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
      v5 = a2 + 2;
    }
  }

  else
  {
    v5 = a2;
  }

  v10 = *(a1 + 24);
  if (v10 < 1)
  {
    v13 = v5;
  }

  else
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 32) + 4 * i);
      *v5 = 16;
      v5[1] = v12;
      if (v12 > 0x7F)
      {
        v5[1] = v12 | 0x80;
        v14 = v12 >> 7;
        v5[2] = v12 >> 7;
        v13 = v5 + 3;
        if (v12 >= 0x4000)
        {
          LOBYTE(v5) = v5[2];
          do
          {
            *(v13 - 1) = v5 | 0x80;
            v5 = (v14 >> 7);
            *v13++ = v14 >> 7;
            v15 = v14 >> 14;
            v14 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v13 = v5 + 2;
      }

      v5 = v13;
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v13;
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

  if ((*a3 - v13) >= v19)
  {
    v21 = v19;
    memcpy(v13, v20, v19);
    v13 += v21;
    return v13;
  }

  return sub_1957130(a3, v20, v19, v13);
}

uint64_t sub_14F6888(uint64_t a1)
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
  if (*(a1 + 16))
  {
    v6 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

    v6 += v10;
  }

  *(a1 + 20) = v6;
  return v6;
}

uint64_t sub_14F6950(uint64_t a1)
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

  if (*(a1 + 32))
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

void sub_14F69FC(uint64_t a1)
{
  sub_14F6950(a1);

  operator delete();
}

uint64_t sub_14F6A34(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v20 = a2;
  if (sub_195ADC0(a3, v20, a3[11].u32[1]))
  {
    return *v20;
  }

  while (1)
  {
    v6 = (*v20 + 1);
    v7 = **v20;
    if (**v20 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v20, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v20 + 2);
      }
    }

    *v20 = v6;
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

        v17 = sub_194EAD4((a1 + 32), &off_2776308, v16);
        goto LABEL_26;
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

      v17 = sub_194DB04((a1 + 24), v19);
LABEL_26:
      v14 = sub_1958890(v17, *v20, a3);
      goto LABEL_27;
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
      v6 = *v20;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v20 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }

    if (sub_195ADC0(a3, v20, a3[11].u32[1]))
    {
      return *v20;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v20;
  }

LABEL_33:
  *v20 = 0;
  return *v20;
}

char *sub_14F6BD8(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_14F6CC0(uint64_t a1)
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
LABEL_7:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

uint64_t sub_14F6D94(uint64_t a1)
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

void sub_14F6E4C(uint64_t a1)
{
  sub_14F6D94(a1);

  operator delete();
}

uint64_t sub_14F6E84(uint64_t a1)
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
    *(a1 + 44) = 1;
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

uint64_t sub_14F6F14(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v34, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v34 + 1);
    v8 = **v34;
    if (**v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v34 + 2);
      }
    }

    *v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v22 = (a1 + 24);
          goto LABEL_36;
        }
      }

      else if (v11 == 2 && v8 == 16)
      {
        v13 = v7 + 1;
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v15 = *v13;
        v16 = (v15 << 7) + v14;
        v14 = (v16 - 128);
        if (v15 < 0)
        {
          *v34 = sub_19587DC(v7, (v16 - 128));
          if (!*v34)
          {
            goto LABEL_58;
          }

          v14 = v33;
        }

        else
        {
          v13 = v7 + 2;
LABEL_17:
          *v34 = v13;
        }

        if ((v14 - 1) < 4 || v14 == 100)
        {
          *(a1 + 16) |= 8u;
          *(a1 + 44) = v14;
        }

        else
        {
          v29 = *(a1 + 8);
          if (v29)
          {
            v30 = ((v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v30 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(2, v14, v30);
        }

        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 10 || v8 != 80)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
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
      *v34 = v18;
      *(a1 + 40) = v17 != 0;
      goto LABEL_45;
    }

    v31 = sub_19587DC(v7, v17);
    *v34 = v31;
    *(a1 + 40) = v32 != 0;
    if (!v31)
    {
      goto LABEL_58;
    }

LABEL_45:
    if (sub_195ADC0(a3, v34, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 2u;
    v23 = *(a1 + 8);
    v21 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v21 = *v21;
    }

    v22 = (a1 + 32);
LABEL_36:
    v24 = sub_194DB04(v22, v21);
    v25 = sub_1958890(v24, *v34, a3);
LABEL_44:
    *v34 = v25;
    if (!v25)
    {
      goto LABEL_58;
    }

    goto LABEL_45;
  }

LABEL_37:
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
      v7 = *v34;
    }

    v25 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  *v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v34;
}

char *sub_14F71E8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 44);
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

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 40);
    *v7 = 80;
    v7[1] = v12;
    v7 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

uint64_t sub_14F738C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    result = 0;
    if ((v2 & 8) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  result = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_7:
    v7 = *(a1 + 44);
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

uint64_t sub_14F7418(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 9) != 0)
  {
    result = sub_14F738C(a1);
  }

  else
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    v7 = *(a1 + 44);
    v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 10;
    }

    result = v5 + v6 + v9 + 2;
  }

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v11 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += (v2 >> 1) & 2;
  }

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

void sub_14F753C(uint64_t a1, uint64_t a2)
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

        goto LABEL_18;
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
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 44) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_18:
    *(a1 + 40) = *(a2 + 40);
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

uint64_t sub_14F7668(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956AFC((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F7730(uint64_t a1)
{
  sub_14F7668(a1);

  operator delete();
}

uint64_t sub_14F7768(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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
    v5 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v3 & 0x3C) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 96) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_14F783C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v10 >> 3 > 4)
      {
        if (v10 >> 3 > 6)
        {
          if (v14 == 7)
          {
            if (v10 == 58)
            {
              v39 = v9 - 1;
              while (1)
              {
                v40 = (v39 + 1);
                *v55 = v39 + 1;
                v41 = *(a1 + 56);
                if (v41 && (v42 = *(a1 + 48), v42 < *v41))
                {
                  *(a1 + 48) = v42 + 1;
                  v43 = *&v41[2 * v42 + 2];
                }

                else
                {
                  v44 = *(a1 + 40);
                  if (!v44)
                  {
                    operator new();
                  }

                  *v46 = v45;
                  v46[1] = sub_195A650;
                  *v45 = 0;
                  v45[1] = 0;
                  v45[2] = 0;
                  v43 = sub_19593CC(a1 + 40, v45);
                  v40 = *v55;
                }

                v39 = sub_1958890(v43, v40, a3);
                *v55 = v39;
                if (!v39)
                {
                  goto LABEL_98;
                }

                if (*a3 <= v39 || *v39 != 58)
                {
                  goto LABEL_93;
                }
              }
            }

LABEL_85:
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

LABEL_98:
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

            v27 = sub_1952690(v10, v54, v9, a3);
            goto LABEL_92;
          }

          if (v14 != 8 || v10 != 64)
          {
            goto LABEL_85;
          }

          v6 |= 0x10u;
          v23 = v9 + 1;
          v22 = *v9;
          if (v22 < 0)
          {
            v24 = *v23;
            v22 = (v24 << 7) + v22 - 128;
            if (v24 < 0)
            {
              v51 = sub_19587DC(v9, v22);
              *v55 = v51;
              *(a1 + 96) = v52;
              if (!v51)
              {
                goto LABEL_98;
              }

              continue;
            }

            v23 = v9 + 2;
          }

          *v55 = v23;
          *(a1 + 96) = v22;
        }

        else
        {
          if (v14 == 5)
          {
            if (v10 != 40)
            {
              if (v10 != 42)
              {
                goto LABEL_85;
              }

              *&v56 = a1 + 24;
              *(&v56 + 1) = sub_14D6CD0;
              v57 = a1 + 8;
              v58 = 5;
              v27 = sub_1216588(a3, v9, &v56, v5);
              goto LABEL_92;
            }

            v28 = (v9 - 1);
LABEL_45:
            *v55 = v28 + 1;
            v29 = *(v28 + 1);
            v30 = (v28 + 2);
            if (v29 < 0)
            {
              v31 = *v30;
              v32 = (v31 << 7) + v29;
              LODWORD(v29) = v32 - 128;
              if ((v31 & 0x80000000) == 0)
              {
                v30 = (v28 + 3);
                goto LABEL_48;
              }

              *v55 = sub_19587DC(v28 + 1, (v32 - 128));
              if (!*v55)
              {
                goto LABEL_98;
              }

              LODWORD(v29) = v35;
            }

            else
            {
LABEL_48:
              *v55 = v30;
            }

            if (v29 > 0xC)
            {
              sub_12E85B8();
            }

            else
            {
              v33 = *(a1 + 24);
              if (v33 == *(a1 + 28))
              {
                v34 = v33 + 1;
                sub_1958E5C((a1 + 24), v33 + 1);
                *(*(a1 + 32) + 4 * v33) = v29;
              }

              else
              {
                *(*(a1 + 32) + 4 * v33) = v29;
                v34 = v33 + 1;
              }

              *(a1 + 24) = v34;
            }

            v28 = *v55;
            if (*a3 <= *v55 || **v55 != 40)
            {
              continue;
            }

            goto LABEL_45;
          }

          if (v14 != 6 || v10 != 48)
          {
            goto LABEL_85;
          }

          v6 |= 8u;
          v20 = v9 + 1;
          v19 = *v9;
          if (v19 < 0)
          {
            v21 = *v20;
            v19 = (v21 << 7) + v19 - 128;
            if (v21 < 0)
            {
              v49 = sub_19587DC(v9, v19);
              *v55 = v49;
              *(a1 + 88) = v50;
              if (!v49)
              {
                goto LABEL_98;
              }

              continue;
            }

            v20 = v9 + 2;
          }

          *v55 = v20;
          *(a1 + 88) = v19;
        }
      }

      else
      {
        if (v10 >> 3 <= 2)
        {
          if (v14 == 1)
          {
            if (v10 != 10)
            {
              goto LABEL_85;
            }

            *(a1 + 16) |= 1u;
            v25 = *(a1 + 8);
            v17 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v25)
            {
              v17 = *v17;
            }

            v18 = (a1 + 64);
          }

          else
          {
            if (v14 != 2 || v10 != 18)
            {
              goto LABEL_85;
            }

            *(a1 + 16) |= 2u;
            v16 = *(a1 + 8);
            v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
            if (v16)
            {
              v17 = *v17;
            }

            v18 = (a1 + 72);
          }

          v26 = sub_194DB04(v18, v17);
          v27 = sub_1958890(v26, *v55, a3);
LABEL_92:
          *v55 = v27;
          if (!v27)
          {
            goto LABEL_98;
          }

          continue;
        }

        if (v14 == 3)
        {
          if (v10 != 24)
          {
            goto LABEL_85;
          }

          v6 |= 4u;
          v37 = v9 + 1;
          v36 = *v9;
          if (v36 < 0)
          {
            v38 = *v37;
            v36 = (v38 << 7) + v36 - 128;
            if (v38 < 0)
            {
              v47 = sub_19587DC(v9, v36);
              *v55 = v47;
              *(a1 + 80) = v48;
              if (!v47)
              {
                goto LABEL_98;
              }

              continue;
            }

            v37 = v9 + 2;
          }

          *v55 = v37;
          *(a1 + 80) = v36;
        }

        else
        {
          if (v14 != 4 || v10 != 37)
          {
            goto LABEL_85;
          }

          v6 |= 0x20u;
          *(a1 + 104) = *v9;
          *v55 = v9 + 4;
        }
      }

LABEL_93:
      ;
    }

    while ((sub_195ADC0(a3, v55, a3[11].u32[1]) & 1) == 0);
  }

  *(a1 + 16) |= v6;
  return *v55;
}

char *sub_14F7D60(uint64_t a1, char *a2, unint64_t *a3)
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
    v4 = sub_128AEEC(a3, 2, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), a2);
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

  v8 = *(a1 + 80);
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
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 104);
    *v7 = 37;
    *(v7 + 1) = v12;
    v7 += 5;
  }

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
      *v7 = 40;
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

    v21 = *(a1 + 88);
    *v16 = 48;
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

  v24 = *(a1 + 48);
  if (v24 >= 1)
  {
    v25 = 8;
    do
    {
      v26 = *(*(a1 + 56) + v25);
      v27 = *(v26 + 23);
      if (v27 < 0 && (v27 = v26[1], v27 > 127) || (*a3 - v20 + 14) < v27)
      {
        v20 = sub_1957480(a3, 7, v26, v20);
      }

      else
      {
        *v20 = 58;
        v20[1] = v27;
        if (*(v26 + 23) < 0)
        {
          v26 = *v26;
        }

        v28 = v20 + 2;
        memcpy(v20 + 2, v26, v27);
        v20 = &v28[v27];
      }

      v25 += 8;
      --v24;
    }

    while (v24);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v30 = *(a1 + 96);
    *v20 = 64;
    v20[1] = v30;
    if (v30 > 0x7F)
    {
      v20[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v20[2] = v30 >> 7;
      v29 = v20 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v32) = v20[2];
        do
        {
          *(v29 - 1) = v32 | 0x80;
          v32 = v31 >> 7;
          *v29++ = v31 >> 7;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v29 = v20 + 2;
    }
  }

  else
  {
    v29 = v20;
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v29;
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

  if ((*a3 - v29) >= v37)
  {
    v39 = v37;
    memcpy(v29, v38, v37);
    v29 += v39;
    return v29;
  }

  return sub_1957130(a3, v38, v37, v29);
}

uint64_t sub_14F8164(uint64_t a1)
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
  v7 = *(a1 + 48);
  v8 = v6 + v7;
  if (v7 >= 1)
  {
    v9 = (*(a1 + 56) + 8);
    do
    {
      v10 = *v9++;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v8 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      --v7;
    }

    while (v7);
  }

  v13 = *(a1 + 16);
  if ((v13 & 0x3F) != 0)
  {
    if (v13)
    {
      v16 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v8 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v13 & 2) == 0)
      {
LABEL_17:
        if ((v13 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_31;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_17;
    }

    v19 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v8 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 4) == 0)
    {
LABEL_18:
      if ((v13 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    }

LABEL_31:
    v8 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v13 & 8) == 0)
    {
LABEL_19:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_32:
    v8 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v13 & 0x10) == 0)
    {
LABEL_21:
      if ((v13 & 0x20) != 0)
      {
        v8 += 5;
      }

      goto LABEL_23;
    }

LABEL_20:
    v8 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_21;
  }

LABEL_23:
  v14 = *(a1 + 8);
  if (v14)
  {
    v22 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v8 += v23;
  }

  *(a1 + 20) = v8;
  return v8;
}

void sub_14F8364(uint64_t a1, uint64_t a2)
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

  v13 = *(a2 + 16);
  if ((v13 & 0x3F) != 0)
  {
    if (v13)
    {
      v15 = *(a2 + 64);
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_194EA1C((a1 + 64), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
      if ((v13 & 2) == 0)
      {
LABEL_9:
        if ((v13 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_25;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_9;
    }

    v18 = *(a2 + 72);
    *(a1 + 16) |= 2u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 72), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v13 & 4) == 0)
    {
LABEL_10:
      if ((v13 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(a1 + 80) = *(a2 + 80);
    if ((v13 & 8) == 0)
    {
LABEL_11:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(a1 + 88) = *(a2 + 88);
    if ((v13 & 0x10) == 0)
    {
LABEL_12:
      if ((v13 & 0x20) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v13;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_14;
    }

LABEL_27:
    *(a1 + 96) = *(a2 + 96);
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_14F8544(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1569580(a1 + 11);
  sub_1569580(a1 + 8);
  sub_1569580(a1 + 5);
  sub_1569580(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F85E8(void *a1)
{
  sub_14F8544(a1);

  operator delete();
}

char *sub_14F8620(uint64_t a1, char *a2, int32x2_t *a3)
{
  v39 = a2;
  if ((sub_195ADC0(a3, &v39, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v39 + 1;
      v7 = *v39;
      if (*v39 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(v39, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = v39 + 2;
        }
      }

      v39 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v7 == 26)
          {
            v30 = v6 - 1;
            while (1)
            {
              v31 = v30 + 1;
              v39 = v30 + 1;
              v32 = *(a1 + 80);
              if (v32 && (v33 = *(a1 + 72), v33 < *v32))
              {
                *(a1 + 72) = v33 + 1;
                v34 = *&v32[2 * v33 + 2];
              }

              else
              {
                v35 = sub_1528D14(*(a1 + 64));
                v34 = sub_19593CC(a1 + 64, v35);
                v31 = v39;
              }

              v30 = sub_2217F98(a3, v34, v31);
              v39 = v30;
              if (!v30)
              {
                return 0;
              }

              if (*a3 <= v30 || *v30 != 26)
              {
                goto LABEL_62;
              }
            }
          }
        }

        else if (v10 == 4 && v7 == 34)
        {
          v18 = v6 - 1;
          while (1)
          {
            v19 = v18 + 1;
            v39 = v18 + 1;
            v20 = *(a1 + 104);
            if (v20 && (v21 = *(a1 + 96), v21 < *v20))
            {
              *(a1 + 96) = v21 + 1;
              v22 = *&v20[2 * v21 + 2];
            }

            else
            {
              v23 = sub_1528D14(*(a1 + 88));
              v22 = sub_19593CC(a1 + 88, v23);
              v19 = v39;
            }

            v18 = sub_2217F98(a3, v22, v19);
            v39 = v18;
            if (!v18)
            {
              return 0;
            }

            if (*a3 <= v18 || *v18 != 34)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 10)
        {
          v24 = v6 - 1;
          while (1)
          {
            v25 = v24 + 1;
            v39 = v24 + 1;
            v26 = *(a1 + 32);
            if (v26 && (v27 = *(a1 + 24), v27 < *v26))
            {
              *(a1 + 24) = v27 + 1;
              v28 = *&v26[2 * v27 + 2];
            }

            else
            {
              v29 = sub_1528D14(*(a1 + 16));
              v28 = sub_19593CC(a1 + 16, v29);
              v25 = v39;
            }

            v24 = sub_2217F98(a3, v28, v25);
            v39 = v24;
            if (!v24)
            {
              return 0;
            }

            if (*a3 <= v24 || *v24 != 10)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v12 = v6 - 1;
        while (1)
        {
          v13 = v12 + 1;
          v39 = v12 + 1;
          v14 = *(a1 + 56);
          if (v14 && (v15 = *(a1 + 48), v15 < *v14))
          {
            *(a1 + 48) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_1528D14(*(a1 + 40));
            v16 = sub_19593CC(a1 + 40, v17);
            v13 = v39;
          }

          v12 = sub_2217F98(a3, v16, v13);
          v39 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_62;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v37 = *(a1 + 8);
      if (v37)
      {
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v38 = sub_11F1920((a1 + 8));
        v6 = v39;
      }

      v39 = sub_1952690(v7, v38, v6, a3);
      if (!v39)
      {
        return 0;
      }

LABEL_62:
      if (sub_195ADC0(a3, &v39, a3[11].u32[1]))
      {
        return v39;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v39;
    }

    return 0;
  }

  return v39;
}

char *sub_14F8984(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_14F7D60(v8, v10, a3);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 56) + 8 * j + 8);
      *__dst = 18;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_14F7D60(v13, v15, a3);
    }
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 80) + 8 * k + 8);
      *__dst = 26;
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

      __dst = sub_14F7D60(v18, v20, a3);
    }
  }

  v21 = *(a1 + 96);
  if (v21)
  {
    for (m = 0; m != v21; ++m)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 104) + 8 * m + 8);
      *__dst = 34;
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

      __dst = sub_14F7D60(v23, v25, a3);
    }
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v29)
  {
    v31 = v29;
    memcpy(__dst, v30, v29);
    __dst += v31;
    return __dst;
  }

  return sub_1957130(a3, v30, v29, __dst);
}

uint64_t sub_14F8C50(uint64_t a1)
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
      v7 = sub_14F8164(v6);
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
  v9 = v2 + v8;
  v10 = *(a1 + 56);
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
      v14 = sub_14F8164(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 72);
  v16 = v9 + v15;
  v17 = *(a1 + 80);
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
      v21 = sub_14F8164(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 96);
  v23 = v16 + v22;
  v24 = *(a1 + 104);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_14F8164(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 8);
  if (v29)
  {
    v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *((v29 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v32 < 0)
    {
      v32 = *(v31 + 16);
    }

    v23 += v32;
  }

  *(a1 + 112) = v23;
  return v23;
}

uint64_t sub_14F8E00(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_16;
    }
  }

  else if (v4)
  {
    goto LABEL_16;
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

  if (a1 != &off_2775188)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_14D9078(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F8F18(uint64_t a1)
{
  sub_14F8E00(a1);

  operator delete();
}

uint64_t sub_14F8F50(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v6 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  v5 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v7 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_26;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_26:
  v8 = *(result + 64) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = sub_14D9150(*(result + 72));
    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 1;
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

uint64_t sub_14F90A0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v51 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v51, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = (*v51 + 1);
    v10 = **v51;
    if (**v51 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v51, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v51 + 2);
      }
    }

    *v51 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 <= 4)
    {
      if (v10 >> 3 > 2)
      {
        if (v14 == 3)
        {
          if (v10 != 26)
          {
            goto LABEL_91;
          }

          *(a1 + 16) |= 0x10u;
          v27 = *(a1 + 72);
          if (!v27)
          {
            v28 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v8)
            {
              v28 = *v28;
            }

            v27 = sub_152710C(v28);
            *(a1 + 72) = v27;
            v9 = *v51;
          }

          v26 = sub_21FCB20(a3, v27, v9);
          goto LABEL_45;
        }

        if (v14 != 4 || v10 != 34)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 4u;
        v22 = *(a1 + 8);
        v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v20 = *v20;
        }

        v21 = (a1 + 56);
      }

      else if (v14 == 1)
      {
        if (v10 != 10)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 1u;
        v24 = *(a1 + 8);
        v20 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v20 = *v20;
        }

        v21 = (a1 + 40);
      }

      else
      {
        if (v14 != 2 || v10 != 18)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 2u;
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v21 = (a1 + 48);
      }

LABEL_44:
      v25 = sub_194DB04(v21, v20);
      v26 = sub_1958890(v25, *v51, a3);
      goto LABEL_45;
    }

    if (v10 >> 3 <= 6)
    {
      break;
    }

    if (v14 == 7)
    {
      if (v10 != 56)
      {
        goto LABEL_91;
      }

      v29 = v9 + 1;
      v30 = *v9;
      if (v30 < 0)
      {
        v31 = *v29;
        v32 = (v31 << 7) + v30;
        LODWORD(v30) = v32 - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v29 = v9 + 2;
          goto LABEL_58;
        }

        *v51 = sub_19587DC(v9, (v32 - 128));
        if (!*v51)
        {
          goto LABEL_102;
        }

        LODWORD(v30) = v44;
      }

      else
      {
LABEL_58:
        *v51 = v29;
      }

      if (sub_144E260(v30))
      {
        *(a1 + 16) |= 0x80u;
        *(a1 + 88) = v30;
      }

      else
      {
        sub_13ED178();
      }

      goto LABEL_46;
    }

    if (v14 == 8)
    {
      if (v10 != 64)
      {
        goto LABEL_91;
      }

      v6 |= 0x20u;
      v42 = v9 + 1;
      v41 = *v9;
      if ((v41 & 0x8000000000000000) == 0)
      {
        goto LABEL_82;
      }

      v43 = *v42;
      v41 = (v43 << 7) + v41 - 128;
      if ((v43 & 0x80000000) == 0)
      {
        v42 = v9 + 2;
LABEL_82:
        *v51 = v42;
        *(a1 + 80) = v41 != 0;
        goto LABEL_46;
      }

      v47 = sub_19587DC(v9, v41);
      *v51 = v47;
      *(a1 + 80) = v48 != 0;
      if (!v47)
      {
        goto LABEL_102;
      }
    }

    else
    {
      if (v14 != 9 || v10 != 72)
      {
        goto LABEL_91;
      }

      v6 |= 0x40u;
      v15 = v9 + 1;
      v16 = *v9;
      if ((*v9 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      v17 = *v15;
      v16 = v16 + (v17 << 7) - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v15 = v9 + 2;
LABEL_17:
        *v51 = v15;
        *(a1 + 84) = v16;
        goto LABEL_46;
      }

      v45 = sub_1958770(v9, v16);
      *v51 = v45;
      *(a1 + 84) = v46;
      if (!v45)
      {
        goto LABEL_102;
      }
    }

LABEL_46:
    if (sub_195ADC0(a3, v51, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v14 == 5)
  {
    if (v10 == 40)
    {
      v33 = (v9 - 1);
      while (1)
      {
        *v51 = v33 + 1;
        v34 = *(v33 + 1);
        v35 = (v33 + 2);
        if (v34 < 0)
        {
          v36 = *v35;
          v37 = (v36 << 7) + v34;
          LODWORD(v34) = v37 - 128;
          if (v36 < 0)
          {
            *v51 = sub_19587DC(v33 + 1, (v37 - 128));
            if (!*v51)
            {
              goto LABEL_102;
            }

            LODWORD(v34) = v40;
            goto LABEL_67;
          }

          v35 = (v33 + 3);
        }

        *v51 = v35;
LABEL_67:
        if ((v34 - 1) > 1)
        {
          sub_12E85B8();
        }

        else
        {
          v38 = *(a1 + 24);
          if (v38 == *(a1 + 28))
          {
            v39 = v38 + 1;
            sub_1958E5C((a1 + 24), v38 + 1);
            *(*(a1 + 32) + 4 * v38) = v34;
          }

          else
          {
            *(*(a1 + 32) + 4 * v38) = v34;
            v39 = v38 + 1;
          }

          *(a1 + 24) = v39;
        }

        v33 = *v51;
        if (*a3 <= *v51 || **v51 != 40)
        {
          goto LABEL_46;
        }
      }
    }

    if (v10 != 42)
    {
      goto LABEL_91;
    }

    *&v52 = a1 + 24;
    *(&v52 + 1) = sub_14D6CFC;
    v53 = a1 + 8;
    v54 = 5;
    v26 = sub_1216588(a3, v9, &v52, v5);
LABEL_45:
    *v51 = v26;
    if (!v26)
    {
      goto LABEL_102;
    }

    goto LABEL_46;
  }

  if (v14 == 6 && v10 == 50)
  {
    *(a1 + 16) |= 8u;
    v23 = *(a1 + 8);
    v20 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v20 = *v20;
    }

    v21 = (a1 + 64);
    goto LABEL_44;
  }

LABEL_91:
  if (v10)
  {
    v49 = (v10 & 7) == 4;
  }

  else
  {
    v49 = 1;
  }

  if (!v49)
  {
    if (*v8)
    {
      v50 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v50 = sub_11F1920((a1 + 8));
      v9 = *v51;
    }

    v26 = sub_1952690(v10, v50, v9, a3);
    goto LABEL_45;
  }

  if (v9)
  {
    a3[10].i32[0] = v10 - 1;
  }

  else
  {
LABEL_102:
    *v51 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return *v51;
}

char *sub_14F95C8(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 72);
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

  v4 = sub_14D9394(v14, v16, a3);
  if ((v6 & 4) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
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
      *v4 = 40;
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

  if ((v6 & 8) != 0)
  {
    v10 = sub_128AEEC(a3, 6, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v10);
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v10)
    {
      v10 = sub_225EB68(a3, v10);
    }

    v18 = *(a1 + 88);
    *v10 = 56;
    v10[1] = v18;
    if (v18 > 0x7F)
    {
      v10[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v10[2] = v18 >> 7;
      v17 = v10 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v10) = v10[2];
        do
        {
          *(v17 - 1) = v10 | 0x80;
          v10 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v10 + 2;
    }
  }

  else
  {
    v17 = v10;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v21 = *(a1 + 80);
    *v17 = 64;
    v17[1] = v21;
    v17 += 2;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v23 = *(a1 + 84);
    *v17 = 72;
    v17[1] = v23;
    if (v23 > 0x7F)
    {
      v17[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v17[2] = v23 >> 7;
      v22 = v17 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v17[2];
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
      v22 = v17 + 2;
    }
  }

  else
  {
    v22 = v17;
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v22;
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

  if ((*a3 - v22) >= v30)
  {
    v32 = v30;
    memcpy(v22, v31, v30);
    v22 += v32;
    return v22;
  }

  return sub_1957130(a3, v31, v30, v22);
}

uint64_t sub_14F994C(uint64_t a1)
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
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  if (v8)
  {
    v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v7 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v18 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v7 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_34:
    v24 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v7 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v21 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v7 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
    goto LABEL_34;
  }

LABEL_14:
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    v9 = sub_14D9520(*(a1 + 72));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v7 += (v8 >> 4) & 2;
  if ((v8 & 0x40) != 0)
  {
    v7 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v8 & 0x80) != 0)
  {
    v10 = *(a1 + 88);
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 11;
    }

    v7 += v12;
  }

LABEL_23:
  v13 = *(a1 + 8);
  if (v13)
  {
    v27 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v7 += v28;
  }

  *(a1 + 20) = v7;
  return v7;
}