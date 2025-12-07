std::string *sub_14AD88C(std::string *result, std::string *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_1492188(result);

    return sub_1494BAC(v4, a2);
  }

  return result;
}

uint64_t sub_14AD8F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E73C0;
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

void sub_14AD96C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14AD99C(void *a1)
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

void sub_14ADA10(void *a1)
{
  sub_14AD99C(a1);

  operator delete();
}

uint64_t sub_14ADA48(uint64_t a1)
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

char *sub_14ADA6C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v22, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v22 + 1;
    v8 = *v22;
    if (*v22 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v22, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v22 + 2;
      }
    }

    v22 = v7;
    if (v8 >> 3 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v16 = v7 + 1;
      v15 = *v7;
      if (v15 < 0)
      {
        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v22 = sub_19587DC(v7, v15);
          if (!v22)
          {
            goto LABEL_42;
          }

          goto LABEL_25;
        }

        v16 = v7 + 2;
      }

      v22 = v16;
LABEL_25:
      if (v15 > 1)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 28) = v15;
      }

      goto LABEL_32;
    }

    if (v8 >> 3 == 1 && v8 == 8)
    {
      LODWORD(v18) = *v7;
      if ((v18 & 0x80000000) != 0)
      {
        v18 = (v7[1] << 7) + v18 - 128;
        if (v7[1] < 0)
        {
          v20 = sub_19587DC(v7, v18);
          v22 = v20;
          *(a1 + 24) = v21;
          v5 = 1;
          if (!v20)
          {
            goto LABEL_42;
          }

          goto LABEL_32;
        }

        v19 = v7 + 2;
      }

      else
      {
        v19 = v7 + 1;
      }

      v22 = v19;
      *(a1 + 24) = v18;
      v5 = 1;
      goto LABEL_32;
    }

LABEL_12:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v22;
    }

    v22 = sub_1952690(v8, v14, v7, a3);
    if (!v22)
    {
      goto LABEL_42;
    }

LABEL_32:
    if (sub_195ADC0(a3, &v22, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_42:
  v22 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

char *sub_14ADC70(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_14ADE20(uint64_t a1)
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

uint64_t sub_14ADEF0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E7440;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = a2;
  *(a1 + 80) = 1;
  return a1;
}

void sub_14ADF68(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14ADF98(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E7440;
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
  if (*(a2 + 40))
  {
    operator new();
  }

  *(a1 + 64) = 0;
  v9 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v9;
  return a1;
}

uint64_t sub_14AE124(uint64_t a1)
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
  if (a1 != &off_2773798)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_14AD99C(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14AE1EC(uint64_t a1)
{
  sub_14AE124(a1);

  operator delete();
}

char *sub_14AE224(uint64_t a1, char *a2, int32x2_t *a3)
{
  v39 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, &v39, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = v39 + 1;
    v10 = *v39;
    if (*v39 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(v39, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = v39 + 2;
      }
    }

    v39 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 <= 9)
    {
      if (v14 != 6)
      {
        if (v14 != 8 || v10 != 64)
        {
          goto LABEL_64;
        }

        v19 = v9 + 1;
        v18 = *v9;
        if (v18 < 0)
        {
          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v39 = sub_19587DC(v9, v18);
            if (!v39)
            {
              goto LABEL_81;
            }

            goto LABEL_24;
          }

          v19 = v9 + 2;
        }

        v39 = v19;
LABEL_24:
        if (v18 > 3)
        {
          sub_13B67EC();
        }

        else
        {
          *(a1 + 40) |= 2u;
          *(a1 + 72) = v18;
        }

        goto LABEL_74;
      }

      if (v10 != 48)
      {
        if (v10 == 50)
        {
          *&v40 = a1 + 48;
          *(&v40 + 1) = sub_144E2AC;
          v41 = a1 + 8;
          v42 = 6;
          v23 = sub_1216588(a3, v9, &v40, v5);
          goto LABEL_73;
        }

        goto LABEL_64;
      }

      v27 = v9 - 1;
      while (1)
      {
        v39 = v27 + 1;
        v28 = v27[1];
        v29 = v27 + 2;
        if (v28 < 0)
        {
          v30 = *v29;
          v31 = (v30 << 7) + v28;
          LODWORD(v28) = v31 - 128;
          if (v30 < 0)
          {
            v39 = sub_19587DC((v27 + 1), (v31 - 128));
            if (!v39)
            {
              goto LABEL_81;
            }

            LODWORD(v28) = v34;
            goto LABEL_45;
          }

          v29 = v27 + 3;
        }

        v39 = v29;
LABEL_45:
        if (v28 > 5)
        {
          sub_12E84C8();
        }

        else
        {
          v32 = *(a1 + 48);
          if (v32 == *(a1 + 52))
          {
            v33 = v32 + 1;
            sub_1958E5C((a1 + 48), v32 + 1);
            *(*(a1 + 56) + 4 * v32) = v28;
          }

          else
          {
            *(*(a1 + 56) + 4 * v32) = v28;
            v33 = v32 + 1;
          }

          *(a1 + 48) = v33;
        }

        v27 = v39;
        if (*a3 <= v39 || *v39 != 48)
        {
          goto LABEL_74;
        }
      }
    }

    if (v14 == 10)
    {
      break;
    }

    if (v14 == 11)
    {
      if (v10 != 88)
      {
        goto LABEL_64;
      }

      v25 = v9 + 1;
      v24 = *v9;
      if (v24 < 0)
      {
        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if ((v26 & 0x80000000) == 0)
        {
          v25 = v9 + 2;
          goto LABEL_36;
        }

        v39 = sub_19587DC(v9, v24);
        if (!v39)
        {
          goto LABEL_81;
        }
      }

      else
      {
LABEL_36:
        v39 = v25;
      }

      if (v24 > 2)
      {
        sub_156E7E0();
      }

      else
      {
        *(a1 + 40) |= 4u;
        *(a1 + 76) = v24;
      }

      goto LABEL_74;
    }

    if (v14 != 12 || v10 != 96)
    {
      goto LABEL_64;
    }

    v6 |= 8u;
    v16 = v9 + 1;
    v15 = *v9;
    if (v15 < 0)
    {
      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if (v17 < 0)
      {
        v35 = sub_19587DC(v9, v15);
        v39 = v35;
        *(a1 + 80) = v36 != 0;
        if (!v35)
        {
          goto LABEL_81;
        }

        goto LABEL_74;
      }

      v16 = v9 + 2;
    }

    v39 = v16;
    *(a1 + 80) = v15 != 0;
LABEL_74:
    if (sub_195ADC0(a3, &v39, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v10 == 82)
  {
    *(a1 + 40) |= 1u;
    v21 = *(a1 + 64);
    if (!v21)
    {
      v22 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v8)
      {
        v22 = *v22;
      }

      v21 = sub_14BECAC(v22);
      *(a1 + 64) = v21;
      v9 = v39;
    }

    v23 = sub_2211C60(a3, v21, v9);
LABEL_73:
    v39 = v23;
    if (!v23)
    {
      goto LABEL_81;
    }

    goto LABEL_74;
  }

LABEL_64:
  if (v10)
  {
    v37 = (v10 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    if (v10 - 7600 > 0x18F)
    {
      if (*v8)
      {
        v38 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v38 = sub_11F1920((a1 + 8));
        v9 = v39;
      }

      v23 = sub_1952690(v10, v38, v9, a3);
    }

    else
    {
      v23 = sub_19525AC((a1 + 16), v10, v9, &off_2773798, (a1 + 8), a3);
    }

    goto LABEL_73;
  }

  if (v9)
  {
    a3[10].i32[0] = v10 - 1;
  }

  else
  {
LABEL_81:
    v39 = 0;
  }

LABEL_2:
  *(a1 + 40) |= v6;
  return v39;
}

char *sub_14AE67C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 48);
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

      v7 = *(*(a1 + 56) + 4 * i);
      *a2 = 48;
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
  if ((v12 & 2) != 0)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v14 = *(a1 + 72);
    *v8 = 64;
    v8[1] = v14;
    if (v14 > 0x7F)
    {
      v8[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v8[2] = v14 >> 7;
      v13 = v8 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v8) = v8[2];
        do
        {
          *(v13 - 1) = v8 | 0x80;
          v8 = (v15 >> 7);
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = v8 + 2;
    }
  }

  else
  {
    v13 = v8;
  }

  if (v12)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v17 = *(a1 + 64);
    *v13 = 82;
    v18 = *(v17 + 20);
    v13[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v13 + 1);
    }

    else
    {
      v19 = v13 + 2;
    }

    v13 = sub_14ADC70(v17, v19, a3);
  }

  if ((v12 & 4) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v21 = *(a1 + 76);
    *v13 = 88;
    v13[1] = v21;
    if (v21 > 0x7F)
    {
      v13[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v13[2] = v21 >> 7;
      v20 = v13 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v13) = v13[2];
        do
        {
          *(v20 - 1) = v13 | 0x80;
          v13 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v13 + 2;
    }
  }

  else
  {
    v20 = v13;
  }

  if ((v12 & 8) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v24 = *(a1 + 80);
    *v20 = 96;
    v20[1] = v24;
    v20 += 2;
  }

  if (*(a1 + 26))
  {
    v20 = sub_1953428(a1 + 16, 950, 1000, v20, a3);
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

uint64_t sub_14AE9A0(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 56) + 4 * v4);
      if (v6 < 0)
      {
        v7 = 10;
      }

      else
      {
        v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
      }

      v5 += v7;
      ++v4;
    }

    while (v3 != v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = v2 + v3 + v5;
  v9 = *(a1 + 40);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_24;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = *(a1 + 72);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v8 += v12;
    if ((v9 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v10 = sub_14ADE20(*(a1 + 64));
  v8 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v9 & 4) != 0)
  {
LABEL_19:
    v13 = *(a1 + 76);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v8 += v14;
  }

LABEL_23:
  v8 += (v9 >> 2) & 2;
LABEL_24:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v8 += v18;
  }

  *(a1 + 44) = v8;
  return v8;
}

