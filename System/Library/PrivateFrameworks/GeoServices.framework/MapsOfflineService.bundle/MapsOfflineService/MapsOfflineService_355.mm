uint64_t sub_146EFDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_16E51F0(*(a1 + 32));
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = sub_153C388(*(a1 + 40));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v11 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_146F11C(uint64_t a1, uint64_t a2)
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

        goto LABEL_23;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v9 = sub_16F5828(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_277E5E8;
    }

    sub_16E527C(v9, v12);
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

LABEL_23:
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_1551A70(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2776880;
    }

    sub_144F404(v13, v16);
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

uint64_t sub_146F27C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16E5370(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = sub_195228C(*(a1 + 40) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_146F2DC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E4BC0;
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
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = &qword_278E990;
  *(a1 + 184) = &qword_278E990;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 300) = 0u;
  *(a1 + 316) = -1;
  *(a1 + 324) = -1;
  return a1;
}

void sub_146F39C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_146F3CC(void *a1)
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

  sub_146F494(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1564518(a1 + 19);
  sub_1564494(a1 + 16);
  sub_1564410(a1 + 13);
  sub_1563F6C(a1 + 10);
  sub_156438C(a1 + 7);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_146F494(uint64_t a1)
{
  v3 = *(a1 + 176);
  v2 = (a1 + 176);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 184);
  if (*(a1 + 184) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2772008)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      sub_16E9760(v5);
      operator delete();
    }

    v6 = *(a1 + 200);
    if (v6)
    {
      sub_14510E4(v6);
      operator delete();
    }

    v7 = *(a1 + 208);
    if (v7)
    {
      sub_14607DC(v7);
      operator delete();
    }

    v8 = *(a1 + 216);
    if (v8)
    {
      sub_1477814(v8);
      operator delete();
    }

    v9 = *(a1 + 224);
    if (v9)
    {
      sub_146DD8C(v9);
      operator delete();
    }

    v10 = *(a1 + 232);
    if (v10)
    {
      sub_146E240(v10);
      operator delete();
    }

    v11 = *(a1 + 240);
    if (v11)
    {
      sub_14B64B0(v11);
      operator delete();
    }

    result = *(a1 + 248);
    if (result)
    {
      sub_146E95C(result);

      operator delete();
    }
  }

  return result;
}

void sub_146F60C(void *a1)
{
  sub_146F3CC(a1);

  operator delete();
}

