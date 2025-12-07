uint64_t sub_141A3A4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_141A3D4(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_141A3D4(uint64_t a1)
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
    result = sub_144F560(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 80));
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

  result = sub_144F560(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_141A470(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E0D08;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = &qword_278E990;
  a1[7] = &qword_278E990;
  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void sub_141A4E4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_141A514(uint64_t a1)
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

void sub_141A5D4(uint64_t a1)
{
  sub_141A514(a1);

  operator delete();
}

unsigned __int8 *sub_141A60C(uint64_t a1)
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
  if ((v3 & 0x1C) != 0)
  {
    *(a1 + 64) = 0;
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

uint64_t sub_141A6D4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 != 4)
        {
          if (v11 == 5 && v8 == 42)
          {
            *(a1 + 40) |= 2u;
            v12 = *(a1 + 8);
            v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
            if (v12)
            {
              v13 = *v13;
            }

            v14 = (a1 + 56);
            goto LABEL_43;
          }

          goto LABEL_47;
        }

        if (v8 != 32)
        {
          goto LABEL_47;
        }

        v22 = v7 + 1;
        v23 = *v7;
        if (v23 < 0)
        {
          v24 = *v22;
          v25 = (v24 << 7) + v23;
          LODWORD(v23) = v25 - 128;
          if (v24 < 0)
          {
            *v35 = sub_19587DC(v7, (v25 - 128));
            if (!*v35)
            {
              goto LABEL_67;
            }

            LODWORD(v23) = v32;
            goto LABEL_37;
          }

          v22 = v7 + 2;
        }

        *v35 = v22;
LABEL_37:
        if (sub_13560D8(v23))
        {
          *(a1 + 40) |= 0x10u;
          *(a1 + 76) = v23;
        }

        else
        {
          sub_12E8500();
        }

        goto LABEL_45;
      }

      if (v8 != 24)
      {
        goto LABEL_47;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v35 = sub_19587DC(v7, v19);
          if (!*v35)
          {
            goto LABEL_67;
          }

          goto LABEL_30;
        }

        v20 = v7 + 2;
      }

      *v35 = v20;
LABEL_30:
      if (v19 > 4)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 40) |= 8u;
        *(a1 + 72) = v19;
      }

      goto LABEL_45;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_47;
    }

    v5 |= 4u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_24:
      *v35 = v17;
      *(a1 + 64) = v16;
      goto LABEL_45;
    }

    v33 = sub_19587DC(v7, v16);
    *v35 = v33;
    *(a1 + 64) = v34;
    if (!v33)
    {
      goto LABEL_67;
    }

LABEL_45:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 40) |= 1u;
    v26 = *(a1 + 8);
    v13 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v13 = *v13;
    }

    v14 = (a1 + 48);
LABEL_43:
    v27 = sub_194DB04(v14, v13);
    v28 = sub_1958890(v27, *v35, a3);
LABEL_44:
    *v35 = v28;
    if (!v28)
    {
      goto LABEL_67;
    }

    goto LABEL_45;
  }

LABEL_47:
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
    if (v8 - 7600 > 0x18F)
    {
      v30 = *(a1 + 8);
      if (v30)
      {
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v31 = sub_11F1920((a1 + 8));
        v7 = *v35;
      }

      v28 = sub_1952690(v8, v31, v7, a3);
    }

    else
    {
      v28 = sub_19525AC((a1 + 16), v8, v7, &off_2770348, (a1 + 8), a3);
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_67:
  *v35 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v35;
}

char *sub_141AA28(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 64);
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

    v13 = *(a1 + 72);
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

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 76);
    *v12 = 32;
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v12[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v12[2] = v18 >> 7;
      v17 = v12 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v17 - 1) = v12 | 0x80;
          v12 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v12 + 2;
    }
  }

  else
  {
    v17 = v12;
  }

  if ((v6 & 2) != 0)
  {
    v17 = sub_128AEEC(a3, 5, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v17);
  }

  if (*(a1 + 26))
  {
    v17 = sub_1953428(a1 + 16, 950, 1000, v17, a3);
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

uint64_t sub_141ACC4(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_23;
  }

  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  v9 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  result += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_15:
  v10 = *(a1 + 72);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v11;
  if ((v3 & 0x10) != 0)
  {
LABEL_19:
    v12 = *(a1 + 76);
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

LABEL_23:
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

  *(a1 + 44) = result;
  return result;
}

void sub_141AE48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x1F) != 0)
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

        goto LABEL_19;
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

      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 40) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 76) = *(a2 + 76);
      goto LABEL_8;
    }

LABEL_20:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_141AF84(uint64_t a1)
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

  if (a1 != &off_2770398)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      sub_145847C(v5);
      operator delete();
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      sub_145847C(v6);
      operator delete();
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      sub_145847C(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_144A24C((a1 + 48));
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_141B080(uint64_t a1)
{
  sub_141AF84(a1);

  operator delete();
}

char *sub_141B0B8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v44, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v44 + 1;
    v8 = *v44;
    if (*v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v44 + 2;
      }
    }

    v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 != 2)
      {
        if (v11 == 3 && v8 == 26)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = v13 + 1;
            v44 = v13 + 1;
            v15 = *(a1 + 40);
            if (v15 && (v16 = *(a1 + 32), v16 < *v15))
            {
              *(a1 + 32) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 24));
              v17 = sub_19593CC(a1 + 24, v18);
              v14 = v44;
            }

            v13 = sub_22095B8(a3, v17, v14);
            v44 = v13;
            if (!v13)
            {
              goto LABEL_74;
            }

            if (*a3 <= v13 || *v13 != 26)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_59;
      }

      if (v8 != 18)
      {
        goto LABEL_59;
      }

      *(a1 + 16) |= 1u;
      v28 = *(a1 + 72);
      if (!v28)
      {
        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        sub_14BAE64(v33);
        v28 = v34;
        *(a1 + 72) = v34;
        goto LABEL_57;
      }

LABEL_58:
      v38 = sub_22095B8(a3, v28, v7);
LABEL_66:
      v44 = v38;
      if (!v38)
      {
        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v8 != 8)
    {
      goto LABEL_59;
    }

    v5 |= 8u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_41:
      v44 = v26;
      *(a1 + 96) = v25;
      goto LABEL_67;
    }

    v42 = sub_19587DC(v7, v25);
    v44 = v42;
    *(a1 + 96) = v43;
    if (!v42)
    {
      goto LABEL_74;
    }

LABEL_67:
    if (sub_195ADC0(a3, &v44, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_59;
    }

    *(a1 + 16) |= 2u;
    v28 = *(a1 + 80);
    if (v28)
    {
      goto LABEL_58;
    }

    v29 = *(a1 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    sub_14BAE64(v30);
    v28 = v31;
    *(a1 + 80) = v31;
    goto LABEL_57;
  }

  if (v11 == 5)
  {
    if (v8 != 42)
    {
      goto LABEL_59;
    }

    *(a1 + 16) |= 4u;
    v28 = *(a1 + 88);
    if (v28)
    {
      goto LABEL_58;
    }

    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    sub_14BAE64(v36);
    v28 = v37;
    *(a1 + 88) = v37;
LABEL_57:
    v7 = v44;
    goto LABEL_58;
  }

  if (v11 == 6 && v8 == 50)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = v19 + 1;
      v44 = v19 + 1;
      v21 = *(a1 + 64);
      if (v21 && (v22 = *(a1 + 56), v22 < *v21))
      {
        *(a1 + 56) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_155282C(*(a1 + 48));
        v23 = sub_19593CC(a1 + 48, v24);
        v20 = v44;
      }

      v19 = sub_2209648(a3, v23, v20);
      v44 = v19;
      if (!v19)
      {
        goto LABEL_74;
      }

      if (*a3 <= v19 || *v19 != 50)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_59:
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
    v40 = *(a1 + 8);
    if (v40)
    {
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v41 = sub_11F1920((a1 + 8));
      v7 = v44;
    }

    v38 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_66;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_74:
  v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

char *sub_141B458(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 72);
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

    v6 = sub_14589F4(v11, v13, a3);
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

      v6 = sub_14589F4(v16, v18, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v19 = *(a1 + 80);
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

    v6 = sub_14589F4(v19, v21, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 88);
    *v6 = 42;
    v23 = *(v22 + 20);
    v6[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v6 + 1);
    }

    else
    {
      v24 = v6 + 2;
    }

    v6 = sub_14589F4(v22, v24, a3);
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    for (j = 0; j != v25; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v27 = *(*(a1 + 64) + 8 * j + 8);
      *v6 = 50;
      v28 = *(v27 + 20);
      v6[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v6 + 1);
      }

      else
      {
        v29 = v6 + 2;
      }

      v6 = sub_1550CF8(v27, v29, a3);
    }
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v33)
  {
    v35 = v33;
    memcpy(v6, v34, v33);
    v6 += v35;
    return v6;
  }

  return sub_1957130(a3, v34, v33, v6);
}

uint64_t sub_141B7CC(uint64_t a1)
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
      v14 = sub_1550E44(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0xF) == 0)
  {
    goto LABEL_21;
  }

  if ((v15 & 1) == 0)
  {
    if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v19 = sub_1458DB4(*(a1 + 80));
    v9 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_19:
      if ((v15 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v18 = sub_1458DB4(*(a1 + 72));
  v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v15 & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_25:
  v20 = sub_1458DB4(*(a1 + 88));
  v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) != 0)
  {
LABEL_20:
    v9 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_21:
  v16 = *(a1 + 8);
  if (v16)
  {
    v21 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v9 += v22;
  }

  *(a1 + 20) = v9;
  return v9;
}

uint64_t sub_141B9A4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E0408;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_141BA2C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E0488;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_141BAA8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E0508;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_141BB20(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A55C();
  }

  return sub_140CB8C(v3, a1, 0);
}

void *sub_141BB7C(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A5C8();
  }

  return sub_140E734(v3, a1, 0);
}

uint64_t sub_141BBD8(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A634();
  }

  return sub_140F510(v3, a1, 0);
}

uint64_t sub_141BC34(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A6A0();
  }

  return sub_140FF48(v3, a1, 0);
}

void *sub_141BC90(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A70C();
  }

  return sub_1410D70(v3, a1, 0);
}

uint64_t sub_141BCEC(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A778();
  }

  return sub_1411E30(v3, a1, 0);
}

uint64_t sub_141BD48(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A7E4();
  }

  return sub_1412E90(v3, a1, 0);
}

uint64_t sub_141BDA4(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A850();
  }

  return sub_1413DA0(v3, a1, 0);
}

uint64_t sub_141BE00(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A8BC();
  }

  return sub_1414838(v3, a1, 0);
}

uint64_t sub_141BE5C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E0A08;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

