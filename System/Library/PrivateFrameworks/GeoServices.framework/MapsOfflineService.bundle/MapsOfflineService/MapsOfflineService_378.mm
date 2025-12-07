BOOL sub_15457C8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  if ((*(v2 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    v5 = sub_15457C8(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((v5 & 1) != 0);
  return v1;
}

BOOL sub_154583C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
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
    v5 = sub_15457C8(*(v3 + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v1;
}

uint64_t sub_15458AC(uint64_t a1)
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
  sub_156CEAC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1545958(uint64_t a1)
{
  sub_15458AC(a1);

  operator delete();
}

uint64_t sub_1545990(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
            v20 = sub_1551F74(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = *v25;
          }

          v15 = sub_221DD3C(a3, v19, v16);
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

char *sub_1545B68(uint64_t a1, char *__dst, unint64_t *a3)
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

      v4 = sub_1545260(v8, v10, a3);
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

uint64_t sub_1545CCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
      v12 = sub_1545488(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
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

    v7 += v16;
  }

  *(a1 + 20) = v7;
  return v7;
}

void *sub_1545DCC(void *a1)
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

  sub_1545E94(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_156D038(a1 + 18);
  sub_156CFB4(a1 + 15);
  sub_156CF30(a1 + 12);
  sub_1311F6C(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_13B3CB4(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1545E94(uint64_t a1)
{
  v3 = *(a1 + 168);
  v2 = (a1 + 168);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 176);
  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2776C60)
  {
    v5 = *(a1 + 184);
    if (v5)
    {
      sub_152B850(v5);
      operator delete();
    }

    v6 = *(a1 + 192);
    if (v6)
    {
      sub_16ED13C(v6);
      operator delete();
    }

    result = *(a1 + 200);
    if (result)
    {
      sub_153F9F4(result);

      operator delete();
    }
  }

  return result;
}

void sub_1545F6C(void *a1)
{
  sub_1545DCC(a1);

  operator delete();
}

uint64_t sub_1545FA4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v89 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v89, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v89 + 1);
    v8 = **v89;
    if (**v89 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v89, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v89 + 2);
      }
    }

    *v89 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0x65)
    {
      break;
    }

    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 != 1)
        {
          if (v11 == 2 && v8 == 17)
          {
            v5 |= 0x20u;
            *(a1 + 208) = *v7;
            *v89 = v7 + 8;
            goto LABEL_151;
          }

          goto LABEL_143;
        }

        if (v8 != 10)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 4u;
        v43 = *(a1 + 184);
        if (!v43)
        {
          v44 = *(a1 + 8);
          v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
          if (v44)
          {
            v45 = *v45;
          }

          v43 = sub_1550F20(v45);
          *(a1 + 184) = v43;
          v7 = *v89;
        }

        v36 = sub_2200BC0(a3, v43, v7);
LABEL_150:
        *v89 = v36;
        if (!v36)
        {
          goto LABEL_165;
        }

        goto LABEL_151;
      }

      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v60 = v7 - 1;
          while (1)
          {
            v61 = v60 + 1;
            *v89 = v60 + 1;
            v62 = *(a1 + 40);
            if (v62 && (v63 = *(a1 + 32), v63 < *v62))
            {
              *(a1 + 32) = v63 + 1;
              v64 = *&v62[2 * v63 + 2];
            }

            else
            {
              v65 = sub_1550F20(*(a1 + 24));
              v64 = sub_19593CC(a1 + 24, v65);
              v61 = *v89;
            }

            v60 = sub_2200BC0(a3, v64, v61);
            *v89 = v60;
            if (!v60)
            {
              goto LABEL_165;
            }

            if (*a3 <= v60 || *v60 != 26)
            {
              goto LABEL_151;
            }
          }
        }

        goto LABEL_143;
      }

      if (v8 != 34)
      {
        goto LABEL_143;
      }

      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v27 = (a1 + 168);
LABEL_70:
      v35 = sub_194DB04(v27, v26);
      v36 = sub_1958890(v35, *v89, a3);
      goto LABEL_150;
    }

    if (v8 >> 3 > 0x63)
    {
      if (v11 == 100)
      {
        if (v8 != 34)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 8u;
        v70 = *(a1 + 192);
        if (!v70)
        {
          v71 = *(a1 + 8);
          v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
          if (v71)
          {
            v72 = *v72;
          }

          sub_16F5E18(v72);
          v70 = v73;
          *(a1 + 192) = v73;
          v7 = *v89;
        }

        v36 = sub_21F4F10(a3, v70, v7);
        goto LABEL_150;
      }

      if (v11 != 101 || v8 != 42)
      {
        goto LABEL_143;
      }

      *(a1 + 16) |= 2u;
      v34 = *(a1 + 8);
      v26 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v26 = *v26;
      }

      v27 = (a1 + 176);
      goto LABEL_70;
    }

    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_143;
      }

      v5 |= 0x40u;
      v54 = v7 + 1;
      v55 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_105;
      }

      v56 = *v54;
      v55 = v55 + (v56 << 7) - 128;
      if ((v56 & 0x80000000) == 0)
      {
        v54 = v7 + 2;
LABEL_105:
        *v89 = v54;
        *(a1 + 216) = v55;
        goto LABEL_151;
      }

      v85 = sub_1958770(v7, v55);
      *v89 = v85;
      *(a1 + 216) = v86;
      if (!v85)
      {
        goto LABEL_165;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_143;
      }

      v5 |= 0x80u;
      v19 = v7 + 1;
      v20 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v21 = *v19;
      v20 = v20 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_38:
        *v89 = v19;
        *(a1 + 220) = v20;
        goto LABEL_151;
      }

      v83 = sub_1958770(v7, v20);
      *v89 = v83;
      *(a1 + 220) = v84;
      if (!v83)
      {
        goto LABEL_165;
      }
    }

