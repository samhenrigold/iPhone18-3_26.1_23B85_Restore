BOOL sub_160E974(uint64_t a1)
{
  if (!sub_1601B14(a1 + 32))
  {
    return 0;
  }

  v2 = *(a1 + 208);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1601B14(*(*(a1 + 216) + 8 * v2) + 48);
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 16);
  if ((v5 & 0x40) != 0)
  {
    if (!sub_16E5370(*(a1 + 272)))
    {
      return 0;
    }

    v5 = *(a1 + 16);
  }

  if ((v5 & 0x80) == 0)
  {
    goto LABEL_12;
  }

  if (!sub_1608210(*(a1 + 280)))
  {
    return 0;
  }

  v5 = *(a1 + 16);
LABEL_12:
  if ((v5 & 0x200) == 0)
  {
    return 1;
  }

  v8 = *(a1 + 296);
  v9 = *(v8 + 32);
  do
  {
    v6 = v9 < 1;
    if (v9 < 1)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = sub_1601B14(*(*(v8 + 40) + 8 * v9) + 48);
    v9 = v10;
  }

  while ((v11 & 1) != 0);
  return v6;
}

uint64_t sub_160EA58(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_12E6204((a1 + 72));
  sub_1956ABC(a1 + 56);
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_160EB1C(uint64_t a1)
{
  sub_160EA58(a1);

  operator delete();
}

uint64_t sub_160EB54(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 5)
    {
      if (v8 >> 3 > 2)
      {
        switch(v11)
        {
          case 3u:
            if (v8 != 29)
            {
              goto LABEL_109;
            }

            v41 = *v7;
            v40 = v7 + 4;
            v5 |= 2u;
            *(a1 + 104) = v41;
            break;
          case 4u:
            if (v8 != 37)
            {
              goto LABEL_109;
            }

            v48 = *v7;
            v40 = v7 + 4;
            v5 |= 4u;
            *(a1 + 108) = v48;
            break;
          case 5u:
            if (v8 == 40)
            {
              v12 = v7 - 1;
              while (1)
              {
                *v62 = v12 + 1;
                v13 = v12[1];
                if (v13 < 0)
                {
                  v14 = (v12[2] << 7) + v13;
                  v13 = (v14 - 128);
                  if (v12[2] < 0)
                  {
                    v12 = sub_19587DC((v12 + 1), (v14 - 128));
                    v13 = v15;
                  }

                  else
                  {
                    v12 += 3;
                  }
                }

                else
                {
                  v12 += 2;
                }

                *v62 = v12;
                v16 = *(a1 + 40);
                if (v16 == *(a1 + 44))
                {
                  v17 = v16 + 1;
                  sub_1959094((a1 + 40), v16 + 1);
                  *(*(a1 + 48) + 8 * v16) = v13;
                  v12 = *v62;
                }

                else
                {
                  *(*(a1 + 48) + 8 * v16) = v13;
                  v17 = v16 + 1;
                }

                *(a1 + 40) = v17;
                if (!v12)
                {
                  goto LABEL_122;
                }

                if (*a3 <= v12 || *v12 != 40)
                {
                  goto LABEL_117;
                }
              }
            }

            if (v8 != 42)
            {
              goto LABEL_109;
            }

            v58 = (a1 + 40);
            goto LABEL_108;
          default:
            goto LABEL_109;
        }

        *v62 = v40;
        goto LABEL_117;
      }

      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 1u;
        v33 = *(a1 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        v35 = sub_194DB04((a1 + 96), v34);
        v36 = sub_1958890(v35, *v62, a3);
LABEL_116:
        *v62 = v36;
        if (!v36)
        {
          goto LABEL_122;
        }

        goto LABEL_117;
      }

      if (v11 != 2)
      {
        goto LABEL_109;
      }

      if (v8 == 16)
      {
        v24 = v7 - 1;
        while (1)
        {
          *v62 = v24 + 1;
          v25 = v24[1];
          if (v25 < 0)
          {
            v26 = (v24[2] << 7) + v25;
            v25 = (v26 - 128);
            if (v24[2] < 0)
            {
              v24 = sub_19587DC((v24 + 1), (v26 - 128));
              v25 = v27;
            }

            else
            {
              v24 += 3;
            }
          }

          else
          {
            v24 += 2;
          }

          *v62 = v24;
          v28 = *(a1 + 24);
          if (v28 == *(a1 + 28))
          {
            v29 = v28 + 1;
            sub_1959094((a1 + 24), v28 + 1);
            *(*(a1 + 32) + 8 * v28) = v25;
            v24 = *v62;
          }

          else
          {
            *(*(a1 + 32) + 8 * v28) = v25;
            v29 = v28 + 1;
          }

          *(a1 + 24) = v29;
          if (!v24)
          {
            goto LABEL_122;
          }

          if (*a3 <= v24 || *v24 != 16)
          {
            goto LABEL_117;
          }
        }
      }

      if (v8 != 18)
      {
        goto LABEL_109;
      }

      v58 = (a1 + 24);
LABEL_108:
      v36 = sub_1958928(v58, v7, a3);
      goto LABEL_116;
    }

    if (v8 >> 3 <= 7)
    {
      if (v11 == 6)
      {
        if (v8 != 48)
        {
          goto LABEL_109;
        }

        v5 |= 8u;
        v38 = v7 + 1;
        v37 = *v7;
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_71;
        }

        v39 = *v38;
        v37 = (v39 << 7) + v37 - 128;
        if ((v39 & 0x80000000) == 0)
        {
          v38 = v7 + 2;
LABEL_71:
          *v62 = v38;
          *(a1 + 112) = v37;
          goto LABEL_117;
        }

        v54 = sub_19587DC(v7, v37);
        *v62 = v54;
        *(a1 + 112) = v55;
        if (!v54)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (v11 != 7 || v8 != 56)
        {
          goto LABEL_109;
        }

        v5 |= 0x20u;
        v31 = v7 + 1;
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if ((v32 & 0x80000000) == 0)
        {
          v31 = v7 + 2;
LABEL_62:
          *v62 = v31;
          *(a1 + 128) = v30 != 0;
          goto LABEL_117;
        }

        v52 = sub_19587DC(v7, v30);
        *v62 = v52;
        *(a1 + 128) = v53 != 0;
        if (!v52)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_117;
    }

    if (v11 == 8)
    {
      break;
    }

    if (v11 != 9)
    {
      if (v11 == 20 && v8 == 162)
      {
        v18 = v7 - 2;
        while (1)
        {
          v19 = v18 + 2;
          *v62 = v18 + 2;
          v20 = *(a1 + 88);
          if (v20 && (v21 = *(a1 + 80), v21 < *v20))
          {
            *(a1 + 80) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_16F5828(*(a1 + 72));
            v22 = sub_19593CC(a1 + 72, v23);
            v19 = *v62;
          }

          v18 = sub_21F4D60(a3, v22, v19);
          *v62 = v18;
          if (!v18)
          {
            goto LABEL_122;
          }

          if (*a3 <= v18 || *v18 != 418)
          {
            goto LABEL_117;
          }
        }
      }

      goto LABEL_109;
    }

    if (v8 != 72)
    {
      goto LABEL_109;
    }

    v5 |= 0x10u;
    v50 = v7 + 1;
    v49 = *v7;
    if ((v49 & 0x8000000000000000) == 0)
    {
      goto LABEL_95;
    }

    v51 = *v50;
    v49 = (v51 << 7) + v49 - 128;
    if ((v51 & 0x80000000) == 0)
    {
      v50 = v7 + 2;
LABEL_95:
      *v62 = v50;
      *(a1 + 120) = v49;
      goto LABEL_117;
    }

    v56 = sub_19587DC(v7, v49);
    *v62 = v56;
    *(a1 + 120) = v57;
    if (!v56)
    {
      goto LABEL_122;
    }

LABEL_117:
    if (sub_195ADC0(a3, v62, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 64)
  {
    v42 = v7 - 1;
    while (1)
    {
      *v62 = v42 + 1;
      v43 = v42[1];
      if (v43 < 0)
      {
        v44 = (v42[2] << 7) + v43;
        v43 = (v44 - 128);
        if (v42[2] < 0)
        {
          v42 = sub_19587DC((v42 + 1), (v44 - 128));
          v43 = v45;
        }

        else
        {
          v42 += 3;
        }
      }

      else
      {
        v42 += 2;
      }

      *v62 = v42;
      v46 = *(a1 + 56);
      if (v46 == *(a1 + 60))
      {
        v47 = v46 + 1;
        sub_1959094((a1 + 56), v46 + 1);
        *(*(a1 + 64) + 8 * v46) = v43;
        v42 = *v62;
      }

      else
      {
        *(*(a1 + 64) + 8 * v46) = v43;
        v47 = v46 + 1;
      }

      *(a1 + 56) = v47;
      if (!v42)
      {
        goto LABEL_122;
      }

      if (*a3 <= v42 || *v42 != 64)
      {
        goto LABEL_117;
      }
    }
  }

  if (v8 == 66)
  {
    v58 = (a1 + 56);
    goto LABEL_108;
  }

LABEL_109:
  if (v8)
  {
    v59 = (v8 & 7) == 4;
  }

  else
  {
    v59 = 1;
  }

  if (!v59)
  {
    v60 = *(a1 + 8);
    if (v60)
    {
      v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v61 = sub_11F1920((a1 + 8));
      v7 = *v62;
    }

    v36 = sub_1952690(v8, v61, v7, a3);
    goto LABEL_116;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_122:
  *v62 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v62;
}

char *sub_160F184(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

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

      v9 = *(*(a1 + 32) + 8 * i);
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

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v10)
    {
      v10 = sub_225EB68(a3, v10);
    }

    v14 = *(a1 + 104);
    *v10 = 29;
    *(v10 + 1) = v14;
    v10 += 5;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v10)
    {
      v10 = sub_225EB68(a3, v10);
    }

    v15 = *(a1 + 108);
    *v10 = 37;
    *(v10 + 1) = v15;
    v10 += 5;
  }

  v16 = *(a1 + 40);
  if (v16 < 1)
  {
    v19 = v10;
  }

  else
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v10)
      {
        v10 = sub_225EB68(a3, v10);
      }

      v18 = *(*(a1 + 48) + 8 * j);
      *v10 = 40;
      v10[1] = v18;
      if (v18 > 0x7F)
      {
        v10[1] = v18 | 0x80;
        v20 = v18 >> 7;
        v10[2] = v18 >> 7;
        v19 = v10 + 3;
        if (v18 >= 0x4000)
        {
          LOBYTE(v21) = v10[2];
          do
          {
            *(v19 - 1) = v21 | 0x80;
            v21 = v20 >> 7;
            *v19++ = v20 >> 7;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
        }
      }

      else
      {
        v19 = v10 + 2;
      }

      v10 = v19;
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 112);
    *v19 = 48;
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
          v19 = (v25 >> 7);
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

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v27 = *(a1 + 128);
    *v23 = 56;
    v23[1] = v27;
    v23 += 2;
  }

  v28 = *(a1 + 56);
  if (v28 < 1)
  {
    v31 = v23;
  }

  else
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v30 = *(*(a1 + 64) + 8 * k);
      *v23 = 64;
      v23[1] = v30;
      if (v30 > 0x7F)
      {
        v23[1] = v30 | 0x80;
        v32 = v30 >> 7;
        v23[2] = v30 >> 7;
        v31 = v23 + 3;
        if (v30 >= 0x4000)
        {
          LOBYTE(v33) = v23[2];
          do
          {
            *(v31 - 1) = v33 | 0x80;
            v33 = v32 >> 7;
            *v31++ = v32 >> 7;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
        }
      }

      else
      {
        v31 = v23 + 2;
      }

      v23 = v31;
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v36 = *(a1 + 120);
    *v31 = 72;
    v31[1] = v36;
    if (v36 > 0x7F)
    {
      v31[1] = v36 | 0x80;
      v37 = v36 >> 7;
      v31[2] = v36 >> 7;
      v35 = v31 + 3;
      if (v36 >= 0x4000)
      {
        LOBYTE(v31) = v31[2];
        do
        {
          *(v35 - 1) = v31 | 0x80;
          v31 = (v37 >> 7);
          *v35++ = v37 >> 7;
          v38 = v37 >> 14;
          v37 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v35 = v31 + 2;
    }
  }

  else
  {
    v35 = v31;
  }

  v39 = *(a1 + 80);
  if (v39)
  {
    for (m = 0; m != v39; ++m)
    {
      if (*a3 <= v35)
      {
        v35 = sub_225EB68(a3, v35);
      }

      v41 = *(*(a1 + 88) + 8 * m + 8);
      *v35 = 418;
      v42 = *(v41 + 44);
      v35[2] = v42;
      if (v42 > 0x7F)
      {
        v43 = sub_19575D0(v42, v35 + 2);
      }

      else
      {
        v43 = v35 + 3;
      }

      v35 = sub_16E5070(v41, v43, a3);
    }
  }

  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v35;
  }

  v46 = v44 & 0xFFFFFFFFFFFFFFFCLL;
  v47 = *(v46 + 31);
  if (v47 < 0)
  {
    v48 = *(v46 + 8);
    v47 = *(v46 + 16);
  }

  else
  {
    v48 = (v46 + 8);
  }

  if ((*a3 - v35) >= v47)
  {
    v49 = v47;
    memcpy(v35, v48, v47);
    v35 += v49;
    return v35;
  }

  return sub_1957130(a3, v48, v47, v35);
}

