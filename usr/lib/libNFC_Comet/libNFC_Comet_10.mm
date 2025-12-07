uint64_t sub_297ED8C74(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_WrABlock");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  *(a1 + 540) = 3;
  *a1 = 2;
  v2 = *(a1 + 252);
  v3 = *(a1 + 248);
  if (v3 > v2)
  {
    v4 = (v3 - v2);
    if (v4 >= *(a1 + 740))
    {
      v5 = *(a1 + 740);
    }

    else
    {
      v5 = v4;
    }

    v6 = a1 + 266;
    *(a1 + 266) = *(a1 + 666);
    if (*(a1 + 664))
    {
      phOsalNfc_MemCopy();
      if (*(a1 + 664) == 0xFF)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v7 = *(a1 + 664) + 1;
      }

      v8 = 17 - v7;
      if (v7 <= 0x11u && (17 - v7) > v5)
      {
        phOsalNfc_MemCopy();
        *(a1 + 670) = 1;
        *(a1 + 216) = v5;
        **(a1 + 528) = (v7 + v5) - 1;
        v9 = (17 - (v7 + v5));
        if (17 != (v7 + v5))
        {
          v10 = 0;
          *(a1 + 74) = 1;
          v11 = vdupq_n_s64(v9 - 1);
          v12 = (a1 + (v7 + v5) + 281);
          v13 = xmmword_297F136C0;
          v14 = xmmword_297F136D0;
          v15 = xmmword_297F136E0;
          v16 = xmmword_297F136F0;
          v17 = xmmword_297F13700;
          v18 = xmmword_297F13710;
          v19 = xmmword_297F13210;
          v20 = xmmword_297F13220;
          v21 = vdupq_n_s64(0x10uLL);
          do
          {
            v22 = vmovn_s64(vcgeq_u64(v11, v20));
            if (vuzp1_s8(vuzp1_s16(v22, *v11.i8), *v11.i8).u8[0])
            {
              if (v10)
              {
                v23 = 0;
              }

              else
              {
                v23 = -2;
              }

              *(v12 - 15) = v23;
            }

            if (vuzp1_s8(vuzp1_s16(v22, *&v11), *&v11).i8[1])
            {
              *(v12 - 14) = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v19))), *&v11).i8[2])
            {
              *(v12 - 13) = 0;
              *(v12 - 12) = 0;
            }

            v24 = vmovn_s64(vcgeq_u64(v11, v18));
            if (vuzp1_s8(*&v11, vuzp1_s16(v24, *&v11)).i32[1])
            {
              *(v12 - 11) = 0;
            }

            if (vuzp1_s8(*&v11, vuzp1_s16(v24, *&v11)).i8[5])
            {
              *(v12 - 10) = 0;
            }

            if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v17)))).i8[6])
            {
              *(v12 - 9) = 0;
              *(v12 - 8) = 0;
            }

            v25 = vmovn_s64(vcgeq_u64(v11, v16));
            if (vuzp1_s8(vuzp1_s16(v25, *v11.i8), *v11.i8).u8[0])
            {
              *(v12 - 7) = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v25, *&v11), *&v11).i8[1])
            {
              *(v12 - 6) = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v15))), *&v11).i8[2])
            {
              *(v12 - 5) = 0;
              *(v12 - 4) = 0;
            }

            v26 = vmovn_s64(vcgeq_u64(v11, v14));
            if (vuzp1_s8(*&v11, vuzp1_s16(v26, *&v11)).i32[1])
            {
              *(v12 - 3) = 0;
            }

            if (vuzp1_s8(*&v11, vuzp1_s16(v26, *&v11)).i8[5])
            {
              *(v12 - 2) = 0;
            }

            if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v13)))).i8[6])
            {
              *(v12 - 1) = 0;
              *v12 = 0;
            }

            v18 = vaddq_s64(v18, v21);
            v19 = vaddq_s64(v19, v21);
            v20 = vaddq_s64(v20, v21);
            v17 = vaddq_s64(v17, v21);
            v16 = vaddq_s64(v16, v21);
            v15 = vaddq_s64(v15, v21);
            v10 -= 16;
            v14 = vaddq_s64(v14, v21);
            v12 += 16;
            v13 = vaddq_s64(v13, v21);
          }

          while (-((v9 + 15) & 0x1FFF0) != v10);
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (v5 < 0x10)
      {
        phOsalNfc_MemCopy();
        *(a1 + 671) = 1;
        *(a1 + 216) = v5;
        **(a1 + 528) = v5;
        v29 = v5 + 1;
        *(a1 + 74) = 1;
        v30 = vdupq_n_s64(15 - v5);
        v31 = vmovn_s64(vcgeq_u64(v30, xmmword_297F13220));
        if (vuzp1_s8(vuzp1_s16(v31, *v30.i8), *v30.i8).u8[0])
        {
          *(v6 + v29) = -2;
        }

        if (vuzp1_s8(vuzp1_s16(v31, *&v30), *&v30).i8[1])
        {
          *(v29 + v6 + 1) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, xmmword_297F13210))), *&v30).i8[2])
        {
          *(v29 + v6 + 2) = 0;
          *(v29 + v6 + 3) = 0;
        }

        v32 = vmovn_s64(vcgeq_u64(v30, xmmword_297F13710));
        if (vuzp1_s8(*&v30, vuzp1_s16(v32, *&v30)).i32[1])
        {
          *(v29 + v6 + 4) = 0;
        }

        if (vuzp1_s8(*&v30, vuzp1_s16(v32, *&v30)).i8[5])
        {
          *(v29 + v6 + 5) = 0;
        }

        if (vuzp1_s8(*&v30, vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, xmmword_297F13700)))).i8[6])
        {
          *(v29 + v6 + 6) = 0;
          *(v29 + v6 + 7) = 0;
        }

        v33 = vmovn_s64(vcgeq_u64(v30, xmmword_297F136F0));
        if (vuzp1_s8(vuzp1_s16(v33, *v30.i8), *v30.i8).u8[0])
        {
          *(v29 + v6 + 8) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v33, *&v30), *&v30).i8[1])
        {
          *(v29 + v6 + 9) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, xmmword_297F136E0))), *&v30).i8[2])
        {
          *(v29 + v6 + 10) = 0;
          *(v29 + v6 + 11) = 0;
        }

        v34 = vmovn_s64(vcgeq_u64(v30, xmmword_297F136D0));
        if (vuzp1_s8(*&v30, vuzp1_s16(v34, *&v30)).i32[1])
        {
          *(v29 + v6 + 12) = 0;
        }

        if (vuzp1_s8(*&v30, vuzp1_s16(v34, *&v30)).i8[5])
        {
          *(v29 + v6 + 13) = 0;
        }

        v35 = vmovn_s64(vcgeq_u64(v30, xmmword_297F136C0));
        if (vuzp1_s8(*&v35, vuzp1_s16(v35, v35)).i8[6])
        {
          *(v29 + v6 + 14) = 0;
        }

        v36 = vuzp1_s16(v35, v35);
        if (vuzp1_s8(v36, v36).i8[7])
        {
          *(v29 + v6 + 15) = 0;
        }

        goto LABEL_50;
      }

      v8 = 16;
    }

    phOsalNfc_MemCopy();
    *(a1 + 216) = v8;
    **(a1 + 528) = 16;
LABEL_50:
    phOsalNfc_MemCopy();
    *(a1 + 526) = 17;
    *(a1 + 232) = 160;
    *(a1 + 264) = 260;
    v27 = sub_297E98D38(a1, sub_297ED7F4C);
    goto LABEL_51;
  }

  if (*(a1 + 668) >= *(a1 + 667))
  {
    if (v2 == v3)
    {
      v27 = 0;
    }

    else
    {
      v27 = 255;
    }
  }

  else
  {
    v27 = 0;
    *(a1 + 672) = 1;
  }

LABEL_51:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_WrABlock");
  return v27;
}

uint64_t sub_297ED92F0(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iChkNdefComp");
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProChkNdef");
  v4 = *(a1 + 666);
  if (v4 != 1)
  {
    v6 = *(a1 + 544);
    if (v4 == 2 && v6 == 7)
    {
      goto LABEL_10;
    }

    if (v4 == 66)
    {
      if (v6 != 8)
      {
        v5 = 1;
        goto LABEL_12;
      }

LABEL_10:
      sub_297EDC848(a1);
      v5 = 0;
      *(a1 + 744) = 1;
      goto LABEL_12;
    }

    v5 = 1;
    if (!*(a1 + 666) || v6 != 8)
    {
      goto LABEL_12;
    }

    sub_297EDC848(a1);
    if (*(a1 + 744) == 1)
    {
      goto LABEL_3;
    }

    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd4k_H_CheckNdef");
    v12 = *(a1 + 666);
    if (v12 == 64)
    {
      v14 = 65;
    }

    else
    {
      if (v12 == 2)
      {
        *(a1 + 666) = 64;
        *(a1 + 677) = 0;
LABEL_43:
        v5 = sub_297ED78C8(*(a1 + 2712), *(a1 + 8), *(a1 + 40));
        sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd4k_H_CheckNdef");
        goto LABEL_12;
      }

      v14 = 66;
    }

    *(a1 + 666) = v14;
    goto LABEL_43;
  }

  sub_297EDC848(a1);
  *(a1 + 666) = 2;
  if (*(a1 + 744) == 1)
  {
LABEL_3:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = sub_297ED78C8(*(a1 + 2712), *(a1 + 8), *(a1 + 40));
LABEL_12:
  if (*(a1 + 744) == 1)
  {
    *(a1 + 750) = 1;
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkNdefCmpltSects");
    if (*(a1 + 544) == 8)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        if (v8 != 15 && *(a1 + 698 + v8) == 1)
        {
          if (v9 >= 0x20)
          {
            v10 = -15;
          }

          else
          {
            v10 = -3;
          }

          *(a1 + 668) += v10;
        }

        v8 = v9;
      }

      while (v9 != 39);
    }

    else
    {
      for (i = 0; i != 15; ++i)
      {
        if (*(a1 + 698 + i) == 1)
        {
          *(a1 + 668) -= 3;
        }
      }
    }

    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkNdefCmpltSects");
    if (*(a1 + 668) - 256 >= 0xFFFFFF01)
    {
      *(a1 + 744) = 0;
      *(a1 + 666) = 4;
      if (sub_297ED8258(a1))
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_297ED7A60(a1);
      }
    }

    else
    {
      v5 = 22;
    }
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProChkNdef");
  *a2 = v5 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iChkNdefComp");
  return v5;
}

uint64_t sub_297ED95D8(_WORD *a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iRead");
  if (a1[132] == 16 && a1[124] > a1[126])
  {
    v7 = 0;
    if (!a1[40])
    {
      v4 = 0;
      goto LABEL_7;
    }

    *a2 = 0;
    v4 = sub_297ED96A8(a1, &v8, &v7);
    v5 = v4 != 13;
  }

  else
  {
    v4 = 27;
    v5 = 1;
  }

  *a2 = v5;
LABEL_7:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iRead");
  return v4;
}

uint64_t sub_297ED96A8(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_RemainTLV");
  v6 = *(a1 + 248);
  v7 = *(a1 + 252);
  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  if (*(a1 + 740) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a1 + 740);
  }

  if (*(a1 + 770) == 1)
  {
    *(a1 + 770) = 0;
    goto LABEL_8;
  }

  v12 = *(a1 + 80);
  v13 = *a3;
  v14 = 16 - v13;
  if (v13 >= 0x11)
  {
    v15 = 0;
  }

  else
  {
    v15 = 16 - v13;
  }

  if (v15 >= v12 && v10 <= v12)
  {
    phOsalNfc_MemCopy();
    *(a1 + 252) += v10;
    *(a1 + 740) -= v10;
    if (v10 != *(a1 + 80))
    {
      phOsalNfc_MemCopy();
      *(a1 + 664) = 16 - *a3 - v10;
    }

    *a3 += v10;
    v18 = *(a1 + 80);
    *(a1 + 80) = v18 - v10;
    if (!*(a1 + 664))
    {
      if (*(a1 + 740))
      {
        v19 = v18 == v10;
      }

      else
      {
        v19 = 1;
      }

      v20 = v19;
      *(a1 + 672) = v20;
      ++*(a1 + 666);
      ++*(a1 + 667);
    }

    if (v18 == v10)
    {
      *(a1 + 66) = 1;
      *(a1 + 72) = 0;
    }

LABEL_47:
    *a2 = 0;
    goto LABEL_48;
  }

  if (v14 < v12 || v10 <= v12)
  {
    if (v14 >= v12)
    {
      v11 = 0;
      goto LABEL_52;
    }

    if (v14 < v10)
    {
      *a2 = 0;
      phOsalNfc_MemCopy();
      *(a1 + 252) = *(a1 + 252) - *a3 + 16;
      *(a1 + 740) = *a3 + *(a1 + 740) - 16;
      *(a1 + 80) = *a3 + *(a1 + 80) - 16;
      *a3 = 16;
      if (*(a1 + 80))
      {
        *(a1 + 66) = 0;
      }

      goto LABEL_8;
    }

    phOsalNfc_MemCopy();
    *(a1 + 252) += v10;
    *(a1 + 740) -= v10;
    *(a1 + 80) -= v10;
    phOsalNfc_MemCopy();
    *(a1 + 664) = 16 - *a3 - v10;
    v21 = *a3;
    if (16 - v21 == v10)
    {
      if (*(a1 + 740))
      {
        v22 = *(a1 + 80) == 0;
      }

      else
      {
        v22 = 1;
      }

      *(a1 + 672) = v22;
      ++*(a1 + 666);
      ++*(a1 + 667);
      LOBYTE(v21) = *a3;
    }

    *a3 = v21 + v10;
    *(a1 + 66) = 0;
    goto LABEL_47;
  }

  phOsalNfc_MemCopy();
  v16 = *(a1 + 80);
  *(a1 + 252) += v16;
  *(a1 + 740) -= v16;
  *(a1 + 66) = 1;
  *a3 += v16;
  *(a1 + 80) = 0;
  *a2 = 1;
  *(a1 + 72) = 0;
  if (*(a1 + 80) == 16)
  {
    *a2 = 0;
    *(a1 + 80) = 0;
LABEL_8:
    ++*(a1 + 666);
    ++*(a1 + 667);
    if (sub_297ED8258(a1))
    {
      v11 = 1;
    }

    else
    {
      if (*(a1 + 677) == 1)
      {
        v17 = sub_297ED83BC(a1);
      }

      else
      {
        v17 = sub_297ED7A60(a1);
      }

      v11 = v17;
    }

    goto LABEL_52;
  }

  *(a1 + 80) = 0;
LABEL_48:
  **(a1 + 552) = *(a1 + 252);
  if (*(a1 + 740))
  {
    v23 = *(a1 + 80) == 0;
  }

  else
  {
    v23 = 1;
  }

  v11 = 0;
  *(a1 + 672) = v23;
LABEL_52:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_RemainTLV");
  return v11;
}

uint64_t sub_297ED9AB4(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iWrite");
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProWrABlock");
  *(a1 + 754) = 0;
  v4 = *(a1 + 252);
  v5 = *(a1 + 248);
  if (v4 >= v5)
  {
    v10 = 245;
    goto LABEL_14;
  }

  if (*(a1 + 671) == 1)
  {
    *(a1 + 664) = **(a1 + 528);
    phOsalNfc_MemCopy();
    v6 = *(a1 + 216);
    *(a1 + 252) += v6;
    v7 = *(a1 + 740);
    *(a1 + 671) = 0;
    v8 = (a1 + 74);
    v9 = v7 - v6;
    *(a1 + 740) = v9;
    *(a1 + 672) = v9 == 0;
    if (!v9)
    {
LABEL_4:
      *v8 = 1;
LABEL_12:
      *(a1 + 752) = *(a1 + 666);
      sub_297EDC240(a1);
      *(a1 + 666) = *(a1 + 70);
      v15 = sub_297EDC2D4(a1);
LABEL_13:
      v10 = v15;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (*(a1 + 670) == 1)
  {
    phOsalNfc_MemCopy();
    v11 = *(a1 + 216);
    v12 = *(a1 + 740);
    v13 = v12 == v11;
    if (**(a1 + 528))
    {
      v13 = 0;
    }

    *(a1 + 664) = **(a1 + 528);
    *(a1 + 252) += v11;
    *(a1 + 670) = 0;
    *(a1 + 672) = v13;
    v8 = (a1 + 74);
    LOWORD(v9) = v12 - v11;
    *(a1 + 740) = v12 - v11;
    if (v12 == v11)
    {
      goto LABEL_4;
    }

LABEL_10:
    v14 = *v8;
    *v8 = v14;
    if (v14)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

  *(a1 + 664) = 0;
  v17 = *(a1 + 216);
  v18 = v17 + v4;
  *(a1 + 252) = v17 + v4;
  v19 = *(a1 + 740);
  v20 = v19 - v17;
  *(a1 + 740) = v19 - v17;
  if (v19 == v17 || v5 == v18)
  {
    ++*(a1 + 666);
    *(a1 + 672) = v19 == v17;
    if (v19 == v17)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_297ED8258(a1);
      v20 = *(a1 + 740);
    }

    ++*(a1 + 667);
    if (v20)
    {
      v21 = *(a1 + 74) == 1;
    }

    else
    {
      v21 = 1;
    }

    *(a1 + 74) = v21;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    ++*(a1 + 666);
    *(a1 + 754) = v5 - v18;
    if (sub_297ED8258(a1))
    {
      v10 = 1;
      goto LABEL_14;
    }

    ++*(a1 + 667);
    if (*(a1 + 677) == 1)
    {
      v22 = sub_297ED8C74(a1);
    }

    else
    {
      v22 = sub_297ED7A60(a1);
    }

    v10 = v22;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  if (*(a1 + 74) == 1)
  {
    goto LABEL_12;
  }

  LOWORD(v9) = *(a1 + 740);
LABEL_35:
  if (v9)
  {
    v15 = sub_297EDCFF4(a1);
    goto LABEL_13;
  }

  v10 = 0;
LABEL_14:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProWrABlock");
  *a2 = v10 != 13;
  if (v10 != 13)
  {
    **(a1 + 256) = *(a1 + 252);
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iWrite");
  return v10;
}

uint64_t sub_297ED9DAC(unsigned __int8 *a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iAuth");
  a1[758] = 0;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProAuth");
  v4 = a1[71];
  if (v4 == 1)
  {
    a1[71] = 0;
    a1[677] = 1;
    if (a1[769] != 1)
    {
      v5 = sub_297EDC2D4(a1);
      goto LABEL_7;
    }

    a1[769] = 0;
  }

  else
  {
    LOBYTE(v4) = 1;
    a1[677] = 1;
  }

  a1[679] = v4;
  v5 = sub_297EDCAF8(a1);
LABEL_7:
  v6 = v5;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProAuth");
  *a2 = v6 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iAuth");
  return v6;
}

uint64_t sub_297ED9EA8(uint64_t a1, BOOL *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iRdACSBit");
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProAcsBits");
  if (*(a1 + 264) != 16)
  {
    v5 = 1;
    goto LABEL_92;
  }

  if (*(a1 + 679) != 1)
  {
    *(a1 + 739) = 0;
    v5 = sub_297EDB134(a1, &v20);
    goto LABEL_92;
  }

  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkAcsBit");
  v4 = *(a1 + 666);
  if (v4 < 4 || v4 - 64 <= 2)
  {
    v5 = 0;
    *(a1 + 545) = 0;
    goto LABEL_6;
  }

  v14 = *(a1 + 272);
  if (v14 == 7)
  {
    if (*(a1 + 273) == 143 && *(a1 + 274) == 15)
    {
      v15 = 0;
      goto LABEL_64;
    }

LABEL_65:
    v15 = 0;
    v16 = 0;
    goto LABEL_66;
  }

  if (v14 != 127 || *(a1 + 273) != 7 || *(a1 + 274) != 136)
  {
    goto LABEL_65;
  }

  v15 = 1;
LABEL_64:
  v16 = 1;
LABEL_66:
  *(a1 + 674) = v15;
  *(a1 + 675) = v16;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_GPBChk");
  v5 = sub_297E9C178(a1, 9u);
  if (!v5)
  {
    if ((*(a1 + 275) & 0xF) != 0)
    {
      if ((*(a1 + 275) & 3) == 0 || (*(a1 + 275) & 0xC) != 0)
      {
        v17 = 3;
      }

      else
      {
        v17 = 1;
      }
    }

    else if (*(a1 + 739) == 1 || *(a1 + 738) == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2 * (*(a1 + 737) != 1);
    }

    *(a1 + 545) = v17;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_GPBChk");
LABEL_6:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkAcsBit");
  if (!v5 && *(a1 + 739) == 1)
  {
    v6 = *(a1 + 666);
    if (*(a1 + 545) == 3)
    {
      v7 = v6 >= 0 ? -3 : -15;
      *(a1 + 668) += v7;
      v8 = *(a1 + 746) == 1 ? 1 : 2;
      *(a1 + 748) = v8;
      v5 = sub_297EDC5DC(a1);
    }

    else
    {
      v9 = v6 == 64 && *(a1 + 544) == 8 ? *(a1 + 746) : 1;
      v5 = 0;
      *(a1 + 746) = v9;
    }

    if (*(a1 + 748) != 1)
    {
      *(a1 + 679) = 0;
      v10 = *(a1 + 666);
      v11 = v10 >= 0x3B && *(a1 + 544) == 7 && !*(a1 + 673) || *(a1 + 673) == 1;
      if (v10 >= 0xFA && *(a1 + 544) == 8 && !v11)
      {
        *(a1 + 673) = 1;
        *(a1 + 666) = 4;
LABEL_35:
        v5 = sub_297ED8258(a1);
        goto LABEL_36;
      }

      *(a1 + 673) = v11;
      if (v11)
      {
        LOBYTE(v10) = 4;
      }

      *(a1 + 666) = v10;
      if (v11)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_36:
  if (!v5)
  {
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkRdWr");
    v12 = *(a1 + 540);
    v5 = 1;
    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        if (*(a1 + 545) == 3)
        {
          goto LABEL_60;
        }

        v18 = *(a1 + 666);
        if (v18 >= 4 && v18 - 65 >= 2 && *(a1 + 750) == 1)
        {
          if (*(a1 + 679))
          {
            v13 = sub_297ED7A60(a1);
          }

          else
          {
            v13 = sub_297EDCAF8(a1);
          }
        }

        else
        {
          v13 = sub_297ED78C8(*(a1 + 2712), *(a1 + 8), *(a1 + 40));
        }
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_91;
        }

        if (*(a1 + 545) == 3)
        {
          goto LABEL_60;
        }

        if (*(a1 + 738) == 1)
        {
          goto LABEL_79;
        }

        v13 = sub_297ED83BC(a1);
      }
    }

    else
    {
      if (v12 != 3)
      {
        if (v12 != 4)
        {
          if (v12 == 6)
          {
            if (*(a1 + 545) == 2)
            {
              *a1 = 13;
              v20 = 0;
              v21 = 0;
              sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProWrACSbitsRdOnly");
              if (*(a1 + 264) == 16)
              {
                phOsalNfc_MemCopy();
                v20 = 0x8F07F7D3F7D3F7D3;
                LOBYTE(v21) = 15;
                BYTE1(v21) |= 3u;
                phOsalNfc_MemCopy();
                if (*(a1 + 666) < 0)
                {
                  sub_297EDA4E0(a1);
                }

                else
                {
                  sub_297EDA5E4(a1);
                }

                phOsalNfc_MemCopy();
                *a1 = 13;
                v5 = sub_297EDA674(a1);
              }

              else
              {
                v5 = 255;
              }

              sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProWrACSbitsRdOnly");
              goto LABEL_91;
            }

            goto LABEL_56;
          }

LABEL_91:
          sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkRdWr");
          goto LABEL_92;
        }

        if (!*(a1 + 675))
        {
LABEL_60:
          v5 = 20;
          goto LABEL_91;
        }

        goto LABEL_79;
      }

      if ((*(a1 + 545) | 2) == 3)
      {
LABEL_56:
        v5 = 21;
        goto LABEL_91;
      }

      if (*(a1 + 737) == 1)
      {
LABEL_79:
        v13 = sub_297EDCC48(a1);
        goto LABEL_80;
      }

      if (*(a1 + 676) != 1)
      {
        if (*(a1 + 756) == 1)
        {
          v13 = sub_297EDC2D4(a1);
          goto LABEL_80;
        }

        if (*(a1 + 70) != *(a1 + 666) || *(a1 + 560) != 1)
        {
          v13 = sub_297ED8C74(a1);
          goto LABEL_80;
        }
      }

      v13 = sub_297ED8B2C(a1);
    }

LABEL_80:
    v5 = v13;
    goto LABEL_91;
  }

LABEL_92:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProAcsBits");
  *a2 = v5 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iRdACSBit");
  return v5;
}

uint64_t sub_297EDA4E0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_Get4kStTrail");
  v2 = *(a1 + 666);
  switch(v2 & 0xF)
  {
    case 1:
      v2 += 14;
      break;
    case 2:
      v2 += 13;
      break;
    case 3:
      v2 += 12;
      break;
    case 4:
      v2 += 11;
      break;
    case 5:
      v2 += 10;
      break;
    case 6:
      v2 += 9;
      break;
    case 7:
      v2 += 8;
      break;
    case 8:
      v2 += 7;
      break;
    case 9:
      v2 += 6;
      break;
    case 0xA:
      v2 += 5;
      break;
    case 0xB:
      v2 += 4;
      break;
    case 0xC:
      v2 += 3;
      break;
    case 0xD:
      v2 += 2;
      break;
    case 0xE:
      ++v2;
      break;
    case 0xF:
      break;
    default:
      v2 += 15;
      break;
  }

  *(a1 + 266) = v2;

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_Get4kStTrail");
}

uint64_t sub_297EDA5E4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_Get1kStTrail");
  v2 = *(a1 + 666);
  v3 = v2 & 3;
  if (v3 == 2)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = *(a1 + 666);
  }

  v5 = v2 + 3;
  v6 = v2 + 2;
  if (!v3)
  {
    v6 = v5;
  }

  if (v3 > 1)
  {
    v6 = v4;
  }

  *(a1 + 266) = v6;

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_Get1kStTrail");
}

uint64_t sub_297EDA674(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_WrTLV");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  *(a1 + 526) = 17;
  *(a1 + 232) = 160;
  *(a1 + 264) = 260;
  v2 = sub_297E98D38(a1, sub_297ED7F4C);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_WrTLV");
  return v2;
}

uint64_t sub_297EDA72C(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iWrACSBit");
  v4 = *(a1 + 545);
  if (v4 == 2)
  {
    LOBYTE(v4) = 1;
  }

  *(a1 + 545) = v4;
  *a2 = 1;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iWrACSBit");
  return 0;
}

uint64_t sub_297EDA7AC(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iWrNdefLen");
  if (*(a1 + 756) == 1)
  {
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_CallWrNdefLen");
    v4 = *(a1 + 68);
    if ((v4 - 13) > 1)
    {
      if (v4 != 15)
      {
LABEL_12:
        if (*(a1 + 677))
        {
          v8 = sub_297EDC2D4(a1);
        }

        else
        {
          v8 = sub_297ED7A60(a1);
        }

        v5 = v8;
        sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_CallWrNdefLen");
        v7 = v5 != 13;
        goto LABEL_16;
      }
    }

    else if (*(a1 + 248) <= 0xFEu)
    {
      goto LABEL_12;
    }

    ++*(a1 + 666);
    phOsalNfc_SetMemory();
    *(a1 + 664) = 0;
    sub_297ED8258(a1);
    goto LABEL_12;
  }

  if (*(a1 + 752) == *(a1 + 666))
  {
    phOsalNfc_MemCopy();
  }

  v5 = 0;
  **(a1 + 256) = *(a1 + 252);
  *(a1 + 666) = *(a1 + 752);
  v6 = *(a1 + 545);
  if (!v6)
  {
    v6 = 2;
  }

  *(a1 + 545) = v6;
  v7 = 1;
LABEL_16:
  *a2 = v7;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iWrNdefLen");
  return v5;
}

uint64_t sub_297EDA930(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iRdToWrNdefLen");
  *a2 = 1;
  if (*(a1 + 264) == 16)
  {
    v4 = a1 + 266;
    *(a1 + 267) = *(a1 + 266);
    *(a1 + 266) = *(a1 + 666);
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_WriteNdefLen");
    *a1 = 6;
    if (*(a1 + 666) == *(a1 + 70))
    {
      if (*(a1 + 68) == 0xFF)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = *(a1 + 68) + 1;
      }

      sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_fillTLV2");
      if (*(a1 + 560))
      {
        v6 = *(a1 + 252);
      }

      else
      {
        v6 = *(a1 + 252) + *(a1 + 78);
      }

      *(a1 + 78) = v6;
      *(a1 + 756) = 1;
      v12 = *(a1 + 68);
      if (v12 == 15)
      {
        v15 = v5;
        v16 = 3;
      }

      else
      {
        if (v12 != 14)
        {
          if (v12 == 13)
          {
            *(v4 + v5) = 3;
            if (v5 >= 0xFEu)
            {
              v13 = v5;
            }

            else
            {
              v13 = v5 + 1;
            }

            if (v6 >= 0xFFu)
            {
              *(v4 + v13) = -1;
              if (v13 < 0xFEu)
              {
                ++v13;
              }

              *(v4 + v13) = HIBYTE(v6);
              goto LABEL_46;
            }
          }

          else
          {
            *(v4 + v5) = 3;
            if (v5 >= 0xFEu)
            {
              v13 = v5;
            }

            else
            {
              v13 = v5 + 1;
            }

            if (v6 >= 0xFFu)
            {
              *(v4 + v13) = -1;
              if (v13 < 0xFEu)
              {
                ++v13;
              }

              *(v4 + v13) = HIBYTE(v6);
              if (v13 < 0xFEu)
              {
                ++v13;
              }
            }
          }

          goto LABEL_45;
        }

        *(v4 + v5) = 3;
        if (v5 >= 0xFEu)
        {
          v13 = v5;
        }

        else
        {
          v13 = v5 + 1;
        }

        if (v6 < 0xFFu)
        {
LABEL_45:
          *(v4 + v13) = v6;
          *(a1 + 756) = 0;
          goto LABEL_46;
        }

        v15 = v13;
        v16 = -1;
      }

      *(v4 + v15) = v16;
LABEL_46:
      v14 = "phFriNfc_MifStd_H_fillTLV2";
      goto LABEL_47;
    }

    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_fillTLV2_1");
    v8 = *(a1 + 68);
    v9 = *(a1 + 78);
    if (v8 != 13)
    {
      if (v8 == 14)
      {
        if (v9 <= 0xFE)
        {
LABEL_29:
          *(a1 + 756) = 0;
          v14 = "phFriNfc_MifStd_H_fillTLV2_1";
LABEL_47:
          sub_297E4DFAC(2, a1, 8, 5u, v14);
          phOsalNfc_MemCopy();
          *(a1 + 526) = 17;
          *(a1 + 232) = 160;
          *(a1 + 264) = 260;
          v7 = sub_297E98D38(a1, sub_297ED7F4C);
          sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_WriteNdefLen");
          *a2 = v7 != 13;
          goto LABEL_48;
        }

        v10 = 268;
        v11 = 267;
        goto LABEL_26;
      }

      if (v9 >= 0xFF)
      {
        *(a1 + 267) = -1;
        v10 = 269;
        v11 = 268;
LABEL_26:
        *(a1 + v11) = BYTE1(v9);
LABEL_28:
        *(a1 + v10) = v9;
        goto LABEL_29;
      }
    }

    v10 = 267;
    goto LABEL_28;
  }

  v7 = 245;
LABEL_48:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iRdToWrNdefLen");
  return v7;
}

