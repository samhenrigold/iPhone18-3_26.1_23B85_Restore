uint64_t sub_16937D8(uint64_t a1)
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

  v7 = v4 + 2 * v2;
  v8 = *(a1 + 16);
  if (v8)
  {
    if (v8)
    {
      v18 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v7 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_33;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v21 = sub_1692874(*(a1 + 48));
    v7 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
LABEL_18:
        v12.i64[0] = 0x200000002;
        v12.i64[1] = 0x200000002;
        v7 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v8), xmmword_232A1F0), v12));
        goto LABEL_19;
      }

LABEL_14:
      v9 = *(a1 + 60);
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 11;
      }

      v7 += v11;
      goto LABEL_18;
    }

LABEL_33:
    v22 = *(a1 + 56);
    if (v22 < 0)
    {
      v23 = 11;
    }

    else
    {
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v23;
    if ((v8 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_19:
  if ((v8 & 0xF00) != 0)
  {
    if ((v8 & 0x100) != 0)
    {
      v7 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += ((v8 >> 9) & 2) + ((v8 >> 8) & 2);
    if ((v8 & 0x800) != 0)
    {
      v13 = *(a1 + 76);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 11;
      }

      v7 += v15;
    }
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v24 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v7 += v25;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_1693A1C(uint64_t a1, uint64_t a2)
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

        goto LABEL_36;
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

      v13 = sub_169B664(v15);
      *(a1 + 48) = v13;
    }

    if (*(a2 + 48))
    {
      v16 = *(a2 + 48);
    }

    else
    {
      v16 = &off_277CC00;
    }

    sub_12AAC24(v13, v16);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(a1 + 56) = *(a2 + 56);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(a1 + 60) = *(a2 + 60);
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }

LABEL_38:
    *(a1 + 64) = *(a2 + 64);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(a1 + 65) = *(a2 + 65);
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
      *(a1 + 67) = *(a2 + 67);
      goto LABEL_13;
    }

LABEL_40:
    *(a1 + 66) = *(a2 + 66);
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v8 & 0xF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v8 & 0x100) != 0)
  {
    *(a1 + 68) = *(a2 + 68);
    if ((v8 & 0x200) == 0)
    {
LABEL_17:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_18;
      }

LABEL_44:
      *(a1 + 73) = *(a2 + 73);
      if ((v8 & 0x800) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(a1 + 72) = *(a2 + 72);
  if ((v8 & 0x400) != 0)
  {
    goto LABEL_44;
  }

LABEL_18:
  if ((v8 & 0x800) != 0)
  {
LABEL_19:
    *(a1 + 76) = *(a2 + 76);
  }

LABEL_20:
  *(a1 + 16) |= v8;
LABEL_21:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1693C2C(uint64_t a1)
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

uint64_t sub_1693C50(uint64_t a1)
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

  if (a1 != &off_277CC78)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_16AB258(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1693D60(uint64_t a1)
{
  sub_1693C50(a1);

  operator delete();
}

uint64_t sub_1693D98(uint64_t result)
{
  v1 = result;
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

    goto LABEL_28;
  }

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
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_28;
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

LABEL_28:
  v8 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = sub_1693C2C(*(result + 56));
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
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
  }

  if ((v2 & 0xF00) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    *(v1 + 100) = 1;
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

uint64_t sub_1693EF4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v49 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v49, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v49 + 1);
    v8 = **v49;
    if (**v49 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v49, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v49 + 2);
      }
    }

    *v49 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 6)
    {
      if (v8 >> 3 <= 3)
      {
        if (v11 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 0x10u;
          v22 = *(a1 + 56);
          if (!v22)
          {
            v23 = *(a1 + 8);
            v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
            if (v23)
            {
              v24 = *v24;
            }

            v22 = sub_16BAD9C(v24);
            *(a1 + 56) = v22;
            v7 = *v49;
          }

          v25 = sub_2231CA8(a3, v22, v7);
LABEL_74:
          *v49 = v25;
          if (!v25)
          {
            goto LABEL_102;
          }

          goto LABEL_75;
        }

        if (v11 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 1u;
          v34 = *(a1 + 8);
          v14 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v14 = *v14;
          }

          v15 = (a1 + 24);
        }

        else
        {
          if (v11 != 3 || v8 != 26)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 2u;
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v15 = (a1 + 32);
        }

LABEL_73:
        v37 = sub_194DB04(v15, v14);
        v25 = sub_1958890(v37, *v49, a3);
        goto LABEL_74;
      }

      if (v11 != 4)
      {
        if (v11 == 5)
        {
          if (v8 != 42)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 4u;
          v36 = *(a1 + 8);
          v14 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v14 = *v14;
          }

          v15 = (a1 + 40);
        }

        else
        {
          if (v11 != 6 || v8 != 50)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 8u;
          v18 = *(a1 + 8);
          v14 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v14 = *v14;
          }

          v15 = (a1 + 48);
        }

        goto LABEL_73;
      }

      if (v8 != 32)
      {
        goto LABEL_82;
      }

      v27 = v7 + 1;
      v28 = *v7;
      if (v28 < 0)
      {
        v29 = *v27;
        v30 = (v29 << 7) + v28;
        LODWORD(v28) = v30 - 128;
        if (v29 < 0)
        {
          *v49 = sub_19587DC(v7, (v30 - 128));
          if (!*v49)
          {
            goto LABEL_102;
          }

          LODWORD(v28) = v46;
          goto LABEL_53;
        }

        v27 = v7 + 2;
      }

      *v49 = v27;
LABEL_53:
      if (sub_168C6D8(v28))
      {
        *(a1 + 16) |= 0x40u;
        *(a1 + 72) = v28;
      }

      else
      {
        sub_1348E78();
      }

      goto LABEL_75;
    }

    if (v8 >> 3 <= 9)
    {
      if (v11 == 7)
      {
        if (v8 != 57)
        {
          goto LABEL_82;
        }

        v26 = *v7;
        v16 = v7 + 8;
        v5 |= 0x20u;
        *(a1 + 64) = v26;
      }

      else if (v11 == 8)
      {
        if (v8 != 65)
        {
          goto LABEL_82;
        }

        v35 = *v7;
        v16 = v7 + 8;
        v5 |= 0x100u;
        *(a1 + 80) = v35;
      }

      else
      {
        if (v11 != 9 || v8 != 73)
        {
          goto LABEL_82;
        }

        v17 = *v7;
        v16 = v7 + 8;
        v5 |= 0x200u;
        *(a1 + 88) = v17;
      }

      *v49 = v16;
      goto LABEL_75;
    }

    if (v11 == 10)
    {
      break;
    }

    if (v11 == 11)
    {
      if (v8 != 88)
      {
        goto LABEL_82;
      }

      v5 |= 0x80u;
      v38 = v7 + 1;
      v39 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      v40 = *v38;
      v39 = v39 + (v40 << 7) - 128;
      if ((v40 & 0x80000000) == 0)
      {
        v38 = v7 + 2;
LABEL_81:
        *v49 = v38;
        *(a1 + 76) = v39;
        goto LABEL_75;
      }

      v47 = sub_1958770(v7, v39);
      *v49 = v47;
      *(a1 + 76) = v48;
      if (!v47)
      {
        goto LABEL_102;
      }
    }

    else
    {
      if (v11 != 12 || v8 != 96)
      {
        goto LABEL_82;
      }

      v5 |= 0x400u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_39:
        *v49 = v20;
        *(a1 + 96) = v19 != 0;
        goto LABEL_75;
      }

      v44 = sub_19587DC(v7, v19);
      *v49 = v44;
      *(a1 + 96) = v45 != 0;
      if (!v44)
      {
        goto LABEL_102;
      }
    }

LABEL_75:
    if (sub_195ADC0(a3, v49, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 80)
  {
    v32 = v7 + 1;
    v31 = *v7;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_59;
    }

    v33 = *v32;
    v31 = (v33 << 7) + v31 - 128;
    if (v33 < 0)
    {
      *v49 = sub_19587DC(v7, v31);
      if (!*v49)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v32 = v7 + 2;
LABEL_59:
      *v49 = v32;
    }

    if ((v31 - 1) > 8)
    {
      sub_12E8488();
    }

    else
    {
      *(a1 + 16) |= 0x800u;
      *(a1 + 100) = v31;
    }

    goto LABEL_75;
  }

LABEL_82:
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
      v7 = *v49;
    }

    v25 = sub_1952690(v8, v43, v7, a3);
    goto LABEL_74;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_102:
  *v49 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v49;
}

char *sub_16943D4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 56);
    *v4 = 10;
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

    v4 = sub_16AB468(v8, v10, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      v4 = sub_128AEEC(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v6 & 0x40) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 72);
  *v4 = 32;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v12 >> 7);
        *v7++ = v12 >> 7;
        v13 = v12 >> 14;
        v12 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_21:
  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 5, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v6 & 8) == 0)
    {
LABEL_23:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_23;
  }

  v7 = sub_128AEEC(a3, 6, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 0x20) == 0)
  {
LABEL_24:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v15 = *(a1 + 64);
  *v7 = 57;
  *(v7 + 1) = v15;
  v7 += 9;
  if ((v6 & 0x100) == 0)
  {
LABEL_25:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_26;
    }

LABEL_36:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 88);
    *v7 = 73;
    *(v7 + 1) = v17;
    v7 += 9;
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_33:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v16 = *(a1 + 80);
  *v7 = 65;
  *(v7 + 1) = v16;
  v7 += 9;
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_36;
  }

