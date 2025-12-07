void sub_F085D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

void sub_F085F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x10000u;
  v4 = *(a3 + 504);
  if (v4)
  {
    v5 = *(a2 + 1064);
    i = *(a2 + 1072);
    if (v5 == i)
    {
      return;
    }

    goto LABEL_9;
  }

  v8 = *(a3 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  v4 = sub_14BCF4C(v9);
  *(a3 + 504) = v4;
  v5 = *(a2 + 1064);
  for (i = *(a2 + 1072); v5 != i; v5 += 496)
  {
LABEL_9:
    *__p = 0u;
    *v18 = 0u;
    v19 = 1065353216;
    v10 = *(v4 + 88);
    if (v10 && (v11 = *(v4 + 80), v11 < *v10))
    {
      *(v4 + 80) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_14BCE94(*(v4 + 72));
      v12 = sub_19593CC(v4 + 72, v13);
    }

    sub_EC74E8(v5, __p, v12);
    v14 = v18[0];
    if (v18[0])
    {
      do
      {
        v16 = *v14;
        if (*(v14 + 39) < 0)
        {
          operator delete(v14[2]);
        }

        operator delete(v14);
        v14 = v16;
      }

      while (v16);
    }

    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }
}

void sub_F0874C(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  if (sub_5CC07C(a2))
  {
    *(a3 + 40) |= 0x40000u;
    v6 = *(a3 + 520);
    if (!v6)
    {
      v7 = *(a3 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_14BDC34(v8);
      v6 = v9;
      *(a3 + 520) = v9;
    }

    *__p = 0u;
    *v14 = 0u;
    v15 = 1065353216;
    sub_EB1F70(a2, __p, *a1, v6);
    v10 = v14[0];
    if (v14[0])
    {
      do
      {
        v12 = *v10;
        if (*(v10 + 39) < 0)
        {
          operator delete(v10[2]);
        }

        operator delete(v10);
        v10 = v12;
      }

      while (v12);
    }

    v11 = __p[0];
    __p[0] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }
}

void sub_F08838(uint64_t *a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_ECA8CC(a3);
  *(a6 + 40) |= 0x1000000u;
  *(a6 + 884) = v13;
  v14 = sub_EC7E7C(*(a2 + 1096));
  *(a6 + 40) |= 0x200000u;
  *(a6 + 872) = v14;
  v15 = sub_EC7E9C(*(a2 + 1097));
  *(a6 + 40) |= 0x2000000u;
  *(a6 + 888) = v15;
  v16 = sub_4D1DB8(a2);
  if (v16 < 0)
  {
    v17 = -50;
  }

  else
  {
    v17 = 50;
  }

  *(a6 + 40) |= 0x400000u;
  *(a6 + 876) = v16 / 100 + ((5243 * (v17 + v16 % 100)) >> 19) + ((5243 * (v17 + v16 % 100)) >> 31);
  sub_EF44A0(a1, a2, a6);
  sub_EF4750(v18, a1, a2, a6);
  if (sub_4D20B0(a2, 4))
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_4D20B0(a2, 9) ^ 1;
  }

  *(a6 + 44) |= 1u;
  *(a6 + 916) = v19;
  v20 = sub_4D20B0(a2, 5);
  *(a6 + 44) |= 2u;
  *(a6 + 917) = v20 ^ 1;
  if (*(a2 + 12344) == *(a2 + 12352))
  {
    sub_EC6B44((a2 + 7392), a6);
  }

  else
  {
    sub_ECA0F4((a2 + 12344), a6);
  }

  sub_F0ABC4(a1, a2, a4, a5, a6, v21);
  sub_F0ADAC(a1, a2, a6, a7);
  sub_F0AE80(a1, a2, a6);
  if (*(a2 + 12024) != *(a2 + 12032) && *(a2 + 12008) != 0x7FFFFFFFFFFFFFFFLL && *(a2 + 12016) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(a6 + 40) |= 0x4000u;
    v22 = *(a6 + 816);
    if (!v22)
    {
      v23 = *(a6 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_14BBF6C(v24);
      v22 = v25;
      *(a6 + 816) = v25;
    }

    sub_EC8758((a2 + 12008), v22);
  }

  sub_F0E8E8(a1, a2, a6);
  sub_F0EEDC(a1, a2, a6);
  sub_EF5DF0(a1, a2, a6);
  sub_EF5FE8(a1, a2, a6);
  v26 = *(a2 + 12376);
  v27 = *(a2 + 12384);
  if (v26 != v27)
  {
    v28 = (a6 + 560);
    do
    {
      while (1)
      {
        v29 = *v26 < 0 ? -50 : 50;
        v30 = *v26 / 100 + ((5243 * (v29 + *v26 % 100)) >> 19) + ((5243 * (v29 + *v26 % 100)) >> 31);
        v31 = *(a6 + 584);
        if (v31 == *(a6 + 588))
        {
          v32 = v31 + 1;
          sub_1958E5C((a6 + 584), v31 + 1);
          *(*(a6 + 592) + 4 * v31) = v30;
        }

        else
        {
          *(*(a6 + 592) + 4 * v31) = v30;
          v32 = v31 + 1;
        }

        *(a6 + 584) = v32;
        v33 = *(v26 + 8) ? 1 : 2;
        v34 = *(a6 + 560);
        if (v34 != *(a6 + 564))
        {
          break;
        }

        sub_1958E5C((a6 + 560), v34 + 1);
        *(*(a6 + 568) + 4 * v34) = v33;
        *v28 = v34 + 1;
        v26 += 16;
        if (v26 == v27)
        {
          goto LABEL_32;
        }
      }

      *(*(a6 + 568) + 4 * v34) = v33;
      *v28 = v34 + 1;
      v26 += 16;
    }

    while (v26 != v27);
  }

LABEL_32:
  v35 = *(a2 + 10176);
  for (i = *(a2 + 10184); v35 != i; v35 += 616)
  {
    while (1)
    {
      v39 = *(a6 + 624);
      if (v39)
      {
        v40 = *(a6 + 616);
        if (v40 < *v39)
        {
          break;
        }
      }

      v37 = sub_14BA560(*(a6 + 608));
      v38 = sub_19593CC(a6 + 608, v37);
      sub_ECB328(v35, v38);
      v35 += 616;
      if (v35 == i)
      {
        goto LABEL_38;
      }
    }

    *(a6 + 616) = v40 + 1;
    sub_ECB328(v35, *&v39[2 * v40 + 2]);
  }

LABEL_38:
  v41 = *(a2 + 10152);
  for (j = *(a2 + 10160); v41 != j; v41 += 616)
  {
    while (1)
    {
      v45 = *(a6 + 648);
      if (v45)
      {
        v46 = *(a6 + 640);
        if (v46 < *v45)
        {
          break;
        }
      }

      v43 = sub_14BA560(*(a6 + 632));
      v44 = sub_19593CC(a6 + 632, v43);
      sub_ECB328(v41, v44);
      v41 += 616;
      if (v41 == j)
      {
        goto LABEL_44;
      }
    }

    *(a6 + 640) = v46 + 1;
    sub_ECB328(v41, *&v45[2 * v46 + 2]);
  }

LABEL_44:
  v47 = *(a2 + 10200);
  for (k = *(a2 + 10208); v47 != k; v47 += 616)
  {
    while (1)
    {
      v51 = *(a6 + 624);
      if (v51)
      {
        v52 = *(a6 + 616);
        if (v52 < *v51)
        {
          break;
        }
      }

      v49 = sub_14BA560(*(a6 + 608));
      v50 = sub_19593CC(a6 + 608, v49);
      sub_ECB328(v47, v50);
      v47 += 616;
      if (v47 == k)
      {
        goto LABEL_50;
      }
    }

    *(a6 + 616) = v52 + 1;
    sub_ECB328(v47, *&v51[2 * v52 + 2]);
  }

LABEL_50:

  sub_EF6160(a1, a2, a6);
}

void sub_F08DA0(_BYTE *a1, void *a2, unint64_t a3, uint64_t a4)
{
  nullsub_1();
  v9 = v8[1] - *v8;
  if (v9)
  {
    v10 = 0;
    v11 = 0x5DDB1ADCB91F64A7 * (v9 >> 4);
    while (1)
    {
      v12 = sub_68C454(a2, v10);
      v13 = *(v12 + 10320);
      v14 = *(v12 + 10328);
      if (v13 != v14)
      {
        break;
      }

LABEL_3:
      if (++v10 == v11)
      {
        return;
      }
    }

    v15 = v12;
    while (1)
    {
      if (!sub_6834F4(v13))
      {
        goto LABEL_6;
      }

      v16 = sub_4D1DC0(v15);
      v17 = *(v13 + 8);
      if (v17 >= v16 || v17 == v16 - 1 && sub_4D2140(v15) < 0x3B9ACA00)
      {
        goto LABEL_6;
      }

      if (sub_683A0C(v13))
      {
        if (a1[24])
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!sub_445A90(v13))
        {
          if (!sub_683864(v13) && !sub_683854(v13) || a1[26] != 1)
          {
            goto LABEL_6;
          }

LABEL_20:
          sub_F0A8E4(&__p, a3, v10, v13);
          sub_F09E9C(a1, v13, &__p.__r_.__value_.__l.__data_, a4);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_6;
        }

        if (a1[25])
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      v13 += 104;
      if (v13 == v14)
      {
        goto LABEL_3;
      }
    }
  }
}

void sub_F08F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F08F58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*(a3 + 24))
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      do
      {
        v75 = *v6;
        if (*(v6 + 39) < 0)
        {
          operator delete(v6[2]);
        }

        operator delete(v6);
        v6 = v75;
      }

      while (v75);
    }

    *(v5 + 16) = 0;
    v7 = *(v5 + 8);
    if (v7)
    {
      bzero(*v5, 8 * v7);
    }

    *(v5 + 24) = 0;
  }

  nullsub_1();
  v9 = 0x5DDB1ADCB91F64A7 * ((v8[1] - *v8) >> 4);
  if (v9 >= 1)
  {
    v10 = 0;
    v76 = v9 & 0x7FFFFFFF;
    v80 = a4;
    v85 = v5;
    do
    {
      v78 = v10;
      v11 = sub_68C454(a2, v10);
      v12 = *(v11 + 7416);
      v83 = *(v11 + 7424);
      if (v12 == v83)
      {
        goto LABEL_8;
      }

      v81 = (*(*(a4 + 64) + 8 * v78 + 8) + 272);
      v82 = *(*(a4 + 64) + 8 * v78 + 8);
      do
      {
LABEL_12:
        v13 = *(v12 + 71);
        if (v13 >= 0)
        {
          v14 = (v12 + 48);
        }

        else
        {
          v14 = *(v12 + 48);
        }

        if (v13 >= 0)
        {
          v15 = *(v12 + 71);
        }

        else
        {
          v15 = *(v12 + 56);
        }

        v16 = sub_AAD8(&v87, v14, v15);
        v17 = *(v5 + 8);
        if (!*&v17)
        {
          goto LABEL_57;
        }

        v18 = v16;
        v19 = vcnt_s8(v17);
        v19.i16[0] = vaddlv_u8(v19);
        if (v19.u32[0] > 1uLL)
        {
          v20 = v16;
          v21 = v85;
          if (v16 >= *&v17)
          {
            v20 = v16 % *&v17;
          }
        }

        else
        {
          v20 = (*&v17 - 1) & v16;
          v21 = v85;
        }

        v22 = *(*v21 + 8 * v20);
        if (!v22 || (v23 = *v22) == 0)
        {
LABEL_57:
          a4 = v80;
          v40 = *(v80 + 176);
          v86 = (v12 + 48);
          v39 = v85;
          *(sub_EB37EC(v85, (v12 + 48), &unk_229EB70, &v86) + 10) = v40;
          v42 = *(v80 + 184);
          if (v42 && (v43 = *(v80 + 176), v43 < *v42))
          {
            *(v80 + 176) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = sub_14BDE5C(*(v80 + 168));
            v44 = sub_19593CC(v80 + 168, v45);
          }

          sub_EC6F6C(v12, v44, 1, v41);
          v24 = *(v12 + 71);
          v26 = *(v12 + 48);
          v38 = *(v12 + 56);
          v25 = *(v12 + 71);
          goto LABEL_62;
        }

        v24 = *(v12 + 71);
        v25 = v24;
        v26 = *(v12 + 48);
        v79 = *(v12 + 56);
        if ((v24 & 0x80u) == 0)
        {
          v27 = *(v12 + 71);
        }

        else
        {
          v27 = *(v12 + 56);
        }

        if ((v24 & 0x80u) == 0)
        {
          v28 = (v12 + 48);
        }

        else
        {
          v28 = *(v12 + 48);
        }

        __s2 = v28;
        if (v19.u32[0] < 2uLL)
        {
          v29 = *&v17 - 1;
          while (1)
          {
            v34 = v23[1];
            if (v18 == v34)
            {
              v35 = *(v23 + 39);
              v36 = v35;
              if (v35 < 0)
              {
                v35 = v23[3];
              }

              if (v35 == v27)
              {
                v37 = v36 >= 0 ? (v23 + 2) : v23[2];
                if (!memcmp(v37, __s2, v27))
                {
                  goto LABEL_56;
                }
              }
            }

            else if ((v34 & v29) != v20)
            {
              goto LABEL_57;
            }

            v23 = *v23;
            if (!v23)
            {
              goto LABEL_57;
            }
          }
        }

        while (1)
        {
          v30 = v23[1];
          if (v18 == v30)
          {
            break;
          }

          if (v30 >= *&v17)
          {
            v30 %= *&v17;
          }

          if (v30 != v20)
          {
            goto LABEL_57;
          }

LABEL_34:
          v23 = *v23;
          if (!v23)
          {
            goto LABEL_57;
          }
        }

        v31 = *(v23 + 39);
        v32 = v31;
        if (v31 < 0)
        {
          v31 = v23[3];
        }

        if (v31 != v27)
        {
          goto LABEL_34;
        }

        v33 = v32 >= 0 ? (v23 + 2) : v23[2];
        if (memcmp(v33, __s2, v27))
        {
          goto LABEL_34;
        }

LABEL_56:
        v38 = v79;
        a4 = v80;
        v39 = v85;
LABEL_62:
        if (v25 >= 0)
        {
          v46 = (v12 + 48);
        }

        else
        {
          v46 = v26;
        }

        if (v25 >= 0)
        {
          v47 = v24;
        }

        else
        {
          v47 = v38;
        }

        v48 = sub_AAD8(&v88, v46, v47);
        v49 = v39[1];
        if (!*&v49)
        {
          goto LABEL_119;
        }

        v50 = v48;
        v51 = vcnt_s8(v49);
        v51.i16[0] = vaddlv_u8(v51);
        if (v51.u32[0] > 1uLL)
        {
          v52 = v48;
          if (v48 >= *&v49)
          {
            v52 = v48 % *&v49;
          }
        }

        else
        {
          v52 = (*&v49 - 1) & v48;
        }

        v53 = *(*v39 + 8 * v52);
        if (!v53 || (v54 = *v53) == 0)
        {
LABEL_119:
          sub_49EC("unordered_map::at: key not found");
        }

        v55 = *(v12 + 71);
        if (v55 >= 0)
        {
          v56 = *(v12 + 71);
        }

        else
        {
          v56 = *(v12 + 56);
        }

        if (v55 >= 0)
        {
          v57 = (v12 + 48);
        }

        else
        {
          v57 = *(v12 + 48);
        }

        if (v51.u32[0] < 2uLL)
        {
          v58 = *&v49 - 1;
          while (1)
          {
            v63 = v54[1];
            if (v63 == v50)
            {
              v64 = *(v54 + 39);
              v65 = v64;
              if ((v64 & 0x80u) != 0)
              {
                v64 = v54[3];
              }

              if (v64 == v56)
              {
                v66 = v65 >= 0 ? v54 + 2 : v54[2];
                if (!memcmp(v66, v57, v56))
                {
                  goto LABEL_106;
                }
              }
            }

            else if ((v63 & v58) != v52)
            {
              goto LABEL_119;
            }

            v54 = *v54;
            if (!v54)
            {
              goto LABEL_119;
            }
          }
        }

        while (2)
        {
          v59 = v54[1];
          if (v59 != v50)
          {
            if (v59 >= *&v49)
            {
              v59 %= *&v49;
            }

            if (v59 != v52)
            {
              goto LABEL_119;
            }

LABEL_84:
            v54 = *v54;
            if (!v54)
            {
              goto LABEL_119;
            }

            continue;
          }

          break;
        }

        v60 = *(v54 + 39);
        v61 = v60;
        if ((v60 & 0x80u) != 0)
        {
          v60 = v54[3];
        }

        if (v60 != v56)
        {
          goto LABEL_84;
        }

        v62 = v61 >= 0 ? v54 + 2 : v54[2];
        if (memcmp(v62, v57, v56))
        {
          goto LABEL_84;
        }

LABEL_106:
        v67 = *(v54 + 10);
        v68 = *(v12 + 464);
        if (v68 < 0)
        {
          v69 = -50;
        }

        else
        {
          v69 = 50;
        }

        v70 = *(v82 + 248);
        if (v70 == *(v82 + 252))
        {
          v71 = v70 + 1;
          sub_1958E5C((v82 + 248), v70 + 1);
          *(*(v82 + 256) + 4 * v70) = v67;
        }

        else
        {
          *(*(v82 + 256) + 4 * v70) = v67;
          v71 = v70 + 1;
        }

        v72 = 5243 * (v69 + v68 % 100);
        v73 = v68 / 100 + ((v72 >> 19) + (v72 >> 31));
        *(v82 + 248) = v71;
        v74 = *(v82 + 272);
        v5 = v85;
        if (v74 != *(v82 + 276))
        {
          *(*(v82 + 280) + 4 * v74) = v73;
          *v81 = v74 + 1;
          v12 += 1120;
          if (v12 == v83)
          {
            break;
          }

          goto LABEL_12;
        }

        sub_1958E5C(v81, v74 + 1);
        *(*(v82 + 280) + 4 * v74) = v73;
        *v81 = v74 + 1;
        v12 += 1120;
      }

      while (v12 != v83);
LABEL_8:
      v10 = v78 + 1;
    }

    while (v78 + 1 != v76);
  }
}

