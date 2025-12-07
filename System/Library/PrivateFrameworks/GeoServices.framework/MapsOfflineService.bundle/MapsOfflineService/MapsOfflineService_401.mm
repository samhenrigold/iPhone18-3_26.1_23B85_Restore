char *sub_1629E88(uint64_t a1, char *a2, unint64_t *a3)
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

  if (*(a1 + 16))
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v13 = *(a1 + 40);
    *v8 = 16;
    v8[1] = v13;
    if (v13 > 0x7F)
    {
      v8[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v8[2] = v13 >> 7;
      v12 = v8 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v8) = v8[2];
        do
        {
          *(v12 - 1) = v8 | 0x80;
          v8 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v8 + 2;
    }
  }

  else
  {
    v12 = v8;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v19)
  {
    v21 = v19;
    memcpy(v12, v20, v19);
    v12 += v21;
    return v12;
  }

  return sub_1957130(a3, v20, v19, v12);
}

uint64_t sub_162A064(uint64_t a1)
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

void *sub_162A10C(void *a1)
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

void sub_162A180(void *a1)
{
  sub_162A10C(a1);

  operator delete();
}

uint64_t sub_162A1B8(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0x100000000;
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

char *sub_162A1E0(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_35;
      }

      v5 |= 2u;
      v23 = v7 + 1;
      LODWORD(v22) = *v7;
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v24 = *v23;
      v22 = v22 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_34:
        v36 = v23;
        *(a1 + 28) = v22;
        goto LABEL_42;
      }

      v34 = sub_19587DC(v7, v22);
      v36 = v34;
      *(a1 + 28) = v35;
      if (!v34)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_35;
      }

      v5 |= 4u;
      v17 = v7 + 1;
      LODWORD(v16) = *v7;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v17;
      v16 = v16 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_24:
        v36 = v17;
        *(a1 + 32) = v16;
        goto LABEL_42;
      }

      v28 = sub_19587DC(v7, v16);
      v36 = v28;
      *(a1 + 32) = v29;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

LABEL_42:
    if (sub_195ADC0(a3, &v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_35;
    }

    v5 |= 1u;
    v20 = v7 + 1;
    LODWORD(v19) = *v7;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v20;
    v19 = v19 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_29:
      v36 = v20;
      *(a1 + 24) = v19;
      goto LABEL_42;
    }

    v32 = sub_19587DC(v7, v19);
    v36 = v32;
    *(a1 + 24) = v33;
    if (!v32)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 8u;
    v14 = v7 + 1;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = v13 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      v36 = v14;
      *(a1 + 36) = v13;
      goto LABEL_42;
    }

    v30 = sub_19587DC(v7, v13);
    v36 = v30;
    *(a1 + 36) = v31;
    if (!v30)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = v36;
    }

    v36 = sub_1952690(v8, v27, v7, a3);
    if (!v36)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_162A484(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 36);
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

    v16 = *(a1 + 28);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 32);
    *v15 = 32;
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

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v19;
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

  if ((*a3 - v19) >= v27)
  {
    v29 = v27;
    memcpy(v19, v28, v27);
    v19 += v29;
    return v19;
  }

  return sub_1957130(a3, v28, v27, v19);
}

uint64_t sub_162A740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_25;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v6 = *(a1 + 32);
  if (v6 < 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v7;
  if ((v1 & 8) != 0)
  {
LABEL_21:
    v8 = *(a1 + 36);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v9;
  }

LABEL_25:
  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_162A880(uint64_t a1)
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

void sub_162A920(uint64_t a1)
{
  sub_162A880(a1);

  operator delete();
}

uint64_t sub_162A958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 0xFE) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 46) = 0;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_162A9AC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v44, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v44 + 1);
    v8 = **v44;
    if (**v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v44 + 2);
      }
    }

    *v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 > 9)
    {
      if (v11 == 10)
      {
        if (v8 != 80)
        {
          goto LABEL_52;
        }

        v5 |= 0x40u;
        v31 = v7 + 1;
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if ((v32 & 0x80000000) == 0)
        {
          v31 = v7 + 2;
LABEL_51:
          *v44 = v31;
          *(a1 + 52) = v30 != 0;
          goto LABEL_60;
        }

        v38 = sub_19587DC(v7, v30);
        *v44 = v38;
        *(a1 + 52) = v39 != 0;
        if (!v38)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v11 != 11 || v8 != 88)
        {
          goto LABEL_52;
        }

        v5 |= 0x80u;
        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
LABEL_34:
          *v44 = v20;
          *(a1 + 53) = v19 != 0;
          goto LABEL_60;
        }

        v42 = sub_19587DC(v7, v19);
        *v44 = v42;
        *(a1 + 53) = v43 != 0;
        if (!v42)
        {
          goto LABEL_73;
        }
      }
    }

    else if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_52;
      }

      v5 |= 0x10u;
      v27 = v7 + 1;
      LODWORD(v26) = *v7;
      if ((v26 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      v28 = *v27;
      v26 = v26 + (v28 << 7) - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_43:
        *v44 = v27;
        *(a1 + 44) = v26;
        goto LABEL_60;
      }

      v36 = sub_19587DC(v7, v26);
      *v44 = v36;
      *(a1 + 44) = v37;
      if (!v36)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_52;
      }

      v5 |= 0x20u;
      v16 = v7 + 1;
      LODWORD(v15) = *v7;
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      v17 = *v16;
      v15 = v15 + (v17 << 7) - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_23:
        *v44 = v16;
        *(a1 + 48) = v15;
        goto LABEL_60;
      }

      v40 = sub_19587DC(v7, v15);
      *v44 = v40;
      *(a1 + 48) = v41;
      if (!v40)
      {
        goto LABEL_73;
      }
    }

LABEL_60:
    if (sub_195ADC0(a3, v44, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 == 29)
      {
        v29 = *v7;
        v13 = v7 + 4;
        v5 |= 4u;
        *(a1 + 36) = v29;
        goto LABEL_46;
      }
    }

    else if (v11 == 4 && v8 == 37)
    {
      v18 = *v7;
      v13 = v7 + 4;
      v5 |= 8u;
      *(a1 + 40) = v18;
      goto LABEL_46;
    }
  }

  else if (v11 == 1)
  {
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = sub_194DB04((a1 + 24), v23);
      v25 = sub_1958890(v24, *v44, a3);
LABEL_59:
      *v44 = v25;
      if (!v25)
      {
        goto LABEL_73;
      }

      goto LABEL_60;
    }
  }

  else if (v11 == 2 && v8 == 21)
  {
    v14 = *v7;
    v13 = v7 + 4;
    v5 |= 2u;
    *(a1 + 32) = v14;
LABEL_46:
    *v44 = v13;
    goto LABEL_60;
  }

LABEL_52:
  if (v8)
  {
    v33 = (v8 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v7 = *v44;
    }

    v25 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_59;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_73:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_162AD44(uint64_t a1, char *__dst, unint64_t *a3)
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

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 32);
  *v4 = 21;
  *(v4 + 1) = v8;
  v4 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 40);
    *v4 = 37;
    *(v4 + 1) = v10;
    v4 += 5;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 36);
  *v4 = 29;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 44);
  *v4 = 48;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
      do
      {
        *(v7 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v7++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_24:
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 48);
    *v7 = 56;
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v7[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v7[2] = v16 >> 7;
      v15 = v7 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v7[2];
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
      v15 = v7 + 2;
    }
  }

  else
  {
    v15 = v7;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 52);
    *v15 = 80;
    v15[1] = v20;
    v15 += 2;
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v21 = *(a1 + 53);
    *v15 = 88;
    v15[1] = v21;
    v15 += 2;
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

uint64_t sub_162B03C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
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

    if ((v1 & 0x10) != 0)
    {
      v7 = *(a1 + 44);
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v7 >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 11;
      }

      v2 += v9;
    }

    if ((v1 & 0x20) != 0)
    {
      v10 = *(a1 + 48);
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 11;
      }

      v2 += v12;
    }

    v3 = v2 + ((v1 >> 6) & 2) + ((v1 >> 5) & 2);
  }

  else
  {
    v3 = 0;
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v3 += v16;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_162B16C(uint64_t a1, uint64_t a2)
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

        goto LABEL_20;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }

LABEL_20:
    *(a1 + 36) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 48) = *(a2 + 48);
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
      *(a1 + 53) = *(a2 + 53);
      goto LABEL_11;
    }

LABEL_24:
    *(a1 + 52) = *(a2 + 52);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_162B2A4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1638914(a1 + 11);
  sub_1638890(a1 + 8);
  sub_1956AFC(a1 + 5);
  sub_163880C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_162B344(void *a1)
{
  sub_162B2A4(a1);

  operator delete();
}

