__n128 sub_BDC6D4(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, void *a5)
{
  v10 = sub_BDC3A0(a5, a2, a1);
  v11 = sub_BDC3A0(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if (sub_BDC3A0(a5, a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (sub_BDC3A0(a5, a2, a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if (sub_BDC3A0(a5, a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if (sub_BDC3A0(a5, a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if (sub_BDC3A0(a5, a2, a1))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL sub_BDC830(unsigned int *a1, unsigned int *a2, void *a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 4;
        v12 = sub_BDC3A0(a3, a1 + 4, a1);
        v13 = sub_BDC3A0(a3, v7, a1 + 4);
        if (v12)
        {
          if (!v13)
          {
            v26 = *a1;
            *a1 = *(a1 + 1);
            *(a1 + 1) = v26;
            if (sub_BDC3A0(a3, v7, a1 + 4))
            {
              v27 = *(a1 + 1);
              *(a1 + 1) = *v7;
              *v7 = v27;
            }

            return 1;
          }

LABEL_15:
          v14 = *a1;
          *a1 = *v7;
          *v7 = v14;
          return 1;
        }

        if (!v13)
        {
          return 1;
        }

        v21 = *(a1 + 1);
        *(a1 + 1) = *v7;
        *v7 = v21;
        break;
      case 4:
        sub_BDC6D4(a1, a1 + 4, a1 + 8, a2 - 4, a3);
        return 1;
      case 5:
        v8 = a2 - 4;
        sub_BDC6D4(a1, a1 + 4, a1 + 8, a1 + 12, a3);
        if (!sub_BDC3A0(a3, v8, a1 + 12))
        {
          return 1;
        }

        v9 = *(a1 + 3);
        *(a1 + 3) = *v8;
        *v8 = v9;
        if (!sub_BDC3A0(a3, a1 + 12, a1 + 8))
        {
          return 1;
        }

        v10 = *(a1 + 2);
        *(a1 + 2) = *(a1 + 3);
        *(a1 + 3) = v10;
        if (!sub_BDC3A0(a3, a1 + 8, a1 + 4))
        {
          return 1;
        }

        v11 = *(a1 + 1);
        *(a1 + 1) = *(a1 + 2);
        *(a1 + 2) = v11;
        break;
      default:
        goto LABEL_16;
    }

    if (sub_BDC3A0(a3, a1 + 4, a1))
    {
      v22 = *a1;
      *a1 = *(a1 + 1);
      *(a1 + 1) = v22;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 4;
    if (!sub_BDC3A0(a3, a2 - 4, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_16:
  v16 = sub_BDC3A0(a3, a1 + 4, a1);
  v17 = a1 + 8;
  v15 = a1 + 8;
  v18 = sub_BDC3A0(a3, a1 + 8, a1 + 4);
  if (v16)
  {
    if (v18)
    {
      v19 = *a1;
      v20 = a1 + 8;
      *a1 = *v15;
      *v15 = v19;
    }

    else
    {
      v28 = *a1;
      *a1 = *(a1 + 1);
      *(a1 + 1) = v28;
      v29 = sub_BDC3A0(a3, a1 + 8, a1 + 4);
      v20 = a1 + 8;
      if (v29)
      {
        v30 = *(a1 + 1);
        *(a1 + 1) = *v17;
        *v17 = v30;
      }
    }
  }

  else
  {
    v20 = a1 + 8;
    if (v18)
    {
      v23 = *(a1 + 1);
      *(a1 + 1) = *v17;
      *v17 = v23;
      v24 = sub_BDC3A0(a3, a1 + 4, a1);
      v20 = a1 + 8;
      if (v24)
      {
        v25 = *a1;
        *a1 = *(a1 + 1);
        *(a1 + 1) = v25;
      }
    }
  }

  v31 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (!sub_BDC3A0(a3, v31, v20))
  {
LABEL_40:
    v20 = v31;
    v32 += 16;
    v31 += 4;
    if (v31 == a2)
    {
      return 1;
    }
  }

  v37[0] = *v31;
  v34 = v32;
  do
  {
    v35 = (a1 + v34);
    *(a1 + v34 + 48) = *(a1 + v34 + 32);
    if (v34 == -32)
    {
      *a1 = v37[0];
      if (++v33 != 8)
      {
        goto LABEL_40;
      }

      return v31 + 4 == a2;
    }

    v34 -= 16;
  }

  while (sub_BDC3A0(a3, v37, v35 + 4));
  *(a1 + v34 + 48) = v37[0];
  if (++v33 != 8)
  {
    goto LABEL_40;
  }

  return v31 + 4 == a2;
}

unint64_t sub_BDCB7C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = a2 + 248 * a4;
  v7 = *(v6 + 172);
  v8 = sub_A57920((*(a3 + 24) + 4136), *(v6 + 152));
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 < 5)
  {
    v11 = 0;
    goto LABEL_6;
  }

  if (!v9[2])
  {
    v11 = 0;
    if (v10 >= 9)
    {
      goto LABEL_33;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v11 = v8 + v9[2] + *(v8 + v9[2]);
  if (v10 < 9)
  {
    goto LABEL_6;
  }

LABEL_33:
  v30 = v9[4];
  if (!v30)
  {
    goto LABEL_6;
  }

  v12 = (v8 + v30 + *(v8 + v30));
LABEL_7:
  v13 = *&v11[8 * *(sub_A571D4(v12, v7) + 14) + 4];
  v14 = *(a3 + 24);
  v15 = sub_BD5F34((v14 + 4136), *(v6 + 152), *(v6 + 172));
  if (HIDWORD(v15))
  {
    v16 = v15 == 0xFFFFFFFFLL;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    goto LABEL_12;
  }

  v20 = sub_BCAC94(*(v14 + 4136) + 24, v15, 0, "routing direction name");
  v21 = (v20 - *v20);
  if (*v21 < 5u)
  {
    LODWORD(v22) = 0;
  }

  else
  {
    v22 = v21[2];
    if (v22)
    {
      LODWORD(v22) = *(v20 + v22);
      if (v22 == -1)
      {
LABEL_12:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        goto LABEL_19;
      }
    }
  }

  v19 = v22 & 0xFFFFFF00;
  v17 = v22;
  v18 = 0x100000000;
LABEL_19:
  v23 = *(a3 + 24);
  result = sub_BD5DA0((v23 + 4136), *(v6 + 152), *(v6 + 172));
  if (HIDWORD(result))
  {
    v25 = result == 0xFFFFFFFFLL;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    goto LABEL_24;
  }

  result = sub_BCAE50(*(v23 + 4136) + 24, result, 0, "routing headsign");
  v29 = (result - *result);
  if (*v29 < 5u)
  {
    LODWORD(v26) = 0;
LABEL_30:
    v28 = v26 & 0xFFFFFF00;
    LODWORD(v26) = v26;
    v27 = 0x100000000;
    goto LABEL_31;
  }

  v26 = v29[2];
  if (!v26)
  {
    goto LABEL_30;
  }

  LODWORD(v26) = *(result + v26);
  if (v26 != -1)
  {
    goto LABEL_30;
  }

LABEL_24:
  LODWORD(v26) = 0;
  v27 = 0;
  v28 = 0;
LABEL_31:
  *a1 = __ROR8__(v13, 32);
  a1[1] = v18 | v19 | v17;
  a1[2] = v27 | v28 | v26;
  return result;
}

void sub_BDD4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_11BD8(v20);
  _Unwind_Resume(a1);
}

BOOL sub_BDD578(_BOOL8 result, int *a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v4 = *(a3 + 56);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      result = sub_BDD8BC(v6, a2, v3);
      v3 += 248;
    }

    while (v3 != v4);
  }

  return result;
}

unint64_t sub_BDD5CC(unint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v2 != v3)
  {
    v5 = result;
    do
    {
      result = sub_BDE0B4(v5, a2, v2);
      v2 += 160;
    }

    while (v2 != v3);
  }

  return result;
}

unint64_t sub_BDD620(unint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = result;
    v6 = vneg_f32(0x100000001);
    do
    {
      v7 = *(v2 + 80);
      v8 = *(v2 + 88);
      while (v7 != v8)
      {
        v15 = *(v7 + 80);
        v16 = *(v7 + 88);
        if (v15 != v16)
        {
          if (*(v5 + 1) == 1)
          {
            v17 = (v15 + 4);
            if (v15 + 4 != v16)
            {
              do
              {
                if (*(v15 + 1) < v17[1])
                {
                  v15 = v17;
                }

                v17 += 2;
              }

              while (v17 != v16);
            }

            v16 = v15 + 4;
          }

          if (v15 == v16)
          {
            v9 = 0;
            v10 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
            v11 = -1.79769313e308;
            v12 = v10;
            v13 = v10;
            v14 = v6;
          }

          else
          {
            v18 = 0;
            v10 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
            v11 = -1.79769313e308;
            v12 = v10;
            v13 = v10;
            v14 = v6;
            do
            {
              v20 = v13;
              v21 = v12;
              v22 = v10;
              v19 = *v15;
              v15 += 4;
              result = sub_A5C314(a2 + 3, v19);
              v10 = vbslq_s8(vcgtq_f64(*(result + 16), v22), *(result + 16), v22);
              v18 |= *result;
              v14 = vmin_s32(*(result + 4), v14);
              v12 = vbslq_s8(vcgtq_f64(*(result + 32), v21), *(result + 32), v21);
              v13 = vbslq_s8(vcgtq_f64(*(result + 48), v20), *(result + 48), v20);
              if (v11 < *(result + 64))
              {
                v11 = *(result + 64);
              }
            }

            while (v15 != v16);
            v9 = v18 & 1;
          }

          *v7 = v9;
          *(v7 + 4) = v14;
          *(v7 + 16) = v10;
          *(v7 + 32) = v12;
          *(v7 + 48) = v13;
          *(v7 + 64) = v11;
        }

        v7 += 112;
      }

      v2 += 112;
    }

    while (v2 != v3);
  }

  return result;
}

_BYTE *sub_BDD7B0(_BYTE *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = vneg_f32(0x100000001);
    do
    {
      v11 = *(v2 + 80);
      v12 = *(v2 + 88);
      if (v11 != v12)
      {
        if (*result == 1)
        {
          for (i = v11 + 112; i != v12; i += 112)
          {
            if (*(v11 + 72) < *(i + 72))
            {
              v11 = i;
            }
          }

          v12 = v11 + 112;
        }

        if (v11 == v12)
        {
          v5 = 0;
          v6 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
          v7 = -1.79769313e308;
          v8 = v6;
          v9 = v6;
          v10 = v4;
        }

        else
        {
          v14 = 0;
          v6 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
          v7 = -1.79769313e308;
          v8 = v6;
          v9 = v6;
          v10 = v4;
          do
          {
            v6 = vbslq_s8(vcgtq_f64(*(v11 + 16), v6), *(v11 + 16), v6);
            v14 |= *v11;
            v10 = vmin_s32(*(v11 + 4), v10);
            v8 = vbslq_s8(vcgtq_f64(*(v11 + 32), v8), *(v11 + 32), v8);
            v9 = vbslq_s8(vcgtq_f64(*(v11 + 48), v9), *(v11 + 48), v9);
            if (v7 < *(v11 + 64))
            {
              v7 = *(v11 + 64);
            }

            v11 += 112;
          }

          while (v11 != v12);
          v5 = v14 & 1;
        }

        *v2 = v5;
        *(v2 + 4) = v10;
        *(v2 + 16) = v6;
        *(v2 + 32) = v8;
        *(v2 + 48) = v9;
        *(v2 + 64) = v7;
      }

      v2 += 112;
    }

    while (v2 != v3);
  }

  return result;
}

BOOL sub_BDD8BC(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a3 + 172);
  v7 = sub_A57920((*(a1 + 104) + 4136), *(a3 + 152));
  v8 = (v7 - *v7);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v11 = __ROR8__(*sub_A571D4(v10, v6), 32);
  v83[0] = 0x1FFFFFFFELL;
  v83[1] = v11;
  if (!sub_A5436C(*(a1 + 112), v83))
  {
    LODWORD(v17) = 0;
    LODWORD(v13) = 0;
    v16 = 0;
LABEL_15:
    v15 = v13 + v17 + v16;
LABEL_16:
    v14 = v13;
    goto LABEL_17;
  }

  v12 = sub_A5436C(*(a1 + 112), v83);
  if (!v12)
  {
    goto LABEL_90;
  }

  v13 = v12[4];
  v14 = 0x7FFFFFFF;
  v15 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v16 = *(v12 + 10);
    v17 = HIDWORD(v13);
    v15 = 0x7FFFFFFF;
    if (HIDWORD(v13) == 0x7FFFFFFF || v16 == 0x7FFFFFFF)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  *(a3 + 4) = v15;
  *(a3 + 8) = v14;
  v19 = __ROR8__(v11, 32);
  v20 = sub_502FF8(*(*(a1 + 104) + 4120) + 24, v19, 0, "stop");
  v21 = (v20 - *v20);
  if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
  {
    v23 = *(v20 + v22 + 4) | (*(v20 + v22) << 32);
  }

  else
  {
    v23 = 0xFFFFFFFFLL;
  }

  v24 = *(a3 + 172);
  v25 = sub_A57920((*(a1 + 104) + 4136), *(a3 + 152));
  v26 = (v25 - *v25);
  v27 = *v26;
  if (v27 < 5)
  {
    v28 = 0;
    goto LABEL_26;
  }

  if (!v26[2])
  {
    v28 = 0;
    if (v27 >= 9)
    {
      goto LABEL_88;
    }

LABEL_26:
    v29 = 0;
    goto LABEL_27;
  }

  v28 = v25 + v26[2] + *(v25 + v26[2]);
  if (v27 < 9)
  {
    goto LABEL_26;
  }

LABEL_88:
  v80 = v26[4];
  if (!v80)
  {
    goto LABEL_26;
  }

  v29 = (v25 + v80 + *(v25 + v80));
LABEL_27:
  v30 = *&v28[8 * *(sub_A571D4(v29, v24) + 14) + 4];
  v31 = sub_92FC60(*(*(a1 + 104) + 4056) + 24, v30, 0, "line");
  v32 = (v31 - *v31);
  if (*v32 >= 7u && (v33 = v32[3]) != 0)
  {
    v34 = *(v31 + v33 + 4) | (*(v31 + v33) << 32);
  }

  else
  {
    v34 = 0xFFFFFFFFLL;
  }

  v35 = __ROR8__(v34, 32);
  v36 = sub_93E04C(*(*(a1 + 104) + 4144) + 24, v35, 0, "system");
  v37 = (v36 - *v36);
  v38 = 0.0;
  v39 = 0.0;
  if (*v37 >= 0x21u)
  {
    v40 = v37[16];
    if (v40)
    {
      v41 = (v36 + v40 + *(v36 + v40));
      v42 = (v41 - *v41);
      if (*v42 >= 5u)
      {
        v43 = v42[2];
        if (v43)
        {
          v39 = *(v41 + v43);
        }
      }
    }
  }

  if (*(a1 + 32) >= v39)
  {
    v39 = *(a1 + 32);
  }

  *(a3 + 16) = v39;
  *(a3 + 24) = log(v39 + 1.0);
  v44 = sub_92FC60(*(*(a1 + 104) + 4056) + 24, v30, 0, "line");
  v45 = (v44 - *v44);
  if (*v45 >= 0x47u)
  {
    v46 = v45[35];
    if (v46)
    {
      v47 = (v44 + v46 + *(v44 + v46));
      v48 = (v47 - *v47);
      if (*v48 >= 5u)
      {
        v49 = v48[2];
        if (v49)
        {
          v38 = *(v47 + v49);
        }
      }
    }
  }

  v50 = *(a1 + 24);
  if (v50 < v38)
  {
    v50 = v38;
  }

  *(a3 + 32) = v50;
  *(a3 + 40) = log(v50 + 1.0);
  if (v23 != -1 && HIDWORD(v23))
  {
    v59 = sub_93D480(*(*(a1 + 104) + 4112) + 24, __ROR8__(v23, 32), 0, "station");
    v60 = (v59 - *v59);
    v61 = 0.0;
    if (*v60 >= 0x35u)
    {
      v62 = v60[26];
      if (v62)
      {
        v63 = (v59 + v62 + *(v59 + v62));
        v64 = (v63 - *v63);
        if (*v64 >= 5u)
        {
          v65 = v64[2];
          if (v65)
          {
            v61 = *(v63 + v65);
          }
        }
      }
    }

    v82 = v61;
    v58 = &v82;
    if (*(a1 + 16) >= v61)
    {
      v58 = (a1 + 16);
    }
  }

  else
  {
    v51 = sub_502FF8(*(*(a1 + 104) + 4120) + 24, v19, 0, "stop");
    v52 = (v51 - *v51);
    v53 = 0.0;
    if (*v52 >= 0x3Du)
    {
      v54 = v52[30];
      if (v54)
      {
        v55 = (v51 + v54 + *(v51 + v54));
        v56 = (v55 - *v55);
        if (*v56 >= 5u)
        {
          v57 = v56[2];
          if (v57)
          {
            v53 = *(v55 + v57);
          }
        }
      }
    }

    v81 = v53;
    v58 = &v81;
    if (*(a1 + 8) >= v53)
    {
      v58 = (a1 + 8);
    }
  }

  v66 = *v58;
  *(a3 + 48) = *v58;
  *(a3 + 56) = log(v66 + 1.0);
  v67 = sub_93E04C(*(*(a1 + 104) + 4144) + 24, v35, 0, "system");
  v68 = (v67 - *v67);
  if (*v68 >= 0x19u && (v69 = v68[12]) != 0)
  {
    v70 = *(v67 + v69);
    v71 = *(a1 + 48);
    if (!v71)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v70 = 127;
    v71 = *(a1 + 48);
    if (!v71)
    {
      goto LABEL_90;
    }
  }

  v72 = vcnt_s8(v71);
  v72.i16[0] = vaddlv_u8(v72);
  if (v72.u32[0] > 1uLL)
  {
    v73 = v70;
    if (v71 <= v70)
    {
      v73 = v70 % v71;
    }
  }

  else
  {
    v73 = (v71 - 1) & v70;
  }

  v74 = *(*(a1 + 40) + 8 * v73);
  if (!v74 || (v75 = *v74) == 0)
  {
LABEL_90:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v72.u32[0] < 2uLL)
  {
    v76 = v71 - 1;
    while (1)
    {
      v78 = v75[1];
      if (v78 == v70)
      {
        if (*(v75 + 16) == v70)
        {
          goto LABEL_86;
        }
      }

      else if ((v78 & v76) != v73)
      {
        goto LABEL_90;
      }

      v75 = *v75;
      if (!v75)
      {
        goto LABEL_90;
      }
    }
  }

  while (1)
  {
    v77 = v75[1];
    if (v77 == v70)
    {
      break;
    }

    if (v77 >= v71)
    {
      v77 %= v71;
    }

    if (v77 != v73)
    {
      goto LABEL_90;
    }

LABEL_76:
    v75 = *v75;
    if (!v75)
    {
      goto LABEL_90;
    }
  }

  if (*(v75 + 16) != v70)
  {
    goto LABEL_76;
  }

LABEL_86:
  *(a3 + 64) = v75[3];
  result = sub_BDDEAC(a1, a2, a3);
  *a3 = result;
  return result;
}

BOOL sub_BDDEAC(uint64_t a1, int *a2, uint64_t a3)
{
  if (*(a3 + 164) == -1)
  {
    v9 = *(a3 + 104);
    v10 = *(a3 + 96);
    if (v10 != v9)
    {
      v11 = v10 + 4;
      while (*(v11 + 4 * (*(v11 + 4) != 0x7FFFFFFF)) < *a2)
      {
        v12 = v11 + 56;
        v11 += 60;
        if (v12 == v9)
        {
          v13 = 0x7FFFFFFF;
          goto LABEL_20;
        }
      }

      v10 = v11 - 4;
    }

    v13 = 0x7FFFFFFF;
    if (v10 != v9)
    {
      v13 = 10 * (*(v10 + 4 * (*(v10 + 8) != 0x7FFFFFFF) + 4) - *a2);
    }

LABEL_20:
    v14 = *(a3 + 172);
    v15 = sub_A57920((*(a1 + 104) + 4136), *(a3 + 152));
    v16 = (v15 - *v15);
    v17 = *v16;
    if (v17 < 5)
    {
      v18 = 0;
      goto LABEL_25;
    }

    if (v16[2])
    {
      v18 = v15 + v16[2] + *(v15 + v16[2]);
      if (v17 < 9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v18 = 0;
      if (v17 < 9)
      {
        goto LABEL_25;
      }
    }

    v24 = v16[4];
    if (v24)
    {
      v19 = (v15 + v24 + *(v15 + v24));
LABEL_26:
      v20 = sub_A571D4(v19, v14);
      v21 = sub_92FC60(*(*(a1 + 104) + 4056) + 24, *&v18[8 * *(v20 + 14) + 4], 0, "line");
      v22 = (v21 - *v21);
      if (*v22 < 0x25u)
      {
        v23 = 0;
        if (v13 == 0x7FFFFFFF)
        {
          return 0;
        }
      }

      else
      {
        v23 = v22[18];
        if (v23)
        {
          v23 = *(v21 + v23);
        }

        if (v13 == 0x7FFFFFFF)
        {
          return 0;
        }
      }

      return v13 <= *(a1 + 4 * v23 + 80);
    }

LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  v3 = *(a3 + 184);
  v4 = *(a3 + 192);
  if (v3 != v4)
  {
    v5 = *a2;
    while (*v3 > v5 || v3[1] < v5)
    {
      v3 += 10;
      if (v3 == v4)
      {
        v3 = *(a3 + 192);
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

unint64_t sub_BDE0B4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  v4 = *(a3 + 80);
  if (v3 != v4)
  {
    *a3 = 0;
    v7 = vneg_f32(0x100000001);
    *(a3 + 4) = v7;
    v8 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a3 + 16) = v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v8;
    *(a3 + 64) = 0xFFEFFFFFFFFFFFFFLL;
    if (*(result + 2) == 1)
    {
      v9 = (v3 + 4);
      if (v3 + 4 != v4)
      {
        do
        {
          if (*(v3 + 1) < v9[1])
          {
            v3 = v9;
          }

          v9 += 2;
        }

        while (v9 != v4);
      }

      v4 = v3 + 4;
    }

    if (v3 == v4)
    {
      v15 = 0;
      v11 = -1.79769313e308;
      v12 = v8;
      v13 = v8;
    }

    else
    {
      v10 = 0;
      v7 = vneg_f32(0x100000001);
      v8 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v11 = -1.79769313e308;
      v12 = v8;
      v13 = v8;
      do
      {
        v16 = v13;
        v17 = v12;
        v18 = v8;
        v14 = *v3;
        v3 += 4;
        result = sub_BDE550((a2 + 48), v14);
        v8 = vbslq_s8(vcgtq_f64(*(result + 16), v18), *(result + 16), v18);
        v10 |= *result;
        v7 = vmin_s32(*(result + 4), v7);
        v12 = vbslq_s8(vcgtq_f64(*(result + 32), v17), *(result + 32), v17);
        v13 = vbslq_s8(vcgtq_f64(*(result + 48), v16), *(result + 48), v16);
        if (v11 < *(result + 64))
        {
          v11 = *(result + 64);
        }
      }

      while (v3 != v4);
      v15 = v10 & 1;
    }

    *a3 = v15;
    *(a3 + 4) = v7;
    *(a3 + 16) = v8;
    *(a3 + 32) = v12;
    *(a3 + 48) = v13;
    *(a3 + 64) = v11;
  }

  return result;
}

uint64_t **sub_BDE214(void *a1, unsigned __int8 *a2, _BYTE *a3, void *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (*(v9 + 16) == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (*(v9 + 16) != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

unint64_t sub_BDE550(void *a1, unint64_t a2)
{
  if (0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 248 * a2;
}

void sub_BDE68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_BDE76C(uint64_t *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  sub_5D72C(v12, 0xCCCCCCCCCCCCCCCDLL * ((a1[4] - a1[3]) >> 5));
  sub_BE0FE4(a1[3], a1[4], v12, sub_BDEB78);
  *__p = *v12;
  v10 = v13;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  sub_5D72C(v12, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4));
  sub_BE11B8(*a1, a1[1], v12, sub_BDEE24);
  v2 = v7[0];
  if (v7[0])
  {
    v3 = v7[1];
    v4 = v7[0];
    if (v7[1] != v7[0])
    {
      do
      {
        v5 = v3 - 16;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_26719F0[v6])(&v11, v3 - 16);
        }

        *(v3 - 2) = -1;
        v3 -= 16;
      }

      while (v5 != v2);
      v4 = v7[0];
    }

    v7[1] = v2;
    operator delete(v4);
  }

  *v7 = *v12;
  v8 = v13;
  sub_BE0ACC(v12, "schedule_cells", __p);
}

void sub_BDEAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_BDF3E0(v16 + 40);
  sub_BDF3E0(va);
  sub_5BF68(&a9);
  sub_5BF68(&a13);
  _Unwind_Resume(a1);
}

void sub_BDEB50(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

void sub_BDED98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_BDF3E0(v22 + 40);
  sub_BDF3E0(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a15);
  sub_5C010(v21);
  _Unwind_Resume(a1);
}

void sub_BDEE08(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

void sub_BDEE24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5F328(a2);
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  sub_5D72C(v6, 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 88) - *(a1 + 80)) >> 4));
  sub_BE03A8(*(a1 + 80), *(a1 + 88), v6, sub_BDFEA4);
  *__p = *v6;
  v5 = v7;
  sub_BDF460(&v3, a1);
}

void sub_BDF300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_5C010(&a15);
  do
  {
    v25 -= 40;
    sub_BDF3E0(v25);
  }

  while (v25 != &a24);
  sub_5BF68(&a20);
  sub_5C010(v24);
  _Unwind_Resume(a1);
}

void sub_BDF3BC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

uint64_t sub_BDF3E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_26719F0[v2])(&v4, a1 + 24);
  }

  *(a1 + 32) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_BDF460(uint64_t a1, _BYTE *a2)
{
  sub_5F328(a1);
  v4[23] = 13;
  strcpy(v4, "is_in_service");
  if (*a2)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  v5 = v3;
  operator new();
}

void sub_BDFB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_BDF3E0(v18);
  sub_BDF3E0(v14);
  sub_BDF3E0(v17);
  sub_BDF3E0(v16);
  sub_BDF3E0(v15);
  sub_BDF3E0(a9);
  sub_BDF3E0(a10);
  sub_BDF3E0(a11);
  sub_BDF3E0(v13);
  sub_BDF3E0(va);
  sub_5C010(a12);
  _Unwind_Resume(a1);
}

void sub_BDFBC0(_BYTE *a1, char *__s, uint64_t *a3)
{
  v5 = strlen(__s);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      a1[23] = v5;
      if (v5)
      {
        memmove(a1, __s, v5);
      }

      a1[v6] = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BDFD00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_BDFD1C(_BYTE *a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  if (v6 < 0x7FFFFFFFFFFFFFF8)
  {
    v7 = v6;
    if (v6 < 0x17)
    {
      a1[23] = v6;
      if (v6)
      {
        memmove(a1, __s, v6);
      }

      a1[v7] = 0;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BDFE6C(_Unwind_Exception *exception_object)
{
  if (v3 < 0)
  {
    operator delete(v2);
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_BDFEA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5F328(a2);
  v5 = 0;
  v4 = 0uLL;
  sub_5D72C(&v4, (*(a1 + 88) - *(a1 + 80)) >> 4);
  sub_BE0688(*(a1 + 80), *(a1 + 88), &v4, sub_BE057C);
  *v6 = v4;
  v7 = v5;
  v5 = 0;
  v4 = 0uLL;
  sub_BDF460(&v3, a1);
}

void sub_BE02CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_5C010(&a15);
  do
  {
    v30 -= 40;
    sub_BDF3E0(v30);
  }

  while (v30 != &a29);
  sub_5BF68(&a24);
  sub_5C010(v29);
  _Unwind_Resume(a1);
}

void sub_BE0388(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

uint64_t sub_BE03A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t))
{
  if (a1 != a2)
  {
    a4(&__p, a1);
    if (*(a3 + 8) < *(a3 + 16))
    {
      operator new();
    }

    sub_A728A8(a3, &__p);
  }

  return a3;
}

void sub_BE054C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_5C010(&a9);
  _Unwind_Resume(a1);
}

void sub_BE057C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5F328(a2);
  v6 = 5;
  strcpy(__p, "score");
  v7 = *(a1 + 8);
  v8 = 2;
  sub_BE0D3C(v3, __p, &v9);
  if (v8 != -1)
  {
    (off_26719F0[v8])(&v4, &v7);
  }

  v8 = -1;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_BE065C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BE0688(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t))
{
  if (a1 != a2)
  {
    a4(&__p, a1);
    if (*(a3 + 8) < *(a3 + 16))
    {
      operator new();
    }

    sub_A728A8(a3, &__p);
  }

  return a3;
}

void sub_BE082C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_5C010(&a9);
  _Unwind_Resume(a1);
}

void sub_BE085C(_BYTE *a1, char *__s, uint64_t *a3)
{
  v5 = strlen(__s);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      a1[23] = v5;
      if (v5)
      {
        memmove(a1, __s, v5);
      }

      a1[v6] = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BE0994(_BYTE *a1, char *__s, uint64_t *a3)
{
  v5 = strlen(__s);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      a1[23] = v5;
      if (v5)
      {
        memmove(a1, __s, v5);
      }

      a1[v6] = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BE0ACC(_BYTE *a1, char *__s, uint64_t *a3)
{
  v5 = strlen(__s);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      a1[23] = v5;
      if (v5)
      {
        memmove(a1, __s, v5);
      }

      a1[v6] = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BE0C04(_BYTE *a1, char *__s, uint64_t *a3)
{
  v5 = strlen(__s);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      a1[23] = v5;
      if (v5)
      {
        memmove(a1, __s, v5);
      }

      a1[v6] = 0;
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_BE0D3C(uint64_t a1, size_t **a2, size_t **a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (!v7 || a2 == a3)
    {
      v9 = v7;
    }

    else
    {
      do
      {
        v13[0] = (v7 + 16);
        v13[1] = (v7 + 40);
        sub_61BA8(v13, a2);
        v9 = *v7;
        sub_BE0E9C(a1, v7);
        a2 += 5;
        if (v9)
        {
          v10 = a2 == a3;
        }

        else
        {
          v10 = 1;
        }

        v7 = v9;
      }

      while (!v10);
    }

    if (v9)
    {
      do
      {
        v11 = *v9;
        v12 = *(v9 + 12);
        if (v12 != -1)
        {
          (off_26719F0[v12])(v13, v9 + 5);
        }

        *(v9 + 12) = -1;
        if (*(v9 + 39) < 0)
        {
          operator delete(v9[2]);
        }

        operator delete(v9);
        v9 = v11;
      }

      while (v11);
    }
  }

  while (a2 != a3)
  {
    sub_5AF6C(a1, a2, a2);
    a2 += 5;
  }
}

void sub_BE0E6C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_61258(v1, v2);
  __cxa_rethrow();
}

uint64_t **sub_BE0E9C(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v17, v7, v8);
  *(a2 + 8) = v9;
  result = sub_352A30(a1, v9, v4);
  if (!result)
  {
    v11 = a1[1];
    v12 = *(a2 + 8);
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v11)
      {
        v12 %= *&v11;
      }
    }

    else
    {
      v12 &= *&v11 - 1;
    }

    v14 = *a1;
    v15 = *(*a1 + 8 * v12);
    if (v15)
    {
      *a2 = *v15;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v14 + 8 * v12) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_15;
      }

      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }

        v15 = (v14 + 8 * v16);
      }

      else
      {
        v15 = (v14 + 8 * (v16 & (*&v11 - 1)));
      }
    }

    *v15 = a2;