uint64_t sub_297EDAC6C(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iGetACTCardSize");
  if (*(a1 + 75))
  {
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkRemainTLVs");
    v4 = *(a1 + 75);
    switch(v4)
    {
      case 1:
        v11 = *(a1 + 78);
        v12 = 266;
        break;
      case 2:
        LOBYTE(v11) = *(a1 + 266);
        v12 = 267;
        break;
      case 3:
        v5 = a1 + 266;
        v6 = *(a1 + 266);
        if (v6 != 255)
        {
          if (*(a1 + 66) == 1)
          {
            v7 = sub_297E9C0B8(a1, v6);
            v6 = *(a1 + 266);
            v8 = *(a1 + 66) == 1;
          }

          else
          {
            v8 = 0;
            v7 = 0;
          }

          if (*(a1 + 740) >= v6)
          {
            v10 = v7;
          }

          else
          {
            v10 = 28;
          }

          *(a1 + 80) = v6;
          v27 = 0;
          if (v8 && !v10)
          {
            goto LABEL_34;
          }

          if (v10)
          {
            goto LABEL_44;
          }

          v28 = 1;
          v10 = sub_297EDCD94(a1, &v28, &v27);
          v21 = *(a1 + 740);
          v22 = v28;
          v23 = *(v5 + v28);
          v16 = v21 >= v23;
          v24 = v21 - v23;
          if (!v16)
          {
            v24 = 0;
          }

          *(a1 + 740) = v24;
          if (v22 < 0x10 || *a2)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        v27 = 0;
        v19 = __rev16(*(a1 + 267));
        v20 = *(a1 + 740);
        *(a1 + 80) = v19;
        if (*(a1 + 66) == 1 && v19 <= v20)
        {
          v10 = sub_297E9C0B8(a1, v19);
LABEL_34:
          *a2 = 1;
          goto LABEL_44;
        }

        if (v19 > v20)
        {
          *a2 = 1;
          v10 = 28;
LABEL_44:
          if (*(a1 + 80) > *(a1 + 740) && *(a1 + 547) == 1)
          {
            sub_297E4E0B0(2, a1, 8, 2u, "phFriNfc_MifStd_H_ChkRemainTLVs: Current NDEF message exceeds the Maximum Tag NDEF size");
            sub_297E50EBC(2, a1, 8, 2u, "Current Ndef Message size");
            sub_297E50EBC(2, a1, 8, 2u, "Maximum Tag Ndef size");
            *(a1 + 545) = 0;
            *(a1 + 80) = 0;
            v10 = 25;
          }

          sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkRemainTLVs");
          *(a1 + 75) = 0;
          goto LABEL_48;
        }

        v28 = 2;
        sub_297EDCD94(a1, &v28, &v27);
        *(a1 + 740) -= bswap32(*(v5 + v28)) >> 16;
        goto LABEL_43;
      default:
        v10 = 0;
        goto LABEL_44;
    }

    v13 = *(a1 + v12) | (v11 << 8);
    v14 = *(a1 + 668);
    v15 = *(a1 + 667);
    v16 = v14 >= v15;
    v17 = 16 * (v14 - v15) + 16;
    if (!v16)
    {
      v17 = 16;
    }

    if (v17 < v13)
    {
      *(a1 + 80) = v13;
      v10 = 1;
      *a2 = 1;
      goto LABEL_44;
    }

    if (*(a1 + 66) == 1)
    {
      *(a1 + 80) = v13;
      v18 = sub_297E9C0B8(a1, v13);
      if (*(a1 + 80) <= *(a1 + 740))
      {
        v10 = v18;
      }

      else
      {
        v10 = 28;
      }

      goto LABEL_34;
    }

    *(a1 + 740) -= v13;
    *a2 = 0;
    v28 = 2;
    v27 = 1;
    if (*(a1 + 66) != 1)
    {
      sub_297EDCD94(a1, &v28, &v27);
    }

LABEL_43:
    v10 = sub_297EDCC48(a1);
    goto LABEL_44;
  }

  if (*a2)
  {
    v9 = (a1 + 738);
    if (*(a1 + 738) == 1)
    {
      goto LABEL_51;
    }

    v10 = 0;
LABEL_49:
    if (*(a1 + 737) != 1)
    {
      goto LABEL_64;
    }

    goto LABEL_50;
  }

  v10 = sub_297EDB134(a1, a2);
LABEL_48:
  v9 = (a1 + 738);
  if (*(a1 + 738) != 1)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (v10 != 13)
  {
LABEL_51:
    *(a1 + 746) = 1;
    *a2 = 0;
    if (*(a1 + 677))
    {
      if (*(a1 + 68) - 13 <= 1 && *(a1 + 248) <= 0xFEu && (*(a1 + 80) > 0xFEu || *(a1 + 76) == 1) && *(a1 + 547) == 3)
      {
        *(a1 + 769) = 1;
      }

      if (*v9 == 1)
      {
        sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_RdTLV");
        *a1 = 11;
        *(a1 + 540) = 2;
        v10 = sub_297EDCB98(a1, *(a1 + 666));
        sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_RdTLV");
LABEL_63:
        *(a1 + 737) = 0;
        goto LABEL_64;
      }

      v25 = sub_297ED8B2C(a1);
    }

    else
    {
      v25 = sub_297ED7A60(a1);
    }

    v10 = v25;
    goto LABEL_63;
  }

LABEL_64:
  if (*(a1 + 739) == 1 || *(a1 + 750) == 1)
  {
    *a2 = v10 != 13;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iGetACTCardSize");
  return v10;
}

uint64_t sub_297EDB134(uint64_t a1, BOOL *a2)
{
  v45 = 0;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkTLVs");
  *(a1 + 540) = 4;
  v4 = *(a1 + 68);
  v5 = a1 + 266;
  while (1)
  {
LABEL_2:
    while (1)
    {
      v6 = *(v5 + v4);
      while (v6 == 254)
      {
        if (*(a1 + 66) == 1)
        {
          v46 = ++v4;
          --*(a1 + 740);
          goto LABEL_2;
        }

        if (!*(a1 + 66))
        {
          v32 = 1;
          *(a1 + 672) = 1;
          goto LABEL_66;
        }
      }

      if (*(v5 + v4))
      {
        break;
      }

      v46 = ++v4;
      v14 = *(a1 + 86) + 1;
      *(a1 + 86) = v14;
      *(a1 + 88) = v14;
      v15 = *(v5 + v4 - 1);
      v16 = *(a1 + 740) - 1;
      *(a1 + 740) = v16;
      if ((*(v5 + v4) | (v15 << 8)) > v16)
      {
        goto LABEL_65;
      }

      v17 = sub_297EDCCD8(a1, v4);
      if (v17)
      {
        v32 = v17;
        *(a1 + 68) = 0;
        goto LABEL_66;
      }
    }

    if (v6 == 3)
    {
      *(a1 + 70) = *(a1 + 666);
      *(a1 + 68) = v4;
      *(a1 + 66) = 1;
      v7 = 16 * *(a1 + 668);
      v8 = *(a1 + 86);
      v9 = v7 >= v8;
      v10 = v7 - v8;
      if (!v9)
      {
        v10 = 0;
      }

      v11 = v10;
      v12 = v10 - 4;
      if ((v10 & 0xFFFE) != 0)
      {
        v13 = v10 - 2;
      }

      else
      {
        v13 = 0;
      }

      if (v11 > 0xFE)
      {
        v13 = v12;
      }

      *(a1 + 740) = v13;
    }

    else
    {
      if (!*(a1 + 66))
      {
        *(a1 + 80) = 0;
        *(a1 + 545) = 3;
        *a2 = 1;
        v32 = 22;
        goto LABEL_66;
      }

      *(a1 + 86) = 0;
    }

    v18 = (v4 + 1);
    v46 = v4 + 1;
    if (v18 == 16)
    {
      *(a1 + 72) = 1;
      *(a1 + 75) = 3;
    }

    v19 = sub_297EDCCD8(a1, v18);
    if (v19)
    {
      goto LABEL_42;
    }

    v20 = *(a1 + 668);
    v21 = *(a1 + 667);
    v9 = v20 >= v21;
    v22 = 16 * (v20 - v21);
    if (v9)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = 16 - (v4 + 1);
    if ((v4 + 1) >= 0x11u)
    {
      v24 = 0;
    }

    v25 = (v4 + 1);
    v26 = *(v5 + v25);
    v27 = *(a1 + 66);
    if (v26 != 255 && v23 + v24 < v26)
    {
      if (v27 != 1)
      {
LABEL_48:
        v32 = 1;
        *a2 = 1;
        goto LABEL_66;
      }

LABEL_45:
      v32 = sub_297E9C0B8(a1, v26);
      *(a1 + 80) = *(v5 + v25);
LABEL_46:
      v31 = 1;
LABEL_47:
      *a2 = v31;
      goto LABEL_66;
    }

    if (v26 != 255 && v27 == 1)
    {
      goto LABEL_45;
    }

    v28 = v26 + 2;
    if (v26 == 255)
    {
      v28 = 0;
    }

    *(a1 + 740) -= v28;
    v29 = *(v5 + v25);
    if (!*(v5 + v25))
    {
      goto LABEL_48;
    }

    v45 = 0;
    if (v29 == 255)
    {
      break;
    }

    v30 = sub_297EDCD94(a1, &v46, &v45);
    v4 = v46;
    if (v46 >= 0x10u && !v30)
    {
      *(a1 + 72) = 0;
      *(a1 + 75) = 0;
      v19 = sub_297EDCC48(a1);
LABEL_42:
      v32 = v19;
      v31 = v19 != 13;
      goto LABEL_47;
    }
  }

  v45 = 1;
  v33 = (v4 + 2);
  if (v33 == 16)
  {
    *(a1 + 72) = 1;
    *(a1 + 75) = 2;
    if (*(a1 + 248) <= 0xFEu)
    {
      *(a1 + 76) = 1;
    }
  }

  v34 = sub_297EDCCD8(a1, v33);
  if (v34)
  {
    goto LABEL_57;
  }

  v35 = (v4 + 3);
  if (v35 == 16)
  {
    *(a1 + 72) = 1;
    *(a1 + 75) = 1;
    *(a1 + 78) = *(a1 + 281);
    if (*(a1 + 248) <= 0xFEu)
    {
      *(a1 + 76) = 1;
    }
  }

  v36 = *(v5 + (v4 + 2));
  v34 = sub_297EDCCD8(a1, v35);
  if (v34)
  {
LABEL_57:
    v32 = v34;
    goto LABEL_66;
  }

  v37 = *(a1 + 668);
  v38 = *(a1 + 667);
  v9 = v37 >= v38;
  v39 = 16 * (v37 - v38);
  if (v9)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = 16 - (v4 + 3);
  if ((v4 + 3) >= 0x11u)
  {
    v41 = 0;
  }

  v42 = *(v5 + (v4 + 3)) | (v36 << 8);
  if (v40 + v41 < v42)
  {
    *(a1 + 80) = *(v5 + (v4 + 3)) | (v36 << 8);
LABEL_65:
    v32 = 29;
    goto LABEL_66;
  }

  if (*(a1 + 66) == 1)
  {
    *(a1 + 80) = *(v5 + (v4 + 3)) | (v36 << 8);
    v32 = sub_297E9C0B8(a1, v42);
    goto LABEL_46;
  }

  *(a1 + 740) -= (v36 << 8) | *(v5 + (v4 + 3) + 1);
  v46 = v4 + 4;
  v44 = sub_297EDCD94(a1, &v46, &v45);
  v32 = v44;
  if (v46 >= 0x10u && !v44)
  {
    *(a1 + 72) = 0;
    *(a1 + 75) = 0;
    v34 = sub_297EDCC48(a1);
    goto LABEL_57;
  }

LABEL_66:
  if (*(a1 + 80) > *(a1 + 740) && *(a1 + 547) == 1)
  {
    sub_297E4E0B0(2, a1, 8, 2u, "phFriNfc_MifStd_H_ChkTLVs: Current NDEF message exceeds the Maximum Tag NDEF size");
    sub_297E50EBC(2, a1, 8, 2u, "Current Ndef Message size");
    sub_297E50EBC(2, a1, 8, 2u, "Maximum Tag Ndef size");
    *(a1 + 545) = 0;
    *(a1 + 80) = 0;
    v32 = 25;
  }

  else if (!*(a1 + 740))
  {
    v32 = *(a1 + 66) != 1;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkTLVs");
  return v32;
}

uint64_t sub_297EDB624(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iRdBefWrNdefLen");
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProBytesToWr");
  if (*(a1 + 264) != 16)
  {
    v12 = 20;
    goto LABEL_127;
  }

  v4 = a1 + 266;
  phOsalNfc_MemCopy();
  v5 = (a1 + 267);
  phOsalNfc_MemCopy();
  v6 = *(a1 + 666);
  *(a1 + 266) = v6;
  if (v6 != *(a1 + 70))
  {
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_UpdRemTLV");
    v13 = *(a1 + 68);
    if (v13 >= 0x11)
    {
      v14 = 0;
    }

    else
    {
      v14 = 16 - v13;
    }

    if (v14 == 2)
    {
      v17 = *v5;
      if (v17 == 255)
      {
        LOWORD(v17) = *(a1 + 268) | 0xFF00;
      }

      *(a1 + 78) = v17;
      if (*(a1 + 248) >= 0xFFu)
      {
        *(a1 + 267) = 0;
        v16 = (a1 + 268);
        LOBYTE(v9) = 2;
        goto LABEL_27;
      }
    }

    else
    {
      if (v14 != 1)
      {
        *(a1 + 78) = *(a1 + 267) | (*(a1 + 78) << 8);
        LOBYTE(v9) = 1;
        v16 = (a1 + 267);
        goto LABEL_27;
      }

      v15 = *v5;
      if (v15 == 255)
      {
        v15 = bswap32(*(a1 + 268)) >> 16;
      }

      *(a1 + 78) = v15;
      *(a1 + 267) = 0;
      if (*(a1 + 248) >= 0xFFu)
      {
        *(a1 + 268) = 0;
        v16 = (a1 + 269);
        LOBYTE(v9) = 3;
LABEL_27:
        *v16 = 0;
        goto LABEL_28;
      }
    }

    LOBYTE(v9) = 1;
LABEL_28:
    v7 = "phFriNfc_MifStd_H_UpdRemTLV";
    goto LABEL_29;
  }

  v7 = "phFriNfc_MifStd_H_UpdateTLV";
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_UpdateTLV");
  v8 = *(a1 + 68);
  LOWORD(v9) = v8 + 1;
  v10 = (v8 + 1);
  if (v10 > 0x103)
  {
    goto LABEL_29;
  }

  if (v10 >= 0x11)
  {
    v11 = 0;
  }

  else
  {
    v11 = 16 - v9;
  }

  if (v11 == 2)
  {
    if ((v8 + 1) > 0x101u)
    {
      goto LABEL_29;
    }

    v9 = (v8 + 2);
    v57 = *(v4 + v9);
    if (v57 == 255)
    {
      LOWORD(v57) = *(v9 + v4 + 1);
    }

    *(a1 + 78) = v57;
    *(v4 + v9) = 0;
    if (*(a1 + 248) < 0xFFu)
    {
      goto LABEL_29;
    }

    LOWORD(v9) = v8 + 3;
LABEL_140:
    v59 = v9;
    goto LABEL_144;
  }

  if (v11 != 1)
  {
    if (!v11)
    {
      *(v4 + (v8 + 1)) = 3;
      goto LABEL_29;
    }

    if ((v8 + 1) > 0x100u)
    {
      goto LABEL_29;
    }

    *(v4 + (v8 + 1)) = 3;
    v9 = (v8 + 2);
    v58 = *(v4 + v9);
    if (v58 == 255)
    {
      v58 = bswap32(*(v9 + v4 + 1)) >> 16;
    }

    *(a1 + 78) = v58;
    *(v4 + v9) = 0;
    if (*(a1 + 248) < 0xFFu)
    {
      goto LABEL_29;
    }

    *(v4 + (v8 + 3)) = 0;
    LOWORD(v9) = v8 + 4;
    goto LABEL_140;
  }

  if ((v8 + 1) == 259)
  {
    LOBYTE(v9) = 3;
    goto LABEL_29;
  }

  *(v4 + (v8 + 1)) = 3;
  LOBYTE(v9) = v8 + 2;
  v59 = (v8 + 2);
  v60 = *(v4 + v59);
  if (v60 == 255)
  {
    LOWORD(v60) = 0;
  }

  *(a1 + 78) = v60;
LABEL_144:
  *(v4 + v59) = 0;
LABEL_29:
  sub_297E4DFAC(2, a1, 8, 5u, v7);
  if (*(a1 + 742) == 1)
  {
    v18 = -2;
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 740) += v18;
  *(a1 + 742) = 0;
  *a1 = 10;
  if (v9 == 16)
  {
    v12 = sub_297EDA674(a1);
  }

  else
  {
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_fillSendBuf");
    v19 = *(a1 + 740);
    v20 = *(a1 + 248);
    v21 = *(a1 + 252);
    v22 = v20 >= v21;
    v23 = v20 - v21;
    if (!v22)
    {
      v23 = 0;
    }

    if (v23 <= v19)
    {
      LOWORD(v19) = v23;
    }

    *(a1 + 266) = *(a1 + 666);
    v24 = (v9 + 1);
    if (17 - (*(a1 + 664) + v24) <= v19)
    {
      v25 = 17 - (*(a1 + 664) + v24);
    }

    else
    {
      v25 = v19;
    }

    if (*(a1 + 664))
    {
      phOsalNfc_MemCopy();
    }

    phOsalNfc_MemCopy();
    *(a1 + 216) = v25;
    **(a1 + 528) = v24 + v25 + *(a1 + 664) - 1;
    v26 = v24 + v25 + *(a1 + 664);
    if (v26 <= 0x10)
    {
      v27 = 0;
      v28 = (32 - v26) & 0x30;
      v29 = vdupq_n_s64(16 - v26);
      v30 = a1 + v26;
      do
      {
        v31 = vdupq_n_s64(v27);
        v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_297F13220)));
        if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
        {
          if (v27)
          {
            v33 = 0;
          }

          else
          {
            v33 = -2;
          }

          *(v30 + v27 + 266) = v33;
        }

        if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
        {
          if (v27 == -1)
          {
            v34 = -2;
          }

          else
          {
            v34 = 0;
          }

          *(v30 + v27 + 267) = v34;
        }

        v35 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_297F13210)));
        if (vuzp1_s8(vuzp1_s16(*&v29, v35), *&v29).i8[2])
        {
          if (v27 == -2)
          {
            v36 = -2;
          }

          else
          {
            v36 = 0;
          }

          *(v30 + v27 + 268) = v36;
        }

        if (vuzp1_s8(vuzp1_s16(*&v29, v35), *&v29).i8[3])
        {
          if (v27 == -3)
          {
            v37 = -2;
          }

          else
          {
            v37 = 0;
          }

          *(v30 + v27 + 269) = v37;
        }

        v38 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_297F13710)));
        if (vuzp1_s8(*&v29, vuzp1_s16(v38, *&v29)).i32[1])
        {
          if (v27 == -4)
          {
            v39 = -2;
          }

          else
          {
            v39 = 0;
          }

          *(v30 + v27 + 270) = v39;
        }

        if (vuzp1_s8(*&v29, vuzp1_s16(v38, *&v29)).i8[5])
        {
          if (v27 == -5)
          {
            v40 = -2;
          }

          else
          {
            v40 = 0;
          }

          *(v30 + v27 + 271) = v40;
        }

        v41 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_297F13700)));
        if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, v41)).i8[6])
        {
          if (v27 == -6)
          {
            v42 = -2;
          }

          else
          {
            v42 = 0;
          }

          *(v30 + v27 + 272) = v42;
        }

        if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, v41)).i8[7])
        {
          if (v27 == -7)
          {
            v43 = -2;
          }

          else
          {
            v43 = 0;
          }

          *(v30 + v27 + 273) = v43;
        }

        v44 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_297F136F0)));
        if (vuzp1_s8(vuzp1_s16(v44, *v29.i8), *v29.i8).u8[0])
        {
          if (v27 == -8)
          {
            v45 = -2;
          }

          else
          {
            v45 = 0;
          }

          *(v30 + v27 + 274) = v45;
        }

        if (vuzp1_s8(vuzp1_s16(v44, *&v29), *&v29).i8[1])
        {
          if (v27 == -9)
          {
            v46 = -2;
          }

          else
          {
            v46 = 0;
          }

          *(v30 + v27 + 275) = v46;
        }

        v47 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_297F136E0)));
        if (vuzp1_s8(vuzp1_s16(*&v29, v47), *&v29).i8[2])
        {
          if (v27 == -10)
          {
            v48 = -2;
          }

          else
          {
            v48 = 0;
          }

          *(v30 + v27 + 276) = v48;
        }

        if (vuzp1_s8(vuzp1_s16(*&v29, v47), *&v29).i8[3])
        {
          if (v27 == -11)
          {
            v49 = -2;
          }

          else
          {
            v49 = 0;
          }

          *(v30 + v27 + 277) = v49;
        }

        v50 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_297F136D0)));
        if (vuzp1_s8(*&v29, vuzp1_s16(v50, *&v29)).i32[1])
        {
          if (v27 == -12)
          {
            v51 = -2;
          }

          else
          {
            v51 = 0;
          }

          *(v30 + v27 + 278) = v51;
        }

        if (vuzp1_s8(*&v29, vuzp1_s16(v50, *&v29)).i8[5])
        {
          if (v27 == -13)
          {
            v52 = -2;
          }

          else
          {
            v52 = 0;
          }

          *(v30 + v27 + 279) = v52;
        }

        v53 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_297F136C0)));
        if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, v53)).i8[6])
        {
          if (v27 == -14)
          {
            v54 = -2;
          }

          else
          {
            v54 = 0;
          }

          *(v30 + v27 + 280) = v54;
        }

        if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, v53)).i8[7])
        {
          if (v27 == -15)
          {
            v55 = -2;
          }

          else
          {
            v55 = 0;
          }

          *(v30 + v27 + 281) = v55;
        }

        v27 += 16;
      }

      while (v28 != v27);
    }

    *(a1 + 74) = 1;
    phOsalNfc_MemCopy();
    *a1 = 10;
    v12 = sub_297EDA674(a1);
    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_fillSendBuf");
  }