LABEL_151:
    if (sub_195ADC0(a3, v89, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 0x69)
  {
    if (v8 >> 3 <= 0x67)
    {
      if (v11 == 102)
      {
        if (v8 == 50)
        {
          v46 = v7 - 2;
          while (1)
          {
            v47 = (v46 + 2);
            *v89 = v46 + 2;
            v48 = *(a1 + 64);
            if (v48 && (v49 = *(a1 + 56), v49 < *v48))
            {
              *(a1 + 56) = v49 + 1;
              v50 = *&v48[2 * v49 + 2];
            }

            else
            {
              v51 = *(a1 + 48);
              if (!v51)
              {
                operator new();
              }

              *v53 = v52;
              v53[1] = sub_195A650;
              *v52 = 0;
              v52[1] = 0;
              v52[2] = 0;
              v50 = sub_19593CC(a1 + 48, v52);
              v47 = *v89;
            }

            v46 = sub_1958890(v50, v47, a3);
            *v89 = v46;
            if (!v46)
            {
              goto LABEL_165;
            }

            if (*a3 <= v46 || *v46 != 1714)
            {
              goto LABEL_151;
            }
          }
        }
      }

      else if (v11 == 103 && v8 == 58)
      {
        v13 = v7 - 2;
        while (1)
        {
          v14 = v13 + 2;
          *v89 = v13 + 2;
          v15 = *(a1 + 88);
          if (v15 && (v16 = *(a1 + 80), v16 < *v15))
          {
            *(a1 + 80) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            v18 = sub_1551DC4(*(a1 + 72));
            v17 = sub_19593CC(a1 + 72, v18);
            v14 = *v89;
          }

          v13 = sub_21F8E38(a3, v17, v14);
          *v89 = v13;
          if (!v13)
          {
            goto LABEL_165;
          }

          if (*a3 <= v13 || *v13 != 1722)
          {
            goto LABEL_151;
          }
        }
      }

      goto LABEL_143;
    }

    if (v11 != 104)
    {
      if (v8 == 74)
      {
        v28 = v7 - 2;
        while (1)
        {
          v29 = v28 + 2;
          *v89 = v28 + 2;
          v30 = *(a1 + 112);
          if (v30 && (v31 = *(a1 + 104), v31 < *v30))
          {
            *(a1 + 104) = v31 + 1;
            v32 = *&v30[2 * v31 + 2];
          }

          else
          {
            v33 = sub_1551E48(*(a1 + 96));
            v32 = sub_19593CC(a1 + 96, v33);
            v29 = *v89;
          }

          v28 = sub_221DDCC(a3, v32, v29);
          *v89 = v28;
          if (!v28)
          {
            goto LABEL_165;
          }

          if (*a3 <= v28 || *v28 != 1738)
          {
            goto LABEL_151;
          }
        }
      }

      goto LABEL_143;
    }

    if (v8 != 66)
    {
      goto LABEL_143;
    }

    *(a1 + 16) |= 0x10u;
    v66 = *(a1 + 200);
    if (!v66)
    {
      v67 = *(a1 + 8);
      v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
      if (v67)
      {
        v68 = *v68;
      }

      sub_1551D64(v68);
      v66 = v69;
      *(a1 + 200) = v69;
      v7 = *v89;
    }

    sub_21F3650(a3, v66, v7);
    goto LABEL_150;
  }

  if (v8 >> 3 > 0x6B)
  {
    if (v11 == 108)
    {
      if (v8 == 98)
      {
        v74 = v7 - 2;
        while (1)
        {
          v75 = v74 + 2;
          *v89 = v74 + 2;
          v76 = *(a1 + 136);
          if (v76 && (v77 = *(a1 + 128), v77 < *v76))
          {
            *(a1 + 128) = v77 + 1;
            v78 = *&v76[2 * v77 + 2];
          }

          else
          {
            v79 = sub_1551EF0(*(a1 + 120));
            v78 = sub_19593CC(a1 + 120, v79);
            v75 = *v89;
          }

          v74 = sub_221DE5C(a3, v78, v75);
          *v89 = v74;
          if (!v74)
          {
            goto LABEL_165;
          }

          if (*a3 <= v74 || *v74 != 1762)
          {
            goto LABEL_151;
          }
        }
      }
    }

    else if (v11 == 109 && v8 == 106)
    {
      v37 = v7 - 2;
      while (1)
      {
        v38 = v37 + 2;
        *v89 = v37 + 2;
        v39 = *(a1 + 160);
        if (v39 && (v40 = *(a1 + 152), v40 < *v39))
        {
          *(a1 + 152) = v40 + 1;
          v41 = *&v39[2 * v40 + 2];
        }

        else
        {
          v42 = sub_1552000(*(a1 + 144));
          v41 = sub_19593CC(a1 + 144, v42);
          v38 = *v89;
        }

        v37 = sub_221DCAC(a3, v41, v38);
        *v89 = v37;
        if (!v37)
        {
          goto LABEL_165;
        }

        if (*a3 <= v37 || *v37 != 1770)
        {
          goto LABEL_151;
        }
      }
    }

    goto LABEL_143;
  }

  if (v11 == 106)
  {
    if (v8 != 80)
    {
      goto LABEL_143;
    }

    v5 |= 0x200u;
    v58 = v7 + 1;
    v57 = *v7;
    if ((v57 & 0x8000000000000000) == 0)
    {
      goto LABEL_110;
    }

    v59 = *v58;
    v57 = (v59 << 7) + v57 - 128;
    if ((v59 & 0x80000000) == 0)
    {
      v58 = v7 + 2;
LABEL_110:
      *v89 = v58;
      *(a1 + 232) = v57;
      goto LABEL_151;
    }

    v87 = sub_19587DC(v7, v57);
    *v89 = v87;
    *(a1 + 232) = v88;
    if (!v87)
    {
      goto LABEL_165;
    }

    goto LABEL_151;
  }

  if (v8 == 88)
  {
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if (v24 < 0)
    {
      *v89 = sub_19587DC(v7, v22);
      if (!*v89)
      {
        goto LABEL_165;
      }
    }

    else
    {
      v23 = v7 + 2;
LABEL_45:
      *v89 = v23;
    }

    if (v22 > 2)
    {
      sub_156E898();
    }

    else
    {
      *(a1 + 16) |= 0x100u;
      *(a1 + 224) = v22;
    }

    goto LABEL_151;
  }

LABEL_143:
  if (v8)
  {
    v80 = (v8 & 7) == 4;
  }

  else
  {
    v80 = 1;
  }

  if (!v80)
  {
    v81 = *(a1 + 8);
    if (v81)
    {
      v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v82 = sub_11F1920((a1 + 8));
      v7 = *v89;
    }

    v36 = sub_1952690(v8, v82, v7, a3);
    goto LABEL_150;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_165:
  *v89 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v89;
}

char *sub_1546828(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 184);
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

    v4 = sub_152C800(v7, v9, a3);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 208);
    *v4 = 17;
    *(v4 + 1) = v10;
    v4 += 9;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v14 = *(v13 + 44);
      v4[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v4 + 1);
      }

      else
      {
        v15 = v4 + 2;
      }

      v4 = sub_152C800(v13, v15, a3);
    }
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 4, (*(a1 + 168) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v17 = *(a1 + 216);
    *v4 = 40;
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v4[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v4[2] = v17 >> 7;
      v16 = v4 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v4[2];
        do
        {
          *(v16 - 1) = v19 | 0x80;
          v19 = v18 >> 7;
          *v16++ = v18 >> 7;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v16 = v4 + 2;
    }
  }

  else
  {
    v16 = v4;
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 220);
    *v16 = 48;
    v16[1] = v22;
    if (v22 > 0x7F)
    {
      v16[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[2] = v22 >> 7;
      v21 = v16 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v24) = v16[2];
        do
        {
          *(v21 - 1) = v24 | 0x80;
          v24 = v23 >> 7;
          *v21++ = v23 >> 7;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v21 = v16 + 2;
    }
  }

  else
  {
    v21 = v16;
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 192);
    *v21 = 1698;
    v27 = *(v26 + 20);
    v21[2] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v21 + 2);
    }

    else
    {
      v28 = v21 + 3;
    }

    v21 = sub_16ED4B0(v26, v28, a3);
  }

  if ((v6 & 2) != 0)
  {
    v21 = sub_128AEEC(a3, 101, (*(a1 + 176) & 0xFFFFFFFFFFFFFFFELL), v21);
  }

  v29 = *(a1 + 56);
  if (v29 >= 1)
  {
    v30 = 8;
    do
    {
      v31 = *(*(a1 + 64) + v30);
      v32 = *(v31 + 23);
      if (v32 < 0 && (v32 = v31[1], v32 > 127) || (*a3 - v21 + 13) < v32)
      {
        v21 = sub_1957480(a3, 102, v31, v21);
      }

      else
      {
        *v21 = 1714;
        v21[2] = v32;
        if (*(v31 + 23) < 0)
        {
          v31 = *v31;
        }

        v33 = v21 + 3;
        memcpy(v21 + 3, v31, v32);
        v21 = &v33[v32];
      }

      v30 += 8;
      --v29;
    }

    while (v29);
  }

  v34 = *(a1 + 80);
  if (v34)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v36 = *(*(a1 + 88) + 8 * j + 8);
      *v21 = 1722;
      v37 = *(v36 + 20);
      v21[2] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v21 + 2);
      }

      else
      {
        v38 = v21 + 3;
      }

      v21 = sub_1543E88(v36, v38, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v39 = *(a1 + 200);
    *v21 = 1730;
    v40 = *(v39 + 28);
    v21[2] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v21 + 2);
    }

    else
    {
      v41 = v21 + 3;
    }

    v21 = sub_1540418(v39, v41, a3);
  }

  v42 = *(a1 + 104);
  if (v42)
  {
    for (k = 0; k != v42; ++k)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v44 = *(*(a1 + 112) + 8 * k + 8);
      *v21 = 1738;
      v45 = *(v44 + 20);
      v21[2] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v21 + 2);
      }

      else
      {
        v46 = v21 + 3;
      }

      v21 = sub_154448C(v44, v46, a3);
    }
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v48 = *(a1 + 232);
    *v21 = 1744;
    v21[2] = v48;
    if (v48 > 0x7F)
    {
      v21[2] = v48 | 0x80;
      v49 = v48 >> 7;
      v21[3] = v48 >> 7;
      v47 = v21 + 4;
      if (v48 >= 0x4000)
      {
        LOBYTE(v50) = v21[3];
        do
        {
          *(v47 - 1) = v50 | 0x80;
          v50 = v49 >> 7;
          *v47++ = v49 >> 7;
          v51 = v49 >> 14;
          v49 >>= 7;
        }

        while (v51);
      }
    }

    else
    {
      v47 = v21 + 3;
    }
  }

  else
  {
    v47 = v21;
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v53 = *(a1 + 224);
    *v47 = 1752;
    v47[2] = v53;
    if (v53 > 0x7F)
    {
      v47[2] = v53 | 0x80;
      v54 = v53 >> 7;
      v47[3] = v53 >> 7;
      v52 = v47 + 4;
      if (v53 >= 0x4000)
      {
        LOBYTE(v55) = v47[3];
        do
        {
          *(v52 - 1) = v55 | 0x80;
          v55 = v54 >> 7;
          *v52++ = v54 >> 7;
          v56 = v54 >> 14;
          v54 >>= 7;
        }

        while (v56);
      }
    }

    else
    {
      v52 = v47 + 3;
    }
  }

  else
  {
    v52 = v47;
  }

  v57 = *(a1 + 128);
  if (v57)
  {
    for (m = 0; m != v57; ++m)
    {
      if (*a3 <= v52)
      {
        v52 = sub_225EB68(a3, v52);
      }

      v59 = *(*(a1 + 136) + 8 * m + 8);
      *v52 = 1762;
      v60 = *(v59 + 20);
      v52[2] = v60;
      if (v60 > 0x7F)
      {
        v61 = sub_19575D0(v60, v52 + 2);
      }

      else
      {
        v61 = v52 + 3;
      }

      v52 = sub_1544B6C(v59, v61, a3);
    }
  }

  v62 = *(a1 + 152);
  if (v62)
  {
    for (n = 0; n != v62; ++n)
    {
      if (*a3 <= v52)
      {
        v52 = sub_225EB68(a3, v52);
      }

      v64 = *(*(a1 + 160) + 8 * n + 8);
      *v52 = 1770;
      v65 = *(v64 + 20);
      v52[2] = v65;
      if (v65 > 0x7F)
      {
        v66 = sub_19575D0(v65, v52 + 2);
      }

      else
      {
        v66 = v52 + 3;
      }

      v52 = sub_1545B68(v64, v66, a3);
    }
  }

  v67 = *(a1 + 8);
  if ((v67 & 1) == 0)
  {
    return v52;
  }

  v69 = v67 & 0xFFFFFFFFFFFFFFFCLL;
  v70 = *(v69 + 31);
  if (v70 < 0)
  {
    v71 = *(v69 + 8);
    v70 = *(v69 + 16);
  }

  else
  {
    v71 = (v69 + 8);
  }

  if ((*a3 - v52) >= v70)
  {
    v72 = v70;
    memcpy(v52, v71, v70);
    v52 += v72;
    return v52;
  }

  return sub_1957130(a3, v71, v70, v52);
}