uint64_t sub_160F680(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 24);
  v4 = sub_1959F14((a1 + 40));
  v5 = *(a1 + 40);
  v6 = sub_1959F14((a1 + 56));
  v7 = *(a1 + 80);
  v8 = v2 + v4 + v3 + v5 + v6 + *(a1 + 56) + 2 * v7;
  v9 = *(a1 + 88);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v13 = sub_16E51F0(v12);
      v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      v11 -= 8;
    }

    while (v11);
  }

  v14 = *(a1 + 16);
  if ((v14 & 0x3F) != 0)
  {
    if (v14)
    {
      v15 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v8 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v18 = v8 + 5;
    if ((v14 & 2) == 0)
    {
      v18 = v8;
    }

    if ((v14 & 4) != 0)
    {
      v18 += 5;
    }

    if ((v14 & 8) != 0)
    {
      v18 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v14 & 0x10) != 0)
    {
      v18 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v8 = v18 + ((v14 >> 4) & 2);
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v8 += v22;
  }

  *(a1 + 20) = v8;
  return v8;
}

uint64_t sub_160F838(uint64_t a1)
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
  sub_16370A4((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_160F904(uint64_t a1)
{
  sub_160F838(a1);

  operator delete();
}

uint64_t sub_160F93C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_15FAD70(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v6 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v7 = 0;
      *(v7 + 23) = 0;
    }

    if ((v6 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v8 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
    }
  }

LABEL_15:
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_160FA2C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  if (sub_195ADC0(a3, v35, a3[11].u32[1]))
  {
    return *v35;
  }

  while (1)
  {
    v6 = (*v35 + 1);
    v7 = **v35;
    if (**v35 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v35, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v35 + 2);
      }
    }

    *v35 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 != 1)
      {
        if (v10 == 2 && v7 == 18)
        {
          v12 = v6 - 1;
          while (1)
          {
            v13 = (v12 + 1);
            *v35 = v12 + 1;
            v14 = *(a1 + 40);
            if (v14 && (v15 = *(a1 + 32), v15 < *v14))
            {
              *(a1 + 32) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              v17 = *(a1 + 24);
              if (!v17)
              {
                operator new();
              }

              *v19 = v18;
              v19[1] = sub_195A650;
              *v18 = 0;
              v18[1] = 0;
              v18[2] = 0;
              v16 = sub_19593CC(a1 + 24, v18);
              v13 = *v35;
            }

            v12 = sub_1958890(v16, v13, a3);
            *v35 = v12;
            if (!v12)
            {
              goto LABEL_59;
            }

            if (*a3 <= v12 || *v12 != 18)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_46;
      }

      if (v7 != 10)
      {
        goto LABEL_46;
      }

      *(a1 + 16) |= 1u;
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v28 = (a1 + 72);
LABEL_45:
      v30 = sub_194DB04(v28, v27);
      v31 = sub_1958890(v30, *v35, a3);
      goto LABEL_53;
    }

    if (v10 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_46;
      }

      *(a1 + 16) |= 2u;
      v29 = *(a1 + 8);
      v27 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v27 = *v27;
      }

      v28 = (a1 + 80);
      goto LABEL_45;
    }

    if (v10 == 4 && v7 == 34)
    {
      v20 = v6 - 1;
      while (1)
      {
        v21 = v20 + 1;
        *v35 = v20 + 1;
        v22 = *(a1 + 64);
        if (v22 && (v23 = *(a1 + 56), v23 < *v22))
        {
          *(a1 + 56) = v23 + 1;
          v24 = *&v22[2 * v23 + 2];
        }

        else
        {
          sub_1618808(*(a1 + 48));
          v24 = sub_19593CC(a1 + 48, v25);
          v21 = *v35;
        }

        v20 = sub_2228B88(a3, v24, v21);
        *v35 = v20;
        if (!v20)
        {
          goto LABEL_59;
        }

        if (*a3 <= v20 || *v20 != 34)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_46:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v33 = *(a1 + 8);
    if (v33)
    {
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v34 = sub_11F1920((a1 + 8));
      v6 = *v35;
    }

    v31 = sub_1952690(v7, v34, v6, a3);
LABEL_53:
    *v35 = v31;
    if (!v31)
    {
      goto LABEL_59;
    }

LABEL_54:
    if (sub_195ADC0(a3, v35, a3[11].u32[1]))
    {
      return *v35;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v35;
  }

LABEL_59:
  *v35 = 0;
  return *v35;
}

char *sub_160FD48(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a1 + 40) + v8);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = v9[1], v10 > 127) || (*a3 - v4 + 14) < v10)
      {
        v4 = sub_1957480(a3, 2, v9, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v10;
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v11 = v4 + 2;
        memcpy(v11, v9, v10);
        v4 = &v11[v10];
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 3, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(*(a1 + 64) + 8 * i + 8);
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

      v4 = sub_1610504(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v20)
  {
    v22 = v20;
    memcpy(v4, v21, v20);
    v4 += v22;
    return v4;
  }

  return sub_1957130(a3, v21, v20, v4);
}

uint64_t sub_160FF64(uint64_t a1)
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

  v8 = *(a1 + 56);
  v9 = v4 + v8;
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
      v14 = sub_161069C(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 3) != 0)
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
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v9 += v25;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_16100FC(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1637F18((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
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
  }

  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_16102A0(void *a1)
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

void sub_1610314(void *a1)
{
  sub_16102A0(a1);

  operator delete();
}

char *sub_161034C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v21, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v21 + 1;
    v8 = *v21;
    if (*v21 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v21, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v21 + 2;
      }
    }

    v21 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 25)
        {
          v17 = *v7;
          v13 = v7 + 8;
          v5 |= 4u;
          *(a1 + 40) = v17;
          goto LABEL_23;
        }
      }

      else if (v11 == 4 && v8 == 33)
      {
        v15 = *v7;
        v13 = v7 + 8;
        v5 |= 8u;
        *(a1 + 48) = v15;
        goto LABEL_23;
      }
    }

    else if (v11 == 1)
    {
      if (v8 == 9)
      {
        v16 = *v7;
        v13 = v7 + 8;
        v5 |= 1u;
        *(a1 + 24) = v16;
        goto LABEL_23;
      }
    }

    else if (v11 == 2 && v8 == 17)
    {
      v14 = *v7;
      v13 = v7 + 8;
      v5 |= 2u;
      *(a1 + 32) = v14;
LABEL_23:
      v21 = v13;
      goto LABEL_24;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v20 = sub_11F1920((a1 + 8));
      v7 = v21;
    }

    v21 = sub_1952690(v8, v20, v7, a3);
    if (!v21)
    {
      goto LABEL_37;
    }

LABEL_24:
    if (sub_195ADC0(a3, &v21, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_37:
  v21 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v21;
}

char *sub_1610504(uint64_t a1, char *__dst, unint64_t *a3)
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
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 40);
  *v4 = 25;
  *(v4 + 1) = v9;
  v4 += 9;
  if ((v6 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 48);
    *v4 = 33;
    *(v4 + 1) = v10;
    v4 += 9;
  }

LABEL_18:
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