void *sub_141BEF0(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A928();
  }

  return sub_1416614(v3, a1, 0);
}

double sub_141BF4C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26E0B08;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  return result;
}

uint64_t sub_141BFE4(uint64_t *a1)
{
  if (!a1)
  {

    sub_144A994();
  }

  return sub_1418178(v3, a1, 0);
}

uint64_t sub_141C040(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E0C08;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_141C0C0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E0C88;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = a1;
  return result;
}

void *sub_141C160(uint64_t *a1)
{
  if (!a1)
  {

    sub_144AA00();
  }

  return sub_141A470(v3, a1, 0);
}

double sub_141C1BC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E0D88;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  return result;
}

uint64_t sub_141C280(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E0E08;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void sub_141C2EC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_141C31C(uint64_t a1)
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
  if (a1 != &off_2770400)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_145847C(v6);
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

void sub_141C3DC(uint64_t a1)
{
  sub_141C31C(a1);

  operator delete();
}

uint64_t sub_141C414(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    result = sub_144E5CC(*(a1 + 48));
  }

  if ((v3 & 0xE) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
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

char *sub_141C488(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v8 != 8)
      {
        goto LABEL_36;
      }

      v5 |= 2u;
      v21 = v7 + 1;
      v22 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v23 = *v21;
      v22 = v22 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_30:
        v36 = v21;
        *(a1 + 56) = v22;
        goto LABEL_46;
      }

      v32 = sub_1958770(v7, v22);
      v36 = v32;
      *(a1 + 56) = v33;
      if (!v32)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_36;
      }

      v5 |= 4u;
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
        *(a1 + 60) = v14;
        goto LABEL_46;
      }

      v30 = sub_1958770(v7, v14);
      v36 = v30;
      *(a1 + 60) = v31;
      if (!v30)
      {
        goto LABEL_57;
      }
    }

LABEL_46:
    if (sub_195ADC0(a3, &v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_36;
    }

    v5 |= 8u;
    v24 = v7 + 1;
    v25 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v26 = *v24;
    v25 = v25 + (v26 << 7) - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_35:
      v36 = v24;
      *(a1 + 64) = v25;
      goto LABEL_46;
    }

    v34 = sub_1958770(v7, v25);
    v36 = v34;
    *(a1 + 64) = v35;
    if (!v34)
    {
      goto LABEL_57;
    }

    goto LABEL_46;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 40) |= 1u;
    v16 = *(a1 + 48);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_14BAE64(v18);
      v16 = v19;
      *(a1 + 48) = v19;
      v7 = v36;
    }

    v20 = sub_22095B8(a3, v16, v7);
LABEL_45:
    v36 = v20;
    if (!v20)
    {
      goto LABEL_57;
    }

    goto LABEL_46;
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
    if (v8 - 7600 > 0x18F)
    {
      v28 = *(a1 + 8);
      if (v28)
      {
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v29 = sub_11F1920((a1 + 8));
        v7 = v36;
      }

      v20 = sub_1952690(v8, v29, v7, a3);
    }

    else
    {
      v20 = sub_19525AC((a1 + 16), v8, v7, &off_2770400, (a1 + 8), a3);
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_57:
  v36 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v36;
}

char *sub_141C76C(uint64_t a1, char *a2, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 64);
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

  if (v5)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 48);
    *v15 = 34;
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

    v15 = sub_14589F4(v19, v21, a3);
  }

  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 950, 1000, v15, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v25)
  {
    v27 = v25;
    memcpy(v15, v26, v25);
    v15 += v27;
    return v15;
  }

  return sub_1957130(a3, v26, v25, v15);
}

uint64_t sub_141CA2C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
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

LABEL_10:
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v6 = sub_1458DB4(*(a1 + 48));
  v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_11:
  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) != 0)
  {
LABEL_6:
    v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_7:
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

void sub_141CB50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0xF) != 0)
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

        sub_14BAE64(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_2771738;
      }

      sub_144EF20(v6, v9);
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

    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 40) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_7;
    }