uint64_t sub_146F644(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 64);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 72) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16E90B4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 64) = 0;
  }

  v6 = *(a1 + 88);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 96) + 8);
    do
    {
      v8 = *v7++;
      result = sub_1450B08(v8);
      --v6;
    }

    while (v6);
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 112);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 120) + 8);
    do
    {
      v11 = *v10++;
      result = sub_16E979C(v11);
      --v9;
    }

    while (v9);
    *(a1 + 112) = 0;
  }

  v12 = *(a1 + 136);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 144) + 8);
    do
    {
      v14 = *v13++;
      result = sub_14620AC(v14);
      --v12;
    }

    while (v12);
    *(a1 + 136) = 0;
  }

  v15 = *(a1 + 160);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 168) + 8);
    do
    {
      v17 = *v16++;
      result = sub_146D8CC(v17);
      --v15;
    }

    while (v15);
    *(a1 + 160) = 0;
  }

  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_43;
  }

  if ((v18 & 1) == 0)
  {
    if ((v18 & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_31:
    v20 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v20 + 23) < 0)
    {
      **v20 = 0;
      *(v20 + 8) = 0;
      if ((v18 & 4) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v20 = 0;
      *(v20 + 23) = 0;
      if ((v18 & 4) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_25:
    if ((v18 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v19 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v19 + 23) < 0)
  {
    **v19 = 0;
    *(v19 + 8) = 0;
    if ((v18 & 2) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v19 = 0;
    *(v19 + 23) = 0;
    if ((v18 & 2) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_24:
  if ((v18 & 4) == 0)
  {
    goto LABEL_25;
  }

LABEL_35:
  result = sub_16E979C(*(a1 + 192));
  if ((v18 & 8) == 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  v21 = *(a1 + 200);
  v22 = *(v21 + 8);
  result = v21 + 8;
  *(result + 8) = 0;
  *(result + 32) = 0;
  if (v22)
  {
    result = sub_1957EA8(result);
  }

LABEL_38:
  if ((v18 & 0x10) == 0)
  {
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_40;
    }

LABEL_61:
    result = sub_146F8D4(*(a1 + 216));
    if ((v18 & 0x40) == 0)
    {
LABEL_41:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    goto LABEL_62;
  }

  result = sub_14609DC(*(a1 + 208));
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_61;
  }

LABEL_40:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_62:
  result = sub_146DE38(*(a1 + 224));
  if ((v18 & 0x80) != 0)
  {
LABEL_42:
    result = sub_146E2EC(*(a1 + 232));
  }

LABEL_43:
  if ((v18 & 0x300) != 0)
  {
    if ((v18 & 0x100) != 0)
    {
      result = sub_144E6A8(*(a1 + 240));
    }

    if ((v18 & 0x200) != 0)
    {
      result = sub_146EA80(*(a1 + 248));
    }
  }

  if ((v18 & 0xFC00) != 0)
  {
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
  }

  if ((v18 & 0xFF0000) != 0)
  {
    *(a1 + 280) = 0;
    *(a1 + 286) = 0;
  }

  if (HIBYTE(v18))
  {
    *(a1 + 302) = 0;
    *(a1 + 294) = 0;
    *(a1 + 308) = 0;
    *(a1 + 316) = -1;
  }

  if ((*(a1 + 44) & 3) != 0)
  {
    *(a1 + 324) = -1;
  }

  v24 = *(a1 + 8);
  v23 = (a1 + 8);
  v23[4] = 0;
  if (v24)
  {

    return sub_1957EA8(v23);
  }

  return result;
}

uint64_t sub_146F8D4(uint64_t a1)
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

uint64_t sub_146F8F8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v179 = a2;
  if (sub_195ADC0(a3, v179, a3[11].u32[1]))
  {
    return *v179;
  }

  while (2)
  {
    v6 = (*v179 + 1);
    v7 = **v179;
    if (**v179 < 0)
    {
      v7 = v7 + (*v6 << 7) - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v179, v7);
      }

      else
      {
        v6 = (*v179 + 2);
      }
    }

    *v179 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 8)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x400u;
        v8 = v6 + 1;
        v9 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        v10 = *v8;
        v9 = v9 + (v10 << 7) - 128;
        if ((v10 & 0x80000000) == 0)
        {
          v8 = v6 + 2;
LABEL_12:
          *v179 = v8;
          *(a1 + 256) = v9;
          goto LABEL_213;
        }

        v144 = sub_1958770(v6, v9);
        *v179 = v144;
        *(a1 + 256) = v145;
        if (v144)
        {
          goto LABEL_213;
        }

        return 0;
      case 2u:
        if (v7 != 16)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x40000000u;
        LODWORD(v69) = *v6;
        if ((v69 & 0x80000000) == 0)
        {
          v70 = (v6 + 1);
LABEL_249:
          *v179 = v70;
          *(a1 + 316) = v69;
          goto LABEL_213;
        }

        v69 = (v6[1] << 7) + v69 - 128;
        if ((v6[1] & 0x80000000) == 0)
        {
          v70 = (v6 + 2);
          goto LABEL_249;
        }

        v152 = sub_19587DC(v6, v69);
        *v179 = v152;
        *(a1 + 316) = v153;
        if (!v152)
        {
          return 0;
        }

        goto LABEL_213;
      case 3u:
        if (v7 != 24)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x80000000;
        LODWORD(v71) = *v6;
        if ((v71 & 0x80000000) == 0)
        {
          v72 = (v6 + 1);
LABEL_252:
          *v179 = v72;
          *(a1 + 320) = v71;
          goto LABEL_213;
        }

        v71 = (v6[1] << 7) + v71 - 128;
        if ((v6[1] & 0x80000000) == 0)
        {
          v72 = (v6 + 2);
          goto LABEL_252;
        }

        v154 = sub_19587DC(v6, v71);
        *v179 = v154;
        *(a1 + 320) = v155;
        if (!v154)
        {
          return 0;
        }

        goto LABEL_213;
      case 4u:
        if (v7 != 32)
        {
          goto LABEL_235;
        }

        *(a1 + 44) |= 1u;
        LODWORD(v79) = *v6;
        if ((v79 & 0x80000000) == 0)
        {
          v80 = (v6 + 1);
LABEL_255:
          *v179 = v80;
          *(a1 + 324) = v79;
          goto LABEL_213;
        }

        v79 = (v6[1] << 7) + v79 - 128;
        if ((v6[1] & 0x80000000) == 0)
        {
          v80 = (v6 + 2);
          goto LABEL_255;
        }

        v160 = sub_19587DC(v6, v79);
        *v179 = v160;
        *(a1 + 324) = v161;
        if (!v160)
        {
          return 0;
        }

        goto LABEL_213;
      case 5u:
        if (v7 != 40)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x800u;
        v73 = v6 + 1;
        v74 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_125;
        }

        v75 = *v73;
        v74 = v74 + (v75 << 7) - 128;
        if (v75 < 0)
        {
          v156 = sub_1958770(v6, v74);
          *v179 = v156;
          *(a1 + 260) = v157;
          if (!v156)
          {
            return 0;
          }
        }

        else
        {
          v73 = v6 + 2;
LABEL_125:
          *v179 = v73;
          *(a1 + 260) = v74;
        }

        goto LABEL_213;
      case 6u:
        if (v7 != 48)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x1000u;
        v76 = v6 + 1;
        v77 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_132;
        }

        v78 = *v76;
        v77 = v77 + (v78 << 7) - 128;
        if (v78 < 0)
        {
          v158 = sub_1958770(v6, v77);
          *v179 = v158;
          *(a1 + 264) = v159;
          if (!v158)
          {
            return 0;
          }
        }

        else
        {
          v76 = v6 + 2;
LABEL_132:
          *v179 = v76;
          *(a1 + 264) = v77;
        }

        goto LABEL_213;
      case 7u:
        if (v7 != 56)
        {
          goto LABEL_235;
        }

        v93 = v6 + 1;
        v94 = *v6;
        if ((v94 & 0x8000000000000000) == 0)
        {
          goto LABEL_163;
        }

        v95 = *v93;
        v96 = (v95 << 7) + v94;
        LODWORD(v94) = v96 - 128;
        if (v95 < 0)
        {
          *v179 = sub_19587DC(v6, (v96 - 128));
          if (!*v179)
          {
            return 0;
          }

          LODWORD(v94) = v166;
        }

        else
        {
          v93 = v6 + 2;
LABEL_163:
          *v179 = v93;
        }

        if (sub_1454008(v94))
        {
          *(a1 + 40) |= 0x2000u;
          *(a1 + 268) = v94;
        }

        else
        {
          sub_13ED178();
        }

        goto LABEL_213;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_235;
        }

        v97 = v6 - 1;
        while (1)
        {
          v98 = v97 + 1;
          *v179 = v97 + 1;
          v99 = *(a1 + 72);
          if (v99 && (v100 = *(a1 + 64), v100 < *v99))
          {
            *(a1 + 64) = v100 + 1;
            v101 = *&v99[2 * v100 + 2];
          }

          else
          {
            v102 = sub_16F5C34(*(a1 + 56));
            v101 = sub_19593CC(a1 + 56, v102);
            v98 = *v179;
          }

          v97 = sub_220D548(a3, v101, v98);
          *v179 = v97;
          if (!v97)
          {
            return 0;
          }

          if (*a3 <= v97 || *v97 != 66)
          {
            goto LABEL_213;
          }
        }

      case 0xAu:
        if (v7 != 80)
        {
          goto LABEL_235;
        }

        v40 = v6 + 1;
        v39 = *v6;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_65;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          *v179 = sub_19587DC(v6, v39);
          if (!*v179)
          {
            return 0;
          }
        }

        else
        {
          v40 = v6 + 2;
LABEL_65:
          *v179 = v40;
        }

        if (v39 > 1)
        {
          sub_156E728();
        }

        else
        {
          *(a1 + 40) |= 0x4000u;
          *(a1 + 272) = v39;
        }

        goto LABEL_213;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_235;
        }

        v106 = v6 - 1;
        while (1)
        {
          v107 = v106 + 1;
          *v179 = v106 + 1;
          v108 = *(a1 + 96);
          if (v108 && (v109 = *(a1 + 88), v109 < *v108))
          {
            *(a1 + 88) = v109 + 1;
            v110 = *&v108[2 * v109 + 2];
          }

          else
          {
            v111 = sub_14BA608(*(a1 + 80));
            v110 = sub_19593CC(a1 + 80, v111);
            v107 = *v179;
          }

          v106 = sub_220CFA8(a3, v110, v107);
          *v179 = v106;
          if (!v106)
          {
            return 0;
          }

          if (*a3 <= v106 || *v106 != 90)
          {
            goto LABEL_213;
          }
        }

      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_235;
        }

        v45 = (v6 - 1);
        while (1)
        {
          v46 = (v45 + 1);
          *v179 = v45 + 1;
          v47 = *(a1 + 120);
          if (v47 && (v48 = *(a1 + 112), v48 < *v47))
          {
            *(a1 + 112) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            v50 = sub_16F5CD4(*(a1 + 104));
            v49 = sub_19593CC(a1 + 104, v50);
            v46 = *v179;
          }

          v45 = sub_220D038(a3, v49, v46);
          *v179 = v45;
          if (!v45)
          {
            return 0;
          }

          if (*a3 <= v45 || *v45 != 98)
          {
            goto LABEL_213;
          }
        }

      case 0xDu:
        if (v7 != 109)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x8000u;
        *(a1 + 276) = *v6;
        *v179 = v6 + 4;
        goto LABEL_213;
      case 0x10u:
        if (v7 != 128)
        {
          goto LABEL_235;
        }

        *(a1 + 44) |= 2u;
        LODWORD(v58) = *v6;
        if ((v58 & 0x80000000) == 0)
        {
          v59 = (v6 + 1);
LABEL_246:
          *v179 = v59;
          *(a1 + 328) = v58;
          goto LABEL_213;
        }

        v58 = (v6[1] << 7) + v58 - 128;
        if ((v6[1] & 0x80000000) == 0)
        {
          v59 = (v6 + 2);
          goto LABEL_246;
        }

        v146 = sub_19587DC(v6, v58);
        *v179 = v146;
        *(a1 + 328) = v147;
        if (!v146)
        {
          return 0;
        }

        goto LABEL_213;
      case 0x11u:
        if (v7 != 136)
        {
          goto LABEL_235;
        }

        v28 = v6 + 1;
        v27 = *v6;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_42;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if (v29 < 0)
        {
          *v179 = sub_19587DC(v6, v27);
          if (!*v179)
          {
            return 0;
          }
        }

        else
        {
          v28 = v6 + 2;
LABEL_42:
          *v179 = v28;
        }

        if (v27 > 6)
        {
          sub_156E760();
        }

        else
        {
          *(a1 + 40) |= 0x10000u;
          *(a1 + 280) = v27;
        }

        goto LABEL_213;
      case 0x12u:
        if (v7 != 144)
        {
          goto LABEL_235;
        }

        v88 = v6 + 1;
        v87 = *v6;
        if ((v87 & 0x8000000000000000) == 0)
        {
          goto LABEL_150;
        }

        v89 = *v88;
        v87 = (v89 << 7) + v87 - 128;
        if (v89 < 0)
        {
          *v179 = sub_19587DC(v6, v87);
          if (!*v179)
          {
            return 0;
          }
        }

        else
        {
          v88 = v6 + 2;
LABEL_150:
          *v179 = v88;
        }

        if (v87 > 1)
        {
          sub_13ED138();
        }

        else
        {
          *(a1 + 40) |= 0x20000u;
          *(a1 + 284) = v87;
        }

        goto LABEL_213;
      case 0x13u:
        if (v7 != 154)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 4u;
        v90 = *(a1 + 192);
        if (!v90)
        {
          v91 = *(a1 + 8);
          v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
          if (v91)
          {
            v92 = *v92;
          }

          v90 = sub_16F5CD4(v92);
          *(a1 + 192) = v90;
          v6 = *v179;
        }

        v14 = sub_220D038(a3, v90, v6);
        goto LABEL_212;
      case 0x14u:
        if (v7 != 160)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x40000u;
        v119 = v6 + 1;
        v118 = *v6;
        if ((v118 & 0x8000000000000000) == 0)
        {
          goto LABEL_206;
        }

        v120 = *v119;
        v118 = (v120 << 7) + v118 - 128;
        if (v120 < 0)
        {
          v171 = sub_19587DC(v6, v118);
          *v179 = v171;
          *(a1 + 288) = v172 != 0;
          if (!v171)
          {
            return 0;
          }
        }

        else
        {
          v119 = v6 + 2;
LABEL_206:
          *v179 = v119;
          *(a1 + 288) = v118 != 0;
        }

        goto LABEL_213;
      case 0x15u:
        if (v7 != 168)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x80000u;
        v113 = v6 + 1;
        v112 = *v6;
        if ((v112 & 0x8000000000000000) == 0)
        {
          goto LABEL_196;
        }

        v114 = *v113;
        v112 = (v114 << 7) + v112 - 128;
        if (v114 < 0)
        {
          v167 = sub_19587DC(v6, v112);
          *v179 = v167;
          *(a1 + 289) = v168 != 0;
          if (!v167)
          {
            return 0;
          }
        }

        else
        {
          v113 = v6 + 2;
LABEL_196:
          *v179 = v113;
          *(a1 + 289) = v112 != 0;
        }

        goto LABEL_213;
      case 0x16u:
        if (v7 != 176)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x100000u;
        v22 = v6 + 1;
        v21 = *v6;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          v142 = sub_19587DC(v6, v21);
          *v179 = v142;
          *(a1 + 290) = v143 != 0;
          if (!v142)
          {
            return 0;
          }
        }

        else
        {
          v22 = v6 + 2;
LABEL_33:
          *v179 = v22;
          *(a1 + 290) = v21 != 0;
        }

        goto LABEL_213;
      case 0x18u:
        if (v7 != 192)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x200000u;
        v61 = v6 + 1;
        v60 = *v6;
        if ((v60 & 0x8000000000000000) == 0)
        {
          goto LABEL_103;
        }

        v62 = *v61;
        v60 = (v62 << 7) + v60 - 128;
        if (v62 < 0)
        {
          v148 = sub_19587DC(v6, v60);
          *v179 = v148;
          *(a1 + 291) = v149 != 0;
          if (!v148)
          {
            return 0;
          }
        }

        else
        {
          v61 = v6 + 2;
LABEL_103:
          *v179 = v61;
          *(a1 + 291) = v60 != 0;
        }

        goto LABEL_213;
      case 0x1Eu:
        if (v7 != 242)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 1u;
        v121 = *(a1 + 8);
        v25 = (v121 & 0xFFFFFFFFFFFFFFFCLL);
        if (v121)
        {
          v25 = *v25;
        }

        v26 = (a1 + 176);
        goto LABEL_211;
      case 0x1Fu:
        if (v7 != 250)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 2u;
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v26 = (a1 + 184);
LABEL_211:
        v122 = sub_194DB04(v26, v25);
        v14 = sub_1958890(v122, *v179, a3);
        goto LABEL_212;
      case 0x20u:
        if (v7 != 2)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 8u;
        v54 = *(a1 + 200);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          sub_14BA684(v56);
          v54 = v57;
          *(a1 + 200) = v57;
          v6 = *v179;
        }

        v14 = sub_220D5D8(a3, v54, v6);
        goto LABEL_212;
      case 0x21u:
        if (v7 != 10)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x10u;
        v42 = *(a1 + 208);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_14BB45C(v44);
          *(a1 + 208) = v42;
          v6 = *v179;
        }

        v14 = sub_220A698(a3, v42, v6);
        goto LABEL_212;
      case 0x22u:
        if (v7 != 16)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x400000u;
        v82 = v6 + 1;
        v81 = *v6;
        if ((v81 & 0x8000000000000000) == 0)
        {
          goto LABEL_140;
        }

        v83 = *v82;
        v81 = (v83 << 7) + v81 - 128;
        if (v83 < 0)
        {
          v162 = sub_19587DC(v6, v81);
          *v179 = v162;
          *(a1 + 292) = v163 != 0;
          if (!v162)
          {
            return 0;
          }
        }

        else
        {
          v82 = v6 + 2;
LABEL_140:
          *v179 = v82;
          *(a1 + 292) = v81 != 0;
        }

        goto LABEL_213;
      case 0x23u:
        if (v7 != 26)
        {
          goto LABEL_235;
        }

        v30 = v6 - 2;
        while (1)
        {
          v31 = v30 + 2;
          *v179 = v30 + 2;
          v32 = *(a1 + 144);
          if (v32 && (v33 = *(a1 + 136), v33 < *v32))
          {
            *(a1 + 136) = v33 + 1;
            v34 = *&v32[2 * v33 + 2];
          }

          else
          {
            sub_14BB54C(*(a1 + 128));
            v34 = sub_19593CC(a1 + 128, v35);
            v31 = *v179;
          }

          v30 = sub_220D668(a3, v34, v31);
          *v179 = v30;
          if (!v30)
          {
            return 0;
          }

          if (*a3 <= v30 || *v30 != 666)
          {
            goto LABEL_213;
          }
        }

      case 0x24u:
        if (v7 != 32)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x800000u;
        v127 = v6 + 1;
        v126 = *v6;
        if ((v126 & 0x8000000000000000) == 0)
        {
          goto LABEL_224;
        }

        v128 = *v127;
        v126 = (v128 << 7) + v126 - 128;
        if (v128 < 0)
        {
          v175 = sub_19587DC(v6, v126);
          *v179 = v175;
          *(a1 + 293) = v176 != 0;
          if (!v175)
          {
            return 0;
          }
        }

        else
        {
          v127 = v6 + 2;
LABEL_224:
          *v179 = v127;
          *(a1 + 293) = v126 != 0;
        }

        goto LABEL_213;
      case 0x25u:
        if (v7 != 40)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x1000000u;
        v124 = v6 + 1;
        v123 = *v6;
        if ((v123 & 0x8000000000000000) == 0)
        {
          goto LABEL_219;
        }

        v125 = *v124;
        v123 = (v125 << 7) + v123 - 128;
        if (v125 < 0)
        {
          v173 = sub_19587DC(v6, v123);
          *v179 = v173;
          *(a1 + 294) = v174 != 0;
          if (!v173)
          {
            return 0;
          }
        }

        else
        {
          v124 = v6 + 2;
LABEL_219:
          *v179 = v124;
          *(a1 + 294) = v123 != 0;
        }

        goto LABEL_213;
      case 0x26u:
        if (v7 != 50)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x20u;
        v51 = *(a1 + 216);
        if (!v51)
        {
          v52 = *(a1 + 8);
          v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v53 = *v53;
          }

          v51 = sub_14BC730(v53);
          *(a1 + 216) = v51;
          v6 = *v179;
        }

        v14 = sub_220D6F8(a3, v51, v6);
        goto LABEL_212;
      case 0x29u:
        if (v7 != 74)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x40u;
        v63 = *(a1 + 224);
        if (!v63)
        {
          v64 = *(a1 + 8);
          v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v64)
          {
            v65 = *v65;
          }

          v63 = sub_14BC09C(v65);
          *(a1 + 224) = v63;
          v6 = *v179;
        }

        v14 = sub_220D788(a3, v63, v6);
        goto LABEL_212;
      case 0x2Au:
        if (v7 != 82)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x80u;
        v103 = *(a1 + 232);
        if (!v103)
        {
          v104 = *(a1 + 8);
          v105 = (v104 & 0xFFFFFFFFFFFFFFFCLL);
          if (v104)
          {
            v105 = *v105;
          }

          v103 = sub_14BC118(v105);
          *(a1 + 232) = v103;
          v6 = *v179;
        }

        v14 = sub_220D818(a3, v103, v6);
        goto LABEL_212;
      case 0x2Bu:
        if (v7 != 88)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x4000000u;
        v66 = v6 + 1;
        v67 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_114;
        }

        v68 = *v66;
        v67 = v67 + (v68 << 7) - 128;
        if (v68 < 0)
        {
          v150 = sub_1958770(v6, v67);
          *v179 = v150;
          *(a1 + 300) = v151;
          if (!v150)
          {
            return 0;
          }
        }

        else
        {
          v66 = v6 + 2;
LABEL_114:
          *v179 = v66;
          *(a1 + 300) = v67;
        }

        goto LABEL_213;
      case 0x2Cu:
        if (v7 != 98)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x100u;
        v11 = *(a1 + 240);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v11 = sub_14BF484(v13);
          *(a1 + 240) = v11;
          v6 = *v179;
        }

        v14 = sub_2209138(a3, v11, v6);
        goto LABEL_212;
      case 0x2Du:
        if (v7 != 106)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x200u;
        v36 = *(a1 + 248);
        if (!v36)
        {
          v37 = *(a1 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          v36 = sub_14BC198(v38);
          *(a1 + 248) = v36;
          v6 = *v179;
        }

        v14 = sub_220D8A8(a3, v36, v6);
        goto LABEL_212;
      case 0x2Eu:
        if (v7 != 112)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x8000000u;
        v115 = v6 + 1;
        v116 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

        v117 = *v115;
        v116 = v116 + (v117 << 7) - 128;
        if (v117 < 0)
        {
          v169 = sub_1958770(v6, v116);
          *v179 = v169;
          *(a1 + 304) = v170;
          if (!v169)
          {
            return 0;
          }
        }

        else
        {
          v115 = v6 + 2;
LABEL_201:
          *v179 = v115;
          *(a1 + 304) = v116;
        }

        goto LABEL_213;
      case 0x2Fu:
        if (v7 != 122)
        {
          goto LABEL_235;
        }

        v129 = v6 - 2;
        while (1)
        {
          v130 = v129 + 2;
          *v179 = v129 + 2;
          v131 = *(a1 + 168);
          if (v131 && (v132 = *(a1 + 160), v132 < *v131))
          {
            *(a1 + 160) = v132 + 1;
            v133 = *&v131[2 * v132 + 2];
          }

          else
          {
            v134 = sub_14BC020(*(a1 + 152));
            v133 = sub_19593CC(a1 + 152, v134);
            v130 = *v179;
          }

          v129 = sub_220D938(a3, v133, v130);
          *v179 = v129;
          if (!v129)
          {
            return 0;
          }

          if (*a3 <= v129 || *v129 != 762)
          {
            goto LABEL_213;
          }
        }

      case 0x30u:
        if (v7 != 128)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x10000000u;
        v18 = v6 + 1;
        v19 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v18;
        v19 = v19 + (v20 << 7) - 128;
        if (v20 < 0)
        {
          v140 = sub_1958770(v6, v19);
          *v179 = v140;
          *(a1 + 308) = v141;
          if (!v140)
          {
            return 0;
          }
        }

        else
        {
          v18 = v6 + 2;
LABEL_28:
          *v179 = v18;
          *(a1 + 308) = v19;
        }

        goto LABEL_213;
      case 0x31u:
        if (v7 != 136)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x20000000u;
        v84 = v6 + 1;
        v85 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_145;
        }

        v86 = *v84;
        v85 = v85 + (v86 << 7) - 128;
        if (v86 < 0)
        {
          v164 = sub_1958770(v6, v85);
          *v179 = v164;
          *(a1 + 312) = v165;
          if (!v164)
          {
            return 0;
          }
        }

        else
        {
          v84 = v6 + 2;
LABEL_145:
          *v179 = v84;
          *(a1 + 312) = v85;
        }

        goto LABEL_213;
      case 0x32u:
        if (v7 != 144)
        {
          goto LABEL_235;
        }

        *(a1 + 40) |= 0x2000000u;
        v15 = v6 + 1;
        v16 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v15;
        v16 = v16 + (v17 << 7) - 128;
        if (v17 < 0)
        {
          v138 = sub_1958770(v6, v16);
          *v179 = v138;
          *(a1 + 296) = v139;
          if (!v138)
          {
            return 0;
          }
        }

        else
        {
          v15 = v6 + 2;
LABEL_23:
          *v179 = v15;
          *(a1 + 296) = v16;
        }

        goto LABEL_213;
      default:
LABEL_235:
        if (v7)
        {
          v135 = (v7 & 7) == 4;
        }

        else
        {
          v135 = 1;
        }

        if (!v135)
        {
          if (v7 - 7600 > 0x4B7)
          {
            v136 = *(a1 + 8);
            if (v136)
            {
              v137 = (v136 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v177 = v7;
              v178 = sub_11F1920((a1 + 8));
              v7 = v177;
              v137 = v178;
              v6 = *v179;
            }

            v14 = sub_1952690(v7, v137, v6, a3);
          }

          else
          {
            v14 = sub_19525AC((a1 + 16), v7, v6, &off_2772008, (a1 + 8), a3);
          }

LABEL_212:
          *v179 = v14;
          if (!v14)
          {
            return 0;
          }

LABEL_213:
          if (sub_195ADC0(a3, v179, a3[11].u32[1]))
          {
            return *v179;
          }

          continue;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return *v179;
    }
  }
}

char *sub_1470AF0(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 256);
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

  if ((v5 & 0x40000000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 316);
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

  if (v5 < 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 320);
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

  if (*(a1 + 44))
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 324);
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

  v24 = *(a1 + 40);
  if ((v24 & 0x800) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v26 = *(a1 + 260);
    *v19 = 40;
    v19[1] = v26;
    if (v26 > 0x7F)
    {
      v19[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v19[2] = v26 >> 7;
      v25 = v19 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v25 - 1) = v19 | 0x80;
          LODWORD(v19) = v27 >> 7;
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = v19 + 2;
    }
  }

  else
  {
    v25 = v19;
  }

  if ((v24 & 0x1000) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v30 = *(a1 + 264);
    *v25 = 48;
    v25[1] = v30;
    if (v30 > 0x7F)
    {
      v25[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v25[2] = v30 >> 7;
      v29 = v25 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v25) = v25[2];
        do
        {
          *(v29 - 1) = v25 | 0x80;
          LODWORD(v25) = v31 >> 7;
          *v29++ = v31 >> 7;
          v32 = v31 >> 14;
          v31 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v29 = v25 + 2;
    }
  }

  else
  {
    v29 = v25;
  }

  if ((v24 & 0x2000) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v34 = *(a1 + 268);
    *v29 = 56;
    v29[1] = v34;
    if (v34 > 0x7F)
    {
      v29[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v29[2] = v34 >> 7;
      v33 = v29 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v36) = v29[2];
        do
        {
          *(v33 - 1) = v36 | 0x80;
          v36 = v35 >> 7;
          *v33++ = v35 >> 7;
          v37 = v35 >> 14;
          v35 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v33 = v29 + 2;
    }
  }

  else
  {
    v33 = v29;
  }

  v38 = *(a1 + 64);
  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v40 = *(*(a1 + 72) + 8 * i + 8);
      *v33 = 66;
      v41 = *(v40 + 40);
      v33[1] = v41;
      if (v41 > 0x7F)
      {
        v42 = sub_19575D0(v41, v33 + 1);
      }

      else
      {
        v42 = v33 + 2;
      }

      v33 = sub_16E92C0(v40, v42, a3);
    }
  }

  if ((v24 & 0x4000) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v44 = *(a1 + 272);
    *v33 = 80;
    v33[1] = v44;
    if (v44 > 0x7F)
    {
      v33[1] = v44 | 0x80;
      v45 = v44 >> 7;
      v33[2] = v44 >> 7;
      v43 = v33 + 3;
      if (v44 >= 0x4000)
      {
        LOBYTE(v33) = v33[2];
        do
        {
          *(v43 - 1) = v33 | 0x80;
          v33 = (v45 >> 7);
          *v43++ = v45 >> 7;
          v46 = v45 >> 14;
          v45 >>= 7;
        }

        while (v46);
      }
    }

    else
    {
      v43 = v33 + 2;
    }
  }

  else
  {
    v43 = v33;
  }

  v47 = *(a1 + 88);
  if (v47)
  {
    for (j = 0; j != v47; ++j)
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v49 = *(*(a1 + 96) + 8 * j + 8);
      *v43 = 90;
      v50 = *(v49 + 20);
      v43[1] = v50;
      if (v50 > 0x7F)
      {
        v51 = sub_19575D0(v50, v43 + 1);
      }

      else
      {
        v51 = v43 + 2;
      }

      v43 = sub_1450DAC(v49, v51, a3);
    }
  }

  v52 = *(a1 + 112);
  if (v52)
  {
    for (k = 0; k != v52; ++k)
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v54 = *(*(a1 + 120) + 8 * k + 8);
      *v43 = 98;
      v55 = *(v54 + 44);
      v43[1] = v55;
      if (v55 > 0x7F)
      {
        v56 = sub_19575D0(v55, v43 + 1);
      }

      else
      {
        v56 = v43 + 2;
      }

      v43 = sub_16E9CA0(v54, v56, a3);
    }
  }

  if ((v24 & 0x8000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v57 = *(a1 + 276);
    *v43 = 109;
    *(v43 + 1) = v57;
    v43 += 5;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v59 = *(a1 + 328);
    *v43 = 384;
    v43[2] = v59;
    if (v59 > 0x7F)
    {
      v43[2] = v59 | 0x80;
      v60 = v59 >> 7;
      v43[3] = v59 >> 7;
      v58 = v43 + 4;
      if (v59 >= 0x4000)
      {
        LOBYTE(v43) = v43[3];
        do
        {
          *(v58 - 1) = v43 | 0x80;
          v43 = (v60 >> 7);
          *v58++ = v60 >> 7;
          v61 = v60 >> 14;
          v60 >>= 7;
        }

        while (v61);
      }
    }

    else
    {
      v58 = v43 + 3;
    }
  }

  else
  {
    v58 = v43;
  }

  v62 = *(a1 + 40);
  if ((v62 & 0x10000) != 0)
  {
    if (*a3 <= v58)
    {
      v58 = sub_225EB68(a3, v58);
    }

    v64 = *(a1 + 280);
    *v58 = 392;
    v58[2] = v64;
    if (v64 > 0x7F)
    {
      v58[2] = v64 | 0x80;
      v65 = v64 >> 7;
      v58[3] = v64 >> 7;
      v63 = v58 + 4;
      if (v64 >= 0x4000)
      {
        LOBYTE(v58) = v58[3];
        do
        {
          *(v63 - 1) = v58 | 0x80;
          v58 = (v65 >> 7);
          *v63++ = v65 >> 7;
          v66 = v65 >> 14;
          v65 >>= 7;
        }

        while (v66);
      }
    }

    else
    {
      v63 = v58 + 3;
    }
  }

  else
  {
    v63 = v58;
  }

  if ((v62 & 0x20000) != 0)
  {
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v68 = *(a1 + 284);
    *v63 = 400;
    v63[2] = v68;
    if (v68 > 0x7F)
    {
      v63[2] = v68 | 0x80;
      v69 = v68 >> 7;
      v63[3] = v68 >> 7;
      v67 = v63 + 4;
      if (v68 >= 0x4000)
      {
        LOBYTE(v70) = v63[3];
        do
        {
          *(v67 - 1) = v70 | 0x80;
          v70 = v69 >> 7;
          *v67++ = v69 >> 7;
          v71 = v69 >> 14;
          v69 >>= 7;
        }

        while (v71);
      }
    }

    else
    {
      v67 = v63 + 3;
    }
  }

  else
  {
    v67 = v63;
  }

  if ((v62 & 4) != 0)
  {
    if (*a3 <= v67)
    {
      v67 = sub_225EB68(a3, v67);
    }

    v72 = *(a1 + 192);
    *v67 = 410;
    v73 = *(v72 + 44);
    v67[2] = v73;
    if (v73 > 0x7F)
    {
      v74 = sub_19575D0(v73, v67 + 2);
    }

    else
    {
      v74 = v67 + 3;
    }

    v67 = sub_16E9CA0(v72, v74, a3);
    if ((v62 & 0x40000) == 0)
    {
LABEL_130:
      if ((v62 & 0x80000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_148;
    }
  }

  else if ((v62 & 0x40000) == 0)
  {
    goto LABEL_130;
  }

  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v75 = *(a1 + 288);
  *v67 = 416;
  v67[2] = v75;
  v67 += 3;
  if ((v62 & 0x80000) == 0)
  {
LABEL_131:
    if ((v62 & 0x100000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_151;
  }

LABEL_148:
  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v76 = *(a1 + 289);
  *v67 = 424;
  v67[2] = v76;
  v67 += 3;
  if ((v62 & 0x100000) == 0)
  {
LABEL_132:
    if ((v62 & 0x200000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_154;
  }

LABEL_151:
  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v77 = *(a1 + 290);
  *v67 = 432;
  v67[2] = v77;
  v67 += 3;
  if ((v62 & 0x200000) == 0)
  {
LABEL_133:
    if ((v62 & 1) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_157;
  }

LABEL_154:
  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v78 = *(a1 + 291);
  *v67 = 448;
  v67[2] = v78;
  v67 += 3;
  if ((v62 & 1) == 0)
  {
LABEL_134:
    if ((v62 & 2) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_158;
  }

LABEL_157:
  v67 = sub_128AEEC(a3, 30, (*(a1 + 176) & 0xFFFFFFFFFFFFFFFELL), v67);
  if ((v62 & 2) == 0)
  {
LABEL_135:
    if ((v62 & 8) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_159;
  }

LABEL_158:
  v67 = sub_128AEEC(a3, 31, (*(a1 + 184) & 0xFFFFFFFFFFFFFFFELL), v67);
  if ((v62 & 8) == 0)
  {
LABEL_136:
    if ((v62 & 0x10) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_165;
  }

LABEL_159:
  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v79 = *(a1 + 200);
  *v67 = 642;
  v80 = *(v79 + 60);
  v67[2] = v80;
  if (v80 > 0x7F)
  {
    v81 = sub_19575D0(v80, v67 + 2);
  }

  else
  {
    v81 = v67 + 3;
  }

  v67 = sub_1451354(v79, v81, a3);
  if ((v62 & 0x10) == 0)
  {
LABEL_137:
    if ((v62 & 0x400000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_171;
  }

LABEL_165:
  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v82 = *(a1 + 208);
  *v67 = 650;
  v83 = *(v82 + 44);
  v67[2] = v83;
  if (v83 > 0x7F)
  {
    v84 = sub_19575D0(v83, v67 + 2);
  }

  else
  {
    v84 = v67 + 3;
  }

  v67 = sub_1460F40(v82, v84, a3);
  if ((v62 & 0x400000) != 0)
  {
LABEL_171:
    if (*a3 <= v67)
    {
      v67 = sub_225EB68(a3, v67);
    }

    v85 = *(a1 + 292);
    *v67 = 656;
    v67[2] = v85;
    v67 += 3;
  }

LABEL_174:
  v86 = *(a1 + 136);
  if (v86)
  {
    for (m = 0; m != v86; ++m)
    {
      if (*a3 <= v67)
      {
        v67 = sub_225EB68(a3, v67);
      }

      v88 = *(*(a1 + 144) + 8 * m + 8);
      *v67 = 666;
      v89 = *(v88 + 20);
      v67[2] = v89;
      if (v89 > 0x7F)
      {
        v90 = sub_19575D0(v89, v67 + 2);
      }

      else
      {
        v90 = v67 + 3;
      }

      v67 = sub_1462EF0(v88, v90, a3);
    }
  }

  if ((v62 & 0x800000) != 0)
  {
    if (*a3 <= v67)
    {
      v67 = sub_225EB68(a3, v67);
    }

    v92 = *(a1 + 293);
    *v67 = 672;
    v67[2] = v92;
    v67 += 3;
    if ((v62 & 0x1000000) == 0)
    {
LABEL_184:
      if ((v62 & 0x20) == 0)
      {
        goto LABEL_185;
      }

      goto LABEL_195;
    }
  }

  else if ((v62 & 0x1000000) == 0)
  {
    goto LABEL_184;
  }

  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v93 = *(a1 + 294);
  *v67 = 680;
  v67[2] = v93;
  v67 += 3;
  if ((v62 & 0x20) == 0)
  {
LABEL_185:
    if ((v62 & 0x40) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_201;
  }

LABEL_195:
  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v94 = *(a1 + 216);
  *v67 = 690;
  v95 = *(v94 + 20);
  v67[2] = v95;
  if (v95 > 0x7F)
  {
    v96 = sub_19575D0(v95, v67 + 2);
  }

  else
  {
    v96 = v67 + 3;
  }

  v67 = sub_1477AA4(v94, v96, a3);
  if ((v62 & 0x40) == 0)
  {
LABEL_186:
    if ((v62 & 0x80) == 0)
    {
      goto LABEL_187;
    }

LABEL_207:
    if (*a3 <= v67)
    {
      v67 = sub_225EB68(a3, v67);
    }

    v100 = *(a1 + 232);
    *v67 = 722;
    v101 = *(v100 + 20);
    v67[2] = v101;
    if (v101 > 0x7F)
    {
      v102 = sub_19575D0(v101, v67 + 2);
    }

    else
    {
      v102 = v67 + 3;
    }

    v67 = sub_146E58C(v100, v102, a3);
    if ((v62 & 0x4000000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_213;
  }

LABEL_201:
  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v97 = *(a1 + 224);
  *v67 = 714;
  v98 = *(v97 + 20);
  v67[2] = v98;
  if (v98 > 0x7F)
  {
    v99 = sub_19575D0(v98, v67 + 2);
  }

  else
  {
    v99 = v67 + 3;
  }

  v67 = sub_146E004(v97, v99, a3);
  if ((v62 & 0x80) != 0)
  {
    goto LABEL_207;
  }

LABEL_187:
  if ((v62 & 0x4000000) == 0)
  {
LABEL_188:
    v91 = v67;
    goto LABEL_220;
  }

LABEL_213:
  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v103 = *(a1 + 300);
  *v67 = 728;
  v67[2] = v103;
  if (v103 > 0x7F)
  {
    v67[2] = v103 | 0x80;
    v104 = v103 >> 7;
    v67[3] = v103 >> 7;
    v91 = v67 + 4;
    if (v103 >= 0x4000)
    {
      LOBYTE(v105) = v67[3];
      do
      {
        *(v91 - 1) = v105 | 0x80;
        v105 = v104 >> 7;
        *v91++ = v104 >> 7;
        v106 = v104 >> 14;
        v104 >>= 7;
      }

      while (v106);
    }
  }

  else
  {
    v91 = v67 + 3;
  }

LABEL_220:
  if ((v62 & 0x100) == 0)
  {
    if ((v62 & 0x200) == 0)
    {
      goto LABEL_222;
    }

LABEL_230:
    if (*a3 <= v91)
    {
      v91 = sub_225EB68(a3, v91);
    }

    v111 = *(a1 + 248);
    *v91 = 746;
    v112 = *(v111 + 20);
    v91[2] = v112;
    if (v112 > 0x7F)
    {
      v113 = sub_19575D0(v112, v91 + 2);
    }

    else
    {
      v113 = v91 + 3;
    }

    v91 = sub_146EDB4(v111, v113, a3);
    if ((v62 & 0x8000000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_236;
  }

  if (*a3 <= v91)
  {
    v91 = sub_225EB68(a3, v91);
  }

  v108 = *(a1 + 240);
  *v91 = 738;
  v109 = *(v108 + 44);
  v91[2] = v109;
  if (v109 > 0x7F)
  {
    v110 = sub_19575D0(v109, v91 + 2);
  }

  else
  {
    v110 = v91 + 3;
  }

  v91 = sub_14B6D24(v108, v110, a3);
  if ((v62 & 0x200) != 0)
  {
    goto LABEL_230;
  }

LABEL_222:
  if ((v62 & 0x8000000) == 0)
  {
LABEL_223:
    v107 = v91;
    goto LABEL_243;
  }

LABEL_236:
  if (*a3 <= v91)
  {
    v91 = sub_225EB68(a3, v91);
  }

  v114 = *(a1 + 304);
  *v91 = 752;
  v91[2] = v114;
  if (v114 > 0x7F)
  {
    v91[2] = v114 | 0x80;
    v115 = v114 >> 7;
    v91[3] = v114 >> 7;
    v107 = v91 + 4;
    if (v114 >= 0x4000)
    {
      LOBYTE(v91) = v91[3];
      do
      {
        *(v107 - 1) = v91 | 0x80;
        LODWORD(v91) = v115 >> 7;
        *v107++ = v115 >> 7;
        v116 = v115 >> 14;
        v115 >>= 7;
      }

      while (v116);
    }
  }

  else
  {
    v107 = v91 + 3;
  }

LABEL_243:
  v117 = *(a1 + 160);
  if (v117)
  {
    for (n = 0; n != v117; ++n)
    {
      if (*a3 <= v107)
      {
        v107 = sub_225EB68(a3, v107);
      }

      v119 = *(*(a1 + 168) + 8 * n + 8);
      *v107 = 762;
      v120 = *(v119 + 20);
      v107[2] = v120;
      if (v120 > 0x7F)
      {
        v121 = sub_19575D0(v120, v107 + 2);
      }

      else
      {
        v121 = v107 + 3;
      }

      v107 = sub_146DAF8(v119, v121, a3);
    }
  }

  if ((v62 & 0x10000000) != 0)
  {
    if (*a3 <= v107)
    {
      v107 = sub_225EB68(a3, v107);
    }

    v123 = *(a1 + 308);
    *v107 = 896;
    v107[2] = v123;
    if (v123 > 0x7F)
    {
      v107[2] = v123 | 0x80;
      v124 = v123 >> 7;
      v107[3] = v123 >> 7;
      v122 = v107 + 4;
      if (v123 >= 0x4000)
      {
        LOBYTE(v107) = v107[3];
        do
        {
          *(v122 - 1) = v107 | 0x80;
          LODWORD(v107) = v124 >> 7;
          *v122++ = v124 >> 7;
          v125 = v124 >> 14;
          v124 >>= 7;
        }

        while (v125);
      }
    }

    else
    {
      v122 = v107 + 3;
    }
  }

  else
  {
    v122 = v107;
  }

  if ((v62 & 0x20000000) != 0)
  {
    if (*a3 <= v122)
    {
      v122 = sub_225EB68(a3, v122);
    }

    v127 = *(a1 + 312);
    *v122 = 904;
    v122[2] = v127;
    if (v127 > 0x7F)
    {
      v122[2] = v127 | 0x80;
      v128 = v127 >> 7;
      v122[3] = v127 >> 7;
      v126 = v122 + 4;
      if (v127 >= 0x4000)
      {
        LOBYTE(v129) = v122[3];
        do
        {
          *(v126 - 1) = v129 | 0x80;
          v129 = v128 >> 7;
          *v126++ = v128 >> 7;
          v130 = v128 >> 14;
          v128 >>= 7;
        }

        while (v130);
      }
    }

    else
    {
      v126 = v122 + 3;
    }
  }

  else
  {
    v126 = v122;
  }

  if ((v62 & 0x2000000) != 0)
  {
    if (*a3 <= v126)
    {
      v126 = sub_225EB68(a3, v126);
    }

    v132 = *(a1 + 296);
    *v126 = 912;
    v126[2] = v132;
    if (v132 > 0x7F)
    {
      v126[2] = v132 | 0x80;
      v133 = v132 >> 7;
      v126[3] = v132 >> 7;
      v131 = v126 + 4;
      if (v132 >= 0x4000)
      {
        LOBYTE(v126) = v126[3];
        do
        {
          *(v131 - 1) = v126 | 0x80;
          LODWORD(v126) = v133 >> 7;
          *v131++ = v133 >> 7;
          v134 = v133 >> 14;
          v133 >>= 7;
        }

        while (v134);
      }
    }

    else
    {
      v131 = v126 + 3;
    }
  }

  else
  {
    v131 = v126;
  }

  if (*(a1 + 26))
  {
    v131 = sub_1953428(a1 + 16, 950, 1101, v131, a3);
  }

  v135 = *(a1 + 8);
  if ((v135 & 1) == 0)
  {
    return v131;
  }

  v137 = v135 & 0xFFFFFFFFFFFFFFFCLL;
  v138 = *(v137 + 31);
  if (v138 < 0)
  {
    v139 = *(v137 + 8);
    v138 = *(v137 + 16);
  }

  else
  {
    v139 = (v137 + 8);
  }

  if ((*a3 - v131) >= v138)
  {
    v140 = v138;
    memcpy(v131, v139, v138);
    v131 += v140;
    return v131;
  }

  return sub_1957130(a3, v139, v138, v131);
}

uint64_t sub_1471C3C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  v5 = *(a1 + 72);
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
      v9 = sub_16E9400(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 88);
  v11 = v4 + v10;
  v12 = *(a1 + 96);
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
      v16 = sub_1450FE8(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 112);
  v18 = v11 + v17;
  v19 = *(a1 + 120);
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
      v23 = sub_16E9F88(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 136);
  v25 = v18 + 2 * v24;
  v26 = *(a1 + 144);
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
      v30 = sub_1463930(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 160);
  v32 = v25 + 2 * v31;
  v33 = *(a1 + 168);
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
      v37 = sub_146DC84(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 40);
  if (!v38)
  {
    goto LABEL_41;
  }

  if (v38)
  {
    v59 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
    v60 = *(v59 + 23);
    v61 = *(v59 + 8);
    if ((v60 & 0x80u) == 0)
    {
      v61 = v60;
    }

    v32 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v38 & 2) == 0)
    {
LABEL_34:
      if ((v38 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_108;
    }
  }

  else if ((v38 & 2) == 0)
  {
    goto LABEL_34;
  }

  v62 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v63 = *(v62 + 23);
  v64 = *(v62 + 8);
  if ((v63 & 0x80u) == 0)
  {
    v64 = v63;
  }

  v32 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 4) == 0)
  {
LABEL_35:
    if ((v38 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_109;
  }

LABEL_108:
  v65 = sub_16E9F88(*(a1 + 192));
  v32 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 8) == 0)
  {
LABEL_36:
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_110;
  }

LABEL_109:
  v66 = sub_14515E4(*(a1 + 200));
  v32 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x10) == 0)
  {
LABEL_37:
    if ((v38 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_111:
    v68 = sub_1477C54(*(a1 + 216));
    v32 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v38 & 0x40) == 0)
    {
LABEL_39:
      if ((v38 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    goto LABEL_112;
  }

LABEL_110:
  v67 = sub_14613D4(*(a1 + 208));
  v32 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x20) != 0)
  {
    goto LABEL_111;
  }

LABEL_38:
  if ((v38 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_112:
  v69 = sub_146E160(*(a1 + 224));
  v32 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x80) != 0)
  {
LABEL_40:
    v39 = sub_146E7FC(*(a1 + 232));
    v32 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_41:
  if ((v38 & 0xFF00) == 0)
  {
    goto LABEL_55;
  }

  if ((v38 & 0x100) != 0)
  {
    v70 = sub_14B71B8(*(a1 + 240));
    v32 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v38 & 0x200) == 0)
    {
LABEL_44:
      if ((v38 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_116;
    }
  }

  else if ((v38 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v71 = sub_146EFDC(*(a1 + 248));
  v32 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x400) == 0)
  {
LABEL_45:
    if ((v38 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_117;
  }

LABEL_116:
  v32 += ((9 * (__clz(*(a1 + 256) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v38 & 0x800) == 0)
  {
LABEL_46:
    if ((v38 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_118;
  }

LABEL_117:
  v32 += ((9 * (__clz(*(a1 + 260) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v38 & 0x1000) == 0)
  {
LABEL_47:
    if ((v38 & 0x2000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_119;
  }

LABEL_118:
  v32 += ((9 * (__clz(*(a1 + 264) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v38 & 0x2000) == 0)
  {
LABEL_48:
    if ((v38 & 0x4000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

LABEL_119:
  v72 = *(a1 + 268);
  v73 = ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v72 >= 0)
  {
    v74 = v73;
  }

  else
  {
    v74 = 11;
  }

  v32 += v74;
  if ((v38 & 0x4000) != 0)
  {
LABEL_49:
    v40 = *(a1 + 272);
    v41 = ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v40 >= 0)
    {
      v42 = v41;
    }

    else
    {
      v42 = 11;
    }

    v32 += v42;
  }

LABEL_53:
  if ((v38 & 0x8000) != 0)
  {
    v32 += 5;
  }

LABEL_55:
  if ((v38 & 0xFF0000) != 0)
  {
    if ((v38 & 0x10000) != 0)
    {
      v43 = *(a1 + 280);
      v44 = ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v43 >= 0)
      {
        v45 = v44;
      }

      else
      {
        v45 = 12;
      }

      v32 += v45;
    }

    if ((v38 & 0x20000) != 0)
    {
      v46 = *(a1 + 284);
      v47 = ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v46 >= 0)
      {
        v48 = v47;
      }

      else
      {
        v48 = 12;
      }

      v32 += v48;
    }

    v49 = v32 + 3;
    if ((v38 & 0x40000) == 0)
    {
      v49 = v32;
    }

    if ((v38 & 0x80000) != 0)
    {
      v49 += 3;
    }

    if ((v38 & 0x100000) != 0)
    {
      v49 += 3;
    }

    if ((v38 & 0x200000) != 0)
    {
      v49 += 3;
    }

    if ((v38 & 0x400000) != 0)
    {
      v49 += 3;
    }

    if ((v38 & 0x800000) != 0)
    {
      v32 = v49 + 3;
    }

    else
    {
      v32 = v49;
    }
  }

  if (!HIBYTE(v38))
  {
    goto LABEL_89;
  }

  if ((v38 & 0x1000000) != 0)
  {
    v32 += 3;
  }

  if ((v38 & 0x2000000) != 0)
  {
    v32 += ((9 * (__clz(*(a1 + 296) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v38 & 0x4000000) == 0)
    {
LABEL_84:
      if ((v38 & 0x8000000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_126;
    }
  }

  else if ((v38 & 0x4000000) == 0)
  {
    goto LABEL_84;
  }

  v32 += ((9 * (__clz(*(a1 + 300) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x8000000) == 0)
  {
LABEL_85:
    if ((v38 & 0x10000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_127;
  }

LABEL_126:
  v32 += ((9 * (__clz(*(a1 + 304) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x10000000) == 0)
  {
LABEL_86:
    if ((v38 & 0x20000000) == 0)
    {
      goto LABEL_87;
    }

LABEL_128:
    v32 += ((9 * (__clz(*(a1 + 312) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v38 & 0x40000000) == 0)
    {
LABEL_88:
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_133;
    }

    goto LABEL_129;
  }

LABEL_127:
  v32 += ((9 * (__clz(*(a1 + 308) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x20000000) != 0)
  {
    goto LABEL_128;
  }

LABEL_87:
  if ((v38 & 0x40000000) == 0)
  {
    goto LABEL_88;
  }

LABEL_129:
  v75 = *(a1 + 316);
  v76 = ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v75 >= 0)
  {
    v77 = v76;
  }

  else
  {
    v77 = 11;
  }

  v32 += v77;
  if ((v38 & 0x80000000) != 0)
  {
LABEL_133:
    v78 = *(a1 + 320);
    v79 = ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v78 >= 0)
    {
      v80 = v79;
    }

    else
    {
      v80 = 11;
    }

    v32 += v80;
  }

LABEL_89:
  v50 = *(a1 + 44);
  if ((v50 & 3) != 0)
  {
    if (v50)
    {
      v51 = *(a1 + 324);
      v52 = ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v51 >= 0)
      {
        v53 = v52;
      }

      else
      {
        v53 = 11;
      }

      v32 += v53;
    }

    if ((v50 & 2) != 0)
    {
      v54 = *(a1 + 328);
      v55 = ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v54 >= 0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 12;
      }

      v32 += v56;
    }
  }

  v57 = *(a1 + 8);
  if (v57)
  {
    v81 = v57 & 0xFFFFFFFFFFFFFFFCLL;
    v82 = *((v57 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v82 < 0)
    {
      v82 = *(v81 + 16);
    }

    v32 += v82;
  }

  *(a1 + 48) = v32;
  return v32;
}

void sub_14723F8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 64);
  if (v5)
  {
    v6 = *(a2 + 72);
    v7 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_1566100((a1 + 56), v7, (v6 + 8), v5, **(a1 + 72) - *(a1 + 64));
    v8 = *(a1 + 64) + v5;
    *(a1 + 64) = v8;
    v9 = *(a1 + 72);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 88);
  if (v10)
  {
    v11 = *(a2 + 96);
    v12 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_1565CF0((a1 + 80), v12, (v11 + 8), v10, **(a1 + 96) - *(a1 + 88));
    v13 = *(a1 + 88) + v10;
    *(a1 + 88) = v13;
    v14 = *(a1 + 96);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 112);
  if (v15)
  {
    v16 = *(a2 + 120);
    v17 = sub_19592E8(a1 + 104, *(a2 + 112));
    sub_156618C((a1 + 104), v17, (v16 + 8), v15, **(a1 + 120) - *(a1 + 112));
    v18 = *(a1 + 112) + v15;
    *(a1 + 112) = v18;
    v19 = *(a1 + 120);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 136);
  if (v20)
  {
    v21 = *(a2 + 144);
    v22 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1566218((a1 + 128), v22, (v21 + 8), v20, **(a1 + 144) - *(a1 + 136), v23);
    v24 = *(a1 + 136) + v20;
    *(a1 + 136) = v24;
    v25 = *(a1 + 144);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 160);
  if (v26)
  {
    v27 = *(a2 + 168);
    v28 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_15662A4((a1 + 152), v28, (v27 + 8), v26, **(a1 + 168) - *(a1 + 160));
    v29 = *(a1 + 160) + v26;
    *(a1 + 160) = v29;
    v30 = *(a1 + 168);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 40);
  if (!v31)
  {
    goto LABEL_80;
  }

  if (v31)
  {
    v32 = *(a2 + 176);
    *(a1 + 40) |= 1u;
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    sub_194EA1C((a1 + 176), (v32 & 0xFFFFFFFFFFFFFFFELL), v34);
    if ((v31 & 2) == 0)
    {
LABEL_19:
      if ((v31 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_19;
  }

  v35 = *(a2 + 184);
  *(a1 + 40) |= 2u;
  v36 = *(a1 + 8);
  v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
  if (v36)
  {
    v37 = *v37;
  }

  sub_194EA1C((a1 + 184), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
  if ((v31 & 4) == 0)
  {
LABEL_20:
    if ((v31 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_32:
  *(a1 + 40) |= 4u;
  v38 = *(a1 + 192);
  if (!v38)
  {
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    v38 = sub_16F5CD4(v40);
    *(a1 + 192) = v38;
  }

  if (*(a2 + 192))
  {
    v41 = *(a2 + 192);
  }

  else
  {
    v41 = &off_277E7C0;
  }

  sub_16EA1A8(v38, v41);
  if ((v31 & 8) == 0)
  {
LABEL_21:
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_40:
  *(a1 + 40) |= 8u;
  v42 = *(a1 + 200);
  if (!v42)
  {
    v43 = *(a1 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    sub_14BA684(v44);
    *(a1 + 200) = v42;
  }

  if (*(a2 + 200))
  {
    v45 = *(a2 + 200);
  }

  else
  {
    v45 = &off_2771468;
  }

  sub_14516C4(v42, v45);
  if ((v31 & 0x10) == 0)
  {
LABEL_22:
    if ((v31 & 0x20) == 0)
    {
      goto LABEL_23;
    }

LABEL_56:
    *(a1 + 40) |= 0x20u;
    v50 = *(a1 + 216);
    if (!v50)
    {
      v51 = *(a1 + 8);
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51)
      {
        v52 = *v52;
      }

      v50 = sub_14BC730(v52);
      *(a1 + 216) = v50;
    }

    if (*(a2 + 216))
    {
      v53 = *(a2 + 216);
    }

    else
    {
      v53 = &off_2772248;
    }

    sub_128F8FC(v50, v53);
    if ((v31 & 0x40) == 0)
    {
LABEL_24:
      if ((v31 & 0x80) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_72;
    }

    goto LABEL_64;
  }

LABEL_48:
  *(a1 + 40) |= 0x10u;
  v46 = *(a1 + 208);
  if (!v46)
  {
    v47 = *(a1 + 8);
    v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      v48 = *v48;
    }

    v46 = sub_14BB45C(v48);
    *(a1 + 208) = v46;
  }

  if (*(a2 + 208))
  {
    v49 = *(a2 + 208);
  }

  else
  {
    v49 = &off_2771B40;
  }

  sub_1461614(v46, v49, a3);
  if ((v31 & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_23:
  if ((v31 & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_64:
  *(a1 + 40) |= 0x40u;
  v54 = *(a1 + 224);
  if (!v54)
  {
    v55 = *(a1 + 8);
    v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
    if (v55)
    {
      v56 = *v56;
    }

    v54 = sub_14BC09C(v56);
    *(a1 + 224) = v54;
  }

  if (*(a2 + 224))
  {
    v57 = *(a2 + 224);
  }

  else
  {
    v57 = &off_2771F78;
  }

  sub_146E1DC(v54, v57);
  if ((v31 & 0x80) != 0)
  {
LABEL_72:
    *(a1 + 40) |= 0x80u;
    v58 = *(a1 + 232);
    if (!v58)
    {
      v59 = *(a1 + 8);
      v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
      if (v59)
      {
        v60 = *v60;
      }

      v58 = sub_14BC118(v60);
      *(a1 + 232) = v58;
    }

    if (*(a2 + 232))
    {
      v61 = *(a2 + 232);
    }

    else
    {
      v61 = &off_2771FA0;
    }

    sub_146E8D0(v58, v61);
  }

LABEL_80:
  if ((v31 & 0xFF00) == 0)
  {
    goto LABEL_91;
  }

  if ((v31 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v64 = *(a1 + 240);
    if (!v64)
    {
      v65 = *(a1 + 8);
      v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
      if (v65)
      {
        v66 = *v66;
      }

      v64 = sub_14BF484(v66);
      *(a1 + 240) = v64;
    }

    if (*(a2 + 240))
    {
      v67 = *(a2 + 240);
    }

    else
    {
      v67 = &off_2773AC8;
    }

    sub_144F194(v64, v67);
    if ((v31 & 0x200) == 0)
    {
LABEL_83:
      if ((v31 & 0x400) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_138;
    }
  }

  else if ((v31 & 0x200) == 0)
  {
    goto LABEL_83;
  }

  *(a1 + 40) |= 0x200u;
  v68 = *(a1 + 248);
  if (!v68)
  {
    v69 = *(a1 + 8);
    v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (v69)
    {
      v70 = *v70;
    }

    v68 = sub_14BC198(v70);
    *(a1 + 248) = v68;
  }

  if (*(a2 + 248))
  {
    v71 = *(a2 + 248);
  }

  else
  {
    v71 = &off_2771FD0;
  }

  sub_146F11C(v68, v71);
  if ((v31 & 0x400) == 0)
  {
LABEL_84:
    if ((v31 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(a1 + 256) = *(a2 + 256);
  if ((v31 & 0x800) == 0)
  {
LABEL_85:
    if ((v31 & 0x1000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_140;
  }

LABEL_139:
  *(a1 + 260) = *(a2 + 260);
  if ((v31 & 0x1000) == 0)
  {
LABEL_86:
    if ((v31 & 0x2000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(a1 + 264) = *(a2 + 264);
  if ((v31 & 0x2000) == 0)
  {
LABEL_87:
    if ((v31 & 0x4000) == 0)
    {
      goto LABEL_88;
    }

LABEL_142:
    *(a1 + 272) = *(a2 + 272);
    if ((v31 & 0x8000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_141:
  *(a1 + 268) = *(a2 + 268);
  if ((v31 & 0x4000) != 0)
  {
    goto LABEL_142;
  }

LABEL_88:
  if ((v31 & 0x8000) != 0)
  {
LABEL_89:
    *(a1 + 276) = *(a2 + 276);
  }

LABEL_90:
  *(a1 + 40) |= v31;
LABEL_91:
  if ((v31 & 0xFF0000) == 0)
  {
    goto LABEL_102;
  }

  if ((v31 & 0x10000) != 0)
  {
    *(a1 + 280) = *(a2 + 280);
    if ((v31 & 0x20000) == 0)
    {
LABEL_94:
      if ((v31 & 0x40000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_146;
    }
  }

  else if ((v31 & 0x20000) == 0)
  {
    goto LABEL_94;
  }

  *(a1 + 284) = *(a2 + 284);
  if ((v31 & 0x40000) == 0)
  {
LABEL_95:
    if ((v31 & 0x80000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(a1 + 288) = *(a2 + 288);
  if ((v31 & 0x80000) == 0)
  {
LABEL_96:
    if ((v31 & 0x100000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(a1 + 289) = *(a2 + 289);
  if ((v31 & 0x100000) == 0)
  {
LABEL_97:
    if ((v31 & 0x200000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(a1 + 290) = *(a2 + 290);
  if ((v31 & 0x200000) == 0)
  {
LABEL_98:
    if ((v31 & 0x400000) == 0)
    {
      goto LABEL_99;
    }

LABEL_150:
    *(a1 + 292) = *(a2 + 292);
    if ((v31 & 0x800000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_149:
  *(a1 + 291) = *(a2 + 291);
  if ((v31 & 0x400000) != 0)
  {
    goto LABEL_150;
  }

LABEL_99:
  if ((v31 & 0x800000) != 0)
  {
LABEL_100:
    *(a1 + 293) = *(a2 + 293);
  }

LABEL_101:
  *(a1 + 40) |= v31;
LABEL_102:
  if (!HIBYTE(v31))
  {
    goto LABEL_112;
  }

  if ((v31 & 0x1000000) != 0)
  {
    *(a1 + 294) = *(a2 + 294);
    if ((v31 & 0x2000000) == 0)
    {
LABEL_105:
      if ((v31 & 0x4000000) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_154;
    }
  }

  else if ((v31 & 0x2000000) == 0)
  {
    goto LABEL_105;
  }

  *(a1 + 296) = *(a2 + 296);
  if ((v31 & 0x4000000) == 0)
  {
LABEL_106:
    if ((v31 & 0x8000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_155;
  }

LABEL_154:
  *(a1 + 300) = *(a2 + 300);
  if ((v31 & 0x8000000) == 0)
  {
LABEL_107:
    if ((v31 & 0x10000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(a1 + 304) = *(a2 + 304);
  if ((v31 & 0x10000000) == 0)
  {
LABEL_108:
    if ((v31 & 0x20000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_157;
  }

LABEL_156:
  *(a1 + 308) = *(a2 + 308);
  if ((v31 & 0x20000000) == 0)
  {
LABEL_109:
    if ((v31 & 0x40000000) == 0)
    {
      goto LABEL_110;
    }

LABEL_158:
    *(a1 + 316) = *(a2 + 316);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

LABEL_159:
    *(a1 + 320) = *(a2 + 320);
    goto LABEL_111;
  }

LABEL_157:
  *(a1 + 312) = *(a2 + 312);
  if ((v31 & 0x40000000) != 0)
  {
    goto LABEL_158;
  }

LABEL_110:
  if ((v31 & 0x80000000) != 0)
  {
    goto LABEL_159;
  }

LABEL_111:
  *(a1 + 40) |= v31;
LABEL_112:
  v62 = *(a2 + 44);
  if ((v62 & 3) != 0)
  {
    if (v62)
    {
      *(a1 + 324) = *(a2 + 324);
    }

    if ((v62 & 2) != 0)
    {
      *(a1 + 328) = *(a2 + 328);
    }

    *(a1 + 44) |= v62;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v63 = *(a2 + 8);
  if (v63)
  {

    sub_1957EF4((a1 + 8), (v63 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1472AF8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 64);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_16E9564(*(*(a1 + 72) + 8 * v3));
      v3 = v4;
      if (!v5)
      {
        return 0;
      }
    }

    v6 = *(a1 + 112);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_16EA33C(*(*(a1 + 120) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 136);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_1464954(*(*(a1 + 144) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_141E1DC(a1 + 152);
    if (result)
    {
      v12 = *(a1 + 40);
      if ((v12 & 4) != 0)
      {
        result = sub_16EA33C(*(a1 + 192));
        if (!result)
        {
          return result;
        }

        v12 = *(a1 + 40);
      }

      if ((v12 & 0x10) != 0)
      {
        result = sub_1461910(*(a1 + 208));
        if (!result)
        {
          return result;
        }

        v12 = *(a1 + 40);
      }

      if ((v12 & 0x100) != 0)
      {
        result = sub_144F5D0(*(a1 + 240));
        if (!result)
        {
          return result;
        }

        v12 = *(a1 + 40);
      }

      if ((v12 & 0x200) == 0)
      {
        return 1;
      }

      result = sub_146F27C(*(a1 + 248));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

void *sub_1472C10(void *a1)
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

void sub_1472C84(void *a1)
{
  sub_1472C10(a1);

  operator delete();
}

uint64_t sub_1472CBC(uint64_t a1)
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

char *sub_1472CE0(uint64_t a1, char *a2, int32x2_t *a3)
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
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
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
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_28:
      v25 = v18;
      *(a1 + 24) = v19;
      goto LABEL_29;
    }

    v23 = sub_1958770(v7, v19);
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

char *sub_1472EC4(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1473074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
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

void *sub_1473128(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_156459C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14731A8(void *a1)
{
  sub_1473128(a1);

  operator delete();
}

uint64_t sub_14731E0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1472CBC(v4);
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

char *sub_147325C(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_14BC27C(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_220D9C8(a3, v16, v13);
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

char *sub_14733EC(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1472EC4(v8, v10, a3);
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

uint64_t sub_147352C(uint64_t a1)
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
      v7 = sub_1473074(v6);
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

std::string *sub_14735D4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1566320((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
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

void *sub_14736A8(void *a1)
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

void sub_147371C(void *a1)
{
  sub_14736A8(a1);

  operator delete();
}

uint64_t sub_1473754(uint64_t a1)
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

char *sub_1473778(uint64_t a1, char *a2, int32x2_t *a3)
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
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
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
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_28:
      v25 = v18;
      *(a1 + 24) = v19;
      goto LABEL_29;
    }

    v23 = sub_1958770(v7, v19);
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

char *sub_147395C(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_1473B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
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

void *sub_1473BC0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1564620(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1473C40(void *a1)
{
  sub_1473BC0(a1);

  operator delete();
}

uint64_t sub_1473C78(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1473754(v4);
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

char *sub_1473CF4(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_14BC394(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_220DA58(a3, v16, v13);
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

char *sub_1473E84(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_147395C(v8, v10, a3);
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

uint64_t sub_1473FC4(uint64_t a1)
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
      v7 = sub_1473B0C(v6);
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

std::string *sub_147406C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_156639C((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
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

uint64_t sub_1474140(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E4E40;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void sub_14741B8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14741EC(void *a1)
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

  sub_1474278(a1);
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

void ***sub_1474278(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 56);
  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2772158)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      sub_1477814(v5);
      operator delete();
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      sub_147A07C(v6);
      operator delete();
    }

    result = *(a1 + 80);
    if (result)
    {
      sub_147A07C(result);

      operator delete();
    }
  }

  return result;
}

void sub_1474348(void *a1)
{
  sub_14741EC(a1);

  operator delete();
}

uint64_t sub_1474380(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    result = sub_146F8D4(*(a1 + 64));
    if ((v3 & 8) == 0)
    {
LABEL_6:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  result = sub_147447C(*(a1 + 72));
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result = sub_147447C(*(a1 + 80));
  }

LABEL_8:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 80) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_147447C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
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
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_23:
  result = sub_16E4E44(*(result + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = sub_144E31C(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_144E6A8(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_27:
    result = sub_147984C(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  result = sub_1478E9C(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  result = sub_16ED178(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_1479D14(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    result = sub_144E5CC(*(v1 + 88));
  }

  if ((v2 & 0x600) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 96) = 0;
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

uint64_t sub_1474594(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v37, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v37 + 1);
    v8 = **v37;
    if (**v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v37 + 2);
      }
    }

    *v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 40) |= 1u;
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v22 = (a1 + 48);
          goto LABEL_48;
        }

        goto LABEL_52;
      }

      if (v11 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 40) |= 4u;
          v27 = *(a1 + 64);
          if (!v27)
          {
            v28 = *(a1 + 8);
            v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
            if (v28)
            {
              v29 = *v29;
            }

            v27 = sub_14BC730(v29);
            *(a1 + 64) = v27;
            v7 = *v37;
          }

          v26 = sub_220D6F8(a3, v27, v7);
          goto LABEL_49;
        }

        goto LABEL_52;
      }

      if (v11 != 3 || v8 != 26)
      {
        goto LABEL_52;
      }

      *(a1 + 40) |= 8u;
      v13 = *(a1 + 72);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        sub_14BC9E8(v15);
        v13 = v16;
        *(a1 + 72) = v16;
LABEL_36:
        v7 = *v37;
        goto LABEL_37;
      }

      goto LABEL_37;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_52;
      }

      *(a1 + 40) |= 0x10u;
      v13 = *(a1 + 80);
      if (!v13)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        sub_14BC9E8(v24);
        v13 = v25;
        *(a1 + 80) = v25;
        goto LABEL_36;
      }

LABEL_37:
      v26 = sub_220DAE8(a3, v13, v7);
      goto LABEL_49;
    }

    if (v11 == 5)
    {
      break;
    }

    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_52;
    }

    v5 |= 0x20u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_26:
      *v37 = v18;
      *(a1 + 88) = v17;
      goto LABEL_50;
    }

    v35 = sub_19587DC(v7, v17);
    *v37 = v35;
    *(a1 + 88) = v36;
    if (!v35)
    {
      goto LABEL_66;
    }

LABEL_50:
    if (sub_195ADC0(a3, v37, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 42)
  {
    *(a1 + 40) |= 2u;
    v30 = *(a1 + 8);
    v21 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v21 = *v21;
    }

    v22 = (a1 + 56);
LABEL_48:
    v31 = sub_194DB04(v22, v21);
    v26 = sub_1958890(v31, *v37, a3);
LABEL_49:
    *v37 = v26;
    if (!v26)
    {
      goto LABEL_66;
    }

    goto LABEL_50;
  }

LABEL_52:
  if (v8)
  {
    v32 = (v8 & 7) == 4;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    if (v8 - 80008 > 0x31F)
    {
      v33 = *(a1 + 8);
      if (v33)
      {
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v34 = sub_11F1920((a1 + 8));
        v7 = *v37;
      }

      v26 = sub_1952690(v8, v34, v7, a3);
    }

    else
    {
      v26 = sub_19525AC((a1 + 16), v8, v7, &off_2772158, (a1 + 8), a3);
    }

    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  *v37 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v37;
}

char *sub_14748E0(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 64);
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

  v4 = sub_1477AA4(v8, v10, a3);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 72);
  *v4 = 26;
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

  v4 = sub_147A7BC(v11, v13, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    v4 = sub_128AEEC(a3, 5, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 80);
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

  v4 = sub_147A7BC(v14, v16, a3);
  if ((v6 & 2) != 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    v7 = v4;
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 88);
  *v4 = 48;
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    v4[2] = v17 >> 7;
    v7 = v4 + 3;
    if (v17 >= 0x4000)
    {
      LOBYTE(v19) = v4[2];
      do
      {
        *(v7 - 1) = v19 | 0x80;
        v19 = v18 >> 7;
        *v7++ = v18 >> 7;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_35:
  if (*(a1 + 26))
  {
    v7 = sub_1953428(a1 + 16, 10001, 10101, v7, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v24)
  {
    v26 = v24;
    memcpy(v7, v25, v24);
    v7 += v26;
    return v7;
  }

  return sub_1957130(a3, v25, v24, v7);
}

uint64_t sub_1474BAC(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v4)
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 = v2 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v10 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v10 + 23);
  v12 = *(v10 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v12 = v11;
  }

  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v14 = sub_147ACD8(*(a1 + 72));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_17:
  v13 = sub_1477C54(*(a1 + 64));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_19:
  v15 = sub_147ACD8(*(a1 + 80));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x20) != 0)
  {
LABEL_8:
    v3 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_9:
  v5 = *(a1 + 8);
  if (v5)
  {
    v16 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v3 += v17;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_1474D6C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 40);
  if ((v5 & 0x3F) != 0)
  {
    if (v5)
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
      if ((v5 & 2) == 0)
      {
LABEL_4:
        if ((v5 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_12;
      }
    }

    else if ((v5 & 2) == 0)
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
    if ((v5 & 4) == 0)
    {
LABEL_20:
      if ((v5 & 8) != 0)
      {
        *(a1 + 40) |= 8u;
        v17 = *(a1 + 72);
        if (!v17)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          a3.n128_f64[0] = sub_14BC9E8(v19);
          *(a1 + 72) = v17;
        }

        if (*(a2 + 72))
        {
          v20 = *(a2 + 72);
        }

        else
        {
          v20 = &off_2772310;
        }

        sub_1474F58(v17, v20, a3);
        if ((v5 & 0x10) == 0)
        {
LABEL_22:
          if ((v5 & 0x20) == 0)
          {
LABEL_24:
            *(a1 + 40) |= v5;
            goto LABEL_25;
          }

LABEL_23:
          *(a1 + 88) = *(a2 + 88);
          goto LABEL_24;
        }
      }

      else if ((v5 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      *(a1 + 40) |= 0x10u;
      v21 = *(a1 + 80);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        a3.n128_f64[0] = sub_14BC9E8(v23);
        *(a1 + 80) = v21;
      }

      if (*(a2 + 80))
      {
        v24 = *(a2 + 80);
      }

      else
      {
        v24 = &off_2772310;
      }

      sub_1474F58(v21, v24, a3);
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_12:
    *(a1 + 40) |= 4u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_14BC730(v14);
      *(a1 + 64) = v12;
    }

    if (*(a2 + 64))
    {
      v15 = *(a2 + 64);
    }

    else
    {
      v15 = &off_2772248;
    }

    sub_128F8FC(v12, v15);
    goto LABEL_20;
  }

LABEL_25:
  sub_225EA0C(a1 + 16, a2 + 16);
  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((a1 + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1474F58(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_70;
  }

  if (v5)
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
    if ((v5 & 2) == 0)
    {
LABEL_4:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(a1 + 16) |= 2u;
  v9 = *(a1 + 32);
  if (!v9)
  {
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v9 = sub_16F5828(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_277E5E8;
  }

  sub_16E527C(v9, v12);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_22:
  *(a1 + 16) |= 4u;
  v13 = *(a1 + 40);
  if (!v13)
  {
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_1551A70(v15);
    *(a1 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_2776880;
  }

  sub_144F404(v13, v16);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_30:
  *(a1 + 16) |= 8u;
  v17 = *(a1 + 48);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_14BF484(v19);
    *(a1 + 48) = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_2773AC8;
  }

  sub_144F194(v17, v20);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_38:
  *(a1 + 16) |= 0x10u;
  v21 = *(a1 + 56);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_14BC8C8(v23);
    *(a1 + 56) = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_27722B0;
  }

  sub_1479560(v21, v24);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_46:
  *(a1 + 16) |= 0x20u;
  v25 = *(a1 + 64);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    v25 = sub_14BC948(v27);
    *(a1 + 64) = v25;
  }

  if (*(a2 + 64))
  {
    v28 = *(a2 + 64);
  }

  else
  {
    v28 = &off_27722E0;
  }

  sub_1479C40(v25, v28);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_62;
  }

LABEL_54:
  *(a1 + 16) |= 0x40u;
  v29 = *(a1 + 72);
  if (!v29)
  {
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    sub_16F5E18(v31);
    *(a1 + 72) = v29;
  }

  if (*(a2 + 72))
  {
    v32 = *(a2 + 72);
  }

  else
  {
    v32 = &off_277E918;
  }

  sub_16ED814(v29, v32);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(a1 + 16) |= 0x80u;
    v33 = *(a1 + 80);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_1552410(v35);
      *(a1 + 80) = v33;
    }

    if (*(a2 + 80))
    {
      v36 = *(a2 + 80);
    }

    else
    {
      v36 = &off_2776F48;
    }

    sub_121721C(v33, v36);
  }

LABEL_70:
  if ((v5 & 0x700) == 0)
  {
    goto LABEL_76;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_73;
    }

LABEL_88:
    *(a1 + 96) = *(a2 + 96);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  *(a1 + 16) |= 0x100u;
  v38 = *(a1 + 88);
  if (!v38)
  {
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    sub_14BAE64(v40);
    *(a1 + 88) = v38;
  }

  if (*(a2 + 88))
  {
    v41 = *(a2 + 88);
  }

  else
  {
    v41 = &off_2771738;
  }

  sub_144EF20(v38, v41);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_88;
  }

LABEL_73:
  if ((v5 & 0x400) != 0)
  {
LABEL_74:
    *(a1 + 104) = *(a2 + 104);
  }

LABEL_75:
  *(a1 + 16) |= v5;
LABEL_76:
  v37 = *(a2 + 8);
  if (v37)
  {

    sub_1957EF4((a1 + 8), (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14752B0(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 8) != 0)
    {
      result = sub_1475308(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) == 0)
    {
      return 1;
    }

    result = sub_1475308(*(a1 + 80));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1475308(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16E5370(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_195228C(*(a1 + 40) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_144F5D0(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_16ED98C(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) == 0)
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

uint64_t sub_14753A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E4EC0;
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
    sub_1566418((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32), v8);
    v9 = *(a1 + 32) + v5;
    *(a1 + 32) = v9;
    v10 = *(a1 + 40);
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

  v12 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v12;
  return a1;
}

void sub_147549C(_Unwind_Exception *a1)
{
  sub_15646A4(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14754E4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15646A4(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1475564(void *a1)
{
  sub_14754E4(a1);

  operator delete();
}

uint64_t sub_147559C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1474380(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 0x1F) != 0)
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

char *sub_1475634(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v41, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v41 + 1;
    v8 = *v41;
    if (*v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v41 + 2;
      }
    }

    v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2)
      {
        if (v8 == 18)
        {
          v25 = v7 - 1;
          while (1)
          {
            v26 = v25 + 1;
            v41 = v25 + 1;
            v27 = *(a1 + 40);
            if (v27 && (v28 = *(a1 + 32), v28 < *v27))
            {
              *(a1 + 32) = v28 + 1;
              v29 = *&v27[2 * v28 + 2];
            }

            else
            {
              v30 = sub_14BC4AC(*(a1 + 24));
              v29 = sub_19593CC(a1 + 24, v30);
              v26 = v41;
            }

            v25 = sub_220DB78(a3, v29, v26);
            v41 = v25;
            if (!v25)
            {
              goto LABEL_83;
            }

            if (*a3 <= v25 || *v25 != 18)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v11 == 3 && v8 == 24)
      {
        v14 = v7 + 1;
        v13 = *v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if (v15 < 0)
        {
          v41 = sub_19587DC(v7, v13);
          if (!v41)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_18:
          v41 = v14;
        }

        if (v13 > 0xD)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 0x10u;
          *(a1 + 64) = v13;
        }

        goto LABEL_65;
      }

      goto LABEL_58;
    }

    if (v8 != 8)
    {
      goto LABEL_58;
    }

    v5 |= 1u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_35:
      v41 = v19;
      *(a1 + 48) = v20;
      goto LABEL_65;
    }

    v37 = sub_1958770(v7, v20);
    v41 = v37;
    *(a1 + 48) = v38;
    if (!v37)
    {
      goto LABEL_83;
    }

LABEL_65:
    if (sub_195ADC0(a3, &v41, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_58;
    }

    v23 = v7 + 1;
    v22 = *v7;
    if (v22 < 0)
    {
      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if (v24 < 0)
      {
        v41 = sub_19587DC(v7, v22);
        if (!v41)
        {
          goto LABEL_83;
        }

        goto LABEL_41;
      }

      v23 = v7 + 2;
    }

    v41 = v23;
LABEL_41:
    if (v22 > 2)
    {
      sub_12E8500();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 52) = v22;
    }

    goto LABEL_65;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_58;
    }

    v5 |= 4u;
    v31 = v7 + 1;
    v32 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    v33 = *v31;
    v32 = v32 + (v33 << 7) - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_57:
      v41 = v31;
      *(a1 + 56) = v32;
      goto LABEL_65;
    }

    v39 = sub_1958770(v7, v32);
    v41 = v39;
    *(a1 + 56) = v40;
    if (!v39)
    {
      goto LABEL_83;
    }

    goto LABEL_65;
  }

  if (v11 == 6 && v8 == 48)
  {
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if (v18 < 0)
    {
      v41 = sub_19587DC(v7, v16);
      if (!v41)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v17 = v7 + 2;
LABEL_28:
      v41 = v17;
    }

    if (v16 > 2)
    {
      sub_12E84C8();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 60) = v16;
    }

    goto LABEL_65;
  }

LABEL_58:
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
      v7 = v41;
    }

    v41 = sub_1952690(v8, v36, v7, a3);
    if (!v41)
    {
      goto LABEL_83;
    }

    goto LABEL_65;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_1475A28(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
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

      v6 = sub_14748E0(v13, v15, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 64);
    *v6 = 24;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v16 - 1) = v6 | 0x80;
          v6 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v6 + 2;
    }
  }

  else
  {
    v16 = v6;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 52);
    *v16 = 32;
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 56);
    *v20 = 40;
    v20[1] = v25;
    if (v25 > 0x7F)
    {
      v20[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v20[2] = v25 >> 7;
      v24 = v20 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v20) = v20[2];
        do
        {
          *(v24 - 1) = v20 | 0x80;
          LODWORD(v20) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v20 + 2;
    }
  }

  else
  {
    v24 = v20;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 60);
    *v24 = 48;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v28;
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

  if ((*a3 - v28) >= v36)
  {
    v38 = v36;
    memcpy(v28, v37, v36);
    v28 += v38;
    return v28;
  }

  return sub_1957130(a3, v37, v36, v28);
}

uint64_t sub_1475E08(uint64_t a1)
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
      v7 = sub_1474BAC(v6);
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
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_30;
  }

  if (v8)
  {
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 52);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v10;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_22:
  v11 = *(a1 + 60);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v12;
  if ((v8 & 0x10) != 0)
  {
LABEL_26:
    v13 = *(a1 + 64);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v14;
  }

LABEL_30:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v2 += v18;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1475FBC(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1566418((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32), v7);
    v8 = *(result + 32) + v4;
    *(result + 32) = v8;
    v9 = *(result + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x1F) != 0)
  {
    if (v10)
    {
      *(result + 48) = *(a2 + 48);
      if ((v10 & 2) == 0)
      {
LABEL_7:
        if ((v10 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(result + 52) = *(a2 + 52);
    if ((v10 & 4) == 0)
    {
LABEL_8:
      if ((v10 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    *(result + 56) = *(a2 + 56);
    if ((v10 & 8) == 0)
    {
LABEL_9:
      if ((v10 & 0x10) == 0)
      {
LABEL_11:
        *(result + 16) |= v10;
        goto LABEL_12;
      }

LABEL_10:
      *(result + 64) = *(a2 + 64);
      goto LABEL_11;
    }

LABEL_19:
    *(result + 60) = *(a2 + 60);
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((result + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_14760E0(uint64_t a1)
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
    v5 = sub_14752B0(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1476148(uint64_t a1)
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

void sub_14761E8(uint64_t a1)
{
  sub_1476148(a1);

  operator delete();
}

uint64_t sub_1476220(uint64_t a1)
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

  if ((v1 & 0x1E) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
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

uint64_t sub_1476270(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_42;
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
        *v38 = v19;
        *(a1 + 36) = v20;
        goto LABEL_50;
      }

      v32 = sub_1958770(v7, v20);
      *v38 = v32;
      *(a1 + 36) = v33;
      if (!v32)
      {
        goto LABEL_64;
      }

      goto LABEL_50;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_42;
      }

      v23 = v7 + 1;
      v22 = *v7;
      if (v22 < 0)
      {
        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = v7 + 2;
          goto LABEL_35;
        }

        *v38 = sub_19587DC(v7, v22);
        if (!*v38)
        {
          goto LABEL_64;
        }
      }

      else
      {
LABEL_35:
        *v38 = v23;
      }

      if (v22 > 6)
      {
        sub_12E8500();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 40) = v22;
      }

      goto LABEL_50;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_42;
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
      *v38 = v12;
      *(a1 + 44) = v13;
      goto LABEL_50;
    }

    v34 = sub_1958770(v7, v13);
    *v38 = v34;
    *(a1 + 44) = v35;
    if (!v34)
    {
      goto LABEL_64;
    }

LABEL_50:
    if (sub_195ADC0(a3, v38, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_42;
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
      *v38 = v16;
      *(a1 + 32) = v17;
      goto LABEL_50;
    }

    v36 = sub_1958770(v7, v17);
    *v38 = v36;
    *(a1 + 32) = v37;
    if (!v36)
    {
      goto LABEL_64;
    }

    goto LABEL_50;
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    v27 = sub_194DB04((a1 + 24), v26);
    v28 = sub_1958890(v27, *v38, a3);
LABEL_49:
    *v38 = v28;
    if (!v28)
    {
      goto LABEL_64;
    }

    goto LABEL_50;
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
      v7 = *v38;
    }

    v28 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  *v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v38;
}

char *sub_1476588(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 36);
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
        LOBYTE(v7) = v7[2];
        do
        {
          *(v12 - 1) = v7 | 0x80;
          LODWORD(v7) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
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

  if ((v6 & 8) != 0)
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
        LOBYTE(v19) = v12[2];
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
      v16 = v12 + 2;
    }
  }

  else
  {
    v16 = v12;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 44);
    *v16 = 40;
    v16[1] = v22;
    if (v22 > 0x7F)
    {
      v16[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[2] = v22 >> 7;
      v21 = v16 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v16) = v16[2];
        do
        {
          *(v21 - 1) = v16 | 0x80;
          LODWORD(v16) = v23 >> 7;
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
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

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v21;
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

  if ((*a3 - v21) >= v28)
  {
    v30 = v28;
    memcpy(v21, v29, v28);
    v21 += v30;
    return v21;
  }

  return sub_1957130(a3, v29, v28, v21);
}

uint64_t sub_1476868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_12:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(a1 + 40);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v9;
  if ((v1 & 0x10) != 0)
  {
LABEL_13:
    v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v6 = *(a1 + 8);
  if (v6)
  {
    v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_14769B0(uint64_t a1, uint64_t a2)
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

        goto LABEL_17;
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

      goto LABEL_18;
    }

LABEL_17:
    *(a1 + 36) = *(a2 + 36);
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
      *(a1 + 44) = *(a2 + 44);
      goto LABEL_8;
    }

LABEL_18:
    *(a1 + 40) = *(a2 + 40);
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

void *sub_1476AB8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1564728(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1476B38(void *a1)
{
  sub_1476AB8(a1);

  operator delete();
}

uint64_t sub_1476B70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1476220(v4);
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

char *sub_1476BEC(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_14BC5AC(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_220DC08(a3, v16, v13);
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

char *sub_1476D7C(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1476588(v8, v10, a3);
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

uint64_t sub_1476EBC(uint64_t a1)
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
      v7 = sub_1476868(v6);
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

void sub_1476F64(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_15664A4((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
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

uint64_t sub_1477038(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E5040;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a2;
  *(a1 + 64) = 0;
  return a1;
}

void sub_14770A8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14770D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E5040;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    v8 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1566530((a1 + 40), v8, (v7 + 8), v6, **(a1 + 56) - *(a1 + 48));
    v9 = *(a1 + 48) + v6;
    *(a1 + 48) = v9;
    v10 = *(a1 + 56);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 64) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  return a1;
}

void sub_14771CC(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1477220(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15647AC(a1 + 5);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14772A8(void *a1)
{
  sub_1477220(a1);

  operator delete();
}

uint64_t sub_14772E0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 56) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1476B70(v5);
      --v3;
    }

    while (v3);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_1477364(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  if ((sub_195ADC0(a3, &v20, a3[11].u32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v20 + 1;
      v6 = *v20;
      if (*v20 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v20, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v20 + 2;
        }
      }

      v20 = v5;
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = v11 + 1;
          v20 = v11 + 1;
          v13 = *(a1 + 56);
          if (v13 && (v14 = *(a1 + 48), v14 < *v13))
          {
            *(a1 + 48) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_14BC634(*(a1 + 40));
            v15 = sub_19593CC(a1 + 40, v16);
            v12 = v20;
          }

          v11 = sub_220DC98(a3, v15, v12);
          v20 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_26;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      if (v6 - 800 > 0x18F)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v18 = sub_11F1920((a1 + 8));
          v5 = v20;
        }

        v10 = sub_1952690(v6, v18, v5, a3);
      }

      else
      {
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_2772200, (a1 + 8), a3);
      }

      v20 = v10;
      if (!v10)
      {
        return 0;
      }

LABEL_26:
      if (sub_195ADC0(a3, &v20, a3[11].u32[1]))
      {
        return v20;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v20;
    }

    return 0;
  }

  return v20;
}

char *sub_1477524(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 56) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 40);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_1476D7C(v8, v10, a3);
    }
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 100, 150, a2, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
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

  if ((*a3 - a2) >= v14)
  {
    v16 = v14;
    memcpy(a2, v15, v14);
    a2 += v16;
    return a2;
  }

  return sub_1957130(a3, v15, v14, a2);
}