uint64_t sub_161069C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 4) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0xF) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
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

    v3 += v7;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1610720(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1637128(a1 + 8);
  sub_12E6204(a1 + 5);
  sub_1956AFC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16107B4(void *a1)
{
  sub_1610720(a1);

  operator delete();
}

uint64_t sub_16107EC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  if ((sub_195ADC0(a3, v35, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (*v35 + 1);
      v7 = **v35;
      if (**v35 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(*v35, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = (*v35 + 2);
        }
      }

      *v35 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        if (v7 == 26)
        {
          v21 = v6 - 1;
          while (1)
          {
            v22 = v21 + 1;
            *v35 = v21 + 1;
            v23 = *(a1 + 80);
            if (v23 && (v24 = *(a1 + 72), v24 < *v23))
            {
              *(a1 + 72) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v26 = sub_16897B4(*(a1 + 64));
              v25 = sub_19593CC(a1 + 64, v26);
              v22 = *v35;
            }

            v21 = sub_222B09C(a3, v25, v22);
            *v35 = v21;
            if (!v21)
            {
              goto LABEL_56;
            }

            if (*a3 <= v21 || *v21 != 26)
            {
              goto LABEL_51;
            }
          }
        }
      }

      else if (v10 == 2)
      {
        if (v7 == 18)
        {
          v15 = v6 - 1;
          while (1)
          {
            v16 = v15 + 1;
            *v35 = v15 + 1;
            v17 = *(a1 + 56);
            if (v17 && (v18 = *(a1 + 48), v18 < *v17))
            {
              *(a1 + 48) = v18 + 1;
              v19 = *&v17[2 * v18 + 2];
            }

            else
            {
              v20 = sub_16F5828(*(a1 + 40));
              v19 = sub_19593CC(a1 + 40, v20);
              v16 = *v35;
            }

            v15 = sub_21F4D60(a3, v19, v16);
            *v35 = v15;
            if (!v15)
            {
              goto LABEL_56;
            }

            if (*a3 <= v15 || *v15 != 18)
            {
              goto LABEL_51;
            }
          }
        }
      }

      else if (v10 == 1 && v7 == 10)
      {
        v27 = v6 - 1;
        while (1)
        {
          v28 = (v27 + 1);
          *v35 = v27 + 1;
          v29 = *(a1 + 32);
          if (v29 && (v30 = *(a1 + 24), v30 < *v29))
          {
            *(a1 + 24) = v30 + 1;
            v31 = *&v29[2 * v30 + 2];
          }

          else
          {
            v32 = *(a1 + 16);
            if (!v32)
            {
              operator new();
            }

            *v34 = v33;
            v34[1] = sub_195A650;
            *v33 = 0;
            v33[1] = 0;
            v33[2] = 0;
            v31 = sub_19593CC(a1 + 16, v33);
            v28 = *v35;
          }

          v27 = sub_1958890(v31, v28, a3);
          *v35 = v27;
          if (!v27)
          {
            goto LABEL_56;
          }

          if (*a3 <= v27 || *v27 != 10)
          {
            goto LABEL_51;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
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
        v6 = *v35;
      }

      *v35 = sub_1952690(v7, v14, v6, a3);
      if (!*v35)
      {
        goto LABEL_56;
      }

LABEL_51:
      if (sub_195ADC0(a3, v35, a3[11].u32[1]))
      {
        return *v35;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return *v35;
    }

LABEL_56:
    *v35 = 0;
  }

  return *v35;
}

char *sub_1610B0C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 32) + v7);
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

  v11 = *(a1 + 48);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 56) + 8 * i + 8);
      *__dst = 18;
      v14 = *(v13 + 44);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_16E5070(v13, v15, a3);
    }
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

      __dst = sub_1689308(v18, v20, a3);
    }
  }

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

uint64_t sub_1610D68(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 < 1)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v3 = (*(a1 + 32) + 8);
    v4 = *(a1 + 24);
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

  v8 = *(a1 + 48);
  v9 = v4 + v8;
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
      v14 = sub_16E51F0(v13);
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
      v21 = sub_16895A0(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v16 += v25;
  }

  *(a1 + 88) = v16;
  return v16;
}

uint64_t sub_1610ECC(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C((a1 + 112));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_1956AFC((a1 + 72));
  sub_1636C84((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1610FB4(uint64_t a1)
{
  sub_1610ECC(a1);

  operator delete();
}

uint64_t sub_1610FEC(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_15FA36C(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  result = sub_12A41D0(a1 + 72);
  v6 = *(a1 + 16);
  if ((v6 & 7) != 0)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v8 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    v7 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v9 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
    }
  }

LABEL_21:
  if ((v6 & 0xF8) != 0)
  {
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  if ((v6 & 0xF00) != 0)
  {
    *(a1 + 148) = 0;
    *(a1 + 140) = 0;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_1611140(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
        if (v8 != 10)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 96);
        goto LABEL_47;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_91;
        }

        v37 = v7 + 1;
        v36 = *v7;
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v38 = *v37;
        v36 = (v38 << 7) + v36 - 128;
        if (v38 < 0)
        {
          *v71 = sub_19587DC(v7, v36);
          if (!*v71)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v37 = v7 + 2;
LABEL_54:
          *v71 = v37;
        }

        if (v36 > 0x50)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 120) = v36;
        }

        goto LABEL_99;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 2u;
        v31 = *(a1 + 8);
        v12 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v12 = *v12;
        }

        v13 = (a1 + 104);
        goto LABEL_47;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 4u;
        v32 = *(a1 + 8);
        v12 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v12 = *v12;
        }

        v13 = (a1 + 112);
LABEL_47:
        v33 = sub_194DB04(v13, v12);
        v34 = sub_1958890(v33, *v71, a3);
        goto LABEL_98;
      case 5u:
        if (v8 != 45)
        {
          goto LABEL_91;
        }

        v24 = *v7;
        v23 = v7 + 4;
        v5 |= 0x10u;
        *(a1 + 124) = v24;
        goto LABEL_73;
      case 6u:
        if (v8 != 53)
        {
          goto LABEL_91;
        }

        v39 = *v7;
        v23 = v7 + 4;
        v5 |= 0x20u;
        *(a1 + 128) = v39;
        goto LABEL_73;
      case 7u:
        if (v8 != 61)
        {
          goto LABEL_91;
        }

        v48 = *v7;
        v23 = v7 + 4;
        v5 |= 0x40u;
        *(a1 + 132) = v48;
        goto LABEL_73;
      case 8u:
        if (v8 != 69)
        {
          goto LABEL_91;
        }

        v35 = *v7;
        v23 = v7 + 4;
        v5 |= 0x80u;
        *(a1 + 136) = v35;
LABEL_73:
        *v71 = v23;
        goto LABEL_99;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_91;
        }

        v5 |= 0x100u;
        v58 = v7 + 1;
        v57 = *v7;
        if ((v57 & 0x8000000000000000) == 0)
        {
          goto LABEL_90;
        }

        v59 = *v58;
        v57 = (v59 << 7) + v57 - 128;
        if (v59 < 0)
        {
          v69 = sub_19587DC(v7, v57);
          *v71 = v69;
          *(a1 + 140) = v70 != 0;
          if (!v69)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v58 = v7 + 2;
LABEL_90:
          *v71 = v58;
          *(a1 + 140) = v57 != 0;
        }

        goto LABEL_99;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_91;
        }

        v5 |= 0x200u;
        v29 = v7 + 1;
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if (v30 < 0)
        {
          v67 = sub_19587DC(v7, v28);
          *v71 = v67;
          *(a1 + 141) = v68 != 0;
          if (!v67)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_38:
          *v71 = v29;
          *(a1 + 141) = v28 != 0;
        }

        goto LABEL_99;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_91;
        }

        v49 = v7 - 1;
        while (1)
        {
          v50 = (v49 + 1);
          *v71 = v49 + 1;
          v51 = *(a1 + 40);
          if (v51 && (v52 = *(a1 + 32), v52 < *v51))
          {
            *(a1 + 32) = v52 + 1;
            v53 = *&v51[2 * v52 + 2];
          }

          else
          {
            v54 = *(a1 + 24);
            if (!v54)
            {
              operator new();
            }

            *v56 = v55;
            v56[1] = sub_195A650;
            *v55 = 0;
            v55[1] = 0;
            v55[2] = 0;
            v53 = sub_19593CC(a1 + 24, v55);
            v50 = *v71;
          }

          v49 = sub_1958890(v53, v50, a3);
          *v71 = v49;
          if (!v49)
          {
            goto LABEL_115;
          }

          if (*a3 <= v49 || *v49 != 90)
          {
            goto LABEL_99;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_91;
        }

        v17 = v7 - 1;
        while (1)
        {
          v18 = v17 + 1;
          *v71 = v17 + 1;
          v19 = *(a1 + 64);
          if (v19 && (v20 = *(a1 + 56), v20 < *v19))
          {
            *(a1 + 56) = v20 + 1;
            v21 = *&v19[2 * v20 + 2];
          }

          else
          {
            v22 = sub_161868C(*(a1 + 48));
            v21 = sub_19593CC(a1 + 48, v22);
            v18 = *v71;
          }

          v17 = sub_2228AF8(a3, v21, v18);
          *v71 = v17;
          if (!v17)
          {
            goto LABEL_115;
          }

          if (*a3 <= v17 || *v17 != 98)
          {
            goto LABEL_99;
          }
        }

      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_91;
        }

        v5 |= 0x800u;
        v25 = v7 + 1;
        v26 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        v27 = *v25;
        v26 = v26 + (v27 << 7) - 128;
        if (v27 < 0)
        {
          v65 = sub_1958770(v7, v26);
          *v71 = v65;
          *(a1 + 152) = v66;
          if (!v65)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v25 = v7 + 2;
LABEL_33:
          *v71 = v25;
          *(a1 + 152) = v26;
        }

        goto LABEL_99;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_91;
        }

        v40 = v7 - 1;
        while (1)
        {
          v41 = (v40 + 1);
          *v71 = v40 + 1;
          v42 = *(a1 + 88);
          if (v42 && (v43 = *(a1 + 80), v43 < *v42))
          {
            *(a1 + 80) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = *(a1 + 72);
            if (!v45)
            {
              operator new();
            }

            *v47 = v46;
            v47[1] = sub_195A650;
            *v46 = 0;
            v46[1] = 0;
            v46[2] = 0;
            v44 = sub_19593CC(a1 + 72, v46);
            v41 = *v71;
          }

          v40 = sub_1958890(v44, v41, a3);
          *v71 = v40;
          if (!v40)
          {
            goto LABEL_115;
          }

          if (*a3 <= v40 || *v40 != 114)
          {
            goto LABEL_99;
          }
        }

      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_91;
        }

        v5 |= 0x400u;
        v15 = v7 + 1;
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v63 = sub_19587DC(v7, v14);
          *v71 = v63;
          *(a1 + 144) = v64;
          if (!v63)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v15 = v7 + 2;
