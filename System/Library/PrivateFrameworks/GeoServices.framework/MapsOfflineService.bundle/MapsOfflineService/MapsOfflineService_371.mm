char *sub_1502D94(uint64_t a1, char *__dst, unint64_t *a3)
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
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    v4 = sub_128AEEC(a3, 5, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_7:
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

uint64_t sub_1502EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
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
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x1E) == 0)
  {
    goto LABEL_14;
  }

  if ((v1 & 2) == 0)
  {
    if ((v1 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v14 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v11 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_22:
  v17 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_11:
    v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v20 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v2 += v21;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1503094(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_1502A38(a1);

    sub_1383EDC(a1, a2);
  }
}

uint64_t sub_15030EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a2 + 24);
  *(a2 + 24) = *(result + 24);
  *(result + 24) = v3;
  v4 = *(a2 + 32);
  *(a2 + 32) = *(result + 32);
  *(result + 32) = v4;
  v5 = *(a2 + 40);
  *(a2 + 40) = *(result + 40);
  *(result + 40) = v5;
  v6 = *(a2 + 48);
  *(a2 + 48) = *(result + 48);
  *(result + 48) = v6;
  v7 = *(a2 + 56);
  *(a2 + 56) = *(result + 56);
  *(result + 56) = v7;
  return result;
}

uint64_t sub_1503170(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26EA7C0;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a2;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = &qword_278E990;
  *(result + 96) = 0;
  *(result + 102) = 0;
  *(result + 112) = -9;
  return result;
}

uint64_t sub_15031C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EA7C0;
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
    sub_156B90C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_156B90C((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    sub_1957EF4(v4, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 72) = &qword_278E990;
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v17);
    v16 = *(a2 + 16);
  }

  *(a1 + 80) = &qword_278E990;
  if ((v16 & 2) != 0)
  {
    v18 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v18 = *v18;
    }

    sub_194EA1C((a1 + 80), (*(a2 + 80) & 0xFFFFFFFFFFFFFFFELL), v18);
    v16 = *(a2 + 16);
  }

  *(a1 + 88) = &qword_278E990;
  if ((v16 & 4) != 0)
  {
    v19 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 88), (*(a2 + 88) & 0xFFFFFFFFFFFFFFFELL), v19);
    v16 = *(a2 + 16);
  }

  if ((v16 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  v20 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v20;
  return a1;
}

uint64_t sub_1503474(uint64_t a1)
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

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (a1 != &off_27754E8)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      sub_1516738(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1569A24((a1 + 48));
  sub_1569A24((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1503588(uint64_t a1)
{
  sub_1503474(a1);

  operator delete();
}

uint64_t sub_15035C0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_150D50C(v4);
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
      result = sub_150D50C(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_15;
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
        goto LABEL_25;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_25:
  v12 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v12 + 23) & 0x80000000) == 0)
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v8 & 4) != 0)
    {
      goto LABEL_29;
    }

LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  **v12 = 0;
  *(v12 + 8) = 0;
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:
  v13 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v13 + 23) & 0x80000000) == 0)
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    result = sub_14F39CC(*(v1 + 96));
    goto LABEL_15;
  }

  **v13 = 0;
  *(v13 + 8) = 0;
  if ((v8 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if ((v8 & 0xF0) != 0)
  {
    *(v1 + 108) = 0;
    *(v1 + 104) = 0;
    *(v1 + 112) = -9;
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

uint64_t sub_1503738(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v62 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v62, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v62 + 1);
    v8 = **v62;
    if (**v62 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v62, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v62 + 2);
      }
    }

    *v62 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 <= 7)
      {
        if (v11 == 6)
        {
          if (v8 == 50)
          {
            v33 = v7 - 1;
            while (1)
            {
              v34 = v33 + 1;
              *v62 = v33 + 1;
              v35 = *(a1 + 40);
              if (v35 && (v36 = *(a1 + 32), v36 < *v35))
              {
                *(a1 + 32) = v36 + 1;
                v37 = *&v35[2 * v36 + 2];
              }

              else
              {
                v38 = sub_152A0B4(*(a1 + 24));
                v37 = sub_19593CC(a1 + 24, v38);
                v34 = *v62;
              }

              v33 = sub_2218658(a3, v37, v34);
              *v62 = v33;
              if (!v33)
              {
                goto LABEL_113;
              }

              if (*a3 <= v33 || *v33 != 50)
              {
                goto LABEL_96;
              }
            }
          }
        }

        else if (v11 == 7 && v8 == 58)
        {
          v24 = v7 - 1;
          while (1)
          {
            v25 = v24 + 1;
            *v62 = v24 + 1;
            v26 = *(a1 + 64);
            if (v26 && (v27 = *(a1 + 56), v27 < *v26))
            {
              *(a1 + 56) = v27 + 1;
              v28 = *&v26[2 * v27 + 2];
            }

            else
            {
              v29 = sub_152A0B4(*(a1 + 48));
              v28 = sub_19593CC(a1 + 48, v29);
              v25 = *v62;
            }

            v24 = sub_2218658(a3, v28, v25);
            *v62 = v24;
            if (!v24)
            {
              goto LABEL_113;
            }

            if (*a3 <= v24 || *v24 != 58)
            {
              goto LABEL_96;
            }
          }
        }

        goto LABEL_88;
      }

      if (v11 == 8)
      {
        if (v8 != 66)
        {
          goto LABEL_88;
        }

        *(a1 + 16) |= 4u;
        v42 = *(a1 + 8);
        v31 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v31 = *v31;
        }

        v32 = (a1 + 88);
LABEL_81:
        v44 = sub_194DB04(v32, v31);
        v45 = sub_1958890(v44, *v62, a3);
        goto LABEL_95;
      }

      if (v11 == 9)
      {
        if (v8 != 74)
        {
          goto LABEL_88;
        }

        *(a1 + 16) |= 8u;
        v46 = *(a1 + 96);
        if (!v46)
        {
          v47 = *(a1 + 8);
          v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
          if (v47)
          {
            v48 = *v48;
          }

          sub_152A8C0(v48);
          v46 = v49;
          *(a1 + 96) = v49;
          v7 = *v62;
        }

        v45 = sub_21FCFA0(a3, v46, v7);
LABEL_95:
        *v62 = v45;
        if (!v45)
        {
          goto LABEL_113;
        }

        goto LABEL_96;
      }

      if (v11 != 10 || v8 != 80)
      {
        goto LABEL_88;
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
        *v62 = v18;
        *(a1 + 109) = v17 != 0;
        goto LABEL_96;
      }

      v58 = sub_19587DC(v7, v17);
      *v62 = v58;
      *(a1 + 109) = v59 != 0;
      if (!v58)
      {
        goto LABEL_113;
      }

      goto LABEL_96;
    }

    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 2u;
          v43 = *(a1 + 8);
          v31 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v31 = *v31;
          }

          v32 = (a1 + 80);
          goto LABEL_81;
        }
      }

      else if (v11 == 5 && v8 == 40)
      {
        v12 = v7 + 1;
        v13 = *v7;
        if ((v13 & 0x8000000000000000) != 0)
        {
          v14 = *v12;
          v15 = (v14 << 7) + v13;
          v13 = (v15 - 128);
          if (v14 < 0)
          {
            *v62 = sub_19587DC(v7, (v15 - 128));
            if (!*v62)
            {
              goto LABEL_113;
            }

            v13 = v57;
            goto LABEL_17;
          }

          v12 = v7 + 2;
        }

        *v62 = v12;
LABEL_17:
        if ((v13 + 3) < 7 || v13 == -9)
        {
          *(a1 + 16) |= 0x80u;
          *(a1 + 112) = v13;
        }

        else
        {
          v60 = *(a1 + 8);
          if (v60)
          {
            v61 = ((v60 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v61 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(5, v13, v61);
        }

        goto LABEL_96;
      }

      goto LABEL_88;
    }

    if (v8 != 24)
    {
      goto LABEL_88;
    }

    v5 |= 0x20u;
    v40 = v7 + 1;
    v39 = *v7;
    if ((v39 & 0x8000000000000000) == 0)
    {
      goto LABEL_72;
    }

    v41 = *v40;
    v39 = (v41 << 7) + v39 - 128;
    if ((v41 & 0x80000000) == 0)
    {
      v40 = v7 + 2;
LABEL_72:
      *v62 = v40;
      *(a1 + 108) = v39 != 0;
      goto LABEL_96;
    }

    v55 = sub_19587DC(v7, v39);
    *v62 = v55;
    *(a1 + 108) = v56 != 0;
    if (!v55)
    {
      goto LABEL_113;
    }

LABEL_96:
    if (sub_195ADC0(a3, v62, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_88;
    }

    v5 |= 0x10u;
    v21 = v7 + 1;
    v22 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    v23 = *v21;
    v22 = v22 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_41:
      *v62 = v21;
      *(a1 + 104) = v22;
      goto LABEL_96;
    }

    v53 = sub_1958770(v7, v22);
    *v62 = v53;
    *(a1 + 104) = v54;
    if (!v53)
    {
      goto LABEL_113;
    }

    goto LABEL_96;
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v32 = (a1 + 72);
    goto LABEL_81;
  }

LABEL_88:
  if (v8)
  {
    v50 = (v8 & 7) == 4;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    v51 = *(a1 + 8);
    if (v51)
    {
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v52 = sub_11F1920((a1 + 8));
      v7 = *v62;
    }

    v45 = sub_1952690(v8, v52, v7, a3);
    goto LABEL_95;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_113:
  *v62 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v62;
}

char *sub_1503CAC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 104);
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
          LODWORD(v4) = v9 >> 7;
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

  if ((v6 & 0x20) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v7 = sub_128AEEC(a3, 4, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v12 = *(a1 + 108);
  *v7 = 24;
  v7[1] = v12;
  v7 += 2;
  if ((v6 & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v6 & 0x80) == 0)
  {
LABEL_15:
    v11 = v7;
    goto LABEL_27;
  }

LABEL_20:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 112);
  *v7 = 40;
  v7[1] = v13;
  if (v13 > 0x7F)
  {
    v7[1] = v13 | 0x80;
    v14 = v13 >> 7;
    v7[2] = v13 >> 7;
    v11 = v7 + 3;
    if (v13 >= 0x4000)
    {
      LOBYTE(v15) = v7[2];
      do
      {
        *(v11 - 1) = v15 | 0x80;
        v15 = v14 >> 7;
        *v11++ = v14 >> 7;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v11 = v7 + 2;
  }

LABEL_27:
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
      *v11 = 50;
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

      v11 = sub_150D7C8(v19, v21, a3);
    }
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    for (j = 0; j != v22; ++j)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v24 = *(*(a1 + 64) + 8 * j + 8);
      *v11 = 58;
      v25 = *(v24 + 20);
      v11[1] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, v11 + 1);
      }

      else
      {
        v26 = v11 + 2;
      }

      v11 = sub_150D7C8(v24, v26, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    v11 = sub_128AEEC(a3, 8, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v6 & 8) == 0)
    {
LABEL_45:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_45;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v27 = *(a1 + 96);
  *v11 = 74;
  v28 = *(v27 + 20);
  v11[1] = v28;
  if (v28 > 0x7F)
  {
    v29 = sub_19575D0(v28, v11 + 1);
  }

  else
  {
    v29 = v11 + 2;
  }

  v11 = sub_1516D40(v27, v29, a3);
  if ((v6 & 0x40) != 0)
  {
LABEL_54:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v30 = *(a1 + 109);
    *v11 = 80;
    v11[1] = v30;
    v11 += 2;
  }

LABEL_57:
  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v34)
  {
    v36 = v34;
    memcpy(v11, v35, v34);
    v11 += v36;
    return v11;
  }

  return sub_1957130(a3, v35, v34, v11);
}