LABEL_26:
  if ((v6 & 0x800) == 0)
  {
LABEL_27:
    v14 = v7;
    goto LABEL_46;
  }

LABEL_39:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v18 = *(a1 + 100);
  *v7 = 80;
  v7[1] = v18;
  if (v18 > 0x7F)
  {
    v7[1] = v18 | 0x80;
    v19 = v18 >> 7;
    v7[2] = v18 >> 7;
    v14 = v7 + 3;
    if (v18 >= 0x4000)
    {
      LOBYTE(v20) = v7[2];
      do
      {
        *(v14 - 1) = v20 | 0x80;
        v20 = v19 >> 7;
        *v14++ = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }
  }

  else
  {
    v14 = v7 + 2;
  }

LABEL_46:
  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v23 = *(a1 + 76);
    *v14 = 88;
    v14[1] = v23;
    if (v23 > 0x7F)
    {
      v14[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v14[2] = v23 >> 7;
      v22 = v14 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v14[2];
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
      v22 = v14 + 2;
    }
  }

  else
  {
    v22 = v14;
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 96);
    *v22 = 96;
    v22[1] = v27;
    v22 += 2;
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v22;
  }

  v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
  v31 = *(v30 + 31);
  if (v31 < 0)
  {
    v32 = *(v30 + 8);
    v31 = *(v30 + 16);
  }

  else
  {
    v32 = (v30 + 8);
  }

  if ((*a3 - v22) >= v31)
  {
    v33 = v31;
    memcpy(v22, v32, v31);
    v22 += v33;
    return v22;
  }

  return sub_1957130(a3, v32, v31, v22);
}

uint64_t sub_16947EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    result = 0;
    goto LABEL_33;
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

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    v17 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if ((v2 & 0x10) != 0)
  {
LABEL_15:
    v11 = sub_16AB580(*(a1 + 56));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  if ((v2 & 0x20) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v12 = *(a1 + 72);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v13;
  }

  if ((v2 & 0x80) != 0)
  {
    result += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_33:
  if ((v2 & 0xF00) != 0)
  {
    v20 = result + 9;
    if ((v2 & 0x100) == 0)
    {
      v20 = result;
    }

    if ((v2 & 0x200) != 0)
    {
      v20 += 9;
    }

    result = v20 + ((v2 >> 9) & 2);
    if ((v2 & 0x800) != 0)
    {
      v21 = *(a1 + 100);
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v21 >= 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 11;
      }

      result += v23;
    }
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    v25 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    result += v26;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_1694A6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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

        goto LABEL_29;
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

      goto LABEL_32;
    }

LABEL_29:
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

      goto LABEL_35;
    }

LABEL_32:
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

      goto LABEL_43;
    }

LABEL_35:
    *(a1 + 16) |= 0x10u;
    v18 = *(a1 + 56);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_16BAD9C(v20);
      *(a1 + 56) = v18;
    }

    if (*(a2 + 56))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = &off_277D440;
    }

    sub_1336380(v18, v21);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 76) = *(a2 + 76);
      goto LABEL_11;
    }

LABEL_44:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0xF00) == 0)
  {
    goto LABEL_19;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x200) == 0)
    {
LABEL_15:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_16;
      }

LABEL_48:
      *(a1 + 96) = *(a2 + 96);
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  *(a1 + 88) = *(a2 + 88);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_48;
  }

LABEL_16:
  if ((v4 & 0x800) != 0)
  {
LABEL_17:
    *(a1 + 100) = *(a2 + 100);
  }

LABEL_18:
  *(a1 + 16) |= v4;
LABEL_19:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_1694CE8(void *a1)
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

void sub_1694D5C(void *a1)
{
  sub_1694CE8(a1);

  operator delete();
}

uint64_t sub_1694D94(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0xFFFFFFFF00000001;
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

char *sub_1694DC0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v28, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v28 + 1;
    v8 = *v28;
    if (*v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v28 + 2;
      }
    }

    v28 = v7;
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
    LODWORD(v15) = *v7;
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v15 = v15 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_24:
      v28 = v16;
      *(a1 + 28) = v15;
      goto LABEL_34;
    }

    v23 = sub_19587DC(v7, v15);
    v28 = v23;
    *(a1 + 28) = v24;
    if (!v23)
    {
      goto LABEL_47;
    }

LABEL_34:
    if (sub_195ADC0(a3, &v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v18 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v21 = (v20 << 7) + v19;
    v19 = (v21 - 128);
    if (v20 < 0)
    {
      v28 = sub_19587DC(v7, (v21 - 128));
      if (!v28)
      {
        goto LABEL_47;
      }

      v19 = v25;
    }

    else
    {
      v18 = v7 + 2;
LABEL_28:
      v28 = v18;
    }

    if (v19 > 0xA || ((1 << v19) & 0x71E) == 0)
    {
      v26 = *(a1 + 8);
      if (v26)
      {
        v27 = ((v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v27 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(1, v19, v27);
    }

    else
    {
      *(a1 + 16) |= 1u;
      *(a1 + 24) = v19;
    }

    goto LABEL_34;
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
      v7 = v28;
    }

    v28 = sub_1952690(v8, v14, v7, a3);
    if (!v28)
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_47:
  v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

char *sub_1695000(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_16951B0(uint64_t a1)
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

uint64_t sub_1695280(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  result = sub_12A41D0(a1 + 56);
  v3 = *(a1 + 88);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 96) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16B725C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 88) = 0;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_15;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_29:
    v10 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

  v9 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_29;
    }
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_33:
  result = sub_16ADA78(*(a1 + 120));
  if ((v6 & 8) == 0)
  {
LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = sub_169541C(*(a1 + 128));
  if ((v6 & 0x10) == 0)
  {
LABEL_11:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_36:
    result = sub_16AE1A0(*(a1 + 144));
    if ((v6 & 0x40) == 0)
    {
LABEL_13:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_35:
  result = sub_1698850(*(a1 + 136));
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_37:
  result = sub_16B6980(*(a1 + 152));
  if ((v6 & 0x80) != 0)
  {
LABEL_14:
    result = sub_16B725C(*(a1 + 160));
  }

LABEL_15:
  if ((v6 & 0xFF00) != 0)
  {
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 181) = 0;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(a1 + 197) = 0;
    *(a1 + 189) = 0;
    *(a1 + 204) = 0;
  }

  if ((v6 & 0x3000000) != 0)
  {
    *(a1 + 208) = 0;
    *(a1 + 216) = 10;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_169541C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1693C2C(*(result + 24));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
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

uint64_t sub_1695484(uint64_t a1)
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

  if (a1 != &off_277CCE0)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_16B78D8(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_16ABA70(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_16BD89C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1695560(uint64_t a1)
{
  sub_1695484(a1);

  operator delete();
}

uint64_t sub_1695598(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1693C2C(v4);
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
      result = sub_1695280(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_169541C(*(v1 + 56));
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

char *sub_169563C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v31, i) & 1) == 0; i = a3[11].u32[1])
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = v20 + 1;
          v31 = v20 + 1;
          v22 = *(a1 + 40);
          if (v22 && (v23 = *(a1 + 32), v23 < *v22))
          {
            *(a1 + 32) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_16BAD9C(*(a1 + 24));
            v24 = sub_19593CC(a1 + 24, v25);
            v21 = v31;
          }

          v20 = sub_2231CA8(a3, v24, v21);
          v31 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 26)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
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

          sub_16BAE98(v18);
          v16 = v19;
          *(a1 + 56) = v19;
          v6 = v31;
        }

        v15 = sub_2231828(a3, v16, v6);
        goto LABEL_41;
      }
    }

    else if (v10 == 1 && v7 == 10)
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

        sub_16BB948(v28);
        v26 = v29;
        *(a1 + 48) = v29;
        v6 = v31;
      }

      v15 = sub_2231D38(a3, v26, v6);
      goto LABEL_41;
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
        return v31;
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
      v6 = v31;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_41:
    v31 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  return v31;
}

char *sub_1695878(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16B890C(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
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

    v4 = sub_16ABD20(v10, v12, a3);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_16AB468(v15, v17, a3);
    }
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v21)
  {
    v23 = v21;
    memcpy(v4, v22, v21);
    v4 += v23;
    return v4;
  }

  return sub_1957130(a3, v22, v21, v4);
}