LABEL_15:
    ++a1[3];
    return a2;
  }

  return result;
}

uint64_t sub_BE0FE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t))
{
  if (a1 != a2)
  {
    a4(&__p, a1);
    if (*(a3 + 8) < *(a3 + 16))
    {
      operator new();
    }

    sub_A728A8(a3, &__p);
  }

  return a3;
}

void sub_BE1188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_5C010(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_BE11B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t))
{
  if (a1 != a2)
  {
    a4(&__p, a1);
    if (*(a3 + 8) < *(a3 + 16))
    {
      operator new();
    }

    sub_A728A8(a3, &__p);
  }

  return a3;
}

void sub_BE135C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_5C010(&a9);
  _Unwind_Resume(a1);
}

void sub_BE138C(void *a1, uint64_t a2)
{
  a1[3] = 0;
  a1[6] = 0;
  a1[9] = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[4] = 0;
  a1[7] = 0;
  a1[10] = 0;
  operator new();
}

void sub_BE2340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
LABEL_8:
        __cxa_guard_abort(&qword_27B3E58);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a17);
      __cxa_guard_abort(&qword_27B3E58);
      _Unwind_Resume(a1);
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_BE23E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_BE24D0(uint64_t (***a1)(), uint64_t *a2))()
{
  v5 = a2[3];
  v4 = a2[4];
  if (v5 != v4)
  {
    v6 = v4 - v5 - 160;
    v7 = a2[3];
    if (v6 < 0xA0)
    {
      goto LABEL_12;
    }

    v8 = v6 / 0xA0 + 1;
    v7 = v5 + 160 * (v8 & 0x3FFFFFFFFFFFFFELL);
    v9 = (v5 + 317);
    v10 = v8 & 0x3FFFFFFFFFFFFFELL;
    do
    {
      *(v9 - 160) = 0;
      *v9 = 0;
      v9 += 320;
      v10 -= 2;
    }

    while (v10);
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFELL))
    {
LABEL_12:
      do
      {
        *(v7 + 157) = 0;
        v7 += 160;
      }

      while (v7 != v4);
    }
  }

  sub_BE25A0(a1, a2);
  v11 = sub_BE26D0(a1, a2);
  sub_BE3270(v11, a2);

  return sub_BE366C(a1, a2);
}

void sub_BE25A0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 136))
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 128) = 0;
    v6 = *(a1 + 120);
    if (v6)
    {
      bzero(*(a1 + 112), 8 * v6);
    }

    *(a1 + 136) = 0;
  }

  v7 = *a2;
  v17 = a2[1];
  if (*a2 != v17)
  {
    do
    {
      v18 = v7;
      v9 = *(v7 + 80);
      v8 = *(v7 + 88);
      v19 = v8;
      while (v9 != v8)
      {
        v10 = *(v9 + 80);
        v11 = *(v9 + 88);
        while (v10 != v11)
        {
          v12 = a2[3] + 160 * *v10;
          v14 = *(v12 + 72);
          v13 = *(v12 + 80);
          while (v14 != v13)
          {
            v15 = *v14;
            v14 += 4;
            v16 = (a2[6] + 248 * v15);
            sub_BE5364(v16[9], v16[10], a1);
            sub_BE5364(v16[12], v16[13], a1);
          }

          v10 += 4;
        }

        v9 += 112;
        v8 = v19;
      }

      v7 = v18 + 112;
    }

    while (v18 + 112 != v17);
  }
}