LABEL_21:
    *(a1 + 60) = *(a2 + 60);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_141CC54(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_144F560(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_141CCA8(uint64_t a1)
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
  if (a1 != &off_2770448)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_145847C(v6);
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

void sub_141CD60(uint64_t a1)
{
  sub_141CCA8(a1);

  operator delete();
}

uint64_t sub_141CD98(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_144E5CC(*(result + 24));
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

char *sub_141CDF4(uint64_t a1, char *a2, int32x2_t *a3)
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

        sub_14BAE64(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_22095B8(a3, v14, v6);
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

char *sub_141CF38(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_14589F4(v6, v8, a3);
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

uint64_t sub_141D044(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_1458DB4(*(a1 + 24));
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

void sub_141D0C4(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      sub_14BAE64(v7);
      *(result + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2771738;
    }

    sub_144EF20(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_141D16C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_141D1AC(void *a1)
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

  sub_141D23C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144AA6C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_141D23C(void *result)
{
  if (result != &off_2770468)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      sub_145847C(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_145847C(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_145847C(v4);
      operator delete();
    }

    v5 = v1[9];
    if (v5)
    {
      sub_145847C(v5);
      operator delete();
    }

    v6 = v1[10];
    if (v6)
    {
      sub_145847C(v6);
      operator delete();
    }

    v7 = v1[11];
    if (v7)
    {
      sub_145847C(v7);
      operator delete();
    }

    result = v1[12];
    if (result)
    {
      sub_145847C(result);

      operator delete();
    }
  }

  return result;
}

void sub_141D324(void *a1)
{
  sub_141D1AC(a1);

  operator delete();
}

uint64_t sub_141D35C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_141CD98(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x7F) == 0)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    result = sub_144E5CC(*(v1 + 48));
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
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

    goto LABEL_21;
  }

LABEL_20:
  result = sub_144E5CC(*(v1 + 64));
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = sub_144E5CC(*(v1 + 80));
    if ((v5 & 0x20) == 0)
    {
LABEL_12:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = sub_144E5CC(*(v1 + 72));
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_23:
  result = sub_144E5CC(*(v1 + 88));
  if ((v5 & 0x40) != 0)
  {
LABEL_13:
    result = sub_144E5CC(*(v1 + 96));
  }

LABEL_14:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_141D458(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 > 0xA)
    {
      if (v7 >> 3 > 0xD)
      {
        if (v10 == 14)
        {
          if (v7 == 114)
          {
            v34 = v6 - 1;
            while (1)
            {
              v35 = v34 + 1;
              v44 = v34 + 1;
              v36 = *(a1 + 40);
              if (v36 && (v37 = *(a1 + 32), v37 < *v36))
              {
                *(a1 + 32) = v37 + 1;
                v38 = *&v36[2 * v37 + 2];
              }

              else
              {
                v39 = sub_14353DC(*(a1 + 24));
                v38 = sub_19593CC(a1 + 24, v39);
                v35 = v44;
              }

              v34 = sub_22096D8(a3, v38, v35);
              v44 = v34;
              if (!v34)
              {
                return 0;
              }

              if (*a3 <= v34 || *v34 != 114)
              {
                goto LABEL_56;
              }
            }
          }
        }

        else if (v10 == 15 && v7 == 122)
        {
          *(a1 + 16) |= 0x40u;
          v11 = *(a1 + 96);
          if (!v11)
          {
            v21 = *(a1 + 8);
            v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if (v21)
            {
              v22 = *v22;
            }

            sub_14BAE64(v22);
            v11 = v23;
            *(a1 + 96) = v23;
LABEL_53:
            v6 = v44;
          }

LABEL_54:
          v33 = sub_22095B8(a3, v11, v6);
          goto LABEL_55;
        }
      }

      else if (v10 == 11)
      {
        if (v7 == 90)
        {
          *(a1 + 16) |= 0x10u;
          v11 = *(a1 + 80);
          if (!v11)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            sub_14BAE64(v28);
            v11 = v29;
            *(a1 + 80) = v29;
            goto LABEL_53;
          }

          goto LABEL_54;
        }
      }

      else if (v10 == 13 && v7 == 106)
      {
        *(a1 + 16) |= 0x20u;
        v11 = *(a1 + 88);
        if (!v11)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          sub_14BAE64(v16);
          v11 = v17;
          *(a1 + 88) = v17;
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    else if (v7 >> 3 > 8)
    {
      if (v10 == 9)
      {
        if (v7 == 74)
        {
          *(a1 + 16) |= 4u;
          v11 = *(a1 + 64);
          if (!v11)
          {
            v30 = *(a1 + 8);
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
            if (v30)
            {
              v31 = *v31;
            }

            sub_14BAE64(v31);
            v11 = v32;
            *(a1 + 64) = v32;
            goto LABEL_53;
          }

          goto LABEL_54;
        }
      }

      else if (v10 == 10 && v7 == 82)
      {
        *(a1 + 16) |= 8u;
        v11 = *(a1 + 72);
        if (!v11)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          sub_14BAE64(v19);
          v11 = v20;
          *(a1 + 72) = v20;
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    else if (v10 == 7)
    {
      if (v7 == 58)
      {
        *(a1 + 16) |= 1u;
        v11 = *(a1 + 48);
        if (!v11)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          sub_14BAE64(v25);
          v11 = v26;
          *(a1 + 48) = v26;
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    else if (v10 == 8 && v7 == 66)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 56);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_14BAE64(v13);
        v11 = v14;
        *(a1 + 56) = v14;
        goto LABEL_53;
      }

      goto LABEL_54;
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

    v33 = sub_1952690(v7, v42, v6, a3);
LABEL_55:
    v44 = v33;
    if (!v33)
    {
      return 0;
    }

LABEL_56:
    ;
  }

  return v44;
}

char *sub_141D820(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 58;
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

    v4 = sub_14589F4(v7, v9, a3);
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

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 56);
  *v4 = 66;
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

    goto LABEL_26;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 64);
  *v4 = 74;
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

    goto LABEL_32;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 72);
  *v4 = 82;
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

  v4 = sub_14589F4(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_32:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 80);
  *v4 = 90;
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
  if ((v6 & 0x20) != 0)
  {
LABEL_38:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v22 = *(a1 + 88);
    *v4 = 106;
    v23 = *(v22 + 20);
    v4[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v4 + 1);
    }

    else
    {
      v24 = v4 + 2;
    }

    v4 = sub_14589F4(v22, v24, a3);
  }

LABEL_44:
  v25 = *(a1 + 32);
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v27 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 114;
      v28 = *(v27 + 20);
      v4[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v4 + 1);
      }

      else
      {
        v29 = v4 + 2;
      }

      v4 = sub_141CF38(v27, v29, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v30 = *(a1 + 96);
    *v4 = 122;
    v31 = *(v30 + 20);
    v4[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v4 + 1);
    }

    else
    {
      v32 = v4 + 2;
    }

    v4 = sub_14589F4(v30, v32, a3);
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v4;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  if ((*a3 - v4) >= v36)
  {
    v38 = v36;
    memcpy(v4, v37, v36);
    v4 += v38;
    return v4;
  }

  return sub_1957130(a3, v37, v36, v4);
}

uint64_t sub_141DC38(uint64_t a1)
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
      v7 = sub_141D044(v6);
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
  if ((v8 & 0x7F) == 0)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v12 = sub_1458DB4(*(a1 + 48));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v13 = sub_1458DB4(*(a1 + 56));
  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = sub_1458DB4(*(a1 + 64));
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_24:
    v16 = sub_1458DB4(*(a1 + 80));
    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x20) == 0)
    {
LABEL_16:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_23:
  v15 = sub_1458DB4(*(a1 + 72));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  if ((v8 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_25:
  v17 = sub_1458DB4(*(a1 + 88));
  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x40) != 0)
  {
LABEL_17:
    v9 = sub_1458DB4(*(a1 + 96));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v10 = *(a1 + 8);
  if (v10)
  {
    v18 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v2 += v19;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_141DE58(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_144BA68((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x7F) == 0)
  {
    goto LABEL_69;
  }

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

      sub_14BAE64(v12);
      *(result + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v13 = *(a2 + 48);
    }

    else
    {
      v13 = &off_2771738;
    }

    sub_144EF20(v10, v13);
    if ((v9 & 2) == 0)
    {
LABEL_7:
      if ((v9 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_7;
  }

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

    sub_14BAE64(v16);
    *(result + 56) = v14;
  }

  if (*(a2 + 56))
  {
    v17 = *(a2 + 56);
  }

  else
  {
    v17 = &off_2771738;
  }

  sub_144EF20(v14, v17);
  if ((v9 & 4) == 0)
  {
LABEL_8:
    if ((v9 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_29:
  *(result + 16) |= 4u;
  v18 = *(result + 64);
  if (!v18)
  {
    v19 = *(result + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_14BAE64(v20);
    *(result + 64) = v18;
  }

  if (*(a2 + 64))
  {
    v21 = *(a2 + 64);
  }

  else
  {
    v21 = &off_2771738;
  }

  sub_144EF20(v18, v21);
  if ((v9 & 8) == 0)
  {
LABEL_9:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_45:
    *(result + 16) |= 0x10u;
    v26 = *(result + 80);
    if (!v26)
    {
      v27 = *(result + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_14BAE64(v28);
      *(result + 80) = v26;
    }

    if (*(a2 + 80))
    {
      v29 = *(a2 + 80);
    }

    else
    {
      v29 = &off_2771738;
    }

    sub_144EF20(v26, v29);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_61;
    }

    goto LABEL_53;
  }

LABEL_37:
  *(result + 16) |= 8u;
  v22 = *(result + 72);
  if (!v22)
  {
    v23 = *(result + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_14BAE64(v24);
    *(result + 72) = v22;
  }

  if (*(a2 + 72))
  {
    v25 = *(a2 + 72);
  }

  else
  {
    v25 = &off_2771738;
  }

  sub_144EF20(v22, v25);
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_45;
  }

LABEL_10:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_53:
  *(result + 16) |= 0x20u;
  v30 = *(result + 88);
  if (!v30)
  {
    v31 = *(result + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    sub_14BAE64(v32);
    *(result + 88) = v30;
  }

  if (*(a2 + 88))
  {
    v33 = *(a2 + 88);
  }

  else
  {
    v33 = &off_2771738;
  }

  sub_144EF20(v30, v33);
  if ((v9 & 0x40) != 0)
  {
LABEL_61:
    *(result + 16) |= 0x40u;
    v34 = *(result + 96);
    if (!v34)
    {
      v35 = *(result + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_14BAE64(v36);
      *(result + 96) = v34;
    }

    if (*(a2 + 96))
    {
      v37 = *(a2 + 96);
    }

    else
    {
      v37 = &off_2771738;
    }

    sub_144EF20(v34, v37);
  }

LABEL_69:
  v38 = *(a2 + 8);
  if (v38)
  {

    sub_1957EF4((result + 8), (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_141E120(uint64_t a1)
{
  result = sub_141E1DC(a1 + 24);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      result = sub_144F560(*(a1 + 48));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 2) != 0)
    {
      result = sub_144F560(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = sub_144F560(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_144F560(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_144F560(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x20) != 0)
    {
      result = sub_144F560(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x40) == 0)
    {
      return 1;
    }

    result = sub_144F560(*(a1 + 96));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_141E1DC(uint64_t a1)
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
      result = sub_144F560(*(v3 + 24));
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

uint64_t sub_141E248(uint64_t a1)
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
  if (a1 != &off_27704D0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_145847C(v6);
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

void sub_141E300(uint64_t a1)
{
  sub_141E248(a1);

  operator delete();
}

uint64_t sub_141E338(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_144E5CC(*(result + 24));
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

char *sub_141E398(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v20 = v7 + 1;
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v25 = v20;
      *(a1 + 32) = v21;
      goto LABEL_31;
    }

    v23 = sub_1958770(v7, v21);
    v25 = v23;
    *(a1 + 32) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 24);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_14BAE64(v18);
      v16 = v19;
      *(a1 + 24) = v19;
      v7 = v25;
    }

    v15 = sub_22095B8(a3, v16, v7);
LABEL_25:
    v25 = v15;
    if (!v15)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
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
    goto LABEL_25;
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

char *sub_141E570(uint64_t a1, char *__dst, unint64_t *a3)
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

    v6 = sub_14589F4(v11, v13, a3);
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

uint64_t sub_141E6FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
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
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_141E7B8(uint64_t result, uint64_t a2)
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

        sub_14BAE64(v7);
        *(result + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2771738;
      }

      sub_144EF20(v5, v8);
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

uint64_t sub_141E888(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_141E8C8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144AAF0(a1 + 4);
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_141E950(void *a1)
{
  sub_141E8C8(a1);

  operator delete();
}

uint64_t sub_141E988(uint64_t result)
{
  v1 = result;
  *(result + 16) = 0;
  v2 = *(result + 40);
  if (v2 >= 1)
  {
    v3 = (*(result + 48) + 8);
    do
    {
      v4 = *v3++;
      result = sub_141E338(v4);
      --v2;
    }

    while (v2);
    *(v1 + 40) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_141EA08(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
  {
    return v26;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v16 = v6 - 1;
        while (1)
        {
          v17 = v16 + 1;
          v26 = v16 + 1;
          v18 = *(a1 + 48);
          if (v18 && (v19 = *(a1 + 40), v19 < *v18))
          {
            *(a1 + 40) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_14354F8(*(a1 + 32));
            v20 = sub_19593CC(a1 + 32, v21);
            v17 = v26;
          }

          v16 = sub_2209768(a3, v20, v17);
          v26 = v16;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_43;
          }
        }
      }
    }

    else if (v7 >> 3 == 1)
    {
      if (v7 == 8)
      {
        v10 = v6 - 1;
        while (1)
        {
          v26 = v10 + 1;
          v11 = v10[1];
          if (v10[1] < 0)
          {
            v12 = v11 + (v10[2] << 7);
            v11 = v12 - 128;
            if (v10[2] < 0)
            {
              v10 = sub_1958770((v10 + 1), v12 - 128);
              v11 = v13;
            }

            else
            {
              v10 += 3;
            }
          }

          else
          {
            v10 += 2;
          }

          v26 = v10;
          v14 = *(a1 + 16);
          if (v14 == *(a1 + 20))
          {
            v15 = v14 + 1;
            sub_1958E5C((a1 + 16), v14 + 1);
            *(*(a1 + 24) + 4 * v14) = v11;
            v10 = v26;
          }

          else
          {
            *(*(a1 + 24) + 4 * v14) = v11;
            v15 = v14 + 1;
          }

          *(a1 + 16) = v15;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 8)
          {
            goto LABEL_43;
          }
        }
      }

      if (v7 == 10)
      {
        v22 = sub_1958918((a1 + 16), v6, a3);
        goto LABEL_42;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v6 = v26;
    }

    v22 = sub_1952690(v7, v25, v6, a3);
LABEL_42:
    v26 = v22;
    if (!v22)
    {
      return 0;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
    {
      return v26;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v26;
  }

  return 0;
}

char *sub_141EC94(uint64_t a1, char *a2, unint64_t *a3)
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

      v7 = *(*(a1 + 24) + 4 * i);
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

  v12 = *(a1 + 40);
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 48) + 8 * j + 8);
      *v8 = 18;
      v15 = *(v14 + 20);
      v8[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v8 + 1);
      }

      else
      {
        v16 = v8 + 2;
      }

      v8 = sub_141E570(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v8;
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

  if ((*a3 - v8) >= v20)
  {
    v22 = v20;
    memcpy(v8, v21, v20);
    v8 += v22;
    return v8;
  }

  return sub_1957130(a3, v21, v20, v8);
}

uint64_t sub_141EE74(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 16));
  v3 = *(a1 + 40);
  v4 = v2 + *(a1 + 16) + v3;
  v5 = *(a1 + 48);
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
      v9 = sub_141E6FC(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
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

  *(a1 + 56) = v4;
  return v4;
}

void sub_141EF28(char *result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result + 16;
    v6 = *(result + 4);
    sub_1958E5C(result + 4, v6 + v4);
    v7 = *(result + 3);
    *v5 += *(a2 + 16);
    memcpy((v7 + 4 * v6), *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 48);
    v10 = sub_19592E8((result + 32), *(a2 + 40));
    sub_144BAF4(result + 4, v10, (v9 + 8), v8, **(result + 6) - *(result + 10));
    v11 = *(result + 10) + v8;
    *(result + 10) = v11;
    v12 = *(result + 6);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4(result + 1, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_141F040(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144AB74(a1 + 4);
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_141F0C8(void *a1)
{
  sub_141F040(a1);

  operator delete();
}

uint64_t sub_141F100(uint64_t result)
{
  v1 = result;
  *(result + 16) = 0;
  v2 = *(result + 40);
  if (v2 >= 1)
  {
    v3 = (*(result + 48) + 8);
    do
    {
      v4 = *v3++;
      result = sub_141E988(v4);
      --v2;
    }

    while (v2);
    *(v1 + 40) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_141F180(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
  {
    return v26;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v16 = v6 - 1;
        while (1)
        {
          v17 = v16 + 1;
          v26 = v16 + 1;
          v18 = *(a1 + 48);
          if (v18 && (v19 = *(a1 + 40), v19 < *v18))
          {
            *(a1 + 40) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            sub_1435574(*(a1 + 32));
            v20 = sub_19593CC(a1 + 32, v21);
            v17 = v26;
          }

          v16 = sub_22097F8(a3, v20, v17);
          v26 = v16;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_43;
          }
        }
      }
    }

    else if (v7 >> 3 == 1)
    {
      if (v7 == 8)
      {
        v10 = v6 - 1;
        while (1)
        {
          v26 = v10 + 1;
          v11 = v10[1];
          if (v10[1] < 0)
          {
            v12 = v11 + (v10[2] << 7);
            v11 = v12 - 128;
            if (v10[2] < 0)
            {
              v10 = sub_1958770((v10 + 1), v12 - 128);
              v11 = v13;
            }

            else
            {
              v10 += 3;
            }
          }

          else
          {
            v10 += 2;
          }

          v26 = v10;
          v14 = *(a1 + 16);
          if (v14 == *(a1 + 20))
          {
            v15 = v14 + 1;
            sub_1958E5C((a1 + 16), v14 + 1);
            *(*(a1 + 24) + 4 * v14) = v11;
            v10 = v26;
          }

          else
          {
            *(*(a1 + 24) + 4 * v14) = v11;
            v15 = v14 + 1;
          }

          *(a1 + 16) = v15;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 8)
          {
            goto LABEL_43;
          }
        }
      }

      if (v7 == 10)
      {
        v22 = sub_1958918((a1 + 16), v6, a3);
        goto LABEL_42;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v6 = v26;
    }

    v22 = sub_1952690(v7, v25, v6, a3);
LABEL_42:
    v26 = v22;
    if (!v22)
    {
      return 0;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v26, a3[11].u32[1]))
    {
      return v26;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v26;
  }

  return 0;
}

char *sub_141F40C(uint64_t a1, char *a2, unint64_t *a3)
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

      v7 = *(*(a1 + 24) + 4 * i);
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

  v12 = *(a1 + 40);
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 48) + 8 * j + 8);
      *v8 = 18;
      v15 = *(v14 + 56);
      v8[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v8 + 1);
      }

      else
      {
        v16 = v8 + 2;
      }

      v8 = sub_141EC94(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v8;
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

  if ((*a3 - v8) >= v20)
  {
    v22 = v20;
    memcpy(v8, v21, v20);
    v8 += v22;
    return v8;
  }

  return sub_1957130(a3, v21, v20, v8);
}

uint64_t sub_141F5EC(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 16));
  v3 = *(a1 + 40);
  v4 = v2 + *(a1 + 16) + v3;
  v5 = *(a1 + 48);
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
      v9 = sub_141EE74(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
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

  *(a1 + 56) = v4;
  return v4;
}

void sub_141F6A0(char *result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result + 16;
    v6 = *(result + 4);
    sub_1958E5C(result + 4, v6 + v4);
    v7 = *(result + 3);
    *v5 += *(a2 + 16);
    memcpy((v7 + 4 * v6), *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 48);
    v10 = sub_19592E8((result + 32), *(a2 + 40));
    sub_144BB80(result + 4, v10, (v9 + 8), v8, **(result + 6) - *(result + 10));
    v11 = *(result + 10) + v8;
    *(result + 10) = v11;
    v12 = *(result + 6);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4(result + 1, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_141F7A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_141E1DC(*(*(a1 + 48) + 8 * v2) + 32);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_141F80C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E1108;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0u;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  return a1;
}

void sub_141F880(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_141F8B0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 6));
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_141F934(void *a1)
{
  sub_141F8B0(a1);

  operator delete();
}

unsigned __int8 *sub_141F96C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 60) = 0;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_141F9C8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v20 + 1;
    v8 = *v20;
    if (*v20 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v20, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v20 + 2;
      }
    }

    v20 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_21;
    }

    v12 = v7 + 1;
    v13 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v14 = *v12;
    v13 = v13 + (v14 << 7) - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v12 = v7 + 2;
LABEL_15:
      v20 = v12;
      *(a1 + 68) = v13;
      v5 = 1;
      goto LABEL_31;
    }

    v15 = sub_1958770(v7, v13);
    v20 = v15;
    *(a1 + 68) = v16;
    v5 = 1;
    if (!v15)
    {
      goto LABEL_36;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1)
  {
    if (v8 == 10)
    {
      v11 = sub_1958918((a1 + 48), v7, a3);
      goto LABEL_30;
    }

    if (v8 == 8)
    {
      v21 = sub_1211E88(&v20);
      sub_194FE98((a1 + 48), &v21);
      if (!v20)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }
  }

LABEL_21:
  if (v8)
  {
    v17 = (v8 & 7) == 4;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (v8 - 7600 > 0x18F)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v19 = sub_11F1920((a1 + 8));
        v7 = v20;
      }

      v11 = sub_1952690(v8, v19, v7, a3);
    }

    else
    {
      v11 = sub_19525AC((a1 + 16), v8, v7, &off_27704F8, (a1 + 8), a3);
    }

LABEL_30:
    v20 = v11;
    if (!v11)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_36:
  v20 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v20;
}

char *sub_141FBE0(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 64);
  if (v5 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    *a2 = 10;
    v6 = a2 + 1;
    if (v5 >= 0x80)
    {
      do
      {
        *v6++ = v5 | 0x80;
        v24 = v5 >> 14;
        v5 >>= 7;
      }

      while (v24);
      a2 = v6 - 1;
    }

    v7 = a2 + 2;
    *v6 = v5;
    v8 = *(a1 + 56);
    v9 = &v8[*(a1 + 48)];
    do
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v11 = *v8++;
      v10 = v11;
      *v7 = v11;
      if (v11 > 0x7F)
      {
        *v7 = v10 | 0x80;
        v12 = v10 >> 7;
        v7[1] = v10 >> 7;
        a2 = v7 + 2;
        if (v10 >= 0x4000)
        {
          LOBYTE(v7) = v7[1];
          do
          {
            *(a2 - 1) = v7 | 0x80;
            LODWORD(v7) = v12 >> 7;
            *a2++ = v12 >> 7;
            v13 = v12 >> 14;
            v12 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        a2 = v7 + 1;
      }

      v7 = a2;
    }

    while (v8 < v9);
  }

  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v15 = *(a1 + 68);
    *a2 = 16;
    a2[1] = v15;
    if (v15 > 0x7F)
    {
      a2[1] = v15 | 0x80;
      v16 = v15 >> 7;
      a2[2] = v15 >> 7;
      v14 = a2 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v17) = a2[2];
        do
        {
          *(v14 - 1) = v17 | 0x80;
          v17 = v16 >> 7;
          *v14++ = v16 >> 7;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v14 = a2 + 2;
    }
  }

  else
  {
    v14 = a2;
  }

  if (*(a1 + 26))
  {
    v14 = sub_1953428(a1 + 16, 950, 1000, v14, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v14;
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

  if ((*a3 - v14) >= v22)
  {
    v25 = v22;
    memcpy(v14, v23, v22);
    v14 += v25;
    return v14;
  }

  return sub_1957130(a3, v23, v22, v14);
}

uint64_t sub_141FE1C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959E5C((a1 + 48));
  if (v3)
  {
    v4 = v3;
    if ((v3 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v5;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 64) = v4;
  result = v2 + v3;
  if (*(a1 + 40))
  {
    result += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_141FEE8(uint64_t a1, uint64_t a2)
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

  if (*(a2 + 40))
  {
    v8 = *(a2 + 68);
    *(a1 + 40) |= 1u;
    *(a1 + 68) = v8;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_141FFCC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E1188;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = &qword_278E990;
  *(a1 + 152) = 0;
  *(a1 + 156) = -1;
  return a1;
}

void sub_1420074(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14200A4(uint64_t a1)
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

  v5 = (a1 + 144);
  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_144ABF8((a1 + 120));
  sub_1956ABC(a1 + 96);
  sub_1956ABC(a1 + 72);
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1420170(uint64_t a1)
{
  sub_14200A4(a1);

  operator delete();
}

void *sub_14201A8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  v3 = *(a1 + 128);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 136) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1423E70(v5);
      --v3;
    }

    while (v3);
    *(a1 + 128) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v6 & 6) != 0)
  {
    *(a1 + 152) = 0;
    *(a1 + 156) = -1;
  }

  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 32) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_1420280(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v38, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v38 + 1);
    v8 = **v38;
    if (**v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v38 + 2);
      }
    }

    *v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 <= 5)
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          v12 = (a1 + 72);
LABEL_39:
          v17 = sub_1958918(v12, v7, a3);
LABEL_40:
          *v38 = v17;
          if (!v17)
          {
            goto LABEL_77;
          }

          goto LABEL_41;
        }

        if (v8 != 32)
        {
          goto LABEL_65;
        }

        v39 = sub_1211E88(v38);
        v34 = (a1 + 72);
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_65;
        }

        if (v8 == 42)
        {
          v12 = (a1 + 96);
          goto LABEL_39;
        }

        if (v8 != 40)
        {
          goto LABEL_65;
        }

        v39 = sub_1211E88(v38);
        v34 = (a1 + 96);
      }

      goto LABEL_63;
    }

    if (v11 != 6)
    {
      if (v11 == 22 && v8 == 178)
      {
        v18 = v7 - 2;
        while (1)
        {
          v19 = v18 + 2;
          *v38 = v18 + 2;
          v20 = *(a1 + 136);
          if (v20 && (v21 = *(a1 + 128), v21 < *v20))
          {
            *(a1 + 128) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_1435984(*(a1 + 120));
            v22 = sub_19593CC(a1 + 120, v23);
            v19 = *v38;
          }

          v18 = sub_2209888(a3, v22, v19);
          *v38 = v18;
          if (!v18)
          {
            goto LABEL_77;
          }

          if (*a3 <= v18 || *v18 != 434)
          {
            goto LABEL_41;
          }
        }
      }

      goto LABEL_65;
    }

    if (v8 != 48)
    {
      goto LABEL_65;
    }

    v5 |= 2u;
    v25 = v7 + 1;
    v24 = *v7;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_47;
    }

    v26 = *v25;
    v24 = (v26 << 7) + v24 - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_47:
      *v38 = v25;
      *(a1 + 152) = v24 != 0;
      goto LABEL_41;
    }

    v30 = sub_19587DC(v7, v24);
    *v38 = v30;
    *(a1 + 152) = v31 != 0;
    if (!v30)
    {
      goto LABEL_77;
    }