uint64_t sub_14AEB24(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E74C0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v5 = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 24) = v5;
  return a1;
}

void sub_14AEBA8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14AEBD8(void *a1)
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

void sub_14AEC4C(void *a1)
{
  sub_14AEBD8(a1);

  operator delete();
}

uint64_t sub_14AEC84(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 18) = 0;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_14AECA0(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 26) = v19 != 0;
      goto LABEL_35;
    }

    v29 = sub_19587DC(v7, v19);
    v31 = v29;
    *(a1 + 26) = v30 != 0;
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

    v5 |= 2u;
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
      *(a1 + 25) = v16 != 0;
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v16);
    v31 = v25;
    *(a1 + 25) = v26 != 0;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_34:
      v31 = v23;
      *(a1 + 24) = v22 != 0;
      goto LABEL_35;
    }

    v27 = sub_19587DC(v7, v22);
    v31 = v27;
    *(a1 + 24) = v28 != 0;
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

char *sub_14AEF18(uint64_t a1, char *__dst, unint64_t *a3)
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
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
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

  v8 = *(a1 + 25);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v9 = *(a1 + 26);
    *v4 = 24;
    v4[1] = v9;
    v4 += 2;
  }

LABEL_14:
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

uint64_t sub_14AF074(uint64_t a1)
{
  v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2u);
  if ((*(a1 + 16) & 7) == 0)
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

uint64_t sub_14AF0E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E7540;
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

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_14AF234(uint64_t a1)
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
  if (a1 != &off_2773810)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_14AEBD8(v6);
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

void sub_14AF2F4(uint64_t a1)
{
  sub_14AF234(a1);

  operator delete();
}

char *sub_14AF32C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, &v27, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (1)
  {
    v9 = v27 + 1;
    v10 = *v27;
    if (*v27 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(v27, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = v27 + 2;
      }
    }

    v27 = v9;
    v14 = v10 >> 3;
    if (v10 >> 3 == 3)
    {
      if (v10 != 26)
      {
        goto LABEL_14;
      }

      *(a1 + 16) |= 1u;
      v25 = *(a1 + 40);
      if (!v25)
      {
        v26 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v8)
        {
          v26 = *v26;
        }

        v25 = sub_14BED80(v26);
        *(a1 + 40) = v25;
        v9 = v27;
      }

      v18 = sub_2211CF0(a3, v25, v9);
LABEL_44:
      v27 = v18;
      if (!v18)
      {
        goto LABEL_54;
      }

      goto LABEL_47;
    }

    if (v14 == 2)
    {
      break;
    }

    if (v14 != 1 || v10 != 9)
    {
      goto LABEL_14;
    }

    v6 |= 2u;
    *(a1 + 48) = *v9;
    v27 = v9 + 8;
LABEL_47:
    if (sub_195ADC0(a3, &v27, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v10 == 16)
  {
    v19 = v9 - 1;
    while (1)
    {
      v27 = v19 + 1;
      v20 = v19[1];
      v21 = v19 + 2;
      if (v20 < 0)
      {
        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if (v22 < 0)
        {
          v27 = sub_19587DC((v19 + 1), v20);
          if (!v27)
          {
            goto LABEL_54;
          }

          goto LABEL_27;
        }

        v21 = v19 + 3;
      }

      v27 = v21;
LABEL_27:
      if (v20)
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
          *(*(a1 + 32) + 4 * v23) = 0;
        }

        else
        {
          *(*(a1 + 32) + 4 * v23) = 0;
          v24 = v23 + 1;
        }

        *(a1 + 24) = v24;
      }

      v19 = v27;
      if (*a3 <= v27 || *v27 != 16)
      {
        goto LABEL_47;
      }
    }
  }

  if (v10 == 18)
  {
    *&v28 = a1 + 24;
    *(&v28 + 1) = sub_144E2B8;
    v29 = a1 + 8;
    v30 = 2;
    v18 = sub_1216588(a3, v9, &v28, v5);
    goto LABEL_44;
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
      v9 = v27;
    }

    v18 = sub_1952690(v10, v17, v9, a3);
    goto LABEL_44;
  }

  if (v9)
  {
    a3[10].i32[0] = v10 - 1;
  }

  else
  {
LABEL_54:
    v27 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v27;
}

char *sub_14AF5E4(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(a1 + 24);
  if (v7 < 1)
  {
    v10 = a2;
  }

  else
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v9 = *(*(a1 + 32) + 4 * i);
      *a2 = 16;
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        a2[2] = v9 >> 7;
        v10 = a2 + 3;
        if (v9 >= 0x4000)
        {
          LOBYTE(v12) = a2[2];
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
        v10 = a2 + 2;
      }

      a2 = v10;
    }
  }

  if (v5)
  {
    if (*a3 <= v10)
    {
      v10 = sub_225EB68(a3, v10);
    }

    v14 = *(a1 + 40);
    *v10 = 26;
    v15 = *(v14 + 20);
    v10[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v10 + 1);
    }

    else
    {
      v16 = v10 + 2;
    }

    v10 = sub_14AEF18(v14, v16, a3);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v10;
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

  if ((*a3 - v10) >= v20)
  {
    v22 = v20;
    memcpy(v10, v21, v20);
    v10 += v22;
    return v10;
  }

  return sub_1957130(a3, v21, v20, v10);
}

uint64_t sub_14AF7DC(uint64_t a1)
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
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = sub_14AF074(*(a1 + 40));
      v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v7 += 9;
    }
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

    v7 += v13;
  }

  *(a1 + 20) = v7;
  return v7;
}

void *sub_14AF8E8(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26E75C0;
  result[1] = v3;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_14AF928(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_26E75C0;
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
    v5 = *(a2 + 16);
  }

  if ((v5 & 4) != 0)
  {
    operator new();
  }

  a1[5] = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  a1[6] = 0;
  return a1;
}