uint64_t sub_15040C8(uint64_t a1)
{
  if ((*(a1 + 16) & 0x10) != 0)
  {
    v2 = ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v4 = v2 + v3;
  v5 = *(a1 + 40);
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
      v9 = sub_150DA08(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 56);
  v11 = v4 + v10;
  v12 = *(a1 + 64);
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
      v16 = sub_150DA08(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 16);
  if ((v17 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if (v17)
  {
    v24 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v11 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 2) == 0)
    {
LABEL_19:
      if ((v17 & 4) == 0)
      {
        goto LABEL_20;
      }

LABEL_36:
      v30 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v30 + 23);
      v32 = *(v30 + 8);
      if ((v31 & 0x80u) == 0)
      {
        v32 = v31;
      }

      v11 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v17 & 8) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_19;
  }

  v27 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v11 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  if ((v17 & 8) != 0)
  {
LABEL_21:
    v18 = sub_15171C4(*(a1 + 96));
    v11 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
  if ((v17 & 0xE0) != 0)
  {
    v11 += ((v17 >> 5) & 2) + ((v17 >> 4) & 2);
    if ((v17 & 0x80) != 0)
    {
      v19 = *(a1 + 112);
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 11;
      }

      v11 += v21;
    }
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v33 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    v11 += v34;
  }

  *(a1 + 20) = v11;
  return v11;
}

void sub_1504358(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156B90C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_156B90C((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (v14)
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

        goto LABEL_28;
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
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_28:
    v22 = *(a2 + 88);
    *(a1 + 16) |= 4u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 88), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_39;
    }

LABEL_31:
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

      sub_152A8C0(v27);
      *(a1 + 96) = v25;
    }

    if (*(a2 + 96))
    {
      v28 = *(a2 + 96);
    }

    else
    {
      v28 = &off_2775C78;
    }

    sub_14F40D0(v25, v28);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(a1 + 104) = *(a2 + 104);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 108) = *(a2 + 108);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v14;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_17;
    }

LABEL_41:
    *(a1 + 109) = *(a2 + 109);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15045C0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_15035C0(a1);

    sub_1504358(a1, a2);
  }
}

__n128 sub_1504618(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  v9 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v9;
  v10 = *(a2 + 72);
  *(a2 + 72) = *(a1 + 72);
  *(a1 + 72) = v10;
  v11 = *(a2 + 80);
  *(a2 + 80) = *(a1 + 80);
  *(a1 + 80) = v11;
  v12 = *(a2 + 88);
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = v12;
  v13 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v13;
  LODWORD(v13) = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  LOWORD(v13) = *(a1 + 108);
  *(a1 + 108) = *(a2 + 108);
  *(a2 + 108) = v13;
  LODWORD(v13) = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v13;
  return result;
}

uint64_t sub_15046FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26EA840;
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

void sub_1504778(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15047A8(void *a1)
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

void sub_150481C(void *a1)
{
  sub_15047A8(a1);

  operator delete();
}

uint64_t sub_1504854(uint64_t a1)
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

char *sub_150486C(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v13 > 2)
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

char *sub_15049D4(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1504AFC(uint64_t a1)
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

void *sub_1504B80(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26EA8C0;
  result[1] = v3;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = 0;
  return result;
}

void *sub_1504BC0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_26EA8C0;
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

  a1[5] = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C(a1 + 5, (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 16);
  }

  if ((v5 & 8) != 0)
  {
    operator new();
  }

  a1[6] = 0;
  return a1;
}

uint64_t sub_1504D58(uint64_t a1)
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

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (a1 != &off_2775580)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15047A8(v6);
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

void sub_1504E54(uint64_t a1)
{
  sub_1504D58(a1);

  operator delete();
}

uint64_t sub_1504E8C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_21;
  }

  if (v2)
  {
    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v5 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) == 0)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_11:
  v4 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v6 = *(result + 48);
  v7 = *(v6 + 8);
  result = v6 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v7)
  {
    result = sub_1957EA8(result);
  }

LABEL_21:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_1504FA0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v20 = *(a1 + 8);
          v13 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v13 = *v13;
          }

          v14 = (a1 + 40);
          goto LABEL_33;
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

          v15 = sub_15298CC(v17);
          *(a1 + 48) = v15;
          v6 = *v26;
        }

        v18 = sub_22186E8(a3, v15, v6);
        goto LABEL_41;
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
        goto LABEL_33;
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
LABEL_33:
      v21 = sub_194DB04(v14, v13);
      v18 = sub_1958890(v21, *v26, a3);
      goto LABEL_41;
    }

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

LABEL_47:
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

    v18 = sub_1952690(v7, v24, v6, a3);
LABEL_41:
    *v26 = v18;
    if (!v18)
    {
      goto LABEL_47;
    }
  }

  return *v26;
}

char *sub_15051BC(uint64_t a1, char *__dst, unint64_t *a3)
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
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_8:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 48);
  *v4 = 34;
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

  v4 = sub_15049D4(v7, v9, a3);
LABEL_15:
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

uint64_t sub_1505338(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) == 0)
  {
    v3 = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v4 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v2)
  {
LABEL_7:
    v7 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 0xC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v10 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 8) != 0)
    {
      v13 = sub_1504AFC(*(a1 + 48));
      v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v3 += v17;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1505494(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_24;
  }

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
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

LABEL_13:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) != 0)
  {
LABEL_16:
    *(a1 + 16) |= 8u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_15298CC(v16);
      *(a1 + 48) = v14;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &off_2775560;
    }

    sub_12B9D50(v14, v17);
  }

LABEL_24:
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15055F8(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_1504E8C(a1);

    sub_1505494(a1, a2);
  }
}

uint64_t sub_1505650(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a2 + 24);
  *(a2 + 24) = *(result + 24);
  *(result + 24) = v3;
  v4 = *(a2 + 32);
  *(a2 + 32) = *(result + 32);
  *(result + 32) = v4;
  v5 = *(a2 + 40);
  *(a2 + 40) = *(result + 40);
  *(result + 40) = v5;
  v6 = *(result + 48);
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_15056C4(uint64_t a1)
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

void sub_1505764(uint64_t a1)
{
  sub_15056C4(a1);

  operator delete();
}

uint64_t sub_150579C(uint64_t a1)
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

uint64_t sub_15057E4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_23:
      *v24 = v16;
      *(a1 + 32) = v17;
      goto LABEL_28;
    }

    v22 = sub_1958770(v7, v17);
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

char *sub_15059B0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1505AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) != 0)
  {
    v2 = ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
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

uint64_t sub_1505BC0(uint64_t a1)
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
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1505C80(uint64_t a1)
{
  sub_1505BC0(a1);

  operator delete();
}

uint64_t sub_1505CB8(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
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
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_1505D78(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_41;
        }

        *(a1 + 16) |= 1u;
        v24 = *(a1 + 8);
        v14 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v14 = *v14;
        }

        v15 = (a1 + 48);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_41;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 56);
      }

      v25 = sub_194DB04(v15, v14);
      v26 = sub_1958890(v25, *v35, a3);
LABEL_48:
      *v35 = v26;
      if (!v26)
      {
        goto LABEL_56;
      }

      goto LABEL_49;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 4u;
    v28 = v7 + 1;
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_40:
      *v35 = v28;
      *(a1 + 64) = v27;
      goto LABEL_49;
    }

    v33 = sub_19587DC(v7, v27);
    *v35 = v33;
    *(a1 + 64) = v34;
    if (!v33)
    {
      goto LABEL_56;
    }

LABEL_49:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      *v35 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = *(a1 + 24);
        if (!v21)
        {
          operator new();
        }

        *v23 = v22;
        v23[1] = sub_195A650;
        *v22 = 0;
        v22[1] = 0;
        v22[2] = 0;
        v20 = sub_19593CC(a1 + 24, v22);
        v17 = *v35;
      }

      v16 = sub_1958890(v20, v17, a3);
      *v35 = v16;
      if (!v16)
      {
        goto LABEL_56;
      }

      if (*a3 <= v16 || *v16 != 34)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_41:
  if (v8)
  {
    v30 = (v8 & 7) == 4;
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
      v7 = *v35;
    }

    v26 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_56:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_1506074(uint64_t a1, char *__dst, unint64_t *a3)
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
    v4 = sub_128AEEC(a3, 2, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
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

  v8 = *(a1 + 64);
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
  v12 = *(a1 + 32);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = *(*(a1 + 40) + v13);
      v15 = *(v14 + 23);
      if (v15 < 0 && (v15 = v14[1], v15 > 127) || (*a3 - v7 + 14) < v15)
      {
        v7 = sub_1957480(a3, 4, v14, v7);
      }

      else
      {
        *v7 = 34;
        v7[1] = v15;
        if (*(v14 + 23) < 0)
        {
          v14 = *v14;
        }

        v16 = v7 + 2;
        memcpy(v16, v14, v15);
        v7 = &v16[v15];
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v20)
  {
    v22 = v20;
    memcpy(v7, v21, v20);
    v7 += v22;
    return v7;
  }

  return sub_1957130(a3, v21, v20, v7);
}