LABEL_41:
    if (sub_195ADC0(a3, v38, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 10)
    {
      v12 = (a1 + 48);
      goto LABEL_39;
    }

    if (v8 != 8)
    {
      goto LABEL_65;
    }

    v39 = sub_1211E88(v38);
    v34 = (a1 + 48);
LABEL_63:
    sub_194FE98(v34, &v39);
    if (!*v38)
    {
      goto LABEL_77;
    }

    goto LABEL_41;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_65;
    }

    v5 |= 4u;
    v28 = v7 + 1;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    v29 = *v28;
    v27 = v27 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_52:
      *v38 = v28;
      *(a1 + 156) = v27;
      goto LABEL_41;
    }

    v32 = sub_19587DC(v7, v27);
    *v38 = v32;
    *(a1 + 156) = v33;
    if (!v32)
    {
      goto LABEL_77;
    }

    goto LABEL_41;
  }

  if (v11 == 3 && v8 == 26)
  {
    *(a1 + 40) |= 1u;
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v16 = sub_194DB04((a1 + 144), v15);
    v17 = sub_1958890(v16, *v38, a3);
    goto LABEL_40;
  }

LABEL_65:
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
    if (v8 - 7600 > 0x18F)
    {
      v36 = *(a1 + 8);
      if (v36)
      {
        v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v37 = sub_11F1920((a1 + 8));
        v7 = *v38;
      }

      v17 = sub_1952690(v8, v37, v7, a3);
    }

    else
    {
      v17 = sub_19525AC((a1 + 16), v8, v7, &off_2770540, (a1 + 8), a3);
    }

    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_77:
  *v38 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v38;
}