uint64_t (***sub_BE26D0(uint64_t (***result)(), void *a2))()
{
  v2 = *a2;
  v82 = a2[1];
  if (*a2 != v82)
  {
    v3 = a2;
    v4 = result;
    while (1)
    {
      v86 = v2;
      if ((*v4 >> *(v2 + 104)))
      {
        break;
      }

LABEL_61:
      v37 = *(v2 + 80);
      v36 = *(v2 + 88);
      v88 = v36;
      while (v37 != v36)
      {
        v38 = 1 << *(v2 + 104);
        if ((v38 & v4[3]) == 0 || ((v4[4] >> *(v37 + 104)) & 1) == 0)
        {
          goto LABEL_108;
        }

        v39 = *(v4 + 10);
        if (v39 == 2)
        {
          v93 = off_2671B58;
          v94 = v4;
          v41 = &v95;
        }

        else
        {
          if (v39 == 1)
          {
            v40 = off_2671AD8;
          }

          else
          {
            if (v39)
            {
              v96 = 0;
              v42 = *(v37 + 80);
              v91 = *(v37 + 88);
              v43 = v91;
              if (v42 != v91)
              {
LABEL_79:
                while (1)
                {
                  v44 = v3[3] + 160 * *v42;
                  v45 = *(v44 + 72);
                  v46 = *(v44 + 80);
                  if (v45 == v46)
                  {
                    break;
                  }

                  while (1)
                  {
                    v47 = (v3[6] + 248 * *v45);
                    v48 = v47[9];
                    v49 = v47[10];
                    if (v48 != v49)
                    {
                      break;
                    }

LABEL_83:
                    v50 = v47[12];
                    v51 = v47[13];
                    if (v50 != v51)
                    {
                      while ((sub_BE3A0C(v4, v50, &v93) & 1) != 0)
                      {
                        v50 += 60;
                        if (v50 == v51)
                        {
                          goto LABEL_86;
                        }
                      }

                      goto LABEL_78;
                    }

LABEL_86:
                    v45 += 4;
                    if (v45 == v46)
                    {
                      goto LABEL_87;
                    }
                  }

                  while ((sub_BE3A0C(v4, v48, &v93) & 1) != 0)
                  {
                    v48 += 60;
                    if (v48 == v49)
                    {
                      goto LABEL_83;
                    }
                  }

LABEL_78:
                  v42 += 4;
                  if (v42 == v91)
                  {
                    goto LABEL_101;
                  }
                }
              }

              goto LABEL_87;
            }

            v40 = off_2671A48;
          }

          v93 = v40;
          v41 = &v94;
        }

        *v41 = v4;
        v96 = &v93;
        v42 = *(v37 + 80);
        v91 = *(v37 + 88);
        v43 = v91;
        if (v42 != v91)
        {
          goto LABEL_79;
        }

LABEL_87:
        if (v42 != v91)
        {
          v52 = v42 + 4;
          v53 = v91;
          v43 = v42;
          while (v52 != v53)
          {
            v54 = v3[3] + 160 * *v52;
            v55 = *(v54 + 72);
            v56 = *(v54 + 80);
            if (v55 != v56)
            {
              while (1)
              {
                v57 = (v3[6] + 248 * *v55);
                v58 = v57[9];
                v59 = v57[10];
                if (v58 != v59)
                {
                  break;
                }

LABEL_96:
                v60 = v57[12];
                v61 = v57[13];
                if (v60 != v61)
                {
                  while ((sub_BE3A0C(v4, v60, &v93) & 1) != 0)
                  {
                    v60 += 60;
                    if (v60 == v61)
                    {
                      goto LABEL_99;
                    }
                  }

                  goto LABEL_89;
                }

LABEL_99:
                v55 += 4;
                if (v55 == v56)
                {
                  goto LABEL_90;
                }
              }

              while ((sub_BE3A0C(v4, v58, &v93) & 1) != 0)
              {
                v58 += 60;
                if (v58 == v59)
                {
                  goto LABEL_96;
                }
              }

LABEL_89:
              *v43 = *v52;
              v43 += 4;
            }

LABEL_90:
            v52 += 4;
            v53 = v91;
          }
        }

LABEL_101:
        v2 = v86;
        if (v43 != *(v37 + 88))
        {
          a2 = *(v37 + 88);
          *(v37 + 88) = v43;
        }

        result = v96;
        if (v96 == &v93)
        {
          result = ((*v96)[4])(v96, a2);
        }

        else if (v96)
        {
          result = (*v96)[5]();
        }

        v38 = 1 << *(v86 + 104);
LABEL_108:
        if ((v38 & v4[6]) == 0 || ((v4[7] >> *(v37 + 104)) & 1) == 0)
        {
          goto LABEL_63;
        }

        v62 = *(v4 + 16);
        if (v62 == 2)
        {
          v93 = off_2671B58;
          v94 = v4;
          v64 = &v95;
        }

        else
        {
          if (v62 == 1)
          {
            v63 = off_2671AD8;
          }

          else
          {
            if (v62)
            {
              result = 0;
              v96 = 0;
              v65 = *(v37 + 80);
              v92 = *(v37 + 88);
              if (v65 == v92)
              {
LABEL_118:
                if (result == &v93)
                {
                  goto LABEL_62;
                }

LABEL_147:
                if (result)
                {
                  result = ((*result)[5])(result);
                }

                goto LABEL_63;
              }

              goto LABEL_121;
            }

            v63 = off_2671A48;
          }

          v93 = v63;
          v64 = &v94;
        }

        *v64 = v4;
        result = &v93;
        v96 = &v93;
        v65 = *(v37 + 80);
        v92 = *(v37 + 88);
        if (v65 == v92)
        {
          goto LABEL_118;
        }

LABEL_121:
        v85 = v37;
        do
        {
          v66 = v3[3] + 160 * *v65;
          v67 = *(v66 + 72);
          v69 = *(v66 + 80);
          v68 = v66 + 72;
          v70 = v69;
          if (v67 != v69)
          {
            while (1)
            {
              v71 = (v3[6] + 248 * *v67);
              v72 = v71[9];
              v73 = v71[10];
              if (v72 == v73)
              {
LABEL_129:
                v74 = v71[12];
                v75 = v71[13];
                if (v74 == v75)
                {
                  break;
                }

                while ((sub_BE3A0C(v4, v74, &v93) & 1) != 0)
                {
                  v74 += 60;
                  if (v74 == v75)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                while ((sub_BE3A0C(v4, v72, &v93) & 1) != 0)
                {
                  v72 += 60;
                  if (v72 == v73)
                  {
                    goto LABEL_129;
                  }
                }
              }

              v67 += 4;
              if (v67 == v69)
              {
                goto LABEL_144;
              }
            }
          }

LABEL_132:
          if (v67 != v69)
          {
            v76 = v67 + 4;
            v70 = v67;
            while (1)
            {
              if (v76 == v69)
              {
                goto LABEL_144;
              }

              v77 = (v3[6] + 248 * *v76);
              v78 = v77[9];
              v79 = v77[10];
              if (v78 != v79)
              {
                break;
              }

LABEL_140:
              v81 = v77[12];
              v80 = v77[13];
              if (v81 != v80)
              {
                while ((sub_BE3A0C(v4, v81, &v93) & 1) != 0)
                {
                  v81 += 60;
                  if (v81 == v80)
                  {
                    goto LABEL_135;
                  }
                }

LABEL_134:
                *v70 = *v76;
                v70 += 4;
              }

LABEL_135:
              v76 += 4;
            }

            while ((sub_BE3A0C(v4, v78, &v93) & 1) != 0)
            {
              v78 += 60;
              if (v78 == v79)
              {
                goto LABEL_140;
              }
            }

            goto LABEL_134;
          }

LABEL_144:
          if (v70 != *(v68 + 8))
          {
            a2 = *(v68 + 8);
            *(v68 + 8) = v70;
          }

          v65 += 4;
        }

        while (v65 != v92);
        result = v96;
        v37 = v85;
        v2 = v86;
        if (v96 != &v93)
        {
          goto LABEL_147;
        }

LABEL_62:
        result = ((*result)[4])(result);
LABEL_63:
        v37 += 112;
        v36 = v88;
      }

      v2 += 112;
      if (v2 == v82)
      {
        return result;
      }
    }

    v5 = *(v4 + 4);
    if (v5 == 2)
    {
      v93 = off_2671B58;
      v94 = v4;
      v7 = &v95;
    }

    else
    {
      if (v5 == 1)
      {
        v6 = off_2671AD8;
      }

      else
      {
        if (v5)
        {
          v96 = 0;
          v9 = *(v2 + 80);
          v8 = *(v2 + 88);
          v10 = v8;
          if (v9 == v8)
          {
LABEL_13:
            if (v9 != v8)
            {
              goto LABEL_31;
            }

            goto LABEL_50;
          }

          goto LABEL_16;
        }

        v6 = off_2671A48;
      }

      v93 = v6;
      v7 = &v94;
    }

    *v7 = v4;
    v96 = &v93;
    v9 = *(v2 + 80);
    v8 = *(v2 + 88);
    v10 = v8;
    if (v9 == v8)
    {
      goto LABEL_13;
    }

LABEL_16:
    v87 = v8;
    while (((v4[1] >> *(v9 + 104)) & 1) == 0)
    {
LABEL_17:
      v9 += 112;
      if (v9 == v87)
      {
        goto LABEL_50;
      }
    }

    v11 = *(v9 + 80);
    if (v11 != *(v9 + 88))
    {
      v12 = *(v9 + 88);
      while (1)
      {
        v13 = v3[3] + 160 * *v11;
        v14 = *(v13 + 72);
        v89 = *(v13 + 80);
        if (v14 != v89)
        {
          break;
        }

LABEL_29:
        v11 += 4;
        if (v11 == v12)
        {
          goto LABEL_30;
        }
      }

      while (1)
      {
        v15 = (v3[6] + 248 * *v14);
        v16 = v15[9];
        v17 = v15[10];
        if (v16 != v17)
        {
          break;
        }

LABEL_25:
        v18 = v15[12];
        v19 = v15[13];
        if (v18 != v19)
        {
          while ((sub_BE3A0C(v4, v18, &v93) & 1) != 0)
          {
            v18 += 60;
            if (v18 == v19)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_17;
        }

LABEL_28:
        v14 += 4;
        if (v14 == v89)
        {
          goto LABEL_29;
        }
      }

      while ((sub_BE3A0C(v4, v16, &v93) & 1) != 0)
      {
        v16 += 60;
        if (v16 == v17)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_17;
    }

LABEL_30:
    v8 = v87;
    if (v9 != v87)
    {
LABEL_31:
      v20 = v9 + 112;
      if (v9 + 112 != v8)
      {
        v10 = v9;
        while (1)
        {
          v21 = v9;
          v9 = v20;
          if (((v4[1] >> *(v21 + 216)) & 1) == 0)
          {
            goto LABEL_47;
          }

          v22 = *(v21 + 192);
          v83 = *(v21 + 200);
          if (v22 != v83)
          {
            break;
          }

LABEL_34:
          v20 = v9 + 112;
          if (v9 + 112 == v8)
          {
            goto LABEL_50;
          }
        }

        while (1)
        {
          v84 = v22;
          v23 = v3[3] + 160 * *v22;
          v24 = *(v23 + 72);
          v90 = *(v23 + 80);
          if (v24 != v90)
          {
            break;
          }

LABEL_45:
          v22 = v84 + 4;
          if (v84 + 4 == v83)
          {
            goto LABEL_34;
          }
        }

        while (1)
        {
          v25 = (v3[6] + 248 * *v24);
          v26 = v25[9];
          v27 = v25[10];
          if (v26 != v27)
          {
            break;
          }

LABEL_41:
          v28 = v25[12];
          v29 = v25[13];
          if (v28 != v29)
          {
            while ((sub_BE3A0C(v4, v28, &v93) & 1) != 0)
            {
              v28 += 60;
              if (v28 == v29)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_47;
          }

LABEL_44:
          v24 += 4;
          if (v24 == v90)
          {
            goto LABEL_45;
          }
        }

        while ((sub_BE3A0C(v4, v26, &v93) & 1) != 0)
        {
          v26 += 60;
          if (v26 == v27)
          {
            goto LABEL_41;
          }
        }

LABEL_47:
        *v10 = *v9;
        v30 = *(v9 + 16);
        v31 = *(v9 + 32);
        v32 = *(v9 + 64);
        *(v10 + 48) = *(v9 + 48);
        *(v10 + 64) = v32;
        *(v10 + 16) = v30;
        *(v10 + 32) = v31;
        v33 = *(v10 + 80);
        if (v33)
        {
          *(v10 + 88) = v33;
          operator delete(v33);
          *(v10 + 80) = 0;
          *(v10 + 88) = 0;
          *(v10 + 96) = 0;
        }

        *(v10 + 80) = *(v21 + 192);
        *(v10 + 96) = *(v21 + 208);
        *(v21 + 192) = 0;
        *(v21 + 200) = 0;
        *(v21 + 208) = 0;
        *(v10 + 104) = *(v21 + 216);
        v10 += 112;
        goto LABEL_34;
      }

      v10 = v9;
    }

LABEL_50:
    v2 = v86;
    v34 = *(v86 + 88);
    if (v10 != v34)
    {
      while (v34 != v10)
      {
        v35 = *(v34 - 32);
        if (v35)
        {
          *(v34 - 24) = v35;
          operator delete(v35);
        }

        v34 -= 112;
      }

      *(v86 + 88) = v10;
    }

    result = v96;
    if (v96 == &v93)
    {
      result = ((*v96)[4])(v96);
    }

    else if (v96)
    {
      result = (*v96)[5]();
    }

    goto LABEL_61;
  }

  return result;
}

void sub_BE3180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE3194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE31A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE31BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE31D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE31E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE31F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE3220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE3234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE3248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE325C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE3270(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v6 = *(v3 + 80);
      v5 = *(v3 + 88);
      if (v6 != v5)
      {
        do
        {
          v8 = *(v6 + 80);
          v7 = *(v6 + 88);
          if (v8 != v7)
          {
            while (1)
            {
              v9 = a2[3] + 160 * *v8;
              if (*(v9 + 72) == *(v9 + 80))
              {
                break;
              }

              v8 += 4;
              if (v8 == v7)
              {
                goto LABEL_7;
              }
            }

            if (v8 != v7)
            {
              v10 = v8 + 4;
              if (v8 + 4 != v7)
              {
                do
                {
                  v11 = a2[3] + 160 * *v10;
                  if (*(v11 + 72) != *(v11 + 80))
                  {
                    *v8 = *v10;
                    v8 += 4;
                  }

                  v10 += 4;
                }

                while (v10 != v7);
                v7 = *(v6 + 88);
              }
            }
          }

          if (v8 != v7)
          {
            *(v6 + 88) = v8;
          }

LABEL_7:
          v6 += 112;
        }

        while (v6 != v5);
        v13 = *(v3 + 80);
        v12 = *(v3 + 88);
        if (v13 != v12)
        {
          v14 = v13 + 112;
          while (*(v14 - 32) != *(v14 - 24))
          {
            v15 = v14 == v12;
            v14 += 112;
            if (v15)
            {
              goto LABEL_4;
            }
          }

          v16 = v14 - 112;
          if (v14 - 112 != v12 && v14 != v12)
          {
            do
            {
              if (*(v14 + 80) != *(v14 + 88))
              {
                *v16 = *v14;
                v17 = *(v14 + 16);
                v18 = *(v14 + 32);
                v19 = *(v14 + 64);
                *(v16 + 48) = *(v14 + 48);
                *(v16 + 64) = v19;
                *(v16 + 16) = v17;
                *(v16 + 32) = v18;
                v20 = *(v16 + 80);
                if (v20)
                {
                  *(v16 + 88) = v20;
                  operator delete(v20);
                  *(v16 + 80) = 0;
                  *(v16 + 88) = 0;
                  *(v16 + 96) = 0;
                }

                *(v16 + 80) = *(v14 + 80);
                *(v16 + 96) = *(v14 + 96);
                *(v14 + 80) = 0;
                *(v14 + 88) = 0;
                *(v14 + 96) = 0;
                *(v16 + 104) = *(v14 + 104);
                v16 += 112;
              }

              v14 += 112;
            }

            while (v14 != v12);
            v12 = *(v3 + 88);
          }

          if (v16 != v12)
          {
            while (v12 != v16)
            {
              v21 = *(v12 - 32);
              if (v21)
              {
                *(v12 - 24) = v21;
                operator delete(v21);
              }

              v12 -= 112;
            }

            *(v3 + 88) = v16;
          }
        }
      }

LABEL_4:
      v3 += 112;
    }

    while (v3 != v4);
    v3 = *a2;
    v4 = a2[1];
  }

  if (v3 == v4)
  {
LABEL_48:
    v23 = v4;
  }

  else
  {
    v22 = (v3 + 112);
    while (*(v22 - 4) != *(v22 - 3))
    {
      v15 = v22 == v4;
      v22 += 7;
      if (v15)
      {
        goto LABEL_48;
      }
    }

    v25 = v22 - 7;
    if (v22 - 7 == v4 || v22 == v4)
    {
      v23 = (v22 - 7);
    }

    else
    {
      v23 = (v22 - 7);
      do
      {
        v27 = v22;
        if (*(v25 + 24) != *(v25 + 25))
        {
          *v23 = *v22;
          v28 = v22[1];
          v29 = v22[2];
          v30 = v22[4];
          *(v23 + 48) = v22[3];
          *(v23 + 64) = v30;
          *(v23 + 16) = v28;
          *(v23 + 32) = v29;
          v31 = (v23 + 80);
          v32 = *(v23 + 80);
          if (v32)
          {
            v33 = *(v23 + 88);
            v26 = *(v23 + 80);
            if (v33 != v32)
            {
              do
              {
                v34 = *(v33 - 32);
                if (v34)
                {
                  *(v33 - 24) = v34;
                  operator delete(v34);
                }

                v33 -= 112;
              }

              while (v33 != v32);
              v26 = *v31;
            }

            *(v23 + 88) = v32;
            operator delete(v26);
            *v31 = 0;
            *(v23 + 88) = 0;
            *(v23 + 96) = 0;
          }

          *(v23 + 80) = v25[12];
          *(v23 + 96) = *(v25 + 26);
          *(v25 + 24) = 0;
          *(v25 + 25) = 0;
          *(v25 + 26) = 0;
          *(v23 + 104) = *(v25 + 216);
          v23 += 112;
        }

        v22 = v27 + 7;
        v25 = v27;
      }

      while (v27 + 7 != v4);
      v4 = a2[1];
    }
  }

  return sub_BE4C58(a2, v23, v4);
}

uint64_t (***sub_BE366C(uint64_t (***result)(), uint64_t *a2))()
{
  v2 = *a2;
  v19 = a2[1];
  if (*a2 != v19)
  {
    v4 = result;
    while (1)
    {
      v5 = *(v2 + 80);
      v6 = *(v2 + 88);
      v20 = v6;
      v21 = v2;
      if (v5 != v6)
      {
        break;
      }

LABEL_3:
      v2 += 112;
      if (v2 == v19)
      {
        return result;
      }
    }

    while (1)
    {
      if (((v4[9] >> *(v2 + 104)) & 1) == 0 || ((v4[10] >> *(v5 + 104)) & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = *(v4 + 22);
      switch(v7)
      {
        case 2:
          v23 = off_2671B58;
          v24 = v4;
          v25 = v4;
          result = &v23;
          v26 = &v23;
          v10 = *(v5 + 80);
          v9 = *(v5 + 88);
          if (v10 == v9)
          {
            goto LABEL_30;
          }

          break;
        case 1:
          v8 = off_2671AD8;
LABEL_15:
          v23 = v8;
          v24 = v4;
          result = &v23;
          v26 = &v23;
          v10 = *(v5 + 80);
          v9 = *(v5 + 88);
          if (v10 == v9)
          {
            goto LABEL_30;
          }

          break;
        case 0:
          v8 = off_2671A48;
          goto LABEL_15;
        default:
          result = 0;
          v26 = 0;
          v10 = *(v5 + 80);
          v9 = *(v5 + 88);
          if (v10 == v9)
          {
LABEL_30:
            if (result != &v23)
            {
              goto LABEL_31;
            }

            goto LABEL_6;
          }

          break;
      }

      v22 = v5;
      do
      {
        while (1)
        {
          v11 = a2[3] + 160 * *v10;
          v12 = *(v11 + 72);
          v13 = *(v11 + 80);
          if (v12 != v13)
          {
            break;
          }

LABEL_26:
          *(v11 + 157) = *(v11 + 157);
          v10 += 4;
          if (v10 == v9)
          {
            goto LABEL_27;
          }
        }

        while (1)
        {
          v14 = (a2[6] + 248 * *v12);
          v15 = v14[9];
          v16 = v14[10];
          if (v15 != v16)
          {
            break;
          }

LABEL_22:
          v17 = v14[12];
          v18 = v14[13];
          if (v17 != v18)
          {
            while ((sub_BE3A0C(v4, v17, &v23) & 1) != 0)
            {
              v17 += 60;
              if (v17 == v18)
              {
                goto LABEL_25;
              }
            }

            goto LABEL_17;
          }

LABEL_25:
          v12 += 4;
          if (v12 == v13)
          {
            goto LABEL_26;
          }
        }

        while ((sub_BE3A0C(v4, v15, &v23) & 1) != 0)
        {
          v15 += 60;
          if (v15 == v16)
          {
            goto LABEL_22;
          }
        }

LABEL_17:
        *(v11 + 157) |= 1u;
        v10 += 4;
      }

      while (v10 != v9);
LABEL_27:
      result = v26;
      v2 = v21;
      v5 = v22;
      v6 = v20;
      if (v26 != &v23)
      {
LABEL_31:
        if (result)
        {
          result = ((*result)[5])(result);
        }

        goto LABEL_7;
      }

LABEL_6:
      result = ((*result)[4])(result);
LABEL_7:
      v5 += 112;
      if (v5 == v6)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

void sub_BE3958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

void sub_BE396C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_BE3980(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE3980(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_BE3A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_BE3BE4(a1, *(a2 + 28), *(a2 + 48), &__p);
  sub_BE3EA4(a1, *(a2 + 28), *(a2 + 48), &v19);
  v6 = v19;
  v7 = v20;
  if (v19 != v20)
  {
    v8 = v19;
    while (1)
    {
      v9 = *v8;
      v10 = *(a3 + 24);
      v24 = *(a2 + 48);
      v23 = v9;
      if (!v10)
      {
        sub_2B7420();
      }

      if ((*(*v10 + 48))(v10, a2, &v24, &v23))
      {
        break;
      }

      if (++v8 == v7)
      {
        goto LABEL_6;
      }
    }

    result = 1;
LABEL_15:
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_6:
  v11 = v22;
  if (__p != v22)
  {
    v12 = __p + 4;
    do
    {
      v13 = *(v12 - 1);
      v14 = *(a3 + 24);
      v24 = *(a2 + 48);
      v23 = v13;
      if (!v14)
      {
        sub_2B7420();
      }

      result = (*(*v14 + 48))(v14, a2, &v24, &v23);
      if (v12 == v11)
      {
        v16 = 1;
      }

      else
      {
        v16 = result;
      }

      v12 += 4;
    }

    while (v16 != 1);
    goto LABEL_15;
  }

  result = 0;
  if (v6)
  {
LABEL_16:
    v17 = result;
    operator delete(v6);
    result = v17;
  }

LABEL_17:
  if (__p)
  {
    v18 = result;
    operator delete(__p);
    return v18;
  }

  return result;
}

void sub_BE3B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_BE3BE4(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v30 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = sub_A794D0((a1 + 112), &v30);
  if (!v7)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v8 = *(v7 + 6);
  v9 = sub_A57920((*(a1 + 96) + 4136), v30);
  v10 = (v9 - *v9);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = sub_A571D4((v9 + v11 + *(v9 + v11)), a3);
    if (v8 >= a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = sub_A571D4(0, a3);
    if (v8 >= a3)
    {
      goto LABEL_5;
    }
  }

  v13 = 0;
  v29 = *(v12 + 14);
  do
  {
    v14 = sub_A57920((*(a1 + 96) + 4136), v30);
    v15 = (v14 - *v14);
    if (*v15 >= 9u && (v16 = v15[4]) != 0)
    {
      v17 = (v14 + v16 + *(v14 + v16));
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_A571D4(v17, --a3);
    if ((*(a1 + 92) & 1) == 0 && *(v18 + 14) != v29)
    {
      break;
    }

    v19 = sub_A57920((*(a1 + 96) + 4136), v30);
    v20 = (v19 - *v19);
    if (*v20 >= 9u && (v21 = v20[4]) != 0)
    {
      v22 = (v19 + v21 + *(v19 + v21));
    }

    else
    {
      v22 = 0;
    }

    if ((*(sub_A571D4(v22, a3) + 15) & 2) != 0)
    {
      v23 = a4[2];
      if (v13 < v23)
      {
        *v13 = a3;
        v13 += 4;
        a4[1] = v13;
        if (*(a1 + 93) != 1)
        {
          break;
        }
      }

      else
      {
        v24 = v13;
        v25 = v13 >> 2;
        v26 = v25 + 1;
        if ((v25 + 1) >> 62)
        {
          *a4 = 0;
          sub_1794();
        }

        if (v23 >> 1 > v26)
        {
          v26 = v23 >> 1;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v27 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          if (!(v27 >> 62))
          {
            operator new();
          }

          *a4 = 0;
          sub_1808();
        }

        v28 = (4 * v25);
        *v28 = a3;
        v13 = (v28 + 1);
        memcpy(0, 0, v24);
        a4[1] = v13;
        a4[2] = 0;
        a4[1] = v13;
        if (*(a1 + 93) != 1)
        {
          break;
        }
      }
    }
  }

  while (a3 > v8);
LABEL_5:
  *a4 = 0;
}

void sub_BE3E7C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_BE3EA4(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v33 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = sub_A57920((*(a1 + 96) + 4136), a2);
  v8 = (v7 - *v7);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v32 = *(sub_A571D4(v10, a3) + 14);
  v11 = sub_BE4464(a1, v33, v32);
  v12 = sub_A794D0((a1 + 112), &v33);
  if (!v12)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v13 = *(v12 + 7);
  v14 = a3 + 1;
  if (v11 != -1 && v14 <= v13)
  {
    v16 = 0;
    do
    {
      v17 = sub_A57920((*(a1 + 96) + 4136), v33);
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v21 = sub_A571D4(v20, v14);
      if ((*(a1 + 92) & 1) == 0 && *(v21 + 14) != v32)
      {
        break;
      }

      if (v11 == v14 || ((v22 = sub_A57920((*(a1 + 96) + 4136), v33), v23 = (v22 - *v22), *v23 < 9u) || (v24 = v23[4]) == 0 ? (v25 = 0) : (v25 = (v22 + v24 + *(v22 + v24))), (*(sub_A571D4(v25, v14) + 15) & 2) != 0))
      {
        v26 = a4[2];
        if (v16 < v26)
        {
          *v16 = v14;
          v16 += 4;
          a4[1] = v16;
          if (*(a1 + 94) != 1)
          {
            break;
          }
        }

        else
        {
          v27 = v16;
          v28 = v16 >> 2;
          v29 = v28 + 1;
          if ((v28 + 1) >> 62)
          {
            *a4 = 0;
            sub_1794();
          }

          if (v26 >> 1 > v29)
          {
            v29 = v26 >> 1;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v30 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            if (!(v30 >> 62))
            {
              operator new();
            }

            *a4 = 0;
            sub_1808();
          }

          v31 = (4 * v28);
          *v31 = v14;
          v16 = (v31 + 1);
          memcpy(0, 0, v27);
          a4[1] = v16;
          a4[2] = 0;
          a4[1] = v16;
          if (*(a1 + 94) != 1)
          {
            break;
          }
        }
      }

      ++v14;
    }

    while (v14 <= v13);
  }

  *a4 = 0;
}

void sub_BE4150(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BE4178(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = sub_A57920((*(a1 + 96) + 4136), a2);
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
  }

  else
  {
    v8 = 0;
  }

  v9 = __ROR8__(*sub_A571D4(v8, a3), 32);
  v16[0] = 0x1FFFFFFFELL;
  v16[1] = v9;
  if (!sub_A5436C(*(a1 + 104), v16))
  {
    return 0x7FFFFFFFLL;
  }

  v10 = sub_A5436C(*(a1 + 104), v16);
  if (!v10)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v11 = v10;
  v12 = *(v10 + 8);
  result = 0x7FFFFFFFLL;
  if (v12 != 0x7FFFFFFF)
  {
    v14 = *(v11 + 9);
    if (v14 != 0x7FFFFFFF)
    {
      v15 = *(v11 + 10);
      if (v15 != 0x7FFFFFFF)
      {
        return (v14 + v12 + v15);
      }
    }
  }

  return result;
}

uint64_t sub_BE4270(uint64_t a1, unint64_t a2, unsigned int a3, int a4, int a5)
{
  v10 = sub_A5706C((*(a1 + 96) + 4136), a2);
  v11 = v10;
  v12 = &v10[-*v10];
  if (*v12 < 5u)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 2);
    if (v13)
    {
      v13 += &v10[*&v10[v13]];
    }
  }

  v14 = 4 * a2;
  v15 = (v13 + v14 + 4 + *(v13 + v14 + 4));
  v16 = (v15 - *v15);
  if (*v16 >= 7u && (v17 = v16[3]) != 0)
  {
    v18 = (v15 + v17 + *(v15 + v17));
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_A7AC40(v18, a3);
  v20 = (v11 - *v11);
  if (*v20 < 7u)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20[3];
    if (v21)
    {
      v21 = (v21 + v11 + *(v21 + v11));
    }
  }

  v22 = sub_A7AEE0(v21, v19[1] + a4)[1];
  v23 = sub_A5706C((*(a1 + 96) + 4136), a2);
  v24 = v23;
  v25 = &v23[-*v23];
  if (*v25 < 5u)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v25 + 2);
    if (v26)
    {
      v26 += &v23[*&v23[v26]];
    }
  }

  v27 = (v26 + v14 + 4 + *(v26 + v14 + 4));
  v28 = (v27 - *v27);
  if (*v28 >= 7u && (v29 = v28[3]) != 0)
  {
    v30 = (v27 + v29 + *(v27 + v29));
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_A7AC40(v30, a3);
  v32 = (v24 - *v24);
  if (*v32 < 7u)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32[3];
    if (v33)
    {
      v33 = (v33 + v24 + *(v33 + v24));
    }
  }

  return 10 * (sub_A7AEE0(v33, v31[1] + a5)[1] - v22);
}

uint64_t sub_BE4464(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_A57920((*(a1 + 96) + 4136), a2);
  v7 = (v6 - *v6);
  if (*v7 >= 9u)
  {
    v8 = v7[4];
    if (v8)
    {
      v9 = *(v6 + v8 + *(v6 + v8));
      if (v9)
      {
        v10 = (v9 - 1);
        while (1)
        {
          v11 = sub_A57920((*(a1 + 96) + 4136), a2);
          v12 = (v11 - *v11);
          if (*v12 >= 9u && (v13 = v12[4]) != 0)
          {
            v14 = sub_A571D4((v11 + v13 + *(v11 + v13)), v10);
            if (*(a1 + 92))
            {
              goto LABEL_13;
            }
          }

          else
          {
            v14 = sub_A571D4(0, v10);
            if (*(a1 + 92))
            {
              goto LABEL_13;
            }
          }

          if (a3 == *(v14 + 14))
          {
LABEL_13:
            v15 = sub_A57920((*(a1 + 96) + 4136), a2);
            v16 = (v15 - *v15);
            if (*v16 >= 9u && (v17 = v16[4]) != 0)
            {
              if (*(sub_A571D4((v15 + v17 + *(v15 + v17)), v10) + 15))
              {
                return v10;
              }
            }

            else if (*(sub_A571D4(0, v10) + 15))
            {
              return v10;
            }
          }

          v10 = (v10 - 1);
          if (v10 == -1)
          {
            return v10;
          }
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_BE45F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_BE4670(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_BE4670(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_BE4A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_BE4A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_BE4AA0(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_BE4C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        *v7 = *v4;
        v9 = *(v4 + 16);
        v10 = *(v4 + 32);
        v11 = *(v4 + 64);
        *(v7 + 48) = *(v4 + 48);
        *(v7 + 64) = v11;
        *(v7 + 16) = v9;
        *(v7 + 32) = v10;
        v12 = (v7 + 80);
        v13 = *(v7 + 80);
        if (v13)
        {
          v14 = *(v7 + 88);
          v8 = *(v7 + 80);
          if (v14 != v13)
          {
            do
            {
              v15 = *(v14 - 32);
              if (v15)
              {
                *(v14 - 24) = v15;
                operator delete(v15);
              }

              v14 -= 112;
            }

            while (v14 != v13);
            v8 = *v12;
          }

          *(v7 + 88) = v13;
          operator delete(v8);
          *v12 = 0;
          *(v7 + 88) = 0;
          *(v7 + 96) = 0;
        }

        *(v7 + 80) = *(v4 + 80);
        *(v7 + 96) = *(v4 + 96);
        *(v4 + 80) = 0;
        *(v4 + 88) = 0;
        *(v4 + 96) = 0;
        *(v7 + 104) = *(v4 + 104);
        v4 += 112;
        v7 += 112;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v17 = *(v6 - 32);
      if (v17)
      {
        v18 = *(v6 - 24);
        v16 = *(v6 - 32);
        if (v18 != v17)
        {
          do
          {
            v19 = *(v18 - 32);
            if (v19)
            {
              *(v18 - 24) = v19;
              operator delete(v19);
            }

            v18 -= 112;
          }

          while (v18 != v17);
          v16 = *(v6 - 32);
        }

        *(v6 - 24) = v17;
        operator delete(v16);
      }

      v6 -= 112;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_BE4E24(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671A48;
  a2[1] = v2;
  return result;
}

BOOL sub_BE4E50(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v5 = *(a1 + 8);
  v6 = *a3;
  v7 = *a4;
  v8 = sub_BE4178(v5, *(a2 + 28), *a3);
  v9 = sub_BE4178(v5, *(a2 + 28), v7);
  if (v9 == 0x7FFFFFFF)
  {
    return 0;
  }

  v11 = v8 < v9;
  if (v9 < v8)
  {
    v11 = -1;
  }

  if (v7 < v6)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v7 == v6)
  {
    v12 = 0;
  }

  if (!v11)
  {
    v11 = v12;
  }

  return v11 < 1;
}

uint64_t sub_BE4F04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BE4FEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671AD8;
  a2[1] = v2;
  return result;
}

BOOL sub_BE5018(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v5 = *(a1 + 8);
  v6 = *a3;
  v7 = *a4;
  v8 = sub_BE4178(v5, *(a2 + 28), *a3);
  v9 = sub_BE4178(v5, *(a2 + 28), v7);
  v10 = sub_BE4270(v5, *(a2 + 28), *(a2 + 36), v6, v7) + v8;
  return v9 != 0x7FFFFFFF && v9 <= v10;
}

uint64_t sub_BE50A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_BE5194(uint64_t a1, uint64_t a2)
{
  *a2 = off_2671B58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_BE51C4(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v6 = *a3;
  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = sub_BE4178(v8, *(a2 + 28), *a3);
  v10 = sub_BE4178(v8, *(a2 + 28), v7);
  if (v10 == 0x7FFFFFFF)
  {
    return 0;
  }

  v12 = v9 < v10;
  if (v10 < v9)
  {
    v12 = -1;
  }

  if (v7 < v6)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  if (v7 == v6)
  {
    v13 = 0;
  }

  if (!v12)
  {
    v12 = v13;
  }

  if (v12 > 0)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = sub_BE4178(v14, *(a2 + 28), v6);
  v16 = sub_BE4178(v14, *(a2 + 28), v7);
  v17 = sub_BE4270(v14, *(a2 + 28), *(a2 + 36), v6, v7) + v15;
  return v16 != 0x7FFFFFFF && v16 <= v17;
}

uint64_t sub_BE52EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning23ScheduleGroupDomination23get_domination_functionENS2_19domination_method_tEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *sub_BE5364(uint64_t *result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v53[11] = v3;
    v53[12] = v4;
    v6 = a2;
    v7 = result;
    while (1)
    {
      result = sub_A794D0(a3 + 14, (v7 + 28));
      if (!result)
      {
        break;
      }

LABEL_6:
      v7 = (v7 + 60);
      if (v7 == v6)
      {
        return result;
      }
    }

    v10 = v6;
    v11 = *(v7 + 12);
    if (v11 == -1)
    {
      v12 = 0;
LABEL_48:
      LODWORD(v53[0]) = v12;
      v31 = sub_A57920((a3[12] + 4136), *(v7 + 28));
      v32 = (v31 - *v31);
      v6 = v10;
      if (*v32 < 9u || (v33 = v32[4]) == 0)
      {
        v8 = 0;
        goto LABEL_4;
      }

      v9 = *(v31 + v33 + *(v31 + v33));
      v34 = *(v7 + 12);
      if (v34 >= v9)
      {
        v8 = v9;
      }

      else
      {
        v8 = *(v7 + 12);
      }

      if (v9 <= v34)
      {
LABEL_4:
        v9 = v8 - 1;
LABEL_5:
        HIDWORD(v53[0]) = v9;
        result = sub_BE580C(a3 + 14, (v7 + 28), (v7 + 28), v53);
        goto LABEL_6;
      }

      while (1)
      {
        v35 = sub_A57920((a3[12] + 4136), *(v7 + 28));
        v36 = (v35 - *v35);
        if (*v36 >= 9u && (v37 = v36[4]) != 0)
        {
          v38 = sub_A571D4((v35 + v37 + *(v35 + v37)), --v9);
          v39 = a3[13];
          v40 = v39[1];
          if (v40)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v38 = sub_A571D4(0, --v9);
          v39 = a3[13];
          v40 = v39[1];
          if (v40)
          {
LABEL_61:
            v41 = __ROR8__(*v38, 32);
            v42 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v41 ^ (v41 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v41 ^ (v41 >> 33))) >> 33));
            v43 = ((v42 ^ (v42 >> 33)) + 0x300357C1825D9FCCLL) ^ 0x506F9DC1424E4A4ELL;
            v44 = vcnt_s8(v40);
            v44.i16[0] = vaddlv_u8(v44);
            if (v44.u32[0] > 1uLL)
            {
              v45 = v43;
              if (v43 >= *&v40)
              {
                v45 = v43 % *&v40;
              }
            }

            else
            {
              v45 = v43 & (*&v40 - 1);
            }

            v46 = *(*v39 + 8 * v45);
            if (v46)
            {
              v47 = *v46;
              if (v47)
              {
                if (v44.u32[0] < 2uLL)
                {
                  v48 = *&v40 - 1;
                  while (1)
                  {
                    v51 = v47[1];
                    if (v43 == v51)
                    {
                      v52 = *(v47 + 5) == 1 && *(v47 + 4) == -2;
                      if (v52 && v47[3] == v41)
                      {
                        goto LABEL_5;
                      }
                    }

                    else if ((v51 & v48) != v45)
                    {
                      goto LABEL_55;
                    }

                    v47 = *v47;
                    if (!v47)
                    {
                      goto LABEL_55;
                    }
                  }
                }

                do
                {
                  v49 = v47[1];
                  if (v43 == v49)
                  {
                    v50 = *(v47 + 5) == 1 && *(v47 + 4) == -2;
                    if (v50 && v47[3] == v41)
                    {
                      goto LABEL_5;
                    }
                  }

                  else
                  {
                    if (v49 >= *&v40)
                    {
                      v49 %= *&v40;
                    }

                    if (v49 != v45)
                    {
                      break;
                    }
                  }

                  v47 = *v47;
                }

                while (v47);
              }
            }
          }
        }

LABEL_55:
        if (v9 == v8)
        {
          goto LABEL_4;
        }
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = sub_A57920((a3[12] + 4136), *(v7 + 28));
      v14 = (v13 - *v13);
      if (*v14 >= 9u && (v15 = v14[4]) != 0)
      {
        v16 = sub_A571D4((v13 + v15 + *(v13 + v15)), v12);
        v17 = a3[13];
        v18 = v17[1];
        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v16 = sub_A571D4(0, v12);
        v17 = a3[13];
        v18 = v17[1];
        if (v18)
        {
LABEL_17:
          v19 = __ROR8__(*v16, 32);
          v20 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v19 ^ (v19 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v19 ^ (v19 >> 33))) >> 33));
          v21 = ((v20 ^ (v20 >> 33)) + 0x300357C1825D9FCCLL) ^ 0x506F9DC1424E4A4ELL;
          v22 = vcnt_s8(v18);
          v22.i16[0] = vaddlv_u8(v22);
          if (v22.u32[0] > 1uLL)
          {
            v23 = v21;
            if (v21 >= *&v18)
            {
              v23 = v21 % *&v18;
            }
          }

          else
          {
            v23 = v21 & (*&v18 - 1);
          }

          v24 = *(*v17 + 8 * v23);
          if (v24)
          {
            v25 = *v24;
            if (v25)
            {
              if (v22.u32[0] < 2uLL)
              {
                v26 = *&v18 - 1;
                while (1)
                {
                  v27 = v25[1];
                  if (v21 == v27)
                  {
                    v28 = *(v25 + 5) == 1 && *(v25 + 4) == -2;
                    if (v28 && v25[3] == v19)
                    {
                      goto LABEL_48;
                    }
                  }

                  else if ((v27 & v26) != v23)
                  {
                    goto LABEL_11;
                  }

                  v25 = *v25;
                  if (!v25)
                  {
                    goto LABEL_11;
                  }
                }
              }

              do
              {
                v29 = v25[1];
                if (v21 == v29)
                {
                  v30 = *(v25 + 5) == 1 && *(v25 + 4) == -2;
                  if (v30 && v25[3] == v19)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  if (v29 >= *&v18)
                  {
                    v29 %= *&v18;
                  }

                  if (v29 != v23)
                  {
                    break;
                  }
                }

                v25 = *v25;
              }

              while (v25);
            }
          }
        }
      }

LABEL_11:
      v28 = v12++ == v11;
      if (v28)
      {
        v12 = v11 + 1;
        goto LABEL_48;
      }
    }
  }

  return result;
}

uint64_t *sub_BE580C(void *a1, unint64_t *a2, void *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v6 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 5) == HIDWORD(v4) && *(v11 + 4) == v4)
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 5) != HIDWORD(v4) || *(v11 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_BE6204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a9);
      goto LABEL_8;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_BE62C0(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 8) != 17)
    {
      goto LABEL_13;
    }

    v2 = *a1;
  }

  else
  {
    v2 = a1;
    if (v1 != 17)
    {
      goto LABEL_31;
    }
  }

  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  if (v3 == 0x5F6E6F6974617473 && v4 == 0x6F74735F6E656874 && v5 == 112)
  {
    return 0;
  }

LABEL_13:
  if ((v1 & 0x80000000) == 0 || *(a1 + 8) != 40 || (**a1 == 0x5F6E6F6974617473 ? (v8 = *(*a1 + 8) == 0x6E696C5F6E656874) : (v8 = 0), v8 ? (v9 = *(*a1 + 16) == 0x696C61636F6C5F65) : (v9 = 0), v9 ? (v10 = *(*a1 + 24) == 0x6E6172745F64657ALL) : (v10 = 0), v10 ? (v11 = *(*a1 + 32) == 0x657079745F746973) : (v11 = 0), !v11))
  {
LABEL_31:
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(&v18, " provided in configuration", &v17);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v18;
    }

    else
    {
      v14 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    v16 = sub_2D390(exception, v14, size);
  }

  return 1;
}

void sub_BE6454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_BE64D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v47 = a3 + 3;
  for (i = a3[4]; i != v5; i -= 160)
  {
    v7 = *(i - 88);
    if (v7)
    {
      *(i - 80) = v7;
      operator delete(v7);
    }
  }

  a3[4] = v5;
  v8 = *a3;
  for (j = a3[1]; j != v8; j -= 112)
  {
    v11 = *(j - 32);
    if (v11)
    {
      v12 = *(j - 24);
      v10 = *(j - 32);
      if (v12 != v11)
      {
        do
        {
          v13 = *(v12 - 32);
          if (v13)
          {
            *(v12 - 24) = v13;
            operator delete(v13);
          }

          v12 -= 112;
        }

        while (v12 != v11);
        v10 = *(j - 32);
      }

      *(j - 24) = v11;
      operator delete(v10);
    }
  }

  a3[1] = v8;
  sub_BE6A44(a1, a3 + 6, *(a1 + 4), __p);
  v14 = a3[3];
  if (v14)
  {
    v15 = a3[4];
    v16 = a3[3];
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 88);
        if (v17)
        {
          *(v15 - 80) = v17;
          operator delete(v17);
        }

        v15 -= 160;
      }

      while (v15 != v14);
      v16 = *v47;
    }

    a3[4] = v14;
    operator delete(v16);
    *v47 = 0;
    v47[1] = 0;
    v47[2] = 0;
  }

  *(a3 + 3) = *__p;
  a3[5] = v51;
  v18 = *(a2 + 152);
  v19 = a1;
  if (v18 == 1)
  {
    if (*a1 == 1)
    {
      sub_BE703C(a1, v47, 0, __p);
      sub_BE9458(a3, a3[1], __p[0], __p[1], 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 4));
      v20 = __p[0];
      if (__p[0])
      {
        v21 = __p[1];
        v22 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v24 = *(v21 - 4);
            if (v24)
            {
              v25 = *(v21 - 3);
              v23 = *(v21 - 4);
              if (v25 != v24)
              {
                do
                {
                  v26 = *(v25 - 32);
                  if (v26)
                  {
                    *(v25 - 24) = v26;
                    operator delete(v26);
                  }

                  v25 -= 112;
                }

                while (v25 != v24);
                v23 = *(v21 - 4);
              }

              *(v21 - 3) = v24;
              operator delete(v23);
            }

            v21 -= 112;
          }

          while (v21 != v20);
          v22 = __p[0];
        }

        __p[1] = v20;
        operator delete(v22);
        v19 = a1;
      }
    }

    sub_BE703C(v19, v47, *(v19 + 8), __p);
    sub_BE9458(a3, a3[1], __p[0], __p[1], 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 4));
    v27 = __p[0];
    if (__p[0])
    {
      v28 = __p[1];
      v29 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v31 = *(v28 - 4);
          if (v31)
          {
            v32 = *(v28 - 3);
            v30 = *(v28 - 4);
            if (v32 != v31)
            {
              do
              {
                v33 = *(v32 - 32);
                if (v33)
                {
                  *(v32 - 24) = v33;
                  operator delete(v33);
                }

                v32 -= 112;
              }

              while (v32 != v31);
              v30 = *(v28 - 4);
            }

            *(v28 - 3) = v31;
            operator delete(v30);
          }

          v28 -= 112;
        }

        while (v28 != v27);
        v29 = __p[0];
        v19 = a1;
      }

      __p[1] = v27;
      operator delete(v29);
    }

    v35 = *a3;
    v34 = a3[1];
    v46 = v34;
    while (v35 != v34)
    {
      v36 = 16;
      if (!*(v35 + 104))
      {
        v36 = 12;
      }

      v37 = *(v19 + v36);
      v38 = *(v35 + 80);
      v48 = (v35 + 80);
      memset(v49, 0, sizeof(v49));
      v40 = *(v38 + 80);
      v39 = *(v38 + 88);
      if (v39 != v40)
      {
        if (!(((v39 - v40) >> 4) >> 62))
        {
          operator new();
        }

        sub_1794();
      }

      sub_BE77AC(v19, v47, v49, v37, __p);
      v41 = *v48;
      if (*v48)
      {
        v42 = *(v35 + 88);
        v43 = *v48;
        if (v42 != v41)
        {
          do
          {
            v44 = *(v42 - 4);
            if (v44)
            {
              *(v42 - 3) = v44;
              operator delete(v44);
            }

            v42 -= 112;
          }

          while (v42 != v41);
          v43 = *v48;
        }

        *(v35 + 88) = v41;
        operator delete(v43);
        *v48 = 0;
        *(v35 + 88) = 0;
        *(v35 + 96) = 0;
      }

      *(v35 + 80) = *__p;
      *(v35 + 96) = v51;
      __p[1] = 0;
      v51 = 0;
      __p[0] = 0;
      v35 += 112;
      v34 = v46;
    }
  }
}