LABEL_16:
          *v71 = v15;
          *(a1 + 144) = v14;
        }

        goto LABEL_99;
      default:
LABEL_91:
        if (v8)
        {
          v60 = (v8 & 7) == 4;
        }

        else
        {
          v60 = 1;
        }

        if (!v60)
        {
          v61 = *(a1 + 8);
          if (v61)
          {
            v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v62 = sub_11F1920((a1 + 8));
            v7 = *v71;
          }

          v34 = sub_1952690(v8, v62, v7, a3);
LABEL_98:
          *v71 = v34;
          if (!v34)
          {
            goto LABEL_115;
          }

LABEL_99:
          if (sub_195ADC0(a3, v71, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_115:
          *v71 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v71;
    }
  }
}

char *sub_1611820(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 120);
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

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 3, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v6 & 4) == 0)
    {
LABEL_14:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_14;
  }

  v7 = sub_128AEEC(a3, 4, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 0x10) == 0)
  {
LABEL_15:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_23:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v11 = *(a1 + 124);
  *v7 = 45;
  *(v7 + 1) = v11;
  v7 += 5;
  if ((v6 & 0x20) == 0)
  {
LABEL_16:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_26:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v12 = *(a1 + 128);
  *v7 = 53;
  *(v7 + 1) = v12;
  v7 += 5;
  if ((v6 & 0x40) == 0)
  {
LABEL_17:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 132);
  *v7 = 61;
  *(v7 + 1) = v13;
  v7 += 5;
  if ((v6 & 0x80) == 0)
  {
LABEL_18:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_32:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v14 = *(a1 + 136);
  *v7 = 69;
  *(v7 + 1) = v14;
  v7 += 5;
  if ((v6 & 0x100) == 0)
  {
LABEL_19:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v15 = *(a1 + 140);
  *v7 = 72;
  v7[1] = v15;
  v7 += 2;
  if ((v6 & 0x200) != 0)
  {
LABEL_38:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 141);
    *v7 = 80;
    v7[1] = v16;
    v7 += 2;
  }

LABEL_41:
  v17 = *(a1 + 32);
  if (v17 >= 1)
  {
    v18 = 8;
    do
    {
      v19 = *(*(a1 + 40) + v18);
      v20 = *(v19 + 23);
      if (v20 < 0 && (v20 = v19[1], v20 > 127) || (*a3 - v7 + 14) < v20)
      {
        v7 = sub_1957480(a3, 11, v19, v7);
      }

      else
      {
        *v7 = 90;
        v7[1] = v20;
        if (*(v19 + 23) < 0)
        {
          v19 = *v19;
        }

        v21 = v7 + 2;
        memcpy(v7 + 2, v19, v20);
        v7 = &v21[v20];
      }

      v18 += 8;
      --v17;
    }

    while (v17);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v24 = *(*(a1 + 64) + 8 * i + 8);
      *v7 = 98;
      v25 = *(v24 + 20);
      v7[1] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, v7 + 1);
      }

      else
      {
        v26 = v7 + 2;
      }

      v7 = sub_160F184(v24, v26, a3);
    }
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v28 = *(a1 + 152);
    *v7 = 104;
    v7[1] = v28;
    if (v28 > 0x7F)
    {
      v7[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v7[2] = v28 >> 7;
      v27 = v7 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v30) = v7[2];
        do
        {
          *(v27 - 1) = v30 | 0x80;
          v30 = v29 >> 7;
          *v27++ = v29 >> 7;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v27 = v7 + 2;
    }
  }

  else
  {
    v27 = v7;
  }

  v32 = *(a1 + 80);
  if (v32 >= 1)
  {
    v33 = 8;
    do
    {
      v34 = *(*(a1 + 88) + v33);
      v35 = *(v34 + 23);
      if (v35 < 0 && (v35 = v34[1], v35 > 127) || (*a3 - v27 + 14) < v35)
      {
        v27 = sub_1957480(a3, 14, v34, v27);
      }

      else
      {
        *v27 = 114;
        v27[1] = v35;
        if (*(v34 + 23) < 0)
        {
          v34 = *v34;
        }

        v36 = v27 + 2;
        memcpy(v27 + 2, v34, v35);
        v27 = &v36[v35];
      }

      v33 += 8;
      --v32;
    }

    while (v32);
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v38 = *(a1 + 144);
    *v27 = 120;
    v27[1] = v38;
    if (v38 > 0x7F)
    {
      v27[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v27[2] = v38 >> 7;
      v37 = v27 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v27) = v27[2];
        do
        {
          *(v37 - 1) = v27 | 0x80;
          v27 = (v39 >> 7);
          *v37++ = v39 >> 7;
          v40 = v39 >> 14;
          v39 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v37 = v27 + 2;
    }
  }

  else
  {
    v37 = v27;
  }

  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v37;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFCLL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if ((*a3 - v37) >= v44)
  {
    v46 = v44;
    memcpy(v37, v45, v44);
    v37 += v46;
    return v37;
  }

  return sub_1957130(a3, v45, v44, v37);
}

uint64_t sub_1611DF0(uint64_t a1)
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

  v8 = *(a1 + 56);
  v9 = v4 + v8;
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
      v14 = sub_160F680(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  result = v9 + v15;
  if (v15 >= 1)
  {
    v17 = (*(a1 + 88) + 8);
    do
    {
      v18 = *v17++;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      result += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      --v15;
    }

    while (v15);
  }

  v21 = *(a1 + 16);
  if (v21)
  {
    if (v21)
    {
      v27 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v28 = *(v27 + 23);
      v29 = *(v27 + 8);
      if ((v28 & 0x80u) == 0)
      {
        v29 = v28;
      }

      result += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v21 & 2) == 0)
      {
LABEL_22:
        if ((v21 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_50;
      }
    }

    else if ((v21 & 2) == 0)
    {
      goto LABEL_22;
    }

    v30 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v30 + 23);
    v32 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    result += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 4) == 0)
    {
LABEL_23:
      if ((v21 & 8) == 0)
      {
LABEL_28:
        v25 = result + 5;
        if ((v21 & 0x10) == 0)
        {
          v25 = result;
        }

        if ((v21 & 0x20) != 0)
        {
          v25 += 5;
        }

        if ((v21 & 0x40) != 0)
        {
          v25 += 5;
        }

        if ((v21 & 0x80) != 0)
        {
          result = v25 + 5;
        }

        else
        {
          result = v25;
        }

        goto LABEL_37;
      }

LABEL_24:
      v22 = *(a1 + 120);
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v22 >= 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 11;
      }

      result += v24;
      goto LABEL_28;
    }