uint64_t sub_1546FC4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    v3 = sub_152D208(*(a1 + 184));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_152D208(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  v12 = v5 + 2 * v11;
  if (v11 >= 1)
  {
    v13 = (*(a1 + 64) + 8);
    do
    {
      v14 = *v13++;
      v15 = *(v14 + 23);
      v16 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v16 = v15;
      }

      v12 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      --v11;
    }

    while (v11);
  }

  v17 = *(a1 + 80);
  v18 = v12 + 2 * v17;
  v19 = *(a1 + 88);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_1543FE4(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 104);
  v25 = v18 + 2 * v24;
  v26 = *(a1 + 112);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = sub_1544688(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 128);
  v32 = v25 + 2 * v31;
  v33 = *(a1 + 136);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_1544C54(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 152);
  v39 = v32 + 2 * v38;
  v40 = *(a1 + 160);
  if (v40)
  {
    v41 = (v40 + 8);
  }

  else
  {
    v41 = 0;
  }

  if (v38)
  {
    v42 = 8 * v38;
    do
    {
      v43 = *v41++;
      v44 = sub_1545CCC(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 16);
  if ((v45 & 3) != 0)
  {
    if (v45)
    {
      v46 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
      v47 = *(v46 + 23);
      v48 = *(v46 + 8);
      if ((v47 & 0x80u) == 0)
      {
        v48 = v47;
      }

      v39 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v45 & 2) != 0)
    {
      v49 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
      v50 = *(v49 + 23);
      v51 = *(v49 + 8);
      if ((v50 & 0x80u) == 0)
      {
        v51 = v50;
      }

      v39 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if ((v45 & 0xF8) != 0)
  {
    if ((v45 & 8) != 0)
    {
      v52 = sub_16ED6F0(*(a1 + 192));
      v39 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v45 & 0x10) != 0)
    {
      v53 = sub_1541FC0(*(a1 + 200));
      v39 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v45 & 0x20) != 0)
    {
      v39 += 9;
    }

    if ((v45 & 0x40) != 0)
    {
      v39 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v45 & 0x80) != 0)
    {
      v39 += ((9 * (__clz(*(a1 + 220) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v45 & 0x300) != 0)
  {
    if ((v45 & 0x100) != 0)
    {
      v54 = *(a1 + 224);
      v55 = ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v54 >= 0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 12;
      }

      v39 += v56;
    }

    if ((v45 & 0x200) != 0)
    {
      v39 += ((9 * (__clz(*(a1 + 232) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }
  }

  v57 = *(a1 + 8);
  if (v57)
  {
    v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
    v60 = *((v57 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v60 < 0)
    {
      v60 = *(v59 + 16);
    }

    v39 += v60;
  }

  *(a1 + 20) = v39;
  return v39;
}

uint64_t sub_1547400(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ED340;
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
    sub_156DC34((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
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
    sub_156DCC0((a1 + 72), v17, (v16 + 8), v15, **(a1 + 88) - *(a1 + 80));
    v18 = *(a1 + 80) + v15;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_131206C((a1 + 96), v22, (v21 + 8), v20, **(a1 + 112) - *(a1 + 104));
    v23 = *(a1 + 104) + v20;
    *(a1 + 104) = v23;
    v24 = *(a1 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 8);
  if (v25)
  {
    sub_1957EF4(v4, (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 120) = &qword_278E990;
  v26 = *(a2 + 16);
  if (v26)
  {
    v27 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 120), (*(a2 + 120) & 0xFFFFFFFFFFFFFFFELL), v27);
    v26 = *(a2 + 16);
  }

  *(a1 + 128) = &qword_278E990;
  if ((v26 & 2) != 0)
  {
    v28 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v28 = *v28;
    }

    sub_194EA1C((a1 + 128), (*(a2 + 128) & 0xFFFFFFFFFFFFFFFELL), v28);
    v26 = *(a2 + 16);
  }

  if ((v26 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  v29 = *(a2 + 144);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 144) = v29;
  return a1;
}

uint64_t sub_1547774(uint64_t a1)
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

  v5 = (a1 + 120);
  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C((a1 + 128));
  }

  if (a1 != &off_2776D50)
  {
    v6 = *(a1 + 136);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1311F6C((a1 + 96));
  sub_156D140((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_156D0BC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1547888(uint64_t a1)
{
  sub_1547774(a1);

  operator delete();
}

uint64_t sub_15478C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v80 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v80, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v80 + 1);
    v8 = **v80;
    if (**v80 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v80, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v80 + 2);
      }
    }

    *v80 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 8)
    {
      break;
    }

    if (v8 >> 3 <= 3)
    {
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          if (v8 == 18)
          {
            v56 = (v7 - 1);
            while (1)
            {
              v57 = (v56 + 1);
              *v80 = v56 + 1;
              v58 = *(a1 + 40);
              if (v58 && (v59 = *(a1 + 32), v59 < *v58))
              {
                *(a1 + 32) = v59 + 1;
                v60 = *&v58[2 * v59 + 2];
              }

              else
              {
                sub_15520A4(*(a1 + 24));
                v60 = sub_19593CC(a1 + 24, v61);
                v57 = *v80;
              }

              v56 = sub_2204D90(a3, v60, v57);
              *v80 = v56;
              if (!v56)
              {
                goto LABEL_157;
              }

              if (*a3 <= v56 || *v56 != 18)
              {
                goto LABEL_131;
              }
            }
          }

          goto LABEL_123;
        }

        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_123;
        }

        *(a1 + 16) |= 4u;
        v18 = *(a1 + 136);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          sub_16F58FC(v20);
          v18 = v21;
          *(a1 + 136) = v21;
          v7 = *v80;
        }

        v22 = sub_21F86E8(a3, v18, v7);
LABEL_130:
        *v80 = v22;
        if (!v22)
        {
          goto LABEL_157;
        }

        goto LABEL_131;
      }

      if (v8 != 8)
      {
        goto LABEL_123;
      }

      v49 = v7 + 1;
      v50 = *v7;
      if ((v50 & 0x8000000000000000) != 0)
      {
        v51 = *v49;
        v52 = (v51 << 7) + v50;
        v50 = (v52 - 128);
        if ((v51 & 0x80000000) == 0)
        {
          v49 = v7 + 2;
          goto LABEL_92;
        }

        *v80 = sub_19587DC(v7, (v52 - 128));
        if (!*v80)
        {
          goto LABEL_157;
        }

        v50 = v73;
      }

      else
      {
LABEL_92:
        *v80 = v49;
      }

      if (v50 > 0x3C || ((1 << v50) & 0x1004010040100027) == 0)
      {
        v78 = *(a1 + 8);
        if (v78)
        {
          v79 = ((v78 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        else
        {
          v79 = sub_11F1920((a1 + 8));
        }

        sub_19586BC(1, v50, v79);
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 144) = v50;
      }

      goto LABEL_131;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 != 6)
      {
        if (v11 == 7 && v8 == 58)
        {
          v26 = (v7 - 1);
          while (1)
          {
            v27 = (v26 + 1);
            *v80 = v26 + 1;
            v28 = *(a1 + 88);
            if (v28 && (v29 = *(a1 + 80), v29 < *v28))
            {
              *(a1 + 80) = v29 + 1;
              v30 = *&v28[2 * v29 + 2];
            }

            else
            {
              v31 = sub_15526E4(*(a1 + 72));
              v30 = sub_19593CC(a1 + 72, v31);
              v27 = *v80;
            }

            v26 = sub_221DEEC(a3, v30, v27);
            *v80 = v26;
            if (!v26)
            {
              goto LABEL_157;
            }

            if (*a3 <= v26 || *v26 != 58)
            {
              goto LABEL_131;
            }
          }
        }

        goto LABEL_123;
      }

      if (v8 != 48)
      {
        goto LABEL_123;
      }

      v5 |= 0x20u;
      v44 = v7 + 1;
      v43 = *v7;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *v44;
      v43 = (v45 << 7) + v43 - 128;
      if ((v45 & 0x80000000) == 0)
      {
        v44 = v7 + 2;
LABEL_83:
        *v80 = v44;
        *(a1 + 152) = v43 != 0;
        goto LABEL_131;
      }

      v71 = sub_19587DC(v7, v43);
      *v80 = v71;
      *(a1 + 152) = v72 != 0;
      if (!v71)
      {
        goto LABEL_157;
      }
    }

    else
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          v35 = v7 - 1;
          while (1)
          {
            v36 = (v35 + 1);
            *v80 = v35 + 1;
            v37 = *(a1 + 64);
            if (v37 && (v38 = *(a1 + 56), v38 < *v37))
            {
              *(a1 + 56) = v38 + 1;
              v39 = *&v37[2 * v38 + 2];
            }

            else
            {
              v40 = *(a1 + 48);
              if (!v40)
              {
                operator new();
              }

              *v42 = v41;
              v42[1] = sub_195A650;
              *v41 = 0;
              v41[1] = 0;
              v41[2] = 0;
              v39 = sub_19593CC(a1 + 48, v41);
              v36 = *v80;
            }

            v35 = sub_1958890(v39, v36, a3);
            *v80 = v35;
            if (!v35)
            {
              goto LABEL_157;
            }

            if (*a3 <= v35 || *v35 != 34)
            {
              goto LABEL_131;
            }
          }
        }

        goto LABEL_123;
      }

      if (v8 != 40)
      {
        goto LABEL_123;
      }

      v5 |= 0x10u;
      LODWORD(v12) = *v7;
      if ((v12 & 0x80000000) == 0)
      {
        v13 = (v7 + 1);
LABEL_135:
        *v80 = v13;
        *(a1 + 148) = v12;
        goto LABEL_131;
      }

      v12 = (v7[1] << 7) + v12 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
        goto LABEL_135;
      }

      v76 = sub_19587DC(v7, v12);
      *v80 = v76;
      *(a1 + 148) = v77;
      if (!v76)
      {
        goto LABEL_157;
      }
    }