LABEL_127:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProBytesToWr");
  *a2 = v12 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iRdBefWrNdefLen");
  return v12;
}

uint64_t sub_297EDBDE4(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iWrTlv");
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProWrTLV");
  v4 = *(a1 + 68);
  if (v4 == 15 || v4 >= 0xD && *(a1 + 248) >= 0xFFu)
  {
    v5 = *(a1 + 666);
    if (v5 == *(a1 + 70))
    {
      v6 = 1;
      *(a1 + 676) = 1;
      *(a1 + 666) = v5 + 1;
      ++*(a1 + 667);
      if (sub_297ED8258(a1))
      {
        goto LABEL_32;
      }

      if (*(a1 + 677))
      {
        v7 = sub_297ED8B2C(a1);
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  *(a1 + 676) = 0;
  *(a1 + 769) = 0;
  v8 = *(a1 + 252);
  if (*(a1 + 248) > v8)
  {
    v9 = **(a1 + 528);
    if (v9 <= 0xF)
    {
      *(a1 + 664) = v9;
      phOsalNfc_MemCopy();
      LOWORD(v8) = *(a1 + 252);
    }

    v10 = *(a1 + 216);
    v11 = v10 + v8;
    *(a1 + 252) = v10 + v8;
    v12 = *(a1 + 740) - v10;
    *(a1 + 740) = v12;
    if (v12)
    {
      if (*(a1 + 248) != v11)
      {
        ++*(a1 + 666);
        if (sub_297ED8258(a1))
        {
          v6 = 1;
          goto LABEL_32;
        }

        ++*(a1 + 667);
        if (*(a1 + 677) == 1)
        {
          v7 = sub_297ED8C74(a1);
          goto LABEL_26;
        }

LABEL_25:
        v7 = sub_297ED7A60(a1);
LABEL_26:
        v6 = v7;
        if (v7)
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      }

      v6 = 0;
      *(a1 + 672) = 0;
      if (!*(a1 + 664))
      {
        ++*(a1 + 666);
        v6 = sub_297ED8258(a1);
        ++*(a1 + 667);
        LOWORD(v12) = *(a1 + 740);
      }
    }

    else
    {
      v6 = 0;
      *(a1 + 672) = 1;
    }

    if (v12)
    {
      v13 = *(a1 + 74) == 1;
    }

    else
    {
      v13 = 1;
    }

    *(a1 + 74) = v13;
    if (v6)
    {
      goto LABEL_32;
    }
  }

LABEL_27:
  if (*(a1 + 74) == 1)
  {
    *(a1 + 752) = *(a1 + 666);
    sub_297EDC240(a1);
    *(a1 + 666) = *(a1 + 70);
    v14 = sub_297EDC2D4(a1);
  }

  else
  {
    if (!*(a1 + 740))
    {
      v6 = 0;
      goto LABEL_32;
    }

    v14 = sub_297EDCFF4(a1);
  }

  v6 = v14;
LABEL_32:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProWrTLV");
  *a2 = v6 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iWrTlv");
  return v6;
}

uint64_t sub_297EDC074(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iRdTlv");
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProRdTLV");
  v4 = *(a1 + 80);
  v5 = *(a1 + 68);
  if (v4 >= 0xFF)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  v10 = (v6 + v5) & 0xF;
  v7 = 245;
  if (*(a1 + 264) == 16 && v4 && *(a1 + 248) > *(a1 + 252))
  {
    if (v5 == 14)
    {
      if (v4 > 0xFE)
      {
        goto LABEL_11;
      }
    }

    else if (v5 != 12 || v4 <= 0xFE)
    {
      goto LABEL_11;
    }

    *(a1 + 770) = 1;
LABEL_11:
    v7 = sub_297ED96A8(a1, &v9, &v10);
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProRdTLV");
  *a2 = v7 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iRdTlv");
  return v7;
}

uint64_t sub_297EDC1B0(unsigned __int8 *a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iTermTlv");
  sub_297EDC240(a1);
  a1[666] = a1[70];
  v4 = sub_297EDC2D4(a1);
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iTermTlv");
  return v4;
}

uint64_t sub_297EDC240(unsigned __int8 *a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_SetNdefBlkAuth");
  v2 = sub_297EDC9B8(a1, a1[70]);
  a1[71] = v2 != sub_297EDC9B8(a1, a1[666]);

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_SetNdefBlkAuth");
}

uint64_t sub_297EDC2D4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_RdtoWrNdefLen");
  *a1 = 7;
  if (*(a1 + 71) == 1)
  {
    *(a1 + 677) = 0;
    v2 = sub_297ED7A60(a1);
  }

  else
  {
    *(a1 + 266) = *(a1 + 666);
    *(a1 + 526) = 1;
    *(a1 + 264) = 260;
    *(a1 + 232) = 48;
    v2 = sub_297E98D38(a1, sub_297ED7F4C);
  }

  v3 = v2;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_RdtoWrNdefLen");
  return v3;
}

uint64_t sub_297EDC390(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iDisconnect");
  *(a1 + 757) = 0;
  v4 = sub_297EDC414(a1);
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iDisconnect");
  return v4;
}

uint64_t sub_297EDC414(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_CallConnect");
  *a1 = 16;
  v2 = sub_297E98F98(a1, sub_297EDD08C, *(a1 + 224));
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_CallConnect");
  return v2;
}

uint64_t sub_297EDC4A0(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iPoll");
  v4 = sub_297EDC414(a1);
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iPoll");
  return v4;
}

uint64_t sub_297EDC520(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iConnect");
  if (*(a1 + 758) == 1)
  {
    *(a1 + 758) = 0;
LABEL_7:
    v4 = sub_297ED7A60(a1);
    goto LABEL_8;
  }

  if ((*(a1 + 560) || *(a1 + 540) != 3) && !*(a1 + 754))
  {
    goto LABEL_7;
  }

  v4 = sub_297EDC5DC(a1);
LABEL_8:
  v5 = v4;
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iConnect");
  return v5;
}

uint64_t sub_297EDC5DC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProStatNotValid");
  if (!*(a1 + 746))
  {
    *(a1 + 748) = 2;
    v5 = *(a1 + 666);
    if ((v5 & 0x80) != 0)
    {
      if (v5 > 0xEF)
      {
        goto LABEL_27;
      }

      v6 = 16;
      v7 = -240;
    }

    else
    {
      if (v5 > 3)
      {
        v8 = *(a1 + 544);
        if (v5 <= 0x43)
        {
          if (v8 == 8)
          {
            goto LABEL_27;
          }

          v6 = 4;
          v7 = -48;
          if (v5 >= 0x3C && v8 == 7)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (v8 == 7)
        {
          goto LABEL_27;
        }
      }

      else if (*(a1 + 544) - 7 < 2)
      {
        goto LABEL_27;
      }

      v6 = 4;
      v7 = -48;
    }

LABEL_26:
    *(a1 + 740) += v7;
    *(a1 + 666) = v6 + v5;
    if (!sub_297ED8258(a1))
    {
      v9 = sub_297ED7A60(a1);
      goto LABEL_30;
    }

LABEL_27:
    v4 = 22;
    goto LABEL_28;
  }

  if (*(a1 + 746) == 1 && *(a1 + 748) == 2)
  {
    goto LABEL_27;
  }

  *(a1 + 748) = 1;
  v3 = *(a1 + 540);
  v4 = 22;
  if (v3 == 1 || v3 == 4)
  {
    goto LABEL_28;
  }

  if (v3 != 2)
  {
    *(a1 + 672) = 1;
    *(a1 + 752) = *(a1 + 666);
    sub_297EDC240(a1);
    *(a1 + 666) = *(a1 + 70);
    v9 = sub_297EDC2D4(a1);
LABEL_30:
    v4 = v9;
    goto LABEL_28;
  }

  if (*(a1 + 66) == 1 && !*(a1 + 75))
  {
    v4 = 0;
    **(a1 + 552) = *(a1 + 252);
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ProStatNotValid");
  return v4;
}

uint64_t sub_297EDC780(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareStd_iAuthFail");
  *(a1 + 757) = 1;
  if (*(a1 + 759) == 1)
  {
    *(a1 + 759) = 0;
    if (*(a1 + 746))
    {
      v4 = *(a1 + 754);
    }

    else
    {
      v4 = 1;
    }

    *(a1 + 754) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (!*(a1 + 754))
  {
LABEL_8:
    v5 = 26;
    v6 = 1;
    goto LABEL_9;
  }

  v5 = sub_297ED8A90(a1);
  v6 = v5 != 13;
LABEL_9:
  *a2 = v6;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareStd_iAuthFail");
  return v5;
}

uint64_t sub_297EDC848(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_fillAIDarray");
  v2 = *(a1 + 666);
  if (v2 == 64 || v2 == 1)
  {
    v4 = *(a1 + 678);
    *(a1 + v4 + 697) = 1;
    *(a1 + 678) = v4 + 1;
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 + 697;
  v7 = v5 + 267;
  do
  {
    if (*(a1 + v7 - 1) == 3)
    {
      v8 = *(a1 + 678);
      if (*(a1 + v7) == 225)
      {
        *(a1 + 746) = 1;
        *(v6 + v8) = 0;
        v9 = v8 + 1;
        *(a1 + 678) = v9;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v8) = *(a1 + 678);
    }

    *(v6 + v8) = 1;
    v9 = v8 + 1;
    *(a1 + 678) = v9;
    v10 = *(a1 + 746);
    *(a1 + 746) = 0;
    *(a1 + 744) = v10 == 1;
    if (v10 == 1)
    {
      goto LABEL_15;
    }

LABEL_13:
    v11 = v7 - 267;
    v7 += 2;
  }

  while (v11 < 0xE);
  if (*(a1 + 744) != 1)
  {
    goto LABEL_22;
  }

LABEL_15:
  v12 = *(a1 + 544);
  if (v12 == 8)
  {
    if (v9 <= 0x27u)
    {
      v13 = a1 + v9;
      v14 = 40;
LABEL_21:
      memset((v13 + 697), 1, (v14 - v9));
    }
  }

  else if (v12 == 7 && v9 <= 0xFu)
  {
    v13 = a1 + v9;
    v14 = 16;
    goto LABEL_21;
  }

LABEL_22:

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_fillAIDarray");
}

uint64_t sub_297EDC9B8(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_GetSect");
  if (v4 >= 0)
  {
    v5 = a2 >> 2;
  }

  else
  {
    v5 = (a2 >> 4) & 7 | 0x20;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_GetSect");
  return v5;
}

uint64_t sub_297EDCA38(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd1k_H_BlkChk");
  v6 = *(a1 + 666);
  if (((v6 + 1) & 3) != 0)
  {
    if (*(a1 + a2 + 697))
    {
      *(a1 + 666) = v6 + 4;
    }

    else
    {
      if (v6 == 4 * a2 && !*(a1 + 664))
      {
        *(a1 + 677) = 0;
      }

      *a3 = 1;
    }
  }

  else
  {
    *(a1 + 666) = v6 + 1;
  }

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd1k_H_BlkChk");
}

uint64_t sub_297EDCAF8(_BYTE *a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_RdAcsBit");
  *a1 = 5;
  v2 = a1[666];
  if (a1[679] == 1)
  {
    if (v2 < 0)
    {
      sub_297EDA4E0(a1);
    }

    else
    {
      sub_297EDA5E4(a1);
    }
  }

  else
  {
    a1[266] = v2;
  }

  v3 = sub_297EDCB98(a1, a1[266]);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_RdAcsBit");
  return v3;
}

uint64_t sub_297EDCB98(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_Rd16Bytes");
  *(a1 + 266) = a2;
  *(a1 + 526) = 1;
  *(a1 + 264) = 260;
  *(a1 + 232) = 48;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  v4 = sub_297E98D38(a1, sub_297ED7F4C);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_Rd16Bytes");
  return v4;
}

uint64_t sub_297EDCC48(_BYTE *a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_GetActCardLen");
  *a1 = 8;
  a1[540] = 4;
  if (a1[677])
  {
    v2 = sub_297EDCB98(a1, a1[666]);
  }

  else
  {
    v2 = sub_297ED7A60(a1);
  }

  v3 = v2;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_GetActCardLen");
  return v3;
}

uint64_t sub_297EDCCD8(_BYTE *a1, int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_Chk16Bytes");
  if (a2 == 16)
  {
    ++a1[666];
    ++a1[667];
    if (sub_297ED8258(a1))
    {
      v4 = 1;
    }

    else
    {
      if (a1[677] == 1)
      {
        v5 = sub_297EDCC48(a1);
      }

      else
      {
        v5 = sub_297ED7A60(a1);
      }

      v4 = v5;
    }
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_Chk16Bytes");
  return v4;
}

uint64_t sub_297EDCD94(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_GetNxtTLV");
  v6 = *a2;
  v7 = 15 - v6;
  if (v6 >= 0x10)
  {
    v7 = 0;
  }

  if (!*a3)
  {
    v20 = *(a1 + 266 + v6);
    if ((v6 + v20 + 1) >= 0x10000)
    {
      LOBYTE(v17) = 0;
      v19 = 0;
      *a2 = 0;
      goto LABEL_35;
    }

    v17 = v6 + v20 + 1;
    *a2 = v17;
    if (v17 < 0x10u)
    {
      v19 = 0;
      goto LABEL_35;
    }

    v28 = *(a1 + 266 + v6);
    v12 = v28 >= v7;
    v29 = v28 - v7;
    if (v12)
    {
      v19 = v29;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_34;
  }

  *a3 = 0;
  if (*(a1 + 75) == 1)
  {
    v8 = *(a1 + 78);
    v9 = *a2;
    v10 = ((v8 << 8) & 0xFF00) + v9;
    v11 = v9 + (v8 << 8);
    v12 = v10 >= 0x10000;
    if (v10 >= 0x10000)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v14 = a1 + v6;
    v15 = *(v14 + 266) + 1;
    v16 = v13 + v15;
    if (v12)
    {
      v11 = 0;
    }

    v17 = v11 + v15;
    if (v16 >= 0x10000)
    {
      v17 = 0;
    }

    *a2 = v17;
    v18 = *(v14 + 266) | (v8 << 8);
    if (v18 >= v7)
    {
      v19 = v18 - v7;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v21 = a1 + 266;
    v22 = (v6 - 1);
    if (!v6)
    {
      v22 = 0;
    }

    v23 = *(v21 + v22);
    v24 = *a2 + (v23 << 8);
    v25 = (*a2 + (v23 << 8));
    if (v24 >= 0x10000)
    {
      v25 = 0;
    }

    v26 = *(v21 + v6) + 1;
    v27 = v25 + v26;
    if (v24 >= 0x10000)
    {
      LOWORD(v24) = 0;
    }

    v17 = v24 + v26;
    if (v27 >= 0x10000)
    {
      v17 = 0;
    }

    *a2 = v17;
    v19 = (*(v21 + v6) | (v23 << 8)) - v7;
  }

  if (v17 > 0xFu)
  {
LABEL_34:
    LOBYTE(v17) = v19 & 0xF;
  }

LABEL_35:
  v30 = v17;
  *(a1 + 68) = v17;
  v31 = *(a1 + 666);
  if (v31 == 255)
  {
    v32 = 0;
    v36 = 0;
    if (v17)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v32 = 0;
  v33 = *(a1 + 667);
  if (v33 != 255 && v19)
  {
    do
    {
      *(a1 + 666) = v31 + 1;
      *(a1 + 667) = v33 + 1;
      v32 = sub_297ED8258(a1);
      v31 = *(a1 + 666);
      if (v31 == 255)
      {
        break;
      }

      v34 = v19;
      v19 -= 16;
      v33 = *(a1 + 667);
    }

    while (v33 != 255 && v34 >= 0x11);
    v30 = *(a1 + 68);
  }

  v36 = v31 + 1;
  if (!v30)
  {
LABEL_45:
    *(a1 + 666) = v36;
    ++*(a1 + 667);
    v32 = sub_297ED8258(a1);
  }

LABEL_46:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_GetNxtTLV");
  return v32;
}

uint64_t sub_297EDCFF4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_WrTermTLV");
  *a1 = 12;
  *(a1 + 266) = *(a1 + 666);
  *(a1 + 267) = -2;
  *(a1 + 268) = 0;
  *(a1 + 275) = 0;
  *(a1 + 74) = 0;
  v2 = sub_297EDA674(a1);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_WrTermTLV");
  return v2;
}

uint64_t sub_297EDD08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 8, 5u, "phFriNfc_MifareStdMap_CB_ConnectDisconnect");
  if (a2)
  {
    (*(a2 + 48))(*(a2 + 2712), a2, a5);
  }

  return sub_297E4DFAC(0, &v8, 8, 5u, "phFriNfc_MifareStdMap_CB_ConnectDisconnect");
}

uint64_t sub_297EDD10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_MifareStdMap_ConvertToReadOnly");
  sub_297E57170(v10, &v9);
  v5 = 1;
  if (a2)
  {
    v6 = v9;
    if (v9)
    {
      *(v9 + 32) = a2;
      *(v6 + 40) = a3;
      *(v6 + 547) = 6;
      *(v6 + 540) = 6;
      *(v6 + 753) = 4;
      *(v6 + 66) = 0;
      *(v6 + 676) = 1;
      *(v6 + 737) = 0;
      *(v6 + 664) = 17039360;
      *(v6 + 756) = 0;
      *(v6 + 86) = 0;
      *(v6 + 68) = 0;
      *(v6 + 71) = 0;
      *(v6 + 740) = 16 * *(v6 + 668);
      *(v6 + 746) = 0;
      *(v6 + 757) = 0;
      *(v6 + 754) = 0;
      *(v6 + 759) = 1;
      if (!sub_297ED8258(v6))
      {
        v7 = v9;
        *(v9 + 672) = 0;
        v5 = sub_297ED7A60(v7);
      }
    }
  }

  sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_MifareStdMap_ConvertToReadOnly");
  return v5;
}

uint64_t sub_297EDD210(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desfire_Reset");
  phOsalNfc_SetMemory();
  phOsalNfc_SetMemory();
  *(a1 + 204) = 0;

  return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desfire_Reset");
}

uint64_t sub_297EDD2A0(uint64_t a1, int a2)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HWrapISONativeCmds");
  **(a1 + 96) = -112;
  *(*(a1 + 96) + 2) = 0;
  *(*(a1 + 96) + 3) = 0;
  if (a2 > 4)
  {
    if ((a2 - 7) < 2)
    {
      v6 = -81;
    }

    else
    {
      if (a2 == 5)
      {
        *(*(a1 + 96) + 1) = 61;
        *(*(a1 + 96) + 4) = 9;
        if (*(a1 + 24) - 1 >= 3)
        {
          v9 = 4;
        }

        else
        {
          v9 = 2;
        }

        *(*(a1 + 96) + 5) = v9;
        *(*(a1 + 96) + 6) = 0;
        *(*(a1 + 96) + 7) = 0;
        *(*(a1 + 96) + 8) = 0;
        *(*(a1 + 96) + 9) = 2;
        *(*(a1 + 96) + 11) = 0;
        phOsalNfc_MemCopy();
        *(*(a1 + 96) + 14) = 0;
        v5 = 15;
        goto LABEL_57;
      }

      if (a2 != 6)
      {
        return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_HWrapISONativeCmds");
      }

      v6 = 96;
    }

    *(*(a1 + 96) + 1) = v6;
    *(*(a1 + 96) + 4) = 0;
    v5 = 5;
    goto LABEL_57;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *(*(a1 + 96) + 1) = -51;
      v10 = *(a1 + 96);
      if (*(a1 + 24) - 1 > 2)
      {
        *(v10 + 4) = 7;
        v11 = 6;
        v12 = 3;
        v13 = 5;
      }

      else
      {
        *(v10 + 4) = 9;
        *(*(a1 + 96) + 5) = 1;
        *(*(a1 + 96) + 6) = 3;
        v11 = 8;
        v12 = -31;
        v13 = 7;
      }

      *(*(a1 + 96) + v13) = v12;
      *(*(a1 + 96) + v11) = 0;
      *(*(a1 + 96) + v11 + 1) = -18;
      *(*(a1 + 96) + v11 + 2) = -18;
      *(*(a1 + 96) + v11 + 3) = 15;
      *(*(a1 + 96) + v11 + 4) = 0;
      *(*(a1 + 96) + v11 + 5) = 0;
    }

    else
    {
      if (a2 != 3)
      {
        *(*(a1 + 96) + 1) = 61;
        *(*(a1 + 96) + 4) = 22;
        if (*(a1 + 24) - 1 < 3)
        {
          v4 = 1;
        }

        else
        {
          v4 = 3;
        }

        *(*(a1 + 96) + 5) = v4;
        *(*(a1 + 96) + 6) = 0;
        *(*(a1 + 96) + 7) = 0;
        *(*(a1 + 96) + 8) = 0;
        *(*(a1 + 96) + 9) = 15;
        *(*(a1 + 96) + 10) = 0;
        *(*(a1 + 96) + 11) = 0;
        phOsalNfc_MemCopy();
        *(*(a1 + 96) + 27) = 0;
        v5 = 28;
        goto LABEL_57;
      }

      *(*(a1 + 96) + 1) = -51;
      v19 = *(a1 + 96);
      if (*(a1 + 24) - 1 > 2)
      {
        *(v19 + 4) = 7;
        v11 = 6;
        v20 = 4;
        v21 = 5;
      }

      else
      {
        *(v19 + 4) = 9;
        *(*(a1 + 96) + 5) = 2;
        *(*(a1 + 96) + 6) = 4;
        v11 = 8;
        v20 = -31;
        v21 = 7;
      }

      *(*(a1 + 96) + v21) = v20;
      *(*(a1 + 96) + v11) = 0;
      *(*(a1 + 96) + v11 + 1) = -18;
      *(*(a1 + 96) + v11 + 2) = -18;
      *(*(a1 + 96) + v11 + 3) = *(a1 + 208);
      *(*(a1 + 96) + v11 + 5) = *(a1 + 210);
    }

    *(*(a1 + 96) + v11 + 6) = 0;
    if (*(a1 + 24) - 1 > 2)
    {
      v5 = 13;
    }

    else
    {
      v5 = v11 + 7;
    }

LABEL_57:
    *(a1 + 104) = v5;
    return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_HWrapISONativeCmds");
  }

  if (!a2)
  {
    *(*(a1 + 96) + 1) = -54;
    if (*(a1 + 24) - 1 >= 3)
    {
      v14 = 5;
    }

    else
    {
      v14 = 14;
    }

    if (*(a1 + 24) - 1 < 3)
    {
      v15 = 1;
    }

    else
    {
      v15 = 16;
    }

    if (*(a1 + 24) - 1 >= 3)
    {
      v16 = -18;
    }

    else
    {
      v16 = 0;
    }

    *(*(a1 + 96) + 4) = v14;
    *(*(a1 + 96) + 5) = v15;
    *(*(a1 + 96) + 6) = v16;
    *(*(a1 + 96) + 7) = v16;
    *(*(a1 + 96) + 8) = 15;
    if (*(a1 + 24) - 1 >= 3)
    {
      v17 = 1;
    }

    else
    {
      v17 = 33;
    }

    *(*(a1 + 96) + 9) = v17;
    if (*(a1 + 24) - 1 > 2)
    {
      v18 = 10;
    }

    else
    {
      *(*(a1 + 96) + 10) = 5;
      *(*(a1 + 96) + 11) = -31;
      phOsalNfc_MemCopy();
      v18 = 19;
    }

    *(*(a1 + 96) + v18) = 0;
    if (*(a1 + 24) - 1 < 3)
    {
      v5 = v18 + 1;
    }

    else
    {
      v5 = 11;
    }

    goto LABEL_57;
  }

  if (a2 == 1)
  {
    *(*(a1 + 96) + 1) = 90;
    *(*(a1 + 96) + 4) = 3;
    if (*(a1 + 24) - 1 < 3)
    {
      v7 = 1;
    }

    else
    {
      v7 = 16;
    }

    if (*(a1 + 24) - 1 >= 3)
    {
      v8 = -18;
    }

    else
    {
      v8 = 0;
    }

    *(*(a1 + 96) + 5) = v7;
    *(*(a1 + 96) + 6) = v8;
    *(*(a1 + 96) + 7) = v8;
    *(*(a1 + 96) + 8) = 0;
    v5 = 9;
    goto LABEL_57;
  }

  return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_HWrapISONativeCmds");
}

uint64_t sub_297EDD82C(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HGetHWVersion");
  *(a1 + 25) = 11;
  sub_297EDD2A0(a1, 6);
  v2 = sub_297EDD8B0(a1);
  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_HGetHWVersion");
  return v2;
}

uint64_t sub_297EDD8B0(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HSendTransCmd");
  *(a1 + 80) = 0;
  *(a1 + 8) &= 0xFCu;
  *(a1 + 64) = sub_297EA1230;
  *(a1 + 72) = a1;
  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  *v3 = 252;
  v4 = sub_297ECA38C(*a1, (a1 + 64), *(a1 + 16), *(a1 + 80), a1 + 8, v2, *(a1 + 104), v2, v3);
  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_HSendTransCmd");
  return v4;
}

uint64_t sub_297EDD974(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HGetUIDDetails");
  if (*(*(a1 + 96) + **(a1 + 88) - 1) == 175)
  {
    *(a1 + 25) = 9;
    sub_297EDD2A0(a1, 8);
    v2 = sub_297EDD8B0(a1);
  }

  else
  {
    v2 = 13;
  }

  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_HGetUIDDetails");
  return v2;
}

uint64_t sub_297EDDA10(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desfire_Format");
  *(a1 + 24) = 0;
  v2 = sub_297EDD82C(a1);
  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desfire_Format");
  return v2;
}

uint64_t sub_297EDDA84(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HReadOnlyReadCCFile");
  v2 = *(a1 + 96);
  v3 = &v2[**(a1 + 88)];
  if (*(v3 - 2) == 145 && !*(v3 - 1))
  {
    *(a1 + 25) = 103;
    *v2 = -112;
    *(*(a1 + 96) + 1) = -67;
    *(*(a1 + 96) + 2) = 0;
    *(*(a1 + 96) + 3) = 0;
    *(*(a1 + 96) + 4) = 7;
    if (*(a1 + 24) - 1 < 3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    *(*(a1 + 96) + 5) = v6;
    *(*(a1 + 96) + 6) = 0;
    *(*(a1 + 96) + 7) = 0;
    *(*(a1 + 96) + 8) = 0;
    *(*(a1 + 96) + 9) = 15;
    *(*(a1 + 96) + 10) = 0;
    *(*(a1 + 96) + 11) = 0;
    *(*(a1 + 96) + 12) = 0;
    *(a1 + 104) = 13;
    v4 = sub_297EDD8B0(a1);
  }

  else
  {
    v4 = 35;
  }

  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_HReadOnlyReadCCFile");
  return v4;
}

uint64_t sub_297EDDBAC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_Process");
  if (a2)
  {
    goto LABEL_70;
  }

  v4 = *(a1 + 25);
  v5 = 245;
  if (v4 <= 9)
  {
    if (*(a1 + 25) <= 2u)
    {
      if (*(a1 + 25))
      {
        if (v4 == 1)
        {
          sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HCreatCCFile");
          v21 = *(a1 + 96);
          if (*v21 == 145 && !v21[1])
          {
            *(a1 + 25) = 2;
            sub_297EDD2A0(a1, 2);
            a2 = sub_297EDD8B0(a1);
          }

          else
          {
            a2 = 35;
          }

          v7 = "phFriNfc_Desf_HCreatCCFile";
        }

        else
        {
          sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HCreatNDEFFile");
          v9 = *(a1 + 96);
          if (*v9 == 145 && !v9[1])
          {
            *(a1 + 25) = 3;
            sub_297EDD2A0(a1, 3);
            a2 = sub_297EDD8B0(a1);
          }

          else
          {
            a2 = 35;
          }

          v7 = "phFriNfc_Desf_HCreatNDEFFile";
        }
      }

      else
      {
        sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HSelectApp");
        v17 = *(a1 + 96);
        if (*v17 == 145 && !v17[1])
        {
          *(a1 + 25) = 1;
          sub_297EDD2A0(a1, 1);
          a2 = sub_297EDD8B0(a1);
        }

        else
        {
          a2 = 35;
        }

        v7 = "phFriNfc_Desf_HSelectApp";
      }

      goto LABEL_68;
    }

    if (*(a1 + 25) <= 4u)
    {
      if (v4 == 3)
      {
        sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HWrCCBytes");
        v12 = *(a1 + 96);
        if (*v12 == 145 && !v12[1])
        {
          *(a1 + 25) = 4;
          sub_297EDD2A0(a1, 4);
          a2 = sub_297EDD8B0(a1);
        }

        else
        {
          a2 = 35;
        }

        v7 = "phFriNfc_Desf_HWrCCBytes";
      }

      else
      {
        sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HWrNDEFData");
        v6 = *(a1 + 96);
        if (*v6 == 145 && !v6[1])
        {
          *(a1 + 25) = 5;
          sub_297EDD2A0(a1, 5);
          a2 = sub_297EDD8B0(a1);
        }

        else
        {
          a2 = 35;
        }

        v7 = "phFriNfc_Desf_HWrNDEFData";
      }

      goto LABEL_68;
    }

    if (v4 != 5)
    {
      if (v4 == 9)
      {
        sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HCreateApp");
        v10 = *(a1 + 96);
        if (*(v10 + 14) == 145 && !*(v10 + 15))
        {
          *(a1 + 25) = 0;
          sub_297EDD2A0(a1, 0);
          a2 = sub_297EDD8B0(a1);
        }

        else
        {
          a2 = 35;
        }

        v7 = "phFriNfc_Desf_HCreateApp";
        goto LABEL_68;
      }

      goto LABEL_71;
    }

    v15 = *(a1 + 96);
    if (*v15 == 145 && !v15[1])
    {
      v5 = 0;
      *(a1 + 26) = 0;
      if (*(a1 + 24) - 1 > 2)
      {
        goto LABEL_71;
      }

      goto LABEL_88;
    }

LABEL_70:
    v5 = a2;
    if (a2 == 13)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (*(a1 + 25) <= 0x63u)
  {
    if (v4 != 10)
    {
      if (v4 == 11)
      {
        sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HGetSWVersion");
        if (*(*(a1 + 96) + **(a1 + 88) - 1) == 175)
        {
          *(a1 + 25) = 10;
          sub_297EDD2A0(a1, 7);
          a2 = sub_297EDD8B0(a1);
        }

        else
        {
          a2 = 35;
        }

        v7 = "phFriNfc_Desf_HGetSWVersion";
LABEL_68:
        v14 = a1;
        goto LABEL_69;
      }

      if (v4 == 15)
      {
        goto LABEL_70;
      }

LABEL_71:
      sub_297EA0EA0(a1, v5);
      goto LABEL_72;
    }

    sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HUpdateVersionDetails");
    v18 = *(a1 + 96);
    if (v18[**(a1 + 88) - 1] != 175)
    {
      sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_HUpdateVersionDetails");
      goto LABEL_99;
    }

    v19 = v18[3];
    *(a1 + 212) = v19;
    v20 = v18[4];
    *(a1 + 214) = v20;
    if (v19 || v20 != 6)
    {
      if (v19 != 3 && v19 != 2)
      {
        if (v19 == 1)
        {
          a2 = 0;
          v23 = 1;
          *(a1 + 24) = 1;
        }

        else
        {
          v23 = 0;
          a2 = 29;
        }

LABEL_94:
        if (*(a1 + 24) - 1 <= 2)
        {
          v25 = v18[5] - 16;
          if (v25 >= 0xF || ((0x5541u >> v25) & 1) == 0)
          {
            sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_HUpdateVersionDetails");
            v5 = 29;
            goto LABEL_71;
          }

          *(a1 + 208) = dword_297F13748[v25];
        }

        sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_HUpdateVersionDetails");
        if (!v23)
        {
          goto LABEL_70;
        }

LABEL_99:
        v8 = sub_297EDD974(a1);
        goto LABEL_100;
      }

      a2 = 0;
      *(a1 + 24) = v19;
    }

    else
    {
      a2 = 0;
      *(a1 + 208) = 3806;
    }

    v23 = 1;
    goto LABEL_94;
  }

  if (*(a1 + 25) <= 0x66u)
  {
    if (v4 == 100)
    {
      v13 = *(a1 + 96) + **(a1 + 88);
      if (*(v13 - 2) != 145 || *(v13 - 1))
      {
        sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HReadOnlySelectApp");
        *(a1 + 24) = 25856;
        sub_297EDD2A0(a1, 1);
        a2 = sub_297EDD8B0(a1);
        v14 = a1;
        v7 = "phFriNfc_Desf_HReadOnlySelectApp";
LABEL_69:
        sub_297E4DFAC(3, v14, 8, 5u, v7);
        goto LABEL_70;
      }
    }

    else if (v4 != 101)
    {
      goto LABEL_71;
    }

    v8 = sub_297EDDA84(a1);
    goto LABEL_100;
  }

  if (v4 == 103)
  {
    sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_Desf_HReadOnlyWriteCCFile");
    v16 = *(a1 + 96) + **(a1 + 88);
    if (*(v16 - 2) == 145 && !*(v16 - 1))
    {
      *(a1 + 25) = 104;
      phOsalNfc_MemCopy();
      **(a1 + 96) = -112;
      *(*(a1 + 96) + 1) = 61;
      *(*(a1 + 96) + 2) = 0;
      *(*(a1 + 96) + 3) = 0;
      *(*(a1 + 96) + 4) = 22;
      if (*(a1 + 24) - 1 < 3)
      {
        v24 = 1;
      }

      else
      {
        v24 = 3;
      }

      *(*(a1 + 96) + 5) = v24;
      *(*(a1 + 96) + 6) = 0;
      *(*(a1 + 96) + 7) = 0;
      *(*(a1 + 96) + 8) = 0;
      *(*(a1 + 96) + 9) = 15;
      *(*(a1 + 96) + 11) = 0;
      phOsalNfc_MemCopy();
      *(*(a1 + 96) + 27) = 0;
      *(a1 + 104) = 28;
      a2 = sub_297EDD8B0(a1);
    }

    else
    {
      a2 = 35;
    }

    v7 = "phFriNfc_Desf_HReadOnlyWriteCCFile";
    goto LABEL_68;
  }

  if (v4 != 104)
  {
    goto LABEL_71;
  }

  v11 = *(a1 + 96) + **(a1 + 88);
  if (*(v11 - 2) != 145 || *(v11 - 1))
  {
    v5 = 35;
    goto LABEL_71;
  }

  if (*(a1 + 24) - 1 > 2)
  {
    goto LABEL_70;
  }

LABEL_88:
  v8 = sub_297ECA698(*a1, (a1 + 64), *(a1 + 16));
  if (v8 != 13)
  {
LABEL_100:
    a2 = v8;
    goto LABEL_70;
  }

  *(a1 + 25) = 15;
LABEL_72:

  return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_Desf_Process");
}

uint64_t sub_297EDE38C(uint64_t a1)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendRidCmd");
  v2 = 1;
  if (a1)
  {
    v3 = *(a1 + 856);
    phOsalNfc_MemCopy();
    phOsalNfc_SetMemory();
    LODWORD(v5) = 0;
    *&v6 = a1 + 1534;
    DWORD2(v6) = 7;
    *&v7 = a1 + 2064;
    DWORD2(v7) = 530;
    WORD3(v5) = 500;
    LOBYTE(v8) = 1;
    v2 = sub_297F06F3C(*(a1 + 3088), *(v3 + 8), &v5, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendRidCmd");
  return v2;
}

uint64_t sub_297EDE4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ProcessRidResp");
  if (a1 && !a2)
  {
    if (a3 && *a3 && *(a3 + 8) == 6)
    {
      v6 = *(a1 + 856);
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "RID response received");
      a2 = sub_297E9C010(*(a1 + 3088), *(v6 + 8 * *(a1 + 1529) + 8), *a3);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Invalid parameters (phLibNfc_ProcessRidResp)\n");
      a2 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ProcessRidResp");
  return a2;
}

uint64_t sub_297EDE59C(uint64_t a1)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendRallCmd");
  if (a1)
  {
    if (*(a1 + 2933) == 1)
    {
      v2 = 0;
    }

    else
    {
      v3 = *(a1 + 856);
      phOsalNfc_SetMemory();
      *(a1 + 1534) = 0;
      *(a1 + 1536) = 0;
      phOsalNfc_MemCopy();
      LODWORD(v5) = 0;
      *&v6 = a1 + 1534;
      DWORD2(v6) = 7;
      *&v7 = a1 + 2064;
      DWORD2(v7) = 530;
      WORD3(v5) = 500;
      LOBYTE(v8) = 1;
      v2 = sub_297F06F3C(*(a1 + 3088), *(v3 + 8), &v5, sub_297E5BA84, a1);
    }
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendRallCmd");
  return v2;
}

uint64_t sub_297EDE6CC(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ProcessRallResp");
  v6 = 255;
  if (a1 && !a2)
  {
    if (a3 && *a3 && *(a3 + 8) == 122)
    {
      v7 = *(a1 + 856);
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "RALL response received");
      v6 = sub_297E9C010(*(a1 + 3088), *(v7 + 8 * *(a1 + 1529) + 8), *a3);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Invalid parameters (phLibNfc_ProcessRallResp)\n");
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ProcessRallResp");
  return v6;
}

uint64_t sub_297EDE7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_P2PSendCmd");
  if (a1)
  {
    v5 = sub_297E7680C(*(a1 + 3088), sub_297E5BA84, a1, a3);
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_P2PSendCmd");
  return v5;
}

uint64_t sub_297EDE850(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_P2PSendResp");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "P2P send failed!");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "P2P send success");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_P2PSendResp");
  return a2;
}

uint64_t sub_297EDE8F8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_P2PSendComplete");
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_P2pRemoteDev_SendCb");
  if (a1)
  {
    if (a2)
    {
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_P2pRemoteDev_SendCb");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_P2PSendComplete");
  return a2;
}

uint64_t sub_297EDE9B4(uint64_t a1)
{
  *(a1 + 533) = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IsFirstBuffer");
  v2 = phOsalNfc_Timer_Create();
  if (v2)
  {
    v3 = v2 == 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 255;
  }

  else
  {
    v5 = v2;
    v6 = phOsalNfc_Timer_Start();
    if (!v6)
    {
      sub_297E687D8(1, a1 + 9792, v5, 4, 4u, "phLibNfc_IsFirstBuffer");
      *(a1 + 496) = v5;
      v4 = 13;
      goto LABEL_12;
    }

    v4 = v6;
    phOsalNfc_Timer_Delete();
  }

  if (*(a1 + 536))
  {
    phOsalNfc_FreeMemory();
    *(a1 + 536) = 0;
  }

  *(a1 + 544) = 0;
LABEL_12:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IsFirstBuffer");
  return v4;
}

uint64_t sub_297EDEACC(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  sub_297E687D8(2, a2, a1, 4, 4u, "phLibNfc_TempReceiveCb");
  sub_297E4E1B4(2, a2, 4, 5u, "phLibNfc_TempReceiveCb");
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != a2);
    if (v6 == a2)
    {
      v7 = *(a2 + 496);
      if (v7 && v7 != 0xFFFFFFFFFFFFLL && v7 == a1)
      {
        phOsalNfc_Timer_Stop();
        phOsalNfc_Timer_Delete();
        *(a2 + 496) = 0;
        v9 = *(a2 + 536);
        LODWORD(v10) = *(a2 + 544);
        sub_297E4F450(*(a2 + 9784), 118, 0, &v9, 0);
        if (*(a2 + 536))
        {
          phOsalNfc_FreeMemory();
          *(a2 + 536) = 0;
          *(a2 + 544) = 0;
        }
      }

      else
      {
        sub_297E4F450(*(a2 + 9784), 119, 255, 0, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a2, 4, 5u, "phLibNfc_TempReceiveCb");
}

uint64_t sub_297EDEC34(uint64_t a1, int a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_P2pRemoteDev_ReceiveCb");
  if (a1 && a3)
  {
    if (a2)
    {
      LODWORD(v11) = 0;
      if (a2 == 10 && !*(a1 + 2933))
      {
        v6 = sub_297F0A90C(*(a1 + 3088));
        if (v6 <= 1)
        {
          LOBYTE(a2) = 10;
        }

        else
        {
          LOBYTE(a2) = v6;
        }
      }
    }

    else
    {
      v10 = *(a3 + 8);
      LODWORD(v11) = *(a3 + 16);
    }

    v8 = a2;
    v7 = 118;
    goto LABEL_13;
  }

  if (a1)
  {
    v7 = 119;
    v8 = 255;
LABEL_13:
    sub_297E4F450(*(a1 + 9784), v7, v8, &v10, 0);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_P2pRemoteDev_ReceiveCb");
}

uint64_t sub_297EDED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendWrt16Cmd");
  v5 = 1;
  if (a1 && a3 && *(a3 + 48) && *(a3 + 56) && *(a3 + 32) && *(a3 + 40))
  {
    phOsalNfc_SetMemory();
    *(a1 + 2664) = phOsalNfc_GetMemory_Typed();
    phOsalNfc_MemCopy();
    *(a1 + 1534) = -96;
    *(a1 + 1535) = *(a3 + 4);
    *&v8 = a1 + 1534;
    DWORD2(v8) = 2;
    LODWORD(v7) = 0;
    *&v9 = *(a3 + 48);
    DWORD2(v9) = *(a3 + 56);
    WORD3(v7) = *(a3 + 6);
    v5 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v7, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendWrt16Cmd");
  return v5;
}

uint64_t sub_297EDEE70(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendWrt16CmdResp");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_SendWrt16CmdResp:SendWrt16 Command payload Header failed!");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_SendWrt16CmdResp:SendWrt16 Command payload Header success");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendWrt16CmdResp");
  return a2;
}

uint64_t sub_297EDEF18(uint64_t *a1)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendWrt16CmdPayload");
  if (a1 && (v2 = a1[333]) != 0 && *(v2 + 32) && *(v2 + 40) && *(v2 + 48) && *(v2 + 56))
  {
    phOsalNfc_SetMemory();
    *&v6 = *(v2 + 32);
    DWORD2(v6) = *(v2 + 40);
    LODWORD(v5) = 0;
    *&v7 = *(v2 + 48);
    DWORD2(v7) = *(v2 + 56);
    WORD3(v5) = *(v2 + 6);
    v3 = sub_297F06F3C(a1[386], a1[188], &v5, sub_297E5BA84, a1);
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendWrt16CmdPayload");
  return v3;
}

uint64_t sub_297EDF028(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Wrt16CmdPayloadResp");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_Wrt16CmdPayloadResp:SendWrt16 Command payload failed!");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_Wrt16CmdPayloadResp:SendWrt16 Command payload success");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Wrt16CmdPayloadResp");
  return a2;
}

uint64_t sub_297EDF0D0(void *a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MFCWrite16Complete");
  if (a1)
  {
    phOsalNfc_SetMemory();
    v4 = a1[333];
    if (v4 && *(v4 + 32) && *(v4 + 56))
    {
      v8 = *(v4 + 32);
      LODWORD(v9) = 0;
      v5 = a1[344];
      if (v5)
      {
        if (*(v5 + 48))
        {
          phOsalNfc_FreeMemory();
          *(a1[344] + 48) = 0;
        }

        phOsalNfc_FreeMemory();
        a1[344] = 0;
      }

      v6 = a1[343];
      if (v6)
      {
        if (*(v6 + 32))
        {
          phOsalNfc_FreeMemory();
          *(a1[343] + 32) = 0;
        }

        phOsalNfc_FreeMemory();
        a1[343] = 0;
      }
    }
  }

  else
  {
    phOsalNfc_SetMemory();
  }

  sub_297EA18A4(a1, a2, &v8);
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MFCWrite16Complete");
  return a2;
}

uint64_t sub_297EDF208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MFCIncDecTrRestoreCmd");
  v5 = 1;
  if (a1 && a3 && *(a3 + 48) && *(a3 + 56) && (*(a3 + 32) || *(a3 + 40) || *a3 == 194 || *a3 == 176))
  {
    *(a1 + 2664) = 0;
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(a1 + 2664) = Memory_Typed;
    if (Memory_Typed)
    {
      phOsalNfc_SetMemory();
      phOsalNfc_MemCopy();
      if (*a3 == 3)
      {
        *(a1 + 1534) = -62;
        v7 = -1;
      }

      else
      {
        *(a1 + 1534) = *a3;
        v7 = *(a3 + 4);
      }

      *(a1 + 1535) = v7;
      *&v10 = a1 + 1534;
      DWORD2(v10) = 2;
      LODWORD(v9) = 0;
      *&v11 = *(a3 + 48);
      DWORD2(v11) = *(a3 + 56);
      WORD3(v9) = *(a3 + 6);
      v5 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v9, sub_297E5BA84, a1);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to allocate memory, Insufficient Resources");
      v5 = 12;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MFCIncDecTrRestoreCmd");
  return v5;
}

uint64_t sub_297EDF3C0(uint64_t a1, int a2, _BYTE **a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MFCIncDecRestoreResp");
  v6 = 1;
  if (a1 && a3)
  {
    if (a2 || **a3 != 10)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Inc/Dec Command Header failed!");
      v6 = 255;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Inc/Dec Command Header success");
      *(a1 + 2960) = off_2A1A92E00;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v7 = off_2A1A92E00[0];
      if (off_2A1A92E00[0])
      {
        v7 = 0;
        v8 = &qword_2A1A92E10;
        do
        {
          ++v7;
          v9 = *v8;
          v8 += 2;
        }

        while (v9);
      }

      v6 = 0;
      *(a1 + 2953) = v7;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MFCIncDecRestoreResp");
  return v6;
}

uint64_t sub_297EDF4D0(void *a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MFCIncDecTrRestoreComplete");
  if (a1 && (v4 = a1[333]) != 0 && *(v4 + 32) && *(v4 + 56))
  {
    phOsalNfc_SetMemory();
    v8 = *(a1[333] + 32);
    LODWORD(v9) = 0;
    phOsalNfc_FreeMemory();
    a1[333] = 0;
    v5 = a1[344];
    if (v5)
    {
      if (*(v5 + 48))
      {
        phOsalNfc_FreeMemory();
        *(a1[344] + 48) = 0;
      }

      phOsalNfc_FreeMemory();
      a1[344] = 0;
    }

    v6 = a1[343];
    if (v6)
    {
      if (*(v6 + 32))
      {
        phOsalNfc_FreeMemory();
        *(a1[343] + 32) = 0;
      }

      phOsalNfc_FreeMemory();
      a1[343] = 0;
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297EA18A4(a1, a2, &v8);
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MFCIncDecTrRestoreComplete");
  return a2;
}

uint64_t sub_297EDF600(uint64_t *a1)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v7 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MFCIncDecRestorePayload");
  if (!a1)
  {
    goto LABEL_11;
  }

  v2 = a1[333];
  if (!v2 || !*(v2 + 48) || !*(v2 + 56))
  {
    goto LABEL_11;
  }

  phOsalNfc_SetMemory();
  if (*v2 != 194)
  {
    if (*(v2 + 32))
    {
      v4 = *(v2 + 40);
      if (v4)
      {
        *&v9 = *(v2 + 32);
        v3 = v4;
        goto LABEL_10;
      }
    }

LABEL_11:
    v5 = 1;
    goto LABEL_12;
  }

  *&v9 = &v7;
  v3 = 4;
LABEL_10:
  DWORD2(v9) = v3;
  LODWORD(v8) = 0;
  *&v10 = *(v2 + 48);
  DWORD2(v10) = *(v2 + 56);
  WORD3(v8) = *(v2 + 6);
  v5 = sub_297F06F3C(a1[386], a1[188], &v8, sub_297E5BA84, a1);
LABEL_12:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MFCIncDecRestorePayload");
  return v5;
}

uint64_t sub_297EDF72C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MFCIncDecRestore_PayloadResp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_MFCIncDecRestore_PayloadResp:Inc/Dec Payload Command payload Header failed!");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_MFCIncDecRestore_PayloadResp:Inc/Dec Payload Command payload Header success");
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MFCIncDecRestore_PayloadResp");
  return a2;
}

uint64_t sub_297EDF7DC(void *a1, unsigned __int8 a2)
{
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MFCIncDecResPayloadComplete");
  if (!a1)
  {
    phOsalNfc_SetMemory();
    v5 = 1;
    goto LABEL_23;
  }

  phOsalNfc_SetMemory();
  v4 = a1[333];
  if (a2 != 178)
  {
    if (*v4 == 3 && a2 == 44)
    {
      v5 = 0;
    }

    else
    {
      v5 = 255;
    }

LABEL_12:
    if (*(v4 + 32) && *(v4 + 56))
    {
      v10 = *(v4 + 32);
      LODWORD(v11) = 0;
      phOsalNfc_FreeMemory();
      a1[333] = 0;
    }

    goto LABEL_15;
  }

  v5 = 0;
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_15:
  v7 = a1[344];
  if (v7)
  {
    if (*(v7 + 48))
    {
      phOsalNfc_FreeMemory();
      *(a1[344] + 48) = 0;
    }

    phOsalNfc_FreeMemory();
    a1[344] = 0;
  }

  v8 = a1[343];
  if (v8)
  {
    if (*(v8 + 32))
    {
      phOsalNfc_FreeMemory();
      *(a1[343] + 32) = 0;
    }

    phOsalNfc_FreeMemory();
    a1[343] = 0;
  }

LABEL_23:
  sub_297EA18A4(a1, v5, &v10);
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MFCIncDecResPayloadComplete");
  return v5;
}

uint64_t sub_297EDF950(uint64_t a1, int a2, _BYTE **a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MFCTransferResp");
  v6 = 1;
  if (a1 && a3)
  {
    if (a2 || **a3 != 10)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Transfer/Restore Command Header failed!");
      v6 = 255;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Transfer/Restore Command Header success");
      v6 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MFCTransferResp");
  return v6;
}

uint64_t sub_297EDFA28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendAuthCmd");
  v5 = 1;
  if (a1)
  {
    if (a3)
    {
      v6 = a1[188];
      if (v6)
      {
        if (sub_297E55558(a1[386], v6))
        {
          a1[188] = 0;
          a1[189] = 0;
        }

        phOsalNfc_SetMemory();
        a1[333] = phOsalNfc_GetMemory_Typed();
        phOsalNfc_MemCopy();
        v7 = a1[188];
        if (v7 && a1[333])
        {
          v8 = sub_297ECE3AC(a1, *(v7 + 4), a3, v10);
          if (v8)
          {
            v5 = v8;
          }

          else
          {
            v5 = sub_297F06F3C(a1[386], a1[188], v10, sub_297E5BA84, a1);
            if (v5 == 13)
            {
              *(a1[333] + 4) = BYTE4(v10[0]);
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendAuthCmd");
  return v5;
}

uint64_t sub_297EDFB84(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendAuthCmdResp");
  if (a1)
  {
    v4 = *(a1 + 2664);
    if (v4)
    {
      if (((*v4 - 97) & 0xFFFFFFDF) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = 0x80;
      }
    }

    else
    {
      v5 = 0;
    }

    if (!a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Authentication command success");
      v6 = *(a1 + 2664);
      if (v6)
      {
        v7 = *v6;
        if ((*v6 & 0xFFFFFFFE) == 0x80)
        {
          a2 = 0;
          *(a1 + 2616) = v7;
          *(a1 + 2620) = *(v6 + 4);
          *(a1 + 2621) = *(v6 + 5) | v5;
          goto LABEL_15;
        }

        *(a1 + 2616) = v7;
        *(a1 + 2620) = *(v6 + 4);
        *(a1 + 2621) = v5 | 0x10;
        phOsalNfc_MemCopy();
      }

      a2 = 0;
      goto LABEL_15;
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Authentication command failed!");
    sub_297ECF890(a1);
  }

  else
  {
    a2 = 1;
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendAuthCmdResp");
  return a2;
}

uint64_t sub_297EDFCD0(uint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v7 = 0;
  v8 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MFCSendAuthCmdComplete");
  if (a1)
  {
    v2 = v2;
    phOsalNfc_SetMemory();
    v4 = *(a1 + 2664);
    if (v4)
    {
      if (*(v4 + 48))
      {
        v7 = *(v4 + 48);
        LODWORD(v8) = 0;
      }

      phOsalNfc_FreeMemory();
      *(a1 + 2664) = 0;
      v5 = *(a1 + 2744);
      if (v5)
      {
        if (*(v5 + 32))
        {
          phOsalNfc_FreeMemory();
          *(*(a1 + 2744) + 32) = 0;
        }

        phOsalNfc_FreeMemory();
        *(a1 + 2744) = 0;
      }
    }
  }

  else
  {
    phOsalNfc_SetMemory();
    v2 = 1;
  }

  sub_297EA18A4(a1, v2, &v7);
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MFCSendAuthCmdComplete");
  return v2;
}

uint64_t sub_297EDFDD8(uint64_t a1)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MfcChkPresAuth");
  if (a1 && *(a1 + 1504))
  {
    *(a1 + 1534) = *(a1 + 2616);
    *(a1 + 1535) = *(a1 + 2620);
    phOsalNfc_MemCopy();
    phOsalNfc_SetMemory();
    LODWORD(v4) = 4;
    BYTE4(v4) = *(a1 + 2620);
    *&v5 = a1 + 1534;
    DWORD2(v5) = 9;
    *&v6 = a1 + 2064;
    DWORD2(v6) = 530;
    v2 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v4, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MfcChkPresAuth");
  return v2;
}

uint64_t sub_297EDFEF4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MfcChkPresAuthProc");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Authentication command failed!");
      sub_297ECF890(a1);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Authentication command success");
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MfcChkPresAuthProc");
  return a2;
}

uint64_t sub_297EDFFAC(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MfcChkPresAuthComplete");
  if (a1)
  {
    if (*(a1 + 2664))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 2664) = 0;
    }

    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Mifare classic - Auth failed");
      sub_297ECF890(a1);
      v4 = &qword_2A1A92AE0;
      if (*(a1 + 1531) == 1)
      {
        v4 = &qword_2A1A90CC8;
      }

      *(a1 + 2960) = v4;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v5 = *v4;
      if (*v4)
      {
        LOBYTE(v5) = 0;
        v6 = v4 + 2;
        do
        {
          LOBYTE(v5) = v5 + 1;
          v7 = *v6;
          v6 += 2;
        }

        while (v7);
      }

      *(a1 + 2953) = v5;
      a2 = sub_297E5588C(a1, 0, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Auth command of Mifare classic Success");
      v9 = 0;
      LODWORD(v10) = 0;
      sub_297ECF434(a1, &v9, 0);
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid LibNfc Context passed by lower layer");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MfcChkPresAuthComplete");
  return a2;
}

uint64_t sub_297EE0110(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MfcRawtoCmd");
  v8 = 255;
  if (!a1)
  {
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_24;
  }

  v9 = *(a3 + 32);
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = *(a3 + 40);
  if (!v10 || !*(a3 + 48) || !a2 || !*(a3 + 56))
  {
    goto LABEL_24;
  }

  if (v10 == 18)
  {
    if (*v9 != 160)
    {
      goto LABEL_24;
    }

    *(a1 + 2744) = 0;
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(a1 + 2744) = Memory_Typed;
    if (Memory_Typed)
    {
      *(Memory_Typed + 32) = 0;
      v17 = phOsalNfc_GetMemory_Typed();
      v18 = *(a1 + 2744);
      *(v18 + 32) = v17;
      if (v17)
      {
        *(v18 + 40) = 16;
        v19 = *(a3 + 48);
        *(v18 + 48) = v19;
        v20 = *(a3 + 56);
        *(v18 + 56) = v20;
        v8 = 255;
        if (v19 && v20)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      }
    }

LABEL_23:
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to allocate memory, Insufficient Resources");
    v8 = 255;
    goto LABEL_24;
  }

  if (v10 != 12 || (*v9 & 0xFE) != 0x60 || phOsalNfc_MemCompare())
  {
    goto LABEL_24;
  }

  *(a1 + 2744) = 0;
  v11 = phOsalNfc_GetMemory_Typed();
  *(a1 + 2744) = v11;
  if (!v11)
  {
    goto LABEL_23;
  }

  *(v11 + 32) = 0;
  v12 = phOsalNfc_GetMemory_Typed();
  v13 = *(a1 + 2744);
  *(v13 + 32) = v12;
  if (!v12)
  {
    goto LABEL_23;
  }

  *(v13 + 40) = 10;
  v14 = *(a3 + 48);
  *(v13 + 48) = v14;
  v15 = *(a3 + 56);
  *(v13 + 56) = v15;
  v8 = 255;
  if (v14 && v15)
  {
LABEL_22:
    phOsalNfc_SetMemory();
    phOsalNfc_SetMemory();
    **(a1 + 2744) = **(a3 + 32);
    *(*(a1 + 2744) + 4) = *(*(a3 + 32) + 1);
    phOsalNfc_MemCopy();
    v8 = 0;
    *a4 = *(a1 + 2744);
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MfcRawtoCmd");
  return v8;
}

uint64_t sub_297EE03F8(uint64_t a1, int *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkMFCAuthWrtCmd");
  v6 = 255;
  if (a2)
  {
    if (a3)
    {
      if (!sub_297EE0544(a1, a3))
      {
        v6 = 0;
        v7 = *a2;
        if (((*a2 - 128) > 0x20 || ((1 << (*a2 + 0x80)) & 0x100000003) == 0) && (v7 - 96) >= 2)
        {
          if (!v7)
          {
            v8 = *(a2 + 4);
            if (!v8)
            {
LABEL_23:
              v6 = 255;
              goto LABEL_24;
            }

            v9 = *v8;
            v10 = a2[10];
            if (v9 == 160)
            {
              if (v10 != 18)
              {
                goto LABEL_23;
              }
            }

            else if ((v9 & 0xFE) != 0x60 || v10 != 12)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          if ((v7 & 0xFFFFFFFE) == 0xC0 && *(a2 + 4) && a2[10] == 4)
          {
LABEL_22:
            v6 = 0;
            goto LABEL_24;
          }

          v6 = 0;
          if (v7 != 3 && v7 != 176 && v7 != 194)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ChkMFCAuthWrtCmd");
  return v6;
}

uint64_t sub_297EE0544(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkMfCTag");
  if (!a2 || *(a2 + 20) || *(a2 + 16) != 128 || ((v4 = 0, v5 = *(a2 + 96), v5 > 0x38) || ((1 << v5) & 0x100010003000302) == 0) && ((v6 = v5 - 136, v6 > 0x30) || ((1 << v6) & 0x1000000010001) == 0))
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ChkMfCTag");
  return v4;
}

uint64_t sub_297EE0618(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v5 = 1;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ReActivateMFCComplete");
  if (a1)
  {
    *(a1 + 1531) = a2 != 0;
    v6 = &v5;
    LODWORD(v7) = 1;
    sub_297EA18A4(a1, a2, &v6);
    *(a1 + 1532) = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid libnfc context received from lower layer!");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ReActivateMFCComplete");
  return a2;
}

uint64_t sub_297EE06E8(uint64_t a1, uint64_t a2)
{
  v6 = 1;
  v5[1] = 1;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ReActivateMFCComplete1");
  v5[0] = &v6;
  if (a1)
  {
    if (a2 != 121)
    {
      if (a2)
      {
        *(a1 + 1531) = 1;
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Reactivation of Mifare classic failed!");
        a2 = 44;
      }

      else
      {
        *(a1 + 1531) = 0;
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Reactivation of Mifare classic Success");
      }
    }

    sub_297ECF434(a1, v5, a2);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid LibNfc Context passed by lower layer");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ReActivateMFCComplete1");
  return a2;
}

uint64_t sub_297EE07F8(uint64_t a1, int a2)
{
  v9 = a2;
  sub_297E4E1B4(1, &v9, 5, 5u, "phLibNfc_SM_Init");
  if (v9 == 1)
  {
    if (!qword_2A18BE770)
    {
      qword_2A18BE770 = 0xC00000001;
      dword_2A18BE778 = 0;
      v2 = &qword_2A18BE784;
      v3 = 4;
      v4 = &dword_2A18BE7C0;
      do
      {
        *(v2 - 1) = 0;
        *v2 = 6;
        v2 += 2;
        --v3;
      }

      while (v3);
LABEL_10:
      v5 = 0;
      *v4 = 0;
      v4[1] = 6;
      v4[2] = 0;
      goto LABEL_11;
    }
  }

  else if (!qword_2A18BE7E0)
  {
    qword_2A18BE7E0 = 0xC00000001;
    dword_2A18BE7E8 = 0;
    v6 = &dword_2A18BE7F8;
    v7 = 4;
    v4 = &dword_2A18BE830;
    do
    {
      *(v6 - 1) = 0x600000000;
      *v6 = 0;
      v6 += 4;
      --v7;
    }

    while (v7);
    goto LABEL_10;
  }

  v5 = 1;
LABEL_11:
  sub_297E4DFAC(1, &v9, 5, 5u, "phLibNfc_SM_Init");
  return v5;
}

uint64_t sub_297EE0928(uint64_t a1, int a2)
{
  v13 = a1;
  sub_297E4E1B4(0, &v13, 5, 5u, "phLibNfc_SM_IsVirtual");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = &unk_2A18BDDC0 + 112 * v3;
    if (*v5 == v13)
    {
      break;
    }

    v6 = v4;
    v4 = 0;
    v7 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v7 = *(v5 + 2) == 1;
LABEL_6:
  v8 = a2 - 1;
  if ((a2 - 1) > 6)
  {
    v9 = 255;
  }

  else
  {
    v9 = 255;
    if ((0x53u >> v8))
    {
      v10 = qword_297F137B0[v8];
      if (v7)
      {
        v11 = &qword_2A18BE770;
      }

      else
      {
        v11 = &qword_2A18BE7E0;
      }

      if (LODWORD(v11[2 * v10 + 2]) == 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 255;
      }
    }
  }

  sub_297E4DFAC(0, &v13, 5, 5u, "phLibNfc_SM_IsVirtual");
  return v9;
}

uint64_t sub_297EE0A34(uint64_t a1, int a2)
{
  v11 = a1;
  sub_297E4E1B4(0, &v11, 5, 5u, "phLibNfc_SM_IsApdu");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = &unk_2A18BDDC0 + 112 * v3;
    if (*v6 == v11)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = dword_2A18BE800;
      goto LABEL_8;
    }
  }

  v8 = &unk_2A18BE790;
  if (*(v6 + 2) != 1)
  {
    v8 = &dword_2A18BE800;
  }

  v7 = *v8;
LABEL_8:
  sub_297E4DFAC(0, &v11, 5, 5u, "phLibNfc_SM_IsApdu");
  if (v7 == 3 && a2 == 1)
  {
    return 0;
  }

  else
  {
    return 255;
  }
}

uint64_t sub_297EE0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a1;
  sub_297E4E1B4(0, &v68, 5, 5u, "phLibNfc_SM_SEStateHandler");
  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    v12 = &unk_2A18BDDC0 + 112 * v9;
    if (*v12 == v68)
    {
      break;
    }

    v10 = 0;
    v13 = 0;
    v9 = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v13 = *(v12 + 2) == 1;
LABEL_6:
  v69 = v68;
  sub_297E4E1B4(0, &v69, 5, 5u, "phLibNfc_SM_RetrieveSEState");
  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = v15;
    v17 = &unk_2A18BDDC0 + 112 * v14;
    if (*v17 == v69)
    {
      break;
    }

    v15 = 0;
    v14 = 1;
    if ((v16 & 1) == 0)
    {
      v18 = 0;
      v19 = dword_2A18BE7E8;
      goto LABEL_13;
    }
  }

  v18 = *(v17 + 2) == 1;
  v20 = &dword_2A18BE778;
  if (*(v17 + 2) != 1)
  {
    v20 = &dword_2A18BE7E8;
  }

  v19 = *v20;
LABEL_13:
  if ((a2 & 0xFFFFFFF0) != 0xA0 && (a2 & 0xFFFFFFFE) != 0x8E && v19 == 1)
  {
    goto LABEL_16;
  }

  if (v18)
  {
    v23 = &qword_2A18BE770;
  }

  else
  {
    v23 = &qword_2A18BE7E0;
  }

  v24 = *(v23 + 6);
  if ((a2 - 130) >= 0x1C)
  {
    v67 = a5;
    v34 = v24 != 1;
  }

  else
  {
    if (v18)
    {
      v25 = &unk_2A18BE798;
    }

    else
    {
      v25 = &unk_2A18BE808;
    }

    v26 = *v25;
    v27 = &unk_2A18BE7A8;
    if (!v18)
    {
      v27 = &unk_2A18BE818;
    }

    v28 = *v27;
    v29 = &unk_2A18BE7B8;
    if (!v18)
    {
      v29 = &unk_2A18BE828;
    }

    v30 = *v29;
    if (v24 == 1 || v26 == 1 || v28 == 1 || v30 == 1)
    {
LABEL_16:
      v21 = 111;
LABEL_17:
      sub_297E4DFAC(0, &v69, 5, 5u, "phLibNfc_SM_RetrieveSEState");
      goto LABEL_18;
    }

    v67 = a5;
    v34 = 1;
  }

  v35 = 0;
  v36 = &unk_2A18BE7F0;
  v37 = &unk_2A18BE780;
  if ((a2 - 161) >= 2 && ((a2 - 131) >= 3 || !v34))
  {
    v38 = v18 ? &qword_2A18BE770 : &qword_2A18BE7E0;
    v39 = (a2 - 136) >= 0xA || *(v38 + 10) == 1;
    v40 = !v39;
    v36 = &dword_2A18BE800;
    v37 = &unk_2A18BE790;
    v35 = 1;
    if ((a2 - 165) >= 2 && !v40)
    {
      v41 = v18 ? &qword_2A18BE770 : &qword_2A18BE7E0;
      v42 = (a2 - 148) >= 3 || *(v41 + 14) == 1;
      v43 = !v42;
      v36 = &unk_2A18BE810;
      v37 = &unk_2A18BE7A0;
      v35 = 2;
      if ((a2 - 169) >= 2 && !v43)
      {
        v44 = v18 ? &qword_2A18BE770 : &qword_2A18BE7E0;
        v45 = (a2 - 153) >= 4 || *(v44 + 18) == 1;
        v46 = !v45;
        v36 = &unk_2A18BE820;
        v37 = &unk_2A18BE7B0;
        v35 = 3;
        if ((a2 - 173) >= 2 && !v46)
        {
          v21 = 147;
          goto LABEL_17;
        }
      }
    }
  }

  if (v18)
  {
    v47 = v37;
  }

  else
  {
    v47 = v36;
  }

  v48 = *v47;
  sub_297E4DFAC(0, &v69, 5, 5u, "phLibNfc_SM_RetrieveSEState");
  v69 = v68;
  sub_297E4E1B4(0, &v69, 5, 5u, "phLibNfc_RetrieveSETable");
  v49 = qword_29EE86938[2 * v48 + 1];
  sub_297E4DFAC(0, &v69, 5, 5u, "phLibNfc_RetrieveSETable");
  v69 = v68;
  sub_297E4E1B4(0, &v69, 5, 5u, "phLibNfc_SearchSETable");
  for (i = *v49; i != 208 && i != a2; i = v52)
  {
    v52 = v49[4];
    v49 += 4;
  }

  sub_297E4DFAC(0, &v69, 5, 5u, "phLibNfc_SearchSETable");
  v53 = *(v49 + 1);
  if (!v53)
  {
    v21 = 147;
    goto LABEL_18;
  }

  if ((a2 & 0xFFFFFFF0) == 0xA0 && a2 - 161 <= 0xD)
  {
    v54 = 1 << (a2 + 95);
    if ((v54 & 0x1111) != 0)
    {
      if (v13)
      {
        v57 = &qword_2A18BE770;
      }

      else
      {
        v57 = &qword_2A18BE7E0;
      }

      v56 = v57 + 2;
      v58 = &v56[2 * v35];
      v59 = *(v58 + 1);
      v49[1] = v59;
      *v58 = v59;
    }

    else
    {
      if ((v54 & 0x2222) == 0)
      {
        goto LABEL_102;
      }

      if (v13)
      {
        v55 = &qword_2A18BE770;
      }

      else
      {
        v55 = &qword_2A18BE7E0;
      }

      v56 = v55 + 2;
    }

    v60 = &v56[2 * v35];
    *(v60 + 2) = 0;
    a2 = *(v60 + 3);
  }

LABEL_102:
  v61 = v53(v68, a2, a3, a4, v67);
  v21 = v61;
  if (v61)
  {
    if (v61 == 13)
    {
      if (v13)
      {
        v62 = &qword_2A18BE770;
      }

      else
      {
        v62 = &qword_2A18BE7E0;
      }

      v63 = &v62[2 * v35];
      *(v63 + 5) = v49[1];
      *(v63 + 6) = 1;
      *(v63 + 7) = a2;
    }

    else
    {
      if (v13)
      {
        v66 = &qword_2A18BE770;
      }

      else
      {
        v66 = &qword_2A18BE7E0;
      }

      LODWORD(v66[2 * v35 + 3]) = 0;
    }
  }

  else
  {
    if (v13)
    {
      v64 = &qword_2A18BE770;
    }

    else
    {
      v64 = &qword_2A18BE7E0;
    }

    v65 = &v64[2 * v35];
    *(v65 + 4) = v49[1];
    *(v65 + 6) = 0;
  }

LABEL_18:
  sub_297E4DFAC(0, &v68, 5, 5u, "phLibNfc_SM_SEStateHandler");
  return v21;
}

uint64_t sub_297EE0FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a1;
  sub_297E4E1B4(0, &v36, 5, 5u, "phLibNfc_SM_DnldStateHandler");
  v9 = 0;
  v35 = 255;
  LOBYTE(v10) = 1;
  v11 = &dword_2A18BE830;
  while (1)
  {
    v12 = &unk_2A18BDDC0 + 112 * v9;
    if (*v12 == v36)
    {
      break;
    }

    v13 = v10;
    v10 = 0;
    v9 = 1;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v35 = *(v12 + 2);
  v10 = v35 == 1;
  if (v35 == 1)
  {
    v11 = &dword_2A18BE7C0;
  }

LABEL_7:
  v14 = *v11;
  if (a2 > 0xBD)
  {
    goto LABEL_30;
  }

  v15 = &qword_2A18BE770;
  if (!v10)
  {
    v15 = &qword_2A18BE7E0;
  }

  if (a2 != 178 && *(v15 + 22) == 1)
  {
LABEL_30:
    if ((a2 - 185) >= 5 && a2 != 8 && (a2 - 192) > 0xE)
    {
      v25 = 111;
      goto LABEL_59;
    }
  }

  v37 = v36;
  sub_297E4E1B4(0, &v37, 5, 5u, "phLibNfc_RetrieveDnldTable");
  v16 = qword_29EE86998[2 * v14 + 1];
  sub_297E4DFAC(0, &v37, 5, 5u, "phLibNfc_RetrieveDnldTable");
  v37 = v36;
  sub_297E4E1B4(0, &v37, 5, 5u, "phLibNfc_SearchDnldTable");
  for (i = *v16; i != 208 && i != a2; i = v19)
  {
    v19 = v16[4];
    v16 += 4;
  }

  sub_297E4DFAC(0, &v37, 5, 5u, "phLibNfc_SearchDnldTable");
  v20 = *(v16 + 1);
  if (!v20)
  {
    v25 = 147;
    goto LABEL_59;
  }

  if ((a2 - 192) <= 0xE)
  {
    v21 = 1 << (a2 + 64);
    if ((v21 & 0x67E9) != 0)
    {
      *v11 = v16[1];
      if (v10)
      {
        v22 = &qword_2A18BE770;
      }

      else
      {
        v22 = &qword_2A18BE7E0;
      }

      *(v22 + 22) = 0;
      v23 = &dword_2A18BE83C;
      if (v10)
      {
        v23 = &unk_2A18BE7CC;
      }

      a2 = *v23;
      *(v22 + 2) = 0;
      sub_297E50DB0(1, &v35, 5, 4u, "phLibNfc_SM_DnldStateHandler: phLibNfc_TransStatus_Complete: eSM_eDnldCurrState=");
      v24 = (*(v16 + 1))(v36, a2, a3, a4, a5);
      goto LABEL_40;
    }

    if ((v21 & 0x1812) != 0)
    {
      *v11 = v16[1];
      if (v10)
      {
        v26 = &qword_2A18BE770;
      }

      else
      {
        v26 = &qword_2A18BE7E0;
      }

      *(v26 + 22) = 0;
      v27 = &dword_2A18BE83C;
      if (v10)
      {
        v27 = &unk_2A18BE7CC;
      }

      a2 = *v27;
      *(v26 + 2) = 0;
    }

    else
    {
      *v11 = v16[1];
      if (v10)
      {
        v33 = &qword_2A18BE770;
      }

      else
      {
        v33 = &qword_2A18BE7E0;
      }

      *(v33 + 22) = 1;
      v34 = &dword_2A18BE83C;
      if (v10)
      {
        v34 = &unk_2A18BE7CC;
      }

      a2 = *v34;
    }
  }

  v24 = v20(v36, a2, a3, a4, a5);
LABEL_40:
  v25 = v24;
  if (v24)
  {
    if (v24 == 13)
    {
      *v11 = v16[1];
      if ((a2 - 190) <= 0xFFFFFFFA)
      {
        v28 = &qword_2A18BE7E0;
        if (v10)
        {
          v28 = &qword_2A18BE770;
        }

        *(v28 + 22) = 1;
        *(v28 + 23) = a2;
      }

      v29 = &qword_2A18BE7E0;
      if (v10)
      {
        v29 = &qword_2A18BE770;
      }

      *(v29 + 2) = 1;
      sub_297E50DB0(1, &v35, 5, 4u, "NFCSTATUS_PENDING");
      v25 = 13;
    }

    else if (a2 != 8 && a2 != 178)
    {
      v31 = &qword_2A18BE7E0;
      if (v10)
      {
        v31 = &qword_2A18BE770;
      }

      *(v31 + 2) = 0;
      *(v31 + 22) = 0;
    }
  }

  else
  {
    *v11 = v16[1];
    if (a2 != 8 && a2 != 178)
    {
      v25 = 0;
      v30 = &qword_2A18BE7E0;
      if (v10)
      {
        v30 = &qword_2A18BE770;
      }

      *(v30 + 22) = 0;
      *(v30 + 2) = 0;
    }
  }

LABEL_59:
  sub_297E4DFAC(0, &v36, 5, 5u, "phLibNfc_SM_DnldStateHandler");
  return v25;
}

uint64_t sub_297EE1404(uint64_t a1)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 5, 5u, "phLibNfc_SM_GetTargetState");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v8)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = HIDWORD(qword_2A18BE7E0);
      goto LABEL_8;
    }
  }

  v6 = &qword_2A18BE770 + 4;
  if (*(v4 + 2) != 1)
  {
    v6 = &qword_2A18BE7E0 + 4;
  }

  v5 = *v6;
LABEL_8:
  sub_297E4DFAC(0, &v8, 5, 5u, "phLibNfc_SM_GetTargetState");
  return v5;
}

uint64_t sub_297EE14CC(uint64_t a1)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 5, 5u, "phLibNfc_SM_GetTransStatus");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v8)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = dword_2A18BE7E8;
      goto LABEL_8;
    }
  }

  v6 = &dword_2A18BE778;
  if (*(v4 + 2) != 1)
  {
    v6 = &dword_2A18BE7E8;
  }

  v5 = *v6;
LABEL_8:
  sub_297E4DFAC(0, &v8, 5, 5u, "phLibNfc_SM_GetTransStatus");
  return v5;
}

uint64_t sub_297EE1594(uint64_t a1)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 5, 5u, "phLibNfc_SM_GetTransEvent");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v8)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = dword_2A18BE7EC;
      goto LABEL_8;
    }
  }

  v6 = &unk_2A18BE77C;
  if (*(v4 + 2) != 1)
  {
    v6 = &dword_2A18BE7EC;
  }

  v5 = *v6;