uint64_t sub_1695A84(uint64_t a1)
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
      v7 = sub_16AB580(v6);
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
      v9 = sub_16B93F0(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_16ABEB4(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1695B98(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_16BDF68((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
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
      *(result + 16) |= 1u;
      v10 = *(result + 48);
      if (!v10)
      {
        v11 = *(result + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_16BB948(v12);
        *(result + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277D790;
      }

      sub_1695CF8(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 16) |= 2u;
      v14 = *(result + 56);
      if (!v14)
      {
        v15 = *(result + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        sub_16BAE98(v16);
        *(result + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_277D4A0;
      }

      sub_1696248(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((result + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1695CF8(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a1 + 40);
    sub_1959094((a1 + 40), v9 + v8);
    v10 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy((v10 + 8 * v9), *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 64);
  if (v11)
  {
    v12 = *(a2 + 72);
    v13 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_1201B48((a1 + 56), v13, (v12 + 8), v11, **(a1 + 72) - *(a1 + 64));
    v14 = *(a1 + 64) + v11;
    *(a1 + 64) = v14;
    v15 = *(a1 + 72);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 88);
  if (v16)
  {
    v17 = *(a2 + 96);
    v18 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_16C0104((a1 + 80), v18, (v17 + 8), v16, **(a1 + 96) - *(a1 + 88));
    v19 = *(a1 + 88) + v16;
    *(a1 + 88) = v19;
    v20 = *(a1 + 96);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 16);
  if (!v21)
  {
    goto LABEL_75;
  }

  if (v21)
  {
    v22 = *(a2 + 104);
    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 104), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v21 & 2) == 0)
    {
LABEL_14:
      if ((v21 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((v21 & 2) == 0)
  {
    goto LABEL_14;
  }

  v25 = *(a2 + 112);
  *(a1 + 16) |= 2u;
  v26 = *(a1 + 8);
  v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
  if (v26)
  {
    v27 = *v27;
  }

  sub_194EA1C((a1 + 112), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
  if ((v21 & 4) == 0)
  {
LABEL_15:
    if ((v21 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_27:
  *(a1 + 16) |= 4u;
  v28 = *(a1 + 120);
  if (!v28)
  {
    v29 = *(a1 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    v28 = sub_16BAF74(v30);
    *(a1 + 120) = v28;
  }

  if (*(a2 + 120))
  {
    v31 = *(a2 + 120);
  }

  else
  {
    v31 = &off_277D590;
  }

  sub_16ADFCC(v28, v31);
  if ((v21 & 8) == 0)
  {
LABEL_16:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_35:
  *(a1 + 16) |= 8u;
  v32 = *(a1 + 128);
  if (!v32)
  {
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    sub_16BAE98(v34);
    *(a1 + 128) = v32;
  }

  if (*(a2 + 128))
  {
    v35 = *(a2 + 128);
  }

  else
  {
    v35 = &off_277D4A0;
  }

  sub_1696248(v32, v35);
  if ((v21 & 0x10) == 0)
  {
LABEL_17:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_51:
    *(a1 + 16) |= 0x20u;
    v40 = *(a1 + 144);
    if (!v40)
    {
      v41 = *(a1 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v40 = sub_16BB010(v42);
      *(a1 + 144) = v40;
    }

    if (*(a2 + 144))
    {
      v43 = *(a2 + 144);
    }

    else
    {
      v43 = &off_277D5C8;
    }

    sub_121721C(v40, v43);
    if ((v21 & 0x40) == 0)
    {
LABEL_19:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }

    goto LABEL_59;
  }

LABEL_43:
  *(a1 + 16) |= 0x10u;
  v36 = *(a1 + 136);
  if (!v36)
  {
    v37 = *(a1 + 8);
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    sub_16BAE18(v38);
    *(a1 + 136) = v36;
  }

  if (*(a2 + 136))
  {
    v39 = *(a2 + 136);
  }

  else
  {
    v39 = &off_277D468;
  }

  sub_15FB28C(v36, v39);
  if ((v21 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_18:
  if ((v21 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_59:
  *(a1 + 16) |= 0x40u;
  v44 = *(a1 + 152);
  if (!v44)
  {
    v45 = *(a1 + 8);
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    sub_16BB820(v46);
    *(a1 + 152) = v44;
  }

  if (*(a2 + 152))
  {
    v47 = *(a2 + 152);
  }

  else
  {
    v47 = &off_277D718;
  }

  sub_16B703C(v44, v47);
  if ((v21 & 0x80) != 0)
  {
LABEL_67:
    *(a1 + 16) |= 0x80u;
    v48 = *(a1 + 160);
    if (!v48)
    {
      v49 = *(a1 + 8);
      v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
      if (v49)
      {
        v50 = *v50;
      }

      v48 = sub_16BB8CC(v50);
      *(a1 + 160) = v48;
    }

    if (*(a2 + 160))
    {
      v51 = *(a2 + 160);
    }

    else
    {
      v51 = &off_277D768;
    }

    sub_128F948(v48, v51);
  }

LABEL_75:
  if ((v21 & 0xFF00) == 0)
  {
    goto LABEL_86;
  }

  if ((v21 & 0x100) != 0)
  {
    *(a1 + 168) = *(a2 + 168);
    if ((v21 & 0x200) == 0)
    {
LABEL_78:
      if ((v21 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_109;
    }
  }

  else if ((v21 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  *(a1 + 172) = *(a2 + 172);
  if ((v21 & 0x400) == 0)
  {
LABEL_79:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(a1 + 173) = *(a2 + 173);
  if ((v21 & 0x800) == 0)
  {
LABEL_80:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(a1 + 174) = *(a2 + 174);
  if ((v21 & 0x1000) == 0)
  {
LABEL_81:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(a1 + 175) = *(a2 + 175);
  if ((v21 & 0x2000) == 0)
  {
LABEL_82:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

LABEL_113:
    *(a1 + 184) = *(a2 + 184);
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_112:
  *(a1 + 176) = *(a2 + 176);
  if ((v21 & 0x4000) != 0)
  {
    goto LABEL_113;
  }

LABEL_83:
  if ((v21 & 0x8000) != 0)
  {
LABEL_84:
    *(a1 + 188) = *(a2 + 188);
  }

LABEL_85:
  *(a1 + 16) |= v21;
LABEL_86:
  if ((v21 & 0xFF0000) == 0)
  {
    goto LABEL_97;
  }

  if ((v21 & 0x10000) != 0)
  {
    *(a1 + 189) = *(a2 + 189);
    if ((v21 & 0x20000) == 0)
    {
LABEL_89:
      if ((v21 & 0x40000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_117;
    }
  }

  else if ((v21 & 0x20000) == 0)
  {
    goto LABEL_89;
  }

  *(a1 + 190) = *(a2 + 190);
  if ((v21 & 0x40000) == 0)
  {
LABEL_90:
    if ((v21 & 0x80000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(a1 + 191) = *(a2 + 191);
  if ((v21 & 0x80000) == 0)
  {
LABEL_91:
    if ((v21 & 0x100000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_119;
  }

LABEL_118:
  *(a1 + 192) = *(a2 + 192);
  if ((v21 & 0x100000) == 0)
  {
LABEL_92:
    if ((v21 & 0x200000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_120;
  }

LABEL_119:
  *(a1 + 193) = *(a2 + 193);
  if ((v21 & 0x200000) == 0)
  {
LABEL_93:
    if ((v21 & 0x400000) == 0)
    {
      goto LABEL_94;
    }

LABEL_121:
    *(a1 + 195) = *(a2 + 195);
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_120:
  *(a1 + 194) = *(a2 + 194);
  if ((v21 & 0x400000) != 0)
  {
    goto LABEL_121;
  }

LABEL_94:
  if ((v21 & 0x800000) != 0)
  {
LABEL_95:
    *(a1 + 200) = *(a2 + 200);
  }

LABEL_96:
  *(a1 + 16) |= v21;
LABEL_97:
  if ((v21 & 0x3000000) != 0)
  {
    if ((v21 & 0x1000000) != 0)
    {
      *(a1 + 208) = *(a2 + 208);
    }

    if ((v21 & 0x2000000) != 0)
    {
      *(a1 + 216) = *(a2 + 216);
    }

    *(a1 + 16) |= v21;
  }

  v52 = *(a2 + 8);
  if (v52)
  {

    sub_1957EF4((a1 + 8), (v52 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_1696248(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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

        data = sub_16BAD9C(v8);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277D440;
      }

      result = sub_1336380(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(v3 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(v3 + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(v3 + 32) = *(a2 + 32);
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

    return sub_1957EF4((v3 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1696330(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = *(*(a1 + 40) + 8 * v2--);
    if ((~*(v3 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 16);
  if ((v5 & 1) == 0 || (result = sub_16963C0(*(a1 + 48)), result))
  {
    if ((v5 & 2) != 0)
    {
      v6 = *(a1 + 56);
      if ((*(v6 + 16) & 1) == 0 || (~*(*(v6 + 24) + 16) & 3) != 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_16963C0(uint64_t a1)
{
  v1 = *(a1 + 88);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 96) + 8 * v1--);
    if ((~*(v2 + 16) & 7) != 0)
    {
      return 0;
    }
  }

  v3 = *(a1 + 16);
  if (v3 & 8) == 0 || (v5 = *(a1 + 128), (*(v5 + 16)) && (~*(*(v5 + 24) + 16) & 3) == 0)
  {
    if ((v3 & 0x20) == 0 || (~*(*(a1 + 144) + 16) & 3) == 0)
    {
      if ((v3 & 0x40) != 0)
      {
        v6 = *(a1 + 152);
        v7 = *(v6 + 32);
        v8 = *(v6 + 40);
        while (v7 >= 1)
        {
          v9 = *(v8 + 8 * v7--);
          if ((*(v9 + 16) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if ((v3 & 0x80) == 0 || (~*(*(a1 + 160) + 16) & 7) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_16964B8(uint64_t a1)
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
  if (a1 != &off_277CD20)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16AB258(v6);
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

void sub_1696570(uint64_t a1)
{
  sub_16964B8(a1);

  operator delete();
}

uint64_t sub_16965A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1693C2C(*(result + 24));
  }

  if ((v2 & 6) != 0)
  {
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

char *sub_1696610(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v26, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v26 + 1;
    v7 = *v26;
    if (*v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v26 + 2;
      }
    }

    v26 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 4)
    {
      if (v7 == 32)
      {
        v20 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v26 = sub_19587DC(v6, v19);
          if (!v26)
          {
            return 0;
          }
        }

        else
        {
          v20 = v6 + 2;
LABEL_31:
          v26 = v20;
        }

        if (v19 > 3)
        {
          sub_1348E78();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 36) = v19;
        }

        continue;
      }

      goto LABEL_13;
    }

    if (v10 == 3)
    {
      if (v7 == 24)
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
          v26 = sub_19587DC(v6, v16);
          if (!v26)
          {
            return 0;
          }
        }

        else
        {
          v17 = v6 + 2;
LABEL_24:
          v26 = v17;
        }

        if (v16 > 3)
        {
          sub_12E8578();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v16;
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
          return v26;
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
        v6 = v26;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_39;
    }

    if (v10 != 1 || v7 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 24);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16BAD9C(v24);
      *(a1 + 24) = v22;
      v6 = v26;
    }

    v15 = sub_2231CA8(a3, v22, v6);
LABEL_39:
    v26 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v26;
}

char *sub_1696858(uint64_t a1, char *__dst, unint64_t *a3)
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

    __dst = sub_16AB468(v6, v8, a3);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 36);
    *v9 = 32;
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

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v14;
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

  if ((*a3 - v14) >= v21)
  {
    v23 = v21;
    memcpy(v14, v22, v21);
    v14 += v23;
    return v14;
  }

  return sub_1957130(a3, v22, v21, v14);
}

uint64_t sub_1696A6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_16AB580(*(a1 + 24));
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
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 36);
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

LABEL_16:
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

std::string *sub_1696B68(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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

        data = sub_16BAD9C(v8);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277D440;
      }

      result = sub_1336380(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(v3 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(v3 + 36) = *(a2 + 36);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(v3 + 32) = *(a2 + 32);
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

    return sub_1957EF4((v3 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1696C8C(void *a1)
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

void sub_1696D00(void *a1)
{
  sub_1696C8C(a1);

  operator delete();
}

uint64_t sub_1696D38(uint64_t a1)
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

char *sub_1696D5C(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 32) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 32) = v22;
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
      *(a1 + 24) = v18;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
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

char *sub_1696F40(uint64_t a1, char *__dst, unint64_t *a3)
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

    v12 = *(a1 + 32);
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

unint64_t sub_16970F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

uint64_t sub_16971A0(uint64_t a1)
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
  if (a1 != &off_277CD70)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_16AB258(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_16BD920((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1697264(uint64_t a1)
{
  sub_16971A0(a1);

  operator delete();
}

uint64_t sub_169729C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16965A8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_1693C2C(*(v1 + 48));
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

char *sub_169732C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v25, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v25 + 1;
    v7 = *v25;
    if (*v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v25 + 2;
      }
    }

    v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = v15 + 1;
          v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_169B95C(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v25;
          }

          v15 = sub_2231DC8(a3, v19, v16);
          v25 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 48);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_16BAD9C(v23);
        *(a1 + 48) = v21;
        v6 = v25;
      }

      v14 = sub_2231CA8(a3, v21, v6);
      goto LABEL_34;
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
        return v25;
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
      v6 = v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_34:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v25;
}

char *sub_1697510(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
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

    v4 = sub_16AB468(v6, v8, a3);
  }

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
      *v4 = 18;
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

      v4 = sub_1696858(v11, v13, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

uint64_t sub_16976B8(uint64_t a1)
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
      v7 = sub_1696A6C(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = sub_16AB580(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_1697794(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_16BDFE4((v3 + 24), v6, (v5 + 8), v4, **(v3 + 40) - *(v3 + 32));
    v7 = *(v3 + 32) + v4;
    *(v3 + 32) = v7;
    v8 = *(v3 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(v3 + 16) |= 1u;
    v10 = *(v3 + 48);
    if (!v10)
    {
      v11 = *(v3 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_16BAD9C(v12);
      *(v3 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_277D440;
    }

    result = sub_1336380(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4((v3 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_16978A4(uint64_t a1)
{
  result = sub_16978F8(a1 + 24);
  if (result)
  {
    return (*(a1 + 16) & 1) == 0 || (~*(*(a1 + 48) + 16) & 3) == 0;
  }

  return result;
}

uint64_t sub_16978F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 1) == 0 || (~*(*(*i + 24) + 16) & 3) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1697960(uint64_t a1)
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
  if (a1 != &off_277CDA8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16ABA70(v6);
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

void sub_1697A18(uint64_t a1)
{
  sub_1697960(a1);

  operator delete();
}

uint64_t sub_1697A50(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_169541C(*(result + 24));
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

char *sub_1697AAC(uint64_t a1, char *a2, int32x2_t *a3)
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

        sub_16BAE98(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_2231828(a3, v14, v6);
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

char *sub_1697BF0(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16ABD20(v6, v8, a3);
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

uint64_t sub_1697CFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_16ABEB4(*(a1 + 24));
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

std::string *sub_1697D7C(std::string *result, uint64_t a2)
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

      sub_16BAE98(v7);
      *(v3 + 24) = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277D4A0;
    }

    result = sub_1696248(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_1697E24(uint64_t a1)
{
  result = 1;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if ((*(v2 + 16) & 1) == 0 || (~*(*(v2 + 24) + 16) & 3) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1697E6C(uint64_t a1)
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

  if (a1 != &off_277CDC8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1696C8C(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16971A0(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1697960(v7);
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

void sub_1697F5C(uint64_t a1)
{
  sub_1697E6C(a1);

  operator delete();
}

uint64_t sub_1697F94(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      result = sub_1696D38(*(result + 24));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
LABEL_6:
          *(v1 + 48) = 2;
          goto LABEL_7;
        }

LABEL_5:
        result = sub_1697A50(*(v1 + 40));
        goto LABEL_6;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_169729C(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1698024(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_40;
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

          v22 = sub_169BA54(v24);
          *(a1 + 32) = v22;
          v6 = v29;
        }

        v15 = sub_2231EE8(a3, v22, v6);
      }

      else
      {
        if (v10 != 4 || v7 != 34)
        {
          goto LABEL_40;
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

          v16 = sub_169BAF0(v18);
          *(a1 + 40) = v16;
          v6 = v29;
        }

        v15 = sub_2231F78(a3, v16, v6);
      }
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v20 = v6 + 1;
          v19 = *v6;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
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
LABEL_31:
            v29 = v20;
          }

          if ((v19 - 2) > 2)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 48) = v19;
          }

          continue;
        }

LABEL_40:
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
            return v29;
          }

          return 0;
        }

        v26 = *(a1 + 8);
        if (v26)
        {
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v27 = sub_11F1920((a1 + 8));
          v6 = v29;
        }

        v15 = sub_1952690(v7, v27, v6, a3);
        goto LABEL_47;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_40;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 24);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_169B9D8(v14);
        *(a1 + 24) = v12;
        v6 = v29;
      }

      v15 = sub_2231E58(a3, v12, v6);
    }

LABEL_47:
    v29 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v29;
}

char *sub_16982AC(uint64_t a1, char *__dst, unint64_t *a3)
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
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
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

    v6 = sub_1696F40(v11, v13, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v14 = *(a1 + 32);
  *v6 = 26;
  v15 = *(v14 + 20);
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v6 + 1);
  }

  else
  {
    v16 = v6 + 2;
  }

  v6 = sub_1697510(v14, v16, a3);
  if ((v5 & 4) != 0)
  {
LABEL_26:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 40);
    *v6 = 34;
    v18 = *(v17 + 20);
    v6[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v6 + 1);
    }

    else
    {
      v19 = v6 + 2;
    }

    v6 = sub_1697BF0(v17, v19, a3);
  }

LABEL_32:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v23)
  {
    v25 = v23;
    memcpy(v6, v24, v23);
    v6 += v25;
    return v6;
  }

  return sub_1957130(a3, v24, v23, v6);
}

uint64_t sub_1698518(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_16970F0(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_16976B8(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_1697CFC(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v7 = *(a1 + 48);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v8;
LABEL_16:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1698654(std::string *result, uint64_t a2)
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

        data = sub_169B9D8(v8);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277CD48;
      }

      result = sub_121721C(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_28;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_169BA54(v12);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277CD70;
    }

    result = sub_1697794(v10, v13);
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
      *(v3 + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_28:
    *(v3 + 16) |= 4u;
    v14 = *(v3 + 40);
    if (!v14)
    {
      v15 = *(v3 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_169BAF0(v16);
      *(v3 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_277CDA8;
    }

    result = sub_1697D7C(v14, v17);
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

uint64_t sub_16987CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16978A4(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  result = 1;
  if ((v2 & 4) != 0)
  {
    v4 = *(a1 + 40);
    if (*(v4 + 16))
    {
      v5 = *(v4 + 24);
      if ((*(v5 + 16) & 1) == 0 || (~*(*(v5 + 24) + 16) & 3) != 0)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1698850(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
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

uint64_t sub_169887C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26FDC30;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = &qword_278E990;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 125) = 0;
  *(a1 + 136) = 1;
  return a1;
}

void sub_169890C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_169893C(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277CE00)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      sub_1692910(v6);
      operator delete();
    }

    v7 = *(a1 + 112);
    if (v7)
    {
      sub_16ABA70(v7);
      operator delete();
    }

    v8 = *(a1 + 120);
    if (v8)
    {
      sub_16AB5EC(v8);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_16BDA28((a1 + 72));
  sub_16BD9A4((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1698A68(uint64_t a1)
{
  sub_169893C(a1);

  operator delete();
}

uint64_t sub_1698AA0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1695598(v5);
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
      result = sub_1697F94(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 40);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    result = sub_1692A1C(*(a1 + 104));
    if ((v9 & 4) == 0)
    {
LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_26;
  }

  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_12:
  if ((v9 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_26:
  result = sub_169541C(*(a1 + 112));
  if ((v9 & 8) != 0)
  {
LABEL_14:
    result = sub_1698850(*(a1 + 120));
  }

LABEL_15:
  if ((v9 & 0x70) != 0)
  {
    *(a1 + 132) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 1;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 32) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_1698BD8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v58 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v58, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v58 + 1);
    v8 = **v58;
    if (**v58 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v58, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v58 + 2);
      }
    }

    *v58 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 <= 7)
    {
      if (v11 == 5)
      {
        if (v8 == 42)
        {
          *(a1 + 40) |= 8u;
          v42 = *(a1 + 120);
          if (!v42)
          {
            v43 = *(a1 + 8);
            v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
            if (v43)
            {
              v44 = *v44;
            }

            sub_16BAE18(v44);
            v42 = v45;
            *(a1 + 120) = v45;
            v7 = *v58;
          }

          v29 = sub_2232128(a3, v42, v7);
          goto LABEL_88;
        }
      }

      else if (v11 == 7 && v8 == 58)
      {
        *(a1 + 40) |= 1u;
        v30 = *(a1 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        v32 = sub_194DB04((a1 + 96), v31);
        v29 = sub_1958890(v32, *v58, a3);
        goto LABEL_88;
      }

      goto LABEL_79;
    }

    if (v11 == 8)
    {
      if (v8 != 64)
      {
        goto LABEL_79;
      }

      v5 |= 0x10u;
      v39 = v7 + 1;
      v40 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      v41 = *v39;
      v40 = v40 + (v41 << 7) - 128;
      if ((v41 & 0x80000000) == 0)
      {
        v39 = v7 + 2;
LABEL_67:
        *v58 = v39;
        *(a1 + 128) = v40;
        goto LABEL_89;
      }

      v54 = sub_1958770(v7, v40);
      *v58 = v54;
      *(a1 + 128) = v55;
      if (!v54)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v11 != 18)
      {
        if (v11 == 22 && v8 == 178)
        {
          v12 = v7 - 2;
          while (1)
          {
            v13 = v12 + 2;
            *v58 = v12 + 2;
            v14 = *(a1 + 88);
            if (v14 && (v15 = *(a1 + 80), v15 < *v14))
            {
              *(a1 + 80) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              sub_169BB68(*(a1 + 72));
              v16 = sub_19593CC(a1 + 72, v17);
              v13 = *v58;
            }

            v12 = sub_22321B8(a3, v16, v13);
            *v58 = v12;
            if (!v12)
            {
              goto LABEL_100;
            }

            if (*a3 <= v12 || *v12 != 434)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_79;
      }

      if (v8 != 144)
      {
        goto LABEL_79;
      }

      v5 |= 0x20u;
      v47 = v7 + 1;
      v46 = *v7;
      if ((v46 & 0x8000000000000000) == 0)
      {
        goto LABEL_78;
      }

      v48 = *v47;
      v46 = (v48 << 7) + v46 - 128;
      if ((v48 & 0x80000000) == 0)
      {
        v47 = v7 + 2;
LABEL_78:
        *v58 = v47;
        *(a1 + 132) = v46 != 0;
        goto LABEL_89;
      }

      v56 = sub_19587DC(v7, v46);
      *v58 = v56;
      *(a1 + 132) = v57 != 0;
      if (!v56)
      {
        goto LABEL_100;
      }
    }

LABEL_89:
    if (sub_195ADC0(a3, v58, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 2)
  {
    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 40) |= 2u;
        v33 = *(a1 + 104);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_169B6E0(v35);
          *(a1 + 104) = v33;
          v7 = *v58;
        }

        v29 = sub_2232008(a3, v33, v7);
        goto LABEL_88;
      }
    }

    else if (v11 == 2 && v8 == 18)
    {
      v19 = v7 - 1;
      while (1)
      {
        v20 = v19 + 1;
        *v58 = v19 + 1;
        v21 = *(a1 + 64);
        if (v21 && (v22 = *(a1 + 56), v22 < *v21))
        {
          *(a1 + 56) = v22 + 1;
          v23 = *&v21[2 * v22 + 2];
        }

        else
        {
          v24 = sub_169B8C0(*(a1 + 48));
          v23 = sub_19593CC(a1 + 48, v24);
          v20 = *v58;
        }

        v19 = sub_2232098(a3, v23, v20);
        *v58 = v19;
        if (!v19)
        {
          goto LABEL_100;
        }

        if (*a3 <= v19 || *v19 != 18)
        {
          goto LABEL_89;
        }
      }
    }

    goto LABEL_79;
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_79;
    }

    v5 |= 0x40u;
    v36 = v7 + 1;
    v37 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    v38 = *v36;
    v37 = v37 + (v38 << 7) - 128;
    if ((v38 & 0x80000000) == 0)
    {
      v36 = v7 + 2;
LABEL_62:
      *v58 = v36;
      *(a1 + 136) = v37;
      goto LABEL_89;
    }

    v52 = sub_1958770(v7, v37);
    *v58 = v52;
    *(a1 + 136) = v53;
    if (!v52)
    {
      goto LABEL_100;
    }

    goto LABEL_89;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 40) |= 4u;
    v25 = *(a1 + 112);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_16BAE98(v27);
      v25 = v28;
      *(a1 + 112) = v28;
      v7 = *v58;
    }

    v29 = sub_2231828(a3, v25, v7);
LABEL_88:
    *v58 = v29;
    if (!v29)
    {
      goto LABEL_100;
    }

    goto LABEL_89;
  }

LABEL_79:
  if (v8)
  {
    v49 = (v8 & 7) == 4;
  }

  else
  {
    v49 = 1;
  }

  if (!v49)
  {
    if (v8 - 7600 > 0x18F)
    {
      v50 = *(a1 + 8);
      if (v50)
      {
        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v51 = sub_11F1920((a1 + 8));
        v7 = *v58;
      }

      v29 = sub_1952690(v8, v51, v7, a3);
    }

    else
    {
      v29 = sub_19525AC((a1 + 16), v8, v7, &off_277CE00, (a1 + 8), a3);
    }

    goto LABEL_88;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_100:
  *v58 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v58;
}

char *sub_1699100(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 104);
    *v4 = 10;
    v8 = *(v7 + 20);
    *(v4 + 1) = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, (v4 + 1));
    }

    else
    {
      v9 = (v4 + 2);
    }

    v4 = sub_1693278(v7, v9, a3);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 18;
      v13 = *(v12 + 20);
      *(v4 + 1) = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, (v4 + 1));
      }

      else
      {
        v14 = (v4 + 2);
      }

      v4 = sub_1695878(v12, v14, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 136);
    *v4 = 24;
    *(v4 + 1) = v16;
    if (v16 > 0x7F)
    {
      *(v4 + 1) = v16 | 0x80;
      v17 = v16 >> 7;
      *(v4 + 2) = v16 >> 7;
      v15 = (v4 + 3);
      if (v16 >= 0x4000)
      {
        LOBYTE(v4) = *(v4 + 2);
        do
        {
          *(v15 - 1) = v4 | 0x80;
          LODWORD(v4) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = (v4 + 2);
    }
  }

  else
  {
    v15 = v4;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 112);
    *v15 = 34;
    v21 = *(v20 + 20);
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v15 + 1);
    }

    else
    {
      v22 = v15 + 2;
    }

    v15 = sub_16ABD20(v20, v22, a3);
    if ((v6 & 8) == 0)
    {
LABEL_27:
      if ((v6 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_42:
      v15 = sub_128AEEC(a3, 7, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_27;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v23 = *(a1 + 120);
  *v15 = 42;
  v24 = *(v23 + 20);
  v15[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v15 + 1);
  }

  else
  {
    v25 = v15 + 2;
  }

  v15 = sub_16AB854(v23, v25, a3);
  if (v6)
  {
    goto LABEL_42;
  }

LABEL_28:
  if ((v6 & 0x10) == 0)
  {
LABEL_29:
    v19 = v15;
    goto LABEL_50;
  }

LABEL_43:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v26 = *(a1 + 128);
  *v15 = 64;
  v15[1] = v26;
  if (v26 > 0x7F)
  {
    v15[1] = v26 | 0x80;
    v27 = v26 >> 7;
    v15[2] = v26 >> 7;
    v19 = v15 + 3;
    if (v26 >= 0x4000)
    {
      LOBYTE(v28) = v15[2];
      do
      {
        *(v19 - 1) = v28 | 0x80;
        v28 = v27 >> 7;
        *v19++ = v27 >> 7;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
    }
  }

  else
  {
    v19 = v15 + 2;
  }

LABEL_50:
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v30 = *(a1 + 132);
    *v19 = 400;
    v19[2] = v30;
    v19 += 3;
  }

  v31 = *(a1 + 80);
  if (v31)
  {
    for (j = 0; j != v31; ++j)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v33 = *(*(a1 + 88) + 8 * j + 8);
      *v19 = 434;
      v34 = *(v33 + 20);
      v19[2] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v19 + 2);
      }

      else
      {
        v35 = v19 + 3;
      }

      v19 = sub_16982AC(v33, v35, a3);
    }
  }

  if (*(a1 + 26))
  {
    v19 = sub_1953428(a1 + 16, 950, 1000, v19, a3);
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v19;
  }

  v38 = v36 & 0xFFFFFFFFFFFFFFFCLL;
  v39 = *(v38 + 31);
  if (v39 < 0)
  {
    v40 = *(v38 + 8);
    v39 = *(v38 + 16);
  }

  else
  {
    v40 = (v38 + 8);
  }

  if ((*a3 - v19) >= v39)
  {
    v41 = v39;
    memcpy(v19, v40, v39);
    v19 += v41;
    return v19;
  }

  return sub_1957130(a3, v40, v39, v19);
}

uint64_t sub_1699588(uint64_t a1)
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
      v9 = sub_1695A84(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + 2 * v10;
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
      v16 = sub_1698518(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 40);
  if ((v17 & 0x7F) != 0)
  {
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

        goto LABEL_30;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_16;
    }

    v23 = sub_16937D8(*(a1 + 104));
    v11 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 4) == 0)
    {
LABEL_17:
      if ((v17 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }

LABEL_30:
    v24 = sub_16ABEB4(*(a1 + 112));
    v11 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 8) == 0)
    {
LABEL_18:
      if ((v17 & 0x10) == 0)
      {
LABEL_20:
        if ((v17 & 0x20) != 0)
        {
          v11 += 3;
        }

        if ((v17 & 0x40) != 0)
        {
          v11 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        goto LABEL_24;
      }

LABEL_19:
      v11 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_20;
    }

LABEL_31:
    v25 = sub_16AB9EC(*(a1 + 120));
    v11 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_24:
  v18 = *(a1 + 8);
  if (v18)
  {
    v26 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v27 < 0)
    {
      v27 = *(v26 + 16);
    }

    v11 += v27;
  }

  *(a1 + 44) = v11;
  return v11;
}

void sub_16997D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_16BE070((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_16BE0FC((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0x7F) != 0)
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

        goto LABEL_32;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 40) |= 2u;
    v19 = *(a1 + 104);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_169B6E0(v21);
      *(a1 + 104) = v19;
    }

    if (*(a2 + 104))
    {
      v22 = *(a2 + 104);
    }

    else
    {
      v22 = &off_277CC28;
    }

    sub_1693A1C(v19, v22);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }

LABEL_32:
    *(a1 + 40) |= 4u;
    v23 = *(a1 + 112);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      sub_16BAE98(v25);
      *(a1 + 112) = v23;
    }

    if (*(a2 + 112))
    {
      v26 = *(a2 + 112);
    }

    else
    {
      v26 = &off_277D4A0;
    }

    sub_1696248(v23, v26);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_48;
    }

LABEL_40:
    *(a1 + 40) |= 8u;
    v27 = *(a1 + 120);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      sub_16BAE18(v29);
      *(a1 + 120) = v27;
    }

    if (*(a2 + 120))
    {
      v30 = *(a2 + 120);
    }

    else
    {
      v30 = &off_277D468;
    }

    sub_15FB28C(v27, v30);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(a1 + 128) = *(a2 + 128);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
LABEL_16:
        *(a1 + 40) |= v14;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 136) = *(a2 + 136);
      goto LABEL_16;
    }

LABEL_49:
    *(a1 + 132) = *(a2 + 132);
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1699A68(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    while (v3 >= 1)
    {
      v5 = v3 - 1;
      v6 = sub_1696330(*(v4 + 8 * v3));
      v3 = v5;
      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    v7 = *(a1 + 80);
    while (v7 >= 1)
    {
      v8 = v7 - 1;
      v9 = sub_16987CC(*(*(a1 + 88) + 8 * v7));
      v7 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 4) == 0)
    {
      return 1;
    }

    v10 = *(a1 + 112);
    return (*(v10 + 16) & 1) != 0 && (~*(*(v10 + 24) + 16) & 3) == 0;
  }

  return result;
}

uint64_t sub_1699B30(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26FDCB0;
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
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = &qword_278E990;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  return a1;
}

void sub_1699BCC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1699BFC(uint64_t a1)
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

  v5 = (a1 + 184);
  if (*(a1 + 184) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 168);
  sub_16BDC38((a1 + 144));
  sub_16BDBB4((a1 + 120));
  sub_16BDBB4((a1 + 96));
  sub_16BDB30((a1 + 72));
  sub_16BDAAC((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1699CE8(uint64_t a1)
{
  sub_1699BFC(a1);

  operator delete();
}

uint64_t sub_1699D20(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16905BC(v5);
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
      result = sub_169BCA4(v8);
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
      result = sub_1693D98(v11);
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
      result = sub_1693D98(v14);
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
      result = sub_1694D94(v17);
      --v15;
    }

    while (v15);
    *(a1 + 152) = 0;
  }

  *(a1 + 168) = 0;
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v19 + 23) < 0)
    {
      **v19 = 0;
      *(v19 + 8) = 0;
    }

    else
    {
      *v19 = 0;
      *(v19 + 23) = 0;
    }
  }

  if ((v18 & 0x1E) != 0)
  {
    *(a1 + 200) = 0;
    *(a1 + 192) = 0;
  }

  v21 = *(a1 + 8);
  v20 = a1 + 8;
  *(v20 + 32) = 0;
  if (v21)
  {

    return sub_1957EA8(v20);
  }

  return result;
}

uint64_t sub_1699E8C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v80 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v80, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = (*v80 + 1);
    v10 = **v80;
    if (**v80 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v80, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v80 + 2);
      }
    }

    *v80 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 > 5)
    {
      if (v10 >> 3 <= 9)
      {
        if (v14 != 6)
        {
          if (v14 != 7)
          {
            if (v14 == 9 && v10 == 74)
            {
              v15 = v9 - 1;
              while (1)
              {
                v16 = v15 + 1;
                *v80 = v15 + 1;
                v17 = *(a1 + 112);
                if (v17 && (v18 = *(a1 + 104), v18 < *v17))
                {
                  *(a1 + 104) = v18 + 1;
                  v19 = *&v17[2 * v18 + 2];
                }

                else
                {
                  sub_169B7A0(*(a1 + 96));
                  v19 = sub_19593CC(a1 + 96, v20);
                  v16 = *v80;
                }

                v15 = sub_2232368(a3, v19, v16);
                *v80 = v15;
                if (!v15)
                {
                  goto LABEL_153;
                }

                if (*a3 <= v15 || *v15 != 74)
                {
                  goto LABEL_146;
                }
              }
            }

LABEL_136:
            if (v10)
            {
              v78 = (v10 & 7) == 4;
            }

            else
            {
              v78 = 1;
            }

            if (v78)
            {
              if (!v9)
              {
                goto LABEL_153;
              }

              a3[10].i32[0] = v10 - 1;
              goto LABEL_2;
            }

            if (v10 - 7600 > 0x18F)
            {
              if (*v8)
              {
                v79 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
              }

              else
              {
                v79 = sub_11F1920((a1 + 8));
                v9 = *v80;
              }

              v65 = sub_1952690(v10, v79, v9, a3);
            }

            else
            {
              v65 = sub_19525AC((a1 + 16), v10, v9, &off_277CE90, (a1 + 8), a3);
            }

            goto LABEL_145;
          }

          if (v10 != 56)
          {
            goto LABEL_136;
          }

          v6 |= 0x10u;
          v48 = v9 + 1;
          v47 = *v9;
          if (v47 < 0)
          {
            v49 = *v48;
            v47 = (v49 << 7) + v47 - 128;
            if (v49 < 0)
            {
              v74 = sub_19587DC(v9, v47);
              *v80 = v74;
              *(a1 + 201) = v75 != 0;
              if (!v74)
              {
                goto LABEL_153;
              }

              goto LABEL_146;
            }

            v48 = v9 + 2;
          }

          *v80 = v48;
          *(a1 + 201) = v47 != 0;
          goto LABEL_146;
        }

        if (v10 != 50)
        {
          goto LABEL_136;
        }

        *(a1 + 40) |= 1u;
        v62 = *(a1 + 8);
        v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
        if (v62)
        {
          v63 = *v63;
        }

        v64 = sub_194DB04((a1 + 184), v63);
        v65 = sub_1958890(v64, *v80, a3);
LABEL_145:
        *v80 = v65;
        if (!v65)
        {
          goto LABEL_153;
        }

        goto LABEL_146;
      }

      if (v14 == 10)
      {
        if (v10 == 82)
        {
          v66 = v9 - 1;
          while (1)
          {
            v67 = v66 + 1;
            *v80 = v66 + 1;
            v68 = *(a1 + 136);
            if (v68 && (v69 = *(a1 + 128), v69 < *v68))
            {
              *(a1 + 128) = v69 + 1;
              v70 = *&v68[2 * v69 + 2];
            }

            else
            {
              sub_169B7A0(*(a1 + 120));
              v70 = sub_19593CC(a1 + 120, v71);
              v67 = *v80;
            }

            v66 = sub_2232368(a3, v70, v67);
            *v80 = v66;
            if (!v66)
            {
              goto LABEL_153;
            }

            if (*a3 <= v66 || *v66 != 82)
            {
              goto LABEL_146;
            }
          }
        }

        goto LABEL_136;
      }

      if (v14 == 11)
      {
        if (v10 == 90)
        {
          v50 = v9 - 1;
          while (1)
          {
            v51 = v50 + 1;
            *v80 = v50 + 1;
            v52 = *(a1 + 160);
            if (v52 && (v53 = *(a1 + 152), v53 < *v52))
            {
              *(a1 + 152) = v53 + 1;
              v54 = *&v52[2 * v53 + 2];
            }

            else
            {
              sub_169B840(*(a1 + 144));
              v54 = sub_19593CC(a1 + 144, v55);
              v51 = *v80;
            }

            v50 = sub_22323F8(a3, v54, v51);
            *v80 = v50;
            if (!v50)
            {
              goto LABEL_153;
            }

            if (*a3 <= v50 || *v50 != 90)
            {
              goto LABEL_146;
            }
          }
        }

        goto LABEL_136;
      }

      if (v14 != 13)
      {
        goto LABEL_136;
      }

      if (v10 != 104)
      {
        if (v10 != 106)
        {
          goto LABEL_136;
        }

        *&v81 = a1 + 168;
        *(&v81 + 1) = sub_168C730;
        v82 = a1 + 8;
        v83 = 13;
        v65 = sub_1216588(a3, v9, &v81, v5);
        goto LABEL_145;
      }

      v24 = (v9 - 1);
      while (1)
      {
        *v80 = v24 + 1;
        v25 = *(v24 + 1);
        v26 = (v24 + 2);
        if (v25 < 0)
        {
          v27 = *v26;
          v28 = (v27 << 7) + v25;
          LODWORD(v25) = v28 - 128;
          if (v27 < 0)
          {
            *v80 = sub_19587DC(v24 + 1, (v28 - 128));
            if (!*v80)
            {
              goto LABEL_153;
            }

            LODWORD(v25) = v31;
            goto LABEL_41;
          }

          v26 = (v24 + 3);
        }

        *v80 = v26;
LABEL_41:
        if (v25 > 5)
        {
          sub_13B6734();
        }

        else
        {
          v29 = *(a1 + 168);
          if (v29 == *(a1 + 172))
          {
            v30 = v29 + 1;
            sub_1958E5C((a1 + 168), v29 + 1);
            *(*(a1 + 176) + 4 * v29) = v25;
          }

          else
          {
            *(*(a1 + 176) + 4 * v29) = v25;
            v30 = v29 + 1;
          }

          *(a1 + 168) = v30;
        }

        v24 = *v80;
        if (*a3 <= *v80 || **v80 != 104)
        {
          goto LABEL_146;
        }
      }
    }

    if (v10 >> 3 <= 2)
    {
      break;
    }

    if (v14 == 3)
    {
      if (v10 == 26)
      {
        v56 = v9 - 1;
        while (1)
        {
          v57 = v56 + 1;
          *v80 = v56 + 1;
          v58 = *(a1 + 88);
          if (v58 && (v59 = *(a1 + 80), v59 < *v58))
          {
            *(a1 + 80) = v59 + 1;
            v60 = *&v58[2 * v59 + 2];
          }

          else
          {
            v61 = sub_16BBB64(*(a1 + 72));
            v60 = sub_19593CC(a1 + 72, v61);
            v57 = *v80;
          }

          v56 = sub_22322D8(a3, v60, v57);
          *v80 = v56;
          if (!v56)
          {
            goto LABEL_153;
          }

          if (*a3 <= v56 || *v56 != 26)
          {
            goto LABEL_146;
          }
        }
      }

      goto LABEL_136;
    }

    if (v14 == 4)
    {
      if (v10 != 32)
      {
        goto LABEL_136;
      }

      v45 = v9 + 1;
      v44 = *v9;
      if (v44 < 0)
      {
        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if ((v46 & 0x80000000) == 0)
        {
          v45 = v9 + 2;
          goto LABEL_81;
        }

        *v80 = sub_19587DC(v9, v44);
        if (!*v80)
        {
          goto LABEL_153;
        }
      }

      else
      {
LABEL_81:
        *v80 = v45;
      }

      if (v44 > 2)
      {
        sub_1348E78();
      }

      else
      {
        *(a1 + 40) |= 4u;
        *(a1 + 196) = v44;
      }

      goto LABEL_146;
    }

    if (v14 != 5 || v10 != 40)
    {
      goto LABEL_136;
    }

    v6 |= 8u;
    v22 = v9 + 1;
    v21 = *v9;
    if (v21 < 0)
    {
      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if (v23 < 0)
      {
        v76 = sub_19587DC(v9, v21);
        *v80 = v76;
        *(a1 + 200) = v77 != 0;
        if (!v76)
        {
          goto LABEL_153;
        }

        goto LABEL_146;
      }

      v22 = v9 + 2;
    }

    *v80 = v22;
    *(a1 + 200) = v21 != 0;
LABEL_146:
    if (sub_195ADC0(a3, v80, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v14 == 1)
  {
    if (v10 != 8)
    {
      goto LABEL_136;
    }

    v39 = v9 + 1;
    v40 = *v9;
    if ((v40 & 0x8000000000000000) != 0)
    {
      v41 = *v39;
      v42 = (v41 << 7) + v40;
      v40 = (v42 - 128);
      if (v41 < 0)
      {
        *v80 = sub_19587DC(v9, (v42 - 128));
        if (!*v80)
        {
          goto LABEL_153;
        }

        v40 = v73;
        goto LABEL_72;
      }

      v39 = v9 + 2;
    }

    *v80 = v39;
LABEL_72:
    if (v40 > 0x1E || ((1 << v40) & 0x40100023) == 0)
    {
      if (*v8)
      {
        v72 = ((*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v72 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(1, v40, v72);
    }

    else
    {
      *(a1 + 40) |= 2u;
      *(a1 + 192) = v40;
    }

    goto LABEL_146;
  }

  if (v14 != 2 || v10 != 18)
  {
    goto LABEL_136;
  }

  v33 = v9 - 1;
  while (1)
  {
    v34 = v33 + 1;
    *v80 = v33 + 1;
    v35 = *(a1 + 64);
    if (v35 && (v36 = *(a1 + 56), v36 < *v35))
    {
      *(a1 + 56) = v36 + 1;
      v37 = *&v35[2 * v36 + 2];
    }

    else
    {
      v38 = sub_169B608(*(a1 + 48));
      v37 = sub_19593CC(a1 + 48, v38);
      v34 = *v80;
    }

    v33 = sub_2232248(a3, v37, v34);
    *v80 = v33;
    if (!v33)
    {
      break;
    }

    if (*a3 <= v33 || *v33 != 18)
    {
      goto LABEL_146;
    }
  }

LABEL_153:
  *v80 = 0;
LABEL_2:
  *(a1 + 40) |= v6;
  return *v80;
}

char *sub_169A678(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 192);
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

      v6 = sub_16910FC(v13, v15, a3);
    }
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v18 = *(*(a1 + 88) + 8 * j + 8);
      *v6 = 26;
      v19 = *(v18 + 20);
      v6[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, v6 + 1);
      }

      else
      {
        v20 = v6 + 2;
      }

      v6 = sub_16BA98C(v18, v20, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 196);
    *v6 = 32;
    v6[1] = v22;
    if (v22 > 0x7F)
    {
      v6[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v6[2] = v22 >> 7;
      v21 = v6 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v21 - 1) = v6 | 0x80;
          v6 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v6 + 2;
    }
  }

  else
  {
    v21 = v6;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v25 = *(a1 + 200);
    *v21 = 40;
    v21[1] = v25;
    v21 += 2;
    if ((v5 & 1) == 0)
    {
LABEL_37:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_37;
  }

  v21 = sub_128AEEC(a3, 6, (*(a1 + 184) & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v26 = *(a1 + 201);
  *v21 = 56;
  v21[1] = v26;
  v21 += 2;
LABEL_46:
  v27 = *(a1 + 104);
  if (v27)
  {
    for (k = 0; k != v27; ++k)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v29 = *(*(a1 + 112) + 8 * k + 8);
      *v21 = 74;
      v30 = *(v29 + 20);
      v21[1] = v30;
      if (v30 > 0x7F)
      {
        v31 = sub_19575D0(v30, v21 + 1);
      }

      else
      {
        v31 = v21 + 2;
      }

      v21 = sub_16943D4(v29, v31, a3);
    }
  }

  v32 = *(a1 + 128);
  if (v32)
  {
    for (m = 0; m != v32; ++m)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v34 = *(*(a1 + 136) + 8 * m + 8);
      *v21 = 82;
      v35 = *(v34 + 20);
      v21[1] = v35;
      if (v35 > 0x7F)
      {
        v36 = sub_19575D0(v35, v21 + 1);
      }

      else
      {
        v36 = v21 + 2;
      }

      v21 = sub_16943D4(v34, v36, a3);
    }
  }

  v37 = *(a1 + 152);
  if (v37)
  {
    for (n = 0; n != v37; ++n)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v39 = *(*(a1 + 160) + 8 * n + 8);
      *v21 = 90;
      v40 = *(v39 + 20);
      v21[1] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v21 + 1);
      }

      else
      {
        v41 = v21 + 2;
      }

      v21 = sub_1695000(v39, v41, a3);
    }
  }

  v42 = *(a1 + 168);
  if (v42 < 1)
  {
    v45 = v21;
  }

  else
  {
    for (ii = 0; ii != v42; ++ii)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v44 = *(*(a1 + 176) + 4 * ii);
      *v21 = 104;
      v21[1] = v44;
      if (v44 > 0x7F)
      {
        v21[1] = v44 | 0x80;
        v46 = v44 >> 7;
        v21[2] = v44 >> 7;
        v45 = v21 + 3;
        if (v44 >= 0x4000)
        {
          LOBYTE(v47) = v21[2];
          do
          {
            *(v45 - 1) = v47 | 0x80;
            v47 = v46 >> 7;
            *v45++ = v46 >> 7;
            v48 = v46 >> 14;
            v46 >>= 7;
          }

          while (v48);
        }
      }

      else
      {
        v45 = v21 + 2;
      }

      v21 = v45;
    }
  }

  if (*(a1 + 26))
  {
    v45 = sub_1953428(a1 + 16, 950, 1000, v45, a3);
  }

  v49 = *(a1 + 8);
  if ((v49 & 1) == 0)
  {
    return v45;
  }

  v51 = v49 & 0xFFFFFFFFFFFFFFFCLL;
  v52 = *(v51 + 31);
  if (v52 < 0)
  {
    v53 = *(v51 + 8);
    v52 = *(v51 + 16);
  }

  else
  {
    v53 = (v51 + 8);
  }

  if ((*a3 - v45) >= v52)
  {
    v54 = v52;
    memcpy(v45, v53, v52);
    v45 += v54;
    return v45;
  }

  return sub_1957130(a3, v53, v52, v45);
}

uint64_t sub_169AC38(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  if ((*(a1 + 40) & 2) != 0)
  {
    v3 = *(a1 + 192);
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

  v6 = *(a1 + 56);
  v7 = v2 + v6;
  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = sub_1691AA8(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(a1 + 80);
  v14 = v7 + v13;
  v15 = *(a1 + 88);
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
      v19 = sub_16BABEC(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 104);
  v21 = v14 + v20;
  v22 = *(a1 + 112);
  if (v22)
  {
    v23 = (v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = 8 * v20;
    do
    {
      v25 = *v23++;
      v26 = sub_16947EC(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(a1 + 128);
  v28 = v21 + v27;
  v29 = *(a1 + 136);
  if (v29)
  {
    v30 = (v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  if (v27)
  {
    v31 = 8 * v27;
    do
    {
      v32 = *v30++;
      v33 = sub_16947EC(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 152);
  v35 = v28 + v34;
  v36 = *(a1 + 160);
  if (v36)
  {
    v37 = (v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  if (v34)
  {
    v38 = 8 * v34;
    do
    {
      v39 = *v37++;
      v40 = sub_16951B0(v39);
      v35 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6);
      v38 -= 8;
    }

    while (v38);
  }

  v41 = *(a1 + 168);
  if (v41)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = *(*(a1 + 176) + 4 * v42);
      if (v44 < 0)
      {
        v45 = 10;
      }

      else
      {
        v45 = (9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6;
      }

      v43 += v45;
      ++v42;
    }

    while (v41 != v42);
  }

  else
  {
    v43 = 0;
  }

  result = v35 + v41 + v43;
  v47 = *(a1 + 40);
  if (v47)
  {
    v48 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    v49 = *(v48 + 23);
    v50 = *(v48 + 8);
    if ((v49 & 0x80u) == 0)
    {
      v50 = v49;
    }

    result += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v47 & 0x1C) != 0)
  {
    if ((v47 & 4) != 0)
    {
      v51 = *(a1 + 196);
      v52 = ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v51 >= 0)
      {
        v53 = v52;
      }

      else
      {
        v53 = 11;
      }

      result += v53;
    }

    result += ((v47 >> 3) & 2) + ((v47 >> 2) & 2);
  }

  v54 = *(a1 + 8);
  if (v54)
  {
    v55 = v54 & 0xFFFFFFFFFFFFFFFCLL;
    v56 = *((v54 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v56 < 0)
    {
      v56 = *(v55 + 16);
    }

    result += v56;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_169AF50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_16BE188((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_16BE214((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_16BE2A0((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_16BE2A0((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_16BE32C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
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

  v32 = *(a2 + 40);
  if ((v32 & 0x1F) != 0)
  {
    if (v32)
    {
      v34 = *(a2 + 184);
      *(a1 + 40) |= 1u;
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_194EA1C((a1 + 184), (v34 & 0xFFFFFFFFFFFFFFFELL), v36);
      if ((v32 & 2) == 0)
      {
LABEL_21:
        if ((v32 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }
    }

    else if ((v32 & 2) == 0)
    {
      goto LABEL_21;
    }

    *(a1 + 192) = *(a2 + 192);
    if ((v32 & 4) == 0)
    {
LABEL_22:
      if ((v32 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 196) = *(a2 + 196);
    if ((v32 & 8) == 0)
    {
LABEL_23:
      if ((v32 & 0x10) == 0)
      {
LABEL_25:
        *(a1 + 40) |= v32;
        goto LABEL_26;
      }

LABEL_24:
      *(a1 + 201) = *(a2 + 201);
      goto LABEL_25;
    }

LABEL_35:
    *(a1 + 200) = *(a2 + 200);
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_26:
  sub_225EA0C(a1 + 16, a2 + 16);
  v33 = *(a2 + 8);
  if (v33)
  {

    sub_1957EF4((a1 + 8), (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_169B25C(uint64_t a1)
{
  if (!sub_195228C(a1 + 16) || (*(a1 + 40) & 2) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_169240C(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  while (v5 >= 1)
  {
    v7 = v5 - 1;
    v8 = sub_169BE84(*(v6 + 8 * v5));
    v5 = v7;
    if (!v8)
    {
      return 0;
    }
  }

  if (!sub_169B31C(a1 + 96))
  {
    return 0;
  }

  return sub_169B31C(a1 + 120);
}

uint64_t sub_169B31C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 0x10) == 0 || (~*(*(*i + 56) + 16) & 3) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_169B384(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FD430;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_169B400(uint64_t *a1)
{
  if (!a1)
  {

    sub_16BE3A8();
  }

  return sub_168CDC4(v3, a1, 0);
}

uint64_t sub_169B45C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FD530;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_169B4FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FD5B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_169B588(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FD630;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = -1;
  return result;
}

uint64_t sub_169B608(uint64_t *a1)
{
  if (!a1)
  {

    sub_16BE414();
  }

  return sub_1690350(v3, a1, 0);
}

uint64_t sub_169B664(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FD730;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_169B6E0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FD7B0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0xC350000000000;
  *(result + 72) = 257;
  *(result + 76) = 1;
  return result;
}

double sub_169B7A0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FD830;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 81) = 0u;
  *(v2 + 100) = 1;
  return result;
}

double sub_169B840(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FD8B0;
  result = 0.0;
  *(v2 + 16) = xmmword_23365C0;
  return result;
}

uint64_t sub_169B8C0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FD930;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

void *sub_169B95C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FD9B0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_169B9D8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FDA30;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_169BA54(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FDAB0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_169BAF0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FDB30;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_169BB68(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FDBB0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 2;
  return result;
}

uint64_t sub_169BBEC(uint64_t *a1)
{
  if (!a1)
  {

    sub_16BE480();
  }

  return sub_169887C(v3, a1, 0);
}

uint64_t sub_169BC48(uint64_t *a1)
{
  if (!a1)
  {

    sub_16BE4EC();
  }

  return sub_1699B30(v3, a1, 0);
}

uint64_t sub_169BCA4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_168C3F0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    result = sub_1698850(*(v1 + 48));
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
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

void sub_169BD40(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_16C01FC((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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

        sub_16BAE18(v13);
        *(result + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_277D468;
      }

      sub_15FB28C(v11, v14);
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
        *(result + 64) = *(a2 + 64);
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

BOOL sub_169BE84(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  do
  {
    v1 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_168C68C(*(v3 + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v1;
}

void *sub_169BEE4(void *a1)
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

void sub_169BF58(void *a1)
{
  sub_169BEE4(a1);

  operator delete();
}

uint64_t sub_169BF90(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
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

char *sub_169BFB8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 7)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_32;
      }

      v5 |= 1u;
      v19 = v7 + 1;
      v18 = *v7;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_26:
        v35 = v19;
        *(a1 + 24) = v18;
        goto LABEL_39;
      }

      v31 = sub_19587DC(v7, v18);
      v35 = v31;
      *(a1 + 24) = v32;
      if (!v31)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_32;
      }

      v5 |= 4u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_14:
        v35 = v13;
        *(a1 + 36) = v12 != 0;
        goto LABEL_39;
      }

      v27 = sub_19587DC(v7, v12);
      v35 = v27;
      *(a1 + 36) = v28 != 0;
      if (!v27)
      {
        goto LABEL_52;
      }
    }

LABEL_39:
    if (sub_195ADC0(a3, &v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 8)
  {
    if (v8 != 64)
    {
      goto LABEL_32;
    }

    v5 |= 8u;
    v21 = v7 + 1;
    v22 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v23 = *v21;
    v22 = v22 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_31:
      v35 = v21;
      *(a1 + 40) = v22;
      goto LABEL_39;
    }

    v33 = sub_1958770(v7, v22);
    v35 = v33;
    *(a1 + 40) = v34;
    if (!v33)
    {
      goto LABEL_52;
    }

    goto LABEL_39;
  }

  if (v11 == 2047 && v8 == 248)
  {
    v5 |= 2u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_21:
      v35 = v15;
      *(a1 + 32) = v16;
      goto LABEL_39;
    }

    v29 = sub_1958770(v7, v16);
    v35 = v29;
    *(a1 + 32) = v30;
    if (!v29)
    {
      goto LABEL_52;
    }

    goto LABEL_39;
  }

LABEL_32:
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
      goto LABEL_52;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

char *sub_169C280(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 24;
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 36);
    *v6 = 56;
    v6[1] = v11;
    v6 += 2;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 40);
    *v6 = 64;
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v6[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v6[2] = v13 >> 7;
      v12 = v6 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v12 - 1) = v6 | 0x80;
          LODWORD(v6) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v6 + 2;
    }
  }

  else
  {
    v12 = v6;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 32);
    *v12 = 32760;
    v12[2] = v17;
    if (v17 > 0x7F)
    {
      v12[2] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[3] = v17 >> 7;
      v16 = v12 + 4;
      if (v17 >= 0x4000)
      {
        LOBYTE(v12) = v12[3];
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
      v16 = v12 + 3;
    }
  }

  else
  {
    v16 = v12;
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

unint64_t sub_169C4F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_8:
  v3 = v2 + ((v1 >> 1) & 2);
  if ((v1 & 8) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

uint64_t sub_169C5D8(uint64_t a1)
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

  if (a1 != &off_277CF60)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_168F41C(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_168F41C(v6);
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