LABEL_131:
    if (sub_195ADC0(a3, v80, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 0x64)
  {
    if (v11 == 9)
    {
      if (v8 != 74)
      {
        goto LABEL_123;
      }

      *(a1 + 16) |= 1u;
      v54 = *(a1 + 8);
      v47 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
      if (v54)
      {
        v47 = *v47;
      }

      v48 = (a1 + 120);
LABEL_102:
      v55 = sub_194DB04(v48, v47);
      v22 = sub_1958890(v55, *v80, a3);
      goto LABEL_130;
    }

    if (v11 == 10)
    {
      if (v8 == 82)
      {
        v62 = (v7 - 1);
        while (1)
        {
          v63 = (v62 + 1);
          *v80 = v62 + 1;
          v64 = *(a1 + 112);
          if (v64 && (v65 = *(a1 + 104), v65 < *v64))
          {
            *(a1 + 104) = v65 + 1;
            v66 = *&v64[2 * v65 + 2];
          }

          else
          {
            v67 = sub_1551DC4(*(a1 + 96));
            v66 = sub_19593CC(a1 + 96, v67);
            v63 = *v80;
          }

          v62 = sub_21F8E38(a3, v66, v63);
          *v80 = v62;
          if (!v62)
          {
            goto LABEL_157;
          }

          if (*a3 <= v62 || *v62 != 82)
          {
            goto LABEL_131;
          }
        }
      }

      goto LABEL_123;
    }

    if (v11 != 100 || v8 != 32)
    {
      goto LABEL_123;
    }

    v24 = v7 + 1;
    v23 = *v7;
    if (v23 < 0)
    {
      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if (v25 < 0)
      {
        *v80 = sub_19587DC(v7, v23);
        if (!*v80)
        {
          goto LABEL_157;
        }

        goto LABEL_44;
      }

      v24 = v7 + 2;
    }

    *v80 = v24;
LABEL_44:
    if ((v23 - 1) > 3)
    {
      sub_156E918();
    }

    else
    {
      *(a1 + 16) |= 0x200u;
      *(a1 + 168) = v23;
    }

    goto LABEL_131;
  }

  if (v8 >> 3 <= 0x66)
  {
    if (v11 == 101)
    {
      if (v8 == 41)
      {
        v5 |= 0x100u;
        *(a1 + 160) = *v7;
        *v80 = v7 + 8;
        goto LABEL_131;
      }

      goto LABEL_123;
    }

    if (v8 != 48)
    {
      goto LABEL_123;
    }

    v15 = v7 + 1;
    v14 = *v7;
    if (v14 < 0)
    {
      v16 = *v15;
      v14 = (v16 << 7) + v14 - 128;
      if (v16 < 0)
      {
        *v80 = sub_19587DC(v7, v14);
        if (!*v80)
        {
          goto LABEL_157;
        }

        goto LABEL_22;
      }

      v15 = v7 + 2;
    }

    *v80 = v15;
LABEL_22:
    if (v14 > 3)
    {
      sub_156E8D8();
    }

    else
    {
      *(a1 + 16) |= 0x80u;
      *(a1 + 156) = v14;
    }

    goto LABEL_131;
  }

  if (v11 != 103)
  {
    if (v11 != 104 || v8 != 64)
    {
      goto LABEL_123;
    }

    v5 |= 0x40u;
    v33 = v7 + 1;
    v32 = *v7;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_64;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if ((v34 & 0x80000000) == 0)
    {
      v33 = v7 + 2;
LABEL_64:
      *v80 = v33;
      *(a1 + 153) = v32 != 0;
      goto LABEL_131;
    }

    v74 = sub_19587DC(v7, v32);
    *v80 = v74;
    *(a1 + 153) = v75 != 0;
    if (!v74)
    {
      goto LABEL_157;
    }

    goto LABEL_131;
  }

  if (v8 == 58)
  {
    *(a1 + 16) |= 2u;
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    v48 = (a1 + 128);
    goto LABEL_102;
  }

LABEL_123:
  if (v8)
  {
    v68 = (v8 & 7) == 4;
  }

  else
  {
    v68 = 1;
  }

  if (!v68)
  {
    v69 = *(a1 + 8);
    if (v69)
    {
      v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v70 = sub_11F1920((a1 + 8));
      v7 = *v80;
    }

    v22 = sub_1952690(v8, v70, v7, a3);
    goto LABEL_130;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_157:
  *v80 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v80;
}

char *sub_15480D4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
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

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 20);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_1546828(v13, v15, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 136);
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

    v6 = sub_16E5FE0(v16, v18, a3);
  }

  v19 = *(a1 + 56);
  if (v19 >= 1)
  {
    v20 = 8;
    do
    {
      v21 = *(*(a1 + 64) + v20);
      v22 = *(v21 + 23);
      if (v22 < 0 && (v22 = v21[1], v22 > 127) || (*a3 - v6 + 14) < v22)
      {
        v6 = sub_1957480(a3, 4, v21, v6);
      }

      else
      {
        *v6 = 34;
        v6[1] = v22;
        if (*(v21 + 23) < 0)
        {
          v21 = *v21;
        }

        v23 = v6 + 2;
        memcpy(v6 + 2, v21, v22);
        v6 = &v23[v22];
      }

      v20 += 8;
      --v19;
    }

    while (v19);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v25 = *(a1 + 148);
    *v6 = 40;
    v6[1] = v25;
    if (v25 > 0x7F)
    {
      v6[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v6[2] = v25 >> 7;
      v24 = v6 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v27) = v6[2];
        do
        {
          *(v24 - 1) = v27 | 0x80;
          v27 = v26 >> 7;
          *v24++ = v26 >> 7;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v24 = v6 + 2;
    }
  }

  else
  {
    v24 = v6;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 152);
    *v24 = 48;
    v24[1] = v29;
    v24 += 2;
  }

  v30 = *(a1 + 80);
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      if (*a3 <= v24)
      {
        v24 = sub_225EB68(a3, v24);
      }

      v32 = *(*(a1 + 88) + 8 * j + 8);
      *v24 = 58;
      v33 = *(v32 + 20);
      v24[1] = v33;
      if (v33 > 0x7F)
      {
        v34 = sub_19575D0(v33, v24 + 1);
      }

      else
      {
        v34 = v24 + 2;
      }

      v24 = sub_154FCDC(v32, v34, a3);
    }
  }

  if (v5)
  {
    v24 = sub_128AEEC(a3, 9, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), v24);
  }

  v35 = *(a1 + 104);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      if (*a3 <= v24)
      {
        v24 = sub_225EB68(a3, v24);
      }

      v37 = *(*(a1 + 112) + 8 * k + 8);
      *v24 = 82;
      v38 = *(v37 + 20);
      v24[1] = v38;
      if (v38 > 0x7F)
      {
        v39 = sub_19575D0(v38, v24 + 1);
      }

      else
      {
        v39 = v24 + 2;
      }

      v24 = sub_1543E88(v37, v39, a3);
    }
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v41 = *(a1 + 168);
    *v24 = 1696;
    v24[2] = v41;
    if (v41 > 0x7F)
    {
      v24[2] = v41 | 0x80;
      v42 = v41 >> 7;
      v24[3] = v41 >> 7;
      v40 = v24 + 4;
      if (v41 >= 0x4000)
      {
        LOBYTE(v24) = v24[3];
        do
        {
          *(v40 - 1) = v24 | 0x80;
          v24 = (v42 >> 7);
          *v40++ = v42 >> 7;
          v43 = v42 >> 14;
          v42 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v40 = v24 + 3;
    }
  }

  else
  {
    v40 = v24;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v44 = *(a1 + 160);
    *v40 = 1705;
    *(v40 + 2) = v44;
    v40 += 10;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v46 = *(a1 + 156);
    *v40 = 1712;
    v40[2] = v46;
    if (v46 > 0x7F)
    {
      v40[2] = v46 | 0x80;
      v47 = v46 >> 7;
      v40[3] = v46 >> 7;
      v45 = v40 + 4;
      if (v46 >= 0x4000)
      {
        LOBYTE(v48) = v40[3];
        do
        {
          *(v45 - 1) = v48 | 0x80;
          v48 = v47 >> 7;
          *v45++ = v47 >> 7;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
      }
    }

    else
    {
      v45 = v40 + 3;
    }
  }

  else
  {
    v45 = v40;
  }

  if ((v5 & 2) != 0)
  {
    v45 = sub_128AEEC(a3, 103, (*(a1 + 128) & 0xFFFFFFFFFFFFFFFELL), v45);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v50 = *(a1 + 153);
    *v45 = 1728;
    v45[2] = v50;
    v45 += 3;
  }

  v51 = *(a1 + 8);
  if ((v51 & 1) == 0)
  {
    return v45;
  }

  v53 = v51 & 0xFFFFFFFFFFFFFFFCLL;
  v54 = *(v53 + 31);
  if (v54 < 0)
  {
    v55 = *(v53 + 8);
    v54 = *(v53 + 16);
  }

  else
  {
    v55 = (v53 + 8);
  }

  if ((*a3 - v45) >= v54)
  {
    v56 = v54;
    memcpy(v45, v55, v54);
    v45 += v56;
    return v45;
  }

  return sub_1957130(a3, v55, v54, v45);
}

uint64_t sub_1548710(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    v3 = *(a1 + 144);
    v2 = 11;
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v3 >= 0)
    {
      v2 = v4;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = *(a1 + 32);
  v6 = v2 + v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = sub_1546FC4(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(a1 + 56);
  v13 = v6 + v12;
  if (v12 >= 1)
  {
    v14 = (*(a1 + 64) + 8);
    do
    {
      v15 = *v14++;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v13 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      --v12;
    }

    while (v12);
  }

  v18 = *(a1 + 80);
  v19 = v13 + v18;
  v20 = *(a1 + 88);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = sub_154FEF8(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(a1 + 104);
  v26 = v19 + v25;
  v27 = *(a1 + 112);
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = sub_1543FE4(v30);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(a1 + 16);
  if ((v32 & 7) != 0)
  {
    if (v32)
    {
      v45 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      v46 = *(v45 + 23);
      v47 = *(v45 + 8);
      if ((v46 & 0x80u) == 0)
      {
        v47 = v46;
      }

      v26 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v32 & 2) == 0)
      {
LABEL_31:
        if ((v32 & 4) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else if ((v32 & 2) == 0)
    {
      goto LABEL_31;
    }

    v48 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    v49 = *(v48 + 23);
    v50 = *(v48 + 8);
    if ((v49 & 0x80u) == 0)
    {
      v50 = v49;
    }

    v26 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v32 & 4) != 0)
    {
LABEL_32:
      v33 = sub_16E62F4(*(a1 + 136));
      v26 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_33:
  if ((v32 & 0xF0) != 0)
  {
    if ((v32 & 0x10) != 0)
    {
      v34 = *(a1 + 148);
      v35 = ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v34 >= 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = 11;
      }

      v26 += v36;
    }

    if ((v32 & 0x40) != 0)
    {
      v26 += ((v32 >> 4) & 2) + 3;
    }

    else
    {
      v26 += (v32 >> 4) & 2;
    }

    if ((v32 & 0x80) != 0)
    {
      v37 = *(a1 + 156);
      v38 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v37 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 12;
      }

      v26 += v39;
    }
  }

  if ((v32 & 0x300) != 0)
  {
    if ((v32 & 0x100) != 0)
    {
      v26 += 10;
    }

    if ((v32 & 0x200) != 0)
    {
      v40 = *(a1 + 168);
      v41 = ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v40 >= 0)
      {
        v42 = v41;
      }

      else
      {
        v42 = 12;
      }

      v26 += v42;
    }
  }

  v43 = *(a1 + 8);
  if (v43)
  {
    v51 = v43 & 0xFFFFFFFFFFFFFFFCLL;
    v52 = *((v43 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v52 < 0)
    {
      v52 = *(v51 + 16);
    }

    v26 += v52;
  }

  *(a1 + 20) = v26;
  return v26;
}

uint64_t sub_1548A88(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 32);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_154F79C(*(*(v4 + 40) + 8 * v5));
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

uint64_t sub_1548B24(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26ED3C0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_1548B98(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1548BC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26ED3C0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_11F1A54((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  v12 = *(a2 + 40);
  if (v12)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  return a1;
}

uint64_t sub_1548DBC(uint64_t a1)
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

  if (a1 != &off_2776E00)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      sub_153F9F4(v5);
      operator delete();
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      sub_16E8374(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_12E6204((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1548EA0(uint64_t a1)
{
  sub_1548DBC(a1);

  operator delete();
}

char *sub_1548ED8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
  {
    return v29;
  }

  while (1)
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
      break;
    }

    if (v10 == 2)
    {
      if (v7 != 18)
      {
        goto LABEL_13;
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

        v14 = sub_16F5BD8(v16);
        *(a1 + 80) = v14;
        v6 = v29;
      }

      v13 = sub_21F7188(a3, v14, v6);
    }

    else
    {
      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 40) |= 1u;
      v23 = *(a1 + 72);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        sub_1551D64(v25);
        v23 = v26;
        *(a1 + 72) = v26;
        v6 = v29;
      }

      sub_21F3650(a3, v23, v6);
    }

LABEL_43:
    v29 = v13;
    if (!v13)
    {
      return 0;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v29, a3[11].u32[1]))
    {
      return v29;
    }
  }

  if (v7 == 26)
  {
    v17 = v6 - 1;
    while (1)
    {
      v18 = v17 + 1;
      v29 = v17 + 1;
      v19 = *(a1 + 64);
      if (v19 && (v20 = *(a1 + 56), v20 < *v19))
      {
        *(a1 + 56) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = sub_16F5828(*(a1 + 48));
        v21 = sub_19593CC(a1 + 48, v22);
        v18 = v29;
      }

      v17 = sub_21F4D60(a3, v21, v18);
      v29 = v17;
      if (!v17)
      {
        return 0;
      }

      if (*a3 <= v17 || *v17 != 26)
      {
        goto LABEL_44;
      }
    }
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

  if (!v12)
  {
    if (v7 - 800 > 0x63F)
    {
      v27 = *(a1 + 8);
      if (v27)
      {
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v28 = sub_11F1920((a1 + 8));
        v6 = v29;
      }

      v13 = sub_1952690(v7, v28, v6, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v7, v6, &off_2776E00, (a1 + 8), a3);
    }

    goto LABEL_43;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v29;
  }

  return 0;
}

char *sub_1549158(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 72);
    *v4 = 10;
    v8 = *(v7 + 28);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1540418(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 80);
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

    v4 = sub_16E886C(v10, v12, a3);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 64) + 8 * i + 8);
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

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 300, v4, a3);
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

