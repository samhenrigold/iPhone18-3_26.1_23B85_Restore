char *sub_16657AC(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1665314(v8, v10, a3);
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

uint64_t sub_16658EC(uint64_t a1)
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
      v7 = sub_16653FC(v6);
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

void sub_1665994(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_166F81C((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
    v7 = *(result + 24) + v4;
    *(result + 24) = v7;
    v8 = *(result + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1665A68(uint64_t a1)
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

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (a1 != &off_277C098)
  {
    v6 = *(a1 + 112);
    if (v6)
    {
      sub_191742C(v6);
      operator delete();
    }

    v7 = *(a1 + 120);
    if (v7)
    {
      sub_17E90EC(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_13B31E8((a1 + 72));
  sub_13B31E8((a1 + 48));
  sub_166F360((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1665B94(uint64_t a1)
{
  sub_1665A68(a1);

  operator delete();
}

uint64_t sub_1665BCC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17D64C0(v4);
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
      result = sub_16E72AC(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 0xF) == 0)
  {
    goto LABEL_19;
  }

  if (v11)
  {
    v14 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_16:
    if ((v11 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v15 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_31;
    }

LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *v15 = 0;
  *(v15 + 23) = 0;
  if ((v11 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  result = sub_17A82BC(*(v1 + 112));
  if ((v11 & 8) != 0)
  {
LABEL_18:
    result = sub_17E9128(*(v1 + 120));
  }

LABEL_19:
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 120) = 0;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_1665D34(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v56, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v56 + 1);
    v8 = **v56;
    if (**v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v56 + 2);
      }
    }

    *v56 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 != 5)
      {
        if (v11 == 6 && v8 == 50)
        {
          *(a1 + 16) |= 2u;
          v25 = *(a1 + 8);
          v23 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v23 = *v23;
          }

          v24 = (a1 + 104);
          goto LABEL_45;
        }

        goto LABEL_83;
      }

      if (v8 != 40)
      {
        goto LABEL_83;
      }

      v5 |= 0x10u;
      v44 = v7 + 1;
      v43 = *v7;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_76;
      }

      v45 = *v44;
      v43 = (v45 << 7) + v43 - 128;
      if ((v45 & 0x80000000) == 0)
      {
        v44 = v7 + 2;
LABEL_76:
        *v56 = v44;
        *(a1 + 128) = v43 != 0;
        goto LABEL_91;
      }

      v52 = sub_19587DC(v7, v43);
      *v56 = v52;
      *(a1 + 128) = v53 != 0;
      if (!v52)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v11 == 7)
      {
        if (v8 == 58)
        {
          v37 = v7 - 1;
          while (1)
          {
            v38 = v37 + 1;
            *v56 = v37 + 1;
            v39 = *(a1 + 88);
            if (v39 && (v40 = *(a1 + 80), v40 < *v39))
            {
              *(a1 + 80) = v40 + 1;
              v41 = *&v39[2 * v40 + 2];
            }

            else
            {
              v42 = sub_16F5A54(*(a1 + 72));
              v41 = sub_19593CC(a1 + 72, v42);
              v38 = *v56;
            }

            v37 = sub_22002C0(a3, v41, v38);
            *v56 = v37;
            if (!v37)
            {
              goto LABEL_100;
            }

            if (*a3 <= v37 || *v37 != 58)
            {
              goto LABEL_91;
            }
          }
        }

        goto LABEL_83;
      }

      if (v11 == 8)
      {
        if (v8 != 66)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 8u;
        v46 = *(a1 + 120);
        if (!v46)
        {
          v47 = *(a1 + 8);
          v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
          if (v47)
          {
            v48 = *v48;
          }

          v46 = sub_1861C30(v48);
          *(a1 + 120) = v46;
          v7 = *v56;
        }

        v27 = sub_222F3C0(a3, v46, v7);
LABEL_90:
        *v56 = v27;
        if (!v27)
        {
          goto LABEL_100;
        }

        goto LABEL_91;
      }

      if (v11 != 9 || v8 != 72)
      {
        goto LABEL_83;
      }

      v5 |= 0x20u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_16:
        *v56 = v13;
        *(a1 + 129) = v12 != 0;
        goto LABEL_91;
      }

      v54 = sub_19587DC(v7, v12);
      *v56 = v54;
      *(a1 + 129) = v55 != 0;
      if (!v54)
      {
        goto LABEL_100;
      }
    }

LABEL_91:
    if (sub_195ADC0(a3, v56, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 != 3)
    {
      if (v11 != 4 || v8 != 34)
      {
        goto LABEL_83;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = (a1 + 96);
LABEL_45:
      v26 = sub_194DB04(v24, v23);
      v27 = sub_1958890(v26, *v56, a3);
      goto LABEL_90;
    }

    if (v8 == 26)
    {
      v31 = v7 - 1;
      while (1)
      {
        v32 = v31 + 1;
        *v56 = v31 + 1;
        v33 = *(a1 + 64);
        if (v33 && (v34 = *(a1 + 56), v34 < *v33))
        {
          *(a1 + 56) = v34 + 1;
          v35 = *&v33[2 * v34 + 2];
        }

        else
        {
          v36 = sub_16F5A54(*(a1 + 48));
          v35 = sub_19593CC(a1 + 48, v36);
          v32 = *v56;
        }

        v31 = sub_22002C0(a3, v35, v32);
        *v56 = v31;
        if (!v31)
        {
          goto LABEL_100;
        }

        if (*a3 <= v31 || *v31 != 26)
        {
          goto LABEL_91;
        }
      }
    }
  }

  else
  {
    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_83;
      }

      *(a1 + 16) |= 4u;
      v28 = *(a1 + 112);
      if (!v28)
      {
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v28 = sub_191BA60(v30);
        *(a1 + 112) = v28;
        v7 = *v56;
      }

      v27 = sub_2201310(a3, v28, v7);
      goto LABEL_90;
    }

    if (v11 == 2 && v8 == 18)
    {
      v16 = v7 - 1;
      while (1)
      {
        v17 = v16 + 1;
        *v56 = v16 + 1;
        v18 = *(a1 + 40);
        if (v18 && (v19 = *(a1 + 32), v19 < *v18))
        {
          *(a1 + 32) = v19 + 1;
          v20 = *&v18[2 * v19 + 2];
        }

        else
        {
          v21 = sub_1860AC8(*(a1 + 24));
          v20 = sub_19593CC(a1 + 24, v21);
          v17 = *v56;
        }

        v16 = sub_222F330(a3, v20, v17);
        *v56 = v16;
        if (!v16)
        {
          goto LABEL_100;
        }

        if (*a3 <= v16 || *v16 != 18)
        {
          goto LABEL_91;
        }
      }
    }
  }

LABEL_83:
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
    v50 = *(a1 + 8);
    if (v50)
    {
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v51 = sub_11F1920((a1 + 8));
      v7 = *v56;
    }

    v27 = sub_1952690(v8, v51, v7, a3);
    goto LABEL_90;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_100:
  *v56 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v56;
}

char *sub_1666244(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 112);
    *v4 = 10;
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1917694(v7, v9, a3);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v13 = *(v12 + 44);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_17D6DA4(v12, v14, a3);
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v17 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 26;
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

      v4 = sub_16E74A8(v17, v19, a3);
    }
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 4, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x10) == 0)
    {
LABEL_26:
      if ((v6 & 2) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_26;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v28 = *(a1 + 128);
  *v4 = 40;
  v4[1] = v28;
  v4 += 2;
  if ((v6 & 2) != 0)
  {
LABEL_27:
    v4 = sub_128AEEC(a3, 6, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_28:
  v20 = *(a1 + 80);
  if (v20)
  {
    for (k = 0; k != v20; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v22 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 58;
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

      v4 = sub_16E74A8(v22, v24, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v25 = *(a1 + 120);
    *v4 = 66;
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

    v4 = sub_17E9624(v25, v27, a3);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v29 = *(a1 + 129);
    *v4 = 72;
    v4[1] = v29;
    v4 += 2;
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v33)
  {
    v35 = v33;
    memcpy(v4, v34, v33);
    v4 += v35;
    return v4;
  }

  return sub_1957130(a3, v34, v33, v4);
}

uint64_t sub_1666614(uint64_t a1)
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
      v7 = sub_17D71E8(v6);
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
      v21 = sub_16E7590(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x3F) != 0)
  {
    if (v22)
    {
      v26 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v27 = *(v26 + 23);
      v28 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v28 = v27;
      }

      v16 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 2) == 0)
      {
LABEL_24:
        if ((v22 & 4) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_24;
    }

    v29 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v29 + 23);
    v31 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v30;
    }

    v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 4) == 0)
    {
LABEL_25:
      if ((v22 & 8) == 0)
      {
LABEL_27:
        v16 += ((v22 >> 4) & 2) + ((v22 >> 3) & 2);
        goto LABEL_28;
      }

LABEL_26:
      v23 = sub_17E989C(*(a1 + 120));
      v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_27;
    }

LABEL_36:
    v32 = sub_1917844(*(a1 + 112));
    v16 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_28:
  v24 = *(a1 + 8);
  if (v24)
  {
    v33 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    v16 += v34;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_1666878(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_166F898((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_13B326C((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x3F) != 0)
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

        goto LABEL_29;
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

      goto LABEL_37;
    }

LABEL_29:
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

      v27 = sub_191BA60(v29);
      *(a1 + 112) = v27;
    }

    if (*(a2 + 112))
    {
      v30 = *(a2 + 112);
    }

    else
    {
      v30 = &off_278B870;
    }

    sub_17A8DBC(v27, v30);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(a1 + 16) |= 8u;
    v31 = *(a1 + 120);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_1861C30(v33);
      *(a1 + 120) = v31;
    }

    if (*(a2 + 120))
    {
      v34 = *(a2 + 120);
    }

    else
    {
      v34 = &off_2784940;
    }

    sub_17E9AD0(v31, v34);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
LABEL_18:
        *(a1 + 16) |= v19;
        goto LABEL_19;
      }

LABEL_17:
      *(a1 + 129) = *(a2 + 129);
      goto LABEL_18;
    }

LABEL_45:
    *(a1 + 128) = *(a2 + 128);
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1666B34(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17D78EC(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    result = sub_17A8EF8(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) == 0)
  {
    return 1;
  }

  result = sub_17E9C8C(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1666BBC(uint64_t a1)
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
  if (a1 != &off_277C120)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16674A0(v6);
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

void sub_1666C74(uint64_t a1)
{
  sub_1666BBC(a1);

  operator delete();
}

uint64_t sub_1666CAC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1666D18(*(result + 24));
  }

  if ((v2 & 6) != 0)
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

uint64_t sub_1666D18(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  result = sub_12A41D0(a1 + 48);
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1666D84(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v18 = v7 + 1;
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = v7 + 2;
LABEL_24:
        v31 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_37;
      }

      v27 = sub_19587DC(v7, v17);
      v31 = v27;
      *(a1 + 40) = v28 != 0;
      if (!v27)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v25 = v7 + 1;
      v24 = *v7;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_36:
        v31 = v25;
        *(a1 + 32) = v24;
        goto LABEL_37;
      }

      v29 = sub_19587DC(v7, v24);
      v31 = v29;
      *(a1 + 32) = v30;
      if (!v29)
      {
        goto LABEL_46;
      }
    }

LABEL_37:
    if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 24);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_166B874(v22);
      v20 = v23;
      *(a1 + 24) = v23;
      v7 = v31;
    }

    v16 = sub_222F450(a3, v20, v7);
LABEL_31:
    v31 = v16;
    if (!v16)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
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

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_31;
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