uint64_t sub_162B37C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v41 = a2;
  if ((sub_195ADC0(a3, v41, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (*v41 + 1);
      v7 = **v41;
      if (**v41 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(*v41, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = (*v41 + 2);
        }
      }

      *v41 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 > 4)
      {
        if (v10 == 5)
        {
          if (v7 == 42)
          {
            v32 = v6 - 1;
            while (1)
            {
              v33 = v32 + 1;
              *v41 = v32 + 1;
              v34 = *(a1 + 80);
              if (v34 && (v35 = *(a1 + 72), v35 < *v34))
              {
                *(a1 + 72) = v35 + 1;
                v36 = *&v34[2 * v35 + 2];
              }

              else
              {
                v37 = sub_1632B08(*(a1 + 64));
                v36 = sub_19593CC(a1 + 64, v37);
                v33 = *v41;
              }

              v32 = sub_222C9F4(a3, v36, v33);
              *v41 = v32;
              if (!v32)
              {
                goto LABEL_69;
              }

              if (*a3 <= v32 || *v32 != 42)
              {
                goto LABEL_64;
              }
            }
          }
        }

        else if (v10 == 6 && v7 == 50)
        {
          v20 = v6 - 1;
          while (1)
          {
            v21 = v20 + 1;
            *v41 = v20 + 1;
            v22 = *(a1 + 104);
            if (v22 && (v23 = *(a1 + 96), v23 < *v22))
            {
              *(a1 + 96) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_1632674(*(a1 + 88));
              v24 = sub_19593CC(a1 + 88, v25);
              v21 = *v41;
            }

            v20 = sub_222CA84(a3, v24, v21);
            *v41 = v20;
            if (!v20)
            {
              goto LABEL_69;
            }

            if (*a3 <= v20 || *v20 != 50)
            {
              goto LABEL_64;
            }
          }
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 10)
        {
          v26 = v6 - 1;
          while (1)
          {
            v27 = v26 + 1;
            *v41 = v26 + 1;
            v28 = *(a1 + 32);
            if (v28 && (v29 = *(a1 + 24), v29 < *v28))
            {
              *(a1 + 24) = v29 + 1;
              v30 = *&v28[2 * v29 + 2];
            }

            else
            {
              v31 = sub_16325F4(*(a1 + 16));
              v30 = sub_19593CC(a1 + 16, v31);
              v27 = *v41;
            }

            v26 = sub_222C964(a3, v30, v27);
            *v41 = v26;
            if (!v26)
            {
              goto LABEL_69;
            }

            if (*a3 <= v26 || *v26 != 10)
            {
              goto LABEL_64;
            }
          }
        }
      }

      else if (v10 == 3 && v7 == 26)
      {
        v12 = v6 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          *v41 = v12 + 1;
          v14 = *(a1 + 56);
          if (v14 && (v15 = *(a1 + 48), v15 < *v14))
          {
            *(a1 + 48) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = *(a1 + 40);
            if (!v17)
            {
              operator new();
            }

            *v19 = v18;
            v19[1] = sub_195A650;
            *v18 = 0;
            v18[1] = 0;
            v18[2] = 0;
            v16 = sub_19593CC(a1 + 40, v18);
            v13 = *v41;
          }

          v12 = sub_1958890(v16, v13, a3);
          *v41 = v12;
          if (!v12)
          {
            goto LABEL_69;
          }

          if (*a3 <= v12 || *v12 != 26)
          {
            goto LABEL_64;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v39 = *(a1 + 8);
      if (v39)
      {
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v40 = sub_11F1920((a1 + 8));
        v6 = *v41;
      }

      *v41 = sub_1952690(v7, v40, v6, a3);
      if (!*v41)
      {
        goto LABEL_69;
      }

LABEL_64:
      if (sub_195ADC0(a3, v41, a3[11].u32[1]))
      {
        return *v41;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return *v41;
    }

LABEL_69:
    *v41 = 0;
  }

  return *v41;
}

char *sub_162B738(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_162A484(v8, v10, a3);
    }
  }

  v11 = *(a1 + 48);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 56) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || (*a3 - __dst + 14) < v14)
      {
        __dst = sub_1957480(a3, 3, v13, __dst);
      }

      else
      {
        *__dst = 26;
        __dst[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = __dst + 2;
        memcpy(v15, v13, v14);
        __dst = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 80) + 8 * j + 8);
      *__dst = 42;
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

      __dst = sub_163054C(v18, v20, a3);
    }
  }

  v21 = *(a1 + 96);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 104) + 8 * k + 8);
      *__dst = 50;
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

      __dst = sub_162AD44(v23, v25, a3);
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

uint64_t sub_162BA18(uint64_t a1)
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
      v7 = sub_162A740(v6);
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
  v15 = v9 + v14;
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
      v20 = sub_1630698(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 96);
  v22 = v15 + v21;
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
      v27 = sub_162B03C(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
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

    v22 += v31;
  }

  *(a1 + 112) = v22;
  return v22;
}