uint64_t sub_1549388(uint64_t a1)
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
      v9 = sub_16E51F0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = sub_1541FC0(*(a1 + 72));
      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v12 = sub_16E8DA4(*(a1 + 80));
      v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v4 += v16;
  }

  *(a1 + 44) = v4;
  return v4;
}

uint64_t sub_15494B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26ED440;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return a1;
}

void sub_1549534(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1549564(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26ED440;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 72) = &qword_278E990;
  v12 = *(a2 + 40);
  if (v12)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v13);
    v12 = *(a2 + 40);
  }

  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v12 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  v14 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v14;
  return a1;
}

uint64_t sub_154979C(uint64_t a1)
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

  if (a1 != &off_2776E58)
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
      sub_16EB0C0(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956AFC((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1549898(uint64_t a1)
{
  sub_154979C(a1);

  operator delete();
}

uint64_t sub_15498D0(uint64_t a1)
{
  sub_1951124((a1 + 16));
  result = sub_12A41D0(a1 + 48);
  v3 = *(a1 + 40);
  if ((v3 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = sub_16E4E44(*(a1 + 80));
  if ((v3 & 4) != 0)
  {
LABEL_5:
    result = sub_16EB0FC(*(a1 + 88));
  }

LABEL_6:
  if ((v3 & 0x78) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
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

uint64_t sub_154999C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v54, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v54 + 1);
    v8 = **v54;
    if (**v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v54 + 2);
      }
    }

    *v54 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v8 >> 3 <= 6)
      {
        if (v11 != 5)
        {
          if (v11 == 6 && v8 == 50)
          {
            v16 = v7 - 1;
            while (1)
            {
              v17 = (v16 + 1);
              *v54 = v16 + 1;
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
                v17 = *v54;
              }

              v16 = sub_1958890(v20, v17, a3);
              *v54 = v16;
              if (!v16)
              {
                goto LABEL_98;
              }

              if (*a3 <= v16 || *v16 != 50)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_73;
        }

        if (v8 != 42)
        {
          goto LABEL_73;
        }

        *(a1 + 40) |= 1u;
        v35 = *(a1 + 8);
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v36 = *v36;
        }

        v37 = sub_194DB04((a1 + 72), v36);
        v27 = sub_1958890(v37, *v54, a3);
LABEL_82:
        *v54 = v27;
        if (!v27)
        {
          goto LABEL_98;
        }

        goto LABEL_83;
      }

      if (v11 != 7)
      {
        if (v11 != 8 || v8 != 64)
        {
          goto LABEL_73;
        }

        v28 = v7 + 1;
        v29 = *v7;
        if (v29 < 0)
        {
          v30 = *v28;
          v31 = (v30 << 7) + v29;
          LODWORD(v29) = v31 - 128;
          if (v30 < 0)
          {
            *v54 = sub_19587DC(v7, (v31 - 128));
            if (!*v54)
            {
              goto LABEL_98;
            }

            LODWORD(v29) = v53;
            goto LABEL_49;
          }

          v28 = v7 + 2;
        }

        *v54 = v28;
LABEL_49:
        if (sub_1393054(v29))
        {
          *(a1 + 40) |= 0x40u;
          *(a1 + 116) = v29;
        }

        else
        {
          sub_13B67EC();
        }

        goto LABEL_83;
      }

      if (v8 != 56)
      {
        goto LABEL_73;
      }

      v41 = v7 + 1;
      v42 = *v7;
      if (v42 < 0)
      {
        v43 = *v41;
        v44 = (v43 << 7) + v42;
        LODWORD(v42) = v44 - 128;
        if (v43 < 0)
        {
          *v54 = sub_19587DC(v7, (v44 - 128));
          if (!*v54)
          {
            goto LABEL_98;
          }

          LODWORD(v42) = v50;
          goto LABEL_71;
        }

        v41 = v7 + 2;
      }

      *v54 = v41;
LABEL_71:
      if (sub_1796880(v42))
      {
        *(a1 + 40) |= 0x20u;
        *(a1 + 112) = v42;
      }

      else
      {
        sub_13ED178();
      }

      goto LABEL_83;
    }

    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_73;
      }

      v5 |= 8u;
      v33 = v7 + 1;
      v32 = *v7;
      if ((v32 & 0x8000000000000000) == 0)
      {
        goto LABEL_55;
      }

      v34 = *v33;
      v32 = (v34 << 7) + v32 - 128;
      if ((v34 & 0x80000000) == 0)
      {
        v33 = v7 + 2;
LABEL_55:
        *v54 = v33;
        *(a1 + 96) = v32;
        goto LABEL_83;
      }

      v48 = sub_19587DC(v7, v32);
      *v54 = v48;
      *(a1 + 96) = v49;
      if (!v48)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_73;
      }

      v5 |= 0x10u;
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
        *v54 = v14;
        *(a1 + 104) = v13;
        goto LABEL_83;
      }

      v51 = sub_19587DC(v7, v13);
      *v54 = v51;
      *(a1 + 104) = v52;
      if (!v51)
      {
        goto LABEL_98;
      }
    }

LABEL_83:
    if (sub_195ADC0(a3, v54, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_73;
    }

    *(a1 + 40) |= 2u;
    v38 = *(a1 + 80);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_16F5828(v40);
      *(a1 + 80) = v38;
      v7 = *v54;
    }

    v27 = sub_21F4D60(a3, v38, v7);
    goto LABEL_82;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 40) |= 4u;
    v24 = *(a1 + 88);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5DB8(v26);
      *(a1 + 88) = v24;
      v7 = *v54;
    }

    v27 = sub_21F8D18(a3, v24, v7);
    goto LABEL_82;
  }

LABEL_73:
  if (v8)
  {
    v45 = (v8 & 7) == 4;
  }

  else
  {
    v45 = 1;
  }

  if (!v45)
  {
    if (v8 - 800 > 0x31F)
    {
      v46 = *(a1 + 8);
      if (v46)
      {
        v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v47 = sub_11F1920((a1 + 8));
        v7 = *v54;
      }

      v27 = sub_1952690(v8, v47, v7, a3);
    }

    else
    {
      v27 = sub_19525AC((a1 + 16), v8, v7, &off_2776E58, (a1 + 8), a3);
    }

    goto LABEL_82;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_98:
  *v54 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v54;
}

char *sub_1549ED0(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 8) != 0)
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

    v21 = *(a1 + 80);
    *v11 = 26;
    v22 = *(v21 + 44);
    v11[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v11 + 1);
    }

    else
    {
      v23 = v11 + 2;
    }

    v11 = sub_16E5070(v21, v23, a3);
    if ((v5 & 4) == 0)
    {
LABEL_21:
      if ((v5 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
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

  v25 = *(a1 + 88);
  *v11 = 34;
  v26 = *(v25 + 20);
  v11[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v11 + 1);
  }

  else
  {
    v27 = v11 + 2;
  }

  v11 = sub_16EBD38(v25, v27, a3);
  if (v5)
  {
LABEL_22:
    v11 = sub_128AEEC(a3, 5, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

LABEL_23:
  v15 = *(a1 + 56);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      v17 = *(*(a1 + 64) + v16);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = v17[1], v18 > 127) || (*a3 - v11 + 14) < v18)
      {
        v11 = sub_1957480(a3, 6, v17, v11);
      }

      else
      {
        *v11 = 50;
        v11[1] = v18;
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = v11 + 2;
        memcpy(v11 + 2, v17, v18);
        v11 = &v19[v18];
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v24 = *(a1 + 112);
    *v11 = 56;
    v11[1] = v24;
    if (v24 > 0x7F)
    {
      v11[1] = v24 | 0x80;
      v28 = v24 >> 7;
      v11[2] = v24 >> 7;
      v20 = v11 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v29) = v11[2];
        do
        {
          *(v20 - 1) = v29 | 0x80;
          v29 = v28 >> 7;
          *v20++ = v28 >> 7;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v32 = *(a1 + 116);
    *v20 = 64;
    v20[1] = v32;
    if (v32 > 0x7F)
    {
      v20[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v20[2] = v32 >> 7;
      v31 = v20 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v34) = v20[2];
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
      v31 = v20 + 2;
    }
  }

  else
  {
    v31 = v20;
  }

  if (*(a1 + 26))
  {
    v31 = sub_1953428(a1 + 16, 100, 200, v31, a3);
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v31;
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

  if ((*a3 - v31) >= v39)
  {
    v41 = v39;
    memcpy(v31, v40, v39);
    v31 += v41;
    return v31;
  }

  return sub_1957130(a3, v40, v39, v31);
}

uint64_t sub_154A34C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 64) + 8);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 40);
  if ((v9 & 0x7F) == 0)
  {
    goto LABEL_30;
  }

  if (v9)
  {
    v10 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_9:
      if ((v9 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_9;
  }

  v13 = sub_16E51F0(*(a1 + 80));
  v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 4) == 0)
  {
LABEL_10:
    if ((v9 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v14 = sub_16EC25C(*(a1 + 88));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 8) == 0)
  {
LABEL_11:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v9 & 0x20) == 0)
    {
LABEL_13:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_20:
  v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  v15 = *(a1 + 112);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 += v16;
  if ((v9 & 0x40) != 0)
  {
LABEL_26:
    v17 = *(a1 + 116);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v18;
  }

LABEL_30:
  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v4 += v22;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_154A57C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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

        goto LABEL_29;
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

      goto LABEL_37;
    }

LABEL_29:
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

      v18 = sub_16F5DB8(v20);
      *(a1 + 88) = v18;
    }

    if (*(a2 + 88))
    {
      v21 = *(a2 + 88);
    }

    else
    {
      v21 = &off_277E820;
    }

    sub_16EC8A0(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(a1 + 96) = *(a2 + 96);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_39;
    }

LABEL_38:
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

LABEL_39:
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

