void sub_BB6F34(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = sub_A520DC(a3);
  v8 = sub_A51E58(a3, 0);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = 10 * (HIDWORD(v7) - HIDWORD(v8));
  }

  if (HIDWORD(v7) == 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_A51E58(a3, 0);
  v12 = sub_A520DC(a3);
  if (!v10)
  {
    return;
  }

  v13 = v12;
  if (*(a1 + 24) == 1)
  {
    v14 = sub_A51E58(a3, 0);
    for (i = a3[25]; i != a3[26]; i += 9)
    {
      if (!*(i + 24))
      {
        v17 = *i;
        if (*i != i[1])
        {
          v18 = *(v17 + 160);
          v19 = *(v17 + 44);
          if (!v18 && v19 == -1)
          {
            v21 = 0;
            goto LABEL_21;
          }
        }
      }
    }

    v21 = 0x100000000;
LABEL_21:
    v22 = v21 | v15;
    v23 = a3[29];
    v24 = a3[30];
    v88 = v13;
    v90 = v11;
    if (v23 >= v24)
    {
      v26 = a3[28];
      v27 = v23 - v26;
      v28 = (v23 - v26) >> 4;
      v29 = v28 + 1;
      if ((v28 + 1) >> 60)
      {
LABEL_107:
        sub_1794();
      }

      v30 = v24 - v26;
      if (v30 >> 3 > v29)
      {
        v29 = v30 >> 3;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v31 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (!(v31 >> 60))
        {
          operator new();
        }

LABEL_108:
        sub_1808();
      }

      v32 = 16 * v28;
      *v32 = v14;
      *(v32 + 8) = v22;
      *(v32 + 12) = BYTE4(v22);
      v25 = (16 * v28 + 16);
      v14 = memcpy(0, v26, v27);
      a3[28] = 0;
      a3[29] = v25;
      a3[30] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v23 = v14;
      *(v23 + 8) = v22;
      *(v23 + 12) = BYTE4(v22);
      v25 = (v23 + 16);
    }

    a3[29] = v25;
    v33 = *a4;
    v34 = a4[1];
    if (*a4 != v34)
    {
      if (v10 < 0)
      {
        v35 = -5;
      }

      else
      {
        v35 = 5;
      }

      v36 = (v10 / 10 + (((103 * (v35 + v10 % 10)) >> 15) & 1) + ((103 * (v35 + v10 % 10)) >> 10));
      do
      {
        if ((*(v33 + 8) - *(v33 + 4)) / v36 <= *(a1 + 16))
        {
          v14 = sub_BB7FB0(v14, a3, v33);
          v38 = a3[29];
          v39 = a3[30];
          if (v38 < v39)
          {
            *v38 = v14;
            *(v38 + 8) = v37;
            *(v38 + 12) = BYTE4(v37);
            v25 = (v38 + 16);
          }

          else
          {
            v40 = a3[28];
            v41 = v38 - v40;
            v42 = (v38 - v40) >> 4;
            v43 = v42 + 1;
            if ((v42 + 1) >> 60)
            {
              goto LABEL_107;
            }

            v44 = v39 - v40;
            if (v44 >> 3 > v43)
            {
              v43 = v44 >> 3;
            }

            if (v44 >= 0x7FFFFFFFFFFFFFF0)
            {
              v45 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v43;
            }

            if (v45)
            {
              if (!(v45 >> 60))
              {
                operator new();
              }

              goto LABEL_108;
            }

            v46 = 16 * v42;
            *v46 = v14;
            *(v46 + 8) = v37;
            *(v46 + 12) = BYTE4(v37);
            v25 = (16 * v42 + 16);
            v14 = memcpy(0, v40, v41);
            a3[28] = 0;
            a3[29] = v25;
            a3[30] = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          a3[29] = v25;
        }

        v33 += 40;
      }

      while (v33 != v34);
    }

    v47 = a3[28];
    v48 = 126 - 2 * __clz((v25 - v47) >> 4);
    if (v25 == v47)
    {
      v49 = 0;
    }

    else
    {
      v49 = v48;
    }

    sub_BBCF54(v47, v25, v49, 1);
    v51 = a3[28];
    v50 = a3[29];
    if (v51 == v50)
    {
      v13 = v88;
      v11 = v90;
    }

    else
    {
      v52 = v51 - 16;
      v13 = v88;
      v11 = v90;
      do
      {
        if (v52 + 32 == v50)
        {
          goto LABEL_68;
        }

        v53 = *(v52 + 20);
        v54 = *(v52 + 36);
        v52 += 16;
      }

      while (v53 != v54);
      v55 = v52 + 32;
      if (v52 + 32 != v50)
      {
        do
        {
          if (*(v52 + 4) != *(v55 + 4))
          {
            v56 = *(v55 + 5);
            *(v52 + 16) = *v55;
            v52 += 16;
            *(v52 + 5) = v56;
          }

          v55 += 16;
        }

        while (v55 != v50);
        v50 = a3[29];
      }

      if (v52 + 16 != v50)
      {
        a3[29] = v52 + 16;
        if (*(a1 + 25) != 1)
        {
          return;
        }

        goto LABEL_69;
      }
    }
  }

LABEL_68:
  if (*(a1 + 25) != 1)
  {
    return;
  }

LABEL_69:
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v57 = a4[1] - *a4;
  if (v57)
  {
    v58 = 0;
    v89 = HIDWORD(v13);
    v91 = HIDWORD(v11);
    v59 = v57 >> 3;
    if (v10 < 0)
    {
      v60 = -5;
    }

    else
    {
      v60 = 5;
    }

    v92 = 0xCCCCCCCCCCCCCCCDLL * v59;
    v61 = (v10 / 10 + (((103 * (v60 + v10 % 10)) >> 15) & 1) + ((103 * (v60 + v10 % 10)) >> 10));
    while (1)
    {
      v72 = v112;
      v73 = v113;
      if ((0x14C1BACF914C1BADLL * ((v113 - v112) >> 3)) >= *(a1 + 32))
      {
        goto LABEL_97;
      }

      v74 = v58;
      if (*(a2 + 184))
      {
        v74 = ~v58 - 0x3333333333333333 * ((a4[1] - *a4) >> 3);
      }

      v75 = sub_BB8248(a4, v74);
      v76 = v75;
      if ((*(v75 + 8) - *(v75 + 4)) / v61 <= *(a1 + 16))
      {
        if ((*(a1 + 40) & 1) == 0)
        {
          v77 = *(v75 + 24) - *(v75 + 16);
          if (!v77)
          {
            goto LABEL_76;
          }

          v78 = 0;
          v79 = v77 >> 6;
          v80 = 1;
          while (1)
          {
            v81 = *(v76 + 16);
            v82 = sub_A532F0(a3 + 25, v80);
            v83 = sub_A846B8(v82, *(v81 + v78));
            if (*(v83 + 160))
            {
              sub_5AF20();
            }

            if (*(v83 + 44) == -1)
            {
              break;
            }

            v80 += 2;
            v78 += 64;
            if (!--v79)
            {
              goto LABEL_76;
            }
          }
        }

        if (*(a2 + 184) == 1)
        {
          if (*(v76 + 8) < v89)
          {
            goto LABEL_93;
          }
        }

        else if (*(a2 + 184) || *(v76 + 4) > v91)
        {
LABEL_93:
          sub_BB8464(a1, a3, v76, v94);
          v84 = v113;
          if (v113 < v114)
          {
            v62 = v94[0];
            v63 = v94[2];
            *(v113 + 16) = v94[1];
            *(v84 + 32) = v63;
            *v84 = v62;
            v64 = v94[3];
            v65 = v94[4];
            v66 = v94[5];
            *(v84 + 96) = v95;
            *(v84 + 64) = v65;
            *(v84 + 80) = v66;
            *(v84 + 48) = v64;
            *(v84 + 104) = v96;
            v67 = v97;
            *(v84 + 128) = v98;
            *(v84 + 112) = v67;
            *(v84 + 136) = v99;
            v68 = v100;
            v69 = v102;
            *(v84 + 160) = v101;
            *(v84 + 176) = v69;
            *(v84 + 144) = v68;
            *(v84 + 200) = 0;
            *(v84 + 208) = 0;
            *(v84 + 216) = 0;
            *(v84 + 224) = 0;
            *(v84 + 200) = v104;
            *(v84 + 216) = v105;
            *(v84 + 232) = 0;
            *(v84 + 240) = 0;
            *(v84 + 224) = v106;
            *(v84 + 248) = 0;
            *(v84 + 256) = 0;
            *(v84 + 264) = 0;
            *(v84 + 272) = 0;
            *(v84 + 248) = v108;
            v70 = v109;
            *(v84 + 240) = v107;
            v98 = 0;
            v97 = 0uLL;
            *(v84 + 192) = v103;
            v104 = 0uLL;
            v105 = 0;
            v106 = 0uLL;
            v107 = 0;
            *(v84 + 264) = v70;
            v108 = 0uLL;
            *(v84 + 280) = 0;
            *(v84 + 288) = 0;
            *(v84 + 272) = v110;
            *(v84 + 288) = v111;
            v109 = 0;
            v110 = 0uLL;
            v111 = 0;
            v71 = v84 + 296;
          }

          else
          {
            sub_A7C8B8(&v112, v94);
          }

          v113 = v71;
          sub_A7847C(v94);
        }
      }

LABEL_76:
      if (++v58 == v92)
      {
        v72 = v112;
        v73 = v113;
        goto LABEL_97;
      }
    }
  }

  v73 = 0;
  v72 = 0;
LABEL_97:
  sub_AA9EA4(v72, v73, (a2 + 8));
  v85 = v112;
  if (v112)
  {
    v86 = v113;
    v87 = v112;
    if (v113 != v112)
    {
      do
      {
        v86 = sub_A7847C(v86 - 296);
      }

      while (v86 != v85);
      v87 = v112;
    }

    v113 = v85;
    operator delete(v87);
  }
}

void sub_BB7734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_A7847C(va);
  sub_A7850C(v11 - 128);
  _Unwind_Resume(a1);
}

void sub_BB77A0(void *a9@<X8>, char a10, char a11)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  operator new();
}

void sub_BB7CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  v25 = *v23;
  if (!*v23)
  {
    _Unwind_Resume(exception_object);
  }

  *(v23 + 8) = v25;
  operator delete(v25);
  _Unwind_Resume(exception_object);
}

void sub_BB7DEC(uint64_t a1, __int128 **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  v7 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 2);
  if (v6 < 7681)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 2);
    while (1)
    {
      v9 = operator new(60 * v8, &std::nothrow);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  sub_BB9FC4(v4, v5, &v22, v7, v12, v8);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *a2;
  v14 = a2[1];
  if (*a2 == v14)
  {
LABEL_19:
    if (v13 != a2[1])
    {
LABEL_22:
      a2[1] = v13;
    }
  }

  else
  {
    do
    {
      v15 = (v13 + 60);
      if ((v13 + 60) == v14)
      {
        v13 = v14;
        goto LABEL_19;
      }

      v16 = sub_BBB20C(a1, v13, v13 + 60);
      v13 = v15;
    }

    while (!v16);
    v17 = (v15 + 60);
    v18 = v15 - 60;
    while (v17 != v14)
    {
      if (!sub_BBB20C(a1, v18, v17))
      {
        v19 = *v17;
        v20 = v17[1];
        v21 = v17[2];
        *(v18 + 101) = *(v17 + 41);
        *(v18 + 92) = v21;
        *(v18 + 76) = v20;
        *(v18 + 60) = v19;
        v18 += 60;
      }

      v17 = (v17 + 60);
    }

    v13 = (v18 + 60);
    if ((v18 + 60) != a2[1])
    {
      goto LABEL_22;
    }
  }
}

void sub_BB7F98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_BB7FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_BB8AC0((a3 + 16), 0);
  v6 = sub_A532F0((a2 + 200), 0);
  v7 = sub_A846B8(v6, 0);
  if (v7[40] != 1)
  {
    sub_5AF20();
  }

  v8 = *(v5 + 8);
  v9 = HIDWORD(v8);
  v11 = v7[1];
  v10 = v7[2];
  if (v10 != v11)
  {
    v12 = *(v5 + 4);
    if (v9 == 0x7FFFFFFF || v12 == 0x7FFFFFFF)
    {
      v14 = v12 / -10;
      v15 = v12 % 10;
      v16 = 0x7FFFFFFF;
    }

    else
    {
      v14 = v12 / -10;
      v15 = v12 % 10;
      if (v12 < 0)
      {
        v17 = -5;
      }

      else
      {
        v17 = 5;
      }

      v16 = v14 + HIDWORD(v8) + (((-103 * (v17 + v15)) >> 15) & 1) + ((-103 * (v17 + v15)) >> 10);
    }

    if (v12 < 0)
    {
      v18 = -5;
    }

    else
    {
      v18 = 5;
    }

    v19 = (((-103 * (v15 + v18)) >> 15) & 1) + ((-103 * (v15 + v18)) >> 10);
    v20 = 10 * (v10 - v11);
    v9 = 0x7FFFFFFFLL;
    if (v11 != 0x7FFFFFFF && v10 != 0x7FFFFFFF && v16 != 0x7FFFFFFF)
    {
      v21 = 0xA00000000 * (v10 - v11);
      v22 = 10 * (v10 - v11) / -10;
      v23 = 10 * (v10 - v11) % 10;
      if (v21 < 0)
      {
        v24 = -5;
      }

      else
      {
        v24 = 5;
      }

      v9 = v22 + v16 + (((-103 * (v23 + v24)) >> 15) & 1) + ((-103 * (v23 + v24)) >> 10);
    }

    if (v20 < 0)
    {
      v25 = -5;
    }

    else
    {
      v25 = 5;
    }

    v26 = -103 * (v25 + v20 % 10);
    LODWORD(v8) = v20 / -10 + v8 + v14 + v19 + ((v26 >> 15) & 1) + (v26 >> 10);
  }

  v27 = *(a3 + 16);
  for (i = *(a3 + 24); v27 != i; v27 += 64)
  {
    if (*(v27 + 44) == -1)
    {
      break;
    }
  }

  return v8 | (v9 << 32);
}

unint64_t sub_BB8248(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 40 * a2;
}

void sub_BB8384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

unint64_t sub_BB8464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 2) = 0;
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  *(a4 + 16) = -NAN;
  *(a4 + 24) = 0x7FFFFFFF;
  *(a4 + 28) = 0;
  *(a4 + 32) = 0x8000000080000000;
  *(a4 + 40) = 0;
  *(a4 + 44) = 0x8000000080000000;
  *(a4 + 52) = 0x7FFFFFFF;
  *(a4 + 56) = 0;
  *(a4 + 60) = 0x8000000080000000;
  *(a4 + 68) = 0;
  *(a4 + 72) = 0x8000000080000000;
  *(a4 + 80) = 0;
  *(a4 + 84) = 0xFFFFFFFF00000000;
  *(a4 + 92) = -1;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0x7FFFFFFF;
  *(a4 + 200) = 0u;
  v7 = (a4 + 200);
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  *(a4 + 136) = 100;
  *(a4 + 144) = -1;
  __asm { FMOV            V1.2D, #1.0 }

  *(a4 + 152) = _Q1;
  *(a4 + 168) = _Q1;
  *(a4 + 184) = _Q1;
  *(a4 + 216) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 248) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  v13 = *(a1 + 48);
  if (sub_68312C(v13 + 3896) && *(v13 + 3944))
  {
    v14 = 1;
  }

  else
  {
    v15 = *(a1 + 48);
    v14 = sub_4C2B90(v15 + 3896) && *(v15 + 3960) != 0;
  }

  *(a4 + 1) = v14;
  v16 = *(a1 + 48);
  if (sub_4C2B90(v16 + 3896))
  {
    v17 = 2 * (*(v16 + 3960) != 0);
  }

  else
  {
    v17 = 0;
  }

  *(a4 + 4) = v17;
  *(a4 + 8) = v17;
  v20 = *(a2 + 200);
  v19 = (a2 + 200);
  v18 = v20;
  *(a4 + 13) = 1;
  *(a4 + 16) = *(v19 - 46);
  v21 = *(a4 + 208);
  if (v21 >= *(a4 + 216))
  {
    v22 = sub_BBB944(v7, v18);
  }

  else
  {
    sub_A7C79C(v21, v18);
    v22 = v21 + 72;
  }

  *(a4 + 208) = v22;
  v23 = *(a3 + 24) - *(a3 + 16);
  if (v23)
  {
    v24 = 0;
    v59 = v23 >> 6;
    do
    {
      v25 = *(a3 + 16);
      v26 = sub_A532F0(v19, (2 * v24) | 1);
      v27 = (v25 + (v24 << 6));
      v28 = sub_A846B8(v26, *v27);
      if (v28[40])
      {
        sub_5AF20();
      }

      v29 = sub_A532F0(v19, 2 * v24 + 2);
      v30 = sub_A846B8(v29, *v28);
      if (*(v30 + 160) != 1)
      {
        sub_5AF20();
      }

      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v93 = 0x7FFFFFFF;
      v95 = 0;
      v96 = 0;
      v94 = 0;
      v97 = 1;
      v98 = 0x8000000080000000;
      v99 = 0;
      DWORD1(v82) = v27[1];
      v31 = *(v27 + 1);
      v83 = *(v27 + 8);
      *(&v82 + 1) = v31;
      v32 = *(v27 + 5);
      v85 = *(v27 + 14);
      v84 = v32;
      LODWORD(v82) = 0;
      v89 = *(v27 + 13);
      v86 = *(v27 + 4);
      v33 = *(v27 + 5);
      v88 = v27[12];
      v87 = v33;
      v73 = 0;
      *v72 = 0u;
      v76 = 0;
      v77 = 0;
      v75 = 0;
      v78 = 1;
      v79 = 0x8000000080000000;
      v80 = 0;
      v81 = 0;
      v74 = 0;
      v34 = sub_A7B9A8(v72, &v82);
      v35 = *(v30 + 4);
      v36 = *(v30 + 8);
      v72[1] = v34;
      v71[0] = *v30;
      *(v71 + 12) = *(v30 + 12);
      DWORD1(v71[0]) = HIDWORD(v84);
      DWORD2(v71[0]) = v36 + HIDWORD(v84) - v35;
      v62 = 0;
      *v61 = 0u;
      v65 = 0;
      v66 = 0;
      __p = 0;
      v67 = 1;
      v68 = 0x8000000080000000;
      v69 = 0;
      v70 = 0;
      v63 = 1;
      v61[1] = sub_BA6FAC(v61, v71);
      v37 = *(a4 + 208);
      if (v37 >= *(a4 + 216))
      {
        v38 = sub_BA71A0(v7, v72);
        *(a4 + 208) = v38;
        if (v38 < *(a4 + 216))
        {
LABEL_29:
          sub_A33054(v38, v61);
          *(a4 + 208) = v38 + 72;
          v39 = __p;
          if (!__p)
          {
            goto LABEL_22;
          }

LABEL_21:
          v65 = v39;
          operator delete(v39);
          goto LABEL_22;
        }
      }

      else
      {
        sub_A33054(*(a4 + 208), v72);
        v38 = v37 + 72;
        *(a4 + 208) = v38;
        if (v38 < *(a4 + 216))
        {
          goto LABEL_29;
        }
      }

      *(a4 + 208) = sub_BA71A0(v7, v61);
      v39 = __p;
      if (__p)
      {
        goto LABEL_21;
      }

LABEL_22:
      v40 = v61[0];
      if (v61[0])
      {
        v41 = v61[1];
        v42 = v61[0];
        if (v61[1] != v61[0])
        {
          do
          {
            v43 = v41 - 168;
            v44 = *(v41 - 2);
            if (v44 != -1)
            {
              (off_26712B0[v44])(v100, v41 - 168);
            }

            *(v41 - 2) = -1;
            v41 -= 168;
          }

          while (v43 != v40);
          v42 = v61[0];
        }

        v61[1] = v40;
        operator delete(v42);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      v45 = v72[0];
      if (v72[0])
      {
        v46 = v72[1];
        v47 = v72[0];
        if (v72[1] != v72[0])
        {
          do
          {
            v48 = v46 - 168;
            v49 = *(v46 - 2);
            if (v49 != -1)
            {
              (off_26712B0[v49])(v61, v46 - 168);
            }

            *(v46 - 2) = -1;
            v46 -= 168;
          }

          while (v48 != v45);
          v47 = v72[0];
        }

        v72[1] = v45;
        operator delete(v47);
      }

      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      if (*(&v91 + 1))
      {
        *&v92 = *(&v91 + 1);
        operator delete(*(&v91 + 1));
      }

      if (v90)
      {
        *(&v90 + 1) = v90;
        operator delete(v90);
      }

      ++v24;
    }

    while (v24 != v59);
  }

  v50 = **v7;
  if (v50[40] != 1)
  {
    sub_5AF20();
  }

  result = sub_A8449C(v7, 1uLL);
  v52 = *result;
  if (*(*result + 160))
  {
    sub_5AF20();
  }

  v53 = *(v52 + 12);
  v54 = *(v52 + 4);
  v55 = v54 / -10;
  v56 = v54 % 10;
  if (v54 < 0)
  {
    v57 = -5;
  }

  else
  {
    v57 = 5;
  }

  v58 = v55 + v53 + (((-103 * (v57 + v56)) >> 15) & 1) + ((-103 * (v57 + v56)) >> 10);
  v50[1] = v50[1] - v50[2] + v58;
  v50[2] = v58;
  return result;
}