void sub_BE69F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_BE76FC(va);
  _Unwind_Resume(a1);
}

void sub_BE6A44(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = a3;
  v10 = *a2;
  v9 = a2[1];
  v48 = 0;
  v49 = 0;
  v47 = 0;
  if (v9 != v10)
  {
    if (!((0xEF7BDEF7BDEF7BDFLL * ((v9 - v10) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (a3 == 1)
  {
    v11 = off_2671C68;
    goto LABEL_8;
  }

  if (!a3)
  {
    v11 = off_2671BD8;
LABEL_8:
    v50[0] = v11;
    v50[1] = a1;
    v51 = v50;
    goto LABEL_10;
  }

  v51 = 0;
LABEL_10:
  sub_BE7C9C(&v47, v50);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v12 = v47;
  if (v47 != v48)
  {
    v13 = v47 - 1;
    v37 = v6;
    do
    {
      if (v12 == v47)
      {
        goto LABEL_15;
      }

      if (!v51)
      {
        sub_2B7420();
      }

      if ((*(*v51 + 48))(v51, v13, v12))
      {
LABEL_15:
        LOBYTE(v39) = 0;
        *(&v39 + 4) = 0x8000000080000000;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        *&v45 = 0x8000000080000000;
        DWORD2(v45) = 0x7FFFFFFF;
        WORD6(v45) = 0;
        *v46 = 0x8000000080000000;
        *&v46[8] = 0;
        *&v46[12] = xmmword_22A7450;
        *&v46[28] = -COERCE_DOUBLE(0x8000000080000000);
        *&v46[36] = -1;
        v46[40] = 1;
        *&v46[44] = 256;
        v46[44] = sub_BE7DF8(a1, *v12, v6);
        v14 = *v12;
        v15 = *(*v12 + 124);
        v16 = *(*v12 + 156);
        *v46 = *(*v12 + 140);
        *&v46[16] = v16;
        *&v46[25] = *(v14 + 165);
        v45 = v15;
        v17 = a4[1];
        if (v17 >= a4[2])
        {
          v24 = sub_BE85C8(a4, &v39);
        }

        else
        {
          *v17 = v39;
          v18 = v40;
          v19 = v41;
          v20 = v42;
          *(v17 + 64) = v43;
          *(v17 + 32) = v19;
          *(v17 + 48) = v20;
          *(v17 + 72) = 0;
          *(v17 + 16) = v18;
          *(v17 + 80) = 0;
          *(v17 + 88) = 0;
          if (v44 != *(&v43 + 1))
          {
            if (((v44 - *(&v43 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v21 = v45;
          v22 = *v46;
          v23 = *&v46[16];
          *(v17 + 142) = *&v46[30];
          *(v17 + 112) = v22;
          *(v17 + 128) = v23;
          *(v17 + 96) = v21;
          v24 = v17 + 160;
        }

        a4[1] = v24;
        if (*(&v43 + 1))
        {
          *&v44 = *(&v43 + 1);
          operator delete(*(&v43 + 1));
        }
      }

      v25 = a4[1];
      v27 = *(v25 - 80);
      v26 = *(v25 - 72);
      if (v27 >= v26)
      {
        v29 = *(v25 - 88);
        v30 = v27 - v29;
        v31 = (v27 - v29) >> 4;
        v32 = v31 + 1;
        if ((v31 + 1) >> 60)
        {
          sub_1794();
        }

        v33 = v26 - v29;
        if (v33 >> 3 > v32)
        {
          v32 = v33 >> 3;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFF0)
        {
          v34 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v32;
        }

        if (v34)
        {
          if (!(v34 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v35 = (16 * v31);
        *v35 = 0xFFFFFFFFLL;
        v35[1] = 0;
        v28 = 16 * v31 + 16;
        memcpy(0, v29, v30);
        *(v25 - 88) = 0;
        *(v25 - 80) = v28;
        *(v25 - 72) = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v6 = v37;
      }

      else
      {
        *v27 = 0xFFFFFFFFLL;
        *(v27 + 1) = 0;
        v28 = (v27 + 16);
      }

      *(v25 - 80) = v28;
      *(*(a4[1] - 80) - 16) = sub_314EB0(0xEF7BDEF7BDEF7BDFLL * ((*v12++ - *a2) >> 3));
      ++v13;
    }

    while (v12 != v48);
  }

  if (v51 == v50)
  {
    (*(*v51 + 32))(v51);
    v36 = v47;
    if (v47)
    {
LABEL_42:
      v48 = v36;
      operator delete(v36);
    }
  }

  else
  {
    if (v51)
    {
      (*(*v51 + 40))();
    }

    v36 = v47;
    if (v47)
    {
      goto LABEL_42;
    }
  }
}

void sub_BE6FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  sub_BE7F20(v24 - 160);
  v26 = *(v24 - 184);
  if (v26)
  {
    *(v24 - 176) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_BE703C(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a3;
  v9 = *a2;
  v10 = a2[1];
  v46 = 0;
  v47 = 0;
  v45 = 0;
  if (v10 != v9)
  {
    if (!((0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 5)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (a3 > 2)
  {
    if ((a3 - 3) < 2)
    {
      v50 = off_2671E78;
      v51 = a3;
      v52 = a1;
      v53 = &v50;
      goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 0:
        v50 = off_2671CE8;
        v53 = &v50;
        goto LABEL_15;
      case 1:
        v11 = off_2671D78;
        goto LABEL_13;
      case 2:
        v11 = off_2671DF8;
LABEL_13:
        v50 = v11;
        v51 = a1;
        v53 = &v50;
        goto LABEL_15;
    }
  }

  v53 = 0;
LABEL_15:
  sub_BE7FAC(&v45, &v50);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v12 = v45;
  if (v45 != v46)
  {
    while (1)
    {
      if (v12 != v45)
      {
        if (!v53)
        {
          sub_2B7420();
        }

        if (!((*v53)[6])(v53, v12 - 1, v12))
        {
          goto LABEL_42;
        }
      }

      LOBYTE(v39) = 0;
      *(&v39 + 4) = 0x8000000080000000;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      memset(__p, 0, 25);
      LOBYTE(__p[3]) = sub_BE8188(a1, v12, v6);
      v13 = __p[1];
      v14 = 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 4);
      if (__p[1] == __p[0])
      {
        break;
      }

      if (v14 < 2)
      {
        goto LABEL_27;
      }

      v15 = __p[0] + 112;
      while (v13 != v15)
      {
        v16 = *(v13 - 4);
        if (v16)
        {
          *(v13 - 3) = v16;
          operator delete(v16);
        }

        v13 -= 112;
      }

      __p[1] = v15;
      v17 = a4[1];
      if (v17 < a4[2])
      {
LABEL_28:
        *v17 = v39;
        v18 = v40;
        v19 = v41;
        v20 = v43;
        *(v17 + 48) = v42;
        *(v17 + 64) = v20;
        *(v17 + 16) = v18;
        *(v17 + 32) = v19;
        *(v17 + 80) = 0;
        *(v17 + 88) = 0;
        *(v17 + 96) = 0;
        v48 = v17 + 80;
        v49 = 0;
        if (__p[1] != __p[0])
        {
          if ((0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 4)) < 0x24924924924924ALL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v17 + 104) = __p[3];
        v21 = v17 + 112;
        goto LABEL_34;
      }

LABEL_33:
      v21 = sub_BE8BA4(a4, &v39);
LABEL_34:
      a4[1] = v21;
      v22 = __p[0];
      if (__p[0])
      {
        v23 = __p[1];
        v24 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v25 = *(v23 - 4);
            if (v25)
            {
              *(v23 - 3) = v25;
              operator delete(v25);
            }

            v23 -= 112;
          }

          while (v23 != v22);
          v24 = __p[0];
        }

        __p[1] = v22;
        operator delete(v24);
      }

LABEL_42:
      v26 = *(a4[1] - 24);
      v28 = *(v26 - 24);
      v27 = *(v26 - 16);
      if (v28 >= v27)
      {
        v30 = *(v26 - 32);
        v31 = v28 - v30;
        v32 = (v28 - v30) >> 4;
        v33 = v32 + 1;
        if ((v32 + 1) >> 60)
        {
          sub_1794();
        }

        v34 = v27 - v30;
        if (v34 >> 3 > v33)
        {
          v33 = v34 >> 3;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF0)
        {
          v35 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v33;
        }

        if (v35)
        {
          if (!(v35 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v36 = (16 * v32);
        *v36 = 0xFFFFFFFFLL;
        v36[1] = 0;
        v29 = 16 * v32 + 16;
        memcpy(0, v30, v31);
        *(v26 - 32) = 0;
        *(v26 - 24) = v29;
        *(v26 - 16) = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v28 = 0xFFFFFFFFLL;
        *(v28 + 1) = 0;
        v29 = (v28 + 16);
      }

      *(v26 - 24) = v29;
      *(*(*(a4[1] - 24) - 24) - 16) = sub_314EB0(0xCCCCCCCCCCCCCCCDLL * ((*v12++ - *a2) >> 5));
      if (v12 == v46)
      {
        goto LABEL_56;
      }
    }

    sub_BE8890(__p, 1 - v14);
LABEL_27:
    v17 = a4[1];
    if (v17 < a4[2])
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

LABEL_56:
  if (v53 == &v50)
  {
    ((*v53)[4])(v53);
    v37 = v45;
    if (v45)
    {
LABEL_60:
      v46 = v37;
      operator delete(v37);
    }
  }

  else
  {
    if (v53)
    {
      (*v53)[5]();
    }

    v37 = v45;
    if (v45)
    {
      goto LABEL_60;
    }
  }
}

void sub_BE7674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27)
{
  sub_BE8340(v27 - 144);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char **sub_BE76FC(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 4);
        if (v6)
        {
          v7 = *(v3 - 3);
          v5 = *(v3 - 4);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 32);
              if (v8)
              {
                *(v7 - 24) = v8;
                operator delete(v8);
              }

              v7 -= 112;
            }

            while (v7 != v6);
            v5 = *(v3 - 4);
          }

          *(v3 - 3) = v6;
          operator delete(v5);
        }

        v3 -= 112;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_BE77AC(uint64_t a1@<X0>, void *a2@<X1>, unsigned int **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = a4;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v10 = a3[1];
  if (v10 != *a3)
  {
    if (!((v10 - *a3) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  *&v33 = &v39;
  if (a4 == 1)
  {
    v11 = off_2671F78;
    goto LABEL_8;
  }

  if (!a4)
  {
    v11 = off_2671EF8;
LABEL_8:
    v42[0] = v11;
    v42[1] = a1;
    v43 = v42;
    goto LABEL_10;
  }

  v43 = 0;
LABEL_10:
  sub_BE7FAC(&v39, v42);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v12 = v39;
  if (v39 != v40)
  {
    v13 = v39 - 8;
    v31 = v7;
    do
    {
      if (v12 == v39)
      {
        goto LABEL_15;
      }

      if (!v43)
      {
        sub_2B7420();
      }

      if ((*(*v43 + 48))(v43, v13, v12))
      {
LABEL_15:
        LOBYTE(v33) = 0;
        *(&v33 + 4) = 0x8000000080000000;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        memset(__p, 0, 25);
        LOBYTE(__p[3]) = sub_BE83CC(a1, v12, v7);
        v14 = a5[1];
        if (v14 >= a5[2])
        {
          v18 = sub_BE920C(a5, &v33);
        }

        else
        {
          *v14 = v33;
          v15 = v34;
          v16 = v35;
          v17 = v37;
          *(v14 + 48) = v36;
          *(v14 + 64) = v17;
          *(v14 + 80) = 0;
          *(v14 + 16) = v15;
          *(v14 + 32) = v16;
          *(v14 + 88) = 0;
          *(v14 + 96) = 0;
          if (__p[1] != __p[0])
          {
            if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          *(v14 + 104) = __p[3];
          v18 = v14 + 112;
        }

        a5[1] = v18;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      v19 = a5[1];
      v21 = *(v19 - 24);
      v20 = *(v19 - 16);
      if (v21 >= v20)
      {
        v23 = *(v19 - 32);
        v24 = v21 - v23;
        v25 = (v21 - v23) >> 4;
        v26 = v25 + 1;
        if ((v25 + 1) >> 60)
        {
          sub_1794();
        }

        v27 = v20 - v23;
        if (v27 >> 3 > v26)
        {
          v26 = v27 >> 3;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF0)
        {
          v28 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (!(v28 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v29 = (16 * v25);
        *v29 = 0xFFFFFFFFLL;
        v29[1] = 0;
        v22 = 16 * v25 + 16;
        memcpy(0, v23, v24);
        *(v19 - 32) = 0;
        *(v19 - 24) = v22;
        *(v19 - 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }

        v7 = v31;
      }

      else
      {
        *v21 = 0xFFFFFFFFLL;
        *(v21 + 1) = 0;
        v22 = (v21 + 16);
      }

      *(v19 - 24) = v22;
      *(*(a5[1] - 24) - 16) = sub_314EB0(0xCCCCCCCCCCCCCCCDLL * ((*v12++ - *a2) >> 5));
      v13 += 8;
    }

    while (v12 != v40);
  }

  if (v43 == v42)
  {
    (*(*v43 + 32))(v43);
    v30 = v39;
    if (v39)
    {
LABEL_42:
      v40 = v30;
      operator delete(v30);
    }
  }

  else
  {
    if (v43)
    {
      (*(*v43 + 40))();
    }

    v30 = v39;
    if (v39)
    {
      goto LABEL_42;
    }
  }
}

void sub_BE7C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  sub_BE8340(v27 - 144);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_BE7C9C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v7 = v6;
      (*(*v4 + 24))(v4, v6);
    }

    else
    {
      v7 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_BEA084(v2, v3, v6);
  result = v7;
  if (v7 == v6)
  {
    return (*(*v7 + 32))(v7);
  }

  if (v7)
  {
    return (*(*v7 + 40))();
  }

  return result;
}

void sub_BE7DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BE7F20(va);
  _Unwind_Resume(a1);
}

BOOL sub_BE7DF8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 1)
  {
    return 0;
  }

  v4 = *(a2 + 172);
  v5 = sub_A57920((*(a1 + 24) + 4136), *(a2 + 152));
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 5)
  {
    v8 = 0;
    goto LABEL_8;
  }

  if (v6[2])
  {
    v8 = v5 + v6[2] + *(v5 + v6[2]);
    if (v7 < 9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (v7 < 9)
    {
      goto LABEL_8;
    }
  }

  v15 = v6[4];
  if (v15)
  {
    v10 = (v5 + v15 + *(v5 + v15));
    goto LABEL_9;
  }

LABEL_8:
  v10 = 0;
LABEL_9:
  v11 = sub_A571D4(v10, v4);
  v12 = sub_92FC60(*(*(a1 + 24) + 4056) + 24, *&v8[8 * *(v11 + 14) + 4], 0, "line");
  v13 = (v12 - *v12);
  return *v13 >= 0x4Du && (v14 = v13[38]) != 0 && *(v12 + v14) == 2;
}

uint64_t sub_BE7F20(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

_BYTE *sub_BE7FAC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v12 = v11;
      (*(*v4 + 24))(v4, v11);
    }

    else
    {
      v12 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v12 = 0;
  }

  if (&v3[-v2] >> 3 < 129)
  {
    v9 = 0;
    v5 = 0;
  }

  else
  {
    v5 = &v3[-v2] >> 3;
    while (1)
    {
      v6 = operator new(8 * v5, &std::nothrow);
      if (v6)
      {
        break;
      }

      v7 = v5 >> 1;
      v8 = v5 > 1;
      v5 >>= 1;
      if (!v8)
      {
        v9 = 0;
        v5 = v7;
        goto LABEL_13;
      }
    }

    v9 = v6;
  }

LABEL_13:
  sub_BEBBC4(v2, v3, v11, &v3[-v2] >> 3, v9, v5);
  if (v9)
  {
    operator delete(v9);
  }

  result = v12;
  if (v12 == v11)
  {
    return (*(*v12 + 32))(v12);
  }

  if (v12)
  {
    return (*(*v12 + 40))();
  }

  return result;
}

void sub_BE8168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    operator delete(v9);
  }

  sub_BE8340(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE8188(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 - 3) >= 2)
  {
    if (a3 == 2)
    {
      LOBYTE(v4) = 2;
    }

    else
    {
      LOBYTE(v4) = a3 == 1;
    }

    return v4;
  }

  v7 = *(*a2 + 144);
  v8 = sub_A57920((*(a1 + 24) + 4136), *(*a2 + 124));
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 < 5)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (!v9[2])
  {
    v11 = 0;
    if (v10 >= 9)
    {
      goto LABEL_25;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v11 = v8 + v9[2] + *(v8 + v9[2]);
  if (v10 < 9)
  {
    goto LABEL_11;
  }

LABEL_25:
  v22 = v9[4];
  if (!v22)
  {
    goto LABEL_11;
  }

  v12 = (v8 + v22 + *(v8 + v22));
LABEL_12:
  v13 = sub_A571D4(v12, v7);
  v14 = sub_92FC60(*(*(a1 + 24) + 4056) + 24, *&v11[8 * *(v13 + 14) + 4], 0, "line");
  v15 = (v14 - *v14);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    v17 = *(v14 + v16 + 4) | (*(v14 + v16) << 32);
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  v18 = sub_93E04C(*(*(a1 + 24) + 4144) + 24, __ROR8__(v17, 32), 0, "system");
  v19 = (v18 - *v18);
  if (*v19 < 0x25u)
  {
    goto LABEL_20;
  }

  v20 = v19[18];
  if (!v20)
  {
    goto LABEL_20;
  }

  v4 = *(v18 + v20);
  if (v4 == 1)
  {
    return v4;
  }

  if (v4)
  {
    return 0;
  }

LABEL_20:
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_BE8340(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_BE83CC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(*a2 + 144);
  v6 = sub_A57920((*(a1 + 24) + 4136), *(*a2 + 124));
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_A571D4(v9, v5);
  v11 = sub_502FF8(*(*(a1 + 24) + 4120) + 24, *v10, 0, "stop");
  v12 = (v11 - *v11);
  if (*v12 >= 0xDu && (v13 = v12[6]) != 0)
  {
    v14 = *(v11 + v13 + 4) | (*(v11 + v13) << 32);
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  if (HIDWORD(v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = 3;
  }

  if (v14 == -1)
  {
    v16 = 3;
  }

  else
  {
    v16 = v15;
  }

  if (v14 == -1)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * (HIDWORD(v14) == 0);
  }

  if (a3)
  {
    v17 = 0;
  }

  if (a3 == 1)
  {
    return v16;
  }

  else
  {
    return v17;
  }
}

char **sub_BE84E0(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 11);
        if (v5)
        {
          *(v3 - 10) = v5;
          operator delete(v5);
        }

        v3 -= 160;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char **sub_BE8554(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v3 -= 112;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_BE85C8(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5) + 1;
  if (v2 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v4 = 0x199999999999999;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 32 * ((a1[1] - *a1) >> 5);
  v6 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v6;
  v7 = *(a2 + 72);
  *(v5 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v8;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v9 = *(a2 + 80);
  if (v9 != v7)
  {
    if (((v9 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v10;
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 142) = *(a2 + 142);
  v11 = *a1;
  v12 = a1[1];
  v13 = v5 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v5 + *a1 - v12;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 3);
      v18 = v14[8];
      *(v15 + 32) = *(v14 + 2);
      *(v15 + 48) = v17;
      *(v15 + 16) = v16;
      *(v15 + 64) = v18;
      *(v15 + 72) = 0;
      *(v15 + 80) = 0;
      *(v15 + 88) = 0;
      *(v15 + 72) = *(v14 + 9);
      *(v15 + 88) = v14[11];
      v14[9] = 0;
      v14[10] = 0;
      v14[11] = 0;
      v19 = *(v14 + 6);
      v20 = *(v14 + 7);
      v21 = *(v14 + 8);
      *(v15 + 142) = *(v14 + 142);
      *(v15 + 112) = v20;
      *(v15 + 128) = v21;
      *(v15 + 96) = v19;
      v14 += 20;
      v15 += 160;
    }

    while (v14 != v12);
    do
    {
      v22 = v11[9];
      if (v22)
      {
        v11[10] = v22;
        operator delete(v22);
      }

      v11 += 20;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v5 + 160;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v5 + 160;
}

void sub_BE87FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 80) = v6;
    operator delete(v6);
  }

  sub_BE8820(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE8820(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 160;
        *(a1 + 16) = v2 - 160;
        v5 = *(v2 - 88);
        if (!v5)
        {
          break;
        }

        *(v2 - 80) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 160;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_BE8890(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 112 * a2;
      do
      {
        *(v3 + 80) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0uLL;
        *v3 = 0uLL;
        *(v3 + 4) = 0x8000000080000000;
        *(v3 + 89) = 0uLL;
        v3 += 112;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x249249249249249)
    {
      sub_1794();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x124924924924924)
    {
      v8 = 0x249249249249249;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x249249249249249)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 112 * v5;
    v11 = 112 * v5 + 112 * a2;
    v12 = 112 * v5;
    do
    {
      *(v12 + 80) = 0uLL;
      *(v12 + 96) = 0uLL;
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 4) = 0x8000000080000000;
      *(v12 + 89) = 0uLL;
      v12 += 112;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        *v17 = *v16;
        v18 = *(v16 + 1);
        v19 = *(v16 + 2);
        v20 = *(v16 + 4);
        *(v17 + 48) = *(v16 + 3);
        *(v17 + 64) = v20;
        *(v17 + 16) = v18;
        *(v17 + 32) = v19;
        *(v17 + 88) = 0;
        *(v17 + 96) = 0;
        *(v17 + 80) = 0;
        *(v17 + 80) = *(v16 + 5);
        *(v17 + 96) = v16[12];
        v16[10] = 0;
        v16[11] = 0;
        v16[12] = 0;
        *(v17 + 104) = *(v16 + 104);
        v16 += 14;
        v17 += 112;
      }

      while (v16 != v14);
      do
      {
        v21 = v13[10];
        if (v21)
        {
          v13[11] = v21;
          operator delete(v21);
        }

        v13 += 14;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t sub_BE8AD0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 112;
        *(a1 + 16) = v2 - 112;
        v5 = *(v2 - 32);
        if (!v5)
        {
          break;
        }

        *(v2 - 24) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 112;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_BE8B40(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 32);
      if (v5)
      {
        *(v3 - 24) = v5;
        operator delete(v5);
      }

      v3 -= 112;
    }
  }

  return a1;
}

uint64_t sub_BE8BA4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x249249249249249)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(&stru_20.filesize + 14 * v2) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  if (v10 != v9)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v10 - v9) >> 4)) <= 0x249249249249249)
    {
      operator new();
    }

    sub_1794();
  }

  *(v6 + 104) = *(a2 + 104);
  v11 = *a1;
  v12 = a1[1];
  v13 = v6 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v6 + *a1 - v12;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 2);
      v18 = *(v14 + 4);
      *(v15 + 48) = *(v14 + 3);
      *(v15 + 64) = v18;
      *(v15 + 16) = v16;
      *(v15 + 32) = v17;
      *(v15 + 88) = 0;
      *(v15 + 96) = 0;
      *(v15 + 80) = 0;
      *(v15 + 80) = *(v14 + 5);
      *(v15 + 96) = v14[12];
      v14[10] = 0;
      v14[11] = 0;
      v14[12] = 0;
      *(v15 + 104) = *(v14 + 104);
      v14 += 14;
      v15 += 112;
    }

    while (v14 != v12);
    do
    {
      v20 = v11[10];
      if (v20)
      {
        v21 = v11[11];
        v19 = v11[10];
        if (v21 != v20)
        {
          do
          {
            v22 = *(v21 - 32);
            if (v22)
            {
              *(v21 - 24) = v22;
              operator delete(v22);
            }

            v21 -= 112;
          }

          while (v21 != v20);
          v19 = v11[10];
        }

        v11[11] = v20;
        operator delete(v19);
      }

      v11 += 14;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v6 + 112;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v6 + 112;
}

void sub_BE8E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  *(v4 + 88) = v3;
  sub_BE8FA8(va1);
  sub_BE902C(va);
  _Unwind_Resume(a1);
}

void sub_BE8E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_BE8FA8(va1);
  sub_BE902C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE8E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      v6 = *(v5 + 16);
      v7 = *(v5 + 32);
      v8 = *(v5 + 64);
      *(a4 + 48) = *(v5 + 48);
      *(a4 + 64) = v8;
      *(a4 + 16) = v6;
      *(a4 + 32) = v7;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      v10 = *(v5 + 80);
      v9 = *(v5 + 88);
      if (v9 != v10)
      {
        if (((v9 - v10) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      *(a4 + 104) = *(v5 + 104);
      v5 += 112;
      a4 += 112;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_BE8F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 88) = v12;
    operator delete(v12);
  }

  sub_BE8B40(&a9);
  _Unwind_Resume(a1);
}

void ***sub_BE8FA8(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 4);
          if (v6)
          {
            *(v4 - 3) = v6;
            operator delete(v6);
          }

          v4 -= 112;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_BE902C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      while (1)
      {
        v4 = i - 112;
        *(a1 + 16) = i - 112;
        v5 = *(i - 32);
        if (v5)
        {
          break;
        }

        i -= 112;
        if (v4 == v2)
        {
          goto LABEL_12;
        }
      }

      v6 = *(i - 24);
      v7 = *(i - 32);
      if (v6 != v5)
      {
        break;
      }

      *(i - 24) = v5;
      operator delete(v7);
      i = *(a1 + 16);
      if (i == v2)
      {
        goto LABEL_12;
      }
    }

    do
    {
      v8 = *(v6 - 32);
      if (v8)
      {
        *(v6 - 24) = v8;
        operator delete(v8);
      }

      v6 -= 112;
    }

    while (v6 != v5);
    v9 = *(i - 32);
    *(i - 24) = v5;
    operator delete(v9);
  }

LABEL_12:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_BE90F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 32);
      if (v6)
      {
        v7 = *(v3 - 24);
        v5 = *(v3 - 32);
        if (v7 != v6)
        {
          do
          {
            v8 = *(v7 - 32);
            if (v8)
            {
              *(v7 - 24) = v8;
              operator delete(v8);
            }

            v7 -= 112;
          }

          while (v7 != v6);
          v5 = *(v3 - 32);
        }

        *(v3 - 24) = v6;
        operator delete(v5);
      }

      v3 -= 112;
    }
  }

  return a1;
}

uint64_t sub_BE9198(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v3 -= 112;
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_BE920C(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x249249249249249)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v7 = a2[3];
  *(v6 + 32) = a2[2];
  *(v6 + 48) = v7;
  *(v6 + 64) = a2[4];
  v9 = *a2;
  v8 = a2[1];
  *(&stru_20.filesize + 14 * v2) = 0;
  *v6 = v9;
  *(v6 + 16) = v8;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  v11 = *(a2 + 10);
  v10 = *(a2 + 11);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(v6 + 104) = *(a2 + 104);
  v12 = *a1;
  v13 = a1[1];
  v14 = v6 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v6 + *a1 - v13;
    do
    {
      *v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      v19 = *(v15 + 4);
      *(v16 + 48) = *(v15 + 3);
      *(v16 + 64) = v19;
      *(v16 + 16) = v17;
      *(v16 + 32) = v18;
      *(v16 + 88) = 0;
      *(v16 + 96) = 0;
      *(v16 + 80) = 0;
      *(v16 + 80) = *(v15 + 5);
      *(v16 + 96) = v15[12];
      v15[10] = 0;
      v15[11] = 0;
      v15[12] = 0;
      *(v16 + 104) = *(v15 + 104);
      v15 += 14;
      v16 += 112;
    }

    while (v15 != v13);
    do
    {
      v20 = v12[10];
      if (v20)
      {
        v12[11] = v20;
        operator delete(v20);
      }

      v12 += 14;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v6 + 112;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v6 + 112;
}

void sub_BE9434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 88) = v6;
    operator delete(v6);
  }

  sub_BE8AD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BE9458(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v8 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 4) >= a5)
    {
      v14 = v8 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v8 - a2) >> 4) >= a5)
      {
        sub_BE992C(a1, a2, v8, a2 + 112 * a5);
        v24 = 112 * a5 + a3;
        v25 = v5 + 80;
        v26 = a3 + 88;
        do
        {
          v27 = v26 - 88;
          *(v25 - 80) = *(v26 - 88);
          v28 = *(v26 - 72);
          v29 = *(v26 - 56);
          v30 = *(v26 - 24);
          *(v25 - 32) = *(v26 - 40);
          *(v25 - 16) = v30;
          *(v25 - 64) = v28;
          *(v25 - 48) = v29;
          if (v25 - 80 != v26 - 88)
          {
            sub_BE9DB4(v25, *(v26 - 8), *v26, 0x6DB6DB6DB6DB6DB7 * ((*v26 - *(v26 - 8)) >> 4));
          }

          *(v25 + 24) = *(v26 + 16);
          v25 += 112;
          v26 += 112;
        }

        while (v27 + 112 != v24);
      }

      else
      {
        v15 = v14 + a3;
        v55 = a1[1];
        v56[0] = v8;
        __p = a1;
        v51 = &v55;
        v52 = v56;
        v16 = v8;
        LOBYTE(v53) = 0;
        if (v14 + a3 != a4)
        {
          v49 = v14 + a3;
          v16 = v8;
          v17 = v14 + a3;
          do
          {
            *v16 = *v17;
            v18 = *(v17 + 16);
            v19 = *(v17 + 32);
            v20 = *(v17 + 64);
            *(v16 + 48) = *(v17 + 48);
            *(v16 + 64) = v20;
            *(v16 + 16) = v18;
            *(v16 + 32) = v19;
            *(v16 + 80) = 0;
            *(v16 + 88) = 0;
            *(v16 + 96) = 0;
            v21 = *(v17 + 80);
            v22 = *(v17 + 88);
            v56[1] = v16 + 80;
            v57 = 0;
            v23 = v16;
            if (v22 != v21)
            {
              if ((0x6DB6DB6DB6DB6DB7 * ((v22 - v21) >> 4)) <= 0x249249249249249)
              {
                operator new();
              }

              sub_1794();
            }

            *(v16 + 104) = *(v17 + 104);
            v17 += 112;
            v16 += 112;
            v56[0] = v23 + 112;
          }

          while (v17 != a4);
          v5 = a2;
          v14 = v8 - a2;
          v15 = v49;
        }

        a1[1] = v16;
        if (v14 >= 1)
        {
          sub_BE992C(a1, v5, v8, v5 + 112 * a5);
          v42 = v5 + 80;
          v43 = a3 + 88;
          do
          {
            v44 = v43 - 88;
            *(v42 - 80) = *(v43 - 88);
            v45 = *(v43 - 72);
            v46 = *(v43 - 56);
            v47 = *(v43 - 24);
            *(v42 - 32) = *(v43 - 40);
            *(v42 - 16) = v47;
            *(v42 - 64) = v45;
            *(v42 - 48) = v46;
            if (v42 - 80 != v43 - 88)
            {
              sub_BE9DB4(v42, *(v43 - 8), *v43, 0x6DB6DB6DB6DB6DB7 * ((*v43 - *(v43 - 8)) >> 4));
            }

            *(v42 + 24) = *(v43 + 16);
            v42 += 112;
            v43 += 112;
          }

          while (v44 + 112 != v15);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v8 - *a1) >> 4);
      if (v11 > 0x249249249249249)
      {
        sub_1794();
      }

      v12 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 4);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x124924924924924)
      {
        v13 = 0x249249249249249;
      }

      else
      {
        v13 = v11;
      }

      v54 = a1;
      if (v13)
      {
        if (v13 <= 0x249249249249249)
        {
          operator new();
        }

        sub_1808();
      }

      v32 = 16 * ((a2 - v10) >> 4);
      __p = 0;
      v51 = v32;
      v52 = v32;
      v53 = 0;
      v33 = 112 * a5;
      v34 = (v32 + 112 * a5);
      do
      {
        sub_BE9C8C(v54, v32, a3);
        v32 += 112;
        a3 += 112;
        v33 -= 112;
      }

      while (v33);
      v52 = v34;
      v5 = sub_BE9A78(a1, &__p, v5);
      v35 = v51;
      for (i = v52; v52 != v35; i = v52)
      {
        while (1)
        {
          v38 = i - 14;
          v52 = i - 14;
          v39 = *(i - 4);
          if (v39)
          {
            break;
          }

          i -= 14;
          if (v38 == v35)
          {
            goto LABEL_26;
          }
        }

        v40 = *(i - 3);
        v37 = *(i - 4);
        if (v40 != v39)
        {
          do
          {
            v41 = *(v40 - 32);
            if (v41)
            {
              *(v40 - 24) = v41;
              operator delete(v41);
            }

            v40 -= 112;
          }

          while (v40 != v39);
          v37 = *(i - 4);
        }

        *(i - 3) = v39;
        operator delete(v37);
      }