LABEL_8:
  sub_297E4DFAC(0, &v8, 5, 5u, "phLibNfc_SM_GetTransEvent");
  return v5;
}

uint64_t sub_297EE165C(uint64_t a1, int a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phLibNfc_SM_SetTransEvent");
  v3 = 0;
  v4 = 1;
  v5 = &dword_2A18BE7EC;
  while (1)
  {
    v6 = v4;
    v7 = &unk_2A18BDDC0 + 112 * v3;
    if (*v7 == v9)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v7 + 2) == 1)
  {
    v5 = &unk_2A18BE77C;
  }

LABEL_7:
  *v5 = a2;
  sub_297E4DFAC(0, &v9, 5, 5u, "phLibNfc_SM_SetTransEvent");
  return 0;
}

uint64_t sub_297EE1720(uint64_t a1, int a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phLibNfc_SM_SetTransStatus");
  v3 = 0;
  v4 = 1;
  v5 = &dword_2A18BE7E8;
  while (1)
  {
    v6 = v4;
    v7 = &unk_2A18BDDC0 + 112 * v3;
    if (*v7 == v9)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v7 + 2) == 1)
  {
    v5 = &dword_2A18BE778;
  }

LABEL_7:
  *v5 = a2;
  sub_297E4DFAC(0, &v9, 5, 5u, "phLibNfc_SM_SetTransStatus");
  return 0;
}

