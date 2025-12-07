char *sub_1606120(uint64_t a1, char *a2, int32x2_t *a3)
{
  v59 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v59, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v59 + 1;
    v7 = *v59;
    if (*v59 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v59, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v59 + 2;
      }
    }

    v59 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 5)
    {
      if (v7 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v7 == 10)
          {
            *(a1 + 16) |= 1u;
            v30 = *(a1 + 72);
            if (!v30)
            {
              v31 = *(a1 + 8);
              v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
              if (v31)
              {
                v32 = *v32;
              }

              sub_163249C(v32);
              v30 = v33;
              *(a1 + 72) = v33;
              v6 = v59;
            }

            v15 = sub_22292D8(a3, v30, v6);
            goto LABEL_105;
          }
        }

        else if (v10 == 2 && v7 == 18)
        {
          *(a1 + 16) |= 2u;
          v26 = *(a1 + 80);
          if (!v26)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            sub_1618888(v28);
            v26 = v29;
            *(a1 + 80) = v29;
            v6 = v59;
          }

          v15 = sub_2229368(a3, v26, v6);
          goto LABEL_105;
        }
      }

      else if (v10 == 3)
      {
        if (v7 == 26)
        {
          v43 = v6 - 1;
          while (1)
          {
            v44 = v43 + 1;
            v59 = v43 + 1;
            v45 = *(a1 + 40);
            if (v45 && (v46 = *(a1 + 32), v46 < *v45))
            {
              *(a1 + 32) = v46 + 1;
              v47 = *&v45[2 * v46 + 2];
            }

            else
            {
              v48 = sub_161845C(*(a1 + 24));
              v47 = sub_19593CC(a1 + 24, v48);
              v44 = v59;
            }

            v43 = sub_22293F8(a3, v47, v44);
            v59 = v43;
            if (!v43)
            {
              return 0;
            }

            if (*a3 <= v43 || *v43 != 26)
            {
              goto LABEL_106;
            }
          }
        }
      }

      else if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 4u;
          v34 = *(a1 + 88);
          if (!v34)
          {
            v35 = *(a1 + 8);
            v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
            if (v35)
            {
              v36 = *v36;
            }

            v34 = sub_1618584(v36);
            *(a1 + 88) = v34;
            v6 = v59;
          }

          v15 = sub_2229488(a3, v34, v6);
          goto LABEL_105;
        }
      }

      else if (v10 == 5 && v7 == 42)
      {
        *(a1 + 16) |= 8u;
        v16 = *(a1 + 96);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_16183B8(v18);
          *(a1 + 96) = v16;
          v6 = v59;
        }

        v15 = sub_2229518(a3, v16, v6);
        goto LABEL_105;
      }
    }

    else if (v7 >> 3 > 8)
    {
      if (v10 == 9)
      {
        if (v7 == 74)
        {
          *(a1 + 16) |= 0x80u;
          v52 = *(a1 + 128);
          if (!v52)
          {
            v53 = *(a1 + 8);
            v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
            if (v53)
            {
              v54 = *v54;
            }

            v52 = sub_1633D74(v54);
            *(a1 + 128) = v52;
            v6 = v59;
          }

          v15 = sub_2229758(a3, v52, v6);
          goto LABEL_105;
        }
      }

      else if (v10 == 10)
      {
        if (v7 == 82)
        {
          *(a1 + 16) |= 0x100u;
          v40 = *(a1 + 136);
          if (!v40)
          {
            v41 = *(a1 + 8);
            v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
            if (v41)
            {
              v42 = *v42;
            }

            v40 = sub_1619FF0(v42);
            *(a1 + 136) = v40;
            v6 = v59;
          }

          v15 = sub_22297E8(a3, v40, v6);
          goto LABEL_105;
        }
      }

      else if (v10 == 11 && v7 == 90)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = v19 + 1;
          v59 = v19 + 1;
          v21 = *(a1 + 64);
          if (v21 && (v22 = *(a1 + 56), v22 < *v21))
          {
            *(a1 + 56) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_1617C50(*(a1 + 48));
            v23 = sub_19593CC(a1 + 48, v24);
            v20 = v59;
          }

          v19 = sub_2229878(a3, v23, v20);
          v59 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 90)
          {
            goto LABEL_106;
          }
        }
      }
    }

    else if (v10 == 6)
    {
      if (v7 == 50)
      {
        *(a1 + 16) |= 0x10u;
        v49 = *(a1 + 104);
        if (!v49)
        {
          v50 = *(a1 + 8);
          v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
          if (v50)
          {
            v51 = *v51;
          }

          v49 = sub_161827C(v51);
          *(a1 + 104) = v49;
          v6 = v59;
        }

        v15 = sub_22295A8(a3, v49, v6);
        goto LABEL_105;
      }
    }

    else if (v10 == 7)
    {
      if (v7 == 58)
      {
        *(a1 + 16) |= 0x20u;
        v37 = *(a1 + 112);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          v37 = sub_1618CDC(v39);
          *(a1 + 112) = v37;
          v6 = v59;
        }

        v15 = sub_2229638(a3, v37, v6);
        goto LABEL_105;
      }
    }

    else if (v10 == 8 && v7 == 66)
    {
      *(a1 + 16) |= 0x40u;
      v11 = *(a1 + 120);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_1618D78(v13);
        v11 = v14;
        *(a1 + 120) = v14;
        v6 = v59;
      }

      v15 = sub_22296C8(a3, v11, v6);
      goto LABEL_105;
    }

    if (v7)
    {
      v55 = (v7 & 7) == 4;
    }

    else
    {
      v55 = 1;
    }

    if (v55)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v59;
      }

      return 0;
    }

    v56 = *(a1 + 8);
    if (v56)
    {
      v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v57 = sub_11F1920((a1 + 8));
      v6 = v59;
    }

    v15 = sub_1952690(v7, v57, v6, a3);
LABEL_105:
    v59 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_106:
    ;
  }

  return v59;
}

char *sub_1606670(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 72);
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

    v4 = sub_1628F60(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 80);
    *v4 = 18;
    v11 = *(v10 + 88);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_1610B0C(v10, v12, a3);
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

      v4 = sub_160AC64(v15, v17, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 88);
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

    v4 = sub_160BA3C(v18, v20, a3);
    if ((v6 & 8) == 0)
    {
LABEL_25:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_25;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 96);
  *v4 = 42;
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

  v4 = sub_160A540(v21, v23, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_26:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_43:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 104);
  *v4 = 50;
  v25 = *(v24 + 20);
  v4[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v4 + 1);
  }

  else
  {
    v26 = v4 + 2;
  }

  v4 = sub_1608EA0(v24, v26, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_27:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v27 = *(a1 + 112);
  *v4 = 58;
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

  v4 = sub_1614614(v27, v29, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_28:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v30 = *(a1 + 120);
  *v4 = 66;
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

  v4 = sub_1615380(v30, v32, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_29:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_67;
  }

LABEL_61:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v33 = *(a1 + 128);
  *v4 = 74;
  v34 = *(v33 + 40);
  v4[1] = v34;
  if (v34 > 0x7F)
  {
    v35 = sub_19575D0(v34, v4 + 1);
  }

  else
  {
    v35 = v4 + 2;
  }

  v4 = sub_1633A80(v33, v35, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_67:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v36 = *(a1 + 136);
    *v4 = 82;
    v37 = *(v36 + 40);
    v4[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v4 + 1);
    }

    else
    {
      v38 = v4 + 2;
    }

    v4 = sub_1619CFC(v36, v38, a3);
  }

LABEL_73:
  v39 = *(a1 + 56);
  if (v39)
  {
    for (j = 0; j != v39; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v41 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 90;
      v42 = *(v41 + 20);
      v4[1] = v42;
      if (v42 > 0x7F)
      {
        v43 = sub_19575D0(v42, v4 + 1);
      }

      else
      {
        v43 = v4 + 2;
      }

      v4 = sub_1600A90(v41, v43, a3);
    }
  }

  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v47)
  {
    v49 = v47;
    memcpy(v4, v48, v47);
    v4 += v49;
    return v4;
  }

  return sub_1957130(a3, v48, v47, v4);
}