void sub_BB8A30(_Unwind_Exception *a1)
{
  *(v1 + 208) = v2;
  sub_A7847C(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_BB8AC0(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 6);
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

  return *a1 + (a2 << 6);
}

void sub_BB8BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

BOOL sub_BB8CBC(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, unint64_t a5, unsigned int a6, unsigned int a7)
{
  v8 = a6;
  v10 = a3;
  if (a3 <= a4 && a6 <= a7)
  {
    while (1)
    {
      v14 = sub_A57920((a1 + 4136), a2);
      v15 = (v14 - *v14);
      if (*v15 >= 9u && (v16 = v15[4]) != 0)
      {
        if ((*(sub_A571D4((v14 + v16 + *(v14 + v16)), v10) + 15) & 2) != 0)
        {
          goto LABEL_14;
        }
      }

      else if ((*(sub_A571D4(0, v10) + 15) & 2) != 0)
      {
        goto LABEL_14;
      }

      v17 = sub_A57920((a1 + 4136), a2);
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        if (*(sub_A571D4((v17 + v19 + *(v17 + v19)), v10) + 15))
        {
          goto LABEL_14;
        }

LABEL_5:
        if (++v10 > a4)
        {
          break;
        }
      }

      else
      {
        if ((*(sub_A571D4(0, v10) + 15) & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_14:
        v20 = sub_A57920((a1 + 4136), a5);
        v21 = (v20 - *v20);
        if (*v21 >= 9u && (v22 = v21[4]) != 0)
        {
          if ((*(sub_A571D4((v20 + v22 + *(v20 + v22)), v8) + 15) & 2) != 0)
          {
            goto LABEL_24;
          }
        }

        else if ((*(sub_A571D4(0, v8) + 15) & 2) != 0)
        {
          goto LABEL_24;
        }

        v23 = sub_A57920((a1 + 4136), a5);
        v24 = (v23 - *v23);
        if (*v24 >= 9u && (v25 = v24[4]) != 0)
        {
          if ((*(sub_A571D4((v23 + v25 + *(v23 + v25)), v8) + 15) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if ((*(sub_A571D4(0, v8) + 15) & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_24:
        v26 = sub_A57920((a1 + 4136), a2);
        v27 = (v26 - *v26);
        if (*v27 >= 9u && (v28 = v27[4]) != 0)
        {
          v29 = (v26 + v28 + *(v26 + v28));
        }

        else
        {
          v29 = 0;
        }

        v30 = *sub_A571D4(v29, v10);
        v31 = sub_A57920((a1 + 4136), a5);
        v32 = (v31 - *v31);
        if (*v32 >= 9u && (v33 = v32[4]) != 0)
        {
          if (v30 != *sub_A571D4((v31 + v33 + *(v31 + v33)), v8))
          {
            return 0;
          }
        }

        else if (v30 != *sub_A571D4(0, v8))
        {
          return 0;
        }

        ++v10;
LABEL_34:
        ++v8;
        if (v10 > a4 || v8 > a7)
        {
          break;
        }
      }
    }
  }

  return a4 + 1 == v10 && a7 + 1 == v8;
}

void sub_BB8F88(uint64_t a1@<X0>, __int128 *a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, signed int a5@<W4>, int a6@<W5>, int a7@<W6>, unsigned int a8@<W7>, uint64_t a9@<X8>, unsigned int a10)
{
  v39 = 0uLL;
  v40 = 0;
  *(a2 + 4) = *(a2 + 3) + 16 * a3;
  if (*(a2 + 96) == 1)
  {
    v19 = sub_A7A1E8(a1, a2, a5, 2u);
  }

  else
  {
    v19 = sub_A7A710(a2, a5, 1);
  }

  if (v19)
  {
    v20 = a2[5];
    v34 = a2[4];
    v35 = v20;
    v36 = a2[6];
    v21 = a2[1];
    v30 = *a2;
    v31 = v21;
    v22 = a2[3];
    v32 = a2[2];
    v33 = v22;
    if (a7 < 0)
    {
      v23 = -5;
    }

    else
    {
      v23 = 5;
    }

    sub_BB95EC(a1, &v30, a3, a4, a7 / 10 + a5 + (((103 * (v23 + a7 % 10)) >> 15) & 1) + ((103 * (v23 + a7 % 10)) >> 10), a10, &__p);
    sub_BB92D8(&v39, *(&v39 + 1), __p, v38, 0xEEEEEEEEEEEEEEEFLL * ((v38 - __p) >> 2));
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    sub_A7B558(a2, 0);
    goto LABEL_15;
  }

  if (*(a2 + 96) == 1)
  {
    v24 = sub_A84F48(a1, a2, a5, 2u);
  }

  else
  {
    v24 = sub_A8552C(a2, a5, 1);
  }

  if (v24)
  {
LABEL_15:
    v25 = a2[5];
    v34 = a2[4];
    v35 = v25;
    v36 = a2[6];
    v26 = a2[1];
    v30 = *a2;
    v31 = v26;
    v27 = a2[3];
    v32 = a2[2];
    v33 = v27;
    if (a6 < 0)
    {
      v28 = -5;
    }

    else
    {
      v28 = 5;
    }

    sub_BB9AD8(a1, &v30, a3, a4, a6 / -10 + a5 + (((-103 * (v28 + a6 % 10)) >> 15) & 1) + ((-103 * (v28 + a6 % 10)) >> 10), a8, &__p);
    sub_BB92D8(&v39, *(&v39 + 1), __p, v38, 0xEEEEEEEEEEEEEEEFLL * ((v38 - __p) >> 2));
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    *a9 = v39;
    *(a9 + 16) = v40;
    return;
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (v39)
  {
    *(&v39 + 1) = v39;

    operator delete(v39);
  }
}

void sub_BB9280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v29 = *(v27 - 112);
    if (!v29)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v29 = *(v27 - 112);
    if (!v29)
    {
      goto LABEL_3;
    }
  }

  *(v27 - 104) = v29;
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

char *sub_BB92D8(size_t *a1, char *__dst, _OWORD *__src, __int128 *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a1[1];
  v7 = a1[2];
  if ((0xEEEEEEEEEEEEEEEFLL * ((v7 - v6) >> 2)) < a5)
  {
    v8 = *a1;
    v9 = a5 - 0x1111111111111111 * (&v6[-*a1] >> 2);
    if (v9 > 0x444444444444444)
    {
      sub_1794();
    }

    v10 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - v8) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x222222222222222)
    {
      v11 = 0x444444444444444;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x444444444444444)
      {
        operator new();
      }

      sub_1808();
    }

    v35 = 4 * ((__dst - v8) >> 2);
    v36 = 60 * a5;
    v37 = v35 + 60 * a5;
    v38 = v35;
    do
    {
      v39 = *__src;
      v40 = __src[1];
      v41 = __src[2];
      *(v38 + 44) = *(__src + 44);
      v38[1] = v40;
      v38[2] = v41;
      *v38 = v39;
      v38 = (v38 + 60);
      __src = (__src + 60);
      v36 -= 60;
    }

    while (v36);
    v42 = a1[1] - __dst;
    memcpy((v35 + 60 * a5), __dst, v42);
    v44 = v37 + v42;
    a1[1] = v5;
    v45 = *a1;
    v46 = &v5[-*a1];
    v47 = v35 - v46;
    memcpy((v35 - v46), *a1, v46);
    *a1 = v47;
    a1[1] = v44;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v35;
  }

  v12 = v6 - __dst;
  if ((0xEEEEEEEEEEEEEEEFLL * ((v6 - __dst) >> 2)) >= a5)
  {
    v27 = &__dst[60 * a5];
    v28 = &v6[-60 * a5];
    for (i = a1[1]; v28 < v6; v28 += 60)
    {
      v30 = *v28;
      v31 = *(v28 + 1);
      v32 = *(v28 + 2);
      *(i + 44) = *(v28 + 44);
      i[1] = v31;
      i[2] = v32;
      *i = v30;
      i = (i + 60);
    }

    a1[1] = i;
    if (v6 != v27)
    {
      v33 = __src;
      v34 = a5;
      memmove(v27, __dst, v6 - v27 - 3);
      a5 = v34;
      __src = v33;
    }

    v26 = 60 * a5 - 3;
    goto LABEL_26;
  }

  v13 = (__src + v12);
  v14 = a1[1];
  for (j = v14; v13 != a4; v14 = (v14 + 60))
  {
    v16 = *v13;
    v17 = v13[1];
    v18 = v13[2];
    *(j + 44) = *(v13 + 44);
    j[1] = v17;
    j[2] = v18;
    *j = v16;
    j = (j + 60);
    v13 = (v13 + 60);
  }

  a1[1] = v14;
  if (v12 >= 1)
  {
    v19 = &__dst[60 * a5];
    v20 = (v14 - 60 * a5);
    for (k = v14; v20 < v6; v20 = (v20 + 60))
    {
      v22 = *v20;
      v23 = v20[1];
      v24 = v20[2];
      *(k + 44) = *(v20 + 44);
      k[1] = v23;
      k[2] = v24;
      *k = v22;
      k = (k + 60);
    }

    a1[1] = k;
    if (j != v19)
    {
      v25 = __src;
      memmove(&__dst[60 * a5], __dst, v14 - v19 - 3);
      __src = v25;
    }

    v26 = v12 - 3;
LABEL_26:
    memmove(v5, __src, v26);
  }

  return v5;
}

uint64_t sub_BB95EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, void **a7@<X8>)
{
  v61 = result;
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = *(a2 + 56);
  v7 = *(a2 + 64);
  if (v7 >= v8)
  {
    v9 = a3;
    v11 = a7;
    v12 = 0;
    v13 = 0;
    v65 = *(a2 + 88);
    v60 = (a2 + 104);
    v54 = a3;
    v53 = a5;
    do
    {
      if (v7 >= *(a2 + 72))
      {
        break;
      }

      v14 = v60;
      if (!*(a2 + 96))
      {
        v14 = v7;
      }

      v15 = (*(a2 + 16) + *(*(a2 + 16) - **(a2 + 16) + 6));
      if ((*(&v15[2 * v7[1] + 2 + 2 * ((*(a2 + 32) - *(a2 + 24)) >> 4)] + *v15) + *v14) > a5 && v13 >= a6)
      {
        break;
      }

      if (*(a2 + 96))
      {
        v63 = *(a2 + 100);
        v64 = *(a2 + 104);
      }

      else
      {
        v63 = -1;
        v64 = 0x7FFFFFFF;
      }

      v17 = sub_A57920((v61 + 4136), *(a2 + 88));
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v58 = v13;
      v21 = sub_A571D4(v20, v9)[2];
      v59 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2);
      v66 = sub_A56F04((v61 + 4136), v65, v54, v59);
      v67 = v22;
      v23 = sub_A57920((v61 + 4136), v65);
      v24 = (v23 - *v23);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v26 = (v23 + v25 + *(v23 + v25));
      }

      else
      {
        v26 = 0;
      }

      v27 = *(sub_A571D4(v26, v9) + 6);
      v28 = v63 == -1 ? 0x7FFFFFFF : v64;
      v29 = sub_A56700((v61 + 4184), &v66, v27, v28);
      v31 = v30;
      v66 = sub_A56F04((v61 + 4136), v65, a4, v59);
      v67 = v32;
      v33 = sub_A57920((v61 + 4136), v65);
      v34 = (v33 - *v33);
      if (*v34 >= 9u && (v35 = v34[4]) != 0)
      {
        v36 = (v33 + v35 + *(v33 + v35));
      }

      else
      {
        v36 = 0;
      }

      v37 = sub_A571D4(v36, a4);
      v38 = sub_A56A5C((v61 + 4184), &v66, *(v37 + 6), v28);
      v40 = 10 * v21;
      v41 = v11[2];
      if (v12 >= v41)
      {
        v42 = *v11;
        v43 = v12 - *v11;
        v44 = 0xEEEEEEEEEEEEEEEFLL * (v43 >> 2) + 1;
        if (v44 > 0x444444444444444)
        {
          sub_1794();
        }

        v45 = 0xEEEEEEEEEEEEEEEFLL * ((v41 - v42) >> 2);
        if (2 * v45 > v44)
        {
          v44 = 2 * v45;
        }

        if (v45 >= 0x222222222222222)
        {
          v46 = 0x444444444444444;
        }

        else
        {
          v46 = v44;
        }

        if (v46)
        {
          if (v46 <= 0x444444444444444)
          {
            operator new();
          }

          sub_1808();
        }

        v47 = 4 * (v43 >> 2);
        *v47 = v40;
        *(v47 + 4) = v29;
        *(v47 + 12) = v31;
        *(v47 + 16) = v38;
        *(v47 + 24) = v39;
        *(v47 + 28) = v65;
        *(v47 + 36) = v59;
        *(v47 + 40) = v63;
        *(v47 + 44) = v64;
        *(v47 + 48) = a3;
        *(v47 + 52) = a4;
        *(v47 + 56) = 1;
        v12 = (v47 + 60);
        v48 = (v47 - v43);
        memcpy((v47 - v43), v42, v43);
        *v11 = v48;
        v11[1] = v12;
        v11[2] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v12 = v40;
        *(v12 + 1) = v29;
        *(v12 + 6) = v31;
        *(v12 + 2) = v38;
        *(v12 + 12) = v39;
        *(v12 + 7) = v65;
        v12[9] = v59;
        v12[10] = v63;
        v12[11] = v64;
        v12[12] = v9;
        v12[13] = a4;
        *(v12 + 56) = 1;
        v12 += 15;
      }

      v11[1] = v12;
      v49 = v60;
      if (!*(a2 + 96))
      {
        v49 = *(a2 + 64);
      }

      v50 = *v49;
      v51 = (*(a2 + 16) + *(*(a2 + 16) - **(a2 + 16) + 6));
      v52 = *(&v51[2 * *(*(a2 + 64) + 4) + 2 + 2 * ((*(a2 + 32) - *(a2 + 24)) >> 4)] + *v51);
      result = sub_A7B02C(a2, 0);
      a5 = v53;
      v13 = v58;
      if (v52 + v50 > v53)
      {
        v13 = v58 + 1;
      }

      v8 = *(a2 + 56);
      v7 = *(a2 + 64);
      v11 = a7;
      v9 = a3;
    }

    while (v7 >= v8);
  }

  return result;
}

void sub_BB9AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *a14;
  if (*a14)
  {
    *(a14 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BB9AD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, void **a7@<X8>)
{
  v61 = result;
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = *(a2 + 56);
  v7 = *(a2 + 64);
  if (v7 >= v8)
  {
    v9 = a3;
    v11 = a7;
    v12 = 0;
    v13 = 0;
    v65 = *(a2 + 88);
    v60 = (a2 + 104);
    v54 = a3;
    v53 = a5;
    do
    {
      if (v7 >= *(a2 + 72))
      {
        break;
      }

      v14 = v60;
      if (!*(a2 + 96))
      {
        v14 = v7;
      }

      v15 = (*(a2 + 16) + *(*(a2 + 16) - **(a2 + 16) + 6));
      if ((*(&v15[2 * v7[1] + 2 + 2 * ((*(a2 + 32) - *(a2 + 24)) >> 4)] + *v15) + *v14) < a5 && v13 >= a6)
      {
        break;
      }

      if (*(a2 + 96))
      {
        v63 = *(a2 + 100);
        v64 = *(a2 + 104);
      }

      else
      {
        v63 = -1;
        v64 = 0x7FFFFFFF;
      }

      v17 = sub_A57920((v61 + 4136), *(a2 + 88));
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v58 = v13;
      v21 = sub_A571D4(v20, v9)[2];
      v59 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2);
      v66 = sub_A56F04((v61 + 4136), v65, v54, v59);
      v67 = v22;
      v23 = sub_A57920((v61 + 4136), v65);
      v24 = (v23 - *v23);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v26 = (v23 + v25 + *(v23 + v25));
      }

      else
      {
        v26 = 0;
      }

      v27 = *(sub_A571D4(v26, v9) + 6);
      v28 = v63 == -1 ? 0x7FFFFFFF : v64;
      v29 = sub_A56700((v61 + 4184), &v66, v27, v28);
      v31 = v30;
      v66 = sub_A56F04((v61 + 4136), v65, a4, v59);
      v67 = v32;
      v33 = sub_A57920((v61 + 4136), v65);
      v34 = (v33 - *v33);
      if (*v34 >= 9u && (v35 = v34[4]) != 0)
      {
        v36 = (v33 + v35 + *(v33 + v35));
      }

      else
      {
        v36 = 0;
      }

      v37 = sub_A571D4(v36, a4);
      v38 = sub_A56A5C((v61 + 4184), &v66, *(v37 + 6), v28);
      v40 = 10 * v21;
      v41 = v11[2];
      if (v12 >= v41)
      {
        v42 = *v11;
        v43 = v12 - *v11;
        v44 = 0xEEEEEEEEEEEEEEEFLL * (v43 >> 2) + 1;
        if (v44 > 0x444444444444444)
        {
          sub_1794();
        }

        v45 = 0xEEEEEEEEEEEEEEEFLL * ((v41 - v42) >> 2);
        if (2 * v45 > v44)
        {
          v44 = 2 * v45;
        }

        if (v45 >= 0x222222222222222)
        {
          v46 = 0x444444444444444;
        }

        else
        {
          v46 = v44;
        }

        if (v46)
        {
          if (v46 <= 0x444444444444444)
          {
            operator new();
          }

          sub_1808();
        }

        v47 = 4 * (v43 >> 2);
        *v47 = v40;
        *(v47 + 4) = v29;
        *(v47 + 12) = v31;
        *(v47 + 16) = v38;
        *(v47 + 24) = v39;
        *(v47 + 28) = v65;
        *(v47 + 36) = v59;
        *(v47 + 40) = v63;
        *(v47 + 44) = v64;
        *(v47 + 48) = a3;
        *(v47 + 52) = a4;
        *(v47 + 56) = 1;
        v12 = (v47 + 60);
        v48 = (v47 - v43);
        memcpy((v47 - v43), v42, v43);
        *v11 = v48;
        v11[1] = v12;
        v11[2] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v12 = v40;
        *(v12 + 1) = v29;
        *(v12 + 6) = v31;
        *(v12 + 2) = v38;
        *(v12 + 12) = v39;
        *(v12 + 7) = v65;
        v12[9] = v59;
        v12[10] = v63;
        v12[11] = v64;
        v12[12] = v9;
        v12[13] = a4;
        *(v12 + 56) = 1;
        v12 += 15;
      }

      v11[1] = v12;
      v49 = v60;
      if (!*(a2 + 96))
      {
        v49 = *(a2 + 64);
      }

      v50 = *v49;
      v51 = (*(a2 + 16) + *(*(a2 + 16) - **(a2 + 16) + 6));
      v52 = *(&v51[2 * *(*(a2 + 64) + 4) + 2 + 2 * ((*(a2 + 32) - *(a2 + 24)) >> 4)] + *v51);
      result = sub_A7B558(a2, 0);
      a5 = v53;
      v13 = v58;
      if (v52 + v50 < v53)
      {
        v13 = v58 + 1;
      }

      v8 = *(a2 + 56);
      v7 = *(a2 + 64);
      v11 = a7;
      v9 = a3;
    }

    while (v7 >= v8);
  }

  return result;
}

void sub_BB9F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *a14;
  if (*a14)
  {
    *(a14 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

double sub_BB9FC4(uint64_t result, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5, int64_t a6)
{
  if (a4 < 2)
  {
    return *&v8;
  }

  if (a4 != 2)
  {
    if (a4 <= 128)
    {

      sub_BBA2F4(result, a2);
      return *&v8;
    }

    v15 = a4 >> 1;
    v16 = (result + 60 * (a4 >> 1));
    v17 = a4 - (a4 >> 1);
    v18 = result;
    if (a4 > a6)
    {
      sub_BB9FC4(result, v16, a3, a4 >> 1, a5, a6);
      sub_BB9FC4(v16, a2, a3, v17, a5, a6);

      *&v8 = sub_BBA944(v18, v16, a2, a3, v15, v17, a5, a6).n128_u64[0];
      return *&v8;
    }

    v24 = a5;
    sub_BBA4D4(result, v16, a3, a4 >> 1, a5);
    v25 = (v24 + 60 * v15);
    sub_BBA4D4(v16, a2, a3, v17, v25);
    v26 = (v24 + 60 * a4);
    v27 = v25;
    while (1)
    {
      if (v27 == v26)
      {
        while (v24 != v25)
        {
          v8 = *v24;
          v34 = v24[1];
          v35 = v24[2];
          *(v18 + 41) = *(v24 + 41);
          *(v18 + 16) = v34;
          *(v18 + 32) = v35;
          *v18 = v8;
          v18 += 60;
          v24 = (v24 + 60);
        }

        return *&v8;
      }

      v30 = *(v27 + (*(v27 + 2) != 0x7FFFFFFF) + 1);
      v31 = *(v24 + (*(v24 + 2) != 0x7FFFFFFF) + 1);
      if (v30 == v31)
      {
        if (*(v27 + (*(v27 + 5) != 0x7FFFFFFF) + 4) <= *(v24 + (*(v24 + 5) != 0x7FFFFFFF) + 4))
        {
          goto LABEL_24;
        }

LABEL_18:
        v8 = *v27;
        v28 = v27[1];
        v29 = v27[2];
        *(v18 + 41) = *(v27 + 41);
        *(v18 + 16) = v28;
        *(v18 + 32) = v29;
        *v18 = v8;
        v18 += 60;
        v27 = (v27 + 60);
        if (v24 == v25)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v30 < v31)
        {
          goto LABEL_18;
        }

LABEL_24:
        v8 = *v24;
        v32 = v24[1];
        v33 = v24[2];
        *(v18 + 41) = *(v24 + 41);
        *(v18 + 16) = v32;
        *(v18 + 32) = v33;
        *v18 = v8;
        v18 += 60;
        v24 = (v24 + 60);
        if (v24 == v25)
        {
LABEL_30:
          while (v27 != v26)
          {
            v8 = *v27;
            v36 = v27[1];
            v37 = v27[2];
            *(v18 + 41) = *(v27 + 41);
            *(v18 + 16) = v36;
            *(v18 + 32) = v37;
            *v18 = v8;
            v18 += 60;
            v27 = (v27 + 60);
          }

          return *&v8;
        }
      }
    }
  }

  v6 = *(a2 + (*(a2 - 13) != 0x7FFFFFFF) - 14);
  v7 = *(result + 4 * (*(result + 8) != 0x7FFFFFFF) + 4);
  if (v6 == v7)
  {
    if (*(a2 + (*(a2 - 10) != 0x7FFFFFFF) - 11) <= *(result + 4 * (*(result + 20) != 0x7FFFFFFF) + 16))
    {
      return *&v8;
    }
  }

  else if (v6 >= v7)
  {
    return *&v8;
  }

  v9 = (a2 - 60);
  *v39 = *(result + 32);
  *&v39[12] = *(result + 44);
  v10 = *result;
  v8 = *(result + 16);
  v12 = *(a2 - 44);
  v11 = *(a2 - 28);
  v13 = *(a2 - 60);
  *(result + 41) = *(a2 - 19);
  *(result + 16) = v12;
  *(result + 32) = v11;
  *result = v13;
  *v9 = v10;
  v9[1] = v8;
  v9[2] = *v39;
  *&v8 = *&v39[9];
  *(v9 + 41) = *&v39[9];
  return *&v8;
}

__int128 *sub_BBA2F4(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = (result + 60);
    if ((result + 60) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = *(v5 + 17);
        v7 = *(v5 + (v6 != 0x7FFFFFFF) + 16);
        v8 = *(v5 + (*(v5 + 2) != 0x7FFFFFFF) + 1);
        if (v7 == v8)
        {
          v9 = *(v5 + 20);
          if (*(v5 + (v9 != 0x7FFFFFFF) + 19) <= *(v5 + (*(v5 + 5) != 0x7FFFFFFF) + 4))
          {
            goto LABEL_6;
          }
        }

        else
        {
          if (v7 >= v8)
          {
            goto LABEL_6;
          }

          v9 = *(v5 + 20);
        }

        v10 = *v4;
        v11 = *(v5 + 16);
        v13 = *(v5 + 18);
        v12 = *(v5 + 19);
        v25 = *(v5 + 29);
        v23 = *(v5 + 84);
        v24 = *(v5 + 100);
        if (v9 == 0x7FFFFFFF)
        {
          v14 = *(v5 + 19);
        }

        else
        {
          v14 = v9;
        }

        v15 = *(v5 + 41);
        v16 = v5[2];
        v17 = *v5;
        v4[1] = v5[1];
        v4[2] = v16;
        *(v4 + 41) = v15;
        *v4 = v17;
        if (v5 == result)
        {
LABEL_4:
          v5 = result;
          goto LABEL_5;
        }

        if (v6 == 0x7FFFFFFF)
        {
          v18 = v11;
        }

        else
        {
          v18 = v6;
        }

        v19 = v3;
        while (1)
        {
          v21 = (result + v19);
          v22 = *(result + 4 * (*(result + v19 - 52) != 0x7FFFFFFF) + v19 - 56);
          if (v18 != v22)
          {
            break;
          }

          if (v14 <= *(v21 + (*(v21 - 10) != 0x7FFFFFFF) - 11))
          {
            goto LABEL_5;
          }

LABEL_22:
          v5 = (v5 - 60);
          v20 = *(v21 - 44);
          *v21 = *(v21 - 60);
          v21[1] = v20;
          v21[2] = *(v21 - 28);
          *(v21 + 41) = *(v21 - 19);
          v19 -= 60;
          if (!v19)
          {
            goto LABEL_4;
          }
        }

        if (v18 < v22)
        {
          goto LABEL_22;
        }

        v5 = (result + v19);
LABEL_5:
        *v5 = v10;
        *(v5 + 1) = v11;
        *(v5 + 2) = v6;
        *(v5 + 3) = v13;
        *(v5 + 4) = v12;
        *(v5 + 5) = v9;
        *(v5 + 24) = v23;
        *(v5 + 40) = v24;
        *(v5 + 56) = v25;
LABEL_6:
        v2 = (v4 + 60);
        v3 += 60;
      }

      while ((v4 + 60) != a2);
    }
  }

  return result;
}

uint64_t sub_BBA4D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  if (a4)
  {
    if (a4 != 2)
    {
      if (a4 == 1)
      {
        v5 = *result;
        v6 = *(result + 16);
        v7 = *(result + 32);
        *(a5 + 44) = *(result + 44);
        a5[1] = v6;
        a5[2] = v7;
        *a5 = v5;
        return result;
      }

      if (a4 <= 8)
      {
        if (result == a2)
        {
          return result;
        }

        v18 = *result;
        v19 = *(result + 16);
        v20 = *(result + 32);
        *(a5 + 44) = *(result + 44);
        a5[1] = v19;
        a5[2] = v20;
        *a5 = v18;
        v21 = (result + 60);
        if (result + 60 == a2)
        {
          return result;
        }

        v22 = 0;
        v23 = a5;
LABEL_16:
        v28 = v21;
        v29 = (v23 + 60);
        v30 = *(result + 64 + 4 * (*(result + 68) != 0x7FFFFFFF));
        v31 = *(v23 + (*(v23 + 2) != 0x7FFFFFFF) + 1);
        if (v30 == v31)
        {
          if (*(result + 4 * (*(result + 80) != 0x7FFFFFFF) + 76) <= *(v23 + (*(v23 + 5) != 0x7FFFFFFF) + 4))
          {
            goto LABEL_18;
          }
        }

        else if (v30 >= v31)
        {
LABEL_18:
          v32 = *v21;
          v33 = v21[1];
          v34 = v21[2];
          *(v23 + 104) = *(v21 + 44);
          *(v23 + 76) = v33;
          *(v23 + 92) = v34;
          *v29 = v32;
          goto LABEL_15;
        }

        v35 = v23[1];
        *v29 = *v23;
        *(v23 + 76) = v35;
        *(v23 + 92) = v23[2];
        *(v23 + 104) = *(v23 + 44);
        v24 = a5;
        if (v23 == a5)
        {
          goto LABEL_14;
        }

        v36 = v22;
        while (1)
        {
          v38 = (a5 + v36);
          v39 = *(result + 64 + 4 * (*(result + 68) != 0x7FFFFFFF));
          v40 = *(a5 + 4 * (*(a5 + v36 - 52) != 0x7FFFFFFF) + v36 - 56);
          if (v39 == v40)
          {
            if (*(result + 76 + 4 * (*(result + 80) != 0x7FFFFFFF)) <= *(v38 + (*(v38 - 10) != 0x7FFFFFFF) - 11))
            {
              v24 = v23;
LABEL_14:
              v25 = *v21;
              v26 = v21[1];
              v27 = v21[2];
              *(v24 + 41) = *(v21 + 41);
              v24[1] = v26;
              v24[2] = v27;
              *v24 = v25;
LABEL_15:
              v21 = (v21 + 60);
              v22 += 60;
              v23 = v29;
              result = v28;
              if (v28 + 60 == a2)
              {
                return result;
              }

              goto LABEL_16;
            }
          }

          else if (v39 >= v40)
          {
            v24 = (a5 + v36);
            goto LABEL_14;
          }

          v23 = (v23 - 60);
          v37 = *(v38 - 44);
          *v38 = *(v38 - 60);
          v38[1] = v37;
          v38[2] = *(v38 - 28);
          *(v38 + 41) = *(v38 - 19);
          v36 -= 60;
          if (!v36)
          {
            v24 = a5;
            goto LABEL_14;
          }
        }
      }

      v44 = a4 >> 1;
      v45 = 60 * (a4 >> 1);
      v46 = v45 + result;
      v47 = result;
      v51 = a5;
      sub_BB9FC4(result, v45 + result, a3, v44, a5, v44);
      result = sub_BB9FC4(v46, a2, a3, a4 - v44, (v51 + v45), a4 - v44);
      v52 = v46;
      while (1)
      {
        if (v52 == a2)
        {
          while (v47 != v46)
          {
            v61 = *v47;
            v62 = *(v47 + 16);
            v63 = *(v47 + 32);
            *(v51 + 44) = *(v47 + 44);
            v51[1] = v62;
            v51[2] = v63;
            *v51 = v61;
            v51 = (v51 + 60);
            v47 += 60;
          }

          return result;
        }

        v56 = *(v52 + 4 * (*(v52 + 8) != 0x7FFFFFFF) + 4);
        v57 = *(v47 + 4 * (*(v47 + 8) != 0x7FFFFFFF) + 4);
        if (v56 == v57)
        {
          if (*(v52 + 4 * (*(v52 + 20) != 0x7FFFFFFF) + 16) <= *(v47 + 4 * (*(v47 + 20) != 0x7FFFFFFF) + 16))
          {
            goto LABEL_38;
          }

LABEL_32:
          v53 = *v52;
          v54 = *(v52 + 16);
          v55 = *(v52 + 32);
          *(v51 + 44) = *(v52 + 44);
          v51[1] = v54;
          v51[2] = v55;
          *v51 = v53;
          v51 = (v51 + 60);
          v52 += 60;
          if (v47 == v46)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v56 < v57)
          {
            goto LABEL_32;
          }

LABEL_38:
          v58 = *v47;
          v59 = *(v47 + 16);
          v60 = *(v47 + 32);
          *(v51 + 44) = *(v47 + 44);
          v51[1] = v59;
          v51[2] = v60;
          *v51 = v58;
          v51 = (v51 + 60);
          v47 += 60;
          if (v47 == v46)
          {
LABEL_44:
            while (v52 != a2)
            {
              v64 = *v52;
              v65 = *(v52 + 16);
              v66 = *(v52 + 32);
              *(v51 + 44) = *(v52 + 44);
              v51[1] = v65;
              v51[2] = v66;
              *v51 = v64;
              v51 = (v51 + 60);
              v52 += 60;
            }

            return result;
          }
        }
      }
    }

    v8 = (a2 - 60);
    v9 = *(a2 + 4 * (*(a2 - 52) != 0x7FFFFFFF) - 56);
    v10 = *(result + 4 * (*(result + 8) != 0x7FFFFFFF) + 4);
    if (v9 == v10)
    {
      if (*(a2 + 4 * (*(a2 - 40) != 0x7FFFFFFF) - 44) <= *(result + 4 * (*(result + 20) != 0x7FFFFFFF) + 16))
      {
LABEL_8:
        v11 = *result;
        v12 = *(result + 16);
        v13 = *(result + 32);
        *(a5 + 44) = *(result + 44);
        a5[1] = v12;
        a5[2] = v13;
        *a5 = v11;
        v14 = *v8;
        v15 = *(a2 - 44);
        v16 = *(a2 - 28);
        v17 = *(a2 - 16);
LABEL_30:
        *(a5 + 104) = v17;
        *(a5 + 92) = v16;
        *(a5 + 76) = v15;
        *(a5 + 60) = v14;
        return result;
      }
    }

    else if (v9 >= v10)
    {
      goto LABEL_8;
    }

    v41 = *v8;
    v42 = *(a2 - 44);
    v43 = *(a2 - 28);
    *(a5 + 44) = *(a2 - 16);
    a5[1] = v42;
    a5[2] = v43;
    *a5 = v41;
    v14 = *result;
    v15 = *(result + 16);
    v16 = *(result + 32);
    v17 = *(result + 44);
    goto LABEL_30;
  }

  return result;
}