uint64_t sub_297EE17E4(uint64_t a1, int a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phLibNfc_SM_SetCurrState");
  v3 = 0;
  v4 = 1;
  v5 = &qword_2A18BE7E0;
  while (1)
  {
    v6 = v4;
    v7 = &unk_2A18BDDC0 + 112 * v3;
    if (*v7 == v9)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v7 + 2) == 1)
  {
    v5 = &qword_2A18BE770;
  }

LABEL_7:
  *v5 = a2;
  sub_297E4DFAC(0, &v9, 5, 5u, "phLibNfc_SM_SetCurrState");
  return 0;
}

uint64_t sub_297EE18A8(uint64_t a1, int a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phLibNfc_SM_SetTargetState");
  v3 = 0;
  v4 = 1;
  v5 = &qword_2A18BE7E0 + 4;
  while (1)
  {
    v6 = v4;
    v7 = &unk_2A18BDDC0 + 112 * v3;
    if (*v7 == v9)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v7 + 2) == 1)
  {
    v5 = &qword_2A18BE770 + 4;
  }

LABEL_7:
  *v5 = a2;
  sub_297E4DFAC(0, &v9, 5, 5u, "phLibNfc_SM_SetTargetState");
  return 0;
}

uint64_t sub_297EE196C(uint64_t a1, unsigned int a2, int a3)
{
  v11 = a1;
  sub_297E4E1B4(0, &v11, 5, 5u, "phLibNfc_SM_SetSECurrState");
  v5 = 0;
  v6 = 1;
  v7 = &unk_2A18BE7F0;
  while (1)
  {
    v8 = v6;
    v9 = &unk_2A18BDDC0 + 112 * v5;
    if (*v9 == v11)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v9 + 2) == 1)
  {
    v7 = &unk_2A18BE780;
  }