char *sub_1420660(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 64);
  if (v5 >= 1)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    *a2 = 10;
    v6 = a2 + 1;
    if (v5 >= 0x80)
    {
      do
      {
        *v6++ = v5 | 0x80;
        v51 = v5 >> 14;
        v5 >>= 7;
      }

      while (v51);
      a2 = v6 - 1;
    }

    v7 = a2 + 2;
    *v6 = v5;
    v8 = *(a1 + 56);
    v9 = &v8[*(a1 + 48)];
    do
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v11 = *v8++;
      v10 = v11;
      *v7 = v11;
      if (v11 > 0x7F)
      {
        *v7 = v10 | 0x80;
        v12 = v10 >> 7;
        v7[1] = v10 >> 7;
        a2 = v7 + 2;
        if (v10 >= 0x4000)
        {
          LOBYTE(v7) = v7[1];
          do
          {
            *(a2 - 1) = v7 | 0x80;
            LODWORD(v7) = v12 >> 7;
            *a2++ = v12 >> 7;
            v13 = v12 >> 14;
            v12 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        a2 = v7 + 1;
      }

      v7 = a2;
    }

    while (v8 < v9);
  }

  v14 = *(a1 + 40);
  if ((v14 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v16 = *(a1 + 156);
    *a2 = 16;
    a2[1] = v16;
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v17 = v16 >> 7;
      a2[2] = v16 >> 7;
      v15 = a2 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = a2[2];
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
      v15 = a2 + 2;
    }
  }

  else
  {
    v15 = a2;
  }

  if (v14)
  {
    v15 = sub_128AEEC(a3, 3, (*(a1 + 144) & 0xFFFFFFFFFFFFFFFELL), v15);
  }

  v20 = *(a1 + 88);
  if (v20 >= 1)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    *v15 = 34;
    v21 = v15 + 1;
    if (v20 >= 0x80)
    {
      do
      {
        *v21++ = v20 | 0x80;
        v52 = v20 >> 14;
        v20 >>= 7;
      }

      while (v52);
      v15 = v21 - 1;
    }

    v22 = v15 + 2;
    *v21 = v20;
    v23 = *(a1 + 80);
    v24 = &v23[*(a1 + 72)];
    do
    {
      if (*a3 <= v22)
      {
        v22 = sub_225EB68(a3, v22);
      }

      v26 = *v23++;
      v25 = v26;
      *v22 = v26;
      if (v26 > 0x7F)
      {
        *v22 = v25 | 0x80;
        v27 = v25 >> 7;
        v22[1] = v25 >> 7;
        v15 = v22 + 2;
        if (v25 >= 0x4000)
        {
          LOBYTE(v28) = v22[1];
          do
          {
            *(v15 - 1) = v28 | 0x80;
            v28 = v27 >> 7;
            *v15++ = v27 >> 7;
            v29 = v27 >> 14;
            v27 >>= 7;
          }

          while (v29);
        }
      }

      else
      {
        v15 = v22 + 1;
      }

      v22 = v15;
    }

    while (v23 < v24);
  }

  v30 = *(a1 + 112);
  if (v30 >= 1)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    *v15 = 42;
    v31 = v15 + 1;
    if (v30 >= 0x80)
    {
      do
      {
        *v31++ = v30 | 0x80;
        v53 = v30 >> 14;
        v30 >>= 7;
      }

      while (v53);
      v15 = v31 - 1;
    }

    v32 = v15 + 2;
    *v31 = v30;
    v33 = *(a1 + 104);
    v34 = &v33[*(a1 + 96)];
    do
    {
      if (*a3 <= v32)
      {
        v32 = sub_225EB68(a3, v32);
      }

      v36 = *v33++;
      v35 = v36;
      *v32 = v36;
      if (v36 > 0x7F)
      {
        *v32 = v35 | 0x80;
        v37 = v35 >> 7;
        v32[1] = v35 >> 7;
        v15 = v32 + 2;
        if (v35 >= 0x4000)
        {
          LOBYTE(v38) = v32[1];
          do
          {
            *(v15 - 1) = v38 | 0x80;
            v38 = v37 >> 7;
            *v15++ = v37 >> 7;
            v39 = v37 >> 14;
            v37 >>= 7;
          }

          while (v39);
        }
      }

      else
      {
        v15 = v32 + 1;
      }

      v32 = v15;
    }

    while (v33 < v34);
  }

  if ((v14 & 2) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v40 = *(a1 + 152);
    *v15 = 48;
    v15[1] = v40;
    v15 += 2;
  }

  v41 = *(a1 + 128);
  if (v41)
  {
    for (i = 0; i != v41; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v43 = *(*(a1 + 136) + 8 * i + 8);
      *v15 = 434;
      v44 = *(v43 + 20);
      v15[2] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v15 + 2);
      }

      else
      {
        v45 = v15 + 3;
      }

      v15 = sub_142416C(v43, v45, a3);
    }
  }

  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 950, 1000, v15, a3);
  }

  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v15;
  }

  v48 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v49 = *(v48 + 31);
  if (v49 < 0)
  {
    v50 = *(v48 + 8);
    v49 = *(v48 + 16);
  }

  else
  {
    v50 = (v48 + 8);
  }

  if ((*a3 - v15) >= v49)
  {
    v54 = v49;
    memcpy(v15, v50, v49);
    v15 += v54;
    return v15;
  }

  return sub_1957130(a3, v50, v49, v15);
}

