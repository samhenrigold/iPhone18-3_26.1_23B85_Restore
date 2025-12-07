void *sub_14CD33C(void *a1)
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

  sub_14CD41C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 28);
  sub_1956AFC(a1 + 25);
  sub_12E5CA0(a1 + 22);
  sub_144D2B0(a1 + 19);
  sub_140996C(a1 + 16);
  sub_1956AFC(a1 + 13);
  sub_144D2B0(a1 + 10);
  sub_1449E54(a1 + 7);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_14CD41C(uint64_t a1)
{
  v3 = *(a1 + 248);
  result = (a1 + 248);
  if (v3 != &qword_278E990)
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

  if (*(a1 + 272) != &qword_278E990)
  {
    sub_194E89C((a1 + 272));
  }

  if (a1 != &off_27742B0)
  {
    v4 = *(a1 + 280);
    if (v4)
    {
      sub_1491354(v4);
      operator delete();
    }

    v5 = *(a1 + 288);
    if (v5)
    {
      sub_1548DBC(v5);
      operator delete();
    }

    v6 = *(a1 + 296);
    if (v6)
    {
      sub_16EE080(v6);
      operator delete();
    }

    v7 = *(a1 + 304);
    if (v7)
    {
      sub_1550360(v7);
      operator delete();
    }

    v8 = *(a1 + 312);
    if (v8)
    {
      sub_154CE10(v8);
      operator delete();
    }

    v9 = *(a1 + 320);
    if (v9)
    {
      sub_14AB180(v9);
      operator delete();
    }

    v10 = *(a1 + 328);
    if (v10)
    {
      sub_14AE124(v10);
      operator delete();
    }

    v11 = *(a1 + 336);
    if (v11)
    {
      sub_14AF234(v11);
      operator delete();
    }

    v12 = *(a1 + 344);
    if (v12)
    {
      sub_1494DF0(v12);
      operator delete();
    }

    v13 = *(a1 + 352);
    if (v13)
    {
      sub_153875C(v13);
      operator delete();
    }

    v14 = *(a1 + 360);
    if (v14)
    {
      sub_16E8374(v14);
      operator delete();
    }

    v15 = *(a1 + 368);
    if (v15)
    {
      sub_13F0544(v15);
      operator delete();
    }

    v16 = *(a1 + 376);
    if (v16)
    {
      sub_14AD374(v16);
      operator delete();
    }

    v17 = *(a1 + 384);
    if (v17)
    {
      sub_14754E4(v17);
      operator delete();
    }

    v18 = *(a1 + 392);
    if (v18)
    {
      sub_14B4E48(v18);
      operator delete();
    }

    v19 = *(a1 + 400);
    if (v19)
    {
      sub_16F4BC4(v19);
      operator delete();
    }

    v20 = *(a1 + 408);
    if (v20)
    {
      sub_14D08A0(v20);
      operator delete();
    }

    result = *(a1 + 416);
    if (result)
    {
      sub_1477220(result);

      operator delete();
    }
  }

  return result;
}

void sub_14CD6FC(void *a1)
{
  sub_14CD33C(a1);

  operator delete();
}

uint64_t sub_14CD734(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 72) + 8);
    do
    {
      v4 = *v3++;
      sub_14CC5C8(v4);
      --v2;
    }

    while (v2);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 88);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 96) + 8);
    do
    {
      v7 = *v6++;
      sub_14CC674(v7);
      --v5;
    }

    while (v5);
    *(a1 + 88) = 0;
  }

  sub_12A41D0(a1 + 104);
  v8 = *(a1 + 136);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 144) + 8);
    do
    {
      v10 = *v9++;
      sub_16E48B0(v10);
      --v8;
    }

    while (v8);
    *(a1 + 136) = 0;
  }

  v11 = *(a1 + 160);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 168) + 8);
    do
    {
      v13 = *v12++;
      sub_14CC674(v13);
      --v11;
    }

    while (v11);
    *(a1 + 160) = 0;
  }

  v14 = *(a1 + 184);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 192) + 8);
    do
    {
      v16 = *v15++;
      sub_16EEC04(v16);
      --v14;
    }

    while (v14);
    *(a1 + 184) = 0;
  }

  sub_12A41D0(a1 + 200);
  result = sub_12A41D0(a1 + 224);
  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_31;
  }

  if ((v18 & 1) == 0)
  {
    if ((v18 & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_76:
    v24 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v24 + 23) < 0)
    {
      **v24 = 0;
      *(v24 + 8) = 0;
      if ((v18 & 4) != 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      *v24 = 0;
      *(v24 + 23) = 0;
      if ((v18 & 4) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_25:
    if ((v18 & 8) == 0)
    {
      goto LABEL_26;
    }

LABEL_84:
    v26 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v26 + 23) < 0)
    {
      **v26 = 0;
      *(v26 + 8) = 0;
      if ((v18 & 0x10) != 0)
      {
        goto LABEL_88;
      }
    }

    else
    {
      *v26 = 0;
      *(v26 + 23) = 0;
      if ((v18 & 0x10) != 0)
      {
        goto LABEL_88;
      }
    }

LABEL_27:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_89:
    result = sub_14CC5C8(*(a1 + 288));
    if ((v18 & 0x40) == 0)
    {
LABEL_29:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_90;
  }

  v19 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v19 + 23) < 0)
  {
    **v19 = 0;
    *(v19 + 8) = 0;
    if ((v18 & 2) != 0)
    {
      goto LABEL_76;
    }
  }

  else
  {
    *v19 = 0;
    *(v19 + 23) = 0;
    if ((v18 & 2) != 0)
    {
      goto LABEL_76;
    }
  }

LABEL_24:
  if ((v18 & 4) == 0)
  {
    goto LABEL_25;
  }

LABEL_80:
  v25 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v25 + 23) < 0)
  {
    **v25 = 0;
    *(v25 + 8) = 0;
    if ((v18 & 8) != 0)
    {
      goto LABEL_84;
    }
  }

  else
  {
    *v25 = 0;
    *(v25 + 23) = 0;
    if ((v18 & 8) != 0)
    {
      goto LABEL_84;
    }
  }