LABEL_7:
  v7[4 * a2] = a3;
  sub_297E4DFAC(0, &v11, 5, 5u, "phLibNfc_SM_SetSECurrState");
  return 0;
}

uint64_t sub_297EE1A38(uint64_t a1, unsigned int a2, int a3)
{
  v11 = a1;
  sub_297E4E1B4(0, &v11, 5, 5u, "phLibNfc_SM_SetSETransStatus");
  v5 = 0;
  v6 = 1;
  v7 = &unk_2A18BE7F0;
  while (1)
  {
    v8 = v6;
    v9 = &unk_2A18BDDC0 + 112 * v5;
    if (*v9 == v11)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v9 + 2) == 1)
  {
    v7 = &unk_2A18BE780;
  }

LABEL_7:
  v7[4 * a2 + 2] = a3;
  sub_297E4DFAC(0, &v11, 5, 5u, "phLibNfc_SM_SetSETransStatus");
  return 0;
}

uint64_t sub_297EE1B04(uint64_t a1, unsigned int a2)
{
  v10 = a1;
  sub_297E4E1B4(0, &v10, 5, 5u, "phLibNfc_SM_GetSETransStatus");
  v3 = 0;
  v4 = 1;
  v5 = &unk_2A18BE7F0;
  while (1)
  {
    v6 = v4;
    v7 = &unk_2A18BDDC0 + 112 * v3;
    if (*v7 == v10)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (*(v7 + 2) == 1)
  {
    v5 = &unk_2A18BE780;
  }

LABEL_7:
  v8 = v5[4 * a2 + 2];
  sub_297E4DFAC(0, &v10, 5, 5u, "phLibNfc_SM_GetSETransStatus");
  return v8;
}

uint64_t sub_297EE1BCC(uint64_t a1)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 5, 5u, "phLibNfc_SM_GetDnldTransEvent");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v8)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = dword_2A18BE83C;
      goto LABEL_8;
    }
  }

  v6 = &unk_2A18BE7CC;
  if (*(v4 + 2) != 1)
  {
    v6 = &dword_2A18BE83C;
  }

  v5 = *v6;
LABEL_8:
  sub_297E4DFAC(0, &v8, 5, 5u, "phLibNfc_SM_GetDnldTransEvent");
  return v5;
}

uint64_t sub_297EE1C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 8, 5u, "phFriNfc_TopazMap_ChkNdef");
  sub_297E57170(v11, &v10);
  v5 = 1;
  if (a3)
  {
    if (a2)
    {
      v6 = v10;
      if (v10)
      {
        *(v10 + 8) = a2;
        *(v6 + 40) = a3;
        *(v6 + 540) = 1;
        *(v6 + 547) = 1;
        *(v6 + 644) = 0;
        *(v6 + 642) = 1;
        *(v6 + 544) = 4;
        if (*(v6 + 65))
        {
          phOsalNfc_MemCopy();
          v6 = v10;
          v7 = *(v10 + 65);
          *v10 = 4;
          *(v6 + 540) = 1;
          *(v6 + 232) = 0;
          if (v7)
          {
            v8 = 0;
            *v6 = 5;
          }

          else
          {
            v8 = 120;
          }
        }

        else
        {
          *v6 = 4;
          *(v6 + 540) = 1;
          v8 = 120;
          *(v6 + 232) = 0;
        }

        *(v6 + 266) = v8;
        v5 = sub_297EE1DC4(v6, *(v6 + 642), *(v6 + 643));
      }
    }
  }

  sub_297E4DFAC(0, &v11, 8, 5u, "phFriNfc_TopazMap_ChkNdef");
  return v5;
}

uint64_t sub_297EE1DC4(uint64_t a1, char a2, char a3)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_RdBytes");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297EE2580;
  *(a1 + 56) = a1;
  *(a1 + 264) = 260;
  v6 = *(a1 + 266);
  if (!*(a1 + 266))
  {
    *(a1 + 232) = 0;
    *(a1 + 266) = 0;
    goto LABEL_8;
  }

  if (v6 == 1)
  {
    *(a1 + 232) = 0;
    *(a1 + 266) = 1;
    *(a1 + 267) = a3 + 8 * a2;
LABEL_8:
    *(a1 + 268) = 0;
    phOsalNfc_MemCopy();
    *(a1 + 526) = 7;
    goto LABEL_9;
  }

  if (v6 != 120)
  {
    v7 = 245;
    goto LABEL_11;
  }

  *(a1 + 232) = 0;
  *(a1 + 266) = 120;
  phOsalNfc_SetMemory();
  *(a1 + 526) = 7;
  if (*(a1 + 65))
  {
    phOsalNfc_MemCopy();
  }

LABEL_9:
  v7 = sub_297E98D38(a1, sub_297EE3188);
LABEL_11:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_RdBytes");
  return v7;
}

uint64_t sub_297EE1F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_TopazMap_ConvertToReadOnly");
  sub_297E57170(v10, &v9);
  v5 = 1;
  if (a2)
  {
    v6 = v9;
    if (v9)
    {
      *(v9 + 32) = a2;
      *(v6 + 40) = a3;
      *(v6 + 547) = 6;
      *(v6 + 644) = 0;
      *(v6 + 544) = 4;
      if (sub_297E8EA44(*(v6 + 2712)) == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = 15;
      }

      v5 = sub_297EE2008(v9, 1, 3, v7);
      if (v5 == 13)
      {
        *v9 = 9;
      }
    }
  }

  sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_TopazMap_ConvertToReadOnly");
  return v5;
}

uint64_t sub_297EE2008(uint64_t a1, char a2, char a3, char a4)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_WrAByte");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297EE2580;
  *(a1 + 56) = a1;
  *(a1 + 264) = 260;
  *(a1 + 232) = 0;
  *(a1 + 266) = 83;
  *(a1 + 267) = a3 + 8 * a2;
  *(a1 + 268) = a4;
  phOsalNfc_MemCopy();
  *(a1 + 526) = 7;
  v8 = sub_297E98D38(a1, sub_297EE3188);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_WrAByte");
  return v8;
}

uint64_t sub_297EE20FC(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  v15 = a1;
  sub_297E4E1B4(0, &v15, 8, 5u, "phFriNfc_TopazMap_RdNdef");
  sub_297E57170(v15, &v14);
  v11 = 1;
  if (a4 <= 1)
  {
    if (a3)
    {
      if (a2)
      {
        if (a5)
        {
          v12 = v14;
          if (v14)
          {
            *(v14 + 16) = a5;
            *(v12 + 40) = a6;
            *(v12 + 547) = 2;
            *(v12 + 240) = a2;
            *(v12 + 248) = *a3;
            *(v12 + 552) = a3;
            *a3 = 0;
            *(v12 + 252) = 0;
            *(v12 + 560) = a4;
            *(v12 + 644) = 1;
            if (a4 == 1 || *(v12 + 540) == 3)
            {
              *(v12 + 560) = 1;
              *(v12 + 642) = 1;
              *v12 = 5;
              *(v12 + 645) = 0;
              *(v12 + 232) = 0;
              *(v12 + 266) = 0;
              *(v12 + 540) = 2;
              if (a4)
              {
                v11 = sub_297EE1DC4(v12, 1, 0);
                goto LABEL_13;
              }
            }

            else
            {
              *(v12 + 540) = 2;
              if (*(v12 + 645) == 1)
              {
                v11 = 26;
                goto LABEL_13;
              }
            }

            sub_297EE2250(v12);
            v11 = 0;
          }
        }
      }
    }
  }

LABEL_13:
  sub_297E4DFAC(0, &v15, 8, 5u, "phFriNfc_TopazMap_RdNdef");
  return v11;
}

uint64_t sub_297EE2250(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_CpDataToUsrBuf");
  if (*(a1 + 248) >= *(a1 + 80))
  {
    phOsalNfc_MemCopy();
    v3 = 0;
    v5 = 0;
    v6 = *(a1 + 80);
    **(a1 + 552) = v6;
    *(a1 + 645) = 1;
    v4 = *(a1 + 640) - v6;
  }

  else
  {
    phOsalNfc_MemCopy();
    v2 = *(a1 + 248);
    **(a1 + 552) = v2;
    v3 = *(a1 + 643) + v2;
    v4 = *(a1 + 640) - v2;
    v5 = *(a1 + 80) - v2;
  }

  *(a1 + 643) = v3;
  *(a1 + 640) = v4;
  *(a1 + 80) = v5;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_CpDataToUsrBuf");
  return 0;
}

uint64_t sub_297EE2334(uint64_t a1, char *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a1;
  sub_297E4E1B4(0, &v22, 8, 5u, "phFriNfc_TopazMap_WrNdef");
  sub_297E57170(v22, &v21);
  v11 = 1;
  if (a3 && a5 && v21)
  {
    phOsalNfc_MemCopy();
    v12 = v21;
    *(v21 + 2740) = 3;
    *(v12 + 24) = a5;
    *(v12 + 40) = a6;
    *(v12 + 547) = 3;
    *(v12 + 252) = 0;
    **(v12 + 528) = 0;
    v13 = v21;
    v14 = (v21 + 2740);
    if (*a3)
    {
      v14 = a3;
      v15 = a2;
    }

    else
    {
      v15 = (v21 + 2736);
    }

    *(v21 + 240) = v15;
    *(v13 + 248) = *v14;
    *(v13 + 252) = 0;
    *(v13 + 256) = v14;
    *v14 = 0;
    *(v13 + 644) = 2;
    *(v13 + 560) = a4;
    if (a4 == 1 || *(v13 + 540) == 2)
    {
      *(v13 + 560) = 1;
      *(v13 + 642) = 1;
      *v13 = 5;
      *(v13 + 232) = 0;
      *(v13 + 266) = 0;
      *(v13 + 645) = 0;
      *(v13 + 640) = *(v13 + 204);
      v15 = (v13 + 267);
    }

    else
    {
      *v13 = 2;
    }

    v16 = *v15;
    *(v13 + 540) = 3;
    if (a4 || *(v13 + 645) != 1)
    {
      sub_297EE2500(v13);
      v17 = *(v21 + 642);
      v18 = *(v21 + 643);
      if (*(v21 + 560) == 1)
      {
        v19 = sub_297EE1DC4(v21, v17, v18);
      }

      else
      {
        v19 = sub_297EE2008(v21, v17, v18, v16);
      }

      v11 = v19;
    }

    else
    {
      v11 = 26;
    }
  }

  sub_297E4DFAC(0, &v22, 8, 5u, "phFriNfc_TopazMap_WrNdef");
  return v11;
}

uint64_t sub_297EE2500(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_BlkChk");
  v2 = *(a1 + 643);
  v3 = *(a1 + 642);
  if (v2 > 7)
  {
    ++v3;
  }

  *(a1 + 642) = v3;
  *(a1 + 643) = v2 & 7;

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_BlkChk");
}

uint64_t sub_297EE2580(uint64_t a1, char *a2, uint64_t a3)
{
  v34 = a1;
  sub_297E4E1B4(0, &v34, 8, 5u, "phFriNfc_TopazMap_Process");
  if (!a3)
  {
    v5 = *a2;
    v6 = 245;
    if (v5 > 7)
    {
      if (*a2 > 0xAu)
      {
        switch(v5)
        {
          case 0xBu:
            if (a2[266] != 255 || *(a2 + 132) != 1)
            {
              goto LABEL_81;
            }

            a2[266] = 1;
            a3 = sub_297EE1DC4(a2, 14, 1);
            if (a3 == 13)
            {
              v7 = 12;
              goto LABEL_64;
            }

            break;
          case 0xCu:
            if (*(a2 + 132) != 1)
            {
              goto LABEL_156;
            }

            byte_2A13A5D4E = a2[266] | 0x7F;
            a3 = sub_297EE2008(a2, 14, 1, byte_2A13A5D4E);
            v7 = a3;
            if (a3 == 13)
            {
              goto LABEL_64;
            }

            break;
          case 0xDu:
            if (byte_2A13A5D4E == a2[266] && *(a2 + 132) == 1)
            {
              byte_2A13A5D4E = 0;
              goto LABEL_156;
            }

            byte_2A13A5D4E = 0;
            goto LABEL_81;
          default:
            goto LABEL_157;
        }

LABEL_82:
        v6 = a3;
        goto LABEL_157;
      }

      if (v5 != 8)
      {
        if (v5 != 9)
        {
          if (v5 == 10)
          {
            if (*(a2 + 132) != 1)
            {
              goto LABEL_156;
            }

            a3 = sub_297EE2008(a2, 14, 0, 255);
            if (a3 == 13)
            {
              v7 = 11;
LABEL_64:
              *a2 = v7;
              goto LABEL_156;
            }

            goto LABEL_82;
          }

LABEL_157:
          sub_297EE2FD8(a2, v6);
          return sub_297E4DFAC(0, &v34, 8, 5u, "phFriNfc_TopazMap_Process");
        }

        if (a2[266] == 15 && *(a2 + 132) == 1)
        {
          byte_2A13A5D4E = 0;
          a2[266] = 1;
          a3 = sub_297EE1DC4(a2, 14, 0);
          if (a3 == 13)
          {
            v7 = 10;
            goto LABEL_64;
          }

          goto LABEL_82;
        }

LABEL_81:
        v6 = 27;
        goto LABEL_157;
      }

      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ProCCTLV");
      v15 = a2[646];
      v16 = a2[266];
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          if (v16 == 14 && *(a2 + 132) == 1)
          {
            LOBYTE(v17) = 3;
            goto LABEL_109;
          }

          goto LABEL_111;
        }

        if (v15 == 3)
        {
          if (!a2[266] && *(a2 + 132) == 1)
          {
            LOBYTE(v17) = 4;
            goto LABEL_109;
          }

LABEL_111:
          a3 = 27;
          goto LABEL_112;
        }
      }

      else
      {
        if (!a2[646])
        {
          if (v16 == 225)
          {
            v17 = *(a2 + 132);
            if (v17 == 1)
            {
              goto LABEL_109;
            }
          }

          goto LABEL_111;
        }

        if (v15 == 1)
        {
          if (v16 == 16 && *(a2 + 132) == 1)
          {
            LOBYTE(v17) = 2;
LABEL_109:
            a2[646] = v17;
            v23 = sub_297EE355C(a2);
            goto LABEL_110;
          }

          goto LABEL_111;
        }
      }

      if (v16 == 3 && *(a2 + 132) == 1)
      {
        ++a2[643];
        sub_297EE2500(a2);
        *a2 = 6;
        a2[646] = 5;
        v23 = sub_297EE2008(a2, 1, 0, 0);
LABEL_110:
        a3 = v23;
LABEL_112:
        v20 = "phFriNfc_Tpz_H_ProCCTLV";
        goto LABEL_155;
      }

      goto LABEL_111;
    }

    if (*a2 <= 4u)
    {
      if (v5 == 2)
      {
        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ProWrUsrData");
        v9 = *(a2 + 126);
        if (a2[266] == *(*(a2 + 30) + v9) && *(a2 + 132) == 1)
        {
          *(a2 + 126) = v9 + 1;
          --*(a2 + 320);
          ++a2[643];
          sub_297EE2500(a2);
          v10 = *(a2 + 126);
          if (*(a2 + 62) == v10 || !*(a2 + 320))
          {
            a2[645] = *(a2 + 320) == 0;
            sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_WrLByte");
            v27 = *(a2 + 34);
            v28 = a2[70];
            *a2 = 7;
            a2[646] = 8;
            v29 = *(a2 + 126);
            if (a2[560] != 1)
            {
              LOBYTE(v29) = a2[80] + v29;
            }

            if (v27 > 6)
            {
              ++v28;
            }

            a3 = sub_297EE2008(a2, v28, (v27 + 1) & 7, v29);
            sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_WrLByte");
          }

          else
          {
            *a2 = 2;
            a3 = sub_297EE2008(a2, a2[642], a2[643], *(*(a2 + 30) + v10));
          }
        }

        else
        {
          a3 = 27;
        }

        v20 = "phFriNfc_Tpz_H_ProWrUsrData";
      }

      else
      {
        if (v5 != 4)
        {
          goto LABEL_157;
        }

        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ProReadID");
        if (a2[266] == 17 && *(a2 + 132) == 6)
        {
          phOsalNfc_MemCopy();
          *a2 = 5;
          *(a2 + 58) = 0;
          a2[266] = 0;
          a3 = sub_297EE1DC4(a2, a2[642], a2[643]);
        }

        else
        {
          a3 = 27;
        }

        v20 = "phFriNfc_Tpz_H_ProReadID";
      }

      goto LABEL_155;
    }

    if (v5 != 5)
    {
      if (v5 != 6)
      {
        if (v5 != 7)
        {
          goto LABEL_157;
        }

        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ProWrTLV");
        v8 = a2[646];
        if (v8 != 8)
        {
          if (v8 == 7 && !a2[266] && *(a2 + 132) == 1)
          {
            *a2 = 2;
            ++a2[643];
            sub_297EE2500(a2);
            a3 = sub_297EE2008(a2, a2[642], a2[643], *(*(a2 + 30) + *(a2 + 126)));
LABEL_129:
            v20 = "phFriNfc_Tpz_H_ProWrTLV";
            goto LABEL_155;
          }

LABEL_128:
          a3 = 27;
          goto LABEL_129;
        }

        if (a2[560])
        {
          if (a2[560] != 1)
          {
            goto LABEL_128;
          }

          v22 = *(a2 + 126);
          if (v22 != a2[266] || *(a2 + 132) != 1)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v22 = *(a2 + 126);
          v30 = *(a2 + 40);
          if (v30 + v22 != a2[266] || *(a2 + 132) != 1)
          {
            goto LABEL_128;
          }

          LOWORD(v22) = v30 + v22;
        }

        *(a2 + 40) = v22;
        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_WrByte0ValE1");
        *a2 = 6;
        a2[646] = 6;
        a3 = sub_297EE2008(a2, 1, 0, 225);
        sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_WrByte0ValE1");
        goto LABEL_129;
      }

      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ProWrNMN");
      v11 = a2[646];
      if (v11 == 6)
      {
        if (a2[266] == 225 && *(a2 + 132) == 1)
        {
          a3 = 0;
          v21 = a2[545];
          if (!v21)
          {
            v21 = 2;
          }

          a2[545] = v21;
          **(a2 + 32) = *(a2 + 126);
          goto LABEL_94;
        }
      }

      else if (v11 == 5 && !a2[266] && *(a2 + 132) == 1)
      {
        *a2 = 7;
        v12 = *(a2 + 34);
        v13 = a2[70];
        if (v12 > 6)
        {
          ++v13;
        }

        a2[646] = 7;
        a3 = sub_297EE2008(a2, v13, (v12 + 1) & 7, 0);
        goto LABEL_94;
      }

      a3 = 27;
LABEL_94:
      v20 = "phFriNfc_Tpz_H_ProWrNMN";
LABEL_155:
      sub_297E4DFAC(2, a2, 8, 5u, v20);
      goto LABEL_156;
    }

    sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ProReadAll");
    v14 = a2[648] == a2[268] && a2[649] == a2[269] && a2[650] == a2[270] && a2[651] == a2[271];
    if (a2[266] != 17)
    {
      goto LABEL_79;
    }

    v18 = !v14;
    if (*(a2 + 132) != 122)
    {
      v18 = 1;
    }

    if (v18)
    {
LABEL_79:
      a3 = 27;
LABEL_154:
      v20 = "phFriNfc_Tpz_H_ProReadAll";
      goto LABEL_155;
    }

    phOsalNfc_MemCopy();
    sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ChkLockBits");
    if (a2[380] == 1 && (a2[381] | 0x80) == 0xE0 && a2[279] != 15)
    {
      if (a2[279])
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }
    }

    else
    {
      v19 = 1;
    }

    a2[545] = v19;
    sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_ChkLockBits");
    sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_CallNxtOp");
    v24 = a2[540];
    if (v24 == 2)
    {
      if (sub_297EE3450(a2))
      {
        a3 = 28;
      }

      else
      {
        a3 = sub_297EE32C4(a2);
        if (!a3)
        {
          a2[643] += 2;
          sub_297EE2250(a2);
        }
      }

      goto LABEL_153;
    }

    if (v24 == 1)
    {
      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ChkCCinChkNdef");
      if (a2[661] == 225)
      {
        if (a2[664] >= 0x10u)
        {
          v26 = *(a2 + 102);
          v25 = 3;
        }

        else
        {
          v25 = 0;
          v26 = 92;
        }

        *(a2 + 320) = v26;
        *(a2 + 102) = v26;
      }

      else
      {
        v25 = 3;
      }

      if (a2[545] != 1)
      {
        a2[545] = v25;
      }

      sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_ChkCCinChkNdef");
      if (a2[545] == 3)
      {
        a3 = 0;
        a2[545] = 0;
        *(a2 + 320) = 90;
        *(a2 + 102) = 90;
        goto LABEL_153;
      }

      v32 = sub_297EE3220(a2, a2[662]);
      if (!v32)
      {
        if (a2[663] <= 0xEu)
        {
          sub_297EE32C4(a2);
        }

        a3 = 0;
        goto LABEL_153;
      }
    }

    else
    {
      if ((a2[545] | 2) != 2)
      {
        a3 = 27;
LABEL_153:
        sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_CallNxtOp");
        goto LABEL_154;
      }

      if (sub_297EE3450(a2))
      {
        v31 = 0;
        *(a2 + 34) = 4;
        a2[70] = 1;
        a2[643] = 4;
      }

      else
      {
        sub_297EE32C4(a2);
        v31 = 4;
      }

      a2[646] = v31;
      v32 = sub_297EE355C(a2);
    }

    a3 = v32;
    goto LABEL_153;
  }