uint64_t sub_1420B70(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959E5C((a1 + 48));
  if (v3)
  {
    v4 = v3;
    if ((v3 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v5;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 64) = v4;
  v6 = v2 + v3;
  v7 = sub_1959E5C((a1 + 72));
  if (v7)
  {
    v8 = v7;
    if ((v7 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6 += v9;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 88) = v8;
  v10 = v6 + v7;
  v11 = sub_1959E5C((a1 + 96));
  if (v11)
  {
    v12 = v11;
    if ((v11 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v10 += v13;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 112) = v12;
  v14 = *(a1 + 128);
  v15 = v10 + v11 + 2 * v14;
  v16 = *(a1 + 136);
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
      v20 = sub_14242F0(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 40);
  if ((v21 & 7) != 0)
  {
    if (v21)
    {
      v22 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
      v23 = *(v22 + 23);
      v24 = *(v22 + 8);
      if ((v23 & 0x80u) == 0)
      {
        v24 = v23;
      }

      v15 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v15 += v21 & 2;
    if ((v21 & 4) != 0)
    {
      v25 = *(a1 + 156);
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v25 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 11;
      }

      v15 += v27;
    }
  }

  v28 = *(a1 + 8);
  if (v28)
  {
    v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v31 < 0)
    {
      v31 = *(v30 + 16);
    }

    v15 += v31;
  }

  *(a1 + 44) = v15;
  return v15;
}

void sub_1420D90(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 72);
  if (v8)
  {
    v9 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v9 + v8);
    v10 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v10 + 4 * v9), *(a2 + 80), 4 * *(a2 + 72));
  }

  v11 = *(a2 + 96);
  if (v11)
  {
    v12 = *(a1 + 96);
    sub_1958E5C((a1 + 96), v12 + v11);
    v13 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy((v13 + 4 * v12), *(a2 + 104), 4 * *(a2 + 96));
  }

  v14 = *(a2 + 128);
  if (v14)
  {
    v15 = *(a2 + 136);
    v16 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_144BC0C((a1 + 120), v16, (v15 + 8), v14, **(a1 + 136) - *(a1 + 128));
    v17 = *(a1 + 128) + v14;
    *(a1 + 128) = v17;
    v18 = *(a1 + 136);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 40);
  if ((v19 & 7) != 0)
  {
    if (v19)
    {
      v21 = *(a2 + 144);
      *(a1 + 40) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((a1 + 144), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
LABEL_15:
          *(a1 + 40) |= v19;
          goto LABEL_16;
        }

LABEL_14:
        *(a1 + 156) = *(a2 + 156);
        goto LABEL_15;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 152) = *(a2 + 152);
    if ((v19 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  sub_225EA0C(a1 + 16, a2 + 16);
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_1420FAC(void *a1)
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

void sub_1421020(void *a1)
{
  sub_1420FAC(a1);

  operator delete();
}

uint64_t sub_1421058(uint64_t a1)
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

char *sub_1421070(uint64_t a1, char *a2, int32x2_t *a3)
{
  v14 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v14, a3[11].u32[1]))
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = v14 + 1;
    v7 = *v14;
    if (*v14 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v14, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v14 + 2;
      }
    }

    v14 = v6;
    if (v7 == 9)
    {
      *(a1 + 24) = *v6;
      v14 = v6 + 8;
      v5 = 1;
      goto LABEL_16;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v14;
    }

    v14 = sub_1952690(v7, v12, v6, a3);
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_16:
    if (sub_195ADC0(a3, &v14, a3[11].u32[1]))
    {
      goto LABEL_21;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_21;
  }

LABEL_22:
  v14 = 0;
LABEL_21:
  *(a1 + 16) |= v5;
  return v14;
}

char *sub_14211A4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 9;
    *(v4 + 1) = v6;
    v4 += 9;
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

uint64_t sub_1421284(uint64_t a1)
{
  v1 = 9;
  if ((*(a1 + 16) & 1) == 0)
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

uint64_t sub_14212DC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E1288;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = &qword_278E990;
  *(a1 + 213) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void sub_1421380(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14213B0(void *a1)
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

  sub_1421474(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144AE08(a1 + 17);
  sub_144AD84(a1 + 14);
  sub_1956ABC((a1 + 12));
  sub_144AD00(a1 + 9);
  sub_144AC7C(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1421474(uint64_t a1)
{
  v3 = *(a1 + 160);
  result = (a1 + 160);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2770600)
  {
    v4 = *(a1 + 168);
    if (v4)
    {
      sub_1413FB0(v4);
      operator delete();
    }

    v5 = *(a1 + 176);
    if (v5)
    {
      sub_141D1AC(v5);
      operator delete();
    }

    v6 = *(a1 + 184);
    if (v6)
    {
      sub_1420FAC(v6);
      operator delete();
    }

    result = *(a1 + 192);
    if (result)
    {
      sub_1481624(result);

      operator delete();
    }
  }

  return result;
}

void sub_1421558(void *a1)
{
  sub_14213B0(a1);

  operator delete();
}

uint64_t sub_1421590(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_142E37C(v5);
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
      result = sub_141F100(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  *(a1 + 96) = 0;
  v9 = *(a1 + 120);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 128) + 8);
    do
    {
      v11 = *v10++;
      result = sub_141F96C(v11);
      --v9;
    }

    while (v9);
    *(a1 + 120) = 0;
  }

  v12 = *(a1 + 144);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 152) + 8);
    do
    {
      v14 = *v13++;
      result = sub_14201A8(v14);
      --v12;
    }

    while (v12);
    *(a1 + 144) = 0;
  }

  v15 = *(a1 + 40);
  if ((v15 & 0x1F) != 0)
  {
    if ((v15 & 1) == 0)
    {
      if ((v15 & 2) == 0)
      {
        goto LABEL_20;
      }

LABEL_27:
      result = sub_1414098(*(a1 + 168));
      if ((v15 & 4) == 0)
      {
LABEL_21:
        if ((v15 & 8) == 0)
        {
LABEL_31:
          if ((v15 & 0x10) != 0)
          {
            result = sub_1481660(*(a1 + 192));
          }

          goto LABEL_33;
        }

LABEL_29:
        v17 = *(a1 + 184);
        v18 = *(v17 + 8);
        result = v17 + 8;
        *(result + 16) = 0;
        *(result + 8) = 0;
        if (v18)
        {
          result = sub_1957EA8(result);
        }

        goto LABEL_31;
      }

LABEL_28:
      result = sub_141D35C(*(a1 + 176));
      if ((v15 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v16 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v16 + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
      if ((v15 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
      if ((v15 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_20:
    if ((v15 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

LABEL_33:
  if ((v15 & 0xE0) != 0)
  {
    *(a1 + 208) = 0;
    *(a1 + 200) = 0;
  }

  if ((v15 & 0x700) != 0)
  {
    *(a1 + 220) = 0;
    *(a1 + 212) = 0;
  }

  v20 = *(a1 + 8);
  v19 = a1 + 8;
  *(v19 + 32) = 0;
  if (v20)
  {

    return sub_1957EA8(v19);
  }

  return result;
}

uint64_t sub_1421740(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v90 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v90, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = (*v90 + 1);
    v10 = **v90;
    if (**v90 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v90, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v90 + 2);
      }
    }

    *v90 = v9;
    switch(v10 >> 3)
    {
      case 2u:
        if (v10 != 16)
        {
          goto LABEL_138;
        }

        v6 |= 0x20u;
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
          *v90 = v14;
          *(a1 + 200) = v15;
          goto LABEL_148;
        }

        v80 = sub_1958770(v9, v15);
        *v90 = v80;
        *(a1 + 200) = v81;
        if (!v80)
        {
          goto LABEL_153;
        }

        goto LABEL_148;
      case 3u:
        if (v10 != 24)
        {
          goto LABEL_138;
        }

        v6 |= 0x40u;
        v40 = v9 + 1;
        v41 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        v42 = *v40;
        v41 = v41 + (v42 << 7) - 128;
        if (v42 < 0)
        {
          v82 = sub_1958770(v9, v41);
          *v90 = v82;
          *(a1 + 204) = v83;
          if (!v82)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v40 = v9 + 2;
LABEL_60:
          *v90 = v40;
          *(a1 + 204) = v41;
        }

        goto LABEL_148;
      case 7u:
        if (v10 != 58)
        {
          goto LABEL_138;
        }

        v29 = v9 - 1;
        while (1)
        {
          v30 = v29 + 1;
          *v90 = v29 + 1;
          v31 = *(a1 + 64);
          if (v31 && (v32 = *(a1 + 56), v32 < *v31))
          {
            *(a1 + 56) = v32 + 1;
            v33 = *&v31[2 * v32 + 2];
          }

          else
          {
            v34 = sub_1436258(*(a1 + 48));
            v33 = sub_19593CC(a1 + 48, v34);
            v30 = *v90;
          }

          v29 = sub_2209918(a3, v33, v30);
          *v90 = v29;
          if (!v29)
          {
            goto LABEL_153;
          }

          if (*a3 <= v29 || *v29 != 58)
          {
            goto LABEL_148;
          }
        }

      case 8u:
        if (v10 != 66)
        {
          goto LABEL_138;
        }

        *(a1 + 40) |= 1u;
        v56 = *(a1 + 8);
        v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
        if (v56)
        {
          v57 = *v57;
        }

        v58 = sub_194DB04((a1 + 160), v57);
        v19 = sub_1958890(v58, *v90, a3);
        goto LABEL_147;
      case 0xAu:
        if (v10 != 80)
        {
          goto LABEL_138;
        }

        v6 |= 0x80u;
        v59 = v9 + 1;
        v60 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        v61 = *v59;
        v60 = v60 + (v61 << 7) - 128;
        if (v61 < 0)
        {
          v86 = sub_1958770(v9, v60);
          *v90 = v86;
          *(a1 + 208) = v87;
          if (!v86)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v59 = v9 + 2;
LABEL_96:
          *v90 = v59;
          *(a1 + 208) = v60;
        }

        goto LABEL_148;
      case 0xBu:
        if (v10 != 90)
        {
          goto LABEL_138;
        }

        *(a1 + 40) |= 2u;
        v35 = *(a1 + 168);
        if (!v35)
        {
          v36 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v36 = *v36;
          }

          v35 = sub_141BDA4(v36);
          *(a1 + 168) = v35;
          v9 = *v90;
        }

        v19 = sub_22099A8(a3, v35, v9);
        goto LABEL_147;
      case 0xDu:
        if (v10 != 106)
        {
          goto LABEL_138;
        }

        v43 = v9 - 1;
        while (1)
        {
          v44 = v43 + 1;
          *v90 = v43 + 1;
          v45 = *(a1 + 88);
          if (v45 && (v46 = *(a1 + 80), v46 < *v45))
          {
            *(a1 + 80) = v46 + 1;
            v47 = *&v45[2 * v46 + 2];
          }

          else
          {
            sub_1435618(*(a1 + 72));
            v47 = sub_19593CC(a1 + 72, v48);
            v44 = *v90;
          }

          v43 = sub_2209A38(a3, v47, v44);
          *v90 = v43;
          if (!v43)
          {
            goto LABEL_153;
          }

          if (*a3 <= v43 || *v43 != 106)
          {
            goto LABEL_148;
          }
        }

      case 0xEu:
        if (v10 != 114)
        {
          goto LABEL_138;
        }

        *(a1 + 40) |= 4u;
        v49 = *(a1 + 176);
        if (!v49)
        {
          v50 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v50 = *v50;
          }

          v49 = sub_1435454(v50);
          *(a1 + 176) = v49;
          v9 = *v90;
        }

        v19 = sub_2209AC8(a3, v49, v9);
        goto LABEL_147;
      case 0xFu:
        if (v10 == 120)
        {
          v68 = (v9 - 1);
          while (1)
          {
            *v90 = v68 + 1;
            v69 = *(v68 + 1);
            v70 = (v68 + 2);
            if (v69 < 0)
            {
              v71 = *v70;
              v72 = (v71 << 7) + v69;
              LODWORD(v69) = v72 - 128;
              if (v71 < 0)
              {
                *v90 = sub_19587DC(v68 + 1, (v72 - 128));
                if (!*v90)
                {
                  goto LABEL_153;
                }

                LODWORD(v69) = v75;
                goto LABEL_113;
              }

              v70 = (v68 + 3);
            }

            *v90 = v70;
LABEL_113:
            if (v69 > 4)
            {
              sub_12E8538();
            }

            else
            {
              v73 = *(a1 + 96);
              if (v73 == *(a1 + 100))
              {
                v74 = v73 + 1;
                sub_1958E5C((a1 + 96), v73 + 1);
                *(*(a1 + 104) + 4 * v73) = v69;
              }

              else
              {
                *(*(a1 + 104) + 4 * v73) = v69;
                v74 = v73 + 1;
              }

              *(a1 + 96) = v74;
            }

            v68 = *v90;
            if (*a3 <= *v90 || **v90 != 120)
            {
              goto LABEL_148;
            }
          }
        }

        if (v10 == 122)
        {
          *&v91 = a1 + 96;
          *(&v91 + 1) = sub_141C274;
          v92 = a1 + 8;
          v93 = 15;
          v19 = sub_1216588(a3, v9, &v91, v5);
LABEL_147:
          *v90 = v19;
          if (!v19)
          {
            goto LABEL_153;
          }

LABEL_148:
          if (sub_195ADC0(a3, v90, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_138:
        if (v10)
        {
          v88 = (v10 & 7) == 4;
        }

        else
        {
          v88 = 1;
        }

        if (!v88)
        {
          if (v10 - 7600 > 0x18F)
          {
            if (*v8)
            {
              v89 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v89 = sub_11F1920((a1 + 8));
              v9 = *v90;
            }

            v19 = sub_1952690(v10, v89, v9, a3);
          }

          else
          {
            v19 = sub_19525AC((a1 + 16), v10, v9, &off_2770600, (a1 + 8), a3);
          }

          goto LABEL_147;
        }

        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
        }

        else
        {
LABEL_153:
          *v90 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v6;
        return *v90;
      case 0x12u:
        if (v10 != 146)
        {
          goto LABEL_138;
        }

        v62 = v9 - 2;
        while (1)
        {
          v63 = v62 + 2;
          *v90 = v62 + 2;
          v64 = *(a1 + 128);
          if (v64 && (v65 = *(a1 + 120), v65 < *v64))
          {
            *(a1 + 120) = v65 + 1;
            v66 = *&v64[2 * v65 + 2];
          }

          else
          {
            v67 = sub_14356BC(*(a1 + 112));
            v66 = sub_19593CC(a1 + 112, v67);
            v63 = *v90;
          }

          v62 = sub_2209B58(a3, v66, v63);
          *v90 = v62;
          if (!v62)
          {
            goto LABEL_153;
          }

          if (*a3 <= v62 || *v62 != 402)
          {
            goto LABEL_148;
          }
        }

      case 0x13u:
        if (v10 != 154)
        {
          goto LABEL_138;
        }

        v20 = v9 - 2;
        while (1)
        {
          v21 = v20 + 2;
          *v90 = v20 + 2;
          v22 = *(a1 + 152);
          if (v22 && (v23 = *(a1 + 144), v23 < *v22))
          {
            *(a1 + 144) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_1435718(*(a1 + 136));
            v24 = sub_19593CC(a1 + 136, v25);
            v21 = *v90;
          }

          v20 = sub_2209BE8(a3, v24, v21);
          *v90 = v20;
          if (!v20)
          {
            goto LABEL_153;
          }

          if (*a3 <= v20 || *v20 != 410)
          {
            goto LABEL_148;
          }
        }

      case 0x14u:
        if (v10 != 160)
        {
          goto LABEL_138;
        }

        v6 |= 0x100u;
        v37 = v9 + 1;
        v38 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        v39 = *v37;
        v38 = v38 + (v39 << 7) - 128;
        if (v39 < 0)
        {
          v78 = sub_1958770(v9, v38);
          *v90 = v78;
          *(a1 + 212) = v79;
          if (!v78)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v37 = v9 + 2;
LABEL_55:
          *v90 = v37;
          *(a1 + 212) = v38;
        }

        goto LABEL_148;
      case 0x15u:
        if (v10 != 168)
        {
          goto LABEL_138;
        }

        v6 |= 0x200u;
        v26 = v9 + 1;
        v27 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        v28 = *v26;
        v27 = v27 + (v28 << 7) - 128;
        if (v28 < 0)
        {
          v76 = sub_1958770(v9, v27);
          *v90 = v76;
          *(a1 + 216) = v77;
          if (!v76)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v26 = v9 + 2;
LABEL_34:
          *v90 = v26;
          *(a1 + 216) = v27;
        }

        goto LABEL_148;
      case 0x16u:
        if (v10 != 178)
        {
          goto LABEL_138;
        }

        *(a1 + 40) |= 8u;
        v17 = *(a1 + 184);
        if (!v17)
        {
          v18 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v18 = *v18;
          }

          v17 = sub_1435774(v18);
          *(a1 + 184) = v17;
          v9 = *v90;
        }

        v19 = sub_2209C78(a3, v17, v9);
        goto LABEL_147;
      case 0x17u:
        if (v10 != 184)
        {
          goto LABEL_138;
        }

        v6 |= 0x400u;
        v52 = v9 + 1;
        v51 = *v9;
        if ((v51 & 0x8000000000000000) == 0)
        {
          goto LABEL_81;
        }

        v53 = *v52;
        v51 = (v53 << 7) + v51 - 128;
        if (v53 < 0)
        {
          v84 = sub_19587DC(v9, v51);
          *v90 = v84;
          *(a1 + 220) = v85 != 0;
          if (!v84)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v52 = v9 + 2;
LABEL_81:
          *v90 = v52;
          *(a1 + 220) = v51 != 0;
        }

        goto LABEL_148;
      case 0x18u:
        if (v10 != 194)
        {
          goto LABEL_138;
        }

        *(a1 + 40) |= 0x10u;
        v54 = *(a1 + 192);
        if (!v54)
        {
          v55 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v55 = *v55;
          }

          v54 = sub_14BCF4C(v55);
          *(a1 + 192) = v54;
          v9 = *v90;
        }

        v19 = sub_2209D08(a3, v54, v9);
        goto LABEL_147;
      default:
        goto LABEL_138;
    }
  }
}

char *sub_1422044(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 200);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 204);
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

  v15 = *(a1 + 56);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 64) + 8 * i + 8);
      *v11 = 58;
      v18 = *(v17 + 44);
      v11[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v11 + 1);
      }

      else
      {
        v19 = v11 + 2;
      }

      v11 = sub_142F4EC(v17, v19, a3);
    }
  }

  if (v5)
  {
    v11 = sub_128AEEC(a3, 8, (*(a1 + 160) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v21 = *(a1 + 208);
    *v11 = 80;
    v11[1] = v21;
    if (v21 > 0x7F)
    {
      v11[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v11[2] = v21 >> 7;
      v20 = v11 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v23) = v11[2];
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
      v20 = v11 + 2;
    }
  }

  else
  {
    v20 = v11;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 168);
    *v20 = 90;
    v26 = *(v25 + 44);
    v20[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v20 + 1);
    }

    else
    {
      v27 = v20 + 2;
    }

    v20 = sub_1414414(v25, v27, a3);
  }

  v28 = *(a1 + 80);
  if (v28)
  {
    for (j = 0; j != v28; ++j)
    {
      if (*a3 <= v20)
      {
        v20 = sub_225EB68(a3, v20);
      }

      v30 = *(*(a1 + 88) + 8 * j + 8);
      *v20 = 106;
      v31 = *(v30 + 56);
      v20[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v20 + 1);
      }

      else
      {
        v32 = v20 + 2;
      }

      v20 = sub_141F40C(v30, v32, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v33 = *(a1 + 176);
    *v20 = 114;
    v34 = *(v33 + 20);
    v20[1] = v34;
    if (v34 > 0x7F)
    {
      v35 = sub_19575D0(v34, v20 + 1);
    }

    else
    {
      v35 = v20 + 2;
    }

    v20 = sub_141D820(v33, v35, a3);
  }

  v36 = *(a1 + 96);
  if (v36 < 1)
  {
    v39 = v20;
  }

  else
  {
    for (k = 0; k != v36; ++k)
    {
      if (*a3 <= v20)
      {
        v20 = sub_225EB68(a3, v20);
      }

      v38 = *(*(a1 + 104) + 4 * k);
      *v20 = 120;
      v20[1] = v38;
      if (v38 > 0x7F)
      {
        v20[1] = v38 | 0x80;
        v40 = v38 >> 7;
        v20[2] = v38 >> 7;
        v39 = v20 + 3;
        if (v38 >= 0x4000)
        {
          LOBYTE(v20) = v20[2];
          do
          {
            *(v39 - 1) = v20 | 0x80;
            v20 = (v40 >> 7);
            *v39++ = v40 >> 7;
            v41 = v40 >> 14;
            v40 >>= 7;
          }

          while (v41);
        }
      }

      else
      {
        v39 = v20 + 2;
      }

      v20 = v39;
    }
  }

  v42 = *(a1 + 120);
  if (v42)
  {
    for (m = 0; m != v42; ++m)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v44 = *(*(a1 + 128) + 8 * m + 8);
      *v39 = 402;
      v45 = *(v44 + 44);
      v39[2] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v39 + 2);
      }

      else
      {
        v46 = v39 + 3;
      }

      v39 = sub_141FBE0(v44, v46, a3);
    }
  }

  v47 = *(a1 + 144);
  if (v47)
  {
    for (n = 0; n != v47; ++n)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v49 = *(*(a1 + 152) + 8 * n + 8);
      *v39 = 410;
      v50 = *(v49 + 44);
      v39[2] = v50;
      if (v50 > 0x7F)
      {
        v51 = sub_19575D0(v50, v39 + 2);
      }

      else
      {
        v51 = v39 + 3;
      }

      v39 = sub_1420660(v49, v51, a3);
    }
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v53 = *(a1 + 212);
    *v39 = 416;
    v39[2] = v53;
    if (v53 > 0x7F)
    {
      v39[2] = v53 | 0x80;
      v54 = v53 >> 7;
      v39[3] = v53 >> 7;
      v52 = v39 + 4;
      if (v53 >= 0x4000)
      {
        LOBYTE(v39) = v39[3];
        do
        {
          *(v52 - 1) = v39 | 0x80;
          LODWORD(v39) = v54 >> 7;
          *v52++ = v54 >> 7;
          v55 = v54 >> 14;
          v54 >>= 7;
        }

        while (v55);
      }
    }

    else
    {
      v52 = v39 + 3;
    }
  }

  else
  {
    v52 = v39;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v52)
    {
      v52 = sub_225EB68(a3, v52);
    }

    v57 = *(a1 + 216);
    *v52 = 424;
    v52[2] = v57;
    if (v57 > 0x7F)
    {
      v52[2] = v57 | 0x80;
      v58 = v57 >> 7;
      v52[3] = v57 >> 7;
      v56 = v52 + 4;
      if (v57 >= 0x4000)
      {
        LOBYTE(v59) = v52[3];
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
      v56 = v52 + 3;
    }
  }

  else
  {
    v56 = v52;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v61 = *(a1 + 184);
    *v56 = 434;
    v62 = *(v61 + 20);
    v56[2] = v62;
    if (v62 > 0x7F)
    {
      v63 = sub_19575D0(v62, v56 + 2);
    }

    else
    {
      v63 = v56 + 3;
    }

    v56 = sub_14211A4(v61, v63, a3);
    if ((v5 & 0x400) == 0)
    {
LABEL_108:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_119;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_108;
  }

  if (*a3 <= v56)
  {
    v56 = sub_225EB68(a3, v56);
  }

  v64 = *(a1 + 220);
  *v56 = 440;
  v56[2] = v64;
  v56 += 3;
  if ((v5 & 0x10) != 0)
  {
LABEL_119:
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v65 = *(a1 + 192);
    *v56 = 450;
    v66 = *(v65 + 20);
    v56[2] = v66;
    if (v66 > 0x7F)
    {
      v67 = sub_19575D0(v66, v56 + 2);
    }

    else
    {
      v67 = v56 + 3;
    }

    v56 = sub_1481B84(v65, v67, a3);
  }

LABEL_125:
  if (*(a1 + 26))
  {
    v56 = sub_1953428(a1 + 16, 950, 1000, v56, a3);
  }

  v68 = *(a1 + 8);
  if ((v68 & 1) == 0)
  {
    return v56;
  }

  v70 = v68 & 0xFFFFFFFFFFFFFFFCLL;
  v71 = *(v70 + 31);
  if (v71 < 0)
  {
    v72 = *(v70 + 8);
    v71 = *(v70 + 16);
  }

  else
  {
    v72 = (v70 + 8);
  }

  if ((*a3 - v56) >= v71)
  {
    v73 = v71;
    memcpy(v56, v72, v71);
    v56 += v73;
    return v56;
  }

  return sub_1957130(a3, v72, v71, v56);
}