LABEL_26:
      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_BE98CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_BE902C(va);
  _Unwind_Resume(a1);
}

void sub_BE98E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_BE8FA8(va1);
  sub_BE90F8(va);
  *(a11 + 8) = a10;
  _Unwind_Resume(a1);
}

void sub_BE9914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_BE902C(va);
  _Unwind_Resume(a1);
}

__n128 sub_BE992C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v6 = a2 + v5 - a4;
  v7 = v5;
  if (v6 < a3)
  {
    v8 = a2 + v5 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v8;
      v9 = *(v8 + 16);
      v10 = *(v8 + 32);
      v11 = *(v8 + 64);
      *(v7 + 48) = *(v8 + 48);
      *(v7 + 64) = v11;
      *(v7 + 16) = v9;
      *(v7 + 32) = v10;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 80) = 0;
      result = *(v8 + 80);
      *(v7 + 80) = result;
      *(v7 + 96) = *(v8 + 96);
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v7 + 104) = *(v8 + 104);
      v8 += 112;
      v7 += 112;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = v7;
  if (v5 != a4)
  {
    do
    {
      v14 = (v5 - 32);
      v15 = *(v5 - 32);
      *(v5 - 112) = *(v6 - 112);
      v16 = *(v6 - 96);
      v17 = *(v6 - 80);
      v18 = *(v6 - 48);
      *(v5 - 64) = *(v6 - 64);
      *(v5 - 48) = v18;
      *(v5 - 96) = v16;
      *(v5 - 80) = v17;
      if (v15)
      {
        v19 = *(v5 - 24);
        v13 = v15;
        if (v19 != v15)
        {
          do
          {
            v20 = *(v19 - 4);
            if (v20)
            {
              *(v19 - 3) = v20;
              operator delete(v20);
            }

            v19 -= 112;
          }

          while (v19 != v15);
          v13 = *v14;
        }

        *(v5 - 24) = v15;
        operator delete(v13);
        *v14 = 0;
        *(v5 - 24) = 0;
        *(v5 - 16) = 0;
      }

      result = *(v6 - 32);
      *(v5 - 32) = result;
      *(v5 - 16) = *(v6 - 16);
      *(v6 - 32) = 0;
      *(v6 - 24) = 0;
      *(v6 - 16) = 0;
      *(v5 - 8) = *(v6 - 8);
      v5 -= 112;
      v6 -= 112;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t sub_BE9A78(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 16);
      v11 = *(v9 + 32);
      v12 = *(v9 + 64);
      *(v8 + 48) = *(v9 + 48);
      *(v8 + 64) = v12;
      *(v8 + 16) = v10;
      *(v8 + 32) = v11;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = 0;
      *(v8 + 80) = *(v9 + 80);
      *(v8 + 96) = *(v9 + 96);
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v8 + 104) = *(v9 + 104);
      v9 += 112;
      v8 += 112;
    }

    while (v9 != v7);
    v13 = a3;
    do
    {
      v15 = *(v13 + 80);
      if (v15)
      {
        v16 = *(v13 + 88);
        v14 = *(v13 + 80);
        if (v16 != v15)
        {
          do
          {
            v17 = *(v16 - 32);
            if (v17)
            {
              *(v16 - 24) = v17;
              operator delete(v17);
            }

            v16 -= 112;
          }

          while (v16 != v15);
          v14 = *(v13 + 80);
        }

        *(v13 + 88) = v15;
        operator delete(v14);
      }

      v13 += 112;
    }

    while (v13 != v7);
  }

  v18 = *a1;
  v19 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v20 = v19 + v18 - a3;
  if (v18 != a3)
  {
    v21 = v18;
    v22 = v19 + v18 - a3;
    do
    {
      *v22 = *v21;
      v23 = *(v21 + 16);
      v24 = *(v21 + 32);
      v25 = *(v21 + 64);
      *(v22 + 48) = *(v21 + 48);
      *(v22 + 64) = v25;
      *(v22 + 16) = v23;
      *(v22 + 32) = v24;
      *(v22 + 88) = 0;
      *(v22 + 96) = 0;
      *(v22 + 80) = 0;
      *(v22 + 80) = *(v21 + 80);
      *(v22 + 96) = *(v21 + 96);
      *(v21 + 80) = 0;
      *(v21 + 88) = 0;
      *(v21 + 96) = 0;
      *(v22 + 104) = *(v21 + 104);
      v21 += 112;
      v22 += 112;
    }

    while (v21 != a3);
    do
    {
      v27 = *(v18 + 80);
      if (v27)
      {
        v28 = *(v18 + 88);
        v26 = *(v18 + 80);
        if (v28 != v27)
        {
          do
          {
            v29 = *(v28 - 32);
            if (v29)
            {
              *(v28 - 24) = v29;
              operator delete(v29);
            }

            v28 -= 112;
          }

          while (v28 != v27);
          v26 = *(v18 + 80);
        }

        *(v18 + 88) = v27;
        operator delete(v26);
      }

      v18 += 112;
    }

    while (v18 != a3);
  }

  a2[1] = v20;
  v30 = *a1;
  *a1 = v20;
  a1[1] = v30;
  a2[1] = v30;
  v31 = a1[1];
  a1[1] = a2[2];
  a2[2] = v31;
  v32 = a1[2];
  a1[2] = a2[3];
  a2[3] = v32;
  *a2 = a2[1];
  return v6;
}