LABEL_26:
  if ((v18 & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_88:
  result = sub_1491400(*(a1 + 280));
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_89;
  }

LABEL_28:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_90:
  result = sub_16EE0BC(*(a1 + 296));
  if ((v18 & 0x80) != 0)
  {
LABEL_30:
    result = sub_14C5A04(*(a1 + 304));
  }

LABEL_31:
  if ((v18 & 0xFF00) == 0)
  {
    goto LABEL_41;
  }

  if ((v18 & 0x100) != 0)
  {
    result = sub_14CC674(*(a1 + 312));
    if ((v18 & 0x200) == 0)
    {
LABEL_34:
      if ((v18 & 0x400) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_53;
    }
  }

  else if ((v18 & 0x200) == 0)
  {
    goto LABEL_34;
  }

  result = sub_149200C(*(a1 + 320));
  if ((v18 & 0x400) == 0)
  {
LABEL_35:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = sub_1492094(*(a1 + 328));
  if ((v18 & 0x800) == 0)
  {
LABEL_36:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = sub_1492110(*(a1 + 336));
  if ((v18 & 0x1000) == 0)
  {
LABEL_37:
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = sub_1494E9C(*(a1 + 344));
  if ((v18 & 0x2000) == 0)
  {
LABEL_38:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = sub_14C56B8(*(a1 + 352));
  if ((v18 & 0x4000) == 0)
  {
LABEL_39:
    if ((v18 & 0x8000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_57:
  result = sub_16E48B0(*(a1 + 360));
  if ((v18 & 0x8000) != 0)
  {
LABEL_40:
    result = sub_13F0580(*(a1 + 368));
  }

LABEL_41:
  if ((v18 & 0x3F0000) == 0)
  {
    goto LABEL_67;
  }

  if ((v18 & 0x10000) != 0)
  {
    result = sub_1492188(*(a1 + 376));
    if ((v18 & 0x20000) == 0)
    {
LABEL_44:
      if ((v18 & 0x40000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }
  }

  else if ((v18 & 0x20000) == 0)
  {
    goto LABEL_44;
  }

  result = sub_147559C(*(a1 + 384));
  if ((v18 & 0x40000) == 0)
  {
LABEL_45:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_46;
    }

LABEL_62:
    result = sub_16F4C00(*(a1 + 400));
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_65;
    }

LABEL_63:
    v20 = *(a1 + 408);
    v21 = *(v20 + 8);
    result = v20 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v21)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_65;
  }

LABEL_61:
  result = sub_14B4FA4(*(a1 + 392));
  if ((v18 & 0x80000) != 0)
  {
    goto LABEL_62;
  }

LABEL_46:
  if ((v18 & 0x100000) != 0)
  {
    goto LABEL_63;
  }

LABEL_65:
  if ((v18 & 0x200000) != 0)
  {
    result = sub_14772E0(*(a1 + 416));
  }

LABEL_67:
  if ((v18 & 0xC00000) != 0)
  {
    *(a1 + 428) = 0;
    *(a1 + 424) = 0;
  }

  if (HIBYTE(v18))
  {
    *(a1 + 444) = 0;
    *(a1 + 437) = 0;
    *(a1 + 429) = 0;
  }

  v23 = *(a1 + 8);
  v22 = a1 + 8;
  *(v22 + 440) = 800000;
  *(v22 + 32) = 0;
  if (v23)
  {

    return sub_1957EA8(v22);
  }

  return result;
}

uint64_t sub_14CDAC4(uint64_t a1)
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

char *sub_14CDB84(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x400000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 424);
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

    v11 = *(a1 + 280);
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

    v6 = sub_149160C(v11, v13, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 288);
    *v6 = 26;
    v15 = *(v14 + 44);
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v6 + 1);
    }

    else
    {
      v16 = v6 + 2;
    }

    v6 = sub_1549158(v14, v16, a3);
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v19 = *(*(a1 + 72) + 8 * i + 8);
      *v6 = 34;
      v20 = *(v19 + 44);
      v6[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v6 + 1);
      }

      else
      {
        v21 = v6 + 2;
      }

      v6 = sub_1549158(v19, v21, a3);
    }
  }

  if ((v5 & 0x800000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 428);
    *v6 = 40;
    v6[1] = v22;
    v6 += 2;
    if ((v5 & 0x1000000) == 0)
    {
LABEL_34:
      if ((v5 & 0x2000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 0x1000000) == 0)
  {
    goto LABEL_34;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v23 = *(a1 + 429);
  *v6 = 48;
  v6[1] = v23;
  v6 += 2;
  if ((v5 & 0x2000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v24 = *(a1 + 430);
  *v6 = 56;
  v6[1] = v24;
  v6 += 2;
  if ((v5 & 0x40) != 0)
  {
LABEL_46:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v25 = *(a1 + 296);
    *v6 = 66;
    v26 = *(v25 + 20);
    v6[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v6 + 1);
    }

    else
    {
      v27 = v6 + 2;
    }

    v6 = sub_16EE2C4(v25, v27, a3);
  }

LABEL_52:
  if (*(a1 + 44))
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v29 = *(a1 + 448);
    *v6 = 72;
    v6[1] = v29;
    if (v29 > 0x7F)
    {
      v6[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v6[2] = v29 >> 7;
      v28 = v6 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v28 - 1) = v6 | 0x80;
          LODWORD(v6) = v30 >> 7;
          *v28++ = v30 >> 7;
          v31 = v30 >> 14;
          v30 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v28 = v6 + 2;
    }
  }

  else
  {
    v28 = v6;
  }

  v32 = *(a1 + 40);
  if ((v32 & 0x80) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v33 = *(a1 + 304);
    *v28 = 82;
    v34 = *(v33 + 64);
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v35 = sub_19575D0(v34, v28 + 1);
    }

    else
    {
      v35 = v28 + 2;
    }

    v28 = sub_15506E0(v33, v35, a3);
  }

  if ((v32 & 0x100) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v36 = *(a1 + 312);
    *v28 = 90;
    v37 = *(v36 + 20);
    v28[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v28 + 1);
    }

    else
    {
      v38 = v28 + 2;
    }

    v28 = sub_154D580(v36, v38, a3);
  }

  v39 = *(a1 + 88);
  if (v39)
  {
    for (j = 0; j != v39; ++j)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v41 = *(*(a1 + 96) + 8 * j + 8);
      *v28 = 98;
      v42 = *(v41 + 20);
      v28[1] = v42;
      if (v42 > 0x7F)
      {
        v43 = sub_19575D0(v42, v28 + 1);
      }

      else
      {
        v43 = v28 + 2;
      }

      v28 = sub_154D580(v41, v43, a3);
    }
  }

  if ((v32 & 0x200) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v51 = *(a1 + 320);
    *v28 = 106;
    v52 = *(v51 + 20);
    v28[1] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v28 + 1);
    }

    else
    {
      v53 = v28 + 2;
    }

    v28 = sub_14AB638(v51, v53, a3);
    if ((v32 & 0x400) == 0)
    {
LABEL_85:
      if ((v32 & 0x800) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_136;
    }
  }

  else if ((v32 & 0x400) == 0)
  {
    goto LABEL_85;
  }

  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v57 = *(a1 + 328);
  *v28 = 114;
  v58 = *(v57 + 44);
  v28[1] = v58;
  if (v58 > 0x7F)
  {
    v59 = sub_19575D0(v58, v28 + 1);
  }

  else
  {
    v59 = v28 + 2;
  }

  v28 = sub_14AE67C(v57, v59, a3);
  if ((v32 & 0x800) == 0)
  {
LABEL_86:
    if ((v32 & 0x4000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_148;
  }

LABEL_136:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v63 = *(a1 + 336);
  *v28 = 122;
  v64 = *(v63 + 20);
  v28[1] = v64;
  if (v64 > 0x7F)
  {
    v65 = sub_19575D0(v64, v28 + 1);
  }

  else
  {
    v65 = v28 + 2;
  }

  v28 = sub_14AF5E4(v63, v65, a3);
  if ((v32 & 0x4000000) == 0)
  {
LABEL_87:
    if ((v32 & 0x1000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_151;
  }

LABEL_148:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v69 = *(a1 + 431);
  *v28 = 384;
  v28[2] = v69;
  v28 += 3;
  if ((v32 & 0x1000) == 0)
  {
LABEL_88:
    if ((v32 & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_174;
  }

LABEL_151:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v70 = *(a1 + 344);
  *v28 = 402;
  v71 = *(v70 + 20);
  v28[2] = v71;
  if (v71 > 0x7F)
  {
    v72 = sub_19575D0(v71, v28 + 2);
  }

  else
  {
    v72 = v28 + 3;
  }

  v28 = sub_1495324(v70, v72, a3);
  if ((v32 & 1) == 0)
  {
LABEL_89:
    if ((v32 & 2) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_174:
  v28 = sub_128AEEC(a3, 19, (*(a1 + 248) & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v32 & 2) != 0)
  {
LABEL_90:
    v28 = sub_128AEEC(a3, 20, (*(a1 + 256) & 0xFFFFFFFFFFFFFFFELL), v28);
  }

LABEL_91:
  v44 = *(a1 + 112);
  if (v44 >= 1)
  {
    v45 = 8;
    do
    {
      v28 = sub_1355F54(a3, 21, *(*(a1 + 120) + v45), v28);
      v45 += 8;
      --v44;
    }

    while (v44);
  }

  v46 = *(a1 + 136);
  if (v46)
  {
    for (k = 0; k != v46; ++k)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v48 = *(*(a1 + 144) + 8 * k + 8);
      *v28 = 434;
      v49 = *(v48 + 44);
      v28[2] = v49;
      if (v49 > 0x7F)
      {
        v50 = sub_19575D0(v49, v28 + 2);
      }

      else
      {
        v50 = v28 + 3;
      }

      v28 = sub_16E886C(v48, v50, a3);
    }
  }

  if ((v32 & 0x2000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v54 = *(a1 + 352);
    *v28 = 442;
    v55 = *(v54 + 24);
    v28[2] = v55;
    if (v55 > 0x7F)
    {
      v56 = sub_19575D0(v55, v28 + 2);
    }

    else
    {
      v56 = v28 + 3;
    }

    v28 = sub_1538BB4(v54, v56, a3);
    if ((v32 & 0x4000) == 0)
    {
LABEL_104:
      if ((v32 & 0x8000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_142;
    }
  }

  else if ((v32 & 0x4000) == 0)
  {
    goto LABEL_104;
  }

  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v60 = *(a1 + 360);
  *v28 = 450;
  v61 = *(v60 + 44);
  v28[2] = v61;
  if (v61 > 0x7F)
  {
    v62 = sub_19575D0(v61, v28 + 2);
  }

  else
  {
    v62 = v28 + 3;
  }

  v28 = sub_16E886C(v60, v62, a3);
  if ((v32 & 0x8000) == 0)
  {
LABEL_105:
    if ((v32 & 0x10000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_157;
  }

LABEL_142:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v66 = *(a1 + 368);
  *v28 = 458;
  v67 = *(v66 + 44);
  v28[2] = v67;
  if (v67 > 0x7F)
  {
    v68 = sub_19575D0(v67, v28 + 2);
  }

  else
  {
    v68 = v28 + 3;
  }

  v28 = sub_13F0804(v66, v68, a3);
  if ((v32 & 0x10000000) == 0)
  {
LABEL_106:
    if ((v32 & 0x20000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_160;
  }

LABEL_157:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v73 = *(a1 + 440);
  *v28 = 464;
  v28[2] = v73;
  v28 += 3;
  if ((v32 & 0x20000000) == 0)
  {
LABEL_107:
    if ((v32 & 4) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_163;
  }

LABEL_160:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v74 = *(a1 + 441);
  *v28 = 472;
  v28[2] = v74;
  v28 += 3;
  if ((v32 & 4) == 0)
  {
LABEL_108:
    if ((v32 & 8) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_164;
  }

LABEL_163:
  v28 = sub_128AEEC(a3, 28, (*(a1 + 264) & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v32 & 8) == 0)
  {
LABEL_109:
    if ((v32 & 0x8000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_165;
  }

LABEL_164:
  v28 = sub_128AEEC(a3, 29, (*(a1 + 272) & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v32 & 0x8000000) == 0)
  {
LABEL_110:
    if ((v32 & 0x10000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_168;
  }

LABEL_165:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v75 = *(a1 + 432);
  *v28 = 497;
  *(v28 + 2) = v75;
  v28 += 10;
  if ((v32 & 0x10000) == 0)
  {
LABEL_111:
    if ((v32 & 0x20000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_178;
  }

LABEL_168:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v76 = *(a1 + 376);
  *v28 = 506;
  v77 = *(v76 + 20);
  v28[2] = v77;
  if (v77 > 0x7F)
  {
    v78 = sub_19575D0(v77, v28 + 2);
  }

  else
  {
    v78 = v28 + 3;
  }

  v28 = sub_14AD624(v76, v78, a3);
  if ((v32 & 0x20000) == 0)
  {
LABEL_112:
    if ((v32 & 0x40000000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_184;
  }

LABEL_178:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v79 = *(a1 + 384);
  *v28 = 642;
  v80 = *(v79 + 20);
  v28[2] = v80;
  if (v80 > 0x7F)
  {
    v81 = sub_19575D0(v80, v28 + 2);
  }

  else
  {
    v81 = v28 + 3;
  }

  v28 = sub_1475A28(v79, v81, a3);
  if ((v32 & 0x40000000) != 0)
  {
LABEL_184:
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v82 = *(a1 + 442);
    *v28 = 648;
    v28[2] = v82;
    v28 += 3;
  }

LABEL_187:
  v83 = *(a1 + 160);
  if (v83)
  {
    for (m = 0; m != v83; ++m)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v85 = *(*(a1 + 168) + 8 * m + 8);
      *v28 = 658;
      v86 = *(v85 + 20);
      v28[2] = v86;
      if (v86 > 0x7F)
      {
        v87 = sub_19575D0(v86, v28 + 2);
      }

      else
      {
        v87 = v28 + 3;
      }

      v28 = sub_154D580(v85, v87, a3);
    }
  }

  if ((v32 & 0x40000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v88 = *(a1 + 392);
    *v28 = 666;
    v89 = *(v88 + 20);
    v28[2] = v89;
    if (v89 > 0x7F)
    {
      v90 = sub_19575D0(v89, v28 + 2);
    }

    else
    {
      v90 = v28 + 3;
    }

    v28 = sub_14B56C0(v88, v90, a3);
    if ((v32 & 0x80000) == 0)
    {
LABEL_197:
      if ((v32 & 0x100000) == 0)
      {
        goto LABEL_198;
      }

      goto LABEL_212;
    }
  }

  else if ((v32 & 0x80000) == 0)
  {
    goto LABEL_197;
  }

  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v91 = *(a1 + 400);
  *v28 = 674;
  v92 = *(v91 + 20);
  v28[2] = v92;
  if (v92 > 0x7F)
  {
    v93 = sub_19575D0(v92, v28 + 2);
  }

  else
  {
    v93 = v28 + 3;
  }

  v28 = sub_16F4F90(v91, v93, a3);
  if ((v32 & 0x100000) == 0)
  {
LABEL_198:
    if ((v32 & 0x200000) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_218;
  }

LABEL_212:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v94 = *(a1 + 408);
  *v28 = 682;
  v95 = *(v94 + 20);
  v28[2] = v95;
  if (v95 > 0x7F)
  {
    v96 = sub_19575D0(v95, v28 + 2);
  }

  else
  {
    v96 = v28 + 3;
  }

  v28 = sub_14D0AB4(v94, v96, a3);
  if ((v32 & 0x200000) != 0)
  {
LABEL_218:
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v97 = *(a1 + 416);
    *v28 = 690;
    v98 = *(v97 + 64);
    v28[2] = v98;
    if (v98 > 0x7F)
    {
      v99 = sub_19575D0(v98, v28 + 2);
    }

    else
    {
      v99 = v28 + 3;
    }

    v28 = sub_1477524(v97, v99, a3);
  }

LABEL_224:
  v100 = *(a1 + 184);
  if (v100)
  {
    for (n = 0; n != v100; ++n)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v102 = *(*(a1 + 192) + 8 * n + 8);
      *v28 = 1698;
      v103 = *(v102 + 20);
      v28[2] = v103;
      if (v103 > 0x7F)
      {
        v104 = sub_19575D0(v103, v28 + 2);
      }

      else
      {
        v104 = v28 + 3;
      }

      v28 = sub_16EEE1C(v102, v104, a3);
    }
  }

  v105 = *(a1 + 208);
  if (v105 >= 1)
  {
    v106 = 8;
    do
    {
      v28 = sub_1355F54(a3, 101, *(*(a1 + 216) + v106), v28);
      v106 += 8;
      --v105;
    }

    while (v105);
  }

  v107 = *(a1 + 232);
  if (v107 >= 1)
  {
    v108 = 8;
    do
    {
      v109 = *(*(a1 + 240) + v108);
      v110 = *(v109 + 23);
      if (v110 < 0 && (v110 = v109[1], v110 > 127) || (*a3 - v28 + 13) < v110)
      {
        v28 = sub_1957480(a3, 102, v109, v28);
      }

      else
      {
        *v28 = 1714;
        v28[2] = v110;
        if (*(v109 + 23) < 0)
        {
          v109 = *v109;
        }

        v111 = v28 + 3;
        memcpy(v28 + 3, v109, v110);
        v28 = &v111[v110];
      }

      v108 += 8;
      --v107;
    }

    while (v107);
  }

  if (v32 < 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v113 = *(a1 + 444);
    *v28 = 1720;
    v28[2] = v113;
    if (v113 > 0x7F)
    {
      v28[2] = v113 | 0x80;
      v114 = v113 >> 7;
      v28[3] = v113 >> 7;
      v112 = v28 + 4;
      if (v113 >= 0x4000)
      {
        LOBYTE(v115) = v28[3];
        do
        {
          *(v112 - 1) = v115 | 0x80;
          v115 = v114 >> 7;
          *v112++ = v114 >> 7;
          v116 = v114 >> 14;
          v114 >>= 7;
        }

        while (v116);
      }
    }

    else
    {
      v112 = v28 + 3;
    }
  }

  else
  {
    v112 = v28;
  }

  if (*(a1 + 26))
  {
    v112 = sub_1953428(a1 + 16, 1000, 1201, v112, a3);
  }

  v117 = *(a1 + 8);
  if ((v117 & 1) == 0)
  {
    return v112;
  }

  v119 = v117 & 0xFFFFFFFFFFFFFFFCLL;
  v120 = *(v119 + 31);
  if (v120 < 0)
  {
    v121 = *(v119 + 8);
    v120 = *(v119 + 16);
  }

  else
  {
    v121 = (v119 + 8);
  }

  if ((*a3 - v112) >= v120)
  {
    v122 = v120;
    memcpy(v112, v121, v120);
    v112 += v122;
    return v112;
  }

  return sub_1957130(a3, v121, v120, v112);
}

uint64_t sub_14CEB30(uint64_t a1)
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
      v9 = sub_1549388(v8);
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
      v16 = sub_154DABC(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 112);
  v18 = v11 + 2 * v17;
  if (v17 >= 1)
  {
    v19 = (*(a1 + 120) + 8);
    do
    {
      v20 = *v19++;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v18 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      --v17;
    }

    while (v17);
  }

  v23 = *(a1 + 136);
  v24 = v18 + 2 * v23;
  v25 = *(a1 + 144);
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
      v29 = sub_16E8DA4(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 160);
  v31 = v24 + 2 * v30;
  v32 = *(a1 + 168);
  if (v32)
  {
    v33 = (v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  if (v30)
  {
    v34 = 8 * v30;
    do
    {
      v35 = *v33++;
      v36 = sub_154DABC(v35);
      v31 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      v34 -= 8;
    }

    while (v34);
  }

  v37 = *(a1 + 184);
  v38 = v31 + 2 * v37;
  v39 = *(a1 + 192);
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
      v43 = sub_16EEF64(v42);
      v38 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      v41 -= 8;
    }

    while (v41);
  }

  v44 = *(a1 + 208);
  v45 = v38 + 2 * v44;
  if (v44 >= 1)
  {
    v46 = (*(a1 + 216) + 8);
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

  v50 = *(a1 + 232);
  v51 = v45 + 2 * v50;
  if (v50 >= 1)
  {
    v52 = (*(a1 + 240) + 8);
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

  v56 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_56;
  }

  if (v56)
  {
    v65 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
    v66 = *(v65 + 23);
    v67 = *(v65 + 8);
    if ((v66 & 0x80u) == 0)
    {
      v67 = v66;
    }

    v51 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v56 & 2) == 0)
    {
LABEL_49:
      if ((v56 & 4) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_103;
    }
  }

  else if ((v56 & 2) == 0)
  {
    goto LABEL_49;
  }

  v68 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
  v69 = *(v68 + 23);
  v70 = *(v68 + 8);
  if ((v69 & 0x80u) == 0)
  {
    v70 = v69;
  }

  v51 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 4) == 0)
  {
LABEL_50:
    if ((v56 & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_106;
  }

LABEL_103:
  v71 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
  v72 = *(v71 + 23);
  v73 = *(v71 + 8);
  if ((v72 & 0x80u) == 0)
  {
    v73 = v72;
  }

  v51 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 8) == 0)
  {
LABEL_51:
    if ((v56 & 0x10) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_109;
  }

LABEL_106:
  v74 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
  v75 = *(v74 + 23);
  v76 = *(v74 + 8);
  if ((v75 & 0x80u) == 0)
  {
    v76 = v75;
  }

  v51 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x10) == 0)
  {
LABEL_52:
    if ((v56 & 0x20) == 0)
    {
      goto LABEL_53;
    }

LABEL_110:
    v78 = sub_1549388(*(a1 + 288));
    v51 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v56 & 0x40) == 0)
    {
LABEL_54:
      if ((v56 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    goto LABEL_111;
  }

LABEL_109:
  v77 = sub_14917A0(*(a1 + 280));
  v51 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v56 & 0x20) != 0)
  {
    goto LABEL_110;
  }

LABEL_53:
  if ((v56 & 0x40) == 0)
  {
    goto LABEL_54;
  }

LABEL_111:
  v79 = sub_16EE474(*(a1 + 296));
  v51 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v56 & 0x80) != 0)
  {
LABEL_55:
    v57 = sub_15508CC(*(a1 + 304));
    v51 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_56:
  if ((v56 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  if ((v56 & 0x100) != 0)
  {
    v80 = sub_154DABC(*(a1 + 312));
    v51 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v56 & 0x200) == 0)
    {
LABEL_59:
      if ((v56 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_115;
    }
  }

  else if ((v56 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v81 = sub_14AB8E8(*(a1 + 320));
  v51 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v56 & 0x400) == 0)
  {
LABEL_60:
    if ((v56 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_116;
  }

LABEL_115:
  v82 = sub_14AE9A0(*(a1 + 328));
  v51 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v56 & 0x800) == 0)
  {
LABEL_61:
    if ((v56 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_117;
  }

LABEL_116:
  v83 = sub_14AF7DC(*(a1 + 336));
  v51 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v56 & 0x1000) == 0)
  {
LABEL_62:
    if ((v56 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_118;
  }

LABEL_117:
  v84 = sub_1495570(*(a1 + 344));
  v51 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x2000) == 0)
  {
LABEL_63:
    if ((v56 & 0x4000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_119;
  }

LABEL_118:
  v85 = sub_153A048(*(a1 + 352));
  v51 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x4000) == 0)
  {
LABEL_64:
    if ((v56 & 0x8000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_119:
  v86 = sub_16E8DA4(*(a1 + 360));
  v51 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x8000) != 0)
  {
LABEL_65:
    v58 = sub_13F09D8(*(a1 + 368));
    v51 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_66:
  if ((v56 & 0xFF0000) == 0)
  {
    goto LABEL_79;
  }

  if ((v56 & 0x10000) != 0)
  {
    v87 = sub_14AD7A0(*(a1 + 376));
    v51 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v56 & 0x20000) == 0)
    {
LABEL_69:
      if ((v56 & 0x40000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_123;
    }
  }

  else if ((v56 & 0x20000) == 0)
  {
    goto LABEL_69;
  }

  v88 = sub_1475E08(*(a1 + 384));
  v51 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x40000) == 0)
  {
LABEL_70:
    if ((v56 & 0x80000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_124;
  }

LABEL_123:
  v89 = sub_14B5BB4(*(a1 + 392));
  v51 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x80000) == 0)
  {
LABEL_71:
    if ((v56 & 0x100000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_125;
  }

LABEL_124:
  v90 = sub_16F5164(*(a1 + 400));
  v51 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x100000) == 0)
  {
LABEL_72:
    if ((v56 & 0x200000) == 0)
    {
      goto LABEL_73;
    }

LABEL_126:
    v92 = sub_1477688(*(a1 + 416));
    v51 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v56 & 0x400000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_78;
  }

LABEL_125:
  v91 = sub_14D0BDC(*(a1 + 408));
  v51 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x200000) != 0)
  {
    goto LABEL_126;
  }

LABEL_73:
  if ((v56 & 0x400000) != 0)
  {
LABEL_74:
    v59 = *(a1 + 424);
    v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v59 >= 0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 11;
    }

    v51 += v61;
  }

LABEL_78:
  v51 += (v56 >> 22) & 2;
LABEL_79:
  if (BYTE3(v56))
  {
    v62 = v51 + (BYTE3(v56) & 2) + ((v56 >> 23) & 2);
    if ((v56 & 0x4000000) != 0)
    {
      v62 += 3;
    }

    if ((v56 & 0x8000000) != 0)
    {
      v62 += 10;
    }

    if ((v56 & 0x10000000) != 0)
    {
      v62 += 3;
    }

    if ((v56 & 0x20000000) != 0)
    {
      v62 += 3;
    }

    if ((v56 & 0x40000000) != 0)
    {
      v51 = v62 + 3;
    }

    else
    {
      v51 = v62;
    }

    if ((v56 & 0x80000000) != 0)
    {
      v51 += ((9 * (__clz(*(a1 + 444) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if (*(a1 + 44))
  {
    v51 += ((9 * (__clz(*(a1 + 448) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v63 = *(a1 + 8);
  if (v63)
  {
    v93 = v63 & 0xFFFFFFFFFFFFFFFCLL;
    v94 = *((v63 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v94 < 0)
    {
      v94 = *(v93 + 16);
    }

    v51 += v94;
  }

  *(a1 + 48) = v51;
  return v51;
}

void sub_14CF3F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    v5 = *(a2 + 72);
    v6 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_1449ED8((a1 + 56), v6, (v5 + 8), v4, **(a1 + 72) - *(a1 + 64));
    v7 = *(a1 + 64) + v4;
    *(a1 + 64) = v7;
    v8 = *(a1 + 72);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 88);
  if (v9)
  {
    v10 = *(a2 + 96);
    v11 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_144D55C((a1 + 80), v11, (v10 + 8), v9, **(a1 + 96) - *(a1 + 88));
    v12 = *(a1 + 88) + v9;
    *(a1 + 88) = v12;
    v13 = *(a1 + 96);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 112);
  if (v14)
  {
    v15 = *(a2 + 120);
    v16 = sub_19592E8(a1 + 104, *(a2 + 112));
    sub_1201B48((a1 + 104), v16, (v15 + 8), v14, **(a1 + 120) - *(a1 + 112));
    v17 = *(a1 + 112) + v14;
    *(a1 + 112) = v17;
    v18 = *(a1 + 120);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 136);
  if (v19)
  {
    v20 = *(a2 + 144);
    v21 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1409AF8((a1 + 128), v21, (v20 + 8), v19, **(a1 + 144) - *(a1 + 136));
    v22 = *(a1 + 136) + v19;
    *(a1 + 136) = v22;
    v23 = *(a1 + 144);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 160);
  if (v24)
  {
    v25 = *(a2 + 168);
    v26 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_144D55C((a1 + 152), v26, (v25 + 8), v24, **(a1 + 168) - *(a1 + 160));
    v27 = *(a1 + 160) + v24;
    *(a1 + 160) = v27;
    v28 = *(a1 + 168);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 184);
  if (v29)
  {
    v30 = *(a2 + 192);
    v31 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_12E5E34((a1 + 176), v31, (v30 + 8), v29, **(a1 + 192) - *(a1 + 184));
    v32 = *(a1 + 184) + v29;
    *(a1 + 184) = v32;
    v33 = *(a1 + 192);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 208);
  if (v34)
  {
    v35 = *(a2 + 216);
    v36 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_1201B48((a1 + 200), v36, (v35 + 8), v34, **(a1 + 216) - *(a1 + 208));
    v37 = *(a1 + 208) + v34;
    *(a1 + 208) = v37;
    v38 = *(a1 + 216);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 232);
  if (v39)
  {
    v40 = *(a2 + 240);
    v41 = sub_19592E8(a1 + 224, *(a2 + 232));
    sub_1201B48((a1 + 224), v41, (v40 + 8), v39, **(a1 + 240) - *(a1 + 232));
    v42 = *(a1 + 232) + v39;
    *(a1 + 232) = v42;
    v43 = *(a1 + 240);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 40);
  if (!v44)
  {
    goto LABEL_79;
  }

  if (v44)
  {
    v45 = *(a2 + 248);
    *(a1 + 40) |= 1u;
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    sub_194EA1C((a1 + 248), (v45 & 0xFFFFFFFFFFFFFFFELL), v47);
    if ((v44 & 2) == 0)
    {
LABEL_28:
      if ((v44 & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_41;
    }
  }

  else if ((v44 & 2) == 0)
  {
    goto LABEL_28;
  }

  v48 = *(a2 + 256);
  *(a1 + 40) |= 2u;
  v49 = *(a1 + 8);
  v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
  if (v49)
  {
    v50 = *v50;
  }

  sub_194EA1C((a1 + 256), (v48 & 0xFFFFFFFFFFFFFFFELL), v50);
  if ((v44 & 4) == 0)
  {
LABEL_29:
    if ((v44 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_41:
  v51 = *(a2 + 264);
  *(a1 + 40) |= 4u;
  v52 = *(a1 + 8);
  v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
  if (v52)
  {
    v53 = *v53;
  }

  sub_194EA1C((a1 + 264), (v51 & 0xFFFFFFFFFFFFFFFELL), v53);
  if ((v44 & 8) == 0)
  {
LABEL_30:
    if ((v44 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

LABEL_44:
  v54 = *(a2 + 272);
  *(a1 + 40) |= 8u;
  v55 = *(a1 + 8);
  v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
  if (v55)
  {
    v56 = *v56;
  }

  sub_194EA1C((a1 + 272), (v54 & 0xFFFFFFFFFFFFFFFELL), v56);
  if ((v44 & 0x10) == 0)
  {
LABEL_31:
    if ((v44 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_55:
    *(a1 + 40) |= 0x20u;
    v61 = *(a1 + 288);
    if (!v61)
    {
      v62 = *(a1 + 8);
      v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
      if (v62)
      {
        v63 = *v63;
      }

      v61 = sub_1552260(v63);
      *(a1 + 288) = v61;
    }

    if (*(a2 + 288))
    {
      v64 = *(a2 + 288);
    }

    else
    {
      v64 = &off_2776E00;
    }

    sub_14CFEBC(v61, v64);
    if ((v44 & 0x40) == 0)
    {
LABEL_33:
      if ((v44 & 0x80) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_71;
    }

    goto LABEL_63;
  }

LABEL_47:
  *(a1 + 40) |= 0x10u;
  v57 = *(a1 + 280);
  if (!v57)
  {
    v58 = *(a1 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    v57 = sub_14BD794(v59);
    *(a1 + 280) = v57;
  }

  if (*(a2 + 280))
  {
    v60 = *(a2 + 280);
  }

  else
  {
    v60 = &off_2772DF8;
  }

  sub_1491830(v57, v60);
  if ((v44 & 0x20) != 0)
  {
    goto LABEL_55;
  }

LABEL_32:
  if ((v44 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_63:
  *(a1 + 40) |= 0x40u;
  v65 = *(a1 + 296);
  if (!v65)
  {
    v66 = *(a1 + 8);
    v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
    if (v66)
    {
      v67 = *v67;
    }

    v65 = sub_16F5F38(v67);
    *(a1 + 296) = v65;
  }

  if (*(a2 + 296))
  {
    v68 = *(a2 + 296);
  }

  else
  {
    v68 = &off_277E980;
  }

  sub_121721C(v65, v68);
  if ((v44 & 0x80) != 0)
  {
LABEL_71:
    *(a1 + 40) |= 0x80u;
    v69 = *(a1 + 304);
    if (!v69)
    {
      v70 = *(a1 + 8);
      v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
      if (v70)
      {
        v71 = *v71;
      }

      v69 = sub_1552788(v71);
      *(a1 + 304) = v69;
    }

    if (*(a2 + 304))
    {
      v72 = *(a2 + 304);
    }

    else
    {
      v72 = &off_27770C8;
    }

    sub_14C99B8(v69, v72);
  }

LABEL_79:
  if ((v44 & 0xFF00) == 0)
  {
    goto LABEL_153;
  }

  if ((v44 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v73 = *(a1 + 312);
    if (!v73)
    {
      v74 = *(a1 + 8);
      v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
      if (v74)
      {
        v75 = *v75;
      }

      sub_1552584(v75);
      *(a1 + 312) = v73;
    }

    if (*(a2 + 312))
    {
      v76 = *(a2 + 312);
    }

    else
    {
      v76 = &off_2776FB8;
    }

    sub_14D0028(v73, v76);
    if ((v44 & 0x200) == 0)
    {
LABEL_82:
      if ((v44 & 0x400) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_105;
    }
  }

  else if ((v44 & 0x200) == 0)
  {
    goto LABEL_82;
  }

  *(a1 + 40) |= 0x200u;
  v77 = *(a1 + 320);
  if (!v77)
  {
    v78 = *(a1 + 8);
    v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
    if (v78)
    {
      v79 = *v79;
    }

    v77 = sub_14BE994(v79);
    *(a1 + 320) = v77;
  }

  if (*(a2 + 320))
  {
    v80 = *(a2 + 320);
  }

  else
  {
    v80 = &off_2773678;
  }

  sub_1494784(v77, v80);
  if ((v44 & 0x400) == 0)
  {
LABEL_83:
    if ((v44 & 0x800) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_113;
  }

LABEL_105:
  *(a1 + 40) |= 0x400u;
  v81 = *(a1 + 328);
  if (!v81)
  {
    v82 = *(a1 + 8);
    v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
    if (v82)
    {
      v83 = *v83;
    }

    v81 = sub_14BED24(v83);
    *(a1 + 328) = v81;
  }

  if (*(a2 + 328))
  {
    v84 = *(a2 + 328);
  }

  else
  {
    v84 = &off_2773798;
  }

  sub_14948DC(v81, v84);
  if ((v44 & 0x800) == 0)
  {
LABEL_84:
    if ((v44 & 0x1000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_121;
  }

LABEL_113:
  *(a1 + 40) |= 0x800u;
  v85 = *(a1 + 336);
  if (!v85)
  {
    v86 = *(a1 + 8);
    v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
    if (v86)
    {
      v87 = *v87;
    }

    sub_14BEDFC(v87);
    *(a1 + 336) = v85;
  }

  if (*(a2 + 336))
  {
    v88 = *(a2 + 336);
  }

  else
  {
    v88 = &off_2773810;
  }

  sub_1494A24(v85, v88);
  if ((v44 & 0x1000) == 0)
  {
LABEL_85:
    if ((v44 & 0x2000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_129;
  }

LABEL_121:
  *(a1 + 40) |= 0x1000u;
  v89 = *(a1 + 344);
  if (!v89)
  {
    v90 = *(a1 + 8);
    v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
    if (v90)
    {
      v91 = *v91;
    }

    v89 = sub_14BD8FC(v91);
    *(a1 + 344) = v89;
  }

  if (*(a2 + 344))
  {
    v92 = *(a2 + 344);
  }

  else
  {
    v92 = &off_2772ED0;
  }

  sub_14955F0(v89, v92);
  if ((v44 & 0x2000) == 0)
  {
LABEL_86:
    if ((v44 & 0x4000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_137;
  }

LABEL_129:
  *(a1 + 40) |= 0x2000u;
  v93 = *(a1 + 352);
  if (!v93)
  {
    v94 = *(a1 + 8);
    v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
    if (v94)
    {
      v95 = *v95;
    }

    sub_155193C(v95);
    *(a1 + 352) = v93;
  }

  if (*(a2 + 352))
  {
    v96 = *(a2 + 352);
  }

  else
  {
    v96 = &off_2776700;
  }

  sub_14C9078(v93, v96);
  if ((v44 & 0x4000) == 0)
  {
LABEL_87:
    if ((v44 & 0x8000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_145;
  }

LABEL_137:
  *(a1 + 40) |= 0x4000u;
  v97 = *(a1 + 360);
  if (!v97)
  {
    v98 = *(a1 + 8);
    v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
    if (v98)
    {
      v99 = *v99;
    }

    v97 = sub_16F5BD8(v99);
    *(a1 + 360) = v97;
  }

  if (*(a2 + 360))
  {
    v100 = *(a2 + 360);
  }

  else
  {
    v100 = &off_277E738;
  }

  sub_16E4964(v97, v100);
  if ((v44 & 0x8000) != 0)
  {
LABEL_145:
    *(a1 + 40) |= 0x8000u;
    v101 = *(a1 + 368);
    if (!v101)
    {
      v102 = *(a1 + 8);
      v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
      if (v102)
      {
        v103 = *v103;
      }

      v101 = sub_13F0FB4(v103);
      *(a1 + 368) = v101;
    }

    if (*(a2 + 368))
    {
      v104 = *(a2 + 368);
    }

    else
    {
      v104 = &off_276F370;
    }

    sub_13F0A84(v101, v104);
  }

LABEL_153:
  if ((v44 & 0xFF0000) == 0)
  {
    goto LABEL_164;
  }

  if ((v44 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v107 = *(a1 + 376);
    if (!v107)
    {
      v108 = *(a1 + 8);
      v109 = (v108 & 0xFFFFFFFFFFFFFFFCLL);
      if (v108)
      {
        v109 = *v109;
      }

      v107 = sub_14BEC30(v109);
      *(a1 + 376) = v107;
    }

    if (*(a2 + 376))
    {
      v110 = *(a2 + 376);
    }

    else
    {
      v110 = &off_2773750;
    }

    sub_1494BAC(v107, v110);
    if ((v44 & 0x20000) == 0)
    {
LABEL_156:
      if ((v44 & 0x40000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_196;
    }
  }

  else if ((v44 & 0x20000) == 0)
  {
    goto LABEL_156;
  }

  *(a1 + 40) |= 0x20000u;
  v111 = *(a1 + 384);
  if (!v111)
  {
    v112 = *(a1 + 8);
    v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
    if (v112)
    {
      v113 = *v113;
    }

    v111 = sub_14BC508(v113);
    *(a1 + 384) = v111;
  }

  if (*(a2 + 384))
  {
    v114 = *(a2 + 384);
  }

  else
  {
    v114 = &off_27721B8;
  }

  sub_1475FBC(v111, v114);
  if ((v44 & 0x40000) == 0)
  {
LABEL_157:
    if ((v44 & 0x80000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_204;
  }

LABEL_196:
  *(a1 + 40) |= 0x40000u;
  v115 = *(a1 + 392);
  if (!v115)
  {
    v116 = *(a1 + 8);
    v117 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
    if (v116)
    {
      v117 = *v117;
    }

    v115 = sub_14BF3C4(v117);
    *(a1 + 392) = v115;
  }

  if (*(a2 + 392))
  {
    v118 = *(a2 + 392);
  }

  else
  {
    v118 = &off_2773A48;
  }

  sub_14B5E78(v115, v118);
  if ((v44 & 0x80000) == 0)
  {
LABEL_158:
    if ((v44 & 0x100000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_212;
  }

LABEL_204:
  *(a1 + 40) |= 0x80000u;
  v119 = *(a1 + 400);
  if (!v119)
  {
    v120 = *(a1 + 8);
    v121 = (v120 & 0xFFFFFFFFFFFFFFFCLL);
    if (v120)
    {
      v121 = *v121;
    }

    v119 = sub_16F65CC(v121);
    *(a1 + 400) = v119;
  }

  if (*(a2 + 400))
  {
    v122 = *(a2 + 400);
  }

  else
  {
    v122 = &off_277EBD8;
  }

  sub_12C3070(v119, v122);
  if ((v44 & 0x100000) == 0)
  {
LABEL_159:
    if ((v44 & 0x200000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_220;
  }

LABEL_212:
  *(a1 + 40) |= 0x100000u;
  v123 = *(a1 + 408);
  if (!v123)
  {
    v124 = *(a1 + 8);
    v125 = (v124 & 0xFFFFFFFFFFFFFFFCLL);
    if (v124)
    {
      v125 = *v125;
    }

    v123 = sub_14D5BE0(v125);
    *(a1 + 408) = v123;
  }

  if (*(a2 + 408))
  {
    v126 = *(a2 + 408);
  }

  else
  {
    v126 = &off_2774478;
  }

  sub_12B9D50(v123, v126);
  if ((v44 & 0x200000) == 0)
  {
LABEL_160:
    if ((v44 & 0x400000) == 0)
    {
      goto LABEL_161;
    }

LABEL_228:
    *(a1 + 424) = *(a2 + 424);
    if ((v44 & 0x800000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

LABEL_220:
  *(a1 + 40) |= 0x200000u;
  v127 = *(a1 + 416);
  if (!v127)
  {
    v128 = *(a1 + 8);
    v129 = (v128 & 0xFFFFFFFFFFFFFFFCLL);
    if (v128)
    {
      v129 = *v129;
    }

    v127 = sub_14BC6D4(v129);
    *(a1 + 416) = v127;
  }

  if (*(a2 + 416))
  {
    v130 = *(a2 + 416);
  }

  else
  {
    v130 = &off_2772200;
  }

  sub_1477734(v127, v130);
  if ((v44 & 0x400000) != 0)
  {
    goto LABEL_228;
  }

LABEL_161:
  if ((v44 & 0x800000) != 0)
  {
LABEL_162:
    *(a1 + 428) = *(a2 + 428);
  }

LABEL_163:
  *(a1 + 40) |= v44;
LABEL_164:
  if (!HIBYTE(v44))
  {
    goto LABEL_174;
  }

  if ((v44 & 0x1000000) != 0)
  {
    *(a1 + 429) = *(a2 + 429);
    if ((v44 & 0x2000000) == 0)
    {
LABEL_167:
      if ((v44 & 0x4000000) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_232;
    }
  }

  else if ((v44 & 0x2000000) == 0)
  {
    goto LABEL_167;
  }

  *(a1 + 430) = *(a2 + 430);
  if ((v44 & 0x4000000) == 0)
  {
LABEL_168:
    if ((v44 & 0x8000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_233;
  }

LABEL_232:
  *(a1 + 431) = *(a2 + 431);
  if ((v44 & 0x8000000) == 0)
  {
LABEL_169:
    if ((v44 & 0x10000000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_234;
  }

LABEL_233:
  *(a1 + 432) = *(a2 + 432);
  if ((v44 & 0x10000000) == 0)
  {
LABEL_170:
    if ((v44 & 0x20000000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_235;
  }

LABEL_234:
  *(a1 + 440) = *(a2 + 440);
  if ((v44 & 0x20000000) == 0)
  {
LABEL_171:
    if ((v44 & 0x40000000) == 0)
    {
      goto LABEL_172;
    }

LABEL_236:
    *(a1 + 442) = *(a2 + 442);
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_173;
    }

LABEL_237:
    *(a1 + 444) = *(a2 + 444);
    goto LABEL_173;
  }

LABEL_235:
  *(a1 + 441) = *(a2 + 441);
  if ((v44 & 0x40000000) != 0)
  {
    goto LABEL_236;
  }

LABEL_172:
  if ((v44 & 0x80000000) != 0)
  {
    goto LABEL_237;
  }

LABEL_173:
  *(a1 + 40) |= v44;
LABEL_174:
  if (*(a2 + 44))
  {
    v105 = *(a2 + 448);
    *(a1 + 44) |= 1u;
    *(a1 + 448) = v105;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v106 = *(a2 + 8);
  if (v106)
  {

    sub_1957EF4((a1 + 8), (v106 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14CFEBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_11F1A54((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_1551D64(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_27769A8;
      }

      sub_1542CDC(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
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
      }

      if (*(a2 + 80))
      {
        v17 = *(a2 + 80);
      }

      else
      {
        v17 = &off_277E738;
      }

      sub_16E4964(v14, v17);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14D0028(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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

        v6 = sub_15522BC(v8);
        *(result + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2776E58;
      }

      sub_154A57C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_38;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(result + 16) |= 2u;
    v10 = *(result + 32);
    if (!v10)
    {
      v11 = *(result + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_1552318(v12);
      *(result + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2776ED0;
    }

    sub_154B0BC(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(result + 16) |= 4u;
    v14 = *(result + 40);
    if (!v14)
    {
      v15 = *(result + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_15523B4(v16);
      *(result + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_2776F10;
    }

    sub_154B900(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    }

LABEL_46:
    *(result + 16) |= 8u;
    v18 = *(result + 48);
    if (!v18)
    {
      v19 = *(result + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1552508(v20);
      *(result + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_2776F98;
    }

    sub_1494B38(v18, v21);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_62;
    }

LABEL_54:
    *(result + 16) |= 0x10u;
    v22 = *(result + 56);
    if (!v22)
    {
      v23 = *(result + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_1552410(v24);
      *(result + 56) = v22;
    }

    if (*(a2 + 56))
    {
      v25 = *(a2 + 56);
    }

    else
    {
      v25 = &off_2776F48;
    }

    sub_121721C(v22, v25);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_63;
    }

LABEL_62:
    *(result + 64) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(result + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(result + 68) = *(a2 + 68);
      goto LABEL_11;
    }

LABEL_63:
    *(result + 65) = *(a2 + 65);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_18;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_66:
    *(result + 76) = *(a2 + 76);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *(result + 72) = *(a2 + 72);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_66;
  }

LABEL_15:
  if ((v4 & 0x400) != 0)
  {
LABEL_16:
    *(result + 80) = *(a2 + 80);
  }

LABEL_17:
  *(result + 16) |= v4;
LABEL_18:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((result + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14D02A4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_14CD734(result);

    sub_14CF3F8(result, a2);
  }
}

uint64_t sub_14D02F0(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 64);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_14D04F4(*(*(a1 + 72) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 88);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_14D0578(*(*(a1 + 96) + 8 * v6));
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
      v11 = sub_16E4B4C(*(*(a1 + 144) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 160);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_14D0578(*(*(a1 + 168) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(a1 + 184);
    while (v15 >= 1)
    {
      v16 = v15 - 1;
      v17 = sub_16EF064(*(*(a1 + 192) + 8 * v15));
      result = 0;
      v15 = v16;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    v18 = *(a1 + 40);
    if ((v18 & 0x20) != 0)
    {
      result = sub_14D04F4(*(a1 + 288));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x40) != 0)
    {
      result = sub_16EE510(*(a1 + 296));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x100) != 0)
    {
      result = sub_14D0578(*(a1 + 312));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x400) != 0)
    {
      result = sub_195228C(*(a1 + 328) + 16);
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x2000) != 0)
    {
      result = sub_14C9D50(*(a1 + 352));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x4000) != 0)
    {
      result = sub_16E4B4C(*(a1 + 360));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x8000) != 0)
    {
      result = sub_13F0B14(*(a1 + 368));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x20000) != 0)
    {
      v19 = *(a1 + 384);
      v20 = *(v19 + 32);
      while (v20 >= 1)
      {
        v21 = v20 - 1;
        v22 = sub_14752B0(*(*(v19 + 40) + 8 * v20));
        result = 0;
        v20 = v21;
        if ((v22 & 1) == 0)
        {
          return result;
        }
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x40000) != 0)
    {
      result = sub_14B6108(*(a1 + 392));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x200000) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 416) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14D04F4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_16E5370(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      result = sub_1543A14(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 40);
    }

    if ((v6 & 2) == 0)
    {
      return 1;
    }

    result = sub_16E4B4C(*(a1 + 80));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14D0578(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_154A774(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_154B21C(*(a1 + 32));
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

  result = sub_154B9B4(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_14D05D8(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 280);
  v5 = a1 + 280;
  sub_1951F08((a1 + 16), (a2 + 16));
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  LODWORD(v6) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  LODWORD(v6) = *(a1 + 44);
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  v9 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v10;
  *(a2 + 88) = v11;
  v12 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v12;
  v13 = *(a1 + 104);
  v14 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  *(a2 + 112) = v14;
  v15 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
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
  v31 = *(a2 + 248);
  *(a2 + 248) = *(a1 + 248);
  *(a1 + 248) = v31;
  v32 = *(a2 + 256);
  *(a2 + 256) = *(a1 + 256);
  *(a1 + 256) = v32;
  v33 = *(a2 + 264);
  *(a2 + 264) = *(a1 + 264);
  *(a1 + 264) = v33;
  v34 = *(a2 + 272);
  *(a2 + 272) = *(a1 + 272);
  *(a1 + 272) = v34;
  v35 = *(a1 + 280);
  v36 = *(a1 + 288);
  *v5 = *v4;
  *(a2 + 280) = v35;
  *(a2 + 288) = v36;
  v37 = *(v5 + 16);
  v38 = *(a1 + 304);
  *(v5 + 16) = v4[1];
  *(a2 + 304) = v38;
  *(v4 + 2) = v37;
  v39 = *(v5 + 32);
  v40 = *(a1 + 320);
  *(v5 + 32) = v4[2];
  *(a2 + 320) = v40;
  *(v4 + 4) = v39;
  sub_1464C30((a1 + 328), a2 + 328);
  v41 = *(a1 + 448);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 448) = v41;
}

uint64_t sub_14D07F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E8240;
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

void sub_14D0870(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14D08A0(void *a1)
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

void sub_14D0914(void *a1)
{
  sub_14D08A0(a1);

  operator delete();
}

char *sub_14D094C(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_14D0AB4(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_14D0BDC(uint64_t a1)
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

uint64_t sub_14D0C60(uint64_t a1)
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
  if (a1 != &off_2774498)
  {
    v6 = *(a1 + 48);
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
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14D0D24(uint64_t a1)
{
  sub_14D0C60(a1);

  operator delete();
}

uint64_t sub_14D0D5C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_144E5CC(*(v1 + 48));
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

char *sub_14D0DEC(uint64_t a1, char *a2, int32x2_t *a3)
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

          sub_14BAE64(v17);
          v15 = v18;
          *(a1 + 48) = v18;
          v6 = v26;
        }

        v14 = sub_22095B8(a3, v15, v6);
        goto LABEL_25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v19 = v6 - 1;
      while (1)
      {
        v20 = v19 + 1;
        v26 = v19 + 1;
        v21 = *(a1 + 40);
        if (v21 && (v22 = *(a1 + 32), v22 < *v21))
        {
          *(a1 + 32) = v22 + 1;
          v23 = *&v21[2 * v22 + 2];
        }

        else
        {
          sub_14BAE64(*(a1 + 24));
          v23 = sub_19593CC(a1 + 24, v24);
          v20 = v26;
        }

        v19 = sub_22095B8(a3, v23, v20);
        v26 = v19;
        if (!v19)
        {
          return 0;
        }

        if (*a3 <= v19 || *v19 != 10)
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
LABEL_25:
    v26 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v26;
}

char *sub_14D0FD0(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_14589F4(v8, v10, a3);
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
    v12 = *(v11 + 20);
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, __dst + 1);
    }

    else
    {
      v13 = __dst + 2;
    }

    __dst = sub_14589F4(v11, v13, a3);
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

uint64_t sub_14D1178(uint64_t a1)
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

  if (*(a1 + 16))
  {
    v8 = sub_1458DB4(*(a1 + 48));
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

uint64_t sub_14D1254(uint64_t a1)
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

  if ((*(a1 + 16) & 1) == 0)
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

double sub_14D12C8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26E8340;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  return result;
}

uint64_t sub_14D1308(uint64_t a1)
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

  if (a1 != &off_27744D0)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_14B0590(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_14D0C60(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14D13E4(uint64_t a1)
{
  sub_14D1308(a1);

  operator delete();
}

uint64_t sub_14D141C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
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
      result = sub_14B0694(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_14D0D5C(*(v1 + 56));
    }
  }

  if ((v5 & 0xFC) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    *(v1 + 88) = 0;
    *(v1 + 80) = 0;
  }

  if ((v5 & 0xF00) != 0)
  {
    *(v1 + 100) = 0;
    *(v1 + 92) = 0;
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

char *sub_14D14E4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v71 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v71, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v71 + 1;
    v8 = *v71;
    if (*v71 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v71, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v71 + 2;
      }
    }

    v71 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_86;
        }

        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if (v13 < 0)
        {
          v71 = sub_19587DC(v7, v11);
          if (!v71)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v12 = v7 + 2;
LABEL_12:
          v71 = v12;
        }

        if (v11 > 6)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 64) = v11;
        }

        goto LABEL_94;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_86;
        }

        v39 = v7 + 1;
        v40 = *v7;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v41 = *v39;
        v42 = (v41 << 7) + v40;
        v40 = (v42 - 128);
        if (v41 < 0)
        {
          v71 = sub_19587DC(v7, (v42 - 128));
          if (!v71)
          {
            goto LABEL_123;
          }

          v40 = v64;
        }

        else
        {
          v39 = v7 + 2;
LABEL_62:
          v71 = v39;
        }

        if (v40 > 0x3C || ((1 << v40) & 0x1004010040100027) == 0)
        {
          v69 = *(a1 + 8);
          if (v69)
          {
            v70 = ((v69 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v70 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(2, v40, v70);
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 68) = v40;
        }

        goto LABEL_94;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_86;
        }

        v5 |= 0x10u;
        v30 = v7 + 1;
        v31 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v32 = *v30;
        v31 = v31 + (v32 << 7) - 128;
        if (v32 < 0)
        {
          v58 = sub_1958770(v7, v31);
          v71 = v58;
          *(a1 + 72) = v59;
          if (!v58)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v30 = v7 + 2;
LABEL_47:
          v71 = v30;
          *(a1 + 72) = v31;
        }

        goto LABEL_94;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_86;
        }

        v5 |= 0x20u;
        v33 = v7 + 1;
        v34 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v35 = *v33;
        v34 = v34 + (v35 << 7) - 128;
        if (v35 < 0)
        {
          v60 = sub_1958770(v7, v34);
          v71 = v60;
          *(a1 + 76) = v61;
          if (!v60)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v33 = v7 + 2;
LABEL_52:
          v71 = v33;
          *(a1 + 76) = v34;
        }

        goto LABEL_94;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_86;
        }

        v5 |= 0x80u;
        v18 = v7 + 1;
        v19 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v20 = *v18;
        v19 = v19 + (v20 << 7) - 128;
        if (v20 < 0)
        {
          v56 = sub_1958770(v7, v19);
          v71 = v56;
          *(a1 + 88) = v57;
          if (!v56)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_25:
          v71 = v18;
          *(a1 + 88) = v19;
        }

        goto LABEL_94;
      case 6u:
        if (v8 != 49)
        {
          goto LABEL_86;
        }

        v5 |= 0x40u;
        *(a1 + 80) = *v7;
        v71 = v7 + 8;
        goto LABEL_94;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_86;
        }

        v5 |= 0x100u;
        v44 = v7 + 1;
        v45 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_74;
        }

        v46 = *v44;
        v45 = v45 + (v46 << 7) - 128;
        if (v46 < 0)
        {
          v65 = sub_1958770(v7, v45);
          v71 = v65;
          *(a1 + 92) = v66;
          if (!v65)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v44 = v7 + 2;
LABEL_74:
          v71 = v44;
          *(a1 + 92) = v45;
        }

        goto LABEL_94;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_86;
        }

        v5 |= 0x200u;
        v36 = v7 + 1;
        v37 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v38 = *v36;
        v37 = v37 + (v38 << 7) - 128;
        if (v38 < 0)
        {
          v62 = sub_1958770(v7, v37);
          v71 = v62;
          *(a1 + 96) = v63;
          if (!v62)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v36 = v7 + 2;
LABEL_57:
          v71 = v36;
          *(a1 + 96) = v37;
        }

        goto LABEL_94;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_86;
        }

        v5 |= 0x400u;
        v50 = v7 + 1;
        v51 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

        v52 = *v50;
        v51 = v51 + (v52 << 7) - 128;
        if (v52 < 0)
        {
          v67 = sub_1958770(v7, v51);
          v71 = v67;
          *(a1 + 100) = v68;
          if (!v67)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_85:
          v71 = v50;
          *(a1 + 100) = v51;
        }

        goto LABEL_94;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_86;
        }

        v24 = v7 - 1;
        while (1)
        {
          v25 = v24 + 1;
          v71 = v24 + 1;
          v26 = *(a1 + 40);
          if (v26 && (v27 = *(a1 + 32), v27 < *v26))
          {
            *(a1 + 32) = v27 + 1;
            v28 = *&v26[2 * v27 + 2];
          }

          else
          {
            sub_14BAE64(*(a1 + 24));
            v28 = sub_19593CC(a1 + 24, v29);
            v25 = v71;
          }

          v24 = sub_22095B8(a3, v28, v25);
          v71 = v24;
          if (!v24)
          {
            goto LABEL_123;
          }

          if (*a3 <= v24 || *v24 != 82)
          {
            goto LABEL_94;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_86;
        }

        *(a1 + 16) |= 1u;
        v47 = *(a1 + 48);
        if (!v47)
        {
          v48 = *(a1 + 8);
          v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
          if (v48)
          {
            v49 = *v49;
          }

          v47 = sub_14BEF24(v49);
          *(a1 + 48) = v47;
          v7 = v71;
        }

        v17 = sub_22147CC(a3, v47, v7);
        goto LABEL_93;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_86;
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

          v14 = sub_14D5C5C(v16);
          *(a1 + 56) = v14;
          v7 = v71;
        }

        v17 = sub_221485C(a3, v14, v7);
        goto LABEL_93;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_86;
        }

        v22 = v7 + 1;
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          v71 = sub_19587DC(v7, v21);
          if (!v71)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v22 = v7 + 2;
LABEL_30:
          v71 = v22;
        }

        if (v21 > 7)
        {
          sub_144E0C4();
        }

        else
        {
          *(a1 + 16) |= 0x800u;
          *(a1 + 104) = v21;
        }

        goto LABEL_94;
      default:
LABEL_86:
        if (v8)
        {
          v53 = (v8 & 7) == 4;
        }

        else
        {
          v53 = 1;
        }

        if (!v53)
        {
          v54 = *(a1 + 8);
          if (v54)
          {
            v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v55 = sub_11F1920((a1 + 8));
            v7 = v71;
          }

          v17 = sub_1952690(v8, v55, v7, a3);
LABEL_93:
          v71 = v17;
          if (!v17)
          {
            goto LABEL_123;
          }

LABEL_94:
          if (sub_195ADC0(a3, &v71, a3[11].u32[1]))
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
LABEL_123:
          v71 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v71;
    }
  }
}

char *sub_14D1B8C(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 68);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 72);
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 76);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 88);
    *v19 = 40;
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
          LODWORD(v19) = v26 >> 7;
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v28 = *(a1 + 80);
    *v24 = 49;
    *(v24 + 1) = v28;
    v24 += 9;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v30 = *(a1 + 92);
    *v24 = 56;
    v24[1] = v30;
    if (v30 > 0x7F)
    {
      v24[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v24[2] = v30 >> 7;
      v29 = v24 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v32) = v24[2];
        do
        {
          *(v29 - 1) = v32 | 0x80;
          v32 = v31 >> 7;
          *v29++ = v31 >> 7;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v29 = v24 + 2;
    }
  }

  else
  {
    v29 = v24;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v35 = *(a1 + 96);
    *v29 = 64;
    v29[1] = v35;
    if (v35 > 0x7F)
    {
      v29[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v29[2] = v35 >> 7;
      v34 = v29 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v29) = v29[2];
        do
        {
          *(v34 - 1) = v29 | 0x80;
          LODWORD(v29) = v36 >> 7;
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v29 + 2;
    }
  }

  else
  {
    v34 = v29;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v39 = *(a1 + 100);
    *v34 = 72;
    v34[1] = v39;
    if (v39 > 0x7F)
    {
      v34[1] = v39 | 0x80;
      v40 = v39 >> 7;
      v34[2] = v39 >> 7;
      v38 = v34 + 3;
      if (v39 >= 0x4000)
      {
        LOBYTE(v34) = v34[2];
        do
        {
          *(v38 - 1) = v34 | 0x80;
          LODWORD(v34) = v40 >> 7;
          *v38++ = v40 >> 7;
          v41 = v40 >> 14;
          v40 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v38 = v34 + 2;
    }
  }

  else
  {
    v38 = v34;
  }

  v42 = *(a1 + 32);
  if (v42)
  {
    for (i = 0; i != v42; ++i)
    {
      if (*a3 <= v38)
      {
        v38 = sub_225EB68(a3, v38);
      }

      v44 = *(*(a1 + 40) + 8 * i + 8);
      *v38 = 82;
      v45 = *(v44 + 20);
      v38[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v38 + 1);
      }

      else
      {
        v46 = v38 + 2;
      }

      v38 = sub_14589F4(v44, v46, a3);
    }
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_87;
    }

LABEL_95:
    if (*a3 <= v38)
    {
      v38 = sub_225EB68(a3, v38);
    }

    v51 = *(a1 + 56);
    *v38 = 98;
    v52 = *(v51 + 20);
    v38[1] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v38 + 1);
    }

    else
    {
      v53 = v38 + 2;
    }

    v38 = sub_14D0FD0(v51, v53, a3);
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_101;
  }

  if (*a3 <= v38)
  {
    v38 = sub_225EB68(a3, v38);
  }

  v48 = *(a1 + 48);
  *v38 = 90;
  v49 = *(v48 + 20);
  v38[1] = v49;
  if (v49 > 0x7F)
  {
    v50 = sub_19575D0(v49, v38 + 1);
  }

  else
  {
    v50 = v38 + 2;
  }

  v38 = sub_14B0990(v48, v50, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_95;
  }

LABEL_87:
  if ((v5 & 0x800) == 0)
  {
LABEL_88:
    v47 = v38;
    goto LABEL_108;
  }

LABEL_101:
  if (*a3 <= v38)
  {
    v38 = sub_225EB68(a3, v38);
  }

  v54 = *(a1 + 104);
  *v38 = 104;
  v38[1] = v54;
  if (v54 > 0x7F)
  {
    v38[1] = v54 | 0x80;
    v55 = v54 >> 7;
    v38[2] = v54 >> 7;
    v47 = v38 + 3;
    if (v54 >= 0x4000)
    {
      LOBYTE(v38) = v38[2];
      do
      {
        *(v47 - 1) = v38 | 0x80;
        v38 = (v55 >> 7);
        *v47++ = v55 >> 7;
        v56 = v55 >> 14;
        v55 >>= 7;
      }

      while (v56);
    }
  }

  else
  {
    v47 = v38 + 2;
  }

LABEL_108:
  v57 = *(a1 + 8);
  if ((v57 & 1) == 0)
  {
    return v47;
  }

  v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
  v60 = *(v59 + 31);
  if (v60 < 0)
  {
    v61 = *(v59 + 8);
    v60 = *(v59 + 16);
  }

  else
  {
    v61 = (v59 + 8);
  }

  if ((*a3 - v47) >= v60)
  {
    v62 = v60;
    memcpy(v47, v61, v60);
    v47 += v62;
    return v47;
  }

  return sub_1957130(a3, v61, v60, v47);
}

uint64_t sub_14D228C(uint64_t a1)
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

  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_21;
  }

  if (v8)
  {
    v9 = sub_14B0B24(*(a1 + 48));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_14D1178(*(a1 + 56));
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_29:
  v11 = *(a1 + 64);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v12;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_46:
    v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_38:
  v15 = *(a1 + 68);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v16;
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_46;
  }

LABEL_15:
  if ((v8 & 0x20) != 0)
  {
LABEL_16:
    v2 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v8 & 0x40) != 0)
  {
    v2 += 9;
  }

  if ((v8 & 0x80) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_21:
  if ((v8 & 0xF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v8 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x200) == 0)
    {
LABEL_24:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v2 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x400) == 0)
  {
LABEL_25:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

LABEL_33:
  v2 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x800) == 0)
  {
    goto LABEL_42;
  }

LABEL_34:
  v13 = *(a1 + 104);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v14;
LABEL_42:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_14D2568(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144A454((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if (v9)
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

        v11 = sub_14BEF24(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_2773880;
      }

      sub_14B0C78(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_42;
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

      v15 = sub_14D5C5C(v17);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_2774498;
    }

    sub_149C4F0(v15, v18);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 64) = *(a2 + 64);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(a1 + 68) = *(a2 + 68);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(a1 + 72) = *(a2 + 72);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(a1 + 76) = *(a2 + 76);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_14;
    }

LABEL_46:
    *(a1 + 80) = *(a2 + 80);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0xF00) == 0)
  {
    goto LABEL_22;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 92) = *(a2 + 92);
    if ((v9 & 0x200) == 0)
    {
LABEL_18:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_19;
      }

LABEL_50:
      *(a1 + 100) = *(a2 + 100);
      if ((v9 & 0x800) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  *(a1 + 96) = *(a2 + 96);
  if ((v9 & 0x400) != 0)
  {
    goto LABEL_50;
  }

LABEL_19:
  if ((v9 & 0x800) != 0)
  {
LABEL_20:
    *(a1 + 104) = *(a2 + 104);
  }

LABEL_21:
  *(a1 + 16) |= v9;
LABEL_22:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14D2790(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_14D141C(a1);

    sub_14D2568(a1, a2);
  }
}

uint64_t sub_14D27DC(uint64_t a1)
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

  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_14D1254(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 sub_14D2840(uint64_t a1, uint64_t a2)
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
  v9 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a2 + 80) = v10;
  *(a2 + 88) = v11;
  v13 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v13;
  LODWORD(v13) = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  return result;
}

uint64_t sub_14D28E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_14EB434(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_154F92C(v8);
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
      result = sub_1543CB4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 16);
  if ((v12 & 7) == 0)
  {
    goto LABEL_18;
  }

  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v15 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v15 + 23) & 0x80000000) == 0)
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_30;
    }

LABEL_16:
    if ((v12 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  **v15 = 0;
  *(v15 + 8) = 0;
  if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_30:
  v16 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v16 + 23) & 0x80000000) == 0)
  {
    *v16 = 0;
    *(v16 + 23) = 0;
    if ((v12 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = sub_16E5B70(*(a1 + 136));
    goto LABEL_18;
  }

  **v16 = 0;
  *(v16 + 8) = 0;
  if ((v12 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v12 & 0xF8) != 0)
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  if ((v12 & 0x300) != 0)
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = 1;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_14D2A60(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E83C0;
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
    sub_15683EC((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_1568478((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56), v13);
    v14 = *(a1 + 56) + v10;
    *(a1 + 56) = v14;
    v15 = *(a1 + 64);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 8);
  if (v16)
  {
    sub_1957EF4(v4, (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t sub_14D2C68(uint64_t a1)
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
  if (a1 != &off_2774540)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_1547774(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15680C4((a1 + 48));
  sub_1568040((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14D2D38(uint64_t a1)
{
  sub_14D2C68(a1);

  operator delete();
}

uint64_t sub_14D2D70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14D141C(v4);
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
      result = sub_149EE04(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (v8)
  {
    result = sub_14D28E4(*(v1 + 72));
  }

  if ((v8 & 0x1E) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
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

char *sub_14D2E34(uint64_t a1, char *a2, int32x2_t *a3)
{
  v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v56, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v56 + 1;
    v8 = *v56;
    if (*v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v56 + 2;
      }
    }

    v56 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 == 6)
      {
        if (v8 == 50)
        {
          v35 = v7 - 1;
          while (1)
          {
            v36 = v35 + 1;
            v56 = v35 + 1;
            v37 = *(a1 + 40);
            if (v37 && (v38 = *(a1 + 32), v38 < *v37))
            {
              *(a1 + 32) = v38 + 1;
              v39 = *&v37[2 * v38 + 2];
            }

            else
            {
              v40 = sub_14D5CF8(*(a1 + 24));
              v39 = sub_19593CC(a1 + 24, v40);
              v36 = v56;
            }

            v35 = sub_22148EC(a3, v39, v36);
            v56 = v35;
            if (!v35)
            {
              goto LABEL_95;
            }

            if (*a3 <= v35 || *v35 != 50)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v11 == 7 && v8 == 58)
      {
        v19 = v7 - 1;
        while (1)
        {
          v20 = v19 + 1;
          v56 = v19 + 1;
          v21 = *(a1 + 64);
          if (v21 && (v22 = *(a1 + 56), v22 < *v21))
          {
            *(a1 + 56) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_14BDEB8(*(a1 + 48));
            v23 = sub_19593CC(a1 + 48, v24);
            v20 = v56;
          }

          v19 = sub_221497C(a3, v23, v20);
          v56 = v19;
          if (!v19)
          {
            goto LABEL_95;
          }

          if (*a3 <= v19 || *v19 != 58)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_70;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_70;
      }

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

        sub_155218C(v32);
        v30 = v33;
        *(a1 + 72) = v33;
        v7 = v56;
      }

      v34 = sub_21F36E0(a3, v30, v7);
LABEL_77:
      v56 = v34;
      if (!v34)
      {
        goto LABEL_95;
      }

      goto LABEL_78;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_70;
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
      v56 = v12;
      *(a1 + 92) = v13;
      goto LABEL_78;
    }

    v48 = sub_1958770(v7, v13);
    v56 = v48;
    *(a1 + 92) = v49;
    if (!v48)
    {
      goto LABEL_95;
    }

LABEL_78:
    if (sub_195ADC0(a3, &v56, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_70;
      }

      v5 |= 4u;
      v41 = v7 + 1;
      v42 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      v43 = *v41;
      v42 = v42 + (v43 << 7) - 128;
      if ((v43 & 0x80000000) == 0)
      {
        v41 = v7 + 2;
LABEL_69:
        v56 = v41;
        *(a1 + 84) = v42;
        goto LABEL_78;
      }

      v52 = sub_1958770(v7, v42);
      v56 = v52;
      *(a1 + 84) = v53;
      if (!v52)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_70;
      }

      v5 |= 8u;
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
        v56 = v16;
        *(a1 + 88) = v17;
        goto LABEL_78;
      }

      v50 = sub_1958770(v7, v17);
      v56 = v50;
      *(a1 + 88) = v51;
      if (!v50)
      {
        goto LABEL_95;
      }
    }

    goto LABEL_78;
  }

  if (v8 == 8)
  {
    v25 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_43;
    }

    v27 = *v25;
    v28 = (v27 << 7) + v26;
    v26 = (v28 - 128);
    if (v27 < 0)
    {
      v56 = sub_19587DC(v7, (v28 - 128));
      if (!v56)
      {
        goto LABEL_95;
      }

      v26 = v47;
    }

    else
    {
      v25 = v7 + 2;
LABEL_43:
      v56 = v25;
    }

    if (v26 > 0x3C || ((1 << v26) & 0x1004010040100027) == 0)
    {
      v54 = *(a1 + 8);
      if (v54)
      {
        v55 = ((v54 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v55 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(1, v26, v55);
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 80) = v26;
    }

    goto LABEL_78;
  }

LABEL_70:
  if (v8)
  {
    v44 = (v8 & 7) == 4;
  }

  else
  {
    v44 = 1;
  }

  if (!v44)
  {
    v45 = *(a1 + 8);
    if (v45)
    {
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v46 = sub_11F1920((a1 + 8));
      v7 = v56;
    }

    v34 = sub_1952690(v8, v46, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_95:
  v56 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

char *sub_14D32E0(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 84);
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

    v16 = *(a1 + 88);
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

    v19 = *(a1 + 72);
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

    v15 = sub_15480D4(v19, v21, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v23 = *(a1 + 92);
    *v15 = 40;
    v15[1] = v23;
    if (v23 > 0x7F)
    {
      v15[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v15[2] = v23 >> 7;
      v22 = v15 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v22 - 1) = v15 | 0x80;
          LODWORD(v15) = v24 >> 7;
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v15 + 2;
    }
  }

  else
  {
    v22 = v15;
  }

  v26 = *(a1 + 32);
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*a3 <= v22)
      {
        v22 = sub_225EB68(a3, v22);
      }

      v28 = *(*(a1 + 40) + 8 * i + 8);
      *v22 = 50;
      v29 = *(v28 + 20);
      v22[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v22 + 1);
      }

      else
      {
        v30 = v22 + 2;
      }

      v22 = sub_14D1B8C(v28, v30, a3);
    }
  }

  v31 = *(a1 + 56);
  if (v31)
  {
    for (j = 0; j != v31; ++j)
    {
      if (*a3 <= v22)
      {
        v22 = sub_225EB68(a3, v22);
      }

      v33 = *(*(a1 + 64) + 8 * j + 8);
      *v22 = 58;
      v34 = *(v33 + 20);
      v22[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v22 + 1);
      }

      else
      {
        v35 = v22 + 2;
      }

      v22 = sub_149F03C(v33, v35, a3);
    }
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v22;
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

  if ((*a3 - v22) >= v39)
  {
    v41 = v39;
    memcpy(v22, v40, v39);
    v22 += v41;
    return v22;
  }

  return sub_1957130(a3, v40, v39, v22);
}

uint64_t sub_14D3724(uint64_t a1)
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
      v7 = sub_14D228C(v6);
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
      v14 = sub_149F1C8(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0x1F) == 0)
  {
    goto LABEL_22;
  }

  if (v15)
  {
    v18 = sub_1548710(*(a1 + 72));
    v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 2) == 0)
    {
LABEL_18:
      if ((v15 & 4) == 0)
      {
        goto LABEL_19;
      }

LABEL_29:
      v9 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 8) == 0)
      {
LABEL_20:
        if ((v15 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      goto LABEL_30;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  v19 = *(a1 + 80);
  v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v19 >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 11;
  }

  v9 += v21;
  if ((v15 & 4) != 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  if ((v15 & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_30:
  v9 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x10) != 0)
  {
LABEL_21:
    v9 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
  v16 = *(a1 + 8);
  if (v16)
  {
    v22 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v9 += v23;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_14D3918(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_15683EC((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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
    sub_1568478((result + 48), v11, (v10 + 8), v9, **(result + 64) - *(result + 56), v12);
    v13 = *(result + 56) + v9;
    *(result + 56) = v13;
    v14 = *(result + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 16);
  if ((v15 & 0x1F) != 0)
  {
    if (v15)
    {
      *(result + 16) |= 1u;
      v17 = *(result + 72);
      if (!v17)
      {
        v18 = *(result + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        sub_155218C(v19);
        *(result + 72) = v17;
      }

      if (*(a2 + 72))
      {
        v20 = *(a2 + 72);
      }

      else
      {
        v20 = &off_2776D50;
      }

      sub_14D3AD8(v17, v20);
      if ((v15 & 2) == 0)
      {
LABEL_10:
        if ((v15 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_28;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(result + 80) = *(a2 + 80);
    if ((v15 & 4) == 0)
    {
LABEL_11:
      if ((v15 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(result + 84) = *(a2 + 84);
    if ((v15 & 8) == 0)
    {
LABEL_12:
      if ((v15 & 0x10) == 0)
      {
LABEL_14:
        *(result + 16) |= v15;
        goto LABEL_15;
      }

LABEL_13:
      *(result + 92) = *(a2 + 92);
      goto LABEL_14;
    }

LABEL_29:
    *(result + 88) = *(a2 + 88);
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((result + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14D3AD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156DC34((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_156DCC0((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_131206C((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if (v24)
  {
    if (v24)
    {
      v26 = *(a2 + 120);
      *(a1 + 16) |= 1u;
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_194EA1C((a1 + 120), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
      if ((v24 & 2) == 0)
      {
LABEL_16:
        if ((v24 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_40;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_16;
    }

    v29 = *(a2 + 128);
    *(a1 + 16) |= 2u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    sub_194EA1C((a1 + 128), (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
    if ((v24 & 4) == 0)
    {
LABEL_17:
      if ((v24 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_48;
    }

LABEL_40:
    *(a1 + 16) |= 4u;
    v32 = *(a1 + 136);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      sub_16F58FC(v34);
      *(a1 + 136) = v32;
    }

    if (*(a2 + 136))
    {
      v35 = *(a2 + 136);
    }

    else
    {
      v35 = &off_277E650;
    }

    sub_16E645C(v32, v35);
    if ((v24 & 8) == 0)
    {
LABEL_18:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(a1 + 144) = *(a2 + 144);
    if ((v24 & 0x10) == 0)
    {
LABEL_19:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_50;
    }

LABEL_49:
    *(a1 + 148) = *(a2 + 148);
    if ((v24 & 0x20) == 0)
    {
LABEL_20:
      if ((v24 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(a1 + 152) = *(a2 + 152);
    if ((v24 & 0x40) == 0)
    {
LABEL_21:
      if ((v24 & 0x80) == 0)
      {
LABEL_23:
        *(a1 + 16) |= v24;
        goto LABEL_24;
      }

LABEL_22:
      *(a1 + 156) = *(a2 + 156);
      goto LABEL_23;
    }

LABEL_51:
    *(a1 + 153) = *(a2 + 153);
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  if ((v24 & 0x300) != 0)
  {
    if ((v24 & 0x100) != 0)
    {
      *(a1 + 160) = *(a2 + 160);
    }

    if ((v24 & 0x200) != 0)
    {
      *(a1 + 168) = *(a2 + 168);
    }

    *(a1 + 16) |= v24;
  }

  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((a1 + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14D3DFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_14D27DC(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_14D3E6C(a1 + 48);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_14D3EC8(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14D3E6C(uint64_t a1)
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
      result = sub_149EC98(*(v3 + 24));
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

uint64_t sub_14D3EC8(uint64_t a1)
{
  if ((*(a1 + 16) & 8) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    v5 = sub_14EC4F4(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_1548A88(a1 + 72);
  if (result)
  {
    v6 = *(a1 + 104);
    while (v6 >= 1)
    {
      v7 = *(*(a1 + 112) + 8 * v6--);
      if ((~*(v7 + 16) & 3) != 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 16) & 4) == 0)
    {
      return 1;
    }

    result = sub_16E6614(*(a1 + 136));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14D3F88(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E8440;
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
  *(a1 + 120) = &qword_278E990;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return a1;
}

void sub_14D4018(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14D404C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E8440;
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
    sub_1568504((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *(a2 + 88);
    v13 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1568370((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v16 = *(a2 + 104);
  if (v16)
  {
    v17 = *(a2 + 112);
    v18 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1568504((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 8);
  if (v21)
  {
    sub_1957EF4(v4, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 120) = &qword_278E990;
  v22 = *(a2 + 40);
  if (v22)
  {
    v23 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 120), (*(a2 + 120) & 0xFFFFFFFFFFFFFFFELL), v23);
    v22 = *(a2 + 40);
  }

  if ((v22 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  if ((v22 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  if ((v22 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 144) = 0;
  if ((v22 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

void *sub_14D4410(void *a1)
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

  sub_14D44C0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1568148(a1 + 12);
  sub_1567FBC(a1 + 9);
  sub_1568148(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_14D44C0(uint64_t a1)
{
  v3 = *(a1 + 120);
  result = (a1 + 120);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27745A0)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      sub_1547774(v4);
      operator delete();
    }

    v5 = *(a1 + 136);
    if (v5)
    {
      sub_14D2C68(v5);
      operator delete();
    }

    v6 = *(a1 + 144);
    if (v6)
    {
      sub_13F0C4C(v6);
      operator delete();
    }

    result = *(a1 + 152);
    if (result)
    {
      sub_14BA020(result);

      operator delete();
    }
  }

  return result;
}

void sub_14D459C(void *a1)
{
  sub_14D4410(a1);

  operator delete();
}

uint64_t sub_14D45D4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14D2D70(v5);
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
      result = sub_14A52E8(v8);
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
      result = sub_14D2D70(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 40);
  if ((v12 & 0x1F) != 0)
  {
    if ((v12 & 1) == 0)
    {
      if ((v12 & 2) == 0)
      {
        goto LABEL_16;
      }

LABEL_24:
      result = sub_14D28E4(*(a1 + 128));
      if ((v12 & 4) == 0)
      {
LABEL_17:
        if ((v12 & 8) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_26;
      }

LABEL_25:
      result = sub_14D2D70(*(a1 + 136));
      if ((v12 & 8) == 0)
      {
LABEL_18:
        if ((v12 & 0x10) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

LABEL_26:
      result = sub_13F0C88(*(a1 + 144));
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_29;
      }

LABEL_27:
      v14 = *(a1 + 152);
      v15 = *(v14 + 8);
      result = v14 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v15)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_29;
    }

    v13 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_16:
    if ((v12 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_29:
  v17 = *(a1 + 8);
  v16 = a1 + 8;
  *(v16 + 152) = 0;
  *(v16 + 32) = 0;
  if (v17)
  {

    return sub_1957EA8(v16);
  }

  return result;
}

uint64_t sub_14D4740(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v59 = a2;
  if (sub_195ADC0(a3, v59, a3[11].u32[1]))
  {
    return *v59;
  }

  while (1)
  {
    v6 = (*v59 + 1);
    v7 = **v59;
    if (**v59 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v59, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v59 + 2);
      }
    }

    *v59 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 4)
    {
      break;
    }

    if (v7 >> 3 <= 6)
    {
      if (v10 != 5)
      {
        if (v10 == 6 && v7 == 50)
        {
          v28 = v6 - 1;
          while (1)
          {
            v29 = v28 + 1;
            *v59 = v28 + 1;
            v30 = *(a1 + 112);
            if (v30 && (v31 = *(a1 + 104), v31 < *v30))
            {
              *(a1 + 104) = v31 + 1;
              v32 = *&v30[2 * v31 + 2];
            }

            else
            {
              sub_14D5D9C(*(a1 + 96));
              v32 = sub_19593CC(a1 + 96, v33);
              v29 = *v59;
            }

            v28 = sub_2214A0C(a3, v32, v29);
            *v59 = v28;
            if (!v28)
            {
              goto LABEL_111;
            }

            if (*a3 <= v28 || *v28 != 50)
            {
              goto LABEL_100;
            }
          }
        }

        goto LABEL_90;
      }

      if (v7 != 42)
      {
        goto LABEL_90;
      }

      *(a1 + 40) |= 4u;
      v46 = *(a1 + 136);
      if (!v46)
      {
        v47 = *(a1 + 8);
        v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v48 = *v48;
        }

        sub_14D5D9C(v48);
        v46 = v49;
        *(a1 + 136) = v49;
        v6 = *v59;
      }

      v14 = sub_2214A0C(a3, v46, v6);
    }

    else if (v10 == 7)
    {
      if (v7 != 58)
      {
        goto LABEL_90;
      }

      *(a1 + 40) |= 8u;
      v43 = *(a1 + 144);
      if (!v43)
      {
        v44 = *(a1 + 8);
        v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v45 = *v45;
        }

        v43 = sub_13F1010(v45);
        *(a1 + 144) = v43;
        v6 = *v59;
      }

      v14 = sub_220B538(a3, v43, v6);
    }

    else if (v10 == 8)
    {
      if (v7 != 66)
      {
        goto LABEL_90;
      }

      *(a1 + 40) |= 1u;
      v50 = *(a1 + 8);
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
      if (v50)
      {
        v51 = *v51;
      }

      v52 = sub_194DB04((a1 + 120), v51);
      v14 = sub_1958890(v52, *v59, a3);
    }

    else
    {
      if (v10 != 9 || v7 != 74)
      {
        goto LABEL_90;
      }

      *(a1 + 40) |= 0x10u;
      v11 = *(a1 + 152);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_14BF800(v13);
        *(a1 + 152) = v11;
        v6 = *v59;
      }

      v14 = sub_2213760(a3, v11, v6);
    }

LABEL_99:
    *v59 = v14;
    if (!v14)
    {
      goto LABEL_111;
    }

LABEL_100:
    if (sub_195ADC0(a3, v59, a3[11].u32[1]))
    {
      return *v59;
    }
  }

  if (v7 >> 3 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 == 2 && v7 == 18)
      {
        v16 = v6 - 1;
        while (1)
        {
          v17 = v16 + 1;
          *v59 = v16 + 1;
          v18 = *(a1 + 64);
          if (v18 && (v19 = *(a1 + 56), v19 < *v18))
          {
            *(a1 + 56) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            sub_14D5D9C(*(a1 + 48));
            v20 = sub_19593CC(a1 + 48, v21);
            v17 = *v59;
          }

          v16 = sub_2214A0C(a3, v20, v17);
          *v59 = v16;
          if (!v16)
          {
            goto LABEL_111;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_100;
          }
        }
      }

      goto LABEL_90;
    }

    if (v7 != 8)
    {
      goto LABEL_90;
    }

    v34 = v6 + 1;
    v35 = *v6;
    if ((v35 & 0x8000000000000000) != 0)
    {
      v36 = *v34;
      v37 = (v36 << 7) + v35;
      v35 = (v37 - 128);
      if (v36 < 0)
      {
        *v59 = sub_19587DC(v6, (v37 - 128));
        if (!*v59)
        {
          goto LABEL_111;
        }

        v35 = v56;
        goto LABEL_63;
      }

      v34 = v6 + 2;
    }

    *v59 = v34;
LABEL_63:
    if (v35 > 0x3C || ((1 << v35) & 0x1004010040100027) == 0)
    {
      v57 = *(a1 + 8);
      if (v57)
      {
        v58 = ((v57 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v58 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(1, v35, v58);
    }

    else
    {
      *(a1 + 40) |= 0x20u;
      *(a1 + 160) = v35;
    }

    goto LABEL_100;
  }

  if (v10 == 3)
  {
    if (v7 != 26)
    {
      goto LABEL_90;
    }

    *(a1 + 40) |= 2u;
    v39 = *(a1 + 128);
    if (!v39)
    {
      v40 = *(a1 + 8);
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      sub_155218C(v41);
      v39 = v42;
      *(a1 + 128) = v42;
      v6 = *v59;
    }

    v14 = sub_21F36E0(a3, v39, v6);
    goto LABEL_99;
  }

  if (v10 == 4 && v7 == 34)
  {
    v22 = v6 - 1;
    while (1)
    {
      v23 = v22 + 1;
      *v59 = v22 + 1;
      v24 = *(a1 + 88);
      if (v24 && (v25 = *(a1 + 80), v25 < *v24))
      {
        *(a1 + 80) = v25 + 1;
        v26 = *&v24[2 * v25 + 2];
      }

      else
      {
        sub_14BE448(*(a1 + 72));
        v26 = sub_19593CC(a1 + 72, v27);
        v23 = *v59;
      }

      v22 = sub_2213640(a3, v26, v23);
      *v59 = v22;
      if (!v22)
      {
        goto LABEL_111;
      }

      if (*a3 <= v22 || *v22 != 34)
      {
        goto LABEL_100;
      }
    }
  }

LABEL_90:
  if (v7)
  {
    v53 = (v7 & 7) == 4;
  }

  else
  {
    v53 = 1;
  }

  if (!v53)
  {
    if (v7 - 8000 > 0x647)
    {
      v54 = *(a1 + 8);
      if (v54)
      {
        v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v55 = sub_11F1920((a1 + 8));
        v6 = *v59;
      }

      v14 = sub_1952690(v7, v55, v6, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v7, v6, &off_27745A0, (a1 + 8), a3);
    }

    goto LABEL_99;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v59;
  }

LABEL_111:
  *v59 = 0;
  return *v59;
}

char *sub_14D4CDC(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 160);
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

      v6 = sub_14D32E0(v13, v15, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 128);
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

    v6 = sub_15480D4(v16, v18, a3);
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v21 = *(*(a1 + 88) + 8 * j + 8);
      *v6 = 34;
      v22 = *(v21 + 20);
      v6[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v6 + 1);
      }

      else
      {
        v23 = v6 + 2;
      }

      v6 = sub_14A5550(v21, v23, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v24 = *(a1 + 136);
    *v6 = 42;
    v25 = *(v24 + 20);
    v6[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v6 + 1);
    }

    else
    {
      v26 = v6 + 2;
    }

    v6 = sub_14D32E0(v24, v26, a3);
  }

  v27 = *(a1 + 104);
  if (v27)
  {
    for (k = 0; k != v27; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v29 = *(*(a1 + 112) + 8 * k + 8);
      *v6 = 50;
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

      v6 = sub_14D32E0(v29, v31, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v32 = *(a1 + 144);
    *v6 = 58;
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

    v6 = sub_13F0E14(v32, v34, a3);
    if ((v5 & 1) == 0)
    {
LABEL_50:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_59;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_50;
  }

  v6 = sub_128AEEC(a3, 8, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_65;
  }

LABEL_59:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v35 = *(a1 + 152);
  *v6 = 74;
  v36 = *(v35 + 20);
  v6[1] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, v6 + 1);
  }

  else
  {
    v37 = v6 + 2;
  }

  v6 = sub_14BA25C(v35, v37, a3);
LABEL_65:
  if (*(a1 + 26))
  {
    v6 = sub_1953428(a1 + 16, 1000, 1201, v6, a3);
  }

  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v41)
  {
    v43 = v41;
    memcpy(v6, v42, v41);
    v6 += v43;
    return v6;
  }

  return sub_1957130(a3, v42, v41, v6);
}

uint64_t sub_14D5188(uint64_t a1)
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
      v9 = sub_14D3724(v8);
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
      v16 = sub_14A5700(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  v19 = *(a1 + 112);
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
      v23 = sub_14D3724(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 40);
  if ((v24 & 0x3F) != 0)
  {
    if (v24)
    {
      v30 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v30 + 23);
      v32 = *(v30 + 8);
      if ((v31 & 0x80u) == 0)
      {
        v32 = v31;
      }

      v18 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v24 & 2) == 0)
      {
LABEL_22:
        if ((v24 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_36;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_22;
    }

    v33 = sub_1548710(*(a1 + 128));
    v18 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 4) == 0)
    {
LABEL_23:
      if ((v24 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_37;
    }

LABEL_36:
    v34 = sub_14D3724(*(a1 + 136));
    v18 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 8) == 0)
    {
LABEL_24:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }

LABEL_37:
    v35 = sub_13F0F3C(*(a1 + 144));
    v18 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 0x10) == 0)
    {
LABEL_25:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_30;
      }

LABEL_26:
      v25 = *(a1 + 160);
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v25 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 11;
      }

      v18 += v27;
      goto LABEL_30;
    }

LABEL_38:
    v36 = sub_14BA384(*(a1 + 152));
    v18 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_30:
  v28 = *(a1 + 8);
  if (v28)
  {
    v37 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v38 < 0)
    {
      v38 = *(v37 + 16);
    }

    v18 += v38;
  }

  *(a1 + 44) = v18;
  return v18;
}

void sub_14D5430(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1568504((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1568370((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_1568504((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 40);
  if ((v19 & 0x3F) != 0)
  {
    if (v19)
    {
      v21 = *(a2 + 120);
      *(a1 + 40) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((a1 + 120), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_34;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 40) |= 2u;
    v24 = *(a1 + 128);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_155218C(v26);
      *(a1 + 128) = v24;
    }

    if (*(a2 + 128))
    {
      v27 = *(a2 + 128);
    }

    else
    {
      v27 = &off_2776D50;
    }

    sub_14D3AD8(v24, v27);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(a1 + 40) |= 4u;
    v28 = *(a1 + 136);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      sub_14D5D9C(v30);
      *(a1 + 136) = v28;
    }

    if (*(a2 + 136))
    {
      v31 = *(a2 + 136);
    }

    else
    {
      v31 = &off_2774540;
    }

    sub_14D3918(v28, v31);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 40) |= 8u;
    v32 = *(a1 + 144);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_13F1010(v34);
      *(a1 + 144) = v32;
    }

    if (*(a2 + 144))
    {
      v35 = *(a2 + 144);
    }

    else
    {
      v35 = &off_276F3A8;
    }

    sub_12B9D50(v32, v35);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
LABEL_18:
        *(a1 + 40) |= v19;
        goto LABEL_19;
      }

LABEL_17:
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_18;
    }

LABEL_50:
    *(a1 + 40) |= 0x10u;
    v36 = *(a1 + 152);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_14BF800(v38);
      *(a1 + 152) = v36;
    }

    if (*(a2 + 152))
    {
      v39 = *(a2 + 152);
    }

    else
    {
      v39 = &off_2773C88;
    }

    sub_12B9D50(v36, v39);
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  sub_225EA0C(a1 + 16, a2 + 16);
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14D5750(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_14D45D4(result);

    sub_14D5430(result, a2);
  }
}

uint64_t sub_14D579C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_14D3DFC(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 104);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_14D3DFC(*(*(a1 + 112) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 40);
    if ((v9 & 2) != 0)
    {
      result = sub_14D3EC8(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 4) == 0)
    {
      return 1;
    }

    result = sub_14D3DFC(*(a1 + 136));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 sub_14D5848(uint64_t a1, uint64_t a2)
{
  sub_1951F08((a1 + 16), (a2 + 16));
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  v10 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v10;
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v11;
  *(a2 + 104) = v12;
  v13 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v13;
  v14 = *(a2 + 120);
  *(a2 + 120) = *(a1 + 120);
  *(a1 + 120) = v14;
  v15 = *(a1 + 128);
  v16 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v15;
  *(a2 + 136) = v16;
  v17 = *(a1 + 144);
  v18 = *(a1 + 152);
  result = *(a2 + 144);
  *(a1 + 144) = result;
  *(a2 + 144) = v17;
  *(a2 + 152) = v18;
  LODWORD(v17) = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v17;
  return result;
}

uint64_t sub_14D5948(uint64_t *a1)
{
  if (!a1)
  {

    sub_1568590();
  }

  return sub_14BF87C(v3, a1, 0);
}

uint64_t sub_14D59A4(uint64_t *a1)
{
  if (!a1)
  {

    sub_15685FC();
  }

  return sub_14C07CC(v3, a1, 0);
}

double sub_14D5A00(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26E8040;
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
  *(v2 + 160) = 0;
  result = 0.0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  return result;
}

uint64_t sub_14D5ACC(uint64_t *a1)
{
  if (!a1)
  {

    sub_1568668();
  }

  return sub_14C5A5C(v3, a1, 0);
}

uint64_t sub_14D5B28(uint64_t *a1)
{
  if (!a1)
  {

    sub_15686D4();
  }

  return sub_14C9FCC(v3, a1, 0);
}

uint64_t sub_14D5B84(uint64_t *a1)
{
  if (!a1)
  {

    sub_1568740();
  }

  return sub_14CC748(v3, a1, 0);
}

uint64_t sub_14D5BE0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E8240;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_14D5C5C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E82C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_14D5CF8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E8340;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 92) = 0u;
  return result;
}