__n128 sub_BBA944(char *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  do
  {
    if (a6 <= a8 || a5 <= a8)
    {

      sub_BBAFB8(a1, a2, a3, a4, a5, a6, a7);
      return result;
    }

    if (!a5)
    {
      return result;
    }

    v8 = 0;
    v9 = *&a2[4 * (*(a2 + 2) != 0x7FFFFFFF) + 4];
    v10 = -a5;
    while (1)
    {
      v12 = *&a1[4 * (*&a1[v8 + 8] != 0x7FFFFFFF) + 4 + v8];
      if (v9 != v12)
      {
        if (v9 < v12)
        {
          break;
        }

        goto LABEL_7;
      }

      if (*&a2[4 * (*(a2 + 5) != 0x7FFFFFFF) + 16] > *&a1[4 * (*&a1[v8 + 20] != 0x7FFFFFFF) + 16 + v8])
      {
        break;
      }

LABEL_7:
      v8 += 60;
      if (__CFADD__(v10++, 1))
      {
        return result;
      }
    }

    v13 = &a1[v8];
    if (-v10 < a6)
    {
      v14 = a6 / 2;
      v15 = &a2[60 * (a6 / 2)];
      v16 = a2;
      if (a2 - a1 == v8)
      {
LABEL_12:
        v17 = 0xEEEEEEEEEEEEEEEFLL * ((v16 - a1 - v8) >> 2);
        v18 = &a2[60 * (a6 / 2)];
        v19 = a2 - v16;
        if (a2 == v16)
        {
          goto LABEL_55;
        }

        goto LABEL_17;
      }

      v23 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1 - v8) >> 2);
      v24 = *&v15[4 * (*(v15 + 2) != 0x7FFFFFFF) + 4];
      v16 = &a1[v8];
      while (2)
      {
        v25 = v23 >> 1;
        v26 = &v16[60 * (v23 >> 1)];
        v27 = *&v26[4 * (*(v26 + 2) != 0x7FFFFFFF) + 4];
        if (v24 == v27)
        {
          if (*&v15[4 * (*(v15 + 5) != 0x7FFFFFFF) + 16] > *&v26[4 * (*(v26 + 5) != 0x7FFFFFFF) + 16])
          {
            goto LABEL_22;
          }
        }

        else if (v24 < v27)
        {
LABEL_22:
          v23 = v25;
          if (!v25)
          {
            goto LABEL_12;
          }

          continue;
        }

        break;
      }

      v16 = v26 + 60;
      v25 = v23 + ~v25;
      goto LABEL_22;
    }

    if (v10 == -1)
    {
      v72 = &a1[v8];
      *&v102[12] = *&a1[v8 + 44];
      v97 = *&a1[v8 + 16];
      *v102 = *&a1[v8 + 32];
      v92 = *&a1[v8];
      v73 = *a2;
      v74 = *(a2 + 1);
      v75 = *(a2 + 2);
      *(v72 + 41) = *(a2 + 41);
      *(v72 + 1) = v74;
      *(v72 + 2) = v75;
      *v72 = v73;
      *a2 = v92;
      *(a2 + 1) = v97;
      *(a2 + 2) = *v102;
      result = *&v102[9];
      *(a2 + 41) = *&v102[9];
      return result;
    }

    v17 = -v10 / 2;
    v15 = a2;
    if (a2 != a3)
    {
      v28 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - a2) >> 2);
      v29 = &a1[60 * v17 + v8];
      v30 = *&a1[60 * v17 + 4 + 4 * (*(v29 + 2) != 0x7FFFFFFF) + v8];
      v31 = &a1[60 * v17 + 4 * (*(v29 + 5) != 0x7FFFFFFF) + v8];
      v15 = a2;
      do
      {
        v32 = v28 >> 1;
        v33 = &v15[60 * (v28 >> 1)];
        v34 = *&v33[4 * (*(v33 + 2) != 0x7FFFFFFF) + 4];
        if (v34 == v30)
        {
          if (*&v33[4 * (*(v33 + 5) != 0x7FFFFFFF) + 16] <= *(v31 + 4))
          {
            goto LABEL_30;
          }
        }

        else if (v34 >= v30)
        {
          goto LABEL_30;
        }

        v15 = v33 + 60;
        v32 = v28 + ~v32;
LABEL_30:
        v28 = v32;
      }

      while (v32);
    }

    v16 = &a1[60 * v17 + v8];
    v14 = 0xEEEEEEEEEEEEEEEFLL * ((v15 - a2) >> 2);
    v18 = v15;
    v19 = a2 - v16;
    if (a2 == v16)
    {
      goto LABEL_55;
    }

LABEL_17:
    v18 = v16;
    if (a2 != v15)
    {
      if (v16 + 60 == a2)
      {
        *&v98[12] = *(v16 + 44);
        v93 = *(v16 + 1);
        *v98 = *(v16 + 2);
        v88 = *v16;
        v20 = v15 - a2;
        v84 = a3;
        v86 = a1;
        v76 = a6;
        v78 = v17;
        v21 = a7;
        v80 = &a1[v8];
        v82 = a4;
        v22 = a8;
        memmove(v16, a2, v15 - a2 - 3);
        v13 = v80;
        a4 = v82;
        a8 = v22;
        a7 = v21;
        a6 = v76;
        v17 = v78;
        a3 = v84;
        a1 = v86;
        v18 = &v16[v20];
        *(v18 + 41) = *&v98[9];
        *(v18 + 1) = v93;
        *(v18 + 2) = *v98;
        *v18 = v88;
      }

      else if (a2 + 60 == v15)
      {
        v18 = v16 + 60;
        v89 = *(v15 - 60);
        v94 = *(v15 - 44);
        *v99 = *(v15 - 28);
        *&v99[12] = *(v15 - 1);
        if (v15 - 60 != v16)
        {
          v85 = a3;
          v87 = a1;
          v77 = a6;
          v79 = v17;
          v35 = a7;
          v81 = &a1[v8];
          v83 = a4;
          v36 = a8;
          memmove(v16 + 60, v16, v15 - 60 - v16 - 3);
          v13 = v81;
          a4 = v83;
          a8 = v36;
          a7 = v35;
          a6 = v77;
          v17 = v79;
          a3 = v85;
          a1 = v87;
        }

        *(v16 + 41) = *&v99[9];
        *(v16 + 1) = v94;
        *(v16 + 2) = *v99;
        *v16 = v89;
      }

      else
      {
        v37 = 0xEEEEEEEEEEEEEEEFLL * ((v15 - a2) >> 2);
        if (0xEEEEEEEEEEEEEEEFLL * (v19 >> 2) == v37)
        {
          v38 = v16 + 60;
          v39 = a2 + 60;
          do
          {
            *&v100[12] = *(v38 - 1);
            v95 = *(v38 - 44);
            *v100 = *(v38 - 28);
            v90 = *(v38 - 60);
            v40 = *(v39 - 60);
            v41 = *(v39 - 44);
            v42 = *(v39 - 28);
            *(v38 - 19) = *(v39 - 19);
            *(v38 - 28) = v42;
            *(v38 - 44) = v41;
            *(v38 - 60) = v40;
            *(v39 - 60) = v90;
            *(v39 - 44) = v95;
            *(v39 - 28) = *v100;
            *(v39 - 19) = *&v100[9];
            if (v38 == a2)
            {
              break;
            }

            v38 += 60;
            v43 = v39 == v15;
            v39 += 60;
          }

          while (!v43);
          v18 = a2;
        }

        else
        {
          v44 = 0xEEEEEEEEEEEEEEEFLL * (v19 >> 2);
          do
          {
            v45 = v44;
            v44 = v37;
            v37 = v45 % v37;
          }

          while (v37);
          v46 = &v16[60 * v44];
          do
          {
            v47 = *(v46 - 60);
            v48 = *(v46 - 44);
            v49 = *(v46 - 28);
            v50 = *(v46 - 1);
            v46 -= 60;
            v91 = v47;
            v96 = v48;
            *v101 = v49;
            *&v101[12] = v50;
            v51 = &v46[v19];
            v52 = v46;
            do
            {
              v53 = v51;
              v54 = *v51;
              v55 = *(v51 + 1);
              v56 = *(v51 + 2);
              *(v52 + 41) = *(v51 + 41);
              v52[1] = v55;
              v52[2] = v56;
              *v52 = v54;
              v57 = v15 - v51;
              v51 += 4 * (v19 >> 2);
              if (v19 >= v57)
              {
                v51 = &a2[-v57];
              }

              v52 = v53;
            }

            while (v51 != v46);
            *(v53 + 41) = *&v101[9];
            v53[1] = v96;
            v53[2] = *v101;
            *v53 = v91;
          }

          while (v46 != v16);
          v18 = &v16[v15 - a2];
        }
      }
    }

LABEL_55:
    v58 = -(v17 + v10);
    v59 = a6 - v14;
    if ((v17 + v14) >= (a6 - (v17 + v14) - v10))
    {
      v69 = v15;
      v63 = a4;
      v70 = v17;
      v66 = a7;
      v67 = a8;
      v71 = v13;
      v59 = v14;
      result.n128_u64[0] = sub_BBA944(v18, v69, a3, a4, v58, a6 - v14, a7, a8).n128_u64[0];
      a1 = v71;
      a2 = v16;
      a5 = v70;
      a3 = v18;
    }

    else
    {
      v60 = &a1[v8];
      v61 = v16;
      v62 = a3;
      v63 = a4;
      v64 = -(v17 + v10);
      v65 = v17;
      v66 = a7;
      v67 = a8;
      result.n128_u64[0] = sub_BBA944(v60, v61, v18, a4, v65, v14, a7, a8).n128_u64[0];
      a5 = v64;
      a3 = v62;
      a1 = v18;
      a2 = v15;
    }

    a6 = v59;
    a7 = v66;
    a4 = v63;
    a8 = v67;
  }

  while (v59);
  return result;
}

__int128 *sub_BBAFB8(__int128 *result, __int128 *a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6, char *__src)
{
  if (a5 <= a6)
  {
    if (result == a2)
    {
      return result;
    }

    v19 = 3 - __src;
    v20 = __src;
    v21 = result;
    do
    {
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      *(v20 + 44) = *(v21 + 44);
      *(v20 + 1) = v23;
      *(v20 + 2) = v24;
      *v20 = v22;
      v20 += 60;
      v21 = (v21 + 60);
      v19 -= 60;
    }

    while (v21 != a2);
    while (1)
    {
      if (a2 == a3)
      {
        return memmove(result, __src, -&__src[v19]);
      }

      v28 = *(a2 + (*(a2 + 2) != 0x7FFFFFFF) + 1);
      v29 = *&__src[4 * (*(__src + 2) != 0x7FFFFFFF) + 4];
      if (v28 == v29)
      {
        if (*(a2 + (*(a2 + 5) != 0x7FFFFFFF) + 4) <= *&__src[4 * (*(__src + 5) != 0x7FFFFFFF) + 16])
        {
          goto LABEL_24;
        }

LABEL_18:
        v25 = *a2;
        v26 = a2[1];
        v27 = a2[2];
        *(result + 41) = *(a2 + 41);
        result[1] = v26;
        result[2] = v27;
        *result = v25;
        result = (result + 60);
        a2 = (a2 + 60);
        if (v20 == __src)
        {
          return result;
        }
      }

      else
      {
        if (v28 < v29)
        {
          goto LABEL_18;
        }

LABEL_24:
        v30 = *__src;
        v31 = *(__src + 1);
        v32 = *(__src + 2);
        *(result + 41) = *(__src + 41);
        result[1] = v31;
        result[2] = v32;
        *result = v30;
        result = (result + 60);
        __src += 60;
        if (v20 == __src)
        {
          return result;
        }
      }
    }
  }

  if (a2 == a3)
  {
    return result;
  }

  v7 = 0;
  do
  {
    v8 = &__src[v7];
    v9 = *(a2 + v7);
    v10 = *(a2 + v7 + 16);
    v11 = *(a2 + v7 + 32);
    *(v8 + 44) = *(a2 + v7 + 44);
    *(v8 + 1) = v10;
    *(v8 + 2) = v11;
    *v8 = v9;
    v7 += 60;
  }

  while ((a2 + v7) != a3);
  v12 = &__src[v7];
  while (a2 != result)
  {
    v13 = (a2 - 60);
    v17 = *&v12[4 * (*(v12 - 13) != 0x7FFFFFFF) - 56];
    v18 = *(a2 + (*(a2 - 13) != 0x7FFFFFFF) - 14);
    if (v17 == v18)
    {
      if (*&v12[4 * (*(v12 - 10) != 0x7FFFFFFF) - 44] > *(a2 + (*(a2 - 10) != 0x7FFFFFFF) - 11))
      {
        goto LABEL_13;
      }
    }

    else if (v17 < v18)
    {
LABEL_13:
      a2 = (a2 - 60);
      goto LABEL_7;
    }

    v13 = (v12 - 60);
    v12 -= 60;
LABEL_7:
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    *(a3 - 19) = *(v13 + 41);
    *(a3 - 28) = v16;
    *(a3 - 44) = v15;
    *(a3 - 60) = v14;
    a3 = (a3 - 60);
    if (v12 == __src)
    {
      return result;
    }
  }

  if (v12 != __src)
  {
    v33 = -60;
    do
    {
      v34 = *(v12 - 60);
      v35 = *(v12 - 44);
      v36 = *(v12 - 28);
      v37 = *(v12 - 19);
      v38 = v12 - 60;
      v39 = (a3 + v33);
      *(v39 + 41) = v37;
      v39[1] = v35;
      v39[2] = v36;
      *v39 = v34;
      v33 -= 60;
      v12 = v38;
    }

    while (v38 != __src);
  }

  return result;
}

BOOL sub_BBB20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 4) != *(a3 + 4) || *(a2 + 8) != *(a3 + 8) || *(a2 + 12) != *(a3 + 12) || *(a2 + 13) != *(a3 + 13) || *(a2 + 16) != *(a3 + 16) || *(a2 + 20) != *(a3 + 20) || *(a2 + 24) != *(a3 + 24) || *(a2 + 25) != *(a3 + 25) || *a2 != *a3)
  {
    return 0;
  }

  v5 = *(a2 + 48);
  v7 = sub_A57920((a1 + 4136), *(a2 + 28));
  v8 = (v7 - *v7);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v12 = *sub_A571D4(v10, v5);
  v13 = *(a3 + 48);
  v14 = sub_A57920((a1 + 4136), *(a3 + 28));
  v15 = (v14 - *v14);
  if (*v15 >= 9u && (v16 = v15[4]) != 0)
  {
    v17 = (v14 + v16 + *(v14 + v16));
  }

  else
  {
    v17 = 0;
  }

  if (v12 != *sub_A571D4(v17, v13))
  {
    return 0;
  }

  v18 = *(a2 + 52);
  v19 = sub_A57920((a1 + 4136), *(a2 + 28));
  v20 = (v19 - *v19);
  if (*v20 >= 9u && (v21 = v20[4]) != 0)
  {
    v22 = (v19 + v21 + *(v19 + v21));
  }

  else
  {
    v22 = 0;
  }

  v23 = *sub_A571D4(v22, v18);
  v24 = *(a3 + 52);
  v25 = sub_A57920((a1 + 4136), *(a3 + 28));
  v26 = (v25 - *v25);
  if (*v26 >= 9u && (v27 = v26[4]) != 0)
  {
    v28 = (v25 + v27 + *(v25 + v27));
  }

  else
  {
    v28 = 0;
  }

  if (v23 != *sub_A571D4(v28, v24))
  {
    return 0;
  }

  v29 = sub_A56F04((a1 + 4136), *(a2 + 28), *(a2 + 48), *(a2 + 36));
  v31 = v30;
  v33 = sub_A56F04((a1 + 4136), *(a3 + 28), *(a3 + 48), *(a3 + 36));
  result = 0;
  if (v29 == v33 && v31 == v32)
  {
    v34 = sub_A56F04((a1 + 4136), *(a2 + 28), *(a2 + 52), *(a2 + 36));
    v36 = v35;
    if (v34 == sub_A56F04((a1 + 4136), *(a3 + 28), *(a3 + 52), *(a3 + 36)))
    {
      return v36 == v37;
    }

    return 0;
  }

  return result;
}

void sub_BBB4E8(unint64_t *a1, int *a2, _DWORD *a3, uint64_t *a4, __int128 *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v5 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
    {
      v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v6 = 0x666666666666666;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      if (v6 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 8 * ((a1[1] - *a1) >> 3);
    v7 = *a2;
    *v8 = *a2;
    *(v8 + 4) = v7;
    *(v8 + 8) = *a3;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    operator new();
  }

  sub_1794();
}

void sub_BBB6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v3;
  if (*v3)
  {
    *(v4 + 24) = v6;
    operator delete(v6);
  }

  sub_30C9C0(va);
  _Unwind_Resume(a1);
}

void sub_BBB720(unint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 40 * a2;
      v10 = (v3 + 16);
      v11 = 40 * a2;
      do
      {
        *(v10 - 2) = 0x8000000080000000;
        *(v10 - 1) = 0x7FFFFFFFLL;
        *v10 = 0;
        v10[1] = 0;
        v10[2] = 0;
        v10 += 5;
        v11 -= 40;
      }

      while (v11);
      a1[1] = v9;
    }

    else
    {
      a1[1] = v3;
    }
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x666666666666666)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x333333333333333)
    {
      v8 = 0x666666666666666;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 40 * v5;
    v13 = 40 * a2;
    v14 = 40 * v5 + 40 * a2;
    v15 = (40 * v5 + 16);
    do
    {
      *(v15 - 2) = 0x8000000080000000;
      *(v15 - 1) = 0x7FFFFFFFLL;
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      v15 += 5;
      v13 -= 40;
    }

    while (v13);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (v17 != *a1)
    {
      v19 = *a1;
      v20 = v18;
      do
      {
        v21 = *v19;
        *(v20 + 8) = *(v19 + 2);
        *v20 = v21;
        *(v20 + 24) = 0;
        *(v20 + 32) = 0;
        *(v20 + 16) = 0;
        *(v20 + 16) = *(v19 + 1);
        *(v20 + 32) = v19[4];
        v19[2] = 0;
        v19[3] = 0;
        v19[4] = 0;
        v19 += 5;
        v20 += 40;
      }

      while (v19 != v17);
      do
      {
        v22 = v16[2];
        if (v22)
        {
          v16[3] = v22;
          operator delete(v22);
        }

        v16 += 5;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v14;
    a1[2] = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t sub_BBB944(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 0;
  v13 = 72 * v2;
  sub_A7C79C(72 * v2, a2);
  v14 = 72 * v2 + 72;
  v6 = *(a1 + 8);
  v7 = 72 * v2 + *a1 - v6;
  sub_A7C17C(a1, *a1, v6, v13 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_A7C084(&v12);
  return v11;
}

void sub_BBBA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_A7C084(va);
  _Unwind_Resume(a1);
}

void sub_BBBAAC(__n128 *a1, __n128 *a2, unint64_t a3, uint64_t *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v7 = &a2[-3].n128_i64[1];
      v8 = a2[-2].n128_i32[0];
      v9 = a1->n128_i32[2];
      v10 = a2[-3].n128_u32[2] > a1->n128_u32[0];
      v11 = v8 == v9;
      v12 = v8 < v9;
      if (!v11)
      {
        v10 = v12;
      }

      if (v10)
      {
        v72 = a1->n128_u64[0];
        LODWORD(v73) = a1->n128_u32[2];
        v13 = a1[2].n128_i64[0];
        v14 = a1[1];
        a1[1].n128_u64[1] = 0;
        a1[2].n128_u64[0] = 0;
        a1[1].n128_u64[0] = 0;
        v15 = *v7;
        a1->n128_u32[2] = a2[-2].n128_u32[0];
        a1->n128_u64[0] = v15;
        a1[1] = *(a2 - 24);
        a1[2].n128_u64[0] = a2[-1].n128_u64[1];
        *v7 = v72;
        a2[-2].n128_u32[0] = v73;
        *(a2 - 24) = v14;
        a2[-1].n128_u64[1] = v13;
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v22 = &a1[2].n128_i64[1];
        if (&a1[2].n128_i8[8] != a2)
        {
          v23 = 0;
          v24 = a1;
          do
          {
            v25 = v22;
            v26 = *v22;
            v27 = v24[3].n128_i32[0];
            v28 = v24->n128_i32[2];
            v29 = *v22 > v24->n128_u32[0];
            v11 = v27 == v28;
            v30 = v27 < v28;
            if (!v11)
            {
              v29 = v30;
            }

            if (v29)
            {
              v31 = v24[2].n128_u32[3];
              v32 = v24[3].n128_u64[1];
              v33 = v24[4];
              v24[4].n128_u64[0] = 0;
              v24[4].n128_u64[1] = 0;
              v24[3].n128_u64[1] = 0;
              v34 = v25[2];
              v35 = v24->n128_u64[0];
              *(v25 + 2) = v24->n128_u32[2];
              *v25 = v35;
              if (v34)
              {
                v25[3] = v34;
                v70 = v33;
                operator delete(v34);
                v33 = v70;
                v25[3] = 0;
                v25[4] = 0;
              }

              v36 = v24 + 1;
              *(v25 + 1) = v24[1];
              v25[4] = v24[2].n128_i64[0];
              v24[1].n128_u64[0] = 0;
              v24[1].n128_u64[1] = 0;
              v24[2].n128_u64[0] = 0;
              if (v24 == a1)
              {
                v24 = a1;
              }

              else
              {
                v37 = v24[-2].n128_i32[0];
                v38 = v26 > v24[-3].n128_u32[2];
                v11 = v27 == v37;
                v39 = v27 < v37;
                if (!v11)
                {
                  v38 = v39;
                }

                if (v38)
                {
                  v40 = v23;
                  while (1)
                  {
                    v41 = (a1 + v40);
                    v42 = *(&a1[-2] + v40 - 8);
                    v41->n128_u32[2] = *(a1[-2].n128_u32 + v40);
                    v43 = *(&a1->n128_u64[-1] + v40);
                    v41[1] = *(a1 + v40 - 24);
                    v41[2].n128_u64[0] = v43;
                    v41[-1].n128_u64[1] = 0;
                    v41->n128_u64[0] = v42;
                    v41[-2].n128_u64[1] = 0;
                    v41[-1].n128_u64[0] = 0;
                    v40 -= 40;
                    if (!v40)
                    {
                      break;
                    }

                    v44 = v41[-5].n128_i32[2];
                    v45 = v26 > v41[-5].n128_u32[0];
                    v11 = v27 == v44;
                    v46 = v27 < v44;
                    if (!v11)
                    {
                      v45 = v46;
                    }

                    if (!v45)
                    {
                      v24 = (a1 + v40);
                      goto LABEL_35;
                    }
                  }

                  v24 = a1;
LABEL_35:
                  v36 = (v41 - 24);
                }
              }

              v24->n128_u32[0] = v26;
              v24->n128_u32[1] = v31;
              v24->n128_u32[2] = v27;
              v36->n128_u64[0] = v32;
              *(v24 + 24) = v33;
            }

            v22 = v25 + 5;
            v23 += 40;
            v24 = v25;
          }

          while (v25 + 5 != a2);
        }
      }
    }

    else
    {
      v16 = a4;
      v17 = a3 >> 1;
      v18 = (a1 + 40 * (a3 >> 1));
      if (a3 <= a5)
      {
        v71 = 0;
        v72 = a4;
        v73 = &v71;
        sub_BBC02C(a1, (a1 + 40 * (a3 >> 1)), a3 >> 1, a4);
        v71 = v17;
        v47 = a3 - v17;
        v48 = &v16[5 * v17];
        sub_BBC02C(v18, a2, v47, v48);
        v71 = a3;
        v49 = &v16[5 * a3];
        v50 = &a1[1];
        v51 = v48;
        v52 = v16;
        while (v51 != v49)
        {
          v53 = v50 - 2;
          v54 = *(v51 + 8);
          v55 = *(v52 + 2);
          v56 = *v51 > *v52;
          v11 = v54 == v55;
          v57 = v54 < v55;
          if (!v11)
          {
            v56 = v57;
          }

          if (v56)
          {
            v58 = *v51;
            *(v50 - 2) = *(v51 + 8);
            *v53 = v58;
            v59 = *v50;
            if (*v50)
            {
              v50[1] = v59;
              operator delete(v59);
              *v50 = 0;
              v50[1] = 0;
              v50[2] = 0;
            }

            *v50 = *(v51 + 16);
            v50[2] = *(v51 + 32);
            *(v51 + 16) = 0;
            *(v51 + 24) = 0;
            *(v51 + 32) = 0;
            v51 += 40;
            v50 += 5;
            if (v52 == v48)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v60 = *v52;
            *(v50 - 2) = *(v52 + 2);
            *v53 = v60;
            v61 = *v50;
            if (*v50)
            {
              v50[1] = v61;
              operator delete(v61);
              *v50 = 0;
              v50[1] = 0;
              v50[2] = 0;
            }

            *v50 = *(v52 + 1);
            v50[2] = v52[4];
            v52[2] = 0;
            v52[3] = 0;
            v52[4] = 0;
            v52 += 5;
            v50 += 5;
            if (v52 == v48)
            {
LABEL_52:
              if (v51 != v49)
              {
                do
                {
                  v64 = *v51;
                  *(v50 - 2) = *(v51 + 8);
                  *(v50 - 2) = v64;
                  v65 = *v50;
                  if (*v50)
                  {
                    v50[1] = v65;
                    operator delete(v65);
                    *v50 = 0;
                    v50[1] = 0;
                    v50[2] = 0;
                  }

                  *v50 = *(v51 + 16);
                  v50[2] = *(v51 + 32);
                  *(v51 + 16) = 0;
                  *(v51 + 24) = 0;
                  *(v51 + 32) = 0;
                  v51 += 40;
                  v50 += 5;
                }

                while (v51 != v49);
                v16 = v72;
              }

              goto LABEL_58;
            }
          }
        }

        while (v52 != v48)
        {
          v62 = *v52;
          *(v50 - 2) = *(v52 + 2);
          *(v50 - 2) = v62;
          v63 = *v50;
          if (*v50)
          {
            v50[1] = v63;
            operator delete(v63);
            *v50 = 0;
            v50[1] = 0;
            v50[2] = 0;
          }

          *v50 = *(v52 + 1);
          v50[2] = v52[4];
          v52[2] = 0;
          v52[3] = 0;
          v52[4] = 0;
          v52 += 5;
          v50 += 5;
        }

LABEL_58:
        if (v16)
        {
          v66 = v71;
          if (v71)
          {
            v67 = 0;
            v68 = v16 + 3;
            do
            {
              v69 = *(v68 - 1);
              if (v69)
              {
                *v68 = v69;
                operator delete(v69);
                v66 = v71;
              }

              ++v67;
              v68 += 5;
            }

            while (v67 < v66);
          }
        }
      }

      else
      {
        sub_BBBAAC(a1, a1 + 5 * (a3 >> 1), a3 >> 1, a4, a5);
        v21 = a3 - v17;
        sub_BBBAAC(v18, a2, v21, v16, a5);

        sub_BBC5A4(a1, v18, a2, v17, v21, v16, a5);
      }
    }
  }
}

void sub_BBC018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_BBC52C(va);
  _Unwind_Resume(a1);
}