uint64_t sub_14AFACC(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_2773848)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      sub_1458388(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14AFBCC(uint64_t a1)
{
  sub_14AFACC(a1);

  operator delete();
}

uint64_t sub_14AFC04(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
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
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
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

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = sub_144E5CC(*(result + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_144E5CC(*(v1 + 48));
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

uint64_t sub_14AFCE4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v29 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v29, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v29 + 1);
    v7 = **v29;
    if (**v29 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v29, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v29 + 2);
      }
    }

    *v29 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v15 = *(a1 + 40);
          if (!v15)
          {
            v22 = *(a1 + 8);
            v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
            if (v22)
            {
              v23 = *v23;
            }

            sub_14BAE64(v23);
            v15 = v24;
            *(a1 + 40) = v24;
LABEL_34:
            v6 = *v29;
          }

LABEL_35:
          v21 = sub_22095B8(a3, v15, v6);
          goto LABEL_43;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v15 = *(a1 + 48);
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
          *(a1 + 48) = v18;
          goto LABEL_34;
        }

        goto LABEL_35;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v19 = *(a1 + 8);
        v13 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v13 = *v13;
        }

        v14 = (a1 + 24);
        goto LABEL_28;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 32);
LABEL_28:
      v20 = sub_194DB04(v14, v13);
      v21 = sub_1958890(v20, *v29, a3);
      goto LABEL_43;
    }

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
        return *v29;
      }

LABEL_49:
      *v29 = 0;
      return *v29;
    }

    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v6 = *v29;
    }

    v21 = sub_1952690(v7, v27, v6, a3);
LABEL_43:
    *v29 = v21;
    if (!v21)
    {
      goto LABEL_49;
    }
  }

  return *v29;
}

char *sub_14AFF10(uint64_t a1, char *__dst, unint64_t *a3)
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

      goto LABEL_8;
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
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_8:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 40);
  *v4 = 26;
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
  if ((v6 & 8) != 0)
  {
LABEL_14:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 48);
    *v4 = 34;
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
  }

LABEL_20:
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_14B00DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_15;
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = sub_1458DB4(*(a1 + 40));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_14:
    v10 = sub_1458DB4(*(a1 + 48));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v11 = *(a1 + 8);
  if (v11)
  {
    v14 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v3 += v15;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_14B023C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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
      v11 = *(a1 + 40);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_14BAE64(v13);
        *(a1 + 40) = v11;
      }

      if (*(a2 + 40))
      {
        v14 = *(a2 + 40);
      }

      else
      {
        v14 = &off_2771738;
      }

      sub_144EF20(v11, v14);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 16) |= 8u;
      v15 = *(a1 + 48);
      if (!v15)
      {
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        sub_14BAE64(v17);
        *(a1 + 48) = v15;
      }

      if (*(a2 + 48))
      {
        v18 = *(a2 + 48);
      }

      else
      {
        v18 = &off_2771738;
      }

      sub_144EF20(v15, v18);
    }
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14B03A0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_14AFC04(a1);

    sub_14B023C(a1, a2);
  }
}

uint64_t sub_14B03EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_144F560(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14B0448(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E7640;
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
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_14B055C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14B0590(uint64_t a1)
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

void sub_14B065C(uint64_t a1)
{
  sub_14B0590(a1);

  operator delete();
}

uint64_t sub_14B0694(uint64_t a1)
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
  *(result + 40) = 0;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_14B0750(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_35;
        }

        *(a1 + 16) |= 2u;
        v19 = *(a1 + 8);
        v13 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v13 = *v13;
        }

        v14 = (a1 + 32);
      }

      else
      {
        if (v10 != 4 || v7 != 34)
        {
          goto LABEL_35;
        }

        *(a1 + 16) |= 4u;
        v15 = *(a1 + 8);
        v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v13 = *v13;
        }

        v14 = (a1 + 40);
      }
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v17 = v6 + 1;
          v16 = *v6;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            *v26 = sub_19587DC(v6, v16);
            if (!*v26)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v17 = v6 + 2;
LABEL_27:
            *v26 = v17;
          }

          if (v16 > 5)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 48) = v16;
          }

          continue;
        }

LABEL_35:
        if (v7)
        {
          v22 = (v7 & 7) == 4;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v26;
          }

LABEL_51:
          *v26 = 0;
          return *v26;
        }

        v23 = *(a1 + 8);
        if (v23)
        {
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v24 = sub_11F1920((a1 + 8));
          v6 = *v26;
        }

        v21 = sub_1952690(v7, v24, v6, a3);
        goto LABEL_42;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_35;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 24);
    }

    v20 = sub_194DB04(v14, v13);
    v21 = sub_1958890(v20, *v26, a3);
LABEL_42:
    *v26 = v21;
    if (!v21)
    {
      goto LABEL_51;
    }
  }

  return *v26;
}

char *sub_14B0990(uint64_t a1, char *__dst, unint64_t *a3)
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
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 4) != 0)
  {
LABEL_13:
    v6 = sub_128AEEC(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

LABEL_14:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v14)
  {
    v16 = v14;
    memcpy(v6, v15, v14);
    v6 += v16;
    return v6;
  }

  return sub_1957130(a3, v15, v14, v6);
}

uint64_t sub_14B0B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_22;
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
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_18:
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
  }

LABEL_22:
  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_14B0C78(uint64_t a1, uint64_t a2)
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
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_18:
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

uint64_t sub_14B0DC0(uint64_t a1)
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

void sub_14B0E60(uint64_t a1)
{
  sub_14B0DC0(a1);

  operator delete();
}

uint64_t sub_14B0E98(uint64_t a1)
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

uint64_t sub_14B0EE0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

  if (v7 == 21)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 4;
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

char *sub_14B106C(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 21;
    *(v4 + 1) = v7;
    v4 += 5;
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

uint64_t sub_14B116C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
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

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_14B121C(uint64_t a1)
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
  if (a1 != &off_27738B8)
  {
    v6 = *(a1 + 72);
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
  sub_1956AFC((a1 + 48));
  sub_1565724((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14B12E8(uint64_t a1)
{
  sub_14B121C(a1);

  operator delete();
}

uint64_t sub_14B1320(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_14B0E98(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_16E4E44(*(a1 + 72));
  }

  if ((v6 & 6) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 80) = 0;
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

uint64_t sub_14B13C8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_51;
      }

      *(a1 + 16) |= 1u;
      v21 = *(a1 + 72);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_16F5828(v23);
        *(a1 + 72) = v21;
        v7 = *v39;
      }

      v24 = sub_21F4D60(a3, v21, v7);
LABEL_58:
      *v39 = v24;
      if (!v24)
      {
        goto LABEL_66;
      }

      goto LABEL_59;
    }

    if (v8 != 8)
    {
      goto LABEL_51;
    }

    v5 |= 2u;
    v32 = v7 + 1;
    v31 = *v7;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_50;
    }

    v33 = *v32;
    v31 = (v33 << 7) + v31 - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v32 = v7 + 2;
LABEL_50:
      *v39 = v32;
      *(a1 + 80) = v31;
      goto LABEL_59;
    }

    v37 = sub_19587DC(v7, v31);
    *v39 = v37;
    *(a1 + 80) = v38;
    if (!v37)
    {
      goto LABEL_66;
    }

LABEL_59:
    if (sub_195ADC0(a3, v39, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 == 29)
    {
      v5 |= 4u;
      *(a1 + 88) = *v7;
      *v39 = v7 + 4;
      goto LABEL_59;
    }
  }

  else if (v11 == 4)
  {
    if (v8 == 34)
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
          v30 = sub_14BEFAC(*(a1 + 24));
          v29 = sub_19593CC(a1 + 24, v30);
          v26 = *v39;
        }

        v25 = sub_2211D80(a3, v29, v26);
        *v39 = v25;
        if (!v25)
        {
          goto LABEL_66;
        }

        if (*a3 <= v25 || *v25 != 34)
        {
          goto LABEL_59;
        }
      }
    }
  }

  else if (v11 == 5 && v8 == 42)
  {
    v12 = v7 - 1;
    while (1)
    {
      v13 = (v12 + 1);
      *v39 = v12 + 1;
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
        v13 = *v39;
      }

      v12 = sub_1958890(v16, v13, a3);
      *v39 = v12;
      if (!v12)
      {
        goto LABEL_66;
      }

      if (*a3 <= v12 || *v12 != 42)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_51:
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

    v24 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_58;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  *v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v39;
}