void sub_F09528(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  nullsub_1();
  v8 = 0x5DDB1ADCB91F64A7 * ((v7[1] - *v7) >> 4);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v8 & 0x7FFFFFFF;
    while (1)
    {
      v12 = sub_68C454(a2, v9);
      v13 = *(*(a3 + 64) + 8 * v9 + 8);
      v22[2] = &v23;
      v23 = v13;
      v22[0] = a4;
      v22[1] = a3;
      sub_69EB18(v12, &__p);
      v14 = __p;
      if (__p != v21)
      {
        sub_EF42D0(v22, __p);
      }

      if (!__p)
      {
        goto LABEL_5;
      }

      v15 = v21;
      v11 = __p;
      if (v21 != __p)
      {
        break;
      }

LABEL_4:
      v21 = v14;
      operator delete(v11);
LABEL_5:
      if (++v9 == v10)
      {
        return;
      }
    }

    while (1)
    {
      if (*(v15 - 9) < 0)
      {
        operator delete(*(v15 - 4));
        v16 = *(v15 - 8);
        if (!v16)
        {
LABEL_14:
          if ((*(v15 - 65) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v16 = *(v15 - 8);
        if (!v16)
        {
          goto LABEL_14;
        }
      }

      v17 = *(v15 - 7);
      if (v17 == v16)
      {
        *(v15 - 7) = v16;
        operator delete(v16);
        if ((*(v15 - 65) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        do
        {
          v18 = *(v17 - 1);
          v17 -= 3;
          if (v18 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v19 = *(v15 - 8);
        *(v15 - 7) = v16;
        operator delete(v19);
        if ((*(v15 - 65) & 0x80000000) == 0)
        {
LABEL_15:
          if ((*(v15 - 89) & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_27;
        }
      }

LABEL_26:
      operator delete(*(v15 - 11));
      if ((*(v15 - 89) & 0x80000000) == 0)
      {
LABEL_16:
        if (*(v15 - 137) < 0)
        {
          goto LABEL_28;
        }

        goto LABEL_11;
      }

LABEL_27:
      operator delete(*(v15 - 14));
      if (*(v15 - 137) < 0)
      {
LABEL_28:
        operator delete(*(v15 - 20));
      }

LABEL_11:
      v15 -= 21;
      if (v15 == v14)
      {
        v11 = __p;
        goto LABEL_4;
      }
    }
  }
}

void sub_F09704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_F09718(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(a4 + 40) |= 4u;
  v7 = *(a4 + 248);
  if (!v7)
  {
    v9 = *(a4 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v7 = sub_14BD0D0(v10);
    *(a4 + 248) = v7;
  }

  sub_EF2A70(a1, a2, v7);
  v11 = sub_68EA58(a2);
  v12 = *(v11 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v11 + 8);
  }

  if (v12)
  {
    *(v7 + 16) |= 4u;
    v13 = *(v7 + 64);
    if (!v13)
    {
      v14 = *(v7 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_14BAE64(v15);
      v13 = v16;
      *(v7 + 64) = v16;
    }

    v17 = sub_68EA58(a2);
    sub_64E090(v13, v17);
  }

  sub_EF2D30(a1, a2, v7);
  sub_F09C78(a1, a2, v7);
  sub_F09D30(a1, a2, v7);
  sub_EF3144(a1, a2, a3, v7);
  v18 = sub_68F800(a2);

  sub_EF33D0(v18, v7);
}

void sub_F09860(int **a1, void *a2, uint64_t a3)
{
  if (*(*a1 + 32) == 1)
  {
    sub_EEB678(&v17, *a1);
    sub_EEB97C(&v17, a2, a3);
    v17 = &off_26744C0;
    v5 = __p;
    if (!__p)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v17);
    sub_4A5C(&v17, "Request that has supports_waypoint_routes set to true but supports_guidance_events set to false which shouldn't happen.", 119);
    if ((v28 & 0x10) != 0)
    {
      v8 = v27;
      if (v27 < v23)
      {
        v27 = v23;
        v8 = v23;
      }

      v9 = v22;
      v7 = v8 - v22;
      if (v8 - v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v28 & 8) == 0)
      {
        v7 = 0;
        v16 = 0;
LABEL_25:
        *(&v15 + v7) = 0;
        sub_7E854(&v15, 3u);
        if (v16 < 0)
        {
          operator delete(v15);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v24);
        }

        std::locale::~locale(&v19);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_30;
      }

      v9 = v20;
      v7 = v21 - v20;
      if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v16 = v7;
    if (v7)
    {
      memmove(&v15, v9, v7);
    }

    goto LABEL_25;
  }

LABEL_30:
  sub_EA90C0(&v17, *a1);
  nullsub_1();
  v11 = -1189124953 * ((v10[1] - *v10) >> 4);
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = *(*(a3 + 64) + 8 * v12 + 8);
      v14 = sub_68C454(a2, v12);
      sub_EA9214(&v17, v14, v13);
      ++v12;
    }

    while (v11 != v12);
  }

  v17 = &off_26744C0;
  v5 = __p;
  if (__p)
  {
LABEL_3:
    v34 = v5;
    operator delete(v5);
  }

LABEL_4:
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_F09BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_F09C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_EDE384(va);
  _Unwind_Resume(a1);
}

void sub_F09C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_EDE384(va);
  _Unwind_Resume(a1);
}

void sub_F09C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_EDE384(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F09C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_68E508(a2);
  v6 = *(result + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(result + 8);
  }

  if (v6)
  {
    v7 = sub_68E508(a2);
    sub_64BC20(v12, v7);
    *(a3 + 16) |= 0x10u;
    v8 = *(a3 + 80);
    if (!v8)
    {
      v9 = *(a3 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_14BAE64(v10);
      v8 = v11;
      *(a3 + 80) = v11;
    }

    sub_64D110(v12, v8);
    return sub_53A868(v12);
  }

  return result;
}

void sub_F09D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_68E760(a2);
  v6 = *(v5 + 32);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      if (*v5 == -1)
      {
        return;
      }
    }

    else
    {
      if (v6 != 2)
      {
        return;
      }

      v7 = *(v5 + 4) == -1 && *v5 == -1;
      if (v7 && *(v5 + 8) == *(v5 + 16))
      {
        return;
      }
    }

LABEL_18:
    v9 = sub_68E760(a2);
    sub_55F1E8(v15, v9);
    *(a3 + 16) |= 0x40u;
    v11 = *(a3 + 96);
    if (!v11)
    {
      v12 = *(a3 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_14BF484(v13);
      *(a3 + 96) = v11;
    }

    sub_586C94(v15, v11, v10);
    if (v20 < 0)
    {
      operator delete(__p);
      if ((v18 & 0x80000000) == 0)
      {
LABEL_24:
        v14 = v16;
        if (v16 == -1)
        {
          return;
        }

LABEL_28:
        (off_26748C8[v14])(&v21, v15);
        return;
      }
    }

    else if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    operator delete(v17);
    v14 = v16;
    if (v16 == -1)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v6 == 3 || v6 == 4)
  {
    v8 = *(v5 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v8)
    {
      goto LABEL_18;
    }
  }
}

void sub_F09E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_F09E9C(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = a2;
  if (sub_6834F4(a2))
  {
    v7 = sub_68395C(v6);
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);
    if (v8 != v9)
    {
      v85 = HIDWORD(v7);
      v84 = v6;
      while (1)
      {
        if (!sub_683140(v8))
        {
          goto LABEL_7;
        }

        v13 = *(v8 + 16);
        if (v13 <= 2)
        {
          break;
        }

        switch(v13)
        {
          case 3:
            v20 = *(a4 + 160);
            if (v20 && (v21 = *(a4 + 152), v21 < *v20))
            {
              *(a4 + 152) = v21 + 1;
              v22 = *&v20[2 * v21 + 2];
            }

            else
            {
              sub_14BE058(*(a4 + 144));
              v22 = sub_19593CC(a4 + 144, v28);
            }

            if (*(a3 + 23) >= 0)
            {
              v29 = *(a3 + 23);
            }

            else
            {
              v29 = a3[1];
            }

            if (v29 + 15 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_159;
            }

            if (v29 + 15 >= 0x17)
            {
              operator new();
            }

            memset(&v86, 0, sizeof(v86));
            *(&v86.__r_.__value_.__s + 23) = v29 + 15;
            if (v29)
            {
              if (*(a3 + 23) >= 0)
              {
                v44 = a3;
              }

              else
              {
                v44 = *a3;
              }

              memmove(&v86, v44, v29);
            }

            strcpy(&v86 + v29, "_RedLightCamera");
            *(v22 + 16) |= 1u;
            v45 = *(v22 + 8);
            v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
            if (v45)
            {
              v46 = *v46;
            }

            sub_194EA30((v22 + 24), &v86, v46);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
              *(v22 + 16) |= 4u;
              v48 = *(v22 + 40);
              if (!v48)
              {
                goto LABEL_140;
              }
            }

            else
            {
              *(v22 + 16) |= 4u;
              v48 = *(v22 + 40);
              if (!v48)
              {
LABEL_140:
                v74 = *(v22 + 8);
                v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
                if (v74)
                {
                  v75 = *v75;
                }

                v48 = sub_16F5828(v75);
                *(v22 + 40) = v48;
              }
            }

            sub_EC6D34((v6 + 20), v48, v47);
            v76 = *(v22 + 16);
            *(v22 + 64) = 2;
            *(v22 + 16) = v76 | 0x220;
            *(v22 + 84) = v85;
            if (sub_683530(v6))
            {
              *(v22 + 16) |= 0x20u;
              *(v22 + 64) = 5;
            }

            break;
          case 4:
            v23 = *(a4 + 160);
            if (v23 && (v24 = *(a4 + 152), v24 < *v23))
            {
              *(a4 + 152) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              sub_14BE058(*(a4 + 144));
              v25 = sub_19593CC(a4 + 144, v30);
            }

            if (*(a3 + 23) >= 0)
            {
              v31 = *(a3 + 23);
            }

            else
            {
              v31 = a3[1];
            }

            if (byte_27BF3E7 >= 0)
            {
              v32 = byte_27BF3E7;
            }

            else
            {
              v32 = qword_27BF3D8;
            }

            if (v32 + v31 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_159;
            }

            if (v32 + v31 > 0x16)
            {
              operator new();
            }

            memset(&v86, 0, sizeof(v86));
            *(&v86.__r_.__value_.__s + 23) = v32 + v31;
            v6 = v84;
            if (v31)
            {
              if (*(a3 + 23) >= 0)
              {
                v49 = a3;
              }

              else
              {
                v49 = *a3;
              }

              memmove(&v86, v49, v31);
            }

            v50 = &v86 + v31;
            if (v32)
            {
              if (byte_27BF3E7 >= 0)
              {
                v51 = &qword_27BF3D0;
              }

              else
              {
                v51 = qword_27BF3D0;
              }

              memmove(v50, v51, v32);
            }

            v50[v32] = 0;
            *(v25 + 16) |= 1u;
            v52 = *(v25 + 8);
            v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
            if (v52)
            {
              v53 = *v53;
            }

            sub_194EA30((v25 + 24), &v86, v53);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
              *(v25 + 16) |= 4u;
              v55 = *(v25 + 40);
              if (!v55)
              {
                goto LABEL_146;
              }
            }

            else
            {
              *(v25 + 16) |= 4u;
              v55 = *(v25 + 40);
              if (!v55)
              {
LABEL_146:
                v77 = *(v25 + 8);
                v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
                if (v77)
                {
                  v78 = *v78;
                }

                v55 = sub_16F5828(v78);
                *(v25 + 40) = v55;
              }
            }

            sub_EC6D34((v84 + 20), v55, v54);
            v79 = *(v25 + 16);
            *(v25 + 64) = 5;
            *(v25 + 16) = v79 | 0x220;
            *(v25 + 84) = v85;
            break;
          case 5:
            v14 = *(a4 + 160);
            if (v14 && (v15 = *(a4 + 152), v15 < *v14))
            {
              *(a4 + 152) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              sub_14BE058(*(a4 + 144));
              v16 = sub_19593CC(a4 + 144, v35);
            }

            v36 = sub_683938(v6);
            std::to_string(&v86, v36);
            *(v16 + 16) |= 2u;
            v37 = *(v16 + 8);
            v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
            if (v37)
            {
              v38 = *v38;
            }

            sub_194EA30((v16 + 32), &v86, v38);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
            }

            v39 = *(v16 + 16);
            *(v16 + 72) = *(v6 + 88) / 3.6;
            *(v16 + 16) = v39 | 0xA0;
            *(v16 + 64) = 1;
            if (*(a3 + 23) >= 0)
            {
              v40 = *(a3 + 23);
            }

            else
            {
              v40 = a3[1];
            }

            if (byte_27BF3FF >= 0)
            {
              v41 = byte_27BF3FF;
            }

            else
            {
              v41 = qword_27BF3F0;
            }

            if (v41 + v40 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_159:
              sub_3244();
            }

            if (v41 + v40 > 0x16)
            {
              operator new();
            }

            memset(&v86, 0, sizeof(v86));
            *(&v86.__r_.__value_.__s + 23) = v41 + v40;
            v6 = v84;
            if (v40)
            {
              if (*(a3 + 23) >= 0)
              {
                v64 = a3;
              }

              else
              {
                v64 = *a3;
              }

              memmove(&v86, v64, v40);
            }

            v65 = &v86 + v40;
            if (v41)
            {
              if (byte_27BF3FF >= 0)
              {
                v66 = &qword_27BF3E8;
              }

              else
              {
                v66 = qword_27BF3E8;
              }

              memmove(v65, v66, v41);
            }

            v65[v41] = 0;
            *(v16 + 16) |= 1u;
            v67 = *(v16 + 8);
            v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
            if (v67)
            {
              v68 = *v68;
            }

            sub_194EA30((v16 + 24), &v86, v68);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
            }

            v70 = *(v16 + 16);
            *(v16 + 84) = v85;
            *(v16 + 16) = v70 | 0x204;
            v71 = *(v16 + 40);
            if (!v71)
            {
              v72 = *(v16 + 8);
              v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
              if (v72)
              {
                v73 = *v73;
              }

              v71 = sub_16F5828(v73);
              *(v16 + 40) = v71;
            }

            sub_EC6D34((v84 + 20), v71, v69);
            break;
        }

LABEL_7:
        v8 += 184;
        if (v8 == v9)
        {
          return;
        }
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_7;
        }

        v17 = *(a4 + 136);
        if (v17 && (v18 = *(a4 + 128), v18 < *v17))
        {
          *(a4 + 128) = v18 + 1;
          v19 = *&v17[2 * v18 + 2];
        }

        else
        {
          v42 = sub_14BE0EC(*(a4 + 120));
          v19 = sub_19593CC(a4 + 120, v42);
        }

        if (*(a3 + 23) >= 0)
        {
          v43 = *(a3 + 23);
        }

        else
        {
          v43 = a3[1];
        }

        if (v43 + 9 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_159;
        }

        if (v43 + 9 >= 0x17)
        {
          operator new();
        }

        memset(&v86, 0, sizeof(v86));
        *(&v86.__r_.__value_.__s + 23) = v43 + 9;
        if (v43)
        {
          if (*(a3 + 23) >= 0)
          {
            v59 = a3;
          }

          else
          {
            v59 = *a3;
          }

          memmove(&v86, v59, v43);
        }

        strcpy(&v86 + v43, "_StopSign");
        *(v19 + 16) |= 1u;
        v60 = *(v19 + 8);
        v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
        if (v60)
        {
          v61 = *v61;
        }

        sub_194EA30((v19 + 24), &v86, v61);
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
          *(v19 + 16) |= 2u;
          v63 = *(v19 + 32);
          if (!v63)
          {
LABEL_154:
            v82 = *(v19 + 8);
            v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
            if (v82)
            {
              v83 = *v83;
            }

            v63 = sub_16F5828(v83);
            *(v19 + 32) = v63;
          }
        }

        else
        {
          *(v19 + 16) |= 2u;
          v63 = *(v19 + 32);
          if (!v63)
          {
            goto LABEL_154;
          }
        }

        sub_EC6D34((v6 + 20), v63, v62);
        *(v19 + 16) |= 0xCu;
        v12 = 2;
        goto LABEL_6;
      }

      v26 = *(a4 + 136);
      if (v26 && (v27 = *(a4 + 128), v27 < *v26))
      {
        *(a4 + 128) = v27 + 1;
        v19 = *&v26[2 * v27 + 2];
      }

      else
      {
        v33 = sub_14BE0EC(*(a4 + 120));
        v19 = sub_19593CC(a4 + 120, v33);
      }

      if (*(a3 + 23) >= 0)
      {
        v34 = *(a3 + 23);
      }

      else
      {
        v34 = a3[1];
      }

      if (v34 + 13 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_159;
      }

      if (v34 + 13 >= 0x17)
      {
        operator new();
      }

      memset(&v86, 0, sizeof(v86));
      *(&v86.__r_.__value_.__s + 23) = v34 + 13;
      if (v34)
      {
        if (*(a3 + 23) >= 0)
        {
          v56 = a3;
        }

        else
        {
          v56 = *a3;
        }

        memmove(&v86, v56, v34);
      }

      strcpy(&v86 + v34, "_TrafficLight");
      *(v19 + 16) |= 1u;
      v57 = *(v19 + 8);
      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
      if (v57)
      {
        v58 = *v58;
      }

      sub_194EA30((v19 + 24), &v86, v58);
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
        *(v19 + 16) |= 2u;
        v10 = *(v19 + 32);
        if (!v10)
        {
LABEL_151:
          v80 = *(v19 + 8);
          v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
          if (v80)
          {
            v81 = *v81;
          }

          v10 = sub_16F5828(v81);
          *(v19 + 32) = v10;
        }
      }

      else
      {
        *(v19 + 16) |= 2u;
        v10 = *(v19 + 32);
        if (!v10)
        {
          goto LABEL_151;
        }
      }

      sub_EC6D34((v6 + 20), v10, v11);
      *(v19 + 16) |= 0xCu;
      v12 = 1;
LABEL_6:
      *(v19 + 40) = v12;
      *(v19 + 44) = v85;
      goto LABEL_7;
    }
  }
}