__n128 sub_BBC02C(__n128 *a1, __n128 *a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a1;
    if (a3 == 2)
    {
      v12 = &a2[-3].n128_i64[1];
      v13 = a2[-2].n128_i32[0];
      v14 = a1->n128_i32[2];
      v15 = v13 == v14;
      v16 = v13 < v14;
      if (v15)
      {
        v16 = a2[-3].n128_u32[2] > a1->n128_u32[0];
      }

      v8 = (a4 + 72);
      if (v16)
      {
        v17 = *v12;
        *(a4 + 8) = a2[-2].n128_u32[0];
        *a4 = v17;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        *(a4 + 16) = 0;
        *(a4 + 16) = *(a2 - 24);
        *(a4 + 32) = a2[-1].n128_u64[1];
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        a2[-1].n128_u64[1] = 0;
        v18 = a1->n128_u64[0];
        *(a4 + 48) = a1->n128_u32[2];
        *(a4 + 40) = v18;
        *(a4 + 64) = 0;
        *(a4 + 72) = 0;
        *(a4 + 56) = 0;
        v9 = a1 + 1;
        result = a1[1];
        *(a4 + 56) = result;
        v11 = a1 + 2;
      }

      else
      {
        v42 = a1->n128_u64[0];
        *(a4 + 8) = a1->n128_u32[2];
        *a4 = v42;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        *(a4 + 16) = 0;
        *(a4 + 16) = a1[1];
        *(a4 + 32) = a1[2].n128_u64[0];
        a1[1] = 0uLL;
        a1[2].n128_u64[0] = 0;
        v43 = *v12;
        *(a4 + 48) = a2[-2].n128_u32[0];
        *(a4 + 40) = v43;
        *(a4 + 64) = 0;
        *(a4 + 72) = 0;
        *(a4 + 56) = 0;
        result = *(a2 - 24);
        *(a4 + 56) = result;
        v11 = (a2 - 8);
        v9 = (a2 - 24);
      }

      goto LABEL_31;
    }

    if (a3 == 1)
    {
      v7 = a1->n128_u64[0];
      *(a4 + 8) = a1->n128_u32[2];
      *a4 = v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      v8 = (a4 + 32);
      v9 = a1 + 1;
      result = a1[1];
      *(a4 + 16) = result;
      v11 = a1 + 2;
LABEL_31:
      *v8 = v11->n128_u64[0];
      v9->n128_u64[0] = 0;
      v9->n128_u64[1] = 0;
      v9[1].n128_u64[0] = 0;
      return result;
    }

    if (a3 > 8)
    {
      v44 = a3 >> 1;
      v45 = 40 * (a3 >> 1);
      v46 = (a1 + v45);
      sub_BBBAAC(a1, (a1 + v45), v44, a4, v44);
      sub_BBBAAC((v6 + v45), a2, a3 - v44, (a4 + v45), a3 - v44);
      v48 = (a4 + 16);
      v49 = (v6 + v45);
      while (v49 != a2)
      {
        v51 = v48 - 2;
        v52 = v49->n128_i32[2];
        v53 = v6->n128_i32[2];
        v54 = v49->n128_u32[0] > v6->n128_u32[0];
        v15 = v52 == v53;
        v55 = v52 < v53;
        if (!v15)
        {
          v54 = v55;
        }

        if (v54)
        {
          v56 = v49->n128_u64[0];
          *(v48 - 2) = v49->n128_u32[2];
          *v51 = v56;
          v48[1] = 0;
          v48[2] = 0;
          *v48 = 0;
          result = v49[1];
          *v48 = result;
          v48[2] = v49[2].n128_u64[0];
          v49[1].n128_u64[0] = 0;
          v49[1].n128_u64[1] = 0;
          v49[2].n128_u64[0] = 0;
          v49 = (v49 + 40);
          v48 += 5;
          if (v6 == v46)
          {
LABEL_40:
            if (v49 != a2)
            {
              v57 = 0;
              do
              {
                v58 = &v49->n128_u64[v57 / 8];
                v59 = &v48[v57 / 8];
                v60 = v49->n128_u64[v57 / 8];
                *(v59 - 2) = v49->n128_u32[v57 / 4 + 2];
                *(v59 - 2) = v60;
                v59[1] = 0;
                v59[2] = 0;
                *v59 = 0;
                result = *(v49 + v57 + 16);
                *v59 = result;
                v59[2] = v49[2].n128_u64[v57 / 8];
                v58[2] = 0;
                v58[3] = 0;
                v58[4] = 0;
                v57 += 40;
              }

              while (v58 + 5 != a2);
            }

            return result;
          }
        }

        else
        {
          v50 = v6->n128_u64[0];
          *(v48 - 2) = v6->n128_u32[2];
          *v51 = v50;
          v48[1] = 0;
          v48[2] = 0;
          *v48 = 0;
          result = v6[1];
          *v48 = result;
          v48[2] = v6[2].n128_u64[0];
          v6[1].n128_u64[0] = 0;
          v6[1].n128_u64[1] = 0;
          v6[2].n128_u64[0] = 0;
          v6 = (v6 + 40);
          v48 += 5;
          if (v6 == v46)
          {
            goto LABEL_40;
          }
        }
      }

      if (v6 != v46)
      {
        v61 = 0;
        do
        {
          v62 = &v48[v61 / 8];
          v63 = &v6->n128_u64[v61 / 8];
          v64 = v6->n128_u64[v61 / 8];
          *(v62 - 2) = v6->n128_u32[v61 / 4 + 2];
          *(v62 - 2) = v64;
          v62[1] = 0;
          v62[2] = 0;
          *v62 = 0;
          result = *(v6 + v61 + 16);
          *v62 = result;
          v62[2] = v6[2].n128_u64[v61 / 8];
          v63[2] = 0;
          v63[3] = 0;
          v63[4] = 0;
          v61 += 40;
        }

        while (v63 + 5 != v46);
      }
    }

    else if (a1 != a2)
    {
      v19 = a1->n128_u64[0];
      *(a4 + 8) = a1->n128_u32[2];
      *a4 = v19;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      result = a1[1];
      *(a4 + 16) = result;
      *(a4 + 32) = a1[2].n128_u64[0];
      a1[1] = 0uLL;
      a1[2].n128_u64[0] = 0;
      v20 = &a1[2].n128_u32[2];
      if (&a1[2].n128_i8[8] != a2)
      {
        v21 = 0;
        v22 = a4;
        do
        {
          v26 = v20;
          v27 = (v22 + 40);
          v28 = v6[3].n128_i32[0];
          v29 = *(v22 + 8);
          v30 = *v20 > *v22;
          v15 = v28 == v29;
          v31 = v28 < v29;
          if (!v15)
          {
            v30 = v31;
          }

          if (v30)
          {
            *v27 = *v22;
            *(v22 + 48) = *(v22 + 8);
            *(v22 + 56) = *(v22 + 16);
            *(v22 + 72) = *(v22 + 32);
            *(v22 + 16) = 0;
            *(v22 + 24) = 0;
            v32 = a4;
            *(v22 + 32) = 0;
            if (v22 != a4)
            {
              v33 = v21;
              while (1)
              {
                v32 = a4 + v33;
                v35 = v6[3].n128_i32[0];
                v36 = *(a4 + v33 - 32);
                v37 = *v26 > *(a4 + v33 - 40);
                if (v35 != v36)
                {
                  v37 = v35 < v36;
                }

                if (!v37)
                {
                  break;
                }

                *v32 = *(a4 + v33 - 40);
                *(v32 + 8) = *(a4 + v33 - 32);
                v38 = *(v32 + 16);
                if (v38)
                {
                  *(a4 + v33 + 24) = v38;
                  operator delete(v38);
                }

                v34 = a4 + v33;
                *(v32 + 16) = *(a4 + v33 - 24);
                *(v34 + 32) = *(a4 + v33 - 8);
                *(v34 - 16) = 0;
                *(v34 - 8) = 0;
                *(v34 - 24) = 0;
                v33 -= 40;
                if (!v33)
                {
                  v32 = a4;
                  break;
                }
              }
            }

            v39 = *v26;
            *(v32 + 8) = v26[2];
            *v32 = v39;
            v40 = *(v32 + 16);
            if (v40)
            {
              *(v32 + 24) = v40;
              operator delete(v40);
              *(v32 + 16) = 0;
              *(v32 + 24) = 0;
              *(v32 + 32) = 0;
            }

            v41 = *(&v6[3] + 8);
            v24 = &v6[3].n128_u64[1];
            result.n128_u64[0] = v41;
            *(v32 + 16) = v41;
            *(v32 + 32) = v24[2];
          }

          else
          {
            v23 = *v26;
            *(v22 + 48) = v26[2];
            *v27 = v23;
            *(v22 + 64) = 0;
            *(v22 + 72) = 0;
            *(v22 + 56) = 0;
            v25 = *(&v6[3] + 8);
            v24 = &v6[3].n128_u64[1];
            result.n128_u64[0] = v25;
            *(v22 + 56) = v25;
            *(v22 + 72) = v24[2];
          }

          v20 = v26 + 10;
          *v24 = 0;
          v24[1] = 0;
          v24[2] = 0;
          v21 += 40;
          v22 = v27;
          v6 = v26;
        }

        while (v26 + 10 != a2);
      }
    }
  }

  return result;
}

uint64_t *sub_BBC52C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      v6 = (v2 + 24);
      do
      {
        v7 = *(v6 - 1);
        if (v7)
        {
          *v6 = v7;
          operator delete(v7);
          v4 = *v3;
        }

        ++v5;
        v6 += 5;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

void sub_BBC5A4(char *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    v9 = 0;
    v10 = *(a2 + 2);
    v11 = -a4;
    while (1)
    {
      v12 = &a1[v9];
      v13 = *&a1[v9 + 8];
      v14 = *a2 > *&a1[v9];
      v15 = v10 == v13;
      v16 = v10 < v13;
      if (!v15)
      {
        v14 = v16;
      }

      if (v14)
      {
        break;
      }

      v9 += 40;
      if (__CFADD__(v11++, 1))
      {
        return;
      }
    }

    v18 = -v11;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        v96 = &a1[v9];
        v112 = *(v96 + 2);
        v108 = *v96;
        v97 = *(v96 + 4);
        v98 = *(v96 + 1);
        *(v96 + 2) = 0;
        *(v96 + 3) = 0;
        *(v96 + 4) = 0;
        v99 = *a2;
        *(v96 + 2) = *(a2 + 2);
        *v96 = v99;
        *(v96 + 1) = *(a2 + 1);
        *(v96 + 4) = *(a2 + 4);
        *a2 = v108;
        *(a2 + 2) = v112;
        *(a2 + 1) = v98;
        *(a2 + 4) = v97;
        return;
      }

      v30 = v18 / 2;
      v21 = &a1[40 * (v18 / 2) + v9];
      v20 = a2;
      if (a2 != a3)
      {
        v32 = *(v21 + 2);
        v33 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 3);
        v20 = a2;
        do
        {
          v34 = v33 >> 1;
          v35 = &v20[40 * (v33 >> 1)];
          v36 = *(v35 + 2);
          v37 = *v35 > *v21;
          v15 = v36 == v32;
          v38 = v36 < v32;
          if (!v15)
          {
            v37 = v38;
          }

          v39 = v35 + 40;
          v33 += ~v34;
          if (v37)
          {
            v20 = v39;
          }

          else
          {
            v33 = v34;
          }
        }

        while (v33);
      }

      v19 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - a2) >> 3);
      v31 = v20;
      if (a2 != v21)
      {
LABEL_33:
        v31 = v21;
        if (a2 != v20)
        {
          v31 = v21 + 40;
          v40 = v21 + 40;
          v41 = a2;
          while (1)
          {
            v109 = *(v40 - 8);
            v105 = *(v40 - 5);
            v42 = *(v40 - 1);
            v43 = *(v40 - 24);
            *(v40 - 3) = 0;
            *(v40 - 2) = 0;
            *(v40 - 1) = 0;
            v44 = *v41;
            *(v40 - 8) = *(v41 + 2);
            *(v40 - 5) = v44;
            *(v40 - 24) = *(v41 + 1);
            *(v40 - 1) = *(v41 + 4);
            *v41 = v105;
            *(v41 + 2) = v109;
            *(v41 + 1) = v43;
            *(v41 + 4) = v42;
            v41 += 40;
            if (v41 == v20)
            {
              break;
            }

            if (v40 == a2)
            {
              a2 = v41;
            }

            v40 += 40;
            v31 += 40;
          }

          if (v40 != a2)
          {
            v45 = a2;
            while (1)
            {
              v110 = *(v40 + 2);
              v106 = *v40;
              v46 = *(v40 + 4);
              v47 = *(v40 + 1);
              *(v40 + 3) = 0;
              *(v40 + 4) = 0;
              *(v40 + 2) = 0;
              v48 = *v45;
              *(v40 + 2) = *(v45 + 2);
              *v40 = v48;
              *(v40 + 1) = *(v45 + 1);
              *(v40 + 4) = *(v45 + 4);
              *(v45 + 2) = v110;
              *v45 = v106;
              *(v45 + 1) = v47;
              *(v45 + 4) = v46;
              v40 += 40;
              v45 += 40;
              v49 = v40 == a2;
              if (v45 == v20)
              {
                if (v40 == a2)
                {
                  break;
                }

                v45 = a2 + 40;
                while (1)
                {
                  v111 = *(v40 + 2);
                  v107 = *v40;
                  v50 = *(v40 + 4);
                  v51 = *(v40 + 1);
                  *(v40 + 3) = 0;
                  *(v40 + 4) = 0;
                  *(v40 + 2) = 0;
                  v52 = *a2;
                  *(v40 + 2) = *(a2 + 2);
                  *v40 = v52;
                  *(v40 + 1) = *(a2 + 1);
                  *(v40 + 4) = *(a2 + 4);
                  *(a2 + 2) = v111;
                  *a2 = v107;
                  *(a2 + 1) = v51;
                  *(a2 + 4) = v50;
                  v40 += 40;
                  v49 = v40 == a2;
                  if (v45 != v20)
                  {
                    break;
                  }

                  if (v40 == a2)
                  {
                    goto LABEL_48;
                  }
                }
              }

              if (v49)
              {
                a2 = v45;
              }
            }
          }
        }
      }
    }

    else
    {
      v19 = a5 / 2;
      v20 = &a2[40 * (a5 / 2)];
      v21 = a2;
      if (a2 - a1 != v9)
      {
        v22 = *(v20 + 2);
        v23 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1 - v9) >> 3);
        v21 = &a1[v9];
        do
        {
          v24 = v23 >> 1;
          v25 = &v21[40 * (v23 >> 1)];
          v26 = *(v25 + 2);
          v27 = *v25 < *v20;
          v15 = v26 == v22;
          v28 = v26 > v22;
          if (!v15)
          {
            v27 = v28;
          }

          v29 = v25 + 40;
          v23 += ~v24;
          if (v27)
          {
            v23 = v24;
          }

          else
          {
            v21 = v29;
          }
        }

        while (v23);
      }

      v30 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - a1 - v9) >> 3);
      v31 = &a2[40 * (a5 / 2)];
      if (a2 != v21)
      {
        goto LABEL_33;
      }
    }

LABEL_48:
    v53 = a5 - v19;
    if ((v30 + v19) >= (a5 - (v30 + v19) - v11))
    {
      sub_BBC5A4(v31, v20, a3, -v11 - v30, a5 - v19, a6, a7);
      a2 = v21;
      a4 = v30;
      a3 = v31;
      a5 = v19;
      a1 = v12;
      if (!v19)
      {
        return;
      }
    }

    else
    {
      v54 = v21;
      v55 = a3;
      v56 = -v11 - v30;
      sub_BBC5A4(&a1[v9], v54, v31, v30, v19, a6, a7);
      a4 = v56;
      a3 = v55;
      a2 = v20;
      a5 = v53;
      a1 = v31;
      if (!v53)
      {
        return;
      }
    }
  }

  if (a4 > a5)
  {
    if (a2 == a3)
    {
      return;
    }

    v57 = 0;
    v58 = 0;
    do
    {
      v59 = &a6[v57 / 8];
      v60 = &a2[v57];
      v61 = *&a2[v57];
      *(v59 + 2) = *&a2[v57 + 8];
      *v59 = v61;
      v59[3] = 0;
      v59[4] = 0;
      v59[2] = 0;
      *(v59 + 1) = *&a2[v57 + 16];
      v59[4] = *&a2[v57 + 32];
      *(v60 + 2) = 0;
      *(v60 + 3) = 0;
      *(v60 + 4) = 0;
      ++v58;
      v57 += 40;
    }

    while (v60 + 40 != a3);
    v62 = a3 - 16;
    v63 = &a6[v57 / 8];
    while (2)
    {
      if (a2 == a1)
      {
        if (v63 != a6)
        {
          v100 = v63;
          do
          {
            v101 = *(v100 - 5);
            v100 -= 5;
            v102 = *(v62 - 1);
            *(v62 - 4) = *(v100 + 2);
            *(v62 - 3) = v101;
            if (v102)
            {
              *v62 = v102;
              operator delete(v102);
              *(v62 - 1) = 0;
              *v62 = 0;
              *(v62 + 1) = 0;
            }

            *(v62 - 8) = *(v63 - 3);
            *(v62 + 1) = *(v63 - 1);
            *(v63 - 3) = 0;
            *(v63 - 2) = 0;
            *(v63 - 1) = 0;
            v62 -= 40;
            v63 = v100;
          }

          while (v100 != a6);
        }

        goto LABEL_91;
      }

      v67 = a2 - 40;
      v69 = v63 - 5;
      v70 = *(a2 - 8);
      v71 = *(v63 - 8);
      v72 = v71 < v70;
      if (v71 == v70)
      {
        v72 = *(v63 - 10) > *(a2 - 10);
      }

      v73 = v62 - 24;
      v74 = (v62 - 8);
      if (v72)
      {
        v75 = *v67;
        *(v62 - 4) = *(a2 - 8);
        *v73 = v75;
        v65 = *v74;
        v66 = a2;
        v69 = v63;
        a2 -= 40;
        if (!*v74)
        {
LABEL_60:
          *(v62 - 8) = *(v66 - 24);
          *(v62 + 1) = *(v66 - 1);
          *(v66 - 3) = 0;
          *(v66 - 2) = 0;
          *(v66 - 1) = 0;
          v62 -= 40;
          if (v63 == a6)
          {
            goto LABEL_91;
          }

          continue;
        }
      }

      else
      {
        v64 = *v69;
        *(v62 - 4) = *(v63 - 8);
        *v73 = v64;
        v65 = *v74;
        v66 = v63;
        v67 = a2;
        v63 -= 5;
        if (!*v74)
        {
          goto LABEL_60;
        }
      }

      break;
    }

    *v62 = v65;
    v68 = a1;
    operator delete(v65);
    a1 = v68;
    *v74 = 0;
    *v62 = 0;
    a2 = v67;
    v63 = v69;
    *(v62 + 1) = 0;
    goto LABEL_60;
  }

  if (a2 != a1)
  {
    v58 = 0;
    v76 = a6;
    v77 = a1;
    do
    {
      v78 = *v77;
      *(v76 + 2) = *(v77 + 2);
      *v76 = v78;
      v76[3] = 0;
      v76[4] = 0;
      v76[2] = 0;
      *(v76 + 1) = *(v77 + 1);
      v76[4] = *(v77 + 4);
      *(v77 + 2) = 0;
      *(v77 + 3) = 0;
      *(v77 + 4) = 0;
      ++v58;
      v77 += 40;
      v76 += 5;
    }

    while (v77 != a2);
    v79 = a1 + 16;
    v80 = a6;
    while (a2 != a3)
    {
      v81 = v79 - 16;
      v82 = *(a2 + 2);
      v83 = *(v80 + 2);
      v84 = *a2 > *v80;
      v15 = v82 == v83;
      v85 = v82 < v83;
      if (!v15)
      {
        v84 = v85;
      }

      if (v84)
      {
        v86 = *a2;
        *(v79 - 2) = *(a2 + 2);
        *v81 = v86;
        v87 = *v79;
        if (*v79)
        {
          *(v79 + 1) = v87;
          v88 = a2;
          v89 = a3;
          operator delete(v87);
          a3 = v89;
          a2 = v88;
          *v79 = 0;
          *(v79 + 1) = 0;
          *(v79 + 2) = 0;
        }

        *v79 = *(a2 + 1);
        *(v79 + 2) = *(a2 + 4);
        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
        *(a2 + 4) = 0;
        a2 += 40;
        v79 += 40;
        if (v76 == v80)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v90 = *v80;
        *(v79 - 2) = *(v80 + 2);
        *v81 = v90;
        v91 = *v79;
        if (*v79)
        {
          *(v79 + 1) = v91;
          v92 = a2;
          v93 = a3;
          operator delete(v91);
          a3 = v93;
          a2 = v92;
          *v79 = 0;
          *(v79 + 1) = 0;
          *(v79 + 2) = 0;
        }

        *v79 = *(v80 + 1);
        *(v79 + 2) = v80[4];
        v80[2] = 0;
        v80[3] = 0;
        v80[4] = 0;
        v80 += 5;
        v79 += 40;
        if (v76 == v80)
        {
          goto LABEL_91;
        }
      }
    }

    do
    {
      v94 = *v80;
      *(v79 - 2) = *(v80 + 2);
      *(v79 - 2) = v94;
      v95 = *v79;
      if (*v79)
      {
        *(v79 + 1) = v95;
        operator delete(v95);
        *v79 = 0;
        *(v79 + 1) = 0;
        *(v79 + 2) = 0;
      }

      *v79 = *(v80 + 1);
      *(v79 + 2) = v80[4];
      v80[2] = 0;
      v80[3] = 0;
      v80[4] = 0;
      v79 += 40;
      v15 = v76 - 5 == v80;
      v80 += 5;
    }

    while (!v15);
LABEL_91:
    if (a6)
    {
      v103 = a6 + 3;
      do
      {
        v104 = *(v103 - 1);
        if (v104)
        {
          *v103 = v104;
          operator delete(v104);
        }

        v103 += 5;
        --v58;
      }

      while (v58);
    }
  }
}