void sub_BE9C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 64);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = v5;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v6 = *(a3 + 80);
  v7 = *(a3 + 88);
  if (v7 != v6)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 4)) < 0x24924924924924ALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a2 + 104) = *(a3 + 104);
}

void sub_BE9D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 88) = v10;
  sub_BE8FA8(&a9);
  _Unwind_Resume(a1);
}

void sub_BE9DB4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 4) < a4)
  {
    if (v7)
    {
      v8 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v7)
      {
        do
        {
          v11 = *(v9 - 32);
          if (v11)
          {
            *(v9 - 24) = v11;
            operator delete(v11);
          }

          v9 -= 112;
        }

        while (v9 != v7);
        v10 = *a1;
      }

      a1[1] = v7;
      operator delete(v10);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v8;
    }

    if (a4 <= 0x249249249249249)
    {
      v25 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 4);
      v26 = 2 * v25;
      if (2 * v25 <= a4)
      {
        v26 = a4;
      }

      if (v25 >= 0x124924924924924)
      {
        v27 = 0x249249249249249;
      }

      else
      {
        v27 = v26;
      }

      if (v27 <= 0x249249249249249)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v7) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v20 = a2 + 88;
      do
      {
        v21 = v20 - 88;
        *v7 = *(v20 - 88);
        v22 = *(v20 - 72);
        v23 = *(v20 - 56);
        v24 = *(v20 - 24);
        *(v7 + 48) = *(v20 - 40);
        *(v7 + 64) = v24;
        *(v7 + 16) = v22;
        *(v7 + 32) = v23;
        if (v7 != v20 - 88)
        {
          sub_4AEA34((v7 + 80), *(v20 - 8), *v20, (*v20 - *(v20 - 8)) >> 4);
        }

        *(v7 + 104) = *(v20 + 16);
        v7 += 112;
        v20 += 112;
      }

      while (v21 + 112 != a3);
      v12 = a1[1];
    }

    while (v12 != v7)
    {
      v28 = *(v12 - 32);
      if (v28)
      {
        *(v12 - 24) = v28;
        operator delete(v28);
      }

      v12 -= 112;
    }

    a1[1] = v7;
  }

  else
  {
    v13 = a2 + v12 - v7;
    if (v12 != v7)
    {
      v14 = v7 + 80;
      v15 = a2 + 88;
      do
      {
        v16 = v15 - 88;
        *(v14 - 80) = *(v15 - 88);
        v17 = *(v15 - 72);
        v18 = *(v15 - 56);
        v19 = *(v15 - 24);
        *(v14 - 32) = *(v15 - 40);
        *(v14 - 16) = v19;
        *(v14 - 64) = v17;
        *(v14 - 48) = v18;
        if (v14 - 80 != v15 - 88)
        {
          sub_4AEA34(v14, *(v15 - 8), *v15, (*v15 - *(v15 - 8)) >> 4);
        }

        *(v14 + 24) = *(v15 + 16);
        v14 += 112;
        v15 += 112;
      }

      while (v16 + 112 != v13);
      v12 = a1[1];
    }

    a1[1] = sub_BE8E74(a1, v13, a3, v12);
  }
}