char *sub_14B1750(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 72);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 88);
    *v6 = 29;
    *(v6 + 1) = v14;
    v6 += 5;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v17 = *(*(a1 + 40) + 8 * i + 8);
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

      v6 = sub_14B106C(v17, v19, a3);
    }
  }

  v20 = *(a1 + 56);
  if (v20 >= 1)
  {
    v21 = 8;
    do
    {
      v22 = *(*(a1 + 64) + v21);
      v23 = *(v22 + 23);
      if (v23 < 0 && (v23 = v22[1], v23 > 127) || (*a3 - v6 + 14) < v23)
      {
        v6 = sub_1957480(a3, 5, v22, v6);
      }

      else
      {
        *v6 = 42;
        v6[1] = v23;
        if (*(v22 + 23) < 0)
        {
          v22 = *v22;
        }

        v24 = v6 + 2;
        memcpy(v24, v22, v23);
        v6 = &v24[v23];
      }

      v21 += 8;
      --v20;
    }

    while (v20);
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v28)
  {
    v30 = v28;
    memcpy(v6, v29, v28);
    v6 += v30;
    return v6;
  }

  return sub_1957130(a3, v29, v28, v6);
}

uint64_t sub_14B1A48(uint64_t a1)
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
      v7 = sub_14B116C(v6);
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

  v14 = *(a1 + 16);
  if ((v14 & 7) != 0)
  {
    if (v14)
    {
      v15 = sub_16E51F0(*(a1 + 72));
      v9 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v14 & 2) != 0)
    {
      v9 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v14 & 4) != 0)
    {
      v9 += 5;
    }
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v9 += v19;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_14B1BB4(void **result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    sub_15674BC(result + 3, v6, (v5 + 8), v4, *result[5] - *(result + 8));
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
      *(result + 4) |= 1u;
      v16 = result[9];
      if (!v16)
      {
        v17 = result[1];
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_16F5828(v18);
        result[9] = v16;
      }

      if (*(a2 + 72))
      {
        v19 = *(a2 + 72);
      }

      else
      {
        v19 = &off_277E5E8;
      }

      sub_16E527C(v16, v19);
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
        *(result + 22) = *(a2 + 88);
        goto LABEL_12;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    result[10] = *(a2 + 80);
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

uint64_t sub_14B1D54(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14B1D94(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E77C0;
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
    sub_1567538((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  return a1;
}

uint64_t sub_14B1F18(uint64_t a1)
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
  if (a1 != &off_2773918)
  {
    v6 = *(a1 + 48);
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
  sub_15657A8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14B1FDC(uint64_t a1)
{
  sub_14B1F18(a1);

  operator delete();
}

uint64_t sub_14B2014(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14B1320(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_16E4E44(*(v1 + 48));
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

char *sub_14B20A4(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_14BF034(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v25;
          }

          v15 = sub_2211E10(a3, v19, v16);
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

        v21 = sub_16F5828(v23);
        *(a1 + 48) = v21;
        v6 = v25;
      }

      v14 = sub_21F4D60(a3, v21, v6);
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

char *sub_14B2288(uint64_t a1, char *__dst, unint64_t *a3)
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
    v7 = *(v6 + 44);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_16E5070(v6, v8, a3);
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

      v4 = sub_14B1750(v11, v13, a3);
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

uint64_t sub_14B2430(uint64_t a1)
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
      v7 = sub_14B1A48(v6);
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
    v8 = sub_16E51F0(*(a1 + 48));
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

void sub_14B250C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1567538((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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
    v10 = *(result + 48);
    if (!v10)
    {
      v11 = *(result + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_16F5828(v12);
      *(result + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_277E5E8;
    }

    sub_16E527C(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((result + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14B261C(uint64_t a1)
{
  result = sub_14B2660(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14B2660(uint64_t a1)
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
      result = sub_16E5370(*(v3 + 72));
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

uint64_t sub_14B26CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E7840;
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
    sub_15675C4((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_15675C4((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_15675C4((a1 + 72), v17, (v16 + 8), v15, **(a1 + 88) - *(a1 + 80));
    v18 = *(a1 + 80) + v15;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 8);
  if (v20)
  {
    sub_1957EF4(v4, (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 96) = 0;
  return a1;
}

uint64_t sub_14B2954(uint64_t a1)
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
  if (a1 != &off_2773950)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      sub_14B1F18(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_156582C((a1 + 72));
  sub_156582C((a1 + 48));
  sub_156582C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14B2A30(uint64_t a1)
{
  sub_14B2954(a1);

  operator delete();
}

uint64_t sub_14B2A68(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14B2014(v4);
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
      result = sub_14B2014(v7);
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
      result = sub_14B2014(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_14B2014(*(v1 + 96));
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

char *sub_14B2B48(uint64_t a1, char *a2, int32x2_t *a3)
{
  v38 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v38, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v38 + 1;
    v7 = *v38;
    if (*v38 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v38, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v38 + 2;
      }
    }

    v38 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          v28 = v6 - 1;
          while (1)
          {
            v29 = v28 + 1;
            v38 = v28 + 1;
            v30 = *(a1 + 64);
            if (v30 && (v31 = *(a1 + 56), v31 < *v30))
            {
              *(a1 + 56) = v31 + 1;
              v32 = *&v30[2 * v31 + 2];
            }

            else
            {
              v33 = sub_14BF0E8(*(a1 + 48));
              v32 = sub_19593CC(a1 + 48, v33);
              v29 = v38;
            }

            v28 = sub_2211EA0(a3, v32, v29);
            v38 = v28;
            if (!v28)
            {
              return 0;
            }

            if (*a3 <= v28 || *v28 != 26)
            {
              goto LABEL_59;
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
          v38 = v18 + 1;
          v20 = *(a1 + 88);
          if (v20 && (v21 = *(a1 + 80), v21 < *v20))
          {
            *(a1 + 80) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_14BF0E8(*(a1 + 72));
            v22 = sub_19593CC(a1 + 72, v23);
            v19 = v38;
          }

          v18 = sub_2211EA0(a3, v22, v19);
          v38 = v18;
          if (!v18)
          {
            return 0;
          }

          if (*a3 <= v18 || *v18 != 34)
          {
            goto LABEL_59;
          }
        }
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v24 = *(a1 + 96);
        if (!v24)
        {
          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          v24 = sub_14BF0E8(v26);
          *(a1 + 96) = v24;
          v6 = v38;
        }

        v27 = sub_2211EA0(a3, v24, v6);
        goto LABEL_58;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      v12 = v6 - 1;
      while (1)
      {
        v13 = v12 + 1;
        v38 = v12 + 1;
        v14 = *(a1 + 40);
        if (v14 && (v15 = *(a1 + 32), v15 < *v14))
        {
          *(a1 + 32) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          v17 = sub_14BF0E8(*(a1 + 24));
          v16 = sub_19593CC(a1 + 24, v17);
          v13 = v38;
        }

        v12 = sub_2211EA0(a3, v16, v13);
        v38 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 18)
        {
          goto LABEL_59;
        }
      }
    }

    if (v7)
    {
      v34 = (v7 & 7) == 4;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v38;
      }

      return 0;
    }

    v35 = *(a1 + 8);
    if (v35)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v6 = v38;
    }

    v27 = sub_1952690(v7, v36, v6, a3);
LABEL_58:
    v38 = v27;
    if (!v27)
    {
      return 0;
    }

LABEL_59:
    ;
  }

  return v38;
}

char *sub_14B2E5C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 96);
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

    v4 = sub_14B2288(v6, v8, a3);
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

      v4 = sub_14B2288(v11, v13, a3);
    }
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v16 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 26;
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

      v4 = sub_14B2288(v16, v18, a3);
    }
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    for (k = 0; k != v19; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v21 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 34;
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

      v4 = sub_14B2288(v21, v23, a3);
    }
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v27)
  {
    v29 = v27;
    memcpy(v4, v28, v27);
    v4 += v29;
    return v4;
  }

  return sub_1957130(a3, v28, v27, v4);
}

uint64_t sub_14B310C(uint64_t a1)
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
      v7 = sub_14B2430(v6);
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
      v14 = sub_14B2430(v13);
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
      v21 = sub_14B2430(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  if (*(a1 + 16))
  {
    v22 = sub_14B2430(*(a1 + 96));
    v16 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v16 += v26;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_14B3288(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_15675C4((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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
    sub_15675C4((result + 48), v11, (v10 + 8), v9, **(result + 64) - *(result + 56));
    v12 = *(result + 56) + v9;
    *(result + 56) = v12;
    v13 = *(result + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(result + 72, *(a2 + 80));
    sub_15675C4((result + 72), v16, (v15 + 8), v14, **(result + 88) - *(result + 80));
    v17 = *(result + 80) + v14;
    *(result + 80) = v17;
    v18 = *(result + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  if (*(a2 + 16))
  {
    v19 = *(a2 + 96);
    *(result + 16) |= 1u;
    v20 = *(result + 96);
    if (!v20)
    {
      v21 = *(result + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_14BF0E8(v22);
      *(result + 96) = v20;
      v19 = *(a2 + 96);
    }

    if (v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = &off_2773918;
    }

    sub_14B250C(v20, v23);
  }

  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((result + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14B3450(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_14B261C(*(*(a1 + 40) + 8 * v2));
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
    v7 = sub_14B261C(*(*(a1 + 64) + 8 * v5));
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
    v10 = sub_14B261C(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_14B261C(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14B3514(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E78C0;
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

void sub_14B3590(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14B35C0(void *a1)
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

void sub_14B3634(void *a1)
{
  sub_14B35C0(a1);

  operator delete();
}

char *sub_14B366C(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v17 > 6)
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

char *sub_14B385C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_14B3A0C(uint64_t a1)
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

uint64_t sub_14B3ADC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E7940;
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

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_14B3C28(uint64_t a1)
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
  if (a1 != &off_27739D8)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_1458388(v6);
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

void sub_14B3CE8(uint64_t a1)
{
  sub_14B3C28(a1);

  operator delete();
}

char *sub_14B3D20(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v15 = v6 - 1;
        while (1)
        {
          v26 = v15 + 1;
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

          v26 = v15;
          v19 = *(a1 + 24);
          if (v19 == *(a1 + 28))
          {
            v20 = v19 + 1;
            sub_1958E5C((a1 + 24), v19 + 1);
            *(*(a1 + 32) + 4 * v19) = v16;
            v15 = v26;
          }

          else
          {
            *(*(a1 + 32) + 4 * v19) = v16;
            v20 = v19 + 1;
          }

          *(a1 + 24) = v20;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 16)
          {
            goto LABEL_39;
          }
        }
      }

      if (v7 == 18)
      {
        v14 = sub_1958918((a1 + 24), v6, a3);
        goto LABEL_38;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 40);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        sub_14BAE64(v23);
        v21 = v24;
        *(a1 + 40) = v24;
        v6 = v26;
      }

      v14 = sub_22095B8(a3, v21, v6);
      goto LABEL_38;
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
        return v26;
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
      v6 = v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_38:
    v26 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_39:
    ;
  }

  return v26;
}

char *sub_14B3F58(uint64_t a1, char *a2, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v5 = *(a1 + 40);
    *a2 = 10;
    v6 = *(v5 + 20);
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      v7 = sub_19575D0(v6, a2 + 1);
    }

    else
    {
      v7 = a2 + 2;
    }

    a2 = sub_14589F4(v5, v7, a3);
  }

  v8 = *(a1 + 24);
  if (v8 < 1)
  {
    v11 = a2;
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v10 = *(*(a1 + 32) + 4 * i);
      *a2 = 16;
      a2[1] = v10;
      if (v10 > 0x7F)
      {
        a2[1] = v10 | 0x80;
        v12 = v10 >> 7;
        a2[2] = v10 >> 7;
        v11 = a2 + 3;
        if (v10 >= 0x4000)
        {
          LOBYTE(v13) = a2[2];
          do
          {
            *(v11 - 1) = v13 | 0x80;
            v13 = v12 >> 7;
            *v11++ = v12 >> 7;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
        }
      }

      else
      {
        v11 = a2 + 2;
      }

      a2 = v11;
    }
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

uint64_t sub_14B4110(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = sub_1458DB4(*(a1 + 40));
    v2 += v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v2 += v7;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_14B41B0(void *a1)
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

void sub_14B4224(void *a1)
{
  sub_14B41B0(a1);

  operator delete();
}

uint64_t sub_14B425C(uint64_t a1)
{
  if ((*(a1 + 16) & 0x7F) != 0)
  {
    *(a1 + 56) = 0;
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

char *sub_14B428C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 != 6)
      {
        if (v11 == 7 && v8 == 57)
        {
          v20 = *v7;
          v19 = v7 + 8;
          v5 |= 0x40u;
          *(a1 + 56) = v20;
LABEL_48:
          v44 = v19;
          goto LABEL_56;
        }

        goto LABEL_49;
      }

      if (v8 != 48)
      {
        goto LABEL_49;
      }

      v5 |= 0x20u;
      v27 = v7 + 1;
      v28 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v29 = *v27;
      v28 = v28 + (v29 << 7) - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_45:
        v44 = v27;
        *(a1 + 52) = v28;
        goto LABEL_56;
      }

      v38 = sub_1958770(v7, v28);
      v44 = v38;
      *(a1 + 52) = v39;
      if (!v38)
      {
        goto LABEL_71;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_49;
      }

      v5 |= 8u;
      v25 = v7 + 1;
      v24 = *v7;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_40:
        v44 = v25;
        *(a1 + 40) = v24;
        goto LABEL_56;
      }

      v36 = sub_19587DC(v7, v24);
      v44 = v36;
      *(a1 + 40) = v37;
      if (!v36)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_49;
      }

      v5 |= 0x10u;
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
        v44 = v12;
        *(a1 + 48) = v13;
        goto LABEL_56;
      }

      v40 = sub_1958770(v7, v13);
      v44 = v40;
      *(a1 + 48) = v41;
      if (!v40)
      {
        goto LABEL_71;
      }
    }

LABEL_56:
    if (sub_195ADC0(a3, &v44, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_49;
    }

    v5 |= 2u;
    v21 = v7 + 1;
    v22 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v23 = *v21;
    v22 = v22 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_35:
      v44 = v21;
      *(a1 + 32) = v22;
      goto LABEL_56;
    }

    v34 = sub_1958770(v7, v22);
    v44 = v34;
    *(a1 + 32) = v35;
    if (!v34)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v11 != 2)
  {
    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_49;
    }

    v5 |= 4u;
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
      v44 = v16;
      *(a1 + 36) = v17;
      goto LABEL_56;
    }

    v42 = sub_1958770(v7, v17);
    v44 = v42;
    *(a1 + 36) = v43;
    if (!v42)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v8 == 17)
  {
    v30 = *v7;
    v19 = v7 + 8;
    v5 |= 1u;
    *(a1 + 24) = v30;
    goto LABEL_48;
  }

LABEL_49:
  if (v8)
  {
    v31 = (v8 & 7) == 4;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v7 = v44;
    }

    v44 = sub_1952690(v8, v33, v7, a3);
    if (!v44)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

char *sub_14B45F8(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 36);
    *v6 = 24;
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 40);
    *v12 = 32;
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 48);
    *v16 = 40;
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v26 = *(a1 + 52);
    *v20 = 48;
    v20[1] = v26;
    if (v26 > 0x7F)
    {
      v20[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v20[2] = v26 >> 7;
      v25 = v20 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v20) = v20[2];
        do
        {
          *(v25 - 1) = v20 | 0x80;
          LODWORD(v20) = v27 >> 7;
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = v20 + 2;
    }
  }

  else
  {
    v25 = v20;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v29 = *(a1 + 56);
    *v25 = 57;
    *(v25 + 1) = v29;
    v25 += 9;
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v25;
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

  if ((*a3 - v25) >= v33)
  {
    v35 = v33;
    memcpy(v25, v34, v33);
    v25 += v35;
    return v25;
  }

  return sub_1957130(a3, v34, v33, v25);
}

uint64_t sub_14B49AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 4) == 0)
    {
LABEL_6:
      if ((v1 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v1 & 4) == 0)
  {
    goto LABEL_6;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) == 0)
  {
LABEL_7:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_8:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) != 0)
  {
LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 0x40) != 0)
  {
    v3 = v2 + 9;
  }

  else
  {
    v3 = v2;
  }

LABEL_14:
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

std::string *sub_14B4AE0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    HIDWORD(result[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v2 & 0x40) != 0)
  {
LABEL_9:
    result[2].__r_.__value_.__l.__size_ = *(a2 + 56);
  }

LABEL_10:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_11:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14B4B9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E7A40;
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
    sub_1567650((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  v10 = *(a2 + 48);
  if (v10)
  {
    sub_1958E5C((a1 + 48), v10);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v11, *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 8);
  if (v12)
  {
    sub_1957EF4(v4, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 64) = &qword_278E990;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v14);
    v13 = *(a2 + 16);
  }

  *(a1 + 72) = &qword_278E990;
  if ((v13 & 2) != 0)
  {
    v15 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v15);
    v13 = *(a2 + 16);
  }

  *(a1 + 80) = &qword_278E990;
  if ((v13 & 4) != 0)
  {
    v16 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 80), (*(a2 + 80) & 0xFFFFFFFFFFFFFFFELL), v16);
    v13 = *(a2 + 16);
  }

  *(a1 + 88) = &qword_278E990;
  if ((v13 & 8) != 0)
  {
    v17 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 88), (*(a2 + 88) & 0xFFFFFFFFFFFFFFFELL), v17);
    v13 = *(a2 + 16);
  }

  if ((v13 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  v18 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v18;
  return a1;
}

uint64_t sub_14B4E48(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
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

  if (a1 != &off_2773A48)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      sub_16E550C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_1956ABC(a1 + 48);
  sub_15658B0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14B4F6C(uint64_t a1)
{
  sub_14B4E48(a1);

  operator delete();
}

uint64_t sub_14B4FA4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E5548(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v5 = *(v1 + 16);
  if ((v5 & 0x1F) == 0)
  {
    goto LABEL_12;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_26:
  v10 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v10 + 23) & 0x80000000) == 0)
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v5 & 8) != 0)
    {
      goto LABEL_30;
    }

LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  **v10 = 0;
  *(v10 + 8) = 0;
  if ((v5 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_30:
  v11 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v11 + 23) & 0x80000000) == 0)
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_16E5548(*(v1 + 96));
    goto LABEL_12;
  }

  **v11 = 0;
  *(v11 + 8) = 0;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if ((v5 & 0xE0) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 112) = 1;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_14B5128(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v59 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v59, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v59 + 1);
    v8 = **v59;
    if (**v59 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v59, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v59 + 2);
      }
    }

    *v59 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 > 8)
    {
      if (v11 == 9)
      {
        if (v8 != 74)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 2u;
        v46 = *(a1 + 8);
        v13 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
        if (v46)
        {
          v13 = *v13;
        }

        v14 = (a1 + 72);
      }

      else if (v11 == 10)
      {
        if (v8 != 82)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 4u;
        v33 = *(a1 + 8);
        v13 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v13 = *v13;
        }

        v14 = (a1 + 80);
      }

      else
      {
        if (v11 != 11 || v8 != 90)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 8u;
        v18 = *(a1 + 8);
        v13 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v13 = *v13;
        }

        v14 = (a1 + 88);
      }

LABEL_90:
      v47 = sub_194DB04(v14, v13);
      v26 = sub_1958890(v47, *v59, a3);
      goto LABEL_91;
    }

    if (v11 == 6)
    {
      if (v8 == 48)
      {
        v40 = v7 - 1;
        while (1)
        {
          *v59 = v40 + 1;
          v41 = v40[1];
          if (v41 < 0)
          {
            v42 = (v40[2] << 7) + v41;
            LODWORD(v41) = v42 - 128;
            if (v40[2] < 0)
            {
              v40 = sub_19587DC((v40 + 1), (v42 - 128));
              LODWORD(v41) = v43;
            }

            else
            {
              v40 += 3;
            }
          }

          else
          {
            v40 += 2;
          }

          *v59 = v40;
          v44 = *(a1 + 48);
          if (v44 == *(a1 + 52))
          {
            v45 = v44 + 1;
            sub_1958E5C((a1 + 48), v44 + 1);
            *(*(a1 + 56) + 4 * v44) = v41;
            v40 = *v59;
          }

          else
          {
            *(*(a1 + 56) + 4 * v44) = v41;
            v45 = v44 + 1;
          }

          *(a1 + 48) = v45;
          if (!v40)
          {
            goto LABEL_114;
          }

          if (*a3 <= v40 || *v40 != 48)
          {
            goto LABEL_92;
          }
        }
      }

      if (v8 == 50)
      {
        v26 = sub_1958908((a1 + 48), v7, a3);
        goto LABEL_91;
      }

      goto LABEL_104;
    }

    if (v11 != 7)
    {
      if (v11 != 8 || v8 != 66)
      {
        goto LABEL_104;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 64);
      goto LABEL_90;
    }

    if (v8 != 56)
    {
      goto LABEL_104;
    }

    v5 |= 0x80u;
    v30 = v7 + 1;
    v31 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    v32 = *v30;
    v31 = v31 + (v32 << 7) - 128;
    if ((v32 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_57:
      *v59 = v30;
      *(a1 + 116) = v31;
      goto LABEL_92;
    }

    v52 = sub_1958770(v7, v31);
    *v59 = v52;
    *(a1 + 116) = v53;
    if (!v52)
    {
      goto LABEL_114;
    }

LABEL_92:
    if (sub_195ADC0(a3, v59, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 == 26)
      {
        v34 = v7 - 1;
        while (1)
        {
          v35 = v34 + 1;
          *v59 = v34 + 1;
          v36 = *(a1 + 40);
          if (v36 && (v37 = *(a1 + 32), v37 < *v36))
          {
            *(a1 + 32) = v37 + 1;
            v38 = *&v36[2 * v37 + 2];
          }

          else
          {
            v39 = sub_16F5884(*(a1 + 24));
            v38 = sub_19593CC(a1 + 24, v39);
            v35 = *v59;
          }

          v34 = sub_21F9F18(a3, v38, v35);
          *v59 = v34;
          if (!v34)
          {
            goto LABEL_114;
          }

          if (*a3 <= v34 || *v34 != 26)
          {
            goto LABEL_92;
          }
        }
      }

      goto LABEL_104;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_104;
      }

      v5 |= 0x100u;
      v27 = v7 + 1;
      v28 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      v29 = *v27;
      v28 = v28 + (v29 << 7) - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_52:
        *v59 = v27;
        *(a1 + 120) = v28;
        goto LABEL_92;
      }

      v50 = sub_1958770(v7, v28);
      *v59 = v50;
      *(a1 + 120) = v51;
      if (!v50)
      {
        goto LABEL_114;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_104;
      }

      v5 |= 0x40u;
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
        *v59 = v15;
        *(a1 + 112) = v16;
        goto LABEL_92;
      }

      v54 = sub_1958770(v7, v16);
      *v59 = v54;
      *(a1 + 112) = v55;
      if (!v54)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_92;
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_104;
    }

    v5 |= 0x20u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_41:
      *v59 = v21;
      *(a1 + 104) = v20;
      goto LABEL_92;
    }

    v48 = sub_19587DC(v7, v20);
    *v59 = v48;
    *(a1 + 104) = v49;
    if (!v48)
    {
      goto LABEL_114;
    }

    goto LABEL_92;
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 0x10u;
    v23 = *(a1 + 96);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5884(v25);
      *(a1 + 96) = v23;
      v7 = *v59;
    }

    v26 = sub_21F9F18(a3, v23, v7);
