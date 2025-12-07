void sub_1489BB4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144C6DC((a1 + 48), v7, (v6 + 8), v5, **(a1 + 64) - *(a1 + 56), v8);
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
    sub_156618C((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 104);
  if (v16)
  {
    v17 = *(a2 + 112);
    v18 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1566980((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 128);
  if (v21)
  {
    v22 = *(a2 + 136);
    v23 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1566A0C((a1 + 120), v23, (v22 + 8), v21, **(a1 + 136) - *(a1 + 128));
    v24 = *(a1 + 128) + v21;
    *(a1 + 128) = v24;
    v25 = *(a1 + 136);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 152);
  if (v26)
  {
    v27 = *(a2 + 160);
    v28 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1566A98((a1 + 144), v28, (v27 + 8), v26, **(a1 + 160) - *(a1 + 152));
    v29 = *(a1 + 152) + v26;
    *(a1 + 152) = v29;
    v30 = *(a1 + 160);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 176);
  if (v31)
  {
    v32 = *(a2 + 184);
    v33 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_144DA24((a1 + 168), v33, (v32 + 8), v31, **(a1 + 184) - *(a1 + 176), v34);
    v35 = *(a1 + 176) + v31;
    *(a1 + 176) = v35;
    v36 = *(a1 + 184);
    if (*v36 < v35)
    {
      *v36 = v35;
    }
  }

  v37 = *(a2 + 200);
  if (v37)
  {
    v38 = *(a2 + 208);
    v39 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_1566B24((a1 + 192), v39, (v38 + 8), v37, **(a1 + 208) - *(a1 + 200), v40);
    v41 = *(a1 + 200) + v37;
    *(a1 + 200) = v41;
    v42 = *(a1 + 208);
    if (*v42 < v41)
    {
      *v42 = v41;
    }
  }

  v43 = *(a2 + 216);
  if (v43)
  {
    v44 = *(a1 + 216);
    sub_1958E5C((a1 + 216), v44 + v43);
    v45 = *(a1 + 224);
    *(a1 + 216) += *(a2 + 216);
    memcpy((v45 + 4 * v44), *(a2 + 224), 4 * *(a2 + 216));
  }

  v46 = *(a2 + 40);
  if (v46)
  {
    if (v46)
    {
      *(a1 + 40) |= 1u;
      v48 = *(a1 + 232);
      if (!v48)
      {
        v49 = *(a1 + 8);
        v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if (v49)
        {
          v50 = *v50;
        }

        v48 = sub_14BCA7C(v50);
        *(a1 + 232) = v48;
      }

      if (*(a2 + 232))
      {
        v51 = *(a2 + 232);
      }

      else
      {
        v51 = &off_2772380;
      }

      sub_129DA38(v48, v51);
      if ((v46 & 2) == 0)
      {
LABEL_27:
        if ((v46 & 4) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_62;
      }
    }

    else if ((v46 & 2) == 0)
    {
      goto LABEL_27;
    }

    *(a1 + 40) |= 2u;
    v52 = *(a1 + 240);
    if (!v52)
    {
      v53 = *(a1 + 8);
      v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
      if (v53)
      {
        v54 = *v54;
      }

      v52 = sub_14BCAFC(v54);
      *(a1 + 240) = v52;
    }

    if (*(a2 + 240))
    {
      v55 = *(a2 + 240);
    }

    else
    {
      v55 = &off_27723B0;
    }

    sub_135B6B4(v52, v55);
    if ((v46 & 4) == 0)
    {
LABEL_28:
      if ((v46 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_70;
    }

LABEL_62:
    *(a1 + 40) |= 4u;
    v56 = *(a1 + 248);
    if (!v56)
    {
      v57 = *(a1 + 8);
      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
      if (v57)
      {
        v58 = *v58;
      }

      v56 = sub_14BD0D0(v58);
      *(a1 + 248) = v56;
    }

    if (*(a2 + 248))
    {
      v59 = *(a2 + 248);
    }

    else
    {
      v59 = &off_27726B0;
    }

    sub_148465C(v56, v59, a3);
    if ((v46 & 8) == 0)
    {
LABEL_29:
      if ((v46 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_78;
    }

LABEL_70:
    *(a1 + 40) |= 8u;
    v60 = *(a1 + 256);
    if (!v60)
    {
      v61 = *(a1 + 8);
      v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
      if (v61)
      {
        v62 = *v62;
      }

      v60 = sub_14BCFFC(v62);
      *(a1 + 256) = v60;
    }

    if (*(a2 + 256))
    {
      v63 = *(a2 + 256);
    }

    else
    {
      v63 = &off_2772638;
    }

    sub_1482F1C(v60, v63);
    if ((v46 & 0x10) == 0)
    {
LABEL_30:
      if ((v46 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_86;
    }

LABEL_78:
    *(a1 + 40) |= 0x10u;
    v64 = *(a1 + 264);
    if (!v64)
    {
      v65 = *(a1 + 8);
      v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
      if (v65)
      {
        v66 = *v66;
      }

      v64 = sub_14BD174(v66);
      *(a1 + 264) = v64;
    }

    if (*(a2 + 264))
    {
      v67 = *(a2 + 264);
    }

    else
    {
      v67 = &off_2772730;
    }

    sub_1484F58(v64, v67);
    if ((v46 & 0x20) == 0)
    {
LABEL_31:
      if ((v46 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_94;
    }

LABEL_86:
    *(a1 + 40) |= 0x20u;
    v68 = *(a1 + 272);
    if (!v68)
    {
      v69 = *(a1 + 8);
      v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
      if (v69)
      {
        v70 = *v70;
      }

      v68 = sub_14BCA7C(v70);
      *(a1 + 272) = v68;
    }

    if (*(a2 + 272))
    {
      v71 = *(a2 + 272);
    }

    else
    {
      v71 = &off_2772380;
    }

    sub_129DA38(v68, v71);
    if ((v46 & 0x40) == 0)
    {
LABEL_32:
      if ((v46 & 0x80) == 0)
      {
LABEL_34:
        *(a1 + 40) |= v46;
        goto LABEL_35;
      }

LABEL_33:
      *(a1 + 284) = *(a2 + 284);
      goto LABEL_34;
    }

LABEL_94:
    *(a1 + 280) = *(a2 + 280);
    if ((v46 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_35:
  if ((v46 & 0xF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v46 & 0x100) != 0)
  {
    *(a1 + 288) = *(a2 + 288);
    if ((v46 & 0x200) == 0)
    {
LABEL_38:
      if ((v46 & 0x400) == 0)
      {
        goto LABEL_39;
      }

LABEL_98:
      *(a1 + 296) = *(a2 + 296);
      if ((v46 & 0x800) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((v46 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  *(a1 + 292) = *(a2 + 292);
  if ((v46 & 0x400) != 0)
  {
    goto LABEL_98;
  }

LABEL_39:
  if ((v46 & 0x800) != 0)
  {
LABEL_40:
    *(a1 + 300) = *(a2 + 300);
  }

LABEL_41:
  *(a1 + 40) |= v46;
LABEL_42:
  sub_225EA0C(a1 + 16, a2 + 16);
  v47 = *(a2 + 8);
  if (v47)
  {

    sub_1957EF4((a1 + 8), (v47 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_148A14C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 56);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    v5 = sub_1490E5C(*(*(a1 + 64) + 8 * v3));
    v3 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 80);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = sub_16EA33C(*(*(a1 + 88) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_148A2D8(a1 + 96);
  if (!result)
  {
    return result;
  }

  result = sub_12D45E0(a1 + 120);
  if (!result)
  {
    return result;
  }

  v9 = *(a1 + 152);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = sub_14A14B0(*(*(a1 + 160) + 8 * v9));
    result = 0;
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v12 = *(a1 + 176);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = sub_149EC98(*(*(a1 + 184) + 8 * v12));
    result = 0;
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  v15 = *(a1 + 200);
  while (v15 >= 1)
  {
    v16 = v15 - 1;
    v17 = sub_149B3A0(*(*(a1 + 208) + 8 * v15));
    result = 0;
    v15 = v16;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v18 = *(a1 + 40);
  if ((v18 & 4) != 0)
  {
    result = sub_1484A28(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v18 = *(a1 + 40);
  }

  if ((v18 & 8) != 0)
  {
    v20 = *(a1 + 256);
    result = sub_195228C(v20 + 16);
    if (!result)
    {
      return result;
    }

    result = sub_1483078(v20 + 48);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 40) & 0x10) != 0)
    {
      goto LABEL_30;
    }

    return 1;
  }

  if ((v18 & 0x10) == 0)
  {
    return 1;
  }

LABEL_30:
  v19 = *(a1 + 264);
  if ((*(v19 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_147D40C(*(v19 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_148A2D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if (!sub_12B329C(v4 + 24))
    {
      break;
    }

    --v2;
  }

  while (sub_1483078(v4 + 48));
  return v3 < 1;
}

uint64_t sub_148A34C(uint64_t a1)
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
  if (a1 != &off_27729B8)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_16E9760(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_156417C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_148A410(uint64_t a1)
{
  sub_148A34C(a1);

  operator delete();
}

uint64_t sub_148A448(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1469288(v4);
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
      result = sub_16E979C(*(v1 + 48));
    }

    *(v1 + 56) = -1;
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

char *sub_148A4E8(uint64_t a1, char *a2, int32x2_t *a3)
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

    if (v11 != 2)
    {
      if (v11 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

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

        v25 = sub_16F5CD4(v27);
        *(a1 + 48) = v25;
        v7 = v30;
      }

      v16 = sub_220D038(a3, v25, v7);
LABEL_38:
      v30 = v16;
      if (!v16)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    }

    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    LODWORD(v17) = *v7;
    if ((v17 & 0x80000000) == 0)
    {
      v18 = v7 + 1;
LABEL_42:
      v30 = v18;
      *(a1 + 56) = v17;
      goto LABEL_43;
    }

    v17 = (v7[1] << 7) + v17 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v18 = v7 + 2;
      goto LABEL_42;
    }

    v28 = sub_19587DC(v7, v17);
    v30 = v28;
    *(a1 + 56) = v29;
    if (!v28)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v30, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = v19 + 1;
      v30 = v19 + 1;
      v21 = *(a1 + 40);
      if (v21 && (v22 = *(a1 + 32), v22 < *v21))
      {
        *(a1 + 32) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_14BBAAC(*(a1 + 24));
        v23 = sub_19593CC(a1 + 24, v24);
        v20 = v30;
      }

      v19 = sub_220D278(a3, v23, v20);
      v30 = v19;
      if (!v19)
      {
        goto LABEL_50;
      }

      if (*a3 <= v19 || *v19 != 26)
      {
        goto LABEL_43;
      }
    }
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
    goto LABEL_38;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_50:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_148A758(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
    *__dst = 10;
    v7 = *(v6 + 44);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_16E9CA0(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 56);
    *__dst = 16;
    __dst[1] = v10;
    if (v10 > 0x7F)
    {
      __dst[1] = v10 | 0x80;
      v11 = v10 >> 7;
      __dst[2] = v10 >> 7;
      v9 = __dst + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = __dst[2];
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
      v9 = __dst + 2;
    }
  }

  else
  {
    v9 = __dst;
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

      v9 = sub_1469560(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v9;
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

  if ((*a3 - v9) >= v22)
  {
    v24 = v22;
    memcpy(v9, v23, v22);
    v9 += v24;
    return v9;
  }

  return sub_1957130(a3, v23, v22, v9);
}

uint64_t sub_148A980(uint64_t a1)
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
      v7 = sub_146981C(v6);
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
      v9 = sub_16E9F88(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(a1 + 56);
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
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_148AA98(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_1565F00((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
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

        v10 = sub_16F5CD4(v12);
        *(result + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E7C0;
      }

      sub_16EA1A8(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(result + 56) = *(a2 + 56);
    }

    *(result + 16) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((result + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_148ABC4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16EA33C(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_148AC04(uint64_t a1)
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
  if (a1 != &off_27729F8)
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

void sub_148ACC4(uint64_t a1)
{
  sub_148AC04(a1);

  operator delete();
}

uint64_t sub_148ACFC(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_144E5CC(*(result + 40));
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

char *sub_148AD5C(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_148AF94(uint64_t a1, char *a2, unint64_t *a3)
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

uint64_t sub_148B14C(uint64_t a1)
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

uint64_t sub_148B1DC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_148B21C(void *a1)
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

void sub_148B290(void *a1)
{
  sub_148B21C(a1);

  operator delete();
}

uint64_t sub_148B2C8(uint64_t a1)
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

char *sub_148B2EC(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_148B4D0(uint64_t a1, char *__dst, unint64_t *a3)
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

uint64_t sub_148B680(uint64_t a1)
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

uint64_t sub_148B734(uint64_t a1)
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
  if (a1 != &off_2772A28)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16E9760(v6);
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

void sub_148B7EC(uint64_t a1)
{
  sub_148B734(a1);

  operator delete();
}

unsigned __int8 *sub_148B824(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_16E979C(*(result + 3));
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

char *sub_148B884(uint64_t a1, char *a2, int32x2_t *a3)
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
      v24 = v16;
      *(a1 + 32) = v17;
      goto LABEL_30;
    }

    v22 = sub_1958770(v7, v17);
    v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (sub_195ADC0(a3, &v24, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 24);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_16F5CD4(v21);
      *(a1 + 24) = v19;
      v7 = v24;
    }

    v15 = sub_220D038(a3, v19, v7);
LABEL_29:
    v24 = v15;
    if (!v15)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
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
    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_37:
  v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

char *sub_148BA5C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 10;
    v7 = *(v6 + 44);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_16E9CA0(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v10;
    if (v10 > 0x7F)
    {
      __dst[1] = v10 | 0x80;
      v11 = v10 >> 7;
      __dst[2] = v10 >> 7;
      v9 = __dst + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = __dst[2];
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
      v9 = __dst + 2;
    }
  }

  else
  {
    v9 = __dst;
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v9;
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

  if ((*a3 - v9) >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_148BBE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16E9F88(*(a1 + 24));
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

void sub_148BCA4(uint64_t result, uint64_t a2)
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

        v5 = sub_16F5CD4(v7);
        *(result + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277E7C0;
      }

      sub_16EA1A8(v5, v8);
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

uint64_t sub_148BD74(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16EA33C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_148BDB4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E5FC0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0u;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0u;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = 0u;
  *(a1 + 224) = a2;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = a2;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a2;
  *(a1 + 288) = 0;
  *(a1 + 296) = a2;
  *(a1 + 304) = 0u;
  *(a1 + 320) = a2;
  *(a1 + 328) = 0u;
  *(a1 + 344) = a2;
  *(a1 + 352) = 0u;
  *(a1 + 368) = a2;
  *(a1 + 376) = 0u;
  *(a1 + 392) = a2;
  *(a1 + 400) = 0u;
  *(a1 + 416) = a2;
  *(a1 + 424) = 0u;
  *(a1 + 440) = a2;
  *(a1 + 448) = 0u;
  *(a1 + 464) = a2;
  *(a1 + 472) = 0u;
  *(a1 + 488) = a2;
  *(a1 + 496) = 0u;
  *(a1 + 512) = a2;
  *(a1 + 520) = 0u;
  *(a1 + 536) = a2;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 568) = a2;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 592) = a2;
  *(a1 + 600) = 0;
  *(a1 + 608) = a2;
  *(a1 + 616) = 0u;
  *(a1 + 632) = a2;
  *(a1 + 640) = 0u;
  *(a1 + 656) = a2;
  *(a1 + 664) = 0u;
  *(a1 + 680) = a2;
  *(a1 + 688) = 0u;
  *(a1 + 704) = &qword_278E990;
  *(a1 + 712) = &qword_278E990;
  *(a1 + 720) = &qword_278E990;
  *(a1 + 728) = &qword_278E990;
  *(a1 + 736) = &qword_278E990;
  *(a1 + 744) = &qword_278E990;
  *(a1 + 752) = &qword_278E990;
  *(a1 + 760) = &qword_278E990;
  *(a1 + 768) = &qword_278E990;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_148BF70(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_148BFA0(void *a1)
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

  sub_148C14C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1565388(a1 + 85);
  sub_1565304(a1 + 82);
  sub_1565280(a1 + 79);
  sub_1565280(a1 + 76);
  sub_1956ABC((a1 + 73));
  sub_1956ABC((a1 + 70));
  sub_15651FC(a1 + 67);
  sub_1565178(a1 + 64);
  sub_15650F4(a1 + 61);
  sub_1565070(a1 + 58);
  sub_1564AC4(a1 + 55);
  sub_1564FEC(a1 + 52);
  sub_1564F68(a1 + 49);
  sub_1564494(a1 + 46);
  sub_144A1C8(a1 + 43);
  sub_144A1C8(a1 + 40);
  sub_144A1C8(a1 + 37);
  sub_1956ABC((a1 + 34));
  sub_1956ABC((a1 + 31));
  sub_1564EE4(a1 + 28);
  sub_1564E60(a1 + 25);
  sub_1956ABC((a1 + 22));
  sub_1956ABC((a1 + 19));
  sub_1956AFC(a1 + 16);
  sub_1956AFC(a1 + 13);
  sub_1956AFC(a1 + 10);
  sub_1564DDC(a1 + 7);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_148C14C(uint64_t result)
{
  v1 = result;
  if (*(result + 704) != &qword_278E990)
  {
    sub_194E89C((result + 704));
  }

  if (*(result + 712) != &qword_278E990)
  {
    sub_194E89C((result + 712));
  }

  if (*(result + 720) != &qword_278E990)
  {
    sub_194E89C((result + 720));
  }

  if (*(result + 728) != &qword_278E990)
  {
    sub_194E89C((result + 728));
  }

  if (*(result + 736) != &qword_278E990)
  {
    sub_194E89C((result + 736));
  }

  if (*(result + 744) != &qword_278E990)
  {
    sub_194E89C((result + 744));
  }

  if (*(result + 752) != &qword_278E990)
  {
    sub_194E89C((result + 752));
  }

  if (*(result + 760) != &qword_278E990)
  {
    sub_194E89C((result + 760));
  }

  if (*(result + 768) != &qword_278E990)
  {
    sub_194E89C((result + 768));
  }

  if (result != &off_2772A50)
  {
    v2 = *(result + 776);
    if (v2)
    {
      sub_145C090(v2);
      operator delete();
    }

    v3 = v1[98];
    if (v3)
    {
      sub_147CA9C(v3);
      operator delete();
    }

    v4 = v1[99];
    if (v4)
    {
      sub_147BDC8(v4);
      operator delete();
    }

    v5 = v1[100];
    if (v5)
    {
      sub_14B3C28(v5);
      operator delete();
    }

    v6 = v1[101];
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = v1[102];
    if (v7)
    {
      sub_146CA78(v7);
      operator delete();
    }

    v8 = v1[103];
    if (v8)
    {
      sub_1458388(v8);
      operator delete();
    }

    v9 = v1[104];
    if (v9)
    {
      sub_147A07C(v9);
      operator delete();
    }

    v10 = v1[105];
    if (v10)
    {
      sub_147A07C(v10);
      operator delete();
    }

    v11 = v1[106];
    if (v11)
    {
      sub_145B1C4(v11);
      operator delete();
    }

    v12 = v1[107];
    if (v12)
    {
      sub_145B1C4(v12);
      operator delete();
    }

    result = v1[108];
    if (result)
    {
      sub_14B9B28(result);

      operator delete();
    }
  }

  return result;
}

void sub_148C3BC(void *a1)
{
  sub_148BFA0(a1);

  operator delete();
}

uint64_t sub_148C3F4(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 72) + 8);
    do
    {
      v4 = *v3++;
      sub_146F644(v4);
      --v2;
    }

    while (v2);
    *(a1 + 64) = 0;
  }

  sub_12A41D0(a1 + 80);
  sub_12A41D0(a1 + 104);
  result = sub_12A41D0(a1 + 128);
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  v6 = *(a1 + 208);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 216) + 8);
    do
    {
      v8 = *v7++;
      result = sub_148A448(v8);
      --v6;
    }

    while (v6);
    *(a1 + 208) = 0;
  }

  v9 = *(a1 + 232);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 240) + 8);
    do
    {
      v11 = *v10++;
      result = sub_14A1FA8(v11);
      --v9;
    }

    while (v9);
    *(a1 + 232) = 0;
  }

  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  v12 = *(a1 + 304);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 312) + 8);
    do
    {
      v14 = *v13++;
      result = sub_144E5CC(v14);
      --v12;
    }

    while (v12);
    *(a1 + 304) = 0;
  }

  v15 = *(a1 + 328);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 336) + 8);
    do
    {
      v17 = *v16++;
      result = sub_144E5CC(v17);
      --v15;
    }

    while (v15);
    *(a1 + 328) = 0;
  }

  v18 = *(a1 + 352);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 360) + 8);
    do
    {
      v20 = *v19++;
      result = sub_144E5CC(v20);
      --v18;
    }

    while (v18);
    *(a1 + 352) = 0;
  }

  v21 = *(a1 + 376);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 384) + 8);
    do
    {
      v23 = *v22++;
      result = sub_14620AC(v23);
      --v21;
    }

    while (v21);
    *(a1 + 376) = 0;
  }

  v24 = *(a1 + 400);
  if (v24 >= 1)
  {
    v25 = (*(a1 + 408) + 8);
    do
    {
      v26 = *v25++;
      result = sub_146AAD0(v26);
      --v24;
    }

    while (v24);
    *(a1 + 400) = 0;
  }

  v27 = *(a1 + 424);
  if (v27 >= 1)
  {
    v28 = (*(a1 + 432) + 8);
    do
    {
      v29 = *v28++;
      result = sub_146B2D4(v29);
      --v27;
    }

    while (v27);
    *(a1 + 424) = 0;
  }

  v30 = *(a1 + 448);
  if (v30 >= 1)
  {
    v31 = (*(a1 + 456) + 8);
    do
    {
      v32 = *v31++;
      result = sub_147D580(v32);
      --v30;
    }

    while (v30);
    *(a1 + 448) = 0;
  }

  v33 = *(a1 + 472);
  if (v33 >= 1)
  {
    v34 = (*(a1 + 480) + 8);
    do
    {
      v35 = *v34++;
      result = sub_148ACFC(v35);
      --v33;
    }

    while (v33);
    *(a1 + 472) = 0;
  }

  v36 = *(a1 + 496);
  if (v36 >= 1)
  {
    v37 = (*(a1 + 504) + 8);
    do
    {
      v38 = *v37++;
      result = sub_14731E0(v38);
      --v36;
    }

    while (v36);
    *(a1 + 496) = 0;
  }

  v39 = *(a1 + 520);
  if (v39 >= 1)
  {
    v40 = (*(a1 + 528) + 8);
    do
    {
      v41 = *v40++;
      result = sub_1473C78(v41);
      --v39;
    }

    while (v39);
    *(a1 + 520) = 0;
  }

  v42 = *(a1 + 544);
  if (v42 >= 1)
  {
    v43 = (*(a1 + 552) + 8);
    do
    {
      v44 = *v43++;
      result = sub_148B2C8(v44);
      --v42;
    }

    while (v42);
    *(a1 + 544) = 0;
  }

  *(a1 + 560) = 0;
  *(a1 + 584) = 0;
  v45 = *(a1 + 616);
  if (v45 >= 1)
  {
    v46 = (*(a1 + 624) + 8);
    do
    {
      v47 = *v46++;
      result = sub_144FDD0(v47);
      --v45;
    }

    while (v45);
    *(a1 + 616) = 0;
  }

  v48 = *(a1 + 640);
  if (v48 >= 1)
  {
    v49 = (*(a1 + 648) + 8);
    do
    {
      v50 = *v49++;
      result = sub_144FDD0(v50);
      --v48;
    }

    while (v48);
    *(a1 + 640) = 0;
  }

  v51 = *(a1 + 664);
  if (v51 >= 1)
  {
    v52 = (*(a1 + 672) + 8);
    do
    {
      v53 = *v52++;
      result = sub_1486888(v53);
      --v51;
    }

    while (v51);
    *(a1 + 664) = 0;
  }

  v54 = *(a1 + 688);
  if (v54 >= 1)
  {
    v55 = (*(a1 + 696) + 8);
    do
    {
      v56 = *v55++;
      result = sub_148B824(v56);
      --v54;
    }

    while (v54);
    *(a1 + 688) = 0;
  }

  v57 = *(a1 + 40);
  if (v57)
  {
    if ((v57 & 1) == 0)
    {
      if ((v57 & 2) == 0)
      {
        goto LABEL_76;
      }

LABEL_87:
      v59 = *(a1 + 712) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v59 + 23) < 0)
      {
        **v59 = 0;
        *(v59 + 8) = 0;
        if ((v57 & 4) != 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        *v59 = 0;
        *(v59 + 23) = 0;
        if ((v57 & 4) != 0)
        {
          goto LABEL_91;
        }
      }

LABEL_77:
      if ((v57 & 8) == 0)
      {
        goto LABEL_78;
      }

LABEL_95:
      v61 = *(a1 + 728) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v61 + 23) < 0)
      {
        **v61 = 0;
        *(v61 + 8) = 0;
        if ((v57 & 0x10) != 0)
        {
          goto LABEL_99;
        }
      }

      else
      {
        *v61 = 0;
        *(v61 + 23) = 0;
        if ((v57 & 0x10) != 0)
        {
          goto LABEL_99;
        }
      }

LABEL_79:
      if ((v57 & 0x20) == 0)
      {
        goto LABEL_80;
      }

LABEL_103:
      v63 = *(a1 + 744) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v63 + 23) < 0)
      {
        **v63 = 0;
        *(v63 + 8) = 0;
        if ((v57 & 0x40) != 0)
        {
          goto LABEL_107;
        }
      }

      else
      {
        *v63 = 0;
        *(v63 + 23) = 0;
        if ((v57 & 0x40) != 0)
        {
          goto LABEL_107;
        }
      }

LABEL_81:
      if ((v57 & 0x80) == 0)
      {
        goto LABEL_114;
      }

LABEL_111:
      v65 = *(a1 + 760) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v65 + 23) < 0)
      {
        **v65 = 0;
        *(v65 + 8) = 0;
      }

      else
      {
        *v65 = 0;
        *(v65 + 23) = 0;
      }

      goto LABEL_114;
    }

    v58 = *(a1 + 704) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v58 + 23) < 0)
    {
      **v58 = 0;
      *(v58 + 8) = 0;
      if ((v57 & 2) != 0)
      {
        goto LABEL_87;
      }
    }

    else
    {
      *v58 = 0;
      *(v58 + 23) = 0;
      if ((v57 & 2) != 0)
      {
        goto LABEL_87;
      }
    }

LABEL_76:
    if ((v57 & 4) == 0)
    {
      goto LABEL_77;
    }

LABEL_91:
    v60 = *(a1 + 720) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v60 + 23) < 0)
    {
      **v60 = 0;
      *(v60 + 8) = 0;
      if ((v57 & 8) != 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      *v60 = 0;
      *(v60 + 23) = 0;
      if ((v57 & 8) != 0)
      {
        goto LABEL_95;
      }
    }

LABEL_78:
    if ((v57 & 0x10) == 0)
    {
      goto LABEL_79;
    }

LABEL_99:
    v62 = *(a1 + 736) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v62 + 23) < 0)
    {
      **v62 = 0;
      *(v62 + 8) = 0;
      if ((v57 & 0x20) != 0)
      {
        goto LABEL_103;
      }
    }

    else
    {
      *v62 = 0;
      *(v62 + 23) = 0;
      if ((v57 & 0x20) != 0)
      {
        goto LABEL_103;
      }
    }

LABEL_80:
    if ((v57 & 0x40) == 0)
    {
      goto LABEL_81;
    }

LABEL_107:
    v64 = *(a1 + 752) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v64 + 23) < 0)
    {
      **v64 = 0;
      *(v64 + 8) = 0;
      if ((v57 & 0x80) == 0)
      {
        goto LABEL_114;
      }
    }

    else
    {
      *v64 = 0;
      *(v64 + 23) = 0;
      if ((v57 & 0x80) == 0)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_111;
  }

LABEL_114:
  if ((v57 & 0xFF00) == 0)
  {
    goto LABEL_124;
  }

  if ((v57 & 0x100) != 0)
  {
    v68 = *(a1 + 768) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v68 + 23) < 0)
    {
      **v68 = 0;
      *(v68 + 8) = 0;
      if ((v57 & 0x200) != 0)
      {
        goto LABEL_150;
      }
    }

    else
    {
      *v68 = 0;
      *(v68 + 23) = 0;
      if ((v57 & 0x200) != 0)
      {
        goto LABEL_150;
      }
    }

LABEL_117:
    if ((v57 & 0x400) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_151;
  }

  if ((v57 & 0x200) == 0)
  {
    goto LABEL_117;
  }

LABEL_150:
  result = sub_145C210(*(a1 + 776));
  if ((v57 & 0x400) == 0)
  {
LABEL_118:
    if ((v57 & 0x800) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_152;
  }

LABEL_151:
  result = sub_147CC14(*(a1 + 784));
  if ((v57 & 0x800) == 0)
  {
LABEL_119:
    if ((v57 & 0x1000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_153;
  }

LABEL_152:
  result = sub_147BF68(*(a1 + 792));
  if ((v57 & 0x1000) == 0)
  {
LABEL_120:
    if ((v57 & 0x2000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_154;
  }

LABEL_153:
  result = sub_148176C(*(a1 + 800));
  if ((v57 & 0x2000) == 0)
  {
LABEL_121:
    if ((v57 & 0x4000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_155;
  }

LABEL_154:
  result = sub_144E5CC(*(a1 + 808));
  if ((v57 & 0x4000) == 0)
  {
LABEL_122:
    if ((v57 & 0x8000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

LABEL_155:
  result = sub_146CB98(*(a1 + 816));
  if ((v57 & 0x8000) != 0)
  {
LABEL_123:
    result = sub_144E5CC(*(a1 + 824));
  }

LABEL_124:
  if ((v57 & 0x1F0000) == 0)
  {
    goto LABEL_131;
  }

  if ((v57 & 0x10000) != 0)
  {
    result = sub_147447C(*(a1 + 832));
    if ((v57 & 0x20000) == 0)
    {
LABEL_127:
      if ((v57 & 0x40000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_146;
    }
  }

  else if ((v57 & 0x20000) == 0)
  {
    goto LABEL_127;
  }

  result = sub_147447C(*(a1 + 840));
  if ((v57 & 0x40000) == 0)
  {
LABEL_128:
    if ((v57 & 0x80000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_147;
  }

LABEL_146:
  result = sub_145B310(*(a1 + 848));
  if ((v57 & 0x80000) == 0)
  {
LABEL_129:
    if ((v57 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

LABEL_147:
  result = sub_145B310(*(a1 + 856));
  if ((v57 & 0x100000) != 0)
  {
LABEL_130:
    result = sub_148CA40(*(a1 + 864));
  }

LABEL_131:
  if ((v57 & 0xE00000) != 0)
  {
    *(a1 + 880) = 0;
    *(a1 + 872) = 0;
  }

  if (HIBYTE(v57))
  {
    *(a1 + 884) = 0u;
    *(a1 + 900) = 0u;
  }

  if ((*(a1 + 44) & 0x7F) != 0)
  {
    *(a1 + 932) = 0;
    *(a1 + 916) = 0u;
  }

  v67 = *(a1 + 8);
  v66 = (a1 + 8);
  v66[4] = 0;
  if (v67)
  {

    return sub_1957EA8(v66);
  }

  return result;
}

uint64_t sub_148CA40(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14B973C(v4);
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

char *sub_148CC30(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x200000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 872);
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

  v11 = *(a1 + 64);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 72) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 48);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_1470AF0(v13, v15, a3);
    }
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v6 = sub_128AEEC(a3, 4, (*(a1 + 712) & 0xFFFFFFFFFFFFFFFELL), v6);
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v6 = sub_128AEEC(a3, 3, (*(a1 + 704) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((v5 & 0x400000) == 0)
  {
LABEL_21:
    v16 = v6;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v17 = *(a1 + 876);
  *v6 = 40;
  v6[1] = v17;
  if (v17 > 0x7F)
  {
    v6[1] = v17 | 0x80;
    v18 = v17 >> 7;
    v6[2] = v17 >> 7;
    v16 = v6 + 3;
    if (v17 >= 0x4000)
    {
      LOBYTE(v19) = v6[2];
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
    v16 = v6 + 2;
  }

LABEL_31:
  if ((v5 & 0x800000) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 880);
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

  if ((v5 & 4) != 0)
  {
    v21 = sub_128AEEC(a3, 7, (*(a1 + 720) & 0xFFFFFFFFFFFFFFFELL), v21);
  }

  if ((v5 & 0x1000000) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v27 = *(a1 + 884);
    *v21 = 64;
    v21[1] = v27;
    if (v27 > 0x7F)
    {
      v21[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v21[2] = v27 >> 7;
      v26 = v21 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v21) = v21[2];
        do
        {
          *(v26 - 1) = v21 | 0x80;
          v21 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v21 + 2;
    }
  }

  else
  {
    v26 = v21;
  }

  v30 = *(a1 + 88);
  if (v30 >= 1)
  {
    v31 = 8;
    do
    {
      v26 = sub_1355F54(a3, 9, *(*(a1 + 96) + v31), v26);
      v31 += 8;
      --v30;
    }

    while (v30);
  }

  if ((v5 & 0x2000000) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v33 = *(a1 + 888);
    *v26 = 80;
    v26[1] = v33;
    if (v33 > 0x7F)
    {
      v26[1] = v33 | 0x80;
      v34 = v33 >> 7;
      v26[2] = v33 >> 7;
      v32 = v26 + 3;
      if (v33 >= 0x4000)
      {
        LOBYTE(v35) = v26[2];
        do
        {
          *(v32 - 1) = v35 | 0x80;
          v35 = v34 >> 7;
          *v32++ = v34 >> 7;
          v36 = v34 >> 14;
          v34 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v32 = v26 + 2;
    }
  }

  else
  {
    v32 = v26;
  }

  if ((v5 & 8) != 0)
  {
    v32 = sub_128AEEC(a3, 16, (*(a1 + 728) & 0xFFFFFFFFFFFFFFFELL), v32);
  }

  if ((v5 & 0x4000000) != 0)
  {
    if (*a3 <= v32)
    {
      v32 = sub_225EB68(a3, v32);
    }

    v38 = *(a1 + 892);
    *v32 = 392;
    v32[2] = v38;
    if (v38 > 0x7F)
    {
      v32[2] = v38 | 0x80;
      v39 = v38 >> 7;
      v32[3] = v38 >> 7;
      v37 = v32 + 4;
      if (v38 >= 0x4000)
      {
        LOBYTE(v32) = v32[3];
        do
        {
          *(v37 - 1) = v32 | 0x80;
          LODWORD(v32) = v39 >> 7;
          *v37++ = v39 >> 7;
          v40 = v39 >> 14;
          v39 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v37 = v32 + 3;
    }
  }

  else
  {
    v37 = v32;
  }

  if ((v5 & 0x10) != 0)
  {
    v37 = sub_128AEEC(a3, 18, (*(a1 + 736) & 0xFFFFFFFFFFFFFFFELL), v37);
  }

  if ((v5 & 0x8000000) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v42 = *(a1 + 896);
    *v37 = 408;
    v37[2] = v42;
    if (v42 > 0x7F)
    {
      v37[2] = v42 | 0x80;
      v43 = v42 >> 7;
      v37[3] = v42 >> 7;
      v41 = v37 + 4;
      if (v42 >= 0x4000)
      {
        LOBYTE(v37) = v37[3];
        do
        {
          *(v41 - 1) = v37 | 0x80;
          LODWORD(v37) = v43 >> 7;
          *v41++ = v43 >> 7;
          v44 = v43 >> 14;
          v43 >>= 7;
        }

        while (v44);
      }
    }

    else
    {
      v41 = v37 + 3;
    }
  }

  else
  {
    v41 = v37;
  }

  v45 = *(a1 + 112);
  if (v45 >= 1)
  {
    v46 = 8;
    do
    {
      v41 = sub_1355F54(a3, 20, *(*(a1 + 120) + v46), v41);
      v46 += 8;
      --v45;
    }

    while (v45);
  }

  v47 = *(a1 + 136);
  if (v47 >= 1)
  {
    v48 = 8;
    do
    {
      v49 = *(*(a1 + 144) + v48);
      v50 = *(v49 + 23);
      if (v50 < 0 && (v50 = v49[1], v50 > 127) || (*a3 - v41 + 13) < v50)
      {
        v41 = sub_1957480(a3, 21, v49, v41);
      }

      else
      {
        *v41 = 426;
        v41[2] = v50;
        if (*(v49 + 23) < 0)
        {
          v49 = *v49;
        }

        v51 = v41 + 3;
        memcpy(v41 + 3, v49, v50);
        v41 = &v51[v50];
      }

      v48 += 8;
      --v47;
    }

    while (v47);
  }

  v52 = *(a1 + 168);
  if (v52 > 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    *v41 = 434;
    v53 = v41 + 2;
    if (v52 >= 0x80)
    {
      do
      {
        *v53++ = v52 | 0x80;
        v54 = v52 >> 7;
        v290 = v52 >> 14;
        v52 >>= 7;
      }

      while (v290);
    }

    else
    {
      LOBYTE(v54) = v52;
    }

    *v53 = v54;
    v55 = *(a1 + 160);
    v56 = &v55[*(a1 + 152)];
    v57 = v53 + 1;
    do
    {
      if (*a3 <= v57)
      {
        v57 = sub_225EB68(a3, v57);
      }

      v59 = *v55++;
      v58 = v59;
      *v57 = v59;
      if (v59 > 0x7F)
      {
        *v57 = v58 | 0x80;
        v60 = v58 >> 7;
        v57[1] = v58 >> 7;
        v41 = v57 + 2;
        if (v58 >= 0x4000)
        {
          LOBYTE(v61) = v57[1];
          do
          {
            *(v41 - 1) = v61 | 0x80;
            v61 = v60 >> 7;
            *v41++ = v60 >> 7;
            v62 = v60 >> 14;
            v60 >>= 7;
          }

          while (v62);
        }
      }

      else
      {
        v41 = v57 + 1;
      }

      v57 = v41;
    }

    while (v55 < v56);
  }

  v63 = *(a1 + 192);
  if (v63 >= 1)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    *v41 = 442;
    v64 = v41 + 2;
    if (v63 >= 0x80)
    {
      do
      {
        *v64++ = v63 | 0x80;
        v65 = v63 >> 7;
        v291 = v63 >> 14;
        v63 >>= 7;
      }

      while (v291);
    }

    else
    {
      LOBYTE(v65) = v63;
    }

    *v64 = v65;
    v66 = *(a1 + 184);
    v67 = &v66[*(a1 + 176)];
    v68 = v64 + 1;
    do
    {
      if (*a3 <= v68)
      {
        v68 = sub_225EB68(a3, v68);
      }

      v70 = *v66++;
      v69 = v70;
      *v68 = v70;
      if (v70 > 0x7F)
      {
        *v68 = v69 | 0x80;
        v71 = v69 >> 7;
        v68[1] = v69 >> 7;
        v41 = v68 + 2;
        if (v69 >= 0x4000)
        {
          LOBYTE(v72) = v68[1];
          do
          {
            *(v41 - 1) = v72 | 0x80;
            v72 = v71 >> 7;
            *v41++ = v71 >> 7;
            v73 = v71 >> 14;
            v71 >>= 7;
          }

          while (v73);
        }
      }

      else
      {
        v41 = v68 + 1;
      }

      v68 = v41;
    }

    while (v66 < v67);
  }

  v74 = *(a1 + 208);
  if (v74)
  {
    for (j = 0; j != v74; ++j)
    {
      if (*a3 <= v41)
      {
        v41 = sub_225EB68(a3, v41);
      }

      v76 = *(*(a1 + 216) + 8 * j + 8);
      *v41 = 458;
      v77 = *(v76 + 20);
      v41[2] = v77;
      if (v77 > 0x7F)
      {
        v78 = sub_19575D0(v77, v41 + 2);
      }

      else
      {
        v78 = v41 + 3;
      }

      v41 = sub_148A758(v76, v78, a3);
    }
  }

  if ((v5 & 0x10000000) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v80 = *(a1 + 900);
    *v41 = 464;
    v41[2] = v80;
    if (v80 > 0x7F)
    {
      v41[2] = v80 | 0x80;
      v81 = v80 >> 7;
      v41[3] = v80 >> 7;
      v79 = v41 + 4;
      if (v80 >= 0x4000)
      {
        LOBYTE(v82) = v41[3];
        do
        {
          *(v79 - 1) = v82 | 0x80;
          v82 = v81 >> 7;
          *v79++ = v81 >> 7;
          v83 = v81 >> 14;
          v81 >>= 7;
        }

        while (v83);
      }
    }

    else
    {
      v79 = v41 + 3;
    }
  }

  else
  {
    v79 = v41;
  }

  if ((v5 & 0x20000000) != 0)
  {
    if (*a3 <= v79)
    {
      v79 = sub_225EB68(a3, v79);
    }

    v85 = *(a1 + 904);
    *v79 = 480;
    v79[2] = v85;
    if (v85 > 0x7F)
    {
      v79[2] = v85 | 0x80;
      v86 = v85 >> 7;
      v79[3] = v85 >> 7;
      v84 = v79 + 4;
      if (v85 >= 0x4000)
      {
        LOBYTE(v87) = v79[3];
        do
        {
          *(v84 - 1) = v87 | 0x80;
          v87 = v86 >> 7;
          *v84++ = v86 >> 7;
          v88 = v86 >> 14;
          v86 >>= 7;
        }

        while (v88);
      }
    }

    else
    {
      v84 = v79 + 3;
    }
  }

  else
  {
    v84 = v79;
  }

  if ((v5 & 0x40000000) != 0)
  {
    if (*a3 <= v84)
    {
      v84 = sub_225EB68(a3, v84);
    }

    v90 = *(a1 + 908);
    *v84 = 488;
    v84[2] = v90;
    if (v90 > 0x7F)
    {
      v84[2] = v90 | 0x80;
      v91 = v90 >> 7;
      v84[3] = v90 >> 7;
      v89 = v84 + 4;
      if (v90 >= 0x4000)
      {
        LOBYTE(v84) = v84[3];
        do
        {
          *(v89 - 1) = v84 | 0x80;
          LODWORD(v84) = v91 >> 7;
          *v89++ = v91 >> 7;
          v92 = v91 >> 14;
          v91 >>= 7;
        }

        while (v92);
      }
    }

    else
    {
      v89 = v84 + 3;
    }
  }

  else
  {
    v89 = v84;
  }

  if (v5 < 0)
  {
    if (*a3 <= v89)
    {
      v89 = sub_225EB68(a3, v89);
    }

    v94 = *(a1 + 912);
    *v89 = 496;
    v89[2] = v94;
    if (v94 > 0x7F)
    {
      v89[2] = v94 | 0x80;
      v95 = v94 >> 7;
      v89[3] = v94 >> 7;
      v93 = v89 + 4;
      if (v94 >= 0x4000)
      {
        LOBYTE(v96) = v89[3];
        do
        {
          *(v93 - 1) = v96 | 0x80;
          v96 = v95 >> 7;
          *v93++ = v95 >> 7;
          v97 = v95 >> 14;
          v95 >>= 7;
        }

        while (v97);
      }
    }

    else
    {
      v93 = v89 + 3;
    }
  }

  else
  {
    v93 = v89;
  }

  v98 = *(a1 + 44);
  if (v98)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v99 = *(a1 + 916);
    *v93 = 504;
    v93[2] = v99;
    v93 += 3;
    if ((v98 & 2) == 0)
    {
LABEL_173:
      if ((v98 & 4) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_181;
    }
  }

  else if ((v98 & 2) == 0)
  {
    goto LABEL_173;
  }

  if (*a3 <= v93)
  {
    v93 = sub_225EB68(a3, v93);
  }

  v100 = *(a1 + 917);
  *v93 = 640;
  v93[2] = v100;
  v93 += 3;
  if ((v98 & 4) != 0)
  {
LABEL_181:
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v101 = *(a1 + 918);
    *v93 = 648;
    v93[2] = v101;
    v93 += 3;
  }

LABEL_184:
  v102 = *(a1 + 232);
  if (v102)
  {
    for (k = 0; k != v102; ++k)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v104 = *(*(a1 + 240) + 8 * k + 8);
      *v93 = 658;
      v105 = *(v104 + 20);
      v93[2] = v105;
      if (v105 > 0x7F)
      {
        v106 = sub_19575D0(v105, v93 + 2);
      }

      else
      {
        v106 = v93 + 3;
      }

      v93 = sub_14A2640(v104, v106, a3);
    }
  }

  v107 = *(a1 + 40);
  if ((v107 & 0x20) != 0)
  {
    v93 = sub_128AEEC(a3, 50, (*(a1 + 744) & 0xFFFFFFFFFFFFFFFELL), v93);
  }

  v108 = *(a1 + 264);
  if (v108 >= 1)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    *v93 = 922;
    v109 = v93 + 2;
    if (v108 >= 0x80)
    {
      do
      {
        *v109++ = v108 | 0x80;
        v110 = v108 >> 7;
        v292 = v108 >> 14;
        v108 >>= 7;
      }

      while (v292);
    }

    else
    {
      LOBYTE(v110) = v108;
    }

    *v109 = v110;
    v111 = *(a1 + 256);
    v112 = &v111[*(a1 + 248)];
    v113 = v109 + 1;
    do
    {
      if (*a3 <= v113)
      {
        v113 = sub_225EB68(a3, v113);
      }

      v115 = *v111++;
      v114 = v115;
      *v113 = v115;
      if (v115 > 0x7F)
      {
        *v113 = v114 | 0x80;
        v116 = v114 >> 7;
        v113[1] = v114 >> 7;
        v93 = v113 + 2;
        if (v114 >= 0x4000)
        {
          LOBYTE(v117) = v113[1];
          do
          {
            *(v93 - 1) = v117 | 0x80;
            v117 = v116 >> 7;
            *v93++ = v116 >> 7;
            v118 = v116 >> 14;
            v116 >>= 7;
          }

          while (v118);
        }
      }

      else
      {
        v93 = v113 + 1;
      }

      v113 = v93;
    }

    while (v111 < v112);
  }

  v119 = *(a1 + 288);
  if (v119 >= 1)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    *v93 = 930;
    v120 = v93 + 2;
    if (v119 >= 0x80)
    {
      do
      {
        *v120++ = v119 | 0x80;
        v121 = v119 >> 7;
        v293 = v119 >> 14;
        v119 >>= 7;
      }

      while (v293);
    }

    else
    {
      LOBYTE(v121) = v119;
    }

    *v120 = v121;
    v122 = *(a1 + 280);
    v123 = &v122[*(a1 + 272)];
    v124 = v120 + 1;
    do
    {
      if (*a3 <= v124)
      {
        v124 = sub_225EB68(a3, v124);
      }

      v126 = *v122++;
      v125 = v126;
      *v124 = v126;
      if (v126 > 0x7F)
      {
        *v124 = v125 | 0x80;
        v127 = v125 >> 7;
        v124[1] = v125 >> 7;
        v93 = v124 + 2;
        if (v125 >= 0x4000)
        {
          LOBYTE(v128) = v124[1];
          do
          {
            *(v93 - 1) = v128 | 0x80;
            v128 = v127 >> 7;
            *v93++ = v127 >> 7;
            v129 = v127 >> 14;
            v127 >>= 7;
          }

          while (v129);
        }
      }

      else
      {
        v93 = v124 + 1;
      }

      v124 = v93;
    }

    while (v122 < v123);
  }

  if ((v107 & 0x200) != 0)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v130 = *(a1 + 776);
    *v93 = 938;
    v131 = *(v130 + 20);
    v93[2] = v131;
    if (v131 > 0x7F)
    {
      v132 = sub_19575D0(v131, v93 + 2);
    }

    else
    {
      v132 = v93 + 3;
    }

    v93 = sub_145C564(v130, v132, a3);
  }

  v133 = *(a1 + 304);
  if (v133)
  {
    for (m = 0; m != v133; ++m)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v135 = *(*(a1 + 312) + 8 * m + 8);
      *v93 = 946;
      v136 = *(v135 + 20);
      v93[2] = v136;
      if (v136 > 0x7F)
      {
        v137 = sub_19575D0(v136, v93 + 2);
      }

      else
      {
        v137 = v93 + 3;
      }

      v93 = sub_14589F4(v135, v137, a3);
    }
  }

  v138 = *(a1 + 328);
  if (v138)
  {
    for (n = 0; n != v138; ++n)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v140 = *(*(a1 + 336) + 8 * n + 8);
      *v93 = 954;
      v141 = *(v140 + 20);
      v93[2] = v141;
      if (v141 > 0x7F)
      {
        v142 = sub_19575D0(v141, v93 + 2);
      }

      else
      {
        v142 = v93 + 3;
      }

      v93 = sub_14589F4(v140, v142, a3);
    }
  }

  v143 = *(a1 + 352);
  if (v143)
  {
    for (ii = 0; ii != v143; ++ii)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v145 = *(*(a1 + 360) + 8 * ii + 8);
      *v93 = 962;
      v146 = *(v145 + 20);
      v93[2] = v146;
      if (v146 > 0x7F)
      {
        v147 = sub_19575D0(v146, v93 + 2);
      }

      else
      {
        v147 = v93 + 3;
      }

      v93 = sub_14589F4(v145, v147, a3);
    }
  }

  if ((v107 & 0x40) != 0)
  {
    v93 = sub_128AEEC(a3, 57, (*(a1 + 752) & 0xFFFFFFFFFFFFFFFELL), v93);
    if ((v107 & 0x80) == 0)
    {
LABEL_255:
      if ((v107 & 0x400) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_259;
    }
  }

  else if ((v107 & 0x80) == 0)
  {
    goto LABEL_255;
  }

  v93 = sub_128AEEC(a3, 58, (*(a1 + 760) & 0xFFFFFFFFFFFFFFFELL), v93);
  if ((v107 & 0x400) == 0)
  {
    goto LABEL_265;
  }

LABEL_259:
  if (*a3 <= v93)
  {
    v93 = sub_225EB68(a3, v93);
  }

  v148 = *(a1 + 784);
  *v93 = 986;
  v149 = *(v148 + 20);
  v93[2] = v149;
  if (v149 > 0x7F)
  {
    v150 = sub_19575D0(v149, v93 + 2);
  }

  else
  {
    v150 = v93 + 3;
  }

  v93 = sub_147CEF4(v148, v150, a3);
LABEL_265:
  v151 = *(a1 + 376);
  if (v151)
  {
    for (jj = 0; jj != v151; ++jj)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v153 = *(*(a1 + 384) + 8 * jj + 8);
      *v93 = 994;
      v154 = *(v153 + 20);
      v93[2] = v154;
      if (v154 > 0x7F)
      {
        v155 = sub_19575D0(v154, v93 + 2);
      }

      else
      {
        v155 = v93 + 3;
      }

      v93 = sub_1462EF0(v153, v155, a3);
    }
  }

  if ((v107 & 0x800) != 0)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v156 = *(a1 + 792);
    *v93 = 1002;
    v157 = *(v156 + 20);
    v93[2] = v157;
    if (v157 > 0x7F)
    {
      v158 = sub_19575D0(v157, v93 + 2);
    }

    else
    {
      v158 = v93 + 3;
    }

    v93 = sub_147C300(v156, v158, a3);
  }

  v159 = *(a1 + 400);
  if (v159)
  {
    for (kk = 0; kk != v159; ++kk)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v161 = *(*(a1 + 408) + 8 * kk + 8);
      *v93 = 1010;
      v162 = *(v161 + 20);
      v93[2] = v162;
      if (v162 > 0x7F)
      {
        v163 = sub_19575D0(v162, v93 + 2);
      }

      else
      {
        v163 = v93 + 3;
      }

      v93 = sub_146ADD8(v161, v163, a3);
    }
  }

  if ((*(a1 + 44) & 8) != 0)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v165 = *(a1 + 920);
    *v93 = 1016;
    v93[2] = v165;
    if (v165 > 0x7F)
    {
      v93[2] = v165 | 0x80;
      v166 = v165 >> 7;
      v93[3] = v165 >> 7;
      v164 = v93 + 4;
      if (v165 >= 0x4000)
      {
        LOBYTE(v167) = v93[3];
        do
        {
          *(v164 - 1) = v167 | 0x80;
          v167 = v166 >> 7;
          *v164++ = v166 >> 7;
          v168 = v166 >> 14;
          v166 >>= 7;
        }

        while (v168);
      }
    }

    else
    {
      v164 = v93 + 3;
    }
  }

  else
  {
    v164 = v93;
  }

  v169 = *(a1 + 424);
  if (v169)
  {
    for (mm = 0; mm != v169; ++mm)
    {
      if (*a3 <= v164)
      {
        v164 = sub_225EB68(a3, v164);
      }

      v171 = *(*(a1 + 432) + 8 * mm + 8);
      *v164 = 1154;
      v172 = *(v171 + 20);
      v164[2] = v172;
      if (v172 > 0x7F)
      {
        v173 = sub_19575D0(v172, v164 + 2);
      }

      else
      {
        v173 = v164 + 3;
      }

      v164 = sub_146B544(v171, v173, a3);
    }
  }

  v174 = *(a1 + 40);
  if ((v174 & 0x1000) != 0)
  {
    if (*a3 <= v164)
    {
      v164 = sub_225EB68(a3, v164);
    }

    v175 = *(a1 + 800);
    *v164 = 1162;
    v176 = *(v175 + 20);
    v164[2] = v176;
    if (v176 > 0x7F)
    {
      v177 = sub_19575D0(v176, v164 + 2);
    }

    else
    {
      v177 = v164 + 3;
    }

    v164 = sub_14B3F58(v175, v177, a3);
  }

  v178 = *(a1 + 448);
  if (v178)
  {
    for (nn = 0; nn != v178; ++nn)
    {
      if (*a3 <= v164)
      {
        v164 = sub_225EB68(a3, v164);
      }

      v180 = *(*(a1 + 456) + 8 * nn + 8);
      *v164 = 1170;
      v181 = *(v180 + 20);
      v164[2] = v181;
      if (v181 > 0x7F)
      {
        v182 = sub_19575D0(v181, v164 + 2);
      }

      else
      {
        v182 = v164 + 3;
      }

      v164 = sub_147D8A8(v180, v182, a3);
    }
  }

  v183 = *(a1 + 472);
  if (v183)
  {
    for (i1 = 0; i1 != v183; ++i1)
    {
      if (*a3 <= v164)
      {
        v164 = sub_225EB68(a3, v164);
      }

      v185 = *(*(a1 + 480) + 8 * i1 + 8);
      *v164 = 1178;
      v186 = *(v185 + 20);
      v164[2] = v186;
      if (v186 > 0x7F)
      {
        v187 = sub_19575D0(v186, v164 + 2);
      }

      else
      {
        v187 = v164 + 3;
      }

      v164 = sub_148AF94(v185, v187, a3);
    }
  }

  if ((v174 & 0x2000) != 0)
  {
    if (*a3 <= v164)
    {
      v164 = sub_225EB68(a3, v164);
    }

    v188 = *(a1 + 808);
    *v164 = 1186;
    v189 = *(v188 + 20);
    v164[2] = v189;
    if (v189 > 0x7F)
    {
      v190 = sub_19575D0(v189, v164 + 2);
    }

    else
    {
      v190 = v164 + 3;
    }

    v164 = sub_14589F4(v188, v190, a3);
    if ((v174 & 0x4000) == 0)
    {
LABEL_330:
      if ((v174 & 0x8000) == 0)
      {
        goto LABEL_350;
      }

      goto LABEL_344;
    }
  }

  else if ((v174 & 0x4000) == 0)
  {
    goto LABEL_330;
  }

  if (*a3 <= v164)
  {
    v164 = sub_225EB68(a3, v164);
  }

  v191 = *(a1 + 816);
  *v164 = 1194;
  v192 = *(v191 + 20);
  v164[2] = v192;
  if (v192 > 0x7F)
  {
    v193 = sub_19575D0(v192, v164 + 2);
  }

  else
  {
    v193 = v164 + 3;
  }

  v164 = sub_146D034(v191, v193, a3);
  if ((v174 & 0x8000) != 0)
  {
LABEL_344:
    if (*a3 <= v164)
    {
      v164 = sub_225EB68(a3, v164);
    }

    v194 = *(a1 + 824);
    *v164 = 1202;
    v195 = *(v194 + 20);
    v164[2] = v195;
    if (v195 > 0x7F)
    {
      v196 = sub_19575D0(v195, v164 + 2);
    }

    else
    {
      v196 = v164 + 3;
    }

    v164 = sub_14589F4(v194, v196, a3);
  }

LABEL_350:
  v197 = *(a1 + 496);
  if (v197)
  {
    for (i2 = 0; i2 != v197; ++i2)
    {
      if (*a3 <= v164)
      {
        v164 = sub_225EB68(a3, v164);
      }

      v199 = *(*(a1 + 504) + 8 * i2 + 8);
      *v164 = 1210;
      v200 = *(v199 + 40);
      v164[2] = v200;
      if (v200 > 0x7F)
      {
        v201 = sub_19575D0(v200, v164 + 2);
      }

      else
      {
        v201 = v164 + 3;
      }

      v164 = sub_14733EC(v199, v201, a3);
    }
  }

  v202 = *(a1 + 520);
  if (v202)
  {
    for (i3 = 0; i3 != v202; ++i3)
    {
      if (*a3 <= v164)
      {
        v164 = sub_225EB68(a3, v164);
      }

      v204 = *(*(a1 + 528) + 8 * i3 + 8);
      *v164 = 1218;
      v205 = *(v204 + 40);
      v164[2] = v205;
      if (v205 > 0x7F)
      {
        v206 = sub_19575D0(v205, v164 + 2);
      }

      else
      {
        v206 = v164 + 3;
      }

      v164 = sub_1473E84(v204, v206, a3);
    }
  }

  if ((*(a1 + 44) & 0x10) != 0)
  {
    if (*a3 <= v164)
    {
      v164 = sub_225EB68(a3, v164);
    }

    v208 = *(a1 + 924);
    *v164 = 1224;
    v164[2] = v208;
    if (v208 > 0x7F)
    {
      v164[2] = v208 | 0x80;
      v209 = v208 >> 7;
      v164[3] = v208 >> 7;
      v207 = v164 + 4;
      if (v208 >= 0x4000)
      {
        LOBYTE(v164) = v164[3];
        do
        {
          *(v207 - 1) = v164 | 0x80;
          v164 = (v209 >> 7);
          *v207++ = v209 >> 7;
          v210 = v209 >> 14;
          v209 >>= 7;
        }

        while (v210);
      }
    }

    else
    {
      v207 = v164 + 3;
    }
  }

  else
  {
    v207 = v164;
  }

  v211 = *(a1 + 544);
  if (v211)
  {
    for (i4 = 0; i4 != v211; ++i4)
    {
      if (*a3 <= v207)
      {
        v207 = sub_225EB68(a3, v207);
      }

      v213 = *(*(a1 + 552) + 8 * i4 + 8);
      *v207 = 1234;
      v214 = *(v213 + 20);
      v207[2] = v214;
      if (v214 > 0x7F)
      {
        v215 = sub_19575D0(v214, v207 + 2);
      }

      else
      {
        v215 = v207 + 3;
      }

      v207 = sub_148B4D0(v213, v215, a3);
    }
  }

  v216 = *(a1 + 40);
  if ((v216 & 0x10000) != 0)
  {
    if (*a3 <= v207)
    {
      v207 = sub_225EB68(a3, v207);
    }

    v217 = *(a1 + 832);
    *v207 = 1242;
    v218 = *(v217 + 20);
    v207[2] = v218;
    if (v218 > 0x7F)
    {
      v219 = sub_19575D0(v218, v207 + 2);
    }

    else
    {
      v219 = v207 + 3;
    }

    v207 = sub_147A7BC(v217, v219, a3);
  }

  if ((v216 & 0x20000) != 0)
  {
    if (*a3 <= v207)
    {
      v207 = sub_225EB68(a3, v207);
    }

    v220 = *(a1 + 840);
    *v207 = 1250;
    v221 = *(v220 + 20);
    v207[2] = v221;
    if (v221 > 0x7F)
    {
      v222 = sub_19575D0(v221, v207 + 2);
    }

    else
    {
      v222 = v207 + 3;
    }

    v207 = sub_147A7BC(v220, v222, a3);
  }

  v223 = *(a1 + 44);
  if ((v223 & 0x20) != 0)
  {
    if (*a3 <= v207)
    {
      v207 = sub_225EB68(a3, v207);
    }

    v225 = *(a1 + 928);
    *v207 = 1256;
    v207[2] = v225;
    if (v225 > 0x7F)
    {
      v207[2] = v225 | 0x80;
      v226 = v225 >> 7;
      v207[3] = v225 >> 7;
      v224 = v207 + 4;
      if (v225 >= 0x4000)
      {
        LOBYTE(v207) = v207[3];
        do
        {
          *(v224 - 1) = v207 | 0x80;
          v207 = (v226 >> 7);
          *v224++ = v226 >> 7;
          v227 = v226 >> 14;
          v226 >>= 7;
        }

        while (v227);
      }
    }

    else
    {
      v224 = v207 + 3;
    }
  }

  else
  {
    v224 = v207;
  }

  if ((v223 & 0x40) != 0)
  {
    if (*a3 <= v224)
    {
      v224 = sub_225EB68(a3, v224);
    }

    v229 = *(a1 + 932);
    *v224 = 1264;
    v224[2] = v229;
    if (v229 > 0x7F)
    {
      v224[2] = v229 | 0x80;
      v230 = v229 >> 7;
      v224[3] = v229 >> 7;
      v228 = v224 + 4;
      if (v229 >= 0x4000)
      {
        LOBYTE(v231) = v224[3];
        do
        {
          *(v228 - 1) = v231 | 0x80;
          v231 = v230 >> 7;
          *v228++ = v230 >> 7;
          v232 = v230 >> 14;
          v230 >>= 7;
        }

        while (v232);
      }
    }

    else
    {
      v228 = v224 + 3;
    }
  }

  else
  {
    v228 = v224;
  }

  v233 = *(a1 + 40);
  if ((v233 & 0x100) != 0)
  {
    v228 = sub_128AEEC(a3, 79, (*(a1 + 768) & 0xFFFFFFFFFFFFFFFELL), v228);
  }

  v234 = *(a1 + 576);
  if (v234 >= 1)
  {
    if (*a3 <= v228)
    {
      v228 = sub_225EB68(a3, v228);
    }

    *v228 = 1410;
    v235 = v228 + 2;
    if (v234 >= 0x80)
    {
      do
      {
        *v235++ = v234 | 0x80;
        v236 = v234 >> 7;
        v294 = v234 >> 14;
        v234 >>= 7;
      }

      while (v294);
    }

    else
    {
      LOBYTE(v236) = v234;
    }

    *v235 = v236;
    v237 = *(a1 + 568);
    v238 = &v237[*(a1 + 560)];
    v239 = v235 + 1;
    do
    {
      if (*a3 <= v239)
      {
        v239 = sub_225EB68(a3, v239);
      }

      v241 = *v237++;
      v240 = v241;
      *v239 = v241;
      if (v241 > 0x7F)
      {
        *v239 = v240 | 0x80;
        v242 = v240 >> 7;
        v239[1] = v240 >> 7;
        v228 = v239 + 2;
        if (v240 >= 0x4000)
        {
          LOBYTE(v243) = v239[1];
          do
          {
            *(v228 - 1) = v243 | 0x80;
            v243 = v242 >> 7;
            *v228++ = v242 >> 7;
            v244 = v242 >> 14;
            v242 >>= 7;
          }

          while (v244);
        }
      }

      else
      {
        v228 = v239 + 1;
      }

      v239 = v228;
    }

    while (v237 < v238);
  }

  v245 = *(a1 + 600);
  if (v245 >= 1)
  {
    if (*a3 <= v228)
    {
      v228 = sub_225EB68(a3, v228);
    }

    *v228 = 1418;
    v246 = v228 + 2;
    if (v245 >= 0x80)
    {
      do
      {
        *v246++ = v245 | 0x80;
        v247 = v245 >> 7;
        v295 = v245 >> 14;
        v245 >>= 7;
      }

      while (v295);
    }

    else
    {
      LOBYTE(v247) = v245;
    }

    *v246 = v247;
    v248 = *(a1 + 592);
    v249 = &v248[*(a1 + 584)];
    v250 = v246 + 1;
    do
    {
      if (*a3 <= v250)
      {
        v250 = sub_225EB68(a3, v250);
      }

      v252 = *v248++;
      v251 = v252;
      *v250 = v252;
      if (v252 > 0x7F)
      {
        *v250 = v251 | 0x80;
        v253 = v251 >> 7;
        v250[1] = v251 >> 7;
        v228 = v250 + 2;
        if (v251 >= 0x4000)
        {
          LOBYTE(v254) = v250[1];
          do
          {
            *(v228 - 1) = v254 | 0x80;
            v254 = v253 >> 7;
            *v228++ = v253 >> 7;
            v255 = v253 >> 14;
            v253 >>= 7;
          }

          while (v255);
        }
      }

      else
      {
        v228 = v250 + 1;
      }

      v250 = v228;
    }

    while (v248 < v249);
  }

  v256 = *(a1 + 616);
  if (v256)
  {
    for (i5 = 0; i5 != v256; ++i5)
    {
      if (*a3 <= v228)
      {
        v228 = sub_225EB68(a3, v228);
      }

      v258 = *(*(a1 + 624) + 8 * i5 + 8);
      *v228 = 1426;
      v259 = *(v258 + 20);
      v228[2] = v259;
      if (v259 > 0x7F)
      {
        v260 = sub_19575D0(v259, v228 + 2);
      }

      else
      {
        v260 = v228 + 3;
      }

      v228 = sub_14502B0(v258, v260, a3);
    }
  }

  v261 = *(a1 + 640);
  if (v261)
  {
    for (i6 = 0; i6 != v261; ++i6)
    {
      if (*a3 <= v228)
      {
        v228 = sub_225EB68(a3, v228);
      }

      v263 = *(*(a1 + 648) + 8 * i6 + 8);
      *v228 = 1434;
      v264 = *(v263 + 20);
      v228[2] = v264;
      if (v264 > 0x7F)
      {
        v265 = sub_19575D0(v264, v228 + 2);
      }

      else
      {
        v265 = v228 + 3;
      }

      v228 = sub_14502B0(v263, v265, a3);
    }
  }

  if ((v233 & 0x40000) != 0)
  {
    if (*a3 <= v228)
    {
      v228 = sub_225EB68(a3, v228);
    }

    v266 = *(a1 + 848);
    *v228 = 1458;
    v267 = *(v266 + 20);
    v228[2] = v267;
    if (v267 > 0x7F)
    {
      v268 = sub_19575D0(v267, v228 + 2);
    }

    else
    {
      v268 = v228 + 3;
    }

    v228 = sub_145B7D4(v266, v268, a3);
    if ((v233 & 0x80000) == 0)
    {
LABEL_463:
      if ((v233 & 0x100000) == 0)
      {
        goto LABEL_483;
      }

      goto LABEL_477;
    }
  }

  else if ((v233 & 0x80000) == 0)
  {
    goto LABEL_463;
  }

  if (*a3 <= v228)
  {
    v228 = sub_225EB68(a3, v228);
  }

  v269 = *(a1 + 856);
  *v228 = 1466;
  v270 = *(v269 + 20);
  v228[2] = v270;
  if (v270 > 0x7F)
  {
    v271 = sub_19575D0(v270, v228 + 2);
  }

  else
  {
    v271 = v228 + 3;
  }

  v228 = sub_145B7D4(v269, v271, a3);
  if ((v233 & 0x100000) != 0)
  {
LABEL_477:
    if (*a3 <= v228)
    {
      v228 = sub_225EB68(a3, v228);
    }

    v272 = *(a1 + 864);
    *v228 = 1474;
    v273 = *(v272 + 40);
    v228[2] = v273;
    if (v273 > 0x7F)
    {
      v274 = sub_19575D0(v273, v228 + 2);
    }

    else
    {
      v274 = v228 + 3;
    }

    v228 = sub_14B9D70(v272, v274, a3);
  }

LABEL_483:
  v275 = *(a1 + 664);
  if (v275)
  {
    for (i7 = 0; i7 != v275; ++i7)
    {
      if (*a3 <= v228)
      {
        v228 = sub_225EB68(a3, v228);
      }

      v277 = *(*(a1 + 672) + 8 * i7 + 8);
      *v228 = 1482;
      v278 = *(v277 + 20);
      v228[2] = v278;
      if (v278 > 0x7F)
      {
        v279 = sub_19575D0(v278, v228 + 2);
      }

      else
      {
        v279 = v228 + 3;
      }

      v228 = sub_1486FB8(v277, v279, a3);
    }
  }

  v280 = *(a1 + 688);
  if (v280)
  {
    for (i8 = 0; i8 != v280; ++i8)
    {
      if (*a3 <= v228)
      {
        v228 = sub_225EB68(a3, v228);
      }

      v282 = *(*(a1 + 696) + 8 * i8 + 8);
      *v228 = 1490;
      v283 = *(v282 + 20);
      v228[2] = v283;
      if (v283 > 0x7F)
      {
        v284 = sub_19575D0(v283, v228 + 2);
      }

      else
      {
        v284 = v228 + 3;
      }

      v228 = sub_148BA5C(v282, v284, a3);
    }
  }

  if (*(a1 + 26))
  {
    v228 = sub_1953428(a1 + 16, 950, 10101, v228, a3);
  }

  v285 = *(a1 + 8);
  if ((v285 & 1) == 0)
  {
    return v228;
  }

  v287 = v285 & 0xFFFFFFFFFFFFFFFCLL;
  v288 = *(v287 + 31);
  if (v288 < 0)
  {
    v289 = *(v287 + 8);
    v288 = *(v287 + 16);
  }

  else
  {
    v289 = (v287 + 8);
  }

  if ((*a3 - v228) >= v288)
  {
    v296 = v288;
    memcpy(v228, v289, v288);
    v228 += v296;
    return v228;
  }

  return sub_1957130(a3, v289, v288, v228);
}

uint64_t sub_148EB94(uint64_t a1)
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
      v9 = sub_1471C3C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 88);
  v11 = v4 + v10;
  if (v10 >= 1)
  {
    v12 = (*(a1 + 96) + 8);
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v11 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      --v10;
    }

    while (v10);
  }

  v16 = *(a1 + 112);
  v17 = v11 + 2 * v16;
  if (v16 >= 1)
  {
    v18 = (*(a1 + 120) + 8);
    do
    {
      v19 = *v18++;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v17 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      --v16;
    }

    while (v16);
  }

  v22 = *(a1 + 136);
  v23 = v17 + 2 * v22;
  if (v22 >= 1)
  {
    v24 = (*(a1 + 144) + 8);
    do
    {
      v25 = *v24++;
      v26 = *(v25 + 23);
      v27 = *(v25 + 8);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v26;
      }

      v23 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      --v22;
    }

    while (v22);
  }

  v28 = sub_1959E5C((a1 + 152));
  v29 = 12;
  v30 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v28 >= 0)
  {
    v29 = v30;
  }

  v31 = v29 + v23;
  if (v28)
  {
    v32 = v28;
  }

  else
  {
    v32 = 0;
  }

  if (!v28)
  {
    v31 = v23;
  }

  *(a1 + 168) = v32;
  v33 = v31 + v28;
  v34 = sub_1959E5C((a1 + 176));
  v35 = 12;
  v36 = ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v34 >= 0)
  {
    v35 = v36;
  }

  v37 = v35 + v33;
  if (v34)
  {
    v38 = v34;
  }

  else
  {
    v38 = 0;
  }

  if (!v34)
  {
    v37 = v33;
  }

  *(a1 + 192) = v38;
  v39 = v37 + v34;
  v40 = *(a1 + 208);
  v41 = v39 + 2 * v40;
  v42 = *(a1 + 216);
  if (v42)
  {
    v43 = (v42 + 8);
  }

  else
  {
    v43 = 0;
  }

  if (v40)
  {
    v44 = 8 * v40;
    do
    {
      v45 = *v43++;
      v46 = sub_148A980(v45);
      v41 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6);
      v44 -= 8;
    }

    while (v44);
  }

  v47 = *(a1 + 232);
  v48 = v41 + 2 * v47;
  v49 = *(a1 + 240);
  if (v49)
  {
    v50 = (v49 + 8);
  }

  else
  {
    v50 = 0;
  }

  if (v47)
  {
    v51 = 8 * v47;
    do
    {
      v52 = *v50++;
      v53 = sub_14A2BAC(v52);
      v48 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      v51 -= 8;
    }

    while (v51);
  }

  v54 = sub_1959E5C((a1 + 248));
  v55 = 12;
  v56 = ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v54 >= 0)
  {
    v55 = v56;
  }

  v57 = v55 + v48;
  if (v54)
  {
    v58 = v54;
  }

  else
  {
    v58 = 0;
  }

  if (!v54)
  {
    v57 = v48;
  }

  *(a1 + 264) = v58;
  v59 = v57 + v54;
  v60 = sub_1959E5C((a1 + 272));
  v61 = 12;
  v62 = ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v60 >= 0)
  {
    v61 = v62;
  }

  v63 = v61 + v59;
  if (v60)
  {
    v64 = v60;
  }

  else
  {
    v64 = 0;
  }

  if (!v60)
  {
    v63 = v59;
  }

  *(a1 + 288) = v64;
  v65 = v63 + v60;
  v66 = *(a1 + 304);
  v67 = v65 + 2 * v66;
  v68 = *(a1 + 312);
  if (v68)
  {
    v69 = (v68 + 8);
  }

  else
  {
    v69 = 0;
  }

  if (v66)
  {
    v70 = 8 * v66;
    do
    {
      v71 = *v69++;
      v72 = sub_1458DB4(v71);
      v67 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6);
      v70 -= 8;
    }

    while (v70);
  }

  v73 = *(a1 + 328);
  v74 = v67 + 2 * v73;
  v75 = *(a1 + 336);
  if (v75)
  {
    v76 = (v75 + 8);
  }

  else
  {
    v76 = 0;
  }

  if (v73)
  {
    v77 = 8 * v73;
    do
    {
      v78 = *v76++;
      v79 = sub_1458DB4(v78);
      v74 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6);
      v77 -= 8;
    }

    while (v77);
  }

  v80 = *(a1 + 352);
  v81 = v74 + 2 * v80;
  v82 = *(a1 + 360);
  if (v82)
  {
    v83 = (v82 + 8);
  }

  else
  {
    v83 = 0;
  }

  if (v80)
  {
    v84 = 8 * v80;
    do
    {
      v85 = *v83++;
      v86 = sub_1458DB4(v85);
      v81 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6);
      v84 -= 8;
    }

    while (v84);
  }

  v87 = *(a1 + 376);
  v88 = v81 + 2 * v87;
  v89 = *(a1 + 384);
  if (v89)
  {
    v90 = (v89 + 8);
  }

  else
  {
    v90 = 0;
  }

  if (v87)
  {
    v91 = 8 * v87;
    do
    {
      v92 = *v90++;
      v93 = sub_1463930(v92);
      v88 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6);
      v91 -= 8;
    }

    while (v91);
  }

  v94 = *(a1 + 400);
  v95 = v88 + 2 * v94;
  v96 = *(a1 + 408);
  if (v96)
  {
    v97 = (v96 + 8);
  }

  else
  {
    v97 = 0;
  }

  if (v94)
  {
    v98 = 8 * v94;
    do
    {
      v99 = *v97++;
      v100 = sub_146B020(v99);
      v95 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6);
      v98 -= 8;
    }

    while (v98);
  }

  v101 = *(a1 + 424);
  v102 = v95 + 2 * v101;
  v103 = *(a1 + 432);
  if (v103)
  {
    v104 = (v103 + 8);
  }

  else
  {
    v104 = 0;
  }

  if (v101)
  {
    v105 = 8 * v101;
    do
    {
      v106 = *v104++;
      v107 = sub_146B77C(v106);
      v102 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6);
      v105 -= 8;
    }

    while (v105);
  }

  v108 = *(a1 + 448);
  v109 = v102 + 2 * v108;
  v110 = *(a1 + 456);
  if (v110)
  {
    v111 = (v110 + 8);
  }

  else
  {
    v111 = 0;
  }

  if (v108)
  {
    v112 = 8 * v108;
    do
    {
      v113 = *v111++;
      v114 = sub_147DB40(v113);
      v109 += v114 + ((9 * (__clz(v114 | 1) ^ 0x1F) + 73) >> 6);
      v112 -= 8;
    }

    while (v112);
  }

  v115 = *(a1 + 472);
  v116 = v109 + 2 * v115;
  v117 = *(a1 + 480);
  if (v117)
  {
    v118 = (v117 + 8);
  }

  else
  {
    v118 = 0;
  }

  if (v115)
  {
    v119 = 8 * v115;
    do
    {
      v120 = *v118++;
      v121 = sub_148B14C(v120);
      v116 += v121 + ((9 * (__clz(v121 | 1) ^ 0x1F) + 73) >> 6);
      v119 -= 8;
    }

    while (v119);
  }

  v122 = *(a1 + 496);
  v123 = v116 + 2 * v122;
  v124 = *(a1 + 504);
  if (v124)
  {
    v125 = (v124 + 8);
  }

  else
  {
    v125 = 0;
  }

  if (v122)
  {
    v126 = 8 * v122;
    do
    {
      v127 = *v125++;
      v128 = sub_147352C(v127);
      v123 += v128 + ((9 * (__clz(v128 | 1) ^ 0x1F) + 73) >> 6);
      v126 -= 8;
    }

    while (v126);
  }

  v129 = *(a1 + 520);
  v130 = v123 + 2 * v129;
  v131 = *(a1 + 528);
  if (v131)
  {
    v132 = (v131 + 8);
  }

  else
  {
    v132 = 0;
  }

  if (v129)
  {
    v133 = 8 * v129;
    do
    {
      v134 = *v132++;
      v135 = sub_1473FC4(v134);
      v130 += v135 + ((9 * (__clz(v135 | 1) ^ 0x1F) + 73) >> 6);
      v133 -= 8;
    }

    while (v133);
  }

  v136 = *(a1 + 544);
  v137 = v130 + 2 * v136;
  v138 = *(a1 + 552);
  if (v138)
  {
    v139 = (v138 + 8);
  }

  else
  {
    v139 = 0;
  }

  if (v136)
  {
    v140 = 8 * v136;
    do
    {
      v141 = *v139++;
      v142 = sub_148B680(v141);
      v137 += v142 + ((9 * (__clz(v142 | 1) ^ 0x1F) + 73) >> 6);
      v140 -= 8;
    }

    while (v140);
  }

  v143 = *(a1 + 560);
  if (v143)
  {
    v144 = 0;
    for (i = 0; i != v143; ++i)
    {
      v146 = *(*(a1 + 568) + 4 * i);
      if (v146 < 0)
      {
        v147 = 10;
      }

      else
      {
        v147 = (9 * (__clz(v146 | 1) ^ 0x1F) + 73) >> 6;
      }

      v144 += v147;
    }

    if (v144)
    {
      if ((v144 & 0x80000000) != 0)
      {
        v148 = 12;
      }

      else
      {
        v148 = ((9 * (__clz(v144 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v137 += v148;
      v143 = v144;
    }

    else
    {
      v143 = 0;
    }
  }

  else
  {
    v144 = 0;
  }

  *(a1 + 576) = v143;
  v149 = v137 + v144;
  v150 = sub_1959E5C((a1 + 584));
  if (v150)
  {
    v151 = v150;
    if ((v150 & 0x80000000) != 0)
    {
      v152 = 12;
    }

    else
    {
      v152 = ((9 * (__clz(v150 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v149 += v152;
  }

  else
  {
    v151 = 0;
  }

  *(a1 + 600) = v151;
  v153 = *(a1 + 616);
  v154 = v149 + v150 + 2 * v153;
  v155 = *(a1 + 624);
  if (v155)
  {
    v156 = (v155 + 8);
  }

  else
  {
    v156 = 0;
  }

  if (v153)
  {
    v157 = 8 * v153;
    do
    {
      v158 = *v156++;
      v159 = sub_1450690(v158);
      v154 += v159 + ((9 * (__clz(v159 | 1) ^ 0x1F) + 73) >> 6);
      v157 -= 8;
    }

    while (v157);
  }

  v160 = *(a1 + 640);
  v161 = v154 + 2 * v160;
  v162 = *(a1 + 648);
  if (v162)
  {
    v163 = (v162 + 8);
  }

  else
  {
    v163 = 0;
  }

  if (v160)
  {
    v164 = 8 * v160;
    do
    {
      v165 = *v163++;
      v166 = sub_1450690(v165);
      v161 += v166 + ((9 * (__clz(v166 | 1) ^ 0x1F) + 73) >> 6);
      v164 -= 8;
    }

    while (v164);
  }

  v167 = *(a1 + 664);
  v168 = v161 + 2 * v167;
  v169 = *(a1 + 672);
  if (v169)
  {
    v170 = (v169 + 8);
  }

  else
  {
    v170 = 0;
  }

  if (v167)
  {
    v171 = 8 * v167;
    do
    {
      v172 = *v170++;
      v173 = sub_1487644(v172);
      v168 += v173 + ((9 * (__clz(v173 | 1) ^ 0x1F) + 73) >> 6);
      v171 -= 8;
    }

    while (v171);
  }

  v174 = *(a1 + 688);
  v175 = v168 + 2 * v174;
  v176 = *(a1 + 696);
  if (v176)
  {
    v177 = (v176 + 8);
  }

  else
  {
    v177 = 0;
  }

  if (v174)
  {
    v178 = 8 * v174;
    do
    {
      v179 = *v177++;
      v180 = sub_148BBE8(v179);
      v175 += v180 + ((9 * (__clz(v180 | 1) ^ 0x1F) + 73) >> 6);
      v178 -= 8;
    }

    while (v178);
  }

  v181 = *(a1 + 40);
  if (!v181)
  {
    goto LABEL_183;
  }

  if (v181)
  {
    v193 = *(a1 + 704) & 0xFFFFFFFFFFFFFFFELL;
    v194 = *(v193 + 23);
    v195 = *(v193 + 8);
    if ((v194 & 0x80u) == 0)
    {
      v195 = v194;
    }

    v175 += v195 + ((9 * (__clz(v195 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v181 & 2) == 0)
    {
LABEL_174:
      if ((v181 & 4) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_236;
    }
  }

  else if ((v181 & 2) == 0)
  {
    goto LABEL_174;
  }

  v196 = *(a1 + 712) & 0xFFFFFFFFFFFFFFFELL;
  v197 = *(v196 + 23);
  v198 = *(v196 + 8);
  if ((v197 & 0x80u) == 0)
  {
    v198 = v197;
  }

  v175 += v198 + ((9 * (__clz(v198 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v181 & 4) == 0)
  {
LABEL_175:
    if ((v181 & 8) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_239;
  }

LABEL_236:
  v199 = *(a1 + 720) & 0xFFFFFFFFFFFFFFFELL;
  v200 = *(v199 + 23);
  v201 = *(v199 + 8);
  if ((v200 & 0x80u) == 0)
  {
    v201 = v200;
  }

  v175 += v201 + ((9 * (__clz(v201 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v181 & 8) == 0)
  {
LABEL_176:
    if ((v181 & 0x10) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_242;
  }

LABEL_239:
  v202 = *(a1 + 728) & 0xFFFFFFFFFFFFFFFELL;
  v203 = *(v202 + 23);
  v204 = *(v202 + 8);
  if ((v203 & 0x80u) == 0)
  {
    v204 = v203;
  }

  v175 += v204 + ((9 * (__clz(v204 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x10) == 0)
  {
LABEL_177:
    if ((v181 & 0x20) == 0)
    {
      goto LABEL_178;
    }

LABEL_245:
    v208 = *(a1 + 744) & 0xFFFFFFFFFFFFFFFELL;
    v209 = *(v208 + 23);
    v210 = *(v208 + 8);
    if ((v209 & 0x80u) == 0)
    {
      v210 = v209;
    }

    v175 += v210 + ((9 * (__clz(v210 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v181 & 0x40) == 0)
    {
LABEL_179:
      if ((v181 & 0x80) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_180;
    }

    goto LABEL_248;
  }

LABEL_242:
  v205 = *(a1 + 736) & 0xFFFFFFFFFFFFFFFELL;
  v206 = *(v205 + 23);
  v207 = *(v205 + 8);
  if ((v206 & 0x80u) == 0)
  {
    v207 = v206;
  }

  v175 += v207 + ((9 * (__clz(v207 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x20) != 0)
  {
    goto LABEL_245;
  }

LABEL_178:
  if ((v181 & 0x40) == 0)
  {
    goto LABEL_179;
  }

LABEL_248:
  v211 = *(a1 + 752) & 0xFFFFFFFFFFFFFFFELL;
  v212 = *(v211 + 23);
  v213 = *(v211 + 8);
  if ((v212 & 0x80u) == 0)
  {
    v213 = v212;
  }

  v175 += v213 + ((9 * (__clz(v213 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x80) != 0)
  {
LABEL_180:
    v182 = *(a1 + 760) & 0xFFFFFFFFFFFFFFFELL;
    v183 = *(v182 + 23);
    v184 = *(v182 + 8);
    if ((v183 & 0x80u) == 0)
    {
      v184 = v183;
    }

    v175 += v184 + ((9 * (__clz(v184 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_183:
  if ((v181 & 0xFF00) == 0)
  {
    goto LABEL_193;
  }

  if ((v181 & 0x100) != 0)
  {
    v214 = *(a1 + 768) & 0xFFFFFFFFFFFFFFFELL;
    v215 = *(v214 + 23);
    v216 = *(v214 + 8);
    if ((v215 & 0x80u) == 0)
    {
      v216 = v215;
    }

    v175 += v216 + ((9 * (__clz(v216 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v181 & 0x200) == 0)
    {
LABEL_186:
      if ((v181 & 0x400) == 0)
      {
        goto LABEL_187;
      }

      goto LABEL_256;
    }
  }

  else if ((v181 & 0x200) == 0)
  {
    goto LABEL_186;
  }

  v217 = sub_145C7DC(*(a1 + 776));
  v175 += v217 + ((9 * (__clz(v217 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x400) == 0)
  {
LABEL_187:
    if ((v181 & 0x800) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_257;
  }

LABEL_256:
  v218 = sub_147D148(*(a1 + 784));
  v175 += v218 + ((9 * (__clz(v218 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x800) == 0)
  {
LABEL_188:
    if ((v181 & 0x1000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_258;
  }

LABEL_257:
  v219 = sub_147C624(*(a1 + 792));
  v175 += v219 + ((9 * (__clz(v219 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x1000) == 0)
  {
LABEL_189:
    if ((v181 & 0x2000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_259;
  }

LABEL_258:
  v220 = sub_14B4110(*(a1 + 800));
  v175 += v220 + ((9 * (__clz(v220 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x2000) == 0)
  {
LABEL_190:
    if ((v181 & 0x4000) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_260;
  }

LABEL_259:
  v221 = sub_1458DB4(*(a1 + 808));
  v175 += v221 + ((9 * (__clz(v221 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x4000) == 0)
  {
LABEL_191:
    if ((v181 & 0x8000) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

LABEL_260:
  v222 = sub_146D3D4(*(a1 + 816));
  v175 += v222 + ((9 * (__clz(v222 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x8000) != 0)
  {
LABEL_192:
    v185 = sub_1458DB4(*(a1 + 824));
    v175 += v185 + ((9 * (__clz(v185 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_193:
  if ((v181 & 0xFF0000) == 0)
  {
    goto LABEL_203;
  }

  if ((v181 & 0x10000) != 0)
  {
    v223 = sub_147ACD8(*(a1 + 832));
    v175 += v223 + ((9 * (__clz(v223 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v181 & 0x20000) == 0)
    {
LABEL_196:
      if ((v181 & 0x40000) == 0)
      {
        goto LABEL_197;
      }

      goto LABEL_264;
    }
  }

  else if ((v181 & 0x20000) == 0)
  {
    goto LABEL_196;
  }

  v224 = sub_147ACD8(*(a1 + 840));
  v175 += v224 + ((9 * (__clz(v224 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x40000) == 0)
  {
LABEL_197:
    if ((v181 & 0x80000) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_265;
  }

LABEL_264:
  v225 = sub_145BB4C(*(a1 + 848));
  v175 += v225 + ((9 * (__clz(v225 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x80000) == 0)
  {
LABEL_198:
    if ((v181 & 0x100000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_266;
  }

LABEL_265:
  v226 = sub_145BB4C(*(a1 + 856));
  v175 += v226 + ((9 * (__clz(v226 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x100000) == 0)
  {
LABEL_199:
    if ((v181 & 0x200000) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_267;
  }

LABEL_266:
  v227 = sub_14B9EB0(*(a1 + 864));
  v175 += v227 + ((9 * (__clz(v227 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x200000) == 0)
  {
LABEL_200:
    if ((v181 & 0x400000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_271;
  }

LABEL_267:
  v228 = *(a1 + 872);
  v229 = ((9 * (__clz(v228 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v228 >= 0)
  {
    v230 = v229;
  }

  else
  {
    v230 = 11;
  }

  v175 += v230;
  if ((v181 & 0x400000) == 0)
  {
LABEL_201:
    if ((v181 & 0x800000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_202;
  }

LABEL_271:
  v175 += ((9 * (__clz(*(a1 + 876) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v181 & 0x800000) != 0)
  {
LABEL_202:
    v175 += ((9 * (__clz(*(a1 + 880) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_203:
  if (!HIBYTE(v181))
  {
    goto LABEL_212;
  }

  if ((v181 & 0x1000000) != 0)
  {
    v237 = *(a1 + 884);
    v238 = ((9 * (__clz(v237 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v237 >= 0)
    {
      v239 = v238;
    }

    else
    {
      v239 = 11;
    }

    v175 += v239;
    if ((v181 & 0x2000000) == 0)
    {
LABEL_206:
      if ((v181 & 0x4000000) == 0)
      {
        goto LABEL_207;
      }

      goto LABEL_291;
    }
  }

  else if ((v181 & 0x2000000) == 0)
  {
    goto LABEL_206;
  }

  v240 = *(a1 + 888);
  v241 = ((9 * (__clz(v240 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v240 >= 0)
  {
    v242 = v241;
  }

  else
  {
    v242 = 11;
  }

  v175 += v242;
  if ((v181 & 0x4000000) == 0)
  {
LABEL_207:
    if ((v181 & 0x8000000) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_292;
  }

LABEL_291:
  v175 += ((9 * (__clz(*(a1 + 892) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x8000000) == 0)
  {
LABEL_208:
    if ((v181 & 0x10000000) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_293;
  }

LABEL_292:
  v175 += ((9 * (__clz(*(a1 + 896) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x10000000) == 0)
  {
LABEL_209:
    if ((v181 & 0x20000000) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_294;
  }

LABEL_293:
  v175 += ((9 * (__clz(*(a1 + 900) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x20000000) == 0)
  {
LABEL_210:
    if ((v181 & 0x40000000) == 0)
    {
      goto LABEL_211;
    }

LABEL_295:
    v175 += ((9 * (__clz(*(a1 + 908) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v181 & 0x80000000) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_296;
  }

LABEL_294:
  v175 += ((9 * (__clz(*(a1 + 904) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v181 & 0x40000000) != 0)
  {
    goto LABEL_295;
  }

LABEL_211:
  if ((v181 & 0x80000000) == 0)
  {
    goto LABEL_212;
  }

LABEL_296:
  v175 += ((9 * (__clz(*(a1 + 912) | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_212:
  v186 = *(a1 + 44);
  if ((v186 & 0x7F) == 0)
  {
    goto LABEL_228;
  }

  v187 = v175 + 3;
  if ((v186 & 1) == 0)
  {
    v187 = v175;
  }

  if ((v186 & 2) != 0)
  {
    v187 += 3;
  }

  if ((v186 & 4) != 0)
  {
    v175 = v187 + 3;
  }

  else
  {
    v175 = v187;
  }

  if ((v186 & 8) != 0)
  {
    v175 += ((9 * (__clz(*(a1 + 920) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v186 & 0x10) == 0)
    {
LABEL_222:
      if ((v186 & 0x20) == 0)
      {
        goto LABEL_223;
      }

      goto LABEL_278;
    }
  }

  else if ((v186 & 0x10) == 0)
  {
    goto LABEL_222;
  }

  v231 = *(a1 + 924);
  v232 = ((9 * (__clz(v231 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v231 >= 0)
  {
    v233 = v232;
  }

  else
  {
    v233 = 12;
  }

  v175 += v233;
  if ((v186 & 0x20) == 0)
  {
LABEL_223:
    if ((v186 & 0x40) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_224;
  }

LABEL_278:
  v234 = *(a1 + 928);
  v235 = ((9 * (__clz(v234 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v234 >= 0)
  {
    v236 = v235;
  }

  else
  {
    v236 = 12;
  }

  v175 += v236;
  if ((v186 & 0x40) != 0)
  {
LABEL_224:
    v188 = *(a1 + 932);
    v189 = ((9 * (__clz(v188 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v188 >= 0)
    {
      v190 = v189;
    }

    else
    {
      v190 = 12;
    }

    v175 += v190;
  }

LABEL_228:
  v191 = *(a1 + 8);
  if (v191)
  {
    v243 = v191 & 0xFFFFFFFFFFFFFFFCLL;
    v244 = *((v191 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v244 < 0)
    {
      v244 = *(v243 + 16);
    }

    v175 += v244;
  }

  *(a1 + 48) = v175;
  return v175;
}

void sub_148FCC4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 64);
  if (v5)
  {
    v6 = *(a2 + 72);
    v7 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_1566BB0((a1 + 56), v7, (v6 + 8), v5, **(a1 + 72) - *(a1 + 64), v8);
    v9 = *(a1 + 64) + v5;
    *(a1 + 64) = v9;
    v10 = *(a1 + 72);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 88);
  if (v11)
  {
    v12 = *(a2 + 96);
    v13 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_1201B48((a1 + 80), v13, (v12 + 8), v11, **(a1 + 96) - *(a1 + 88));
    v14 = *(a1 + 88) + v11;
    *(a1 + 88) = v14;
    v15 = *(a1 + 96);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 112);
  if (v16)
  {
    v17 = *(a2 + 120);
    v18 = sub_19592E8(a1 + 104, *(a2 + 112));
    sub_1201B48((a1 + 104), v18, (v17 + 8), v16, **(a1 + 120) - *(a1 + 112));
    v19 = *(a1 + 112) + v16;
    *(a1 + 112) = v19;
    v20 = *(a1 + 120);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 136);
  if (v21)
  {
    v22 = *(a2 + 144);
    v23 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1201B48((a1 + 128), v23, (v22 + 8), v21, **(a1 + 144) - *(a1 + 136));
    v24 = *(a1 + 136) + v21;
    *(a1 + 136) = v24;
    v25 = *(a1 + 144);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 152);
  if (v26)
  {
    v27 = *(a1 + 152);
    sub_1958E5C((a1 + 152), v27 + v26);
    v28 = *(a1 + 160);
    *(a1 + 152) += *(a2 + 152);
    memcpy((v28 + 4 * v27), *(a2 + 160), 4 * *(a2 + 152));
  }

  v29 = *(a2 + 176);
  if (v29)
  {
    v30 = *(a1 + 176);
    sub_1958E5C((a1 + 176), v30 + v29);
    v31 = *(a1 + 184);
    *(a1 + 176) += *(a2 + 176);
    memcpy((v31 + 4 * v30), *(a2 + 184), 4 * *(a2 + 176));
  }

  v32 = *(a2 + 208);
  if (v32)
  {
    v33 = *(a2 + 216);
    v34 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_1566C3C((a1 + 200), v34, (v33 + 8), v32, **(a1 + 216) - *(a1 + 208));
    v35 = *(a1 + 208) + v32;
    *(a1 + 208) = v35;
    v36 = *(a1 + 216);
    if (*v36 < v35)
    {
      *v36 = v35;
    }
  }

  v37 = *(a2 + 232);
  if (v37)
  {
    v38 = *(a2 + 240);
    v39 = sub_19592E8(a1 + 224, *(a2 + 232));
    sub_1566CC8((a1 + 224), v39, (v38 + 8), v37, **(a1 + 240) - *(a1 + 232), v40);
    v41 = *(a1 + 232) + v37;
    *(a1 + 232) = v41;
    v42 = *(a1 + 240);
    if (*v42 < v41)
    {
      *v42 = v41;
    }
  }

  v43 = *(a2 + 248);
  if (v43)
  {
    v44 = *(a1 + 248);
    sub_1958E5C((a1 + 248), v44 + v43);
    v45 = *(a1 + 256);
    *(a1 + 248) += *(a2 + 248);
    memcpy((v45 + 4 * v44), *(a2 + 256), 4 * *(a2 + 248));
  }

  v46 = *(a2 + 272);
  if (v46)
  {
    v47 = *(a1 + 272);
    sub_1958E5C((a1 + 272), v47 + v46);
    v48 = *(a1 + 280);
    *(a1 + 272) += *(a2 + 272);
    memcpy((v48 + 4 * v47), *(a2 + 280), 4 * *(a2 + 272));
  }

  v49 = *(a2 + 304);
  if (v49)
  {
    v50 = *(a2 + 312);
    v51 = sub_19592E8(a1 + 296, *(a2 + 304));
    sub_144A454((a1 + 296), v51, (v50 + 8), v49, **(a1 + 312) - *(a1 + 304));
    v52 = *(a1 + 304) + v49;
    *(a1 + 304) = v52;
    v53 = *(a1 + 312);
    if (*v53 < v52)
    {
      *v53 = v52;
    }
  }

  v54 = *(a2 + 328);
  if (v54)
  {
    v55 = *(a2 + 336);
    v56 = sub_19592E8(a1 + 320, *(a2 + 328));
    sub_144A454((a1 + 320), v56, (v55 + 8), v54, **(a1 + 336) - *(a1 + 328));
    v57 = *(a1 + 328) + v54;
    *(a1 + 328) = v57;
    v58 = *(a1 + 336);
    if (*v58 < v57)
    {
      *v58 = v57;
    }
  }

  v59 = *(a2 + 352);
  if (v59)
  {
    v60 = *(a2 + 360);
    v61 = sub_19592E8(a1 + 344, *(a2 + 352));
    sub_144A454((a1 + 344), v61, (v60 + 8), v59, **(a1 + 360) - *(a1 + 352));
    v62 = *(a1 + 352) + v59;
    *(a1 + 352) = v62;
    v63 = *(a1 + 360);
    if (*v63 < v62)
    {
      *v63 = v62;
    }
  }

  v64 = *(a2 + 376);
  if (v64)
  {
    v65 = *(a2 + 384);
    v66 = sub_19592E8(a1 + 368, *(a2 + 376));
    sub_1566218((a1 + 368), v66, (v65 + 8), v64, **(a1 + 384) - *(a1 + 376), v67);
    v68 = *(a1 + 376) + v64;
    *(a1 + 376) = v68;
    v69 = *(a1 + 384);
    if (*v69 < v68)
    {
      *v69 = v68;
    }
  }

  v70 = *(a2 + 400);
  if (v70)
  {
    v71 = *(a2 + 408);
    v72 = sub_19592E8(a1 + 392, *(a2 + 400));
    sub_1566D54((a1 + 392), v72, (v71 + 8), v70, **(a1 + 408) - *(a1 + 400));
    v73 = *(a1 + 400) + v70;
    *(a1 + 400) = v73;
    v74 = *(a1 + 408);
    if (*v74 < v73)
    {
      *v74 = v73;
    }
  }

  v75 = *(a2 + 424);
  if (v75)
  {
    v76 = *(a2 + 432);
    v77 = sub_19592E8(a1 + 416, *(a2 + 424));
    sub_1566DE0((a1 + 416), v77, (v76 + 8), v75, **(a1 + 432) - *(a1 + 424));
    v78 = *(a1 + 424) + v75;
    *(a1 + 424) = v78;
    v79 = *(a1 + 432);
    if (*v79 < v78)
    {
      *v79 = v78;
    }
  }

  v80 = *(a2 + 448);
  if (v80)
  {
    v81 = *(a2 + 456);
    v82 = sub_19592E8(a1 + 440, *(a2 + 448));
    sub_1566868((a1 + 440), v82, (v81 + 8), v80, **(a1 + 456) - *(a1 + 448));
    v83 = *(a1 + 448) + v80;
    *(a1 + 448) = v83;
    v84 = *(a1 + 456);
    if (*v84 < v83)
    {
      *v84 = v83;
    }
  }

  v85 = *(a2 + 472);
  if (v85)
  {
    v86 = *(a2 + 480);
    v87 = sub_19592E8(a1 + 464, *(a2 + 472));
    sub_1566E5C((a1 + 464), v87, (v86 + 8), v85, **(a1 + 480) - *(a1 + 472));
    v88 = *(a1 + 472) + v85;
    *(a1 + 472) = v88;
    v89 = *(a1 + 480);
    if (*v89 < v88)
    {
      *v89 = v88;
    }
  }

  v90 = *(a2 + 496);
  if (v90)
  {
    v91 = *(a2 + 504);
    v92 = sub_19592E8(a1 + 488, *(a2 + 496));
    sub_1566EE8((a1 + 488), v92, (v91 + 8), v90, **(a1 + 504) - *(a1 + 496));
    v93 = *(a1 + 496) + v90;
    *(a1 + 496) = v93;
    v94 = *(a1 + 504);
    if (*v94 < v93)
    {
      *v94 = v93;
    }
  }

  v95 = *(a2 + 520);
  if (v95)
  {
    v96 = *(a2 + 528);
    v97 = sub_19592E8(a1 + 512, *(a2 + 520));
    sub_1566F74((a1 + 512), v97, (v96 + 8), v95, **(a1 + 528) - *(a1 + 520));
    v98 = *(a1 + 520) + v95;
    *(a1 + 520) = v98;
    v99 = *(a1 + 528);
    if (*v99 < v98)
    {
      *v99 = v98;
    }
  }

  v100 = *(a2 + 544);
  if (v100)
  {
    v101 = *(a2 + 552);
    v102 = sub_19592E8(a1 + 536, *(a2 + 544));
    sub_1567000((a1 + 536), v102, (v101 + 8), v100, **(a1 + 552) - *(a1 + 544));
    v103 = *(a1 + 544) + v100;
    *(a1 + 544) = v103;
    v104 = *(a1 + 552);
    if (*v104 < v103)
    {
      *v104 = v103;
    }
  }

  v105 = *(a2 + 560);
  if (v105)
  {
    v106 = *(a1 + 560);
    sub_1958E5C((a1 + 560), v106 + v105);
    v107 = *(a1 + 568);
    *(a1 + 560) += *(a2 + 560);
    memcpy((v107 + 4 * v106), *(a2 + 568), 4 * *(a2 + 560));
  }

  v108 = *(a2 + 584);
  if (v108)
  {
    v109 = *(a1 + 584);
    sub_1958E5C((a1 + 584), v109 + v108);
    v110 = *(a1 + 592);
    *(a1 + 584) += *(a2 + 584);
    memcpy((v110 + 4 * v109), *(a2 + 592), 4 * *(a2 + 584));
  }

  v111 = *(a2 + 616);
  if (v111)
  {
    v112 = *(a2 + 624);
    v113 = sub_19592E8(a1 + 608, *(a2 + 616));
    sub_156707C((a1 + 608), v113, (v112 + 8), v111, **(a1 + 624) - *(a1 + 616), v114);
    v115 = *(a1 + 616) + v111;
    *(a1 + 616) = v115;
    v116 = *(a1 + 624);
    if (*v116 < v115)
    {
      *v116 = v115;
    }
  }

  v117 = *(a2 + 640);
  if (v117)
  {
    v118 = *(a2 + 648);
    v119 = sub_19592E8(a1 + 632, *(a2 + 640));
    sub_156707C((a1 + 632), v119, (v118 + 8), v117, **(a1 + 648) - *(a1 + 640), v120);
    v121 = *(a1 + 640) + v117;
    *(a1 + 640) = v121;
    v122 = *(a1 + 648);
    if (*v122 < v121)
    {
      *v122 = v121;
    }
  }

  v123 = *(a2 + 664);
  if (v123)
  {
    v124 = *(a2 + 672);
    v125 = sub_19592E8(a1 + 656, *(a2 + 664));
    sub_1567108((a1 + 656), v125, (v124 + 8), v123, **(a1 + 672) - *(a1 + 664));
    v126 = *(a1 + 664) + v123;
    *(a1 + 664) = v126;
    v127 = *(a1 + 672);
    if (*v127 < v126)
    {
      *v127 = v126;
    }
  }

  v128 = *(a2 + 688);
  if (v128)
  {
    v129 = *(a2 + 696);
    v130 = sub_19592E8(a1 + 680, *(a2 + 688));
    sub_1567194((a1 + 680), v130, (v129 + 8), v128, **(a1 + 696) - *(a1 + 688));
    v131 = *(a1 + 688) + v128;
    *(a1 + 688) = v131;
    v132 = *(a1 + 696);
    if (*v132 < v131)
    {
      *v132 = v131;
    }
  }

  v133 = *(a2 + 40);
  if (!v133)
  {
    goto LABEL_110;
  }

  if (v133)
  {
    v134 = *(a2 + 704);
    *(a1 + 40) |= 1u;
    v135 = *(a1 + 8);
    v136 = (v135 & 0xFFFFFFFFFFFFFFFCLL);
    if (v135)
    {
      v136 = *v136;
    }

    sub_194EA1C((a1 + 704), (v134 & 0xFFFFFFFFFFFFFFFELL), v136);
    if ((v133 & 2) == 0)
    {
LABEL_79:
      if ((v133 & 4) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_92;
    }
  }

  else if ((v133 & 2) == 0)
  {
    goto LABEL_79;
  }

  v137 = *(a2 + 712);
  *(a1 + 40) |= 2u;
  v138 = *(a1 + 8);
  v139 = (v138 & 0xFFFFFFFFFFFFFFFCLL);
  if (v138)
  {
    v139 = *v139;
  }

  sub_194EA1C((a1 + 712), (v137 & 0xFFFFFFFFFFFFFFFELL), v139);
  if ((v133 & 4) == 0)
  {
LABEL_80:
    if ((v133 & 8) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_95;
  }

LABEL_92:
  v140 = *(a2 + 720);
  *(a1 + 40) |= 4u;
  v141 = *(a1 + 8);
  v142 = (v141 & 0xFFFFFFFFFFFFFFFCLL);
  if (v141)
  {
    v142 = *v142;
  }

  sub_194EA1C((a1 + 720), (v140 & 0xFFFFFFFFFFFFFFFELL), v142);
  if ((v133 & 8) == 0)
  {
LABEL_81:
    if ((v133 & 0x10) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_98;
  }

LABEL_95:
  v143 = *(a2 + 728);
  *(a1 + 40) |= 8u;
  v144 = *(a1 + 8);
  v145 = (v144 & 0xFFFFFFFFFFFFFFFCLL);
  if (v144)
  {
    v145 = *v145;
  }

  sub_194EA1C((a1 + 728), (v143 & 0xFFFFFFFFFFFFFFFELL), v145);
  if ((v133 & 0x10) == 0)
  {
LABEL_82:
    if ((v133 & 0x20) == 0)
    {
      goto LABEL_83;
    }

LABEL_101:
    v149 = *(a2 + 744);
    *(a1 + 40) |= 0x20u;
    v150 = *(a1 + 8);
    v151 = (v150 & 0xFFFFFFFFFFFFFFFCLL);
    if (v150)
    {
      v151 = *v151;
    }

    sub_194EA1C((a1 + 744), (v149 & 0xFFFFFFFFFFFFFFFELL), v151);
    if ((v133 & 0x40) == 0)
    {
LABEL_84:
      if ((v133 & 0x80) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_107;
    }

    goto LABEL_104;
  }

LABEL_98:
  v146 = *(a2 + 736);
  *(a1 + 40) |= 0x10u;
  v147 = *(a1 + 8);
  v148 = (v147 & 0xFFFFFFFFFFFFFFFCLL);
  if (v147)
  {
    v148 = *v148;
  }

  sub_194EA1C((a1 + 736), (v146 & 0xFFFFFFFFFFFFFFFELL), v148);
  if ((v133 & 0x20) != 0)
  {
    goto LABEL_101;
  }

LABEL_83:
  if ((v133 & 0x40) == 0)
  {
    goto LABEL_84;
  }

LABEL_104:
  v152 = *(a2 + 752);
  *(a1 + 40) |= 0x40u;
  v153 = *(a1 + 8);
  v154 = (v153 & 0xFFFFFFFFFFFFFFFCLL);
  if (v153)
  {
    v154 = *v154;
  }

  sub_194EA1C((a1 + 752), (v152 & 0xFFFFFFFFFFFFFFFELL), v154);
  if ((v133 & 0x80) != 0)
  {
LABEL_107:
    v155 = *(a2 + 760);
    *(a1 + 40) |= 0x80u;
    v156 = *(a1 + 8);
    v157 = (v156 & 0xFFFFFFFFFFFFFFFCLL);
    if (v156)
    {
      v157 = *v157;
    }

    sub_194EA1C((a1 + 760), (v155 & 0xFFFFFFFFFFFFFFFELL), v157);
  }

LABEL_110:
  if ((v133 & 0xFF00) == 0)
  {
    goto LABEL_180;
  }

  if ((v133 & 0x100) != 0)
  {
    v158 = *(a2 + 768);
    *(a1 + 40) |= 0x100u;
    v159 = *(a1 + 8);
    v160 = (v159 & 0xFFFFFFFFFFFFFFFCLL);
    if (v159)
    {
      v160 = *v160;
    }

    sub_194EA1C((a1 + 768), (v158 & 0xFFFFFFFFFFFFFFFELL), v160);
    if ((v133 & 0x200) == 0)
    {
LABEL_113:
      if ((v133 & 0x400) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_128;
    }
  }

  else if ((v133 & 0x200) == 0)
  {
    goto LABEL_113;
  }

  *(a1 + 40) |= 0x200u;
  v161 = *(a1 + 776);
  if (!v161)
  {
    v162 = *(a1 + 8);
    v163 = (v162 & 0xFFFFFFFFFFFFFFFCLL);
    if (v162)
    {
      v163 = *v163;
    }

    sub_14BB174(v163);
    *(a1 + 776) = v161;
  }

  if (*(a2 + 776))
  {
    v164 = *(a2 + 776);
  }

  else
  {
    v164 = &off_27718F8;
  }

  sub_145C95C(v161, v164);
  if ((v133 & 0x400) == 0)
  {
LABEL_114:
    if ((v133 & 0x800) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(a1 + 40) |= 0x400u;
  v165 = *(a1 + 784);
  if (!v165)
  {
    v166 = *(a1 + 8);
    v167 = (v166 & 0xFFFFFFFFFFFFFFFCLL);
    if (v166)
    {
      v167 = *v167;
    }

    sub_14BCBFC(v167);
    *(a1 + 784) = v165;
  }

  if (*(a2 + 784))
  {
    v168 = *(a2 + 784);
  }

  else
  {
    v168 = &off_2772418;
  }

  sub_147D280(v165, v168);
  if ((v133 & 0x800) == 0)
  {
LABEL_115:
    if ((v133 & 0x1000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(a1 + 40) |= 0x800u;
  v169 = *(a1 + 792);
  if (!v169)
  {
    v170 = *(a1 + 8);
    v171 = (v170 & 0xFFFFFFFFFFFFFFFCLL);
    if (v170)
    {
      v171 = *v171;
    }

    sub_14BCB78(v171);
    *(a1 + 792) = v169;
  }

  if (*(a2 + 792))
  {
    v172 = *(a2 + 792);
  }

  else
  {
    v172 = &off_27723D0;
  }

  sub_147C7C4(v169, v172);
  if ((v133 & 0x1000) != 0)
  {
LABEL_144:
    *(a1 + 40) |= 0x1000u;
    v173 = *(a1 + 800);
    if (!v173)
    {
      v174 = *(a1 + 8);
      v175 = (v174 & 0xFFFFFFFFFFFFFFFCLL);
      if (v174)
      {
        v175 = *v175;
      }

      sub_14BF2AC(v175);
      *(a1 + 800) = v173;
    }

    if (*(a2 + 800))
    {
      v176 = *(a2 + 800);
    }

    else
    {
      v176 = &off_27739D8;
    }

    sub_1482354(v173, v176);
  }

LABEL_152:
  if ((v133 & 0x2000) != 0)
  {
    *(a1 + 40) |= 0x2000u;
    v177 = *(a1 + 808);
    if (!v177)
    {
      v178 = *(a1 + 8);
      v179 = (v178 & 0xFFFFFFFFFFFFFFFCLL);
      if (v178)
      {
        v179 = *v179;
      }

      sub_14BAE64(v179);
      *(a1 + 808) = v177;
    }

    if (*(a2 + 808))
    {
      v180 = *(a2 + 808);
    }

    else
    {
      v180 = &off_2771738;
    }

    sub_144EF20(v177, v180);
    if ((v133 & 0x4000) == 0)
    {
LABEL_154:
      if ((v133 & 0x8000) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_172;
    }
  }

  else if ((v133 & 0x4000) == 0)
  {
    goto LABEL_154;
  }

  *(a1 + 40) |= 0x4000u;
  v181 = *(a1 + 816);
  if (!v181)
  {
    v182 = *(a1 + 8);
    v183 = (v182 & 0xFFFFFFFFFFFFFFFCLL);
    if (v182)
    {
      v183 = *v183;
    }

    sub_14BBF6C(v183);
    *(a1 + 816) = v181;
  }

  if (*(a2 + 816))
  {
    v184 = *(a2 + 816);
  }

  else
  {
    v184 = &off_2771EF0;
  }

  sub_146D598(v181, v184);
  if ((v133 & 0x8000) != 0)
  {
LABEL_172:
    *(a1 + 40) |= 0x8000u;
    v185 = *(a1 + 824);
    if (!v185)
    {
      v186 = *(a1 + 8);
      v187 = (v186 & 0xFFFFFFFFFFFFFFFCLL);
      if (v186)
      {
        v187 = *v187;
      }

      sub_14BAE64(v187);
      *(a1 + 824) = v185;
    }

    if (*(a2 + 824))
    {
      v188 = *(a2 + 824);
    }

    else
    {
      v188 = &off_2771738;
    }

    sub_144EF20(v185, v188);
  }

LABEL_180:
  if ((v133 & 0xFF0000) == 0)
  {
    goto LABEL_207;
  }

  if ((v133 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v189 = *(a1 + 832);
    if (!v189)
    {
      v190 = *(a1 + 8);
      v191 = (v190 & 0xFFFFFFFFFFFFFFFCLL);
      if (v190)
      {
        v191 = *v191;
      }

      a3.n128_f64[0] = sub_14BC9E8(v191);
      *(a1 + 832) = v189;
    }

    if (*(a2 + 832))
    {
      v192 = *(a2 + 832);
    }

    else
    {
      v192 = &off_2772310;
    }

    sub_1474F58(v189, v192, a3);
  }

  if ((v133 & 0x20000) != 0)
  {
    *(a1 + 40) |= 0x20000u;
    v193 = *(a1 + 840);
    if (!v193)
    {
      v194 = *(a1 + 8);
      v195 = (v194 & 0xFFFFFFFFFFFFFFFCLL);
      if (v194)
      {
        v195 = *v195;
      }

      a3.n128_f64[0] = sub_14BC9E8(v195);
      *(a1 + 840) = v193;
    }

    if (*(a2 + 840))
    {
      v196 = *(a2 + 840);
    }

    else
    {
      v196 = &off_2772310;
    }

    sub_1474F58(v193, v196, a3);
  }

  if ((v133 & 0x40000) != 0)
  {
    *(a1 + 40) |= 0x40000u;
    v199 = *(a1 + 848);
    if (!v199)
    {
      v200 = *(a1 + 8);
      v201 = (v200 & 0xFFFFFFFFFFFFFFFCLL);
      if (v200)
      {
        v201 = *v201;
      }

      v199 = sub_14BB0C4(v201);
      *(a1 + 848) = v199;
    }

    if (*(a2 + 848))
    {
      v202 = *(a2 + 848);
    }

    else
    {
      v202 = &off_2771880;
    }

    sub_145BD3C(v199, v202, a3);
    if ((v133 & 0x80000) == 0)
    {
LABEL_201:
      if ((v133 & 0x100000) == 0)
      {
        goto LABEL_202;
      }

      goto LABEL_247;
    }
  }

  else if ((v133 & 0x80000) == 0)
  {
    goto LABEL_201;
  }

  *(a1 + 40) |= 0x80000u;
  v203 = *(a1 + 856);
  if (!v203)
  {
    v204 = *(a1 + 8);
    v205 = (v204 & 0xFFFFFFFFFFFFFFFCLL);
    if (v204)
    {
      v205 = *v205;
    }

    v203 = sub_14BB0C4(v205);
    *(a1 + 856) = v203;
  }

  if (*(a2 + 856))
  {
    v206 = *(a2 + 856);
  }

  else
  {
    v206 = &off_2771880;
  }

  sub_145BD3C(v203, v206, a3);
  if ((v133 & 0x100000) == 0)
  {
LABEL_202:
    if ((v133 & 0x200000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_255;
  }

LABEL_247:
  *(a1 + 40) |= 0x100000u;
  v207 = *(a1 + 864);
  if (!v207)
  {
    v208 = *(a1 + 8);
    v209 = (v208 & 0xFFFFFFFFFFFFFFFCLL);
    if (v208)
    {
      v209 = *v209;
    }

    v207 = sub_14BF760(v209);
    *(a1 + 864) = v207;
  }

  if (*(a2 + 864))
  {
    v210 = *(a2 + 864);
  }

  else
  {
    v210 = &off_2773C58;
  }

  sub_1490D54(v207, v210);
  if ((v133 & 0x200000) == 0)
  {
LABEL_203:
    if ((v133 & 0x400000) == 0)
    {
      goto LABEL_204;
    }

LABEL_256:
    *(a1 + 876) = *(a2 + 876);
    if ((v133 & 0x800000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_205;
  }

LABEL_255:
  *(a1 + 872) = *(a2 + 872);
  if ((v133 & 0x400000) != 0)
  {
    goto LABEL_256;
  }

LABEL_204:
  if ((v133 & 0x800000) != 0)
  {
LABEL_205:
    *(a1 + 880) = *(a2 + 880);
  }

LABEL_206:
  *(a1 + 40) |= v133;
LABEL_207:
  if (!HIBYTE(v133))
  {
    goto LABEL_217;
  }

  if ((v133 & 0x1000000) != 0)
  {
    *(a1 + 884) = *(a2 + 884);
    if ((v133 & 0x2000000) == 0)
    {
LABEL_210:
      if ((v133 & 0x4000000) == 0)
      {
        goto LABEL_211;
      }

      goto LABEL_267;
    }
  }

  else if ((v133 & 0x2000000) == 0)
  {
    goto LABEL_210;
  }

  *(a1 + 888) = *(a2 + 888);
  if ((v133 & 0x4000000) == 0)
  {
LABEL_211:
    if ((v133 & 0x8000000) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_268;
  }

LABEL_267:
  *(a1 + 892) = *(a2 + 892);
  if ((v133 & 0x8000000) == 0)
  {
LABEL_212:
    if ((v133 & 0x10000000) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_269;
  }

LABEL_268:
  *(a1 + 896) = *(a2 + 896);
  if ((v133 & 0x10000000) == 0)
  {
LABEL_213:
    if ((v133 & 0x20000000) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_270;
  }

LABEL_269:
  *(a1 + 900) = *(a2 + 900);
  if ((v133 & 0x20000000) == 0)
  {
LABEL_214:
    if ((v133 & 0x40000000) == 0)
    {
      goto LABEL_215;
    }

LABEL_271:
    *(a1 + 908) = *(a2 + 908);
    if ((v133 & 0x80000000) == 0)
    {
      goto LABEL_216;
    }

LABEL_272:
    *(a1 + 912) = *(a2 + 912);
    goto LABEL_216;
  }

LABEL_270:
  *(a1 + 904) = *(a2 + 904);
  if ((v133 & 0x40000000) != 0)
  {
    goto LABEL_271;
  }

LABEL_215:
  if ((v133 & 0x80000000) != 0)
  {
    goto LABEL_272;
  }

LABEL_216:
  *(a1 + 40) |= v133;
LABEL_217:
  v197 = *(a2 + 44);
  if ((v197 & 0x7F) == 0)
  {
    goto LABEL_227;
  }

  if (v197)
  {
    *(a1 + 916) = *(a2 + 916);
    if ((v197 & 2) == 0)
    {
LABEL_220:
      if ((v197 & 4) == 0)
      {
        goto LABEL_221;
      }

      goto LABEL_260;
    }
  }

  else if ((v197 & 2) == 0)
  {
    goto LABEL_220;
  }

  *(a1 + 917) = *(a2 + 917);
  if ((v197 & 4) == 0)
  {
LABEL_221:
    if ((v197 & 8) == 0)
    {
      goto LABEL_222;
    }

    goto LABEL_261;
  }

LABEL_260:
  *(a1 + 918) = *(a2 + 918);
  if ((v197 & 8) == 0)
  {
LABEL_222:
    if ((v197 & 0x10) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_262;
  }

LABEL_261:
  *(a1 + 920) = *(a2 + 920);
  if ((v197 & 0x10) == 0)
  {
LABEL_223:
    if ((v197 & 0x20) == 0)
    {
      goto LABEL_224;
    }

LABEL_263:
    *(a1 + 928) = *(a2 + 928);
    if ((v197 & 0x40) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_225;
  }

LABEL_262:
  *(a1 + 924) = *(a2 + 924);
  if ((v197 & 0x20) != 0)
  {
    goto LABEL_263;
  }

LABEL_224:
  if ((v197 & 0x40) != 0)
  {
LABEL_225:
    *(a1 + 932) = *(a2 + 932);
  }

LABEL_226:
  *(a1 + 44) |= v197;
LABEL_227:
  sub_225EA0C(a1 + 16, a2 + 16);
  v198 = *(a2 + 8);
  if (v198)
  {

    sub_1957EF4((a1 + 8), (v198 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_1490D54(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_15676CC((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
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

void sub_1490E10(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_148C3F4(result);

    sub_148FCC4(result, a2, v5);
  }
}

uint64_t sub_1490E5C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 64);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1472AF8(*(*(a1 + 72) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_1491140(a1 + 200);
    if (result)
    {
      v6 = *(a1 + 232);
      while (v6 >= 1)
      {
        v7 = v6 - 1;
        v8 = sub_14A3124(*(*(a1 + 240) + 8 * v6));
        v6 = v7;
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      v9 = *(a1 + 304);
      while (v9 >= 1)
      {
        v10 = v9 - 1;
        v11 = sub_144F560(*(*(a1 + 312) + 8 * v9));
        v9 = v10;
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      v12 = *(a1 + 328);
      while (v12 >= 1)
      {
        v13 = v12 - 1;
        v14 = sub_144F560(*(*(a1 + 336) + 8 * v12));
        result = 0;
        v12 = v13;
        if ((v14 & 1) == 0)
        {
          return result;
        }
      }

      v15 = *(a1 + 352);
      while (v15 >= 1)
      {
        v16 = v15 - 1;
        v17 = sub_144F560(*(*(a1 + 360) + 8 * v15));
        result = 0;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          return result;
        }
      }

      v18 = *(a1 + 376);
      while (v18 >= 1)
      {
        v19 = v18 - 1;
        v20 = sub_1464954(*(*(a1 + 384) + 8 * v18));
        result = 0;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          return result;
        }
      }

      result = sub_1483078(a1 + 440);
      if (result)
      {
        result = sub_149119C(a1 + 464);
        if (result)
        {
          v21 = *(a1 + 616);
          while (v21 >= 1)
          {
            v22 = v21 - 1;
            v23 = sub_14509FC(*(*(a1 + 624) + 8 * v21));
            result = 0;
            v21 = v22;
            if ((v23 & 1) == 0)
            {
              return result;
            }
          }

          v24 = *(a1 + 640);
          while (v24 >= 1)
          {
            v25 = v24 - 1;
            v26 = sub_14509FC(*(*(a1 + 648) + 8 * v24));
            result = 0;
            v24 = v25;
            if ((v26 & 1) == 0)
            {
              return result;
            }
          }

          v27 = *(a1 + 664);
          while (v27 >= 1)
          {
            v28 = v27 - 1;
            v29 = sub_1487B50(*(*(a1 + 672) + 8 * v27));
            result = 0;
            v27 = v28;
            if ((v29 & 1) == 0)
            {
              return result;
            }
          }

          result = sub_14911F8(a1 + 680);
          if (result)
          {
            v30 = *(a1 + 40);
            if ((v30 & 0x200) != 0)
            {
              result = sub_145CB24(*(a1 + 776));
              if (!result)
              {
                return result;
              }

              v30 = *(a1 + 40);
            }

            if ((v30 & 0x400) != 0)
            {
              result = sub_147D40C(*(a1 + 784));
              if (!result)
              {
                return result;
              }

              v30 = *(a1 + 40);
            }

            if ((v30 & 0x800) != 0)
            {
              result = sub_147C9F0(*(a1 + 792));
              if (!result)
              {
                return result;
              }

              v30 = *(a1 + 40);
            }

            if ((v30 & 0x1000) != 0)
            {
              v31 = *(a1 + 800);
              if (*(v31 + 16))
              {
                result = sub_144F560(*(v31 + 40));
                if (!result)
                {
                  return result;
                }

                v30 = *(a1 + 40);
              }
            }

            if ((v30 & 0x2000) != 0)
            {
              result = sub_144F560(*(a1 + 808));
              if (!result)
              {
                return result;
              }

              v30 = *(a1 + 40);
            }

            if ((v30 & 0x4000) != 0)
            {
              result = sub_146D788(*(a1 + 816));
              if (!result)
              {
                return result;
              }

              v30 = *(a1 + 40);
            }

            if ((v30 & 0x8000) != 0)
            {
              result = sub_144F560(*(a1 + 824));
              if (!result)
              {
                return result;
              }

              v30 = *(a1 + 40);
            }

            if ((v30 & 0x10000) != 0)
            {
              result = sub_1475308(*(a1 + 832));
              if (!result)
              {
                return result;
              }

              v30 = *(a1 + 40);
            }

            if ((v30 & 0x20000) != 0)
            {
              result = sub_1475308(*(a1 + 840));
              if (!result)
              {
                return result;
              }

              v30 = *(a1 + 40);
            }

            if ((v30 & 0x40000) != 0)
            {
              result = sub_145BFA4(*(a1 + 848));
              if (!result)
              {
                return result;
              }

              v30 = *(a1 + 40);
            }

            if ((v30 & 0x80000) == 0)
            {
              return 1;
            }

            result = sub_145BFA4(*(a1 + 856));
            if (result)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1491140(uint64_t a1)
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
      result = sub_16EA33C(*(v3 + 48));
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

uint64_t sub_149119C(uint64_t a1)
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
      result = sub_144F560(*(v3 + 40));
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

uint64_t sub_14911F8(uint64_t a1)
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
      result = sub_16EA33C(*(v3 + 24));
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

uint64_t sub_1491264(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26E6040;
  *(result + 8) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_149129C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E6040;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  return a1;
}

void sub_1491320(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1491354(void *a1)
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

void sub_14913C8(void *a1)
{
  sub_1491354(a1);

  operator delete();
}

uint64_t sub_1491400(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
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

char *sub_1491428(uint64_t a1, char *a2, int32x2_t *a3)
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
    v11 = v8 >> 3;
    if (v8 >> 3 != 4)
    {
      if (v11 != 2)
      {
        if (v11 == 1 && v8 == 9)
        {
          v21 = *v7;
          v19 = v7 + 8;
          v5 |= 1u;
          *(a1 + 24) = v21;
          goto LABEL_31;
        }

        goto LABEL_13;
      }

      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v17 = v7 + 1;
      v16 = *v7;
      if (v16 < 0)
      {
        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          v22 = sub_19587DC(v7, v16);
          if (!v22)
          {
            goto LABEL_40;
          }

          goto LABEL_26;
        }

        v17 = v7 + 2;
      }

      v22 = v17;
LABEL_26:
      if (v16 > 1)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 40) = v16;
      }

      goto LABEL_32;
    }

    if (v8 == 33)
    {
      v20 = *v7;
      v19 = v7 + 8;
      v5 |= 2u;
      *(a1 + 32) = v20;
LABEL_31:
      v22 = v19;
      goto LABEL_32;
    }

LABEL_13:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v22;
    }

    v22 = sub_1952690(v8, v15, v7, a3);
    if (!v22)
    {
      goto LABEL_40;
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

LABEL_40:
  v22 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

char *sub_149160C(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 9;
    *(__dst + 1) = v6;
    __dst += 9;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 40);
    *__dst = 16;
    __dst[1] = v8;
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v7 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
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
      v7 = __dst + 2;
    }
  }

  else
  {
    v7 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 32);
    *v7 = 33;
    *(v7 + 1) = v12;
    v7 += 9;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

uint64_t sub_14917A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
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
      v3 = *(a1 + 40);
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v3 >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 11;
      }

      v2 += v5;
    }
  }

  else
  {
    v2 = 0;
  }

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

std::string *sub_1491830(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1491894(std::string *result, std::string *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_1491400(result);

    return sub_1491830(v4, a2);
  }

  return result;
}

uint64_t sub_14918F8(uint64_t a1)
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

uint64_t sub_1491910(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E60C0;
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

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 40);
  if (v7)
  {
    sub_1958E5C((a1 + 40), v7);
    v8 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy(v8, *(a2 + 48), 4 * *(a2 + 40));
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v9 = *(a2 + 56);
  if (v9)
  {
    sub_1958E5C((a1 + 56), v9);
    v10 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy(v10, *(a2 + 64), 4 * *(a2 + 56));
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 72) = &qword_278E990;
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v13);
    v12 = *(a2 + 16);
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
  if ((v12 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v12 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v12 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  if ((v12 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  v14 = *(a2 + 128);
  v15 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v14;
  *(a1 + 144) = v15;
  return a1;
}

void *sub_1491CC8(void *a1)
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

  sub_1491D64(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 7));
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1491D64(uint64_t a1)
{
  v3 = *(a1 + 72);
  result = (a1 + 72);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2772E28)
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      sub_1491354(v4);
      operator delete();
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      sub_14AB180(v5);
      operator delete();
    }

    v6 = *(a1 + 96);
    if (v6)
    {
      sub_14AE124(v6);
      operator delete();
    }

    v7 = *(a1 + 104);
    if (v7)
    {
      sub_14AF234(v7);
      operator delete();
    }

    v8 = *(a1 + 112);
    if (v8)
    {
      sub_154C5EC(v8);
      operator delete();
    }

    result = *(a1 + 120);
    if (result)
    {
      sub_14AD374(result);

      operator delete();
    }
  }

  return result;
}

void sub_1491E88(void *a1)
{
  sub_1491CC8(a1);

  operator delete();
}

uint64_t sub_1491EC0(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  v2 = *(result + 16);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_21;
  }

  if (v2)
  {
    v3 = *(result + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_13:
  result = sub_1491400(*(result + 80));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_149200C(*(v1 + 88));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    result = sub_1492110(*(v1 + 104));
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    v4 = *(v1 + 112);
    v5 = *(v4 + 8);
    result = v4 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v5)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_19;
  }

LABEL_15:
  result = sub_1492094(*(v1 + 96));
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  if ((v2 & 0x40) != 0)
  {
    result = sub_1492188(*(v1 + 120));
  }

LABEL_21:
  *(v1 + 128) = 0;
  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 139) = 0;
    *(v1 + 132) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 148) = 0;
    *(v1 + 143) = 0;
  }

  if ((v2 & 0xF000000) != 0)
  {
    *(v1 + 156) = 800000;
    *(v1 + 160) = 257;
    *(v1 + 164) = 1;
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

uint64_t sub_149200C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_14AA998(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_14A9F60(*(v1 + 32));
    }
  }

  *(v1 + 40) = 0;
  if ((v2 & 0x30) != 0)
  {
    *(v1 + 44) = 1;
    *(v1 + 48) = 1;
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

uint64_t sub_1492094(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    result = sub_14ADA48(*(a1 + 64));
  }

  if ((v3 & 0xE) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
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

uint64_t sub_1492110(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    v2 = *(result + 40);
    v3 = *(v2 + 8);
    result = v2 + 8;
    *(result + 18) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v3)
    {
      result = sub_1957EA8(result);
    }
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 40) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1492188(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v3 = *(result + 24);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 18) = 0;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(v1 + 32);
      v6 = *(v5 + 8);
      result = v5 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v6)
      {
        result = sub_1957EA8(result);
      }
    }
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

uint64_t sub_149221C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v155 = a2;
  v6 = 0;
  if (sub_195ADC0(a3, v155, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  v8 = (a1 + 8);
  while (2)
  {
    v9 = (*v155 + 1);
    v10 = **v155;
    if (**v155 < 0)
    {
      v11 = *v9;
      v12 = v10 + (v11 << 7);
      v10 = v12 - 128;
      if (v11 < 0)
      {
        v9 = sub_1958824(*v155, v12 - 128);
        v10 = v13;
      }

      else
      {
        v9 = (*v155 + 2);
      }
    }

    *v155 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 8)
        {
          goto LABEL_262;
        }

        v15 = v9 + 1;
        v14 = *v9;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          *v155 = sub_19587DC(v9, v14);
          if (!*v155)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v15 = v9 + 2;
LABEL_13:
          *v155 = v15;
        }

        if (v14 > 6)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 0x80u;
          *(a1 + 128) = v14;
        }

        goto LABEL_270;
      case 2u:
        if (v10 != 16)
        {
          goto LABEL_262;
        }

        v6 |= 0x200u;
        v73 = v9 + 1;
        v72 = *v9;
        if ((v72 & 0x8000000000000000) == 0)
        {
          goto LABEL_122;
        }

        v74 = *v73;
        v72 = (v74 << 7) + v72 - 128;
        if (v74 < 0)
        {
          v140 = sub_19587DC(v9, v72);
          *v155 = v140;
          *(a1 + 136) = v141 != 0;
          if (!v140)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v73 = v9 + 2;
LABEL_122:
          *v155 = v73;
          *(a1 + 136) = v72 != 0;
        }

        goto LABEL_270;
      case 3u:
        if (v10 != 24)
        {
          goto LABEL_262;
        }

        v6 |= 0x2000000u;
        v58 = v9 + 1;
        v57 = *v9;
        if ((v57 & 0x8000000000000000) == 0)
        {
          goto LABEL_97;
        }

        v59 = *v58;
        v57 = (v59 << 7) + v57 - 128;
        if (v59 < 0)
        {
          v130 = sub_19587DC(v9, v57);
          *v155 = v130;
          *(a1 + 160) = v131 != 0;
          if (!v130)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v58 = v9 + 2;
LABEL_97:
          *v155 = v58;
          *(a1 + 160) = v57 != 0;
        }

        goto LABEL_270;
      case 4u:
        if (v10 != 32)
        {
          goto LABEL_262;
        }

        v6 |= 0x400u;
        v95 = v9 + 1;
        v94 = *v9;
        if ((v94 & 0x8000000000000000) == 0)
        {
          goto LABEL_169;
        }

        v96 = *v95;
        v94 = (v96 << 7) + v94 - 128;
        if (v96 < 0)
        {
          v144 = sub_19587DC(v9, v94);
          *v155 = v144;
          *(a1 + 137) = v145 != 0;
          if (!v144)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v95 = v9 + 2;
LABEL_169:
          *v155 = v95;
          *(a1 + 137) = v94 != 0;
        }

        goto LABEL_270;
      case 5u:
        if (v10 != 40)
        {
          goto LABEL_262;
        }

        v6 |= 0x1000u;
        v98 = v9 + 1;
        v97 = *v9;
        if ((v97 & 0x8000000000000000) == 0)
        {
          goto LABEL_174;
        }

        v99 = *v98;
        v97 = (v99 << 7) + v97 - 128;
        if (v99 < 0)
        {
          v146 = sub_19587DC(v9, v97);
          *v155 = v146;
          *(a1 + 139) = v147 != 0;
          if (!v146)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v98 = v9 + 2;
LABEL_174:
          *v155 = v98;
          *(a1 + 139) = v97 != 0;
        }

        goto LABEL_270;
      case 6u:
        if (v10 != 48)
        {
          goto LABEL_262;
        }

        v6 |= 0x2000u;
        v64 = v9 + 1;
        v63 = *v9;
        if ((v63 & 0x8000000000000000) == 0)
        {
          goto LABEL_107;
        }

        v65 = *v64;
        v63 = (v65 << 7) + v63 - 128;
        if (v65 < 0)
        {
          v134 = sub_19587DC(v9, v63);
          *v155 = v134;
          *(a1 + 140) = v135 != 0;
          if (!v134)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v64 = v9 + 2;
LABEL_107:
          *v155 = v64;
          *(a1 + 140) = v63 != 0;
        }

        goto LABEL_270;
      case 7u:
        if (v10 != 56)
        {
          goto LABEL_262;
        }

        v76 = v9 + 1;
        v75 = *v9;
        if ((v75 & 0x8000000000000000) == 0)
        {
          goto LABEL_127;
        }

        v77 = *v76;
        v75 = (v77 << 7) + v75 - 128;
        if (v77 < 0)
        {
          *v155 = sub_19587DC(v9, v75);
          if (!*v155)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v76 = v9 + 2;
LABEL_127:
          *v155 = v76;
        }

        if (v75 > 2)
        {
          sub_13ED178();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 132) = v75;
        }

        goto LABEL_270;
      case 8u:
        if (v10 != 64)
        {
          goto LABEL_262;
        }

        v79 = v9 + 1;
        v78 = *v9;
        if ((v78 & 0x8000000000000000) == 0)
        {
          goto LABEL_134;
        }

        v80 = *v79;
        v78 = (v80 << 7) + v78 - 128;
        if (v80 < 0)
        {
          *v155 = sub_19587DC(v9, v78);
          if (!*v155)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v79 = v9 + 2;
LABEL_134:
          *v155 = v79;
        }

        if ((v78 - 1) > 2)
        {
          sub_13B67EC();
        }

        else
        {
          *(a1 + 16) |= 0x8000000u;
          *(a1 + 164) = v78;
        }

        goto LABEL_270;
      case 9u:
        if (v10 != 74)
        {
          goto LABEL_262;
        }

        *(a1 + 16) |= 1u;
        v103 = *(a1 + 8);
        v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
        if (v103)
        {
          v104 = *v104;
        }

        v105 = sub_194DB04((a1 + 72), v104);
        v39 = sub_1958890(v105, *v155, a3);
        goto LABEL_269;
      case 0xAu:
        if (v10 != 80)
        {
          goto LABEL_262;
        }

        v6 |= 0x4000u;
        v101 = v9 + 1;
        v100 = *v9;
        if ((v100 & 0x8000000000000000) == 0)
        {
          goto LABEL_179;
        }

        v102 = *v101;
        v100 = (v102 << 7) + v100 - 128;
        if (v102 < 0)
        {
          v148 = sub_19587DC(v9, v100);
          *v155 = v148;
          *(a1 + 141) = v149 != 0;
          if (!v148)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v101 = v9 + 2;
LABEL_179:
          *v155 = v101;
          *(a1 + 141) = v100 != 0;
        }

        goto LABEL_270;
      case 0xBu:
        if (v10 != 90)
        {
          goto LABEL_262;
        }

        *(a1 + 16) |= 2u;
        v37 = *(a1 + 80);
        if (!v37)
        {
          v38 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v38 = *v38;
          }

          v37 = sub_14BD794(v38);
          *(a1 + 80) = v37;
          v9 = *v155;
        }

        v39 = sub_220B5C8(a3, v37, v9);
        goto LABEL_269;
      case 0xCu:
        if (v10 != 96)
        {
          goto LABEL_262;
        }

        v6 |= 0x4000000u;
        v67 = v9 + 1;
        v66 = *v9;
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_112;
        }

        v68 = *v67;
        v66 = (v68 << 7) + v66 - 128;
        if (v68 < 0)
        {
          v136 = sub_19587DC(v9, v66);
          *v155 = v136;
          *(a1 + 161) = v137 != 0;
          if (!v136)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v67 = v9 + 2;
LABEL_112:
          *v155 = v67;
          *(a1 + 161) = v66 != 0;
        }

        goto LABEL_270;
      case 0xEu:
        if (v10 != 112)
        {
          goto LABEL_262;
        }

        v6 |= 0x8000u;
        v52 = v9 + 1;
        v51 = *v9;
        if ((v51 & 0x8000000000000000) == 0)
        {
          goto LABEL_87;
        }

        v53 = *v52;
        v51 = (v53 << 7) + v51 - 128;
        if (v53 < 0)
        {
          v126 = sub_19587DC(v9, v51);
          *v155 = v126;
          *(a1 + 142) = v127 != 0;
          if (!v126)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v52 = v9 + 2;
LABEL_87:
          *v155 = v52;
          *(a1 + 142) = v51 != 0;
        }

        goto LABEL_270;
      case 0xFu:
        if (v10 != 120)
        {
          goto LABEL_262;
        }

        v6 |= 0x1000000u;
        v28 = v9 + 1;
        v29 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        v30 = *v28;
        v29 = v29 + (v30 << 7) - 128;
        if (v30 < 0)
        {
          v118 = sub_1958770(v9, v29);
          *v155 = v118;
          *(a1 + 156) = v119;
          if (!v118)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v28 = v9 + 2;
LABEL_44:
          *v155 = v28;
          *(a1 + 156) = v29;
        }

        goto LABEL_270;
      case 0x10u:
        if (v10 == 128)
        {
          v81 = (v9 - 2);
          while (1)
          {
            *v155 = v81 + 2;
            v82 = *(v81 + 2);
            v83 = (v81 + 3);
            if (v82 < 0)
            {
              v84 = *v83;
              v85 = (v84 << 7) + v82;
              LODWORD(v82) = v85 - 128;
              if (v84 < 0)
              {
                *v155 = sub_19587DC(v81 + 2, (v85 - 128));
                if (!*v155)
                {
                  goto LABEL_279;
                }

                LODWORD(v82) = v88;
                goto LABEL_143;
              }

              v83 = (v81 + 4);
            }

            *v155 = v83;
LABEL_143:
            if (v82 > 6)
            {
              sub_144E0FC();
            }

            else
            {
              v86 = *(a1 + 24);
              if (v86 == *(a1 + 28))
              {
                v87 = v86 + 1;
                sub_1958E5C((a1 + 24), v86 + 1);
                *(*(a1 + 32) + 4 * v86) = v82;
              }

              else
              {
                *(*(a1 + 32) + 4 * v86) = v82;
                v87 = v86 + 1;
              }

              *(a1 + 24) = v87;
            }

            v81 = *v155;
            if (*a3 <= *v155 || **v155 != 384)
            {
              goto LABEL_270;
            }
          }
        }

        if (v10 != 130)
        {
          goto LABEL_262;
        }

        *&v156 = a1 + 24;
        *(&v156 + 1) = sub_1470AE4;
        v157 = a1 + 8;
        v152 = 16;
        goto LABEL_261;
      case 0x11u:
        if (v10 != 138)
        {
          goto LABEL_262;
        }

        *(a1 + 16) |= 4u;
        v89 = *(a1 + 88);
        if (!v89)
        {
          v90 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v90 = *v90;
          }

          v89 = sub_14BE994(v90);
          *(a1 + 88) = v89;
          v9 = *v155;
        }

        v39 = sub_2210DC0(a3, v89, v9);
        goto LABEL_269;
      case 0x12u:
        if (v10 != 146)
        {
          goto LABEL_262;
        }

        *(a1 + 16) |= 8u;
        v109 = *(a1 + 96);
        if (!v109)
        {
          v110 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v110 = *v110;
          }

          v109 = sub_14BED24(v110);
          *(a1 + 96) = v109;
          v9 = *v155;
        }

        v39 = sub_2210E50(a3, v109, v9);
        goto LABEL_269;
      case 0x13u:
        if (v10 != 154)
        {
          goto LABEL_262;
        }

        *(a1 + 16) |= 0x10u;
        v106 = *(a1 + 104);
        if (!v106)
        {
          v107 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v107 = *v107;
          }

          sub_14BEDFC(v107);
          v106 = v108;
          *(a1 + 104) = v108;
          v9 = *v155;
        }

        v39 = sub_2210EE0(a3, v106, v9);
        goto LABEL_269;
      case 0x14u:
        if (v10 == 160)
        {
          v17 = (v9 - 2);
          while (1)
          {
            *v155 = v17 + 2;
            v18 = *(v17 + 2);
            v19 = (v17 + 3);
            if (v18 < 0)
            {
              v20 = *v19;
              v21 = (v20 << 7) + v18;
              LODWORD(v18) = v21 - 128;
              if (v20 < 0)
              {
                *v155 = sub_19587DC(v17 + 2, (v21 - 128));
                if (!*v155)
                {
                  goto LABEL_279;
                }

                LODWORD(v18) = v24;
                goto LABEL_22;
              }

              v19 = (v17 + 4);
            }

            *v155 = v19;
LABEL_22:
            if ((v18 - 1) > 3)
            {
              sub_13B6824();
            }

            else
            {
              v22 = *(a1 + 40);
              if (v22 == *(a1 + 44))
              {
                v23 = v22 + 1;
                sub_1958E5C((a1 + 40), v22 + 1);
                *(*(a1 + 48) + 4 * v22) = v18;
              }

              else
              {
                *(*(a1 + 48) + 4 * v22) = v18;
                v23 = v22 + 1;
              }

              *(a1 + 40) = v23;
            }

            v17 = *v155;
            if (*a3 <= *v155 || **v155 != 416)
            {
              goto LABEL_270;
            }
          }
        }

        if (v10 != 162)
        {
          goto LABEL_262;
        }

        *&v156 = a1 + 40;
        *(&v156 + 1) = sub_144E2F4;
        v157 = a1 + 8;
        v152 = 20;
        goto LABEL_261;
      case 0x15u:
        if (v10 != 168)
        {
          goto LABEL_262;
        }

        v6 |= 0x10000u;
        v55 = v9 + 1;
        v54 = *v9;
        if ((v54 & 0x8000000000000000) == 0)
        {
          goto LABEL_92;
        }

        v56 = *v55;
        v54 = (v56 << 7) + v54 - 128;
        if (v56 < 0)
        {
          v128 = sub_19587DC(v9, v54);
          *v155 = v128;
          *(a1 + 143) = v129 != 0;
          if (!v128)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v55 = v9 + 2;
LABEL_92:
          *v155 = v55;
          *(a1 + 143) = v54 != 0;
        }

        goto LABEL_270;
      case 0x1Eu:
        if (v10 != 242)
        {
          goto LABEL_262;
        }

        *(a1 + 16) |= 0x20u;
        v111 = *(a1 + 112);
        if (!v111)
        {
          v112 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v112 = *v112;
          }

          v111 = sub_1552508(v112);
          *(a1 + 112) = v111;
          v9 = *v155;
        }

        v39 = sub_2210F70(a3, v111, v9);
        goto LABEL_269;
      case 0x1Fu:
        if (v10 != 248)
        {
          goto LABEL_262;
        }

        v26 = v9 + 1;
        v25 = *v9;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          *v155 = sub_19587DC(v9, v25);
          if (!*v155)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v26 = v9 + 2;
LABEL_37:
          *v155 = v26;
        }

        if (v25 > 0xD)
        {
          sub_1355E94();
        }

        else
        {
          *(a1 + 16) |= 0x80000u;
          *(a1 + 148) = v25;
        }

        goto LABEL_270;
      case 0x20u:
        if (v10)
        {
          goto LABEL_262;
        }

        v6 |= 0x200000u;
        v49 = v9 + 1;
        v48 = *v9;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_82;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if (v50 < 0)
        {
          v124 = sub_19587DC(v9, v48);
          *v155 = v124;
          *(a1 + 153) = v125 != 0;
          if (!v124)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v49 = v9 + 2;
LABEL_82:
          *v155 = v49;
          *(a1 + 153) = v48 != 0;
        }

        goto LABEL_270;
      case 0x21u:
        if (v10 != 8)
        {
          goto LABEL_262;
        }

        v6 |= 0x100000u;
        v35 = v9 + 1;
        v34 = *v9;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if (v36 < 0)
        {
          v122 = sub_19587DC(v9, v34);
          *v155 = v122;
          *(a1 + 152) = v123 != 0;
          if (!v122)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v35 = v9 + 2;
LABEL_54:
          *v155 = v35;
          *(a1 + 152) = v34 != 0;
        }

        goto LABEL_270;
      case 0x22u:
        if (v10 != 16)
        {
          goto LABEL_262;
        }

        v6 |= 0x400000u;
        v70 = v9 + 1;
        v69 = *v9;
        if ((v69 & 0x8000000000000000) == 0)
        {
          goto LABEL_117;
        }

        v71 = *v70;
        v69 = (v71 << 7) + v69 - 128;
        if (v71 < 0)
        {
          v138 = sub_19587DC(v9, v69);
          *v155 = v138;
          *(a1 + 154) = v139 != 0;
          if (!v138)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v70 = v9 + 2;
LABEL_117:
          *v155 = v70;
          *(a1 + 154) = v69 != 0;
        }

        goto LABEL_270;
      case 0x23u:
        if (v10 != 24)
        {
          goto LABEL_262;
        }

        v6 |= 0x800000u;
        v32 = v9 + 1;
        v31 = *v9;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_49;
        }

        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if (v33 < 0)
        {
          v120 = sub_19587DC(v9, v31);
          *v155 = v120;
          *(a1 + 155) = v121 != 0;
          if (!v120)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v32 = v9 + 2;
LABEL_49:
          *v155 = v32;
          *(a1 + 155) = v31 != 0;
        }

        goto LABEL_270;
      case 0x24u:
        if (v10 != 34)
        {
          goto LABEL_262;
        }

        *(a1 + 16) |= 0x40u;
        v116 = *(a1 + 120);
        if (!v116)
        {
          v117 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v117 = *v117;
          }

          v116 = sub_14BEC30(v117);
          *(a1 + 120) = v116;
          v9 = *v155;
        }

        v39 = sub_2211000(a3, v116, v9);
        goto LABEL_269;
      case 0x25u:
        if (v10 != 40)
        {
          goto LABEL_262;
        }

        v6 |= 0x800u;
        v114 = v9 + 1;
        v113 = *v9;
        if ((v113 & 0x8000000000000000) == 0)
        {
          goto LABEL_206;
        }

        v115 = *v114;
        v113 = (v115 << 7) + v113 - 128;
        if (v115 < 0)
        {
          v150 = sub_19587DC(v9, v113);
          *v155 = v150;
          *(a1 + 138) = v151 != 0;
          if (!v150)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v114 = v9 + 2;
LABEL_206:
          *v155 = v114;
          *(a1 + 138) = v113 != 0;
        }

        goto LABEL_270;
      case 0x26u:
        if (v10 == 48)
        {
          v40 = (v9 - 2);
          while (1)
          {
            *v155 = v40 + 2;
            v41 = *(v40 + 2);
            v42 = (v40 + 3);
            if (v41 < 0)
            {
              v43 = *v42;
              v44 = (v43 << 7) + v41;
              LODWORD(v41) = v44 - 128;
              if (v43 < 0)
              {
                *v155 = sub_19587DC(v40 + 2, (v44 - 128));
                if (!*v155)
                {
                  goto LABEL_279;
                }

                LODWORD(v41) = v47;
                goto LABEL_67;
              }

              v42 = (v40 + 4);
            }

            *v155 = v42;
LABEL_67:
            if (v41 > 1)
            {
              sub_156E7A0();
            }

            else
            {
              v45 = *(a1 + 56);
              if (v45 == *(a1 + 60))
              {
                v46 = v45 + 1;
                sub_1958E5C((a1 + 56), v45 + 1);
                *(*(a1 + 64) + 4 * v45) = v41;
              }

              else
              {
                *(*(a1 + 64) + 4 * v45) = v41;
                v46 = v45 + 1;
              }

              *(a1 + 56) = v46;
            }

            v40 = *v155;
            if (*a3 <= *v155 || **v155 != 688)
            {
              goto LABEL_270;
            }
          }
        }

        if (v10 == 50)
        {
          *&v156 = a1 + 56;
          *(&v156 + 1) = sub_144E2D0;
          v157 = a1 + 8;
          v152 = 38;
LABEL_261:
          v158 = v152;
          v39 = sub_1216588(a3, v9, &v156, v5);
LABEL_269:
          *v155 = v39;
          if (!v39)
          {
            goto LABEL_279;
          }

LABEL_270:
          if (sub_195ADC0(a3, v155, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_262:
        if (v10)
        {
          v153 = (v10 & 7) == 4;
        }

        else
        {
          v153 = 1;
        }

        if (!v153)
        {
          if (*v8)
          {
            v154 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v154 = sub_11F1920((a1 + 8));
            v9 = *v155;
          }

          v39 = sub_1952690(v10, v154, v9, a3);
          goto LABEL_269;
        }

        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
        }

        else
        {
LABEL_279:
          *v155 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v6;
        return *v155;
      case 0x27u:
        if (v10 != 56)
        {
          goto LABEL_262;
        }

        v6 |= 0x20000u;
        v61 = v9 + 1;
        v60 = *v9;
        if ((v60 & 0x8000000000000000) == 0)
        {
          goto LABEL_102;
        }

        v62 = *v61;
        v60 = (v62 << 7) + v60 - 128;
        if (v62 < 0)
        {
          v132 = sub_19587DC(v9, v60);
          *v155 = v132;
          *(a1 + 144) = v133 != 0;
          if (!v132)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v61 = v9 + 2;
LABEL_102:
          *v155 = v61;
          *(a1 + 144) = v60 != 0;
        }

        goto LABEL_270;
      case 0x28u:
        if (v10 != 64)
        {
          goto LABEL_262;
        }

        v6 |= 0x40000u;
        v92 = v9 + 1;
        v91 = *v9;
        if ((v91 & 0x8000000000000000) == 0)
        {
          goto LABEL_164;
        }

        v93 = *v92;
        v91 = (v93 << 7) + v91 - 128;
        if (v93 < 0)
        {
          v142 = sub_19587DC(v9, v91);
          *v155 = v142;
          *(a1 + 145) = v143 != 0;
          if (!v142)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v92 = v9 + 2;
LABEL_164:
          *v155 = v92;
          *(a1 + 145) = v91 != 0;
        }

        goto LABEL_270;
      default:
        goto LABEL_262;
    }
  }
}