LABEL_156:
  v6 = a3;
  if (a3 != 13)
  {
    goto LABEL_157;
  }

  return sub_297E4DFAC(0, &v34, 8, 5u, "phFriNfc_TopazMap_Process");
}

uint64_t sub_297EE2FD8(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_Complete");
  *a1 = 0;
  v4 = *(a1 + 547);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      *(a1 + 545) = 2 * (*(a1 + 922) != 0);
      (*(a1 + 24))(*(a1 + 40), a2);
    }

    else if (v4 == 6)
    {
      (*(a1 + 32))(*(a1 + 40), a2);
    }
  }

  else if (v4 == 1)
  {
    if (a2 == 25)
    {
      *(a1 + 546) = 1;
      LOBYTE(v13) = *(a1 + 545);
      v8 = *(a1 + 640);
      HIDWORD(v13) = *(a1 + 922);
      v14 = v8;
      v5 = 25;
    }

    else if (a2)
    {
      *(a1 + 546) = 0;
      LOBYTE(v13) = 3;
      if (((1 << a2) & 0x14400000) != 0)
      {
        v9 = 152;
      }

      else
      {
        v9 = a2;
      }

      if (a2 <= 0x1Cu)
      {
        v5 = v9;
      }

      else
      {
        v5 = a2;
      }
    }

    else
    {
      *(a1 + 546) = 1;
      LOBYTE(v13) = *(a1 + 545);
      v5 = 0;
      if (*(*(a1 + 224) + 19) == 17)
      {
        v6 = *(a1 + 80);
        v7 = *(a1 + 640);
      }

      else
      {
        v6 = *(a1 + 922);
        v7 = *(a1 + 924);
      }

      HIDWORD(v13) = v6;
      v14 = v7;
    }

    (*(a1 + 8))(*(a1 + 40), v5, &v13);
  }

  else if (v4 == 2)
  {
    if (!a2)
    {
      LODWORD(v12) = **(a1 + 552);
      v11 = *(a1 + 240);
    }

    (*(a1 + 16))(*(a1 + 40), a2, &v11);
  }

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_Complete");
}

uint64_t sub_297EE3188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_Topaz_CB_Transceive");
  sub_297E57170(v10, &v9);
  v7 = v9;
  if (v9)
  {
    if (a4)
    {
      *(v9 + 264) = *(a4 + 8);
    }

    (*(v7 + 48))(*(v7 + 2712), v7, a5);
  }

  return sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_Topaz_CB_Transceive");
}