void sub_BEA084(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = &a2[-a1] >> 3;
  if (v3 < 129)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v4 = a1;
    v5 = a2;
    v6 = a3;
    v7 = &a2[-a1] >> 3;
    while (1)
    {
      v8 = operator new(8 * v7, &std::nothrow);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
LABEL_8:
    a3 = v6;
    a2 = v5;
    a1 = v4;
  }

  sub_BEA174(a1, a2, a3, v3, v11, v7);
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_BEA15C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BEA174(uint64_t result, char *a2, uint64_t a3, unint64_t a4, uint64_t *a5, int64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  v8 = result;
  if (a4 == 2)
  {
    v9 = *(a3 + 24);
    if (v9)
    {
      v10 = a2 - 8;
      result = (*(*v9 + 48))(v9, a2 - 1, v8);
      if (result)
      {
        v11 = *v8;
        *v8 = *v10;
        *v10 = v11;
      }

      return result;
    }

    goto LABEL_56;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v12 = (result + 8);
    if ((result + 8) == a2)
    {
      return result;
    }

    v13 = 0;
    v14 = result;
    while (1)
    {
      v16 = *(a3 + 24);
      if (!v16)
      {
        break;
      }

      v17 = v12;
      result = (*(*v16 + 48))(v16, v12, v14);
      if (result)
      {
        v54 = *v17;
        v18 = v13;
        do
        {
          *(v8 + v18 + 8) = *(v8 + v18);
          if (!v18)
          {
            v15 = v8;
            goto LABEL_12;
          }

          v19 = *(a3 + 24);
          if (!v19)
          {
            goto LABEL_56;
          }

          v18 -= 8;
          result = (*(*v19 + 48))(v19, &v54, v8 + v18);
        }

        while ((result & 1) != 0);
        v15 = (v8 + v18 + 8);
LABEL_12:
        *v15 = v54;
      }

      v12 = v17 + 1;
      v13 += 8;
      v14 = v17;
      if (v17 + 1 == a2)
      {
        return result;
      }
    }

LABEL_56:
    sub_2B7420();
  }

  v21 = a4 >> 1;
  v22 = a4 >> 1;
  v23 = a4 - (a4 >> 1);
  v24 = (v22 * 8 + result);
  if (a4 <= a6)
  {
    sub_BEA56C(result, v24, a3, a4 >> 1, a5);
    v27 = &a5[v21];
    result = sub_BEA56C(&v8[v22], a2, a3, v23, v27);
    v28 = v27;
    v29 = a5;
    v30 = v8;
    v31 = &a5[a4];
    do
    {
      if (v28 == v31)
      {
        if (v29 == v27)
        {
          return result;
        }

        v45 = &a5[v22] - v29 - 8;
        if (v45 >= 0x38)
        {
          if ((v8 - v29) >= 0x20)
          {
            v47 = v30 + 2;
            v48 = (v45 >> 3) + 1;
            v49 = v48 & 0x3FFFFFFFFFFFFFFCLL;
            v46 = &v29[v49];
            v30 = (v30 + v49 * 8);
            v50 = (v29 + 2);
            v51 = v48 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v52 = *v50;
              *(v47 - 1) = *(v50 - 1);
              *v47 = v52;
              v47 += 2;
              v50 += 2;
              v51 -= 4;
            }

            while (v51);
            if (v48 == (v48 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v46 = v29;
          }
        }

        else
        {
          v46 = v29;
        }

        do
        {
          v53 = *v46++;
          *v30++ = v53;
        }

        while (v46 != v27);
        return result;
      }

      v32 = *(a3 + 24);
      if (!v32)
      {
        goto LABEL_56;
      }

      v33 = v28;
      result = (*(*v32 + 48))(v32, v28, v29);
      if (result)
      {
        v34 = v33;
      }

      else
      {
        v34 = v29;
      }

      if (result)
      {
        v35 = 0;
      }

      else
      {
        v35 = 8;
      }

      v29 = (v29 + v35);
      if (result)
      {
        v36 = 1;
      }

      else
      {
        v36 = 0;
      }

      v28 = &v33[v36];
      *v30++ = *v34;
      ++v8;
    }

    while (v29 != v27);
    if (v28 != v31)
    {
      v37 = v31 - v33 - v36 * 8 - 8;
      if (v37 <= 0x57)
      {
        goto LABEL_59;
      }

      if ((v8 - v33 - v36 * 8) < 0x20)
      {
        goto LABEL_59;
      }

      v38 = v30 + 2;
      v39 = (v37 >> 3) + 1;
      v40 = 8 * (v39 & 0x3FFFFFFFFFFFFFFCLL);
      v28 = (v28 + v40);
      v30 = (v30 + v40);
      v41 = &v33[v36 + 2];
      v42 = v39 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v43 = *v41;
        *(v38 - 1) = *(v41 - 1);
        *v38 = v43;
        v38 += 2;
        v41 += 4;
        v42 -= 4;
      }

      while (v42);
      if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_59:
        do
        {
          v44 = *v28++;
          *v30++ = v44;
        }

        while (v28 != v31);
      }
    }
  }

  else
  {
    sub_BEA174(result, v24, a3, a4 >> 1, a5, a6);
    sub_BEA174(&v8[v22], a2, a3, v23, a5, a6);

    return sub_BEA8F0(v8, &v8[v22], a2, a3, v21, v23, a5, a6);
  }

  return result;
}