uint64_t sub_142286C(uint64_t a1)
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
      v9 = sub_1430508(v8);
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
      v16 = sub_141F5EC(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 96);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*(a1 + 104) + 4 * v19);
      if (v20 < 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = (9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6;
      }

      v18 += v21;
      ++v19;
    }

    while (v17 != v19);
  }

  else
  {
    v18 = 0;
  }

  v22 = *(a1 + 120);
  v23 = v11 + v17 + v18 + 2 * v22;
  v24 = *(a1 + 128);
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
      v28 = sub_141FE1C(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 144);
  v30 = v23 + 2 * v29;
  v31 = *(a1 + 152);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = sub_1420B70(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 40);
  if (!v36)
  {
    goto LABEL_43;
  }

  if (v36)
  {
    v39 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(v39 + 23);
    v41 = *(v39 + 8);
    if ((v40 & 0x80u) == 0)
    {
      v41 = v40;
    }

    v30 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 2) == 0)
    {
LABEL_36:
      if ((v36 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_56;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_36;
  }

  v42 = sub_1414638(*(a1 + 168));
  v30 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v36 & 4) == 0)
  {
LABEL_37:
    if ((v36 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_57;
  }

LABEL_56:
  v43 = sub_141DC38(*(a1 + 176));
  v30 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v36 & 8) == 0)
  {
LABEL_38:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_61;
  }