void sub_F0A8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F0A8E4(std::string *__return_ptr a1@<X8>, unint64_t __val@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>)
{
  std::to_string(&v21, __val);
  v7 = std::string::append(&v21, "_", 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v20, a3);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v20;
  }

  else
  {
    v9 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v22, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v23, "_", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, *(a4 + 8));
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v19;
  }

  else
  {
    v15 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v19.__r_.__value_.__l.__size_;
  }

  v17 = std::string::append(&v24, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_26:
    operator delete(v21.__r_.__value_.__l.__data_);
    if (*(a4 + 4) != 2)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  operator delete(v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (*(a4 + 4) == 2)
  {
LABEL_27:
    std::string::append(a1, "_OffRoute", 9uLL);
  }
}

void sub_F0AAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_F0ABC4(_BYTE *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, __n128 a6)
{
  v10 = a2[1534];
  v11 = a2[1535];
  while (v10 != v11)
  {
    v14 = *(a5 + 240);
    if (v14 && (v15 = *(a5 + 232), v15 < *v14))
    {
      *(a5 + 232) = v15 + 1;
      v13 = *&v14[2 * v15 + 2];
    }

    else
    {
      sub_14BE174(*(a5 + 224));
      v13 = sub_19593CC(a5 + 224, v12);
    }

    sub_EC8AE4(v10, v13, a6);
    v10 += 616;
  }

  v16 = a2[1290];
  v17 = a2[1291];
  while (v16 != v17)
  {
    if (sub_EF3EFC(a1, a2, v16))
    {
      sub_F0A8E4(&__p, a3, a4, v16);
      sub_F0CED8(a1, v16, &__p.__r_.__value_.__l.__data_, a5);
      v18 = a2[138];
      v19 = a2[139];
      while (v18 != v19)
      {
        v20 = *(v18 + 1912);
        v21 = *(v18 + 1920);
        if (v20 != v21)
        {
          do
          {
            if (sub_682B1C(v20) != -1 && sub_682B1C(v20) == *(v16 + 8))
            {
              if (v20 == *(v18 + 1920))
              {
                goto LABEL_15;
              }

              goto LABEL_25;
            }

            v20 += 448;
          }

          while (v20 != v21);
          v20 = v21;
          if (v21 == *(v18 + 1920))
          {
            goto LABEL_15;
          }

LABEL_25:
          sub_682A3C(v20, *(a5 + 232) - 1);
        }

LABEL_15:
        v18 += 2616;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v16 += 104;
  }
}

void sub_F0AD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_F0ADAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 1104);
  v9 = *(a2 + 1112);
  while (v8 != v9)
  {
    v12 = *(a3 + 72);
    if (v12 && (v13 = *(a3 + 64), v13 < *v12))
    {
      *(a3 + 64) = v13 + 1;
      v11 = *&v12[2 * v13 + 2];
    }

    else
    {
      v10 = sub_14BC220(*(a3 + 56));
      v11 = sub_19593CC(a3 + 56, v10);
    }

    sub_EF8C2C(a1, v8, v11);
    v8 += 654;
  }

  sub_F0DAFC(a1, a2, a3);

  return sub_F0E458(a1, a2, a3, a4 + 48);
}

void sub_F0AE80(uint64_t *a1, void *a2, uint64_t a3)
{
  if (*(*a1 + 5) != 1)
  {
    return;
  }

  v5 = a1;
  sub_734CE0(v191);
  sub_4D1DDC(a2, &__p);
  v168 = &v180[-v178];
  if (v180 != v178)
  {
    v173 = 0;
    v6 = (a3 + 656);
    v172 = v5;
    v167 = a3;
    v169 = a2;
    do
    {
      v7 = *(a3 + 672);
      if (v7 && (v8 = *(a3 + 664), v8 < *v7))
      {
        *(a3 + 664) = v8 + 1;
        v176 = *&v7[2 * v8 + 2];
      }

      else
      {
        v9 = sub_14BD400(*v6);
        v176 = sub_19593CC(v6, v9);
      }

      v10 = sub_4D1F50(a2, v173);
      v11 = *v10;
      v12 = (*v10 - **v10);
      if (*v12 < 0x1Du)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12[14];
        if (v13)
        {
          v13 = *(v11 + v13);
        }
      }

      if ((*(v10 + 9) & 0x20000000) == 0)
      {
        v13 = -v13;
      }

      *(v176 + 16) |= 4u;
      *(v176 + 80) = v13;
      v14 = (v11 - *v11);
      v174 = v10;
      if (*v14 >= 0x1Du && (v15 = v14[14]) != 0)
      {
        v16 = *(v11 + v15);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v10 + 9);
      if (v16 >= 0)
      {
        v18 = v16;
      }

      else
      {
        v18 = -v16;
      }

      v19 = sub_335D84(v5[2], v18);
      v20 = v19 > 0xFFFFFFFEFFFFFFFFLL;
      if (!v19)
      {
        v20 = 1;
      }

      if (v19 <= 0xFFFFFFFEFFFFFFFFLL)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      if ((v17 & 0x20000000) != 0)
      {
        v22 = v16;
      }

      else
      {
        v22 = -v16;
      }

      v23 = v22 < 1 || v20;
      v24 = 0x1000000000000;
      if (!v23)
      {
        v24 = 0;
      }

      v171 = v24;
      if (v20)
      {
        v25 = 0;
      }

      else
      {
        v25 = v19 & 0xFFFF00000000;
      }

      v26 = (*v174 - **v174);
      if (*v26 < 9u)
      {
        v29 = 0;
        v28 = v176;
      }

      else
      {
        v27 = v26[4];
        v28 = v176;
        if (v27)
        {
          v29 = *(*v174 + v27);
        }

        else
        {
          v29 = 0;
        }
      }

      v28[4] |= 0x20u;
      v28[26] = v29;
      v30 = sub_3CF22C(v169);
      v31 = sub_762504((v30 + 16), v173);
      if (*v31 < 0)
      {
        v32 = -5;
      }

      else
      {
        v32 = 5;
      }

      v33 = *v31 / 10 + (((103 * (v32 + *v31 % 10)) >> 15) & 1) + ((103 * (v32 + *v31 % 10)) >> 10);
      v34 = v28[4];
      v28[4] = v34 | 0x40;
      v28[27] = v33;
      v35 = *v174;
      v36 = (*v174 - **v174);
      if (*v36 < 0x1Bu)
      {
        LODWORD(v37) = 0;
      }

      else
      {
        v37 = v36[13];
        if (v37)
        {
          LODWORD(v37) = *(v35 + v37);
        }
      }

      v28[4] = v34 | 0x240;
      v28[30] = v37;
      v38 = (v35 - *v35);
      if (*v38 >= 0x43u && (v39 = v38[33]) != 0)
      {
        v40 = *(v35 + v39);
      }

      else
      {
        v40 = 0;
      }

      v28[4] = v34 | 0x640;
      v28[31] = v40;
      v41 = sub_2B51D8(v5[2], *(v174 + 8) | ((*(v174 + 9) & 0x1FFFFFFF) << 32));
      v42 = (v41 - *v41);
      if (*v42 >= 0x2Fu && (v43 = v42[23]) != 0)
      {
        v44 = *(v41 + v43);
      }

      else
      {
        v44 = 32;
      }

      v28[4] |= 0x80u;
      v28[28] = v44;
      v45 = sub_311A24(*v174, (*(v174 + 9) & 0x20000000) == 0);
      v28[4] |= 0x100u;
      v28[29] = v45;
      sub_F0C8D0(v5, v174, v28);
      sub_2B7A20(v5[2], v25 | v21 | v171, &v187);
      sub_31C60C(&v187, &__p);
      if (v190)
      {
        if (v188 == v189)
        {
          v46 = 0;
        }

        else
        {
          v46 = -1;
        }

        v175 = v46;
        LODWORD(v47) = v46;
        v170 = v25 | v21;
        v48 = v185;
        v49 = v176;
        if (v184 != v46)
        {
LABEL_83:
          v59 = v180;
          while (1)
          {
            v60 = v6;
            v61 = &v59[4 * v48];
            v62 = *(v61 + 2);
            v63 = *(v61 + 3);
            v64 = sub_57A90(v182);
            v65 = v182 & ~(-1 << (v64 & 0xFE));
            v66 = sub_581D8(v65);
            v67 = sub_581D8(v65 >> 1);
            v68 = (v179 - *v179);
            v69 = *v68;
            if (v69 < 0xD)
            {
              break;
            }

            if (!v68[6])
            {
              goto LABEL_90;
            }

            v70 = *(&v179[v185 + 1] + v68[6] + *(v179 + v68[6]));
LABEL_97:
            if (v64 >= 2)
            {
              v74 = 1 << -(v64 >> 1);
            }

            else
            {
              v74 = -2;
            }

            if ((v67 * v74 + 4 * v63) >= 0xFFFFFFFE)
            {
              v75 = -2;
            }

            else
            {
              v75 = v67 * v74 + 4 * v63;
            }

            v76 = *(v49 + 40);
            if (v76 && (v77 = *(v49 + 32), v77 < *v76))
            {
              *(v49 + 32) = v77 + 1;
              v78 = *&v76[2 * v77 + 2];
            }

            else
            {
              v79 = sub_16F5828(*(v49 + 24));
              v78 = sub_19593CC(v49 + 24, v79);
            }

            v80 = exp(v75 * -6.28318531 / 4294967300.0 + 3.14159265);
            v81 = atan((v80 + -1.0 / v80) * 0.5);
            v82 = *(v78 + 40);
            *(v78 + 48) = v81 * 57.2957795;
            *(v78 + 56) = (v66 * v74 + 4 * v62) * 360.0 / 4294967300.0 + -180.0;
            *(v78 + 40) = v82 | 7;
            *(v78 + 64) = v70 / 100.0;
            v83 = v185;
            if (v186)
            {
              v48 = --v185;
              v59 = v180;
              v6 = v60;
              if ((v83 - 1) >= *v180)
              {
                v86 = *v178;
                v94 = *(v178 + 8) - *v178;
                v49 = v176;
                v88 = --v184;
                if (v184 < (v94 >> 3))
                {
                  goto LABEL_123;
                }

                goto LABEL_84;
              }

              v84 = &v180[4 * v83 + 4];
              v85 = &v180[4 * v48 + 4];
              v49 = v176;
              if (*v84 == *v85 && *(v84 + 1) == *(v85 + 1))
              {
                v86 = *v178;
                v87 = *(v178 + 8) - *v178;
                if (*v180 != 2 || v87 != 8)
                {
                  v48 = v83 - 2;
                  v88 = --v184;
                  v185 = v48;
                  if (v184 < (v87 >> 3))
                  {
                    while (1)
                    {
LABEL_123:
                      v95 = *(v86 + 8 * v88);
                      v182 = v95;
                      v96 = __p;
                      v203 = 0;
                      v204 = v95;
                      v201 = &v203;
                      v202 = &v204;
                      v97 = *(__p + 482) + 1;
                      *(__p + 482) = v97;
                      if (!*v96)
                      {
                        exception = __cxa_allocate_exception(0x40uLL);
                        v207 = *v202;
                        v205 = sub_7FCF0(1u);
                        v206 = v148;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v205, &v208);
                        if ((v210 & 0x80u) == 0)
                        {
                          v149 = &v208;
                        }

                        else
                        {
                          v149 = v208;
                        }

                        if ((v210 & 0x80u) == 0)
                        {
                          v150 = v210;
                        }

                        else
                        {
                          v150 = v209;
                        }

                        v151 = sub_2D390(exception, v149, v150);
                      }

                      if (*(v96 + 28) == v95)
                      {
                        ++v96[483];
                        v96[15] = v97;
                        v98 = v96[16];
                        if (!v98)
                        {
                          goto LABEL_224;
                        }

                        goto LABEL_146;
                      }

                      v99 = (v96 + 17);
                      if (*(v96 + 34) == v95)
                      {
                        goto LABEL_128;
                      }

                      if (*(v96 + 40) == v95)
                      {
                        break;
                      }

                      v99 = (v96 + 23);
                      if (*(v96 + 46) == v95)
                      {
LABEL_128:
                        ++v96[483];
                        *(v99 + 1) = v97;
                        v98 = *(v99 + 2);
                        if (!v98)
                        {
                          goto LABEL_224;
                        }

                        goto LABEL_146;
                      }

                      v100 = v96[21];
                      v101 = v96[18];
                      v102 = v96[15];
                      v103 = v96[24];
                      v98 = sub_2D52A4(*v96, 1, v95, 1);
                      if (v102 >= v97)
                      {
                        v104 = v97;
                      }

                      else
                      {
                        v104 = v102;
                      }

                      v105 = v101 >= v104;
                      if (v101 < v104)
                      {
                        v104 = v101;
                      }

                      v106 = 4 * (v102 < v97);
                      if (!v105)
                      {
                        v106 = 5;
                      }

                      if (v100 < v104)
                      {
                        v106 = 6;
                        v104 = v100;
                      }

                      if (v103 < v104)
                      {
                        v106 = 7;
                      }

                      v107 = &v96[3 * v106 + 2];
                      *v107 = v204;
                      *(v107 + 8) = v96[482];
                      *(v107 + 16) = v98;
                      v5 = v172;
                      v6 = v60;
                      v49 = v176;
                      if (v98)
                      {
                        goto LABEL_146;
                      }

                      sub_2B572C(&v201);
                      v108 = 0;
                      v5 = v172;
                      v6 = v60;
                      v49 = v176;
                      v109 = (&loc_1120530 + 1);
                      if (*(&loc_1120530 + 1) < 7u)
                      {
LABEL_152:
                        v183 = 0;
                        v111 = (v108 - *v108);
                        if (*v111 < 5u)
                        {
                          goto LABEL_155;
                        }

                        goto LABEL_153;
                      }

LABEL_147:
                      v110 = v109[3];
                      if (v110)
                      {
                        LODWORD(v110) = *(v108 + v110);
                      }

                      v183 = v110;
                      v111 = (v108 - *v108);
                      if (*v111 < 5u)
                      {
LABEL_155:
                        v113 = 0;
                        goto LABEL_156;
                      }

LABEL_153:
                      v112 = v111[2];
                      if (!v112)
                      {
                        goto LABEL_155;
                      }

                      v113 = v108 + v112 + *(v108 + v112);
LABEL_156:
                      v114 = &v113[4 * HIDWORD(v95) + 4 + *&v113[4 * HIDWORD(v95) + 4]];
                      v179 = v114;
                      v115 = &v114[-*v114];
                      v116 = *v115;
                      v59 = *(v115 + 3);
                      if (*(v115 + 3))
                      {
                        v59 = &v59[v114 + *&v59[v114]];
                      }

                      v180 = v59;
                      if (v116 >= 0xB && (v117 = *(v115 + 5)) != 0)
                      {
                        v118 = &v114[v117 + *&v114[v117]];
                      }

                      else
                      {
                        v118 = 0;
                      }

                      v181 = v118;
                      v119 = *v59;
                      v48 = *v59 - 2;
                      v185 = v48;
                      v120 = &v59[4 * (v119 - 1) + 4];
                      v121 = &v59[4 * v48 + 4];
                      if (*v120 == *v121 && *(v120 + 1) == *(v121 + 1))
                      {
                        v48 = v119 - 3;
                        v88 = --v184;
                        v185 = v48;
                        v86 = *v178;
                        if (v184 < ((*(v178 + 8) - *v178) >> 3))
                        {
                          continue;
                        }
                      }

                      goto LABEL_84;
                    }

                    ++v96[483];
                    v96[21] = v97;
                    v98 = v96[22];
                    if (!v98)
                    {
LABEL_224:
                      v152 = __cxa_allocate_exception(0x40uLL);
                      v207 = *v202;
                      v205 = sub_7FCF0(1u);
                      v206 = v153;
                      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v205, &v208);
                      if ((v210 & 0x80u) == 0)
                      {
                        v154 = &v208;
                      }

                      else
                      {
                        v154 = v208;
                      }

                      if ((v210 & 0x80u) == 0)
                      {
                        v155 = v210;
                      }

                      else
                      {
                        v155 = v209;
                      }

                      v156 = sub_2D390(v152, v154, v155);
                    }

LABEL_146:
                    v108 = (v98 + *v98);
                    v109 = (v108 - *v108);
                    if (*v109 < 7u)
                    {
                      goto LABEL_152;
                    }

                    goto LABEL_147;
                  }
                }
              }

LABEL_84:
              if (v184 == v47)
              {
LABEL_85:
                if (v48 == v175)
                {
                  goto LABEL_75;
                }
              }
            }

            else
            {
              v48 = ++v185;
              v59 = v180;
              v6 = v60;
              if ((v83 + 1) >= *v180)
              {
                v91 = *v178;
                v122 = *(v178 + 8) - *v178;
                v49 = v176;
                v93 = ++v184;
                if (v184 < (v122 >> 3))
                {
                  goto LABEL_167;
                }

                goto LABEL_84;
              }

              v89 = &v180[4 * v83 + 4];
              v90 = &v180[4 * v48 + 4];
              v49 = v176;
              if (*v89 != *v90)
              {
                goto LABEL_84;
              }

              if (*(v89 + 1) != *(v90 + 1))
              {
                goto LABEL_84;
              }

              v91 = *v178;
              v92 = *(v178 + 8) - *v178;
              if (*v180 == 2 && v92 == 8)
              {
                goto LABEL_84;
              }

              v48 = v83 + 2;
              v93 = ++v184;
              v185 = v48;
              if (v184 >= (v92 >> 3))
              {
                goto LABEL_84;
              }

              while (1)
              {
LABEL_167:
                v123 = *(v91 + 8 * v93);
                v182 = v123;
                v124 = __p;
                v203 = 0;
                v204 = v123;
                v201 = &v203;
                v202 = &v204;
                v125 = *(__p + 482) + 1;
                *(__p + 482) = v125;
                if (!*v124)
                {
                  v157 = __cxa_allocate_exception(0x40uLL);
                  v207 = *v202;
                  v205 = sub_7FCF0(1u);
                  v206 = v158;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v205, &v208);
                  if ((v210 & 0x80u) == 0)
                  {
                    v159 = &v208;
                  }

                  else
                  {
                    v159 = v208;
                  }

                  if ((v210 & 0x80u) == 0)
                  {
                    v160 = v210;
                  }

                  else
                  {
                    v160 = v209;
                  }

                  v161 = sub_2D390(v157, v159, v160);
                }

                if (*(v124 + 28) == v123)
                {
                  ++v124[483];
                  v124[15] = v125;
                  v126 = v124[16];
                  if (!v126)
                  {
                    goto LABEL_238;
                  }

                  goto LABEL_190;
                }

                v127 = (v124 + 17);
                if (*(v124 + 34) == v123)
                {
                  goto LABEL_172;
                }

                if (*(v124 + 40) == v123)
                {
                  ++v124[483];
                  v124[21] = v125;
                  v126 = v124[22];
                  if (!v126)
                  {
LABEL_238:
                    v162 = __cxa_allocate_exception(0x40uLL);
                    v207 = *v202;
                    v205 = sub_7FCF0(1u);
                    v206 = v163;
                    sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v205, &v208);
                    if ((v210 & 0x80u) == 0)
                    {
                      v164 = &v208;
                    }

                    else
                    {
                      v164 = v208;
                    }

                    if ((v210 & 0x80u) == 0)
                    {
                      v165 = v210;
                    }

                    else
                    {
                      v165 = v209;
                    }

                    v166 = sub_2D390(v162, v164, v165);
                  }

LABEL_190:
                  v136 = (v126 + *v126);
                  v137 = (v136 - *v136);
                  if (*v137 < 7u)
                  {
                    goto LABEL_196;
                  }

                  goto LABEL_191;
                }

                v127 = (v124 + 23);
                if (*(v124 + 46) == v123)
                {
LABEL_172:
                  ++v124[483];
                  *(v127 + 1) = v125;
                  v126 = *(v127 + 2);
                  if (!v126)
                  {
                    goto LABEL_238;
                  }

                  goto LABEL_190;
                }

                v128 = v124[21];
                v129 = v124[18];
                v130 = v124[15];
                v131 = v124[24];
                v126 = sub_2D52A4(*v124, 1, v123, 1);
                if (v130 >= v125)
                {
                  v132 = v125;
                }

                else
                {
                  v132 = v130;
                }

                v133 = v129 >= v132;
                if (v129 < v132)
                {
                  v132 = v129;
                }

                v134 = 4 * (v130 < v125);
                if (!v133)
                {
                  v134 = 5;
                }

                if (v128 < v132)
                {
                  v134 = 6;
                  v132 = v128;
                }

                if (v131 < v132)
                {
                  v134 = 7;
                }

                v135 = &v124[3 * v134 + 2];
                *v135 = v204;
                *(v135 + 8) = v124[482];
                *(v135 + 16) = v126;
                v5 = v172;
                v6 = v60;
                v49 = v176;
                if (v126)
                {
                  goto LABEL_190;
                }

                sub_2B572C(&v201);
                v136 = 0;
                v5 = v172;
                v6 = v60;
                v49 = v176;
                v137 = (&loc_1120530 + 1);
                if (*(&loc_1120530 + 1) < 7u)
                {
LABEL_196:
                  v183 = 0;
                  v139 = (v136 - *v136);
                  if (*v139 < 5u)
                  {
                    goto LABEL_199;
                  }

                  goto LABEL_197;
                }

LABEL_191:
                v138 = v137[3];
                if (v138)
                {
                  LODWORD(v138) = *(v136 + v138);
                }

                v183 = v138;
                v139 = (v136 - *v136);
                if (*v139 < 5u)
                {
                  goto LABEL_199;
                }

LABEL_197:
                v140 = v139[2];
                if (v140)
                {
                  v141 = v136 + v140 + *(v136 + v140);
                  goto LABEL_200;
                }

LABEL_199:
                v141 = 0;
LABEL_200:
                v142 = &v141[4 * HIDWORD(v123) + 4 + *&v141[4 * HIDWORD(v123) + 4]];
                v179 = v142;
                v143 = &v142[-*v142];
                v144 = *v143;
                v59 = *(v143 + 3);
                if (*(v143 + 3))
                {
                  v59 = &v59[v142 + *&v59[v142]];
                }

                v180 = v59;
                if (v144 >= 0xB && (v145 = *(v143 + 5)) != 0)
                {
                  v146 = &v142[v145 + *&v142[v145]];
                }

                else
                {
                  v146 = 0;
                }

                v181 = v146;
                v48 = 1;
                v185 = 1;
                if (*(v59 + 2) != *(v59 + 4))
                {
                  goto LABEL_84;
                }

                if (*(v59 + 3) != *(v59 + 5))
                {
                  break;
                }

                v48 = 2;
                v93 = ++v184;
                v185 = 2;
                v91 = *v178;
                if (v184 >= ((*(v178 + 8) - *v178) >> 3))
                {
                  goto LABEL_84;
                }
              }

              v48 = 1;
              if (v184 == v47)
              {
                goto LABEL_85;
              }
            }
          }

          if (v69 >= 0xB)
          {
LABEL_90:
            if (v68[5])
            {
              v71 = *(v179 + 2 * v185 + v68[5] + *(v179 + v68[5]) + 4);
              if (v71 != 0xFFFF)
              {
                v72 = v68[4];
                if (v72)
                {
                  v73 = *(v179 + v72);
                }

                else
                {
                  v73 = 0;
                }

                v70 = v183 + v71 + v73;
                goto LABEL_97;
              }
            }
          }

          v70 = 0x7FFFFFFF;
          goto LABEL_97;
        }
      }

      else if (v188 == v189)
      {
        v175 = 0;
        LODWORD(v47) = 0;
        v170 = v25 | v21;
        v48 = v185;
        v49 = v176;
        if (v184)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v50 = *(v189 - 1);
        v51 = sub_2B4D24(v187, v50, 0);
        v52 = &v51[*&v51[-*v51 + 4]];
        v53 = &v52[4 * HIDWORD(v50) + *v52];
        v54 = (v53 + 4 + *(v53 + 4));
        v47 = (v189 - v188) >> 3;
        v55 = (v54 + *(v54 - *v54 + 6));
        v175 = *(v55 + *v55);
        v170 = v25 | v21;
        v48 = v185;
        v49 = v176;
        if (v184 != v47)
        {
          goto LABEL_83;
        }
      }

      if (v48 != v175)
      {
        goto LABEL_83;
      }

