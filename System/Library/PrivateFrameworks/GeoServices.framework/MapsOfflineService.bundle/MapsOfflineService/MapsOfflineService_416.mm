uint64_t sub_16C2BBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x40) != 0)
  {
    result = sub_16E5370(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = sub_16E6614(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_16E5370(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    v4 = *(a1 + 136);
    if (*(v4 + 16))
    {
      result = sub_139B468(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x400) != 0)
  {
    result = sub_13991C0(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = sub_138F78C(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) == 0)
  {
    return 1;
  }

  result = sub_13F70D0(*(a1 + 160));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_16C2C78(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26FF998;
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
  *(a1 + 128) = &qword_278E990;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 197) = 0u;
  *(a1 + 216) = 10;
  return a1;
}

void sub_16C2D20(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_16C2D50(void *a1)
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

  sub_16C2E00(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1311F6C(a1 + 12);
  sub_1578204(a1 + 9);
  sub_13BA1C8(a1 + 6);
  sub_194F914((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_16C2E00(uint64_t a1)
{
  v3 = *(a1 + 120);
  v2 = (a1 + 120);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 128);
  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_277D918)
  {
    v5 = *(a1 + 136);
    if (v5)
    {
      sub_157C1B0(v5);
      operator delete();
    }

    v6 = *(a1 + 144);
    if (v6)
    {
      sub_16CC8AC(v6);
      operator delete();
    }

    v7 = *(a1 + 152);
    if (v7)
    {
      sub_16CC3F8(v7);
      operator delete();
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      sub_16C5BB0(v8);
      operator delete();
    }

    v9 = *(a1 + 168);
    if (v9)
    {
      sub_16CE6E8(v9);
      operator delete();
    }

    v10 = *(a1 + 176);
    if (v10)
    {
      sub_16C5160(v10);
      operator delete();
    }

    result = *(a1 + 184);
    if (result)
    {
      sub_15AB278(result);

      operator delete();
    }
  }

  return result;
}

void sub_16C2F58(void *a1)
{
  sub_16C2D50(a1);

  operator delete();
}

uint64_t sub_16C2F90(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16CEE4C(v5);
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
      result = sub_1571C00(v8);
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

  v12 = *(a1 + 40);
  if (!v12)
  {
    goto LABEL_23;
  }

  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_37:
    v16 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v16 + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
      if ((v12 & 4) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
      if ((v12 & 4) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

  v15 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_16:
  if ((v12 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_41:
  result = sub_157C1EC(*(a1 + 136));
  if ((v12 & 8) == 0)
  {
LABEL_18:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = sub_16C244C(*(a1 + 144));
  if ((v12 & 0x10) == 0)
  {
LABEL_19:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_44:
    result = sub_16C1520(*(a1 + 160));
    if ((v12 & 0x40) == 0)
    {
LABEL_21:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_43:
  result = sub_16C14F8(*(a1 + 152));
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_44;
  }

LABEL_20:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_45:
  result = sub_16C1804(*(a1 + 168));
  if ((v12 & 0x80) != 0)
  {
LABEL_22:
    result = sub_16C18A8(*(a1 + 176));
  }

LABEL_23:
  if ((v12 & 0x100) != 0)
  {
    result = sub_15AB2B4(*(a1 + 184));
  }

  if ((v12 & 0xFE00) != 0)
  {
    *(a1 + 197) = 0;
    *(a1 + 192) = 0;
  }

  if ((v12 & 0x3F0000) != 0)
  {
    *(a1 + 205) = 0;
    *(a1 + 216) = 10;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 32) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_16C316C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v124 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v124, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v124 + 1);
    v8 = **v124;
    if (**v124 < 0)
    {
      v8 = v8 + (*v7 << 7) - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v124, v8);
      }

      else
      {
        v7 = (*v124 + 2);
      }
    }

    *v124 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_158;
        }

        *(a1 + 40) |= 1u;
        v9 = *(a1 + 8);
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v11 = (a1 + 120);
        goto LABEL_44;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_158;
        }

        v47 = v7 - 1;
        while (1)
        {
          v48 = v47 + 1;
          *v124 = v47 + 1;
          v49 = *(a1 + 64);
          if (v49 && (v50 = *(a1 + 56), v50 < *v49))
          {
            *(a1 + 56) = v50 + 1;
            v51 = *&v49[2 * v50 + 2];
          }

          else
          {
            v52 = sub_16D1444(*(a1 + 48));
            v51 = sub_19593CC(a1 + 48, v52);
            v48 = *v124;
          }

          v47 = sub_2204A30(a3, v51, v48);
          *v124 = v47;
          if (!v47)
          {
            goto LABEL_201;
          }

          if (*a3 <= v47 || *v47 != 18)
          {
            goto LABEL_168;
          }
        }

      case 3u:
        if (v8 != 24)
        {
          goto LABEL_158;
        }

        v5 |= 0x200000u;
        v34 = v7 + 1;
        v35 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        v36 = *v34;
        v35 = v35 + (v36 << 7) - 128;
        if (v36 < 0)
        {
          v106 = sub_1958770(v7, v35);
          *v124 = v106;
          *(a1 + 216) = v107;
          if (!v106)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v34 = v7 + 2;
LABEL_54:
          *v124 = v34;
          *(a1 + 216) = v35;
        }

        goto LABEL_168;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_158;
        }

        v41 = v7 + 1;
        v40 = *v7;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_64;
        }

        v42 = *v41;
        v40 = (v42 << 7) + v40 - 128;
        if (v42 < 0)
        {
          *v124 = sub_19587DC(v7, v40);
          if (!*v124)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v41 = v7 + 2;
LABEL_64:
          *v124 = v41;
        }

        if (v40 > 9)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 40) |= 0x200u;
          *(a1 + 192) = v40;
        }

        goto LABEL_168;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_158;
        }

        *(a1 + 40) |= 4u;
        v22 = *(a1 + 136);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_157D924(v24);
          v22 = v25;
          *(a1 + 136) = v25;
          v7 = *v124;
        }

        v21 = sub_2226FF4(a3, v22, v7);
        goto LABEL_167;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_158;
        }

        *(a1 + 40) |= 8u;
        v62 = *(a1 + 144);
        if (!v62)
        {
          v63 = *(a1 + 8);
          v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
          if (v63)
          {
            v64 = *v64;
          }

          sub_16D1260(v64);
          v62 = v65;
          *(a1 + 144) = v65;
          v7 = *v124;
        }

        v21 = sub_2233B0C(a3, v62, v7);
        goto LABEL_167;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_158;
        }

        *(a1 + 40) |= 0x10u;
        v73 = *(a1 + 152);
        if (!v73)
        {
          v74 = *(a1 + 8);
          v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
          if (v74)
          {
            v75 = *v75;
          }

          v73 = sub_16D11E4(v75);
          *(a1 + 152) = v73;
          v7 = *v124;
        }

        v21 = sub_22338C8(a3, v73, v7);
        goto LABEL_167;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_158;
        }

        *(a1 + 40) |= 0x20u;
        v43 = *(a1 + 160);
        if (!v43)
        {
          v44 = *(a1 + 8);
          v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
          if (v44)
          {
            v45 = *v45;
          }

          sub_16D0C38(v45);
          v43 = v46;
          *(a1 + 160) = v46;
          v7 = *v124;
        }

        v21 = sub_2233958(a3, v43, v7);
        goto LABEL_167;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_158;
        }

        v86 = v7 + 1;
        v85 = *v7;
        if ((v85 & 0x8000000000000000) == 0)
        {
          goto LABEL_140;
        }

        v87 = *v86;
        v85 = (v87 << 7) + v85 - 128;
        if (v87 < 0)
        {
          *v124 = sub_19587DC(v7, v85);
          if (!*v124)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v86 = v7 + 2;
LABEL_140:
          *v124 = v86;
        }

        if (v85 > 2)
        {
          sub_1348EF8();
        }

        else
        {
          *(a1 + 40) |= 0x400u;
          *(a1 + 196) = v85;
        }

        goto LABEL_168;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_158;
        }

        *(a1 + 40) |= 2u;
        v29 = *(a1 + 8);
        v10 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v10 = *v10;
        }

        v11 = (a1 + 128);
LABEL_44:
        v30 = sub_194DB04(v11, v10);
        v21 = sub_1958890(v30, *v124, a3);
        goto LABEL_167;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_158;
        }

        v79 = v7 - 1;
        while (1)
        {
          v80 = v79 + 1;
          *v124 = v79 + 1;
          v81 = *(a1 + 88);
          if (v81 && (v82 = *(a1 + 80), v82 < *v81))
          {
            *(a1 + 80) = v82 + 1;
            v83 = *&v81[2 * v82 + 2];
          }

          else
          {
            v84 = sub_15720DC(*(a1 + 72));
            v83 = sub_19593CC(a1 + 72, v84);
            v80 = *v124;
          }

          v79 = sub_221E75C(a3, v83, v80);
          *v124 = v79;
          if (!v79)
          {
            goto LABEL_201;
          }

          if (*a3 <= v79 || *v79 != 90)
          {
            goto LABEL_168;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_158;
        }

        *(a1 + 40) |= 0x40u;
        v18 = *(a1 + 168);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_16D13A0(v20);
          *(a1 + 168) = v18;
          v7 = *v124;
        }

        v21 = sub_22339EC(a3, v18, v7);
        goto LABEL_167;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_158;
        }

        *(a1 + 40) |= 0x80u;
        v26 = *(a1 + 176);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          v26 = sub_16D0BBC(v28);
          *(a1 + 176) = v26;
          v7 = *v124;
        }

        v21 = sub_2233A7C(a3, v26, v7);
        goto LABEL_167;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_158;
        }

        *(a1 + 40) |= 0x100u;
        v69 = *(a1 + 184);
        if (!v69)
        {
          v70 = *(a1 + 8);
          v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
          if (v70)
          {
            v71 = *v71;
          }

          sub_15AE76C(v71);
          v69 = v72;
          *(a1 + 184) = v72;
          v7 = *v124;
        }

        v21 = sub_21F4C40(a3, v69, v7);
        goto LABEL_167;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_158;
        }

        v5 |= 0x800u;
        v16 = v7 + 1;
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v102 = sub_19587DC(v7, v15);
          *v124 = v102;
          *(a1 + 200) = v103 != 0;
          if (!v102)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v16 = v7 + 2;