uint64_t sub_154A774(uint64_t a1)
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

    result = sub_16ECE70(*(a1 + 88));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_154A7DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ED4C0;
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
    sub_13EC494((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  v11 = *(a2 + 16);
  if (v11)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_154A9A8(uint64_t a1)
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

  if (a1 != &off_2776ED0)
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
      sub_16E5B34(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_13EBF74((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_154AA84(uint64_t a1)
{
  sub_154A9A8(a1);

  operator delete();
}

unsigned __int8 *sub_154AABC(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16EF1B4(v4);
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
      result = sub_16E4E44(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_16E5B70(*(v1 + 56));
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

char *sub_154AB60(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v30, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v30 + 1;
    v7 = *v30;
    if (*v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v30 + 2;
      }
    }

    v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 2u;
        v22 = *(a1 + 56);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_16F58FC(v24);
          v22 = v25;
          *(a1 + 56) = v25;
          v6 = v30;
        }

        v15 = sub_21F86E8(a3, v22, v6);
        goto LABEL_41;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v16 = v6 - 1;
        while (1)
        {
          v17 = v16 + 1;
          v30 = v16 + 1;
          v18 = *(a1 + 40);
          if (v18 && (v19 = *(a1 + 32), v19 < *v18))
          {
            *(a1 + 32) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            sub_16F60C0(*(a1 + 24));
            v20 = sub_19593CC(a1 + 24, v21);
            v17 = v30;
          }

          v16 = sub_21F9E88(a3, v20, v17);
          v30 = v16;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_42;
          }
        }
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

        v26 = sub_16F5828(v28);
        *(a1 + 48) = v26;
        v6 = v30;
      }

      v15 = sub_21F4D60(a3, v26, v6);
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
        return v30;
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
      v6 = v30;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_41:
    v30 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  return v30;
}

char *sub_154AD9C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16E5070(v7, v9, a3);
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

      v4 = sub_16EF7E0(v12, v14, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 56);
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

    v4 = sub_16E5FE0(v15, v17, a3);
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

uint64_t sub_154AFA8(uint64_t a1)
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
      v7 = sub_16EFD54(v6);
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
      v9 = sub_16E51F0(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_16E62F4(*(a1 + 56));
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

void sub_154B0BC(uint64_t *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 3), *(a2 + 32));
    sub_13EC494(result + 3, v6, (v5 + 8), v4, *result[5] - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = result[5];
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
      *(result + 4) |= 1u;
      v10 = result[6];
      if (!v10)
      {
        v11 = result[1];
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_16F5828(v12);
        result[6] = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E5E8;
      }

      sub_16E527C(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 4) |= 2u;
      v14 = result[7];
      if (!v14)
      {
        v15 = result[1];
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        sub_16F58FC(v16);
        result[7] = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_277E650;
      }

      sub_16E645C(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4(result + 1, (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_154B21C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16F0144(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_16E5370(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_154B2A4(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26ED540;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void sub_154B308(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_154B338(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_26ED540;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  if (*(a2 + 40))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_154B464(uint64_t a1)
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
  if (a1 != &off_2776F10)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_16E8374(v6);
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

void sub_154B524(uint64_t a1)
{
  sub_154B464(a1);

  operator delete();
}

uint64_t sub_154B55C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if (*(a1 + 40))
  {
    result = sub_16E48B0(*(a1 + 48));
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_154B5C0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  if (sub_195ADC0(a3, &v17, a3[11].u32[1]))
  {
    return v17;
  }

  while (1)
  {
    v5 = v17 + 1;
    v6 = *v17;
    if (*v17 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(v17, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = v17 + 2;
      }
    }

    v17 = v5;
    if (v6 != 10)
    {
      break;
    }

    *(a1 + 40) |= 1u;
    v11 = *(a1 + 48);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_16F5BD8(v13);
      *(a1 + 48) = v11;
      v5 = v17;
    }

    v10 = sub_21F7188(a3, v11, v5);
LABEL_21:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }

    if (sub_195ADC0(a3, &v17, a3[11].u32[1]))
    {
      return v17;
    }
  }

  if (v6)
  {
    v9 = (v6 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (v6 - 800 > 0x31F)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v15 = sub_11F1920((a1 + 8));
        v5 = v17;
      }

      v10 = sub_1952690(v6, v15, v5, a3);
    }

    else
    {
      v10 = sub_19525AC((a1 + 16), v6, v5, &off_2776F10, (a1 + 8), a3);
    }

    goto LABEL_21;
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return v17;
  }

  return 0;
}

char *sub_154B744(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
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

    v4 = sub_16E886C(v6, v8, a3);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 200, v4, a3);
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

uint64_t sub_154B874(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  if (*(a1 + 40))
  {
    v3 = sub_16E8DA4(*(a1 + 48));
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

  *(a1 + 44) = v2;
  return v2;
}

void sub_154B900(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 48);
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

      v5 = sub_16F5BD8(v7);
      *(a1 + 48) = v5;
      v4 = *(a2 + 48);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277E738;
    }

    sub_16E4964(v5, v8);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_154B9B4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_16E4B4C(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_154BA08(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ED5C0;
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

void sub_154BA84(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_154BAB4(void *a1)
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

void sub_154BB28(void *a1)
{
  sub_154BAB4(a1);

  operator delete();
}

char *sub_154BB60(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_154BD44(uint64_t a1, char *__dst, unint64_t *a3)
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

unint64_t sub_154BEF4(uint64_t a1)
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

uint64_t sub_154BFA4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ED640;
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

void sub_154C020(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_154C050(void *a1)
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

void sub_154C0C4(void *a1)
{
  sub_154C050(a1);

  operator delete();
}

char *sub_154C0FC(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_154C2E0(uint64_t a1, char *__dst, unint64_t *a3)
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

unint64_t sub_154C490(uint64_t a1)
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

uint64_t sub_154C540(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ED6C0;
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

void sub_154C5BC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_154C5EC(void *a1)
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

void sub_154C660(void *a1)
{
  sub_154C5EC(a1);

  operator delete();
}

char *sub_154C698(uint64_t a1, char *a2, int32x2_t *a3)
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

      v5 |= 4u;
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
        v36 = v23;
        *(a1 + 26) = v22 != 0;
        goto LABEL_42;
      }

      v34 = sub_19587DC(v7, v22);
      v36 = v34;
      *(a1 + 26) = v35 != 0;
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

      v5 |= 8u;
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
        v36 = v17;
        *(a1 + 27) = v16 != 0;
        goto LABEL_42;
      }

      v28 = sub_19587DC(v7, v16);
      v36 = v28;
      *(a1 + 27) = v29 != 0;
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
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_29:
      v36 = v20;
      *(a1 + 24) = v19 != 0;
      goto LABEL_42;
    }

    v32 = sub_19587DC(v7, v19);
    v36 = v32;
    *(a1 + 24) = v33 != 0;
    if (!v32)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v11 == 2 && v8 == 16)
  {
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
      v36 = v14;
      *(a1 + 25) = v13 != 0;
      goto LABEL_42;
    }

    v30 = sub_19587DC(v7, v13);
    v36 = v30;
    *(a1 + 25) = v31 != 0;
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

char *sub_154C98C(uint64_t a1, char *__dst, unint64_t *a3)
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

  v8 = *(a1 + 25);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
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

  v9 = *(a1 + 26);
  *v4 = 24;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 27);
    *v4 = 32;
    v4[1] = v10;
    v4 += 2;
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

uint64_t sub_154CB24(uint64_t a1)
{
  v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2) + ((*(a1 + 16) >> 2) & 2u);
  if ((*(a1 + 16) & 0xF) == 0)
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

double sub_154CB9C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26ED740;
  *(a1 + 8) = v3;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 2;
  return result;
}

uint64_t sub_154CBDC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ED740;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v4 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  v6 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v6;
  return a1;
}

uint64_t (***sub_154CE10(uint64_t (***a1)()))()
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

  sub_154CE94(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_154CE94(uint64_t (***result)()))()
{
  if (result != &off_2776FB8)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_154979C(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_154A9A8(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_154B464(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_154C5EC(v5);
      operator delete();
    }

    result = v1[7];
    if (result)
    {
      sub_154BAB4(result);

      operator delete();
    }
  }

  return result;
}

void sub_154CF80(uint64_t (***a1)())
{
  sub_154CE10(a1);

  operator delete();
}

char *sub_154CFB8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v54, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v54 + 1;
    v8 = *v54;
    if (*v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v54 + 2;
      }
    }

    v54 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 > 8)
    {
      if (v11 == 9)
      {
        if (v8 == 74)
        {
          *(a1 + 16) |= 0x10u;
          v44 = *(a1 + 56);
          if (!v44)
          {
            v45 = *(a1 + 8);
            v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
            if (v45)
            {
              v46 = *v46;
            }

            v44 = sub_1552410(v46);
            *(a1 + 56) = v44;
            v7 = v54;
          }

          v15 = sub_220DF68(a3, v44, v7);
          goto LABEL_99;
        }

        goto LABEL_92;
      }

      if (v11 != 10)
      {
        if (v11 != 11 || v8 != 88)
        {
          goto LABEL_92;
        }

        v20 = v7 + 1;
        v19 = *v7;
        if (v19 < 0)
        {
          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = v7 + 2;
            goto LABEL_34;
          }

          v54 = sub_19587DC(v7, v19);
          if (!v54)
          {
            goto LABEL_121;
          }
        }

        else
        {
LABEL_34:
          v54 = v20;
        }

        if (v19 > 4)
        {
          sub_156E7E0();
        }

        else
        {
          *(a1 + 16) |= 0x200u;
          *(a1 + 76) = v19;
        }

        goto LABEL_100;
      }

      if (v8 != 80)
      {
        goto LABEL_92;
      }

      v36 = v7 + 1;
      v35 = *v7;
      if (v35 < 0)
      {
        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if ((v37 & 0x80000000) == 0)
        {
          v36 = v7 + 2;
          goto LABEL_72;
        }

        v54 = sub_19587DC(v7, v35);
        if (!v54)
        {
          goto LABEL_121;
        }
      }

      else
      {
LABEL_72:
        v54 = v36;
      }

      if (v35 > 1)
      {
        sub_156E728();
      }

      else
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 72) = v35;
      }

      goto LABEL_100;
    }

    if (v11 != 6)
    {
      if (v11 != 7)
      {
        if (v11 == 8 && v8 == 66)
        {
          *(a1 + 16) |= 8u;
          v12 = *(a1 + 48);
          if (!v12)
          {
            v13 = *(a1 + 8);
            v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
            if (v13)
            {
              v14 = *v14;
            }

            v12 = sub_1552508(v14);
            *(a1 + 48) = v12;
            v7 = v54;
          }

          v15 = sub_2210F70(a3, v12, v7);
          goto LABEL_99;
        }

        goto LABEL_92;
      }

      if (v8 != 56)
      {
        goto LABEL_92;
      }

      v33 = v7 + 1;
      v32 = *v7;
      if (v32 < 0)
      {
        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v54 = sub_19587DC(v7, v32);
          if (!v54)
          {
            goto LABEL_121;
          }

          goto LABEL_66;
        }

        v33 = v7 + 2;
      }

      v54 = v33;
LABEL_66:
      if (v32 > 3)
      {
        sub_13ED178();
      }

      else
      {
        *(a1 + 16) |= 0x80u;
        *(a1 + 68) = v32;
      }

      goto LABEL_100;
    }

    if (v8 != 48)
    {
      goto LABEL_92;
    }

    v5 |= 0x40u;
    v42 = v7 + 1;
    v41 = *v7;
    if ((v41 & 0x8000000000000000) == 0)
    {
      goto LABEL_85;
    }

    v43 = *v42;
    v41 = (v43 << 7) + v41 - 128;
    if ((v43 & 0x80000000) == 0)
    {
      v42 = v7 + 2;
LABEL_85:
      v54 = v42;
      *(a1 + 65) = v41 != 0;
      goto LABEL_100;
    }

    v52 = sub_19587DC(v7, v41);
    v54 = v52;
    *(a1 + 65) = v53 != 0;
    if (!v52)
    {
      goto LABEL_121;
    }

LABEL_100:
    if (sub_195ADC0(a3, &v54, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_92;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 24);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_15522BC(v25);
        *(a1 + 24) = v23;
        v7 = v54;
      }

      v15 = sub_221DF7C(a3, v23, v7);
LABEL_99:
      v54 = v15;
      if (!v15)
      {
        goto LABEL_121;
      }

      goto LABEL_100;
    }

    if (v8 != 8)
    {
      goto LABEL_92;
    }

    v27 = v7 + 1;
    v26 = *v7;
    if (v26 < 0)
    {
      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if (v28 < 0)
      {
        v54 = sub_19587DC(v7, v26);
        if (!v54)
        {
          goto LABEL_121;
        }

        goto LABEL_53;
      }

      v27 = v7 + 2;
    }

    v54 = v27;
LABEL_53:
    if ((v26 - 2) > 2)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 0x400u;
      *(a1 + 80) = v26;
    }

    goto LABEL_100;
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_92;
    }

    *(a1 + 16) |= 2u;
    v38 = *(a1 + 32);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_1552318(v40);
      *(a1 + 32) = v38;
      v7 = v54;
    }

    v15 = sub_221E00C(a3, v38, v7);
    goto LABEL_99;
  }

  if (v11 != 4)
  {
    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_92;
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
      v54 = v17;
      *(a1 + 64) = v16 != 0;
      goto LABEL_100;
    }

    v50 = sub_19587DC(v7, v16);
    v54 = v50;
    *(a1 + 64) = v51 != 0;
    if (!v50)
    {
      goto LABEL_121;
    }

    goto LABEL_100;
  }

  if (v8 == 34)
  {
    *(a1 + 16) |= 4u;
    v29 = *(a1 + 40);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_15523B4(v31);
      *(a1 + 40) = v29;
      v7 = v54;
    }

    v15 = sub_221E09C(a3, v29, v7);
    goto LABEL_99;
  }