LABEL_75:
      a3 = v167;
      a2 = v169;
      if (!v173)
      {
        v56 = sub_4D2148(v169, 0);
        *(v176 + 16) |= 8u;
        *(v176 + 88) = v56 / 1000000000.0;
      }

      sub_4D1DDC(v169, &__p);
      if (v173 == &v180[~v178])
      {
        v57 = sub_4D21C8(v169, v173);
        *(v176 + 16) |= 0x10u;
        *(v176 + 96) = v57 / 1000000000.0;
      }

      sub_EF6338(v5, v174, v170 | v171, v176);
      sub_F0CAC0(v5, v169, v173, v170 | v171, v191, v167);
      *&v58 = sub_31BF20(&v187, &__p).n128_u64[0];
      sub_F0C12C(v5, v174, v170 | v171, &__p, v176, v58);
      if (__p)
      {
        v178 = __p;
        operator delete(__p);
      }

      if (v188)
      {
        v189 = v188;
        operator delete(v188);
      }

      ++v173;
    }

    while (v173 != v168);
  }

  if (v200 < 0)
  {
    operator delete(v199);
    if ((v198 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v196 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_214:
      operator delete(v195);
      if ((v194 & 0x80000000) == 0)
      {
LABEL_7:
        if ((v192 & 0x80000000) == 0)
        {
          return;
        }

LABEL_216:
        operator delete(v191[0]);
        return;
      }

      goto LABEL_215;
    }
  }

  else if ((v198 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v197);
  if (v196 < 0)
  {
    goto LABEL_214;
  }

LABEL_6:
  if ((v194 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_215:
  operator delete(v193);
  if (v192 < 0)
  {
    goto LABEL_216;
  }
}

void sub_F0C000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_F0C014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  if (__p)
  {
    operator delete(__p);
  }

  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_F0C12C(uint64_t a1, int **a2, uint64_t a3, uint64_t *a4, uint64_t a5, double a6)
{
  v11 = *a2;
  v12 = (*a2 - **a2);
  v13 = *v12;
  if ((*(a2 + 39) & 0x20) != 0)
  {
    if (v13 >= 0x4D)
    {
      v15 = v12[38];
      if (v15)
      {
        if ((v11[v15] & 4) != 0 || (*&v11[v15] & 0x10) != 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else if (v13 >= 0x4D)
  {
    v14 = v12[38];
    if (v14)
    {
      if ((v11[v14] & 8) != 0 || (*&v11[v14] & 0x20) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  sub_91A920(*(a1 + 16), a3, &v90);
  v16 = v90;
  v17 = v91;
  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v16 == v17)
  {
    return;
  }

LABEL_14:
  *(a5 + 16) |= 2u;
  v18 = *(a5 + 72);
  if (v18)
  {
    v19 = *a2;
    v20 = (*a2 - **a2);
    v21 = *v20;
    if ((*(a2 + 39) & 0x20) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = *(a5 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v18 = sub_14BD364(v25);
    *(a5 + 72) = v18;
    v19 = *a2;
    v20 = (*a2 - **a2);
    v21 = *v20;
    if ((*(a2 + 39) & 0x20) == 0)
    {
LABEL_16:
      if (v21 >= 0x4D)
      {
        v22 = v20[38];
        if (!v22)
        {
          goto LABEL_27;
        }

        v23 = 8;
LABEL_25:
        LOBYTE(v22) = (*(v19 + v22) & v23) != 0;
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  if (v21 >= 0x4D)
  {
    v22 = v20[38];
    if (!v22)
    {
      goto LABEL_27;
    }

    v23 = 4;
    goto LABEL_25;
  }

LABEL_26:
  LOBYTE(v22) = 0;
LABEL_27:
  *(v18 + 16) |= 1u;
  *(v18 + 48) = v22;
  v26 = (v19 - *v19);
  v27 = *v26;
  if ((*(a2 + 39) & 0x20) != 0)
  {
    if (v27 < 0x4D)
    {
      goto LABEL_70;
    }

    v29 = v26[38];
    if (!v29 || (*(v19 + v29) & 0x10) == 0)
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v27 < 0x4D)
    {
      goto LABEL_70;
    }

    v28 = v26[38];
    if (!v28 || (*(v19 + v28) & 0x20) == 0)
    {
      goto LABEL_70;
    }
  }

  *(a5 + 16) |= 2u;
  v30 = *(v18 + 40);
  if (v30 && (v31 = *(v18 + 32), v31 < *v30))
  {
    *(v18 + 32) = v31 + 1;
    v32 = *&v30[2 * v31 + 2];
  }

  else
  {
    v33 = v18;
    sub_14BD2E4(*(v18 + 24));
    v32 = sub_19593CC(v33 + 24, v34);
  }

  v35 = *(v32 + 16);
  *(v32 + 48) = 2;
  *(v32 + 16) = v35 | 9;
  v36 = *(v32 + 24);
  if (!v36)
  {
    v37 = *(v32 + 8);
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    v36 = sub_16F5828(v38);
    *(v32 + 24) = v36;
  }

  v39 = a4[1];
  LODWORD(a6) = *(v39 - 8);
  v40 = exp(*&a6 * -6.28318531 / 4294967300.0 + 3.14159265);
  v41 = -1.0;
  v42 = atan((v40 + -1.0 / v40) * 0.5) * 57.2957795;
  *(v36 + 40) |= 1u;
  *(v36 + 48) = v42;
  *(v32 + 16) |= 1u;
  LODWORD(v42) = *(v39 - 12);
  *(v36 + 40) |= 2u;
  *(v36 + 56) = *&v42 * 360.0 / 4294967300.0 + -180.0;
  *(v32 + 16) |= 1u;
  v43 = *(v39 - 4) / 100.0;
  *(v36 + 40) |= 4u;
  *(v36 + 64) = v43;
  v44 = *a2;
  v45 = *(a2 + 9);
  v46 = (*a2 - **a2);
  v47 = *v46;
  if ((v45 & 0x20000000) != 0)
  {
    if (v47 < 0xF)
    {
      goto LABEL_52;
    }

    v48 = v46[7];
    if (!v46[7])
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (v47 < 0x11)
    {
      goto LABEL_52;
    }

    v48 = v46[8];
    if (!v46[8])
    {
      goto LABEL_52;
    }
  }

  v49 = v44[v48];
  if (v49)
  {
    v41 = v49;
  }

  else
  {
    v41 = -1.0;
  }

LABEL_52:
  if (*&v41 > -1 && ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || *&v41 == 0)
  {
    v52 = -1.0;
    if ((v45 & 0x20000000) != 0)
    {
      if (v47 < 0xF)
      {
        goto LABEL_68;
      }

      v53 = v46[7];
      if (!v53)
      {
        goto LABEL_68;
      }
    }

    else if (v47 < 0x11 || (v53 = v46[8]) == 0)
    {
LABEL_68:
      v54 = *(v32 + 16) | 4;
      *(v32 + 16) = v54;
      *(v32 + 40) = v52 / 3.6;
      goto LABEL_69;
    }

    v55 = v44[v53];
    v52 = v55;
    if (!v55)
    {
      v52 = -1.0;
    }

    goto LABEL_68;
  }

  v54 = *(v32 + 16);
LABEL_69:
  *(v32 + 16) = v54 | 2;
  *(v32 + 32) = 0x3FF0000000000000;
LABEL_70:
  sub_91A920(*(a1 + 16), a3, &v90);
  v56 = v90;
  v57 = v91;
  if (v90 != v91)
  {
    while (1)
    {
      *(a5 + 16) |= 2u;
      v58 = *(a5 + 72);
      if (v58)
      {
        v59 = *(v58 + 40);
        if (!v59)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v60 = *(a5 + 8);
        v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
        if (v60)
        {
          v61 = *v61;
        }

        v58 = sub_14BD364(v61);
        *(a5 + 72) = v58;
        v59 = *(v58 + 40);
        if (!v59)
        {
          goto LABEL_79;
        }
      }

      v62 = *(v58 + 32);
      if (v62 < *v59)
      {
        *(v58 + 32) = v62 + 1;
        v63 = *&v59[2 * v62 + 2];
        goto LABEL_80;
      }

LABEL_79:
      sub_14BD2E4(*(v58 + 24));
      v63 = sub_19593CC(v58 + 24, v64);
LABEL_80:
      v65 = *(v63 + 16);
      *(v63 + 16) = v65 | 8;
      *(v63 + 48) = 1;
      v66 = *a2;
      v67 = *(a2 + 9);
      v68 = (*a2 - **a2);
      v69 = *v68;
      v70 = -1.0;
      if ((v67 & 0x20000000) != 0)
      {
        if (v69 < 0xF)
        {
          goto LABEL_88;
        }

        v71 = v68[7];
        if (!v68[7])
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v69 < 0x11)
        {
          goto LABEL_88;
        }

        v71 = v68[8];
        if (!v68[8])
        {
          goto LABEL_88;
        }
      }

      v72 = v66[v71];
      v70 = v72;
      if (!v72)
      {
        v70 = -1.0;
      }

LABEL_88:
      if ((v70 < 0.0 || ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && *&v70 != 0)
      {
        goto LABEL_105;
      }

      v75 = -1.0;
      if ((v67 & 0x20000000) != 0)
      {
        if (v69 >= 0xF)
        {
          v76 = v68[7];
          if (v76)
          {
LABEL_102:
            v77 = v66[v76];
            v75 = v77;
            if (!v77)
            {
              v75 = -1.0;
            }
          }
        }
      }

      else if (v69 >= 0x11)
      {
        v76 = v68[8];
        if (v76)
        {
          goto LABEL_102;
        }
      }

      *(v63 + 16) = v65 | 0xC;
      *(v63 + 40) = v75 / 3.6;
LABEL_105:
      v78 = sub_4A580C(v56, a4);
      v88 = v78;
      v89 = v79;
      *(v63 + 16) |= 1u;
      v80 = *(v63 + 24);
      if (v80)
      {
        v81 = HIDWORD(v78);
      }

      else
      {
        v82 = *(v63 + 8);
        v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
        if (v82)
        {
          v83 = *v83;
        }

        v80 = sub_16F5828(v83);
        *(v63 + 24) = v80;
        LODWORD(v81) = HIDWORD(v88);
      }

      v84 = exp(v81 * -6.28318531 / 4294967300.0 + 3.14159265);
      v85 = atan((v84 + -1.0 / v84) * 0.5) * 57.2957795;
      *(v80 + 40) |= 1u;
      *(v80 + 48) = v85;
      *(v63 + 16) |= 1u;
      LODWORD(v85) = v88;
      *(v80 + 40) |= 2u;
      *(v80 + 56) = *&v85 * 360.0 / 4294967300.0 + -180.0;
      v86 = v89;
      if (v89 != 0x7FFFFFFF)
      {
        *(v63 + 16) |= 1u;
        *(v80 + 40) |= 4u;
        *(v80 + 64) = v86 / 100.0;
      }

      sub_47190(&v88, a4);
      *(v63 + 16) |= 2u;
      *(v63 + 32) = v87;
      v56 += 3;
      if (v56 == v57)
      {
        v56 = v90;
        break;
      }
    }
  }

  if (v56)
  {
    v91 = v56;
    operator delete(v56);
  }
}

void sub_F0C8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_F0C8D0(uint64_t a1, int **a2, uint64_t a3)
{
  *(a3 + 16) |= 1u;
  v4 = *(a3 + 64);
  if (!v4)
  {
    v6 = *(a3 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    v4 = sub_14BD268(v7);
    *(a3 + 64) = v4;
  }

  v8 = *a2;
  v9 = *(a2 + 9) & 0x20000000;
  v10 = (*a2 - **a2);
  v11 = *v10;
  result = -1.0;
  if (v9)
  {
    if (v11 < 0xF)
    {
      goto LABEL_13;
    }

    v13 = v10[7];
    if (!v10[7])
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v11 < 0x11)
    {
      goto LABEL_13;
    }

    v13 = v10[8];
    if (!v10[8])
    {
      goto LABEL_13;
    }
  }

  v14 = v8[v13];
  result = v14;
  if (!v14)
  {
    result = -1.0;
  }

LABEL_13:
  if (result >= 0.0 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || *&result == 0)
  {
    v17 = -1.0;
    if (v9)
    {
      if (v11 < 0xF)
      {
        goto LABEL_29;
      }

      v18 = v10[7];
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else if (v11 < 0x11 || (v18 = v10[8]) == 0)
    {
LABEL_29:
      result = v17 / 3.6;
      *(v4 + 4) |= 1u;
      *(v4 + 3) = result;
      v9 = *(a2 + 9) & 0x20000000;
      goto LABEL_30;
    }

    v19 = v8[v18];
    v17 = v19;
    if (!v19)
    {
      v17 = -1.0;
    }

    goto LABEL_29;
  }

LABEL_30:
  v20 = 2;
  if (!v9)
  {
    v20 = 3;
  }

  v21 = a2[v20];
  if (v21)
  {
    v22 = (v21 - *v21);
    if (*v22 >= 9u)
    {
      result = -1.0;
      if (v22[4])
      {
        v23 = *(v21 + v22[4]);
        if ((v23 - 1) <= 0xFFFDu)
        {
          result = v23 / 100.0;
        }
      }

      if (*&result >> 52 <= 0x7FEuLL)
      {
        v24 = v22[4];
        v25 = -1.0;
        if (v24)
        {
          v26 = *(v21 + v24);
          if ((v26 - 1) <= 0xFFFDu)
          {
            v25 = v26 / 100.0;
          }
        }

        result = v25 / 3.6;
        *(v4 + 4) |= 2u;
        *(v4 + 4) = result;
      }
    }
  }

  return result;
}

void sub_F0CAC0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  sub_5E94A4(a1[2], a4, 1, &v50);
  sub_4E51E0(a1[2], a4 & 0xFFFFFFFFFFFFLL, &v48);
  sub_64AC90(&v46, &v48, 0);
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_73BE28(&v50, v36);
  if (a3 && sub_734E58(v36, a5))
  {
    v12 = *(a6 + 696);
    if (v12 && (v13 = *(a6 + 688), v13 < *v12))
    {
      *(a6 + 688) = v13 + 1;
      v14 = *&v12[2 * v13 + 2];
      v15 = *a1;
      *(v14 + 16) |= 1u;
      v16 = *(v14 + 24);
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = sub_14BD6BC(*(a6 + 680));
      v14 = sub_19593CC(a6 + 680, v17);
      v15 = *a1;
      *(v14 + 16) |= 1u;
      v16 = *(v14 + 24);
      if (!v16)
      {
LABEL_8:
        v18 = *(v14 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v16 = sub_16F5CD4(v19);
        *(v14 + 24) = v16;
      }
    }

    sub_ECAE3C(a5, v15, v16);
    *(v14 + 16) |= 2u;
    *(v14 + 32) = a3 - 1;
  }

  sub_4D1DDC(a2, &__p);
  if (v35 + ~v33 != a3)
  {
    goto LABEL_22;
  }

  v20 = *(a6 + 696);
  if (v20 && (v21 = *(a6 + 688), v21 < *v20))
  {
    *(a6 + 688) = v21 + 1;
    v22 = *&v20[2 * v21 + 2];
    v23 = *a1;
    *(v22 + 16) |= 1u;
    v24 = *(v22 + 24);
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = (a6 + 680);
    v26 = sub_14BD6BC(*v25);
    v22 = sub_19593CC(v25, v26);
    v23 = *a1;
    *(v22 + 16) |= 1u;
    v24 = *(v22 + 24);
    if (!v24)
    {
LABEL_18:
      v27 = *(v22 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v24 = sub_16F5CD4(v28);
      *(v22 + 24) = v24;
    }
  }

  sub_ECAE3C(v36, v23, v24);
  *(v22 + 16) |= 2u;
  *(v22 + 32) = a3;
LABEL_22:
  sub_52CB8C(a5, v36);
  if (v45 < 0)
  {
    operator delete(v44);
    if ((v43 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v41 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }
  }

  else if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v42);
  if ((v41 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v40);
  if ((v39 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v38);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_27:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v36[0]);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_28:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v46);
  if ((v49 & 0x80000000) == 0)
  {
LABEL_29:
    v29 = v50;
    if (!v50)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v48);
  v29 = v50;
  if (!v50)
  {
    return;
  }

LABEL_38:
  v30 = v51;
  v31 = v29;
  if (v51 != v29)
  {
    do
    {
      v30 = sub_310F30(v30 - 144);
    }

    while (v30 != v29);
    v31 = v50;
  }

  v51 = v29;
  operator delete(v31);
}

void sub_F0CE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3E5388(va);
  if (*(v11 - 121) < 0)
  {
    operator delete(*(v11 - 144));
    if ((*(v11 - 89) & 0x80000000) == 0)
    {
LABEL_3:
      sub_5E9738((v11 - 88));
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v11 - 89) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v11 - 112));
  sub_5E9738((v11 - 88));
  _Unwind_Resume(a1);
}

void sub_F0CED8(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4)
{
  if (sub_6834F4(a2))
  {
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    if (v7 != v8)
    {
      v39 = *(a2 + 40);
      do
      {
        if (sub_683140(v7))
        {
          v12 = *(a4 + 240);
          if (v12 && (v13 = *(a4 + 232), v13 < *v12))
          {
            *(a4 + 232) = v13 + 1;
            v14 = *&v12[2 * v13 + 2];
          }

          else
          {
            sub_14BE174(*(a4 + 224));
            v14 = sub_19593CC(a4 + 224, v15);
          }

          v16 = *(a2 + 4) != 0;
          *(v14 + 16) |= 0x20u;
          *(v14 + 76) = v16;
          if (sub_683530(a2))
          {
            v17 = *(v14 + 16);
            *(v14 + 72) = *(a2 + 16);
            *(v14 + 88) = *(v7 + 22);
            v18 = *(v7 + 24);
            *(v14 + 16) = v17 | 0x190;
            *(v14 + 84) = v18;
          }

          v19 = *(v7 + 16);
          if (v19 <= 2)
          {
            if (v19 == 1)
            {
              *(v14 + 16) |= 4u;
              *(v14 + 64) = 2;
              if (*(a3 + 23) >= 0)
              {
                v26 = *(a3 + 23);
              }

              else
              {
                v26 = a3[1];
              }

              if (v26 + 13 > 0x7FFFFFFFFFFFFFF7)
              {
LABEL_107:
                sub_3244();
              }

              if (v26 + 13 >= 0x17)
              {
                operator new();
              }

              __p[1] = 0;
              v41 = 0;
              __p[0] = 0;
              HIBYTE(v41) = v26 + 13;
              if (v26)
              {
                if (*(a3 + 23) >= 0)
                {
                  v31 = a3;
                }

                else
                {
                  v31 = *a3;
                }

                memmove(__p, v31, v26);
              }

              strcpy(__p + v26, "_TrafficLight");
              *(v14 + 16) |= 1u;
              v32 = *(v14 + 8);
              v11 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
              if (v32)
              {
                v11 = *v11;
              }

              goto LABEL_11;
            }

            if (v19 == 2)
            {
              *(v14 + 16) |= 4u;
              *(v14 + 64) = 2;
              if (*(a3 + 23) >= 0)
              {
                v22 = *(a3 + 23);
              }

              else
              {
                v22 = a3[1];
              }

              if (v22 + 9 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_107;
              }

              if (v22 + 9 >= 0x17)
              {
                operator new();
              }

              __p[1] = 0;
              v41 = 0;
              __p[0] = 0;
              HIBYTE(v41) = v22 + 9;
              if (v22)
              {
                if (*(a3 + 23) >= 0)
                {
                  v37 = a3;
                }

                else
                {
                  v37 = *a3;
                }

                memmove(__p, v37, v22);
              }

              strcpy(__p + v22, "_StopSign");
              *(v14 + 16) |= 1u;
              v38 = *(v14 + 8);
              v11 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if (v38)
              {
                v11 = *v11;
              }

              goto LABEL_11;
            }
          }

          else
          {
            switch(v19)
            {
              case 3:
                *(v14 + 16) |= 4u;
                *(v14 + 64) = 1;
                if (*(a3 + 23) >= 0)
                {
                  v23 = *(a3 + 23);
                }

                else
                {
                  v23 = a3[1];
                }

                if (v23 + 15 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_107;
                }

                if (v23 + 15 >= 0x17)
                {
                  operator new();
                }

                __p[1] = 0;
                v41 = 0;
                __p[0] = 0;
                HIBYTE(v41) = v23 + 15;
                if (v23)
                {
                  if (*(a3 + 23) >= 0)
                  {
                    v9 = a3;
                  }

                  else
                  {
                    v9 = *a3;
                  }

                  memmove(__p, v9, v23);
                }

                strcpy(__p + v23, "_RedLightCamera");
                *(v14 + 16) |= 1u;
                v10 = *(v14 + 8);
                v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
                if (v10)
                {
                  v11 = *v11;
                }

                goto LABEL_11;
              case 4:
                *(v14 + 16) |= 4u;
                *(v14 + 64) = 1;
                if (*(a3 + 23) >= 0)
                {
                  v24 = *(a3 + 23);
                }

                else
                {
                  v24 = a3[1];
                }

                if (byte_27BF3E7 >= 0)
                {
                  v25 = byte_27BF3E7;
                }

                else
                {
                  v25 = qword_27BF3D8;
                }

                if (v25 + v24 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_107;
                }

                if (v25 + v24 > 0x16)
                {
                  operator new();
                }

                __p[1] = 0;
                v41 = 0;
                __p[0] = 0;
                HIBYTE(v41) = v25 + v24;
                v8 = v39;
                if (v24)
                {
                  if (*(a3 + 23) >= 0)
                  {
                    v27 = a3;
                  }

                  else
                  {
                    v27 = *a3;
                  }

                  memmove(__p, v27, v24);
                }

                v28 = __p + v24;
                if (v25)
                {
                  if (byte_27BF3E7 >= 0)
                  {
                    v29 = &qword_27BF3D0;
                  }

                  else
                  {
                    v29 = qword_27BF3D0;
                  }

                  memmove(v28, v29, v25);
                }

                v28[v25] = 0;
                *(v14 + 16) |= 1u;
                v30 = *(v14 + 8);
                v11 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
                if (v30)
                {
                  v11 = *v11;
                }

                goto LABEL_11;
              case 5:
                *(v14 + 16) |= 4u;
                *(v14 + 64) = 1;
                if (*(a3 + 23) >= 0)
                {
                  v20 = *(a3 + 23);
                }

                else
                {
                  v20 = a3[1];
                }

                if (byte_27BF3FF >= 0)
                {
                  v21 = byte_27BF3FF;
                }

                else
                {
                  v21 = qword_27BF3F0;
                }

                if (v21 + v20 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_107;
                }

                if (v21 + v20 > 0x16)
                {
                  operator new();
                }

                __p[1] = 0;
                v41 = 0;
                __p[0] = 0;
                HIBYTE(v41) = v21 + v20;
                v8 = v39;
                if (v20)
                {
                  if (*(a3 + 23) >= 0)
                  {
                    v33 = a3;
                  }

                  else
                  {
                    v33 = *a3;
                  }

                  memmove(__p, v33, v20);
                }

                v34 = __p + v20;
                if (v21)
                {
                  if (byte_27BF3FF >= 0)
                  {
                    v35 = &qword_27BF3E8;
                  }

                  else
                  {
                    v35 = qword_27BF3E8;
                  }

                  memmove(v34, v35, v21);
                }

                v34[v21] = 0;
                *(v14 + 16) |= 1u;
                v36 = *(v14 + 8);
                v11 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
                if (v36)
                {
                  v11 = *v11;
                }

LABEL_11:
                sub_194EA30((v14 + 48), __p, v11);
                if (SHIBYTE(v41) < 0)
                {
                  operator delete(__p[0]);
                }

                break;
            }
          }
        }

        v7 += 184;
      }

      while (v7 != v8);
    }
  }
}

void sub_F0D5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F0DA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_F0DAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_F0DAFC(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if ((*(*result + 3) & 1) == 0)
  {
    sub_4AFC4C(v5, result[2]);
    v3[1] = v5;
    v4 = 0;
    sub_120B450(v3);
  }

  return result;
}

void sub_F0DC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_4AE168(&a14);
  _Unwind_Resume(a1);
}

void sub_F0DC60(uint64_t *a1, void *a2, unsigned int a3, void *a4, unsigned int *a5, _DWORD *a6, uint64_t *a7, void *a8)
{
  v10 = a1;
  v54 = a2[138];
  v55 = a2[139];
  v53 = v54 + 2616 * a3;
  sub_F0F2C4(a1, a2, a3, v53, a5, &__p);
  v12 = __p;
  v13 = v64 - __p;
  if (v64 != __p)
  {
    if (v13 == 24)
    {
      v14 = *(__p + 3);
      v15 = sub_4D1DC0(a2) - 1 == v14;
      v58 = v10;
      if (*(v12 + 20) != 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = 0;
      v58 = v10;
      if (*(__p + 20) != 1)
      {
LABEL_22:
        if (v13 == 24)
        {
          goto LABEL_23;
        }

        v33 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        v34 = 1;
        v35 = 24;
        while (1)
        {
          v36 = __p;
          v37 = (__p + v35);
          if (v34 == -1 - 0x5555555555555555 * ((v64 - __p) >> 3))
          {
            v38 = *(v37 + 3);
            v39 = sub_4D1DC0(a2) - 1 == v38;
            if (*(v37 + 20))
            {
              goto LABEL_43;
            }
          }

          else
          {
            v39 = 0;
            if (*(v37 + 20))
            {
LABEL_43:
              if (v36[v35 + 17] == 1 && *(*v10 + 2) == 1)
              {
                v40 = sub_120B590(a7);
                a6[10] |= 0x80000000;
                a6[80] = v40;
              }

              if (v36[v35 + 19] == 1 && *(*v10 + 2) == 1)
              {
                v41 = sub_120B590(a7);
                a6[11] |= 2u;
                a6[82] = v41;
              }

              v42 = &v36[v35];
              if (v36[v35 + 18] == 1)
              {
                v43 = *v10;
                if (*(*v10 + 2) == 1)
                {
                  v44 = sub_120B590(a7);
                  a6[11] |= 1u;
                  a6[81] = v44;
                  v43 = *v10;
                }

                if (*(v43 + 44))
                {
                  v45 = -1431655765 * ((a8[1] - *a8) >> 2);
                  a6[10] |= 0x40000000u;
                  a6[79] = v45;
                }
              }

              v46 = v42[2];
              LODWORD(v11) = *v42;
              v47 = sub_120B378(v11 * 360.0 / 4294967300.0 + -180.0);
              LODWORD(v48) = *&v36[v35 + 4];
              v49 = exp(v48 * -6.28318531 / 4294967300.0 + 3.14159265);
              v50 = atan((v49 + -1.0 / v49) * 0.5);
              v51 = sub_120B220(v50 * 57.2957795);
              sub_456538(v62, v47, v51, v46);
              if ((v36[v35 + 16] | v39))
              {
                v52 = sub_4D1F50(a2, *&v36[v35 + 12]);
                v10 = v58;
                sub_F0F9F4(a4, *(v52 + 32), v62, v61);
              }

              else
              {
                sub_1209BF8(v61, v62);
                v10 = v58;
              }

              sub_120B5A4(a7, v61);
              sub_376F0(a8, v37);
            }
          }

          ++v34;
          v35 += 24;
          if (v33 == v34)
          {
            goto LABEL_23;
          }
        }
      }
    }

    v16 = v12[3];
    if (*(v12 + 17) == 1 && *(*v10 + 2) == 1)
    {
      v17 = sub_120B590(a7);
      a6[10] |= 0x80000000;
      a6[80] = v17;
    }

    if (*(v12 + 19) == 1 && *(*v10 + 2) == 1)
    {
      v18 = sub_120B590(a7);
      a6[11] |= 2u;
      a6[82] = v18;
    }

    if (*(v12 + 18) == 1)
    {
      v19 = *v10;
      if (*(*v10 + 2) == 1)
      {
        v20 = sub_120B590(a7);
        a6[11] |= 1u;
        a6[81] = v20;
        v19 = *v10;
      }

      if (*(v19 + 44))
      {
        v21 = -1431655765 * ((a8[1] - *a8) >> 2);
        a6[10] |= 0x40000000u;
        a6[79] = v21;
      }
    }

    v22 = v12[2];
    LODWORD(v11) = *v12;
    v23 = sub_120B378(v11 * 360.0 / 4294967300.0 + -180.0);
    LODWORD(v24) = v12[1];
    v25 = exp(v24 * -6.28318531 / 4294967300.0 + 3.14159265);
    v26 = atan((v25 + -1.0 / v25) * 0.5);
    v27 = sub_120B220(v26 * 57.2957795);
    sub_456538(v62, v23, v27, v22);
    if (((*(v12 + 16) | v15) & 1) != 0 || !v16)
    {
      v28 = sub_4D1F50(a2, v12[3]);
      v10 = v58;
      sub_F0F9F4(a4, *(v28 + 32), v62, v61);
      sub_120B5A4(a7, v61);
    }

    else
    {
      sub_1209BF8(v61, v62);
      v10 = v58;
      sub_120B5A4(a7, v61);
    }

    sub_376F0(a8, v12);
    goto LABEL_22;
  }

LABEL_23:
  v29 = 0x3795876FF3795877 * ((v55 - v54) >> 3) - 1;
  if (a3 && v29 != a3 && *(v53 + 160) != 16)
  {
    goto LABEL_33;
  }

  if (v29 != a3)
  {
    v30 = sub_120B590(a7);
    v31 = 0xAAAAAAAAAAAAAAABLL * ((a8[1] - *a8) >> 2);
    v32 = *v10;
    if (*(*v10 + 2) != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v30 = sub_120B590(a7) - 1;
  v31 = -1 - 0x5555555555555555 * ((a8[1] - *a8) >> 2);
  v32 = *v10;
  if (*(*v10 + 2) == 1)
  {
LABEL_30:
    a6[11] |= 1u;
    a6[81] = v30;
  }

LABEL_31:
  if (*(v32 + 44))
  {
    a6[10] |= 0x40000000u;
    a6[79] = v31;
  }

LABEL_33:
  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }
}

void sub_F0E2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F0E444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_120D5F0(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_F0E458(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (*(*result + 3) == 1)
  {
    v8 = result;
    v9 = (a2 + 10120);
    v10 = *(v4 + 176);
    if (v10 != *(v4 + 184) && *v10 == 2 && (result[85] & 1) != 0)
    {
      v11 = 5;
    }

    else
    {
      v11 = 1;
    }

    if (*(a2 + 12648))
    {
      v12 = v11 | 8;
    }

    else
    {
      v12 = v11;
    }

    sub_47AE70((result + 88), a2, v12, v28);
    *(a3 + 40) |= 0x100000u;
    v13 = *(a3 + 864);
    if (!v13)
    {
      v14 = *(a3 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_14BF760(v15);
      *(a3 + 864) = v13;
    }

    v16 = sub_4D27A4(a2);
    v17 = *v16;
    v18 = v16[1];
    while (1)
    {
      if (v17 == v18)
      {
        v26 = *v9;
        v27 = (v8[48] & 1) != 0 && sub_4D1DB8(a2) <= *(v8 + 7);
        sub_F10304(v8, v28, v26, v27, a4);
      }

      v20 = *(v13 + 32);
      if (v20 && (v21 = *(v13 + 24), v21 < *v20))
      {
        *(v13 + 24) = v21 + 1;
        v22 = *&v20[2 * v21 + 2];
        *(v22 + 16) |= 1u;
        v19 = *(v22 + 24);
        if (v19)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v23 = sub_14BF6E8(*(v13 + 16));
        v22 = sub_19593CC(v13 + 16, v23);
        *(v22 + 16) |= 1u;
        v19 = *(v22 + 24);
        if (v19)
        {
          goto LABEL_16;
        }
      }

      v24 = *(v22 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v19 = sub_14BF670(v25);
      *(v22 + 24) = v19;
LABEL_16:
      v19[2].i32[0] |= 3u;
      v19[3] = vmovn_s64(v17[1]);
      v17 += 4;
    }
  }

  return result;
}

void sub_F0E84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1218EBC(v39 - 144);
    _Unwind_Resume(a1);
  }

  sub_1218EBC(v39 - 144);
  _Unwind_Resume(a1);
}

void sub_F0E8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 80) != 1)
  {
    return;
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  if (!sub_69AF18(a2))
  {
    goto LABEL_31;
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v6 = sub_3B1D8C(*(a1 + 8));
  v7 = sub_4D2130(a2);
  sub_2AD1B4(v6, *(v7 + 104), *(v7 + 112), v41);
  v8 = v54;
  if (v54 >= v55)
  {
    v11 = v53;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 2);
    v13 = v12 + 1;
    if (v12 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    if (0x5555555555555556 * ((v55 - v53) >> 2) > v13)
    {
      v13 = 0x5555555555555556 * ((v55 - v53) >> 2);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v55 - v53) >> 2) >= 0xAAAAAAAAAAAAAAALL)
    {
      v14 = 0x1555555555555555;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 4 * ((v54 - v53) >> 2);
    *v15 = v48;
    *(v15 + 8) = v49;
    v10 = 12 * v12 + 12;
    v16 = 12 * v12 - (v8 - v11);
    memcpy((v15 - (v8 - v11)), v11, v8 - v11);
    v53 = v16;
    v54 = v10;
    v55 = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    v9 = v48;
    *(v54 + 2) = v49;
    *v8 = v9;
    v10 = (v8 + 12);
  }

  v54 = v10;
  v40 = 17;
  strcpy(__p, "Charging Stations");
  sub_EAC188(&v56, &v53, __p, 0xFFFFFFFF, 0, 0, 0.0);
  if (v40 < 0)
  {
    operator delete(*__p);
  }

  sub_99F0C(&v52);
  v17 = v50;
  if (v50)
  {
    v18 = v51;
    v19 = v50;
    if (v51 != v50)
    {
      do
      {
        v20 = *(v18 - 1);
        v18 -= 3;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v17);
      v19 = v50;
    }

    v51 = v17;
    operator delete(v19);
  }

  if ((v47 & 0x80000000) == 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_71:
    operator delete(v44);
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
LABEL_29:
      v21 = v53;
      if (!v53)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_72;
  }

  operator delete(v46);
  if (v45 < 0)
  {
    goto LABEL_71;
  }

LABEL_28:
  if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_72:
  operator delete(v41[0]);
  v21 = v53;
  if (v53)
  {
LABEL_30:
    v54 = v21;
    operator delete(v21);
  }

LABEL_31:
  v22 = *(a2 + 7416);
  v37 = a3;
  for (i = *(a2 + 7424); v22 != i; v22 += 1120)
  {
    if (sub_659540(v22))
    {
      v23 = *(v22 + 1080);
      v24 = *(v22 + 1088);
      if (v23 != v24)
      {
        v25 = v23 + 22;
        do
        {
          if (*(v25 + 23) >= 0)
          {
            v27 = *(v25 + 23);
          }

          else
          {
            v27 = v25[1];
          }

          if (v27 + 20 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v27 + 20 >= 0x17)
          {
            operator new();
          }

          v43 = 0;
          HIBYTE(v43) = v27 + 20;
          v42 = 540696933;
          *v41 = *"Area incident area: ";
          if (v27)
          {
            if (*(v25 + 23) >= 0)
            {
              v28 = v25;
            }

            else
            {
              v28 = *v25;
            }

            memmove(&v43, v28, v27);
          }

          *(&v43 + v27) = 0;
          sub_EAC330(&v56, v25 - 22, v41, 0xFFFFFFFF, 0, 0, 0.0);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(v41[0]);
          }

          v26 = v25 + 9;
          v25 += 31;
        }

        while (v26 != v24);
      }
    }
  }

  sub_EAC680(&v56, v41);
  v30 = v41[0];
  v29 = v41[1];
  if (v41[0] != v41[1])
  {
    do
    {
      v31 = sub_1950FFC((v37 + 16), dword_278D070, 11, &off_2769C00, 0);
      sub_12CC584(v31, v30);
      v30 += 48;
    }

    while (v30 != v29);
    v30 = v41[0];
  }

  if (v30)
  {
    v32 = v41[1];
    v33 = v30;
    if (v41[1] != v30)
    {
      do
      {
        v32 = sub_12CBDFC((v32 - 48));
      }

      while (v32 != v30);
      v33 = v41[0];
    }

    v41[1] = v30;
    operator delete(v33);
  }

  v34 = v56;
  if (v56)
  {
    v35 = v57;
    v36 = v56;
    if (v57 == v56)
    {
LABEL_68:
      v57 = v34;
      operator delete(v36);
      return;
    }

    while (1)
    {
      if (*(v35 - 25) < 0)
      {
        operator delete(*(v35 - 6));
        if ((*(v35 - 49) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_66:
        operator delete(*(v35 - 9));
        v35 -= 10;
        if (v35 == v34)
        {
LABEL_67:
          v36 = v56;
          goto LABEL_68;
        }
      }

      else
      {
        if (*(v35 - 49) < 0)
        {
          goto LABEL_66;
        }

LABEL_63:
        v35 -= 10;
        if (v35 == v34)
        {
          goto LABEL_67;
        }
      }
    }
  }
}

void sub_F0EDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_2AE47C(&a18);
  v25 = *(v23 - 136);
  if (v25)
  {
    *(v23 - 128) = v25;
    operator delete(v25);
    sub_D37F50((v23 - 112));
    _Unwind_Resume(a1);
  }

  sub_D37F50((v23 - 112));
  _Unwind_Resume(a1);
}

void sub_F0EEDC(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 81) == 1)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v5 = a2[1550];
    v6 = a2[1551];
    while (v5 != v6)
    {
      if (sub_685BF4(v5[10]))
      {
        sub_686328(*v5, &__p);
        sub_EAC188(&v32, v5 + 1, &__p, 0xFFFFFFFF, *v5, v5[10], *(v5 + 4));
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p);
        }
      }

      v5 += 12;
    }

    sub_EAC850(&v32, &__p);
    v8 = *(&__p + 1);
    v7 = __p;
    if (__p != *(&__p + 1))
    {
      do
      {
        v9 = sub_1950FFC((a3 + 16), dword_278D080, 11, &off_2769C30, 0);
        sub_12CD324(v9, v7);
        v7 += 72;
      }

      while (v7 != v8);
      v7 = __p;
    }

    if (v7)
    {
      v10 = *(&__p + 1);
      v11 = v7;
      if (*(&__p + 1) != v7)
      {
        do
        {
          v10 = sub_12CC74C(v10 - 72);
        }

        while (v10 != v7);
        v11 = __p;
      }

      *(&__p + 1) = v7;
      operator delete(v11);
    }

    __p = 0uLL;
    v31 = 0;
    v12 = a2[1555];
    if (!v12)
    {
LABEL_17:
      sub_EAC850(&__p, &v27);
      v13 = v27;
      v14 = v28;
      if (v27 != v28)
      {
        do
        {
          v15 = sub_1950FFC((a3 + 16), dword_278D090, 11, &off_2769C30, 0);
          sub_12CD324(v15, v13);
          v13 += 72;
        }

        while (v13 != v14);
        v13 = v27;
      }

      if (v13)
      {
        v16 = v28;
        v17 = v13;
        if (v28 != v13)
        {
          do
          {
            v16 = sub_12CC74C(v16 - 72);
          }

          while (v16 != v13);
          v17 = v27;
        }

        v28 = v13;
        operator delete(v17);
      }

      v18 = __p;
      if (!__p)
      {
LABEL_42:
        v22 = v32;
        if (!v32)
        {
          return;
        }

        v23 = v33;
        v24 = v32;
        if (v33 == v32)
        {
LABEL_52:
          v33 = v22;
          operator delete(v24);
          return;
        }

        while (1)
        {
          if (*(v23 - 25) < 0)
          {
            operator delete(*(v23 - 6));
            if (*(v23 - 49) < 0)
            {
LABEL_50:
              operator delete(*(v23 - 9));
            }
          }

          else if (*(v23 - 49) < 0)
          {
            goto LABEL_50;
          }

          v23 -= 10;
          if (v23 == v22)
          {
            v24 = v32;
            goto LABEL_52;
          }
        }
      }

      v19 = *(&__p + 1);
      v20 = __p;
      if (*(&__p + 1) == __p)
      {
LABEL_41:
        *(&__p + 1) = v18;
        operator delete(v20);
        goto LABEL_42;
      }

      while (1)
      {
        if (*(v19 - 25) < 0)
        {
          operator delete(*(v19 - 48));
          if (*(v19 - 49) < 0)
          {
LABEL_39:
            operator delete(*(v19 - 72));
          }
        }

        else if (*(v19 - 49) < 0)
        {
          goto LABEL_39;
        }

        v19 -= 80;
        if (v19 == v18)
        {
          v20 = __p;
          goto LABEL_41;
        }
      }
    }

    while (1)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      sub_686328(*(v12 + 4), v25);
      sub_EAC188(&v32, &v27, v25, 0xFFFFFFFF, *(v12 + 4), *(v12 + 16), *(v12 + 7));
      if ((v26 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v25[0]);
      v21 = v27;
      if (v27)
      {
        goto LABEL_33;
      }

LABEL_28:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v21 = v27;
    if (!v27)
    {
      goto LABEL_28;
    }

LABEL_33:
    v28 = v21;
    operator delete(v21);
    goto LABEL_28;
  }
}

void sub_F0F1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24)
{
  sub_D37F50(&__p);
  sub_D37F50(&a24);
  _Unwind_Resume(a1);
}

void sub_F0F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_EAD110(va);
  JUMPOUT(0xF0F2B4);
}

void sub_F0F2C4(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, unsigned int *a5@<X4>, void **a6@<X8>)
{
  v7 = a6;
  v80 = 0;
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  if (a3)
  {
    v8 = a5;
    v9 = *a5;
    if (a4[13] >= v9)
    {
      v73 = 0;
      do
      {
        if (sub_4D1DC0(a2) <= v9)
        {
          break;
        }

        v80 = 0;
        sub_F0FB50(a2, a3, *v8, &v80 + 1, &v80, &__p);
        v10 = __p;
        if (v79 == __p)
        {
          goto LABEL_74;
        }

        v11 = 0;
        v74 = 0xAAAAAAAAAAAAAAABLL * ((v79 - __p) >> 2);
        do
        {
          v14 = *v8;
          v16 = a4[10] == v14 && v11 == HIDWORD(v80);
          v75 = v16;
          if (v11)
          {
            v17 = 0;
          }

          else
          {
            v17 = a4[7] == v14;
          }

          v18 = v17;
          v77 = v18;
          if (v11)
          {
            v19 = 0;
            goto LABEL_55;
          }

          v20 = sub_4D1F50(a2, v14);
          v21 = v20;
          v22 = *v20;
          v23 = (*v20 - **v20);
          if ((*(v20 + 39) & 0x20) == 0)
          {
            if (v23[3])
            {
              v24 = __ROR8__(*&v22[v23[3]], 32);
              v25 = HIDWORD(v24);
            }

            else
            {
              v27 = *(v20 + 8);
              v28 = *&v22[v23[60]];
              v29 = sub_57A90(v27);
              v30 = v27 & ~(-1 << (v29 & 0xFE));
              v31 = sub_581D8(v30);
              v32 = sub_581D8(v30 >> 1);
              v33 = 1 << (v29 >> 1);
              v34 = v31 + v28;
              v35 = v32 + (v28 >> 8);
              v36 = ((((((v34 & ~(v34 >> 31)) - v34 + (v34 >> 31)) >> (v29 >> 1)) + (v34 >> 31)) << (v29 >> 1)) + v34) % v33;
              v37 = ((((((v35 & ~(v35 >> 31)) - v35 + (v35 >> 31)) >> (v29 >> 1)) + (v35 >> 31)) << (v29 >> 1)) + v35) % v33;
              v38 = -1 << (v29 >> 1);
              if (~v38 < v36)
              {
                v39 = ~v38;
              }

              else
              {
                v39 = v36;
              }

              if (~v38 < v37)
              {
                v40 = ~v38;
              }

              else
              {
                v40 = v37;
              }

              sub_58168(v39, v40);
              v24 = HIWORD(v28);
              LODWORD(v25) = v41 | (1 << (v29 & 0xFE));
            }

            goto LABEL_42;
          }

          v26 = *v23;
          if (v26 < 5)
          {
            goto LABEL_40;
          }

          if (!v23[2])
          {
            if (v26 >= 0x77 && (v42 = v23[59]) != 0)
            {
              v24 = *&v22[v42];
            }

            else
            {
LABEL_40:
              v24 = 0;
            }

            LODWORD(v25) = *(v20 + 8);
            goto LABEL_42;
          }

          v24 = __ROR8__(*&v22[v23[2]], 32);
          v25 = HIDWORD(v24);
LABEL_42:
          v43 = *(a1 + 16);
          sub_2B365C(v43, v25 | (v24 << 32), 0, (v43 + 7800));
          v44 = *(v43 + 7808);
          v45 = *(v43 + 7800);
          if (v44 != v45)
          {
            if (((v44 - v45) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v46 = *v21;
          v47 = &(*v21)[-**v21];
          v48 = *v47;
          if (v48 < 9)
          {
            v49 = 0;
            v7 = a6;
            v50 = v73;
          }

          else
          {
            v49 = *(v47 + 4);
            v7 = a6;
            v50 = v73;
            if (*(v47 + 4))
            {
              v49 = *&v46[v49];
            }
          }

          if (v49 + v50 <= 1600000)
          {
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          v8 = a5;
          v19 = v77 | 1;
          if (v48 <= 8)
          {
            v73 = v51;
          }

          else
          {
            v73 = *&v46[*(v47 + 4)] + v51;
          }

LABEL_55:
          v52 = v19 & 1;
          v53 = *v8;
          v55 = v11 == v80 && a4[13] == v53;
          v56 = __p + 12 * v11;
          v57 = v7[1];
          v58 = v7[2];
          if (v57 < v58)
          {
            v12 = *(v56 + 2);
            *v57 = *v56;
            v57[2] = v12;
            v57[3] = v53;
            *(v57 + 16) = v52;
            *(v57 + 17) = v75;
            *(v57 + 18) = v55;
            *(v57 + 19) = v77;
            *(v57 + 20) = 0;
            v13 = v57 + 6;
          }

          else
          {
            v59 = *v7;
            v60 = v57 - *v7;
            v61 = 0xAAAAAAAAAAAAAAABLL * (v60 >> 3) + 1;
            if (v61 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v62 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v59) >> 3);
            if (2 * v62 > v61)
            {
              v61 = 2 * v62;
            }

            if (v62 >= 0x555555555555555)
            {
              v63 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v63 = v61;
            }

            if (v63)
            {
              if (v63 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v64 = 8 * (v60 >> 3);
            v65 = *(v56 + 2);
            *v64 = *v56;
            *(v64 + 8) = v65;
            *(v64 + 12) = v53;
            *(v64 + 16) = v52;
            *(v64 + 17) = v75;
            *(v64 + 18) = v55;
            *(v64 + 19) = v77;
            *(v64 + 20) = 0;
            v13 = (v64 + 24);
            v66 = (v64 - v60);
            memcpy((v64 - v60), v59, v60);
            *v7 = v66;
            v7[1] = v13;
            v7[2] = 0;
            if (v59)
            {
              operator delete(v59);
            }
          }

          v7[1] = v13;
          ++v11;
        }

        while (v11 != v74);
        v10 = __p;
LABEL_74:
        v67 = *v8 + 1;
        *v8 = v67;
        if (v10)
        {
          v79 = v10;
          operator delete(v10);
          v67 = *v8;
        }

        v9 = v67;
      }

      while (a4[13] >= v67);
    }
  }

  sub_F0FEDC(*(a1 + 32), a1, v7, *(*a1 + 160) > 3u);
}

void sub_F0F950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  v22 = *v20;
  if (!*v20)
  {
    _Unwind_Resume(exception_object);
  }

  *(v20 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void sub_F0F9F4(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  sub_120ADE8(v10);
  sub_B6D0(&v12, 0);
  sub_B6D0(&v13, 9);
  v14 = -1;
  (*(**a1 + 8))(*a1, a2, v10);
  v8 = sub_120B1B4(v10, a3);
  sub_1209BA0(a4, a3, v8);
  sub_1209C84(a4, v12);
  sub_1209C8C(a4, v13);
  v9 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_F0FB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_F0FB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_F0FB50(void *a1@<X1>, unsigned int a2@<W2>, unsigned int a3@<W3>, _DWORD *a4@<X4>, unsigned int *a5@<X5>, void *a6@<X8>)
{
  v12 = a3;
  sub_69E8D8(a1);
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  v14 = v13[1];
  if (v14 != *v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_4D1DC0(a1) - 1 == v12)
  {
    v15 = 0.0;
    if (!a3)
    {
      v15 = (1000000000 - sub_4D2138(a1));
    }

    v16 = sub_4D2140(a1);
    sub_2F4C8(__p, 0, a6, v15 / 1000000000.0, v16 / 1000000000.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return;
  }

  if (a3)
  {
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = sub_4D2138(a1);
    sub_2F4C8(__p, 0, &v33, (1000000000 - v24) / 1000000000.0, 1.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v33;
    v36 = v34;
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
LABEL_11:
      if (v17[13] == v12)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  v25 = v17[11];
  v26 = v25 / 100;
  v27 = v25 % 100;
  if (v25 < 0)
  {
    v28 = -50;
  }

  else
  {
    v28 = 50;
  }

  *a4 = sub_4DE8CC(__p, (v26 + (((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31))), 0.1);
  if (v17[13] == v12)
  {
LABEL_12:
    v18 = v17[14];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL || ((v19 = v18 / 100, v20 = v18 % 100, v18 < 0) ? (v21 = -50) : (v21 = 50), v22 = v19 + (((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31)), v22 < 1))
    {
      v23 = 0;
      *a5 = 0;
    }

    else
    {
      v23 = sub_4DE8CC(__p, v22, 0.1);
      *a5 = v23;
    }

    goto LABEL_27;
  }

LABEL_25:
  v23 = *a5;
LABEL_27:
  v29 = __p[1];
  v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2) - 1;
  v31 = v30 > v23 && v30 > *a4;
  v32 = -12;
  if (!v31)
  {
    v32 = 0;
  }

  *a6 = __p[0];
  a6[1] = &v29[v32];
  a6[2] = v36;
}

void sub_F0FEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F0FEDC(double a1, uint64_t a2, void *a3, unsigned int a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = a3[1] - *a3;
  if (!v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v27 = a4;
  v28 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  do
  {
    while ((*(sub_ED0948(a3, v8) + 16) & 1) != 0 || (*(sub_ED0948(a3, v8) + 17) & 1) != 0 || (*(sub_ED0948(a3, v8) + 18) & 1) != 0 || v8 == 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) - 1)
    {
      v35 = v34;
      v30 = v8 + 1;
      v9 = v8 + 1 - v7;
      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) < v9)
      {
        if (v9 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v29 = v8;
      if (v7 <= v30)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v7;
      if (v30 > v7)
      {
        do
        {
          while (1)
          {
            v13 = sub_ED0948(a3, v11);
            v14 = v35;
            if (v35 >= v36)
            {
              break;
            }

            v12 = *v13;
            *(v35 + 2) = *(v13 + 8);
            *v14 = v12;
            v35 = v14 + 12;
            if (v10 == ++v11)
            {
              goto LABEL_29;
            }
          }

          v15 = v34;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 2);
          v17 = v16 + 1;
          if (v16 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 2) > v17)
          {
            v17 = 0x5555555555555556 * ((v36 - v34) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v18 = 0x1555555555555555;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (v18 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v19 = 4 * ((v35 - v34) >> 2);
          v20 = *v13;
          *(v19 + 8) = *(v13 + 8);
          *v19 = v20;
          v21 = 12 * v16 + 12;
          v22 = (12 * v16 - (v14 - v15));
          memcpy((v19 - (v14 - v15)), v15, v14 - v15);
          v34 = v22;
          v35 = v21;
          v36 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v35 = v21;
          ++v11;
        }

        while (v10 != v11);
      }

LABEL_29:
      memset(__p, 0, sizeof(__p));
      sub_41DB4(&v34, v27, 0, 1, __p, &v32, a1);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v23 = v33;
      if (v33)
      {
        v24 = 0;
        do
        {
          v25 = sub_ED0948(a3, v7);
          v26 = v32;
          *(v25 + 20) = (*(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1;
          ++v24;
          ++v7;
        }

        while (v23 != v24);
LABEL_36:
        operator delete(v26);
        goto LABEL_37;
      }

      v26 = v32;
      if (v32)
      {
        goto LABEL_36;
      }

LABEL_37:
      v7 = v29;
      v8 = v30;
      if (v30 == v28)
      {
        goto LABEL_40;
      }
    }

    ++v8;
  }

  while (v8 != v28);
LABEL_40:
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_F10280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_F10304(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v6 = 32;
  if (a3)
  {
    v6 = 40;
  }

  v7 = 64;
  if (a3)
  {
    v7 = 72;
  }

  if (a4 && *(a1 + v7) != *(a1 + v6))
  {
    v48 = 0uLL;
    v49 = 0;
    v8 = *(a2 + 32);
    if (v8)
    {
      sub_38004(&v48, v8);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      if (*(&v48 + 1) != v48)
      {
        if (((*(&v48 + 1) - v48) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    if (*(&v48 + 1) != v48)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(&v48 + 1) - v48) >> 2);
      do
      {
        v14 = *(*(a2 + 40) + (v9 >> 29) + 8);
        if (*(v14 + 84) == 1)
        {
          *(v23 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        }

        v15 = *(v14 + 32);
        if (!v15)
        {
          v15 = &off_2734B00;
        }

        v16 = *(v14 + 56);
        v17 = *(v15 + 7) / 10000000.0;
        v18 = -1;
        if (v17 <= 180.0)
        {
          v19 = *(v15 + 6) / 10000000.0;
          if (fabs(v19) <= 85.0511288 && v17 >= -180.0)
          {
            v20 = sin(fmin(fmax(v19, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v21) = ((log((v20 + 1.0) / (1.0 - v20)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v21 >= 0xFFFFFFFE)
            {
              v21 = 4294967294;
            }

            else
            {
              v21 = v21;
            }

            v18 = ((v17 + 180.0) / 360.0 * 4294967300.0) | (v21 << 32);
          }
        }

        v13 = v48 + v10;
        *v13 = v18;
        *(v13 + 8) = v16;
        ++v11;
        v10 += 12;
        v9 += 0x100000000;
      }

      while (v12 != v11);
    }

    sub_40C4C(&v48, &v22);
  }

  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v36 = 0u;
  v35 = 0u;
  v31 = 0x1312D0000000000;
  v30 = 0;
  v26 = 0x4039000000000000;
  v27 = 5000;
  v28 = xmmword_2297CF0;
  v29 = xmmword_2297D00;
  v32 = 0x3FF199999999999ALL;
  v34 = 0xA00002710;
  DWORD2(v35) = 2;
  *&v36 = 0x4049000000000000;
  HIDWORD(v36) = 2000;
  v37 = 0x3FF0000000000000;
  v47 = 0;
  v33 = 0x3E800002710;
  *&v35 = 0x3200000064;
  v38 = 0xBB800000258;
  v39 = xmmword_22AE600;
  *&v43 = 0x3FD999999999999ALL;
  v42 = unk_22AE630;
  v41 = xmmword_22AE620;
  v40 = unk_22AE610;
  operator new();
}

void sub_F10AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46)
{
  v48 = *(v46 - 176);
  if (v48)
  {
    *(v46 - 168) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(exception_object);
}

void sub_F111DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F11230(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (v8 >= v10 || a4 >= v11)
        {
          if (v8 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, v8);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, v8);
        v14 = sub_2B51D8(*(*a5 + 16), *(v13 + 32) | (*(v13 + 36) << 32));
        v15 = (v14 - *v14);
        if (*v15 >= 0x9Bu)
        {
          v16 = v15[77];
          if (v16)
          {
            if ((*(v14 + v16 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        ++v8;
      }
    }

    else
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 0;
      }

      while (1)
      {
        v17 = sub_4D1F50(a1, v8);
        v18 = sub_2B51D8(*(*a5 + 16), *(v17 + 32) | (*(v17 + 36) << 32));
        v19 = (v18 - *v18);
        if (*v19 >= 0x9Bu)
        {
          v20 = v19[77];
          if (v20)
          {
            if ((*(v18 + v20 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        if (++v8 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (!a3 || a4 >= sub_4D1DC0(a3))
    {
      return 0;
    }

    while (1)
    {
      v22 = sub_4D1F50(0, v8);
      v23 = sub_2B51D8(*(*a5 + 16), *(v22 + 32) | (*(v22 + 36) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 0x9Bu)
      {
        v25 = v24[77];
        if (v25)
        {
          if ((*(v23 + v25 + 3) & 2) != 0)
          {
            break;
          }
        }
      }

      ++v8;
      if (a4 >= sub_4D1DC0(a3))
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_F11444(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (v8 >= v10 || a4 >= v11)
        {
          if (v8 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, v8);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, v8);
        v14 = sub_2B51D8(*(*a5 + 16), *(v13 + 32) | ((*(v13 + 36) & 0x1FFFFFFF) << 32));
        v15 = (v14 - *v14);
        if (*v15 >= 0x9Bu)
        {
          v16 = v15[77];
          if (v16)
          {
            if ((*(v14 + v16 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        ++v8;
      }
    }

    else
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 0;
      }

      while (1)
      {
        v17 = sub_4D1F50(a1, v8);
        v18 = sub_2B51D8(*(*a5 + 16), *(v17 + 32) | ((*(v17 + 36) & 0x1FFFFFFF) << 32));
        v19 = (v18 - *v18);
        if (*v19 >= 0x9Bu)
        {
          v20 = v19[77];
          if (v20)
          {
            if ((*(v18 + v20 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        if (++v8 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (!a3 || a4 >= sub_4D1DC0(a3))
    {
      return 0;
    }

    while (1)
    {
      v22 = sub_4D1F50(0, v8);
      v23 = sub_2B51D8(*(*a5 + 16), *(v22 + 32) | ((*(v22 + 36) & 0x1FFFFFFF) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 0x9Bu)
      {
        v25 = v24[77];
        if (v25)
        {
          if ((*(v23 + v25 + 3) & 2) != 0)
          {
            break;
          }
        }
      }

      ++v8;
      if (a4 >= sub_4D1DC0(a3))
      {
        return 0;
      }
    }
  }

  return 1;
}

void sub_F11658()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  LODWORD(v2) = 0;
  HIBYTE(v4[0]) = 14;
  strcpy(v3, "ROUTES_THROUGH");
  LODWORD(v4[1]) = 1;
  v6 = 9;
  strcpy(v5, "ROUTES_TO");
  LODWORD(v7) = 3;
  v9 = 11;
  strcpy(__p, "ROUTES_FROM");
  LODWORD(v10) = 2;
  xmmword_27BF400 = 0u;
  *algn_27BF410 = 0u;
  dword_27BF420 = 1065353216;
  sub_3A9A34(&xmmword_27BF400, v0, v0);
  sub_3A9A34(&xmmword_27BF400, v3, v3);
  sub_3A9A34(&xmmword_27BF400, v5, v5);
  sub_3A9A34(&xmmword_27BF400, __p, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v5[0]);
  if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BE370 = 0;
    qword_27BE378 = 0;
    qword_27BE368 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_F14904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
    if ((SLOBYTE(STACK[0x39F]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((SLOBYTE(STACK[0x39F]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x388]);
  if ((SLOBYTE(STACK[0x387]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x36F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(STACK[0x370]);
  if ((SLOBYTE(STACK[0x36F]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SLOBYTE(STACK[0x357]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x358]);
  if ((SLOBYTE(STACK[0x357]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SLOBYTE(STACK[0x33F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(STACK[0x340]);
  if ((SLOBYTE(STACK[0x33F]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((SLOBYTE(STACK[0x327]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x328]);
  if ((SLOBYTE(STACK[0x327]) & 0x80000000) == 0)
  {
LABEL_8:
    if ((SLOBYTE(STACK[0x30F]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(STACK[0x310]);
  if ((SLOBYTE(STACK[0x30F]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SLOBYTE(STACK[0x2F7]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(STACK[0x2F8]);
  if ((SLOBYTE(STACK[0x2F7]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SLOBYTE(STACK[0x2DF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(STACK[0x2E0]);
  if ((SLOBYTE(STACK[0x2DF]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SLOBYTE(STACK[0x2C7]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(STACK[0x2C8]);
  if ((SLOBYTE(STACK[0x2C7]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SLOBYTE(STACK[0x2AF]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(STACK[0x2B0]);
  if ((SLOBYTE(STACK[0x2AF]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(STACK[0x298]);
  if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(STACK[0x280]);
  if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SLOBYTE(STACK[0x267]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(STACK[0x268]);
  if ((SLOBYTE(STACK[0x267]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SLOBYTE(STACK[0x24F]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(STACK[0x250]);
  if ((SLOBYTE(STACK[0x24F]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(STACK[0x238]);
  if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(STACK[0x220]);
  if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(STACK[0x208]);
  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_20:
    if ((a68 & 0x80000000) == 0)
    {
LABEL_42:
      if (a66 < 0)
      {
        operator delete(a65);
      }

      _Unwind_Resume(a1);
    }

LABEL_41:
    operator delete(a67);
    goto LABEL_42;
  }

LABEL_40:
  operator delete(a69);
  if ((a68 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

void sub_F14B9C(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  HIBYTE(v5[2]) = 20;
  strcpy(v5, "PlaceResponseBuilder");
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  sub_F14CBC((a1 + 1), v3);
}

void sub_F14C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_F14DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F14DF0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_18FD3D0(a3, 0, 0);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = *(a3 + 64);
      if (v8 && (v9 = *(a3 + 56), v9 < *v8))
      {
        *(a3 + 56) = v9 + 1;
        v10 = *&v8[2 * v9 + 2];
      }

      else
      {
        v11 = sub_18648BC(*(a3 + 48));
        v10 = sub_19593CC(a3 + 48, v11);
      }

      _X8 = v6 + 4960;
      __asm { PRFM            #0, [X8] }

      v18 = sub_EC7E5C(*v6);
      v19 = *(v10 + 40);
      *(v10 + 128) = v18;
      *(v10 + 40) = v19 | 0x11;
      v20 = *(v10 + 96);
      if (!v20)
      {
        v21 = *(v10 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v20 = sub_191BA60(v22);
        *(v10 + 96) = v20;
      }

      _X8 = v6 + 7432;
      __asm { PRFM            #0, [X8] }

      v25 = *(v6 + 2472);
      v42 = -1;
      v43 = 0x7FFFFFFF;
      sub_F24200(v25, &v42, v20, NAN);
      v26 = *(v6 + 2472);
      if (v26 != -1)
      {
        nullsub_1();
        *(v10 + 40) |= 4u;
        *(v10 + 112) = v26;
      }

      if (!*v6)
      {
        sub_F150A4(v26, a2, v6, v10);
        sub_F15284(v27, a2, v6, v10);
        sub_F155F8(v28, a2, v6, v10);
        sub_F1583C(a1, a2, v6, v10);
        sub_F15AA8(v29, a2, v6, v10, v30);
        sub_F16180(v32, v31, a2, v6, v10);
        sub_F16548(v33, a2, v6, v10);
        sub_F16E14(v35, v34, a2, v6, v10);
        sub_F170C8(a1, a2, v6, v10);
        sub_F174D0(a1, a2, v6, v10);
        sub_F1770C(a1, a2, v6, v10, v36);
        sub_F178DC(v37, a2, v6, v10);
        sub_F17BCC(a1, a2, v6, v10);
        sub_F18370(v38, a2, v6, v10);
        sub_F187F8(v39, a2, v6, v10);
        sub_F18B20(a1, a2, v6, v10);
      }

      v6 += 2480;
    }

    while (v6 != v7);
  }

  v40 = *(a3 + 40);
  *(a3 + 40) = v40 | 0x20;
  *(a3 + 208) = 0;
  v41 = *(a2 + 6);
  if (v41)
  {
    *(a3 + 40) = v40 | 0x60;
    *(a3 + 212) = v41;
  }
}

void sub_F150A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 30) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 56);
    v11 = *(v7 + 40);
    *(v7 + 160) = v10;
    v12 = v11 | 0x84;
    *(v7 + 40) = v11 | 0x84;
    *(v7 + 136) = 24;
    v13 = *(a3 + 1488);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 / 10;
      v15 = v13 % 10;
      if (v13 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
      v12 = v11 | 0xA4;
      *(v7 + 152) = v17;
    }

    *(v7 + 168) = *(a3 + 1492);
    v18 = v12 | 0x208;
    *(v7 + 40) = v12 | 0x208;
    *(v7 + 140) = 0;
    if (*(a3 + 1496) != *(a3 + 1504))
    {
      v19 = *(v7 + 64);
      if (v19 && v10 < *v19)
      {
        v20 = &v19[2 * v10];
        v21 = v10 + 1;
        *(v7 + 56) = v21;
        v22 = *(v20 + 1);
      }

      else
      {
        v23 = sub_1862A04(*(v7 + 48));
        v22 = sub_19593CC(v7 + 48, v23);
        v21 = *(v7 + 56);
        v18 = *(v7 + 40);
      }

      *(v7 + 40) = v18 | 0x80;
      *(v7 + 160) = v21;
      *(v22 + 40) |= 0x100000u;
      v24 = *(v22 + 224);
      if (!v24)
      {
        v25 = *(v22 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_185EC18(v26);
        *(v22 + 224) = v24;
      }

      v27 = *(a3 + 1496);
      for (i = *(a3 + 1504); v27 != i; v27 += 3)
      {
        sub_64CFD8(v24, v27);
      }
    }
  }
}

void sub_F15284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 39) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 40);
    *(v7 + 160) = *(v7 + 56);
    v11 = v10 | 0x84;
    *(v7 + 40) = v10 | 0x84;
    *(v7 + 136) = 4;
    v12 = *(a3 + 16);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = v12 / 10;
      v14 = v12 % 10;
      if (v12 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
      v11 = v10 | 0xA4;
      *(v7 + 152) = v16;
    }

    *(v7 + 168) = *(a3 + 20);
    *(v7 + 40) = v11 | 0x208;
    *(v7 + 140) = 0;
    if ((**(a3 + 8))(a3 + 8))
    {
      v17 = *(v7 + 64);
      if (v17 && (v18 = *(v7 + 56), v18 < *v17))
      {
        v19 = &v17[2 * v18];
        v20 = v18 + 1;
        *(v7 + 56) = v18 + 1;
        v21 = *(v19 + 1);
      }

      else
      {
        v22 = sub_1862A04(*(v7 + 48));
        v21 = sub_19593CC(v7 + 48, v22);
        v20 = *(v7 + 56);
      }

      *(v7 + 40) |= 0x80u;
      *(v7 + 160) = v20;
      *(v21 + 40) |= 8u;
      v23 = *(v21 + 88);
      if (v23)
      {
        *(v23 + 40) |= 2u;
        v24 = *(v23 + 56);
        if (v24)
        {
LABEL_25:
          v30 = sub_32DA0(a3 + 24);
          *(v24 + 16) |= 0x10u;
          *(v24 + 80) = v30 * 360.0 / 4294967300.0 + -180.0;
          v31 = sub_32DA0(a3 + 24);
          v32 = exp(3.14159265 - HIDWORD(v31) * 6.28318531 / 4294967300.0);
          v33 = atan((v32 - 1.0 / v32) * 0.5);
          *(v24 + 16) |= 8u;
          *(v24 + 72) = v33 * 57.2957795;
          v34 = sub_32DBC((a3 + 24));
          v35 = exp(3.14159265 - HIDWORD(v34) * 6.28318531 / 4294967300.0);
          v36 = atan((v35 - 1.0 / v35) * 0.5);
          *(v24 + 16) |= 2u;
          *(v24 + 56) = v36 * 57.2957795;
          v37 = sub_32DBC((a3 + 24));
          *(v24 + 16) |= 4u;
          *(v24 + 64) = v37 * 360.0 / 4294967300.0 + -180.0;
          return;
        }
      }

      else
      {
        v25 = *(v21 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v23 = sub_185DAF4(v26);
        *(v21 + 88) = v23;
        *(v23 + 40) |= 2u;
        v24 = *(v23 + 56);
        if (v24)
        {
          goto LABEL_25;
        }
      }

      v27 = *(v23 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_16F58FC(v28);
      v24 = v29;
      *(v23 + 56) = v29;
      goto LABEL_25;
    }
  }
}

void sub_F155F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 40) != 1)
  {
    return;
  }

  v5 = *(a4 + 64);
  if (v5 && (v6 = *(a4 + 56), v6 < *v5))
  {
    *(a4 + 56) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_1862ABC(*(a4 + 48));
    v7 = sub_19593CC(a4 + 48, v9);
  }

  v10 = *(v7 + 56);
  v11 = *(v7 + 40);
  *(v7 + 160) = v10;
  v12 = v11 | 0x84;
  *(v7 + 40) = v11 | 0x84;
  *(v7 + 136) = 1;
  v13 = *(a3 + 48);
  if (v13 != 0x7FFFFFFF)
  {
    v14 = v13 / 10;
    v15 = v13 % 10;
    if (v13 < 0)
    {
      v16 = -5;
    }

    else
    {
      v16 = 5;
    }

    v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
    v12 = v11 | 0xA4;
    *(v7 + 152) = v17;
  }

  *(v7 + 168) = *(a3 + 52);
  v18 = v12 | 0x208;
  *(v7 + 40) = v12 | 0x208;
  *(v7 + 140) = 0;
  v19 = *(v7 + 64);
  if (v19 && v10 < *v19)
  {
    v20 = &v19[2 * v10];
    v21 = v10 + 1;
    *(v7 + 56) = v21;
    v22 = *(v20 + 1);
  }

  else
  {
    v23 = sub_1862A04(*(v7 + 48));
    v22 = sub_19593CC(v7 + 48, v23);
    v21 = *(v7 + 56);
    v18 = *(v7 + 40);
  }

  *(v7 + 40) = v18 | 0x80;
  *(v7 + 160) = v21;
  *(v22 + 40) |= 1u;
  v24 = *(v22 + 64);
  if (v24)
  {
    if (!sub_845AC(a3 + 56))
    {
      return;
    }

    goto LABEL_17;
  }

  v29 = *(v22 + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (v29)
  {
    v30 = *v30;
  }

  v24 = sub_185D55C(v30);
  *(v22 + 64) = v24;
  if (sub_845AC(a3 + 56))
  {
LABEL_17:
    v25 = *(v24 + 136);
    if (v25 && (v26 = *(v24 + 128), v26 < *v25))
    {
      *(v24 + 128) = v26 + 1;
      v27 = *&v25[2 * v26 + 2];
      v28 = (a3 + 56);
    }

    else
    {
      v31 = sub_16F5A54(*(v24 + 120));
      v27 = sub_19593CC(v24 + 120, v31);
      v28 = (a3 + 56);
    }

    sub_ECB804(v28, v27);
  }
}

void sub_F1583C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 31) == 1)
  {
    v7 = *(a4 + 64);
    if (v7 && (v8 = *(a4 + 56), v8 < *v7))
    {
      *(a4 + 56) = v8 + 1;
      v9 = *&v7[2 * v8 + 2];
    }

    else
    {
      v11 = sub_1862ABC(*(a4 + 48));
      v9 = sub_19593CC(a4 + 48, v11);
    }

    v12 = *(v9 + 40);
    *(v9 + 160) = *(v9 + 56);
    v13 = v12 | 0x84;
    *(v9 + 40) = v12 | 0x84;
    *(v9 + 136) = 20;
    v14 = *(a3 + 1568);
    if (v14 != 0x7FFFFFFF)
    {
      v15 = v14 / 10;
      v16 = v14 % 10;
      if (v14 < 0)
      {
        v17 = -5;
      }

      else
      {
        v17 = 5;
      }

      v18 = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
      v13 = v12 | 0xA4;
      *(v9 + 152) = v18;
    }

    *(v9 + 168) = *(a3 + 1572);
    *(v9 + 40) = v13 | 0x208;
    *(v9 + 140) = 0;
    if ((**(a3 + 1560))(a3 + 1560))
    {
      v19 = *(v9 + 64);
      if (v19 && (v20 = *(v9 + 56), v20 < *v19))
      {
        v21 = &v19[2 * v20];
        v22 = v20 + 1;
        *(v9 + 56) = v20 + 1;
        v23 = *(v21 + 1);
      }

      else
      {
        v24 = sub_1862A04(*(v9 + 48));
        v23 = sub_19593CC(v9 + 48, v24);
        v22 = *(v9 + 56);
      }

      *(v9 + 40) |= 0x80u;
      *(v9 + 160) = v22;
      *(v23 + 40) |= 0x10000u;
      v25 = *(v23 + 192);
      if (!v25)
      {
        v26 = *(v23 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_185EB00(v27);
        *(v23 + 192) = v25;
      }

      v28 = *(a3 + 1576);
      v29 = *(a3 + 1584);
      while (v28 != v29)
      {
        v32 = *result;
        v33 = *(v25 + 32);
        if (v33 && (v34 = *(v25 + 24), v34 < *v33))
        {
          *(v25 + 24) = v34 + 1;
          v31 = *&v33[2 * v34 + 2];
        }

        else
        {
          v30 = sub_141BE00(*(v25 + 16));
          v31 = sub_19593CC(v25 + 16, v30);
        }

        sub_F20EB8(v28, a2 + 1016, v32, v31);
        v28 += 456;
      }
    }
  }
}

void sub_F15AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (*(a2 + 28) == 1)
  {
    v102 = v5;
    v103 = v6;
    v8 = *(a4 + 64);
    if (v8 && (v9 = *(a4 + 56), v9 < *v8))
    {
      *(a4 + 56) = v9 + 1;
      v10 = *&v8[2 * v9 + 2];
    }

    else
    {
      v12 = sub_1862ABC(*(a4 + 48));
      v10 = sub_19593CC(a4 + 48, v12);
    }

    v13 = *(v10 + 56);
    v14 = *(v10 + 40);
    *(v10 + 160) = v13;
    v15 = v14 | 0x84;
    *(v10 + 40) = v14 | 0x84;
    *(v10 + 136) = 10;
    v16 = *(a3 + 1608);
    if (v16 != 0x7FFFFFFF)
    {
      v17 = v16 / 10;
      v18 = v16 % 10;
      if (v16 < 0)
      {
        v19 = -5;
      }

      else
      {
        v19 = 5;
      }

      v20 = v17 + (((103 * (v19 + v18)) >> 15) & 1) + ((103 * (v19 + v18)) >> 10);
      v15 = v14 | 0xA4;
      *(v10 + 152) = v20;
    }

    *(v10 + 168) = *(a3 + 1612);
    v21 = v15 | 0x208;
    *(v10 + 40) = v15 | 0x208;
    *(v10 + 140) = 0;
    v22 = *(v10 + 64);
    if (v22 && v13 < *v22)
    {
      v23 = &v22[2 * v13];
      v24 = v13 + 1;
      *(v10 + 56) = v24;
      v25 = *(v23 + 1);
    }

    else
    {
      v26 = sub_1862A04(*(v10 + 48));
      v25 = sub_19593CC(v10 + 48, v26);
      v24 = *(v10 + 56);
      v21 = *(v10 + 40);
    }

    *(v10 + 40) = v21 | 0x80;
    *(v10 + 160) = v24;
    *(v25 + 40) |= 0x200u;
    v27 = *(v25 + 136);
    if (!v27)
    {
      v28 = *(v25 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_185E974(v29);
      *(v25 + 136) = v27;
    }

    v30 = *(a3 + 1616);
    v31 = *(a3 + 1624);
    while (v30 != v31)
    {
      v35 = v27[8];
      if (v35 && (v34 = *(v27 + 14), v34 < *v35))
      {
        *(v27 + 14) = v34 + 1;
        v33 = *&v35[2 * v34 + 2];
      }

      else
      {
        v32 = sub_141BB20(v27[6]);
        v33 = sub_19593CC((v27 + 6), v32);
        v34 = *(v27 + 14) - 1;
      }

      *(v33 + 40) |= 0x4000u;
      *(v33 + 164) = v34;
      sub_F22DEC(v30, v33);
      v30 += 696;
    }

    v36 = *(a3 + 1640);
    v37 = *(a3 + 1648);
    while (v36 != v37)
    {
      v41 = v27[11];
      if (v41 && (v40 = *(v27 + 20), v40 < *v41))
      {
        *(v27 + 20) = v40 + 1;
        v39 = *&v41[2 * v40 + 2];
      }

      else
      {
        v38 = sub_141BC34(v27[9]);
        v39 = sub_19593CC((v27 + 9), v38);
        v40 = *(v27 + 20) - 1;
      }

      *(v39 + 40) |= 0x40u;
      *(v39 + 92) = v40;
      sub_F232F0(v36, v39);
      v36 += 208;
    }

    v42 = *(a3 + 1664);
    v99 = a3;
    v43 = *(a3 + 1672);
    if (v42 != v43)
    {
      do
      {
        v44 = v27[20];
        if (v44 && (v45 = *(v27 + 38), v45 < *v44))
        {
          *(v27 + 38) = v45 + 1;
          v46 = *&v44[2 * v45 + 2];
        }

        else
        {
          v47 = sub_185E8F4(v27[18]);
          v46 = sub_19593CC((v27 + 18), v47);
        }

        nullsub_1();
        v48 = *(v46 + 16);
        *(v46 + 32) = v49;
        *(v46 + 16) = v48 | 3;
        v50 = *(v46 + 24);
        if (!v50)
        {
          v51 = *(v46 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          v50 = sub_16F6144(v52);
          *(v46 + 24) = v50;
        }

        *(v50 + 4) |= 1u;
        v53 = v50[1];
        v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
        if (v53)
        {
          v54 = *v54;
        }

        v55 = v42 + 32;
        sub_194EA1C(v50 + 3, (v42 + 32), v54);
        v56 = *(v42 + 144);
        if (v56 != 0x7FFFFFFF)
        {
          v57 = v56 / 10;
          v58 = v56 % 10;
          if (v56 < 0)
          {
            v59 = -5;
          }

          else
          {
            v59 = 5;
          }

          *(v46 + 16) |= 4u;
          *(v46 + 40) = v57 + (((103 * (v59 + v58)) >> 15) & 1) + ((103 * (v59 + v58)) >> 10);
        }

        v42 += 152;
      }

      while (v55 + 120 != v43);
    }

    v60 = *(v99 + 1688);
    v61 = *(v99 + 1696);
    while (v60 != v61)
    {
      v64 = v27[14];
      if (v64 && (v65 = *(v27 + 26), v65 < *v64))
      {
        *(v27 + 26) = v65 + 1;
        v63 = *&v64[2 * v65 + 2];
      }

      else
      {
        v62 = sub_185EA2C(v27[12]);
        v63 = sub_19593CC((v27 + 12), v62);
      }

      sub_F234B8(v60, v63, a5);
      v60 += 36;
    }

    v66 = *(v99 + 1712);
    for (i = *(v99 + 1720); v66 != i; v66 += 72)
    {
      v68 = v27[17];
      if (v68 && (v69 = *(v27 + 32), v69 < *v68))
      {
        *(v27 + 32) = v69 + 1;
        v70 = *&v68[2 * v69 + 2];
      }

      else
      {
        v71 = sub_185E9D0(v27[15]);
        v70 = sub_19593CC((v27 + 15), v71);
      }

      v73 = *(v66 + 24);
      v72 = *(v66 + 32);
      while (v73 != v72)
      {
        v76 = *(v70 + 64);
        if (v76 && (v77 = *(v70 + 56), v77 < *v76))
        {
          *(v70 + 56) = v77 + 1;
          v75 = *&v76[2 * v77 + 2];
        }

        else
        {
          v74 = sub_185EA2C(*(v70 + 48));
          v75 = sub_19593CC(v70 + 48, v74);
        }

        sub_F234B8(v73, v75, a5);
        v73 += 36;
      }

      nullsub_1();
      v79 = *(v70 + 40);
      *(v70 + 88) = v80;
      *(v70 + 40) = v79 | 6;
      v81 = *(v70 + 80);
      if (!v81)
      {
        v82 = *(v70 + 8);
        v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
        if (v82)
        {
          v83 = *v83;
        }

        v81 = sub_191BA60(v83);
        *(v70 + 80) = v81;
      }

      sub_F24200(*v66, (v66 + 8), v81, v78);
      *(v70 + 40) |= 1u;
      v84 = *(v70 + 8);
      v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
      if (v84)
      {
        v85 = *v85;
      }

      sub_194EA1C((v70 + 72), (v66 + 48), v85);
    }

    v86 = *(v99 + 1759);
    if ((v86 & 0x80u) != 0)
    {
      v86 = *(v99 + 1744);
    }

    if (v86)
    {
      *(v27 + 10) |= 2u;
      v87 = v27[1];
      v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
      if (v87)
      {
        v88 = *v88;
      }

      sub_194EA1C(v27 + 22, (v99 + 1736), v88);
    }

    v89 = *(v99 + 1783);
    if ((v89 & 0x80u) != 0)
    {
      v89 = *(v99 + 1768);
    }

    if (v89)
    {
      *(v27 + 10) |= 4u;
      v90 = v27[1];
      v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
      if (v90)
      {
        v91 = *v91;
      }

      sub_194EA1C(v27 + 23, (v99 + 1760), v91);
    }

    v92 = *(v99 + 1807);
    if ((v92 & 0x80u) != 0)
    {
      v92 = *(v99 + 1792);
    }

    if (v92)
    {
      *(v27 + 10) |= 1u;
      v93 = v27[1];
      v94 = (v93 & 0xFFFFFFFFFFFFFFFCLL);
      if (v93)
      {
        v94 = *v94;
      }

      sub_194EA1C(v27 + 21, (v99 + 1784), v94);
    }

    v95 = *(v99 + 1808);
    if (v95 != -1)
    {
      *(v27 + 10) |= 8u;
      v96 = v27[24];
      if (!v96)
      {
        v97 = v27[1];
        v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
        if (v97)
        {
          v98 = *v98;
        }

        v96 = sub_191BA60(v98);
        v27[24] = v96;
        v95 = *(v99 + 1808);
      }

      v100 = -1;
      v101 = 0x7FFFFFFF;
      sub_F24200(v95, &v100, v96, NAN);
    }
  }
}

void sub_F16180(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 29) == 1)
  {
    v6 = *(a5 + 64);
    if (v6 && (v7 = *(a5 + 56), v7 < *v6))
    {
      *(a5 + 56) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v10 = sub_1862ABC(*(a5 + 48));
      v8 = sub_19593CC(a5 + 48, v10);
    }

    v11 = *(v8 + 56);
    v12 = *(v8 + 40);
    *(v8 + 160) = v11;
    v13 = v12 | 0x84;
    *(v8 + 40) = v12 | 0x84;
    *(v8 + 136) = 27;
    v14 = *(a4 + 1824);
    if (v14 != 0x7FFFFFFF)
    {
      v15 = v14 / 10;
      v16 = v14 % 10;
      if (v14 < 0)
      {
        v17 = -5;
      }

      else
      {
        v17 = 5;
      }

      v18 = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
      v13 = v12 | 0xA4;
      *(v8 + 152) = v18;
    }

    *(v8 + 168) = *(a4 + 1828);
    v19 = v13 | 0x208;
    *(v8 + 40) = v13 | 0x208;
    *(v8 + 140) = 0;
    v20 = *(v8 + 64);
    if (v20 && v11 < *v20)
    {
      v21 = &v20[2 * v11];
      v22 = v11 + 1;
      *(v8 + 56) = v22;
      v23 = *(v21 + 1);
    }

    else
    {
      v24 = sub_1862A04(*(v8 + 48));
      v23 = sub_19593CC(v8 + 48, v24);
      v22 = *(v8 + 56);
      v19 = *(v8 + 40);
    }

    *(v8 + 40) = v19 | 0x80;
    *(v8 + 160) = v22;
    *(v23 + 40) |= 0x800000u;
    v25 = *(v23 + 248);
    if (!v25)
    {
      v26 = *(v23 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_185E820(v27);
      *(v23 + 248) = v25;
    }

    if (*(a4 + 1832) != -1)
    {
      nullsub_1();
      *(v25 + 40) |= 0x20u;
      *(v25 + 160) = v28;
    }

    v29 = *(a4 + 1975);
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(a4 + 1960);
    }

    if (v29)
    {
      *(v25 + 40) |= 1u;
      v30 = *(v25 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      sub_194EA1C((v25 + 120), (a4 + 1952), v31);
    }

    v32 = *(a4 + 1863);
    if ((v32 & 0x80u) != 0)
    {
      v32 = *(a4 + 1848);
    }

    if (v32)
    {
      *(v25 + 40) |= 2u;
      v33 = *(v25 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      sub_194EA1C((v25 + 128), (a4 + 1840), v34);
    }

    v35 = *(a4 + 1887);
    if ((v35 & 0x80u) != 0)
    {
      v35 = *(a4 + 1872);
    }

    if (v35)
    {
      *(v25 + 40) |= 4u;
      v36 = *(v25 + 136);
      if (!v36)
      {
        v37 = *(v25 + 8);
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v38 = *v38;
        }

        v36 = sub_16F6144(v38);
        *(v25 + 136) = v36;
      }

      *(v36 + 4) |= 1u;
      v39 = v36[1];
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      sub_194EA1C(v36 + 3, (a4 + 1864), v40);
    }

    if (*(a4 + 1888) != -1 || *(a4 + 1892) != -1)
    {
      *(v25 + 40) |= 8u;
      v41 = *(v25 + 144);
      if (!v41)
      {
        v42 = *(v25 + 8);
        v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v43 = *v43;
        }

        v41 = sub_16F5828(v43);
        *(v25 + 144) = v41;
      }

      a1.n128_f64[0] = sub_EC6D34((a4 + 1888), v41, a1.n128_f64[0]);
    }

    if (*(a4 + 1904) != *(a4 + 1912))
    {
      *(v25 + 40) |= 0x10u;
      v44 = *(v25 + 152);
      if (!v44)
      {
        v45 = *(v25 + 8);
        v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
        if (v45)
        {
          v46 = *v46;
        }

        v44 = sub_1551A70(v46);
        *(v25 + 152) = v44;
      }

      sub_43735C(a4 + 1904, v44);
    }

    v47 = *(a4 + 1928);
    v48 = *(a4 + 1936);
    while (v47 != v48)
    {
      v51 = *(v25 + 112);
      if (v51 && (v52 = *(v25 + 104), v52 < *v51))
      {
        *(v25 + 104) = v52 + 1;
        v50 = *&v51[2 * v52 + 2];
      }

      else
      {
        v49 = sub_185EA2C(*(v25 + 96));
        v50 = sub_19593CC(v25 + 96, v49);
      }

      sub_F234B8(v47, v50, a1);
      v47 += 36;
    }
  }
}

void sub_F16548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 32) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 40);
    *(v7 + 160) = *(v7 + 56);
    v11 = v10 | 0x84;
    *(v7 + 40) = v10 | 0x84;
    *(v7 + 136) = 79;
    v12 = *(a3 + 1992);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = v12 / 10;
      v14 = v12 % 10;
      if (v12 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
      v11 = v10 | 0xA4;
      *(v7 + 152) = v16;
    }

    *(v7 + 168) = *(a3 + 1996);
    *(v7 + 40) = v11 | 0x208;
    *(v7 + 140) = 0;
    if ((**(a3 + 1984))(a3 + 1984))
    {
      v17 = *(v7 + 64);
      if (v17 && (v18 = *(v7 + 56), v18 < *v17))
      {
        v19 = &v17[2 * v18];
        v20 = v18 + 1;
        *(v7 + 56) = v18 + 1;
        v21 = *(v19 + 1);
      }

      else
      {
        v22 = sub_1862A04(*(v7 + 48));
        v21 = sub_19593CC(v7 + 48, v22);
        v20 = *(v7 + 56);
      }

      *(v7 + 40) |= 0x80u;
      *(v7 + 160) = v20;
      *(v21 + 48) |= 0x200u;
      v23 = *(v21 + 648);
      if (!v23)
      {
        v24 = *(v21 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_185EE84(v25);
        *(v21 + 648) = v23;
      }

      v26 = *(a3 + 2000);
      v95 = a3;
      v27 = *(a3 + 2008);
      while (v26 != v27)
      {
        v28 = *(v23 + 56);
        if (v28 && (v29 = *(v23 + 48), v29 < *v28))
        {
          *(v23 + 48) = v29 + 1;
          v30 = *&v28[2 * v29 + 2];
        }

        else
        {
          v31 = sub_185EEE0(*(v23 + 40));
          v30 = sub_19593CC(v23 + 40, v31);
        }

        *(v30 + 40) |= 1u;
        v32 = *(v30 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          sub_194EA1C((v30 + 64), v26, *v33);
          v35 = *(v26 + 56);
          if (v35 <= 2)
          {
LABEL_29:
            if (v35 == 1)
            {
              if (*(v26 + 24) == -1)
              {
                goto LABEL_49;
              }
            }

            else if (v35 != 2 || *(v26 + 28) == -1 && *(v26 + 24) == -1 && *(v26 + 32) == *(v26 + 40))
            {
              goto LABEL_49;
            }

            goto LABEL_44;
          }
        }

        else
        {
          sub_194EA1C((v30 + 64), v26, v33);
          v35 = *(v26 + 56);
          if (v35 <= 2)
          {
            goto LABEL_29;
          }
        }

        if (v35 != 3 && v35 != 4)
        {
          goto LABEL_49;
        }

        if ((*(v26 + 47) & 0x8000000000000000) != 0)
        {
          if (!*(v26 + 32))
          {
            goto LABEL_49;
          }
        }

        else if (!*(v26 + 47))
        {
          goto LABEL_49;
        }

LABEL_44:
        *(v30 + 40) |= 2u;
        v36 = *(v30 + 72);
        if (!v36)
        {
          v37 = *(v30 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          v36 = sub_14BF484(v38);
          *(v30 + 72) = v36;
        }

        sub_586C94(v26 + 24, v36, v34);
LABEL_49:
        v39 = *(v26 + 136);
        v40 = *(v26 + 144);
        while (v39 != v40)
        {
          v42 = sub_2FEF94(*v39);
          v43 = v42;
          v44 = *(v30 + 48);
          if (v44 == *(v30 + 52))
          {
            v41 = v44 + 1;
            sub_1958E5C((v30 + 48), v44 + 1);
            *(*(v30 + 56) + 4 * v44) = v43;
          }

          else
          {
            *(*(v30 + 56) + 4 * v44) = v42;
            v41 = v44 + 1;
          }

          *(v30 + 48) = v41;
          ++v39;
        }

        v26 += 160;
      }

      v45 = *(v95 + 2024);
      v46 = *(v95 + 2032);
      while (v45 != v46)
      {
        v47 = *(v23 + 80);
        if (v47 && (v48 = *(v23 + 72), v48 < *v47))
        {
          *(v23 + 72) = v48 + 1;
          v49 = *&v47[2 * v48 + 2];
        }

        else
        {
          v50 = sub_185EF3C(*(v23 + 64));
          v49 = sub_19593CC(v23 + 64, v50);
        }

        *(v49 + 40) |= 1u;
        v51 = *(v49 + 8);
        v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          sub_194EA1C((v49 + 96), v45, *v52);
          v53 = *(v45 + 47);
          if ((v53 & 0x8000000000000000) == 0)
          {
LABEL_64:
            if (!v53)
            {
              goto LABEL_86;
            }

            goto LABEL_65;
          }
        }

        else
        {
          sub_194EA1C((v49 + 96), v45, v52);
          v53 = *(v45 + 47);
          if ((v53 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }
        }

        if (!*(v45 + 32))
        {
LABEL_86:
          v56 = *(v45 + 48);
          if (v56 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_87;
          }

          goto LABEL_67;
        }

LABEL_65:
        *(v49 + 40) |= 2u;
        v54 = *(v49 + 8);
        v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
        if (v54)
        {
          sub_194EA1C((v49 + 104), (v45 + 24), *v55);
          v56 = *(v45 + 48);
          if (v56 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_87:
            v60 = *(v45 + 56);
            if (v60 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_88;
            }

            goto LABEL_71;
          }
        }

        else
        {
          sub_194EA1C((v49 + 104), (v45 + 24), v55);
          v56 = *(v45 + 48);
          if (v56 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_87;
          }
        }

LABEL_67:
        v57 = v56 / 100;
        v58 = v56 % 100;
        if (v56 < 0)
        {
          v59 = -50;
        }

        else
        {
          v59 = 50;
        }

        *(v49 + 40) |= 4u;
        *(v49 + 112) = v57 + ((5243 * (v59 + v58)) >> 19) + ((5243 * (v59 + v58)) >> 31);
        v60 = *(v45 + 56);
        if (v60 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_88:
          v64 = *(v45 + 64);
          if (v64 == 0x7FFFFFFF)
          {
            goto LABEL_89;
          }

          goto LABEL_75;
        }

LABEL_71:
        v61 = v60 / 100;
        v62 = v60 % 100;
        if (v60 < 0)
        {
          v63 = -50;
        }

        else
        {
          v63 = 50;
        }

        *(v49 + 40) |= 8u;
        *(v49 + 116) = v61 + ((5243 * (v63 + v62)) >> 19) + ((5243 * (v63 + v62)) >> 31);
        v64 = *(v45 + 64);
        if (v64 == 0x7FFFFFFF)
        {
LABEL_89:
          v68 = *(v45 + 68);
          if (v68 == 0x7FFFFFFF)
          {
            goto LABEL_90;
          }

          goto LABEL_79;
        }

LABEL_75:
        v65 = v64 / 10;
        v66 = v64 % 10;
        if (v64 < 0)
        {
          v67 = -5;
        }

        else
        {
          v67 = 5;
        }

        *(v49 + 40) |= 0x10u;
        *(v49 + 120) = v65 + (((103 * (v67 + v66)) >> 15) & 1) + ((103 * (v67 + v66)) >> 10);
        v68 = *(v45 + 68);
        if (v68 == 0x7FFFFFFF)
        {
LABEL_90:
          v72 = *(v45 + 144);
          if (v72 > 3)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        }

LABEL_79:
        v69 = v68 / 10;
        v70 = v68 % 10;
        if (v68 < 0)
        {
          v71 = -5;
        }

        else
        {
          v71 = 5;
        }

        *(v49 + 40) |= 0x20u;
        *(v49 + 124) = v69 + (((103 * (v71 + v70)) >> 15) & 1) + ((103 * (v71 + v70)) >> 10);
        v72 = *(v45 + 144);
        if (v72 > 3)
        {
          goto LABEL_92;
        }

LABEL_91:
        *(v49 + 40) |= 0x40u;
        *(v49 + 128) = v72 + 1;
LABEL_92:
        v74 = *(v45 + 72);
        v73 = *(v45 + 80);
        while (v74 != v73)
        {
          v76 = sub_2FEF94(*v74);
          v77 = v76;
          v78 = *(v49 + 64);
          if (v78 == *(v49 + 68))
          {
            v75 = v78 + 1;
            sub_1958E5C((v49 + 64), v78 + 1);
            *(*(v49 + 72) + 4 * v78) = v77;
          }

          else
          {
            *(*(v49 + 72) + 4 * v78) = v76;
            v75 = v78 + 1;
          }

          *(v49 + 64) = v75;
          ++v74;
        }

        v80 = *(v45 + 96);
        v79 = *(v45 + 104);
        while (v80 != v79)
        {
          v82 = sub_2FEF94(*v80);
          v83 = v82;
          v84 = *(v49 + 48);
          if (v84 == *(v49 + 52))
          {
            v81 = v84 + 1;
            sub_1958E5C((v49 + 48), v84 + 1);
            *(*(v49 + 56) + 4 * v84) = v83;
          }

          else
          {
            *(*(v49 + 56) + 4 * v84) = v82;
            v81 = v84 + 1;
          }

          *(v49 + 48) = v81;
          ++v80;
        }

        v86 = *(v45 + 120);
        v85 = *(v45 + 128);
        while (v86 != v85)
        {
          nullsub_1();
          v89 = v88;
          v90 = *(v49 + 80);
          if (v90 == *(v49 + 84))
          {
            v87 = v90 + 1;
            sub_1959094((v49 + 80), v90 + 1);
            *(*(v49 + 88) + 8 * v90) = v89;
          }

          else
          {
            *(*(v49 + 88) + 8 * v90) = v88;
            v87 = v90 + 1;
          }

          *(v49 + 80) = v87;
          v86 += 8;
        }

        v45 += 152;
      }

      if (!sub_5FC6C(v95 + 2048))
      {
        sub_5EED8(v95 + 2048, __p);
        v91 = dword_278D288;
        if (SHIBYTE(v97) < 0)
        {
          sub_325C(&v98, __p[0], __p[1]);
        }

        else
        {
          v98 = *__p;
          v99 = v97;
        }

        v92 = sub_1950AC0((v23 + 16), v91, 9, 0);
        if (*(v92 + 23) < 0)
        {
          v93 = v92;
          operator delete(*v92);
          v92 = v93;
        }

        v94 = v98;
        v92[2] = v99;
        *v92 = v94;
        if (SHIBYTE(v97) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_F16DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

double sub_F16E14(__n128 result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 41) == 1)
  {
    v6 = *(a5 + 64);
    if (v6 && (v7 = *(a5 + 56), v7 < *v6))
    {
      *(a5 + 56) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v10 = sub_1862ABC(*(a5 + 48));
      v8 = sub_19593CC(a5 + 48, v10);
    }

    v11 = *(v8 + 40);
    *(v8 + 160) = *(v8 + 56);
    v12 = v11 | 0x84;
    *(v8 + 40) = v11 | 0x84;
    *(v8 + 136) = 2;
    v13 = *(a4 + 1432);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 / 10;
      v15 = v13 % 10;
      if (v13 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
      v12 = v11 | 0xA4;
      *(v8 + 152) = v17;
    }

    *(v8 + 168) = *(a4 + 1436);
    *(v8 + 40) = v12 | 0x208;
    *(v8 + 140) = 0;
    if ((**(a4 + 1424))(a4 + 1424, result))
    {
      v18 = *(v8 + 64);
      if (v18 && (v19 = *(v8 + 56), v19 < *v18))
      {
        v20 = &v18[2 * v19];
        v21 = v19 + 1;
        *(v8 + 56) = v19 + 1;
        v22 = *(v20 + 1);
      }

      else
      {
        v23 = sub_1862A04(*(v8 + 48));
        v22 = sub_19593CC(v8 + 48, v23);
        v21 = *(v8 + 56);
      }

      *(v8 + 40) |= 0x80u;
      *(v8 + 160) = v21;
      *(v22 + 40) |= 2u;
      v24 = *(v22 + 72);
      if (v24)
      {
        *(v24 + 40) |= 1u;
        v25 = *(v24 + 48);
        if (v25)
        {
LABEL_26:
          sub_EC6D34((a4 + 1440), v25, result.n128_f64[0]);
          *(v24 + 40) |= 2u;
          v30 = *(v24 + 56);
          if (!v30)
          {
            v31 = *(v24 + 8);
            v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31)
            {
              v32 = *v32;
            }

            v30 = sub_16F6144(v32);
            *(v24 + 56) = v30;
          }

          *(v30 + 4) |= 1u;
          v33 = v30[1];
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
          if (v33)
          {
            v34 = *v34;
          }

          v35 = (v30 + 3);

          sub_194EA1C(v35, (a4 + 1456), v34);
          return result.n128_f64[0];
        }
      }

      else
      {
        v26 = *(v22 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v24 = sub_185D940(v27);
        *(v22 + 72) = v24;
        *(v24 + 40) |= 1u;
        v25 = *(v24 + 48);
        if (v25)
        {
          goto LABEL_26;
        }
      }

      v28 = *(v24 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v25 = sub_16F5828(v29);
      *(v24 + 48) = v25;
      goto LABEL_26;
    }
  }

  return result.n128_f64[0];
}

void sub_F170C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 36) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 40);
    *(v7 + 160) = *(v7 + 56);
    v11 = v10 | 0x84;
    *(v7 + 40) = v10 | 0x84;
    *(v7 + 136) = 11;
    v12 = *(a3 + 2096);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = v12 / 10;
      v14 = v12 % 10;
      if (v12 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
      v11 = v10 | 0xA4;
      *(v7 + 152) = v16;
    }

    *(v7 + 168) = *(a3 + 2100);
    *(v7 + 40) = v11 | 0x208;
    *(v7 + 140) = 0;
    v17 = (**(a3 + 2088))(a3 + 2088);
    if (v17)
    {
      v19 = *(v7 + 64);
      if (v19 && (v20 = *(v7 + 56), v20 < *v19))
      {
        v21 = &v19[2 * v20];
        v22 = v20 + 1;
        *(v7 + 56) = v20 + 1;
        v23 = *(v21 + 1);
      }

      else
      {
        v24 = sub_1862A04(*(v7 + 48));
        v17 = sub_19593CC(v7 + 48, v24);
        v23 = v17;
        v22 = *(v7 + 56);
      }

      *(v7 + 40) |= 0x80u;
      *(v7 + 160) = v22;
      *(v23 + 40) |= 0x400u;
      v25 = *(v23 + 144);
      if (!v25)
      {
        v26 = *(v23 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v17 = sub_185E560(v27);
        v25 = v17;
        *(v23 + 144) = v17;
      }

      v28 = *(a3 + 2104);
      for (i = *(a3 + 2112); v28 != i; v28 += 312)
      {
        sub_F190EC(v17, v28, v25);
      }

      v30 = *(a3 + 2128);
      for (j = *(a3 + 2136); v30 != j; v30 += 80)
      {
        sub_F19810(v17, v30, v25, v18);
      }

      *(v25 + 40) |= 1u;
      v32 = *(v25 + 96);
      if (v32)
      {
        *(v32 + 4) |= 1u;
        v33 = v32[3];
        if (v33)
        {
LABEL_33:
          v38 = *(a3 + 2156);
          v39 = v38 / 10;
          v40 = v38 % 10;
          if (v38 < 0)
          {
            v41 = -5;
          }

          else
          {
            v41 = 5;
          }

          v42 = v39 + (((103 * (v41 + v40)) >> 15) & 1) + ((103 * (v41 + v40)) >> 10);
          v43 = v33[4];
          v33[4] = v43 | 2;
          v33[7] = v42;
          v44 = *(a3 + 2152) - 978307200;
          v33[4] = v43 | 3;
          v33[6] = v44;
          v45 = *(a3 + 2160);
          *(v32 + 4) |= 2u;
          *(v32 + 8) = v45;
          *(v25 + 40) |= 2u;
          v46 = *(v25 + 104);
          if (!v46)
          {
            v47 = *(v25 + 8);
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
            if (v47)
            {
              v48 = *v48;
            }

            v46 = sub_185D248(v48);
            *(v25 + 104) = v46;
          }

          if (*(v25 + 96))
          {
            v49 = *(v25 + 96);
          }

          else
          {
            v49 = &off_27822C8;
          }

          sub_1793628(v46, v49);
          v50 = *(a3 + 2160);
          LODWORD(v46->__r_.__value_.__r.__words[2]) |= 2u;
          LODWORD(v46[1].__r_.__value_.__r.__words[1]) = v50;
          v51 = *(a3 + 2164);
          v52 = v51 / 10;
          v53 = v51 % 10;
          if (v51 < 0)
          {
            v54 = -5;
          }

          else
          {
            v54 = 5;
          }

          *(v25 + 40) |= 8u;
          *(v25 + 120) = (v52 + (((103 * (v54 + v53)) >> 15) & 1) + ((103 * (v54 + v53)) >> 10));
          return;
        }
      }

      else
      {
        v34 = *(v25 + 8);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        v32 = sub_185D248(v35);
        *(v25 + 96) = v32;
        *(v32 + 4) |= 1u;
        v33 = v32[3];
        if (v33)
        {
          goto LABEL_33;
        }
      }

      v36 = v32[1];
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      v33 = sub_185D2C4(v37);
      v32[3] = v33;
      goto LABEL_33;
    }
  }
}

void sub_F174D0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 37) == 1)
  {
    v38 = v4;
    v39 = v5;
    v8 = *(a4 + 64);
    if (v8 && (v9 = *(a4 + 56), v9 < *v8))
    {
      *(a4 + 56) = v9 + 1;
      v10 = *&v8[2 * v9 + 2];
    }

    else
    {
      v12 = sub_1862ABC(*(a4 + 48));
      v10 = sub_19593CC(a4 + 48, v12);
    }

    v13 = *(v10 + 56);
    v14 = *(v10 + 40);
    *(v10 + 160) = v13;
    v15 = v14 | 0x84;
    *(v10 + 40) = v14 | 0x84;
    *(v10 + 136) = 69;
    v16 = *(a3 + 1528);
    if (v16 != 0x7FFFFFFF)
    {
      v17 = v16 / 10;
      v18 = v16 % 10;
      if (v16 < 0)
      {
        v19 = -5;
      }

      else
      {
        v19 = 5;
      }

      v20 = v17 + (((103 * (v19 + v18)) >> 15) & 1) + ((103 * (v19 + v18)) >> 10);
      v15 = v14 | 0xA4;
      *(v10 + 152) = v20;
    }

    *(v10 + 168) = *(a3 + 1532);
    v21 = v15 | 0x208;
    *(v10 + 40) = v15 | 0x208;
    *(v10 + 140) = 0;
    v22 = *(v10 + 64);
    if (v22 && v13 < *v22)
    {
      v23 = &v22[2 * v13];
      v24 = v13 + 1;
      *(v10 + 56) = v24;
      v25 = *(v23 + 1);
    }

    else
    {
      v26 = sub_1862A04(*(v10 + 48));
      v25 = sub_19593CC(v10 + 48, v26);
      v24 = *(v10 + 56);
      v21 = *(v10 + 40);
    }

    *(v10 + 40) = v21 | 0x80;
    *(v10 + 160) = v24;
    *(v25 + 48) |= 1u;
    v27 = *(v25 + 576);
    if (!v27)
    {
      v28 = *(v25 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_185EE28(v29);
      *(v25 + 576) = v27;
    }

    v30 = *(a3 + 1536);
    v31 = *(a3 + 1544);
    while (v30 != v31)
    {
      v33 = *v30;
      v37 = *(v30 + 2);
      v36 = v33;
      if ((v37 & 1) == 0)
      {
        v34 = *(v27 + 48);
        v35 = *(v27 + 64);
        if (v35 == *(v27 + 68))
        {
          v32 = v35 + 1;
          sub_1958E5C((v27 + 64), v35 + 1);
          *(*(v27 + 72) + 4 * v35) = v34;
        }

        else
        {
          *(*(v27 + 72) + 4 * v35) = v34;
          v32 = v35 + 1;
        }

        *(v27 + 64) = v32;
      }

      sub_F19988(result, &v36, v27);
      v30 = (v30 + 12);
    }
  }
}

void sub_F1770C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (*(a2 + 34) == 1)
  {
    v6 = *(a4 + 64);
    if (v6 && (v7 = *(a4 + 56), v7 < *v6))
    {
      *(a4 + 56) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v10 = sub_1862ABC(*(a4 + 48));
      result = sub_19593CC(a4 + 48, v10);
      v8 = result;
    }

    v11 = *(v8 + 56);
    v12 = *(v8 + 40);
    *(v8 + 160) = v11;
    v13 = v12 | 0x84;
    *(v8 + 40) = v12 | 0x84;
    *(v8 + 136) = 67;
    v14 = *(a3 + 2176);
    if (v14 != 0x7FFFFFFF)
    {
      v15 = v14 / 10;
      v16 = v14 % 10;
      if (v14 < 0)
      {
        v17 = -5;
      }

      else
      {
        v17 = 5;
      }

      v18 = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
      v13 = v12 | 0xA4;
      *(v8 + 152) = v18;
    }

    *(v8 + 168) = *(a3 + 2180);
    v19 = v13 | 0x208;
    *(v8 + 40) = v13 | 0x208;
    *(v8 + 140) = 0;
    v20 = *(v8 + 64);
    if (v20 && v11 < *v20)
    {
      v21 = &v20[2 * v11];
      v22 = v11 + 1;
      *(v8 + 56) = v22;
      v23 = *(v21 + 1);
    }

    else
    {
      v24 = sub_1862A04(*(v8 + 48));
      result = sub_19593CC(v8 + 48, v24);
      v23 = result;
      v22 = *(v8 + 56);
      v19 = *(v8 + 40);
    }

    *(v8 + 40) = v19 | 0x80;
    *(v8 + 160) = v22;
    *(v23 + 44) |= 0x40000000u;
    v25 = *(v23 + 560);
    if (!v25)
    {
      v26 = *(v23 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      result = sub_185ECEC(v27);
      v25 = result;
      *(v23 + 560) = result;
    }

    v28 = *(a3 + 2184);
    for (i = *(a3 + 2192); v28 != i; v28 += 152)
    {
      sub_F19EA0(result, v28, v25, a5);
    }
  }
}

void sub_F178DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 35) == 1)
  {
    v5 = *(a4 + 64);
    if (v5 && (v6 = *(a4 + 56), v6 < *v5))
    {
      *(a4 + 56) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
    }

    else
    {
      v9 = sub_1862ABC(*(a4 + 48));
      v7 = sub_19593CC(a4 + 48, v9);
    }

    v10 = *(v7 + 56);
    v11 = *(v7 + 40);
    *(v7 + 160) = v10;
    v12 = v11 | 0x84;
    *(v7 + 40) = v11 | 0x84;
    *(v7 + 136) = 68;
    v13 = *(a3 + 2216);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 / 10;
      v15 = v13 % 10;
      if (v13 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
      v12 = v11 | 0xA4;
      *(v7 + 152) = v17;
    }

    *(v7 + 168) = *(a3 + 2220);
    v18 = v12 | 0x208;
    *(v7 + 40) = v12 | 0x208;
    *(v7 + 140) = 0;
    v19 = *(v7 + 64);
    if (v19 && v10 < *v19)
    {
      v20 = &v19[2 * v10];
      v21 = v10 + 1;
      *(v7 + 56) = v21;
      v22 = *(v20 + 1);
    }

    else
    {
      v23 = sub_1862A04(*(v7 + 48));
      v22 = sub_19593CC(v7 + 48, v23);
      v21 = *(v7 + 56);
      v18 = *(v7 + 40);
    }

    *(v7 + 40) = v18 | 0x80;
    *(v7 + 160) = v21;
    *(v22 + 44) |= 0x80000000;
    v24 = *(v22 + 568);
    if (!v24)
    {
      v25 = *(v22 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_185ED48(v26);
      *(v22 + 568) = v24;
    }

    v27 = *(a3 + 2224);
    v28 = *(a3 + 2232);
    if (v27 != v28)
    {
      while (1)
      {
        v29 = *(v24 + 56);
        if (v29)
        {
          v30 = *(v24 + 48);
          if (v30 < *v29)
          {
            break;
          }
        }

        v32 = sub_185E6EC(*(v24 + 40));
        v31 = sub_19593CC(v24 + 40, v32);
        if (*v27 != -1)
        {
          goto LABEL_27;
        }

LABEL_28:
        if (*(v27 + 8) != 0x7FFFFFFF)
        {
          v34 = *(v31 + 64);
          if (v34 && (v35 = *(v31 + 56), v35 < *v34))
          {
            *(v31 + 56) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            v37 = sub_185E748(*(v31 + 48));
            v36 = sub_19593CC(v31 + 48, v37);
          }

          v38 = *(v27 + 8) + -978307200.0;
          v39 = *(v36 + 40);
          *(v36 + 40) = v39 | 8;
          *(v36 + 72) = v38;
          v40 = *(v27 + 12);
          if (v40 != 0x7FFFFFFF && *(v27 + 16) == 1)
          {
            *(v36 + 40) = v39 | 0x18;
            *(v36 + 80) = v40 + -978307200.0;
          }
        }

        v27 += 24;
        if (v27 == v28)
        {
          return;
        }
      }

      *(v24 + 48) = v30 + 1;
      v31 = *&v29[2 * v30 + 2];
      if (*v27 == -1)
      {
        goto LABEL_28;
      }

LABEL_27:
      nullsub_1();
      *(v31 + 40) |= 0x40u;
      *(v31 + 184) = v33;
      goto LABEL_28;
    }
  }
}

void sub_F17BCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 33) == 1)
  {
    v6 = *(a4 + 64);
    if (v6 && (v7 = *(a4 + 56), v7 < *v6))
    {
      *(a4 + 56) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v10 = sub_1862ABC(*(a4 + 48));
      v8 = sub_19593CC(a4 + 48, v10);
    }

    v11 = *(v8 + 40);
    *(v8 + 160) = *(v8 + 56);
    v12 = v11 | 0x84;
    *(v8 + 40) = v11 | 0x84;
    *(v8 + 136) = 91;
    v13 = *(a3 + 2256);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 / 10;
      v15 = v13 % 10;
      if (v13 < 0)
      {
        v16 = -5;
      }

      else
      {
        v16 = 5;
      }

      v17 = v14 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10);
      v12 = v11 | 0xA4;
      *(v8 + 152) = v17;
    }

    *(v8 + 168) = *(a3 + 2260);
    *(v8 + 40) = v12 | 0x208;
    *(v8 + 140) = 0;
    if ((**(a3 + 2248))(a3 + 2248))
    {
      v18 = *(v8 + 64);
      if (v18 && (v19 = *(v8 + 56), v19 < *v18))
      {
        v20 = &v18[2 * v19];
        v21 = v19 + 1;
        *(v8 + 56) = v19 + 1;
        v22 = *(v20 + 1);
      }

      else
      {
        v23 = sub_1862A04(*(v8 + 48));
        v22 = sub_19593CC(v8 + 48, v23);
        v21 = *(v8 + 56);
      }

      *(v8 + 40) |= 0x80u;
      *(v8 + 160) = v21;
      *(v22 + 48) |= 0x100000u;
      v24 = *(v22 + 736);
      if (!v24)
      {
        v25 = *(v22 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_185EF98(v26);
        *(v22 + 736) = v24;
      }

      v27 = *(a3 + 2288);
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v24 + 10) |= 1u;
        *(v24 + 12) = v27 / 100.0;
      }

      *v79 = 0u;
      *v80 = 0u;
      v81 = 1065353216;
      v83 = 0;
      v84 = 0;
      v82 = 0;
      v28 = *(a3 + 2264);
      v75 = *(a3 + 2272);
      if (v28 == v75)
      {
        goto LABEL_104;
      }

      v74 = v24;
      while (2)
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v30 = *v28;
        v29 = v28[1];
        if (v29 != *v28)
        {
          if (((v29 - *v28) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v31 = 0;
LABEL_31:
        if (v30 != v29)
        {
          v32 = *v30;
          v85 = *v30;
          if (!v79[1])
          {
            goto LABEL_58;
          }

          v33 = __ROR8__(v32, 32);
          v34 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v33 ^ (v33 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v33 ^ (v33 >> 33))) >> 33));
          v35 = v34 ^ (v34 >> 33);
          v36 = vcnt_s8(v79[1]);
          v36.i16[0] = vaddlv_u8(v36);
          if (v36.u32[0] > 1uLL)
          {
            v37 = v35;
            if (v35 >= v79[1])
            {
              v37 = v35 % v79[1];
            }
          }

          else
          {
            v37 = v35 & (v79[1] - 1);
          }

          v38 = *(v79[0] + v37);
          if (!v38 || (v39 = *v38) == 0)
          {
LABEL_58:
            v93 = 0x8E38E38E38E38E39 * ((v83 - v82) >> 3);
            v44 = sub_3AFEE8(*a1);
            sub_508C3C(v32, v44, &v86);
            v45 = v83;
            if (v83 >= v84)
            {
              v83 = sub_F1A1BC(&v82, &v86);
              if (SHIBYTE(v91) < 0)
              {
                operator delete(v90);
                if (SHIBYTE(v88) < 0)
                {
LABEL_63:
                  operator delete(__p);
                }
              }

              else if (SHIBYTE(v88) < 0)
              {
                goto LABEL_63;
              }
            }

            else
            {
              *v83 = v86;
              v46 = __p;
              *(v45 + 3) = v88;
              *(v45 + 8) = v46;
              v88 = 0;
              __p = 0uLL;
              v45[32] = v89;
              v47 = v90;
              *(v45 + 7) = v91;
              *(v45 + 40) = v47;
              v91 = 0;
              v90 = 0uLL;
              v45[64] = v92;
              v83 = v45 + 72;
              if (SHIBYTE(v88) < 0)
              {
                goto LABEL_63;
              }
            }

            sub_F1A3BC(v79, &v85, &v85, &v93);
            v48 = v93;
            v31 = v77;
            v49 = v78;
            if (v77 >= v78)
            {
              goto LABEL_65;
            }

LABEL_29:
            *v31++ = v48;
            goto LABEL_30;
          }

          if (v36.u32[0] < 2uLL)
          {
            while (1)
            {
              v41 = v39[1];
              if (v41 == v35)
              {
                if (*(v39 + 4) == v32 && *(v39 + 5) == HIDWORD(v32))
                {
                  goto LABEL_78;
                }
              }

              else if ((v41 & (v79[1] - 1)) != v37)
              {
                goto LABEL_58;
              }

              v39 = *v39;
              if (!v39)
              {
                goto LABEL_58;
              }
            }
          }

          while (1)
          {
            v43 = v39[1];
            if (v43 == v35)
            {
              if (*(v39 + 4) == v32 && *(v39 + 5) == HIDWORD(v32))
              {
LABEL_78:
                v48 = v39[3];
                v49 = v78;
                if (v31 < v78)
                {
                  goto LABEL_29;
                }

LABEL_65:
                v50 = v76;
                v51 = v31 - v76;
                v52 = (v31 - v76) >> 3;
                v53 = v52 + 1;
                if ((v52 + 1) >> 61)
                {
                  sub_1794();
                }

                v54 = v49 - v76;
                if (v54 >> 2 > v53)
                {
                  v53 = v54 >> 2;
                }

                if (v54 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v55 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v53;
                }

                if (v55)
                {
                  if (!(v55 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v56 = v52;
                v57 = (8 * v52);
                v58 = &v57[-v56];
                *v57 = v48;
                v31 = v57 + 1;
                memcpy(v58, v50, v51);
                v76 = v58;
                v77 = v31;
                v78 = 0;
                if (v50)
                {
                  operator delete(v50);
                }

LABEL_30:
                v77 = v31;
                ++v30;
                goto LABEL_31;
              }
            }

            else
            {
              if (v43 >= v79[1])
              {
                v43 %= v79[1];
              }

              if (v43 != v37)
              {
                goto LABEL_58;
              }
            }

            v39 = *v39;
            if (!v39)
            {
              goto LABEL_58;
            }
          }
        }

        v59 = v74[11];
        if (v59 && (v60 = *(v74 + 20), v60 < *v59))
        {
          *(v74 + 20) = v60 + 1;
          v61 = *&v59[2 * v60 + 2];
        }

        else
        {
          sub_141C0C0(v74[9]);
          v61 = sub_19593CC((v74 + 9), v62);
        }

        sub_F23C80(v28, &v76, v61);
        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v28 += 71;
        if (v28 != v75)
        {
          continue;
        }

        break;
      }

      v63 = v82;
      v64 = v83;
      if (v82 != v83)
      {
        do
        {
          v65 = v74[8];
          if (v65 && (v66 = *(v74 + 14), v66 < *v65))
          {
            *(v74 + 14) = v66 + 1;
            v67 = *&v65[2 * v66 + 2];
          }

          else
          {
            v68 = sub_141C160(v74[6]);
            v67 = sub_19593CC((v74 + 6), v68);
          }

          sub_F23B10(v63, v67);
          v63 += 72;
        }

        while (v63 != v64);
        v63 = v82;
      }

      if (v63)
      {
        v69 = v83;
        v70 = v63;
        if (v83 == v63)
        {
LABEL_103:
          v83 = v63;
          operator delete(v70);
          goto LABEL_104;
        }

        while (2)
        {
          if (*(v69 - 9) < 0)
          {
            operator delete(*(v69 - 4));
            if (*(v69 - 41) < 0)
            {
              goto LABEL_101;
            }
          }

          else if (*(v69 - 41) < 0)
          {
LABEL_101:
            operator delete(*(v69 - 8));
          }

          v69 -= 72;
          if (v69 == v63)
          {
            v70 = v82;
            goto LABEL_103;
          }

          continue;
        }
      }

LABEL_104:
      v71 = v80[0];
      if (v80[0])
      {
        do
        {
          v72 = *v71;
          operator delete(v71);
          v71 = v72;
        }

        while (v72);
      }

      v73 = v79[0];
      v79[0] = 0;
      if (v73)
      {
        operator delete(v73);
      }
    }
  }
}