uint64_t sub_162BBD0(uint64_t a1)
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

  if (a1 != &off_277B2A0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16218CC(v6);
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

void sub_162BC9C(uint64_t a1)
{
  sub_162BBD0(a1);

  operator delete();
}

uint64_t sub_162BCD4(uint64_t result)
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
      result = sub_1621AC4(*(result + 32));
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

uint64_t sub_162BD68(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

          v15 = sub_1631D4C(v17);
          *(a1 + 32) = v15;
          v6 = *v22;
        }

        v14 = sub_222BFCC(a3, v15, v6);
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

char *sub_162BF04(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_162212C(v7, v9, a3);
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

uint64_t sub_162C030(uint64_t a1)
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
    v7 = sub_1622648(*(a1 + 32));
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

void sub_162C10C(uint64_t a1, uint64_t a2)
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

        v8 = sub_1631D4C(v10);
        *(a1 + 32) = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_277AED8;
      }

      sub_1622908(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_162C210(uint64_t a1)
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
  if (a1 != &off_277B2C8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16218CC(v6);
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

void sub_162C2C8(uint64_t a1)
{
  sub_162C210(a1);

  operator delete();
}

uint64_t sub_162C300(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1621AC4(*(result + 24));
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

char *sub_162C35C(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_1631D4C(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_222BFCC(a3, v14, v6);
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

char *sub_162C4A0(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_162212C(v6, v8, a3);
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

uint64_t sub_162C5AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_1622648(*(a1 + 24));
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

void sub_162C62C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      v5 = sub_1631D4C(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277AED8;
    }

    sub_1622908(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_162C6EC(uint64_t a1)
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

  if (a1 != &off_277B2E8)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_16218CC(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_162BBD0(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_162C210(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_162C7E4(uint64_t a1)
{
  sub_162C6EC(a1);

  operator delete();
}

uint64_t sub_162C81C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      result = sub_1621AC4(*(a1 + 48));
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

    result = sub_162BCD4(*(a1 + 56));
    if ((v3 & 4) != 0)
    {
LABEL_5:
      result = sub_162C300(*(a1 + 64));
    }
  }

LABEL_6:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_162C8AC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  if (sub_195ADC0(a3, v33, a3[11].u32[1]))
  {
    return *v33;
  }

  while (1)
  {
    v6 = (*v33 + 1);
    v7 = **v33;
    if (**v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v33 + 2);
      }
    }

    *v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_45;
        }

        *(a1 + 16) |= 2u;
        v27 = *(a1 + 56);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_16327B0(v29);
          *(a1 + 56) = v27;
          v6 = *v33;
        }

        v15 = sub_222CB14(a3, v27, v6);
      }

      else
      {
        if (v10 != 5 || v7 != 42)
        {
          goto LABEL_45;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 64);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_1632834(v18);
          *(a1 + 64) = v16;
          v6 = *v33;
        }

        v15 = sub_222CBA4(a3, v16, v6);
      }

      goto LABEL_52;
    }

    if (v10 == 1)
    {
      break;
    }

    if (v10 != 2 || v7 != 18)
    {
      goto LABEL_45;
    }

    *(a1 + 16) |= 1u;
    v12 = *(a1 + 48);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_1631D4C(v14);
      *(a1 + 48) = v12;
      v6 = *v33;
    }

    v15 = sub_222BFCC(a3, v12, v6);
LABEL_52:
    *v33 = v15;
    if (!v15)
    {
      goto LABEL_58;
    }

LABEL_53:
    if (sub_195ADC0(a3, v33, a3[11].u32[1]))
    {
      return *v33;
    }
  }

  if (v7 == 10)
  {
    v19 = v6 - 1;
    while (1)
    {
      v20 = (v19 + 1);
      *v33 = v19 + 1;
      v21 = *(a1 + 40);
      if (v21 && (v22 = *(a1 + 32), v22 < *v21))
      {
        *(a1 + 32) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = *(a1 + 24);
        if (!v24)
        {
          operator new();
        }

        *v26 = v25;
        v26[1] = sub_195A650;
        *v25 = 0;
        v25[1] = 0;
        v25[2] = 0;
        v23 = sub_19593CC(a1 + 24, v25);
        v20 = *v33;
      }

      v19 = sub_1958890(v23, v20, a3);
      *v33 = v19;
      if (!v19)
      {
        goto LABEL_58;
      }

      if (*a3 <= v19 || *v19 != 10)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_45:
  if (v7)
  {
    v30 = (v7 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v6 = *v33;
    }

    v15 = sub_1952690(v7, v32, v6, a3);
    goto LABEL_52;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v33;
  }

LABEL_58:
  *v33 = 0;
  return *v33;
}

char *sub_162CBB4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - __dst + 14) < v9)
      {
        __dst = sub_1957480(a3, 1, v8, __dst);
      }

      else
      {
        *__dst = 10;
        __dst[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = __dst + 2;
        memcpy(v10, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
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

    __dst = sub_162212C(v12, v14, a3);
    if ((v11 & 2) == 0)
    {
LABEL_14:
      if ((v11 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_14;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v15 = *(a1 + 56);
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

  __dst = sub_162BF04(v15, v17, a3);
  if ((v11 & 4) != 0)
  {
LABEL_28:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v18 = *(a1 + 64);
    *__dst = 42;
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

    __dst = sub_162C4A0(v18, v20, a3);
  }

LABEL_34:
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v24)
  {
    v26 = v24;
    memcpy(__dst, v25, v24);
    __dst += v26;
    return __dst;
  }

  return sub_1957130(a3, v25, v24, __dst);
}

uint64_t sub_162CE44(uint64_t a1)
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v12 = sub_1622648(*(a1 + 48));
      v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v13 = sub_162C030(*(a1 + 56));
    v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_12:
      v9 = sub_162C5AC(*(a1 + 64));
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_13:
  v10 = *(a1 + 8);
  if (v10)
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v4 += v15;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_162CFA0(uint64_t a1, uint64_t a2)
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

        v10 = sub_1631D4C(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277AED8;
      }

      sub_1622908(v10, v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v14 = *(a1 + 56);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_16327B0(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_277B2A0;
    }

    sub_162C10C(v14, v17);
    if ((v9 & 4) != 0)
    {
LABEL_25:
      *(a1 + 16) |= 4u;
      v18 = *(a1 + 64);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_1632834(v20);
        *(a1 + 64) = v18;
      }

      if (*(a2 + 64))
      {
        v21 = *(a2 + 64);
      }

      else
      {
        v21 = &off_277B2C8;
      }

      sub_162C62C(v18, v21);
    }
  }

LABEL_33:
  v22 = *(a2 + 8);
  if (v22)
  {

    sub_1957EF4((a1 + 8), (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_162D170(void *a1)
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

  sub_162D20C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_12E6204(a1 + 6);
  sub_1638998(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_162D20C(void *result)
{
  if (result != &off_277B330)
  {
    v1 = result;
    v2 = result[9];
    if (v2)
    {
      sub_1629B68(v2);
      operator delete();
    }

    v3 = v1[10];
    if (v3)
    {
      sub_162B2A4(v3);
      operator delete();
    }

    v4 = v1[11];
    if (v4)
    {
      sub_162EA80(v4);
      operator delete();
    }

    result = v1[12];
    if (result)
    {
      sub_162B2A4(result);

      operator delete();
    }
  }

  return result;
}

void sub_162D2D0(void *a1)
{
  sub_162D170(a1);

  operator delete();
}

uint64_t sub_162D308(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_162C81C(v4);
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
      result = sub_16E4E44(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v9 = *(v1 + 72);
      v10 = *(v9 + 8);
      result = v9 + 8;
      *(result + 16) = 0;
      *(result + 32) = 0;
      *(result + 8) = 0;
      if (v10)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v8 & 2) != 0)
    {
      result = sub_1622EEC(*(v1 + 80));
      if ((v8 & 4) == 0)
      {
LABEL_15:
        if ((v8 & 8) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v8 & 4) == 0)
    {
      goto LABEL_15;
    }

    result = sub_162D418(*(v1 + 88));
    if ((v8 & 8) != 0)
    {
LABEL_16:
      result = sub_1622EEC(*(v1 + 96));
    }
  }

LABEL_17:
  if ((v8 & 0x30) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
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

uint64_t sub_162D418(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 316) = 0;
    *(a1 + 308) = 0;
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

char *sub_162D474(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
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
              v18 = sub_16328AC(*(a1 + 24));
              v17 = sub_19593CC(a1 + 24, v18);
              v14 = v44;
            }

            v13 = sub_222CC34(a3, v17, v14);
            v44 = v13;
            if (!v13)
            {
              goto LABEL_83;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_70;
      }

      if (v8 != 9)
      {
        goto LABEL_70;
      }

      v28 = *v7;
      v19 = v7 + 8;
      v5 |= 0x10u;
      *(a1 + 104) = v28;
      goto LABEL_46;
    }

    if (v11 == 3)
    {
      if (v8 == 26)
      {
        v31 = v7 - 1;
        while (1)
        {
          v32 = v31 + 1;
          v44 = v31 + 1;
          v33 = *(a1 + 64);
          if (v33 && (v34 = *(a1 + 56), v34 < *v33))
          {
            *(a1 + 56) = v34 + 1;
            v35 = *&v33[2 * v34 + 2];
          }

          else
          {
            v36 = sub_16F5828(*(a1 + 48));
            v35 = sub_19593CC(a1 + 48, v36);
            v32 = v44;
          }

          v31 = sub_21F4D60(a3, v35, v32);
          v44 = v31;
          if (!v31)
          {
            goto LABEL_83;
          }

          if (*a3 <= v31 || *v31 != 26)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_70;
    }

    if (v11 != 4 || v8 != 34)
    {
      goto LABEL_70;
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

      v21 = sub_1632558(v23);
      *(a1 + 72) = v21;
      v7 = v44;
    }

    v24 = sub_222C05C(a3, v21, v7);
LABEL_77:
    v44 = v24;
    if (!v24)
    {
      goto LABEL_83;
    }

LABEL_78:
    if (sub_195ADC0(a3, &v44, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 == 42)
      {
        *(a1 + 16) |= 2u;
        v25 = *(a1 + 80);
        if (!v25)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v25 = sub_16326FC(v30);
          *(a1 + 80) = v25;
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      goto LABEL_70;
    }

    if (v11 != 6 || v8 != 49)
    {
      goto LABEL_70;
    }

    v20 = *v7;
    v19 = v7 + 8;
    v5 |= 0x20u;
    *(a1 + 112) = v20;
LABEL_46:
    v44 = v19;
    goto LABEL_78;
  }

  if (v11 == 7)
  {
    if (v8 != 58)
    {
      goto LABEL_70;
    }

    *(a1 + 16) |= 4u;
    v37 = *(a1 + 88);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      sub_1632AA8(v39);
      v37 = v40;
      *(a1 + 88) = v40;
      v7 = v44;
    }

    v24 = sub_222CCC4(a3, v37, v7);
    goto LABEL_77;
  }

  if (v11 == 8 && v8 == 66)
  {
    *(a1 + 16) |= 8u;
    v25 = *(a1 + 96);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_16326FC(v27);
      *(a1 + 96) = v25;
LABEL_52:
      v7 = v44;
    }

LABEL_53:
    v24 = sub_222BF3C(a3, v25, v7);
    goto LABEL_77;
  }

LABEL_70:
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
      v7 = v44;
    }

    v24 = sub_1952690(v8, v43, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

char *sub_162D870(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 104);
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

      v4 = sub_162CBB4(v10, v12, a3);
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
      v16 = *(v15 + 44);
      v4[1] = v16;
      if (v16 > 0x7F)
      {
        v17 = sub_19575D0(v16, v4 + 1);
      }

      else
      {
        v17 = v4 + 2;
      }

      v4 = sub_16E5070(v15, v17, a3);
    }
  }

  if (v6)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 72);
    *v4 = 34;
    v19 = *(v18 + 20);
    v4[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v4 + 1);
    }

    else
    {
      v20 = v4 + 2;
    }

    v4 = sub_1629E88(v18, v20, a3);
    if ((v6 & 2) == 0)
    {
LABEL_23:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 80);
  *v4 = 42;
  v22 = *(v21 + 112);
  v4[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v4 + 1);
  }

  else
  {
    v23 = v4 + 2;
  }

  v4 = sub_162B738(v21, v23, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_24:
    if ((v6 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_42;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 112);
  *v4 = 49;
  *(v4 + 1) = v24;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_25:
    if ((v6 & 8) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 88);
  *v4 = 58;
  v26 = *(v25 + 20);
  v4[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v4 + 1);
  }

  else
  {
    v27 = v4 + 2;
  }

  v4 = sub_162F084(v25, v27, a3);
  if ((v6 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v28 = *(a1 + 96);
    *v4 = 66;
    v29 = *(v28 + 112);
    v4[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v4 + 1);
    }

    else
    {
      v30 = v4 + 2;
    }

    v4 = sub_162B738(v28, v30, a3);
  }

LABEL_54:
  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v34)
  {
    v36 = v34;
    memcpy(v4, v35, v34);
    v4 += v36;
    return v4;
  }

  return sub_1957130(a3, v35, v34, v4);
}

uint64_t sub_162DC4C(uint64_t a1)
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
      v7 = sub_162CE44(v6);
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
      v14 = sub_16E51F0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0x3F) != 0)
  {
    if (v15)
    {
      v20 = sub_162A064(*(a1 + 72));
      v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_18:
        if ((v15 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_30;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

    v21 = sub_162BA18(*(a1 + 80));
    v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_19:
      if ((v15 & 8) == 0)
      {
LABEL_21:
        v17 = v9 + 9;
        if ((v15 & 0x10) == 0)
        {
          v17 = v9;
        }

        if ((v15 & 0x20) != 0)
        {
          v9 = v17 + 9;
        }

        else
        {
          v9 = v17;
        }

        goto LABEL_26;
      }

LABEL_20:
      v16 = sub_162BA18(*(a1 + 96));
      v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_21;
    }

LABEL_30:
    v22 = sub_162FE04(*(a1 + 88));
    v9 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_26:
  v18 = *(a1 + 8);
  if (v18)
  {
    v23 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v9 += v24;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_162DE38(char *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 24), *(a2 + 32));
    sub_1639054(result + 3, v6, (v5 + 8), v4, **(result + 5) - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = *(result + 5);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8((result + 48), *(a2 + 56));
    sub_11F1A54(result + 6, v11, (v10 + 8), v9, **(result + 8) - *(result + 14));
    v12 = *(result + 14) + v9;
    *(result + 14) = v12;
    v13 = *(result + 8);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0x3F) != 0)
  {
    if (v14)
    {
      *(result + 4) |= 1u;
      v15 = *(result + 9);
      if (!v15)
      {
        v16 = *(result + 1);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v15 = sub_1632558(v17);
        *(result + 9) = v15;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = &off_277B1F8;
      }

      sub_12EE138(v15, v18);
    }

    if ((v14 & 2) != 0)
    {
      *(result + 4) |= 2u;
      v20 = *(result + 10);
      if (!v20)
      {
        v21 = *(result + 1);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v20 = sub_16326FC(v22);
        *(result + 10) = v20;
      }

      if (*(a2 + 80))
      {
        v23 = *(a2 + 80);
      }

      else
      {
        v23 = &off_277B228;
      }

      sub_162419C(v20, v23);
      if ((v14 & 4) == 0)
      {
LABEL_19:
        if ((v14 & 8) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_44;
      }
    }

    else if ((v14 & 4) == 0)
    {
      goto LABEL_19;
    }

    *(result + 4) |= 4u;
    v24 = *(result + 11);
    if (!v24)
    {
      v25 = *(result + 1);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_1632AA8(v26);
      *(result + 11) = v24;
    }

    if (*(a2 + 88))
    {
      v27 = *(a2 + 88);
    }

    else
    {
      v27 = &off_277B3D8;
    }

    sub_162E0BC(v24, v27);
    if ((v14 & 8) == 0)
    {
LABEL_20:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_52;
    }

LABEL_44:
    *(result + 4) |= 8u;
    v28 = *(result + 12);
    if (!v28)
    {
      v29 = *(result + 1);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_16326FC(v30);
      *(result + 12) = v28;
    }

    if (*(a2 + 96))
    {
      v31 = *(a2 + 96);
    }

    else
    {
      v31 = &off_277B228;
    }

    sub_162419C(v28, v31);
    if ((v14 & 0x10) == 0)
    {
LABEL_21:
      if ((v14 & 0x20) == 0)
      {
LABEL_23:
        *(result + 4) |= v14;
        goto LABEL_24;
      }

LABEL_22:
      *(result + 14) = *(a2 + 112);
      goto LABEL_23;
    }

LABEL_52:
    *(result + 13) = *(a2 + 104);
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4(result + 1, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_162E0BC(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[2], v9 + v8);
    v10 = v3[2].__r_.__value_.__l.__size_;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((v10 + 4 * v9), *(a2 + 56), 4 * *(a2 + 48));
  }

  v11 = *(a2 + 72);
  if (v11)
  {
    v12 = SLODWORD(v3[3].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[3], v12 + v11);
    v13 = v3[3].__r_.__value_.__l.__size_;
    LODWORD(v3[3].__r_.__value_.__l.__data_) += *(a2 + 72);
    result = memcpy((v13 + 4 * v12), *(a2 + 80), 4 * *(a2 + 72));
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = SLODWORD(v3[4].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[4], v15 + v14);
    v16 = v3[4].__r_.__value_.__l.__size_;
    LODWORD(v3[4].__r_.__value_.__l.__data_) += *(a2 + 96);
    result = memcpy((v16 + 4 * v15), *(a2 + 104), 4 * *(a2 + 96));
  }

  v17 = *(a2 + 120);
  if (v17)
  {
    v18 = SLODWORD(v3[5].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[5], v18 + v17);
    v19 = v3[5].__r_.__value_.__l.__size_;
    LODWORD(v3[5].__r_.__value_.__l.__data_) += *(a2 + 120);
    result = memcpy((v19 + 4 * v18), *(a2 + 128), 4 * *(a2 + 120));
  }

  v20 = *(a2 + 144);
  if (v20)
  {
    v21 = SLODWORD(v3[6].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[6], v21 + v20);
    v22 = v3[6].__r_.__value_.__l.__size_;
    LODWORD(v3[6].__r_.__value_.__l.__data_) += *(a2 + 144);
    result = memcpy((v22 + 4 * v21), *(a2 + 152), 4 * *(a2 + 144));
  }

  v23 = *(a2 + 168);
  if (v23)
  {
    v24 = SLODWORD(v3[7].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[7], v24 + v23);
    v25 = v3[7].__r_.__value_.__l.__size_;
    LODWORD(v3[7].__r_.__value_.__l.__data_) += *(a2 + 168);
    result = memcpy((v25 + 4 * v24), *(a2 + 176), 4 * *(a2 + 168));
  }

  v26 = *(a2 + 192);
  if (v26)
  {
    v27 = SLODWORD(v3[8].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[8], v27 + v26);
    v28 = v3[8].__r_.__value_.__l.__size_;
    LODWORD(v3[8].__r_.__value_.__l.__data_) += *(a2 + 192);
    result = memcpy((v28 + 4 * v27), *(a2 + 200), 4 * *(a2 + 192));
  }

  v29 = *(a2 + 216);
  if (v29)
  {
    v30 = SLODWORD(v3[9].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[9], v30 + v29);
    v31 = v3[9].__r_.__value_.__l.__size_;
    LODWORD(v3[9].__r_.__value_.__l.__data_) += *(a2 + 216);
    result = memcpy((v31 + 4 * v30), *(a2 + 224), 4 * *(a2 + 216));
  }

  v32 = *(a2 + 240);
  if (v32)
  {
    v33 = SLODWORD(v3[10].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[10], v33 + v32);
    v34 = v3[10].__r_.__value_.__l.__size_;
    LODWORD(v3[10].__r_.__value_.__l.__data_) += *(a2 + 240);
    result = memcpy((v34 + 4 * v33), *(a2 + 248), 4 * *(a2 + 240));
  }

  v35 = *(a2 + 264);
  if (v35)
  {
    v36 = SLODWORD(v3[11].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[11], v36 + v35);
    v37 = v3[11].__r_.__value_.__l.__size_;
    LODWORD(v3[11].__r_.__value_.__l.__data_) += *(a2 + 264);
    result = memcpy((v37 + 4 * v36), *(a2 + 272), 4 * *(a2 + 264));
  }

  v38 = *(a2 + 288);
  if (v38)
  {
    v39 = SLODWORD(v3[12].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[12], v39 + v38);
    v40 = v3[12].__r_.__value_.__l.__size_;
    LODWORD(v3[12].__r_.__value_.__l.__data_) += *(a2 + 288);
    result = memcpy((v40 + 4 * v39), *(a2 + 296), 4 * *(a2 + 288));
  }

  v41 = *(a2 + 16);
  if ((v41 & 7) != 0)
  {
    if (v41)
    {
      HIDWORD(v3[12].__r_.__value_.__r.__words[2]) = *(a2 + 308);
      if ((v41 & 2) == 0)
      {
LABEL_28:
        if ((v41 & 4) == 0)
        {
LABEL_30:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v41;
          goto LABEL_31;
        }

LABEL_29:
        HIDWORD(v3[13].__r_.__value_.__r.__words[0]) = *(a2 + 316);
        goto LABEL_30;
      }
    }

    else if ((v41 & 2) == 0)
    {
      goto LABEL_28;
    }

    LODWORD(v3[13].__r_.__value_.__l.__data_) = *(a2 + 312);
    if ((v41 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_31:
  v42 = *(a2 + 8);
  if (v42)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_162E48C(uint64_t a1)
{
  v2 = *(a1 + 56);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E5370(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_162E4F4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1638A1C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_162E574(void *a1)
{
  sub_162E4F4(a1);

  operator delete();
}

char *sub_162E5AC(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_163294C(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_222CD54(a3, v16, v13);
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

char *sub_162E73C(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_162D870(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_162E87C(uint64_t a1)
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
      v7 = sub_162DC4C(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

uint64_t sub_162E924(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 56);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_16E5370(*(*(v4 + 64) + 8 * v5));
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

double sub_162E9C0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26F8F18;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a2;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = a2;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a2;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = a2;
  return result;
}

void *sub_162EA80(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 36));
  sub_1956ABC((a1 + 33));
  sub_1956ABC((a1 + 30));
  sub_1956ABC((a1 + 27));
  sub_1956ABC((a1 + 24));
  sub_1956ABC((a1 + 21));
  sub_1956ABC((a1 + 18));
  sub_1956ABC((a1 + 15));
  sub_1956ABC((a1 + 12));
  sub_1956ABC((a1 + 9));
  sub_1956ABC((a1 + 6));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_162EB54(void *a1)
{
  sub_162EA80(a1);

  operator delete();
}

char *sub_162EB8C(uint64_t a1, char *a2, int32x2_t *a3)
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
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 == 10)
        {
          v11 = (a1 + 24);
          goto LABEL_42;
        }

        if (v8 != 8)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 24);
        break;
      case 2u:
        if (v8 == 18)
        {
          v11 = (a1 + 48);
          goto LABEL_42;
        }

        if (v8 != 16)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 48);
        break;
      case 3u:
        if (v8 == 26)
        {
          v11 = (a1 + 72);
          goto LABEL_42;
        }

        if (v8 != 24)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 72);
        break;
      case 4u:
        if (v8 == 34)
        {
          v11 = (a1 + 96);
          goto LABEL_42;
        }

        if (v8 != 32)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 96);
        break;
      case 5u:
        if (v8 == 42)
        {
          v11 = (a1 + 120);
          goto LABEL_42;
        }

        if (v8 != 40)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 120);
        break;
      case 6u:
        if (v8 == 50)
        {
          v11 = (a1 + 144);
          goto LABEL_42;
        }

        if (v8 != 48)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 144);
        break;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_83;
        }

        v5 |= 1u;
        v15 = v7 + 1;
        v16 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        v17 = *v15;
        v16 = v16 + (v17 << 7) - 128;
        if (v17 < 0)
        {
          v24 = sub_1958770(v7, v16);
          v32 = v24;
          *(a1 + 308) = v25;
          if (!v24)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v15 = v7 + 2;
LABEL_39:
          v32 = v15;
          *(a1 + 308) = v16;
        }

        goto LABEL_44;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_83;
        }

        v5 |= 2u;
        v12 = v7 + 1;
        v13 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v14 = *v12;
        v13 = v13 + (v14 << 7) - 128;
        if (v14 < 0)
        {
          v22 = sub_1958770(v7, v13);
          v32 = v22;
          *(a1 + 312) = v23;
          if (!v22)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v12 = v7 + 2;
LABEL_28:
          v32 = v12;
          *(a1 + 312) = v13;
        }

        goto LABEL_44;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_83;
        }

        v5 |= 4u;
        v19 = v7 + 1;
        v20 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

        v21 = *v19;
        v20 = v20 + (v21 << 7) - 128;
        if (v21 < 0)
        {
          v26 = sub_1958770(v7, v20);
          v32 = v26;
          *(a1 + 316) = v27;
          if (!v26)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v19 = v7 + 2;
LABEL_50:
          v32 = v19;
          *(a1 + 316) = v20;
        }

        goto LABEL_44;
      case 0xAu:
        if (v8 == 82)
        {
          v11 = (a1 + 168);
          goto LABEL_42;
        }

        if (v8 != 80)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 168);
        break;
      case 0xBu:
        if (v8 == 90)
        {
          v11 = (a1 + 192);
          goto LABEL_42;
        }

        if (v8 == 88)
        {
          v33 = sub_128A7C8(&v32);
          v28 = (a1 + 192);
          break;
        }

LABEL_83:
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
            v7 = v32;
          }

          v18 = sub_1952690(v8, v31, v7, a3);