char *sub_BEA56C(char *result, char *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v6 = result;
    if (a4 == 1)
    {
LABEL_10:
      *v5 = *v6;
      return result;
    }

    if (a4 == 2)
    {
      v9 = *(a3 + 24);
      if (v9)
      {
        v10 = a2 - 8;
        result = (*(*v9 + 48))(v9, a2 - 8, v6);
        if (result)
        {
          v11 = v10;
        }

        else
        {
          v11 = v6;
        }

        *v5++ = *v11;
        if (!result)
        {
          v6 = v10;
        }

        goto LABEL_10;
      }

LABEL_57:
      sub_2B7420();
    }

    if (a4 <= 8)
    {
      if (result == a2)
      {
        return result;
      }

      v12 = result + 8;
      *a5 = *result;
      if (result + 8 == a2)
      {
        return result;
      }

      v13 = 0;
      v14 = a5;
      while (1)
      {
        v17 = *(a3 + 24);
        if (!v17)
        {
          goto LABEL_57;
        }

        v18 = v14++;
        result = (*(*v17 + 48))(v17, v12, v18);
        v15 = v14;
        if (result)
        {
          v18[1] = *v18;
          v15 = v5;
          if (v18 != v5)
          {
            v19 = v13;
            do
            {
              v20 = *(a3 + 24);
              if (!v20)
              {
                goto LABEL_57;
              }

              result = (*(*v20 + 48))(v20, v12, v5 + v19 - 8);
              if (!result)
              {
                v15 = (v5 + v19);
                goto LABEL_17;
              }

              *(v5 + v19) = *(v5 + v19 - 8);
              v19 -= 8;
            }

            while (v19);
            v15 = v5;
          }
        }

LABEL_17:
        v16 = *v12;
        v12 += 8;
        *v15 = v16;
        v13 += 8;
        if (v12 == a2)
        {
          return result;
        }
      }
    }

    v21 = a4 >> 1;
    v22 = 8 * (a4 >> 1);
    v23 = &result[v22];
    sub_BEA174(result, &result[v22], a3, v21, a5, v21);
    result = sub_BEA174(&v6[v22], a2, a3, a4 - v21, &v5[v22 / 8], a4 - v21);
    v25 = v5;
    v26 = v23;
    do
    {
      if (v26 == a2)
      {
        if (v6 == v23)
        {
          return result;
        }

        v42 = v23 - v6 - 8;
        if (v42 >= 0x38)
        {
          if ((v25 - v6) >= 0x20)
          {
            v44 = v5 + 2;
            v45 = (v42 >> 3) + 1;
            v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
            v5 = (v5 + v46);
            v43 = &v6[v46];
            v47 = (v6 + 16);
            v48 = v45 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v49 = *v47;
              *(v44 - 1) = *(v47 - 1);
              *v44 = v49;
              v47 += 2;
              v44 += 2;
              v48 -= 4;
            }

            while (v48);
            if (v45 == (v45 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v43 = v6;
          }
        }

        else
        {
          v43 = v6;
        }

        do
        {
          v50 = *v43;
          v43 += 8;
          *v5++ = v50;
        }

        while (v43 != v23);
        return result;
      }

      v27 = *(a3 + 24);
      if (!v27)
      {
        goto LABEL_57;
      }

      v28 = v26;
      result = (*(*v27 + 48))(v27, v26, v6);
      if (result)
      {
        v29 = v28;
      }

      else
      {
        v29 = v6;
      }

      if (result)
      {
        v30 = 8;
      }

      else
      {
        v30 = 0;
      }

      v26 = &v28[v30];
      if (result)
      {
        v31 = 0;
      }

      else
      {
        v31 = 8;
      }

      v6 += v31;
      *v5++ = *v29;
      ++v25;
    }

    while (v6 != v23);
    if (v26 != a2)
    {
      v32 = a2 - v28 - v30 - 8;
      if (v32 < 0x58)
      {
        goto LABEL_60;
      }

      if ((v25 - v28 - v30) < 0x20)
      {
        goto LABEL_60;
      }

      v33 = 0;
      v34 = (v32 >> 3) + 1;
      v35 = v34 & 0x3FFFFFFFFFFFFFFCLL;
      v36 = &v5[v35];
      v26 += v35 * 8;
      v37 = &v28[v30 + 16];
      v38 = v34 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v39 = &v5[v33];
        v40 = *v37;
        *v39 = *(v37 - 1);
        *(v39 + 1) = v40;
        v37 += 32;
        v33 += 4;
        v38 -= 4;
      }

      while (v38);
      v5 = v36;
      if (v34 != (v34 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_60:
        do
        {
          v41 = *v26;
          v26 += 8;
          *v5++ = v41;
        }

        while (v26 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_BEA8F0(uint64_t result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v54 = a6;
  if (a6)
  {
    v11 = result;
    while (1)
    {
      if (v54 <= a8 || a5 <= a8)
      {
        return sub_BEAE64(v11, a2, a3, a4, a5, v54, a7);
      }

      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = *(a4 + 24);
        if (!v14)
        {
          sub_2B7420();
        }

        result = (*(*v14 + 48))(v14, a2, &v12[v11]);
        if (result)
        {
          break;
        }

        v12 += 8;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      if (-v13 < v54)
      {
        break;
      }

      if (v13 == -1)
      {
        v48 = *&v12[v11];
        *&v12[v11] = *a2;
        *a2 = v48;
        return result;
      }

      v23 = *(a4 + 24);
      if (v23)
      {
        if (v23 == a4)
        {
          v56 = v55;
          (*(*v23 + 24))(v23, v55);
        }

        else
        {
          v56 = (*(*v23 + 16))(v23);
        }
      }

      else
      {
        v56 = 0;
      }

      v49 = v16 / 2;
      v18 = &v11[8 * (v16 / 2) + v12];
      v17 = a2;
      if (a2 != a3)
      {
        v24 = (a3 - a2) >> 3;
        v17 = a2;
        do
        {
          if (!v56)
          {
            sub_2B7420();
          }

          v25 = &v17[8 * (v24 >> 1)];
          v26 = (*(*v56 + 48))(v56, v25, v18);
          if (v26)
          {
            v24 += ~(v24 >> 1);
          }

          else
          {
            v24 >>= 1;
          }

          if (v26)
          {
            v17 = v25 + 8;
          }
        }

        while (v24);
      }

      if (v56 == v55)
      {
        (*(*v56 + 32))(v56);
      }

      else if (v56)
      {
        (*(*v56 + 40))();
      }

      v50 = (v17 - a2) >> 3;
      v21 = v17;
      v22 = a2 - v18;
      if (a2 != v18)
      {
        goto LABEL_42;
      }

LABEL_64:
      a5 = -v13 - v49;
      v47 = v54 - v50;
      if (v49 + v50 >= v54 - (v49 + v50) - v13)
      {
        result = sub_BEA8F0(v21, v17, a3, a4, -v13 - v49, v54 - v50, a7, a8);
        a2 = v18;
        a5 = v49;
        a3 = v21;
        v11 = &v12[v11];
        v54 = v50;
        if (!v50)
        {
          return result;
        }
      }

      else
      {
        result = sub_BEA8F0(&v12[v11], v18, v21, a4, v49, v50, a7, a8);
        v11 = v21;
        a2 = v17;
        v54 -= v50;
        if (!v47)
        {
          return result;
        }
      }
    }

    v50 = v54 / 2;
    v17 = &a2[8 * (v54 / 2)];
    v18 = a2;
    if ((a2 - v11) != v12)
    {
      v19 = (a2 - v11 - v12) >> 3;
      v18 = &v12[v11];
      do
      {
        v20 = *(a4 + 24);
        if (!v20)
        {
          sub_2B7420();
        }

        if ((*(*v20 + 48))(v20, v17, &v18[8 * (v19 >> 1)]))
        {
          v19 >>= 1;
        }

        else
        {
          v18 += 8 * (v19 >> 1) + 8;
          v19 += ~(v19 >> 1);
        }
      }

      while (v19);
    }

    v49 = (v18 - v11 - v12) >> 3;
    v21 = &a2[8 * (v54 / 2)];
    v22 = a2 - v18;
    if (a2 == v18)
    {
      goto LABEL_64;
    }

LABEL_42:
    v21 = v18;
    if (a2 != v17)
    {
      if (v18 + 8 == a2)
      {
        v27 = *v18;
        memmove(v18, a2, v17 - a2);
        v21 = &v18[v17 - a2];
        *v21 = v27;
      }

      else if (a2 + 8 == v17)
      {
        v28 = *(v17 - 1);
        v21 = v18 + 8;
        if (v17 - 8 != v18)
        {
          memmove(v18 + 8, v18, v17 - 8 - v18);
        }

        *v18 = v28;
      }

      else
      {
        v29 = v22 >> 3;
        v30 = (v17 - a2) >> 3;
        if (v22 >> 3 == v30)
        {
          v31 = v18 + 8;
          v32 = a2 + 8;
          do
          {
            v33 = *(v31 - 1);
            *(v31 - 1) = *(v32 - 1);
            *(v32 - 1) = v33;
            if (v31 == a2)
            {
              break;
            }

            v31 += 8;
            v34 = v32 == v17;
            v32 += 8;
          }

          while (!v34);
          v21 = a2;
        }

        else
        {
          v35 = v22 >> 3;
          do
          {
            v36 = v35;
            v35 = v30;
            v30 = v36 % v30;
          }

          while (v30);
          v37 = &v18[8 * v35];
          do
          {
            v39 = *(v37 - 1);
            v37 -= 8;
            v38 = v39;
            v40 = &v37[v22];
            v41 = v37;
            do
            {
              v42 = v40;
              *v41 = *v40;
              v43 = (v17 - v40) >> 3;
              v44 = __OFSUB__(v29, v43);
              v46 = v29 - v43;
              v45 = (v46 < 0) ^ v44;
              v40 = &v18[8 * v46];
              if (v45)
              {
                v40 = &v42[8 * v29];
              }

              v41 = v42;
            }

            while (v40 != v37);
            *v42 = v38;
          }

          while (v37 != v18);
          v21 = &v18[v17 - a2];
        }
      }
    }

    goto LABEL_64;
  }

  return result;
}

void sub_BEAE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_BE7F20(va);
  _Unwind_Resume(a1);
}

void sub_BEAE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_BE7F20(va);
  _Unwind_Resume(a1);
}

char *sub_BEAE64(char *__dst, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *__src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst == a2)
    {
      return __dst;
    }

    v21 = a2 - __dst - 8;
    if (v21 < 0x18)
    {
      v22 = __src;
      v23 = __dst;
    }

    else
    {
      v22 = __src;
      v23 = __dst;
      if ((__src - __dst) > 0x1F)
      {
        v24 = (v21 >> 3) + 1;
        v25 = 8 * (v24 & 0x3FFFFFFFFFFFFFFCLL);
        v22 = &__src[v25];
        v23 = &__dst[v25];
        v26 = __dst + 16;
        v27 = __src + 16;
        v28 = v24 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v29 = *v26;
          *(v27 - 1) = *(v26 - 1);
          *v27 = v29;
          v26 += 32;
          v27 += 32;
          v28 -= 4;
        }

        while (v28);
        if (v24 == (v24 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_38:
          while (v10 != v9)
          {
            v39 = *(a4 + 24);
            if (!v39)
            {
LABEL_58:
              sub_2B7420();
            }

            __dst = (*(*v39 + 48))(v39, v10, v7);
            if (__dst)
            {
              v40 = v10;
            }

            else
            {
              v40 = v7;
            }

            if (__dst)
            {
              v41 = 8;
            }

            else
            {
              v41 = 0;
            }

            v10 += v41;
            if (__dst)
            {
              v42 = 0;
            }

            else
            {
              v42 = 8;
            }

            v7 += v42;
            *v11 = *v40;
            v11 += 8;
            if (v7 == v22)
            {
              return __dst;
            }
          }

          return memmove(v11, v7, v22 - v7);
        }
      }
    }

    do
    {
      v38 = *v23;
      v23 += 8;
      *v22 = v38;
      v22 += 8;
    }

    while (v23 != a2);
    goto LABEL_38;
  }

  if (a2 == a3)
  {
    return __dst;
  }

  v12 = a3 - a2 - 8;
  if (v12 < 0x18)
  {
    v13 = __src;
    v14 = a2;
  }

  else
  {
    v13 = __src;
    v14 = a2;
    if ((__src - a2) > 0x1F)
    {
      v15 = (v12 >> 3) + 1;
      v16 = 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL);
      v13 = &__src[v16];
      v14 = &a2[v16];
      v17 = a2 + 16;
      v18 = __src + 16;
      v19 = v15 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 32;
        v18 += 32;
        v19 -= 4;
      }

      while (v19);
      if (v15 == (v15 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_18;
      }
    }
  }

  do
  {
    v30 = *v14;
    v14 += 8;
    *v13 = v30;
    v13 += 8;
  }

  while (v14 != a3);
LABEL_18:
  v31 = a3;
  while (v10 != v11)
  {
    v32 = *(a4 + 24);
    if (!v32)
    {
      goto LABEL_58;
    }

    __dst = (*(*v32 + 48))(v32, v13 - 8, v10 - 8);
    if (__dst)
    {
      v33 = v10;
    }

    else
    {
      v33 = v13;
    }

    if (__dst)
    {
      v10 -= 8;
    }

    else
    {
      v13 -= 8;
    }

    *(v31 - 1) = *(v33 - 1);
    v31 -= 8;
    v9 -= 8;
    if (v13 == v7)
    {
      return __dst;
    }
  }

  if (v13 != v7)
  {
    v34 = v13 - v7 - 8;
    if (v34 < 0x48 || (v13 - v9) < 0x20)
    {
      v35 = v13;
LABEL_33:
      v36 = v31 - 8;
      do
      {
        v37 = *(v35 - 1);
        v35 -= 8;
        *v36 = v37;
        v36 -= 8;
      }

      while (v35 != v7);
      return __dst;
    }

    v43 = v31 - 16;
    v44 = (v34 >> 3) + 1;
    v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
    v35 = &v13[-v45];
    v31 -= v45;
    v46 = v13 - 16;
    v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v48 = *v46;
      *(v43 - 1) = *(v46 - 1);
      *v43 = v48;
      v43 -= 32;
      v46 -= 32;
      v47 -= 4;
    }

    while (v47);
    if (v44 != (v44 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_33;
    }
  }

  return __dst;
}

uint64_t sub_BEB1DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671BD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_BEB208(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a3;
  v6 = *(*a2 + 172);
  v7 = sub_A57920((*(v3 + 24) + 4136), *(*a2 + 152));
  v8 = (v7 - *v7);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_A571D4(v10, v6);
  v12 = *v11;
  v13 = sub_502FF8(*(*(v3 + 24) + 4120) + 24, *v11, 0, "stop");
  v14 = (v13 - *v13);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = *(v13 + v15 + 4) | (*(v13 + v15) << 32);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  v17 = *(v5 + 172);
  v18 = sub_A57920((*(v3 + 24) + 4136), *(v5 + 152));
  v19 = (v18 - *v18);
  if (*v19 >= 9u && (v20 = v19[4]) != 0)
  {
    v21 = (v18 + v20 + *(v18 + v20));
  }

  else
  {
    v21 = 0;
  }

  v22 = __ROR8__(v12, 32);
  v23 = sub_A571D4(v21, v17);
  v24 = __ROR8__(*v23, 32);
  v25 = sub_502FF8(*(*(v3 + 24) + 4120) + 24, *v23, 0, "stop");
  v26 = (v25 - *v25);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = *(v25 + v27 + 4) | (*(v25 + v27) << 32);
  }

  else
  {
    v28 = 0xFFFFFFFFLL;
  }

  if (HIDWORD(v16))
  {
    v29 = v16 == -1;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (HIDWORD(v28))
  {
    v31 = v28 == -1;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  if (v30)
  {
    v16 = v22;
  }

  if (!v32)
  {
    v24 = v28;
  }

  v33 = *(v4 + 172);
  v34 = sub_A57920((*(v3 + 24) + 4136), *(v4 + 152));
  v35 = (v34 - *v34);
  v36 = *v35;
  if (v36 < 5)
  {
    v37 = 0;
    goto LABEL_38;
  }

  if (!v35[2])
  {
    v37 = 0;
    if (v36 >= 9)
    {
      goto LABEL_56;
    }

LABEL_38:
    v38 = 0;
    goto LABEL_39;
  }

  v37 = v34 + v35[2] + *(v34 + v35[2]);
  if (v36 < 9)
  {
    goto LABEL_38;
  }

LABEL_56:
  v52 = v35[4];
  if (!v52)
  {
    goto LABEL_38;
  }

  v38 = (v34 + v52 + *(v34 + v52));
LABEL_39:
  v39 = __ROR8__(*&v37[8 * *(sub_A571D4(v38, v33) + 14) + 4], 32);
  v40 = HIDWORD(v39);
  v41 = *(v5 + 172);
  v42 = sub_A57920((*(v3 + 24) + 4136), *(v5 + 152));
  v43 = (v42 - *v42);
  v44 = *v43;
  if (v44 < 5)
  {
    v45 = 0;
    goto LABEL_44;
  }

  if (!v43[2])
  {
    v45 = 0;
    if (v44 >= 9)
    {
      goto LABEL_59;
    }

LABEL_44:
    v46 = 0;
    goto LABEL_45;
  }

  v45 = v42 + v43[2] + *(v42 + v43[2]);
  if (v44 < 9)
  {
    goto LABEL_44;
  }

LABEL_59:
  v53 = v43[4];
  if (!v53)
  {
    goto LABEL_44;
  }

  v46 = (v42 + v53 + *(v42 + v53));
LABEL_45:
  v47 = __ROR8__(*&v45[8 * *(sub_A571D4(v46, v41) + 14) + 4], 32);
  v48 = HIDWORD(v47);
  v49 = v39 < v47;
  if (v40 != HIDWORD(v47))
  {
    v49 = v40 < HIDWORD(v47);
  }

  if (v49)
  {
    return 1;
  }

  v51 = v47 < v39;
  if (v40 != v48)
  {
    v51 = v48 < v40;
  }

  if (v51)
  {
    return 0;
  }

  if (v30 != v32)
  {
    return v32 & (v30 ^ 1u);
  }

  if (HIDWORD(v16) == HIDWORD(v24))
  {
    return v16 < v24;
  }

  return HIDWORD(v16) < HIDWORD(v24);
}