LABEL_91:
    *v59 = v26;
    if (!v26)
    {
      goto LABEL_114;
    }

    goto LABEL_92;
  }

LABEL_104:
  if (v8)
  {
    v56 = (v8 & 7) == 4;
  }

  else
  {
    v56 = 1;
  }

  if (!v56)
  {
    v57 = *(a1 + 8);
    if (v57)
    {
      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v58 = sub_11F1920((a1 + 8));
      v7 = *v59;
    }

    v26 = sub_1952690(v8, v58, v7, a3);
    goto LABEL_91;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_114:
  *v59 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v59;
}

char *sub_14B56C0(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 96);
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

    a2 = sub_16E56D0(v6, v8, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 104);
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

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v9 = 26;
      v17 = *(v16 + 20);
      v9[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v9 + 1);
      }

      else
      {
        v18 = v9 + 2;
      }

      v9 = sub_16E56D0(v16, v18, a3);
    }
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v20 = *(a1 + 120);
    *v9 = 32;
    v9[1] = v20;
    if (v20 > 0x7F)
    {
      v9[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v9[2] = v20 >> 7;
      v19 = v9 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v9) = v9[2];
        do
        {
          *(v19 - 1) = v9 | 0x80;
          LODWORD(v9) = v21 >> 7;
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v9 + 2;
    }
  }

  else
  {
    v19 = v9;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 112);
    *v19 = 40;
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v19[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v19[2] = v24 >> 7;
      v23 = v19 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v23 - 1) = v19 | 0x80;
          LODWORD(v19) = v25 >> 7;
          *v23++ = v25 >> 7;
          v26 = v25 >> 14;
          v25 >>= 7;
        }

        while (v26);
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

  v27 = *(a1 + 48);
  if (v27 < 1)
  {
    v30 = v23;
  }

  else
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v29 = *(*(a1 + 56) + 4 * j);
      *v23 = 48;
      v23[1] = v29;
      if (v29 > 0x7F)
      {
        v23[1] = v29 | 0x80;
        v31 = v29 >> 7;
        v23[2] = v29 >> 7;
        v30 = v23 + 3;
        if (v29 >= 0x4000)
        {
          LOBYTE(v32) = v23[2];
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
        v30 = v23 + 2;
      }

      v23 = v30;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v35 = *(a1 + 116);
    *v30 = 56;
    v30[1] = v35;
    if (v35 > 0x7F)
    {
      v30[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v30[2] = v35 >> 7;
      v34 = v30 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v30) = v30[2];
        do
        {
          *(v34 - 1) = v30 | 0x80;
          LODWORD(v30) = v36 >> 7;
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v30 + 2;
    }
  }

  else
  {
    v34 = v30;
  }

  if (v5)
  {
    v34 = sub_128AEEC(a3, 8, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v34);
    if ((v5 & 2) == 0)
    {
LABEL_66:
      if ((v5 & 4) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_66;
  }

  v34 = sub_128AEEC(a3, 9, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v34);
  if ((v5 & 4) == 0)
  {
LABEL_67:
    if ((v5 & 8) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_73:
  v34 = sub_128AEEC(a3, 10, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v34);
  if ((v5 & 8) != 0)
  {
LABEL_68:
    v34 = sub_128AEEC(a3, 11, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v34);
  }

LABEL_69:
  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return v34;
  }

  v40 = v38 & 0xFFFFFFFFFFFFFFFCLL;
  v41 = *(v40 + 31);
  if (v41 < 0)
  {
    v42 = *(v40 + 8);
    v41 = *(v40 + 16);
  }

  else
  {
    v42 = (v40 + 8);
  }

  if ((*a3 - v34) >= v41)
  {
    v43 = v41;
    memcpy(v34, v42, v41);
    v34 += v43;
    return v34;
  }

  return sub_1957130(a3, v42, v41, v34);
}

uint64_t sub_14B5BB4(uint64_t a1)
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
      v7 = sub_16E57E8(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = sub_1959E04((a1 + 48)) + v2 + *(a1 + 48);
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_19;
  }

  if (v9)
  {
    v12 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v8 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_12:
      if ((v9 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

  v15 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v8 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 4) == 0)
  {
LABEL_13:
    if ((v9 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_29:
  v18 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v8 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 8) == 0)
  {
LABEL_14:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_32:
  v21 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v8 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x10) == 0)
  {
LABEL_15:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_36:
    v8 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v9 & 0x40) == 0)
    {
LABEL_17:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_35:
  v24 = sub_16E57E8(*(a1 + 96));
  v8 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_37:
  v8 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x80) != 0)
  {
LABEL_18:
    v8 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v9 & 0x100) != 0)
  {
    v8 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v25 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v8 += v26;
  }

  *(a1 + 20) = v8;
  return v8;
}