LABEL_50:
    v33 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    v35 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v35 = v34;
    }

    result += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_37:
  if ((v21 & 0xF00) != 0)
  {
    result += ((v21 >> 8) & 2) + ((v21 >> 7) & 2);
    if ((v21 & 0x400) != 0)
    {
      result += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v21 & 0x800) != 0)
    {
      result += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v26 = *(a1 + 8);
  if (v26)
  {
    v36 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v37 < 0)
    {
      v37 = *(v36 + 16);
    }

    result += v37;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_1612100(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1637AD8((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_1201B48((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if (v19)
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

        goto LABEL_38;
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

      goto LABEL_41;
    }

LABEL_38:
    v27 = *(a2 + 112);
    *(a1 + 16) |= 4u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_194EA1C((a1 + 112), (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 120) = *(a2 + 120);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 124) = *(a2 + 124);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(a1 + 128) = *(a2 + 128);
    if ((v19 & 0x40) == 0)
    {
LABEL_18:
      if ((v19 & 0x80) == 0)
      {
LABEL_20:
        *(a1 + 16) |= v19;
        goto LABEL_21;
      }

LABEL_19:
      *(a1 + 136) = *(a2 + 136);
      goto LABEL_20;
    }

LABEL_44:
    *(a1 + 132) = *(a2 + 132);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if ((v19 & 0xF00) == 0)
  {
    goto LABEL_28;
  }

  if ((v19 & 0x100) != 0)
  {
    *(a1 + 140) = *(a2 + 140);
    if ((v19 & 0x200) == 0)
    {
LABEL_24:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_25;
      }

LABEL_48:
      *(a1 + 144) = *(a2 + 144);
      if ((v19 & 0x800) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  *(a1 + 141) = *(a2 + 141);
  if ((v19 & 0x400) != 0)
  {
    goto LABEL_48;
  }

LABEL_25:
  if ((v19 & 0x800) != 0)
  {
LABEL_26:
    *(a1 + 152) = *(a2 + 152);
  }

LABEL_27:
  *(a1 + 16) |= v19;
LABEL_28:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_16123F0(void *a1)
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

void sub_1612464(void *a1)
{
  sub_16123F0(a1);

  operator delete();
}

uint64_t sub_161249C(uint64_t a1)
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

char *sub_16124C0(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_16126A4(uint64_t a1, char *__dst, unint64_t *a3)
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

unint64_t sub_1612854(uint64_t a1)
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

void *sub_1612904(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 4));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1612988(void *a1)
{
  sub_1612904(a1);

  operator delete();
}

uint64_t sub_16129C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  *(result + 24) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_16129D8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  if ((sub_195ADC0(a3, &v30, a3[11].u32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    do
    {
      v8 = v30 + 1;
      v9 = *v30;
      if (*v30 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(v30, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = v30 + 2;
        }
      }

      v30 = v8;
      if (v9 >> 3 == 2)
      {
        if (v9 == 16)
        {
          v21 = v8 - 1;
          while (1)
          {
            v30 = v21 + 1;
            v22 = v21[1];
            if (v21[1] < 0)
            {
              v23 = v22 + (v21[2] << 7);
              v22 = v23 - 128;
              if (v21[2] < 0)
              {
                v21 = sub_1958770((v21 + 1), v23 - 128);
                v22 = v24;
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

            v30 = v21;
            v25 = *(a1 + 32);
            if (v25 == *(a1 + 36))
            {
              v26 = v25 + 1;
              sub_1958E5C((a1 + 32), v25 + 1);
              *(*(a1 + 40) + 4 * v25) = v22;
              v21 = v30;
            }

            else
            {
              *(*(a1 + 40) + 4 * v25) = v22;
              v26 = v25 + 1;
            }

            *(a1 + 32) = v26;
            if (!v21)
            {
              return 0;
            }

            if (*a3 <= v21 || *v21 != 16)
            {
              goto LABEL_53;
            }
          }
        }

        if (v9 == 18)
        {
          v27 = sub_1958918((a1 + 32), v8, a3);
          goto LABEL_52;
        }
      }

      else if (v9 >> 3 == 1)
      {
        if (v9 == 8)
        {
          v13 = v8 - 1;
          while (1)
          {
            v30 = v13 + 1;
            v14 = v13[1];
            v15 = v13 + 2;
            if (v14 < 0)
            {
              v16 = *v15;
              v17 = (v16 << 7) + v14;
              LODWORD(v14) = v17 - 128;
              if (v16 < 0)
              {
                v30 = sub_19587DC((v13 + 1), (v17 - 128));
                if (!v30)
                {
                  return 0;
                }

                LODWORD(v14) = v20;
                goto LABEL_16;
              }

              v15 = v13 + 3;
            }

            v30 = v15;
LABEL_16:
            if (v14 > 0x50)
            {
              sub_12E8450();
            }

            else
            {
              v18 = *(a1 + 16);
              if (v18 == *(a1 + 20))
              {
                v19 = v18 + 1;
                sub_1958E5C((a1 + 16), v18 + 1);
                *(*(a1 + 24) + 4 * v18) = v14;
              }

              else
              {
                *(*(a1 + 24) + 4 * v18) = v14;
                v19 = v18 + 1;
              }

              *(a1 + 16) = v19;
            }

            v13 = v30;
            if (*a3 <= v30 || *v30 != 8)
            {
              goto LABEL_53;
            }
          }
        }

        if (v9 == 10)
        {
          *&v31 = a1 + 16;
          *(&v31 + 1) = sub_15F4674;
          v32 = a1 + 8;
          v33 = 1;
          v27 = sub_1216588(a3, v8, &v31, v5);
          goto LABEL_52;
        }
      }

      if (v9)
      {
        v28 = (v9 & 7) == 4;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
          return v30;
        }

        return 0;
      }

      if (*v7)
      {
        v29 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v29 = sub_11F1920((a1 + 8));
        v8 = v30;
      }

      v27 = sub_1952690(v9, v29, v8, a3);
LABEL_52:
      v30 = v27;
      if (!v27)
      {
        return 0;
      }

LABEL_53:
      ;
    }

    while (!sub_195ADC0(a3, &v30, a3[11].u32[1]));
  }

  return v30;
}

char *sub_1612CF0(uint64_t a1, char *a2, unint64_t *a3)
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

  v12 = *(a1 + 32);
  if (v12 < 1)
  {
    v15 = v8;
  }

  else
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 40) + 4 * j);
      *v8 = 16;
      v8[1] = v14;
      if (v14 > 0x7F)
      {
        v8[1] = v14 | 0x80;
        v16 = v14 >> 7;
        v8[2] = v14 >> 7;
        v15 = v8 + 3;
        if (v14 >= 0x4000)
        {
          LOBYTE(v8) = v8[2];
          do
          {
            *(v15 - 1) = v8 | 0x80;
            LODWORD(v8) = v16 >> 7;
            *v15++ = v16 >> 7;
            v17 = v16 >> 14;
            v16 >>= 7;
          }

          while (v17);
        }
      }

      else
      {
        v15 = v8 + 2;
      }

      v8 = v15;
    }
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v21)
  {
    v23 = v21;
    memcpy(v15, v22, v21);
    v15 += v23;
    return v15;
  }

  return sub_1957130(a3, v22, v21, v15);
}

uint64_t sub_1612EE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 24) + 4 * v4);
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

  result = v3 + sub_1959E5C((a1 + 32)) + v2 + *(a1 + 32);
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

  *(a1 + 48) = result;
  return result;
}

void *sub_1612FBC(void *a1)
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

void sub_1613030(void *a1)
{
  sub_1612FBC(a1);

  operator delete();
}

uint64_t sub_1613068(uint64_t a1)
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

char *sub_161308C(uint64_t a1, char *a2, int32x2_t *a3)
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

    v20 = v7 + 1;
    LODWORD(v19) = *v7;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = v19 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v25 = v20;
      *(a1 + 24) = v19;
      v5 = 1;
      goto LABEL_31;
    }

    v23 = sub_19587DC(v7, v19);
    v25 = v23;
    *(a1 + 24) = v24;
    v5 = 1;
    if (!v23)
    {
      goto LABEL_41;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v15 = v7 + 1;
    v16 = *v7;
    if (v16 < 0)
    {
      v17 = *v15;
      v18 = (v17 << 7) + v16;
      LODWORD(v16) = v18 - 128;
      if (v17 < 0)
      {
        v25 = sub_19587DC(v7, (v18 - 128));
        if (!v25)
        {
          goto LABEL_41;
        }

        LODWORD(v16) = v22;
        goto LABEL_25;
      }

      v15 = v7 + 2;
    }

    v25 = v15;
LABEL_25:
    if (sub_140BCAC(v16))
    {
      *(a1 + 16) |= 2u;
      *(a1 + 28) = v16;
    }

    else
    {
      sub_12E8418();
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

    v25 = sub_1952690(v8, v14, v7, a3);
    if (!v25)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_1613298(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1613448(uint64_t a1)
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

uint64_t sub_1613518(uint64_t a1)
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

  if (a1 != &off_277AA10)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_16123F0(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1612904(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_16371AC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16135F4(uint64_t a1)
{
  sub_1613518(a1);

  operator delete();
}

uint64_t sub_161362C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1613068(v4);
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
      result = sub_161249C(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      v6 = *(v1 + 56);
      v7 = *(v6 + 8);
      result = v6 + 8;
      *(result + 8) = 0;
      *(result + 24) = 0;
      if (v7)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_16136E0(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = v19 + 1;
          v29 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_1618B28(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v29;
          }

          v19 = sub_222B24C(a3, v23, v20);
          v29 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 26)
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

          v16 = sub_1618A80(v18);
          *(a1 + 56) = v16;
          v6 = v29;
        }

        v15 = sub_222B1BC(a3, v16, v6);
        goto LABEL_41;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 48);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_1618A04(v27);
        *(a1 + 48) = v25;
        v6 = v29;
      }

      v15 = sub_222B12C(a3, v25, v6);
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
        return v29;
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
      v6 = v29;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_41:
    v29 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  return v29;
}

char *sub_161391C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16126A4(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 56);
    *v4 = 18;
    v11 = *(v10 + 48);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_1612CF0(v10, v12, a3);
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

      v4 = sub_1613298(v15, v17, a3);
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

uint64_t sub_1613B28(uint64_t a1)
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
      v7 = sub_1613448(v6);
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
      v9 = sub_1612854(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_1612EE8(*(a1 + 56));
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

std::string *sub_1613C3C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1638030((v3 + 24), v6, (v5 + 8), v4, **(v3 + 40) - *(v3 + 32));
    v7 = *(v3 + 32) + v4;
    *(v3 + 32) = v7;
    v8 = *(v3 + 40);
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

        v10 = sub_1618A04(v12);
        *(v3 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277A9B0;
      }

      result = sub_121721C(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v14 = *(v3 + 56);
      if (!v14)
      {
        v15 = *(v3 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_1618A80(v16);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_277A9D8;
      }

      result = sub_1319618(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    return sub_1957EF4((v3 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1613DB4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1637230(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1613E34(void *a1)
{
  sub_1613DB4(a1);

  operator delete();
}

uint64_t sub_1613E6C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_161362C(v4);
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

char *sub_1613EE8(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1618BA0(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_222B2DC(a3, v16, v13);
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

char *sub_1614078(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_161391C(v8, v10, a3);
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

uint64_t sub_16141B8(uint64_t a1)
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
      v7 = sub_1613B28(v6);
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

uint64_t **sub_1614260(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    result = sub_16380AC((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
    v7 = *(v3 + 24) + v4;
    *(v3 + 24) = v7;
    v8 = *(v3 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1614334(uint64_t a1)
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
  if (a1 != &off_277AA80)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1613DB4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_16372B4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16143F8(uint64_t a1)
{
  sub_1614334(a1);

  operator delete();
}

char *sub_1614430(uint64_t a1, char *a2, int32x2_t *a3)
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
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1618C3C(v17);
          *(a1 + 48) = v15;
          v6 = v25;
        }

        v14 = sub_222B3FC(a3, v15, v6);
        goto LABEL_25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v18 = v6 - 1;
      while (1)
      {
        v19 = v18 + 1;
        v25 = v18 + 1;
        v20 = *(a1 + 40);
        if (v20 && (v21 = *(a1 + 32), v21 < *v20))
        {
          *(a1 + 32) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          sub_1618938(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = v25;
        }

        v18 = sub_222B36C(a3, v22, v19);
        v25 = v18;
        if (!v18)
        {
          return 0;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_35;
        }
      }
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
LABEL_25:
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

char *sub_1614614(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
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

      __dst = sub_1611820(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 48);
    *__dst = 18;
    v12 = *(v11 + 40);
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, __dst + 1);
    }

    else
    {
      v13 = __dst + 2;
    }

    __dst = sub_1614078(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_1957130(a3, v18, v17, __dst);
}

uint64_t sub_16147BC(uint64_t a1)
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
      v7 = sub_1611DF0(v6);
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
    v8 = sub_16141B8(*(a1 + 48));
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

void ***sub_16148A8(void ***a1)
{
  v3 = (a1 + 1);
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

  sub_1614934(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1614934(void ***a1)
{
  v3 = a1[6];
  v2 = a1 + 6;
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (a1[7] != &qword_278E990)
  {
    sub_194E89C(a1 + 7);
  }

  if (a1[8] != &qword_278E990)
  {
    sub_194E89C(a1 + 8);
  }

  if (a1[9] != &qword_278E990)
  {
    sub_194E89C(a1 + 9);
  }

  if (a1[10] != &qword_278E990)
  {
    sub_194E89C(a1 + 10);
  }

  if (a1[11] != &qword_278E990)
  {
    sub_194E89C(a1 + 11);
  }

  if (a1[12] != &qword_278E990)
  {
    sub_194E89C(a1 + 12);
  }

  result = a1 + 13;
  if (a1[13] != &qword_278E990)
  {
    sub_194E89C(result);
  }

  v6 = a1[14];
  v5 = a1 + 14;
  if (v6 != &qword_278E990)
  {

    sub_194E89C(v5);
  }

  return result;
}

void sub_1614A28(void ***a1)
{
  sub_16148A8(a1);

  operator delete();
}

uint64_t sub_1614A60(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v91 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v91, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v91 + 1);
    v8 = **v91;
    if (**v91 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v91, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v91 + 2);
      }
    }

    *v91 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_132;
        }

        v11 = v7 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          *v91 = v11 + 1;
          v13 = *(a1 + 40);
          if (v13 && (v14 = *(a1 + 32), v14 < *v13))
          {
            *(a1 + 32) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = *(a1 + 24);
            if (!v16)
            {
              operator new();
            }

            *v18 = v17;
            v18[1] = sub_195A650;
            *v17 = 0;
            v17[1] = 0;
            v17[2] = 0;
            v15 = sub_19593CC(a1 + 24, v17);
            v12 = *v91;
          }

          v11 = sub_1958890(v15, v12, a3);
          *v91 = v11;
          if (!v11)
          {
            goto LABEL_158;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_130;
          }
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 1u;
        v39 = *(a1 + 8);
        v23 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v23 = *v23;
        }

        v24 = (a1 + 48);
        goto LABEL_118;
      case 3u:
        if (v8 != 29)
        {
          goto LABEL_132;
        }

        v35 = *v7;
        v26 = v7 + 4;
        v5 |= 0x200u;
        *(a1 + 120) = v35;
        goto LABEL_129;
      case 4u:
        if (v8 != 37)
        {
          goto LABEL_132;
        }

        v37 = *v7;
        v26 = v7 + 4;
        v5 |= 0x400u;
        *(a1 + 124) = v37;
        goto LABEL_129;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_132;
        }

        v5 |= 0x800u;
        v29 = v7 + 1;
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if (v30 < 0)
        {
          v77 = sub_19587DC(v7, v28);
          *v91 = v77;
          *(a1 + 128) = v78;
          if (!v77)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_39:
          *v91 = v29;
          *(a1 + 128) = v28;
        }

        goto LABEL_130;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_132;
        }

        v5 |= 0x1000u;
        v46 = v7 + 1;
        v45 = *v7;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_79;
        }

        v47 = *v46;
        v45 = (v47 << 7) + v45 - 128;
        if (v47 < 0)
        {
          v81 = sub_19587DC(v7, v45);
          *v91 = v81;
          *(a1 + 136) = v82;
          if (!v81)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v46 = v7 + 2;
LABEL_79:
          *v91 = v46;
          *(a1 + 136) = v45;
        }

        goto LABEL_130;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_132;
        }

        v5 |= 0x2000u;
        v53 = v7 + 1;
        v52 = *v7;
        if ((v52 & 0x8000000000000000) == 0)
        {
          goto LABEL_93;
        }

        v54 = *v53;
        v52 = (v54 << 7) + v52 - 128;
        if (v54 < 0)
        {
          v85 = sub_19587DC(v7, v52);
          *v91 = v85;
          *(a1 + 144) = v86;
          if (!v85)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v53 = v7 + 2;
LABEL_93:
          *v91 = v53;
          *(a1 + 144) = v52;
        }

        goto LABEL_130;
      case 8u:
        if (v8 != 69)
        {
          goto LABEL_132;
        }

        v38 = *v7;
        v26 = v7 + 4;
        v5 |= 0x4000u;
        *(a1 + 152) = v38;
        goto LABEL_129;
      case 9u:
        if (v8 != 77)
        {
          goto LABEL_132;
        }

        v57 = *v7;
        v26 = v7 + 4;
        v5 |= 0x8000u;
        *(a1 + 156) = v57;
        goto LABEL_129;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_132;
        }

        v32 = *v7;
        v26 = v7 + 4;
        v5 |= 0x10000u;
        *(a1 + 160) = v32;
        goto LABEL_129;
      case 0xBu:
        if (v8 != 93)
        {
          goto LABEL_132;
        }

        v56 = *v7;
        v26 = v7 + 4;
        v5 |= 0x20000u;
        *(a1 + 164) = v56;
        goto LABEL_129;
      case 0xCu:
        if (v8 != 101)
        {
          goto LABEL_132;
        }

        v27 = *v7;
        v26 = v7 + 4;
        v5 |= 0x40000u;
        *(a1 + 168) = v27;
        goto LABEL_129;
      case 0xDu:
        if (v8 != 109)
        {
          goto LABEL_132;
        }

        v31 = *v7;
        v26 = v7 + 4;
        v5 |= 0x80000u;
        *(a1 + 172) = v31;
        goto LABEL_129;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 2u;
        v51 = *(a1 + 8);
        v23 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v23 = *v23;
        }

        v24 = (a1 + 56);
        goto LABEL_118;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 4u;
        v25 = *(a1 + 8);
        v23 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v23 = *v23;
        }

        v24 = (a1 + 64);
        goto LABEL_118;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 8u;
        v36 = *(a1 + 8);
        v23 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if (v36)
        {
          v23 = *v23;
        }

        v24 = (a1 + 72);
        goto LABEL_118;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 0x10u;
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v24 = (a1 + 80);
        goto LABEL_118;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 0x20u;
        v41 = *(a1 + 8);
        v23 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v23 = *v23;
        }

        v24 = (a1 + 88);
        goto LABEL_118;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 0x40u;
        v55 = *(a1 + 8);
        v23 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
        if (v55)
        {
          v23 = *v23;
        }

        v24 = (a1 + 96);
        goto LABEL_118;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 0x80u;
        v65 = *(a1 + 8);
        v23 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
        if (v65)
        {
          v23 = *v23;
        }

        v24 = (a1 + 104);
        goto LABEL_118;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_132;
        }

        v5 |= 0x100000u;
        v43 = v7 + 1;
        v42 = *v7;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_74;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if (v44 < 0)
        {
          v79 = sub_19587DC(v7, v42);
          *v91 = v79;
          *(a1 + 176) = v80;
          if (!v79)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v43 = v7 + 2;
LABEL_74:
          *v91 = v43;
          *(a1 + 176) = v42;
        }

        goto LABEL_130;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_132;
        }

        v5 |= 0x200000u;
        v49 = v7 + 1;
        v48 = *v7;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_84;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if (v50 < 0)
        {
          v83 = sub_19587DC(v7, v48);
          *v91 = v83;
          *(a1 + 184) = v84;
          if (!v83)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v49 = v7 + 2;
LABEL_84:
          *v91 = v49;
          *(a1 + 184) = v48;
        }

        goto LABEL_130;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_132;
        }

        v5 |= 0x400000u;
        v63 = v7 + 1;
        v62 = *v7;
        if ((v62 & 0x8000000000000000) == 0)
        {
          goto LABEL_113;
        }

        v64 = *v63;
        v62 = (v64 << 7) + v62 - 128;
        if (v64 < 0)
        {
          v89 = sub_19587DC(v7, v62);
          *v91 = v89;
          *(a1 + 192) = v90;
          if (!v89)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v63 = v7 + 2;
LABEL_113:
          *v91 = v63;
          *(a1 + 192) = v62;
        }

        goto LABEL_130;
      case 0x18u:
        if (v8 != 197)
        {
          goto LABEL_132;
        }

        v68 = *v7;
        v26 = v7 + 4;
        v5 |= 0x800000u;
        *(a1 + 200) = v68;
        goto LABEL_129;
      case 0x19u:
        if (v8 != 205)
        {
          goto LABEL_132;
        }

        v34 = *v7;
        v26 = v7 + 4;
        v5 |= 0x1000000u;
        *(a1 + 204) = v34;
        goto LABEL_129;
      case 0x1Au:
        if (v8 != 213)
        {
          goto LABEL_132;
        }

        v33 = *v7;
        v26 = v7 + 4;
        v5 |= 0x2000000u;
        *(a1 + 208) = v33;
        goto LABEL_129;
      case 0x1Bu:
        if (v8 != 221)
        {
          goto LABEL_132;
        }

        v71 = *v7;
        v26 = v7 + 4;
        v5 |= 0x4000000u;
        *(a1 + 212) = v71;
        goto LABEL_129;
      case 0x1Cu:
        if (v8 != 224)
        {
          goto LABEL_132;
        }

        v5 |= 0x8000000u;
        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v75 = sub_19587DC(v7, v19);
          *v91 = v75;
          *(a1 + 216) = v76;
          if (!v75)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_24:
          *v91 = v20;
          *(a1 + 216) = v19;
        }

        goto LABEL_130;
      case 0x1Du:
        if (v8 != 237)
        {
          goto LABEL_132;
        }

        v69 = *v7;
        v26 = v7 + 4;
        v5 |= 0x10000000u;
        *(a1 + 224) = v69;
        goto LABEL_129;
      case 0x1Eu:
        if (v8 != 245)
        {
          goto LABEL_132;
        }

        v70 = *v7;
        v26 = v7 + 4;
        v5 |= 0x20000000u;
        *(a1 + 228) = v70;
        goto LABEL_129;
      case 0x1Fu:
        if (v8 != 253)
        {
          goto LABEL_132;
        }

        v58 = *v7;
        v26 = v7 + 4;
        v5 |= 0x40000000u;
        *(a1 + 232) = v58;
LABEL_129:
        *v91 = v26;
        goto LABEL_130;
      case 0x20u:
        if (v8 != 2)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 0x100u;
        v40 = *(a1 + 8);
        v23 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v23 = *v23;
        }

        v24 = (a1 + 112);