uint64_t sub_297EE3220(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_ChkSpcVer");
  if (a2)
  {
    v4 = a2 & 0xF;
    if ((a2 & 0xF0) == 0x10 && v4 < 3)
    {
      v5 = 0;
    }

    else if ((v4 <= 2 || (a2 & 0xF0) != 16) && a2 >= 0x20)
    {
      v5 = 28;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 28;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_ChkSpcVer");
  return v5;
}

uint64_t sub_297EE32C4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_findNDEFTLV");
  v2 = a1 + 661;
  v3 = *(a1 + 640);
  v4 = 4;
  while (v3 >= 3u)
  {
    v5 = *(v2 + v4);
    if (*(v2 + v4))
    {
      if (v5 == 254)
      {
        break;
      }

      if (v5 == 3)
      {
        v8 = v2 + v4;
        *(a1 + 640) = v3 - 2;
        v9 = sub_297E9C0B8(a1, *(v8 + 1));
        v10 = *(v8 + 1);
        if (*(a1 + 640) >= v10 && (*(v8 + 1) || *(a1 + 540) != 2) && !v9)
        {
          v11 = 0;
          *(a1 + 80) = v10;
          *(a1 + 68) = v4 & 7;
          *(a1 + 70) = (v4 >> 3) + 1;
          *(a1 + 66) = 1;
          *(a1 + 643) = v4;
          goto LABEL_21;
        }

        break;
      }

      v6 = v3 - 2;
      *(a1 + 640) = v6;
      v7 = *(v2 + v4 + 1);
      if (v7 > v6)
      {
        break;
      }

      v3 = v6 - v7;
      *(a1 + 640) = v3;
      v4 += v7 + 2;
    }

    else
    {
      *(a1 + 640) = --v3;
      ++v4;
    }

    if (v4 >= 0x60u)
    {
      break;
    }
  }

  v11 = 22;
  if (!*(a1 + 66))
  {
    v12 = *(a1 + 540);
    if (v12 == 2)
    {
      v11 = 26;
    }

    else
    {
      v11 = 22;
    }

    if ((v12 | 2) == 3)
    {
      *(a1 + 68) = 4;
      *(a1 + 70) = 1;
      *(a1 + 643) = 4;
      *(a1 + 640) = 90;
    }
  }

LABEL_21:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_findNDEFTLV");
  return v11;
}

uint64_t sub_297EE3450(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_ChkCCBytes");
  if (*(a1 + 661) == 225)
  {
    v2 = (*(a1 + 663) < 0xFu) & (sub_297EE3220(a1, *(a1 + 662)) == 0);
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = 26;
    }

    if (v2)
    {
      v4 = 92;
    }

    else
    {
      v4 = *(a1 + 204);
    }

    *(a1 + 204) = v4;
    *(a1 + 640) = v4;
    v5 = *(a1 + 540);
    if (v5 == 2)
    {
      if (*(a1 + 664) == 15)
      {
        v7 = 0;
      }

      else
      {
        v7 = 28;
      }

      if (v2)
      {
        v8 = v7;
      }

      else
      {
        v8 = 26;
      }

      if (*(a1 + 664))
      {
        v3 = v8;
      }

      else
      {
        v3 = v3;
      }
    }

    else if (v5 == 3)
    {
      if (*(a1 + 664))
      {
        v6 = 28;
      }

      else
      {
        v6 = 0;
      }

      if (v2)
      {
        v3 = v6;
      }

      else
      {
        v3 = 26;
      }
    }
  }

  else
  {
    v3 = 22;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_ChkCCBytes");
  return v3;
}

uint64_t sub_297EE355C(_BYTE *a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_WrCCorTLV");
  v2 = a1[646];
  if (v2 >= 4)
  {
    LOBYTE(v2) = a1[68];
    v4 = a1[70];
    LOBYTE(v3) = 3;
  }

  else
  {
    v3 = 0xE10E1u >> (8 * v2);
    v4 = 1;
  }

  *a1 = 8;
  v5 = sub_297EE2008(a1, v4, v2, v3);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_WrCCorTLV");
  return v5;
}

uint64_t sub_297EE3600(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  bzero(&v8, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_EnDisMultiTagSeq");
  if (!a1)
  {
    v4 = "phLibNfc_EnDisMultiTagSeq Fail : invalid context";
    v5 = 2;
    v6 = 0;
LABEL_6:
    sub_297E4E0B0(v5, v6, 4, 1u, v4);
    v3 = 255;
    goto LABEL_7;
  }

  phOsalNfc_SetMemory();
  v2 = *(a1 + 1134);
  if (v2 > 1)
  {
    v4 = "phLibNfc_EnDisMultiTagSeq Fail : invalid config";
    v6 = a1 + 9792;
    v5 = 1;
    goto LABEL_6;
  }

  v10 |= 0x10000u;
  v11 = v2;
  v8 = *(a1 + 9792);
  v9 |= 0x10000u;
  v3 = sub_297E64020(*(a1 + 3088), &v8, sub_297E5BA84, a1);
LABEL_7:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_EnDisMultiTagSeq");
  return v3;
}

uint64_t sub_297EE3748(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_EnDisMultiTagSeqComplete");
  if (a1)
  {
    if (a2)
    {
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_EnDisMultiTagSeqComplete");
  return a2;
}

uint64_t sub_297EE37D0(uint64_t a1)
{
  *&v15[221] = *MEMORY[0x29EDCA608];
  bzero(&v10, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigSeReaderEmvCoSeq");
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    v4 = &v13;
    do
    {
      v5 = *(&unk_2A18BDDC0 + 14 * v3 + 2);
      if (v2)
      {
        break;
      }

      v2 = 1;
      v3 = 1;
    }

    while (v5 != a1);
    if (v5 == a1)
    {
      phOsalNfc_SetMemory();
      v7 = v11;
      v11 |= 0x8000u;
      v12 |= 0x10u;
      v8 = *(a1 + 1136);
      if (v8 != 1)
      {
        if (v8 != 2)
        {
LABEL_11:
          v10 = *(a1 + 9792);
          v6 = sub_297E64020(*(a1 + 3088), &v10, sub_297E5BA84, a1);
          goto LABEL_12;
        }

        v13 = 1;
        v11 = v7 | 0x18000;
        v14 |= 0x800u;
        v4 = v15;
      }

      *v4 = 0;
      goto LABEL_11;
    }
  }

  v6 = 49;
LABEL_12:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigSeReaderEmvCoSeq");
  return v6;
}

uint64_t sub_297EE3954(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetSeReaderEnableEmvCoSeqEnd");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "Set Config enable se reader Failed!");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Set Config enable se reader success");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetSeReaderEnableEmvCoSeqEnd");
  return a2;
}

uint64_t sub_297EE39FC(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = 0;
  v5 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetNfceeDepMapping");
  if (a1)
  {
    phOsalNfc_SetMemory();
    BYTE4(v5) = BYTE4(v5) & 0xFC | 1;
    v6 = 131;
    LODWORD(v5) = 4;
    a2 = sub_297E5BFBC(*(a1 + 3088), 1, &v5, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetNfceeDepMapping");
  return a2;
}

uint64_t sub_297EE3B00(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetSeReaderDisableEmvCoSeqEnd");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "Set Config se reader Failed!");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Set Config disable se reader success");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetSeReaderDisableEmvCoSeqEnd");
  return a2;
}

uint64_t sub_297EE3BA4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendEMVCoTagDetection");
  if (a1)
  {
    sub_297E5BEBC(*(a1 + 3088), 0);
    a2 = sub_297E56D18(*(a1 + 3088), 4, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendEMVCoTagDetection");
  return a2;
}

uint64_t sub_297EE3C38(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ProcessEmvCoTagRemDeactResp");
  v5 = 255;
  if (a1 && a3)
  {
    v5 = *a3;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ProcessEmvCoTagRemDeactResp");
  return v5;
}

uint64_t sub_297EE3CB0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_EMVCoTagRemSeqComplete");
  if (a1)
  {
    if (a2)
    {
      v4 = 119;
    }

    else
    {
      *(a1 + 9778) = 1;
      v4 = 118;
    }

    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_EMVCoTagRemSeqComplete");
  return a2;
}

uint64_t sub_297EE3D48(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ReConfigSeq");
  if (!a1)
  {
    v3 = "Invalid LibNfc context";
    v2 = 1;
    v4 = 2;
    v5 = 0;
LABEL_6:
    sub_297E4E0B0(v4, v5, 4, 1u, v3);
    goto LABEL_7;
  }

  sub_297E4F1A4(*(a1 + 3088), *(a1 + 1473));
  v2 = sub_297E63698(a1, (a1 + 1048));
  if (v2 != 13)
  {
    v3 = "Re-configure failed!";
    v5 = a1 + 9792;
    v4 = 1;
    goto LABEL_6;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Re-configure success");
LABEL_7:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ReConfigSeq");
  return v2;
}

uint64_t sub_297EE3E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ReDiscoveryComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E79498(*(a1 + 3088), &v12);
      if (v12 == 1 && *(a1 + 1473) == 1)
      {
        if (*(a1 + 1474) > 3u)
        {
          sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ReDiscoveryComplete: All retries for set config Failed");
          sub_297E50EBC(1, a1 + 9792, 4, 1u, "pLibCtx->tDiscCtx.bRetryCfgCount");
          *(a1 + 1474) = 0;
          sub_297E4F1A4(*(a1 + 3088), 0);
        }

        else
        {
          phOsalNfc_Delay();
          sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_ReDiscoveryComplete: Retry set config");
          sub_297E4F1A4(*(a1 + 3088), 1);
          *(a1 + 2960) = &qword_2A1A93190;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v6 = qword_2A1A93190;
          if (qword_2A1A93190)
          {
            v6 = 0;
            v7 = off_2A1A931A0;
            do
            {
              ++v6;
              v8 = *v7;
              v7 += 2;
            }

            while (v8);
          }

          *(a1 + 2953) = v6;
          a2 = sub_297E5588C(a1, 0, a3);
          if (a2 == 13)
          {
            ++*(a1 + 1474);
          }
        }
      }

      sub_297E5BEBC(*(a1 + 3088), 0);
    }

    if (!a2)
    {
      v10 = 118;
LABEL_26:
      sub_297ECF904(a1);
      a2 = sub_297E4F450(*(a1 + 9784), v10, a2, 0, 0);
      goto LABEL_27;
    }

    if (a2 != 13)
    {
      *(a1 + 1473) = 0;
      if (a2 == 143)
      {
        v9 = a2;
      }

      else
      {
        v9 = 255;
      }

      if (a2 == 189)
      {
        v9 = a2;
      }

      if (a2 == 158)
      {
        v9 = a2;
      }

      v10 = 119;
      if (a2 == 81)
      {
        a2 = a2;
      }

      else
      {
        a2 = v9;
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ReDiscoveryComplete");
  return a2;
}

uint64_t sub_297EE404C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendDeactSleepCmd");
  if (a1)
  {
    v2 = a1 + 1504;
    if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
    {
      *v2 = 0;
      *(a1 + 1512) = 0;
      v3 = 1;
    }

    else
    {
      v3 = 1;
      if (*v2)
      {
        if (*(*v2 + 16) == 5)
        {
          v3 = 2;
        }

        else
        {
          v3 = 1;
        }
      }
    }

    v4 = sub_297E56D18(*(a1 + 3088), v3, sub_297E5BA84, a1);
    if (v4 == 13)
    {
      *(a1 + 9778) = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendDeactSleepCmd");
  return v4;
}

uint64_t sub_297EE411C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ProcessDeactComplete");
  if (a1)
  {
    if (!a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Lower layer has returned NFCSTATUS_SUCCESS");
      if (a2)
      {
        v4 = 119;
      }

      else
      {
        v4 = 118;
      }

      *(a1 + 1504) = 0u;
      goto LABEL_14;
    }

    if (a2 != 81)
    {
      if (a2 != 143)
      {
        if (a2 == 121)
        {
          v4 = 123;
        }

        else
        {
          sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ProcessDeactComplete: Lower layer has returned failure status");
          v4 = 119;
          a2 = 255;
        }

        goto LABEL_14;
      }

      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ProcessDeactComplete: Failed, non-heap memory access violation");
    }

    v4 = 119;
LABEL_14:
    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, &v6);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ProcessDeactComplete");
  return a2;
}

uint64_t sub_297EE4254(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  bzero(v4, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ClearExpModeSParams");
  if (a1)
  {
    if (*(a1 + 2984) == 1 && ((*(a1 + 3028) & 0xFD) == 0xFC || *(a1 + 3028) - 1 <= 0x9E))
    {
      v4[1] = 0x10000;
      v4[384] = 64;
      v5 = 0;
    }

    if (sub_297E63FA4(a1, v4))
    {
      v4[0] = *(a1 + 9792);
      sub_297E4F1A4(*(a1 + 3088), *(a1 + 1473));
      v2 = sub_297E64020(*(a1 + 3088), v4, sub_297E5BA84, a1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 49;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ClearExpModeSParams");
  return v2;
}

uint64_t sub_297EE4398(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_TagRemovalDetectCmd");
  if (a1)
  {
    a2 = sub_297F0A2B0(*(a1 + 3088), sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_TagRemovalDetectCmd");
  return a2;
}

uint64_t sub_297EE441C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_TagRemovalDetectResp");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_TagRemovalDetectResp");
  return a2;
}

uint64_t sub_297EE4484(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_TagRemovalDetectComplete");
  if (a1)
  {
    if (a2)
    {
      v4 = 119;
    }

    else
    {
      *(a1 + 9778) = 1;
      v4 = 118;
    }

    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_TagRemovalDetectComplete");
  return a2;
}

uint64_t sub_297EE451C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ProcessDeactToDiscResp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Deactivate discovery failed!");
      goto LABEL_13;
    }

    if (!a3)
    {
LABEL_12:
      a2 = 255;
      goto LABEL_13;
    }

    a2 = *a3;
    if (*a3 <= 0x50u)
    {
      if (!*a3)
      {
        goto LABEL_13;
      }

      if (a2 == 47 || a2 == 58)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Deactivation to discovery success");
        a2 = 0;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if ((a2 - 81) > 0x3E || ((1 << (a2 - 81)) & 0x4000010000000001) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ProcessDeactToDiscResp");
  return a2;
}

uint64_t sub_297EE462C(uint64_t a1, int a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ProcessReDiscReq");
  if (!a1)
  {
    v7 = 49;
    goto LABEL_38;
  }

  v6 = (a1 + 1504);
  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *v6 = 0;
    *(a1 + 1512) = 0;
  }

  else if (*v6)
  {
    v23 = *v6;
    if (!sub_297ECD484(a1, &v22, &v23, 0) && v22 && (!*v22 || !sub_297EE0544(a1, v23)))
    {
      goto LABEL_21;
    }
  }

  if (a2 <= 2)
  {
    if (!a2)
    {
      if (!a3)
      {
        goto LABEL_37;
      }

      v17 = off_2A1A93120;
      if (*(a3 + 88) == 2)
      {
        v17 = off_2A1A92F20;
      }

      *(a1 + 2960) = v17;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v18 = *v17;
      if (*v17)
      {
        LOBYTE(v18) = 0;
        v19 = (v17 + 2);
        do
        {
          LOBYTE(v18) = v18 + 1;
          v20 = *v19;
          v19 += 2;
        }

        while (v20);
      }

      *(a1 + 2953) = v18;
      v15 = a1;
      v16 = a3;
LABEL_29:
      v7 = sub_297E5588C(v15, 0, v16);
      goto LABEL_38;
    }

    if (a2 != 1)
    {
      goto LABEL_37;
    }

    *(a1 + 2960) = &qword_2A1A92FD0;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v8 = qword_2A1A92FD0;
    if (qword_2A1A92FD0)
    {
      v8 = 0;
      v9 = off_2A1A92FE0;
      do
      {
        ++v8;
        v10 = *v9;
        v9 += 2;
      }

      while (v10);
    }

LABEL_28:
    *(a1 + 2953) = v8;
    v15 = a1;
    v16 = 0;
    goto LABEL_29;
  }

  if (a2 == 3)
  {
LABEL_21:
    *(a1 + 2960) = &qword_2A1A93020;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v8 = qword_2A1A93020;
    if (qword_2A1A93020)
    {
      v8 = 0;
      v11 = off_2A1A93030;
      do
      {
        ++v8;
        v12 = *v11;
        v11 += 2;
      }

      while (v12);
    }

    goto LABEL_28;
  }

  if (a2 == 4)
  {
    *(a1 + 2960) = &qword_2A1A90BF8;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v8 = qword_2A1A90BF8;
    if (qword_2A1A90BF8)
    {
      v8 = 0;
      v13 = &qword_2A1A90C08;
      do
      {
        ++v8;
        v14 = *v13;
        v13 += 2;
      }

      while (v14);
    }

    goto LABEL_28;
  }

  if (a2 != 6)
  {
LABEL_37:
    v7 = 1;
    goto LABEL_38;
  }

  v7 = 0;
LABEL_38:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ProcessReDiscReq");
  return v7;
}

uint64_t sub_297EE4868(uint64_t a1, uint64_t a2)
{
  sub_297E687D8(2, a2, a1, 4, 4u, "phLibNfc_DelayDiscTimerCb");
  sub_297E4E1B4(2, a2, 4, 5u, "phLibNfc_DelayDiscTimerCb");
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
      if (v3)
      {
        break;
      }

      v3 = 1;
      v4 = 1;
    }

    while (v5 != a2);
    if (v5 == a2)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      sub_297E5588C(a2, 0, 0);
    }
  }

  return sub_297E4DFAC(2, a2, 4, 5u, "phLibNfc_DelayDiscTimerCb");
}

uint64_t sub_297EE4964(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendSelectCmd");
  if (!a1)
  {
    goto LABEL_4;
  }

  v2 = (a1 + 1504);
  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *v2 = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    v3 = 1;
    goto LABEL_5;
  }

  v5 = *v2;
  if (!*v2)
  {
    goto LABEL_4;
  }

  if (*(a1 + 1520))
  {
    v6 = (a1 + 1524);
  }

  else
  {
    v6 = (v5 + 12);
  }

  v3 = sub_297F065F8(*(a1 + 3088), v5, *v6, sub_297E5BA84, a1);
  if (v3 == 13)
  {
    *(a1 + 9776) = 1;
  }

LABEL_5:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendSelectCmd");
  return v3;
}

uint64_t sub_297EE4A38(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendSelectCmd1");
  if (!a1)
  {
    goto LABEL_4;
  }

  v2 = (a1 + 1504);
  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *v2 = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    v3 = 1;
    goto LABEL_5;
  }

  if (!*v2)
  {
    goto LABEL_4;
  }

  v3 = sub_297F065F8(*(a1 + 3088), *v2, *(*v2 + 12), sub_297E5BA84, a1);
  if (v3 == 13)
  {
    *(a1 + 9776) = 1;
  }

LABEL_5:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendSelectCmd1");
  return v3;
}

uint64_t sub_297EE4AF8(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SelectCmdResp");
  if (!a1 || a2)
  {
    v6 = "Discovery select command failed!";
    v8 = 2;
    v7 = a1;
LABEL_7:
    sub_297E4E0B0(v8, v7, 4, 1u, v6);
    a3 = 255;
    goto LABEL_8;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Discovery select command success");
  if (a3)
  {
    if (*(a1 + 1504) == a3)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Valid remoteDev Handle!!");
      a3 = 0;
      goto LABEL_8;
    }

    v6 = "Invalid remoteDev Handle!!";
    v7 = a1 + 9792;
    v8 = 1;
    goto LABEL_7;
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SelectCmdResp");
  return a3;
}

uint64_t sub_297EE4BF4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ReqInfoComplete");
  if (a1)
  {
    if (a2 != 10 && a2)
    {
      v4 = 208;
      v5 = 255;
    }

    else
    {
      v4 = *(a1 + 864);
      v5 = a2;
    }

    sub_297EE4C98(a1, v4, *(a1 + 856), a2);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ReqInfoComplete");
  return v5;
}

uint64_t sub_297EE4C98(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ProcessDevInfo");
  if (a4 > 0x37 || ((1 << a4) & 0x80010000000001) == 0)
  {
    sub_297EE4EEC(a1);
    goto LABEL_24;
  }

  v8 = sub_297E4F450(*(a1 + 9784), a2, 0, a3, 0);
  if (a4 == 55 || a4 == 40)
  {
    switch(v8)
    {
      case 0:
        sub_297E50EBC(1, a1 + 9792, 4, 4u, "State machine has returned NFCSTATUS_SUCCESS ");
        if (*(a1 + 764) == 16)
        {
          goto LABEL_17;
        }

LABEL_23:
        *(a1 + 764) = 16;
        goto LABEL_24;
      case 119:
        a4 = 119;
        sub_297E50EBC(1, a1 + 9792, 4, 4u, "State machine has returned NFCSTATUS_UNKNOWN_TAG_PROTOCOL ");
        break;
      case 111:
        a4 = 111;
        sub_297E50EBC(1, a1 + 9792, 4, 2u, "State machine has returned NFCSTATUS_BUSY ");
        break;
      default:
        a4 = 255;
        sub_297E50EBC(1, a1 + 9792, 4, 1u, "State machine has returned NFCSTATUS_FAILED ");
        break;
    }
  }

  if (*(a1 + 764) != 16)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_ProcessDevInfo: status returned is other than success wStatus");
  }

LABEL_17:
  if (!*(a1 + 762))
  {
    goto LABEL_24;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Invoking upper layer callback function ");
  v9 = *(a3 + 8);
  v10 = v9[3];
  if (v10 == 1)
  {
    if (v9[4] == 3 && v9[5] == 130)
    {
      goto LABEL_29;
    }
  }

  else if (v10 == 2 && v9[4] == 4 && (v9[5] & 0xFFFFFFFE) == 0x80)
  {
LABEL_29:
    *(a1 + 534) = 1;
  }

LABEL_24:

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ProcessDevInfo");
}

uint64_t sub_297EE4EEC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RestartDiscovery");
  *(a1 + 1032) = 0;
  sub_297E4F450(*(a1 + 9784), 109, 0, a1 + 1032, a1 + 1048);

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RestartDiscovery");
}

uint64_t sub_297EE4F6C(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RequestMoreInfo");
  v6 = *(a1 + 856);
  if ((a3 == 55 || a3 == 40) && *v6 == 1)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      if (*(v7 + 16) == 1 && !*(v7 + 46))
      {
        if ((sub_297EE1594(*(a1 + 9784)) == 109 || sub_297EE1594(*(a1 + 9784)) == 110) && (v8 = sub_297EE14CC(*(a1 + 9784)), v8 == 1))
        {
          sub_297E4E0B0(v8, a1 + 9792, 4, 1u, "phLibNfc_RequestMoreInfo : RID Sequence Dropped due to ongoing Discovery Sequence");
          a3 = 13;
        }

        else
        {
          *(a1 + 2960) = &qword_2A1A92D60;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v9 = qword_2A1A92D60;
          if (qword_2A1A92D60)
          {
            v9 = 0;
            v10 = off_2A1A92D70;
            do
            {
              ++v9;
              v11 = *v10;
              v10 += 2;
            }

            while (v11);
          }

          *(a1 + 2953) = v9;
          *(a1 + 864) = a2;
          *(a1 + 1529) = 0;
          a3 = sub_297E5588C(a1, 0, 0);
        }
      }
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RequestMoreInfo");
  return a3;
}

uint64_t sub_297EE50BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ParseDiscActivatedRemDevInfo");
  if (a1 && a3)
  {
    v6 = *(a3 + 20);
    if (v6 <= 111)
    {
      if (v6 <= 0xC)
      {
        if (((1 << v6) & 0x1C08) != 0)
        {
          goto LABEL_6;
        }

        if (((1 << v6) & 0x24) != 0)
        {
          if (*(a3 + 16) != 3)
          {
            goto LABEL_71;
          }

          *(a2 + 4) = 21;
LABEL_31:
          if (!sub_297EE5A14(a1, a2 + 8, a3))
          {
LABEL_74:
            v11 = 0;
            goto LABEL_75;
          }

          goto LABEL_71;
        }

        if (v6 == 6)
        {
          if (*(a3 + 16) == 6)
          {
            *(a2 + 4) = 23;
            if (!sub_297E775A0(a1, a2 + 8, a3 + 36))
            {
              goto LABEL_74;
            }
          }

          goto LABEL_71;
        }
      }

      if (v6)
      {
        if (v6 == 1)
        {
          if (*(a3 + 4) == 25)
          {
            *(a2 + 4) = 18;
            if (*(a3 + 12) == 1 && *(a1 + 1470) == 1)
            {
              *(a1 + 1471) = 1;
            }
          }

          else if (*(a3 + 16) == 4)
          {
            v13 = *(a3 + 12);
            if (v13 == 131 || v13 == 2)
            {
              *(a2 + 4) = 19;
            }
          }

          goto LABEL_67;
        }

        goto LABEL_56;
      }

LABEL_6:
      v7 = *(a3 + 16);
      if (v7 > 4)
      {
        if (v7 == 5)
        {
          *(a2 + 4) = 26;
          if (!sub_297ED5D54(a1, a2 + 8, a3 + 36, v6))
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

        if (v7 == 138)
        {
          *(a2 + 4) = 25;
          sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapRemoteDevKovio");
          v15 = *(a3 + 36);
          *(a2 + 8) = v15;
          if (v15 == 16)
          {
            phOsalNfc_MemCopy();
          }

          else
          {
            sub_297E4E0B0(2, a1, 4, 1u, "Invalid TagID: TagID < 16 Bytes");
          }

          sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapRemoteDevKovio");
          goto LABEL_74;
        }

        if (v7 != 128)
        {
LABEL_71:
          *(a2 + 4) = 28;
          v11 = 255;
          goto LABEL_75;
        }
      }

      else
      {
        if (v7 == 1)
        {
          *(a2 + 4) = 22;
          sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapRemoteDevAJewel");
          v16 = *(a3 + 43);
          if (BYTE3(v16) > 0xAu)
          {
            sub_297E4E0B0(2, a1, 4, 1u, "Received UID length exceeded max UID length");
          }

          else
          {
            *(a2 + 18) = BYTE3(v16);
            phOsalNfc_MemCopy();
          }

          *(a2 + 19) = *(a3 + 49);
          *(a2 + 20) = *(a3 + 50);
          sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapRemoteDevAJewel");
          if (BYTE3(v16) < 0xBu)
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

        if (v7 != 2)
        {
          if (v7 == 4)
          {
            v8 = *(a3 + 4);
            v9 = v8 & 0xFFFFFFFC;
            v10 = v8 + 8;
            if (v9 != 4)
            {
              v10 = 11;
            }

            *(a2 + 4) = v10;
            if (*(a3 + 12) == 1 && *(a1 + 1470) == 1)
            {
              *(a1 + 1471) = 1;
            }

LABEL_40:
            if (!sub_297EE5590(a1, a2, a3))
            {
              goto LABEL_74;
            }

            goto LABEL_71;
          }

          goto LABEL_71;
        }
      }

      if (*(a3 + 4) == 4)
      {
        v12 = 12;
      }

      else
      {
        v12 = 16;
      }

      *(a2 + 4) = v12;
      goto LABEL_40;
    }

    if (v6 <= 129)
    {
      if (v6 == 112)
      {
        goto LABEL_6;
      }

      if (v6 != 128)
      {
        if (v6 == 129)
        {
          if (*(a3 + 16) != 4)
          {
            goto LABEL_71;
          }

          *(a2 + 4) = 2;
          if (sub_297EA0D54(a1) != 13)
          {
            goto LABEL_71;
          }

LABEL_67:
          if (!sub_297EE5854(a1, (a2 + 8), a3))
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

        goto LABEL_56;
      }

LABEL_42:
      if (*(a3 + 16) == 4)
      {
        *(a2 + 4) = 1;
        if (sub_297EA0D54(a1) == 13 && !sub_297EA0DDC(a1, (a2 + 8), a3))
        {
          goto LABEL_74;
        }
      }

      goto LABEL_71;
    }

    if (v6 != 130)
    {
      if (v6 == 131)
      {
        goto LABEL_42;
      }

      if (v6 != 133)
      {
LABEL_56:
        v11 = 0;
        *(a2 + 4) = 28;
        goto LABEL_75;
      }
    }

    if (*(a3 + 16) != 3)
    {
      goto LABEL_71;
    }

    *(a2 + 4) = 4;
    if (sub_297EA0D54(a1) != 13)
    {
      goto LABEL_71;
    }

    goto LABEL_31;
  }

  v11 = 1;
  sub_297E4E0B0(2, a1, 4, 1u, "Invalid Input info!");
LABEL_75:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ParseDiscActivatedRemDevInfo");
  return v11;
}

uint64_t sub_297EE5590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  memset(v18, 0, 26);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapRemoteDevA");
  if (!a2)
  {
    v6 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid input parameter!");
    goto LABEL_20;
  }

  if (sub_297EE5B30(a1, *(a3 + 32), &v13))
  {
    v6 = 255;
    goto LABEL_20;
  }

  *(a2 + 71) = v13;
  v7 = *(a3 + 100);
  v8 = *(a3 + 68);
  v17 = *(a3 + 84);
  v18[0] = v7;
  *(v18 + 10) = *(a3 + 110);
  v9 = *(a3 + 52);
  v14 = *(a3 + 36);
  v15 = v9;
  v16 = v8;
  if (BYTE3(v7))
  {
    *(a2 + 68) = BYTE12(v17);
  }

  v10 = BYTE10(v14);
  *(a2 + 18) = BYTE10(v14);
  if (!v10)
  {
    goto LABEL_10;
  }

  if (v10 <= 0xA)
  {
    phOsalNfc_MemCopy();
LABEL_10:
    v6 = 0;
    goto LABEL_12;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Received UID length exceeded max UID length");
  v6 = 255;
LABEL_12:
  if (BYTE4(v18[0]) - 2 <= 0x32)
  {
    v11 = BYTE9(v18[1]);
    *(a2 + 67) = BYTE9(v18[1]);
    if (v11)
    {
      if (v11 > 0x30)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Received AppData length exceeded max ATR length");
        v6 = 255;
      }

      else
      {
        phOsalNfc_MemCopy();
      }
    }
  }

  *(a2 + 72) = v18[0];
  *(a2 + 69) = *(v18 + 1);
  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Check for MergeSak");
  if ((BYTE12(v17) & 0xF7) == 0x60)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "MergeSak detected, update remote device detected to P2P Target");
    *(a2 + 4) = 26;
    *(a2 + 67) = 0;
    *(a2 + 72) = 0;
    *(a2 + 18) = 0;
    *(a2 + 71) = ((*(a3 + 20) - 3) & 0xFFFFFF7D) == 0;
    *(a2 + 76) = 0;
    *(a2 + 68) = 64;
    *(a3 + 12) = 0x500000003;
    *(a3 + 4) = 23;
    *(a1 + 1490) = 1;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "MergeSak not found");
  }

LABEL_20:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapRemoteDevA");
  return v6;
}

uint64_t sub_297EE5854(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  memset(v18, 0, 30);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapRemoteDevB");
  if (a2)
  {
    if (sub_297EE5B30(a1, *(a3 + 32), &v12))
    {
      v6 = 255;
    }

    else
    {
      a2[63] = v12;
      v7 = *(a3 + 84);
      v8 = *(a3 + 116);
      v17 = *(a3 + 100);
      v18[0] = v8;
      *(v18 + 14) = *(a3 + 130);
      v9 = *(a3 + 52);
      v13 = *(a3 + 36);
      v14 = v9;
      v15 = *(a3 + 68);
      v16 = v7;
      a2[62] = BYTE12(v7);
      phOsalNfc_MemCopy();
      phOsalNfc_MemCopy();
      phOsalNfc_MemCopy();
      v10 = BYTE14(v16);
      if (BYTE14(v16) == 12)
      {
        a2[11] = (BYTE10(v17) >> 4) | (16 * BYTE10(v17));
      }

      a2[12] = v10;
      a2[61] = BYTE11(v16);
      phOsalNfc_MemCopy();
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid input parameter!");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapRemoteDevB");
  return v6;
}

uint64_t sub_297EE5A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapRemoteDevFelica");
  if (a2)
  {
    *(a2 + 10) = 8;
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    v5 = 0;
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapRemoteDevFelica");
  return v5;
}

uint64_t sub_297EE5B30(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapBitRate");
  if (a3)
  {
    v6 = 0;
    if (a2 <= 5)
    {
      *a3 = a2;
    }
  }

  else
  {
    v6 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapBitRate");
  return v6;
}

uint64_t sub_297EE5BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VerifyResponse");
  if (a1)
  {
    v6 = 1;
    if (a2 && a3)
    {
      if ((*(a3 + 4) & 0xFFFFFFFE) == 0x12)
      {
        if (*(a2 + 8))
        {
          v6 = 0;
        }

        else
        {
          v6 = 44;
        }
      }

      else if ((*(a1 + 1529) | 2) == 0xA2)
      {
        v7 = *a2;
        if (*a2 && *v7 == 10 && *(a2 + 8) == 1)
        {
          v6 = 0;
          *(a2 + 8) = 0;
          *v7 = 0;
        }

        else
        {
          v6 = 255;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    *(a1 + 1529) = -1;
  }

  else
  {
    v6 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VerifyResponse");
  return v6;
}

uint64_t sub_297EE5CBC(uint64_t a1, uint64_t a2, char *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ReActivateComplete");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "Lower layer has returned Null LibNfc context");
    goto LABEL_11;
  }

  *(a1 + 1520) = 0;
  if (!a3 || a2 - 81 <= 0x3E && ((1 << (a2 - 81)) & 0x4000010000000001) != 0)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(a1 + 1531) = 0;
    goto LABEL_11;
  }

  if (a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ReActivateComplete: Lower layer has returned failure status");
    a2 = 255;
    goto LABEL_6;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Lower layer has returned NFCSTATUS_SUCCESS");
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_6:
  *(a1 + 1531) = 1;
LABEL_11:
  sub_297ECE0E4(a1, a2, a3);
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ReActivateComplete");
  return a2;
}

uint64_t sub_297EE5DF4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_StateDiscoveredEntry");
  if (!a1 || !*(a1 + 762))
  {
    goto LABEL_22;
  }

  v2 = *(a1 + 856);
  *(a1 + 765) = 3;
  if (*(a1 + 1400))
  {
    phOsalNfc_FreeMemory();
    *(a1 + 1504) = 0;
    *(a1 + 765) = 3;
  }

  Memory_Typed = phOsalNfc_GetMemory_Typed();
  *(a1 + 1400) = Memory_Typed;
  if (!Memory_Typed)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to allocate memory, Insufficient Resources");
    v6 = 12;
    goto LABEL_23;
  }

  phOsalNfc_SetMemory();
  if (v2 && (v4 = *(a1 + 762), *(a1 + 762)))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v2 + 2;
    do
    {
      v9 = *v2;
      if (*v2)
      {
        v10 = 0;
        while (1)
        {
          v11 = *&v8[2 * v10];
          if (*(a1 + 776 + 8 * v5) == v11)
          {
            break;
          }

          if (v9 <= ++v10)
          {
            goto LABEL_20;
          }
        }

        if (v9 == 1)
        {
          *(a1 + 1512) = v11;
        }

        v12 = *(a1 + 1400) + 80 * v7;
        *(a1 + 872 + 16 * v7) = vdupq_n_s64(v12);
        v13 = (a1 + 1240 + 16 * v7);
        *v13 = v12;
        v14 = *&v8[2 * v10];
        v13[1] = v14;
        *(a1 + 1490) = 0;
        if (sub_297EE50BC(a1, v12, v14))
        {
          v6 = 255;
        }

        else
        {
          ++v7;
          v6 = 0;
        }

        v4 = *(a1 + 762);
      }

LABEL_20:
      ++v5;
    }

    while (v5 < v4);
  }

  else
  {
LABEL_22:
    v6 = 0;
  }

LABEL_23:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_StateDiscoveredEntry");
  return v6;
}

uint64_t sub_297EE5FD4(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 20);
    if (v5 <= 0xC && ((1 << v5) & 0x1C6F) != 0)
    {
      goto LABEL_8;
    }

    v7 = v5 - 112;
    if (v7 <= 0x15)
    {
      v8 = 1 << v7;
      if ((v8 & 0x2F0000) != 0)
      {
        *a2 = 0;
        if (*(a1 + 12) == 3)
        {
          result = 0;
          *a3 = 0;
        }

        else
        {
          result = 0;
          *a3 = 1;
        }
      }

      else if ((v8 & 5) != 0)
      {
LABEL_8:
        *a2 = 1;
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_297EE6074(uint64_t a1)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
  if (!a1)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 6184))
  {
    goto LABEL_88;
  }

  if (*(a1 + 6200))
  {
    v2 = *(a1 + 6208);
    sub_297E4D930(1, a1 + 9792, 4, 15, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
    v3 = *(a1 + 6200);
LABEL_5:
    v4 = *(a1 + 9784);
    v5 = v2;
LABEL_6:
    v3(v4, v5, 0, 0, 145);
    goto LABEL_21;
  }

  if (*(a1 + 6264))
  {
    v6 = *(a1 + 6272);
    sub_297E4D930(1, a1 + 9792, 4, 130, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
    v7 = *(a1 + 6264);
LABEL_10:
    v8 = *(a1 + 9784);
    v9 = v6;
LABEL_11:
    v7(v8, v9, 0, 145);
    goto LABEL_21;
  }

  if (!*(a1 + 6296))
  {
    if (*(a1 + 6472))
    {
      v10 = *(a1 + 6480);
      sub_297E4D930(1, a1 + 9792, 4, 22, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      v11 = *(a1 + 6472);
      goto LABEL_19;
    }

    if (*(a1 + 6488))
    {
      v10 = *(a1 + 6496);
      sub_297E4D930(1, a1 + 9792, 4, 35, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      v11 = *(a1 + 6488);
      goto LABEL_19;
    }

    if (*(a1 + 6232))
    {
      v2 = *(a1 + 6240);
      sub_297E4D930(1, a1 + 9792, 4, 17, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      v3 = *(a1 + 6232);
      goto LABEL_5;
    }

    if (*(a1 + 6216))
    {
      v2 = *(a1 + 6224);
      sub_297E4D930(1, a1 + 9792, 4, 16, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      v3 = *(a1 + 6216);
      goto LABEL_5;
    }

    if (*(a1 + 6808))
    {
      v10 = *(a1 + 6816);
      sub_297E4D930(1, a1 + 9792, 4, 136, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      v11 = *(a1 + 6808);
      goto LABEL_19;
    }

    if (*(a1 + 6680))
    {
      v15 = *(a1 + 6688);
      sub_297E4D930(1, a1 + 9792, 4, 134, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6680))(*(a1 + 9784), v15, **(a1 + 560), 127, 145);
      goto LABEL_21;
    }

    if (*(a1 + 6536))
    {
      v16 = (a1 + 6536);
      sub_297E4D930(1, a1 + 9792, 4, 126, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6536))(*(a1 + 9784), *(a1 + 6544), 0, 145);
LABEL_42:
      v14 = 0;
      *v16 = 0;
      v16[1] = 0;
      goto LABEL_89;
    }

    if (*(a1 + 6584))
    {
      v16 = (a1 + 6584);
      sub_297E4D930(1, a1 + 9792, 4, 44, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6584))(*(a1 + 9784), *(a1 + 6592), 145);
      goto LABEL_42;
    }

    if (*(a1 + 6152))
    {
      v16 = (a1 + 6152);
      sub_297E4D930(1, a1 + 9792, 4, 40, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6152))(*(a1 + 9784), *(a1 + 6160), 145);
      goto LABEL_42;
    }

    if (*(a1 + 6600))
    {
      v16 = (a1 + 6600);
      sub_297E4D930(1, a1 + 9792, 4, 46, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6600))(*(a1 + 9784), *(a1 + 6608), 145);
      goto LABEL_42;
    }

    if (*(a1 + 6616))
    {
      v16 = (a1 + 6616);
      sub_297E4D930(1, a1 + 9792, 4, 47, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6616))(*(a1 + 9784), *(a1 + 6624), 145);
      goto LABEL_42;
    }

    if (*(a1 + 6552))
    {
      v16 = (a1 + 6552);
      sub_297E4D930(1, a1 + 9792, 4, 4, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6552))(*(a1 + 9784), *(a1 + 6560), 145);
      goto LABEL_42;
    }

    if (*(a1 + 6344))
    {
      v16 = (a1 + 6344);
      sub_297E4D930(1, a1 + 9792, 4, 124, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6344))(*(a1 + 9784), *(a1 + 6352), 0, 0, 255, 145);
      goto LABEL_42;
    }

    if (*(a1 + 6360))
    {
      v16 = (a1 + 6360);
      sub_297E4D930(1, a1 + 9792, 4, 125, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6360))(*(a1 + 9784), *(a1 + 6368), 0, 0, 145);
      goto LABEL_42;
    }

    if (*(a1 + 6392))
    {
      v16 = (a1 + 6392);
      sub_297E54734(1, a1 + 9792, 4, 4u, "CntDiscntDisvrychkprsn_Cb :WTX Event Callback");
      (*(a1 + 6392))(*(a1 + 9784), *(a1 + 6400), 0, 0, 145);
      goto LABEL_42;
    }

    if (*(a1 + 6504))
    {
      sub_297E4D930(1, a1 + 9792, 4, 38, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6504))(*(a1 + 9784), *(a1 + 6512), 145);
      v14 = 0;
      *(a1 + 6392) = 0;
      *(a1 + 6512) = 0;
      goto LABEL_89;
    }

    if (*(a1 + 6088))
    {
      sub_297E4D930(1, a1 + 9792, 4, 45, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      v7 = *(a1 + 6088);
      v8 = *(a1 + 9784);
      v9 = *(a1 + 6096);
      goto LABEL_11;
    }

    if (*(a1 + 6136))
    {
      sub_297E4D930(1, a1 + 9792, 4, 41, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6136))(*(a1 + 9784), *(a1 + 6144), 145);
      goto LABEL_21;
    }

    v11 = *(a1 + 6168);
    if (v11)
    {
      v12 = *(a1 + 9784);
      v13 = *(a1 + 6176);
      goto LABEL_20;
    }

    if (*(a1 + 6312))
    {
      sub_297E4D930(1, a1 + 9792, 4, 23, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6312))(*(a1 + 9784), *(a1 + 6320), 0, 0, 145);
      goto LABEL_21;
    }

    if (*(a1 + 6328))
    {
      sub_297E4D930(1, a1 + 9792, 4, 17, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6328))(*(a1 + 9784), *(a1 + 6240), 0, 0, 145);
      goto LABEL_21;
    }

    v3 = *(a1 + 6376);
    if (v3)
    {
      v4 = *(a1 + 9784);
      v5 = *(a1 + 6384);
      goto LABEL_6;
    }

    if (*(a1 + 6408))
    {
      sub_297E4D930(1, a1 + 9792, 4, 24, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6408))(*(a1 + 9784), *(a1 + 6416), 145);
      goto LABEL_21;
    }

    if (*(a1 + 6424))
    {
      sub_297E4D930(1, a1 + 9792, 4, 25, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6424))(*(a1 + 9784), *(a1 + 6432), 145);
      goto LABEL_21;
    }

    if (*(a1 + 6440))
    {
      *(a1 + 9796) = 0;
      sub_297E4D930(1, a1 + 9792, 4, 27, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6440))(*(a1 + 9784), *(a1 + 6448), 145);
      goto LABEL_21;
    }

    if (*(a1 + 6824))
    {
      sub_297E4D930(1, a1 + 9792, 4, 26, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6824))(*(a1 + 9784), *(a1 + 6832), 145);
      goto LABEL_21;
    }

    if (*(a1 + 6520))
    {
      sub_297E4D930(1, a1 + 9792, 4, 7, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6520))(*(a1 + 9784), *(a1 + 6528), 145, 0);
      goto LABEL_21;
    }

    if (*(a1 + 6632))
    {
      sub_297E4D930(1, a1 + 9792, 4, 5, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6632))(*(a1 + 9784), *(a1 + 6640), 145);
      goto LABEL_21;
    }

    if (*(a1 + 6648))
    {
      sub_297E4D930(1, a1 + 9792, 4, 48, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6648))(*(a1 + 9784), *(a1 + 6656), 145);
      goto LABEL_21;
    }

    if (*(a1 + 6664))
    {
      sub_297E4D930(1, a1 + 9792, 4, 49, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6664))(*(a1 + 9784), *(a1 + 6672), 145);
      goto LABEL_21;
    }

    if (*(a1 + 6760))
    {
      v6 = *(a1 + 6768);
      sub_297E4D930(1, a1 + 9792, 4, 131, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      v7 = *(a1 + 6760);
      goto LABEL_10;
    }

    if (*(a1 + 6776))
    {
      v10 = *(a1 + 6784);
      sub_297E4D930(1, a1 + 9792, 4, 132, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      v11 = *(a1 + 6776);
      goto LABEL_19;
    }

    if (*(a1 + 6792))
    {
      v6 = *(a1 + 6800);
      sub_297E4D930(1, a1 + 9792, 4, 42, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      v7 = *(a1 + 6792);
      goto LABEL_10;
    }

    if (*(a1 + 6840))
    {
      phOsalNfc_SetMemory();
      v17 = *(a1 + 6848);
      sub_297E4D930(1, a1 + 9792, 4, 67, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
      (*(a1 + 6840))(*(a1 + 9784), v17, v19, 145);
      goto LABEL_21;
    }

LABEL_88:
    v14 = 255;
    goto LABEL_89;
  }

  v10 = *(a1 + 6304);
  sub_297E4D930(1, a1 + 9792, 4, 114, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
  v11 = *(a1 + 6296);
LABEL_19:
  v12 = *(a1 + 9784);
  v13 = v10;
LABEL_20:
  v11(v12, v13, 145);
LABEL_21:
  v14 = 0;
LABEL_89:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Pending_CntDiscntDisvrychkprsn_Cb");
  return v14;
}