void sub_14B5E78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1567650((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 4 * v10), *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    if (v12)
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
      if ((v12 & 2) == 0)
      {
LABEL_9:
        if ((v12 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }
    }

    else if ((v12 & 2) == 0)
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
    if ((v12 & 4) == 0)
    {
LABEL_10:
      if ((v12 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }

LABEL_29:
    v21 = *(a2 + 80);
    *(a1 + 16) |= 4u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 80), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
    if ((v12 & 8) == 0)
    {
LABEL_11:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_35;
    }

LABEL_32:
    v24 = *(a2 + 88);
    *(a1 + 16) |= 8u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 88), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v12 & 0x10) == 0)
    {
LABEL_12:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(a1 + 16) |= 0x10u;
    v27 = *(a1 + 96);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_16F5884(v29);
      *(a1 + 96) = v27;
    }

    if (*(a2 + 96))
    {
      v30 = *(a2 + 96);
    }

    else
    {
      v30 = &off_277E630;
    }

    sub_128F8FC(v27, v30);
    if ((v12 & 0x20) == 0)
    {
LABEL_13:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(a1 + 104) = *(a2 + 104);
    if ((v12 & 0x40) == 0)
    {
LABEL_14:
      if ((v12 & 0x80) == 0)
      {
LABEL_16:
        *(a1 + 16) |= v12;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 116) = *(a2 + 116);
      goto LABEL_16;
    }

LABEL_44:
    *(a1 + 112) = *(a2 + 112);
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v12 & 0x100) != 0)
  {
    v13 = *(a2 + 120);
    *(a1 + 16) |= 0x100u;
    *(a1 + 120) = v13;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_14B6108(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E5890(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 0x10) == 0)
  {
    return 1;
  }

  result = sub_16E5890(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14B617C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E7AC0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return a1;
}

void sub_14B6200(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14B6230(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E7AC0;
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

  if ((v7 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v7 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v7 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v7 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v7 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  v9 = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v9;
  return a1;
}

void *sub_14B64B0(void *a1)
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

  sub_14B653C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_14B653C(uint64_t a1)
{
  v3 = *(a1 + 48);
  result = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2773AC8)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      sub_14B78F8(v4);
      operator delete();
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      sub_14B80B8(v5);
      operator delete();
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      sub_14B78F8(v6);
      operator delete();
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      sub_14B8914(v7);
      operator delete();
    }

    result = *(a1 + 88);
    if (result)
    {
      sub_14B8914(result);

      operator delete();
    }
  }

  return result;
}

void sub_14B6630(void *a1)
{
  sub_14B64B0(a1);

  operator delete();
}

unsigned __int8 *sub_14B6668(uint64_t a1)
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
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 56) = 0;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_14B6728(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    result = sub_144E31C(*(a1 + 48));
  }

  if ((v3 & 6) != 0)
  {
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

unsigned __int8 *sub_14B6798(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if (*(a1 + 40))
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
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_14B681C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v46 = a2;
  if (sub_195ADC0(a3, v46, a3[11].u32[1]))
  {
    return *v46;
  }

  while (1)
  {
    v6 = (*v46 + 1);
    v7 = **v46;
    if (**v46 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v46, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v46 + 2);
      }
    }

    *v46 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 0xB)
    {
      break;
    }

    if (v7 >> 3 <= 0xD)
    {
      if (v10 == 12)
      {
        if (v7 == 98)
        {
          *(a1 + 40) |= 8u;
          v30 = *(a1 + 72);
          if (!v30)
          {
            v36 = *(a1 + 8);
            v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
            if (v36)
            {
              v37 = *v37;
            }

            v30 = sub_14BF4E0(v37);
            *(a1 + 72) = v30;
            goto LABEL_71;
          }

          goto LABEL_72;
        }

        goto LABEL_83;
      }

      if (v10 != 13 || v7 != 104)
      {
        goto LABEL_83;
      }

      v25 = v6 + 1;
      v24 = *v6;
      if (v24 < 0)
      {
        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if ((v26 & 0x80000000) == 0)
        {
          v25 = v6 + 2;
          goto LABEL_47;
        }

        *v46 = sub_19587DC(v6, v24);
        if (!*v46)
        {
          goto LABEL_107;
        }
      }

      else
      {
LABEL_47:
        *v46 = v25;
      }

      if (v24 > 1)
      {
        sub_144E0C4();
      }

      else
      {
        *(a1 + 40) |= 0x100u;
        *(a1 + 104) = v24;
      }

      goto LABEL_81;
    }

    if (v10 != 14)
    {
      if (v10 == 15)
      {
        if (v7 == 122)
        {
          *(a1 + 40) |= 0x10u;
          v11 = *(a1 + 80);
          if (!v11)
          {
            v38 = *(a1 + 8);
            v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
            if (v38)
            {
              v39 = *v39;
            }

            v11 = sub_14BF598(v39);
            *(a1 + 80) = v11;
            goto LABEL_78;
          }

LABEL_79:
          v23 = sub_2211FC0(a3, v11, v6);
          goto LABEL_80;
        }
      }

      else if (v10 == 16 && v7 == 130)
      {
        *(a1 + 40) |= 0x20u;
        v11 = *(a1 + 88);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v11 = sub_14BF598(v13);
          *(a1 + 88) = v11;
LABEL_78:
          v6 = *v46;
          goto LABEL_79;
        }

        goto LABEL_79;
      }

      goto LABEL_83;
    }

    if (v7 != 114)
    {
      goto LABEL_83;
    }

    *(a1 + 40) |= 1u;
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    v35 = sub_194DB04((a1 + 48), v34);
    v23 = sub_1958890(v35, *v46, a3);