LABEL_21:
          *v124 = v16;
          *(a1 + 200) = v15 != 0;
        }

        goto LABEL_168;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_158;
        }

        v5 |= 0x1000u;
        v38 = v7 + 1;
        v37 = *v7;
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v39 = *v38;
        v37 = (v39 << 7) + v37 - 128;
        if (v39 < 0)
        {
          v108 = sub_19587DC(v7, v37);
          *v124 = v108;
          *(a1 + 201) = v109 != 0;
          if (!v108)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v38 = v7 + 2;
LABEL_59:
          *v124 = v38;
          *(a1 + 201) = v37 != 0;
        }

        goto LABEL_168;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_158;
        }

        v5 |= 0x2000u;
        v13 = v7 + 1;
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if (v14 < 0)
        {
          v100 = sub_19587DC(v7, v12);
          *v124 = v100;
          *(a1 + 202) = v101 != 0;
          if (!v100)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v13 = v7 + 2;
LABEL_16:
          *v124 = v13;
          *(a1 + 202) = v12 != 0;
        }

        goto LABEL_168;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_158;
        }

        v5 |= 0x4000u;
        v54 = v7 + 1;
        v53 = *v7;
        if ((v53 & 0x8000000000000000) == 0)
        {
          goto LABEL_87;
        }

        v55 = *v54;
        v53 = (v55 << 7) + v53 - 128;
        if (v55 < 0)
        {
          v110 = sub_19587DC(v7, v53);
          *v124 = v110;
          *(a1 + 203) = v111 != 0;
          if (!v110)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v54 = v7 + 2;
LABEL_87:
          *v124 = v54;
          *(a1 + 203) = v53 != 0;
        }

        goto LABEL_168;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_158;
        }

        v5 |= 0x8000u;
        v77 = v7 + 1;
        v76 = *v7;
        if ((v76 & 0x8000000000000000) == 0)
        {
          goto LABEL_125;
        }

        v78 = *v77;
        v76 = (v78 << 7) + v76 - 128;
        if (v78 < 0)
        {
          v114 = sub_19587DC(v7, v76);
          *v124 = v114;
          *(a1 + 204) = v115 != 0;
          if (!v114)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v77 = v7 + 2;
LABEL_125:
          *v124 = v77;
          *(a1 + 204) = v76 != 0;
        }

        goto LABEL_168;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_158;
        }

        v5 |= 0x10000u;
        v92 = v7 + 1;
        v91 = *v7;
        if ((v91 & 0x8000000000000000) == 0)
        {
          goto LABEL_152;
        }

        v93 = *v92;
        v91 = (v93 << 7) + v91 - 128;
        if (v93 < 0)
        {
          v118 = sub_19587DC(v7, v91);
          *v124 = v118;
          *(a1 + 205) = v119 != 0;
          if (!v118)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v92 = v7 + 2;
LABEL_152:
          *v124 = v92;
          *(a1 + 205) = v91 != 0;
        }

        goto LABEL_168;
      case 0x15u:
        if (v8 != 170)
        {
          goto LABEL_158;
        }

        v56 = v7 - 2;
        while (1)
        {
          v57 = v56 + 2;
          *v124 = v56 + 2;
          v58 = *(a1 + 112);
          if (v58 && (v59 = *(a1 + 104), v59 < *v58))
          {
            *(a1 + 104) = v59 + 1;
            v60 = *&v58[2 * v59 + 2];
          }

          else
          {
            v61 = sub_1551DC4(*(a1 + 96));
            v60 = sub_19593CC(a1 + 96, v61);
            v57 = *v124;
          }

          v56 = sub_21F8E38(a3, v60, v57);
          *v124 = v56;
          if (!v56)
          {
            goto LABEL_201;
          }

          if (*a3 <= v56 || *v56 != 426)
          {
            goto LABEL_168;
          }
        }

      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_158;
        }

        v5 |= 0x20000u;
        v67 = v7 + 1;
        v66 = *v7;
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_108;
        }

        v68 = *v67;
        v66 = (v68 << 7) + v66 - 128;
        if (v68 < 0)
        {
          v112 = sub_19587DC(v7, v66);
          *v124 = v112;
          *(a1 + 206) = v113 != 0;
          if (!v112)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v67 = v7 + 2;
LABEL_108:
          *v124 = v67;
          *(a1 + 206) = v66 != 0;
        }

        goto LABEL_168;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_158;
        }

        v5 |= 0x40000u;
        v89 = v7 + 1;
        v88 = *v7;
        if ((v88 & 0x8000000000000000) == 0)
        {
          goto LABEL_147;
        }

        v90 = *v89;
        v88 = (v90 << 7) + v88 - 128;
        if (v90 < 0)
        {
          v116 = sub_19587DC(v7, v88);
          *v124 = v116;
          *(a1 + 207) = v117 != 0;
          if (!v116)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v89 = v7 + 2;
LABEL_147:
          *v124 = v89;
          *(a1 + 207) = v88 != 0;
        }

        goto LABEL_168;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_158;
        }

        v5 |= 0x80000u;
        v94 = v7 + 1;
        v95 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_157;
        }

        v96 = *v94;
        v95 = v95 + (v96 << 7) - 128;
        if (v96 < 0)
        {
          v120 = sub_1958770(v7, v95);
          *v124 = v120;
          *(a1 + 208) = v121;
          if (!v120)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v94 = v7 + 2;
LABEL_157:
          *v124 = v94;
          *(a1 + 208) = v95;
        }

        goto LABEL_168;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_158;
        }

        v5 |= 0x100000u;
        v32 = v7 + 1;
        v31 = *v7;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_49;
        }

        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if (v33 < 0)
        {
          v104 = sub_19587DC(v7, v31);
          *v124 = v104;
          *(a1 + 212) = v105 != 0;
          if (!v104)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_49:
          *v124 = v32;
          *(a1 + 212) = v31 != 0;
        }

        goto LABEL_168;
      default:
LABEL_158:
        if (v8)
        {
          v97 = (v8 & 7) == 4;
        }

        else
        {
          v97 = 1;
        }

        if (!v97)
        {
          if (v8 - 8000 > 0x18F)
          {
            v98 = *(a1 + 8);
            if (v98)
            {
              v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v123 = v8;
              v122 = sub_11F1920((a1 + 8));
              v8 = v123;
              v7 = *v124;
              v99 = v122;
            }

            v21 = sub_1952690(v8, v99, v7, a3);
          }

          else
          {
            v21 = sub_19525AC((a1 + 16), v8, v7, &off_277D918, (a1 + 8), a3);
          }

LABEL_167:
          *v124 = v21;
          if (!v21)
          {
            goto LABEL_201;
          }

LABEL_168:
          if (sub_195ADC0(a3, v124, a3[11].u32[1]))
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
LABEL_201:
          *v124 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v124;
    }
  }
}

char *sub_16C3D10(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 18;
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

      v4 = sub_16CF5B4(v9, v11, a3);
    }
  }

  if ((v6 & 0x200000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 216);
    *v4 = 24;
    v4[1] = v13;
    if (v13 > 0x7F)
    {
      v4[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v4[2] = v13 >> 7;
      v12 = v4 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v4[2];
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
      v12 = v4 + 2;
    }
  }

  else
  {
    v12 = v4;
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 192);
    *v12 = 32;
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v12[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v12[2] = v18 >> 7;
      v17 = v12 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v17 - 1) = v12 | 0x80;
          v12 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v12 + 2;
    }
  }

  else
  {
    v17 = v12;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 136);
    *v17 = 42;
    v23 = *(v22 + 20);
    v17[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v17 + 1);
    }

    else
    {
      v24 = v17 + 2;
    }

    v17 = sub_157C8A0(v22, v24, a3);
    if ((v6 & 8) == 0)
    {
LABEL_31:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_47;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_31;
  }

  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v25 = *(a1 + 144);
  *v17 = 50;
  v26 = *(v25 + 20);
  v17[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v17 + 1);
  }

  else
  {
    v27 = v17 + 2;
  }

  v17 = sub_16CD4E4(v25, v27, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_32:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_53:
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v31 = *(a1 + 160);
    *v17 = 66;
    v32 = *(v31 + 20);
    v17[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v17 + 1);
    }

    else
    {
      v33 = v17 + 2;
    }

    v17 = sub_16C619C(v31, v33, a3);
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_59;
  }

LABEL_47:
  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v28 = *(a1 + 152);
  *v17 = 58;
  v29 = *(v28 + 20);
  v17[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v17 + 1);
  }

  else
  {
    v30 = v17 + 2;
  }

  v17 = sub_16CC6B0(v28, v30, a3);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_33:
  if ((v6 & 0x400) == 0)
  {
LABEL_34:
    v21 = v17;
    goto LABEL_66;
  }

LABEL_59:
  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v34 = *(a1 + 196);
  *v17 = 72;
  v17[1] = v34;
  if (v34 > 0x7F)
  {
    v17[1] = v34 | 0x80;
    v35 = v34 >> 7;
    v17[2] = v34 >> 7;
    v21 = v17 + 3;
    if (v34 >= 0x4000)
    {
      LOBYTE(v17) = v17[2];
      do
      {
        *(v21 - 1) = v17 | 0x80;
        v17 = (v35 >> 7);
        *v21++ = v35 >> 7;
        v36 = v35 >> 14;
        v35 >>= 7;
      }

      while (v36);
    }
  }

  else
  {
    v21 = v17 + 2;
  }

LABEL_66:
  if ((v6 & 2) != 0)
  {
    v21 = sub_128AEEC(a3, 10, (*(a1 + 128) & 0xFFFFFFFFFFFFFFFELL), v21);
  }

  v37 = *(a1 + 80);
  if (v37)
  {
    for (j = 0; j != v37; ++j)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v39 = *(*(a1 + 88) + 8 * j + 8);
      *v21 = 90;
      v40 = *(v39 + 20);
      v21[1] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v21 + 1);
      }

      else
      {
        v41 = v21 + 2;
      }

      v21 = sub_1571E14(v39, v41, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v42 = *(a1 + 168);
    *v21 = 98;
    v43 = *(v42 + 64);
    v21[1] = v43;
    if (v43 > 0x7F)
    {
      v44 = sub_19575D0(v43, v21 + 1);
    }

    else
    {
      v44 = v21 + 2;
    }

    v21 = sub_16CE9E0(v42, v44, a3);
    if ((v6 & 0x80) == 0)
    {
LABEL_78:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_98;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_78;
  }

  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v45 = *(a1 + 176);
  *v21 = 106;
  v46 = *(v45 + 20);
  v21[1] = v46;
  if (v46 > 0x7F)
  {
    v47 = sub_19575D0(v46, v21 + 1);
  }

  else
  {
    v47 = v21 + 2;
  }

  v21 = sub_16C56D8(v45, v47, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_79:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_104;
  }

LABEL_98:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v48 = *(a1 + 184);
  *v21 = 114;
  v49 = *(v48 + 20);
  v21[1] = v49;
  if (v49 > 0x7F)
  {
    v50 = sub_19575D0(v49, v21 + 1);
  }

  else
  {
    v50 = v21 + 2;
  }

  v21 = sub_15AB7D0(v48, v50, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_80:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_107;
  }

LABEL_104:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v51 = *(a1 + 200);
  *v21 = 120;
  v21[1] = v51;
  v21 += 2;
  if ((v6 & 0x1000) == 0)
  {
LABEL_81:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_110;
  }

LABEL_107:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v52 = *(a1 + 201);
  *v21 = 384;
  v21[2] = v52;
  v21 += 3;
  if ((v6 & 0x2000) == 0)
  {
LABEL_82:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_113;
  }

LABEL_110:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v53 = *(a1 + 202);
  *v21 = 392;
  v21[2] = v53;
  v21 += 3;
  if ((v6 & 0x4000) == 0)
  {
LABEL_83:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_116;
  }

LABEL_113:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v54 = *(a1 + 203);
  *v21 = 400;
  v21[2] = v54;
  v21 += 3;
  if ((v6 & 0x8000) == 0)
  {
LABEL_84:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_119;
  }

LABEL_116:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v55 = *(a1 + 204);
  *v21 = 408;
  v21[2] = v55;
  v21 += 3;
  if ((v6 & 0x10000) != 0)
  {
LABEL_119:
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v56 = *(a1 + 205);
    *v21 = 416;
    v21[2] = v56;
    v21 += 3;
  }

LABEL_122:
  v57 = *(a1 + 104);
  if (v57)
  {
    for (k = 0; k != v57; ++k)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v59 = *(*(a1 + 112) + 8 * k + 8);
      *v21 = 426;
      v60 = *(v59 + 20);
      v21[2] = v60;
      if (v60 > 0x7F)
      {
        v61 = sub_19575D0(v60, v21 + 2);
      }

      else
      {
        v61 = v21 + 3;
      }

      v21 = sub_1543E88(v59, v61, a3);
    }
  }

  if ((v6 & 0x20000) == 0)
  {
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_132;
    }

LABEL_137:
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v64 = *(a1 + 207);
    *v21 = 440;
    v21[2] = v64;
    v21 += 3;
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_140;
  }

  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v63 = *(a1 + 206);
  *v21 = 432;
  v21[2] = v63;
  v21 += 3;
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_137;
  }

LABEL_132:
  if ((v6 & 0x80000) == 0)
  {
LABEL_133:
    v62 = v21;
    goto LABEL_147;
  }

LABEL_140:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v65 = *(a1 + 208);
  *v21 = 448;
  v21[2] = v65;
  if (v65 > 0x7F)
  {
    v21[2] = v65 | 0x80;
    v66 = v65 >> 7;
    v21[3] = v65 >> 7;
    v62 = v21 + 4;
    if (v65 >= 0x4000)
    {
      LOBYTE(v67) = v21[3];
      do
      {
        *(v62 - 1) = v67 | 0x80;
        v67 = v66 >> 7;
        *v62++ = v66 >> 7;
        v68 = v66 >> 14;
        v66 >>= 7;
      }

      while (v68);
    }
  }

  else
  {
    v62 = v21 + 3;
  }

LABEL_147:
  if ((v6 & 0x100000) != 0)
  {
    if (*a3 <= v62)
    {
      v62 = sub_225EB68(a3, v62);
    }

    v69 = *(a1 + 212);
    *v62 = 456;
    v62[2] = v69;
    v62 += 3;
  }

  if (*(a1 + 26))
  {
    v62 = sub_1953428(a1 + 16, 1000, 1050, v62, a3);
  }

  v70 = *(a1 + 8);
  if ((v70 & 1) == 0)
  {
    return v62;
  }

  v72 = v70 & 0xFFFFFFFFFFFFFFFCLL;
  v73 = *(v72 + 31);
  if (v73 < 0)
  {
    v74 = *(v72 + 8);
    v73 = *(v72 + 16);
  }

  else
  {
    v74 = (v72 + 8);
  }

  if ((*a3 - v62) >= v73)
  {
    v75 = v73;
    memcpy(v62, v74, v73);
    v62 += v75;
    return v62;
  }

  return sub_1957130(a3, v74, v73, v62);
}