char *sub_1666FD0(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 40);
    *v6 = 16;
    v6[1] = v11;
    v6 += 2;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 24);
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

    v6 = sub_1667900(v12, v14, a3);
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v18)
  {
    v20 = v18;
    memcpy(v6, v19, v18);
    v6 += v20;
    return v6;
  }

  return sub_1957130(a3, v19, v18, v6);
}

unint64_t sub_1667194(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = sub_1667BF8(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  result = v3 + ((v2 >> 1) & 2);
LABEL_9:
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    result += v8;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_1667258(std::string *result, uint64_t a2)
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

        sub_166B874(v8);
        *(v3 + 24) = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277C150;
      }

      result = sub_1667340(data, v9);
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

std::string *sub_1667340(std::string *result, uint64_t a2)
{
  p_data = &result->__r_.__value_.__l.__data_;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1201B48(p_data + 3, v6, (v5 + 8), v4, *p_data[5] - *(p_data + 8));
    v7 = *(p_data + 8) + v4;
    *(p_data + 8) = v7;
    v8 = p_data[5];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8((p_data + 6), *(a2 + 56));
    result = sub_1201B48(p_data + 6, v11, (v10 + 8), v9, *p_data[8] - *(p_data + 14));
    v12 = *(p_data + 14) + v9;
    *(p_data + 14) = v12;
    v13 = p_data[8];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      p_data[9] = *(a2 + 72);
    }

    if ((v14 & 2) != 0)
    {
      p_data[10] = *(a2 + 80);
    }

    *(p_data + 4) |= v14;
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(p_data + 1, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16674A0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1667524(void *a1)
{
  sub_16674A0(a1);

  operator delete();
}

uint64_t sub_166755C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v42, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v42 + 1);
    v8 = **v42;
    if (**v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v42 + 2);
      }
    }

    *v42 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_49;
      }

      v5 |= 1u;
      v25 = v7 + 1;
      v24 = *v7;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_36:
        *v42 = v25;
        *(a1 + 72) = v24;
        goto LABEL_56;
      }

      v40 = sub_19587DC(v7, v24);
      *v42 = v40;
      *(a1 + 72) = v41;
      if (!v40)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_49;
      }

      v5 |= 2u;
      v14 = v7 + 1;
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_17:
        *v42 = v14;
        *(a1 + 80) = v13;
        goto LABEL_56;
      }

      v38 = sub_19587DC(v7, v13);
      *v42 = v38;
      *(a1 + 80) = v39;
      if (!v38)
      {
        goto LABEL_65;
      }
    }

LABEL_56:
    if (sub_195ADC0(a3, v42, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 == 26)
    {
      v27 = v7 - 1;
      while (1)
      {
        v28 = (v27 + 1);
        *v42 = v27 + 1;
        v29 = *(a1 + 40);
        if (v29 && (v30 = *(a1 + 32), v30 < *v29))
        {
          *(a1 + 32) = v30 + 1;
          v31 = *&v29[2 * v30 + 2];
        }

        else
        {
          v32 = *(a1 + 24);
          if (!v32)
          {
            operator new();
          }

          *v34 = v33;
          v34[1] = sub_195A650;
          *v33 = 0;
          v33[1] = 0;
          v33[2] = 0;
          v31 = sub_19593CC(a1 + 24, v33);
          v28 = *v42;
        }

        v27 = sub_1958890(v31, v28, a3);
        *v42 = v27;
        if (!v27)
        {
          goto LABEL_65;
        }

        if (*a3 <= v27 || *v27 != 26)
        {
          goto LABEL_56;
        }
      }
    }
  }

  else if (v11 == 4 && v8 == 34)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      *v42 = v16 + 1;
      v18 = *(a1 + 64);
      if (v18 && (v19 = *(a1 + 56), v19 < *v18))
      {
        *(a1 + 56) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = *(a1 + 48);
        if (!v21)
        {
          operator new();
        }

        *v23 = v22;
        v23[1] = sub_195A650;
        *v22 = 0;
        v22[1] = 0;
        v22[2] = 0;
        v20 = sub_19593CC(a1 + 48, v22);
        v17 = *v42;
      }

      v16 = sub_1958890(v20, v17, a3);
      *v42 = v16;
      if (!v16)
      {
        goto LABEL_65;
      }

      if (*a3 <= v16 || *v16 != 34)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_49:
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
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = *v42;
    }

    *v42 = sub_1952690(v8, v37, v7, a3);
    if (!*v42)
    {
      goto LABEL_65;
    }

    goto LABEL_56;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_65:
  *v42 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v42;
}

char *sub_1667900(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 72);
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

    v12 = *(a1 + 80);
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

  v15 = *(a1 + 32);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      v17 = *(*(a1 + 40) + v16);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = v17[1], v18 > 127) || (*a3 - v11 + 14) < v18)
      {
        v11 = sub_1957480(a3, 3, v17, v11);
      }

      else
      {
        *v11 = 26;
        v11[1] = v18;
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = v11 + 2;
        memcpy(v19, v17, v18);
        v11 = &v19[v18];
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

  v20 = *(a1 + 56);
  if (v20 >= 1)
  {
    v21 = 8;
    do
    {
      v22 = *(*(a1 + 64) + v21);
      v23 = *(v22 + 23);
      if (v23 < 0 && (v23 = v22[1], v23 > 127) || (*a3 - v11 + 14) < v23)
      {
        v11 = sub_1957480(a3, 4, v22, v11);
      }

      else
      {
        *v11 = 34;
        v11[1] = v23;
        if (*(v22 + 23) < 0)
        {
          v22 = *v22;
        }

        v24 = v11 + 2;
        memcpy(v24, v22, v23);
        v11 = &v24[v23];
      }

      v21 += 8;
      --v20;
    }

    while (v20);
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v28)
  {
    v30 = v28;
    memcpy(v11, v29, v28);
    v11 += v30;
    return v11;
  }

  return sub_1957130(a3, v29, v28, v11);
}

uint64_t sub_1667BF8(uint64_t a1)
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

  v7 = *(a1 + 56);
  v8 = v3 + v7;
  if (v7 >= 1)
  {
    v9 = (*(a1 + 64) + 8);
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
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v8 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v13 & 2) != 0)
    {
      v8 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

    v8 += v17;
  }

  *(a1 + 20) = v8;
  return v8;
}

uint64_t sub_1667D4C(uint64_t a1)
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

  if (a1 != &off_277C1A8)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_191742C(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_191742C(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_16674A0(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1667E48(uint64_t a1)
{
  sub_1667D4C(a1);

  operator delete();
}

uint64_t sub_1667E80(uint64_t result)
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
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      result = sub_17A82BC(*(v1 + 48));
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = sub_17A82BC(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      result = sub_1666D18(*(v1 + 64));
    }
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_1667F40(uint64_t a1, char *a2, int32x2_t *a3)
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
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 == 25)
      {
        v5 |= 8u;
        *(a1 + 72) = *v7;
        v32 = v7 + 8;
        goto LABEL_54;
      }

      goto LABEL_46;
    }

    if (v11 == 4)
    {
      if (v8 == 34)
      {
        v21 = v7 - 1;
        while (1)
        {
          v22 = v21 + 1;
          v32 = v21 + 1;
          v23 = *(a1 + 40);
          if (v23 && (v24 = *(a1 + 32), v24 < *v23))
          {
            *(a1 + 32) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = sub_16F5A54(*(a1 + 24));
            v25 = sub_19593CC(a1 + 24, v26);
            v22 = v32;
          }

          v21 = sub_22002C0(a3, v25, v22);
          v32 = v21;
          if (!v21)
          {
            goto LABEL_59;
          }

          if (*a3 <= v21 || *v21 != 34)
          {
            goto LABEL_54;
          }
        }
      }

      goto LABEL_46;
    }

    if (v11 != 5 || v8 != 42)
    {
      goto LABEL_46;
    }

    *(a1 + 16) |= 4u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_166B874(v14);
      v12 = v15;
      *(a1 + 64) = v15;
      v7 = v32;
    }

    v16 = sub_222F450(a3, v12, v7);
LABEL_53:
    v32 = v16;
    if (!v16)
    {
      goto LABEL_59;
    }

LABEL_54:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 48);
      if (!v18)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v18 = sub_191BA60(v28);
        *(a1 + 48) = v18;
LABEL_44:
        v7 = v32;
      }

LABEL_45:
      v16 = sub_2201310(a3, v18, v7);
      goto LABEL_53;
    }
  }

  else if (v11 == 2 && v8 == 18)
  {
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

      v18 = sub_191BA60(v20);
      *(a1 + 56) = v18;
      goto LABEL_44;
    }

    goto LABEL_45;
  }

LABEL_46:
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

    v16 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_53;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_59:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_166821C(uint64_t a1, char *__dst, unint64_t *a3)
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
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1917694(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
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

  v4 = sub_1917694(v10, v12, a3);
  if ((v6 & 8) != 0)
  {
LABEL_17:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 72);
    *v4 = 25;
    *(v4 + 1) = v13;
    v4 += 9;
  }

LABEL_20:
  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_16E74A8(v16, v18, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v19 = *(a1 + 64);
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

    v4 = sub_1667900(v19, v21, a3);
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

uint64_t sub_16684D0(uint64_t a1)
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

  v8 = *(a1 + 16);
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_16;
  }

  if (v8)
  {
    v12 = sub_1917844(*(a1 + 48));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v13 = sub_1917844(*(a1 + 56));
  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
LABEL_13:
    v9 = sub_1667BF8(*(a1 + 64));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  if ((v8 & 8) != 0)
  {
    v2 += 9;
  }

LABEL_16:
  v10 = *(a1 + 8);
  if (v10)
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_166862C(uint64_t a1, uint64_t a2)
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
  if ((v9 & 0xF) != 0)
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

        v11 = sub_191BA60(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_278B870;
      }

      sub_17A8DBC(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_31;
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

      v15 = sub_191BA60(v17);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_278B870;
    }

    sub_17A8DBC(v15, v18);
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
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_31:
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

      sub_166B874(v21);
      *(a1 + 64) = v19;
    }

    if (*(a2 + 64))
    {
      v22 = *(a2 + 64);
    }

    else
    {
      v22 = &off_277C150;
    }

    sub_1667340(v19, v22);
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

uint64_t sub_16687F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_17A8EF8(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_17A8EF8(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1668854(uint64_t a1)
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
  if (a1 != &off_277C1F8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_191742C(v6);
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

void sub_166890C(uint64_t a1)
{
  sub_1668854(a1);

  operator delete();
}

unsigned __int8 *sub_1668944(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_17A82BC(*(result + 3));
  }

  if ((v2 & 6) != 0)
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

char *sub_16689B0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v30 + 1;
    v8 = *v30;
    if (*v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v30 + 2;
      }
    }

    v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v17 = v7 + 1;
      v18 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v19 = *v17;
      v18 = v18 + (v19 << 7) - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_24:
        v30 = v17;
        *(a1 + 40) = v18;
        goto LABEL_37;
      }

      v26 = sub_1958770(v7, v18);
      v30 = v26;
      *(a1 + 40) = v27;
      if (!v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v24 = v7 + 1;
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_36:
        v30 = v24;
        *(a1 + 32) = v23;
        goto LABEL_37;
      }

      v28 = sub_19587DC(v7, v23);
      v30 = v28;
      *(a1 + 32) = v29;
      if (!v28)
      {
        goto LABEL_46;
      }
    }

LABEL_37:
    if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 24);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_191BA60(v22);
      *(a1 + 24) = v20;
      v7 = v30;
    }

    v16 = sub_2201310(a3, v20, v7);