uint64_t sub_1606BD8(uint64_t a1)
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
      v7 = sub_160AE4C(v6);
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
      v14 = sub_1600B78(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_25;
  }

  if (v15)
  {
    v20 = sub_1629764(*(a1 + 72));
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

  v21 = sub_1610D68(*(a1 + 80));
  v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 4) == 0)
  {
LABEL_19:
    if ((v15 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  v22 = sub_160BC38(*(a1 + 88));
  v9 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) == 0)
  {
LABEL_20:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  v23 = sub_160A708(*(a1 + 96));
  v9 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x10) == 0)
  {
LABEL_21:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_34:
    v25 = sub_16147BC(*(a1 + 112));
    v9 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x40) == 0)
    {
LABEL_23:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_33:
  v24 = sub_1609068(*(a1 + 104));
  v9 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_22:
  if ((v15 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_35:
  v26 = sub_1615D54(*(a1 + 120));
  v9 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x80) != 0)
  {
LABEL_24:
    v16 = sub_1633BC0(*(a1 + 128));
    v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_25:
  if ((v15 & 0x100) != 0)
  {
    v17 = sub_1619E3C(*(a1 + 136));
    v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v27 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v9 += v28;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_1606EAC(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1637C7C((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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
    sub_1637D08((result + 48), v11, (v10 + 8), v9, **(result + 64) - *(result + 56));
    v12 = *(result + 56) + v9;
    *(result + 56) = v12;
    v13 = *(result + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (!v14)
  {
    goto LABEL_16;
  }

  if (v14)
  {
    *(result + 16) |= 1u;
    v15 = *(result + 72);
    if (!v15)
    {
      v16 = *(result + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_163249C(v17);
      *(result + 72) = v15;
    }

    if (*(a2 + 72))
    {
      v18 = *(a2 + 72);
    }

    else
    {
      v18 = &off_277B168;
    }

    sub_16072A0(v15, v18);
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
  v19 = *(result + 80);
  if (!v19)
  {
    v20 = *(result + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_1618888(v21);
    *(result + 80) = v19;
  }

  if (*(a2 + 80))
  {
    v22 = *(a2 + 80);
  }

  else
  {
    v22 = &off_277A950;
  }

  sub_16075AC(v19, v22);
  if ((v14 & 4) == 0)
  {
LABEL_11:
    if ((v14 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_34:
  *(result + 16) |= 4u;
  v23 = *(result + 88);
  if (!v23)
  {
    v24 = *(result + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v23 = sub_1618584(v25);
    *(result + 88) = v23;
  }

  if (*(a2 + 88))
  {
    v26 = *(a2 + 88);
  }

  else
  {
    v26 = &off_277A6A8;
  }

  sub_1607720(v23, v26);
  if ((v14 & 8) == 0)
  {
LABEL_12:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_42:
  *(result + 16) |= 8u;
  v27 = *(result + 96);
  if (!v27)
  {
    v28 = *(result + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v27 = sub_16183B8(v29);
    *(result + 96) = v27;
  }

  if (*(a2 + 96))
  {
    v30 = *(a2 + 96);
  }

  else
  {
    v30 = &off_277A638;
  }

  sub_160788C(v27, v30);
  if ((v14 & 0x10) == 0)
  {
LABEL_13:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_50:
  *(result + 16) |= 0x10u;
  v31 = *(result + 104);
  if (!v31)
  {
    v32 = *(result + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v31 = sub_161827C(v33);
    *(result + 104) = v31;
  }

  if (*(a2 + 104))
  {
    v34 = *(a2 + 104);
  }

  else
  {
    v34 = &off_277A598;
  }

  sub_16079D4(v31, v34);
  if ((v14 & 0x20) == 0)
  {
LABEL_14:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_58:
  *(result + 16) |= 0x20u;
  v35 = *(result + 112);
  if (!v35)
  {
    v36 = *(result + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_1618CDC(v37);
    *(result + 112) = v35;
  }

  if (*(a2 + 112))
  {
    v38 = *(a2 + 112);
  }

  else
  {
    v38 = &off_277AA80;
  }

  sub_1607B1C(v35, v38);
  if ((v14 & 0x40) != 0)
  {
LABEL_66:
    *(result + 16) |= 0x40u;
    v39 = *(result + 120);
    if (!v39)
    {
      v40 = *(result + 8);
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      sub_1618D78(v41);
      *(result + 120) = v39;
    }

    if (*(a2 + 120))
    {
      v42 = *(a2 + 120);
    }

    else
    {
      v42 = &off_277AAB8;
    }

    sub_1607C2C(v39, v42);
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_74;
    }

LABEL_16:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_82;
  }

LABEL_15:
  if ((v14 & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_74:
  *(result + 16) |= 0x80u;
  v43 = *(result + 128);
  if (!v43)
  {
    v44 = *(result + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_1633D74(v45);
    *(result + 128) = v43;
  }

  if (*(a2 + 128))
  {
    v46 = *(a2 + 128);
  }

  else
  {
    v46 = &off_277B5E0;
  }

  sub_1608098(v43, v46);
  if ((v14 & 0x100) != 0)
  {
LABEL_82:
    *(result + 16) |= 0x100u;
    v47 = *(result + 136);
    if (!v47)
    {
      v48 = *(result + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_1619FF0(v49);
      *(result + 136) = v47;
    }

    if (*(a2 + 136))
    {
      v50 = *(a2 + 136);
    }

    else
    {
      v50 = &off_277AC10;
    }

    sub_1608154(v47, v50);
  }

LABEL_90:
  v51 = *(a2 + 8);
  if (v51)
  {

    sub_1957EF4((result + 8), (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_16072A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1638D3C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1638E44((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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

        goto LABEL_42;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 16) |= 2u;
    v19 = *(a1 + 80);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_1631F84(v21);
      *(a1 + 80) = v19;
    }

    if (*(a2 + 80))
    {
      v22 = *(a2 + 80);
    }

    else
    {
      v22 = &off_277AFF8;
    }

    sub_1624C7C(v19, v22);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 16) |= 4u;
    v23 = *(a1 + 88);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_1632110(v25);
      *(a1 + 88) = v23;
    }

    if (*(a2 + 88))
    {
      v26 = *(a2 + 88);
    }

    else
    {
      v26 = &off_277B020;
    }

    sub_1626068(v23, v26);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_58;
    }

LABEL_50:
    *(a1 + 16) |= 8u;
    v27 = *(a1 + 96);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_16323FC(v29);
      *(a1 + 96) = v27;
    }

    if (*(a2 + 96))
    {
      v30 = *(a2 + 96);
    }

    else
    {
      v30 = &off_277B118;
    }

    sub_1628550(v27, v30);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(a1 + 104) = *(a2 + 104);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_60;
    }

LABEL_59:
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
      *(a1 + 116) = *(a2 + 116);
      goto LABEL_17;
    }

LABEL_60:
    *(a1 + 112) = *(a2 + 112);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v14 & 0x3F00) == 0)
  {
    goto LABEL_27;
  }

  if ((v14 & 0x100) != 0)
  {
    *(a1 + 120) = *(a2 + 120);
    if ((v14 & 0x200) == 0)
    {
LABEL_21:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_64;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  *(a1 + 124) = *(a2 + 124);
  if ((v14 & 0x400) == 0)
  {
LABEL_22:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a1 + 128) = *(a2 + 128);
  if ((v14 & 0x800) == 0)
  {
LABEL_23:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

LABEL_66:
    *(a1 + 136) = *(a2 + 136);
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_65:
  *(a1 + 132) = *(a2 + 132);
  if ((v14 & 0x1000) != 0)
  {
    goto LABEL_66;
  }

LABEL_24:
  if ((v14 & 0x2000) != 0)
  {
LABEL_25:
    *(a1 + 140) = *(a2 + 140);
  }

LABEL_26:
  *(a1 + 16) |= v14;
LABEL_27:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_16075AC(char *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 16), *(a2 + 24));
    sub_1201B48(result + 2, v6, (v5 + 8), v4, **(result + 4) - *(result + 6));
    v7 = *(result + 6) + v4;
    *(result + 6) = v7;
    v8 = *(result + 4);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8((result + 40), *(a2 + 48));
    sub_11F1A54(result + 5, v11, (v10 + 8), v9, **(result + 7) - *(result + 12));
    v12 = *(result + 12) + v9;
    *(result + 12) = v12;
    v13 = *(result + 7);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8((result + 64), *(a2 + 72));
    sub_1637FA4(result + 8, v16, (v15 + 8), v14, **(result + 10) - *(result + 18));
    v17 = *(result + 18) + v14;
    *(result + 18) = v17;
    v18 = *(result + 10);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4(result + 1, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1607720(uint64_t a1, uint64_t a2)
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

      v14 = sub_16184E4(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_277A678;
    }

    sub_160B548(v14, v17);
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

void sub_160788C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1637E10((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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
      v10 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 56);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_178E2C4(v15);
        *(a1 + 56) = v13;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = &off_2782068;
      }

      sub_178B0F0(v13, v16);
    }
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_16079D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1637D84((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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
      v10 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 56);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        sub_1618320(v15);
        *(a1 + 56) = v13;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = &off_277A5D8;
      }

      sub_1609190(v13, v16);
    }
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1607B1C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1638138((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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

      v10 = sub_1618C3C(v12);
      *(result + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_277AA50;
    }

    sub_1614260(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((result + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1607C2C(uint64_t a1, uint64_t a2)
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
  if (!v9)
  {
    goto LABEL_38;
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

      goto LABEL_20;
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

    goto LABEL_23;
  }

LABEL_20:
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
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_23:
  v19 = *(a2 + 72);
  *(a1 + 16) |= 8u;
  v20 = *(a1 + 8);
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    v21 = *v21;
  }

  sub_194EA1C((a1 + 72), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v25 = *(a2 + 88);
    *(a1 + 16) |= 0x20u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 88), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_26:
  v22 = *(a2 + 80);
  *(a1 + 16) |= 0x10u;
  v23 = *(a1 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v24 = *v24;
  }

  sub_194EA1C((a1 + 80), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_32:
  v28 = *(a2 + 96);
  *(a1 + 16) |= 0x40u;
  v29 = *(a1 + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (v29)
  {
    v30 = *v30;
  }

  sub_194EA1C((a1 + 96), (v28 & 0xFFFFFFFFFFFFFFFELL), v30);
  if ((v9 & 0x80) != 0)
  {
LABEL_35:
    v31 = *(a2 + 104);
    *(a1 + 16) |= 0x80u;
    v32 = *(a1 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    sub_194EA1C((a1 + 104), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
  }

LABEL_38:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_49;
  }

  if ((v9 & 0x100) != 0)
  {
    v35 = *(a2 + 112);
    *(a1 + 16) |= 0x100u;
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    sub_194EA1C((a1 + 112), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
    if ((v9 & 0x200) == 0)
    {
LABEL_41:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_78;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_41;
  }

  *(a1 + 120) = *(a2 + 120);
  if ((v9 & 0x400) == 0)
  {
LABEL_42:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(a1 + 124) = *(a2 + 124);
  if ((v9 & 0x800) == 0)
  {
LABEL_43:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(a1 + 128) = *(a2 + 128);
  if ((v9 & 0x1000) == 0)
  {
LABEL_44:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(a1 + 136) = *(a2 + 136);
  if ((v9 & 0x2000) == 0)
  {
LABEL_45:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

LABEL_82:
    *(a1 + 152) = *(a2 + 152);
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_81:
  *(a1 + 144) = *(a2 + 144);
  if ((v9 & 0x4000) != 0)
  {
    goto LABEL_82;
  }

LABEL_46:
  if ((v9 & 0x8000) != 0)
  {
LABEL_47:
    *(a1 + 156) = *(a2 + 156);
  }

LABEL_48:
  *(a1 + 16) |= v9;
LABEL_49:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_60;
  }

  if ((v9 & 0x10000) != 0)
  {
    *(a1 + 160) = *(a2 + 160);
    if ((v9 & 0x20000) == 0)
    {
LABEL_52:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_86;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_52;
  }

  *(a1 + 164) = *(a2 + 164);
  if ((v9 & 0x40000) == 0)
  {
LABEL_53:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(a1 + 168) = *(a2 + 168);
  if ((v9 & 0x80000) == 0)
  {
LABEL_54:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(a1 + 172) = *(a2 + 172);
  if ((v9 & 0x100000) == 0)
  {
LABEL_55:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(a1 + 176) = *(a2 + 176);
  if ((v9 & 0x200000) == 0)
  {
LABEL_56:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_57;
    }

LABEL_90:
    *(a1 + 192) = *(a2 + 192);
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_89:
  *(a1 + 184) = *(a2 + 184);
  if ((v9 & 0x400000) != 0)
  {
    goto LABEL_90;
  }

LABEL_57:
  if ((v9 & 0x800000) != 0)
  {
LABEL_58:
    *(a1 + 200) = *(a2 + 200);
  }

LABEL_59:
  *(a1 + 16) |= v9;
LABEL_60:
  if (!HIBYTE(v9))
  {
    goto LABEL_70;
  }

  if ((v9 & 0x1000000) != 0)
  {
    *(a1 + 204) = *(a2 + 204);
    if ((v9 & 0x2000000) == 0)
    {
LABEL_63:
      if ((v9 & 0x4000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_94;
    }
  }

  else if ((v9 & 0x2000000) == 0)
  {
    goto LABEL_63;
  }

  *(a1 + 208) = *(a2 + 208);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_64:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(a1 + 212) = *(a2 + 212);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_65:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(a1 + 216) = *(a2 + 216);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_66:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(a1 + 224) = *(a2 + 224);
  if ((v9 & 0x20000000) == 0)
  {
LABEL_67:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_98:
    *(a1 + 232) = *(a2 + 232);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_99:
    *(a1 + 236) = *(a2 + 236);
    goto LABEL_69;
  }

LABEL_97:
  *(a1 + 228) = *(a2 + 228);
  if ((v9 & 0x40000000) != 0)
  {
    goto LABEL_98;
  }

LABEL_68:
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_99;
  }

LABEL_69:
  *(a1 + 16) |= v9;
LABEL_70:
  v34 = *(a2 + 8);
  if (v34)
  {

    sub_1957EF4((a1 + 8), (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_1608098(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_16391F0((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
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

uint64_t **sub_1608154(uint64_t **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    result = sub_1638360((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
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

BOOL sub_1608210(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    if (!sub_1608308(*(a1 + 80)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    v3 = *(a1 + 88);
    if ((*(v3 + 16) & 2) != 0)
    {
      if (!sub_1601B14(*(v3 + 56) + 16))
      {
        return 0;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 8) != 0)
  {
    v4 = *(a1 + 96);
    v5 = *(v4 + 32);
    while (v5 >= 1)
    {
      v6 = v5 - 1;
      v7 = sub_13C1B80(*(*(v4 + 40) + 8 * v5));
      v5 = v6;
      if (!v7)
      {
        return 0;
      }
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  if (!sub_160938C(*(a1 + 104) + 24))
  {
    return 0;
  }

  v2 = *(a1 + 16);
LABEL_17:
  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  v10 = *(a1 + 112);
  v11 = *(v10 + 32);
  do
  {
    v8 = v11 < 1;
    if (v11 < 1)
    {
      break;
    }

    v12 = v11 - 1;
    v13 = sub_1601B14(*(*(v10 + 40) + 8 * v11) + 48);
    v11 = v12;
  }

  while ((v13 & 1) != 0);
  return v8;
}

BOOL sub_1608308(uint64_t a1)
{
  v2 = *(a1 + 48);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E5370(*(*(a1 + 56) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 72);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_1688E0C(*(*(a1 + 80) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

uint64_t sub_1608388(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_1601B14(*(a1 + 56) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_16083BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_13C1B80(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

BOOL sub_160841C(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1601B14(*(*(a1 + 40) + 8 * v2) + 48);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_1608488(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E6204(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1608508(void *a1)
{
  sub_1608488(a1);

  operator delete();
}

unsigned __int8 *sub_1608540(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
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

char *sub_16085BC(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_16F5828(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F4D60(a3, v16, v13);
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

char *sub_160874C(uint64_t a1, char *__dst, void *a3)
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
      v9 = *(v8 + 44);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_16E5070(v8, v10, a3);
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

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_160888C(uint64_t a1)
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
      v7 = sub_16E51F0(v6);
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

void sub_1608934(uint64_t *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    sub_11F1A54(result + 2, v6, (v5 + 8), v4, *result[4] - *(result + 6));
    v7 = *(result + 6) + v4;
    *(result + 6) = v7;
    v8 = result[4];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4(result + 1, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_16089F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E5370(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1608A58(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277A598)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1609428(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1636F18((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1608B30(uint64_t a1)
{
  sub_1608A58(a1);

  operator delete();
}

uint64_t sub_1608B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if ((v1 & 1) == 0)
    {
      if ((v1 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_19:
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_22;
    }

    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

LABEL_22:
  if ((v1 & 0xF0) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  if ((v1 & 0x1F00) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v7 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v7)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1608C70(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 6)
    {
      if (v7 == 50)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = v19 + 1;
          *v30 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_16181DC(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v30;
          }

          v19 = sub_2229998(a3, v23, v20);
          *v30 = v19;
          if (!v19)
          {
            break;
          }

          if (*a3 <= v19 || *v19 != 50)
          {
            goto LABEL_40;
          }
        }

LABEL_45:
        *v30 = 0;
        return *v30;
      }
    }

    else if (v10 == 5)
    {
      if (v7 == 42)
      {
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = sub_194DB04((a1 + 48), v17);
        v15 = sub_1958890(v18, *v30, a3);
        goto LABEL_39;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 2u;
      v25 = *(a1 + 56);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        sub_1618320(v27);
        v25 = v28;
        *(a1 + 56) = v28;
        v6 = *v30;
      }

      v15 = sub_2229908(a3, v25, v6);
      goto LABEL_39;
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
        return *v30;
      }

      goto LABEL_45;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v30;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_39:
    *v30 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }

LABEL_40:
    ;
  }

  return *v30;
}

char *sub_1608EA0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
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

    v4 = sub_1609A08(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 5, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
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
      *v4 = 50;
      v13 = *(v12 + 40);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_160874C(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v18)
  {
    v20 = v18;
    memcpy(v4, v19, v18);
    v4 += v20;
    return v4;
  }

  return sub_1957130(a3, v19, v18, v4);
}

uint64_t sub_1609068(uint64_t a1)
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
      v7 = sub_160888C(v6);
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
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = sub_1609F10(*(a1 + 56));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1609190(uint64_t a1, uint64_t a2)
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

        goto LABEL_30;
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

      goto LABEL_33;
    }

LABEL_30:
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

      goto LABEL_36;
    }

LABEL_33:
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

      goto LABEL_37;
    }

LABEL_36:
    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(a1 + 60) = *(a2 + 60);
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
      *(a1 + 68) = *(a2 + 68);
      goto LABEL_11;
    }

LABEL_38:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x1F00) == 0)
  {
    goto LABEL_20;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x200) == 0)
    {
LABEL_15:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  *(a1 + 76) = *(a2 + 76);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_43:
    *(a1 + 84) = *(a2 + 84);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_42:
  *(a1 + 80) = *(a2 + 80);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_43;
  }

LABEL_17:
  if ((v4 & 0x1000) != 0)
  {
LABEL_18:
    *(a1 + 88) = *(a2 + 88);
  }

LABEL_19:
  *(a1 + 16) |= v4;
LABEL_20:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_160938C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 24);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_16E5370(*(*(v4 + 32) + 8 * v5));
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

uint64_t sub_1609428(uint64_t a1)
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1609508(uint64_t a1)
{
  sub_1609428(a1);

  operator delete();
}

uint64_t sub_1609540(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v56, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
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
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 24);
        goto LABEL_51;
      case 2u:
        if (v8 != 21)
        {
          goto LABEL_65;
        }

        v30 = *v7;
        v20 = v7 + 4;
        v5 |= 0x10u;
        *(a1 + 56) = v30;
        goto LABEL_42;
      case 3u:
        if (v8 != 29)
        {
          goto LABEL_65;
        }

        v25 = *v7;
        v20 = v7 + 4;
        v5 |= 0x20u;
        *(a1 + 60) = v25;
        goto LABEL_42;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 2u;
        v26 = *(a1 + 8);
        v12 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v12 = *v12;
        }

        v13 = (a1 + 32);
        goto LABEL_51;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_65;
        }

        v5 |= 0x40u;
        v18 = v7 + 1;
        LODWORD(v17) = *v7;
        if ((v17 & 0x80) == 0)
        {
          goto LABEL_21;
        }

        v19 = *v18;
        v17 = v17 + (v19 << 7) - 128;
        if (v19 < 0)
        {
          v46 = sub_19587DC(v7, v17);
          *v56 = v46;
          *(a1 + 64) = v47;
          if (!v46)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_21:
          *v56 = v18;
          *(a1 + 64) = v17;
        }

        goto LABEL_53;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 4u;
        v31 = *(a1 + 8);
        v12 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v12 = *v12;
        }

        v13 = (a1 + 40);
        goto LABEL_51;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 8u;
        v32 = *(a1 + 8);
        v12 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
LABEL_51:
        v33 = sub_194DB04(v13, v12);
        v34 = sub_1958890(v33, *v56, a3);
        goto LABEL_52;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_65;
        }

        v5 |= 0x80u;
        v28 = v7 + 1;
        LODWORD(v27) = *v7;
        if ((v27 & 0x80) == 0)
        {
          goto LABEL_39;
        }

        v29 = *v28;
        v27 = v27 + (v29 << 7) - 128;
        if (v29 < 0)
        {
          v50 = sub_19587DC(v7, v27);
          *v56 = v50;
          *(a1 + 68) = v51;
          if (!v50)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v28 = v7 + 2;
LABEL_39:
          *v56 = v28;
          *(a1 + 68) = v27;
        }

        goto LABEL_53;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_65;
        }

        v5 |= 0x100u;
        v39 = v7 + 1;
        LODWORD(v38) = *v7;
        if ((v38 & 0x80) == 0)
        {
          goto LABEL_64;
        }

        v40 = *v39;
        v38 = v38 + (v40 << 7) - 128;
        if (v40 < 0)
        {
          v54 = sub_19587DC(v7, v38);
          *v56 = v54;
          *(a1 + 72) = v55;
          if (!v54)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v39 = v7 + 2;
LABEL_64:
          *v56 = v39;
          *(a1 + 72) = v38;
        }

        goto LABEL_53;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_65;
        }

        v5 |= 0x200u;
        v23 = v7 + 1;
        LODWORD(v22) = *v7;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v24 = *v23;
        v22 = v22 + (v24 << 7) - 128;
        if (v24 < 0)
        {
          v48 = sub_19587DC(v7, v22);
          *v56 = v48;
          *(a1 + 76) = v49;
          if (!v48)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_28:
          *v56 = v23;
          *(a1 + 76) = v22;
        }

        goto LABEL_53;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_65;
        }

        v5 |= 0x400u;
        v36 = v7 + 1;
        LODWORD(v35) = *v7;
        if ((v35 & 0x80) == 0)
        {
          goto LABEL_59;
        }

        v37 = *v36;
        v35 = v35 + (v37 << 7) - 128;
        if (v37 < 0)
        {
          v52 = sub_19587DC(v7, v35);
          *v56 = v52;
          *(a1 + 80) = v53;
          if (!v52)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v36 = v7 + 2;
LABEL_59:
          *v56 = v36;
          *(a1 + 80) = v35;
        }

        goto LABEL_53;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_65;
        }

        v5 |= 0x800u;
        v15 = v7 + 1;
        LODWORD(v14) = *v7;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_16;
        }

        v16 = *v15;
        v14 = v14 + (v16 << 7) - 128;
        if (v16 < 0)
        {
          v44 = sub_19587DC(v7, v14);
          *v56 = v44;
          *(a1 + 84) = v45;
          if (!v44)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v15 = v7 + 2;
LABEL_16:
          *v56 = v15;
          *(a1 + 84) = v14;
        }

        goto LABEL_53;
      case 0xDu:
        if (v8 != 109)
        {
          goto LABEL_65;
        }

        v21 = *v7;
        v20 = v7 + 4;
        v5 |= 0x1000u;
        *(a1 + 88) = v21;
LABEL_42:
        *v56 = v20;
        goto LABEL_53;
      default:
LABEL_65:
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
            v7 = *v56;
          }

          v34 = sub_1952690(v8, v43, v7, a3);
LABEL_52:
          *v56 = v34;
          if (!v34)
          {
            goto LABEL_87;
          }

LABEL_53:
          if (sub_195ADC0(a3, v56, a3[11].u32[1]))
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
LABEL_87:
          *v56 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v56;
    }
  }
}

char *sub_1609A08(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 56);
  *v4 = 21;
  *(v4 + 1) = v8;
  v4 += 5;
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v4 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 60);
  *v4 = 29;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_22;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 64);
  *v4 = 40;
  v4[1] = v10;
  if (v10 > 0x7F)
  {
    v4[1] = v10 | 0x80;
    v11 = v10 >> 7;
    v4[2] = v10 >> 7;
    v7 = v4 + 3;
    if (v10 >= 0x4000)
    {
      LOBYTE(v12) = v4[2];
      do
      {
        *(v7 - 1) = v12 | 0x80;
        v12 = v11 >> 7;
        *v7++ = v11 >> 7;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_22:
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v7 = sub_128AEEC(a3, 7, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v7 = sub_128AEEC(a3, 6, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 8) != 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if ((v6 & 0x80) == 0)
  {
LABEL_25:
    v14 = v7;
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v15 = *(a1 + 68);
  *v7 = 64;
  v7[1] = v15;
  if (v15 > 0x7F)
  {
    v7[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v7[2] = v15 >> 7;
    v14 = v7 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v7) = v7[2];
      do
      {
        *(v14 - 1) = v7 | 0x80;
        v7 = (v16 >> 7);
        *v14++ = v16 >> 7;
        v17 = v16 >> 14;
        v16 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v14 = v7 + 2;
  }

LABEL_35:
  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v19 = *(a1 + 72);
    *v14 = 72;
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

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v24 = *(a1 + 76);
    *v18 = 80;
    v18[1] = v24;
    if (v24 > 0x7F)
    {
      v18[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v18[2] = v24 >> 7;
      v23 = v18 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v18) = v18[2];
        do
        {
          *(v23 - 1) = v18 | 0x80;
          v18 = (v25 >> 7);
          *v23++ = v25 >> 7;
          v26 = v25 >> 14;
          v25 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v23 = v18 + 2;
    }
  }

  else
  {
    v23 = v18;
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v28 = *(a1 + 80);
    *v23 = 88;
    v23[1] = v28;
    if (v28 > 0x7F)
    {
      v23[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v23[2] = v28 >> 7;
      v27 = v23 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v30) = v23[2];
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
      v27 = v23 + 2;
    }
  }

  else
  {
    v27 = v23;
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v33 = *(a1 + 84);
    *v27 = 96;
    v27[1] = v33;
    if (v33 > 0x7F)
    {
      v27[1] = v33 | 0x80;
      v34 = v33 >> 7;
      v27[2] = v33 >> 7;
      v32 = v27 + 3;
      if (v33 >= 0x4000)
      {
        LOBYTE(v27) = v27[2];
        do
        {
          *(v32 - 1) = v27 | 0x80;
          v27 = (v34 >> 7);
          *v32++ = v34 >> 7;
          v35 = v34 >> 14;
          v34 >>= 7;
        }

        while (v35);
      }
    }

    else
    {
      v32 = v27 + 2;
    }
  }

  else
  {
    v32 = v27;
  }

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v32)
    {
      v32 = sub_225EB68(a3, v32);
    }

    v36 = *(a1 + 88);
    *v32 = 109;
    *(v32 + 1) = v36;
    v32 += 5;
  }

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v32;
  }

  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 31);
  if (v40 < 0)
  {
    v41 = *(v39 + 8);
    v40 = *(v39 + 16);
  }

  else
  {
    v41 = (v39 + 8);
  }

  if ((*a3 - v32) >= v40)
  {
    v42 = v40;
    memcpy(v32, v41, v40);
    v32 += v42;
    return v32;
  }

  return sub_1957130(a3, v41, v40, v32);
}

uint64_t sub_1609F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_31;
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
    v18 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v18 + 23);
    v20 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v20 = v19;
    }

    v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v1 & 8) != 0)
  {
LABEL_14:
    v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v1 & 0x10) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 0x20) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 0x40) != 0)
  {
    v12 = *(a1 + 64);
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 11;
    }

    v2 += v14;
  }

  if ((v1 & 0x80) != 0)
  {
    v15 = *(a1 + 68);
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 11;
    }

    v2 += v17;
  }

LABEL_31:
  if ((v1 & 0x1F00) == 0)
  {
    goto LABEL_59;
  }

  if ((v1 & 0x100) != 0)
  {
    v21 = *(a1 + 72);
    if (v21 < 0)
    {
      v22 = 11;
    }

    else
    {
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v22;
    if ((v1 & 0x200) == 0)
    {
LABEL_34:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_49;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_34;
  }

  v23 = *(a1 + 76);
  if (v23 < 0)
  {
    v24 = 11;
  }

  else
  {
    v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v24;
  if ((v1 & 0x400) == 0)
  {
LABEL_35:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_49:
  v25 = *(a1 + 80);
  if (v25 < 0)
  {
    v26 = 11;
  }

  else
  {
    v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v26;
  if ((v1 & 0x800) != 0)
  {
LABEL_53:
    v27 = *(a1 + 84);
    if (v27 < 0)
    {
      v28 = 11;
    }

    else
    {
      v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v28;
  }

LABEL_57:
  if ((v1 & 0x1000) != 0)
  {
    v2 += 5;
  }

LABEL_59:
  v29 = *(a1 + 8);
  if (v29)
  {
    v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *((v29 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v32 < 0)
    {
      v32 = *(v31 + 16);
    }

    v2 += v32;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_160A200(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277A638)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_178ABBC(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1636F9C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_160A2D8(uint64_t a1)
{
  sub_160A200(a1);

  operator delete();
}

uint64_t sub_160A310(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = v19 + 1;
          *v29 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            sub_13D4264(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v29;
          }

          v19 = sub_2205840(a3, v23, v20);
          *v29 = v19;
          if (!v19)
          {
            break;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_40;
          }
        }

LABEL_45:
        *v29 = 0;
        return *v29;
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

          v16 = sub_178E2C4(v18);
          *(a1 + 56) = v16;
          v6 = *v29;
        }

        v15 = sub_2229A28(a3, v16, v6);
        goto LABEL_39;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v27 = sub_194DB04((a1 + 48), v26);
      v15 = sub_1958890(v27, *v29, a3);
      goto LABEL_39;
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
        return *v29;
      }

      goto LABEL_45;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v29;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_39:
    *v29 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }

LABEL_40:
    ;
  }

  return *v29;
}

char *sub_160A540(uint64_t a1, char *__dst, unint64_t *a3)
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

    v7 = *(a1 + 56);
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

    v4 = sub_178AE6C(v7, v9, a3);
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
      *v4 = 26;
      v13 = *(v12 + 20);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_13D3310(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v18)
  {
    v20 = v18;
    memcpy(v4, v19, v18);
    v4 += v20;
    return v4;
  }

  return sub_1957130(a3, v19, v18, v4);
}

uint64_t sub_160A708(uint64_t a1)
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
      v7 = sub_13D3704(v6);
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
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = sub_178B014(*(a1 + 56));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_160A840(uint64_t a1)
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

void sub_160A8F8(uint64_t a1)
{
  sub_160A840(a1);

  operator delete();
}

uint64_t sub_160A930(uint64_t a1)
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
  if ((v1 & 0x1C) != 0)
  {
    *(a1 + 48) = 0;
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

uint64_t sub_160A9BC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
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
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v21 = (a1 + 32);
          goto LABEL_36;
        }
      }

      else if (v11 == 5 && v8 == 45)
      {
        v5 |= 0x10u;
        *(a1 + 48) = *v7;
        *v32 = v7 + 4;
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v8 != 24)
    {
      goto LABEL_37;
    }

    v5 |= 8u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_27:
      *v32 = v17;
      *(a1 + 44) = v16 != 0;
      goto LABEL_45;
    }

    v28 = sub_19587DC(v7, v16);
    *v32 = v28;
    *(a1 + 44) = v29 != 0;
    if (!v28)
    {
      goto LABEL_54;
    }

LABEL_45:
    if (sub_195ADC0(a3, v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
    v14 = v7 + 1;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    v15 = *v14;
    v13 = v13 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_22:
      *v32 = v14;
      *(a1 + 40) = v13;
      goto LABEL_45;
    }

    v30 = sub_19587DC(v7, v13);
    *v32 = v30;
    *(a1 + 40) = v31;
    if (!v30)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v20 = *v20;
    }

    v21 = (a1 + 24);
LABEL_36:
    v23 = sub_194DB04(v21, v20);
    v24 = sub_1958890(v23, *v32, a3);
LABEL_44:
    *v32 = v24;
    if (!v24)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

LABEL_37:
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
      v7 = *v32;
    }

    v24 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_160AC64(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
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

    v12 = *(a1 + 44);
    *v7 = 24;
    v7[1] = v12;
    v7 += 2;
    if ((v6 & 2) == 0)
    {
LABEL_14:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_14;
  }

  v7 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v7);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 48);
  *v7 = 45;
  *(v7 + 1) = v13;
  v7 += 5;
LABEL_23:
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v17)
  {
    v19 = v17;
    memcpy(v7, v18, v17);
    v7 += v19;
    return v7;
  }

  return sub_1957130(a3, v18, v17, v7);
}

uint64_t sub_160AE4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_20;
  }

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
    v10 = *(a1 + 40);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v11;
  }

  v12 = v2 + ((v1 >> 2) & 2);
  if ((v1 & 0x10) != 0)
  {
    v3 = v12 + 5;
  }

  else
  {
    v3 = v12;
  }

LABEL_20:
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

void sub_160AF6C(uint64_t a1, uint64_t a2)
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

      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 40) = *(a2 + 40);
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
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_8;
    }

LABEL_20:
    *(a1 + 44) = *(a2 + 44);
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

void *sub_160B09C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1636C84(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_160B11C(void *a1)
{
  sub_160B09C(a1);

  operator delete();
}

unsigned __int8 *sub_160B154(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15FA36C(v4);
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

char *sub_160B1D0(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_161868C(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2228AF8(a3, v16, v13);
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

char *sub_160B360(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_160F184(v8, v10, a3);
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

uint64_t sub_160B4A0(uint64_t a1)
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
      v7 = sub_160F680(v6);
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

void sub_160B548(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_1637AD8((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

uint64_t sub_160B61C(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277A6A8)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_160B09C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_160B6F0(uint64_t a1)
{
  sub_160B61C(a1);

  operator delete();
}

uint64_t sub_160B728(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_42;
        }

        *(a1 + 16) |= 1u;
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v27 = sub_194DB04((a1 + 48), v26);
        v16 = sub_1958890(v27, *v36, a3);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_42;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 56);
        if (!v13)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_16184E4(v15);
          *(a1 + 56) = v13;
          v7 = *v36;
        }

        v16 = sub_2229AB8(a3, v13, v7);
      }

LABEL_49:
      *v36 = v16;
      if (!v16)
      {
        goto LABEL_57;
      }

      goto LABEL_50;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_42;
    }

    v5 |= 4u;
    v29 = v7 + 1;
    LODWORD(v28) = *v7;
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    v30 = *v29;
    v28 = v28 + (v30 << 7) - 128;
    if ((v30 & 0x80000000) == 0)
    {
      v29 = v7 + 2;
LABEL_41:
      *v36 = v29;
      *(a1 + 64) = v28;
      goto LABEL_50;
    }

    v34 = sub_19587DC(v7, v28);
    *v36 = v34;
    *(a1 + 64) = v35;
    if (!v34)
    {
      goto LABEL_57;
    }

LABEL_50:
    if (sub_195ADC0(a3, v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    v17 = v7 - 1;
    while (1)
    {
      v18 = (v17 + 1);
      *v36 = v17 + 1;
      v19 = *(a1 + 40);
      if (v19 && (v20 = *(a1 + 32), v20 < *v19))
      {
        *(a1 + 32) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = *(a1 + 24);
        if (!v22)
        {
          operator new();
        }

        *v24 = v23;
        v24[1] = sub_195A650;
        *v23 = 0;
        v23[1] = 0;
        v23[2] = 0;
        v21 = sub_19593CC(a1 + 24, v23);
        v18 = *v36;
      }

      v17 = sub_1958890(v21, v18, a3);
      *v36 = v17;
      if (!v17)
      {
        goto LABEL_57;
      }

      if (*a3 <= v17 || *v17 != 34)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_42:
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
      v7 = *v36;
    }

    v16 = sub_1952690(v8, v33, v7, a3);
    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_57:
  *v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v36;
}

char *sub_160BA3C(uint64_t a1, char *__dst, unint64_t *a3)
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
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 56);
    *v4 = 18;
    v9 = *(v8 + 40);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_160B360(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
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
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 64);
  *v4 = 24;
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

LABEL_19:
  v15 = *(a1 + 32);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      v7 = sub_1355F54(a3, 4, *(*(a1 + 40) + v16), v7);
      v16 += 8;
      --v15;
    }

    while (v15);
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

uint64_t sub_160BC38(uint64_t a1)
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
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v12 = sub_160B4A0(*(a1 + 56));
    v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_17:
    v13 = *(a1 + 64);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v14;
  }

LABEL_21:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v4 += v18;
  }

  *(a1 + 20) = v4;
  return v4;
}

double sub_160BDBC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26F7318;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
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
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = &qword_278E990;
  *(a1 + 232) = &qword_278E990;
  *(a1 + 240) = &qword_278E990;
  *(a1 + 248) = &qword_278E990;
  *(a1 + 256) = &qword_278E990;
  *(a1 + 264) = &qword_278E990;
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 396) = 0u;
  return result;
}

void *sub_160BE54(void *a1)
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

  sub_160BF30(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1636D08(a1 + 25);
  sub_1956AFC(a1 + 22);
  sub_1956ABC((a1 + 20));
  sub_1637020(a1 + 17);
  sub_1956AFC(a1 + 14);
  sub_1956ABC((a1 + 12));
  sub_1636E94(a1 + 9);
  sub_1956ABC((a1 + 7));
  sub_1636C84(a1 + 4);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_160BF30(uint64_t a1)
{
  v3 = *(a1 + 224);
  v2 = (a1 + 224);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 232) != &qword_278E990)
  {
    sub_194E89C((a1 + 232));
  }

  if (*(a1 + 240) != &qword_278E990)
  {
    sub_194E89C((a1 + 240));
  }

  result = (a1 + 248);
  if (*(a1 + 248) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (*(a1 + 256) != &qword_278E990)
  {
    sub_194E89C((a1 + 256));
  }

  if (*(a1 + 264) != &qword_278E990)
  {
    sub_194E89C((a1 + 264));
  }

  if (a1 != &off_277A6F0)
  {
    v5 = *(a1 + 272);
    if (v5)
    {
      sub_16E4E08(v5);
      operator delete();
    }

    v6 = *(a1 + 280);
    if (v6)
    {
      sub_16057D4(v6);
      operator delete();
    }

    v7 = *(a1 + 288);
    if (v7)
    {
      sub_1601BB0(v7);
      operator delete();
    }

    v8 = *(a1 + 296);
    if (v8)
    {
      sub_16041E8(v8);
      operator delete();
    }

    result = *(a1 + 304);
    if (result)
    {
      sub_16034E4(result);

      operator delete();
    }
  }

  return result;
}

void sub_160C098(void *a1)
{
  sub_160BE54(a1);

  operator delete();
}

uint64_t sub_160C0D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 48) + 8);
    do
    {
      v4 = *v3++;
      sub_15FA36C(v4);
      --v2;
    }

    while (v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      sub_1600894(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  *(a1 + 96) = 0;
  sub_12A41D0(a1 + 112);
  v8 = *(a1 + 144);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 152) + 8);
    do
    {
      v10 = *v9++;
      sub_16F3D88(v10);
      --v8;
    }

    while (v8);
    *(a1 + 144) = 0;
  }

  *(a1 + 160) = 0;
  result = sub_12A41D0(a1 + 176);
  v12 = *(a1 + 208);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 216) + 8);
    do
    {
      v14 = *v13++;
      result = sub_1600D9C(v14);
      --v12;
    }

    while (v12);
    *(a1 + 208) = 0;
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_27;
  }

  if (v15)
  {
    v18 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v18 + 23) < 0)
    {
      **v18 = 0;
      *(v18 + 8) = 0;
      if ((v15 & 2) != 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *v18 = 0;
      *(v18 + 23) = 0;
      if ((v15 & 2) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_20:
    if ((v15 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_55:
    v20 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v20 + 23) < 0)
    {
      **v20 = 0;
      *(v20 + 8) = 0;
      if ((v15 & 8) != 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      *v20 = 0;
      *(v20 + 23) = 0;
      if ((v15 & 8) != 0)
      {
        goto LABEL_59;
      }
    }

LABEL_22:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_23;
    }

LABEL_63:
    v22 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v22 + 23) < 0)
    {
      **v22 = 0;
      *(v22 + 8) = 0;
      if ((v15 & 0x20) != 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      *v22 = 0;
      *(v22 + 23) = 0;
      if ((v15 & 0x20) != 0)
      {
        goto LABEL_67;
      }
    }

LABEL_24:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_71;
  }

  if ((v15 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_51:
  v19 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v19 + 23) < 0)
  {
    **v19 = 0;
    *(v19 + 8) = 0;
    if ((v15 & 4) != 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    *v19 = 0;
    *(v19 + 23) = 0;
    if ((v15 & 4) != 0)
    {
      goto LABEL_55;
    }
  }

LABEL_21:
  if ((v15 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_59:
  v21 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v21 + 23) < 0)
  {
    **v21 = 0;
    *(v21 + 8) = 0;
    if ((v15 & 0x10) != 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
    *v21 = 0;
    *(v21 + 23) = 0;
    if ((v15 & 0x10) != 0)
    {
      goto LABEL_63;
    }
  }

LABEL_23:
  if ((v15 & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_67:
  v23 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v23 + 23) < 0)
  {
    **v23 = 0;
    *(v23 + 8) = 0;
    if ((v15 & 0x40) != 0)
    {
      goto LABEL_71;
    }

LABEL_25:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  *v23 = 0;
  *(v23 + 23) = 0;
  if ((v15 & 0x40) == 0)
  {
    goto LABEL_25;
  }

LABEL_71:
  result = sub_16E4E44(*(a1 + 272));
  if ((v15 & 0x80) != 0)
  {
LABEL_26:
    result = sub_1605A04(*(a1 + 280));
  }

LABEL_27:
  if ((v15 & 0x700) == 0)
  {
    goto LABEL_32;
  }

  if ((v15 & 0x100) != 0)
  {
    result = sub_1600ED4(*(a1 + 288));
    if ((v15 & 0x200) == 0)
    {
LABEL_30:
      if ((v15 & 0x400) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v15 & 0x200) == 0)
  {
    goto LABEL_30;
  }

  result = sub_16043A0(*(a1 + 296));
  if ((v15 & 0x400) != 0)
  {
LABEL_31:
    result = sub_1603590(*(a1 + 304));
  }

LABEL_32:
  if ((v15 & 0xF800) != 0)
  {
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
  }

  if ((v15 & 0xFF0000) != 0)
  {
    *(a1 + 344) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
  }

  if (HIBYTE(v15))
  {
    *(a1 + 396) = 0;
    *(a1 + 364) = 0u;
    *(a1 + 380) = 0u;
  }

  if ((*(a1 + 20) & 0xF) != 0)
  {
    *(a1 + 408) = 0;
    *(a1 + 400) = 0;
  }

  v17 = *(a1 + 8);
  v16 = (a1 + 8);
  v16[1] = 0;
  if (v17)
  {

    return sub_1957EA8(v16);
  }

  return result;
}

char *sub_160C484(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 48) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_160F184(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11 < 1)
  {
    v14 = a2;
  }

  else
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 64) + 4 * j);
      *a2 = 16;
      a2[1] = v13;
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v15 = v13 >> 7;
        a2[2] = v13 >> 7;
        v14 = a2 + 3;
        if (v13 >= 0x4000)
        {
          LOBYTE(a2) = a2[2];
          do
          {
            *(v14 - 1) = a2 | 0x80;
            a2 = (v15 >> 7);
            *v14++ = v15 >> 7;
            v16 = v15 >> 14;
            v15 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v14 = a2 + 2;
      }

      a2 = v14;
    }
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v19 = *(*(a1 + 88) + 8 * k + 8);
      *v14 = 26;
      v20 = *(v19 + 20);
      v14[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v14 + 1);
      }

      else
      {
        v21 = v14 + 2;
      }

      v14 = sub_1600A90(v19, v21, a3);
    }
  }

  v22 = *(a1 + 16);
  if ((v22 & 1) == 0)
  {
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_31;
    }

LABEL_34:
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v24 = *(a1 + 272);
    *v14 = 42;
    v25 = *(v24 + 44);
    v14[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v14 + 1);
    }

    else
    {
      v26 = v14 + 2;
    }

    v14 = sub_16E5070(v24, v26, a3);
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  v14 = sub_128AEEC(a3, 4, (*(a1 + 224) & 0xFFFFFFFFFFFFFFFELL), v14);
  if ((v22 & 0x40) != 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  if ((v22 & 0x800) == 0)
  {
LABEL_32:
    v23 = v14;
    goto LABEL_47;
  }

LABEL_40:
  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v27 = *(a1 + 312);
  *v14 = 48;
  v14[1] = v27;
  if (v27 > 0x7F)
  {
    v14[1] = v27 | 0x80;
    v28 = v27 >> 7;
    v14[2] = v27 >> 7;
    v23 = v14 + 3;
    if (v27 >= 0x4000)
    {
      LOBYTE(v29) = v14[2];
      do
      {
        *(v23 - 1) = v29 | 0x80;
        v29 = v28 >> 7;
        *v23++ = v28 >> 7;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
    }
  }

  else
  {
    v23 = v14 + 2;
  }

LABEL_47:
  if ((v22 & 0x1000) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v32 = *(a1 + 320);
    *v23 = 56;
    v23[1] = v32;
    if (v32 > 0x7F)
    {
      v23[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v23[2] = v32 >> 7;
      v31 = v23 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v34) = v23[2];
        do
        {
          *(v31 - 1) = v34 | 0x80;
          v34 = v33 >> 7;
          *v31++ = v33 >> 7;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
      }
    }

    else
    {
      v31 = v23 + 2;
    }
  }

  else
  {
    v31 = v23;
  }

  if ((v22 & 0x2000) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v37 = *(a1 + 328);
    *v31 = 64;
    v31[1] = v37;
    if (v37 > 0x7F)
    {
      v31[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v31[2] = v37 >> 7;
      v36 = v31 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v31) = v31[2];
        do
        {
          *(v36 - 1) = v31 | 0x80;
          v31 = (v38 >> 7);
          *v36++ = v38 >> 7;
          v39 = v38 >> 14;
          v38 >>= 7;
        }

        while (v39);
      }
    }

    else
    {
      v36 = v31 + 2;
    }
  }

  else
  {
    v36 = v31;
  }

  if ((v22 & 0x100000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v40 = *(a1 + 360);
    *v36 = 72;
    v36[1] = v40;
    v36 += 2;
  }

  if ((v22 & 0x4000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v42 = *(a1 + 336);
    *v36 = 80;
    v36[1] = v42;
    if (v42 > 0x7F)
    {
      v36[1] = v42 | 0x80;
      v43 = v42 >> 7;
      v36[2] = v42 >> 7;
      v41 = v36 + 3;
      if (v42 >= 0x4000)
      {
        LOBYTE(v44) = v36[2];
        do
        {
          *(v41 - 1) = v44 | 0x80;
          v44 = v43 >> 7;
          *v41++ = v43 >> 7;
          v45 = v43 >> 14;
          v43 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v41 = v36 + 2;
    }
  }

  else
  {
    v41 = v36;
  }

  if ((v22 & 0x8000) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v47 = *(a1 + 340);
    *v41 = 88;
    v41[1] = v47;
    if (v47 > 0x7F)
    {
      v41[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v41[2] = v47 >> 7;
      v46 = v41 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v41) = v41[2];
        do
        {
          *(v46 - 1) = v41 | 0x80;
          v41 = (v48 >> 7);
          *v46++ = v48 >> 7;
          v49 = v48 >> 14;
          v48 >>= 7;
        }

        while (v49);
      }
    }

    else
    {
      v46 = v41 + 2;
    }
  }

  else
  {
    v46 = v41;
  }

  if ((v22 & 0x10000) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v51 = *(a1 + 344);
    *v46 = 96;
    v46[1] = v51;
    if (v51 > 0x7F)
    {
      v46[1] = v51 | 0x80;
      v52 = v51 >> 7;
      v46[2] = v51 >> 7;
      v50 = v46 + 3;
      if (v51 >= 0x4000)
      {
        LOBYTE(v53) = v46[2];
        do
        {
          *(v50 - 1) = v53 | 0x80;
          v53 = v52 >> 7;
          *v50++ = v52 >> 7;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v50 = v46 + 2;
    }
  }

  else
  {
    v50 = v46;
  }

  v55 = *(a1 + 96);
  if (v55 < 1)
  {
    v58 = v50;
  }

  else
  {
    for (m = 0; m != v55; ++m)
    {
      if (*a3 <= v50)
      {
        v50 = sub_225EB68(a3, v50);
      }

      v57 = *(*(a1 + 104) + 4 * m);
      *v50 = 104;
      v50[1] = v57;
      if (v57 > 0x7F)
      {
        v50[1] = v57 | 0x80;
        v59 = v57 >> 7;
        v50[2] = v57 >> 7;
        v58 = v50 + 3;
        if (v57 >= 0x4000)
        {
          LOBYTE(v50) = v50[2];
          do
          {
            *(v58 - 1) = v50 | 0x80;
            LODWORD(v50) = v59 >> 7;
            *v58++ = v59 >> 7;
            v60 = v59 >> 14;
            v59 >>= 7;
          }

          while (v60);
        }
      }

      else
      {
        v58 = v50 + 2;
      }

      v50 = v58;
    }
  }

  if ((v22 & 0x200000) == 0)
  {
    if ((v22 & 0x20000) == 0)
    {
      goto LABEL_110;
    }

LABEL_115:
    if (*a3 <= v58)
    {
      v58 = sub_225EB68(a3, v58);
    }

    v63 = *(a1 + 348);
    *v58 = 125;
    *(v58 + 1) = v63;
    v58 += 5;
    if ((v22 & 0x40000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_118;
  }

  if (*a3 <= v58)
  {
    v58 = sub_225EB68(a3, v58);
  }

  v62 = *(a1 + 361);
  *v58 = 112;
  v58[1] = v62;
  v58 += 2;
  if ((v22 & 0x20000) != 0)
  {
    goto LABEL_115;
  }

LABEL_110:
  if ((v22 & 0x40000) == 0)
  {
LABEL_111:
    v61 = v58;
    goto LABEL_125;
  }

LABEL_118:
  if (*a3 <= v58)
  {
    v58 = sub_225EB68(a3, v58);
  }

  v64 = *(a1 + 352);
  *v58 = 384;
  v58[2] = v64;
  if (v64 > 0x7F)
  {
    v58[2] = v64 | 0x80;
    v65 = v64 >> 7;
    v58[3] = v64 >> 7;
    v61 = v58 + 4;
    if (v64 >= 0x4000)
    {
      LOBYTE(v66) = v58[3];
      do
      {
        *(v61 - 1) = v66 | 0x80;
        v66 = v65 >> 7;
        *v61++ = v65 >> 7;
        v67 = v65 >> 14;
        v65 >>= 7;
      }

      while (v67);
    }
  }

  else
  {
    v61 = v58 + 3;
  }

LABEL_125:
  if ((v22 & 0x80000) != 0)
  {
    if (*a3 <= v61)
    {
      v61 = sub_225EB68(a3, v61);
    }

    v69 = *(a1 + 356);
    *v61 = 392;
    v61[2] = v69;
    if (v69 > 0x7F)
    {
      v61[2] = v69 | 0x80;
      v70 = v69 >> 7;
      v61[3] = v69 >> 7;
      v68 = v61 + 4;
      if (v69 >= 0x4000)
      {
        LOBYTE(v61) = v61[3];
        do
        {
          *(v68 - 1) = v61 | 0x80;
          LODWORD(v61) = v70 >> 7;
          *v68++ = v70 >> 7;
          v71 = v70 >> 14;
          v70 >>= 7;
        }

        while (v71);
      }
    }

    else
    {
      v68 = v61 + 3;
    }
  }

  else
  {
    v68 = v61;
  }

  if ((v22 & 2) != 0)
  {
    v68 = sub_128AEEC(a3, 18, (*(a1 + 232) & 0xFFFFFFFFFFFFFFFELL), v68);
  }

  if ((v22 & 4) != 0)
  {
    v68 = sub_128AEEC(a3, 19, (*(a1 + 240) & 0xFFFFFFFFFFFFFFFELL), v68);
  }

  v72 = *(a1 + 120);
  if (v72 >= 1)
  {
    v73 = 8;
    do
    {
      v74 = *(*(a1 + 128) + v73);
      v75 = *(v74 + 23);
      if (v75 < 0 && (v75 = v74[1], v75 > 127) || (*a3 - v68 + 13) < v75)
      {
        v68 = sub_1957480(a3, 20, v74, v68);
      }

      else
      {
        *v68 = 418;
        v68[2] = v75;
        if (*(v74 + 23) < 0)
        {
          v74 = *v74;
        }

        v76 = v68 + 3;
        memcpy(v68 + 3, v74, v75);
        v68 = &v76[v75];
      }

      v73 += 8;
      --v72;
    }

    while (v72);
  }

  if ((v22 & 0x1000000) != 0)
  {
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v78 = *(a1 + 364);
    *v68 = 424;
    v68[2] = v78;
    if (v78 > 0x7F)
    {
      v68[2] = v78 | 0x80;
      v79 = v78 >> 7;
      v68[3] = v78 >> 7;
      v77 = v68 + 4;
      if (v78 >= 0x4000)
      {
        LOBYTE(v80) = v68[3];
        do
        {
          *(v77 - 1) = v80 | 0x80;
          v80 = v79 >> 7;
          *v77++ = v79 >> 7;
          v81 = v79 >> 14;
          v79 >>= 7;
        }

        while (v81);
      }
    }

    else
    {
      v77 = v68 + 3;
    }
  }

  else
  {
    v77 = v68;
  }

  if ((v22 & 0x400000) != 0)
  {
    if (*a3 <= v77)
    {
      v77 = sub_225EB68(a3, v77);
    }

    v82 = *(a1 + 362);
    *v77 = 432;
    v77[2] = v82;
    v77 += 3;
  }

  if ((v22 & 0x2000000) != 0)
  {
    if (*a3 <= v77)
    {
      v77 = sub_225EB68(a3, v77);
    }

    v84 = *(a1 + 368);
    *v77 = 440;
    v77[2] = v84;
    if (v84 > 0x7F)
    {
      v77[2] = v84 | 0x80;
      v85 = v84 >> 7;
      v77[3] = v84 >> 7;
      v83 = v77 + 4;
      if (v84 >= 0x4000)
      {
        LOBYTE(v86) = v77[3];
        do
        {
          *(v83 - 1) = v86 | 0x80;
          v86 = v85 >> 7;
          *v83++ = v85 >> 7;
          v87 = v85 >> 14;
          v85 >>= 7;
        }

        while (v87);
      }
    }

    else
    {
      v83 = v77 + 3;
    }
  }

  else
  {
    v83 = v77;
  }

  if ((v22 & 0x800000) == 0)
  {
    if ((v22 & 8) == 0)
    {
      goto LABEL_173;
    }

LABEL_178:
    v83 = sub_128AEEC(a3, 25, (*(a1 + 248) & 0xFFFFFFFFFFFFFFFELL), v83);
    if ((v22 & 0x4000000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_179;
  }

  if (*a3 <= v83)
  {
    v83 = sub_225EB68(a3, v83);
  }

  v89 = *(a1 + 363);
  *v83 = 448;
  v83[2] = v89;
  v83 += 3;
  if ((v22 & 8) != 0)
  {
    goto LABEL_178;
  }

LABEL_173:
  if ((v22 & 0x4000000) == 0)
  {
LABEL_174:
    v88 = v83;
    goto LABEL_186;
  }

LABEL_179:
  if (*a3 <= v83)
  {
    v83 = sub_225EB68(a3, v83);
  }

  v90 = *(a1 + 372);
  *v83 = 464;
  v83[2] = v90;
  if (v90 > 0x7F)
  {
    v83[2] = v90 | 0x80;
    v91 = v90 >> 7;
    v83[3] = v90 >> 7;
    v88 = v83 + 4;
    if (v90 >= 0x4000)
    {
      LOBYTE(v92) = v83[3];
      do
      {
        *(v88 - 1) = v92 | 0x80;
        v92 = v91 >> 7;
        *v88++ = v91 >> 7;
        v93 = v91 >> 14;
        v91 >>= 7;
      }

      while (v93);
    }
  }

  else
  {
    v88 = v83 + 3;
  }

LABEL_186:
  if ((v22 & 0x10) != 0)
  {
    v88 = sub_128AEEC(a3, 27, (*(a1 + 256) & 0xFFFFFFFFFFFFFFFELL), v88);
  }

  if ((v22 & 0x8000000) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v95 = *(a1 + 376);
    *v88 = 480;
    v88[2] = v95;
    if (v95 > 0x7F)
    {
      v88[2] = v95 | 0x80;
      v96 = v95 >> 7;
      v88[3] = v95 >> 7;
      v94 = v88 + 4;
      if (v95 >= 0x4000)
      {
        LOBYTE(v88) = v88[3];
        do
        {
          *(v94 - 1) = v88 | 0x80;
          v88 = (v96 >> 7);
          *v94++ = v96 >> 7;
          v97 = v96 >> 14;
          v96 >>= 7;
        }

        while (v97);
      }
    }

    else
    {
      v94 = v88 + 3;
    }
  }

  else
  {
    v94 = v88;
  }

  if ((v22 & 0x10000000) != 0)
  {
    if (*a3 <= v94)
    {
      v94 = sub_225EB68(a3, v94);
    }

    v99 = *(a1 + 380);
    *v94 = 488;
    v94[2] = v99;
    if (v99 > 0x7F)
    {
      v94[2] = v99 | 0x80;
      v100 = v99 >> 7;
      v94[3] = v99 >> 7;
      v98 = v94 + 4;
      if (v99 >= 0x4000)
      {
        LOBYTE(v94) = v94[3];
        do
        {
          *(v98 - 1) = v94 | 0x80;
          v94 = (v100 >> 7);
          *v98++ = v100 >> 7;
          v101 = v100 >> 14;
          v100 >>= 7;
        }

        while (v101);
      }
    }

    else
    {
      v98 = v94 + 3;
    }
  }

  else
  {
    v98 = v94;
  }

  if ((v22 & 0x20000000) != 0)
  {
    if (*a3 <= v98)
    {
      v98 = sub_225EB68(a3, v98);
    }

    v102 = *(a1 + 384);
    *v98 = 497;
    *(v98 + 2) = v102;
    v98 += 10;
  }

  if ((v22 & 0x40000000) != 0)
  {
    if (*a3 <= v98)
    {
      v98 = sub_225EB68(a3, v98);
    }

    v104 = *(a1 + 392);
    *v98 = 504;
    v98[2] = v104;
    if (v104 > 0x7F)
    {
      v98[2] = v104 | 0x80;
      v105 = v104 >> 7;
      v98[3] = v104 >> 7;
      v103 = v98 + 4;
      if (v104 >= 0x4000)
      {
        LOBYTE(v106) = v98[3];
        do
        {
          *(v103 - 1) = v106 | 0x80;
          v106 = v105 >> 7;
          *v103++ = v105 >> 7;
          v107 = v105 >> 14;
          v105 >>= 7;
        }

        while (v107);
      }
    }

    else
    {
      v103 = v98 + 3;
    }
  }

  else
  {
    v103 = v98;
  }

  if ((v22 & 0x20) != 0)
  {
    v103 = sub_128AEEC(a3, 32, (*(a1 + 264) & 0xFFFFFFFFFFFFFFFELL), v103);
  }

  v108 = *(a1 + 144);
  if (v108)
  {
    for (n = 0; n != v108; ++n)
    {
      if (*a3 <= v103)
      {
        v103 = sub_225EB68(a3, v103);
      }

      v110 = *(*(a1 + 152) + 8 * n + 8);
      *v103 = 650;
      v111 = *(v110 + 20);
      v103[2] = v111;
      if (v111 > 0x7F)
      {
        v112 = sub_19575D0(v111, v103 + 2);
      }

      else
      {
        v112 = v103 + 3;
      }

      v103 = sub_16F3FF8(v110, v112, a3);
    }
  }

  v113 = *(a1 + 160);
  if (v113 < 1)
  {
    v116 = v103;
  }

  else
  {
    for (ii = 0; ii != v113; ++ii)
    {
      if (*a3 <= v103)
      {
        v103 = sub_225EB68(a3, v103);
      }

      v115 = *(*(a1 + 168) + 4 * ii);
      *v103 = 656;
      v103[2] = v115;
      if (v115 > 0x7F)
      {
        v103[2] = v115 | 0x80;
        v117 = v115 >> 7;
        v103[3] = v115 >> 7;
        v116 = v103 + 4;
        if (v115 >= 0x4000)
        {
          LOBYTE(v118) = v103[3];
          do
          {
            *(v116 - 1) = v118 | 0x80;
            v118 = v117 >> 7;
            *v116++ = v117 >> 7;
            v119 = v117 >> 14;
            v117 >>= 7;
          }

          while (v119);
        }
      }

      else
      {
        v116 = v103 + 3;
      }

      v103 = v116;
    }
  }

  if ((v22 & 0x80) != 0)
  {
    if (*a3 <= v116)
    {
      v116 = sub_225EB68(a3, v116);
    }

    v120 = *(a1 + 280);
    *v116 = 666;
    v121 = *(v120 + 20);
    v116[2] = v121;
    if (v121 > 0x7F)
    {
      v122 = sub_19575D0(v121, v116 + 2);
    }

    else
    {
      v122 = v116 + 3;
    }

    v116 = sub_1606670(v120, v122, a3);
  }

  if (v22 < 0)
  {
    if (*a3 <= v116)
    {
      v116 = sub_225EB68(a3, v116);
    }

    v124 = *(a1 + 396);
    *v116 = 672;
    v116[2] = v124;
    if (v124 > 0x7F)
    {
      v116[2] = v124 | 0x80;
      v125 = v124 >> 7;
      v116[3] = v124 >> 7;
      v123 = v116 + 4;
      if (v124 >= 0x4000)
      {
        LOBYTE(v116) = v116[3];
        do
        {
          *(v123 - 1) = v116 | 0x80;
          v116 = (v125 >> 7);
          *v123++ = v125 >> 7;
          v126 = v125 >> 14;
          v125 >>= 7;
        }

        while (v126);
      }
    }

    else
    {
      v123 = v116 + 3;
    }
  }

  else
  {
    v123 = v116;
  }

  v127 = *(a1 + 184);
  if (v127 >= 1)
  {
    v128 = 8;
    do
    {
      v129 = *(*(a1 + 192) + v128);
      v130 = *(v129 + 23);
      if (v130 < 0 && (v130 = v129[1], v130 > 127) || (*a3 - v123 + 13) < v130)
      {
        v123 = sub_1957480(a3, 37, v129, v123);
      }

      else
      {
        *v123 = 682;
        v123[2] = v130;
        if (*(v129 + 23) < 0)
        {
          v129 = *v129;
        }

        v131 = v123 + 3;
        memcpy(v123 + 3, v129, v130);
        v123 = &v131[v130];
      }

      v128 += 8;
      --v127;
    }

    while (v127);
  }

  v132 = *(a1 + 208);
  if (v132)
  {
    for (jj = 0; jj != v132; ++jj)
    {
      if (*a3 <= v123)
      {
        v123 = sub_225EB68(a3, v123);
      }

      v134 = *(*(a1 + 216) + 8 * jj + 8);
      *v123 = 690;
      v135 = *(v134 + 20);
      v123[2] = v135;
      if (v135 > 0x7F)
      {
        v136 = sub_19575D0(v135, v123 + 2);
      }

      else
      {
        v136 = v123 + 3;
      }

      v123 = sub_1601374(v134, v136, a3);
    }
  }

  if ((v22 & 0x100) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v137 = *(a1 + 288);
    *v123 = 698;
    v138 = *(v137 + 64);
    v123[2] = v138;
    if (v138 > 0x7F)
    {
      v139 = sub_19575D0(v138, v123 + 2);
    }

    else
    {
      v139 = v123 + 3;
    }

    v123 = sub_1601EA8(v137, v139, a3);
    if ((v22 & 0x200) == 0)
    {
LABEL_278:
      if ((v22 & 0x400) == 0)
      {
        goto LABEL_298;
      }

      goto LABEL_292;
    }
  }

  else if ((v22 & 0x200) == 0)
  {
    goto LABEL_278;
  }

  if (*a3 <= v123)
  {
    v123 = sub_225EB68(a3, v123);
  }

  v140 = *(a1 + 296);
  *v123 = 706;
  v141 = *(v140 + 20);
  v123[2] = v141;
  if (v141 > 0x7F)
  {
    v142 = sub_19575D0(v141, v123 + 2);
  }

  else
  {
    v142 = v123 + 3;
  }

  v123 = sub_1604A74(v140, v142, a3);
  if ((v22 & 0x400) != 0)
  {
LABEL_292:
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v143 = *(a1 + 304);
    *v123 = 714;
    v144 = *(v143 + 20);
    v123[2] = v144;
    if (v144 > 0x7F)
    {
      v145 = sub_19575D0(v144, v123 + 2);
    }

    else
    {
      v145 = v123 + 3;
    }

    v123 = sub_1603828(v143, v145, a3);
  }

LABEL_298:
  v146 = *(a1 + 20);
  if ((v146 & 4) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v147 = *(a1 + 405);
    *v123 = 720;
    v123[2] = v147;
    v123 += 3;
  }

  if (v146)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v149 = *(a1 + 400);
    *v123 = 728;
    v123[2] = v149;
    if (v149 > 0x7F)
    {
      v123[2] = v149 | 0x80;
      v150 = v149 >> 7;
      v123[3] = v149 >> 7;
      v148 = v123 + 4;
      if (v149 >= 0x4000)
      {
        LOBYTE(v151) = v123[3];
        do
        {
          *(v148 - 1) = v151 | 0x80;
          v151 = v150 >> 7;
          *v148++ = v150 >> 7;
          v152 = v150 >> 14;
          v150 >>= 7;
        }

        while (v152);
      }
    }

    else
    {
      v148 = v123 + 3;
    }
  }

  else
  {
    v148 = v123;
  }

  if ((v146 & 8) != 0)
  {
    if (*a3 <= v148)
    {
      v148 = sub_225EB68(a3, v148);
    }

    v154 = *(a1 + 408);
    *v148 = 736;
    v148[2] = v154;
    if (v154 > 0x7F)
    {
      v148[2] = v154 | 0x80;
      v155 = v154 >> 7;
      v148[3] = v154 >> 7;
      v153 = v148 + 4;
      if (v154 >= 0x4000)
      {
        LOBYTE(v156) = v148[3];
        do
        {
          *(v153 - 1) = v156 | 0x80;
          v156 = v155 >> 7;
          *v153++ = v155 >> 7;
          v157 = v155 >> 14;
          v155 >>= 7;
        }

        while (v157);
      }
    }

    else
    {
      v153 = v148 + 3;
    }
  }

  else
  {
    v153 = v148;
  }

  if ((v146 & 2) != 0)
  {
    if (*a3 <= v153)
    {
      v153 = sub_225EB68(a3, v153);
    }

    v158 = *(a1 + 404);
    *v153 = 744;
    v153[2] = v158;
    v153 += 3;
  }

  v159 = *(a1 + 8);
  if ((v159 & 1) == 0)
  {
    return v153;
  }

  v161 = v159 & 0xFFFFFFFFFFFFFFFCLL;
  v162 = *(v161 + 31);
  if (v162 < 0)
  {
    v163 = *(v161 + 8);
    v162 = *(v161 + 16);
  }

  else
  {
    v163 = (v161 + 8);
  }

  if ((*a3 - v153) >= v162)
  {
    v164 = v162;
    memcpy(v153, v163, v162);
    v153 += v164;
    return v153;
  }

  return sub_1957130(a3, v163, v162, v153);
}

uint64_t sub_160D7D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
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
      v7 = sub_160F680(v6);
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
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 64) + 4 * v10);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v12;
      ++v10;
    }

    while (v8 != v10);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a1 + 80);
  v14 = v2 + v8 + v9 + v13;
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
      v19 = sub_1600B78(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = sub_1959E5C((a1 + 96));
  v21 = *(a1 + 120);
  v22 = v20 + *(a1 + 96) + v14 + 2 * v21;
  if (v21 >= 1)
  {
    v23 = (*(a1 + 128) + 8);
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

  v27 = *(a1 + 144);
  v28 = v22 + 2 * v27;
  v29 = *(a1 + 152);
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
      v33 = sub_16F4230(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 160);
  if (v34)
  {
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = *(*(a1 + 168) + 4 * v35);
      if (v37 < 0)
      {
        v38 = 10;
      }

      else
      {
        v38 = (9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6;
      }

      v36 += v38;
      ++v35;
    }

    while (v34 != v35);
  }

  else
  {
    v36 = 0;
  }

  v39 = *(a1 + 184);
  v40 = v36 + v28 + 2 * (v39 + v34);
  if (v39 >= 1)
  {
    v41 = (*(a1 + 192) + 8);
    do
    {
      v42 = *v41++;
      v43 = *(v42 + 23);
      v44 = *(v42 + 8);
      if ((v43 & 0x80u) == 0)
      {
        v44 = v43;
      }

      v40 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      --v39;
    }

    while (v39);
  }

  v45 = *(a1 + 208);
  v46 = v40 + 2 * v45;
  v47 = *(a1 + 216);
  if (v47)
  {
    v48 = (v47 + 8);
  }

  else
  {
    v48 = 0;
  }

  if (v45)
  {
    v49 = 8 * v45;
    do
    {
      v50 = *v48++;
      v51 = sub_16016E4(v50);
      v46 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6);
      v49 -= 8;
    }

    while (v49);
  }

  v52 = *(a1 + 16);
  if (!v52)
  {
    goto LABEL_63;
  }

  if (v52)
  {
    v72 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
    v73 = *(v72 + 23);
    v74 = *(v72 + 8);
    if ((v73 & 0x80u) == 0)
    {
      v74 = v73;
    }

    v46 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v52 & 2) == 0)
    {
LABEL_56:
      if ((v52 & 4) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_130;
    }
  }

  else if ((v52 & 2) == 0)
  {
    goto LABEL_56;
  }

  v75 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
  v76 = *(v75 + 23);
  v77 = *(v75 + 8);
  if ((v76 & 0x80u) == 0)
  {
    v77 = v76;
  }

  v46 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 4) == 0)
  {
LABEL_57:
    if ((v52 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_133;
  }

LABEL_130:
  v78 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
  v79 = *(v78 + 23);
  v80 = *(v78 + 8);
  if ((v79 & 0x80u) == 0)
  {
    v80 = v79;
  }

  v46 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 8) == 0)
  {
LABEL_58:
    if ((v52 & 0x10) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_136;
  }

LABEL_133:
  v81 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
  v82 = *(v81 + 23);
  v83 = *(v81 + 8);
  if ((v82 & 0x80u) == 0)
  {
    v83 = v82;
  }

  v46 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 0x10) == 0)
  {
LABEL_59:
    if ((v52 & 0x20) == 0)
    {
      goto LABEL_60;
    }

LABEL_139:
    v87 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    v88 = *(v87 + 23);
    v89 = *(v87 + 8);
    if ((v88 & 0x80u) == 0)
    {
      v89 = v88;
    }

    v46 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v52 & 0x40) == 0)
    {
LABEL_61:
      if ((v52 & 0x80) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    goto LABEL_142;
  }

LABEL_136:
  v84 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
  v85 = *(v84 + 23);
  v86 = *(v84 + 8);
  if ((v85 & 0x80u) == 0)
  {
    v86 = v85;
  }

  v46 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 0x20) != 0)
  {
    goto LABEL_139;
  }

LABEL_60:
  if ((v52 & 0x40) == 0)
  {
    goto LABEL_61;
  }

LABEL_142:
  v90 = sub_16E51F0(*(a1 + 272));
  v46 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v52 & 0x80) != 0)
  {
LABEL_62:
    v53 = sub_1606BD8(*(a1 + 280));
    v46 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_63:
  if ((v52 & 0xFF00) == 0)
  {
    goto LABEL_76;
  }

  if ((v52 & 0x100) != 0)
  {
    v91 = sub_160206C(*(a1 + 288));
    v46 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v52 & 0x200) == 0)
    {
LABEL_66:
      if ((v52 & 0x400) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_146;
    }
  }

  else if ((v52 & 0x200) == 0)
  {
    goto LABEL_66;
  }

  v92 = sub_1604F40(*(a1 + 296));
  v46 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 0x400) == 0)
  {
LABEL_67:
    if ((v52 & 0x800) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_147;
  }

LABEL_146:
  v93 = sub_1603A5C(*(a1 + 304));
  v46 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v52 & 0x800) == 0)
  {
LABEL_68:
    if ((v52 & 0x1000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_148;
  }

LABEL_147:
  v46 += ((9 * (__clz(*(a1 + 312) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v52 & 0x1000) == 0)
  {
LABEL_69:
    if ((v52 & 0x2000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_149;
  }

LABEL_148:
  v46 += ((9 * (__clz(*(a1 + 320) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v52 & 0x2000) == 0)
  {
LABEL_70:
    if ((v52 & 0x4000) == 0)
    {
      goto LABEL_71;
    }

LABEL_150:
    v46 += ((9 * (__clz(*(a1 + 336) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v52 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_72;
  }

LABEL_149:
  v46 += ((9 * (__clz(*(a1 + 328) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v52 & 0x4000) != 0)
  {
    goto LABEL_150;
  }

LABEL_71:
  if ((v52 & 0x8000) == 0)
  {
    goto LABEL_76;
  }

LABEL_72:
  v54 = *(a1 + 340);
  v55 = ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v54 >= 0)
  {
    v56 = v55;
  }

  else
  {
    v56 = 11;
  }

  v46 += v56;
LABEL_76:
  if ((v52 & 0xFF0000) != 0)
  {
    if ((v52 & 0x10000) != 0)
    {
      v46 += ((9 * (__clz(*(a1 + 344) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v57 = v46 + 5;
    if ((v52 & 0x20000) == 0)
    {
      v57 = v46;
    }

    if ((v52 & 0x40000) != 0)
    {
      v57 += ((9 * (__clz(*(a1 + 352) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v52 & 0x80000) != 0)
    {
      v57 += ((9 * (__clz(*(a1 + 356) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v58 = v57 + ((v52 >> 20) & 2) + ((v52 >> 19) & 2);
    if ((v52 & 0x400000) != 0)
    {
      v58 += 3;
    }

    if ((v52 & 0x800000) != 0)
    {
      v46 = v58 + 3;
    }

    else
    {
      v46 = v58;
    }
  }

  if (HIBYTE(v52))
  {
    if ((v52 & 0x1000000) != 0)
    {
      v94 = *(a1 + 364);
      v95 = ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v94 >= 0)
      {
        v96 = v95;
      }

      else
      {
        v96 = 12;
      }

      v46 += v96;
      if ((v52 & 0x2000000) == 0)
      {
LABEL_93:
        if ((v52 & 0x4000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_160;
      }
    }

    else if ((v52 & 0x2000000) == 0)
    {
      goto LABEL_93;
    }

    v97 = *(a1 + 368);
    v98 = ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v97 >= 0)
    {
      v99 = v98;
    }

    else
    {
      v99 = 12;
    }

    v46 += v99;
    if ((v52 & 0x4000000) == 0)
    {
LABEL_94:
      if ((v52 & 0x8000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_164;
    }

LABEL_160:
    v100 = *(a1 + 372);
    v101 = ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v100 >= 0)
    {
      v102 = v101;
    }

    else
    {
      v102 = 12;
    }

    v46 += v102;
    if ((v52 & 0x8000000) == 0)
    {
LABEL_95:
      if ((v52 & 0x10000000) == 0)
      {
LABEL_100:
        if ((v52 & 0x20000000) != 0)
        {
          v46 += 10;
        }

        if ((v52 & 0x40000000) != 0)
        {
          v46 += ((9 * (__clz(*(a1 + 392) | 1) ^ 0x1F) + 73) >> 6) + 2;
        }

        if ((v52 & 0x80000000) != 0)
        {
          v62 = *(a1 + 396);
          v63 = ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
          if (v62 >= 0)
          {
            v64 = v63;
          }

          else
          {
            v64 = 12;
          }

          v46 += v64;
        }

        goto LABEL_109;
      }

LABEL_96:
      v59 = *(a1 + 380);
      v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v59 >= 0)
      {
        v61 = v60;
      }

      else
      {
        v61 = 12;
      }

      v46 += v61;
      goto LABEL_100;
    }

LABEL_164:
    v103 = *(a1 + 376);
    v104 = ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v103 >= 0)
    {
      v105 = v104;
    }

    else
    {
      v105 = 12;
    }

    v46 += v105;
    if ((v52 & 0x10000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_96;
  }

LABEL_109:
  v65 = *(a1 + 20);
  if ((v65 & 0xF) != 0)
  {
    if (v65)
    {
      v66 = *(a1 + 400);
      v67 = ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v66 >= 0)
      {
        v68 = v67;
      }

      else
      {
        v68 = 12;
      }

      v46 += v68;
    }

    v69 = v46 + 3;
    if ((v65 & 2) == 0)
    {
      v69 = v46;
    }

    if ((v65 & 4) != 0)
    {
      v46 = v69 + 3;
    }

    else
    {
      v46 = v69;
    }

    if ((v65 & 8) != 0)
    {
      v46 += ((9 * (__clz(*(a1 + 408) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  v70 = *(a1 + 8);
  if (v70)
  {
    v106 = v70 & 0xFFFFFFFFFFFFFFFCLL;
    v107 = *((v70 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v107 < 0)
    {
      v107 = *(v106 + 16);
    }

    v46 += v107;
  }

  *(a1 + 24) = v46;
  return v46;
}

void sub_160E150(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 48);
    v6 = sub_19592E8(a1 + 32, *(a2 + 40));
    sub_1637AD8((a1 + 32), v6, (v5 + 8), v4, **(a1 + 48) - *(a1 + 40));
    v7 = *(a1 + 40) + v4;
    *(a1 + 40) = v7;
    v8 = *(a1 + 48);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a1 + 56);
    sub_1958E5C((a1 + 56), v10 + v9);
    v11 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy((v11 + 4 * v10), *(a2 + 64), 4 * *(a2 + 56));
  }

  v12 = *(a2 + 80);
  if (v12)
  {
    v13 = *(a2 + 88);
    v14 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1637D08((a1 + 72), v14, (v13 + 8), v12, **(a1 + 88) - *(a1 + 80));
    v15 = *(a1 + 80) + v12;
    *(a1 + 80) = v15;
    v16 = *(a1 + 88);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a1 + 96);
    sub_1958E5C((a1 + 96), v18 + v17);
    v19 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy((v19 + 4 * v18), *(a2 + 104), 4 * *(a2 + 96));
  }

  v20 = *(a2 + 120);
  if (v20)
  {
    v21 = *(a2 + 128);
    v22 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_1201B48((a1 + 112), v22, (v21 + 8), v20, **(a1 + 128) - *(a1 + 120));
    v23 = *(a1 + 120) + v20;
    *(a1 + 120) = v23;
    v24 = *(a1 + 128);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 144);
  if (v25)
  {
    v26 = *(a2 + 152);
    v27 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_1637E9C((a1 + 136), v27, (v26 + 8), v25, **(a1 + 152) - *(a1 + 144));
    v28 = *(a1 + 144) + v25;
    *(a1 + 144) = v28;
    v29 = *(a1 + 152);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 160);
  if (v30)
  {
    v31 = *(a1 + 160);
    sub_1958E5C((a1 + 160), v31 + v30);
    v32 = *(a1 + 168);
    *(a1 + 160) += *(a2 + 160);
    memcpy((v32 + 4 * v31), *(a2 + 168), 4 * *(a2 + 160));
  }

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

  v38 = *(a2 + 208);
  if (v38)
  {
    v39 = *(a2 + 216);
    v40 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_1637B64((a1 + 200), v40, (v39 + 8), v38, **(a1 + 216) - *(a1 + 208));
    v41 = *(a1 + 208) + v38;
    *(a1 + 208) = v41;
    v42 = *(a1 + 216);
    if (*v42 < v41)
    {
      *v42 = v41;
    }
  }

  v43 = *(a2 + 16);
  if (!v43)
  {
    goto LABEL_69;
  }

  if (v43)
  {
    v44 = *(a2 + 224);
    *(a1 + 16) |= 1u;
    v45 = *(a1 + 8);
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    sub_194EA1C((a1 + 224), (v44 & 0xFFFFFFFFFFFFFFFELL), v46);
    if ((v43 & 2) == 0)
    {
LABEL_28:
      if ((v43 & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_41;
    }
  }

  else if ((v43 & 2) == 0)
  {
    goto LABEL_28;
  }

  v47 = *(a2 + 232);
  *(a1 + 16) |= 2u;
  v48 = *(a1 + 8);
  v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
  if (v48)
  {
    v49 = *v49;
  }

  sub_194EA1C((a1 + 232), (v47 & 0xFFFFFFFFFFFFFFFELL), v49);
  if ((v43 & 4) == 0)
  {
LABEL_29:
    if ((v43 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_41:
  v50 = *(a2 + 240);
  *(a1 + 16) |= 4u;
  v51 = *(a1 + 8);
  v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
  if (v51)
  {
    v52 = *v52;
  }

  sub_194EA1C((a1 + 240), (v50 & 0xFFFFFFFFFFFFFFFELL), v52);
  if ((v43 & 8) == 0)
  {
LABEL_30:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

LABEL_44:
  v53 = *(a2 + 248);
  *(a1 + 16) |= 8u;
  v54 = *(a1 + 8);
  v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
  if (v54)
  {
    v55 = *v55;
  }

  sub_194EA1C((a1 + 248), (v53 & 0xFFFFFFFFFFFFFFFELL), v55);
  if ((v43 & 0x10) == 0)
  {
LABEL_31:
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_50:
    v59 = *(a2 + 264);
    *(a1 + 16) |= 0x20u;
    v60 = *(a1 + 8);
    v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
    if (v60)
    {
      v61 = *v61;
    }

    sub_194EA1C((a1 + 264), (v59 & 0xFFFFFFFFFFFFFFFELL), v61);
    if ((v43 & 0x40) == 0)
    {
LABEL_33:
      if ((v43 & 0x80) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_61;
    }

    goto LABEL_53;
  }

LABEL_47:
  v56 = *(a2 + 256);
  *(a1 + 16) |= 0x10u;
  v57 = *(a1 + 8);
  v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
  if (v57)
  {
    v58 = *v58;
  }

  sub_194EA1C((a1 + 256), (v56 & 0xFFFFFFFFFFFFFFFELL), v58);
  if ((v43 & 0x20) != 0)
  {
    goto LABEL_50;
  }

LABEL_32:
  if ((v43 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_53:
  *(a1 + 16) |= 0x40u;
  v62 = *(a1 + 272);
  if (!v62)
  {
    v63 = *(a1 + 8);
    v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
    if (v63)
    {
      v64 = *v64;
    }

    v62 = sub_16F5828(v64);
    *(a1 + 272) = v62;
  }

  if (*(a2 + 272))
  {
    v65 = *(a2 + 272);
  }

  else
  {
    v65 = &off_277E5E8;
  }

  sub_16E527C(v62, v65);
  if ((v43 & 0x80) != 0)
  {
LABEL_61:
    *(a1 + 16) |= 0x80u;
    v66 = *(a1 + 280);
    if (!v66)
    {
      v67 = *(a1 + 8);
      v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
      if (v67)
      {
        v68 = *v68;
      }

      sub_1618118(v68);
      *(a1 + 280) = v66;
    }

    if (*(a2 + 280))
    {
      v69 = *(a2 + 280);
    }

    else
    {
      v69 = &off_277A508;
    }

    sub_1606EAC(v66, v69);
  }

LABEL_69:
  if ((v43 & 0xFF00) == 0)
  {
    goto LABEL_80;
  }

  if ((v43 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v72 = *(a1 + 288);
    if (!v72)
    {
      v73 = *(a1 + 8);
      v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
      if (v73)
      {
        v74 = *v74;
      }

      v72 = sub_1617D8C(v74);
      *(a1 + 288) = v72;
    }

    if (*(a2 + 288))
    {
      v75 = *(a2 + 288);
    }

    else
    {
      v75 = &off_277A3B0;
    }

    sub_13D7FAC(v72, v75);
    if ((v43 & 0x200) == 0)
    {
LABEL_72:
      if ((v43 & 0x400) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_128;
    }
  }

  else if ((v43 & 0x200) == 0)
  {
    goto LABEL_72;
  }

  *(a1 + 16) |= 0x200u;
  v76 = *(a1 + 296);
  if (!v76)
  {
    v77 = *(a1 + 8);
    v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
    if (v77)
    {
      v78 = *v78;
    }

    sub_1618058(v78);
    *(a1 + 296) = v76;
  }

  if (*(a2 + 296))
  {
    v79 = *(a2 + 296);
  }

  else
  {
    v79 = &off_277A478;
  }

  sub_1605230(v76, v79);
  if ((v43 & 0x400) == 0)
  {
LABEL_73:
    if ((v43 & 0x800) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(a1 + 16) |= 0x400u;
  v80 = *(a1 + 304);
  if (!v80)
  {
    v81 = *(a1 + 8);
    v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL);
    if (v81)
    {
      v82 = *v82;
    }

    v80 = sub_1617F5C(v82);
    *(a1 + 304) = v80;
  }

  if (*(a2 + 304))
  {
    v83 = *(a2 + 304);
  }

  else
  {
    v83 = &off_277A420;
  }

  sub_128F948(v80, v83);
  if ((v43 & 0x800) == 0)
  {
LABEL_74:
    if ((v43 & 0x1000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(a1 + 312) = *(a2 + 312);
  if ((v43 & 0x1000) == 0)
  {
LABEL_75:
    if ((v43 & 0x2000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_138;
  }

LABEL_137:
  *(a1 + 320) = *(a2 + 320);
  if ((v43 & 0x2000) == 0)
  {
LABEL_76:
    if ((v43 & 0x4000) == 0)
    {
      goto LABEL_77;
    }

LABEL_139:
    *(a1 + 336) = *(a2 + 336);
    if ((v43 & 0x8000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_138:
  *(a1 + 328) = *(a2 + 328);
  if ((v43 & 0x4000) != 0)
  {
    goto LABEL_139;
  }

LABEL_77:
  if ((v43 & 0x8000) != 0)
  {
LABEL_78:
    *(a1 + 340) = *(a2 + 340);
  }

LABEL_79:
  *(a1 + 16) |= v43;
LABEL_80:
  if ((v43 & 0xFF0000) == 0)
  {
    goto LABEL_91;
  }

  if ((v43 & 0x10000) != 0)
  {
    *(a1 + 344) = *(a2 + 344);
    if ((v43 & 0x20000) == 0)
    {
LABEL_83:
      if ((v43 & 0x40000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_143;
    }
  }

  else if ((v43 & 0x20000) == 0)
  {
    goto LABEL_83;
  }

  *(a1 + 348) = *(a2 + 348);
  if ((v43 & 0x40000) == 0)
  {
LABEL_84:
    if ((v43 & 0x80000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(a1 + 352) = *(a2 + 352);
  if ((v43 & 0x80000) == 0)
  {
LABEL_85:
    if ((v43 & 0x100000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(a1 + 356) = *(a2 + 356);
  if ((v43 & 0x100000) == 0)
  {
LABEL_86:
    if ((v43 & 0x200000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(a1 + 360) = *(a2 + 360);
  if ((v43 & 0x200000) == 0)
  {
LABEL_87:
    if ((v43 & 0x400000) == 0)
    {
      goto LABEL_88;
    }

LABEL_147:
    *(a1 + 362) = *(a2 + 362);
    if ((v43 & 0x800000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_146:
  *(a1 + 361) = *(a2 + 361);
  if ((v43 & 0x400000) != 0)
  {
    goto LABEL_147;
  }

LABEL_88:
  if ((v43 & 0x800000) != 0)
  {
LABEL_89:
    *(a1 + 363) = *(a2 + 363);
  }

LABEL_90:
  *(a1 + 16) |= v43;
LABEL_91:
  if (!HIBYTE(v43))
  {
    goto LABEL_101;
  }

  if ((v43 & 0x1000000) != 0)
  {
    *(a1 + 364) = *(a2 + 364);
    if ((v43 & 0x2000000) == 0)
    {
LABEL_94:
      if ((v43 & 0x4000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_155;
    }
  }

  else if ((v43 & 0x2000000) == 0)
  {
    goto LABEL_94;
  }

  *(a1 + 368) = *(a2 + 368);
  if ((v43 & 0x4000000) == 0)
  {
LABEL_95:
    if ((v43 & 0x8000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(a1 + 372) = *(a2 + 372);
  if ((v43 & 0x8000000) == 0)
  {
LABEL_96:
    if ((v43 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_157;
  }

LABEL_156:
  *(a1 + 376) = *(a2 + 376);
  if ((v43 & 0x10000000) == 0)
  {
LABEL_97:
    if ((v43 & 0x20000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_158;
  }

LABEL_157:
  *(a1 + 380) = *(a2 + 380);
  if ((v43 & 0x20000000) == 0)
  {
LABEL_98:
    if ((v43 & 0x40000000) == 0)
    {
      goto LABEL_99;
    }

LABEL_159:
    *(a1 + 392) = *(a2 + 392);
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

LABEL_160:
    *(a1 + 396) = *(a2 + 396);
    goto LABEL_100;
  }

LABEL_158:
  *(a1 + 384) = *(a2 + 384);
  if ((v43 & 0x40000000) != 0)
  {
    goto LABEL_159;
  }

LABEL_99:
  if ((v43 & 0x80000000) != 0)
  {
    goto LABEL_160;
  }

LABEL_100:
  *(a1 + 16) |= v43;
LABEL_101:
  v70 = *(a2 + 20);
  if ((v70 & 0xF) == 0)
  {
    goto LABEL_108;
  }

  if (v70)
  {
    *(a1 + 400) = *(a2 + 400);
    if ((v70 & 2) == 0)
    {
LABEL_104:
      if ((v70 & 4) == 0)
      {
        goto LABEL_105;
      }

LABEL_151:
      *(a1 + 405) = *(a2 + 405);
      if ((v70 & 8) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }
  }

  else if ((v70 & 2) == 0)
  {
    goto LABEL_104;
  }

  *(a1 + 404) = *(a2 + 404);
  if ((v70 & 4) != 0)
  {
    goto LABEL_151;
  }

LABEL_105:
  if ((v70 & 8) != 0)
  {
LABEL_106:
    *(a1 + 408) = *(a2 + 408);
  }

LABEL_107:
  *(a1 + 20) |= v70;
LABEL_108:
  v71 = *(a2 + 8);
  if (v71)
  {

    sub_1957EF4((a1 + 8), (v71 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}