LABEL_43:
          v32 = v18;
          if (!v18)
          {
            goto LABEL_93;
          }

          goto LABEL_44;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_93:
          v32 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v32;
      case 0xCu:
        if (v8 == 98)
        {
          v11 = (a1 + 216);
          goto LABEL_42;
        }

        if (v8 != 96)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 216);
        break;
      case 0xDu:
        if (v8 == 106)
        {
          v11 = (a1 + 240);
          goto LABEL_42;
        }

        if (v8 != 104)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 240);
        break;
      case 0xEu:
        if (v8 == 114)
        {
          v11 = (a1 + 264);
          goto LABEL_42;
        }

        if (v8 != 112)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 264);
        break;
      case 0xFu:
        if (v8 == 122)
        {
          v11 = (a1 + 288);
LABEL_42:
          v18 = sub_1958908(v11, v7, a3);
          goto LABEL_43;
        }

        if (v8 != 120)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 288);
        break;
      default:
        goto LABEL_83;
    }

    sub_194FE98(v28, &v33);
    if (!v32)
    {
      goto LABEL_93;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }
}

char *sub_162F084(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if (v5 >= 1)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    *__dst = 10;
    v6 = __dst + 1;
    if (v5 >= 0x80)
    {
      do
      {
        *v6++ = v5 | 0x80;
        v139 = v5 >> 14;
        v5 >>= 7;
      }

      while (v139);
      __dst = v6 - 1;
    }

    v7 = __dst + 2;
    *v6 = v5;
    v8 = *(a1 + 32);
    v9 = &v8[*(a1 + 24)];
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
        __dst = v7 + 2;
        if (v10 >= 0x4000)
        {
          LOBYTE(v7) = v7[1];
          do
          {
            *(__dst - 1) = v7 | 0x80;
            v7 = (v12 >> 7);
            *__dst++ = v12 >> 7;
            v13 = v12 >> 14;
            v12 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        __dst = v7 + 1;
      }

      v7 = __dst;
    }

    while (v8 < v9);
  }

  v14 = *(a1 + 64);
  if (v14 >= 1)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    *__dst = 18;
    v15 = __dst + 1;
    if (v14 >= 0x80)
    {
      do
      {
        *v15++ = v14 | 0x80;
        v140 = v14 >> 14;
        v14 >>= 7;
      }

      while (v140);
      __dst = v15 - 1;
    }

    v16 = __dst + 2;
    *v15 = v14;
    v17 = *(a1 + 56);
    v18 = &v17[*(a1 + 48)];
    do
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v20 = *v17++;
      v19 = v20;
      *v16 = v20;
      if (v20 > 0x7F)
      {
        *v16 = v19 | 0x80;
        v21 = v19 >> 7;
        v16[1] = v19 >> 7;
        __dst = v16 + 2;
        if (v19 >= 0x4000)
        {
          LOBYTE(v16) = v16[1];
          do
          {
            *(__dst - 1) = v16 | 0x80;
            v16 = (v21 >> 7);
            *__dst++ = v21 >> 7;
            v22 = v21 >> 14;
            v21 >>= 7;
          }

          while (v22);
        }
      }

      else
      {
        __dst = v16 + 1;
      }

      v16 = __dst;
    }

    while (v17 < v18);
  }

  v23 = *(a1 + 88);
  if (v23 >= 1)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    *__dst = 26;
    v24 = __dst + 1;
    if (v23 >= 0x80)
    {
      do
      {
        *v24++ = v23 | 0x80;
        v141 = v23 >> 14;
        v23 >>= 7;
      }

      while (v141);
      __dst = v24 - 1;
    }

    v25 = __dst + 2;
    *v24 = v23;
    v26 = *(a1 + 80);
    v27 = &v26[*(a1 + 72)];
    do
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v29 = *v26++;
      v28 = v29;
      *v25 = v29;
      if (v29 > 0x7F)
      {
        *v25 = v28 | 0x80;
        v30 = v28 >> 7;
        v25[1] = v28 >> 7;
        __dst = v25 + 2;
        if (v28 >= 0x4000)
        {
          LOBYTE(v25) = v25[1];
          do
          {
            *(__dst - 1) = v25 | 0x80;
            v25 = (v30 >> 7);
            *__dst++ = v30 >> 7;
            v31 = v30 >> 14;
            v30 >>= 7;
          }

          while (v31);
        }
      }

      else
      {
        __dst = v25 + 1;
      }

      v25 = __dst;
    }

    while (v26 < v27);
  }

  v32 = *(a1 + 112);
  if (v32 >= 1)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    *__dst = 34;
    v33 = __dst + 1;
    if (v32 >= 0x80)
    {
      do
      {
        *v33++ = v32 | 0x80;
        v142 = v32 >> 14;
        v32 >>= 7;
      }

      while (v142);
      __dst = v33 - 1;
    }

    v34 = __dst + 2;
    *v33 = v32;
    v35 = *(a1 + 104);
    v36 = &v35[*(a1 + 96)];
    do
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v38 = *v35++;
      v37 = v38;
      *v34 = v38;
      if (v38 > 0x7F)
      {
        *v34 = v37 | 0x80;
        v39 = v37 >> 7;
        v34[1] = v37 >> 7;
        __dst = v34 + 2;
        if (v37 >= 0x4000)
        {
          LOBYTE(v34) = v34[1];
          do
          {
            *(__dst - 1) = v34 | 0x80;
            v34 = (v39 >> 7);
            *__dst++ = v39 >> 7;
            v40 = v39 >> 14;
            v39 >>= 7;
          }

          while (v40);
        }
      }

      else
      {
        __dst = v34 + 1;
      }

      v34 = __dst;
    }

    while (v35 < v36);
  }

  v41 = *(a1 + 136);
  if (v41 >= 1)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    *__dst = 42;
    v42 = __dst + 1;
    if (v41 >= 0x80)
    {
      do
      {
        *v42++ = v41 | 0x80;
        v143 = v41 >> 14;
        v41 >>= 7;
      }

      while (v143);
      __dst = v42 - 1;
    }

    v43 = __dst + 2;
    *v42 = v41;
    v44 = *(a1 + 128);
    v45 = &v44[*(a1 + 120)];
    do
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v47 = *v44++;
      v46 = v47;
      *v43 = v47;
      if (v47 > 0x7F)
      {
        *v43 = v46 | 0x80;
        v48 = v46 >> 7;
        v43[1] = v46 >> 7;
        __dst = v43 + 2;
        if (v46 >= 0x4000)
        {
          LOBYTE(v43) = v43[1];
          do
          {
            *(__dst - 1) = v43 | 0x80;
            v43 = (v48 >> 7);
            *__dst++ = v48 >> 7;
            v49 = v48 >> 14;
            v48 >>= 7;
          }

          while (v49);
        }
      }

      else
      {
        __dst = v43 + 1;
      }

      v43 = __dst;
    }

    while (v44 < v45);
  }

  v50 = *(a1 + 160);
  if (v50 >= 1)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    *__dst = 50;
    v51 = __dst + 1;
    if (v50 >= 0x80)
    {
      do
      {
        *v51++ = v50 | 0x80;
        v144 = v50 >> 14;
        v50 >>= 7;
      }

      while (v144);
      __dst = v51 - 1;
    }

    v52 = __dst + 2;
    *v51 = v50;
    v53 = *(a1 + 152);
    v54 = &v53[*(a1 + 144)];
    do
    {
      if (*a3 <= v52)
      {
        v52 = sub_225EB68(a3, v52);
      }

      v56 = *v53++;
      v55 = v56;
      *v52 = v56;
      if (v56 > 0x7F)
      {
        *v52 = v55 | 0x80;
        v57 = v55 >> 7;
        v52[1] = v55 >> 7;
        __dst = v52 + 2;
        if (v55 >= 0x4000)
        {
          LOBYTE(v52) = v52[1];
          do
          {
            *(__dst - 1) = v52 | 0x80;
            v52 = (v57 >> 7);
            *__dst++ = v57 >> 7;
            v58 = v57 >> 14;
            v57 >>= 7;
          }

          while (v58);
        }
      }

      else
      {
        __dst = v52 + 1;
      }

      v52 = __dst;
    }

    while (v53 < v54);
  }

  v59 = *(a1 + 16);
  if (v59)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v61 = *(a1 + 308);
    *__dst = 56;
    __dst[1] = v61;
    if (v61 > 0x7F)
    {
      __dst[1] = v61 | 0x80;
      v62 = v61 >> 7;
      __dst[2] = v61 >> 7;
      v60 = __dst + 3;
      if (v61 >= 0x4000)
      {
        LOBYTE(v63) = __dst[2];
        do
        {
          *(v60 - 1) = v63 | 0x80;
          v63 = v62 >> 7;
          *v60++ = v62 >> 7;
          v64 = v62 >> 14;
          v62 >>= 7;
        }

        while (v64);
      }
    }

    else
    {
      v60 = __dst + 2;
    }
  }

  else
  {
    v60 = __dst;
  }

  if ((v59 & 2) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v66 = *(a1 + 312);
    *v60 = 64;
    v60[1] = v66;
    if (v66 > 0x7F)
    {
      v60[1] = v66 | 0x80;
      v67 = v66 >> 7;
      v60[2] = v66 >> 7;
      v65 = v60 + 3;
      if (v66 >= 0x4000)
      {
        LOBYTE(v60) = v60[2];
        do
        {
          *(v65 - 1) = v60 | 0x80;
          LODWORD(v60) = v67 >> 7;
          *v65++ = v67 >> 7;
          v68 = v67 >> 14;
          v67 >>= 7;
        }

        while (v68);
      }
    }

    else
    {
      v65 = v60 + 2;
    }
  }

  else
  {
    v65 = v60;
  }

  if ((v59 & 4) != 0)
  {
    if (*a3 <= v65)
    {
      v65 = sub_225EB68(a3, v65);
    }

    v70 = *(a1 + 316);
    *v65 = 72;
    v65[1] = v70;
    if (v70 > 0x7F)
    {
      v65[1] = v70 | 0x80;
      v71 = v70 >> 7;
      v65[2] = v70 >> 7;
      v69 = v65 + 3;
      if (v70 >= 0x4000)
      {
        LOBYTE(v72) = v65[2];
        do
        {
          *(v69 - 1) = v72 | 0x80;
          v72 = v71 >> 7;
          *v69++ = v71 >> 7;
          v73 = v71 >> 14;
          v71 >>= 7;
        }

        while (v73);
      }
    }

    else
    {
      v69 = v65 + 2;
    }
  }

  else
  {
    v69 = v65;
  }

  v74 = *(a1 + 184);
  if (v74 >= 1)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    *v69 = 82;
    v75 = v69 + 1;
    if (v74 >= 0x80)
    {
      do
      {
        *v75++ = v74 | 0x80;
        v145 = v74 >> 14;
        v74 >>= 7;
      }

      while (v145);
      v69 = v75 - 1;
    }

    v76 = v69 + 2;
    *v75 = v74;
    v77 = *(a1 + 176);
    v78 = &v77[*(a1 + 168)];
    do
    {
      if (*a3 <= v76)
      {
        v76 = sub_225EB68(a3, v76);
      }

      v80 = *v77++;
      v79 = v80;
      *v76 = v80;
      if (v80 > 0x7F)
      {
        *v76 = v79 | 0x80;
        v81 = v79 >> 7;
        v76[1] = v79 >> 7;
        v69 = v76 + 2;
        if (v79 >= 0x4000)
        {
          LOBYTE(v82) = v76[1];
          do
          {
            *(v69 - 1) = v82 | 0x80;
            v82 = v81 >> 7;
            *v69++ = v81 >> 7;
            v83 = v81 >> 14;
            v81 >>= 7;
          }

          while (v83);
        }
      }

      else
      {
        v69 = v76 + 1;
      }

      v76 = v69;
    }

    while (v77 < v78);
  }

  v84 = *(a1 + 208);
  if (v84 >= 1)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    *v69 = 90;
    v85 = v69 + 1;
    if (v84 >= 0x80)
    {
      do
      {
        *v85++ = v84 | 0x80;
        v146 = v84 >> 14;
        v84 >>= 7;
      }

      while (v146);
      v69 = v85 - 1;
    }

    v86 = v69 + 2;
    *v85 = v84;
    v87 = *(a1 + 200);
    v88 = &v87[*(a1 + 192)];
    do
    {
      if (*a3 <= v86)
      {
        v86 = sub_225EB68(a3, v86);
      }

      v90 = *v87++;
      v89 = v90;
      *v86 = v90;
      if (v90 > 0x7F)
      {
        *v86 = v89 | 0x80;
        v91 = v89 >> 7;
        v86[1] = v89 >> 7;
        v69 = v86 + 2;
        if (v89 >= 0x4000)
        {
          LOBYTE(v92) = v86[1];
          do
          {
            *(v69 - 1) = v92 | 0x80;
            v92 = v91 >> 7;
            *v69++ = v91 >> 7;
            v93 = v91 >> 14;
            v91 >>= 7;
          }

          while (v93);
        }
      }

      else
      {
        v69 = v86 + 1;
      }

      v86 = v69;
    }

    while (v87 < v88);
  }

  v94 = *(a1 + 232);
  if (v94 >= 1)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    *v69 = 98;
    v95 = v69 + 1;
    if (v94 >= 0x80)
    {
      do
      {
        *v95++ = v94 | 0x80;
        v147 = v94 >> 14;
        v94 >>= 7;
      }

      while (v147);
      v69 = v95 - 1;
    }

    v96 = v69 + 2;
    *v95 = v94;
    v97 = *(a1 + 224);
    v98 = &v97[*(a1 + 216)];
    do
    {
      if (*a3 <= v96)
      {
        v96 = sub_225EB68(a3, v96);
      }

      v100 = *v97++;
      v99 = v100;
      *v96 = v100;
      if (v100 > 0x7F)
      {
        *v96 = v99 | 0x80;
        v101 = v99 >> 7;
        v96[1] = v99 >> 7;
        v69 = v96 + 2;
        if (v99 >= 0x4000)
        {
          LOBYTE(v102) = v96[1];
          do
          {
            *(v69 - 1) = v102 | 0x80;
            v102 = v101 >> 7;
            *v69++ = v101 >> 7;
            v103 = v101 >> 14;
            v101 >>= 7;
          }

          while (v103);
        }
      }

      else
      {
        v69 = v96 + 1;
      }

      v96 = v69;
    }

    while (v97 < v98);
  }

  v104 = *(a1 + 256);
  if (v104 >= 1)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    *v69 = 106;
    v105 = v69 + 1;
    if (v104 >= 0x80)
    {
      do
      {
        *v105++ = v104 | 0x80;
        v148 = v104 >> 14;
        v104 >>= 7;
      }

      while (v148);
      v69 = v105 - 1;
    }

    v106 = v69 + 2;
    *v105 = v104;
    v107 = *(a1 + 248);
    v108 = &v107[*(a1 + 240)];
    do
    {
      if (*a3 <= v106)
      {
        v106 = sub_225EB68(a3, v106);
      }

      v110 = *v107++;
      v109 = v110;
      *v106 = v110;
      if (v110 > 0x7F)
      {
        *v106 = v109 | 0x80;
        v111 = v109 >> 7;
        v106[1] = v109 >> 7;
        v69 = v106 + 2;
        if (v109 >= 0x4000)
        {
          LOBYTE(v112) = v106[1];
          do
          {
            *(v69 - 1) = v112 | 0x80;
            v112 = v111 >> 7;
            *v69++ = v111 >> 7;
            v113 = v111 >> 14;
            v111 >>= 7;
          }

          while (v113);
        }
      }

      else
      {
        v69 = v106 + 1;
      }

      v106 = v69;
    }

    while (v107 < v108);
  }

  v114 = *(a1 + 280);
  if (v114 >= 1)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    *v69 = 114;
    v115 = v69 + 1;
    if (v114 >= 0x80)
    {
      do
      {
        *v115++ = v114 | 0x80;
        v149 = v114 >> 14;
        v114 >>= 7;
      }

      while (v149);
      v69 = v115 - 1;
    }

    v116 = v69 + 2;
    *v115 = v114;
    v117 = *(a1 + 272);
    v118 = &v117[*(a1 + 264)];
    do
    {
      if (*a3 <= v116)
      {
        v116 = sub_225EB68(a3, v116);
      }

      v120 = *v117++;
      v119 = v120;
      *v116 = v120;
      if (v120 > 0x7F)
      {
        *v116 = v119 | 0x80;
        v121 = v119 >> 7;
        v116[1] = v119 >> 7;
        v69 = v116 + 2;
        if (v119 >= 0x4000)
        {
          LOBYTE(v122) = v116[1];
          do
          {
            *(v69 - 1) = v122 | 0x80;
            v122 = v121 >> 7;
            *v69++ = v121 >> 7;
            v123 = v121 >> 14;
            v121 >>= 7;
          }

          while (v123);
        }
      }

      else
      {
        v69 = v116 + 1;
      }

      v116 = v69;
    }

    while (v117 < v118);
  }

  v124 = *(a1 + 304);
  if (v124 >= 1)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    *v69 = 122;
    v125 = v69 + 1;
    if (v124 >= 0x80)
    {
      do
      {
        *v125++ = v124 | 0x80;
        v150 = v124 >> 14;
        v124 >>= 7;
      }

      while (v150);
      v69 = v125 - 1;
    }

    v126 = v69 + 2;
    *v125 = v124;
    v127 = *(a1 + 296);
    v128 = &v127[*(a1 + 288)];
    do
    {
      if (*a3 <= v126)
      {
        v126 = sub_225EB68(a3, v126);
      }

      v130 = *v127++;
      v129 = v130;
      *v126 = v130;
      if (v130 > 0x7F)
      {
        *v126 = v129 | 0x80;
        v131 = v129 >> 7;
        v126[1] = v129 >> 7;
        v69 = v126 + 2;
        if (v129 >= 0x4000)
        {
          LOBYTE(v132) = v126[1];
          do
          {
            *(v69 - 1) = v132 | 0x80;
            v132 = v131 >> 7;
            *v69++ = v131 >> 7;
            v133 = v131 >> 14;
            v131 >>= 7;
          }

          while (v133);
        }
      }

      else
      {
        v69 = v126 + 1;
      }

      v126 = v69;
    }

    while (v127 < v128);
  }

  v134 = *(a1 + 8);
  if ((v134 & 1) == 0)
  {
    return v69;
  }

  v136 = v134 & 0xFFFFFFFFFFFFFFFCLL;
  v137 = *(v136 + 31);
  if (v137 < 0)
  {
    v138 = *(v136 + 8);
    v137 = *(v136 + 16);
  }

  else
  {
    v138 = (v136 + 8);
  }

  if ((*a3 - v69) >= v137)
  {
    v151 = v137;
    memcpy(v69, v138, v137);
    v69 += v151;
    return v69;
  }

  return sub_1957130(a3, v138, v137, v69);
}