char *sub_BBCDF8(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 6)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 58))
    {
      v9 = v6 >> 5;
      if (v6 >> 5 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFC0;
      v11 = 0x3FFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 58))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 6)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

__n128 sub_BBCF54(_DWORD *a1, void *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 2;
  v9 = a2 - 4;
  v10 = a2 - 6;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = (a2 - v11) >> 4;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      if (*(a2 - 3) < v11[1])
      {
        result = *v11;
        v163 = *v11;
        v76 = *(a2 - 2);
        *(v11 + 5) = *(a2 - 11);
        *v11 = v76;
        *(a2 - 11) = *(&v163 + 5);
        *(a2 - 2) = v163;
      }

      return result;
    }

LABEL_9:
    if (v12 <= 23)
    {
      v82 = v11 + 4;
      v84 = v11 == a2 || v82 == a2;
      if (a4)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v11;
          do
          {
            v88 = v82;
            v89 = v86[5];
            if (v89 < v86[1])
            {
              v90 = *v88;
              v91 = *(v86 + 3);
              v92 = v85;
              do
              {
                v93 = v11 + v92;
                *(v93 + 2) = *(v11 + v92);
                *(v93 + 21) = *(v11 + v92 + 5);
                if (!v92)
                {
                  v87 = v11;
                  goto LABEL_125;
                }

                v92 -= 16;
              }

              while (v89 < *(v93 - 3));
              v87 = v11 + v92 + 16;
LABEL_125:
              *v87 = v90;
              *(v87 + 4) = v89;
              *(v87 + 8) = v91;
              *(v87 + 12) = BYTE4(v91);
            }

            v82 = v88 + 4;
            v85 += 16;
            v86 = v88;
          }

          while (v88 + 4 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v131 = v82;
          v132 = a1[5];
          if (v132 < a1[1])
          {
            v133 = *v82;
            v134 = *(a1 + 3);
            v135 = v131;
            do
            {
              v136 = v135;
              v137 = *(v135 - 2);
              v135 -= 4;
              *v136 = v137;
              *(v136 + 5) = *(v136 - 11);
            }

            while (v132 < *(v136 - 7));
            *v135 = v133;
            v135[1] = v132;
            v135[2] = v134;
            *(v135 + 12) = BYTE4(v134);
          }

          v82 = v131 + 4;
          a1 = v131;
        }

        while (v131 + 4 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v94 = (v12 - 2) >> 1;
        v95 = v94;
        do
        {
          if (v94 >= v95)
          {
            v97 = (2 * (v95 & 0xFFFFFFFFFFFFFFFLL)) | 1;
            v98 = &v11[4 * v97];
            if (2 * (v95 & 0xFFFFFFFFFFFFFFFLL) + 2 < v12)
            {
              v99 = v98[1];
              v100 = v98[5];
              v98 += 4 * (v99 < v100);
              if (v99 < v100)
              {
                v97 = 2 * (v95 & 0xFFFFFFFFFFFFFFFLL) + 2;
              }
            }

            v101 = &v11[4 * v95];
            v102 = v101[1];
            if (v98[1] >= v102)
            {
              v103 = *v101;
              v104 = *(v101 + 1);
              do
              {
                v105 = v101;
                v101 = v98;
                v106 = *v98;
                *(v105 + 5) = *(v101 + 5);
                *v105 = v106;
                if (v94 < v97)
                {
                  break;
                }

                v107 = (2 * v97) | 1;
                v98 = &v11[4 * v107];
                v108 = 2 * v97 + 2;
                if (v108 < v12)
                {
                  v109 = v98[1];
                  v110 = v98[5];
                  v98 += 4 * (v109 < v110);
                  if (v109 < v110)
                  {
                    v107 = v108;
                  }
                }

                v97 = v107;
              }

              while (v98[1] >= v102);
              *v101 = v103;
              v101[1] = v102;
              v101[2] = v104;
              *(v101 + 12) = BYTE4(v104);
            }
          }

          v96 = v95-- <= 0;
        }

        while (!v96);
        do
        {
          v111 = 0;
          result = *v11;
          v166 = *v11;
          v112 = v11;
          do
          {
            v118 = &v112[2 * v111];
            v116 = v118 + 2;
            v119 = (2 * v111) | 1;
            v111 = 2 * v111 + 2;
            if (v111 < v12)
            {
              v113 = *(v118 + 5);
              v114 = *(v118 + 9);
              v115 = v118 + 4;
              if (v113 >= v114)
              {
                v111 = v119;
              }

              else
              {
                v116 = v115;
              }
            }

            else
            {
              v111 = v119;
            }

            v117 = *v116;
            *(v112 + 5) = *(v116 + 5);
            *v112 = v117;
            v112 = v116;
          }

          while (v111 <= ((v12 - 2) >> 1));
          a2 -= 2;
          if (v116 == a2)
          {
            *(v116 + 5) = *(&v166 + 5);
            *v116 = v166;
          }

          else
          {
            v120 = *a2;
            *(v116 + 5) = *(a2 + 5);
            *v116 = v120;
            *(a2 + 5) = *(&v166 + 5);
            *a2 = v166;
            v121 = (v116 - v11 + 16) >> 4;
            v96 = v121 < 2;
            v122 = v121 - 2;
            if (!v96)
            {
              v123 = v122 >> 1;
              v124 = &v11[4 * (v122 >> 1)];
              v125 = *(v116 + 1);
              if (v124[1] < v125)
              {
                v126 = *v116;
                v127 = v116[1];
                do
                {
                  v128 = v116;
                  v116 = v124;
                  v129 = *v124;
                  *(v128 + 5) = *(v116 + 5);
                  *v128 = v129;
                  if (!v123)
                  {
                    break;
                  }

                  v123 = (v123 - 1) >> 1;
                  v124 = &v11[4 * v123];
                }

                while (v124[1] < v125);
                *v116 = v126;
                *(v116 + 1) = v125;
                *(v116 + 2) = v127;
                *(v116 + 12) = BYTE4(v127);
              }
            }
          }

          v96 = v12-- <= 2;
        }

        while (!v96);
      }

      return result;
    }

    v13 = &v11[4 * (v12 >> 1)];
    v14 = *(a2 - 3);
    if (v12 < 0x81)
    {
      v17 = v11[1];
      if (v17 < v13[1])
      {
        if (v14 < v17)
        {
          result = *v13;
          v141 = *v13;
          v19 = *v8;
          *(v13 + 5) = *(a2 - 11);
          *v13 = v19;
          goto LABEL_36;
        }

        result = *v13;
        v150 = *v13;
        v32 = *v11;
        *(v13 + 5) = *(v11 + 5);
        *v13 = v32;
        *(v11 + 5) = *(v150.n128_u64 + 5);
        *v11 = v150.n128_u64[0];
        if (*(a2 - 3) < v11[1])
        {
          result = *v11;
          v141 = *v11;
          v33 = *v8;
          *(v11 + 5) = *(a2 - 11);
          *v11 = v33;
LABEL_36:
          *(a2 - 11) = *(v141.n128_u64 + 5);
          *v8 = v141.n128_u64[0];
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v14 >= v17)
      {
        goto LABEL_37;
      }

      result = *v11;
      v144 = *v11;
      v22 = *v8;
      *(v11 + 5) = *(a2 - 11);
      *v11 = v22;
      *(a2 - 11) = *(&v144 + 5);
      *v8 = v144;
      if (v11[1] >= v13[1])
      {
        goto LABEL_37;
      }

      result = *v13;
      v145 = *v13;
      v23 = *v11;
      *(v13 + 5) = *(v11 + 5);
      *v13 = v23;
      *(v11 + 5) = *(v145.n128_u64 + 5);
      *v11 = v145.n128_u64[0];
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v34 = v11[1];
      if (*(v11 - 3) < v34)
      {
        goto LABEL_62;
      }

      if (v34 >= *(a2 - 3))
      {
        v65 = (v11 + 4);
        do
        {
          v11 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v66 = *(v65 + 4);
          v65 += 16;
        }

        while (v34 >= v66);
      }

      else
      {
        v63 = v11;
        do
        {
          v11 = v63 + 4;
          v64 = v63[5];
          v63 += 4;
        }

        while (v34 >= v64);
      }

      v67 = a2;
      if (v11 < a2)
      {
        v68 = a2;
        do
        {
          v67 = v68 - 2;
          v69 = *(v68 - 3);
          v68 -= 2;
        }

        while (v34 < v69);
      }

      v70 = *a1;
      v71 = *(a1 + 1);
      while (v11 < v67)
      {
        result = *v11;
        v162 = *v11;
        v72 = *v67;
        *(v11 + 5) = *(v67 + 5);
        *v11 = v72;
        *(v67 + 5) = *(&v162 + 5);
        *v67 = v162;
        do
        {
          v73 = v11[5];
          v11 += 4;
        }

        while (v34 >= v73);
        do
        {
          v74 = *(v67 - 3);
          v67 -= 2;
        }

        while (v34 < v74);
      }

      if (v11 - 4 != a1)
      {
        v75 = *(v11 - 2);
        *(a1 + 5) = *(v11 - 11);
        *a1 = v75;
      }

      a4 = 0;
      *(v11 - 4) = v70;
      *(v11 - 3) = v34;
      *(v11 - 2) = v71;
      *(v11 - 4) = BYTE4(v71);
    }

    else
    {
      v15 = v13[1];
      if (v15 >= v11[1])
      {
        if (v14 < v15)
        {
          v142 = *v13;
          v20 = *v8;
          *(v13 + 5) = *(a2 - 11);
          *v13 = v20;
          *(a2 - 11) = *(v142.n128_u64 + 5);
          *v8 = v142.n128_u64[0];
          if (v13[1] < v11[1])
          {
            v143 = *v11;
            v21 = *v13;
            *(v11 + 5) = *(v13 + 5);
            *v11 = v21;
            *(v13 + 5) = *(&v143 + 5);
            *v13 = v143;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          v146 = *v11;
          v24 = *v13;
          *(v11 + 5) = *(v13 + 5);
          *v11 = v24;
          *(v13 + 5) = *(&v146 + 5);
          *v13 = v146;
          if (*(a2 - 3) >= v13[1])
          {
            goto LABEL_28;
          }

          v140 = *v13;
          v25 = *v8;
          *(v13 + 5) = *(a2 - 11);
          *v13 = v25;
        }

        else
        {
          v140 = *v11;
          v16 = *v8;
          *(v11 + 5) = *(a2 - 11);
          *v11 = v16;
        }

        *(a2 - 11) = *(v140.n128_u64 + 5);
        *v8 = v140.n128_u64[0];
      }

LABEL_28:
      v26 = (v13 - 4);
      v27 = *(v13 - 3);
      v28 = *(a2 - 7);
      if (v27 >= v11[5])
      {
        if (v28 < v27)
        {
          v148 = *v26;
          v30 = *v9;
          *(v13 - 11) = *(a2 - 27);
          v26->n128_u64[0] = v30;
          *(a2 - 27) = *(v148.n128_u64 + 5);
          *v9 = v148.n128_u64[0];
          if (*(v13 - 3) < v11[5])
          {
            v149 = *(v11 + 1);
            v31 = v26->n128_u64[0];
            *(v11 + 21) = *(v13 - 11);
            *(v11 + 2) = v31;
            *(v13 - 11) = *(&v149 + 5);
            v26->n128_u64[0] = v149;
          }
        }
      }

      else
      {
        if (v28 >= v27)
        {
          v151 = *(v11 + 1);
          v35 = v26->n128_u64[0];
          *(v11 + 21) = *(v13 - 11);
          *(v11 + 2) = v35;
          *(v13 - 11) = *(&v151 + 5);
          v26->n128_u64[0] = v151;
          if (*(a2 - 7) >= *(v13 - 3))
          {
            goto LABEL_42;
          }

          v147 = *v26;
          v36 = *v9;
          *(v13 - 11) = *(a2 - 27);
          v26->n128_u64[0] = v36;
        }

        else
        {
          v147 = *(v11 + 1);
          v29 = *v9;
          *(v11 + 21) = *(a2 - 27);
          *(v11 + 2) = v29;
        }

        *(a2 - 27) = *(v147.n128_u64 + 5);
        *v9 = v147.n128_u64[0];
      }

LABEL_42:
      v37 = v13[5];
      v38 = *(a2 - 11);
      if (v37 >= v11[9])
      {
        if (v38 < v37)
        {
          v153 = *(v13 + 1);
          v40 = *v10;
          *(v13 + 21) = *(a2 - 43);
          *(v13 + 2) = v40;
          *(a2 - 43) = *(&v153 + 5);
          *v10 = v153;
          if (v13[5] < v11[9])
          {
            v154 = *(v11 + 2);
            v41 = *(v13 + 2);
            *(v11 + 37) = *(v13 + 21);
            *(v11 + 4) = v41;
            *(v13 + 21) = *(&v154 + 5);
            *(v13 + 2) = v154;
          }
        }
      }

      else
      {
        if (v38 >= v37)
        {
          v155 = *(v11 + 2);
          v42 = *(v13 + 2);
          *(v11 + 37) = *(v13 + 21);
          *(v11 + 4) = v42;
          *(v13 + 21) = *(&v155 + 5);
          *(v13 + 2) = v155;
          if (*(a2 - 11) >= v13[5])
          {
            goto LABEL_51;
          }

          v152 = *(v13 + 1);
          v43 = *v10;
          *(v13 + 21) = *(a2 - 43);
          *(v13 + 2) = v43;
        }

        else
        {
          v152 = *(v11 + 2);
          v39 = *v10;
          *(v11 + 37) = *(a2 - 43);
          *(v11 + 4) = v39;
        }

        *(a2 - 43) = *(&v152 + 5);
        *v10 = v152;
      }

LABEL_51:
      v44 = v13[1];
      v45 = v13[5];
      if (v44 >= *(v13 - 3))
      {
        if (v45 < v44)
        {
          v157 = *v13;
          *v13 = *(v13 + 2);
          *(v13 + 5) = *(v13 + 21);
          *(v13 + 21) = *(v157.n128_u64 + 5);
          *(v13 + 2) = v157.n128_u64[0];
          if (v13[1] < *(v13 - 3))
          {
            v158 = *v26;
            v26->n128_u64[0] = *v13;
            *(v13 - 11) = *(v13 + 5);
            *(v13 + 5) = *(v158.n128_u64 + 5);
            *v13 = v158.n128_u64[0];
          }
        }
      }

      else
      {
        if (v45 >= v44)
        {
          v159 = *v26;
          v26->n128_u64[0] = *v13;
          *(v13 - 11) = *(v13 + 5);
          *(v13 + 5) = *(v159.n128_u64 + 5);
          *v13 = v159.n128_u64[0];
          if (v13[5] >= v13[1])
          {
            goto LABEL_60;
          }

          v156 = *v13;
          *v13 = *(v13 + 2);
          *(v13 + 5) = *(v13 + 21);
        }

        else
        {
          v156 = *v26;
          v26->n128_u64[0] = *(v13 + 2);
          *(v13 - 11) = *(v13 + 21);
        }

        *(v13 + 21) = *(v156.n128_u64 + 5);
        *(v13 + 2) = v156.n128_u64[0];
      }

LABEL_60:
      result = *v11;
      v160 = *v11;
      v46 = *v13;
      *(v11 + 5) = *(v13 + 5);
      *v11 = v46;
      *(v13 + 5) = *(&v160 + 5);
      *v13 = v160;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v34 = v11[1];
LABEL_62:
      v47 = 0;
      v48 = *v11;
      v49 = *(v11 + 1);
      do
      {
        v50 = v11[v47 + 5];
        v47 += 4;
      }

      while (v50 < v34);
      v51 = &v11[v47];
      v52 = a2;
      if (v47 == 4)
      {
        v55 = a2;
        while (v51 < v55)
        {
          v53 = v55 - 2;
          v56 = *(v55 - 3);
          v55 -= 2;
          if (v56 < v34)
          {
            goto LABEL_70;
          }
        }

        v53 = v55;
        v11 = v51;
      }

      else
      {
        do
        {
          v53 = v52 - 2;
          v54 = *(v52 - 3);
          v52 -= 2;
        }

        while (v54 >= v34);
LABEL_70:
        v11 = v51;
        if (v51 < v53)
        {
          v57 = v53;
          do
          {
            v161 = *v11;
            v58 = *v57;
            *(v11 + 5) = *(v57 + 5);
            *v11 = v58;
            *(v57 + 5) = *(&v161 + 5);
            *v57 = v161;
            do
            {
              v59 = v11[5];
              v11 += 4;
            }

            while (v59 < v34);
            do
            {
              v60 = *(v57 - 3);
              v57 -= 2;
            }

            while (v60 >= v34);
          }

          while (v11 < v57);
        }
      }

      if (v11 - 4 != a1)
      {
        v61 = *(v11 - 2);
        *(a1 + 5) = *(v11 - 11);
        *a1 = v61;
      }

      *(v11 - 4) = v48;
      *(v11 - 3) = v34;
      *(v11 - 2) = v49;
      *(v11 - 4) = BYTE4(v49);
      if (v51 < v53)
      {
        goto LABEL_81;
      }

      v62 = sub_BBE0AC(a1, v11 - 1);
      if (sub_BBE0AC(v11, a2))
      {
        a2 = v11 - 4;
        if (!v62)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v62)
      {
LABEL_81:
        result.n128_u64[0] = sub_BBCF54(a1, v11 - 2, a3, a4 & 1).n128_u64[0];
        a4 = 0;
      }
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v80 = v11[5];
      v81 = v11[9];
      if (v80 >= v11[1])
      {
        if (v81 < v80)
        {
          result = *(v11 + 1);
          *(v11 + 2) = *(v11 + 4);
          *(v11 + 21) = *(v11 + 37);
          *(v11 + 4) = result.n128_u64[0];
          *(v11 + 37) = *&result >> 40;
          if (v11[5] < v11[1])
          {
            result = *v11;
            v167 = *v11;
            *v11 = *(v11 + 2);
            *(v11 + 5) = *(v11 + 21);
            *(v11 + 2) = v167;
            *(v11 + 21) = *(&v167 + 5);
          }
        }
      }

      else
      {
        if (v81 < v80)
        {
          result = *v11;
          v165 = *v11;
          *v11 = *(v11 + 4);
          *(v11 + 5) = *(v11 + 37);
          goto LABEL_181;
        }

        result = *v11;
        v169 = *v11;
        *v11 = *(v11 + 2);
        *(v11 + 5) = *(v11 + 21);
        *(v11 + 2) = v169;
        *(v11 + 21) = *(&v169 + 5);
        if (v11[9] < v11[5])
        {
          result = *(v11 + 1);
          v165 = result;
          *(v11 + 2) = *(v11 + 4);
          *(v11 + 21) = *(v11 + 37);
LABEL_181:
          *(v11 + 4) = v165.n128_u64[0];
          *(v11 + 37) = *(v165.n128_u64 + 5);
        }
      }

      if (*(a2 - 3) >= v11[9])
      {
        return result;
      }

      result = *(v11 + 2);
      v139 = *v8;
      *(v11 + 37) = *(a2 - 11);
      *(v11 + 4) = v139;
      *(a2 - 11) = *&result >> 40;
      *v8 = result.n128_u64[0];
      if (v11[9] >= v11[5])
      {
        return result;
      }

      result = *(v11 + 1);
      *(v11 + 2) = *(v11 + 4);
      *(v11 + 21) = *(v11 + 37);
      *(v11 + 4) = result.n128_u64[0];
      *(v11 + 37) = *&result >> 40;
LABEL_185:
      if (v11[5] < v11[1])
      {
        result = *v11;
        v170 = *v11;
        *v11 = *(v11 + 2);
        *(v11 + 5) = *(v11 + 21);
        *(v11 + 2) = v170;
        *(v11 + 21) = *(&v170 + 5);
      }

      return result;
    }

    if (v12 == 5)
    {

      result.n128_u64[0] = sub_BBDE14(v11, (v11 + 4), v11 + 2, v11 + 3, (a2 - 2)).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v77 = v11[5];
  v78 = *(a2 - 3);
  if (v77 >= v11[1])
  {
    if (v78 >= v77)
    {
      return result;
    }

    result = *(v11 + 1);
    v130 = *v8;
    *(v11 + 21) = *(a2 - 11);
    *(v11 + 2) = v130;
    *(a2 - 11) = *&result >> 40;
    *v8 = result.n128_u64[0];
    goto LABEL_185;
  }

  if (v78 >= v77)
  {
    result = *v11;
    v168 = *v11;
    *v11 = *(v11 + 2);
    *(v11 + 5) = *(v11 + 21);
    *(v11 + 2) = v168;
    *(v11 + 21) = *(&v168 + 5);
    if (*(a2 - 3) >= v11[5])
    {
      return result;
    }

    result = *(v11 + 1);
    v164 = result;
    v138 = *v8;
    *(v11 + 21) = *(a2 - 11);
    *(v11 + 2) = v138;
  }

  else
  {
    result = *v11;
    v164 = *v11;
    v79 = *v8;
    *(v11 + 5) = *(a2 - 11);
    *v11 = v79;
  }

  *(a2 - 11) = *(v164.n128_u64 + 5);
  *v8 = v164.n128_u64[0];
  return result;
}

__n128 sub_BBDE14(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = *(a2 + 4);
  v6 = *(a3 + 1);
  if (v5 >= *(a1 + 4))
  {
    if (v6 < v5)
    {
      result = *a2;
      v21 = *a2;
      v9 = *(a3 + 5);
      *a2 = *a3;
      *(a2 + 5) = v9;
      *(a3 + 5) = *(v21.n128_u64 + 5);
      *a3 = v21.n128_u64[0];
      if (*(a2 + 4) < *(a1 + 4))
      {
        result = *a1;
        v22 = *a1;
        v10 = *(a2 + 5);
        *a1 = *a2;
        *(a1 + 5) = v10;
        *(a2 + 5) = *(v22.n128_u64 + 5);
        *a2 = v22.n128_u64[0];
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      result = *a1;
      v20 = *a1;
      v8 = *(a3 + 5);
      *a1 = *a3;
      *(a1 + 5) = v8;
LABEL_9:
      *(a3 + 5) = *(v20.n128_u64 + 5);
      *a3 = v20.n128_u64[0];
      goto LABEL_10;
    }

    result = *a1;
    v23 = *a1;
    v11 = *(a2 + 5);
    *a1 = *a2;
    *(a1 + 5) = v11;
    *(a2 + 5) = *(v23.n128_u64 + 5);
    *a2 = v23.n128_u64[0];
    if (*(a3 + 1) < *(a2 + 4))
    {
      result = *a2;
      v20 = *a2;
      v12 = *(a3 + 5);
      *a2 = *a3;
      *(a2 + 5) = v12;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 1) < *(a3 + 1))
  {
    result = *a3;
    v24 = *a3;
    v13 = *(a4 + 5);
    *a3 = *a4;
    *(a3 + 5) = v13;
    *(a4 + 5) = *(&v24 + 5);
    *a4 = v24;
    if (*(a3 + 1) < *(a2 + 4))
    {
      result = *a2;
      v25 = *a2;
      v14 = *(a3 + 5);
      *a2 = *a3;
      *(a2 + 5) = v14;
      *(a3 + 5) = *(v25.n128_u64 + 5);
      *a3 = v25.n128_u64[0];
      if (*(a2 + 4) < *(a1 + 4))
      {
        result = *a1;
        v26 = *a1;
        v15 = *(a2 + 5);
        *a1 = *a2;
        *(a1 + 5) = v15;
        *(a2 + 5) = *(v26.n128_u64 + 5);
        *a2 = v26.n128_u64[0];
      }
    }
  }

  if (*(a5 + 4) < *(a4 + 1))
  {
    result = *a4;
    v27 = *a4;
    v16 = *(a5 + 5);
    *a4 = *a5;
    *(a4 + 5) = v16;
    *(a5 + 5) = *(&v27 + 5);
    *a5 = v27;
    if (*(a4 + 1) < *(a3 + 1))
    {
      result = *a3;
      v28 = *a3;
      v17 = *(a4 + 5);
      *a3 = *a4;
      *(a3 + 5) = v17;
      *(a4 + 5) = *(&v28 + 5);
      *a4 = v28;
      if (*(a3 + 1) < *(a2 + 4))
      {
        result = *a2;
        v29 = *a2;
        v18 = *(a3 + 5);
        *a2 = *a3;
        *(a2 + 5) = v18;
        *(a3 + 5) = *(v29.n128_u64 + 5);
        *a3 = v29.n128_u64[0];
        if (*(a2 + 4) < *(a1 + 4))
        {
          result = *a1;
          v30 = *a1;
          v19 = *(a2 + 5);
          *a1 = *a2;
          *(a1 + 5) = v19;
          *(a2 + 5) = *(v30.n128_u64 + 5);
          *a2 = v30.n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL sub_BBE0AC(__int128 *a1, __int128 *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = a2 - 1;
      v6 = *(a1 + 5);
      v7 = *(a2 - 3);
      if (v6 < *(a1 + 1))
      {
        if (v7 >= v6)
        {
          v38 = *a1;
          *a1 = *(a1 + 2);
          *(a1 + 5) = *(a1 + 21);
          *(a1 + 2) = v38;
          *(a1 + 21) = *(&v38 + 5);
          if (*(a2 - 3) >= *(a1 + 5))
          {
            return 1;
          }

          v30 = a1[1];
          v17 = *(a2 - 11);
          *(a1 + 2) = *v5;
          *(a1 + 21) = v17;
        }

        else
        {
          v30 = *a1;
          v8 = *(a2 - 11);
          *a1 = *v5;
          *(a1 + 5) = v8;
        }

        *(a2 - 11) = *(&v30 + 5);
        *v5 = v30;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v33 = a1[1];
      v16 = *(a2 - 11);
      *(a1 + 2) = *v5;
      *(a1 + 21) = v16;
      *(a2 - 11) = *(&v33 + 5);
      *v5 = v33;
LABEL_49:
      if (*(a1 + 5) < *(a1 + 1))
      {
        v43 = *a1;
        *a1 = *(a1 + 2);
        *(a1 + 5) = *(a1 + 21);
        *(a1 + 2) = v43;
        *(a1 + 21) = *(&v43 + 5);
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_BBDE14(a1, (a1 + 1), a1 + 2, a1 + 3, (a2 - 1));
        return 1;
      }

      goto LABEL_13;
    }

    v13 = *(a1 + 5);
    v14 = *(a1 + 1);
    v15 = *(a1 + 9);
    if (v13 >= v14)
    {
      if (v15 < v13)
      {
        v36 = a1[1];
        *(a1 + 2) = *(a1 + 4);
        *(a1 + 21) = *(a1 + 37);
        *(a1 + 4) = v36;
        *(a1 + 37) = *(&v36 + 5);
        if (*(a1 + 5) < v14)
        {
          v37 = *a1;
          *a1 = *(a1 + 2);
          *(a1 + 5) = *(a1 + 21);
          *(a1 + 2) = v37;
          *(a1 + 21) = *(&v37 + 5);
        }
      }

      goto LABEL_46;
    }

    if (v15 >= v13)
    {
      v40 = *a1;
      *a1 = *(a1 + 2);
      *(a1 + 5) = *(a1 + 21);
      *(a1 + 2) = v40;
      *(a1 + 21) = *(&v40 + 5);
      if (v15 >= *(a1 + 5))
      {
        goto LABEL_46;
      }

      v32 = a1[1];
      *(a1 + 2) = *(a1 + 4);
      *(a1 + 21) = *(a1 + 37);
    }

    else
    {
      v32 = *a1;
      *a1 = *(a1 + 4);
      *(a1 + 5) = *(a1 + 37);
    }

    *(a1 + 4) = v32;
    *(a1 + 37) = *(&v32 + 5);
LABEL_46:
    if (*(a2 - 3) >= *(a1 + 9))
    {
      return 1;
    }

    v27 = a2 - 1;
    v41 = a1[2];
    v28 = *(a2 - 11);
    *(a1 + 4) = *(a2 - 2);
    *(a1 + 37) = v28;
    *(v27 + 5) = *(&v41 + 5);
    *v27 = v41;
    if (*(a1 + 9) >= *(a1 + 5))
    {
      return 1;
    }

    v42 = a1[1];
    *(a1 + 2) = *(a1 + 4);
    *(a1 + 21) = *(a1 + 37);
    *(a1 + 4) = v42;
    *(a1 + 37) = *(&v42 + 5);
    goto LABEL_49;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 3) < *(a1 + 1))
    {
      v29 = *a1;
      v3 = *(a2 - 11);
      *a1 = *(a2 - 2);
      *(a1 + 5) = v3;
      *(a2 - 11) = *(&v29 + 5);
      *(a2 - 2) = v29;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = *(a1 + 5);
  v11 = *(a1 + 1);
  v12 = *(a1 + 9);
  if (v10 >= v11)
  {
    if (v12 < v10)
    {
      v34 = a1[1];
      *(a1 + 2) = *v9;
      *(a1 + 21) = *(a1 + 37);
      *v9 = v34;
      *(a1 + 37) = *(&v34 + 5);
      if (*(a1 + 5) < v11)
      {
        v35 = *a1;
        *a1 = *(a1 + 2);
        *(a1 + 5) = *(a1 + 21);
        *(a1 + 2) = v35;
        *(a1 + 21) = *(&v35 + 5);
      }
    }
  }

  else
  {
    if (v12 >= v10)
    {
      v39 = *a1;
      *a1 = *(a1 + 2);
      *(a1 + 5) = *(a1 + 21);
      *(a1 + 2) = v39;
      *(a1 + 21) = *(&v39 + 5);
      if (v12 >= *(a1 + 5))
      {
        goto LABEL_33;
      }

      v31 = a1[1];
      *(a1 + 2) = *v9;
      *(a1 + 21) = *(a1 + 37);
    }

    else
    {
      v31 = *a1;
      *a1 = *v9;
      *(a1 + 5) = *(a1 + 37);
    }

    *v9 = v31;
    *(a1 + 37) = *(&v31 + 5);
  }

LABEL_33:
  v18 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    v22 = v18[1];
    if (v22 < *(v9 + 1))
    {
      v23 = *v18;
      v24 = *(v18 + 1);
      v25 = v19;
      do
      {
        v26 = a1 + v25;
        *(v26 + 48) = *(a1 + v25 + 32);
        *(v26 + 53) = *(a1 + v25 + 37);
        if (v25 == -32)
        {
          v21 = a1;
          goto LABEL_36;
        }

        v25 -= 16;
      }

      while (v22 < *(v26 + 20));
      v21 = a1 + v25 + 48;
LABEL_36:
      *v21 = v23;
      *(v21 + 4) = v22;
      *(v21 + 8) = v24;
      *(v21 + 12) = BYTE4(v24);
      if (++v20 == 8)
      {
        return v18 + 4 == a2;
      }
    }

    v9 = v18;
    v19 += 16;
    v18 += 4;
    if (v18 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_BBE5B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 == a2)
    {
      *(result + 24) = result;
      v5 = result;
      (*(**(a2 + 24) + 24))(*(a2 + 24), result);
      return v5;
    }

    else
    {
      v3 = result;
      v4 = (*(*v2 + 16))(*(a2 + 24));
      result = v3;
      *(v3 + 24) = v4;
    }
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

void sub_BBE66C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[1];
  v29 = a3 + 1;
  v5 = a3[2];
  if (v4 == v5)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v6 = v5 - v4 - 296;
  if (v6 < 0x128)
  {
    v7 = 0;
    v8 = a3[1];
    do
    {
LABEL_15:
      v15 = *(v8 + 16);
      if (v15 + 1 > v7)
      {
        v7 = v15 + 1;
      }

      v8 += 296;
    }

    while (v8 != v5);
    goto LABEL_18;
  }

  v9 = 0;
  v10 = 0;
  v11 = v6 / 0x128 + 1;
  v8 = v4 + 296 * (v11 & 0x1FFFFFFFFFFFFFELL);
  v12 = v11 & 0x1FFFFFFFFFFFFFELL;
  do
  {
    v13 = *(v4 + 16);
    v14 = *(v4 + 312);
    if (v13 + 1 > v9)
    {
      v9 = v13 + 1;
    }

    if (v14 + 1 > v10)
    {
      v10 = v14 + 1;
    }

    v4 += 592;
    v12 -= 2;
  }

  while (v12);
  if (v9 <= v10)
  {
    v7 = v10;
  }

  else
  {
    v7 = v9;
  }

  if (v11 != (v11 & 0x1FFFFFFFFFFFFFELL))
  {
    goto LABEL_15;
  }

LABEL_18:
  v17 = *(a2 + 8);
  v16 = *(a2 + 16);
  if (v17 != v16)
  {
    while (1)
    {
      v18 = *(a1 + 24);
      if (!v18)
      {
        sub_2B7420();
      }

      if (!(*(*v18 + 48))(v18, v17))
      {
        goto LABEL_20;
      }

      sub_A32C84(&__src, v17);
      if (v32 != -1)
      {
        LODWORD(v32) = v32 + v7;
      }

      v54[4] = v35;
      v54[5] = v36;
      v55 = v37;
      v54[0] = __src;
      v54[1] = v32;
      v54[2] = v33;
      v54[3] = v34;
      v58 = v40;
      v57 = v39;
      v40 = 0;
      v39 = 0uLL;
      v56 = v38;
      v59 = v41;
      v61 = v43;
      v62 = v44;
      v60 = v42;
      v63 = v45;
      v64 = v46;
      v19 = v47;
      v47 = 0;
      v46 = 0uLL;
      v66 = *v48;
      v20 = v51;
      v65 = v19;
      v67 = v49;
      v48[0] = 0;
      v48[1] = 0;
      v68 = v50;
      v49 = 0;
      v50 = 0uLL;
      v51 = 0;
      __p = v52;
      v69 = v20;
      v71 = v53;
      v52 = 0uLL;
      v53 = 0;
      v21 = a3[2];
      if (v21 >= a3[3])
      {
        sub_A7C8B8(v29, v54);
        v26 = v25;
        v27 = __p;
        a3[2] = v26;
        if (v27)
        {
          *(&__p + 1) = v27;
          operator delete(v27);
        }
      }

      else
      {
        memmove(a3[2], &__src, 0x68uLL);
        *(v21 + 104) = v56;
        v22 = v57;
        *(v21 + 128) = v58;
        *(v21 + 112) = v22;
        v58 = 0;
        v57 = 0uLL;
        *(v21 + 136) = v59;
        v23 = v60;
        v24 = v62;
        *(v21 + 160) = v61;
        *(v21 + 176) = v24;
        *(v21 + 144) = v23;
        *(v21 + 192) = v63;
        *(v21 + 200) = 0;
        *(v21 + 208) = 0;
        *(v21 + 216) = 0;
        *(v21 + 224) = 0;
        *(v21 + 200) = v64;
        *(v21 + 216) = v65;
        v64 = 0uLL;
        v65 = 0;
        *(v21 + 232) = 0;
        *(v21 + 240) = 0;
        *(v21 + 224) = v66;
        v66 = 0uLL;
        *(v21 + 240) = v67;
        *(v21 + 248) = 0;
        *(v21 + 256) = 0;
        *(v21 + 264) = 0;
        *(v21 + 248) = v68;
        *(v21 + 264) = v69;
        *(v21 + 272) = 0;
        v67 = 0;
        v68 = 0uLL;
        v69 = 0;
        *(v21 + 280) = 0;
        *(v21 + 288) = 0;
        *(v21 + 272) = __p;
        *(v21 + 288) = v71;
        __p = 0uLL;
        v71 = 0;
        a3[2] = v21 + 296;
      }

      if (v68)
      {
        *(&v68 + 1) = v68;
        operator delete(v68);
      }

      if (v66)
      {
        *(&v66 + 1) = v66;
        operator delete(v66);
      }

      v72[0] = &v64;
      sub_A3212C(v72);
      if (SHIBYTE(v58) < 0)
      {
        break;
      }

      v28 = v52;
      if (v52)
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v50)
      {
        *(&v50 + 1) = v50;
        operator delete(v50);
      }

      if (v48[0])
      {
        v48[1] = v48[0];
        operator delete(v48[0]);
      }

      v72[0] = &v46;
      sub_A3212C(v72);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39);
      }

LABEL_20:
      v17 = (v17 + 296);
      if (v17 == v16)
      {
        return;
      }
    }

    operator delete(v57);
    v28 = v52;
    if (!v52)
    {
      goto LABEL_36;
    }

LABEL_35:
    *(&v52 + 1) = v28;
    operator delete(v28);
    goto LABEL_36;
  }
}

void sub_BBEA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  sub_A7847C(va);
  sub_A7847C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_BBEA9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      *(result + 24) = result;
      v5 = result;
      (*(**(a3 + 24) + 24))(*(a3 + 24), result);
      result = v5;
    }

    else
    {
      v5 = result;
      v6 = (*(*v4 + 16))(*(a3 + 24));
      result = v5;
      *(v5 + 24) = v6;
    }

    *(v5 + 32) = a2;
  }

  else
  {
    *(result + 24) = 0;
    *(result + 32) = a2;
  }

  return result;
}

uint64_t sub_BBEB64(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 24);
      if (!v5)
      {
        sub_2B7420();
      }

      result = (*(*v5 + 48))(v5, v2);
      if (result)
      {
        v6 = *(v2 + 200);
        v7 = *(v2 + 208);
        while (v6 != v7)
        {
          v13 = *v6;
          if (0xCF3CF3CF3CF3CF3DLL * ((v6[1] - *v6) >> 3) >= 2 && *(v6 + 24) == 0)
          {
            if (*(v13 + 160))
            {
              sub_5AF20();
            }

            v15 = *(v13 + 56);
            v16 = sub_A57920((*(v4 + 32) + 4136), *(v13 + 32));
            v17 = (v16 - *v16);
            if (*v17 >= 9u && (v18 = v17[4]) != 0)
            {
              v8 = (v16 + v18 + *(v16 + v18));
            }

            else
            {
              v8 = 0;
            }

            v19 = __ROR8__(*sub_A571D4(v8, v15), 32);
            v20[0] = v4;
            v9 = v6[1];
            v10 = *v6 + 168;
            v11 = 126 - 2 * __clz(0xCF3CF3CF3CF3CF3DLL * ((v9 - v10) >> 3));
            v20[1] = &v19;
            if (v9 == v10)
            {
              v12 = 0;
            }

            else
            {
              v12 = v11;
            }

            result = sub_BBECE8(v10, v9, v20, v12, 1);
          }

          v6 += 9;
        }
      }

      v2 += 296;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_BBECE8(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2;
  v10 = a2 - 168;
  v11 = v8;
  while (1)
  {
    v8 = v11;
    v12 = v9 - v11;
    v13 = 0xCF3CF3CF3CF3CF3DLL * (v12 >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          return sub_BC0214(v8, v8 + 168, v10, a3);
        case 4:
          return sub_BC02FC(v8, v8 + 168, v8 + 336, v10, a3);
        case 5:
          return sub_BC03B0(v8, v8 + 168, v8 + 336, v8 + 504, v10, a3);
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      v9 = a2;
      if (v13 == 2)
      {
        result = sub_BBFF34(a3, v10, v8);
        if (result)
        {
          return sub_BC07E0(v8, v10);
        }

        return result;
      }
    }

    if (v12 <= 4031)
    {
      break;
    }

    if (!a4)
    {
      if (v8 == v9)
      {
        return result;
      }

      v46 = (v13 - 2) >> 1;
      v91 = v46;
LABEL_115:
      v47 = v46;
      if (v91 < v46)
      {
        goto LABEL_114;
      }

      v48 = (2 * v46) | 1;
      v49 = v8 + 168 * v48;
      if (2 * v46 + 2 < v13 && sub_BBFF34(a3, v8 + 168 * v48, v49 + 168))
      {
        v49 += 168;
        v48 = 2 * v47 + 2;
      }

      v50 = v8 + 168 * v47;
      result = sub_BBFF34(a3, v49, v50);
      if (result)
      {
        goto LABEL_114;
      }

      LOBYTE(v95[0]) = 0;
      v96 = -1;
      v51 = *(v50 + 160);
      if (v51 != -1)
      {
        v92[0] = v95;
        result = (off_26712E0[v51])(v92, v8 + 168 * v47);
        v96 = v51;
      }

      while (1)
      {
        v52 = v49;
        v53 = *(v50 + 160);
        v54 = *(v49 + 160);
        if (v53 == -1)
        {
          if (v54 == -1)
          {
            goto LABEL_127;
          }
        }

        else if (v54 == -1)
        {
          result = (off_26712D0[v53])(v92, v50);
          *(v50 + 160) = -1;
          goto LABEL_127;
        }

        v92[0] = v50;
        result = (off_2671300[v54])(v92, v50, v49);
LABEL_127:
        if (v91 >= v48)
        {
          v55 = (2 * v48) | 1;
          v49 = v8 + 168 * v55;
          v48 = 2 * v48 + 2;
          if (v48 >= v13)
          {
            v48 = v55;
          }

          else if (sub_BBFF34(a3, v8 + 168 * v55, v49 + 168))
          {
            v49 += 168;
          }

          else
          {
            v48 = v55;
          }

          result = sub_BBFF34(a3, v49, v95);
          v50 = v52;
          if (!result)
          {
            continue;
          }
        }

        v56 = *(v52 + 160);
        if (v56 == -1)
        {
          if (v96 == -1)
          {
            goto LABEL_114;
          }
        }

        else if (v96 == -1)
        {
          result = (off_26712D0[v56])(v92, v52);
          *(v52 + 160) = -1;
LABEL_139:
          if (v96 != -1)
          {
            result = (off_26712D0[v96])(v92, v95);
          }

LABEL_114:
          v46 = v47 - 1;
          if (v47)
          {
            goto LABEL_115;
          }

          v57 = 0xCF3CF3CF3CF3CF3DLL * (v12 >> 3);
LABEL_143:
          LOBYTE(v92[0]) = 0;
          v93 = -1;
          v59 = *(v8 + 160);
          if (v59 != -1)
          {
            v95[0] = v92;
            result = (off_26712E0[v59])(v95, v8);
            v93 = v59;
          }

          v60 = 0;
          v61 = (v57 - 2) >> 1;
          v62 = v8;
          while (1)
          {
LABEL_149:
            v63 = v62;
            v64 = v62 + 168 * v60;
            v62 = v64 + 168;
            v65 = 2 * v60;
            v60 = (2 * v60) | 1;
            v66 = v65 + 2;
            if (v65 + 2 < v57)
            {
              v67 = v64 + 336;
              result = sub_BBFF34(a3, v64 + 168, v64 + 336);
              if (result)
              {
                v62 = v67;
                v60 = v66;
              }
            }

            v68 = *(v63 + 160);
            v69 = *(v62 + 160);
            if (v68 == -1)
            {
              break;
            }

            if (v69 != -1)
            {
              goto LABEL_147;
            }

            result = (off_26712D0[v68])(v95, v63);
            *(v63 + 160) = -1;
            if (v60 > v61)
            {
LABEL_155:
              v70 = a2 - 168;
              v71 = *(v62 + 160);
              if (v62 == a2 - 168)
              {
                if (v71 == -1)
                {
                  if (v93 == -1)
                  {
                    goto LABEL_142;
                  }
                }

                else if (v93 == -1)
                {
                  result = (off_26712D0[v71])(v95, v62);
                  *(v62 + 160) = -1;
                  goto LABEL_191;
                }

                v95[0] = v62;
                result = (off_2671300[v93])(v95, v62, v92);
                goto LABEL_191;
              }

              v72 = *(a2 - 8);
              if (v71 != -1)
              {
                if (v72 == -1)
                {
                  result = (off_26712D0[v71])(v95, v62);
                  *(v62 + 160) = -1;
                  goto LABEL_164;
                }

LABEL_163:
                v95[0] = v62;
                result = (off_2671300[v72])(v95, v62, a2 - 168);
LABEL_164:
                v73 = *(a2 - 8);
                v74 = v62 + 168;
                v75 = v93;
                if (v73 == -1)
                {
                  if (v93 == 0xFFFFFFFFLL)
                  {
                    goto LABEL_173;
                  }
                }

                else if (v93 == 0xFFFFFFFFLL)
                {
                  result = (off_26712D0[v73])(v95, v70);
                  *(a2 - 8) = -1;
                  goto LABEL_173;
                }

LABEL_172:
                v95[0] = a2 - 168;
                result = (off_2671300[v75])(v95, v70, v92);
                goto LABEL_173;
              }

              if (v72 != -1)
              {
                goto LABEL_163;
              }

              v74 = v62 + 168;
              v75 = v93;
              if (v93 != -1)
              {
                goto LABEL_172;
              }

LABEL_173:
              if (v74 - v8 < 169)
              {
                goto LABEL_191;
              }

              v76 = (-2 - 0x30C30C30C30C30C3 * ((v74 - v8) >> 3)) >> 1;
              v77 = v8 + 168 * v76;
              v78 = v74 - 168;
              result = sub_BBFF34(a3, v77, v74 - 168);
              if (!result)
              {
                goto LABEL_191;
              }

              LOBYTE(v95[0]) = 0;
              v96 = -1;
              v79 = *(v74 - 8);
              if (v79 != -1)
              {
                v94 = v95;
                result = (off_26712E0[v79])(&v94, v78);
                v96 = v79;
              }

              while (2)
              {
                v80 = v77;
                v81 = *(v78 + 160);
                v82 = *(v77 + 160);
                if (v81 == -1)
                {
                  if (v82 == -1)
                  {
                    goto LABEL_182;
                  }

LABEL_181:
                  v94 = v78;
                  result = (off_2671300[v82])(&v94, v78, v77);
                  goto LABEL_182;
                }

                if (v82 != -1)
                {
                  goto LABEL_181;
                }

                result = (off_26712D0[v81])(&v94, v78);
                *(v78 + 160) = -1;
LABEL_182:
                if (v76)
                {
                  v76 = (v76 - 1) >> 1;
                  v77 = v8 + 168 * v76;
                  result = sub_BBFF34(a3, v77, v95);
                  v78 = v80;
                  if (result)
                  {
                    continue;
                  }
                }

                break;
              }

              v83 = *(v80 + 160);
              if (v83 == -1)
              {
                if (v96 == -1)
                {
                  goto LABEL_191;
                }

LABEL_188:
                v94 = v80;
                result = (off_2671300[v96])(&v94, v80, v95);
                goto LABEL_189;
              }

              if (v96 != -1)
              {
                goto LABEL_188;
              }

              result = (off_26712D0[v83])(&v94, v80);
              *(v80 + 160) = -1;
LABEL_189:
              if (v96 != -1)
              {
                result = (off_26712D0[v96])(&v94, v95);
              }

LABEL_191:
              if (v93 != -1)
              {
                result = (off_26712D0[v93])(v95, v92);
              }

LABEL_142:
              a2 -= 168;
              if (v57-- <= 2)
              {
                return result;
              }

              goto LABEL_143;
            }
          }

          if (v69 != -1)
          {
LABEL_147:
            v95[0] = v63;
            result = (off_2671300[v69])(v95, v63, v62);
          }

          if (v60 > v61)
          {
            goto LABEL_155;
          }

          goto LABEL_149;
        }

        v92[0] = v52;
        result = (off_2671300[v96])(v92, v52, v95);
        goto LABEL_139;
      }
    }

    v14 = v13 >> 1;
    v15 = v8 + 168 * (v13 >> 1);
    if (v12 < 0x5401)
    {
      sub_BC0214(v8 + 168 * v14, v8, v10, a3);
      --a4;
      if (a5)
      {
        goto LABEL_17;
      }

LABEL_16:
      if (sub_BBFF34(a3, v8 - 168, v8))
      {
        goto LABEL_17;
      }

      LOBYTE(v95[0]) = 0;
      v96 = -1;
      v27 = *(v8 + 160);
      if (v27 != -1)
      {
        v92[0] = v95;
        (off_26712E0[v27])(v92, v8);
        v96 = v27;
      }

      result = sub_BBFF34(a3, v95, v10);
      if (result)
      {
        v11 = v8;
        do
        {
          v11 += 168;
          result = sub_BBFF34(a3, v95, v11);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v28 = v8 + 168;
        do
        {
          v11 = v28;
          if (v28 >= v9)
          {
            break;
          }

          result = sub_BBFF34(a3, v95, v28);
          v28 = v11 + 168;
        }

        while (!result);
      }

      v29 = v9;
      if (v11 < v9)
      {
        v29 = v9;
        do
        {
          v29 -= 168;
          result = sub_BBFF34(a3, v95, v29);
        }

        while ((result & 1) != 0);
      }

      while (v11 < v29)
      {
        sub_BC07E0(v11, v29);
        do
        {
          v11 += 168;
        }

        while (!sub_BBFF34(a3, v95, v11));
        do
        {
          v29 -= 168;
          result = sub_BBFF34(a3, v95, v29);
        }

        while ((result & 1) != 0);
      }

      if (v11 - 168 != v8)
      {
        v30 = *(v8 + 160);
        v31 = *(v11 - 8);
        if (v30 == -1)
        {
          if (v31 == -1)
          {
            goto LABEL_73;
          }
        }

        else if (v31 == -1)
        {
          result = (off_26712D0[v30])(v92, v8);
          *(v8 + 160) = -1;
          goto LABEL_73;
        }

        v92[0] = v8;
        result = (off_2671300[v31])(v92, v8, v11 - 168);
      }

LABEL_73:
      v32 = *(v11 - 8);
      if (v32 == -1)
      {
        if (v96 == -1)
        {
          goto LABEL_80;
        }
      }

      else if (v96 == -1)
      {
        result = (off_26712D0[v32])(v92, v11 - 168);
        *(v11 - 8) = -1;
        goto LABEL_78;
      }

      v92[0] = v11 - 168;
      result = (off_2671300[v96])(v92, v11 - 168, v95);
LABEL_78:
      if (v96 != -1)
      {
        result = (off_26712D0[v96])(v92, v95);
      }

LABEL_80:
      a5 = 0;
    }

    else
    {
      sub_BC0214(v8, v8 + 168 * v14, v10, a3);
      v16 = 168 * v14;
      sub_BC0214(v8 + 168, v16 + v8 - 168, a2 - 336, a3);
      sub_BC0214(v8 + 336, v8 + 168 + v16, a2 - 504, a3);
      sub_BC0214(v16 + v8 - 168, v15, v8 + 168 + v16, a3);
      sub_BC07E0(v8, v15);
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_17:
      LOBYTE(v95[0]) = 0;
      v96 = -1;
      v17 = *(v8 + 160);
      if (v17 != -1)
      {
        v92[0] = v95;
        (off_26712E0[v17])(v92, v8);
        v96 = v17;
      }

      v18 = 0;
      do
      {
        v19 = sub_BBFF34(a3, v8 + v18 + 168, v95);
        v18 += 168;
      }

      while (v19);
      v20 = v8 + v18;
      v21 = v9;
      if (v18 == 168)
      {
        v21 = v9;
        do
        {
          if (v20 >= v21)
          {
            break;
          }

          v21 -= 168;
        }

        while (!sub_BBFF34(a3, v21, v95));
      }

      else
      {
        do
        {
          v21 -= 168;
        }

        while (!sub_BBFF34(a3, v21, v95));
      }

      v11 = v8 + v18;
      if (v20 < v21)
      {
        v22 = v21;
        do
        {
          sub_BC07E0(v11, v22);
          do
          {
            v11 += 168;
          }

          while (sub_BBFF34(a3, v11, v95));
          do
          {
            v22 -= 168;
          }

          while (!sub_BBFF34(a3, v22, v95));
        }

        while (v11 < v22);
      }

      if (v11 - 168 != v8)
      {
        v23 = *(v8 + 160);
        v24 = *(v11 - 8);
        if (v23 == -1)
        {
          if (v24 == -1)
          {
            goto LABEL_39;
          }
        }

        else if (v24 == -1)
        {
          (off_26712D0[v23])(v92, v8);
          *(v8 + 160) = -1;
          goto LABEL_39;
        }

        v92[0] = v8;
        (off_2671300[v24])(v92, v8, v11 - 168);
      }

LABEL_39:
      v25 = *(v11 - 8);
      if (v25 == -1)
      {
        if (v96 == -1)
        {
          goto LABEL_46;
        }
      }

      else if (v96 == -1)
      {
        (off_26712D0[v25])(v92, v11 - 168);
        *(v11 - 8) = -1;
        goto LABEL_44;
      }

      v92[0] = v11 - 168;
      (off_2671300[v96])(v92, v11 - 168, v95);
LABEL_44:
      if (v96 != -1)
      {
        (off_26712D0[v96])(v92, v95);
      }

LABEL_46:
      if (v20 < v21)
      {
        goto LABEL_49;
      }

      v26 = sub_BC048C(v8, v11 - 168, a3);
      result = sub_BC048C(v11, v9, a3);
      if (result)
      {
        a2 = v11 - 168;
        if (v26)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v26)
      {
LABEL_49:
        result = sub_BBECE8(v8, v11 - 168, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if ((a5 & 1) == 0)
  {
    if (v8 == v9)
    {
      return result;
    }

    v84 = v8 + 168;
    if (v8 + 168 == a2)
    {
      return result;
    }

LABEL_197:
    v85 = v84;
    result = sub_BBFF34(a3, v84, v8);
    if (!result)
    {
      goto LABEL_196;
    }

    LOBYTE(v95[0]) = 0;
    v96 = -1;
    v86 = *(v8 + 328);
    if (v86 != -1)
    {
      v92[0] = v95;
      (off_26712E0[v86])(v92, v85);
      v96 = v86;
    }

    while (1)
    {
      v87 = *(v8 + 328);
      v88 = *(v8 + 160);
      if (v87 == -1)
      {
        if (v88 != -1)
        {
LABEL_204:
          v92[0] = v8 + 168;
          (off_2671300[v88])(v92);
        }
      }

      else
      {
        if (v88 != -1)
        {
          goto LABEL_204;
        }

        (off_26712D0[v87])(v92, v8 + 168);
        *(v8 + 328) = -1;
      }

      v8 -= 168;
      result = sub_BBFF34(a3, v95, v8);
      if ((result & 1) == 0)
      {
        v89 = *(v8 + 328);
        if (v89 == -1)
        {
          if (v96 == -1)
          {
            goto LABEL_196;
          }
        }

        else if (v96 == -1)
        {
          result = (off_26712D0[v89])(v92, v8 + 168);
          *(v8 + 328) = -1;
LABEL_211:
          if (v96 != -1)
          {
            result = (off_26712D0[v96])(v92, v95);
          }

LABEL_196:
          v84 = v85 + 168;
          v8 = v85;
          if (v85 + 168 == a2)
          {
            return result;
          }

          goto LABEL_197;
        }

        v92[0] = v8 + 168;
        result = (off_2671300[v96])(v92);
        goto LABEL_211;
      }
    }
  }

  if (v8 == v9)
  {
    return result;
  }

  v33 = v8 + 168;
  if (v8 + 168 == a2)
  {
    return result;
  }

  v34 = 0;
  v35 = v8;
  while (2)
  {
    v36 = v33;
    result = sub_BBFF34(a3, v33, v35);
    if (!result)
    {
      goto LABEL_92;
    }

    LOBYTE(v95[0]) = 0;
    v96 = -1;
    v37 = *(v35 + 328);
    v38 = v34;
    if (v37 != -1)
    {
      v92[0] = v95;
      result = (off_26712E0[v37])(v92, v36);
      v96 = v37;
      v38 = v34;
    }

    while (2)
    {
      v39 = *(v8 + v38 + 328);
      v40 = *(v8 + v38 + 160);
      if (v39 == -1)
      {
        if (v40 != -1)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v40 == -1)
        {
          result = (off_26712D0[v39])(v92, v8 + v38 + 168);
          *(v8 + v38 + 328) = -1;
          goto LABEL_101;
        }

LABEL_100:
        v92[0] = v8 + v38 + 168;
        result = (off_2671300[v40])(v92);
      }

LABEL_101:
      if (!v38)
      {
        v41 = v8;
        v42 = *(v8 + 160);
        v43 = v96;
        if (v42 == -1)
        {
          goto LABEL_104;
        }

        goto LABEL_107;
      }

      result = sub_BBFF34(a3, v95, v8 + v38 - 168);
      v38 -= 168;
      if (result)
      {
        continue;
      }

      break;
    }

    v41 = v8 + v38 + 168;
    v42 = *(v8 + v38 + 328);
    v43 = v96;
    if (v42 == -1)
    {
LABEL_104:
      if (v43 == -1)
      {
        goto LABEL_92;
      }

LABEL_108:
      v92[0] = v41;
      result = (off_2671300[v43])(v92);
      v44 = v96;
      if (v96 == -1)
      {
        goto LABEL_92;
      }

      goto LABEL_111;
    }

LABEL_107:
    if (v43 != -1)
    {
      goto LABEL_108;
    }

    v45 = v41;
    result = (off_26712D0[v42])(v92);
    *(v45 + 160) = -1;
    v44 = v96;
    if (v96 == -1)
    {
      goto LABEL_92;
    }

LABEL_111:
    result = (off_26712D0[v44])(v92, v95);
LABEL_92:
    v33 = v36 + 168;
    v34 += 168;
    v35 = v36;
    if (v36 + 168 != a2)
    {
      continue;
    }

    return result;
  }
}

void sub_BBFD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_BA94A4(va);
  _Unwind_Resume(a1);
}

void sub_BBFD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_BA94A4(va);
  _Unwind_Resume(a1);
}

void sub_BBFDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_BA94A4(va);
  _Unwind_Resume(a1);
}

void sub_BBFEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_BA94A4(va);
  _Unwind_Resume(a1);
}

void sub_BBFEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_BA94A4(va);
  _Unwind_Resume(a1);
}