uint64_t sub_1506294(uint64_t a1)
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
  if ((v7 & 7) != 0)
  {
    if (v7)
    {
      v10 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v7 & 2) == 0)
      {
LABEL_11:
        if ((v7 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) != 0)
    {
LABEL_12:
      v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v16 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v3 += v17;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_15063E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1506554(uint64_t a1)
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
  if (a1 != &off_2775600)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1505BC0(v6);
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

void sub_150660C(uint64_t a1)
{
  sub_1506554(a1);

  operator delete();
}

uint64_t sub_1506644(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1505CB8(*(result + 24));
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

char *sub_15066A4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v22 = sub_19587DC(v6, v18);
          if (!v22)
          {
            return 0;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_30:
          v22 = v19;
        }

        if (v18 > 2)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v18;
        }

        continue;
      }

LABEL_12:
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
          return v22;
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
        v6 = v22;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_25;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
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

      v15 = sub_1529A58(v17);
      *(a1 + 24) = v15;
      v6 = v22;
    }

    v14 = sub_2218778(a3, v15, v6);
LABEL_25:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_1506870(uint64_t a1, char *__dst, unint64_t *a3)
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

    v6 = sub_1506074(v11, v13, a3);
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

uint64_t sub_15069FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1506294(*(a1 + 24));
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

  *(a1 + 20) = result;
  return result;
}