uint64_t sub_16C46C8(uint64_t a1)
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
      v9 = sub_16CFB1C(v8);
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
      v16 = sub_1571F5C(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + 2 * v17;
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
      v23 = sub_1543FE4(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_29;
  }

  if (v24)
  {
    v33 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    v35 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v35 = v34;
    }

    v18 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 2) == 0)
    {
LABEL_22:
      if ((v24 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_68;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_22;
  }

  v36 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  v38 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v38 = v37;
  }

  v18 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 4) == 0)
  {
LABEL_23:
    if ((v24 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  v39 = sub_157CE54(*(a1 + 136));
  v18 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 8) == 0)
  {
LABEL_24:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  v40 = sub_16CDD38(*(a1 + 144));
  v18 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x10) == 0)
  {
LABEL_25:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_71:
    v42 = sub_16C74C4(*(a1 + 160));
    v18 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 0x40) == 0)
    {
LABEL_27:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_70:
  v41 = sub_16CC810(*(a1 + 152));
  v18 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x20) != 0)
  {
    goto LABEL_71;
  }

LABEL_26:
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_72:
  v43 = sub_16CEBA4(*(a1 + 168));
  v18 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x80) != 0)
  {
LABEL_28:
    v25 = sub_16C59E8(*(a1 + 176));
    v18 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_29:
  if ((v24 & 0xFF00) == 0)
  {
    goto LABEL_46;
  }

  if ((v24 & 0x100) == 0)
  {
    if ((v24 & 0x200) == 0)
    {
      goto LABEL_32;
    }

LABEL_75:
    v45 = *(a1 + 192);
    v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v45 >= 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = 11;
    }

    v18 += v47;
    if ((v24 & 0x400) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v44 = sub_15ABB68(*(a1 + 184));
  v18 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x200) != 0)
  {
    goto LABEL_75;
  }

LABEL_32:
  if ((v24 & 0x400) != 0)
  {
LABEL_33:
    v26 = *(a1 + 196);
    v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v26 >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 11;
    }

    v18 += v28;
  }

LABEL_37:
  v29 = v18 + ((v24 >> 10) & 2);
  if ((v24 & 0x1000) != 0)
  {
    v29 += 3;
  }

  if ((v24 & 0x2000) != 0)
  {
    v29 += 3;
  }

  if ((v24 & 0x4000) != 0)
  {
    v29 += 3;
  }

  if ((v24 & 0x8000) != 0)
  {
    v18 = v29 + 3;
  }

  else
  {
    v18 = v29;
  }