void sub_BBFF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_BA94A4(va);
  _Unwind_Resume(a1);
}

void sub_BBFF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_BA94A4(va);
  _Unwind_Resume(a1);
}

BOOL sub_BBFF34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 160) || *(a3 + 160))
  {
    sub_5AF20();
  }

  v6 = *a1;
  v7 = *(a2 + 56);
  v8 = sub_A57920((*(*a1 + 32) + 4136), *(a2 + 32));
  v9 = (v8 - *v8);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = (v8 + v10 + *(v8 + v10));
  }

  else
  {
    v11 = 0;
  }

  v12 = __ROR8__(*sub_A571D4(v11, v7), 32);
  v13 = HIDWORD(v12);
  v14 = *(a3 + 56);
  v15 = sub_A57920((*(v6 + 32) + 4136), *(a3 + 32));
  v16 = (v15 - *v15);
  if (*v16 >= 9u && (v17 = v16[4]) != 0)
  {
    v18 = (v15 + v17 + *(v15 + v17));
  }

  else
  {
    v18 = 0;
  }

  v19 = __ROR8__(*sub_A571D4(v18, v14), 32);
  v20 = HIDWORD(v19);
  v21 = *a1[1];
  if (v13 == HIDWORD(v21) && v12 == v21)
  {
    if (v20 != v13 || v19 != v12)
    {
      return 1;
    }
  }

  else if (v20 == HIDWORD(v21) && v19 == v21)
  {
    return 0;
  }

  v26 = *(a2 + 64);
  v27 = *(a2 + 72);
  if (v27 - v26 >= 60)
  {
    v28 = *(a2 + 12);
    if (v27 - v26 != 60)
    {
      v29 = 0xEEEEEEEEEEEEEEEFLL * ((v27 - v26) >> 2);
      do
      {
        v30 = 60 * (v29 >> 2);
        _X15 = v26 + v30;
        __asm { PRFM            #0, [X15] }

        v36 = v26 + 60 * (v29 >> 1);
        _X14 = v36 + v30;
        __asm { PRFM            #0, [X14] }

        if (*(v36 + 8) >= v28)
        {
          v39 = 0;
        }

        else
        {
          v39 = v29 >> 1;
        }

        v26 += 60 * v39;
        v29 -= v29 >> 1;
      }

      while (v29 > 1);
    }

    v26 += 60 * (*(v26 + 8) < v28);
  }

  v40 = *(a3 + 64);
  v41 = *(a3 + 72);
  if (v41 - v40 < 60)
  {
    v42 = v27 - v26;
    result = v42 > 179;
    if (v42 > 179)
    {
      return result;
    }

    goto LABEL_44;
  }

  v43 = *(a3 + 12);
  if (v41 - v40 != 60)
  {
    v44 = 0xEEEEEEEEEEEEEEEFLL * ((v41 - v40) >> 2);
    do
    {
      v45 = 60 * (v44 >> 2);
      _X17 = v40 + v45;
      __asm { PRFM            #0, [X17] }

      v48 = v40 + 60 * (v44 >> 1);
      _X16 = v48 + v45;
      __asm { PRFM            #0, [X16] }

      if (*(v48 + 8) >= v43)
      {
        v51 = 0;
      }

      else
      {
        v51 = v44 >> 1;
      }

      v40 += 60 * v51;
      v44 -= v44 >> 1;
    }

    while (v44 > 1);
  }

  v40 += 60 * (*(v40 + 8) < v43);
  v42 = v27 - v26;
  result = (v42 > 179) & ~(v41 - v40 > 179);
  if (((v42 > 179) & ~(v41 - v40 > 179)) == 0)
  {
LABEL_44:
    if (v42 >= 180)
    {
      return *(v26 + 128) < *(v40 + 128);
    }
  }

  return result;
}

uint64_t sub_BC0214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_BBFF34(a4, a2, a1);
  result = sub_BBFF34(a4, a3, a2);
  if (v8)
  {
    if (result)
    {
      return sub_BC07E0(a1, a3);
    }

    else
    {
      sub_BC07E0(a1, a2);
      result = sub_BBFF34(a4, a3, a2);
      if (result)
      {
        return sub_BC07E0(a2, a3);
      }
    }
  }

  else if (result)
  {
    sub_BC07E0(a2, a3);
    result = sub_BBFF34(a4, a2, a1);
    if (result)
    {
      return sub_BC07E0(a1, a2);
    }
  }

  return result;
}

uint64_t sub_BC02FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_BC0214(a1, a2, a3, a5);
  result = sub_BBFF34(a5, a4, a3);
  if (result)
  {
    sub_BC07E0(a3, a4);
    result = sub_BBFF34(a5, a3, a2);
    if (result)
    {
      sub_BC07E0(a2, a3);
      result = sub_BBFF34(a5, a2, a1);
      if (result)
      {
        return sub_BC07E0(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_BC03B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_BC02FC(a1, a2, a3, a4, a6);
  result = sub_BBFF34(a6, a5, a4);
  if (result)
  {
    sub_BC07E0(a4, a5);
    result = sub_BBFF34(a6, a4, a3);
    if (result)
    {
      sub_BC07E0(a3, a4);
      result = sub_BBFF34(a6, a3, a2);
      if (result)
      {
        sub_BC07E0(a2, a3);
        result = sub_BBFF34(a6, a2, a1);
        if (result)
        {
          return sub_BC07E0(a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL sub_BC048C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = 0xCF3CF3CF3CF3CF3DLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = a2 - 168;
        if (sub_BBFF34(a3, a2 - 168, a1))
        {
          sub_BC07E0(a1, v7);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_BC0214(a1, a1 + 168, a2 - 168, a3);
      return 1;
    case 4:
      sub_BC02FC(a1, a1 + 168, a1 + 336, a2 - 168, a3);
      return 1;
    case 5:
      sub_BC03B0(a1, a1 + 168, a1 + 336, a1 + 504, a2 - 168, a3);
      return 1;
  }

LABEL_11:
  v8 = a1 + 336;
  sub_BC0214(a1, a1 + 168, a1 + 336, a3);
  v9 = a1 + 504;
  if (a1 + 504 == a2)
  {
    return 1;
  }

  v10 = 0;
  while (!sub_BBFF34(a3, v9, v8))
  {
LABEL_15:
    v8 = v9;
    v9 += 168;
    if (v9 == a2)
    {
      return 1;
    }
  }

  v23[0] = 0;
  v24 = -1;
  v12 = *(v9 + 160);
  if (v12 != -1)
  {
    v25[0] = v23;
    (off_26712E0[v12])(v25, v9);
    v24 = v12;
  }

  v13 = v8 + 168;
  v14 = v9;
  do
  {
    v15 = v13 - 168;
    v16 = *(v14 + 160);
    v17 = *(v13 - 8);
    if (v16 == -1)
    {
      if (v17 == -1)
      {
        goto LABEL_25;
      }
    }

    else if (v17 == -1)
    {
      v18 = v14;
      (off_26712D0[v16])(v25);
      *(v18 + 160) = -1;
      goto LABEL_25;
    }

    v25[0] = v14;
    (off_2671300[v17])(v25);
LABEL_25:
    if (v15 == a1)
    {
      v15 = a1;
      v20 = *(a1 + 160);
      v21 = v24;
      if (v20 == -1)
      {
        goto LABEL_31;
      }

LABEL_28:
      if (v21 == -1)
      {
        (off_26712D0[v20])(v25, v15);
        *(v15 + 160) = -1;
      }

      else
      {
LABEL_32:
        v25[0] = v15;
        (off_2671300[v21])(v25, v15, v23);
      }

      ++v10;
      if (v24 == -1)
      {
        if (v10 != 8)
        {
          goto LABEL_15;
        }

        return v9 + 168 == a2;
      }

      else
      {
        (off_26712D0[v24])(v25, v23);
        if (v10 != 8)
        {
          goto LABEL_15;
        }

        return v9 + 168 == a2;
      }
    }

    v19 = sub_BBFF34(a3, v23, v13 - 336);
    v13 -= 168;
    v14 = v15;
  }

  while (v19);
  v20 = *(v15 + 160);
  v21 = v24;
  if (v20 != -1)
  {
    goto LABEL_28;
  }

LABEL_31:
  if (v21 != -1)
  {
    goto LABEL_32;
  }

  if (++v10 != 8)
  {
    goto LABEL_15;
  }

  return v9 + 168 == a2;
}

void sub_BC07CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BA94A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BC07E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  v3 = *(a2 + 160);
  if (v2 != -1 || v3 != -1)
  {
    v6 = result;
    v7 = v2 == -1;
    if (v2 == -1)
    {
      v2 = -1;
    }

    if (v3 != -1)
    {
      v7 = v2 == v3;
    }

    if (v7)
    {
      return (off_26712C0[v2])(v12, result, a2);
    }

    else
    {
      v12[0] = 0;
      v13 = -1;
      if (v3 != -1)
      {
        v14 = v12;
        result = (off_26712E0[v3])(&v14, a2);
        v13 = v3;
        v8 = *(a2 + 160);
        if (v8 != -1)
        {
          result = (off_26712D0[v8])(&v14, a2);
        }
      }

      *(a2 + 160) = -1;
      v9 = *(v6 + 160);
      if (v9 != -1)
      {
        v14 = a2;
        result = (off_26712F0[v9])(&v14, v6);
        *(a2 + 160) = v9;
        v10 = *(v6 + 160);
        if (v10 != -1)
        {
          result = (off_26712D0[v10])(&v14, v6);
        }
      }

      *(v6 + 160) = -1;
      v11 = v13;
      if (v13 != -1)
      {
        v14 = v6;
        result = (off_26712F0[v13])(&v14, v12);
        *(v6 + 160) = v11;
        if (v13 != -1)
        {
          return (off_26712D0[v13])(&v14, v12);
        }
      }
    }
  }

  return result;
}

__n128 sub_BC09AC(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  *&v5[12] = *(a2 + 12);
  v3 = *(a3 + 12);
  *a2 = *a3;
  *(a2 + 12) = v3;
  *(a3 + 12) = *&v5[12];
  result = *v5;
  *a3 = *v5;
  return result;
}

__n128 sub_BC09E4(__int128 *a1, __int128 *a2)
{
  v26 = *a1;
  v27 = a1[1];
  *v28 = a1[2];
  *&v28[12] = *(a1 + 44);
  v4 = a1[4];
  v5 = *(a1 + 10);
  a1[4] = 0uLL;
  *(a1 + 10) = 0;
  v6 = a1 + 11;
  v22 = v4;
  v23 = *(a1 + 88);
  v7 = *(a1 + 13);
  a1[6] = 0uLL;
  *(a1 + 11) = 0;
  v8 = *(a1 + 28);
  v9 = a1 + 15;
  v10 = *(a1 + 120);
  v11 = *(a1 + 17);
  *(a1 + 120) = 0uLL;
  *(a1 + 17) = 0;
  v24 = v10;
  v25 = a1[9];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  *(a1 + 44) = *(a2 + 44);
  a1[1] = v13;
  a1[2] = v14;
  *a1 = v12;
  v15 = *(a2 + 10);
  a1[4] = a2[4];
  *(a1 + 10) = v15;
  *(a2 + 72) = 0uLL;
  *(a2 + 8) = 0;
  v16 = *(a1 + 11);
  if (v16)
  {
    *(a1 + 12) = v16;
    operator delete(v16);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 13) = *(a2 + 13);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 11) = 0;
  *(a1 + 28) = *(a2 + 28);
  v17 = *(a1 + 15);
  if (v17)
  {
    *(a1 + 16) = v17;
    operator delete(v17);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 17) = *(a2 + 17);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  a1[9] = a2[9];
  *a2 = v26;
  a2[1] = v27;
  a2[2] = *v28;
  *(a2 + 44) = *&v28[12];
  v18 = *(a2 + 8);
  if (v18)
  {
    *(a2 + 9) = v18;
    operator delete(v18);
  }

  a2[4] = v22;
  *(a2 + 10) = v5;
  v19 = *(a2 + 11);
  if (v19)
  {
    *(a2 + 12) = v19;
    operator delete(v19);
  }

  *(a2 + 88) = v23;
  *(a2 + 13) = v7;
  *(a2 + 28) = v8;
  v20 = *(a2 + 15);
  if (v20)
  {
    *(a2 + 16) = v20;
    operator delete(v20);
  }

  result = v25;
  *(a2 + 120) = v24;
  *(a2 + 17) = v11;
  a2[9] = v25;
  return result;
}

__n128 sub_BC0BC8(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(v2 + 44) = *(a2 + 44);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 64) = a2[4];
  *(v2 + 80) = *(a2 + 10);
  a2[4] = 0uLL;
  *(a2 + 10) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = *(a2 + 88);
  *(v2 + 104) = *(a2 + 13);
  a2[6] = 0uLL;
  *(a2 + 11) = 0;
  *(v2 + 112) = *(a2 + 28);
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 120) = *(a2 + 120);
  *(v2 + 136) = *(a2 + 17);
  a2[8] = 0uLL;
  *(a2 + 15) = 0;
  result = a2[9];
  *(v2 + 144) = result;
  return result;
}

__n128 sub_BC0C58(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  *(v2 + 12) = *(a2 + 12);
  *v2 = result;
  return result;
}

uint64_t sub_BC0C70(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2 != -1)
  {
    (off_26712D0[v2])(&v4, a1);
  }

  *(a1 + 160) = -1;
  return a1;
}

__n128 sub_BC0CD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 160);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      result = *a3;
      *(a2 + 12) = *(a3 + 12);
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_26712D0[v4])(&v7, v3);
    a3 = v6;
  }

  *(v3 + 160) = -1;
  result = *a3;
  *(v3 + 12) = *(a3 + 12);
  *v3 = result;
  *(v3 + 160) = 1;
  return result;
}

__n128 sub_BC0D70(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 160);
  if (v5 == -1)
  {
    goto LABEL_11;
  }

  if (v5)
  {
    (off_26712D0[v5])(&v18, v4);
LABEL_11:
    *(v4 + 160) = -1;
    v15 = *a3;
    v16 = a3[1];
    v17 = a3[2];
    *(v4 + 44) = *(a3 + 44);
    *(v4 + 16) = v16;
    *(v4 + 32) = v17;
    *v4 = v15;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    *(v4 + 64) = 0;
    *(v4 + 64) = a3[4];
    *(v4 + 80) = *(a3 + 10);
    *(a3 + 8) = 0;
    *(a3 + 9) = 0;
    *(a3 + 10) = 0;
    *(v4 + 88) = 0;
    *(v4 + 96) = 0;
    *(v4 + 104) = 0;
    *(v4 + 88) = *(a3 + 88);
    *(v4 + 104) = *(a3 + 13);
    *(a3 + 12) = 0;
    *(a3 + 13) = 0;
    *(a3 + 11) = 0;
    *(v4 + 112) = *(a3 + 28);
    *(v4 + 128) = 0;
    *(v4 + 136) = 0;
    *(v4 + 120) = 0;
    *(v4 + 120) = *(a3 + 120);
    *(v4 + 136) = *(a3 + 17);
    *(a3 + 16) = 0;
    *(a3 + 17) = 0;
    *(a3 + 15) = 0;
    result = a3[9];
    *(v4 + 144) = result;
    *(v4 + 160) = 0;
    return result;
  }

  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  *(a2 + 44) = *(a3 + 44);
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *a2 = v7;
  v11 = (a2 + 64);
  v10 = *(a2 + 64);
  if (v10)
  {
    *(a2 + 72) = v10;
    operator delete(v10);
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
  }

  *(a2 + 64) = a3[4];
  *(a2 + 80) = *(a3 + 10);
  *(a3 + 8) = 0;
  *(a3 + 9) = 0;
  *(a3 + 10) = 0;
  v12 = *(a2 + 88);
  if (v12)
  {
    *(a2 + 96) = v12;
    operator delete(v12);
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
  }

  *(a2 + 88) = *(a3 + 88);
  *(a2 + 104) = *(a3 + 13);
  *(a3 + 11) = 0;
  *(a3 + 12) = 0;
  *(a3 + 13) = 0;
  v13 = *(a2 + 120);
  *(a2 + 112) = *(a3 + 28);
  if (v13)
  {
    *(a2 + 128) = v13;
    operator delete(v13);
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
  }

  *(a2 + 120) = *(a3 + 120);
  *(a2 + 136) = *(a3 + 17);
  *(a3 + 15) = 0;
  *(a3 + 16) = 0;
  *(a3 + 17) = 0;
  result = a3[9];
  *(a2 + 144) = result;
  return result;
}