void sub_1506AC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
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

        v5 = sub_1529A58(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_27755B8;
      }

      sub_15063E8(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1506BAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26EAAC0;
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

void sub_1506C28(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1506C58(void *a1)
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

void sub_1506CCC(void *a1)
{
  sub_1506C58(a1);

  operator delete();
}

uint64_t sub_1506D04(uint64_t a1)
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

char *sub_1506D1C(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1506EA0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1506F80(uint64_t a1)
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

uint64_t sub_1506FD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_26EAB40;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1201B48(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
    v9 = *(a1 + 24) + v6;
    *(a1 + 24) = v9;
    v10 = *(a1 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 40) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_15070B0(_Unwind_Exception *a1)
{
  sub_1956AFC(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15070F0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150716C(void *a1)
{
  sub_15070F0(a1);

  operator delete();
}

uint64_t sub_15071A4(uint64_t a1)
{
  result = sub_12A41D0(a1 + 16);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_15071F4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  if ((sub_195ADC0(a3, v21, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = (*v21 + 1);
      v6 = **v21;
      if (**v21 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(*v21, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = (*v21 + 2);
        }
      }

      *v21 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          *v21 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = *(a1 + 16);
            if (!v17)
            {
              operator new();
            }

            *v19 = v18;
            v19[1] = sub_195A650;
            *v18 = 0;
            v18[1] = 0;
            v18[2] = 0;
            v16 = sub_19593CC(a1 + 16, v18);
            v13 = *v21;
          }

          v12 = sub_1958890(v16, v13, a3);
          *v21 = v12;
          if (!v12)
          {
            goto LABEL_30;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_25;
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
        v5 = *v21;
      }

      *v21 = sub_1952690(v6, v11, v5, a3);
      if (!*v21)
      {
        goto LABEL_30;
      }

LABEL_25:
      if (sub_195ADC0(a3, v21, a3[11].u32[1]))
      {
        return *v21;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return *v21;
    }

LABEL_30:
    *v21 = 0;
  }

  return *v21;
}

char *sub_15073DC(uint64_t a1, char *__dst, void *a3)
{
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 32) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - __dst + 14 < v9)
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

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_1507530(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 < 1)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v2 = (*(a1 + 32) + 8);
    v3 = *(a1 + 24);
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

  *(a1 + 40) = v3;
  return v3;
}

__n128 sub_15075D8(uint64_t a1, uint64_t a2, int a3)
{
  result.n128_u64[0] = 0;
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *a1 = off_26EABC0;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  result.n128_u64[1] = 0;
  *(a1 + 88) = 0uLL;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
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
  *(a1 + 296) = a2;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = &qword_278E990;
  *(a1 + 328) = &qword_278E990;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 397) = 0u;
  return result;
}

uint64_t sub_1507684(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v69 = (a1 + 8);
  *a1 = off_26EABC0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156B998((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_156BA14((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, v14);
    sub_156B880((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v19 = *(a2 + 96);
  if (v19)
  {
    sub_1958E5C((a1 + 96), v19);
    v20 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy(v20, *(a2 + 104), 4 * *(a2 + 96));
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v21 = *(a2 + 112);
  if (v21)
  {
    sub_1958E5C((a1 + 112), v21);
    v22 = *(a1 + 120);
    *(a1 + 112) += *(a2 + 112);
    memcpy(v22, *(a2 + 120), 4 * *(a2 + 112));
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v23 = *(a2 + 136);
  if (v23)
  {
    v24 = *(a2 + 144);
    v25 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_156BAA0((a1 + 128), v25, (v24 + 8), v23, **(a1 + 144) - *(a1 + 136));
    v26 = *(a1 + 136) + v23;
    *(a1 + 136) = v26;
    v27 = *(a1 + 144);
    if (*v27 < v26)
    {
      *v27 = v26;
    }
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v28 = *(a2 + 160);
  if (v28)
  {
    v29 = *(a2 + 168);
    v30 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_1201B48((a1 + 152), v30, (v29 + 8), v28, **(a1 + 168) - *(a1 + 160));
    v31 = *(a1 + 160) + v28;
    *(a1 + 160) = v31;
    v32 = *(a1 + 168);
    if (*v32 < v31)
    {
      *v32 = v31;
    }
  }

  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v33 = *(a2 + 184);
  if (v33)
  {
    v34 = *(a2 + 192);
    v35 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_1201B48((a1 + 176), v35, (v34 + 8), v33, **(a1 + 192) - *(a1 + 184));
    v36 = *(a1 + 184) + v33;
    *(a1 + 184) = v36;
    v37 = *(a1 + 192);
    if (*v37 < v36)
    {
      *v37 = v36;
    }
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v38 = *(a2 + 208);
  if (v38)
  {
    v39 = *(a2 + 216);
    v40 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_1201B48((a1 + 200), v40, (v39 + 8), v38, **(a1 + 216) - *(a1 + 208));
    v41 = *(a1 + 208) + v38;
    *(a1 + 208) = v41;
    v42 = *(a1 + 216);
    if (*v42 < v41)
    {
      *v42 = v41;
    }
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v43 = *(a2 + 232);
  if (v43)
  {
    v44 = *(a2 + 240);
    v45 = sub_19592E8(a1 + 224, *(a2 + 232));
    sub_1201B48((a1 + 224), v45, (v44 + 8), v43, **(a1 + 240) - *(a1 + 232));
    v46 = *(a1 + 232) + v43;
    *(a1 + 232) = v46;
    v47 = *(a1 + 240);
    if (*v47 < v46)
    {
      *v47 = v46;
    }
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v48 = *(a2 + 256);
  if (v48)
  {
    v49 = *(a2 + 264);
    v50 = sub_19592E8(a1 + 248, *(a2 + 256));
    sub_1201B48((a1 + 248), v50, (v49 + 8), v48, **(a1 + 264) - *(a1 + 256));
    v51 = *(a1 + 256) + v48;
    *(a1 + 256) = v51;
    v52 = *(a1 + 264);
    if (*v52 < v51)
    {
      *v52 = v51;
    }
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v53 = *(a2 + 280);
  if (v53)
  {
    v54 = *(a2 + 288);
    v55 = sub_19592E8(a1 + 272, *(a2 + 280));
    sub_156BB2C((a1 + 272), v55, (v54 + 8), v53, **(a1 + 288) - *(a1 + 280));
    v56 = *(a1 + 280) + v53;
    *(a1 + 280) = v56;
    v57 = *(a1 + 288);
    if (*v57 < v56)
    {
      *v57 = v56;
    }
  }

  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  v58 = *(a2 + 304);
  if (v58)
  {
    v59 = *(a2 + 312);
    v60 = sub_19592E8(a1 + 296, *(a2 + 304));
    sub_156BBB8((a1 + 296), v60, (v59 + 8), v58, **(a1 + 312) - *(a1 + 304));
    v61 = *(a1 + 304) + v58;
    *(a1 + 304) = v61;
    v62 = *(a1 + 312);
    if (*v62 < v61)
    {
      *v62 = v61;
    }
  }

  v63 = *(a2 + 8);
  if (v63)
  {
    sub_1957EF4(v69, (v63 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 320) = &qword_278E990;
  v64 = *(a2 + 16);
  if (v64)
  {
    v65 = (*v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v69)
    {
      v65 = *v65;
    }

    sub_194EA1C((a1 + 320), (*(a2 + 320) & 0xFFFFFFFFFFFFFFFELL), v65);
    v64 = *(a2 + 16);
  }

  *(a1 + 328) = &qword_278E990;
  if ((v64 & 2) != 0)
  {
    v66 = (*v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v69)
    {
      v66 = *v66;
    }

    sub_194EA1C((a1 + 328), (*(a2 + 328) & 0xFFFFFFFFFFFFFFFELL), v66);
    v64 = *(a2 + 16);
  }

  if ((v64 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v64 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v64 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v64 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v64 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v64 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v64 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v64 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  v67 = *(a2 + 400);
  *(a1 + 405) = *(a2 + 405);
  *(a1 + 400) = v67;
  return a1;
}

void *sub_1507FDC(void *a1)
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

  sub_15080E0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1569CB8(a1 + 37);
  sub_1569C34(a1 + 34);
  sub_1956AFC(a1 + 31);
  sub_1956AFC(a1 + 28);
  sub_1956AFC(a1 + 25);
  sub_1956AFC(a1 + 22);
  sub_1956AFC(a1 + 19);
  sub_1569BB0(a1 + 16);
  sub_1956ABC((a1 + 14));
  sub_1956ABC((a1 + 12));
  sub_15699A0(a1 + 9);
  sub_1569B2C(a1 + 6);
  sub_1569AA8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_15080E0(uint64_t result)
{
  v1 = result;
  if (*(result + 320) != &qword_278E990)
  {
    sub_194E89C((result + 320));
  }

  if (*(result + 328) != &qword_278E990)
  {
    sub_194E89C((result + 328));
  }

  if (result != &off_2775678)
  {
    v2 = *(result + 336);
    if (v2)
    {
      sub_15070F0(v2);
      operator delete();
    }

    v3 = v1[43];
    if (v3)
    {
      sub_1501434(v3);
      operator delete();
    }

    v4 = v1[44];
    if (v4)
    {
      sub_150BA10(v4);
      operator delete();
    }

    v5 = v1[45];
    if (v5)
    {
      sub_1525D00(v5);
      operator delete();
    }

    v6 = v1[46];
    if (v6)
    {
      sub_150C0FC(v6);
      operator delete();
    }

    v7 = v1[47];
    if (v7)
    {
      sub_150C7E8(v7);
      operator delete();
    }

    v8 = v1[48];
    if (v8)
    {
      sub_150CED4(v8);
      operator delete();
    }

    result = v1[49];
    if (result)
    {
      sub_1506C58(result);

      operator delete();
    }
  }

  return result;
}

void sub_1508230(void *a1)
{
  sub_1507FDC(a1);

  operator delete();
}

uint64_t sub_1508268(uint64_t a1)
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

uint64_t sub_15082EC(uint64_t a1)
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

uint64_t sub_1508370(uint64_t a1)
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

uint64_t sub_15083F4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v161 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v161, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = (*v161 + 1);
    v10 = **v161;
    if (**v161 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v161, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v161 + 2);
      }
    }

    *v161 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 10)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 1u;
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = (a1 + 320);
        goto LABEL_136;
      case 2u:
        if (v10 != 18)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 2u;
        v87 = *(a1 + 8);
        v15 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
        if (v87)
        {
          v15 = *v15;
        }

        v16 = (a1 + 328);
LABEL_136:
        v88 = sub_194DB04(v16, v15);
        v22 = sub_1958890(v88, *v161, a3);
        goto LABEL_274;
      case 3u:
        if (v10 != 26)
        {
          goto LABEL_267;
        }

        v67 = v9 - 1;
        while (1)
        {
          v68 = v67 + 1;
          *v161 = v67 + 1;
          v69 = *(a1 + 40);
          if (v69 && (v70 = *(a1 + 32), v70 < *v69))
          {
            *(a1 + 32) = v70 + 1;
            v71 = *&v69[2 * v70 + 2];
          }

          else
          {
            v72 = sub_1529780(*(a1 + 24));
            v71 = sub_19593CC(a1 + 24, v72);
            v68 = *v161;
          }

          v67 = sub_2218808(a3, v71, v68);
          *v161 = v67;
          if (!v67)
          {
            goto LABEL_280;
          }

          if (*a3 <= v67 || *v67 != 26)
          {
            goto LABEL_275;
          }
        }

      case 4u:
        if (v10 != 32)
        {
          goto LABEL_267;
        }

        v6 |= 0x800u;
        v111 = v9 + 1;
        v110 = *v9;
        if ((v110 & 0x8000000000000000) == 0)
        {
          goto LABEL_186;
        }

        v112 = *v111;
        v110 = (v112 << 7) + v110 - 128;
        if (v112 < 0)
        {
          v154 = sub_19587DC(v9, v110);
          *v161 = v154;
          *(a1 + 408) = v155 != 0;
          if (!v154)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v111 = v9 + 2;
LABEL_186:
          *v161 = v111;
          *(a1 + 408) = v110 != 0;
        }

        goto LABEL_275;
      case 5u:
        if (v10 != 42)
        {
          goto LABEL_267;
        }

        v113 = v9 - 1;
        while (1)
        {
          v114 = v113 + 1;
          *v161 = v113 + 1;
          v115 = *(a1 + 64);
          if (v115 && (v116 = *(a1 + 56), v116 < *v115))
          {
            *(a1 + 56) = v116 + 1;
            v117 = *&v115[2 * v116 + 2];
          }

          else
          {
            v118 = sub_152980C(*(a1 + 48));
            v117 = sub_19593CC(a1 + 48, v118);
            v114 = *v161;
          }

          v113 = sub_2218898(a3, v117, v114);
          *v161 = v113;
          if (!v113)
          {
            goto LABEL_280;
          }

          if (*a3 <= v113 || *v113 != 42)
          {
            goto LABEL_275;
          }
        }

      case 6u:
        if (v10 != 50)
        {
          goto LABEL_267;
        }

        v73 = v9 - 1;
        while (1)
        {
          v74 = v73 + 1;
          *v161 = v73 + 1;
          v75 = *(a1 + 88);
          if (v75 && (v76 = *(a1 + 80), v76 < *v75))
          {
            *(a1 + 80) = v76 + 1;
            v77 = *&v75[2 * v76 + 2];
          }

          else
          {
            v78 = sub_1529948(*(a1 + 72));
            v77 = sub_19593CC(a1 + 72, v78);
            v74 = *v161;
          }

          v73 = sub_22185C8(a3, v77, v74);
          *v161 = v73;
          if (!v73)
          {
            goto LABEL_280;
          }

          if (*a3 <= v73 || *v73 != 50)
          {
            goto LABEL_275;
          }
        }

      case 7u:
        if (v10 == 56)
        {
          v89 = (v9 - 1);
          while (1)
          {
            *v161 = v89 + 1;
            v90 = *(v89 + 1);
            v91 = (v89 + 2);
            if (v90 < 0)
            {
              v92 = *v91;
              v93 = (v92 << 7) + v90;
              LODWORD(v90) = v93 - 128;
              if (v92 < 0)
              {
                *v161 = sub_19587DC(v89 + 1, (v93 - 128));
                if (!*v161)
                {
                  goto LABEL_280;
                }

                LODWORD(v90) = v96;
                goto LABEL_143;
              }

              v91 = (v89 + 3);
            }

            *v161 = v91;
LABEL_143:
            if (sub_17968C4(v90))
            {
              v94 = *(a1 + 96);
              if (v94 == *(a1 + 100))
              {
                v95 = v94 + 1;
                sub_1958E5C((a1 + 96), v94 + 1);
                *(*(a1 + 104) + 4 * v94) = v90;
              }

              else
              {
                *(*(a1 + 104) + 4 * v94) = v90;
                v95 = v94 + 1;
              }

              *(a1 + 96) = v95;
            }

            else
            {
              sub_13ED178();
            }

            v89 = *v161;
            if (*a3 <= *v161 || **v161 != 56)
            {
              goto LABEL_275;
            }
          }
        }

        if (v10 != 58)
        {
          goto LABEL_267;
        }

        *&v162 = a1 + 96;
        *(&v162 + 1) = sub_17968C4;
        v163 = a1 + 8;
        v158 = 7;
        goto LABEL_266;
      case 8u:
        if (v10 == 64)
        {
          v97 = (v9 - 1);
          while (1)
          {
            *v161 = v97 + 1;
            v98 = *(v97 + 1);
            v99 = (v97 + 2);
            if (v98 < 0)
            {
              v100 = *v99;
              v101 = (v100 << 7) + v98;
              LODWORD(v98) = v101 - 128;
              if (v100 < 0)
              {
                *v161 = sub_19587DC(v97 + 1, (v101 - 128));
                if (!*v161)
                {
                  goto LABEL_280;
                }

                LODWORD(v98) = v104;
                goto LABEL_160;
              }

              v99 = (v97 + 3);
            }

            *v161 = v99;
LABEL_160:
            if (sub_17A7C30(v98))
            {
              v102 = *(a1 + 112);
              if (v102 == *(a1 + 116))
              {
                v103 = v102 + 1;
                sub_1958E5C((a1 + 112), v102 + 1);
                *(*(a1 + 120) + 4 * v102) = v98;
              }

              else
              {
                *(*(a1 + 120) + 4 * v102) = v98;
                v103 = v102 + 1;
              }

              *(a1 + 112) = v103;
            }

            else
            {
              sub_13B67EC();
            }

            v97 = *v161;
            if (*a3 <= *v161 || **v161 != 64)
            {
              goto LABEL_275;
            }
          }
        }

        if (v10 == 66)
        {
          *&v162 = a1 + 112;
          *(&v162 + 1) = sub_17A7C30;
          v163 = a1 + 8;
          v158 = 8;
LABEL_266:
          v164 = v158;
          v22 = sub_1216588(a3, v9, &v162, v5);
LABEL_274:
          *v161 = v22;
          if (!v22)
          {
            goto LABEL_280;
          }

LABEL_275:
          if (sub_195ADC0(a3, v161, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_267:
        if (v10)
        {
          v159 = (v10 & 7) == 4;
        }

        else
        {
          v159 = 1;
        }

        if (!v159)
        {
          if (*v8)
          {
            v160 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v160 = sub_11F1920((a1 + 8));
            v9 = *v161;
          }

          v22 = sub_1952690(v10, v160, v9, a3);
          goto LABEL_274;
        }

        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
        }

        else
        {
LABEL_280:
          *v161 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v6;
        return *v161;
      case 0xAu:
        if (v10 != 82)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 4u;
        v121 = *(a1 + 336);
        if (!v121)
        {
          v122 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v122 = *v122;
          }

          v121 = sub_1529BF8(v122);
          *(a1 + 336) = v121;
          v9 = *v161;
        }

        v22 = sub_2218928(a3, v121, v9);
        goto LABEL_274;
      case 0xBu:
        if (v10 != 90)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 8u;
        v119 = *(a1 + 344);
        if (!v119)
        {
          v120 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v120 = *v120;
          }

          v119 = sub_1529624(v120);
          *(a1 + 344) = v119;
          v9 = *v161;
        }

        v22 = sub_2217BA8(a3, v119, v9);
        goto LABEL_274;
      case 0xCu:
        if (v10 != 96)
        {
          goto LABEL_267;
        }

        v6 |= 0x400u;
        v37 = v9 + 1;
        v36 = *v9;
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v38 = *v37;
        v36 = (v38 << 7) + v36 - 128;
        if (v38 < 0)
        {
          v150 = sub_19587DC(v9, v36);
          *v161 = v150;
          *(a1 + 400) = v151;
          if (!v150)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v37 = v9 + 2;
LABEL_51:
          *v161 = v37;
          *(a1 + 400) = v36;
        }

        goto LABEL_275;
      case 0xFu:
        if (v10 != 122)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x10u;
        v79 = *(a1 + 352);
        if (!v79)
        {
          v80 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v80 = *v80;
          }

          v79 = sub_1529E24(v80);
          *(a1 + 352) = v79;
          v9 = *v161;
        }

        v22 = sub_2217CC8(a3, v79, v9);
        goto LABEL_274;
      case 0x10u:
        if (v10 != 130)
        {
          goto LABEL_267;
        }

        v53 = v9 - 2;
        while (1)
        {
          v54 = v53 + 2;
          *v161 = v53 + 2;
          v55 = *(a1 + 144);
          if (v55 && (v56 = *(a1 + 136), v56 < *v55))
          {
            *(a1 + 136) = v56 + 1;
            v57 = *&v55[2 * v56 + 2];
          }

          else
          {
            v58 = sub_1529CF8(*(a1 + 128));
            v57 = sub_19593CC(a1 + 128, v58);
            v54 = *v161;
          }

          v53 = sub_22189B8(a3, v57, v54);
          *v161 = v53;
          if (!v53)
          {
            goto LABEL_280;
          }

          if (*a3 <= v53 || *v53 != 386)
          {
            goto LABEL_275;
          }
        }

      case 0x11u:
        if (v10 != 138)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x20u;
        v23 = *(a1 + 360);
        if (!v23)
        {
          v24 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v24 = *v24;
          }

          v23 = sub_152B480(v24);
          *(a1 + 360) = v23;
          v9 = *v161;
        }

        v22 = sub_2218A48(a3, v23, v9);
        goto LABEL_274;
      case 0x12u:
        if (v10 != 146)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x40u;
        v105 = *(a1 + 368);
        if (!v105)
        {
          v106 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v106 = *v106;
          }

          v105 = sub_1529EC8(v106);
          *(a1 + 368) = v105;
          v9 = *v161;
        }

        v22 = sub_2218AD8(a3, v105, v9);
        goto LABEL_274;
      case 0x13u:
        if (v10 != 152)
        {
          goto LABEL_267;
        }

        v6 |= 0x1000u;
        v108 = v9 + 1;
        v107 = *v9;
        if ((v107 & 0x8000000000000000) == 0)
        {
          goto LABEL_181;
        }

        v109 = *v108;
        v107 = (v109 << 7) + v107 - 128;
        if (v109 < 0)
        {
          v152 = sub_19587DC(v9, v107);
          *v161 = v152;
          *(a1 + 409) = v153 != 0;
          if (!v152)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v108 = v9 + 2;
LABEL_181:
          *v161 = v108;
          *(a1 + 409) = v107 != 0;
        }

        goto LABEL_275;
      case 0x14u:
        if (v10 != 162)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x80u;
        v131 = *(a1 + 376);
        if (!v131)
        {
          v132 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v132 = *v132;
          }

          v131 = sub_1529F6C(v132);
          *(a1 + 376) = v131;
          v9 = *v161;
        }

        v22 = sub_2217D58(a3, v131, v9);
        goto LABEL_274;
      case 0x15u:
        if (v10 != 170)
        {
          goto LABEL_267;
        }

        v123 = v9 - 2;
        while (1)
        {
          v124 = (v123 + 2);
          *v161 = v123 + 2;
          v125 = *(a1 + 168);
          if (v125 && (v126 = *(a1 + 160), v126 < *v125))
          {
            *(a1 + 160) = v126 + 1;
            v127 = *&v125[2 * v126 + 2];
          }

          else
          {
            v128 = *(a1 + 152);
            if (!v128)
            {
              operator new();
            }

            *v130 = v129;
            v130[1] = sub_195A650;
            *v129 = 0;
            v129[1] = 0;
            v129[2] = 0;
            v127 = sub_19593CC(a1 + 152, v129);
            v124 = *v161;
          }

          v123 = sub_1958890(v127, v124, a3);
          *v161 = v123;
          if (!v123)
          {
            goto LABEL_280;
          }

          if (*a3 <= v123 || *v123 != 426)
          {
            goto LABEL_275;
          }
        }

      case 0x16u:
        if (v10 != 176)
        {
          goto LABEL_267;
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
          v146 = sub_19587DC(v9, v17);
          *v161 = v146;
          *(a1 + 410) = v147 != 0;
          if (!v146)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v18 = v9 + 2;
LABEL_17:
          *v161 = v18;
          *(a1 + 410) = v17 != 0;
        }

        goto LABEL_275;
      case 0x17u:
        if (v10 != 186)
        {
          goto LABEL_267;
        }

        v59 = v9 - 2;
        while (1)
        {
          v60 = (v59 + 2);
          *v161 = v59 + 2;
          v61 = *(a1 + 192);
          if (v61 && (v62 = *(a1 + 184), v62 < *v61))
          {
            *(a1 + 184) = v62 + 1;
            v63 = *&v61[2 * v62 + 2];
          }

          else
          {
            v64 = *(a1 + 176);
            if (!v64)
            {
              operator new();
            }

            *v66 = v65;
            v66[1] = sub_195A650;
            *v65 = 0;
            v65[1] = 0;
            v65[2] = 0;
            v63 = sub_19593CC(a1 + 176, v65);
            v60 = *v161;
          }

          v59 = sub_1958890(v63, v60, a3);
          *v161 = v59;
          if (!v59)
          {
            goto LABEL_280;
          }

          if (*a3 <= v59 || *v59 != 442)
          {
            goto LABEL_275;
          }
        }

      case 0x18u:
        if (v10 != 194)
        {
          goto LABEL_267;
        }

        v133 = v9 - 2;
        while (1)
        {
          v134 = (v133 + 2);
          *v161 = v133 + 2;
          v135 = *(a1 + 216);
          if (v135 && (v136 = *(a1 + 208), v136 < *v135))
          {
            *(a1 + 208) = v136 + 1;
            v137 = *&v135[2 * v136 + 2];
          }

          else
          {
            v138 = *(a1 + 200);
            if (!v138)
            {
              operator new();
            }

            *v140 = v139;
            v140[1] = sub_195A650;
            *v139 = 0;
            v139[1] = 0;
            v139[2] = 0;
            v137 = sub_19593CC(a1 + 200, v139);
            v134 = *v161;
          }

          v133 = sub_1958890(v137, v134, a3);
          *v161 = v133;
          if (!v133)
          {
            goto LABEL_280;
          }

          if (*a3 <= v133 || *v133 != 450)
          {
            goto LABEL_275;
          }
        }

      case 0x19u:
        if (v10 != 202)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x100u;
        v20 = *(a1 + 384);
        if (!v20)
        {
          v21 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v21 = *v21;
          }

          v20 = sub_152A010(v21);
          *(a1 + 384) = v20;
          v9 = *v161;
        }

        v22 = sub_2218B68(a3, v20, v9);
        goto LABEL_274;
      case 0x1Au:
        if (v10 != 210)
        {
          goto LABEL_267;
        }

        v45 = v9 - 2;
        while (1)
        {
          v46 = (v45 + 2);
          *v161 = v45 + 2;
          v47 = *(a1 + 240);
          if (v47 && (v48 = *(a1 + 232), v48 < *v47))
          {
            *(a1 + 232) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            v50 = *(a1 + 224);
            if (!v50)
            {
              operator new();
            }

            *v52 = v51;
            v52[1] = sub_195A650;
            *v51 = 0;
            v51[1] = 0;
            v51[2] = 0;
            v49 = sub_19593CC(a1 + 224, v51);
            v46 = *v161;
          }

          v45 = sub_1958890(v49, v46, a3);
          *v161 = v45;
          if (!v45)
          {
            goto LABEL_280;
          }

          if (*a3 <= v45 || *v45 != 466)
          {
            goto LABEL_275;
          }
        }

      case 0x1Bu:
        if (v10 != 218)
        {
          goto LABEL_267;
        }

        v28 = v9 - 2;
        while (1)
        {
          v29 = (v28 + 2);
          *v161 = v28 + 2;
          v30 = *(a1 + 264);
          if (v30 && (v31 = *(a1 + 256), v31 < *v30))
          {
            *(a1 + 256) = v31 + 1;
            v32 = *&v30[2 * v31 + 2];
          }

          else
          {
            v33 = *(a1 + 248);
            if (!v33)
            {
              operator new();
            }

            *v35 = v34;
            v35[1] = sub_195A650;
            *v34 = 0;
            v34[1] = 0;
            v34[2] = 0;
            v32 = sub_19593CC(a1 + 248, v34);
            v29 = *v161;
          }

          v28 = sub_1958890(v32, v29, a3);
          *v161 = v28;
          if (!v28)
          {
            goto LABEL_280;
          }

          if (*a3 <= v28 || *v28 != 474)
          {
            goto LABEL_275;
          }
        }

      case 0x1Cu:
        if (v10 != 226)
        {
          goto LABEL_267;
        }

        v81 = v9 - 2;
        while (1)
        {
          v82 = v81 + 2;
          *v161 = v81 + 2;
          v83 = *(a1 + 288);
          if (v83 && (v84 = *(a1 + 280), v84 < *v83))
          {
            *(a1 + 280) = v84 + 1;
            v85 = *&v83[2 * v84 + 2];
          }

          else
          {
            v86 = sub_1529B00(*(a1 + 272));
            v85 = sub_19593CC(a1 + 272, v86);
            v82 = *v161;
          }

          v81 = sub_2218BF8(a3, v85, v82);
          *v161 = v81;
          if (!v81)
          {
            goto LABEL_280;
          }

          if (*a3 <= v81 || *v81 != 482)
          {
            goto LABEL_275;
          }
        }

      case 0x1Du:
        if (v10 != 232)
        {
          goto LABEL_267;
        }

        v6 |= 0x4000u;
        v26 = v9 + 1;
        v25 = *v9;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          v148 = sub_19587DC(v9, v25);
          *v161 = v148;
          *(a1 + 411) = v149 != 0;
          if (!v148)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v26 = v9 + 2;
LABEL_34:
          *v161 = v26;
          *(a1 + 411) = v25 != 0;
        }

        goto LABEL_275;
      case 0x1Eu:
        if (v10 != 240)
        {
          goto LABEL_267;
        }

        v6 |= 0x8000u;
        v144 = v9 + 1;
        v143 = *v9;
        if ((v143 & 0x8000000000000000) == 0)
        {
          goto LABEL_249;
        }

        v145 = *v144;
        v143 = (v145 << 7) + v143 - 128;
        if (v145 < 0)
        {
          v156 = sub_19587DC(v9, v143);
          *v161 = v156;
          *(a1 + 412) = v157 != 0;
          if (!v156)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v144 = v9 + 2;
LABEL_249:
          *v161 = v144;
          *(a1 + 412) = v143 != 0;
        }

        goto LABEL_275;
      case 0x1Fu:
        if (v10 != 250)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x200u;
        v141 = *(a1 + 392);
        if (!v141)
        {
          v142 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v142 = *v142;
          }

          v141 = sub_1529B7C(v142);
          *(a1 + 392) = v141;
          v9 = *v161;
        }

        v22 = sub_2218C88(a3, v141, v9);
        goto LABEL_274;
      case 0x23u:
        if (v10 != 26)
        {
          goto LABEL_267;
        }

        v39 = v9 - 2;
        while (1)
        {
          v40 = v39 + 2;
          *v161 = v39 + 2;
          v41 = *(a1 + 312);
          if (v41 && (v42 = *(a1 + 304), v42 < *v41))
          {
            *(a1 + 304) = v42 + 1;
            v43 = *&v41[2 * v42 + 2];
          }

          else
          {
            v44 = sub_15299D0(*(a1 + 296));
            v43 = sub_19593CC(a1 + 296, v44);
            v40 = *v161;
          }

          v39 = sub_2218D18(a3, v43, v40);
          *v161 = v39;
          if (!v39)
          {
            goto LABEL_280;
          }

          if (*a3 <= v39 || *v39 != 666)
          {
            goto LABEL_275;
          }
        }

      default:
        goto LABEL_267;
    }
  }
}

char *sub_15094C0(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 320) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 328) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v10 = *(v9 + 20);
      v4[1] = v10;
      if (v10 > 0x7F)
      {
        v11 = sub_19575D0(v10, v4 + 1);
      }

      else
      {
        v11 = v4 + 2;
      }

      v4 = sub_1502D94(v9, v11, a3);
    }
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 408);
    *v4 = 32;
    v4[1] = v12;
    v4 += 2;
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
      *v4 = 42;
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

      v4 = sub_1503CAC(v15, v17, a3);
    }
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    for (k = 0; k != v18; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v20 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 50;
      v21 = *(v20 + 20);
      v4[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v4 + 1);
      }

      else
      {
        v22 = v4 + 2;
      }

      v4 = sub_15051BC(v20, v22, a3);
    }
  }

  v23 = *(a1 + 96);
  if (v23 < 1)
  {
    v26 = v4;
  }

  else
  {
    for (m = 0; m != v23; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v25 = *(*(a1 + 104) + 4 * m);
      *v4 = 56;
      v4[1] = v25;
      if (v25 > 0x7F)
      {
        v4[1] = v25 | 0x80;
        v27 = v25 >> 7;
        v4[2] = v25 >> 7;
        v26 = v4 + 3;
        if (v25 >= 0x4000)
        {
          LOBYTE(v28) = v4[2];
          do
          {
            *(v26 - 1) = v28 | 0x80;
            v28 = v27 >> 7;
            *v26++ = v27 >> 7;
            v29 = v27 >> 14;
            v27 >>= 7;
          }

          while (v29);
        }
      }

      else
      {
        v26 = v4 + 2;
      }

      v4 = v26;
    }
  }

  v30 = *(a1 + 112);
  if (v30 < 1)
  {
    v33 = v26;
  }

  else
  {
    for (n = 0; n != v30; ++n)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v32 = *(*(a1 + 120) + 4 * n);
      *v26 = 64;
      v26[1] = v32;
      if (v32 > 0x7F)
      {
        v26[1] = v32 | 0x80;
        v34 = v32 >> 7;
        v26[2] = v32 >> 7;
        v33 = v26 + 3;
        if (v32 >= 0x4000)
        {
          LOBYTE(v26) = v26[2];
          do
          {
            *(v33 - 1) = v26 | 0x80;
            v26 = (v34 >> 7);
            *v33++ = v34 >> 7;
            v35 = v34 >> 14;
            v34 >>= 7;
          }

          while (v35);
        }
      }

      else
      {
        v33 = v26 + 2;
      }

      v26 = v33;
    }
  }

  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_59;
    }