LABEL_46:
  if ((v24 & 0x3F0000) != 0)
  {
    v30 = v18 + 3;
    if ((v24 & 0x10000) == 0)
    {
      v30 = v18;
    }

    if ((v24 & 0x20000) != 0)
    {
      v30 += 3;
    }

    if ((v24 & 0x40000) != 0)
    {
      v30 += 3;
    }

    if ((v24 & 0x80000) != 0)
    {
      v30 += ((9 * (__clz(*(a1 + 208) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v24 & 0x100000) != 0)
    {
      v18 = v30 + 3;
    }

    else
    {
      v18 = v30;
    }

    if ((v24 & 0x200000) != 0)
    {
      v18 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v31 = *(a1 + 8);
  if (v31)
  {
    v48 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v49 = *((v31 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v49 < 0)
    {
      v49 = *(v48 + 16);
    }

    v18 += v49;
  }

  *(a1 + 44) = v18;
  return v18;
}

void sub_16C4B58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13BA24C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1578288((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_131206C((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 40);
  if (!v19)
  {
    goto LABEL_74;
  }

  if (v19)
  {
    v20 = *(a2 + 120);
    *(a1 + 40) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 120), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    if ((v19 & 2) == 0)
    {
LABEL_13:
      if ((v19 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(a2 + 128);
  *(a1 + 40) |= 2u;
  v24 = *(a1 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a1 + 128), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
  if ((v19 & 4) == 0)
  {
LABEL_14:
    if ((v19 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_26:
  *(a1 + 40) |= 4u;
  v26 = *(a1 + 136);
  if (!v26)
  {
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    sub_157D924(v28);
    *(a1 + 136) = v26;
  }

  if (*(a2 + 136))
  {
    v29 = *(a2 + 136);
  }

  else
  {
    v29 = &off_2777810;
  }

  sub_157D090(v26, v29);
  if ((v19 & 8) == 0)
  {
LABEL_15:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_34:
  *(a1 + 40) |= 8u;
  v30 = *(a1 + 144);
  if (!v30)
  {
    v31 = *(a1 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    sub_16D1260(v32);
    *(a1 + 144) = v30;
  }

  if (*(a2 + 144))
  {
    v33 = *(a2 + 144);
  }

  else
  {
    v33 = &off_277DDE8;
  }

  sub_16C2688(v30, v33);
  if ((v19 & 0x10) == 0)
  {
LABEL_16:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_50:
    *(a1 + 40) |= 0x20u;
    v38 = *(a1 + 160);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      sub_16D0C38(v40);
      *(a1 + 160) = v38;
    }

    if (*(a2 + 160))
    {
      v41 = *(a2 + 160);
    }

    else
    {
      v41 = &off_277DA20;
    }

    sub_16C18C8(v38, v41);
    if ((v19 & 0x40) == 0)
    {
LABEL_18:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_66;
    }

    goto LABEL_58;
  }

LABEL_42:
  *(a1 + 40) |= 0x10u;
  v34 = *(a1 + 152);
  if (!v34)
  {
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_16D11E4(v36);
    *(a1 + 152) = v34;
  }

  if (*(a2 + 152))
  {
    v37 = *(a2 + 152);
  }

  else
  {
    v37 = &off_277DDC8;
  }

  sub_12BEE58(v34, v37);
  if ((v19 & 0x20) != 0)
  {
    goto LABEL_50;
  }

LABEL_17:
  if ((v19 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_58:
  *(a1 + 40) |= 0x40u;
  v42 = *(a1 + 168);
  if (!v42)
  {
    v43 = *(a1 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    v42 = sub_16D13A0(v44);
    *(a1 + 168) = v42;
  }

  if (*(a2 + 168))
  {
    v45 = *(a2 + 168);
  }

  else
  {
    v45 = &off_277DEE0;
  }

  sub_16C2234(v42, v45);
  if ((v19 & 0x80) != 0)
  {
LABEL_66:
    *(a1 + 40) |= 0x80u;
    v46 = *(a1 + 176);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      v46 = sub_16D0BBC(v48);
      *(a1 + 176) = v46;
    }

    if (*(a2 + 176))
    {
      v49 = *(a2 + 176);
    }

    else
    {
      v49 = &off_277D9F8;
    }

    sub_16C234C(v46, v49);
  }

LABEL_74:
  if ((v19 & 0xFF00) == 0)
  {
    goto LABEL_85;
  }

  if ((v19 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v51 = *(a1 + 184);
    if (!v51)
    {
      v52 = *(a1 + 8);
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
      if (v52)
      {
        v53 = *v53;
      }

      sub_15AE76C(v53);
      *(a1 + 184) = v51;
    }

    if (*(a2 + 184))
    {
      v54 = *(a2 + 184);
    }

    else
    {
      v54 = &off_2778838;
    }

    sub_15ABD6C(v51, v54);
    if ((v19 & 0x200) == 0)
    {
LABEL_77:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_107;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_77;
  }

  *(a1 + 192) = *(a2 + 192);
  if ((v19 & 0x400) == 0)
  {
LABEL_78:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(a1 + 196) = *(a2 + 196);
  if ((v19 & 0x800) == 0)
  {
LABEL_79:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(a1 + 200) = *(a2 + 200);
  if ((v19 & 0x1000) == 0)
  {
LABEL_80:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(a1 + 201) = *(a2 + 201);
  if ((v19 & 0x2000) == 0)
  {
LABEL_81:
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

LABEL_111:
    *(a1 + 203) = *(a2 + 203);
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_110:
  *(a1 + 202) = *(a2 + 202);
  if ((v19 & 0x4000) != 0)
  {
    goto LABEL_111;
  }

LABEL_82:
  if ((v19 & 0x8000) != 0)
  {
LABEL_83:
    *(a1 + 204) = *(a2 + 204);
  }

LABEL_84:
  *(a1 + 40) |= v19;
LABEL_85:
  if ((v19 & 0x3F0000) == 0)
  {
    goto LABEL_94;
  }

  if ((v19 & 0x10000) != 0)
  {
    *(a1 + 205) = *(a2 + 205);
    if ((v19 & 0x20000) == 0)
    {
LABEL_88:
      if ((v19 & 0x40000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_115;
    }
  }

  else if ((v19 & 0x20000) == 0)
  {
    goto LABEL_88;
  }

  *(a1 + 206) = *(a2 + 206);
  if ((v19 & 0x40000) == 0)
  {
LABEL_89:
    if ((v19 & 0x80000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(a1 + 207) = *(a2 + 207);
  if ((v19 & 0x80000) == 0)
  {
LABEL_90:
    if ((v19 & 0x100000) == 0)
    {
      goto LABEL_91;
    }

LABEL_117:
    *(a1 + 212) = *(a2 + 212);
    if ((v19 & 0x200000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_116:
  *(a1 + 208) = *(a2 + 208);
  if ((v19 & 0x100000) != 0)
  {
    goto LABEL_117;
  }

LABEL_91:
  if ((v19 & 0x200000) != 0)
  {
LABEL_92:
    *(a1 + 216) = *(a2 + 216);
  }

LABEL_93:
  *(a1 + 40) |= v19;
LABEL_94:
  sub_225EA0C(a1 + 16, a2 + 16);
  v50 = *(a2 + 8);
  if (v50)
  {

    sub_1957EF4((a1 + 8), (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16C507C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_16D0190(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if (!v5)
      {
        return 0;
      }
    }

    v6 = *(a1 + 104);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_1544084(*(*(a1 + 112) + 8 * v6));
      v6 = v7;
      if (!v8)
      {
        return 0;
      }
    }

    v9 = *(a1 + 40);
    if ((v9 & 4) != 0)
    {
      result = sub_157D31C(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 8) != 0)
    {
      result = sub_16C2BBC(*(a1 + 144));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x20) != 0)
    {
      result = sub_16C2400(*(a1 + 160));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x100) == 0)
    {
      return 1;
    }

    result = sub_15ABFE0(*(a1 + 184));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_16C5160(void *a1)
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

void sub_16C51D4(void *a1)
{
  sub_16C5160(a1);

  operator delete();
}

char *sub_16C520C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_63;
        }

        v5 |= 1u;
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
          v54 = v31;
          *(a1 + 24) = v32;
          goto LABEL_70;
        }

        v44 = sub_1958770(v7, v32);
        v54 = v44;
        *(a1 + 24) = v45;
        if (!v44)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_63;
        }

        v5 |= 8u;
        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
LABEL_33:
          v54 = v20;
          *(a1 + 30) = v19 != 0;
          goto LABEL_70;
        }

        v52 = sub_19587DC(v7, v19);
        v54 = v52;
        *(a1 + 30) = v53 != 0;
        if (!v52)
        {
          goto LABEL_92;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_63;
      }

      v5 |= 2u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_47;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_47:
        v54 = v26;
        *(a1 + 28) = v25 != 0;
        goto LABEL_70;
      }

      v40 = sub_19587DC(v7, v25);
      v54 = v40;
      *(a1 + 28) = v41 != 0;
      if (!v40)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_63;
      }

      v5 |= 4u;
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
        v54 = v14;
        *(a1 + 29) = v13 != 0;
        goto LABEL_70;
      }

      v48 = sub_19587DC(v7, v13);
      v54 = v48;
      *(a1 + 29) = v49 != 0;
      if (!v48)
      {
        goto LABEL_92;
      }
    }

LABEL_70:
    if (sub_195ADC0(a3, &v54, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_63;
      }

      v5 |= 0x10u;
      v29 = v7 + 1;
      v28 = *v7;
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_52;
      }

      v30 = *v29;
      v28 = (v30 << 7) + v28 - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v29 = v7 + 2;
LABEL_52:
        v54 = v29;
        *(a1 + 31) = v28 != 0;
        goto LABEL_70;
      }

      v42 = sub_19587DC(v7, v28);
      v54 = v42;
      *(a1 + 31) = v43 != 0;
      if (!v42)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_63;
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
        *(a1 + 32) = v16 != 0;
        goto LABEL_70;
      }

      v50 = sub_19587DC(v7, v16);
      v54 = v50;
      *(a1 + 32) = v51 != 0;
      if (!v50)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_70;
  }

  if (v11 == 7)
  {
    if (v8 != 56)
    {
      goto LABEL_63;
    }

    v5 |= 0x40u;
    v35 = v7 + 1;
    v34 = *v7;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_62;
    }

    v36 = *v35;
    v34 = (v36 << 7) + v34 - 128;
    if ((v36 & 0x80000000) == 0)
    {
      v35 = v7 + 2;
LABEL_62:
      v54 = v35;
      *(a1 + 33) = v34 != 0;
      goto LABEL_70;
    }

    v46 = sub_19587DC(v7, v34);
    v54 = v46;
    *(a1 + 33) = v47 != 0;
    if (!v46)
    {
      goto LABEL_92;
    }

    goto LABEL_70;
  }

  if (v11 == 8 && v8 == 64)
  {
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if (v24 < 0)
    {
      v54 = sub_19587DC(v7, v22);
      if (!v54)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v23 = v7 + 2;
LABEL_40:
      v54 = v23;
    }

    if (v22 > 2)
    {
      sub_12E85F0();
    }

    else
    {
      *(a1 + 16) |= 0x80u;
      *(a1 + 36) = v22;
    }

    goto LABEL_70;
  }

LABEL_63:
  if (v8)
  {
    v37 = (v8 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    v38 = *(a1 + 8);
    if (v38)
    {
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v39 = sub_11F1920((a1 + 8));
      v7 = v54;
    }

    v54 = sub_1952690(v8, v39, v7, a3);
    if (!v54)
    {
      goto LABEL_92;
    }

    goto LABEL_70;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_92:
  v54 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

char *sub_16C56D8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 29);
    *__dst = 16;
    __dst[1] = v8;
    __dst += 2;
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 28);
  *__dst = 8;
  __dst[1] = v7;
  __dst += 2;
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 1) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 24);
  *__dst = 24;
  __dst[1] = v9;
  if (v9 > 0x7F)
  {
    __dst[1] = v9 | 0x80;
    v10 = v9 >> 7;
    __dst[2] = v9 >> 7;
    v6 = __dst + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = __dst[2];
      do
      {
        *(v6 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v6++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_18:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 30);
    *v6 = 32;
    v6[1] = v14;
    v6 += 2;
    if ((v5 & 0x10) == 0)
    {
LABEL_20:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 31);
  *v6 = 40;
  v6[1] = v15;
  v6 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_21:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_33:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 33);
    *v6 = 56;
    v6[1] = v17;
    v6 += 2;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_30:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v16 = *(a1 + 32);
  *v6 = 48;
  v6[1] = v16;
  v6 += 2;
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  if ((v5 & 0x80) == 0)
  {
LABEL_23:
    v13 = v6;
    goto LABEL_43;
  }

LABEL_36:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 36);
  *v6 = 64;
  v6[1] = v18;
  if (v18 > 0x7F)
  {
    v6[1] = v18 | 0x80;
    v19 = v18 >> 7;
    v6[2] = v18 >> 7;
    v13 = v6 + 3;
    if (v18 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v13 - 1) = v6 | 0x80;
        v6 = (v19 >> 7);
        *v13++ = v19 >> 7;
        v20 = v19 >> 14;
        v19 >>= 7;
      }

      while (v20);
    }
  }

  else
  {
    v13 = v6 + 2;
  }

LABEL_43:
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v13;
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

  if ((*a3 - v13) >= v24)
  {
    v26 = v24;
    memcpy(v13, v25, v24);
    v13 += v26;
    return v13;
  }

  return sub_1957130(a3, v25, v24, v13);
}

uint64_t sub_16C59E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    v4.i64[0] = 0x200000002;
    v4.i64[1] = 0x200000002;
    v3 = v2 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_23342B0), v4)) + ((v1 >> 1) & 2) + (v1 & 2);
    if ((v1 & 0x80) != 0)
    {
      v5 = *(a1 + 36);
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v5 >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 11;
      }

      v3 += v7;
    }
  }

  else
  {
    v3 = 0;
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

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

__n128 sub_16C5ADC(uint64_t a1, uint64_t a2, int a3)
{
  result.n128_u64[0] = 0;
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *a1 = off_26FFA98;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  result.n128_u64[1] = 0;
  *(a1 + 64) = 0uLL;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 216) = a2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a2;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a2;
  *(a1 + 280) = &qword_278E990;
  *(a1 + 288) = &qword_278E990;
  *(a1 + 296) = &qword_278E990;
  *(a1 + 304) = &qword_278E990;
  *(a1 + 312) = &qword_278E990;
  *(a1 + 320) = &qword_278E990;
  *(a1 + 328) = &qword_278E990;
  *(a1 + 336) = &qword_278E990;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 452) = 0u;
  return result;
}

void *sub_16C5BB0(void *a1)
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

  sub_16C5CA4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 33));
  sub_1956AFC(a1 + 30);
  sub_1956AFC(a1 + 27);
  sub_1956ABC((a1 + 25));
  sub_1956ABC((a1 + 23));
  sub_1956ABC((a1 + 21));
  sub_1956ABC((a1 + 19));
  sub_1956ABC((a1 + 17));
  sub_1956ABC((a1 + 15));
  sub_1956ABC((a1 + 13));
  sub_1956ABC((a1 + 11));
  sub_1956ABC((a1 + 9));
  sub_1956AFC(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_16C5CA4(uint64_t result)
{
  v1 = result;
  if (*(result + 280) != &qword_278E990)
  {
    sub_194E89C((result + 280));
  }

  if (*(result + 288) != &qword_278E990)
  {
    sub_194E89C((result + 288));
  }

  if (*(result + 296) != &qword_278E990)
  {
    sub_194E89C((result + 296));
  }

  if (*(result + 304) != &qword_278E990)
  {
    sub_194E89C((result + 304));
  }

  if (*(result + 312) != &qword_278E990)
  {
    sub_194E89C((result + 312));
  }

  if (*(result + 320) != &qword_278E990)
  {
    sub_194E89C((result + 320));
  }

  if (*(result + 328) != &qword_278E990)
  {
    sub_194E89C((result + 328));
  }

  if (*(result + 336) != &qword_278E990)
  {
    sub_194E89C((result + 336));
  }

  if (result != &off_277DA20)
  {
    v2 = *(result + 344);
    if (v2)
    {
      sub_15BB0DC(v2);
      operator delete();
    }

    v3 = v1[44];
    if (v3)
    {
      sub_16CA874(v3);
      operator delete();
    }

    v4 = v1[45];
    if (v4)
    {
      sub_16C9E14(v4);
      operator delete();
    }

    v5 = v1[46];
    if (v5)
    {
      sub_16E4E08(v5);
      operator delete();
    }

    v6 = v1[47];
    if (v6)
    {
      sub_16CA3DC(v6);
      operator delete();
    }

    result = v1[48];
    if (result)
    {
      sub_16CB84C(result);

      operator delete();
    }
  }

  return result;
}

void sub_16C5E58(void *a1)
{
  sub_16C5BB0(a1);

  operator delete();
}

uint64_t sub_16C5E90(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16CB258(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v6 & 0xE) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_16C5F58(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16C92E4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_16C92E4(*(v1 + 48));
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

uint64_t sub_16C5FE8(uint64_t a1)
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

uint64_t sub_16C6038(uint64_t result)
{
  v1 = result;
  *(result + 16) = 0;
  v2 = *(result + 40);
  if (v2 >= 1)
  {
    v3 = (*(result + 48) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16CC0EC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 64);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 72) + 8);
    do
    {
      v7 = *v6++;
      result = sub_16CC0EC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 64) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_16C619C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 344);
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

    v4 = sub_15BB518(v7, v9, a3);
  }

  v10 = *(a1 + 32);
  if (v10 >= 1)
  {
    v11 = 8;
    do
    {
      v12 = *(*(a1 + 40) + v11);
      v13 = *(v12 + 23);
      if (v13 < 0 && (v13 = v12[1], v13 > 127) || (*a3 - v4 + 14) < v13)
      {
        v4 = sub_1957480(a3, 2, v12, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v13;
        if (*(v12 + 23) < 0)
        {
          v12 = *v12;
        }

        v14 = v4 + 2;
        memcpy(v4 + 2, v12, v13);
        v4 = &v14[v13];
      }

      v11 += 8;
      --v10;
    }

    while (v10);
  }

  v15 = *(a1 + 56);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      v17 = *(*(a1 + 64) + v16);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = v17[1], v18 > 127) || (*a3 - v4 + 14) < v18)
      {
        v4 = sub_1957480(a3, 3, v17, v4);
      }

      else
      {
        *v4 = 26;
        v4[1] = v18;
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = v4 + 2;
        memcpy(v4 + 2, v17, v18);
        v4 = &v19[v18];
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    v4 = sub_128AEEC(a3, 5, (*(a1 + 288) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  v4 = sub_128AEEC(a3, 4, (*(a1 + 280) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  if ((v6 & 0x4000) == 0)
  {
LABEL_33:
    v20 = v4;
    goto LABEL_43;
  }

LABEL_36:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 392);
  *v4 = 48;
  v4[1] = v21;
  if (v21 > 0x7F)
  {
    v4[1] = v21 | 0x80;
    v22 = v21 >> 7;
    v4[2] = v21 >> 7;
    v20 = v4 + 3;
    if (v21 >= 0x4000)
    {
      LOBYTE(v23) = v4[2];
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
    v20 = v4 + 2;
  }

LABEL_43:
  if ((v6 & 0x100000) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_45;
    }

LABEL_50:
    v20 = sub_128AEEC(a3, 8, (*(a1 + 296) & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_51;
  }

  if (*a3 <= v20)
  {
    v20 = sub_225EB68(a3, v20);
  }

  v26 = *(a1 + 440);
  *v20 = 56;
  v20[1] = v26;
  v20 += 2;
  if ((v6 & 4) != 0)
  {
    goto LABEL_50;
  }

LABEL_45:
  if ((v6 & 0x8000) == 0)
  {
LABEL_46:
    v25 = v20;
    goto LABEL_58;
  }

LABEL_51:
  if (*a3 <= v20)
  {
    v20 = sub_225EB68(a3, v20);
  }

  v27 = *(a1 + 400);
  *v20 = 72;
  v20[1] = v27;
  if (v27 > 0x7F)
  {
    v20[1] = v27 | 0x80;
    v28 = v27 >> 7;
    v20[2] = v27 >> 7;
    v25 = v20 + 3;
    if (v27 >= 0x4000)
    {
      LOBYTE(v20) = v20[2];
      do
      {
        *(v25 - 1) = v20 | 0x80;
        v20 = (v28 >> 7);
        *v25++ = v28 >> 7;
        v29 = v28 >> 14;
        v28 >>= 7;
      }

      while (v29);
    }
  }

  else
  {
    v25 = v20 + 2;
  }

LABEL_58:
  if ((v6 & 0x10000) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v31 = *(a1 + 408);
    *v25 = 80;
    v25[1] = v31;
    if (v31 > 0x7F)
    {
      v25[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v25[2] = v31 >> 7;
      v30 = v25 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v25) = v25[2];
        do
        {
          *(v30 - 1) = v25 | 0x80;
          v25 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v25 + 2;
    }
  }

  else
  {
    v30 = v25;
  }

  v34 = *(a1 + 72);
  if (v34 < 1)
  {
    v37 = v30;
  }

  else
  {
    for (i = 0; i != v34; ++i)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v36 = *(*(a1 + 80) + 8 * i);
      *v30 = 88;
      v30[1] = v36;
      if (v36 > 0x7F)
      {
        v30[1] = v36 | 0x80;
        v38 = v36 >> 7;
        v30[2] = v36 >> 7;
        v37 = v30 + 3;
        if (v36 >= 0x4000)
        {
          LOBYTE(v39) = v30[2];
          do
          {
            *(v37 - 1) = v39 | 0x80;
            v39 = v38 >> 7;
            *v37++ = v38 >> 7;
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
        }
      }

      else
      {
        v37 = v30 + 2;
      }

      v30 = v37;
    }
  }

  if ((v6 & 0x20000) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v42 = *(a1 + 416);
    *v37 = 96;
    v37[1] = v42;
    if (v42 > 0x7F)
    {
      v37[1] = v42 | 0x80;
      v43 = v42 >> 7;
      v37[2] = v42 >> 7;
      v41 = v37 + 3;
      if (v42 >= 0x4000)
      {
        LOBYTE(v37) = v37[2];
        do
        {
          *(v41 - 1) = v37 | 0x80;
          v37 = (v43 >> 7);
          *v41++ = v43 >> 7;
          v44 = v43 >> 14;
          v43 >>= 7;
        }

        while (v44);
      }
    }

    else
    {
      v41 = v37 + 2;
    }
  }

  else
  {
    v41 = v37;
  }

  if ((v6 & 0x40000) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v46 = *(a1 + 424);
    *v41 = 104;
    v41[1] = v46;
    if (v46 > 0x7F)
    {
      v41[1] = v46 | 0x80;
      v47 = v46 >> 7;
      v41[2] = v46 >> 7;
      v45 = v41 + 3;
      if (v46 >= 0x4000)
      {
        LOBYTE(v41) = v41[2];
        do
        {
          *(v45 - 1) = v41 | 0x80;
          v41 = (v47 >> 7);
          *v45++ = v47 >> 7;
          v48 = v47 >> 14;
          v47 >>= 7;
        }

        while (v48);
      }
    }

    else
    {
      v45 = v41 + 2;
    }
  }

  else
  {
    v45 = v41;
  }

  if ((v6 & 0x200000) == 0)
  {
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_99;
    }

LABEL_104:
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v51 = *(a1 + 442);
    *v45 = 120;
    v45[1] = v51;
    v45 += 2;
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_107;
  }

  if (*a3 <= v45)
  {
    v45 = sub_225EB68(a3, v45);
  }

  v50 = *(a1 + 441);
  *v45 = 112;
  v45[1] = v50;
  v45 += 2;
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_104;
  }

LABEL_99:
  if ((v6 & 0x80000) == 0)
  {
LABEL_100:
    v49 = v45;
    goto LABEL_114;
  }

LABEL_107:
  if (*a3 <= v45)
  {
    v45 = sub_225EB68(a3, v45);
  }

  v52 = *(a1 + 432);
  *v45 = 384;
  v45[2] = v52;
  if (v52 > 0x7F)
  {
    v45[2] = v52 | 0x80;
    v53 = v52 >> 7;
    v45[3] = v52 >> 7;
    v49 = v45 + 4;
    if (v52 >= 0x4000)
    {
      LOBYTE(v54) = v45[3];
      do
      {
        *(v49 - 1) = v54 | 0x80;
        v54 = v53 >> 7;
        *v49++ = v53 >> 7;
        v55 = v53 >> 14;
        v53 >>= 7;
      }

      while (v55);
    }
  }

  else
  {
    v49 = v45 + 3;
  }

LABEL_114:
  v56 = *(a1 + 88);
  if (v56 < 1)
  {
    v59 = v49;
  }

  else
  {
    for (j = 0; j != v56; ++j)
    {
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v58 = *(*(a1 + 96) + 8 * j);
      *v49 = 392;
      v49[2] = v58;
      if (v58 > 0x7F)
      {
        v49[2] = v58 | 0x80;
        v60 = v58 >> 7;
        v49[3] = v58 >> 7;
        v59 = v49 + 4;
        if (v58 >= 0x4000)
        {
          LOBYTE(v49) = v49[3];
          do
          {
            *(v59 - 1) = v49 | 0x80;
            v49 = (v60 >> 7);
            *v59++ = v60 >> 7;
            v61 = v60 >> 14;
            v60 >>= 7;
          }

          while (v61);
        }
      }

      else
      {
        v59 = v49 + 3;
      }

      v49 = v59;
    }
  }

  v62 = *(a1 + 104);
  if (v62 < 1)
  {
    v65 = v59;
  }

  else
  {
    for (k = 0; k != v62; ++k)
    {
      if (*a3 <= v59)
      {
        v59 = sub_225EB68(a3, v59);
      }

      v64 = *(*(a1 + 112) + 8 * k);
      *v59 = 400;
      v59[2] = v64;
      if (v64 > 0x7F)
      {
        v59[2] = v64 | 0x80;
        v66 = v64 >> 7;
        v59[3] = v64 >> 7;
        v65 = v59 + 4;
        if (v64 >= 0x4000)
        {
          LOBYTE(v67) = v59[3];
          do
          {
            *(v65 - 1) = v67 | 0x80;
            v67 = v66 >> 7;
            *v65++ = v66 >> 7;
            v68 = v66 >> 14;
            v66 >>= 7;
          }

          while (v68);
        }
      }

      else
      {
        v65 = v59 + 3;
      }

      v59 = v65;
    }
  }

  if ((v6 & 0x800000) != 0)
  {
    if (*a3 <= v65)
    {
      v65 = sub_225EB68(a3, v65);
    }

    v70 = *(a1 + 443);
    *v65 = 408;
    v65[2] = v70;
    v65 += 3;
    if ((v6 & 8) == 0)
    {
LABEL_140:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_151;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_140;
  }

  v65 = sub_128AEEC(a3, 20, (*(a1 + 304) & 0xFFFFFFFFFFFFFFFELL), v65);
  if ((v6 & 0x10) == 0)
  {
LABEL_141:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_152;
  }

LABEL_151:
  v65 = sub_128AEEC(a3, 21, (*(a1 + 312) & 0xFFFFFFFFFFFFFFFELL), v65);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_142:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_155;
  }

LABEL_152:
  if (*a3 <= v65)
  {
    v65 = sub_225EB68(a3, v65);
  }

  v71 = *(a1 + 444);
  *v65 = 448;
  v65[2] = v71;
  v65 += 3;
  if ((v6 & 0x20) == 0)
  {
LABEL_143:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_156;
  }

LABEL_155:
  v65 = sub_128AEEC(a3, 25, (*(a1 + 320) & 0xFFFFFFFFFFFFFFFELL), v65);
  if ((v6 & 0x40) == 0)
  {
LABEL_144:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_145;
    }

LABEL_157:
    if (*a3 <= v65)
    {
      v65 = sub_225EB68(a3, v65);
    }

    v72 = *(a1 + 352);
    *v65 = 474;
    v73 = *(v72 + 20);
    v65[2] = v73;
    if (v73 > 0x7F)
    {
      v74 = sub_19575D0(v73, v65 + 2);
    }

    else
    {
      v74 = v65 + 3;
    }

    v65 = sub_16CAD10(v72, v74, a3);
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_163;
  }

LABEL_156:
  v65 = sub_128AEEC(a3, 26, (*(a1 + 328) & 0xFFFFFFFFFFFFFFFELL), v65);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_157;
  }

LABEL_145:
  if ((v6 & 0x10000000) == 0)
  {
LABEL_146:
    v69 = v65;
    goto LABEL_170;
  }

LABEL_163:
  if (*a3 <= v65)
  {
    v65 = sub_225EB68(a3, v65);
  }

  v75 = *(a1 + 448);
  *v65 = 480;
  v65[2] = v75;
  if (v75 > 0x7F)
  {
    v65[2] = v75 | 0x80;
    v76 = v75 >> 7;
    v65[3] = v75 >> 7;
    v69 = v65 + 4;
    if (v75 >= 0x4000)
    {
      LOBYTE(v77) = v65[3];
      do
      {
        *(v69 - 1) = v77 | 0x80;
        v77 = v76 >> 7;
        *v69++ = v76 >> 7;
        v78 = v76 >> 14;
        v76 >>= 7;
      }

      while (v78);
    }
  }

  else
  {
    v69 = v65 + 3;
  }

LABEL_170:
  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v79 = *(a1 + 360);
    *v69 = 490;
    v80 = *(v79 + 20);
    v69[2] = v80;
    if (v80 > 0x7F)
    {
      v81 = sub_19575D0(v80, v69 + 2);
    }

    else
    {
      v81 = v69 + 3;
    }

    v69 = sub_16CA0F4(v79, v81, a3);
  }

  v82 = *(a1 + 120);
  if (v82 < 1)
  {
    v85 = v69;
  }

  else
  {
    for (m = 0; m != v82; ++m)
    {
      if (*a3 <= v69)
      {
        v69 = sub_225EB68(a3, v69);
      }

      v84 = *(*(a1 + 128) + 8 * m);
      *v69 = 496;
      v69[2] = v84;
      if (v84 > 0x7F)
      {
        v69[2] = v84 | 0x80;
        v86 = v84 >> 7;
        v69[3] = v84 >> 7;
        v85 = v69 + 4;
        if (v84 >= 0x4000)
        {
          LOBYTE(v69) = v69[3];
          do
          {
            *(v85 - 1) = v69 | 0x80;
            v69 = (v86 >> 7);
            *v85++ = v86 >> 7;
            v87 = v86 >> 14;
            v86 >>= 7;
          }

          while (v87);
        }
      }

      else
      {
        v85 = v69 + 3;
      }

      v69 = v85;
    }
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v85)
    {
      v85 = sub_225EB68(a3, v85);
    }

    v88 = *(a1 + 368);
    *v85 = 506;
    v89 = *(v88 + 44);
    v85[2] = v89;
    if (v89 > 0x7F)
    {
      v90 = sub_19575D0(v89, v85 + 2);
    }

    else
    {
      v90 = v85 + 3;
    }

    v85 = sub_16E5070(v88, v90, a3);
  }

  if ((v6 & 0x80) != 0)
  {
    v85 = sub_128AEEC(a3, 32, (*(a1 + 336) & 0xFFFFFFFFFFFFFFFELL), v85);
  }

  v91 = *(a1 + 136);
  if (v91 < 1)
  {
    v94 = v85;
  }

  else
  {
    for (n = 0; n != v91; ++n)
    {
      if (*a3 <= v85)
      {
        v85 = sub_225EB68(a3, v85);
      }

      v93 = *(*(a1 + 144) + 8 * n);
      *v85 = 648;
      v85[2] = v93;
      if (v93 > 0x7F)
      {
        v85[2] = v93 | 0x80;
        v95 = v93 >> 7;
        v85[3] = v93 >> 7;
        v94 = v85 + 4;
        if (v93 >= 0x4000)
        {
          LOBYTE(v96) = v85[3];
          do
          {
            *(v94 - 1) = v96 | 0x80;
            v96 = v95 >> 7;
            *v94++ = v95 >> 7;
            v97 = v95 >> 14;
            v95 >>= 7;
          }

          while (v97);
        }
      }

      else
      {
        v94 = v85 + 3;
      }

      v85 = v94;
    }
  }

  if ((v6 & 0x20000000) != 0)
  {
    if (*a3 <= v94)
    {
      v94 = sub_225EB68(a3, v94);
    }

    v98 = *(a1 + 456);
    *v94 = 657;
    *(v94 + 2) = v98;
    v94 += 10;
  }

  v99 = *(a1 + 152);
  if (v99 < 1)
  {
    v102 = v94;
  }

  else
  {
    for (ii = 0; ii != v99; ++ii)
    {
      if (*a3 <= v94)
      {
        v94 = sub_225EB68(a3, v94);
      }

      v101 = *(*(a1 + 160) + 4 * ii);
      *v94 = 664;
      v94[2] = v101;
      if (v101 > 0x7F)
      {
        v94[2] = v101 | 0x80;
        v103 = v101 >> 7;
        v94[3] = v101 >> 7;
        v102 = v94 + 4;
        if (v101 >= 0x4000)
        {
          LOBYTE(v104) = v94[3];
          do
          {
            *(v102 - 1) = v104 | 0x80;
            v104 = v103 >> 7;
            *v102++ = v103 >> 7;
            v105 = v103 >> 14;
            v103 >>= 7;
          }

          while (v105);
        }
      }

      else
      {
        v102 = v94 + 3;
      }

      v94 = v102;
    }
  }

  if ((v6 & 0x2000000) != 0)
  {
    if (*a3 <= v102)
    {
      v102 = sub_225EB68(a3, v102);
    }

    v106 = *(a1 + 445);
    *v102 = 672;
    v102[2] = v106;
    v102 += 3;
  }

  v107 = *(a1 + 168);
  if (v107 < 1)
  {
    v110 = v102;
  }

  else
  {
    for (jj = 0; jj != v107; ++jj)
    {
      if (*a3 <= v102)
      {
        v102 = sub_225EB68(a3, v102);
      }

      v109 = *(*(a1 + 176) + 4 * jj);
      *v102 = 680;
      v102[2] = v109;
      if (v109 > 0x7F)
      {
        v102[2] = v109 | 0x80;
        v111 = v109 >> 7;
        v102[3] = v109 >> 7;
        v110 = v102 + 4;
        if (v109 >= 0x4000)
        {
          LOBYTE(v102) = v102[3];
          do
          {
            *(v110 - 1) = v102 | 0x80;
            LODWORD(v102) = v111 >> 7;
            *v110++ = v111 >> 7;
            v112 = v111 >> 14;
            v111 >>= 7;
          }

          while (v112);
        }
      }

      else
      {
        v110 = v102 + 3;
      }

      v102 = v110;
    }
  }

  v113 = *(a1 + 184);
  if (v113 < 1)
  {
    v116 = v110;
  }

  else
  {
    for (kk = 0; kk != v113; ++kk)
    {
      if (*a3 <= v110)
      {
        v110 = sub_225EB68(a3, v110);
      }

      v115 = *(*(a1 + 192) + 4 * kk);
      *v110 = 688;
      v110[2] = v115;
      if (v115 > 0x7F)
      {
        v110[2] = v115 | 0x80;
        v117 = v115 >> 7;
        v110[3] = v115 >> 7;
        v116 = v110 + 4;
        if (v115 >= 0x4000)
        {
          LOBYTE(v118) = v110[3];
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
        v116 = v110 + 3;
      }

      v110 = v116;
    }
  }

  v120 = *(a1 + 200);
  if (v120 < 1)
  {
    v123 = v116;
  }

  else
  {
    for (mm = 0; mm != v120; ++mm)
    {
      if (*a3 <= v116)
      {
        v116 = sub_225EB68(a3, v116);
      }

      v122 = *(*(a1 + 208) + 4 * mm);
      *v116 = 696;
      v116[2] = v122;
      if (v122 > 0x7F)
      {
        v116[2] = v122 | 0x80;
        v124 = v122 >> 7;
        v116[3] = v122 >> 7;
        v123 = v116 + 4;
        if (v122 >= 0x4000)
        {
          LOBYTE(v116) = v116[3];
          do
          {
            *(v123 - 1) = v116 | 0x80;
            v116 = (v124 >> 7);
            *v123++ = v124 >> 7;
            v125 = v124 >> 14;
            v124 >>= 7;
          }

          while (v125);
        }
      }

      else
      {
        v123 = v116 + 3;
      }

      v116 = v123;
    }
  }

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v126 = *(a1 + 376);
    *v123 = 706;
    v127 = *(v126 + 40);
    v123[2] = v127;
    if (v127 > 0x7F)
    {
      v128 = sub_19575D0(v127, v123 + 2);
    }

    else
    {
      v128 = v123 + 3;
    }

    v123 = sub_16CA678(v126, v128, a3);
  }

  if ((v6 & 0x40000000) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v130 = *(a1 + 464);
    *v123 = 712;
    v123[2] = v130;
    if (v130 > 0x7F)
    {
      v123[2] = v130 | 0x80;
      v131 = v130 >> 7;
      v123[3] = v130 >> 7;
      v129 = v123 + 4;
      if (v130 >= 0x4000)
      {
        LOBYTE(v123) = v123[3];
        do
        {
          *(v129 - 1) = v123 | 0x80;
          LODWORD(v123) = v131 >> 7;
          *v129++ = v131 >> 7;
          v132 = v131 >> 14;
          v131 >>= 7;
        }

        while (v132);
      }
    }

    else
    {
      v129 = v123 + 3;
    }
  }

  else
  {
    v129 = v123;
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v129)
    {
      v129 = sub_225EB68(a3, v129);
    }

    v133 = *(a1 + 384);
    *v129 = 722;
    v134 = *(v133 + 80);
    v129[2] = v134;
    if (v134 > 0x7F)
    {
      v135 = sub_19575D0(v134, v129 + 2);
    }

    else
    {
      v135 = v129 + 3;
    }

    v129 = sub_16CBC78(v133, v135, a3);
  }

  if ((v6 & 0x4000000) != 0)
  {
    if (*a3 <= v129)
    {
      v129 = sub_225EB68(a3, v129);
    }

    v136 = *(a1 + 446);
    *v129 = 728;
    v129[2] = v136;
    v129 += 3;
  }

  v137 = *(a1 + 224);
  if (v137 >= 1)
  {
    v138 = 8;
    do
    {
      v139 = *(*(a1 + 232) + v138);
      v140 = *(v139 + 23);
      if (v140 < 0 && (v140 = v139[1], v140 > 127) || (*a3 - v129 + 13) < v140)
      {
        v129 = sub_1957480(a3, 44, v139, v129);
      }

      else
      {
        *v129 = 738;
        v129[2] = v140;
        if (*(v139 + 23) < 0)
        {
          v139 = *v139;
        }

        v141 = v129 + 3;
        memcpy(v129 + 3, v139, v140);
        v129 = &v141[v140];
      }

      v138 += 8;
      --v137;
    }

    while (v137);
  }

  v142 = *(a1 + 248);
  if (v142 >= 1)
  {
    v143 = 8;
    do
    {
      v144 = *(*(a1 + 256) + v143);
      v145 = *(v144 + 23);
      if (v145 < 0 && (v145 = v144[1], v145 > 127) || (*a3 - v129 + 13) < v145)
      {
        v129 = sub_1957480(a3, 45, v144, v129);
      }

      else
      {
        *v129 = 746;
        v129[2] = v145;
        if (*(v144 + 23) < 0)
        {
          v144 = *v144;
        }

        v146 = v129 + 3;
        memcpy(v129 + 3, v144, v145);
        v129 = &v146[v145];
      }

      v143 += 8;
      --v142;
    }

    while (v142);
  }

  v147 = *(a1 + 264);
  if (v147 < 1)
  {
    v150 = v129;
  }

  else
  {
    for (nn = 0; nn != v147; ++nn)
    {
      if (*a3 <= v129)
      {
        v129 = sub_225EB68(a3, v129);
      }

      v149 = *(*(a1 + 272) + 8 * nn);
      *v129 = 752;
      v129[2] = v149;
      if (v149 > 0x7F)
      {
        v129[2] = v149 | 0x80;
        v151 = v149 >> 7;
        v129[3] = v149 >> 7;
        v150 = v129 + 4;
        if (v149 >= 0x4000)
        {
          LOBYTE(v152) = v129[3];
          do
          {
            *(v150 - 1) = v152 | 0x80;
            v152 = v151 >> 7;
            *v150++ = v151 >> 7;
            v153 = v151 >> 14;
            v151 >>= 7;
          }

          while (v153);
        }
      }

      else
      {
        v150 = v129 + 3;
      }

      v129 = v150;
    }
  }

  if ((v6 & 0x8000000) != 0)
  {
    if (*a3 <= v150)
    {
      v150 = sub_225EB68(a3, v150);
    }

    v154 = *(a1 + 447);
    *v150 = 760;
    v150[2] = v154;
    v150 += 3;
  }

  v155 = *(a1 + 8);
  if ((v155 & 1) == 0)
  {
    return v150;
  }

  v157 = v155 & 0xFFFFFFFFFFFFFFFCLL;
  v158 = *(v157 + 31);
  if (v158 < 0)
  {
    v159 = *(v157 + 8);
    v158 = *(v157 + 16);
  }

  else
  {
    v159 = (v157 + 8);
  }

  if ((*a3 - v150) >= v158)
  {
    v160 = v158;
    memcpy(v150, v159, v158);
    v150 += v160;
    return v150;
  }

  return sub_1957130(a3, v159, v158, v150);
}

uint64_t sub_16C74C4(uint64_t a1)
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

  v85 = sub_1959F14((a1 + 72));
  v86 = *(a1 + 72);
  v84 = sub_1959F14((a1 + 88));
  v82 = *(a1 + 88);
  v83 = sub_1959F14((a1 + 104));
  v14 = *(a1 + 104);
  v81 = sub_1959F14((a1 + 120));
  v15 = *(a1 + 120);
  v16 = sub_1959F14((a1 + 136));
  v17 = *(a1 + 136);
  v18 = *(a1 + 152);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(a1 + 160) + 4 * v20);
      if (v21 < 0)
      {
        v22 = 10;
      }

      else
      {
        v22 = (9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6;
      }

      v19 += v22;
      ++v20;
    }

    while (v18 != v20);
  }

  else
  {
    v19 = 0;
  }

  v23 = sub_1959E5C((a1 + 168));
  v24 = *(a1 + 168);
  v25 = sub_1959E5C((a1 + 184));
  v26 = *(a1 + 200);
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(*(a1 + 208) + 4 * v27);
      if (v29 < 0)
      {
        v30 = 10;
      }

      else
      {
        v30 = (9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6;
      }

      v28 += v30;
      ++v27;
    }

    while (v26 != v27);
  }

  else
  {
    v28 = 0;
  }

  v31 = *(a1 + 224);
  v32 = v85 + v9 + v86 + v84 + v83 + v81 + v16 + v19 + v23 + v25 + v28 + 2 * (v14 + v82 + v15 + v17 + v18 + v24 + *(a1 + 184) + v26 + v31);
  if (v31 >= 1)
  {
    v33 = (*(a1 + 232) + 8);
    do
    {
      v34 = *v33++;
      v35 = *(v34 + 23);
      v36 = *(v34 + 8);
      if ((v35 & 0x80u) == 0)
      {
        v36 = v35;
      }

      v32 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      --v31;
    }

    while (v31);
  }

  v37 = *(a1 + 248);
  v38 = v32 + 2 * v37;
  if (v37 >= 1)
  {
    v39 = (*(a1 + 256) + 8);
    do
    {
      v40 = *v39++;
      v41 = *(v40 + 23);
      v42 = *(v40 + 8);
      if ((v41 & 0x80u) == 0)
      {
        v42 = v41;
      }

      v38 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      --v37;
    }

    while (v37);
  }

  v43 = sub_1959F14((a1 + 264)) + v38 + 2 * *(a1 + 264);
  v44 = *(a1 + 16);
  if (!v44)
  {
    goto LABEL_51;
  }

  if (v44)
  {
    v52 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
    v53 = *(v52 + 23);
    v54 = *(v52 + 8);
    if ((v53 & 0x80u) == 0)
    {
      v54 = v53;
    }

    v43 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 2) == 0)
    {
LABEL_42:
      if ((v44 & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_94;
    }
  }

  else if ((v44 & 2) == 0)
  {
    goto LABEL_42;
  }

  v55 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
  v56 = *(v55 + 23);
  v57 = *(v55 + 8);
  if ((v56 & 0x80u) == 0)
  {
    v57 = v56;
  }

  v43 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v44 & 4) == 0)
  {
LABEL_43:
    if ((v44 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_97;
  }

LABEL_94:
  v58 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
  v59 = *(v58 + 23);
  v60 = *(v58 + 8);
  if ((v59 & 0x80u) == 0)
  {
    v60 = v59;
  }

  v43 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v44 & 8) == 0)
  {
LABEL_44:
    if ((v44 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_100;
  }

LABEL_97:
  v61 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
  v62 = *(v61 + 23);
  v63 = *(v61 + 8);
  if ((v62 & 0x80u) == 0)
  {
    v63 = v62;
  }

  v43 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x10) == 0)
  {
LABEL_45:
    if ((v44 & 0x20) == 0)
    {
      goto LABEL_46;
    }

LABEL_103:
    v67 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
    v68 = *(v67 + 23);
    v69 = *(v67 + 8);
    if ((v68 & 0x80u) == 0)
    {
      v69 = v68;
    }

    v43 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v44 & 0x40) == 0)
    {
LABEL_47:
      if ((v44 & 0x80) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    goto LABEL_106;
  }

LABEL_100:
  v64 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v43 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x20) != 0)
  {
    goto LABEL_103;
  }