void sub_BC0F40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v9 = 20;
  strcpy(__p, "leg_relative_stretch");
  v6 = sub_BC12F4(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 32) = v6;
  operator new();
}

void sub_BC1258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_A31E68(v16);
  _Unwind_Resume(a1);
}

double sub_BC12F4(void *a1, uint64_t *a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4)
  {
    return v2[5];
  }

  if (v3 == 3)
  {
    return v2[5];
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_BC144C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_BC14B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*(a2 + 1) == *(a3 + 1) && *a2 == *a3)
  {
    return 0;
  }

  if (sub_A794D0(a4, a3))
  {
    return 0;
  }

  v9 = sub_92FC60(*(*(a1 + 64) + 4056) + 24, __ROR8__(*a3, 32), 0, "line");
  v10 = (v9 - *v9);
  if (*v10 < 0x25u || (v11 = v10[18]) == 0 || *(v9 + v11) != 1)
  {
    v12 = sub_92FC60(*(*(a1 + 64) + 4056) + 24, __ROR8__(*a3, 32), 0, "line");
    v13 = (v12 - *v12);
    if (*v13 >= 0x25u)
    {
      v14 = v13[18];
      if (v14)
      {
        if (*(v12 + v14))
        {
          return 0;
        }
      }
    }
  }

  v15 = sub_92FC60(*(*(a1 + 64) + 4056) + 24, __ROR8__(*a2, 32), 0, "line");
  v16 = (v15 - *v15);
  if (*v16 >= 7u && (v17 = v16[3]) != 0)
  {
    v18 = *(v15 + v17 + 4) | (*(v15 + v17) << 32);
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  v19 = sub_92FC60(*(*(a1 + 64) + 4056) + 24, __ROR8__(*a3, 32), 0, "line");
  v20 = (v19 - *v19);
  if (*v20 >= 7u && (v21 = v20[3]) != 0)
  {
    if (v18 != (*(v19 + v21 + 4) | (*(v19 + v21) << 32)))
    {
      return 0;
    }
  }

  else if (v18 != 0xFFFFFFFF)
  {
    return 0;
  }

  sub_BC1804((*(a1 + 64) + 4056), *a2, &__p);
  sub_BC1804((*(a1 + 64) + 4056), *a3, &v28);
  v22 = __p;
  v23 = v28;
  if (v31 - __p == v29 - v28)
  {
    if (__p == v31)
    {
LABEL_27:
      v24 = sub_92FC60(*(*(a1 + 64) + 4056) + 24, __ROR8__(*a2, 32), 0, "line");
      v25 = (v24 - *v24);
      if (*v25 >= 0x17u && v25[11])
      {
        result = sub_BC19A4((*(a1 + 64) + 4056), *a3);
        if (result)
        {
          result = sub_BC19FC((*(a1 + 64) + 4056), *a2, *a3) == 0;
        }
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      while (*v22 == *v23)
      {
        ++v22;
        ++v23;
        if (v22 == v31)
        {
          goto LABEL_27;
        }
      }

      result = 0;
    }

    v23 = v28;
  }

  else
  {
    result = 0;
  }

  if (v23)
  {
    v29 = v23;
    v26 = result;
    operator delete(v23);
    result = v26;
  }

  if (__p)
  {
    v31 = __p;
    v27 = result;
    operator delete(__p);
    return v27;
  }

  return result;
}

void sub_BC17B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_BC1804(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = sub_92FC60(*a1 + 24, __ROR8__(a2, 32), 0, "line");
  v5 = (v4 - *v4);
  if (*v5 >= 0x19u && (v6 = v5[12]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (*v7)
    {
      operator new();
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_BC1978(_Unwind_Exception *exception_object)
{
  v1[1] = v3;
  v1[2] = v4;
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_BC19A4(void *a1, uint64_t a2)
{
  v2 = sub_92FC60(*a1 + 24, __ROR8__(a2, 32), 0, "line");
  result = 0;
  v4 = (v2 - *v2);
  if (*v4 >= 0x17u)
  {
    return v4[11] != 0;
  }

  return result;
}

uint64_t sub_BC19FC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_92FC60(*a1 + 24, __ROR8__(a2, 32), 0, "line");
  v6 = sub_92FC60(*a1 + 24, __ROR8__(a3, 32), 0, "line");
  v7 = (v5 - *v5);
  if (*v7 >= 0x17u && (v8 = v7[11]) != 0)
  {
    v9 = (v5 + v8 + *(v5 + v8));
    v10 = (v6 - *v6);
    if (*v10 < 0x17u)
    {
LABEL_9:
      v12 = 0;
      if (v9)
      {
        goto LABEL_10;
      }

      return 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = (v6 - *v6);
    if (*v10 < 0x17u)
    {
      goto LABEL_9;
    }
  }

  v11 = v10[11];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = (v6 + v11 + *(v6 + v11));
  if (v9 == v12)
  {
    return 0;
  }

LABEL_10:
  if (v9 && v12)
  {
    return sub_BC3D48(&v14, v9, v12);
  }

  else
  {
    return (v12 == 0) - (v9 == 0);
  }
}

BOOL sub_BC1B3C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  v12 = a5[3];
  v11 = a5[4];
  if (v11 >= v12 && v11 < a5[5])
  {
    v16 = a3;
    v18 = HIDWORD(a3);
    LODWORD(v19) = -1;
    do
    {
      v31 = __ROR8__(*v11, 32);
      if (v31 == a2 && (*(v11 + 15) & 2) != 0)
      {
        v19 = (v11 - v12) >> 4;
      }

      else if (sub_A794D0(a4, &v31))
      {
        v20 = v31 == v16 && HIDWORD(v31) == v18;
        if (v20 || *a8 == 0x7FFFFFFF)
        {
          goto LABEL_50;
        }

        v22 = sub_A794D0(a4, &v31);
        if (!v22)
        {
          goto LABEL_47;
        }

        if (*a8 > *(v22 + 6))
        {
LABEL_50:
          v23 = a5[4];
          if (*(v23 + 15))
          {
            *a6 = v19;
            *a7 = (v23 - a5[3]) >> 4;
            v24 = sub_A794D0(a4, &v31);
            if (!v24)
            {
LABEL_47:
              sub_49EC("unordered_map::at: key not found");
            }

            *a8 = *(v24 + 6);
            if (v31 == __PAIR64__(v18, v16))
            {
              break;
            }
          }
        }
      }

      v12 = a5[3];
      v11 = (a5[4] + 16);
      a5[4] = v11;
      if (*(*a5 + 16) == 1 && (a5[1] & 1) == 0 && v11 >= v12 && v11 < a5[5])
      {
        do
        {
          v25 = __ROR8__(*v11, 32);
          if (HIDWORD(v25) == 1 && (v25 + 3) < 2)
          {
            break;
          }

          v27 = sub_2D5204(**(*a5 + 4120));
          v12 = a5[3];
          v11 = a5[4];
          if (v27)
          {
            break;
          }

          v11 += 2;
          a5[4] = v11;
        }

        while (v11 >= v12 && v11 < a5[5]);
      }
    }

    while (v11 >= v12 && v11 < a5[5]);
  }

  return *a6 != -1 && *a7 != -1 && *a8 != 0x7FFFFFFF;
}

uint64_t *sub_BC1D50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *(a2 + 200);
  v5 = *(a2 + 208);
  if (v4 != v5)
  {
    v6 = result;
    while (1)
    {
      if (!*(v4 + 24))
      {
        v7 = *v4;
        v8 = v4[1];
        if (*v4 != v8)
        {
          break;
        }
      }

LABEL_3:
      v4 += 9;
      if (v4 == v5)
      {
        return result;
      }
    }

    while (1)
    {
      if (*(v7 + 160))
      {
        sub_5AF20();
      }

      v9 = *(v7 + 52);
      v10 = sub_A57920((*(v6 + 64) + 4136), *(v7 + 32));
      v11 = (v10 - *v10);
      v12 = *v11;
      if (v12 < 5)
      {
        v13 = 0;
        goto LABEL_12;
      }

      if (v11[2])
      {
        v13 = v10 + v11[2] + *(v10 + v11[2]);
        if (v12 < 9)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v13 = 0;
        if (v12 < 9)
        {
          goto LABEL_12;
        }
      }

      v15 = v11[4];
      if (v15)
      {
        v14 = (v10 + v15 + *(v10 + v15));
        goto LABEL_13;
      }

LABEL_12:
      v14 = 0;
LABEL_13:
      v16 = __ROR8__(*&v13[8 * *(sub_A571D4(v14, v9) + 14) + 4], 32);
      result = sub_BC460C(a3, &v16, &v16);
      v7 += 168;
      if (v7 == v8)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

void sub_BC1EC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  *v88 = 0u;
  *v89 = 0u;
  v90 = 1065353216;
  *v85 = 0u;
  *__p = 0u;
  v87 = 1065353216;
  if (*(a1 + 56) == 1)
  {
    sub_BC460C(v88, (a2 + 12), (a2 + 12));
    sub_A82C20(&v79, *(a1 + 64), *(v3 + 12));
    v5 = v80;
    v6 = v81;
    if (v84)
    {
      v7 = v83;
    }

    else
    {
      v7 = v81;
    }

    if (v80 < v7)
    {
      do
      {
        if (*(v5 + 2) <= *(a1 + 52))
        {
          v92 = __ROR8__(*v5, 32);
          sub_BC4980(v88, &v92, &v92);
          v5 = v80;
          v6 = v81;
        }

        v5 = (v5 + 12);
        v80 = v5;
        if (v5 == v6)
        {
          v5 = v82;
          v80 = v82;
          v8 = 1;
          v84 = 1;
        }

        else
        {
          v8 = v84;
        }

        v9 = v83;
        if (v8)
        {
          v11 = v83;
        }

        else
        {
          v11 = v6;
        }

        if (*(v79 + 16) == 1 && v5 < v11)
        {
          while (1)
          {
            v13 = __ROR8__(*v5, 32);
            if (HIDWORD(v13) == 1 && (v13 + 3) < 2)
            {
              break;
            }

            if (sub_2D5204(*v79[515]))
            {
              v5 = v80;
              v6 = v81;
              v8 = v84;
              break;
            }

            v6 = v81;
            v5 = (v80 + 12);
            v80 = v5;
            if (v5 == v81)
            {
              v5 = v82;
              v80 = v82;
              v8 = 1;
              v84 = 1;
              if (v82 >= v83)
              {
                break;
              }
            }

            else
            {
              v8 = v84;
              if (v84)
              {
                v15 = 4;
              }

              else
              {
                v15 = 2;
              }

              if (v5 >= (&v79)[v15])
              {
                break;
              }
            }
          }

          v9 = v83;
        }

        if (v8)
        {
          v10 = v9;
        }

        else
        {
          v10 = v6;
        }
      }

      while (v5 < v10);
    }

    v77 = v3;
    v16 = v89[0];
    if (v89[0])
    {
      do
      {
        v18 = v16[2];
        if (HIDWORD(v18) != 1 || (v18 + 3) >= 2)
        {
          v20 = *(a1 + 64);
          v21 = __ROR8__(v18, 32);
          v22 = sub_502FF8(*(v20 + 4120) + 24, v21, 0, "stop");
          v23 = (v22 - *v22);
          if (*v23 >= 0xDu)
          {
            v24 = v23[6];
            if (v24)
            {
              v26 = *(v22 + v24);
              v25 = *(v22 + v24 + 4);
              if (v25 != -1 && v26 != 0)
              {
                v28 = sub_93D480(*(v20 + 4128) + 24, __ROR8__(v25 | (v26 << 32), 32), 0, "station");
                v29 = (v28 - *v28);
                if (*v29 >= 0xBu)
                {
                  v30 = v29[5];
                  if (v30)
                  {
                    if (*(v28 + v30 + *(v28 + v30)))
                    {
                      v31 = sub_502FF8(*(*(a1 + 64) + 4120) + 24, v21, 0, "stop");
                      v32 = (v31 - *v31);
                      if (*v32 >= 0xDu && (v33 = v32[6]) != 0)
                      {
                        v17 = *(v31 + v33 + 4) | (*(v31 + v33) << 32);
                      }

                      else
                      {
                        v17 = 0xFFFFFFFFLL;
                      }

                      v79 = v17;
                      sub_BC4980(v85, &v79, &v79);
                    }
                  }
                }
              }
            }
          }
        }

        v16 = *v16;
      }

      while (v16);
    }

    v34 = __p[0];
    if (__p[0])
    {
      do
      {
        v35 = *(a1 + 64);
        v36 = sub_93D480(*(v35 + 4112) + 24, __ROR8__(v34[2], 32), 0, "station");
        v37 = (v36 - *v36);
        if (*v37 >= 0xDu)
        {
          v38 = v37[6];
          if (v38)
          {
            v39 = (v36 + v38 + *(v36 + v38));
            v40 = *v39;
            if (v40)
            {
              v41 = 8 * v40;
              v42 = v39 + 1;
              do
              {
                v43 = *(v35 + 4112);
                if (*(v43 + 16) != 1 || sub_2D5204(*v43))
                {
                  operator new();
                }

                v42 += 2;
                v41 -= 8;
              }

              while (v41);
              v3 = v77;
            }
          }
        }

        v34 = *v34;
      }

      while (v34);
    }
  }

  if (*(a1 + 56) != 1 || sub_A794D0(v88, (v3 + 20)))
  {
    v44 = *(v3 + 20);
    if (HIDWORD(v44) == 1 && (v44 + 3) < 2)
    {
      goto LABEL_84;
    }

    v46 = *(*(a1 + 64) + 4120);
    if (*(v46 + 17) == 1)
    {
      v47 = sub_A74944(v46 + 24, v44, 0, "transfers at stop");
      v48 = (v47 - *v47);
      if (*v48 < 5u || (v49 = v48[2]) == 0)
      {
LABEL_84:
        v50 = 0;
LABEL_89:
        v79 = (v3 + 20);
        *(sub_BC4CF4(a3, (v3 + 20), &unk_229EB70, &v79) + 6) = v50;
        goto LABEL_90;
      }
    }

    else
    {
      v47 = sub_502FF8(v46 + 24, __ROR8__(v44, 32), 0, "stop");
      v51 = (v47 - *v47);
      if (*v51 < 0x15u || (v49 = v51[10]) == 0)
      {
        v50 = 300;
        goto LABEL_89;
      }
    }

    v50 = 10 * *(v47 + v49);
    goto LABEL_89;
  }

LABEL_90:
  v53 = *(v3 + 4);
  v52 = *(v3 + 8);
  v54 = *(a1 + 52);
  sub_A82C20(&v79, *(a1 + 64), *(v3 + 20));
  v55 = v80;
  v56 = 2;
  if (v84)
  {
    v56 = 4;
  }

  if (v80 < (&v79)[v56])
  {
    v57 = v54 + 10 * (v52 - v53);
    do
    {
      if (*(v55 + 2) <= v57)
      {
        if (*(a1 + 56) != 1 || (v92 = __ROR8__(*v55, 32), v61 = sub_A794D0(v88, &v92), v55 = v80, v61))
        {
          v91 = __ROR8__(*v55, 32);
          v92 = &v91;
          v62 = sub_BC5074(a3, &v91, &unk_229EB70, &v92);
          v63 = *(v62 + 6);
          v55 = v80;
          v64 = *(v80 + 8);
          if (v63 == 0x7FFFFFFF || v64 < v63)
          {
            *(v62 + 6) = v64;
          }
        }
      }

      v55 = (v55 + 12);
      v80 = v55;
      v58 = v81;
      if (v55 == v81)
      {
        v55 = v82;
        v80 = v82;
        v59 = 1;
        v84 = 1;
      }

      else
      {
        v59 = v84;
      }

      v60 = v83;
      if (v59)
      {
        v66 = v83;
      }

      else
      {
        v66 = v81;
      }

      if (*(v79 + 16) == 1 && v55 < v66)
      {
        while (1)
        {
          v68 = __ROR8__(*v55, 32);
          if (HIDWORD(v68) == 1 && (v68 + 3) < 2)
          {
            break;
          }

          if (sub_2D5204(*v79[515]))
          {
            v55 = v80;
            v58 = v81;
            v59 = v84;
            break;
          }

          v58 = v81;
          v55 = (v80 + 12);
          v80 = v55;
          if (v55 == v81)
          {
            v55 = v82;
            v80 = v82;
            v59 = 1;
            v84 = 1;
            if (v82 >= v83)
            {
              break;
            }
          }

          else
          {
            v59 = v84;
            if (v84)
            {
              v70 = 4;
            }

            else
            {
              v70 = 2;
            }

            if (v55 >= (&v79)[v70])
            {
              break;
            }
          }
        }

        v60 = v83;
      }

      if (v59)
      {
        v58 = v60;
      }
    }

    while (v55 < v58);
  }

  v71 = __p[0];
  if (__p[0])
  {
    do
    {
      v72 = *v71;
      operator delete(v71);
      v71 = v72;
    }

    while (v72);
  }

  v73 = v85[0];
  v85[0] = 0;
  if (v73)
  {
    operator delete(v73);
  }

  v74 = v89[0];
  if (v89[0])
  {
    do
    {
      v75 = *v74;
      operator delete(v74);
      v74 = v75;
    }

    while (v75);
  }

  v76 = v88[0];
  v88[0] = 0;
  if (v76)
  {
    operator delete(v76);
  }
}

void sub_BC2BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_11BD8(&a28);
  sub_11BD8(&a34);
  sub_11BD8(a11);
  _Unwind_Resume(a1);
}

void sub_BC2CA0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 1065353216;
  v9 = *(a2 + 52);
  v10 = sub_A57920((*(a1 + 64) + 4136), *(a2 + 32));
  v11 = (v10 - *v10);
  v12 = *v11;
  if (v12 < 5)
  {
    v13 = 0;
    goto LABEL_6;
  }

  if (v11[2])
  {
    v13 = v10 + v11[2] + *(v10 + v11[2]);
    if (v12 < 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v12 < 9)
    {
      goto LABEL_6;
    }
  }

  v98 = v11[4];
  if (v98)
  {
    v14 = (v10 + v98 + *(v10 + v98));
    goto LABEL_7;
  }

LABEL_6:
  v14 = 0;
LABEL_7:
  v131 = __ROR8__(*&v13[8 * *(sub_A571D4(v14, v9) + 14) + 4], 32);
  v15 = *(a2 + 52);
  v16 = sub_A57920((*(a1 + 64) + 4136), *(a2 + 32));
  v17 = (v16 - *v16);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (v16 + v18 + *(v16 + v18));
  }

  else
  {
    v19 = 0;
  }

  v20 = *sub_A571D4(v19, v15);
  v21 = *(a2 + 56);
  v22 = sub_A57920((*(a1 + 64) + 4136), *(a2 + 32));
  v23 = (v22 - *v22);
  if (*v23 >= 9u && (v24 = v23[4]) != 0)
  {
    v25 = (v22 + v24 + *(v22 + v24));
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_A571D4(v25, v21);
  v27 = __ROR8__(v20, 32);
  v28 = *(a2 + 20);
  v29 = 0x7FFFFFFF;
  if (v28 == 0x7FFFFFFF)
  {
    v30 = 2147483650.0 * *(a1 + 32);
    if (v30 >= 0.0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v32 = *(a2 + 8);
    v33 = 10 * (v28 - v32);
    v34 = v33;
    if (v32 == 0x7FFFFFFF)
    {
      v29 = 0x7FFFFFFF;
    }

    else
    {
      v29 = v33;
    }

    if (v32 == 0x7FFFFFFF)
    {
      v34 = 2147483650.0;
    }

    v30 = v34 * *(a1 + 32);
    if (v30 >= 0.0)
    {
LABEL_17:
      if (v30 < 4.50359963e15)
      {
        v31 = (v30 + v30) + 1;
LABEL_27:
        v30 = (v31 >> 1);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  if (v30 > -4.50359963e15)
  {
    v31 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
    goto LABEL_27;
  }

LABEL_28:
  v35 = *v26;
  v36 = v30;
  if (*(a1 + 40) > v30)
  {
    v36 = *(a1 + 40);
  }

  if (*(a1 + 44) >= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = *(a1 + 44);
  }

  sub_A7905C(v126, *(a1 + 64), v27, 0, 0, 0);
  v38 = v129;
  if (v129 >= v130)
  {
    return;
  }

  v109 = __ROR8__(v35, 32);
  v106 = v37 + v29;
  while (1)
  {
    v39 = __ROR8__(*v38, 32);
    prime = sub_A79708(v117, *(a1 + 64), v39, *(v38 + 8), 0, 0);
    v115 = -1;
    v116 = -1;
    v114 = 0x7FFFFFFF;
    *v111 = 0u;
    *__p = 0u;
    v113 = *(a4 + 32);
    v41 = *(a4 + 8);
    if (v41 == 1)
    {
      v41 = 2;
LABEL_38:
      sub_B07C(v111, v41);
      goto LABEL_39;
    }

    if ((v41 & (v41 - 1)) != 0)
    {
      prime = std::__next_prime(*(a4 + 8));
      v41 = prime;
      v51 = v111[1];
      v52 = prime >= v111[1];
      if (prime > v111[1])
      {
        goto LABEL_38;
      }
    }

    else
    {
      v51 = 0;
      v52 = 1;
      if (v41)
      {
        goto LABEL_38;
      }
    }

    if (!v52)
    {
      prime = vcvtps_u32_f32(__p[1] / v113);
      if (v51 < 3 || (v53 = vcnt_s8(v51), v53.i16[0] = vaddlv_u8(v53), v53.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v54 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v54;
        }
      }

      if (v41 <= prime)
      {
        v41 = prime;
      }

      if (v41 < v51)
      {
        goto LABEL_38;
      }
    }

LABEL_39:
    for (i = *(a4 + 16); i; i = *i)
    {
      prime = sub_BC5480(v111, i + 2, (i + 2));
    }

    v43 = sub_BC1B3C(prime, v27, v109, v111, v117, &v116, &v115, &v114);
    v44 = __p[0];
    if (__p[0])
    {
      do
      {
        v45 = *v44;
        operator delete(v44);
        v44 = v45;
      }

      while (v45);
    }

    v46 = v111[0];
    v111[0] = 0;
    if (v46)
    {
      operator delete(v46);
    }

    if (v43)
    {
      v47 = v115;
      v120 = v119 + 16 * v115;
      v48 = v114 < 0 ? -5 : 5;
      v49 = v114 / -10 + a3 + (((-103 * (v48 + v114 % 10)) >> 15) & 1) + ((-103 * (v48 + v114 % 10)) >> 10);
      if (v123 == 1 ? sub_A84F48(*(a1 + 64), v117, v49, 1u) : sub_A8552C(v117, v49, 1))
      {
        v55 = v122;
        if (v123)
        {
          v56 = v124;
        }

        else
        {
          v56 = 0xFFFFFFFFLL;
        }

        if (v123)
        {
          v57 = v125;
        }

        else
        {
          v57 = 0x7FFFFFFF;
        }

        v58 = &v125;
        if (!v123)
        {
          v58 = v122;
        }

        v59 = *v58;
        v60 = (v118 + *(v118 - *v118 + 6));
        v61 = v122[1];
        v62 = v60 + *v60 + 4;
        v63 = *(v62 + 8 * (v61 + ((v120 - v119) >> 4)));
        v64 = v116;
        v120 = v119 + 16 * v116;
        v65 = *(v62 + 8 * (v61 + v116) + 4);
        if (10 * (v63 - v65) <= v106 && 10 * (*(a2 + 12) - v59 - v65) <= *(a1 + 48))
        {
          v100 = v121;
          v101 = v56;
          v102 = v57;
          v99 = *(v119 + 16 * v116 + 8);
          v66 = sub_A57920((*(a1 + 64) + 4136), v39);
          v67 = (v66 - *v66);
          v68 = *v67;
          if (v68 < 5)
          {
            v103 = 0;
          }

          else if (v67[2])
          {
            v103 = v66 + v67[2] + *(v66 + v67[2]);
            if (v68 >= 9)
            {
LABEL_91:
              v79 = v67[4];
              if (v79)
              {
                v69 = (v66 + v79 + *(v66 + v79));
                goto LABEL_84;
              }
            }
          }

          else
          {
            v103 = 0;
            if (v68 >= 9)
            {
              goto LABEL_91;
            }
          }

          v69 = 0;
LABEL_84:
          v110 = __ROR8__(*&v103[8 * *(sub_A571D4(v69, v64) + 14) + 4], 32);
          if (sub_BC14B4(a1, &v131, &v110, a5))
          {
            v132 = &v110;
            v70 = sub_BC57FC(a6, &v110, &unk_229EB70, &v132);
            v71 = *(v70 + 12);
            if (v71 == 0x7FFFFFFF || v63 + v59 > v71)
            {
              v104 = v70;
              *(v70 + 7) = 10 * v99;
              v72 = *(a1 + 64);
              v73 = -1431655765 * ((v55 - v100) >> 2);
              v132 = sub_A56F04((v72 + 4136), v39, v64, -1431655765 * ((v55 - v100) >> 2));
              v133 = v74;
              v75 = sub_A57920((v72 + 4136), v39);
              v76 = (v75 - *v75);
              if (*v76 >= 9u && (v77 = v76[4]) != 0)
              {
                v78 = (v75 + v77 + *(v75 + v77));
              }

              else
              {
                v78 = 0;
              }

              v80 = *(sub_A571D4(v78, v64) + 6);
              if (v101 == -1)
              {
                v81 = 0x7FFFFFFF;
              }

              else
              {
                v81 = v102;
              }

              v82 = v81;
              v104[4] = sub_A56700((v72 + 4184), &v132, v80, v81);
              *(v104 + 20) = v83;
              v84 = *(a1 + 64);
              v132 = sub_A56F04((v84 + 4136), v39, v47, v73);
              v133 = v85;
              v86 = sub_A57920((v84 + 4136), v39);
              v87 = (v86 - *v86);
              if (*v87 >= 9u && (v88 = v87[4]) != 0)
              {
                v89 = (v86 + v88 + *(v86 + v88));
              }

              else
              {
                v89 = 0;
              }

              v90 = sub_A571D4(v89, v47);
              *(v104 + 44) = sub_A56A5C((v84 + 4184), &v132, *(v90 + 6), v82);
              *(v104 + 26) = v91;
              v104[7] = v39;
              v104[8] = v73 | (v101 << 32);
              *(v104 + 18) = v102;
              *(v104 + 19) = v64;
              *(v104 + 20) = v47;
            }
          }
        }
      }
    }

    v92 = v130;
    v38 = v129 + 16;
    v129 = v38;
    if (v38 == v130)
    {
      break;
    }

LABEL_108:
    while (v38 < v92)
    {
      v94 = sub_A795E8(v126);
      v38 = v129;
      v92 = v130;
      if (!v94)
      {
        break;
      }

      v38 = v129 + 16;
      v129 = v38;
      if (v38 == v130)
      {
        v95 = j;
        while (1)
        {
          v95 += 2;
          j = v95;
          if (v95 >= v128)
          {
            goto LABEL_35;
          }

          v96 = *v95;
          v97 = v95[1];
          if (*v95 != v97)
          {
            v129 = *v95;
            v130 = v97;
            v92 = v97;
            v38 = v96;
            goto LABEL_108;
          }
        }
      }
    }

LABEL_35:
    if (v38 >= v92)
    {
      return;
    }
  }

  v93 = j + 2;
  for (j = v93; v93 < v128; j = v93)
  {
    v38 = *v93;
    v92 = v93[1];
    if (*v93 != v92)
    {
      v129 = *v93;
      v130 = v92;
      goto LABEL_108;
    }

    v93 += 2;
  }
}