LABEL_31:
    v30 = v16;
    if (!v16)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
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
      v7 = v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_1668BEC(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 40);
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

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 24);
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

    v11 = sub_1917694(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v21)
  {
    v23 = v21;
    memcpy(v11, v22, v21);
    v11 += v23;
    return v11;
  }

  return sub_1957130(a3, v22, v21, v11);
}

uint64_t sub_1668E00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_1917844(*(a1 + 24));
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
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

void sub_1668EE0(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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

        v6 = sub_191BA60(v8);
        *(result + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_278B870;
      }

      sub_17A8DBC(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(result + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(result + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(result + 32) = *(a2 + 32);
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

    sub_1957EF4((result + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1668FC8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_17A8EF8(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1669008(uint64_t a1)
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
  sub_1569370((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16690B4(uint64_t a1)
{
  sub_1669008(a1);

  operator delete();
}

uint64_t sub_16690EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14F5244(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_16691A8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v36, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v36 + 1);
    v8 = **v36;
    if (**v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v36 + 2);
      }
    }

    *v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = sub_194DB04((a1 + 48), v23);
      v25 = sub_1958890(v24, *v36, a3);
LABEL_46:
      *v36 = v25;
      if (!v25)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_39;
    }

    v5 |= 2u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      *v36 = v14;
      *(a1 + 56) = v13;
      goto LABEL_47;
    }

    v32 = sub_19587DC(v7, v13);
    *v36 = v32;
    *(a1 + 56) = v33;
    if (!v32)
    {
      goto LABEL_56;
    }

LABEL_47:
    if (sub_195ADC0(a3, v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_39;
    }

    v5 |= 4u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_38:
      *v36 = v27;
      *(a1 + 64) = v26;
      goto LABEL_47;
    }

    v34 = sub_19587DC(v7, v26);
    *v36 = v34;
    *(a1 + 64) = v35;
    if (!v34)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v11 == 4 && v8 == 34)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = v16 + 1;
      *v36 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_1528AA8(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = *v36;
      }

      v16 = sub_2217968(a3, v20, v17);
      *v36 = v16;
      if (!v16)
      {
        goto LABEL_56;
      }

      if (*a3 <= v16 || *v16 != 34)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_39:
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
      v7 = *v36;
    }

    v25 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_56:
  *v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v36;
}

char *sub_1669474(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 56);
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

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 64);
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

  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v12 = 34;
      v20 = *(v19 + 20);
      v12[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v12 + 1);
      }

      else
      {
        v21 = v12 + 2;
      }

      v12 = sub_14F5930(v19, v21, a3);
    }
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v25)
  {
    v27 = v25;
    memcpy(v12, v26, v25);
    v12 += v27;
    return v12;
  }

  return sub_1957130(a3, v26, v25, v12);
}

uint64_t sub_16696E0(uint64_t a1)
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
      v7 = sub_14F5DE8(v6);
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v11 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v14 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_166982C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156B210((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_1669970(uint64_t a1)
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_1569790((a1 + 48));
  sub_166F3E4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1669A54(uint64_t a1)
{
  sub_1669970(a1);

  operator delete();
}

uint64_t sub_1669A8C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16690EC(v4);
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
      result = sub_15003EC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 7) != 0)
  {
    if ((v8 & 1) == 0)
    {
      if ((v8 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_18:
      v10 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v8 & 4) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v8 & 4) == 0)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_22;
    }

    v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_22:
    v11 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
    }
  }

LABEL_25:
  if ((v8 & 0x18) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 96) = 0;
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

uint64_t sub_1669BE8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v40 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v40, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v40 + 1);
    v8 = **v40;
    if (**v40 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v40, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v40 + 2);
      }
    }

    *v40 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_59;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v24 = (a1 + 72);
      }

      else
      {
        if (v11 != 2)
        {
          if (v11 == 3 && v8 == 26)
          {
            v16 = v7 - 1;
            while (1)
            {
              v17 = v16 + 1;
              *v40 = v16 + 1;
              v18 = *(a1 + 40);
              if (v18 && (v19 = *(a1 + 32), v19 < *v18))
              {
                *(a1 + 32) = v19 + 1;
                v20 = *&v18[2 * v19 + 2];
              }

              else
              {
                v21 = sub_166BA44(*(a1 + 24));
                v20 = sub_19593CC(a1 + 24, v21);
                v17 = *v40;
              }

              v16 = sub_222F4E0(a3, v20, v17);
              *v40 = v16;
              if (!v16)
              {
                goto LABEL_74;
              }

              if (*a3 <= v16 || *v16 != 26)
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

        *(a1 + 16) |= 2u;
        v32 = *(a1 + 8);
        v23 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v23 = *v23;
        }

        v24 = (a1 + 80);
      }

      goto LABEL_58;
    }

    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 == 34)
      {
        v25 = v7 - 1;
        while (1)
        {
          v26 = v25 + 1;
          *v40 = v25 + 1;
          v27 = *(a1 + 64);
          if (v27 && (v28 = *(a1 + 56), v28 < *v27))
          {
            *(a1 + 56) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            v30 = sub_1529564(*(a1 + 48));
            v29 = sub_19593CC(a1 + 48, v30);
            v26 = *v40;
          }

          v25 = sub_2218268(a3, v29, v26);
          *v40 = v25;
          if (!v25)
          {
            goto LABEL_74;
          }

          if (*a3 <= v25 || *v25 != 34)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_59;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_59;
    }

    v5 |= 8u;
    v13 = v7 + 1;
    v12 = *v7;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    v14 = *v13;
    v12 = (v14 << 7) + v12 - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_15:
      *v40 = v13;
      *(a1 + 96) = v12;
      goto LABEL_67;
    }

    v38 = sub_19587DC(v7, v12);
    *v40 = v38;
    *(a1 + 96) = v39;
    if (!v38)
    {
      goto LABEL_74;
    }

LABEL_67:
    if (sub_195ADC0(a3, v40, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6)
  {
    if (v8 != 50)
    {
      goto LABEL_59;
    }

    *(a1 + 16) |= 4u;
    v31 = *(a1 + 8);
    v23 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v23 = *v23;
    }

    v24 = (a1 + 88);
LABEL_58:
    v33 = sub_194DB04(v24, v23);
    v34 = sub_1958890(v33, *v40, a3);
    goto LABEL_66;
  }

  if (v11 == 7 && v8 == 61)
  {
    v5 |= 0x10u;
    *(a1 + 104) = *v7;
    *v40 = v7 + 4;
    goto LABEL_67;
  }

LABEL_59:
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
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = *v40;
    }

    v34 = sub_1952690(v8, v37, v7, a3);
LABEL_66:
    *v40 = v34;
    if (!v34)
    {
      goto LABEL_74;
    }

    goto LABEL_67;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_74:
  *v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v40;
}

char *sub_1669F8C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
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

      v4 = sub_1669474(v9, v11, a3);
    }
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 34;
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

      v4 = sub_15009E4(v14, v16, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 96);
    *v4 = 40;
    v4[1] = v18;
    if (v18 > 0x7F)
    {
      v4[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v4[2] = v18 >> 7;
      v17 = v4 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v4[2];
        do
        {
          *(v17 - 1) = v20 | 0x80;
          v20 = v19 >> 7;
          *v17++ = v19 >> 7;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v17 = v4 + 2;
    }
  }

  else
  {
    v17 = v4;
  }

  if ((v6 & 4) != 0)
  {
    v17 = sub_128AEEC(a3, 6, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v17);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 104);
    *v17 = 61;
    *(v17 + 1) = v22;
    v17 += 5;
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v17;
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

  if ((*a3 - v17) >= v26)
  {
    v28 = v26;
    memcpy(v17, v27, v26);
    v17 += v28;
    return v17;
  }

  return sub_1957130(a3, v27, v26, v17);
}