LABEL_118:
        v66 = sub_194DB04(v24, v23);
        v67 = sub_1958890(v66, *v91, a3);
        goto LABEL_119;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_132;
        }

        v5 |= 0x80000000;
        v60 = v7 + 1;
        v59 = *v7;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_108;
        }

        v61 = *v60;
        v59 = (v61 << 7) + v59 - 128;
        if (v61 < 0)
        {
          v87 = sub_19587DC(v7, v59);
          *v91 = v87;
          *(a1 + 236) = v88 != 0;
          if (!v87)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v60 = v7 + 2;
LABEL_108:
          *v91 = v60;
          *(a1 + 236) = v59 != 0;
        }

        goto LABEL_130;
      default:
LABEL_132:
        if (v8)
        {
          v72 = (v8 & 7) == 4;
        }

        else
        {
          v72 = 1;
        }

        if (!v72)
        {
          v73 = *(a1 + 8);
          if (v73)
          {
            v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v74 = sub_11F1920((a1 + 8));
            v7 = *v91;
          }

          v67 = sub_1952690(v8, v74, v7, a3);
LABEL_119:
          *v91 = v67;
          if (!v67)
          {
            goto LABEL_158;
          }

LABEL_130:
          if (sub_195ADC0(a3, v91, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_158:
          *v91 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v91;
    }
  }
}