LABEL_92:
  if (v8)
  {
    v47 = (v8 & 7) == 4;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    v48 = *(a1 + 8);
    if (v48)
    {
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v49 = sub_11F1920((a1 + 8));
      v7 = v54;
    }

    v15 = sub_1952690(v8, v49, v7, a3);
    goto LABEL_99;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_121:
  v54 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

char *sub_154D580(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x400) != 0)
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

    v12 = *(a1 + 24);
    *v6 = 18;
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

    v6 = sub_1549ED0(v12, v14, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
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

  v15 = *(a1 + 32);
  *v6 = 26;
  v16 = *(v15 + 20);
  v6[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v6 + 1);
  }

  else
  {
    v17 = v6 + 2;
  }

  v6 = sub_154AD9C(v15, v17, a3);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_29:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 40);
  *v6 = 34;
  v19 = *(v18 + 44);
  v6[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v6 + 1);
  }

  else
  {
    v20 = v6 + 2;
  }

  v6 = sub_154B744(v18, v20, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

LABEL_38:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 65);
    *v6 = 48;
    v6[1] = v22;
    v6 += 2;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_35:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v21 = *(a1 + 64);
  *v6 = 40;
  v6[1] = v21;
  v6 += 2;
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_38;
  }

LABEL_15:
  if ((v5 & 0x80) == 0)
  {
LABEL_16:
    v11 = v6;
    goto LABEL_48;
  }

LABEL_41:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v23 = *(a1 + 68);
  *v6 = 56;
  v6[1] = v23;
  if (v23 > 0x7F)
  {
    v6[1] = v23 | 0x80;
    v24 = v23 >> 7;
    v6[2] = v23 >> 7;
    v11 = v6 + 3;
    if (v23 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        v6 = (v24 >> 7);
        *v11++ = v24 >> 7;
        v25 = v24 >> 14;
        v24 >>= 7;
      }

      while (v25);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_48:
  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_50;
    }

LABEL_58:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v30 = *(a1 + 56);
    *v11 = 74;
    v31 = *(v30 + 20);
    v11[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v11 + 1);
    }

    else
    {
      v32 = v11 + 2;
    }

    v11 = sub_154BD44(v30, v32, a3);
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_64;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v27 = *(a1 + 48);
  *v11 = 66;
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

  v11 = sub_154C98C(v27, v29, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_58;
  }

LABEL_50:
  if ((v5 & 0x100) == 0)
  {
LABEL_51:
    v26 = v11;
    goto LABEL_71;
  }

LABEL_64:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v33 = *(a1 + 72);
  *v11 = 80;
  v11[1] = v33;
  if (v33 > 0x7F)
  {
    v11[1] = v33 | 0x80;
    v34 = v33 >> 7;
    v11[2] = v33 >> 7;
    v26 = v11 + 3;
    if (v33 >= 0x4000)
    {
      LOBYTE(v11) = v11[2];
      do
      {
        *(v26 - 1) = v11 | 0x80;
        v11 = (v34 >> 7);
        *v26++ = v34 >> 7;
        v35 = v34 >> 14;
        v34 >>= 7;
      }

      while (v35);
    }
  }

  else
  {
    v26 = v11 + 2;
  }

LABEL_71:
  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v37 = *(a1 + 76);
    *v26 = 88;
    v26[1] = v37;
    if (v37 > 0x7F)
    {
      v26[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v26[2] = v37 >> 7;
      v36 = v26 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v39) = v26[2];
        do
        {
          *(v36 - 1) = v39 | 0x80;
          v39 = v38 >> 7;
          *v36++ = v38 >> 7;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v36 = v26 + 2;
    }
  }

  else
  {
    v36 = v26;
  }

  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v36;
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

  if ((*a3 - v36) >= v44)
  {
    v46 = v44;
    memcpy(v36, v45, v44);
    v36 += v46;
    return v36;
  }

  return sub_1957130(a3, v45, v44, v36);
}

uint64_t sub_154DABC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_17;
  }

  if (v2)
  {
    v5 = sub_154A34C(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v6 = sub_154AFA8(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v11 = sub_154B874(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v12 = sub_154CB24(*(a1 + 48));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v7 = sub_154BEF4(*(a1 + 56));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  result = v3 + ((v2 >> 5) & 2) + ((v2 >> 4) & 2);
  if ((v2 & 0x80) != 0)
  {
    v8 = *(a1 + 68);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    result += v10;
  }

LABEL_17:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_37;
  }

  if ((v2 & 0x100) != 0)
  {
    v13 = *(a1 + 72);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v14;
    if ((v2 & 0x200) == 0)
    {
LABEL_20:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v15 = *(a1 + 76);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v16;
  if ((v2 & 0x400) != 0)
  {
LABEL_33:
    v17 = *(a1 + 80);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v18;
  }

LABEL_37:
  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    result += v21;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_154DD20(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_14CC674(result);

    sub_14D0028(result, a2);
  }
}

__n128 sub_154DD6C(uint64_t a1, uint64_t a2)
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
  v6 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  v10 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v10;
  LODWORD(v10) = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v10;
  return result;
}

void *sub_154DDF0(void *a1)
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

void sub_154DE64(void *a1)
{
  sub_154DDF0(a1);

  operator delete();
}

uint64_t sub_154DE9C(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 32) = 0;
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

char *sub_154DEC4(uint64_t a1, char *a2, int32x2_t *a3)
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
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_30:
      v31 = v19;
      *(a1 + 32) = v20;
      goto LABEL_35;
    }

    v29 = sub_1958770(v7, v20);
    v31 = v29;
    *(a1 + 32) = v30;
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
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_25:
      v31 = v16;
      *(a1 + 28) = v17;
      goto LABEL_35;
    }

    v25 = sub_1958770(v7, v17);
    v31 = v25;
    *(a1 + 28) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_34:
      v31 = v22;
      *(a1 + 24) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
    v31 = v27;
    *(a1 + 24) = v28;
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

char *sub_154E10C(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
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

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v22)
  {
    v24 = v22;
    memcpy(v15, v23, v22);
    v15 += v24;
    return v15;
  }

  return sub_1957130(a3, v23, v22, v15);
}

uint64_t sub_154E344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

void *sub_154E420(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26ED840;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a2;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = a2;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = a2;
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = &qword_278E990;
  a1[19] = &qword_278E990;
  a1[20] = &qword_278E990;
  a1[21] = &qword_278E990;
  a1[22] = 0;
  return a1;
}