uint64_t sub_166A26C(uint64_t a1)
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
      v7 = sub_16696E0(v6);
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
      v14 = sub_1500DD8(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0x1F) != 0)
  {
    if (v15)
    {
      v18 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_18:
        if ((v15 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

    v21 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v22 = *(v21 + 23);
    v23 = *(v21 + 8);
    if ((v22 & 0x80u) == 0)
    {
      v23 = v22;
    }

    v9 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_19:
      if ((v15 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_31:
    v24 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v9 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 8) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    v9 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
LABEL_21:
    if ((v15 & 0x10) != 0)
    {
      v9 += 5;
    }
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v27 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v9 += v28;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_166A47C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_166F924((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_156B670((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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

        goto LABEL_25;
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

      goto LABEL_28;
    }

LABEL_25:
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
LABEL_14:
        *(a1 + 16) |= v14;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_14;
    }

LABEL_28:
    *(a1 + 96) = *(a2 + 96);
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_166A68C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FAE48;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_166A710(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FAEC8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

uint64_t sub_166A7AC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FAF48;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 1;
  return result;
}

uint64_t sub_166A84C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FAFC8;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_166A8EC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26FB048;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = a1;
  *(v2 + 88) = a1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  return result;
}

void *sub_166A9A8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FB0C8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

double sub_166AA30(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FB148;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

uint64_t sub_166AAC0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FB1C8;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

double sub_166AB48(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FB248;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_166ABC8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FB2C8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

void *sub_166AC50(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FB348;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_166ACF4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FB3C8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = 0;
  return result;
}

void *sub_166AD7C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FB448;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_166AE18(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FB4C8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_166AE9C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FB548;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_166AF3C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FB5C8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_166AFC0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FB648;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_166B044(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FB6C8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_166B0C8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FB748;
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
  *(result + 112) = a1;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = a1;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  return result;
}

uint64_t sub_166B190(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FB7C8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_166B22C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FB848;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_166B2B0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FB8C8;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_166B334(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FB948;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_166B3B8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FB9C8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_166B454(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FBA48;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_166B4CC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26FBAC8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  return result;
}

void *sub_166B588(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FBB48;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_166B610(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FBBC8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_166B694(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FBC48;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_166B734(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FBCC8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = &qword_278E990;
  *(result + 104) = &qword_278E990;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  return result;
}

uint64_t sub_166B7F4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FBD48;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_166B874(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26FBDC8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  return result;
}

uint64_t sub_166B924(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FBE48;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  return result;
}

uint64_t sub_166B9C4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FBEC8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_166BA44(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FBF48;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = &qword_278E990;
  return result;
}

uint64_t sub_166BAEC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FBFC8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = &qword_278E990;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

void sub_166D980(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_163BCE0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166DA04(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_163DD5C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166DA88(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_163EBA4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166DB0C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1641CE8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166DB88(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166DB98(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_1641FA8(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_166DC14(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_166DC24(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1642038(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166DCA0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166DCB0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_164247C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166DD34(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1642FC0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166DDB8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_130D8F4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166DE3C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1644048(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166DEC0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1645460(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166DF44(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1645C0C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166DFC8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_13F9E28(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E04C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1646478(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E0D0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1646E04(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E154(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1647728(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E1D8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1647C38(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E25C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1648CB4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E2E0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1649174(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E364(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16497AC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E3E8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1649DBC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E46C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1648248(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E4F0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1648858(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166E574(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_165488C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166E5F0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166E600(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1654918(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166E67C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166E68C(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_130FE08(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_166E708(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_166E718(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1654A64(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166E794(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_166E7A4(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_1654BBC(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_166E820(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t **sub_166E830(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_1654C58(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_166E8AC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_166E8BC(uint64_t **a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_140495C(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_166E938(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_166E948(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1654CFC(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166E9C4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166E9D4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1654DA0(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166EA50(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166EA60(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1654E60(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E5B90(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166EADC(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1654EE8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_13473EC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166EB58(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_16550B4(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_166EBD4(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_1655138(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_166E820(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_166EC50(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_16551D4(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_13473EC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166ECCC(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1655278(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_13473EC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166ED48(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1654F8C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_13473EC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166EDC4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1655030(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_13120E8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166EE40(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1655508(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166EEC4(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1658484(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E5B90(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166EF40(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_17B3D88(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166EFC4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1659FF0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166F048(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_165EBEC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166F0CC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_183501C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166F150(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1663570(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166F1D4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_138DFFC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166F258(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1830658(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166F2DC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1665028(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166F360(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_17D6484(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166F3E4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1669008(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_166F468(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_185EA2C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166F4E4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166F4F4(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_166A8EC(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_166F570(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_166F580(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_166AE18(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166F5FC(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      sub_18645D4(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_166F678(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_166F688(uint64_t **result, uint64_t **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_166B454(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166F704(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_166F714(uint64_t **result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_1392B7C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_1312C58(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_166F790(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_186421C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166F80C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166F81C(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_166B610(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166F898(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1860AC8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166F914(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166F924(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_166BA44(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_166F9A0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_166F9C0()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(69, v0, v3);
}

void sub_166FA00()
{
  dword_278D9F8 = 501;
  qword_278DA00 = &off_277B8D0;
  sub_194F72C(&off_278B080, 501, 11, 0, 0, &off_277B8D0);
  dword_278DA08 = 502;
  qword_278DA10 = &off_277B900;
  sub_194F72C(&off_278B080, 502, 11, 0, 0, &off_277B900);
  dword_278DA18 = 1001;
  qword_278DA20 = &off_277E6F0;
  sub_194F72C(&off_2773AC8, 1001, 11, 1, 0, &off_277E6F0);
  dword_278DA28 = 1001;
  qword_278DA30 = &off_277E6F0;
  sub_194F72C(&off_2773B38, 1001, 11, 1, 0, &off_277E6F0);
  dword_278DA38 = 100;
  qword_278DA40 = &off_277BA58;
  sub_194F72C(&off_27892F0, 100, 11, 1, 0, &off_277BA58);
  dword_278DA48 = 101;
  byte_278DA4C = 0;
  sub_194EE44(&off_27892F0, 101, 8, 0, 0);
  dword_278DA50 = 102;
  qword_278DA58 = &unk_2343078;
  sub_194EE44(&off_27892F0, 102, 9, 0, 0);
  qword_278DA60 = 103;
  sub_194EE44(&off_27892F0, 103, 13, 0, 0);
  dword_278DA68 = 104;
  qword_278DA70 = &off_278B0B0;
  sub_194F72C(&off_27892F0, 104, 11, 0, 0, &off_278B0B0);
  dword_278DA78 = 201;
  qword_278DA80 = &off_277E650;
  sub_194F72C(&off_2782860, 201, 11, 1, 0, &off_277E650);
  dword_278DA88 = 1000;
  byte_278DA8C = 0;
  sub_194EE44(&off_27829B0, 1000, 8, 0, 0);
  dword_278DA90 = 1000;
  byte_278DA94 = 0;
  sub_194EE44(&off_2782530, 1000, 8, 0, 0);
  dword_278DA98 = 1000;
  byte_278DA9C = 0;
  sub_194EE44(&off_27835A0, 1000, 8, 0, 0);
  dword_278DAA0 = 1001;
  qword_278DAA8 = &unk_2343090;
  sub_194EE44(&off_2784940, 1001, 9, 0, 0);
  dword_278DAB0 = 1002;
  qword_278DAB8 = &unk_23430A8;
  sub_194EE44(&off_2784940, 1002, 9, 0, 0);
  dword_278DAC0 = 1001;
  qword_278DAC8 = &unk_23430C0;
  sub_194EE44(&off_2786FC8, 1001, 9, 0, 0);
  dword_278DAD0 = 1001;
  qword_278DAD8 = &unk_23430D8;
  sub_194EE44(&off_2787070, 1001, 9, 0, 0);
  dword_278DAE0 = 1002;
  qword_278DAE8 = &unk_23430F0;
  sub_194EE44(&off_2787070, 1002, 9, 1, 0);
  dword_278DAF0 = 1001;
  qword_278DAF8 = &unk_2343108;
  sub_194EE44(&off_2787118, 1001, 9, 0, 0);
  qword_278DB00 = 0x1000003E9;
  sub_194F628(&off_2786E90, 1001, 14, 0, 0, sub_16585F0);
  qword_278DB08 = 0x1000003E9;
  sub_194F628(&off_2786EE0, 1001, 14, 0, 0, sub_16585F0);
  dword_278DB10 = 1000;
  qword_278DB18 = &off_277BA80;
  sub_194F72C(&off_27848B0, 1000, 11, 1, 0, &off_277BA80);
  dword_278DB20 = 1001;
  byte_278DB24 = 0;
  sub_194EE44(&off_27848B0, 1001, 8, 0, 0);
  qword_278DB28 = 0x1000003EALL;
  sub_194F628(&off_27848B0, 1002, 14, 1, 0, sub_14D6CDC);
  qword_278DB30 = 0x1000003EBLL;
  sub_194F628(&off_27848B0, 1003, 14, 0, 0, sub_14D6CEC);
  dword_278DB38 = 500;
  qword_278DB40 = &off_2786768;
  sub_194F72C(&off_278B870, 500, 11, 0, 0, &off_2786768);
  qword_278DB48 = 201;
  sub_194F628(&off_2782F78, 201, 14, 0, 0, sub_1658600);
  dword_278DB50 = 202;
  qword_278DB58 = 0;
  sub_194EE44(&off_2782F78, 202, 4, 1, 0);
  qword_278DB60 = 203;
  sub_194F628(&off_2782F78, 203, 14, 0, 0, sub_165860C);
  dword_278DB68 = 204;
  qword_278DB70 = &off_277E6F0;
  sub_194F72C(&off_2782F78, 204, 11, 1, 0, &off_277E6F0);
  qword_278DB78 = 0x1000000CDLL;
  sub_194F628(&off_2782F78, 205, 14, 0, 0, sub_1538BA4);
  dword_278DB80 = 206;
  qword_278DB88 = &off_277BB28;
  sub_194F72C(&off_2782F78, 206, 11, 1, 0, &off_277BB28);
  dword_278DB90 = 207;
  qword_278DB98 = &off_277BAC0;
  sub_194F72C(&off_2782F78, 207, 11, 1, 0, &off_277BAC0);
  dword_278DBA0 = 201;
  qword_278DBA8 = &off_277E6F0;
  sub_194F72C(&off_2783048, 201, 11, 1, 0, &off_277E6F0);
  dword_278DBB0 = 202;
  qword_278DBB8 = &off_277BAC0;
  sub_194F72C(&off_2783048, 202, 11, 1, 0, &off_277BAC0);
  dword_278DBC0 = 201;
  qword_278DBC8 = &off_277E6F0;
  sub_194F72C(&off_27830A8, 201, 11, 1, 0, &off_277E6F0);
  dword_278DBD0 = 202;
  qword_278DBD8 = 0;
  sub_194EE44(&off_27830A8, 202, 4, 0, 0);
  dword_278DBE0 = 201;
  qword_278DBE8 = &off_277BAF8;
  sub_194F72C(&off_2782E80, 201, 11, 1, 0, &off_277BAF8);
  qword_278DBF0 = 202;
  sub_194F628(&off_2782E80, 202, 14, 0, 0, sub_1658600);
  dword_278DBF8 = 203;
  qword_278DC00 = &off_277E6F0;
  sub_194F72C(&off_2782E80, 203, 11, 1, 0, &off_277E6F0);
  dword_278DC08 = 204;
  qword_278DC10 = &off_277E6F0;
  sub_194F72C(&off_2782E80, 204, 11, 1, 0, &off_277E6F0);
  qword_278DC18 = 201;
  sub_194F628(&off_2782C98, 201, 14, 0, 0, sub_1658600);
  dword_278DC20 = 201;
  byte_278DC24 = 0;
  sub_194EE44(&off_2782D50, 201, 8, 0, 0);
  qword_278DC28 = 202;
  sub_194F628(&off_2782D50, 202, 14, 0, 0, sub_140BCC4);
  dword_278DC30 = 203;
  qword_278DC38 = &off_277E6F0;
  sub_194F72C(&off_2782D50, 203, 11, 1, 0, &off_277E6F0);
  dword_278DC40 = 204;
  qword_278DC48 = &off_277E6F0;
  sub_194F72C(&off_2782D50, 204, 11, 1, 0, &off_277E6F0);
  dword_278DC50 = 1001;
  qword_278DC58 = &off_277E6F0;
  sub_194F72C(&off_2782D50, 1001, 11, 0, 0, &off_277E6F0);
  dword_278DC60 = 1002;
  qword_278DC68 = &off_277E6F0;
  sub_194F72C(&off_2782D50, 1002, 11, 0, 0, &off_277E6F0);
  dword_278DC70 = 201;
  qword_278DC78 = &off_277E6F0;
  sub_194F72C(&off_2782E18, 201, 11, 1, 0, &off_277E6F0);
  dword_278DC80 = 1002;
  qword_278DC88 = 0;
  sub_194EE44(&off_27868A0, 1002, 4, 0, 0);
  dword_278DC90 = 1005;
  qword_278DC98 = &off_2781F80;
  sub_194F72C(&off_27868A0, 1005, 11, 1, 0, &off_2781F80);
  dword_278DCA0 = 1006;
  qword_278DCA8 = &off_277BC90;
  sub_194F72C(&off_27868A0, 1006, 11, 1, 0, &off_277BC90);
  dword_278DCB0 = 1007;
  qword_278DCB8 = 0;
  sub_194EE44(&off_27868A0, 1007, 4, 0, 0);
  dword_278DCC0 = 1008;
  qword_278DCC8 = &off_2781F80;
  sub_194F72C(&off_27868A0, 1008, 11, 1, 0, &off_2781F80);
  dword_278DCD0 = 1009;
  byte_278DCD4 = 0;
  sub_194EE44(&off_27868A0, 1009, 8, 0, 0);
  qword_278DCD8 = 1010;
  sub_194F628(&off_27868A0, 1010, 14, 1, 0, sub_14D6CA4);
  dword_278DCE0 = 1011;
  qword_278DCE8 = &unk_2343120;
  sub_194EE44(&off_27868A0, 1011, 9, 1, 0);
  dword_278DCF0 = 1500;
  qword_278DCF8 = &unk_2343138;
  sub_194EE44(&off_27868A0, 1500, 9, 1, 0);
  dword_278DD00 = 1600;
  qword_278DD08 = &off_27774D0;
  sub_194F72C(&off_27868A0, 1600, 11, 0, 0, &off_27774D0);
  dword_278DD10 = 1601;
  qword_278DD18 = 0;
  sub_194EE44(&off_27868A0, 1601, 4, 1, 0);
  dword_278DD20 = 1602;
  qword_278DD28 = &off_277BBA8;
  sub_194F72C(&off_27868A0, 1602, 11, 0, 0, &off_277BBA8);
  dword_278DD30 = 1603;
  qword_278DD38 = &off_277BBD8;
  sub_194F72C(&off_27868A0, 1603, 11, 0, 0, &off_277BBD8);
  dword_278DD40 = 1604;
  qword_278DD48 = &off_2781F80;
  sub_194F72C(&off_27868A0, 1604, 11, 1, 0, &off_2781F80);
  dword_278DD50 = 1605;
  qword_278DD58 = &off_2781F80;
  sub_194F72C(&off_27868A0, 1605, 11, 1, 0, &off_2781F80);
  dword_278DD60 = 1606;
  qword_278DD68 = &off_277BCC0;
  sub_194F72C(&off_27868A0, 1606, 11, 1, 0, &off_277BCC0);
  dword_278DD70 = 1607;
  qword_278DD78 = 0;
  sub_194EE44(&off_27868A0, 1607, 4, 0, 0);
  dword_278DD80 = 1609;
  qword_278DD88 = &off_27751E8;
  sub_194F72C(&off_27868A0, 1609, 11, 1, 0, &off_27751E8);
  dword_278DD90 = 1610;
  qword_278DD98 = &off_2775818;
  sub_194F72C(&off_27868A0, 1610, 11, 0, 0, &off_2775818);
  dword_278DDA0 = 1611;
  qword_278DDA8 = &off_277BCF8;
  sub_194F72C(&off_27868A0, 1611, 11, 0, 0, &off_277BCF8);
  dword_278DDB0 = 1612;
  qword_278DDB8 = &off_277BCF8;
  sub_194F72C(&off_27868A0, 1612, 11, 1, 0, &off_277BCF8);
  dword_278DDC0 = 1613;
  qword_278DDC8 = &off_277BCF8;
  sub_194F72C(&off_27868A0, 1613, 11, 0, 0, &off_277BCF8);
  dword_278DDD0 = 1614;
  qword_278DDD8 = &off_277E6F0;
  sub_194F72C(&off_27868A0, 1614, 11, 0, 0, &off_277E6F0);
  dword_278DDE0 = 1615;
  qword_278DDE8 = &off_277BD30;
  sub_194F72C(&off_27868A0, 1615, 11, 0, 0, &off_277BD30);
  dword_278DDF0 = 1616;
  qword_278DDF8 = &off_276E188;
  sub_194F72C(&off_27868A0, 1616, 11, 0, 0, &off_276E188);
  dword_278DE00 = 1617;
  qword_278DE08 = &off_27774D0;
  sub_194F72C(&off_27868A0, 1617, 11, 1, 0, &off_27774D0);
  qword_278DE10 = 1618;
  sub_194EE44(&off_27868A0, 1618, 5, 1, 0);
  dword_278DE18 = 1619;
  qword_278DE20 = 0;
  sub_194EE44(&off_27868A0, 1619, 4, 0, 0);
  dword_278DE28 = 1620;
  qword_278DE30 = &off_277BCF8;
  sub_194F72C(&off_27868A0, 1620, 11, 1, 0, &off_277BCF8);
  dword_278DE38 = 1621;
  qword_278DE40 = &off_277BD68;
  sub_194F72C(&off_27868A0, 1621, 11, 0, 0, &off_277BD68);
  dword_278DE48 = 1622;
  qword_278DE50 = 0;
  sub_194EE44(&off_27868A0, 1622, 4, 1, 0);
  dword_278DE58 = 1623;
  byte_278DE5C = 0;
  sub_194EE44(&off_27868A0, 1623, 8, 0, 0);
  dword_278DE60 = 1624;
  qword_278DE68 = &off_277BC58;
  sub_194F72C(&off_27868A0, 1624, 11, 0, 0, &off_277BC58);
  dword_278DE70 = 1000;
  qword_278DE78 = &off_2784D98;
  sub_194F72C(&off_2785600, 1000, 11, 1, 0, &off_2784D98);
  dword_278DE80 = 1000;
  qword_278DE88 = &unk_2343150;
  sub_194EE44(&off_2782358, 1000, 9, 1, 0);
  dword_278DE90 = 1001;
  qword_278DE98 = &unk_2343168;
  sub_194EE44(&off_2782358, 1001, 12, 0, 0);
  dword_278DEA0 = 1002;
  qword_278DEA8 = &off_277E6F0;
  sub_194F72C(&off_2782358, 1002, 11, 1, 0, &off_277E6F0);
  dword_278DEB0 = 1003;
  qword_278DEB8 = &off_277E6F0;
  sub_194F72C(&off_2782358, 1003, 11, 1, 0, &off_277E6F0);
  dword_278DEC0 = 1004;
  qword_278DEC8 = &off_277E6F0;
  sub_194F72C(&off_2782358, 1004, 11, 1, 0, &off_277E6F0);
  dword_278DED0 = 1006;
  qword_278DED8 = &off_277E6F0;
  sub_194F72C(&off_2782358, 1006, 11, 1, 0, &off_277E6F0);
  dword_278DEE0 = 1007;
  qword_278DEE8 = 0;
  sub_194EE44(&off_2782358, 1007, 4, 1, 0);
  dword_278DEF0 = 1008;
  byte_278DEF4 = 0;
  sub_194EE44(&off_2782358, 1008, 8, 0, 0);
  dword_278DEF8 = 1009;
  byte_278DEFC = 0;
  sub_194EE44(&off_2782358, 1009, 8, 0, 0);
  dword_278DF00 = 1010;
  qword_278DF08 = &off_277E6F0;
  sub_194F72C(&off_2782358, 1010, 11, 1, 0, &off_277E6F0);
  dword_278DF10 = 1011;
  byte_278DF14 = 0;
  sub_194EE44(&off_2782358, 1011, 8, 0, 0);
  dword_278DF18 = 1012;
  qword_278DF20 = 0;
  sub_194EE44(&off_2782358, 1012, 4, 0, 0);
  dword_278DF28 = 1013;
  qword_278DF30 = 0;
  sub_194EE44(&off_2782358, 1013, 4, 0, 0);
  dword_278DF38 = 1014;
  qword_278DF40 = 0;
  sub_194EE44(&off_2782358, 1014, 4, 1, 0);
  dword_278DF48 = 1015;
  qword_278DF50 = &unk_2343180;
  sub_194EE44(&off_2782358, 1015, 9, 1, 0);
  dword_278DF58 = 1016;
  qword_278DF60 = &off_27762C0;
  sub_194F72C(&off_2782358, 1016, 11, 0, 0, &off_27762C0);
  dword_278DF68 = 500;
  qword_278DF70 = &off_277E6F0;
  sub_194F72C(&off_2784CB0, 500, 11, 1, 0, &off_277E6F0);
  dword_278DF78 = 501;
  qword_278DF80 = &unk_2343198;
  sub_194EE44(&off_2784CB0, 501, 9, 1, 0);
  dword_278DF88 = 1000;
  qword_278DF90 = &off_2783528;
  sub_194F72C(&off_2783528, 1000, 11, 0, 0, &off_2783528);
  dword_278DF98 = 1001;
  qword_278DFA0 = &off_277BD98;
  sub_194F72C(&off_2783DE0, 1001, 11, 1, 0, &off_277BD98);
  dword_278DFA8 = 201;
  qword_278DFB0 = &off_277E6F0;
  sub_194F72C(&off_27836D8, 201, 11, 1, 0, &off_277E6F0);
  dword_278DFB8 = 202;
  qword_278DFC0 = &unk_23431B0;
  sub_194EE44(&off_27836D8, 202, 12, 0, 0);
  dword_278DFC8 = 203;
  byte_278DFCC = 0;
  sub_194EE44(&off_27836D8, 203, 8, 0, 0);
  dword_278DFD0 = 1001;
  qword_278DFD8 = &off_277BDC0;
  sub_194F72C(&off_2784040, 1001, 11, 1, 0, &off_277BDC0);
  dword_278DFE0 = 1002;
  qword_278DFE8 = &off_27747D0;
  sub_194F72C(&off_2784040, 1002, 11, 0, 0, &off_27747D0);
  dword_278DFF0 = 1003;
  qword_278DFF8 = &off_2774F48;
  sub_194F72C(&off_2784040, 1003, 11, 1, 0, &off_2774F48);
  dword_278E000 = 1001;
  qword_278E008 = &off_277BDE8;
  sub_194F72C(&off_27834C0, 1001, 11, 1, 0, &off_277BDE8);
  dword_278E010 = 1000;
  qword_278E018 = &off_277E6F0;
  sub_194F72C(&off_2785748, 1000, 11, 1, 0, &off_277E6F0);
  dword_278E020 = 1001;
  qword_278E028 = &off_277E6F0;
  sub_194F72C(&off_2785748, 1001, 11, 1, 0, &off_277E6F0);
  dword_278E030 = 1001;
  qword_278E038 = &off_277BE10;
  sub_194F72C(&off_2770110, 1001, 11, 0, 0, &off_277BE10);
  dword_278E040 = 201;
  qword_278E048 = &off_277BEB8;
  sub_194F72C(&off_2783150, 201, 11, 1, 0, &off_277BEB8);
  qword_278E050 = 202;
  sub_194F628(&off_2783150, 202, 14, 0, 0, sub_1658600);
  dword_278E058 = 1001;
  qword_278E060 = &off_277E6F0;
  sub_194F72C(&off_2784608, 1001, 11, 1, 0, &off_277E6F0);
  dword_278E068 = 1002;
  qword_278E070 = &unk_23431C8;
  sub_194EE44(&off_2784608, 1002, 9, 0, 0);
  dword_278E078 = 1003;
  qword_278E080 = &off_277E6F0;
  sub_194F72C(&off_2784608, 1003, 11, 1, 0, &off_277E6F0);
  dword_278E088 = 1004;
  qword_278E090 = &off_277E6F0;
  sub_194F72C(&off_2784608, 1004, 11, 1, 0, &off_277E6F0);
  dword_278E098 = 1005;
  byte_278E09C = 0;
  sub_194EE44(&off_2784608, 1005, 8, 0, 0);
  dword_278E0A0 = 201;
  qword_278E0A8 = &unk_23431E0;
  sub_194EE44(&off_2782930, 201, 12, 0, 0);
  dword_278E0B0 = 202;
  qword_278E0B8 = &off_2774EA8;
  sub_194F72C(&off_2782930, 202, 11, 1, 0, &off_2774EA8);
  dword_278E0C0 = 203;
  byte_278E0C4 = 0;
  sub_194EE44(&off_2782930, 203, 8, 0, 0);
  dword_278E0C8 = 204;
  qword_278E0D0 = &off_2774EA8;
  sub_194F72C(&off_2782930, 204, 11, 1, 0, &off_2774EA8);
  dword_278E0D8 = 205;
  qword_278E0E0 = 0;
  sub_194EE44(&off_2782930, 205, 4, 0, 0);
  dword_278E0E8 = 206;
  qword_278E0F0 = &off_2774EA8;
  sub_194F72C(&off_2782930, 206, 11, 1, 0, &off_2774EA8);
  dword_278E0F8 = 201;
  qword_278E100 = &off_277BEF0;
  sub_194F72C(&off_27829E0, 201, 11, 1, 0, &off_277BEF0);
  dword_278E108 = 201;
  byte_278E10C = 0;
  sub_194EE44(&off_27835F8, 201, 8, 0, 0);
  dword_278E110 = 202;
  qword_278E118 = &unk_23431F8;
  sub_194EE44(&off_27835F8, 202, 12, 0, 0);
  dword_278E120 = 203;
  byte_278E124 = 0;
  sub_194EE44(&off_27835F8, 203, 8, 0, 0);
  dword_278E128 = 201;
  byte_278E12C = 0;
  sub_194EE44(&off_27838B0, 201, 8, 0, 0);
  dword_278E130 = 202;
  qword_278E138 = &unk_2343210;
  sub_194EE44(&off_27838B0, 202, 9, 0, 0);
  dword_278E140 = 1001;
  byte_278E144 = 0;
  sub_194EE44(&off_2784138, 1001, 8, 0, 0);
  *&dword_278E148 = 1002;
  sub_194EE44(&off_2784138, 1002, 2, 0, 0);
  qword_278E150 = 1003;
  sub_194EE44(&off_2784138, 1003, 13, 0, 0);
  dword_278E158 = 1004;
  qword_278E160 = &unk_2343228;
  sub_194EE44(&off_2784138, 1004, 9, 1, 0);
  qword_278E168 = 1005;
  sub_194EE44(&off_2784138, 1005, 5, 0, 0);
  dword_278E170 = 1006;
  byte_278E174 = 0;
  sub_194EE44(&off_2784138, 1006, 8, 0, 0);
  dword_278E178 = 1007;
  qword_278E180 = &off_277BF18;
  sub_194F72C(&off_2784138, 1007, 11, 1, 0, &off_277BF18);
  dword_278E188 = 1008;
  byte_278E18C = 0;
  sub_194EE44(&off_2784138, 1008, 8, 0, 0);
  dword_278E190 = 1009;
  qword_278E198 = &off_277BF38;
  sub_194F72C(&off_2784138, 1009, 11, 1, 0, &off_277BF38);
  qword_278E1A0 = 1010;
  sub_194EE44(&off_2784138, 1010, 13, 0, 0);
  dword_278E1A8 = 1001;
  byte_278E1AC = 0;
  sub_194EE44(&off_27841B0, 1001, 8, 0, 0);
  dword_278E1B0 = 1002;
  qword_278E1B8 = &unk_2343240;
  sub_194EE44(&off_27841B0, 1002, 9, 0, 0);
  dword_278E1C0 = 700;
  byte_278E1C4 = 0;
  sub_194EE44(&off_2784D98, 700, 8, 0, 0);
  dword_278E1C8 = 701;
  qword_278E1D0 = &unk_2343258;
  sub_194EE44(&off_2784D98, 701, 9, 0, 0);
  dword_278E1D8 = 702;
  qword_278E1E0 = &unk_2343270;
  sub_194EE44(&off_2784D98, 702, 9, 0, 0);
  dword_278E1E8 = 703;
  qword_278E1F0 = &off_2774CE0;
  sub_194F72C(&off_2784D98, 703, 11, 1, 0, &off_2774CE0);
  dword_278E1F8 = 704;
  byte_278E1FC = 0;
  sub_194EE44(&off_2784D98, 704, 8, 0, 0);
  qword_278E200 = 705;
  sub_194EE44(&off_2784D98, 705, 13, 0, 0);
  dword_278E208 = 2000;
  byte_278E20C = 0;
  sub_194EE44(&off_278AFA0, 2000, 8, 0, 0);
  dword_278E210 = 2001;
  qword_278E218 = &off_2777498;
  sub_194F72C(&off_278AFA0, 2001, 11, 0, 0, &off_2777498);
  dword_278E220 = 2002;
  qword_278E228 = &off_277BFB8;
  sub_194F72C(&off_278AFA0, 2002, 11, 0, 0, &off_277BFB8);
  dword_278E230 = 2003;
  byte_278E234 = 0;
  sub_194EE44(&off_278AFA0, 2003, 8, 0, 0);
  dword_278E238 = 2000;
  qword_278E240 = &off_277C038;
  sub_194F72C(&off_278B0B0, 2000, 11, 1, 0, &off_277C038);
  dword_278E248 = 2001;
  qword_278E250 = &off_277C068;
  sub_194F72C(&off_278B0B0, 2001, 11, 0, 0, &off_277C068);
  dword_278E258 = 2002;
  qword_278E260 = &off_277C908;
  sub_194F72C(&off_278B0B0, 2002, 11, 0, 0, &off_277C908);
  qword_278E268 = 2003;
  sub_194F628(&off_278B0B0, 2003, 14, 0, 0, sub_15D5C94);
  dword_278E270 = 1000;
  qword_278E278 = &off_27751E8;
  sub_194F72C(&off_27873B0, 1000, 11, 1, 0, &off_27751E8);
  dword_278E280 = 1002;
  qword_278E288 = 0;
  sub_194EE44(&off_27857C0, 1002, 4, 0, 0);
  dword_278E290 = 1003;
  qword_278E298 = &off_277E6F0;
  sub_194F72C(&off_27857C0, 1003, 11, 1, 0, &off_277E6F0);
  dword_278E2A0 = 1004;
  qword_278E2A8 = &off_277E6F0;
  sub_194F72C(&off_27857C0, 1004, 11, 1, 0, &off_277E6F0);
  dword_278E2B0 = 1005;
  qword_278E2B8 = &off_277E6F0;
  sub_194F72C(&off_27857C0, 1005, 11, 1, 0, &off_277E6F0);
  dword_278E2C0 = 1007;
  qword_278E2C8 = &off_277E6F0;
  sub_194F72C(&off_27857C0, 1007, 11, 1, 0, &off_277E6F0);
  dword_278E2D0 = 1008;
  qword_278E2D8 = &off_277E6F0;
  sub_194F72C(&off_27857C0, 1008, 11, 1, 0, &off_277E6F0);
  dword_278E2E0 = 1009;
  qword_278E2E8 = &unk_2343288;
  sub_194EE44(&off_27857C0, 1009, 9, 0, 0);
  dword_278E2F0 = 1010;
  byte_278E2F4 = 0;
  sub_194EE44(&off_27857C0, 1010, 8, 0, 0);
  dword_278E2F8 = 1011;
  qword_278E300 = &off_277C150;
  sub_194F72C(&off_27857C0, 1011, 11, 0, 0, &off_277C150);
  dword_278E308 = 1012;
  qword_278E310 = &off_277E6F0;
  sub_194F72C(&off_27857C0, 1012, 11, 1, 0, &off_277E6F0);
  dword_278E318 = 1013;
  qword_278E320 = &off_277E6F0;
  sub_194F72C(&off_27857C0, 1013, 11, 1, 0, &off_277E6F0);
  dword_278E328 = 1014;
  qword_278E330 = &off_277E6F0;
  sub_194F72C(&off_27857C0, 1014, 11, 1, 0, &off_277E6F0);
  dword_278E338 = 1015;
  qword_278E340 = &unk_23432A0;
  sub_194EE44(&off_27857C0, 1015, 9, 1, 0);
  dword_278E348 = 1001;
  qword_278E350 = &off_277C098;
  sub_194F72C(&off_27859D0, 1001, 11, 0, 0, &off_277C098);
  dword_278E358 = 1001;
  qword_278E360 = &off_277E6F0;
  sub_194F72C(&off_27873F8, 1001, 11, 1, 0, &off_277E6F0);
  dword_278E368 = 1002;
  qword_278E370 = &off_277C120;
  sub_194F72C(&off_27873F8, 1002, 11, 1, 0, &off_277C120);
  dword_278E378 = 1001;
  qword_278E380 = &off_277C1A8;
  sub_194F72C(&off_2785B80, 1001, 11, 1, 0, &off_277C1A8);
  dword_278E388 = 1000;
  qword_278E390 = &off_2775DE0;
  sub_194F72C(&off_2784730, 1000, 11, 1, 0, &off_2775DE0);
  dword_278E398 = 1000;
  qword_278E3A0 = 0;
  sub_194EE44(&off_276D7F8, 1000, 4, 1, 0);
  dword_278E3A8 = 1000;
  qword_278E3B0 = &unk_23432B8;
  sub_194EE44(&off_2783C10, 1000, 9, 1, 0);
  dword_278E3B8 = 1000;
  qword_278E3C0 = 0;
  sub_194EE44(&off_27864F0, 1000, 4, 1, 0);
  dword_278E3C8 = 1001;
  qword_278E3D0 = &off_277E6F0;
  sub_194F72C(&off_27864F0, 1001, 11, 1, 0, &off_277E6F0);
  dword_278E3D8 = 1002;
  qword_278E3E0 = &off_277E6F0;
  sub_194F72C(&off_27864F0, 1002, 11, 1, 0, &off_277E6F0);
  dword_278E3E8 = 1000;
  qword_278E3F0 = &off_277E6F0;
  sub_194F72C(&off_2785C60, 1000, 11, 1, 0, &off_277E6F0);
  dword_278E3F8 = 1001;
  qword_278E400 = &off_277E6F0;
  sub_194F72C(&off_2785C60, 1001, 11, 1, 0, &off_277E6F0);
  dword_278E408 = 1003;
  qword_278E410 = &off_277E6F0;
  sub_194F72C(&off_2785C60, 1003, 11, 1, 0, &off_277E6F0);
  dword_278E418 = 1004;
  byte_278E41C = 0;
  sub_194EE44(&off_2785C60, 1004, 8, 0, 0);
  dword_278E420 = 1005;
  qword_278E428 = &unk_23432D0;
  sub_194EE44(&off_2785C60, 1005, 9, 0, 0);
  dword_278E430 = 1006;
  qword_278E438 = &unk_23432E8;
  sub_194EE44(&off_2785C60, 1006, 9, 0, 0);
  dword_278E440 = 1001;
  qword_278E448 = 0;
  sub_194EE44(&off_27861A0, 1001, 4, 1, 0);
  dword_278E450 = 1002;
  qword_278E458 = &off_277C1F8;
  sub_194F72C(&off_27861A0, 1002, 11, 1, 0, &off_277C1F8);
  dword_278E460 = 1000;
  qword_278E468 = &unk_2343300;
  sub_194EE44(&off_2785C00, 1000, 9, 0, 0);
  dword_278E470 = 1001;
  qword_278E478 = 0;
  sub_194EE44(&off_2785C00, 1001, 4, 0, 0);
  dword_278E480 = 1000;
  qword_278E488 = &unk_2343318;
  sub_194EE44(&off_27863E8, 1000, 9, 0, 0);
  dword_278E490 = 1001;
  qword_278E498 = 0;
  sub_194EE44(&off_27863E8, 1001, 4, 1, 0);
  dword_278E4A0 = 1000;
  qword_278E4A8 = &off_277C960;
  sub_194F72C(&off_27879B8, 1000, 11, 0, 0, &off_277C960);
  dword_278E4B0 = 1001;
  qword_278E4B8 = &off_277C228;
  sub_194F72C(&off_2783EA0, 1001, 11, 1, 0, &off_277C228);
  dword_278E4C0 = 200;
  qword_278E4C8 = &off_2775C50;
  sub_194F72C(&off_2782768, 200, 11, 0, 0, &off_2775C50);
  dword_278E4D0 = 1000;
  byte_278E4D4 = 0;
  sub_194EE44(&off_2783450, 1000, 8, 0, 0);
  dword_278E4D8 = 1001;
  qword_278E4E0 = &off_2774F78;
  sub_194F72C(&off_2783450, 1001, 11, 1, 0, &off_2774F78);
  qword_278E4E8 = 1000;
  sub_194F628(&off_2786A10, 1000, 14, 0, 0, sub_14D6C88);
  dword_278E4F0 = 1000;
  qword_278E4F8 = &off_277E5E8;
  sub_194F72C(&off_2783FB8, 1000, 11, 0, 0, &off_277E5E8);
  dword_278E500 = 1001;
  qword_278E508 = &off_277E5E8;
  sub_194F72C(&off_2783FB8, 1001, 11, 0, 0, &off_277E5E8);
  qword_278E510 = 1002;

  sub_194F628(&off_2783FB8, 1002, 14, 0, 0, sub_144E13C);
}

uint64_t sub_1672184()
{
  qword_27D2C58 = "FEATURE_TRANSITFEATURE_UNKNOWN";
  unk_27D2C60 = 15;
  dword_27D2C68 = 1;
  qword_27D2C70 = "FEATURE_UNKNOWN";
  unk_27D2C78 = 15;
  dword_27D2C80 = 0;
  qword_27D2C88 = "V0";
  unk_27D2C90 = 2;
  dword_27D2C98 = 0;
  qword_27D2CA0 = "BRANDSCATEGORY";
  *algn_27D2CA8 = 6;
  dword_27D2CB0 = 2;
  qword_27D2CB8 = "CATEGORY";
  unk_27D2CC0 = 8;
  dword_27D2CC8 = 1;
  qword_27D2CD0 = "CHARACTERWORD";
  *algn_27D2CD8 = 9;
  dword_27D2CE0 = 1;
  qword_27D2CE8 = "WORD";
  unk_27D2CF0 = 4;
  dword_27D2CF8 = 2;
  qword_27D2D00 = "CAR_MODE_ELECTRICCAR_MODE_GASCAR_MODE_HYBRIDCAR_MODE_UNKNOWN";
  *algn_27D2D08 = 17;
  dword_27D2D10 = 2;
  qword_27D2D18 = "CAR_MODE_GASCAR_MODE_HYBRIDCAR_MODE_UNKNOWN";
  unk_27D2D20 = 12;
  dword_27D2D28 = 1;
  qword_27D2D30 = "CAR_MODE_HYBRIDCAR_MODE_UNKNOWN";
  unk_27D2D38 = 15;
  dword_27D2D40 = 3;
  qword_27D2D48 = "CAR_MODE_UNKNOWN";
  unk_27D2D50 = 16;
  dword_27D2D58 = 0;
  qword_27D2D60 = "ACCEPTS_APPLE_PAYACCEPTS_CREDIT_CARDSALLOWS_PETSGOOD_FOR_KIDSHAS_DELIVERYHAS_FITNESS_CENTERHAS_FREE_BREAKFASTHAS_FREE_PARKINGHAS_FREE_WIFIHAS_FULL_BARHAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  *algn_27D2D68 = 17;
  dword_27D2D70 = 4;
  qword_27D2D78 = "ACCEPTS_CREDIT_CARDSALLOWS_PETSGOOD_FOR_KIDSHAS_DELIVERYHAS_FITNESS_CENTERHAS_FREE_BREAKFASTHAS_FREE_PARKINGHAS_FREE_WIFIHAS_FULL_BARHAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2D80 = 20;
  dword_27D2D88 = 5;
  qword_27D2D90 = "ALLOWS_PETSGOOD_FOR_KIDSHAS_DELIVERYHAS_FITNESS_CENTERHAS_FREE_BREAKFASTHAS_FREE_PARKINGHAS_FREE_WIFIHAS_FULL_BARHAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2D98 = 11;
  dword_27D2DA0 = 7;
  qword_27D2DA8 = "GOOD_FOR_KIDSHAS_DELIVERYHAS_FITNESS_CENTERHAS_FREE_BREAKFASTHAS_FREE_PARKINGHAS_FREE_WIFIHAS_FULL_BARHAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2DB0 = 13;
  dword_27D2DB8 = 1;
  qword_27D2DC0 = "HAS_DELIVERYHAS_FITNESS_CENTERHAS_FREE_BREAKFASTHAS_FREE_PARKINGHAS_FREE_WIFIHAS_FULL_BARHAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2DC8 = 12;
  dword_27D2DD0 = 2;
  qword_27D2DD8 = "HAS_FITNESS_CENTERHAS_FREE_BREAKFASTHAS_FREE_PARKINGHAS_FREE_WIFIHAS_FULL_BARHAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2DE0 = 18;
  dword_27D2DE8 = 15;
  qword_27D2DF0 = "HAS_FREE_BREAKFASTHAS_FREE_PARKINGHAS_FREE_WIFIHAS_FULL_BARHAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2DF8 = 18;
  dword_27D2E00 = 14;
  qword_27D2E08 = "HAS_FREE_PARKINGHAS_FREE_WIFIHAS_FULL_BARHAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2E10 = 16;
  dword_27D2E18 = 10;
  qword_27D2E20 = "HAS_FREE_WIFIHAS_FULL_BARHAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2E28 = 13;
  dword_27D2E30 = 8;
  qword_27D2E38 = "HAS_FULL_BARHAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2E40 = 12;
  dword_27D2E48 = 9;
  qword_27D2E50 = "HAS_GENDER_NEUTRAL_RESTROOMHAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2E58 = 27;
  dword_27D2E60 = 12;
  result = 19;
  qword_27D2E68 = "HAS_OUTDOOR_SEATINGHAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2E70 = 19;
  dword_27D2E78 = 3;
  qword_27D2E80 = "HAS_SWIMMING_POOLNONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2E88 = 17;
  dword_27D2E90 = 13;
  qword_27D2E98 = "NONESMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2EA0 = 4;
  dword_27D2EA8 = 0;
  qword_27D2EB0 = "SMOKING_ALLOWEDWHEELCHAIR_ACCESSIBLE";
  unk_27D2EB8 = 15;
  dword_27D2EC0 = 11;
  qword_27D2EC8 = "WHEELCHAIR_ACCESSIBLE";
  unk_27D2ED0 = 21;
  dword_27D2ED8 = 6;
  qword_27D3070 = "TRANSIT_POI_HALLTRANSIT_POI_LINETRANSIT_POI_STATIONTRANSIT_POI_STOPTRANSIT_POI_UNKNOWN";
  *algn_27D3078 = 16;
  dword_27D3080 = 2;
  qword_27D3088 = "TRANSIT_POI_LINETRANSIT_POI_STATIONTRANSIT_POI_STOPTRANSIT_POI_UNKNOWN";
  unk_27D3090 = 16;
  dword_27D3098 = 4;
  qword_27D30A0 = "TRANSIT_POI_STATIONTRANSIT_POI_STOPTRANSIT_POI_UNKNOWN";
  unk_27D30A8 = 19;
  dword_27D30B0 = 1;
  qword_27D30B8 = "TRANSIT_POI_STOPTRANSIT_POI_UNKNOWN";
  unk_27D30C0 = 16;
  dword_27D30C8 = 3;
  qword_27D30D0 = "TRANSIT_POI_UNKNOWN";
  unk_27D30D8 = 19;
  dword_27D30E0 = 0;
  qword_27D30E8 = "ENTITY_HALLENTITY_LINEENTITY_MARKETENTITY_STATIONENTITY_STOPENTITY_SYSTEMENTITY_UNKNOWN";
  unk_27D30F0 = 11;
  dword_27D30F8 = 6;
  qword_27D3100 = "ENTITY_LINEENTITY_MARKETENTITY_STATIONENTITY_STOPENTITY_SYSTEMENTITY_UNKNOWN";
  unk_27D3108 = 11;
  dword_27D3110 = 3;
  qword_27D3118 = "ENTITY_MARKETENTITY_STATIONENTITY_STOPENTITY_SYSTEMENTITY_UNKNOWN";
  unk_27D3120 = 13;
  dword_27D3128 = 5;
  qword_27D3130 = "ENTITY_STATIONENTITY_STOPENTITY_SYSTEMENTITY_UNKNOWN";
  unk_27D3138 = 14;
  dword_27D3140 = 1;
  qword_27D3148 = "ENTITY_STOPENTITY_SYSTEMENTITY_UNKNOWN";
  unk_27D3150 = 11;
  dword_27D3158 = 2;
  qword_27D3160 = "ENTITY_SYSTEMENTITY_UNKNOWN";
  unk_27D3168 = 13;
  dword_27D3170 = 4;
  qword_27D3178 = "ENTITY_UNKNOWN";
  unk_27D3180 = 14;
  dword_27D3188 = 0;
  qword_27D3190 = "GEMINI_TYPE_BRAND_DEFINITIONGEMINI_TYPE_BUSINESS_CARDGEMINI_TYPE_BUSINESS_CARD_COLLECTIONGEMINI_TYPE_BUSINESS_CARD_EVENTGEMINI_TYPE_MODULE_LISTGEMINI_TYPE_UNKNOWN";
  *algn_27D3198 = 28;
  dword_27D31A0 = 2;
  qword_27D31A8 = "GEMINI_TYPE_BUSINESS_CARDGEMINI_TYPE_BUSINESS_CARD_COLLECTIONGEMINI_TYPE_BUSINESS_CARD_EVENTGEMINI_TYPE_MODULE_LISTGEMINI_TYPE_UNKNOWN";
  unk_27D31B0 = 25;
  dword_27D31B8 = 1;
  qword_27D31C0 = "GEMINI_TYPE_BUSINESS_CARD_COLLECTIONGEMINI_TYPE_BUSINESS_CARD_EVENTGEMINI_TYPE_MODULE_LISTGEMINI_TYPE_UNKNOWN";
  unk_27D31C8 = 36;
  dword_27D31D0 = 4;
  qword_27D31D8 = "GEMINI_TYPE_BUSINESS_CARD_EVENTGEMINI_TYPE_MODULE_LISTGEMINI_TYPE_UNKNOWN";
  unk_27D31E0 = 31;
  dword_27D31E8 = 3;
  qword_27D31F0 = "GEMINI_TYPE_MODULE_LISTGEMINI_TYPE_UNKNOWN";
  unk_27D31F8 = 23;
  dword_27D3200 = 5;
  qword_27D3208 = "GEMINI_TYPE_UNKNOWN";
  unk_27D3210 = 19;
  dword_27D3218 = 0;
  qword_27D3220 = "RELATIONSHIP_AUTHORIZEDRELATIONSHIP_OTHERRELATIONSHIP_OWNER";
  *algn_27D3228 = 23;
  dword_27D3230 = 2;
  qword_27D3238 = "RELATIONSHIP_OTHERRELATIONSHIP_OWNER";
  unk_27D3240 = 18;
  dword_27D3248 = 3;
  qword_27D3250 = "RELATIONSHIP_OWNER";
  unk_27D3258 = 18;
  dword_27D3260 = 1;
  qword_27D3268 = "PREFLIGHT_DATA_TYPE_ALLPREFLIGHT_DATA_TYPE_NONEPREFLIGHT_DATA_TYPE_PARTIAL";
  unk_27D3270 = 23;
  dword_27D3278 = 1;
  qword_27D3280 = "PREFLIGHT_DATA_TYPE_NONEPREFLIGHT_DATA_TYPE_PARTIAL";
  unk_27D3288 = 24;
  dword_27D3290 = 0;
  qword_27D3298 = "PREFLIGHT_DATA_TYPE_PARTIAL";
  unk_27D32A0 = 27;
  dword_27D32A8 = 2;
  return result;
}

uint64_t sub_16724F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_167E244(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

void *sub_1672570(void *a1)
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

  sub_1672608(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1311F6C(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void *sub_1672608(void *result)
{
  if (result != &off_277C298)
  {
    v1 = result;
    v2 = result[9];
    if (v2)
    {
      sub_16E4E08(v2);
      operator delete();
    }

    v3 = v1[10];
    if (v3)
    {
      sub_167E65C(v3);
      operator delete();
    }

    v4 = v1[11];
    if (v4)
    {
      sub_1674A44(v4);
      operator delete();
    }

    v5 = v1[12];
    if (v5)
    {
      sub_1675B80(v5);
      operator delete();
    }

    v6 = v1[13];
    if (v6)
    {
      sub_1677E34(v6);
      operator delete();
    }

    v7 = v1[14];
    if (v7)
    {
      sub_1678848(v7);
      operator delete();
    }

    v8 = v1[15];
    if (v8)
    {
      sub_1674E84(v8);
      operator delete();
    }

    result = v1[16];
    if (result)
    {
      sub_16755A0(result);

      operator delete();
    }
  }

  return result;
}

void sub_1672754(void *a1)
{
  sub_1672570(a1);

  operator delete();
}

uint64_t sub_167278C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1543CB4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    result = sub_16E4E44(*(a1 + 72));
    if ((v6 & 2) == 0)
    {
LABEL_8:
      if ((v6 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = sub_16724F4(*(a1 + 80));
  if ((v6 & 4) == 0)
  {
LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = sub_16728B0(*(a1 + 88));
  if ((v6 & 8) == 0)
  {
LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = sub_167292C(*(a1 + 96));
  if ((v6 & 0x10) == 0)
  {
LABEL_11:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    result = sub_1672AA8(*(a1 + 112));
    if ((v6 & 0x40) == 0)
    {
LABEL_13:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = sub_16729DC(*(a1 + 104));
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_27:
  result = sub_1672B10(*(a1 + 120));
  if ((v6 & 0x80) != 0)
  {
LABEL_14:
    result = sub_1672BC8(*(a1 + 128));
  }

LABEL_15:
  if ((v6 & 0x300) != 0)
  {
    *(a1 + 144) = 0;
    *(a1 + 136) = 0;
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

uint64_t sub_16728B0(uint64_t a1)
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

uint64_t sub_167292C(uint64_t result)
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

    goto LABEL_14;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  result = sub_16ED178(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_1675CA4(*(v1 + 40));
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_16729DC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    result = sub_17A0DDC(*(result + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_18:
  result = sub_16E4E44(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_16E5B70(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 56) = 0;
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

uint64_t sub_1672AA8(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1672B10(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_167292C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 16))
  {
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

uint64_t sub_1672BC8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_167292C(v4);
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
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_1672CB0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 6)
    {
      break;
    }

    if (v8 >> 3 > 9)
    {
      if (v11 == 10)
      {
        if (v8 == 82)
        {
          v40 = v7 - 1;
          while (1)
          {
            v41 = v40 + 1;
            *v59 = v40 + 1;
            v42 = *(a1 + 64);
            if (v42 && (v43 = *(a1 + 56), v43 < *v42))
            {
              *(a1 + 56) = v43 + 1;
              v44 = *&v42[2 * v43 + 2];
            }

            else
            {
              v45 = sub_1551DC4(*(a1 + 48));
              v44 = sub_19593CC(a1 + 48, v45);
              v41 = *v59;
            }

            v40 = sub_21F8E38(a3, v44, v41);
            *v59 = v40;
            if (!v40)
            {
              goto LABEL_120;
            }

            if (*a3 <= v40 || *v40 != 82)
            {
              goto LABEL_112;
            }
          }
        }

        goto LABEL_104;
      }

      if (v11 == 11)
      {
        if (v8 != 90)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x40u;
        v53 = *(a1 + 120);
        if (!v53)
        {
          v54 = *(a1 + 8);
          v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
          if (v54)
          {
            v55 = *v55;
          }

          v53 = sub_167CFD4(v55);
          *(a1 + 120) = v53;
          v7 = *v59;
        }

        v24 = sub_222F7B0(a3, v53, v7);
      }

      else
      {
        if (v11 != 12 || v8 != 98)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x80u;
        v28 = *(a1 + 128);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_167D084(v30);
          *(a1 + 128) = v28;
          v7 = *v59;
        }

        v24 = sub_222F840(a3, v28, v7);
      }
    }

    else if (v11 == 7)
    {
      if (v8 != 58)
      {
        goto LABEL_104;
      }

      *(a1 + 16) |= 8u;
      v34 = *(a1 + 96);
      if (!v34)
      {
        v35 = *(a1 + 8);
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v36 = *v36;
        }

        v34 = sub_167D128(v36);
        *(a1 + 96) = v34;
        v7 = *v59;
      }

      v24 = sub_222F600(a3, v34, v7);
    }

    else if (v11 == 8)
    {
      if (v8 != 66)
      {
        goto LABEL_104;
      }

      *(a1 + 16) |= 0x10u;
      v46 = *(a1 + 104);
      if (!v46)
      {
        v47 = *(a1 + 8);
        v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v48 = *v48;
        }

        sub_167D1B0(v48);
        v46 = v49;
        *(a1 + 104) = v49;
        v7 = *v59;
      }

      v24 = sub_222F690(a3, v46, v7);
    }

    else
    {
      if (v11 != 9 || v8 != 74)
      {
        goto LABEL_104;
      }

      *(a1 + 16) |= 0x20u;
      v21 = *(a1 + 112);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_167D240(v23);
        *(a1 + 112) = v21;
        v7 = *v59;
      }

      v24 = sub_222F720(a3, v21, v7);
    }

LABEL_111:
    *v59 = v24;
    if (!v24)
    {
      goto LABEL_120;
    }

LABEL_112:
    if (sub_195ADC0(a3, v59, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 3)
  {
    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_104;
      }

      *(a1 + 16) |= 1u;
      v37 = *(a1 + 72);
      if (!v37)
      {
        v38 = *(a1 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v39 = *v39;
        }

        v37 = sub_16F5828(v39);
        *(a1 + 72) = v37;
        v7 = *v59;
      }

      v24 = sub_21F4D60(a3, v37, v7);
    }

    else if (v11 == 5)
    {
      if (v8 != 42)
      {
        goto LABEL_104;
      }

      *(a1 + 16) |= 2u;
      v50 = *(a1 + 80);
      if (!v50)
      {
        v51 = *(a1 + 8);
        v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v52 = *v52;
        }

        v50 = sub_167EBB4(v52);
        *(a1 + 80) = v50;
        v7 = *v59;
      }

      v24 = sub_2225968(a3, v50, v7);
    }

    else
    {
      if (v11 != 6 || v8 != 50)
      {
        goto LABEL_104;
      }

      *(a1 + 16) |= 4u;
      v25 = *(a1 + 88);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_167CF50(v27);
        *(a1 + 88) = v25;
        v7 = *v59;
      }

      v24 = sub_222F570(a3, v25, v7);
    }

    goto LABEL_111;
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_104;
    }

    v32 = v7 + 1;
    v31 = *v7;
    if (v31 < 0)
    {
      v33 = *v32;
      v31 = (v33 << 7) + v31 - 128;
      if (v33 < 0)
      {
        *v59 = sub_19587DC(v7, v31);
        if (!*v59)
        {
          goto LABEL_120;
        }

        goto LABEL_60;
      }

      v32 = v7 + 2;
    }

    *v59 = v32;
LABEL_60:
    if (v31 > 0xB)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 0x200u;
      *(a1 + 144) = v31;
    }

    goto LABEL_112;
  }

  if (v11 == 2)
  {
    if (v8 == 17)
    {
      v5 |= 0x100u;
      *(a1 + 136) = *v7;
      *v59 = v7 + 8;
      goto LABEL_112;
    }
  }

  else if (v11 == 3 && v8 == 26)
  {
    v13 = v7 - 1;
    while (1)
    {
      v14 = (v13 + 1);
      *v59 = v13 + 1;
      v15 = *(a1 + 40);
      if (v15 && (v16 = *(a1 + 32), v16 < *v15))
      {
        *(a1 + 32) = v16 + 1;
        v17 = *&v15[2 * v16 + 2];
      }

      else
      {
        v18 = *(a1 + 24);
        if (!v18)
        {
          operator new();
        }

        *v20 = v19;
        v20[1] = sub_195A650;
        *v19 = 0;
        v19[1] = 0;
        v19[2] = 0;
        v17 = sub_19593CC(a1 + 24, v19);
        v14 = *v59;
      }

      v13 = sub_1958890(v17, v14, a3);
      *v59 = v13;
      if (!v13)
      {
        goto LABEL_120;
      }

      if (*a3 <= v13 || *v13 != 26)
      {
        goto LABEL_112;
      }
    }
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

    v24 = sub_1952690(v8, v58, v7, a3);
    goto LABEL_111;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_120:
  *v59 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v59;
}

char *sub_16732C8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 144);
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

    v11 = *(a1 + 136);
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
  }

  v12 = *(a1 + 32);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = *(*(a1 + 40) + v13);
      v15 = *(v14 + 23);
      if (v15 < 0 && (v15 = v14[1], v15 > 127) || (*a3 - v6 + 14) < v15)
      {
        v6 = sub_1957480(a3, 3, v14, v6);
      }

      else
      {
        *v6 = 26;
        v6[1] = v15;
        if (*(v14 + 23) < 0)
        {
          v14 = *v14;
        }

        v16 = v6 + 2;
        memcpy(v16, v14, v15);
        v6 = &v16[v15];
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 72);
    *v6 = 34;
    v18 = *(v17 + 44);
    v6[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v6 + 1);
    }

    else
    {
      v19 = v6 + 2;
    }

    v6 = sub_16E5070(v17, v19, a3);
    if ((v5 & 2) == 0)
    {
LABEL_27:
      if ((v5 & 4) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_27;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 80);
  *v6 = 42;
  v21 = *(v20 + 40);
  v6[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v6 + 1);
  }

  else
  {
    v22 = v6 + 2;
  }

  v6 = sub_167E8A4(v20, v22, a3);
  if ((v5 & 4) == 0)
  {
LABEL_28:
    if ((v5 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v23 = *(a1 + 88);
  *v6 = 50;
  v24 = *(v23 + 20);
  v6[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v6 + 1);
  }

  else
  {
    v25 = v6 + 2;
  }

  v6 = sub_1674CB4(v23, v25, a3);
  if ((v5 & 8) == 0)
  {
LABEL_29:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_50:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v26 = *(a1 + 96);
  *v6 = 58;
  v27 = *(v26 + 20);
  v6[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v6 + 1);
  }

  else
  {
    v28 = v6 + 2;
  }

  v6 = sub_1676498(v26, v28, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_30:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_62;
  }

LABEL_56:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v29 = *(a1 + 104);
  *v6 = 66;
  v30 = *(v29 + 20);
  v6[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, v6 + 1);
  }

  else
  {
    v31 = v6 + 2;
  }

  v6 = sub_16782E0(v29, v31, a3);
  if ((v5 & 0x20) != 0)
  {
LABEL_62:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v32 = *(a1 + 112);
    *v6 = 74;
    v33 = *(v32 + 20);
    v6[1] = v33;
    if (v33 > 0x7F)
    {
      v34 = sub_19575D0(v33, v6 + 1);
    }

    else
    {
      v34 = v6 + 2;
    }

    v6 = sub_1678C60(v32, v34, a3);
  }

LABEL_68:
  v35 = *(a1 + 56);
  if (v35)
  {
    for (i = 0; i != v35; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v37 = *(*(a1 + 64) + 8 * i + 8);
      *v6 = 82;
      v38 = *(v37 + 20);
      v6[1] = v38;
      if (v38 > 0x7F)
      {
        v39 = sub_19575D0(v38, v6 + 1);
      }

      else
      {
        v39 = v6 + 2;
      }

      v6 = sub_1543E88(v37, v39, a3);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v40 = *(a1 + 120);
    *v6 = 90;
    v41 = *(v40 + 20);
    v6[1] = v41;
    if (v41 > 0x7F)
    {
      v42 = sub_19575D0(v41, v6 + 1);
    }

    else
    {
      v42 = v6 + 2;
    }

    v6 = sub_1675248(v40, v42, a3);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v43 = *(a1 + 128);
    *v6 = 98;
    v44 = *(v43 + 20);
    v6[1] = v44;
    if (v44 > 0x7F)
    {
      v45 = sub_19575D0(v44, v6 + 1);
    }

    else
    {
      v45 = v6 + 2;
    }

    v6 = sub_16758B0(v43, v45, a3);
  }

  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v49)
  {
    v51 = v49;
    memcpy(v6, v50, v49);
    v6 += v51;
    return v6;
  }

  return sub_1957130(a3, v50, v49, v6);
}