LABEL_67:
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v40 = *(a1 + 344);
    *v33 = 90;
    v41 = *(v40 + 20);
    v33[1] = v41;
    if (v41 > 0x7F)
    {
      v42 = sub_19575D0(v41, v33 + 1);
    }

    else
    {
      v42 = v33 + 2;
    }

    v33 = sub_15018CC(v40, v42, a3);
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_73;
  }

  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v37 = *(a1 + 336);
  *v33 = 82;
  v38 = *(v37 + 40);
  v33[1] = v38;
  if (v38 > 0x7F)
  {
    v39 = sub_19575D0(v38, v33 + 1);
  }

  else
  {
    v39 = v33 + 2;
  }

  v33 = sub_15073DC(v37, v39, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_67;
  }

LABEL_59:
  if ((v6 & 0x400) == 0)
  {
LABEL_60:
    v36 = v33;
    goto LABEL_80;
  }

LABEL_73:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v43 = *(a1 + 400);
  *v33 = 96;
  v33[1] = v43;
  if (v43 > 0x7F)
  {
    v33[1] = v43 | 0x80;
    v44 = v43 >> 7;
    v33[2] = v43 >> 7;
    v36 = v33 + 3;
    if (v43 >= 0x4000)
    {
      LOBYTE(v33) = v33[2];
      do
      {
        *(v36 - 1) = v33 | 0x80;
        v33 = (v44 >> 7);
        *v36++ = v44 >> 7;
        v45 = v44 >> 14;
        v44 >>= 7;
      }

      while (v45);
    }
  }

  else
  {
    v36 = v33 + 2;
  }