char *sub_1615380(uint64_t a1, char *__dst, unint64_t *a3)
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
        memcpy(__dst + 2, v8, v9);
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
    __dst = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v11 & 0x200) == 0)
    {
LABEL_14:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_15;
      }

LABEL_21:
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v14 = *(a1 + 124);
      *__dst = 37;
      *(__dst + 1) = v14;
      __dst += 5;
      if ((v11 & 0x800) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v13 = *(a1 + 120);
  *__dst = 29;
  *(__dst + 1) = v13;
  __dst += 5;
  if ((v11 & 0x400) != 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if ((v11 & 0x800) == 0)
  {
LABEL_16:
    v12 = __dst;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v15 = *(a1 + 128);
  *__dst = 40;
  __dst[1] = v15;
  if (v15 > 0x7F)
  {
    __dst[1] = v15 | 0x80;
    v16 = v15 >> 7;
    __dst[2] = v15 >> 7;
    v12 = __dst + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v17) = __dst[2];
      do
      {
        *(v12 - 1) = v17 | 0x80;
        v17 = v16 >> 7;
        *v12++ = v16 >> 7;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
    }
  }

  else
  {
    v12 = __dst + 2;
  }

LABEL_31:
  if ((v11 & 0x1000) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v20 = *(a1 + 136);
    *v12 = 48;
    v12[1] = v20;
    if (v20 > 0x7F)
    {
      v12[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v12[2] = v20 >> 7;
      v19 = v12 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v12[2];
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
      v19 = v12 + 2;
    }
  }

  else
  {
    v19 = v12;
  }

  if ((v11 & 0x2000) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 144);
    *v19 = 56;
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
          v19 = (v26 >> 7);
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

  if ((v11 & 0x4000) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 152);
    *v24 = 69;
    *(v24 + 1) = v29;
    v24 += 5;
    if ((v11 & 0x8000) == 0)
    {
LABEL_51:
      if ((v11 & 0x10000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_70;
    }
  }

  else if ((v11 & 0x8000) == 0)
  {
    goto LABEL_51;
  }

  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v30 = *(a1 + 156);
  *v24 = 77;
  *(v24 + 1) = v30;
  v24 += 5;
  if ((v11 & 0x10000) == 0)
  {
LABEL_52:
    if ((v11 & 0x20000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_73;
  }

LABEL_70:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v31 = *(a1 + 160);
  *v24 = 85;
  *(v24 + 1) = v31;
  v24 += 5;
  if ((v11 & 0x20000) == 0)
  {
LABEL_53:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_76;
  }

LABEL_73:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v32 = *(a1 + 164);
  *v24 = 93;
  *(v24 + 1) = v32;
  v24 += 5;
  if ((v11 & 0x40000) == 0)
  {
LABEL_54:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_79;
  }

LABEL_76:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v33 = *(a1 + 168);
  *v24 = 101;
  *(v24 + 1) = v33;
  v24 += 5;
  if ((v11 & 0x80000) == 0)
  {
LABEL_55:
    if ((v11 & 2) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_82;
  }

LABEL_79:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v34 = *(a1 + 172);
  *v24 = 109;
  *(v24 + 1) = v34;
  v24 += 5;
  if ((v11 & 2) == 0)
  {
LABEL_56:
    if ((v11 & 4) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_83;
  }

LABEL_82:
  v24 = sub_128AEEC(a3, 14, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v11 & 4) == 0)
  {
LABEL_57:
    if ((v11 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_84;
  }

LABEL_83:
  v24 = sub_128AEEC(a3, 15, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v11 & 8) == 0)
  {
LABEL_58:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_85;
  }

LABEL_84:
  v24 = sub_128AEEC(a3, 16, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v11 & 0x10) == 0)
  {
LABEL_59:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_86;
  }

LABEL_85:
  v24 = sub_128AEEC(a3, 17, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v11 & 0x20) == 0)
  {
LABEL_60:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_87;
  }

LABEL_86:
  v24 = sub_128AEEC(a3, 18, (*(a1 + 88) & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v11 & 0x40) == 0)
  {
LABEL_61:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_62;
    }

LABEL_88:
    v24 = sub_128AEEC(a3, 20, (*(a1 + 104) & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_89;
  }

LABEL_87:
  v24 = sub_128AEEC(a3, 19, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v11 & 0x80) != 0)
  {
    goto LABEL_88;
  }

LABEL_62:
  if ((v11 & 0x100000) == 0)
  {
LABEL_63:
    v28 = v24;
    goto LABEL_96;
  }

LABEL_89:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v35 = *(a1 + 176);
  *v24 = 424;
  v24[2] = v35;
  if (v35 > 0x7F)
  {
    v24[2] = v35 | 0x80;
    v36 = v35 >> 7;
    v24[3] = v35 >> 7;
    v28 = v24 + 4;
    if (v35 >= 0x4000)
    {
      LOBYTE(v37) = v24[3];
      do
      {
        *(v28 - 1) = v37 | 0x80;
        v37 = v36 >> 7;
        *v28++ = v36 >> 7;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
    }
  }

  else
  {
    v28 = v24 + 3;
  }

LABEL_96:
  if ((v11 & 0x200000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v40 = *(a1 + 184);
    *v28 = 432;
    v28[2] = v40;
    if (v40 > 0x7F)
    {
      v28[2] = v40 | 0x80;
      v41 = v40 >> 7;
      v28[3] = v40 >> 7;
      v39 = v28 + 4;
      if (v40 >= 0x4000)
      {
        LOBYTE(v42) = v28[3];
        do
        {
          *(v39 - 1) = v42 | 0x80;
          v42 = v41 >> 7;
          *v39++ = v41 >> 7;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v39 = v28 + 3;
    }
  }

  else
  {
    v39 = v28;
  }

  if ((v11 & 0x400000) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v45 = *(a1 + 192);
    *v39 = 440;
    v39[2] = v45;
    if (v45 > 0x7F)
    {
      v39[2] = v45 | 0x80;
      v46 = v45 >> 7;
      v39[3] = v45 >> 7;
      v44 = v39 + 4;
      if (v45 >= 0x4000)
      {
        LOBYTE(v39) = v39[3];
        do
        {
          *(v44 - 1) = v39 | 0x80;
          v39 = (v46 >> 7);
          *v44++ = v46 >> 7;
          v47 = v46 >> 14;
          v46 >>= 7;
        }

        while (v47);
      }
    }

    else
    {
      v44 = v39 + 3;
    }
  }

  else
  {
    v44 = v39;
  }

  if ((v11 & 0x800000) != 0)
  {
    if (*a3 <= v44)
    {
      v44 = sub_225EB68(a3, v44);
    }

    v49 = *(a1 + 200);
    *v44 = 453;
    *(v44 + 2) = v49;
    v44 += 6;
    if ((v11 & 0x1000000) == 0)
    {
LABEL_116:
      if ((v11 & 0x2000000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_126;
    }
  }

  else if ((v11 & 0x1000000) == 0)
  {
    goto LABEL_116;
  }

  if (*a3 <= v44)
  {
    v44 = sub_225EB68(a3, v44);
  }

  v50 = *(a1 + 204);
  *v44 = 461;
  *(v44 + 2) = v50;
  v44 += 6;
  if ((v11 & 0x2000000) == 0)
  {
LABEL_117:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_118;
    }

LABEL_129:
    if (*a3 <= v44)
    {
      v44 = sub_225EB68(a3, v44);
    }

    v52 = *(a1 + 212);
    *v44 = 477;
    *(v44 + 2) = v52;
    v44 += 6;
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_132;
  }

LABEL_126:
  if (*a3 <= v44)
  {
    v44 = sub_225EB68(a3, v44);
  }

  v51 = *(a1 + 208);
  *v44 = 469;
  *(v44 + 2) = v51;
  v44 += 6;
  if ((v11 & 0x4000000) != 0)
  {
    goto LABEL_129;
  }

LABEL_118:
  if ((v11 & 0x8000000) == 0)
  {
LABEL_119:
    v48 = v44;
    goto LABEL_139;
  }

LABEL_132:
  if (*a3 <= v44)
  {
    v44 = sub_225EB68(a3, v44);
  }

  v53 = *(a1 + 216);
  *v44 = 480;
  v44[2] = v53;
  if (v53 > 0x7F)
  {
    v44[2] = v53 | 0x80;
    v54 = v53 >> 7;
    v44[3] = v53 >> 7;
    v48 = v44 + 4;
    if (v53 >= 0x4000)
    {
      LOBYTE(v55) = v44[3];
      do
      {
        *(v48 - 1) = v55 | 0x80;
        v55 = v54 >> 7;
        *v48++ = v54 >> 7;
        v56 = v54 >> 14;
        v54 >>= 7;
      }

      while (v56);
    }
  }

  else
  {
    v48 = v44 + 3;
  }

LABEL_139:
  if ((v11 & 0x10000000) != 0)
  {
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v57 = *(a1 + 224);
    *v48 = 493;
    *(v48 + 2) = v57;
    v48 += 6;
    if ((v11 & 0x20000000) == 0)
    {
LABEL_141:
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_151;
    }
  }

  else if ((v11 & 0x20000000) == 0)
  {
    goto LABEL_141;
  }

  if (*a3 <= v48)
  {
    v48 = sub_225EB68(a3, v48);
  }

  v58 = *(a1 + 228);
  *v48 = 501;
  *(v48 + 2) = v58;
  v48 += 6;
  if ((v11 & 0x40000000) == 0)
  {
LABEL_142:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_143;
    }

LABEL_154:
    v48 = sub_128AEEC(a3, 32, (*(a1 + 112) & 0xFFFFFFFFFFFFFFFELL), v48);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_155;
  }

LABEL_151:
  if (*a3 <= v48)
  {
    v48 = sub_225EB68(a3, v48);
  }

  v59 = *(a1 + 232);
  *v48 = 509;
  *(v48 + 2) = v59;
  v48 += 6;
  if ((v11 & 0x100) != 0)
  {
    goto LABEL_154;
  }

LABEL_143:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_158;
  }

LABEL_155:
  if (*a3 <= v48)
  {
    v48 = sub_225EB68(a3, v48);
  }

  v60 = *(a1 + 236);
  *v48 = 648;
  v48[2] = v60;
  v48 += 3;
LABEL_158:
  v61 = *(a1 + 8);
  if ((v61 & 1) == 0)
  {
    return v48;
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

  if ((*a3 - v48) >= v64)
  {
    v66 = v64;
    memcpy(v48, v65, v64);
    v48 += v66;
    return v48;
  }

  return sub_1957130(a3, v65, v64, v48);
}

uint64_t sub_1615D54(uint64_t a1)
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
  if (!v7)
  {
    goto LABEL_20;
  }

  if (v7)
  {
    v16 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 2) == 0)
    {
LABEL_11:
      if ((v7 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_77;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_11;
  }

  v19 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 4) == 0)
  {
LABEL_12:
    if ((v7 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_80;
  }

LABEL_77:
  v22 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 8) == 0)
  {
LABEL_13:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_83;
  }

LABEL_80:
  v25 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x10) == 0)
  {
LABEL_14:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_86:
    v31 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v31 + 23);
    v33 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v33 = v32;
    }

    v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x40) == 0)
    {
LABEL_16:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    goto LABEL_89;
  }

LABEL_83:
  v28 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_86;
  }

LABEL_15:
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_89:
  v34 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(v34 + 23);
  v36 = *(v34 + 8);
  if ((v35 & 0x80u) == 0)
  {
    v36 = v35;
  }

  v3 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x80) != 0)
  {
LABEL_17:
    v8 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_20:
  if ((v7 & 0xFF00) == 0)
  {
    goto LABEL_37;
  }

  if ((v7 & 0x100) != 0)
  {
    v11 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v7 & 0x200) != 0)
  {
    v3 += 5;
  }

  if ((v7 & 0x400) != 0)
  {
    v3 += 5;
  }

  if ((v7 & 0x800) == 0)
  {
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

LABEL_94:
    v3 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v3 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v7 & 0x1000) != 0)
  {
    goto LABEL_94;
  }