void sub_154E4B4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_154E4E4(uint64_t a1)
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

  v5 = (a1 + 144);
  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 152) != &qword_278E990)
  {
    sub_194E89C((a1 + 152));
  }

  if (*(a1 + 160) != &qword_278E990)
  {
    sub_194E89C((a1 + 160));
  }

  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C((a1 + 168));
  }

  if (a1 != &off_2777010)
  {
    v6 = *(a1 + 176);
    if (v6)
    {
      sub_16E4E08(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_1311F6C((a1 + 120));
  sub_156D0BC((a1 + 96));
  sub_156D1C4((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_154E628(uint64_t a1)
{
  sub_154E4E4(a1);

  operator delete();
}

uint64_t sub_154E660(uint64_t a1)
{
  sub_1951124((a1 + 16));
  result = sub_12A41D0(a1 + 48);
  v3 = *(a1 + 80);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 88) + 8);
    do
    {
      v5 = *v4++;
      result = sub_154DE9C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 80) = 0;
  }

  v6 = *(a1 + 104);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 112) + 8);
    do
    {
      v8 = *v7++;
      result = sub_14EB434(v8);
      --v6;
    }

    while (v6);
    *(a1 + 104) = 0;
  }

  v9 = *(a1 + 128);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 136) + 8);
    do
    {
      v11 = *v10++;
      result = sub_1543CB4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 128) = 0;
  }

  v12 = *(a1 + 40);
  if ((v12 & 0x1F) == 0)
  {
    goto LABEL_20;
  }

  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    v16 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v16 + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
      if ((v12 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
      if ((v12 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

  v15 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_16:
  if ((v12 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_32:
  v17 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v17 + 23) & 0x80000000) == 0)
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_36;
    }

LABEL_18:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  **v17 = 0;
  *(v17 + 8) = 0;
  if ((v12 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_36:
  v18 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v18 + 23) & 0x80000000) == 0)
  {
    *v18 = 0;
    *(v18 + 23) = 0;
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    result = sub_16E4E44(*(a1 + 176));
    goto LABEL_20;
  }

  **v18 = 0;
  *(v18 + 8) = 0;
  if ((v12 & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 32) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_154E82C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v52 = a2;
  if (sub_195ADC0(a3, v52, a3[11].u32[1]))
  {
    return *v52;
  }

  while (1)
  {
    v6 = (*v52 + 1);
    v7 = **v52;
    if (**v52 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v52, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v52 + 2);
      }
    }

    *v52 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 4)
    {
      if (v7 >> 3 <= 6)
      {
        if (v10 == 5)
        {
          if (v7 != 42)
          {
            goto LABEL_90;
          }

          *(a1 + 40) |= 2u;
          v41 = *(a1 + 8);
          v29 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
          if (v41)
          {
            v29 = *v29;
          }

          v30 = (a1 + 152);
        }

        else
        {
          if (v10 != 6 || v7 != 50)
          {
            goto LABEL_90;
          }

          *(a1 + 40) |= 4u;
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v30 = (a1 + 160);
        }
      }

      else
      {
        if (v10 != 7)
        {
          if (v10 == 8)
          {
            if (v7 == 66)
            {
              v43 = v6 - 1;
              while (1)
              {
                v44 = v43 + 1;
                *v52 = v43 + 1;
                v45 = *(a1 + 112);
                if (v45 && (v46 = *(a1 + 104), v46 < *v45))
                {
                  *(a1 + 104) = v46 + 1;
                  v47 = *&v45[2 * v46 + 2];
                }

                else
                {
                  sub_15520A4(*(a1 + 96));
                  v47 = sub_19593CC(a1 + 96, v48);
                  v44 = *v52;
                }

                v43 = sub_2204D90(a3, v47, v44);
                *v52 = v43;
                if (!v43)
                {
                  goto LABEL_102;
                }

                if (*a3 <= v43 || *v43 != 66)
                {
                  goto LABEL_78;
                }
              }
            }
          }

          else if (v10 == 9 && v7 == 74)
          {
            v11 = v6 - 1;
            while (1)
            {
              v12 = v11 + 1;
              *v52 = v11 + 1;
              v13 = *(a1 + 136);
              if (v13 && (v14 = *(a1 + 128), v14 < *v13))
              {
                *(a1 + 128) = v14 + 1;
                v15 = *&v13[2 * v14 + 2];
              }

              else
              {
                v16 = sub_1551DC4(*(a1 + 120));
                v15 = sub_19593CC(a1 + 120, v16);
                v12 = *v52;
              }

              v11 = sub_21F8E38(a3, v15, v12);
              *v52 = v11;
              if (!v11)
              {
                goto LABEL_102;
              }

              if (*a3 <= v11 || *v11 != 74)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_90;
        }

        if (v7 != 58)
        {
          goto LABEL_90;
        }

        *(a1 + 40) |= 8u;
        v40 = *(a1 + 8);
        v29 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v29 = *v29;
        }

        v30 = (a1 + 168);
      }

LABEL_76:
      v42 = sub_194DB04(v30, v29);
      v27 = sub_1958890(v42, *v52, a3);
      goto LABEL_77;
    }

    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          v31 = v6 - 1;
          while (1)
          {
            v32 = (v31 + 1);
            *v52 = v31 + 1;
            v33 = *(a1 + 64);
            if (v33 && (v34 = *(a1 + 56), v34 < *v33))
            {
              *(a1 + 56) = v34 + 1;
              v35 = *&v33[2 * v34 + 2];
            }

            else
            {
              v36 = *(a1 + 48);
              if (!v36)
              {
                operator new();
              }

              *v38 = v37;
              v38[1] = sub_195A650;
              *v37 = 0;
              v37[1] = 0;
              v37[2] = 0;
              v35 = sub_19593CC(a1 + 48, v37);
              v32 = *v52;
            }

            v31 = sub_1958890(v35, v32, a3);
            *v52 = v31;
            if (!v31)
            {
              goto LABEL_102;
            }

            if (*a3 <= v31 || *v31 != 10)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v18 = v6 - 1;
        while (1)
        {
          v19 = v18 + 1;
          *v52 = v18 + 1;
          v20 = *(a1 + 88);
          if (v20 && (v21 = *(a1 + 80), v21 < *v20))
          {
            *(a1 + 80) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_155260C(*(a1 + 72));
            v22 = sub_19593CC(a1 + 72, v23);
            v19 = *v52;
          }

          v18 = sub_221E12C(a3, v22, v19);
          *v52 = v18;
          if (!v18)
          {
            goto LABEL_102;
          }

          if (*a3 <= v18 || *v18 != 18)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_90;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 != 4 || v7 != 34)
    {
      goto LABEL_90;
    }

    *(a1 + 40) |= 0x10u;
    v24 = *(a1 + 176);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5828(v26);
      *(a1 + 176) = v24;
      v6 = *v52;
    }

    v27 = sub_21F4D60(a3, v24, v6);
LABEL_77:
    *v52 = v27;
    if (!v27)
    {
      goto LABEL_102;
    }

LABEL_78:
    if (sub_195ADC0(a3, v52, a3[11].u32[1]))
    {
      return *v52;
    }
  }

  if (v7 == 26)
  {
    *(a1 + 40) |= 1u;
    v39 = *(a1 + 8);
    v29 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v29 = *v29;
    }

    v30 = (a1 + 144);
    goto LABEL_76;
  }

LABEL_90:
  if (v7)
  {
    v49 = (v7 & 7) == 4;
  }

  else
  {
    v49 = 1;
  }

  if (!v49)
  {
    if (v7 - 4000 > 0x63F)
    {
      v50 = *(a1 + 8);
      if (v50)
      {
        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v51 = sub_11F1920((a1 + 8));
        v6 = *v52;
      }

      v27 = sub_1952690(v7, v51, v6, a3);
    }

    else
    {
      v27 = sub_19525AC((a1 + 16), v7, v6, &off_2777010, (a1 + 8), a3);
    }

    goto LABEL_77;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v52;
  }

LABEL_102:
  *v52 = 0;
  return *v52;
}

char *sub_154ED80(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 64) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - a2 + 14) < v9)
      {
        a2 = sub_1957480(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = a2 + 2;
        memcpy(v10, v8, v9);
        a2 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 88) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_154E10C(v13, v15, a3);
    }
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    a2 = sub_128AEEC(a3, 3, (*(a1 + 144) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v16 & 0x10) == 0)
    {
LABEL_22:
      if ((v16 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_53;
    }
  }

  else if ((v16 & 0x10) == 0)
  {
    goto LABEL_22;
  }

  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v29 = *(a1 + 176);
  *a2 = 34;
  v30 = *(v29 + 44);
  a2[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, a2 + 1);
  }

  else
  {
    v31 = a2 + 2;
  }

  a2 = sub_16E5070(v29, v31, a3);
  if ((v16 & 2) == 0)
  {
LABEL_23:
    if ((v16 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  a2 = sub_128AEEC(a3, 5, (*(a1 + 152) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v16 & 4) == 0)
  {
LABEL_24:
    if ((v16 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_54:
  a2 = sub_128AEEC(a3, 6, (*(a1 + 160) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v16 & 8) != 0)
  {
LABEL_25:
    a2 = sub_128AEEC(a3, 7, (*(a1 + 168) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_26:
  v17 = *(a1 + 104);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v19 = *(*(a1 + 112) + 8 * j + 8);
      *a2 = 66;
      v20 = *(v19 + 20);
      a2[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, a2 + 1);
      }

      else
      {
        v21 = a2 + 2;
      }

      a2 = sub_1546828(v19, v21, a3);
    }
  }

  v22 = *(a1 + 128);
  if (v22)
  {
    for (k = 0; k != v22; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v24 = *(*(a1 + 136) + 8 * k + 8);
      *a2 = 74;
      v25 = *(v24 + 20);
      a2[1] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, a2 + 1);
      }

      else
      {
        v26 = a2 + 2;
      }

      a2 = sub_1543E88(v24, v26, a3);
    }
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 500, 700, a2, a3);
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  v32 = v27 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - a2) >= v33)
  {
    v35 = v33;
    memcpy(a2, v34, v33);
    a2 += v35;
    return a2;
  }

  return sub_1957130(a3, v34, v33, a2);
}

uint64_t sub_154F180(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 64) + 8);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 80);
  v10 = v4 + v9;
  v11 = *(a1 + 88);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = sub_154E344(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 104);
  v17 = v10 + v16;
  v18 = *(a1 + 112);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = sub_1546FC4(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 128);
  v24 = v17 + v23;
  v25 = *(a1 + 136);
  if (v25)
  {
    v26 = (v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = 8 * v23;
    do
    {
      v28 = *v26++;
      v29 = sub_1543FE4(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 40);
  if ((v30 & 0x1F) == 0)
  {
    goto LABEL_31;
  }

  if (v30)
  {
    v34 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    v35 = *(v34 + 23);
    v36 = *(v34 + 8);
    if ((v35 & 0x80u) == 0)
    {
      v36 = v35;
    }

    v24 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v30 & 2) == 0)
    {
LABEL_27:
      if ((v30 & 4) == 0)
      {
        goto LABEL_28;
      }

LABEL_39:
      v40 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
      v41 = *(v40 + 23);
      v42 = *(v40 + 8);
      if ((v41 & 0x80u) == 0)
      {
        v42 = v41;
      }

      v24 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v30 & 8) == 0)
      {
LABEL_29:
        if ((v30 & 0x10) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      goto LABEL_42;
    }
  }

  else if ((v30 & 2) == 0)
  {
    goto LABEL_27;
  }

  v37 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(v37 + 23);
  v39 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v39 = v38;
  }

  v24 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v30 & 4) != 0)
  {
    goto LABEL_39;
  }

LABEL_28:
  if ((v30 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_42:
  v43 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v43 + 23);
  v45 = *(v43 + 8);
  if ((v44 & 0x80u) == 0)
  {
    v45 = v44;
  }

  v24 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v30 & 0x10) != 0)
  {
LABEL_30:
    v31 = sub_16E51F0(*(a1 + 176));
    v24 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_31:
  v32 = *(a1 + 8);
  if (v32)
  {
    v46 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *((v32 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v47 < 0)
    {
      v47 = *(v46 + 16);
    }

    v24 += v47;
  }

  *(a1 + 44) = v24;
  return v24;
}