LABEL_80:
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v46 = *(a1 + 352);
    *v36 = 122;
    v47 = *(v46 + 20);
    v36[1] = v47;
    if (v47 > 0x7F)
    {
      v48 = sub_19575D0(v47, v36 + 1);
    }

    else
    {
      v48 = v36 + 2;
    }

    v36 = sub_150BD34(v46, v48, a3);
  }

  v49 = *(a1 + 136);
  if (v49)
  {
    for (ii = 0; ii != v49; ++ii)
    {
      if (*a3 <= v36)
      {
        v36 = sub_225EB68(a3, v36);
      }

      v51 = *(*(a1 + 144) + 8 * ii + 8);
      *v36 = 386;
      v52 = *(v51 + 20);
      v36[2] = v52;
      if (v52 > 0x7F)
      {
        v53 = sub_19575D0(v52, v36 + 2);
      }

      else
      {
        v53 = v36 + 3;
      }

      v36 = sub_150AFD4(v51, v53, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v54 = *(a1 + 360);
    *v36 = 394;
    v55 = *(v54 + 20);
    v36[2] = v55;
    if (v55 > 0x7F)
    {
      v56 = sub_19575D0(v55, v36 + 2);
    }

    else
    {
      v56 = v36 + 3;
    }

    v36 = sub_1526024(v54, v56, a3);
    if ((v6 & 0x40) == 0)
    {
LABEL_97:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_112;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_97;
  }

  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v57 = *(a1 + 368);
  *v36 = 402;
  v58 = *(v57 + 20);
  v36[2] = v58;
  if (v58 > 0x7F)
  {
    v59 = sub_19575D0(v58, v36 + 2);
  }

  else
  {
    v59 = v36 + 3;
  }

  v36 = sub_150C420(v57, v59, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_98:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_115;
  }

LABEL_112:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v60 = *(a1 + 409);
  *v36 = 408;
  v36[2] = v60;
  v36 += 3;
  if ((v6 & 0x80) != 0)
  {
LABEL_115:
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v61 = *(a1 + 376);
    *v36 = 418;
    v62 = *(v61 + 20);
    v36[2] = v62;
    if (v62 > 0x7F)
    {
      v63 = sub_19575D0(v62, v36 + 2);
    }

    else
    {
      v63 = v36 + 3;
    }

    v36 = sub_150CB0C(v61, v63, a3);
  }

LABEL_121:
  v64 = *(a1 + 160);
  if (v64 >= 1)
  {
    v65 = 8;
    do
    {
      v66 = *(*(a1 + 168) + v65);
      v67 = *(v66 + 23);
      if (v67 < 0 && (v67 = v66[1], v67 > 127) || (*a3 - v36 + 13) < v67)
      {
        v36 = sub_1957480(a3, 21, v66, v36);
      }

      else
      {
        *v36 = 426;
        v36[2] = v67;
        if (*(v66 + 23) < 0)
        {
          v66 = *v66;
        }

        v68 = v36 + 3;
        memcpy(v68, v66, v67);
        v36 = &v68[v67];
      }

      v65 += 8;
      --v64;
    }

    while (v64);
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v69 = *(a1 + 410);
    *v36 = 432;
    v36[2] = v69;
    v36 += 3;
  }

  v70 = *(a1 + 184);
  if (v70 >= 1)
  {
    v71 = 8;
    do
    {
      v72 = *(*(a1 + 192) + v71);
      v73 = *(v72 + 23);
      if (v73 < 0 && (v73 = v72[1], v73 > 127) || (*a3 - v36 + 13) < v73)
      {
        v36 = sub_1957480(a3, 23, v72, v36);
      }

      else
      {
        *v36 = 442;
        v36[2] = v73;
        if (*(v72 + 23) < 0)
        {
          v72 = *v72;
        }

        v74 = v36 + 3;
        memcpy(v74, v72, v73);
        v36 = &v74[v73];
      }

      v71 += 8;
      --v70;
    }

    while (v70);
  }

  v75 = *(a1 + 208);
  if (v75 >= 1)
  {
    v76 = 8;
    do
    {
      v77 = *(*(a1 + 216) + v76);
      v78 = *(v77 + 23);
      if (v78 < 0 && (v78 = v77[1], v78 > 127) || (*a3 - v36 + 13) < v78)
      {
        v36 = sub_1957480(a3, 24, v77, v36);
      }

      else
      {
        *v36 = 450;
        v36[2] = v78;
        if (*(v77 + 23) < 0)
        {
          v77 = *v77;
        }

        v79 = v36 + 3;
        memcpy(v79, v77, v78);
        v36 = &v79[v78];
      }

      v76 += 8;
      --v75;
    }

    while (v75);
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v80 = *(a1 + 384);
    *v36 = 458;
    v81 = *(v80 + 20);
    v36[2] = v81;
    if (v81 > 0x7F)
    {
      v82 = sub_19575D0(v81, v36 + 2);
    }

    else
    {
      v82 = v36 + 3;
    }

    v36 = sub_150D1F8(v80, v82, a3);
  }

  v83 = *(a1 + 232);
  if (v83 >= 1)
  {
    v84 = 8;
    do
    {
      v85 = *(*(a1 + 240) + v84);
      v86 = *(v85 + 23);
      if (v86 < 0 && (v86 = v85[1], v86 > 127) || (*a3 - v36 + 13) < v86)
      {
        v36 = sub_1957480(a3, 26, v85, v36);
      }

      else
      {
        *v36 = 466;
        v36[2] = v86;
        if (*(v85 + 23) < 0)
        {
          v85 = *v85;
        }

        v87 = v36 + 3;
        memcpy(v87, v85, v86);
        v36 = &v87[v86];
      }

      v84 += 8;
      --v83;
    }

    while (v83);
  }

  v88 = *(a1 + 256);
  if (v88 >= 1)
  {
    v89 = 8;
    do
    {
      v90 = *(*(a1 + 264) + v89);
      v91 = *(v90 + 23);
      if (v91 < 0 && (v91 = v90[1], v91 > 127) || (*a3 - v36 + 13) < v91)
      {
        v36 = sub_1957480(a3, 27, v90, v36);
      }

      else
      {
        *v36 = 474;
        v36[2] = v91;
        if (*(v90 + 23) < 0)
        {
          v90 = *v90;
        }

        v92 = v36 + 3;
        memcpy(v92, v90, v91);
        v36 = &v92[v91];
      }

      v89 += 8;
      --v88;
    }

    while (v88);
  }

  v93 = *(a1 + 280);
  if (v93)
  {
    for (jj = 0; jj != v93; ++jj)
    {
      if (*a3 <= v36)
      {
        v36 = sub_225EB68(a3, v36);
      }

      v95 = *(*(a1 + 288) + 8 * jj + 8);
      *v36 = 482;
      v96 = *(v95 + 20);
      v36[2] = v96;
      if (v96 > 0x7F)
      {
        v97 = sub_19575D0(v96, v36 + 2);
      }

      else
      {
        v97 = v36 + 3;
      }

      v36 = sub_1506870(v95, v97, a3);
    }
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v98 = *(a1 + 411);
    *v36 = 488;
    v36[2] = v98;
    v36 += 3;
    if ((v6 & 0x8000) == 0)
    {
LABEL_197:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_211;
      }

      goto LABEL_205;
    }
  }

  else if ((v6 & 0x8000) == 0)
  {
    goto LABEL_197;
  }

  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v99 = *(a1 + 412);
  *v36 = 496;
  v36[2] = v99;
  v36 += 3;
  if ((v6 & 0x200) != 0)
  {
LABEL_205:
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v100 = *(a1 + 392);
    *v36 = 506;
    v101 = *(v100 + 20);
    v36[2] = v101;
    if (v101 > 0x7F)
    {
      v102 = sub_19575D0(v101, v36 + 2);
    }

    else
    {
      v102 = v36 + 3;
    }

    v36 = sub_1506EA0(v100, v102, a3);
  }

LABEL_211:
  v103 = *(a1 + 304);
  if (v103)
  {
    for (kk = 0; kk != v103; ++kk)
    {
      if (*a3 <= v36)
      {
        v36 = sub_225EB68(a3, v36);
      }

      v105 = *(*(a1 + 312) + 8 * kk + 8);
      *v36 = 666;
      v106 = *(v105 + 20);
      v36[2] = v106;
      if (v106 > 0x7F)
      {
        v107 = sub_19575D0(v106, v36 + 2);
      }

      else
      {
        v107 = v36 + 3;
      }

      v36 = sub_15059B0(v105, v107, a3);
    }
  }

  v108 = *(a1 + 8);
  if ((v108 & 1) == 0)
  {
    return v36;
  }

  v110 = v108 & 0xFFFFFFFFFFFFFFFCLL;
  v111 = *(v110 + 31);
  if (v111 < 0)
  {
    v112 = *(v110 + 8);
    v111 = *(v110 + 16);
  }

  else
  {
    v112 = (v110 + 8);
  }

  if ((*a3 - v36) >= v111)
  {
    v113 = v111;
    memcpy(v36, v112, v111);
    v36 += v113;
    return v36;
  }

  return sub_1957130(a3, v112, v111, v36);
}

uint64_t sub_150A1FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 32);
  v7 = v2 + v6;
  v8 = *(a1 + 40);
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
      v12 = sub_1502EF0(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(a1 + 56);
  v14 = v7 + v13;
  v15 = *(a1 + 64);
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
      v19 = sub_15040C8(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 80);
  v21 = v14 + v20;
  v22 = *(a1 + 88);
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
      v26 = sub_1505338(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(a1 + 96);
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(*(a1 + 104) + 4 * v29);
      if (v30 < 0)
      {
        v31 = 10;
      }

      else
      {
        v31 = (9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6;
      }

      v28 += v31;
      ++v29;
    }

    while (v27 != v29);
  }

  else
  {
    v28 = 0;
  }

  v32 = *(a1 + 112);
  if (v32)
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(a1 + 120) + 4 * v34);
      if (v35 < 0)
      {
        v36 = 10;
      }

      else
      {
        v36 = (9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6;
      }

      v33 += v36;
      ++v34;
    }

    while (v32 != v34);
  }

  else
  {
    v33 = 0;
  }

  v37 = *(a1 + 136);
  v38 = v21 + v27 + v28 + v32 + v33 + 2 * v37;
  v39 = *(a1 + 144);
  if (v39)
  {
    v40 = (v39 + 8);
  }

  else
  {
    v40 = 0;
  }

  if (v37)
  {
    v41 = 8 * v37;
    do
    {
      v42 = *v40++;
      v43 = sub_150B138(v42);
      v38 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      v41 -= 8;
    }

    while (v41);
  }

  v44 = *(a1 + 160);
  v45 = v38 + 2 * v44;
  if (v44 >= 1)
  {
    v46 = (*(a1 + 168) + 8);
    do
    {
      v47 = *v46++;
      v48 = *(v47 + 23);
      v49 = *(v47 + 8);
      if ((v48 & 0x80u) == 0)
      {
        v49 = v48;
      }

      v45 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      --v44;
    }

    while (v44);
  }

  v50 = *(a1 + 184);
  v51 = v45 + 2 * v50;
  if (v50 >= 1)
  {
    v52 = (*(a1 + 192) + 8);
    do
    {
      v53 = *v52++;
      v54 = *(v53 + 23);
      v55 = *(v53 + 8);
      if ((v54 & 0x80u) == 0)
      {
        v55 = v54;
      }

      v51 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6);
      --v50;
    }

    while (v50);
  }

  v56 = *(a1 + 208);
  v57 = v51 + 2 * v56;
  if (v56 >= 1)
  {
    v58 = (*(a1 + 216) + 8);
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

  v62 = *(a1 + 232);
  v63 = v57 + 2 * v62;
  if (v62 >= 1)
  {
    v64 = (*(a1 + 240) + 8);
    do
    {
      v65 = *v64++;
      v66 = *(v65 + 23);
      v67 = *(v65 + 8);
      if ((v66 & 0x80u) == 0)
      {
        v67 = v66;
      }

      v63 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6);
      --v62;
    }

    while (v62);
  }

  v68 = *(a1 + 256);
  v69 = v63 + 2 * v68;
  if (v68 >= 1)
  {
    v70 = (*(a1 + 264) + 8);
    do
    {
      v71 = *v70++;
      v72 = *(v71 + 23);
      v73 = *(v71 + 8);
      if ((v72 & 0x80u) == 0)
      {
        v73 = v72;
      }

      v69 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6);
      --v68;
    }

    while (v68);
  }

  v74 = *(a1 + 280);
  v75 = v69 + 2 * v74;
  v76 = *(a1 + 288);
  if (v76)
  {
    v77 = (v76 + 8);
  }

  else
  {
    v77 = 0;
  }

  if (v74)
  {
    v78 = 8 * v74;
    do
    {
      v79 = *v77++;
      v80 = sub_15069FC(v79);
      v75 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6);
      v78 -= 8;
    }

    while (v78);
  }

  v81 = *(a1 + 304);
  v82 = v75 + 2 * v81;
  v83 = *(a1 + 312);
  if (v83)
  {
    v84 = (v83 + 8);
  }

  else
  {
    v84 = 0;
  }

  if (v81)
  {
    v85 = 8 * v81;
    do
    {
      v86 = *v84++;
      v87 = sub_1505AFC(v86);
      v82 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6);
      v85 -= 8;
    }

    while (v85);
  }

  v88 = *(a1 + 16);
  if ((v88 & 0xFE) == 0)
  {
    goto LABEL_92;
  }

  if ((v88 & 2) != 0)
  {
    v93 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
    v94 = *(v93 + 23);
    v95 = *(v93 + 8);
    if ((v94 & 0x80u) == 0)
    {
      v95 = v94;
    }

    v82 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v88 & 4) == 0)
    {
LABEL_86:
      if ((v88 & 8) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_112;
    }
  }

  else if ((v88 & 4) == 0)
  {
    goto LABEL_86;
  }

  v96 = sub_1507530(*(a1 + 336));
  v82 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 8) == 0)
  {
LABEL_87:
    if ((v88 & 0x10) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_113;
  }

LABEL_112:
  v97 = sub_1501AF8(*(a1 + 344));
  v82 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 0x10) == 0)
  {
LABEL_88:
    if ((v88 & 0x20) == 0)
    {
      goto LABEL_89;
    }

LABEL_114:
    v99 = sub_152619C(*(a1 + 360));
    v82 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v88 & 0x40) == 0)
    {
LABEL_90:
      if ((v88 & 0x80) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    goto LABEL_115;
  }

LABEL_113:
  v98 = sub_150BEAC(*(a1 + 352));
  v82 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 0x20) != 0)
  {
    goto LABEL_114;
  }