LABEL_80:
    *v46 = v23;
    if (!v23)
    {
      goto LABEL_107;
    }

LABEL_81:
    if (sub_195ADC0(a3, v46, a3[11].u32[1]))
    {
      return *v46;
    }
  }

  if (v7 >> 3 <= 9)
  {
    if (v10 != 1)
    {
      if (v10 == 2 && v7 == 16)
      {
        v15 = v6 + 1;
        v16 = *v6;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        v17 = *v15;
        v18 = (v17 << 7) + v16;
        v16 = (v18 - 128);
        if (v17 < 0)
        {
          *v46 = sub_19587DC(v6, (v18 - 128));
          if (!*v46)
          {
            goto LABEL_107;
          }

          v16 = v43;
        }

        else
        {
          v15 = v6 + 2;
LABEL_27:
          *v46 = v15;
        }

        if (v16 > 0xC || ((1 << v16) & 0x1EFB) == 0)
        {
          v44 = *(a1 + 8);
          if (v44)
          {
            v45 = ((v44 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v45 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(2, v16, v45);
        }

        else
        {
          *(a1 + 40) |= 0x80u;
          *(a1 + 100) = v16;
        }

        goto LABEL_81;
      }

      goto LABEL_83;
    }

    if (v7 != 8)
    {
      goto LABEL_83;
    }

    v28 = v6 + 1;
    v27 = *v6;
    if (v27 < 0)
    {
      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if (v29 < 0)
      {
        *v46 = sub_19587DC(v6, v27);
        if (!*v46)
        {
          goto LABEL_107;
        }

        goto LABEL_55;
      }

      v28 = v6 + 2;
    }

    *v46 = v28;
LABEL_55:
    if (v27 > 4)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 40) |= 0x40u;
      *(a1 + 96) = v27;
    }

    goto LABEL_81;
  }

  if (v10 != 10)
  {
    if (v10 != 11 || v7 != 90)
    {
      goto LABEL_83;
    }

    *(a1 + 40) |= 4u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_14BF53C(v22);
      *(a1 + 64) = v20;
      v6 = *v46;
    }

    v23 = sub_2211F30(a3, v20, v6);
    goto LABEL_80;
  }

  if (v7 == 82)
  {
    *(a1 + 40) |= 2u;
    v30 = *(a1 + 56);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_14BF4E0(v32);
      *(a1 + 56) = v30;
LABEL_71:
      v6 = *v46;
    }