LABEL_31:
  if ((v7 & 0x2000) != 0)
  {
LABEL_32:
    v3 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_33:
  if ((v7 & 0x4000) != 0)
  {
    v3 += 5;
  }

  if ((v7 & 0x8000) != 0)
  {
    v3 += 5;
  }

LABEL_37:
  if ((v7 & 0xFF0000) == 0)
  {
    goto LABEL_52;
  }

  if ((v7 & 0x10000) != 0)
  {
    v3 += 5;
  }

  if ((v7 & 0x20000) != 0)
  {
    v3 += 5;
  }

  if ((v7 & 0x40000) != 0)
  {
    v3 += 5;
  }

  if ((v7 & 0x80000) != 0)
  {
    v3 += 5;
  }

  if ((v7 & 0x100000) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 176) | 1) ^ 0x3F) + 73) >> 6) + 2;
    if ((v7 & 0x200000) == 0)
    {
LABEL_48:
      if ((v7 & 0x400000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  else if ((v7 & 0x200000) == 0)
  {
    goto LABEL_48;
  }

  v3 += ((9 * (__clz(*(a1 + 184) | 1) ^ 0x3F) + 73) >> 6) + 2;
  if ((v7 & 0x400000) != 0)
  {
LABEL_49:
    v3 += ((9 * (__clz(*(a1 + 192) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_50:
  if ((v7 & 0x800000) != 0)
  {
    v3 += 6;
  }

LABEL_52:
  if (HIBYTE(v7))
  {
    if ((v7 & 0x1000000) != 0)
    {
      v3 += 6;
    }

    if ((v7 & 0x2000000) != 0)
    {
      v3 += 6;
    }

    if ((v7 & 0x4000000) != 0)
    {
      v3 += 6;
    }

    if ((v7 & 0x8000000) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v7 & 0x10000000) != 0)
    {
      v3 += 6;
    }

    if ((v7 & 0x20000000) != 0)
    {
      v3 += 6;
    }

    if ((v7 & 0x40000000) != 0)
    {
      v3 += 6;
    }

    if (v7 < 0)
    {
      v3 += 3;
    }
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v37 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v38 < 0)
    {
      v38 = *(v37 + 16);
    }

    v3 += v38;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_1616278(uint64_t a1)
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
  if (a1 != &off_277ABA8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1305738(v6);
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

void sub_1616330(uint64_t a1)
{
  sub_1616278(a1);

  operator delete();
}

uint64_t sub_1616368(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1305774(*(result + 24));
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

char *sub_16163C4(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_13072DC(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_21F9D68(a3, v14, v6);
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

char *sub_1616508(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_1305CD0(v6, v8, a3);
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

uint64_t sub_1616614(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_1305FE4(*(a1 + 24));
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

void sub_1616694(uint64_t a1, uint64_t a2)
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

      v5 = sub_13072DC(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_276ABA8;
    }

    sub_1306204(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_161673C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_1306418(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_161677C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1637338(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16167FC(void *a1)
{
  sub_161677C(a1);

  operator delete();
}

uint64_t sub_1616834(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1616368(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
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

char *sub_16168CC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v37, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v37 + 1;
    v8 = *v37;
    if (*v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v37 + 2;
      }
    }

    v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_42;
      }

      v22 = v7 + 1;
      v23 = *v7;
      if (v23 < 0)
      {
        v24 = *v22;
        v25 = (v24 << 7) + v23;
        LODWORD(v23) = v25 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v22 = v7 + 2;
          goto LABEL_34;
        }

        v37 = sub_19587DC(v7, (v25 - 128));
        if (!v37)
        {
          goto LABEL_61;
        }

        LODWORD(v23) = v34;
      }

      else
      {
LABEL_34:
        v37 = v22;
      }

      if (sub_12F556C(v23))
      {
        *(a1 + 16) |= 4u;
        *(a1 + 64) = v23;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_49;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_42;
    }

    v5 |= 1u;
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
      v37 = v14;
      *(a1 + 48) = v13;
      goto LABEL_49;
    }

    v32 = sub_19587DC(v7, v13);
    v37 = v32;
    *(a1 + 48) = v33;
    if (!v32)
    {
      goto LABEL_61;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v37, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_42;
    }

    v5 |= 2u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_41:
      v37 = v27;
      *(a1 + 56) = v26;
      goto LABEL_49;
    }

    v35 = sub_19587DC(v7, v26);
    v37 = v35;
    *(a1 + 56) = v36;
    if (!v35)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  if (v11 == 4 && v8 == 34)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = v16 + 1;
      v37 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_1618E20(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = v37;
      }

      v16 = sub_222B48C(a3, v20, v17);
      v37 = v16;
      if (!v16)
      {
        goto LABEL_61;
      }

      if (*a3 <= v16 || *v16 != 34)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_42:
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
      v7 = v37;
    }

    v37 = sub_1952690(v8, v31, v7, a3);
    if (!v37)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

char *sub_1616BD8(uint64_t a1, char *__dst, unint64_t *a3)
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 48);
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

  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *v15 = 34;
      v22 = *(v21 + 20);
      v15[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v15 + 1);
      }

      else
      {
        v23 = v15 + 2;
      }

      v15 = sub_1616508(v21, v23, a3);
    }
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v27)
  {
    v29 = v27;
    memcpy(v15, v28, v27);
    v15 += v29;
    return v15;
  }

  return sub_1957130(a3, v28, v27, v15);
}

uint64_t sub_1616EAC(uint64_t a1)
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
      v7 = sub_1616614(v6);
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
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

  v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v9 = *(a1 + 64);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v10;
LABEL_20:
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

void sub_1616FE8(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_16381C4((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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
      *(result + 48) = *(a2 + 48);
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

uint64_t sub_16170F4(uint64_t a1)
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
      result = sub_1306418(*(v3 + 24));
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

uint64_t sub_1617160(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F6198;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

void *sub_16171FC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F6218;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = 0;
  return result;
}

void *sub_16172A4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F6298;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_1617328(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F6318;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_16173C4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F6398;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_1617448(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F6418;
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
  *(result + 112) = &qword_278E990;
  *(result + 120) = &qword_278E990;
  *(result + 128) = &qword_278E990;
  *(result + 136) = &qword_278E990;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 144) = 0;
  *(result + 168) = 0;
  return result;
}

void *sub_1617514(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F6498;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_161758C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F6518;
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
  *(v2 + 120) = a1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = a1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = a1;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 192) = a1;
  *(v2 + 232) = 0;
  result = 0.0;
  *(v2 + 216) = 0u;
  *(v2 + 200) = 0u;
  return result;
}

uint64_t sub_1617674(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F6598;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_16176F0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F6618;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_161776C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F6698;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_16177E8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F6718;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_1617874(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F6798;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0;
  return result;
}

void *sub_1617918(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F6818;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_1617990(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F6898;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  return result;
}

uint64_t sub_1617A14(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F6918;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1617A90(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F6998;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

double sub_1617B48(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F6A18;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

void *sub_1617BCC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F6A98;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_1617C50(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F6B18;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_1617CD4(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F6B98;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = &qword_278E990;
  result[12] = 0;
  result[13] = 0;
  result[11] = 0;
  return result;
}

uint64_t sub_1617D8C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F6C18;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_1617E30(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F6C98;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_1617EAC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F6D18;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = a1;
  result[10] = 0;
  result[11] = 0;
  *(result + 94) = 0;
  return result;
}

uint64_t sub_1617F5C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F6D98;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1617FD8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F6E18;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_1618058(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F6E98;
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
  *(v2 + 96) = &qword_278E990;
  *(v2 + 104) = &qword_278E990;
  result = 0.0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  return result;
}

double sub_1618118(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F6F18;
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
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0;
  return result;
}

uint64_t sub_16181DC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F6F98;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_161827C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F7018;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}