LABEL_89:
  if ((v88 & 0x40) == 0)
  {
    goto LABEL_90;
  }

LABEL_115:
  v100 = sub_150C598(*(a1 + 368));
  v82 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x80) != 0)
  {
LABEL_91:
    v89 = sub_150CC84(*(a1 + 376));
    v82 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_92:
  if ((v88 & 0xFF00) == 0)
  {
    goto LABEL_106;
  }

  if ((v88 & 0x100) == 0)
  {
    if ((v88 & 0x200) == 0)
    {
      goto LABEL_95;
    }

LABEL_118:
    v102 = *(a1 + 392);
    v103 = 2 * (*(v102 + 16) & 1);
    v104 = *(v102 + 8);
    if (v104)
    {
      v107 = v104 & 0xFFFFFFFFFFFFFFFCLL;
      v108 = *((v104 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v108 < 0)
      {
        v108 = *(v107 + 16);
      }

      v103 += v108;
    }

    *(v102 + 20) = v103;
    v82 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v88 & 0x400) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  v101 = sub_150D370(*(a1 + 384));
  v82 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x200) != 0)
  {
    goto LABEL_118;
  }

LABEL_95:
  if ((v88 & 0x400) != 0)
  {
LABEL_96:
    v82 += ((9 * (__clz(*(a1 + 400) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_97:
  v90 = v82 + ((v88 >> 10) & 2);
  if ((v88 & 0x1000) != 0)
  {
    v90 += 3;
  }

  if ((v88 & 0x2000) != 0)
  {
    v90 += 3;
  }

  if ((v88 & 0x4000) != 0)
  {
    v90 += 3;
  }

  if ((v88 & 0x8000) != 0)
  {
    v82 = v90 + 3;
  }

  else
  {
    v82 = v90;
  }

LABEL_106:
  v91 = *(a1 + 8);
  if (v91)
  {
    v105 = v91 & 0xFFFFFFFFFFFFFFFCLL;
    v106 = *((v91 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v106 < 0)
    {
      v106 = *(v105 + 16);
    }

    v82 += v106;
  }

  *(a1 + 20) = v82;
  return v82;
}

void sub_150A974(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_14D7154(a1);

    sub_14D7E4C(a1, a2);
  }
}

uint64_t sub_150A9C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v2 = v1--;
      v3 = *(*(a1 + 16) + 8 + 8 * v1);
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      while (v4 >= 1)
      {
        v6 = *(v5 + 8 * v4--);
        if ((*(v6 + 16) & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v2 >= 2);
  }

  return 1;
}

__n128 sub_150AA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v8;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  v11 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v11;
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v12;
  *(a2 + 104) = v13;
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  *(a2 + 120) = v15;
  v16 = *(a1 + 128);
  v17 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v16;
  *(a2 + 136) = v17;
  v18 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v18;
  v19 = *(a1 + 152);
  v20 = *(a1 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = v19;
  *(a2 + 160) = v20;
  v21 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v21;
  v22 = *(a1 + 176);
  v23 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v22;
  *(a2 + 184) = v23;
  v24 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = v24;
  v25 = *(a1 + 200);
  v26 = *(a1 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = v25;
  *(a2 + 208) = v26;
  v27 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v27;
  v28 = *(a1 + 224);
  v29 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v28;
  *(a2 + 232) = v29;
  v30 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v30;
  v31 = *(a1 + 248);
  v32 = *(a1 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = v31;
  *(a2 + 256) = v32;
  v33 = *(a1 + 264);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 264) = v33;
  v34 = *(a1 + 272);
  v35 = *(a1 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = v34;
  *(a2 + 280) = v35;
  v36 = *(a1 + 288);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = v36;
  v37 = *(a1 + 296);
  v38 = *(a1 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a2 + 296) = v37;
  *(a2 + 304) = v38;
  v39 = *(a1 + 312);
  *(a1 + 312) = *(a2 + 312);
  *(a2 + 312) = v39;
  v40 = *(a2 + 320);
  *(a2 + 320) = *(a1 + 320);
  *(a1 + 320) = v40;
  v41 = *(a2 + 328);
  *(a2 + 328) = *(a1 + 328);
  *(a1 + 328) = v41;
  v42 = *(a1 + 336);
  v43 = *(a1 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 336) = v42;
  *(a2 + 344) = v43;
  v44 = *(a1 + 352);
  v45 = *(a1 + 360);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = v44;
  *(a2 + 360) = v45;
  v46 = *(a1 + 368);
  v47 = *(a1 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 368) = v46;
  *(a2 + 376) = v47;
  v48 = *(a1 + 384);
  v49 = *(a1 + 392);
  result = *(a2 + 384);
  *(a1 + 384) = result;
  *(a2 + 384) = v48;
  *(a2 + 392) = v49;
  v51 = *(a1 + 400);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = v51;
  LODWORD(v51) = *(a1 + 408);
  *(a1 + 408) = *(a2 + 408);
  *(a2 + 408) = v51;
  LOBYTE(v51) = *(a1 + 412);
  *(a1 + 412) = *(a2 + 412);
  *(a2 + 412) = v51;
  return result;
}

uint64_t sub_150AC68(uint64_t a1)
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
  sub_1569D3C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150AD14(uint64_t a1)
{
  sub_150AC68(a1);

  operator delete();
}

uint64_t sub_150AD4C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_150B434(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_150ADFC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = v15 + 1;
          *v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_1529D9C(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = *v25;
          }

          v15 = sub_2218DA8(a3, v19, v16);
          *v25 = v15;
          if (!v15)
          {
            break;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        *v25 = 0;
        return *v25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = sub_194DB04((a1 + 48), v22);
      v14 = sub_1958890(v23, *v25, a3);
      goto LABEL_32;
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
        return *v25;
      }

      goto LABEL_38;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_32:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_150AFD4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
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

      v4 = sub_150B658(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_150B138(uint64_t a1)
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
      v7 = sub_150B758(v6);
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
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_150B228(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156BC34((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_150B31C(uint64_t a1)
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

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t sub_150B35C(uint64_t a1)
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

void sub_150B3FC(uint64_t a1)
{
  sub_150B35C(a1);

  operator delete();
}

uint64_t sub_150B434(uint64_t a1)
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

uint64_t sub_150B47C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      *v24 = v17;
      *(a1 + 32) = v16 != 0;
      goto LABEL_28;
    }

    v22 = sub_19587DC(v7, v16);
    *v24 = v22;
    *(a1 + 32) = v23 != 0;
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

char *sub_150B658(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
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

uint64_t sub_150B758(uint64_t a1)
{
  v1 = *(a1 + 16);
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
  }

  else
  {
    v2 = 0;
  }

  v6 = v2 + (v1 & 2);
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

void sub_150B7DC(uint64_t a1, uint64_t a2)
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
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 16) |= v4;
  }

  v8 = *(a2 + 8);
  if (v8)
  {

    sub_1957EF4((a1 + 8), (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_150B8B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EAD40;
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
    sub_1201B48((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}

void sub_150B9D0(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_150BA10(uint64_t a1)
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
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150BAB8(uint64_t a1)
{
  sub_150BA10(a1);

  operator delete();
}

uint64_t sub_150BAF0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  if (sub_195ADC0(a3, v26, a3[11].u32[1]))
  {
    return *v26;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 48), v24);
    v14 = sub_1958890(v25, *v26, a3);
LABEL_34:
    *v26 = v14;
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_35:
    if (sub_195ADC0(a3, v26, a3[11].u32[1]))
    {
      return *v26;
    }
  }

  if (v7 == 18)
  {
    v15 = v6 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      *v26 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        *v22 = v21;
        v22[1] = sub_195A650;
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
        v19 = sub_19593CC(a1 + 24, v21);
        v16 = *v26;
      }

      v15 = sub_1958890(v19, v16, a3);
      *v26 = v15;
      if (!v15)
      {
        goto LABEL_40;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_12:
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
      v6 = *v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_34;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v26;
  }

LABEL_40:
  *v26 = 0;
  return *v26;
}

char *sub_150BD34(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - v4 + 14) < v9)
      {
        v4 = sub_1957480(a3, 2, v8, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = v4 + 2;
        memcpy(v10, v8, v9);
        v4 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_150BEAC(uint64_t a1)
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

  if (*(a1 + 16))
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_150BF9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EADC0;
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
    sub_1201B48((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}

void sub_150C0BC(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_150C0FC(uint64_t a1)
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
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150C1A4(uint64_t a1)
{
  sub_150C0FC(a1);

  operator delete();
}

uint64_t sub_150C1DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  if (sub_195ADC0(a3, v26, a3[11].u32[1]))
  {
    return *v26;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 48), v24);
    v14 = sub_1958890(v25, *v26, a3);
LABEL_34:
    *v26 = v14;
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_35:
    if (sub_195ADC0(a3, v26, a3[11].u32[1]))
    {
      return *v26;
    }
  }

  if (v7 == 18)
  {
    v15 = v6 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      *v26 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        *v22 = v21;
        v22[1] = sub_195A650;
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
        v19 = sub_19593CC(a1 + 24, v21);
        v16 = *v26;
      }

      v15 = sub_1958890(v19, v16, a3);
      *v26 = v15;
      if (!v15)
      {
        goto LABEL_40;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_12:
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
      v6 = *v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_34;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v26;
  }

LABEL_40:
  *v26 = 0;
  return *v26;
}

char *sub_150C420(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - v4 + 14) < v9)
      {
        v4 = sub_1957480(a3, 2, v8, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = v4 + 2;
        memcpy(v10, v8, v9);
        v4 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_150C598(uint64_t a1)
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

  if (*(a1 + 16))
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_150C688(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EAE40;
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
    sub_1201B48((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}

void sub_150C7A8(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_150C7E8(uint64_t a1)
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
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150C890(uint64_t a1)
{
  sub_150C7E8(a1);

  operator delete();
}

uint64_t sub_150C8C8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  if (sub_195ADC0(a3, v26, a3[11].u32[1]))
  {
    return *v26;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 48), v24);
    v14 = sub_1958890(v25, *v26, a3);
LABEL_34:
    *v26 = v14;
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_35:
    if (sub_195ADC0(a3, v26, a3[11].u32[1]))
    {
      return *v26;
    }
  }

  if (v7 == 18)
  {
    v15 = v6 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      *v26 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        *v22 = v21;
        v22[1] = sub_195A650;
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
        v19 = sub_19593CC(a1 + 24, v21);
        v16 = *v26;
      }

      v15 = sub_1958890(v19, v16, a3);
      *v26 = v15;
      if (!v15)
      {
        goto LABEL_40;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_12:
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
      v6 = *v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_34;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v26;
  }

LABEL_40:
  *v26 = 0;
  return *v26;
}

char *sub_150CB0C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - v4 + 14) < v9)
      {
        v4 = sub_1957480(a3, 2, v8, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = v4 + 2;
        memcpy(v10, v8, v9);
        v4 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_150CC84(uint64_t a1)
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

  if (*(a1 + 16))
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_150CD74(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EAEC0;
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
    sub_1201B48((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}