LABEL_72:
    v23 = sub_2209498(a3, v30, v6);
    goto LABEL_80;
  }

LABEL_83:
  if (v7)
  {
    v40 = (v7 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    if (v7 - 8000 > 0xF9F)
    {
      v41 = *(a1 + 8);
      if (v41)
      {
        v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v42 = sub_11F1920((a1 + 8));
        v6 = *v46;
      }

      v23 = sub_1952690(v7, v42, v6, a3);
    }

    else
    {
      v23 = sub_19525AC((a1 + 16), v7, v6, &off_2773AC8, (a1 + 8), a3);
    }

    goto LABEL_80;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v46;
  }

LABEL_107:
  *v46 = 0;
  return *v46;
}

char *sub_14B6D24(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 96);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 100);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 56);
    *v11 = 82;
    v17 = *(v16 + 44);
    v11[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v11 + 1);
    }

    else
    {
      v18 = v11 + 2;
    }

    v11 = sub_14B7C34(v16, v18, a3);
    if ((v5 & 4) == 0)
    {
LABEL_21:
      if ((v5 & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_36:
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v22 = *(a1 + 72);
      *v11 = 98;
      v23 = *(v22 + 44);
      v11[1] = v23;
      if (v23 > 0x7F)
      {
        v24 = sub_19575D0(v23, v11 + 1);
      }

      else
      {
        v24 = v11 + 2;
      }

      v11 = sub_14B7C34(v22, v24, a3);
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_21;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v19 = *(a1 + 64);
  *v11 = 90;
  v20 = *(v19 + 44);
  v11[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v11 + 1);
  }

  else
  {
    v21 = v11 + 2;
  }

  v11 = sub_14B8428(v19, v21, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((v5 & 0x100) == 0)
  {
LABEL_23:
    v15 = v11;
    goto LABEL_49;
  }

LABEL_42:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v25 = *(a1 + 104);
  *v11 = 104;
  v11[1] = v25;
  if (v25 > 0x7F)
  {
    v11[1] = v25 | 0x80;
    v26 = v25 >> 7;
    v11[2] = v25 >> 7;
    v15 = v11 + 3;
    if (v25 >= 0x4000)
    {
      LOBYTE(v11) = v11[2];
      do
      {
        *(v15 - 1) = v11 | 0x80;
        v11 = (v26 >> 7);
        *v15++ = v26 >> 7;
        v27 = v26 >> 14;
        v26 >>= 7;
      }

      while (v27);
    }
  }

  else
  {
    v15 = v11 + 2;
  }

LABEL_49:
  if (v5)
  {
    v15 = sub_128AEEC(a3, 14, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v5 & 0x10) == 0)
    {
LABEL_51:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_51;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v28 = *(a1 + 80);
  *v15 = 122;
  v29 = *(v28 + 44);
  v15[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v15 + 1);
  }

  else
  {
    v30 = v15 + 2;
  }

  v15 = sub_14B8B78(v28, v30, a3);
  if ((v5 & 0x20) != 0)
  {
LABEL_60:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v31 = *(a1 + 88);
    *v15 = 386;
    v32 = *(v31 + 44);
    v15[2] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v15 + 2);
    }

    else
    {
      v33 = v15 + 3;
    }

    v15 = sub_14B8B78(v31, v33, a3);
  }

LABEL_66:
  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 1000, 1500, v15, a3);
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v37)
  {
    v39 = v37;
    memcpy(v15, v38, v37);
    v15 += v39;
    return v15;
  }

  return sub_1957130(a3, v38, v37, v15);
}