LABEL_46:
  if ((v44 & 0x40) == 0)
  {
    goto LABEL_47;
  }

LABEL_106:
  v70 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v43 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x80) != 0)
  {
LABEL_48:
    v45 = *(a1 + 336) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(v45 + 23);
    v47 = *(v45 + 8);
    if ((v46 & 0x80u) == 0)
    {
      v47 = v46;
    }

    v43 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_51:
  if ((v44 & 0xFF00) == 0)
  {
    goto LABEL_61;
  }

  if ((v44 & 0x100) != 0)
  {
    v73 = sub_15BB73C(*(a1 + 344));
    v43 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 0x200) == 0)
    {
LABEL_54:
      if ((v44 & 0x400) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_112;
    }
  }

  else if ((v44 & 0x200) == 0)
  {
    goto LABEL_54;
  }

  v74 = sub_16CAFC4(*(a1 + 352));
  v43 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x400) == 0)
  {
LABEL_55:
    if ((v44 & 0x800) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_113;
  }

LABEL_112:
  v75 = sub_16CA29C(*(a1 + 360));
  v43 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x800) == 0)
  {
LABEL_56:
    if ((v44 & 0x1000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_114;
  }

LABEL_113:
  v76 = sub_16E51F0(*(a1 + 368));
  v43 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x1000) == 0)
  {
LABEL_57:
    if ((v44 & 0x2000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_115;
  }

LABEL_114:
  v77 = sub_16CA7CC(*(a1 + 376));
  v43 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x2000) == 0)
  {
LABEL_58:
    if ((v44 & 0x4000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_116;
  }

LABEL_115:
  v78 = sub_16CBEDC(*(a1 + 384));
  v43 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x4000) == 0)
  {
LABEL_59:
    if ((v44 & 0x8000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_116:
  v43 += ((9 * (__clz(*(a1 + 392) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v44 & 0x8000) != 0)
  {
LABEL_60:
    v43 += ((9 * (__clz(*(a1 + 400) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_61:
  if ((v44 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v44 & 0x10000) != 0)
  {
    v43 += ((9 * (__clz(*(a1 + 408) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v44 & 0x20000) == 0)
    {
LABEL_64:
      if ((v44 & 0x40000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_120;
    }
  }

  else if ((v44 & 0x20000) == 0)
  {
    goto LABEL_64;
  }

  v43 += ((9 * (__clz(*(a1 + 416) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v44 & 0x40000) == 0)
  {
LABEL_65:
    if ((v44 & 0x80000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_120:
  v43 += ((9 * (__clz(*(a1 + 424) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v44 & 0x80000) != 0)
  {
LABEL_66:
    v43 += ((9 * (__clz(*(a1 + 432) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_67:
  v48 = (v44 >> 21) & 2;
  if ((v44 & 0x800000) != 0)
  {
    v43 += ((v44 >> 20) & 2) + ((v44 >> 19) & 2) + v48 + 3;
  }

  else
  {
    v43 += ((v44 >> 20) & 2) + ((v44 >> 19) & 2) + v48;
  }

LABEL_70:
  if ((v44 & 0x7F000000) != 0)
  {
    v49 = v43 + 3;
    if ((v44 & 0x1000000) == 0)
    {
      v49 = v43;
    }

    if ((v44 & 0x2000000) != 0)
    {
      v49 += 3;
    }

    if ((v44 & 0x4000000) != 0)
    {
      v49 += 3;
    }

    if ((v44 & 0x8000000) != 0)
    {
      v49 += 3;
    }

    if ((v44 & 0x10000000) != 0)
    {
      v49 += ((9 * (__clz(*(a1 + 448) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v44 & 0x20000000) != 0)
    {
      v43 = v49 + 10;
    }

    else
    {
      v43 = v49;
    }

    if ((v44 & 0x40000000) != 0)
    {
      v43 += ((9 * (__clz(*(a1 + 464) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  v50 = *(a1 + 8);
  if (v50)
  {
    v79 = v50 & 0xFFFFFFFFFFFFFFFCLL;
    v80 = *((v50 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v80 < 0)
    {
      v80 = *(v79 + 16);
    }

    v43 += v80;
  }

  *(a1 + 20) = v43;
  return v43;
}

void sub_16C7D6C(uint64_t a1, uint64_t a2)
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
    sub_16E29C0((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0xF) != 0)
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

        goto LABEL_22;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 80) = *(a2 + 80);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v14;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_13;
    }

LABEL_22:
    *(a1 + 88) = *(a2 + 88);
    if ((v14 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_16C7F04(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_16E2934((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
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

      v10 = sub_16D0D9C(v12);
      *(result + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_277DC58;
    }

    sub_16C9A14(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((result + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_16C8014(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__s.__data_[16];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1958E5C(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[4 * v6], *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 48);
    v10 = sub_19592E8(&v3[1].__r_.__value_.__l.__size_, *(a2 + 40));
    result = sub_16E2A3C((v3 + 32), v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__data_ - LODWORD(v3[1].__r_.__value_.__r.__words[2]));
    v11 = LODWORD(v3[1].__r_.__value_.__r.__words[2]) + v8;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = v11;
    v12 = v3[2].__r_.__value_.__l.__data_;
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = *(a2 + 72);
    v15 = sub_19592E8(&v3[2].__r_.__value_.__l.__size_, *(a2 + 64));
    result = sub_16E2A3C((v3 + 56), v15, (v14 + 8), v13, *v3[3].__r_.__value_.__l.__data_ - LODWORD(v3[2].__r_.__value_.__r.__words[2]));
    v16 = LODWORD(v3[2].__r_.__value_.__r.__words[2]) + v13;
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = v16;
    v17 = v3[3].__r_.__value_.__l.__data_;
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_16C8180(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26FFB18;
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

void sub_16C81FC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_16C822C(void *a1)
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

void sub_16C82A0(void *a1)
{
  sub_16C822C(a1);

  operator delete();
}

uint64_t sub_16C82D8(uint64_t a1)
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

char *sub_16C82FC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v18, a3[11].u32[1]))
  {
    goto LABEL_28;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 17)
      {
        v15 = *v6;
        v14 = v6 + 8;
        v5 |= 2u;
        *(a1 + 32) = v15;
LABEL_22:
        v18 = v14;
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 9)
    {
      v16 = *v6;
      v14 = v6 + 8;
      v5 |= 1u;
      *(a1 + 24) = v16;
      goto LABEL_22;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v18;
    }

    v18 = sub_1952690(v7, v13, v6, a3);
    if (!v18)
    {
      goto LABEL_29;
    }

LABEL_23:
    if (sub_195ADC0(a3, &v18, a3[11].u32[1]))
    {
      goto LABEL_28;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_28;
  }

LABEL_29:
  v18 = 0;
LABEL_28:
  *(a1 + 16) |= v5;
  return v18;
}

char *sub_16C8460(uint64_t a1, char *__dst, unint64_t *a3)
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
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 17;
    *(v4 + 1) = v8;
    v4 += 9;
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

uint64_t sub_16C8578(uint64_t a1)
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

  if ((v1 & 3) != 0)
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

uint64_t sub_16C85E4(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26FFB98;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_16C8624(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26FFB98;
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

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  v8 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v8;
  return a1;
}

uint64_t sub_16C8768(uint64_t a1)
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

  if (a1 != &off_277DC20)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16C822C(v6);
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

void sub_16C8834(uint64_t a1)
{
  sub_16C8768(a1);

  operator delete();
}

uint64_t sub_16C886C(uint64_t result)
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
      result = sub_16C82D8(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_16C8910(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v26, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v26 + 1);
    v8 = **v26;
    if (**v26 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v26, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v26 + 2);
      }
    }

    *v26 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_34;
      }

      v21 = v7 + 1;
      v20 = *v7;
      if (v20 < 0)
      {
        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = v7 + 2;
          goto LABEL_29;
        }

        *v26 = sub_19587DC(v7, v20);
        if (!*v26)
        {
          goto LABEL_50;
        }
      }

      else
      {
LABEL_29:
        *v26 = v21;
      }

      if (v20 > 2)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 48) = v20;
      }

      goto LABEL_42;
    }

    if (v11 != 2 || v8 != 18)
    {
      goto LABEL_34;
    }

    *(a1 + 16) |= 1u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v15 = sub_194DB04((a1 + 24), v14);
    v16 = sub_1958890(v15, *v26, a3);
LABEL_41:
    *v26 = v16;
    if (!v16)
    {
      goto LABEL_50;
    }

LABEL_42:
    if (sub_195ADC0(a3, v26, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 != 4 || v8 != 34)
    {
      goto LABEL_34;
    }

    *(a1 + 16) |= 2u;
    v17 = *(a1 + 32);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_16D0C98(v19);
      *(a1 + 32) = v17;
      v7 = *v26;
    }

    v16 = sub_2235124(a3, v17, v7);
    goto LABEL_41;
  }

  if (v8 == 25)
  {
    v5 |= 4u;
    *(a1 + 40) = *v7;
    *v26 = v7 + 8;
    goto LABEL_42;
  }

LABEL_34:
  if (v8)
  {
    v23 = (v8 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v7 = *v26;
    }

    v16 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_50:
  *v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v26;
}

char *sub_16C8B7C(uint64_t a1, char *__dst, unint64_t *a3)
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
    if ((v5 & 4) == 0)
    {
LABEL_12:
      if ((v5 & 2) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v11 = *(a1 + 40);
  *v6 = 25;
  *(v6 + 1) = v11;
  v6 += 9;
  if ((v5 & 2) != 0)
  {
LABEL_18:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 32);
    *v6 = 34;
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

    v6 = sub_16C8460(v12, v14, a3);
  }

LABEL_24:
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

uint64_t sub_16C8D6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_18;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = sub_16C8578(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

  if ((v2 & 8) != 0)
  {
    v9 = *(a1 + 48);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    result += v11;
  }

LABEL_18:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_16C8E8C(uint64_t a1, uint64_t a2)
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

      v9 = sub_16D0C98(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_277DBF8;
    }

    sub_1336380(v9, v12);
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
    *(a1 + 40) = *(a2 + 40);
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

uint64_t sub_16C8FC4(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26FFC18;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_16C900C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26FFC18;
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
    sub_16E2934((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t sub_16C91D4(uint64_t a1)
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

  if (a1 != &off_277DC58)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_16C8768(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_16E2724((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16C92AC(uint64_t a1)
{
  sub_16C91D4(a1);

  operator delete();
}

uint64_t sub_16C92E4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16C92E4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      result = sub_16C886C(*(v1 + 56));
    }
  }

LABEL_11:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 56) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_16C93B0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v32, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v32 + 1);
    v7 = **v32;
    if (**v32 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v32, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v32 + 2);
      }
    }

    *v32 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4 && v7 == 34)
        {
          v16 = v6 - 1;
          while (1)
          {
            v17 = (v16 + 1);
            *v32 = v16 + 1;
            v18 = *(a1 + 40);
            if (v18 && (v19 = *(a1 + 32), v19 < *v18))
            {
              *(a1 + 32) = v19 + 1;
              v20 = *&v18[2 * v19 + 2];
            }

            else
            {
              v21 = sub_16D0D9C(*(a1 + 24));
              v20 = sub_19593CC(a1 + 24, v21);
              v17 = *v32;
            }

            v16 = sub_2235244(a3, v20, v17);
            *v32 = v16;
            if (!v16)
            {
              break;
            }

            if (*a3 <= v16 || *v16 != 34)
            {
              goto LABEL_50;
            }
          }

LABEL_58:
          *v32 = 0;
          return *v32;
        }

LABEL_42:
        if (v7)
        {
          v28 = (v7 & 7) == 4;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v32;
          }

          goto LABEL_58;
        }

        v29 = *(a1 + 8);
        if (v29)
        {
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v30 = sub_11F1920((a1 + 8));
          v6 = *v32;
        }

        v15 = sub_1952690(v7, v30, v6, a3);
        goto LABEL_49;
      }

      if (v7 != 26)
      {
        goto LABEL_42;
      }

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

        v25 = sub_16D0D14(v27);
        *(a1 + 56) = v25;
        v6 = *v32;
      }

      v15 = sub_22351B4(a3, v25, v6);
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v23 = v6 + 1;
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            *v32 = sub_19587DC(v6, v22);
            if (!*v32)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v23 = v6 + 2;
LABEL_33:
            *v32 = v23;
          }

          if (v22 > 3)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v22;
          }

          continue;
        }

        goto LABEL_42;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_42;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = sub_194DB04((a1 + 48), v13);
      v15 = sub_1958890(v14, *v32, a3);
    }

LABEL_49:
    *v32 = v15;
    if (!v15)
    {
      goto LABEL_58;
    }

LABEL_50:
    ;
  }

  return *v32;
}

char *sub_16C9664(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 64);
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 56);
    *v6 = 26;
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

    v6 = sub_16C8B7C(v11, v13, a3);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 34;
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

      v6 = sub_16C9664(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v22)
  {
    v24 = v22;
    memcpy(v6, v23, v22);
    v6 += v24;
    return v6;
  }

  return sub_1957130(a3, v23, v22, v6);
}

uint64_t sub_16C98AC(uint64_t a1)
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
      v7 = sub_16C98AC(v6);
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
    goto LABEL_22;
  }

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
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_16C8D6C(*(a1 + 56));
  v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
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
LABEL_22:
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

void sub_16C9A14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_16E2934((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      v14 = sub_16D0D14(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_277DC20;
    }

    sub_16C8E8C(v14, v17);
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

void sub_16C9B80(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_16C92E4(a1);

    sub_16C9A14(a1, a2);
  }
}

__n128 sub_16C9BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v7;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  LODWORD(v8) = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v8;
  return result;
}

void *sub_16C9C58(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26FFC98;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_16C9C90(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26FFC98;
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
    sub_16E2934((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_16C9E14(uint64_t a1)
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
  if (a1 != &off_277DCA0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_16C91D4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_16E2724((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16C9ED8(uint64_t a1)
{
  sub_16C9E14(a1);

  operator delete();
}

char *sub_16C9F10(uint64_t a1, char *a2, int32x2_t *a3)
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
            v20 = sub_16D0D9C(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v25;
          }

          v15 = sub_2235244(a3, v19, v16);
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

        v21 = sub_16D0D9C(v23);
        *(a1 + 48) = v21;
        v6 = v25;
      }

      v14 = sub_2235244(a3, v21, v6);
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

char *sub_16CA0F4(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_16C9664(v6, v8, a3);
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

      v4 = sub_16C9664(v11, v13, a3);
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

uint64_t sub_16CA29C(uint64_t a1)
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
      v7 = sub_16C98AC(v6);
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
    v8 = sub_16C98AC(*(a1 + 48));
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

void sub_16CA378(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_16C5F58(result);

    sub_16C7F04(result, a2);
  }
}

void *sub_16CA3DC(void *a1)
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

void sub_16CA458(void *a1)
{
  sub_16CA3DC(a1);

  operator delete();
}

uint64_t sub_16CA490(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_16CA678(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_16CA7CC(uint64_t a1)
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

uint64_t sub_16CA874(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_16E27A8((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16CA928(uint64_t a1)
{
  sub_16CA874(a1);

  operator delete();
}

uint64_t sub_16CA960(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      if (v11 != 4)
      {
        if (v11 == 5)
        {
          if (v8 != 41)
          {
            goto LABEL_53;
          }

          v36 = *v7;
          v16 = v7 + 8;
          v5 |= 2u;
          *(a1 + 80) = v36;
        }

        else
        {
          if (v11 != 6 || v8 != 49)
          {
            goto LABEL_53;
          }

          v17 = *v7;
          v16 = v7 + 8;
          v5 |= 4u;
          *(a1 + 88) = v17;
        }

        *v42 = v16;
        goto LABEL_61;
      }

      if (v8 != 34)
      {
        goto LABEL_53;
      }

      *(a1 + 16) |= 1u;
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v28 = sub_194DB04((a1 + 72), v27);
      v29 = sub_1958890(v28, *v42, a3);
LABEL_60:
      *v42 = v29;
      if (!v29)
      {
        goto LABEL_68;
      }

      goto LABEL_61;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 == 18)
      {
        v30 = v7 - 1;
        while (1)
        {
          v31 = v30 + 1;
          *v42 = v30 + 1;
          v32 = *(a1 + 64);
          if (v32 && (v33 = *(a1 + 56), v33 < *v32))
          {
            *(a1 + 56) = v33 + 1;
            v34 = *&v32[2 * v33 + 2];
          }

          else
          {
            v35 = sub_16D1038(*(a1 + 48));
            v34 = sub_19593CC(a1 + 48, v35);
            v31 = *v42;
          }

          v30 = sub_22352D4(a3, v34, v31);
          *v42 = v30;
          if (!v30)
          {
            goto LABEL_68;
          }

          if (*a3 <= v30 || *v30 != 18)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_53;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_53;
    }

    v5 |= 8u;
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
      *v42 = v14;
      *(a1 + 96) = v13 != 0;
      goto LABEL_61;
    }

    v40 = sub_19587DC(v7, v13);
    *v42 = v40;
    *(a1 + 96) = v41 != 0;
    if (!v40)
    {
      goto LABEL_68;
    }

LABEL_61:
    if (sub_195ADC0(a3, v42, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    v18 = v7 - 1;
    while (1)
    {
      v19 = (v18 + 1);
      *v42 = v18 + 1;
      v20 = *(a1 + 40);
      if (v20 && (v21 = *(a1 + 32), v21 < *v20))
      {
        *(a1 + 32) = v21 + 1;
        v22 = *&v20[2 * v21 + 2];
      }

      else
      {
        v23 = *(a1 + 24);
        if (!v23)
        {
          operator new();
        }

        *v25 = v24;
        v25[1] = sub_195A650;
        *v24 = 0;
        v24[1] = 0;
        v24[2] = 0;
        v22 = sub_19593CC(a1 + 24, v24);
        v19 = *v42;
      }

      v18 = sub_1958890(v22, v19, a3);
      *v42 = v18;
      if (!v18)
      {
        goto LABEL_68;
      }

      if (*a3 <= v18 || *v18 != 10)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_53:
  if (v8)
  {
    v37 = (v8 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    v38 = *(a1 + 8);
    if (v38)
    {
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v39 = sub_11F1920((a1 + 8));
      v7 = *v42;
    }

    v29 = sub_1952690(v8, v39, v7, a3);
    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_68:
  *v42 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v42;
}

char *sub_16CAD10(uint64_t a1, char *__dst, unint64_t *a3)
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

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
      *__dst = 18;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_16CB560(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if ((v16 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v17 = *(a1 + 96);
    *__dst = 24;
    __dst[1] = v17;
    __dst += 2;
    if ((v16 & 1) == 0)
    {
LABEL_22:
      if ((v16 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  else if ((v16 & 1) == 0)
  {
    goto LABEL_22;
  }

  __dst = sub_128AEEC(a3, 4, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), __dst);
  if ((v16 & 2) == 0)
  {
LABEL_23:
    if ((v16 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v18 = *(a1 + 80);
  *__dst = 41;
  *(__dst + 1) = v18;
  __dst += 9;
  if ((v16 & 4) != 0)
  {
LABEL_32:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v19 = *(a1 + 88);
    *__dst = 49;
    *(__dst + 1) = v19;
    __dst += 9;
  }

LABEL_35:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return __dst;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  if ((*a3 - __dst) >= v23)
  {
    v25 = v23;
    memcpy(__dst, v24, v23);
    __dst += v25;
    return __dst;
  }

  return sub_1957130(a3, v24, v23, __dst);
}

uint64_t sub_16CAFC4(uint64_t a1)
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
      v14 = sub_16CB6F0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0xF) != 0)
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

    v19 = v9 + 9;
    if ((v15 & 2) == 0)
    {
      v19 = v9;
    }

    if ((v15 & 4) != 0)
    {
      v19 += 9;
    }

    v9 = v19 + ((v15 >> 2) & 2);
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v9 += v23;
  }

  *(a1 + 20) = v9;
  return v9;
}

uint64_t sub_16CB154(uint64_t a1)
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

void sub_16CB220(uint64_t a1)
{
  sub_16CB154(a1);

  operator delete();
}

uint64_t sub_16CB258(uint64_t a1)
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

uint64_t sub_16CB314(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v28, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v28 + 1);
    v8 = **v28;
    if (**v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v28 + 2);
      }
    }

    *v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v17 = *(a1 + 8);
          v14 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v14 = *v14;
          }

          v15 = (a1 + 24);
          goto LABEL_27;
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_33;
    }

    v5 |= 8u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_32:
      *v28 = v21;
      *(a1 + 48) = v20;
      goto LABEL_41;
    }

    v26 = sub_19587DC(v7, v20);
    *v28 = v26;
    *(a1 + 48) = v27;
    if (!v26)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (sub_195ADC0(a3, v28, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 4u;
    v16 = *(a1 + 8);
    v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v14 = *v14;
    }

    v15 = (a1 + 40);
LABEL_27:
    v18 = sub_194DB04(v15, v14);
    v19 = sub_1958890(v18, *v28, a3);
LABEL_40:
    *v28 = v19;
    if (!v19)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

LABEL_33:
  if (v8)
  {
    v23 = (v8 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v7 = *v28;
    }

    v19 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_16CB560(uint64_t a1, char *__dst, unint64_t *a3)
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
    v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 8) == 0)
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

  v8 = *(a1 + 48);
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
  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v7);
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

uint64_t sub_16CB6F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_15;
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
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_15:
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

void *sub_16CB84C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_16E282C(a1 + 7);
  sub_16E282C(a1 + 4);
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16CB8E0(void *a1)
{
  sub_16CB84C(a1);

  operator delete();
}

char *sub_16CB918(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  if ((sub_195ADC0(a3, &v37, a3[11].u32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    do
    {
      v8 = v37 + 1;
      v9 = *v37;
      if (*v37 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(v37, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = v37 + 2;
        }
      }

      v37 = v8;
      v13 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 == 26)
        {
          v28 = v8 - 1;
          while (1)
          {
            v29 = v28 + 1;
            v37 = v28 + 1;
            v30 = *(a1 + 72);
            if (v30 && (v31 = *(a1 + 64), v31 < *v30))
            {
              *(a1 + 64) = v31 + 1;
              v32 = *&v30[2 * v31 + 2];
            }

            else
            {
              v33 = sub_16D1168(*(a1 + 56));
              v32 = sub_19593CC(a1 + 56, v33);
              v29 = v37;
            }

            v28 = sub_2235364(a3, v32, v29);
            v37 = v28;
            if (!v28)
            {
              return 0;
            }

            if (*a3 <= v28 || *v28 != 26)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v13 == 2)
      {
        if (v9 == 18)
        {
          v22 = v8 - 1;
          while (1)
          {
            v23 = v22 + 1;
            v37 = v22 + 1;
            v24 = *(a1 + 48);
            if (v24 && (v25 = *(a1 + 40), v25 < *v24))
            {
              *(a1 + 40) = v25 + 1;
              v26 = *&v24[2 * v25 + 2];
            }

            else
            {
              v27 = sub_16D1168(*(a1 + 32));
              v26 = sub_19593CC(a1 + 32, v27);
              v23 = v37;
            }

            v22 = sub_2235364(a3, v26, v23);
            v37 = v22;
            if (!v22)
            {
              return 0;
            }

            if (*a3 <= v22 || *v22 != 18)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v13 == 1)
      {
        if (v9 == 8)
        {
          v14 = v8 - 1;
          while (1)
          {
            v37 = v14 + 1;
            v15 = v14[1];
            v16 = v14 + 2;
            if (v15 < 0)
            {
              v17 = *v16;
              v18 = (v17 << 7) + v15;
              LODWORD(v15) = v18 - 128;
              if (v17 < 0)
              {
                v37 = sub_19587DC((v14 + 1), (v18 - 128));
                if (!v37)
                {
                  return 0;
                }

                LODWORD(v15) = v21;
                goto LABEL_17;
              }

              v16 = v14 + 3;
            }

            v37 = v16;
LABEL_17:
            if (v15 > 3)
            {
              sub_12E8450();
            }

            else
            {
              v19 = *(a1 + 16);
              if (v19 == *(a1 + 20))
              {
                v20 = v19 + 1;
                sub_1958E5C((a1 + 16), v19 + 1);
                *(*(a1 + 24) + 4 * v19) = v15;
              }

              else
              {
                *(*(a1 + 24) + 4 * v19) = v15;
                v20 = v19 + 1;
              }

              *(a1 + 16) = v20;
            }

            v14 = v37;
            if (*a3 <= v37 || *v37 != 8)
            {
              goto LABEL_58;
            }
          }
        }

        if (v9 == 10)
        {
          *&v38 = a1 + 16;
          *(&v38 + 1) = sub_16C14EC;
          v39 = a1 + 8;
          v40 = 1;
          v34 = sub_1216588(a3, v8, &v38, v5);
          goto LABEL_57;
        }
      }

      if (v9)
      {
        v35 = (v9 & 7) == 4;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
          return v37;
        }

        return 0;
      }

      if (*v7)
      {
        v36 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v36 = sub_11F1920((a1 + 8));
        v8 = v37;
      }

      v34 = sub_1952690(v9, v36, v8, a3);
LABEL_57:
      v37 = v34;
      if (!v34)
      {
        return 0;
      }

LABEL_58:
      ;
    }

    while (!sub_195ADC0(a3, &v37, a3[11].u32[1]));
  }

  return v37;
}