uint64_t sub_162FE04(uint64_t a1)
{
  v2 = sub_1959E04((a1 + 24));
  v3 = 11;
  v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v2 >= 0)
  {
    v3 = v4;
  }

  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  if (!v2)
  {
    v3 = 0;
  }

  *(a1 + 40) = v5;
  v6 = v3 + v2;
  v7 = sub_1959E04((a1 + 48));
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

  *(a1 + 64) = v8;
  v10 = v6 + v7;
  v11 = sub_1959E04((a1 + 72));
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

  *(a1 + 88) = v12;
  v14 = v10 + v11;
  v15 = sub_1959E04((a1 + 96));
  v16 = 11;
  v17 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v15 >= 0)
  {
    v16 = v17;
  }

  v18 = v16 + v14;
  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  if (!v15)
  {
    v18 = v14;
  }

  *(a1 + 112) = v19;
  v20 = v18 + v15;
  v21 = sub_1959E04((a1 + 120));
  v22 = 11;
  v23 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v21 >= 0)
  {
    v22 = v23;
  }

  v24 = v22 + v20;
  if (v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  if (!v21)
  {
    v24 = v20;
  }

  *(a1 + 136) = v25;
  v26 = v24 + v21;
  v27 = sub_1959E04((a1 + 144));
  if (v27)
  {
    v28 = v27;
    if ((v27 & 0x80000000) != 0)
    {
      v29 = 11;
    }

    else
    {
      v29 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v26 += v29;
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 160) = v28;
  v30 = v26 + v27;
  v31 = sub_1959E04((a1 + 168));
  if (v31)
  {
    v32 = v31;
    if ((v31 & 0x80000000) != 0)
    {
      v33 = 11;
    }

    else
    {
      v33 = ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v30 += v33;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 184) = v32;
  v34 = v30 + v31;
  v35 = sub_1959E04((a1 + 192));
  v36 = 11;
  v37 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v35 >= 0)
  {
    v36 = v37;
  }

  v38 = v36 + v34;
  if (v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = 0;
  }

  if (!v35)
  {
    v38 = v34;
  }

  *(a1 + 208) = v39;
  v40 = v38 + v35;
  v41 = sub_1959E04((a1 + 216));
  v42 = 11;
  v43 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v41 >= 0)
  {
    v42 = v43;
  }

  v44 = v42 + v40;
  if (v41)
  {
    v45 = v41;
  }

  else
  {
    v45 = 0;
  }

  if (!v41)
  {
    v44 = v40;
  }

  *(a1 + 232) = v45;
  v46 = v44 + v41;
  v47 = sub_1959E04((a1 + 240));
  if (v47)
  {
    v48 = v47;
    if ((v47 & 0x80000000) != 0)
    {
      v49 = 11;
    }

    else
    {
      v49 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v46 += v49;
  }

  else
  {
    v48 = 0;
  }

  *(a1 + 256) = v48;
  v50 = v46 + v47;
  v51 = sub_1959E04((a1 + 264));
  v52 = 11;
  v53 = ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v51 >= 0)
  {
    v52 = v53;
  }

  v54 = v52 + v50;
  if (v51)
  {
    v55 = v51;
  }

  else
  {
    v55 = 0;
  }

  if (!v51)
  {
    v54 = v50;
  }

  *(a1 + 280) = v55;
  v56 = v54 + v51;
  v57 = sub_1959E04((a1 + 288));
  v58 = 11;
  v59 = ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v57 >= 0)
  {
    v58 = v59;
  }

  v60 = v58 + v56;
  if (v57)
  {
    v61 = v57;
  }

  else
  {
    v61 = 0;
  }

  if (!v57)
  {
    v60 = v56;
  }

  *(a1 + 304) = v61;
  result = v60 + v57;
  v63 = *(a1 + 16);
  if ((v63 & 7) != 0)
  {
    if (v63)
    {
      result += ((9 * (__clz(*(a1 + 308) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v63 & 2) == 0)
      {
LABEL_83:
        if ((v63 & 4) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

    else if ((v63 & 2) == 0)
    {
      goto LABEL_83;
    }

    result += ((9 * (__clz(*(a1 + 312) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v63 & 4) != 0)
    {
LABEL_84:
      result += ((9 * (__clz(*(a1 + 316) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_85:
  v64 = *(a1 + 8);
  if (v64)
  {
    v65 = v64 & 0xFFFFFFFFFFFFFFFCLL;
    v66 = *((v64 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v66 < 0)
    {
      v66 = *(v65 + 16);
    }

    result += v66;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_1630264(uint64_t a1)
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

void sub_1630304(uint64_t a1)
{
  sub_1630264(a1);

  operator delete();
}

uint64_t sub_163033C(uint64_t a1)
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

uint64_t sub_1630384(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v24, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v24 + 1);
    v8 = **v24;
    if (**v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v24 + 2);
      }
    }

    *v24 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_23:
      *v24 = v17;
      *(a1 + 32) = v16;
      goto LABEL_28;
    }

    v22 = sub_19587DC(v7, v16);
    *v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_35;
    }

LABEL_28:
    if (sub_195ADC0(a3, v24, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v15 = sub_1958890(v21, *v24, a3);
LABEL_27:
    *v24 = v15;
    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
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
      v7 = *v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_27;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_35:
  *v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v24;
}

char *sub_163054C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v8 = *(a1 + 32);
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

uint64_t sub_1630698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
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
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1630774(void *a1)
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

void sub_16307E8(void *a1)
{
  sub_1630774(a1);

  operator delete();
}

uint64_t sub_1630820(uint64_t a1)
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

char *sub_1630838(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_16309BC(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1630A9C(uint64_t a1)
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

uint64_t sub_1630AEC(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (a1 != &off_277B538)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_1630774(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1630BDC(uint64_t a1)
{
  sub_1630AEC(a1);

  operator delete();
}

uint64_t sub_1630C14(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_63;
        }

        *(a1 + 16) |= 2u;
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v21 = (a1 + 56);
        goto LABEL_51;
      }

      if (v8 != 25)
      {
        goto LABEL_63;
      }

      v37 = *v7;
      v36 = v7 + 8;
      v5 |= 8u;
      *(a1 + 72) = v37;
LABEL_62:
      *v46 = v36;
      goto LABEL_71;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_63;
      }

      *(a1 + 16) |= 1u;
      v30 = *(a1 + 8);
      v20 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v20 = *v20;
      }

      v21 = (a1 + 48);
LABEL_51:
      v31 = sub_194DB04(v21, v20);
      v32 = sub_1958890(v31, *v46, a3);
      goto LABEL_70;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_63;
    }

    v5 |= 0x10u;
    v14 = v7 + 1;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = v13 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_18:
      *v46 = v14;
      *(a1 + 80) = v13;
      goto LABEL_71;
    }

    v42 = sub_19587DC(v7, v13);
    *v46 = v42;
    *(a1 + 80) = v43;
    if (!v42)
    {
      goto LABEL_80;
    }

LABEL_71:
    if (sub_195ADC0(a3, v46, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 6)
  {
    if (v11 != 7)
    {
      if (v11 == 8 && v8 == 66)
      {
        v22 = v7 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          *v46 = v22 + 1;
          v24 = *(a1 + 40);
          if (v24 && (v25 = *(a1 + 32), v25 < *v24))
          {
            *(a1 + 32) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 24);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 24, v28);
            v23 = *v46;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v46 = v22;
          if (!v22)
          {
            goto LABEL_80;
          }

          if (*a3 <= v22 || *v22 != 66)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_63;
    }

    if (v8 != 57)
    {
      goto LABEL_63;
    }

    v38 = *v7;
    v36 = v7 + 8;
    v5 |= 0x40u;
    *(a1 + 88) = v38;
    goto LABEL_62;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_63;
    }

    v5 |= 0x20u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      *v46 = v17;
      *(a1 + 84) = v16;
      goto LABEL_71;
    }

    v44 = sub_19587DC(v7, v16);
    *v46 = v44;
    *(a1 + 84) = v45;
    if (!v44)
    {
      goto LABEL_80;
    }

    goto LABEL_71;
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 4u;
    v33 = *(a1 + 64);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_1632B90(v35);
      *(a1 + 64) = v33;
      v7 = *v46;
    }

    v32 = sub_222CDE4(a3, v33, v7);
LABEL_70:
    *v46 = v32;
    if (!v32)
    {
      goto LABEL_80;
    }

    goto LABEL_71;
  }

LABEL_63:
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
      v7 = *v46;
    }

    v32 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_70;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  *v46 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v46;
}

char *sub_1631020(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 80);
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

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 72);
    *v7 = 25;
    *(v7 + 1) = v12;
    v7 += 9;
    if ((v6 & 2) == 0)
    {
LABEL_14:
      if ((v6 & 4) == 0)
      {
        goto LABEL_15;
      }

LABEL_21:
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v13 = *(a1 + 64);
      *v7 = 42;
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

      v7 = sub_16309BC(v13, v15, a3);
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_14;
  }

  v7 = sub_128AEEC(a3, 4, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if ((v6 & 0x20) == 0)
  {
LABEL_16:
    v11 = v7;
    goto LABEL_34;
  }

LABEL_27:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v16 = *(a1 + 84);
  *v7 = 48;
  v7[1] = v16;
  if (v16 > 0x7F)
  {
    v7[1] = v16 | 0x80;
    v17 = v16 >> 7;
    v7[2] = v16 >> 7;
    v11 = v7 + 3;
    if (v16 >= 0x4000)
    {
      LOBYTE(v18) = v7[2];
      do
      {
        *(v11 - 1) = v18 | 0x80;
        v18 = v17 >> 7;
        *v11++ = v17 >> 7;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
    }
  }

  else
  {
    v11 = v7 + 2;
  }

LABEL_34:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v20 = *(a1 + 88);
    *v11 = 57;
    *(v11 + 1) = v20;
    v11 += 9;
  }

  v21 = *(a1 + 32);
  if (v21 >= 1)
  {
    v22 = 8;
    do
    {
      v23 = *(*(a1 + 40) + v22);
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = v23[1], v24 > 127) || (*a3 - v11 + 14) < v24)
      {
        v11 = sub_1957480(a3, 8, v23, v11);
      }

      else
      {
        *v11 = 66;
        v11[1] = v24;
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v25 = v11 + 2;
        memcpy(v25, v23, v24);
        v11 = &v25[v24];
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v29)
  {
    v31 = v29;
    memcpy(v11, v30, v29);
    v11 += v31;
    return v11;
  }

  return sub_1957130(a3, v30, v29, v11);
}

uint64_t sub_16313A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v2 = (*(a1 + 40) + 8);
    v3 = *(a1 + 32);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  v7 = *(a1 + 16);
  if ((v7 & 0x7F) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v7 & 2) == 0)
      {
LABEL_11:
        if ((v7 & 4) == 0)
        {
LABEL_21:
          if ((v7 & 8) != 0)
          {
            v3 += 9;
          }

          if ((v7 & 0x10) != 0)
          {
            v17 = *(a1 + 80);
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

          if ((v7 & 0x20) != 0)
          {
            v19 = *(a1 + 84);
            if (v19 < 0)
            {
              v20 = 11;
            }

            else
            {
              v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
            }

            v3 += v20;
          }

          if ((v7 & 0x40) != 0)
          {
            v3 += 9;
          }

          goto LABEL_35;
        }

LABEL_19:
        v14 = *(a1 + 64);
        v15 = 2 * (*(v14 + 16) & 1);
        v16 = *(v14 + 8);
        if (v16)
        {
          v25 = v16 & 0xFFFFFFFFFFFFFFFCLL;
          v26 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
          if (v26 < 0)
          {
            v26 = *(v25 + 16);
          }

          v15 += v26;
        }

        *(v14 + 20) = v15;
        v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_21;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_35:
  v21 = *(a1 + 8);
  if (v21)
  {
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v3 += v24;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_16315C4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F7C18;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_163164C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F7C98;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_16316C8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F7D18;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1631744(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F7D98;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  return result;
}

double sub_16317D4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F7E18;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void *sub_1631850(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F7E98;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_16318C8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F7F18;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_1631944(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F7F98;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 44) = 0u;
  return result;
}

void *sub_16319C4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F8018;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_1631A4C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F8098;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_1631AC8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F8118;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[6] = 0;
  result[7] = 0;
  result[5] = 0;
  return result;
}

uint64_t sub_1631B54(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F8198;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_1631BD4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F8218;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_1631C54(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F8298;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1631CD0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F8318;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1631D4C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F8398;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0;
  return result;
}

double sub_1631E00(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F8418;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  return result;
}

uint64_t sub_1631E94(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F8498;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1631F0C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F8518;
  *(result + 16) = 0;
  return result;
}

void *sub_1631F84(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F8598;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1632000(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F8618;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1632088(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F8698;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1632110(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F8718;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = 0;
  return result;
}

double sub_16321C4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F8798;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 44) = 0;
  return result;
}

void *sub_1632268(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F8818;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_16322E0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F8898;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_1632380(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F8918;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_16323FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F8998;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 60) = 0u;
  return result;
}

double sub_163249C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F8A18;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = &qword_278E990;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  return result;
}

uint64_t sub_1632558(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F8A98;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

void *sub_16325F4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F8B18;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x100000000;
  return result;
}

void *sub_1632674(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F8B98;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  result[5] = 0;
  *(result + 46) = 0;
  return result;
}

uint64_t sub_16326FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F8C18;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

void *sub_16327B0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F8C98;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_1632834(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F8D18;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_16328AC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F8D98;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

double sub_163294C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F8E18;
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
  *(v2 + 104) = 0u;
  return result;
}

uint64_t sub_1632A08(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F8E98;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_1632AA8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_162E9C0(v2, a1, 0);
}

uint64_t sub_1632B08(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F8F98;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1632B90(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F9018;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_1632C0C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F9098;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  *(v2 + 56) = &qword_278E990;
  result = 0.0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  return result;
}

void *sub_1632CB8(void *a1)
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

void sub_1632D2C(void *a1)
{
  sub_1632CB8(a1);

  operator delete();
}

uint64_t sub_1632D64(uint64_t a1)
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

char *sub_1632D88(uint64_t a1, char *a2, int32x2_t *a3)
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
      v25 = v16;
      *(a1 + 28) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
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
    v19 = v7 + 1;
    LODWORD(v18) = *v7;
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = v18 + (v20 << 7) - 128;
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

char *sub_1632F64(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1633114(uint64_t a1)
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

uint64_t sub_16331E4(uint64_t a1)
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
  if (a1 != &off_277B5B8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1632CB8(v6);
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

void sub_163329C(uint64_t a1)
{
  sub_16331E4(a1);

  operator delete();
}

uint64_t sub_16332D4(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1632D64(*(result + 24));
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

char *sub_1633334(uint64_t a1, char *a2, int32x2_t *a3)
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
      v24 = v20;
      *(a1 + 32) = v19;
      goto LABEL_31;
    }

    v22 = sub_19587DC(v7, v19);
    v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_38;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v24, a3[11].u32[1]))
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

      v16 = sub_1633C80(v18);
      *(a1 + 24) = v16;
      v7 = v24;
    }

    v15 = sub_222CE74(a3, v16, v7);
LABEL_25:
    v24 = v15;
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
      v7 = v24;
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
  v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

char *sub_163350C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v6 = sub_1632F64(v11, v13, a3);
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

uint64_t sub_1633698(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1633114(*(a1 + 24));
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

std::string *sub_1633750(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v7 = *v7;
        }

        data = sub_1633C80(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277B598;
      }

      result = sub_128F8FC(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1633838(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_163916C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16338B8(void *a1)
{
  sub_1633838(a1);

  operator delete();
}

char *sub_16338F0(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1633CF8(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_222CF04(a3, v16, v13);
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

char *sub_1633A80(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_163350C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_1633BC0(uint64_t a1)
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
      v7 = sub_1633698(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}