LABEL_57:
  v44 = *(a1 + 184);
  v45 = 9;
  if ((*(v44 + 16) & 1) == 0)
  {
    v45 = 0;
  }

  v46 = *(v44 + 8);
  if (v46)
  {
    v50 = v46 & 0xFFFFFFFFFFFFFFFCLL;
    v51 = *((v46 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v51 < 0)
    {
      v51 = *(v50 + 16);
    }

    v45 += v51;
  }

  *(v44 + 20) = v45;
  v30 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v36 & 0x10) == 0)
  {
LABEL_39:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_40;
    }

LABEL_62:
    v30 += ((9 * (__clz(*(a1 + 200) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 0x40) == 0)
    {
LABEL_41:
      if ((v36 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    goto LABEL_63;
  }

LABEL_61:
  v47 = sub_1481F08(*(a1 + 192));
  v30 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v36 & 0x20) != 0)
  {
    goto LABEL_62;
  }

LABEL_40:
  if ((v36 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_63:
  v30 += ((9 * (__clz(*(a1 + 204) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v36 & 0x80) != 0)
  {
LABEL_42:
    v30 += ((9 * (__clz(*(a1 + 208) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_43:
  if ((v36 & 0x700) != 0)
  {
    if ((v36 & 0x100) != 0)
    {
      v30 += ((9 * (__clz(*(a1 + 212) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v36 & 0x200) != 0)
    {
      v30 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v36 & 0x400) != 0)
    {
      v30 += 3;
    }
  }

  v37 = *(a1 + 8);
  if (v37)
  {
    v48 = v37 & 0xFFFFFFFFFFFFFFFCLL;
    v49 = *((v37 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v49 < 0)
    {
      v49 = *(v48 + 16);
    }

    v30 += v49;
  }

  *(a1 + 44) = v30;
  return v30;
}

void sub_1422CA0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144BC98((a1 + 48), v7, (v6 + 8), v5, **(a1 + 64) - *(a1 + 56), v8);
    v9 = *(a1 + 56) + v5;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *(a2 + 88);
    v13 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_144BD24((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 96);
  if (v16)
  {
    v17 = *(a1 + 96);
    sub_1958E5C((a1 + 96), v17 + v16);
    v18 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy((v18 + 4 * v17), *(a2 + 104), 4 * *(a2 + 96));
  }

  v19 = *(a2 + 120);
  if (v19)
  {
    v20 = *(a2 + 128);
    v21 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_144BDB0((a1 + 112), v21, (v20 + 8), v19, **(a1 + 128) - *(a1 + 120));
    v22 = *(a1 + 120) + v19;
    *(a1 + 120) = v22;
    v23 = *(a1 + 128);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 144);
  if (v24)
  {
    v25 = *(a2 + 152);
    v26 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_144BE3C((a1 + 136), v26, (v25 + 8), v24, **(a1 + 152) - *(a1 + 144));
    v27 = *(a1 + 144) + v24;
    *(a1 + 144) = v27;
    v28 = *(a1 + 152);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 40);
  if (v29)
  {
    if (v29)
    {
      v31 = *(a2 + 160);
      *(a1 + 40) |= 1u;
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_194EA1C((a1 + 160), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
      if ((v29 & 2) == 0)
      {
LABEL_18:
        if ((v29 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_47;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_18;
    }

    *(a1 + 40) |= 2u;
    v34 = *(a1 + 168);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_141BDA4(v36);
      *(a1 + 168) = v34;
    }

    if (*(a2 + 168))
    {
      v37 = *(a2 + 168);
    }

    else
    {
      v37 = &off_27700C0;
    }

    sub_1414718(v34, v37);
    if ((v29 & 4) == 0)
    {
LABEL_19:
      if ((v29 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_55;
    }

LABEL_47:
    *(a1 + 40) |= 4u;
    v38 = *(a1 + 176);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_1435454(v40);
      *(a1 + 176) = v38;
    }

    if (*(a2 + 176))
    {
      v41 = *(a2 + 176);
    }

    else
    {
      v41 = &off_2770468;
    }

    sub_141DE58(v38, v41);
    if ((v29 & 8) == 0)
    {
LABEL_20:
      if ((v29 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_63;
    }

LABEL_55:
    *(a1 + 40) |= 8u;
    v42 = *(a1 + 184);
    if (!v42)
    {
      v43 = *(a1 + 8);
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
      if (v43)
      {
        v44 = *v44;
      }

      v42 = sub_1435774(v44);
      *(a1 + 184) = v42;
    }

    if (*(a2 + 184))
    {
      v45 = *(a2 + 184);
    }

    else
    {
      v45 = &off_27705E0;
    }

    sub_1337D0C(v42, v45);
    if ((v29 & 0x10) == 0)
    {
LABEL_21:
      if ((v29 & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_71;
    }

LABEL_63:
    *(a1 + 40) |= 0x10u;
    v46 = *(a1 + 192);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      v46 = sub_14BCF4C(v48);
      *(a1 + 192) = v46;
    }

    if (*(a2 + 192))
    {
      v49 = *(a2 + 192);
    }

    else
    {
      v49 = &off_27725C0;
    }

    sub_14820F8(v46, v49, a3);
    if ((v29 & 0x20) == 0)
    {
LABEL_22:
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_72;
    }

LABEL_71:
    *(a1 + 200) = *(a2 + 200);
    if ((v29 & 0x40) == 0)
    {
LABEL_23:
      if ((v29 & 0x80) == 0)
      {
LABEL_25:
        *(a1 + 40) |= v29;
        goto LABEL_26;
      }

LABEL_24:
      *(a1 + 208) = *(a2 + 208);
      goto LABEL_25;
    }

LABEL_72:
    *(a1 + 204) = *(a2 + 204);
    if ((v29 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_26:
  if ((v29 & 0x700) == 0)
  {
    goto LABEL_32;
  }

  if ((v29 & 0x100) == 0)
  {
    if ((v29 & 0x200) == 0)
    {
      goto LABEL_29;
    }

LABEL_75:
    *(a1 + 216) = *(a2 + 216);
    if ((v29 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  *(a1 + 212) = *(a2 + 212);
  if ((v29 & 0x200) != 0)
  {
    goto LABEL_75;
  }

LABEL_29:
  if ((v29 & 0x400) != 0)
  {
LABEL_30:
    *(a1 + 220) = *(a2 + 220);
  }

LABEL_31:
  *(a1 + 40) |= v29;
LABEL_32:
  sub_225EA0C(a1 + 16, a2 + 16);
  v30 = *(a2 + 8);
  if (v30)
  {

    sub_1957EF4((a1 + 8), (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14230C4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1431318(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_14231C4(a1 + 72);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 120);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_195228C(*(*(a1 + 128) + 8 * v6) + 16);
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 144);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_195228C(*(*(a1 + 152) + 8 * v9) + 16);
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 40);
    if ((v12 & 2) != 0)
    {
      result = sub_195228C(*(a1 + 168) + 16);
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 4) != 0)
    {
      result = sub_141E120(*(a1 + 176));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x10) == 0)
    {
      return 1;
    }

    result = sub_148244C(*(a1 + 192));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14231C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 40);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_141E1DC(*(*(v4 + 48) + 8 * v5) + 32);
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

void *sub_1423264(void *a1)
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

void sub_14232E0(void *a1)
{
  sub_1423264(a1);

  operator delete();
}

uint64_t *sub_1423318(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 8) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1423334(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v23 = v7 + 1;
    LODWORD(v22) = *v7;
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_38;
    }

    v24 = *v23;
    v22 = v22 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_38:
      v27 = v23;
      *(a1 + 40) = v22;
      v5 = 1;
      goto LABEL_39;
    }

    v25 = sub_19587DC(v7, v22);
    v27 = v25;
    *(a1 + 40) = v26;
    v5 = 1;
    if (!v25)
    {
      goto LABEL_48;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v27, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v16 = v7 - 1;
    while (1)
    {
      v27 = v16 + 1;
      v17 = v16[1];
      if (v17 < 0)
      {
        v18 = (v16[2] << 7) + v17;
        LODWORD(v17) = v18 - 128;
        if (v16[2] < 0)
        {
          v16 = sub_19587DC((v16 + 1), (v18 - 128));
          LODWORD(v17) = v19;
        }

        else
        {
          v16 += 3;
        }
      }

      else
      {
        v16 += 2;
      }

      v27 = v16;
      v20 = *(a1 + 24);
      if (v20 == *(a1 + 28))
      {
        v21 = v20 + 1;
        sub_1958E5C((a1 + 24), v20 + 1);
        *(*(a1 + 32) + 4 * v20) = v17;
        v16 = v27;
      }

      else
      {
        *(*(a1 + 32) + 4 * v20) = v17;
        v21 = v20 + 1;
      }

      *(a1 + 24) = v21;
      if (!v16)
      {
        goto LABEL_48;
      }

      if (*a3 <= v16 || *v16 != 16)
      {
        goto LABEL_39;
      }
    }
  }

  if (v8 == 18)
  {
    v15 = sub_1958908((a1 + 24), v7, a3);
    goto LABEL_19;
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
      v7 = v27;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
LABEL_19:
    v27 = v15;
    if (!v15)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v27 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

char *sub_142359C(uint64_t a1, char *a2, unint64_t *a3)
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

uint64_t sub_1423778(uint64_t a1)
{
  result = sub_1959E04((a1 + 24)) + *(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = *(a1 + 40);
    if (v3 < 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v4;
  }

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

void *sub_1423820(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144AE8C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14238A0(void *a1)
{
  sub_1423820(a1);

  operator delete();
}

char *sub_14238D8(uint64_t a1)
{
  result = sub_13115E8((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1423928(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1435848(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2209D98(a3, v16, v13);
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