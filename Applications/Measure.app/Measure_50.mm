uint64_t sub_10032DB84()
{
  sub_10028CA60(&qword_1004D54C0, "opencv-hist", sub_10032CDCC, sub_10032C910, sub_10032CDF8, sub_10032D434, sub_10032D618);

  return __cxa_atexit(sub_10028CABC, &qword_1004D54C0, &_mh_execute_header);
}

void sub_10032DC34(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v9 = a3;
  sub_1002ACE7C(v46, &off_10047A090);
  if (sub_100271148(a1) == 0x10000)
  {
    v14 = *(a1 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v38 = *v14;
    v17 = *(v14 + 32);
    v39 = v16;
    v40 = v17;
    v18 = *(v14 + 56);
    v41 = *(v14 + 48);
    v42 = v18;
    v43 = &v38 + 8;
    v44 = v45;
    v45[0] = 0;
    v45[1] = 0;
    if (v18)
    {
      atomic_fetch_add((v18 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_4:
        v19 = *(v14 + 72);
        v20 = v44;
        *v44 = *v19;
        v20[1] = v19[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v38) = 0;
    sub_100269B58(&v38, v14);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v38);
  }

LABEL_8:
  __p = 0;
  v36 = 0;
  v37 = 0;
  v21 = a4;
  v22 = a5;
  sub_10032DF44(&v38, v9, rint(a6), rint(a7), &__p, 0x7FFFFFFF, v21, v22);
  v27 = 0x242FF401CLL;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = v28;
  v33 = &v34;
  v34 = 0uLL;
  v28[0] = (v36 - __p) >> 4;
  v28[1] = 1;
  if (v36 != __p)
  {
    v34 = vdupq_n_s64(0x10uLL);
    *&v29 = __p;
    *(&v29 + 1) = __p;
    *&v30 = __p + 16 * ((v36 - __p) >> 4);
    *(&v30 + 1) = v30;
  }

  sub_10022B754(&v27, a2);
  if (*(&v31 + 1) && atomic_fetch_add((*(&v31 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v27);
  }

  *(&v31 + 1) = 0;
  v29 = 0u;
  v30 = 0u;
  if (SHIDWORD(v27) >= 1)
  {
    v23 = 0;
    v24 = v32;
    do
    {
      v24[v23++] = 0;
    }

    while (v23 < SHIDWORD(v27));
  }

  if (v33 != &v34)
  {
    j__free(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v42 && atomic_fetch_add((v42 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v38);
  }

  v42 = 0;
  v39 = 0u;
  v40 = 0u;
  if (SDWORD1(v38) >= 1)
  {
    v25 = 0;
    v26 = v43;
    do
    {
      *&v26[4 * v25++] = 0;
    }

    while (v25 < SDWORD1(v38));
  }

  if (v44 != v45)
  {
    j__free(v44);
  }

  if (v46[2])
  {
    sub_1002ACC1C(v46);
  }
}

void sub_10032DEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_100006D14(va);
  if (v3)
  {
    operator delete(v3);
  }

  sub_100006D14(va1);
  sub_1001D8BF4(v4 - 96);
  _Unwind_Resume(a1);
}

void sub_10032DF44(uint64_t a1, int a2, unsigned int a3, int a4, unint64_t *a5, int a6, float a7, float a8)
{
  if ((*a1 & 0xFFF) != 0)
  {
    *v38 = 0uLL;
    qmemcpy(sub_1002A80E0(v38, 57), "image.type() == (((0) & ((1 << 3) - 1)) + (((1)-1) << 3))", 57);
    sub_1002A8980(-215, v38, "HoughLinesProbabilistic", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/hough.cpp", 425);
  }

  v8 = *(a1 + 12);
  v9 = rint(3.14159265 / a8);
  v36 = *(a1 + 8);
  sub_100266984(v9, rintf(((2 * (v36 + v8)) | 1) / a7), 4, v38);
  LODWORD(v42[0]) = 1124007936;
  memset(v42 + 4, 0, 32);
  memset(&v42[4] + 4, 0, 28);
  v43 = &v42[1];
  v44 = v45;
  v45[0] = 0;
  v45[1] = 0;
  (*(**v38 + 24))(*v38, v38, v42, 0xFFFFFFFFLL);
  sub_100008E50(v38);
  *v38 = 1124007936;
  memset(&v38[4], 0, 60);
  v39 = &v38[8];
  v40 = v41;
  v41[0] = 0;
  v41[1] = 0;
  __src = __PAIR64__(v8, v36);
  sub_100268ED0(v38, 2, &__src, 0);
  if (v9)
  {
    if ((v9 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_10000918C();
  }

  if (v36 >= 1 && v8 >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = 0;
      v13 = *(a1 + 16) + **(a1 + 72) * v10;
      v14 = *&v38[16] + *v40 * v10;
      do
      {
        if (*(v13 + v12))
        {
          *(v14 + v12) = 1;
          if (((v11 >> 3) + 1) >> 61)
          {
            sub_10000918C();
          }

          if (v11 >> 3 != -1)
          {
            if (!(((v11 >> 3) + 1) >> 61))
            {
              operator new();
            }

            sub_10000927C();
          }

          v15 = (8 * (v11 >> 3));
          *v15 = v12;
          v15[1] = v10;
          if (v11)
          {
            v16 = v11 - 8;
            v17 = 0;
            v18 = 0;
            if ((v11 - 8) < 0x38)
            {
              goto LABEL_59;
            }

            v20 = (v16 & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFFCLL || (v16 & 0xFFFFFFFFFFFFFFF8) == -4;
            v17 = 0;
            v18 = 0;
            if (!v20)
            {
              goto LABEL_59;
            }

            v17 = 0;
            v18 = 0;
            if ((v16 & 0xFFFFFFFFFFFFFFF8) + 8 > 4)
            {
              goto LABEL_59;
            }

            v21 = (v16 >> 3) + 1;
            v18 = (8 * (v21 & 0x3FFFFFFFFFFFFFF8));
            v17 = v18;
            v22 = 32;
            v23 = 32;
            v24 = v21 & 0x3FFFFFFFFFFFFFF8;
            do
            {
              v26 = *(v23 - 32);
              v25 = *(v23 - 16);
              v28 = *v23;
              v27 = *(v23 + 16);
              v23 += 64;
              *(v22 - 32) = v26;
              *(v22 - 16) = v25;
              *v22 = v28;
              *(v22 + 16) = v27;
              v22 += 64;
              v24 -= 8;
            }

            while (v24);
            if (v21 != (v21 & 0x3FFFFFFFFFFFFFF8))
            {
LABEL_59:
              do
              {
                v19 = *v17++;
                *v18++ = v19;
              }

              while (v17 != v11);
            }
          }

          v11 = (v15 + 2);
        }

        else
        {
          *(v14 + v12) = 0;
        }

        ++v12;
      }

      while (v12 != v8);
      ++v10;
    }

    while (v10 != v36);
    if ((v11 >> 3) >= 1)
    {
      v29 = (v11 >> 3) & 0x7FFFFFFF;
      v30 = -1;
      do
      {
        v37 = v29;
        *(8 * ((HIDWORD(v30) - 130063606 * v30) % v29)) = *(8 * (v29 - 1));
        v30 = HIDWORD(v30) + 4164903690 * v30;
        --v29;
      }

      while (v37 > 1);
    }
  }

  if (*&v38[56] && atomic_fetch_add((*&v38[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v38);
  }

  *&v38[56] = 0;
  memset(&v38[16], 0, 32);
  if (*&v38[4] >= 1)
  {
    v31 = 0;
    v32 = v39;
    do
    {
      *&v32[4 * v31++] = 0;
    }

    while (v31 < *&v38[4]);
  }

  if (v40 != v41)
  {
    j__free(v40);
  }

  if (v42[7] && atomic_fetch_add((v42[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v42);
  }

  v42[7] = 0;
  memset(&v42[2], 0, 32);
  if (SHIDWORD(v42[0]) >= 1)
  {
    v33 = 0;
    v34 = v43;
    do
    {
      *(v34 + v33++) = 0;
    }

    while (v33 < SHIDWORD(v42[0]));
  }

  if (v44 != v45)
  {
    j__free(v44);
  }
}

void sub_10032EED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10032F0F8(void *a1, int a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_1001D8B88(a1);
  *v18 = off_10047A0C0;
  *(v18 + 2) = 1124007936;
  *(v18 + 12) = 0u;
  *(v18 + 28) = 0u;
  *(v18 + 44) = 0u;
  *(v18 + 7) = 0u;
  *(v18 + 11) = 0u;
  *(v18 + 26) = 1124007936;
  v18[9] = v18 + 2;
  v18[10] = v18 + 11;
  *(v18 + 108) = 0u;
  *(v18 + 124) = 0u;
  *(v18 + 140) = 0u;
  *(v18 + 19) = 0u;
  *(v18 + 23) = 0u;
  v18[21] = v18 + 14;
  v18[22] = v18 + 23;
  *(v18 + 204) = 0u;
  *(v18 + 220) = 0u;
  *(v18 + 236) = 0u;
  *(v18 + 50) = 1124007942;
  *(v18 + 31) = 0u;
  *(v18 + 35) = 0u;
  v18[33] = v18 + 26;
  v18[34] = v18 + 35;
  *(v18 + 43) = 0u;
  *(v18 + 332) = 0u;
  *(v18 + 316) = 0u;
  *(v18 + 300) = 0u;
  v18[45] = v18 + 38;
  v18[46] = v18 + 47;
  *(v18 + 47) = 0u;
  *(v18 + 74) = 1124007942;
  *(v18 + 55) = 0u;
  *(v18 + 428) = 0u;
  *(v18 + 412) = 0u;
  *(v18 + 396) = 0u;
  v18[57] = v18 + 50;
  v18[58] = v18 + 59;
  *(v18 + 98) = 1124007936;
  *(v18 + 503) = 0;
  *(v18 + 59) = 0u;
  *(v18 + 61) = 0u;
  *(v18 + 64) = a4;
  *(v18 + 130) = a2;
  *(v18 + 66) = a5;
  *(v18 + 67) = a6;
  *(v18 + 68) = a7;
  *(v18 + 69) = a8;
  *(v18 + 70) = a9;
  *(v18 + 142) = a3;
  v18[74] = 0;
  *(v18 + 36) = 0u;
  if (a3 < 1 || a9 >= 1.0 || a7 >= 180.0 || a4 <= 0.0 || a5 <= 0.0 || a6 < 0.0 || a7 <= 0.0 || a9 < 0.0)
  {
    v20[0] = 0;
    v20[1] = 0;
    qmemcpy(sub_1002A80E0(v20, 131), "_scale > 0 && _sigma_scale > 0 && _quant >= 0 && _ang_th > 0 && _ang_th < 180 && _density_th >= 0 && _density_th < 1 && _n_bins > 0", 131);
    sub_1002A8980(-215, v20, "LineSegmentDetectorImpl", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 407);
  }

  return a1;
}

void sub_10032F348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  v15 = *v13;
  if (*v13)
  {
    v9[73] = v15;
    operator delete(v15);
  }

  sub_10032F3A8(v12 + 192);
  sub_10024105C(v12 + 96);
  sub_10024105C(v12);
  sub_100006D14(v11);
  sub_100006D14(v10);
  sub_1001D8C28(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10032F3A8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1);
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 64);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 4));
  }

  v5 = *(a1 + 72);
  if (v5 != (a1 + 80))
  {
    j__free(v5);
  }

  return a1;
}

void sub_10032F43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1002ACE7C(v62, &off_10047A118);
  if (sub_100271148(a2) == 0x10000)
  {
    v12 = *(a2 + 8);
    v13 = *v12;
    v14 = *(v12 + 16);
    *v58 = *v12;
    *&v58[16] = v14;
    *&v58[32] = *(v12 + 32);
    v15 = *(v12 + 56);
    *&v58[48] = *(v12 + 48);
    *&v58[56] = v15;
    v59 = &v58[8];
    v60 = &v61;
    v61 = 0uLL;
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*(v12 + 4) <= 2)
      {
LABEL_4:
        v16 = *(v12 + 72);
        v17 = v60;
        *v60 = *v16;
        v17[1] = v16[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v13) <= 2)
    {
      goto LABEL_4;
    }

    *&v58[4] = 0;
    sub_100269B58(v58, v12);
  }

  else
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, v58);
  }

LABEL_8:
  if ((a1 + 8) != v58)
  {
    v18 = *(a1 + 64);
    if (v18 && atomic_fetch_add((v18 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 8);
    }

    *(a1 + 64) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    if (*(a1 + 12) >= 1)
    {
      v19 = 0;
      v20 = *(a1 + 72);
      do
      {
        *(v20 + 4 * v19++) = 0;
      }

      while (v19 < *(a1 + 12));
    }

    v21 = *&v58[4];
    v22 = *&v58[16];
    *(a1 + 8) = *v58;
    *(a1 + 24) = v22;
    v23 = *&v58[48];
    *(a1 + 40) = *&v58[32];
    *(a1 + 56) = v23;
    v24 = *(a1 + 80);
    if (v24 == (a1 + 88))
    {
      v25 = v60;
      if (v21 <= 2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      j__free(v24);
      *(a1 + 72) = a1 + 16;
      *(a1 + 80) = a1 + 88;
      v24 = (a1 + 88);
      v25 = v60;
      if (*&v58[4] <= 2)
      {
LABEL_17:
        *v24 = *v25;
        v24[1] = v25[1];
LABEL_23:
        *v58 = 1124007936;
        memset(&v58[4], 0, 60);
        goto LABEL_24;
      }
    }

    *(a1 + 72) = v59;
    *(a1 + 80) = v25;
    v59 = &v58[8];
    v60 = &v61;
    goto LABEL_23;
  }

  if (*&v58[56] && atomic_fetch_add((*&v58[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v58);
  }

LABEL_24:
  *&v58[56] = 0;
  memset(&v58[16], 0, 32);
  if (*&v58[4] >= 1)
  {
    v26 = 0;
    v27 = v59;
    do
    {
      *&v27[4 * v26++] = 0;
    }

    while (v26 < *&v58[4]);
  }

  if (v60 != &v61)
  {
    j__free(v60);
  }

  if (!*(a1 + 24))
  {
    goto LABEL_40;
  }

  v28 = *(a1 + 12);
  if (v28 >= 3)
  {
    v30 = *(a1 + 72);
    v31 = (v30 + 4);
    v32 = 1;
    v33 = v28 & 0x7FFFFFFE;
    v34 = 1;
    do
    {
      v32 *= *(v31 - 1);
      v34 *= *v31;
      v31 += 2;
      v33 -= 2;
    }

    while (v33);
    v29 = v34 * v32;
    v35 = v28 - (v28 & 0x7FFFFFFE);
    if (v35)
    {
      v36 = (v30 + 8 * ((v28 >> 1) & 0x3FFFFFFF));
      do
      {
        v37 = *v36++;
        v29 *= v37;
        --v35;
      }

      while (v35);
    }
  }

  else
  {
    v29 = *(a1 + 20) * *(a1 + 16);
  }

  if (!v28 || !v29 || (*(a1 + 8) & 0xFFF) != 0)
  {
LABEL_40:
    *v58 = 0uLL;
    qmemcpy(sub_1002A80E0(v58, 75), "!image.empty() && image.type() == (((0) & ((1 << 3) - 1)) + (((1)-1) << 3))", 75);
    sub_1002A8980(-215, v58, "detect", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 416);
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  __p = 0;
  v47 = 0;
  v48 = 0;
  *(a1 + 504) = sub_1002769C0(a4);
  *(a1 + 505) = sub_1002769C0(a5);
  *(a1 + 506) = *(a1 + 520) > 1 && sub_1002769C0(a6);
  sub_10032FCF4(a1, &v55, &v52, &v49, &__p);
  *v58 = 0x242FF401DLL;
  memset(&v58[16], 0, 48);
  v59 = &v58[8];
  v60 = &v61;
  v61 = 0uLL;
  *&v58[8] = (v56 - v55) >> 4;
  *&v58[12] = 1;
  if (v56 != v55)
  {
    v61 = vdupq_n_s64(0x10uLL);
    *&v58[16] = v55;
    *&v58[24] = v55;
    *&v58[32] = v55 + 16 * ((v56 - v55) >> 4);
    *&v58[40] = *&v58[32];
  }

  sub_10022B754(v58, a3);
  if (*&v58[56] && atomic_fetch_add((*&v58[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v58);
  }

  *&v58[56] = 0;
  memset(&v58[16], 0, 32);
  if (*&v58[4] >= 1)
  {
    v38 = 0;
    v39 = v59;
    do
    {
      *&v39[4 * v38++] = 0;
    }

    while (v38 < *&v58[4]);
  }

  if (v60 != &v61)
  {
    j__free(v60);
  }

  if (*(a1 + 504) == 1)
  {
    *v58 = 0x242FF4006;
    memset(&v58[16], 0, 48);
    v59 = &v58[8];
    v60 = &v61;
    v61 = 0uLL;
    *&v58[8] = (v53 - v52) >> 3;
    *&v58[12] = 1;
    if (v53 != v52)
    {
      v61 = vdupq_n_s64(8uLL);
      *&v58[16] = v52;
      *&v58[24] = v52;
      *&v58[32] = v52 + 8 * ((v53 - v52) >> 3);
      *&v58[40] = *&v58[32];
    }

    sub_10022B754(v58, a4);
    if (*&v58[56] && atomic_fetch_add((*&v58[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v58);
    }

    *&v58[56] = 0;
    memset(&v58[16], 0, 32);
    if (*&v58[4] >= 1)
    {
      v40 = 0;
      v41 = v59;
      do
      {
        *&v41[4 * v40++] = 0;
      }

      while (v40 < *&v58[4]);
    }

    if (v60 != &v61)
    {
      j__free(v60);
    }
  }

  if (*(a1 + 505) == 1)
  {
    *v58 = 0x242FF4006;
    memset(&v58[16], 0, 48);
    v59 = &v58[8];
    v60 = &v61;
    v61 = 0uLL;
    *&v58[8] = (v50 - v49) >> 3;
    *&v58[12] = 1;
    if (v50 != v49)
    {
      v61 = vdupq_n_s64(8uLL);
      *&v58[16] = v49;
      *&v58[24] = v49;
      *&v58[32] = v49 + 8 * ((v50 - v49) >> 3);
      *&v58[40] = *&v58[32];
    }

    sub_10022B754(v58, a5);
    if (*&v58[56] && atomic_fetch_add((*&v58[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v58);
    }

    *&v58[56] = 0;
    memset(&v58[16], 0, 32);
    if (*&v58[4] >= 1)
    {
      v42 = 0;
      v43 = v59;
      do
      {
        *&v43[4 * v42++] = 0;
      }

      while (v42 < *&v58[4]);
    }

    if (v60 != &v61)
    {
      j__free(v60);
    }
  }

  if (*(a1 + 506) == 1)
  {
    *v58 = 0x242FF4006;
    memset(&v58[16], 0, 48);
    v59 = &v58[8];
    v60 = &v61;
    v61 = 0uLL;
    *&v58[8] = (v47 - __p) >> 3;
    *&v58[12] = 1;
    if (v47 != __p)
    {
      v61 = vdupq_n_s64(8uLL);
      *&v58[16] = __p;
      *&v58[24] = __p;
      *&v58[32] = __p + 8 * ((v47 - __p) >> 3);
      *&v58[40] = *&v58[32];
    }

    sub_10022B754(v58, a6);
    if (*&v58[56] && atomic_fetch_add((*&v58[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v58);
    }

    *&v58[56] = 0;
    memset(&v58[16], 0, 32);
    if (*&v58[4] >= 1)
    {
      v44 = 0;
      v45 = v59;
      do
      {
        *&v45[4 * v44++] = 0;
      }

      while (v44 < *&v58[4]);
    }

    if (v60 != &v61)
    {
      j__free(v60);
    }
  }

  *(a1 + 584) = *(a1 + 576);
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55)
  {
    operator delete(v55);
  }

  if (v62[2])
  {
    sub_1002ACC1C(v62);
  }
}

void sub_10032FC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100006D14(va);
  if (a9)
  {
    operator delete(a9);
    v22 = a12;
    if (!a12)
    {
LABEL_3:
      v23 = a15;
      if (!a15)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v22 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v22);
  v23 = a15;
  if (!a15)
  {
LABEL_4:
    v24 = __p;
    if (!__p)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  operator delete(v23);
  v24 = __p;
  if (!__p)
  {
LABEL_6:
    sub_1001D8BF4(v20 - 80);
    _Unwind_Resume(a1);
  }

LABEL_5:
  operator delete(v24);
  goto LABEL_6;
}

void sub_10032FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 544);
  v92[0] = v8 * 3.14159265 / 180.0;
  v9 = *(a1 + 536);
  v91 = v9 / sin(v92[0]);
  v10 = *(a1 + 512);
  if (v10 != 1.0)
  {
    *v79 = 1124007936;
    memset(&v79[4], 0, 60);
    v80 = &v79[8];
    v81 = &v82;
    v82 = 0;
    v83[0] = 0;
    if (v10 >= 1.0)
    {
      v11 = *(a1 + 528);
    }

    else
    {
      v11 = *(a1 + 528) / v10;
    }

    v89 = (a1 + 8);
    v90 = 0;
    LODWORD(v88) = 16842752;
    HIDWORD(v84) = (2 * vcvtpd_u64_f64(v11 * 3.71692219)) | 1;
    LODWORD(v85) = 33619968;
    v86 = v79;
    v87 = 0;
    LODWORD(v84) = HIDWORD(v84);
    sub_1003606DC(&v88, &v85, &v84, 4, v11, 0.0);
    v90 = 0;
    LODWORD(v88) = 16842752;
    v89 = v79;
    LODWORD(v85) = 33619968;
    v86 = (a1 + 104);
    v87 = 0;
    v84 = 0.0;
    sub_10033AE18(&v88, &v85, &v84, 5, *(a1 + 512), *(a1 + 512));
    LODWORD(v88) = *(a1 + 568);
    sub_100330520(a1, &v91, &v88);
    if (*&v79[56] && atomic_fetch_add((*&v79[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v79);
    }

    *&v79[56] = 0;
    memset(&v79[16], 0, 32);
    if (*&v79[4] >= 1)
    {
      v12 = 0;
      v13 = v80;
      do
      {
        *&v13[4 * v12++] = 0;
      }

      while (v12 < *&v79[4]);
    }

    if (v81 != &v82)
    {
      j__free(v81);
    }

    goto LABEL_27;
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    atomic_fetch_add((v14 + 20), 1u);
  }

  v15 = *(a1 + 160);
  if (v15 && atomic_fetch_add((v15 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) > 0)
  {
    v16 = 0;
    v17 = *(a1 + 168);
    do
    {
      *(v17 + 4 * v16++) = 0;
      v18 = *(a1 + 108);
    }

    while (v16 < v18);
    *(a1 + 104) = *(a1 + 8);
    if (v18 <= 2)
    {
      v19 = *(a1 + 12);
      if (v19 <= 2)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    sub_100269B58(a1 + 104, a1 + 8);
    goto LABEL_26;
  }

  v19 = *(a1 + 12);
  *(a1 + 104) = *(a1 + 8);
  if (v19 > 2)
  {
    goto LABEL_25;
  }

LABEL_23:
  *(a1 + 108) = v19;
  *(a1 + 112) = *(a1 + 16);
  v20 = *(a1 + 80);
  v21 = *(a1 + 176);
  *v21 = *v20;
  v21[1] = v20[1];
LABEL_26:
  *(a1 + 120) = *(a1 + 24);
  *(a1 + 136) = *(a1 + 40);
  *(a1 + 152) = *(a1 + 56);
  *v79 = *(a1 + 568);
  sub_100330520(a1, &v91, v79);
LABEL_27:
  v22 = v8 / 180.0;
  v23 = log10(*(a1 + 488));
  v24 = (v23 + log10(*(a1 + 492))) * 5.0 * 0.5 + 1.04139269;
  *(a1 + 496) = v24;
  v25 = log10(v22);
  v88 = vrev64_s32(**(a1 + 168));
  sub_100266EA8(&v88, 0, v79);
  (*(**v79 + 24))(*v79, v79, a1 + 392, 0);
  sub_100008E50(v79);
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v26 = *(a1 + 584) - *(a1 + 576);
  if (!v26)
  {
    return;
  }

  v75 = a5;
  v27 = 0;
  v28 = (-v24 / v25);
  v29 = v26 >> 4;
  v30 = v92[0];
  if (v29 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v29;
  }

  __asm { FMOV            V0.2D, #0.5 }

  v78 = _Q0;
  do
  {
    v37 = (*(a1 + 576) + 16 * v27);
    v38 = *v37;
    v39 = v37[1];
    if (*(*(a1 + 408) + **(a1 + 464) * v39 + v38))
    {
      goto LABEL_32;
    }

    if (*(*(a1 + 216) + **(a1 + 272) * v39 + 8 * v38) == -1024.0)
    {
      goto LABEL_32;
    }

    v85 = 0.0;
    sub_100330E78(a1, v37, &v88, &v85, v92);
    if (v28 > (v89 - v88) >> 5)
    {
      goto LABEL_32;
    }

    v40 = v85;
    sub_10033123C(a1, &v88, v79, v85, v30, v22);
    v84 = -1.0;
    if (*(a1 + 520) >= 1)
    {
      if (!sub_1003314F4(a1, &v88, v79, (a1 + 560), v40, v30, v22))
      {
        goto LABEL_32;
      }

      if (*(a1 + 520) >= 2)
      {
        v84 = sub_100331780(a1, v79);
        if (v84 <= *(a1 + 552))
        {
          goto LABEL_32;
        }
      }
    }

    v41 = vaddq_f64(*v79, v78);
    v42 = vaddq_f64(*&v79[16], v78);
    *v79 = v41;
    *&v79[16] = v42;
    v43 = *(a1 + 512);
    v44 = v41.f64[1];
    v45 = v42.f64[1];
    if (v43 != 1.0)
    {
      v41.f64[0] = v41.f64[0] / v43;
      v44 = v41.f64[1] / v43;
      *v79 = v41.f64[0];
      *&v79[8] = v41.f64[1] / v43;
      v42.f64[0] = v42.f64[0] / v43;
      v45 = v42.f64[1] / v43;
      *&v79[16] = v42.f64[0];
      *&v79[24] = v42.f64[1] / v43;
      *&v79[32] = *&v79[32] / v43;
    }

    v46 = v41.f64[0];
    v47 = v44;
    v48 = v42.f64[0];
    v49 = v45;
    v51 = *(a2 + 8);
    v50 = *(a2 + 16);
    if (v51 >= v50)
    {
      v52 = *a2;
      v53 = v51 - *a2;
      v54 = v53 >> 4;
      v55 = (v53 >> 4) + 1;
      if (v55 >> 60)
      {
        sub_10000918C();
      }

      v56 = v50 - v52;
      if (v56 >> 3 > v55)
      {
        v55 = v56 >> 3;
      }

      if (v56 >= 0x7FFFFFFFFFFFFFF0)
      {
        v57 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v57 = v55;
      }

      if (v57)
      {
        if (!(v57 >> 60))
        {
          operator new();
        }

        sub_10000927C();
      }

      v58 = v53 >> 4;
      v59 = (16 * v54);
      *v59 = v46;
      v59[1] = v47;
      v59[2] = v48;
      v59[3] = v49;
      if (v52 != v51)
      {
        v60 = v51 - v52 - 16;
        v61 = v52;
        v62 = 0;
        if (v60 < 0x70)
        {
          goto LABEL_78;
        }

        if ((v52 + (v60 & 0xFFFFFFFFFFFFFFF0)) != -16)
        {
          v61 = v52;
          v62 = 0;
          if (v52 < v53 + (v60 & 0xFFFFFFFFFFFFFFF0) - 16 * v58 + 16)
          {
            goto LABEL_78;
          }
        }

        v63 = (v60 >> 4) + 1;
        v62 = (16 * (v63 & 0x1FFFFFFFFFFFFFF8));
        v61 = (v62 + v52);
        v64 = (-16 * v58 + 16 * v54 + 64);
        v65 = (v52 + 16);
        v66 = v63 & 0x1FFFFFFFFFFFFFF8;
        do
        {
          v68 = *(v65 - 4);
          v67 = *(v65 - 3);
          v69 = *(v65 - 1);
          v71 = *v65;
          v70 = v65[1];
          v73 = v65[2];
          v72 = v65[3];
          *(v64 - 2) = *(v65 - 2);
          *(v64 - 1) = v69;
          *(v64 - 4) = v68;
          *(v64 - 3) = v67;
          v64[2] = v73;
          v64[3] = v72;
          *v64 = v71;
          v64[1] = v70;
          v64 += 8;
          v65 += 8;
          v66 -= 8;
        }

        while (v66);
        if (v63 != (v63 & 0x1FFFFFFFFFFFFFF8))
        {
LABEL_78:
          do
          {
            *v62 = *v61;
            v62[1] = *(v61 + 1);
            v62[2] = *(v61 + 2);
            v62[3] = *(v61 + 3);
            v61 += 4;
            v62 += 4;
          }

          while (v61 != v51);
        }
      }

      v74 = v59 + 4;
      *a2 = 0;
      *(a2 + 8) = v59 + 4;
      *(a2 + 16) = 0;
      if (v52)
      {
        operator delete(v52);
      }

      *(a2 + 8) = v74;
      if (*(a1 + 504) != 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *v51 = v46;
      v51[1] = v47;
      v51[2] = v48;
      v51[3] = v49;
      *(a2 + 8) = v51 + 4;
      if (*(a1 + 504) != 1)
      {
        goto LABEL_66;
      }
    }

    sub_10033217C(a3, &v79[32]);
LABEL_66:
    if (*(a1 + 505) == 1)
    {
      sub_10033217C(a4, v83);
    }

    if (*(a1 + 506) == 1 && *(a1 + 520) >= 2)
    {
      sub_10033217C(v75, &v84);
    }

LABEL_32:
    ++v27;
  }

  while (v27 != v31);
  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_1003304A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *(v15 - 192);
  if (v17)
  {
    *(v15 - 184) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100330520(uint64_t a1, double *a2, unsigned int *a3)
{
  v5 = **(a1 + 168);
  *v80 = 1124007936;
  memset(&v80[4], 0, 60);
  v81 = &v80[8];
  v82 = &v83;
  v83 = 0;
  v84 = 0;
  __src = v5;
  sub_100268ED0(v80, 2, &__src, 6);
  if ((a1 + 200) != v80)
  {
    v6 = *(a1 + 256);
    if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 200);
    }

    *(a1 + 256) = 0;
    *(a1 + 216) = 0u;
    *(a1 + 232) = 0u;
    if (*(a1 + 204) >= 1)
    {
      v7 = 0;
      v8 = *(a1 + 264);
      do
      {
        *(v8 + 4 * v7++) = 0;
      }

      while (v7 < *(a1 + 204));
    }

    v9 = *&v80[4];
    v10 = *&v80[16];
    *(a1 + 200) = *v80;
    *(a1 + 216) = v10;
    v11 = *&v80[48];
    *(a1 + 232) = *&v80[32];
    *(a1 + 248) = v11;
    v12 = *(a1 + 272);
    if (v12 == (a1 + 280))
    {
      v13 = v82;
      if (v9 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v12);
      *(a1 + 264) = a1 + 208;
      *(a1 + 272) = a1 + 280;
      v12 = (a1 + 280);
      v13 = v82;
      if (*&v80[4] <= 2)
      {
LABEL_10:
        *v12 = *v13;
        v12[1] = v13[1];
        goto LABEL_21;
      }
    }

    *(a1 + 264) = v81;
    *(a1 + 272) = v13;
    v81 = &v80[8];
    v82 = &v83;
LABEL_21:
    *v80 = 1124007936;
    memset(&v80[4], 0, 60);
    v16 = v82;
    if (v82 == &v83)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (*&v80[56] && atomic_fetch_add((*&v80[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v80);
  }

  *&v80[56] = 0;
  memset(&v80[16], 0, 32);
  if (*&v80[4] >= 1)
  {
    v14 = 0;
    v15 = v81;
    do
    {
      *&v15[4 * v14++] = 0;
    }

    while (v14 < *&v80[4]);
  }

  v16 = v82;
  if (v82 != &v83)
  {
LABEL_22:
    j__free(v16);
  }

LABEL_23:
  v17 = **(a1 + 168);
  *v80 = 1124007936;
  memset(&v80[4], 0, 60);
  v81 = &v80[8];
  v82 = &v83;
  v83 = 0;
  v84 = 0;
  __src = v17;
  sub_100268ED0(v80, 2, &__src, 6);
  if ((a1 + 296) != v80)
  {
    v18 = *(a1 + 352);
    if (v18 && atomic_fetch_add((v18 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 296);
    }

    *(a1 + 352) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    if (*(a1 + 300) >= 1)
    {
      v19 = 0;
      v20 = *(a1 + 360);
      do
      {
        *(v20 + 4 * v19++) = 0;
      }

      while (v19 < *(a1 + 300));
    }

    v21 = *&v80[4];
    v22 = *&v80[16];
    *(a1 + 296) = *v80;
    *(a1 + 312) = v22;
    v23 = *&v80[48];
    *(a1 + 328) = *&v80[32];
    *(a1 + 344) = v23;
    v24 = *(a1 + 368);
    if (v24 == (a1 + 376))
    {
      v25 = v82;
      if (v21 <= 2)
      {
        goto LABEL_32;
      }
    }

    else
    {
      j__free(v24);
      *(a1 + 360) = a1 + 304;
      *(a1 + 368) = a1 + 376;
      v24 = (a1 + 376);
      v25 = v82;
      if (*&v80[4] <= 2)
      {
LABEL_32:
        *v24 = *v25;
        v24[1] = v25[1];
        goto LABEL_43;
      }
    }

    *(a1 + 360) = v81;
    *(a1 + 368) = v25;
    v81 = &v80[8];
    v82 = &v83;
LABEL_43:
    *v80 = 1124007936;
    memset(&v80[4], 0, 60);
    v28 = v82;
    if (v82 == &v83)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (*&v80[56] && atomic_fetch_add((*&v80[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v80);
  }

  *&v80[56] = 0;
  memset(&v80[16], 0, 32);
  if (*&v80[4] >= 1)
  {
    v26 = 0;
    v27 = v81;
    do
    {
      *&v27[4 * v26++] = 0;
    }

    while (v26 < *&v80[4]);
  }

  v28 = v82;
  if (v82 == &v83)
  {
    goto LABEL_45;
  }

LABEL_44:
  j__free(v28);
LABEL_45:
  v29 = *(a1 + 112);
  *(a1 + 488) = vrev64_s32(v29);
  HIDWORD(__src) = v29.i32[0];
  LODWORD(__src) = v29.i32[0] - 1;
  v85 = 0x7FFFFFFF80000000;
  sub_100269C44(v80, (a1 + 200), &__src, &v85);
  v85 = 0xC090000000000000;
  LODWORD(__src) = -1056833530;
  v87 = &v85;
  v88 = 0x100000001;
  v30 = sub_100276DA4();
  sub_10022CDA0(v80, &__src, v30);
  if (*&v80[56] && atomic_fetch_add((*&v80[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v80);
  }

  *&v80[56] = 0;
  memset(&v80[16], 0, 32);
  if (*&v80[4] >= 1)
  {
    v31 = 0;
    v32 = v81;
    do
    {
      *&v32[4 * v31++] = 0;
    }

    while (v31 < *&v80[4]);
  }

  if (v82 != &v83)
  {
    j__free(v82);
  }

  v33 = *(a1 + 488);
  __src = 0x7FFFFFFF80000000;
  LODWORD(v85) = v33 - 1;
  HIDWORD(v85) = v33;
  sub_100269C44(v80, (a1 + 200), &__src, &v85);
  v85 = 0xC090000000000000;
  LODWORD(__src) = -1056833530;
  v87 = &v85;
  v88 = 0x100000001;
  v34 = sub_100276DA4();
  sub_10022CDA0(v80, &__src, v34);
  if (*&v80[56] && atomic_fetch_add((*&v80[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v80);
  }

  *&v80[56] = 0;
  memset(&v80[16], 0, 32);
  if (*&v80[4] >= 1)
  {
    v35 = 0;
    v36 = v81;
    do
    {
      *&v36[4 * v35++] = 0;
    }

    while (v35 < *&v80[4]);
  }

  if (v82 != &v83)
  {
    j__free(v82);
  }

  v37 = *(a1 + 492);
  LODWORD(v38) = *(a1 + 488);
  v39 = -1.0;
  if (v37 >= 2)
  {
    v40 = 0;
    v41 = 1;
    do
    {
      if (v38 >= 2)
      {
        v42 = 0;
        v43 = **(a1 + 176);
        v44 = (*(a1 + 216) + **(a1 + 272) * v40);
        v45 = (*(a1 + 312) + **(a1 + 368) * v40);
        v46 = *(a1 + 120) + 1;
        v47 = (v46 + v43 * v41);
        v48 = (v46 + v43 * v40);
        do
        {
          v49 = *v47 - *(v48 - 1);
          v50 = *v48 - *(v47 - 1);
          v51 = v50 + v49;
          v52 = v49 - v50;
          v53 = sqrt(vcvtd_n_f64_u32(v52 * v52 + v51 * v51, 2uLL));
          *v45 = v53;
          if (v53 <= *a2)
          {
            *v44 = -1024.0;
          }

          else
          {
            *v44 = sub_100242754(v51, -v52) * 0.0174532925;
            if (v53 > v39)
            {
              v39 = v53;
            }
          }

          ++v42;
          ++v47;
          ++v48;
          v38 = *(a1 + 488);
          ++v44;
          ++v45;
        }

        while (v42 < v38 - 1);
        v37 = *(a1 + 492);
      }

      ++v40;
      ++v41;
    }

    while (v40 < v37 - 1);
  }

  v54 = v38 * v37;
  v55 = *(a1 + 576);
  v56 = (*(a1 + 584) - v55) >> 4;
  if (v54 <= v56)
  {
    v57 = a3;
    if (v54 < v56)
    {
      *(a1 + 584) = v55 + 16 * v54;
    }
  }

  else
  {
    sub_100334D44(a1 + 576, v54 - v56);
    v57 = a3;
  }

  if (*v57)
  {
    operator new();
  }

  v58 = 0.0;
  if (v39 > 0.0)
  {
    v58 = (*v57 - 1) / v39;
  }

  v59 = *(a1 + 492);
  if (v59 >= 2)
  {
    v60 = *(a1 + 488);
    if (v60 >= 2)
    {
      v61 = 0;
      v62 = 0;
      v63 = (v59 - 1);
      v64 = *(a1 + 312);
      v65 = **(a1 + 368);
      v66 = (v60 - 1);
      do
      {
        v67 = 0;
        do
        {
          v68 = v58 * *(v64 + 8 * v67);
          v69 = (8 * v68);
          v70 = *(a1 + 576) + 16 * (v62 + v67);
          if (*v69)
          {
            v71 = (*v69 + 8);
          }

          else
          {
            v71 = (8 * v68);
          }

          *v71 = v70;
          *(8 * v68) = v70;
          *v70 = v67;
          *(v70 + 4) = v61;
          *(v70 + 8) = 0;
          ++v67;
        }

        while (v66 != v67);
        ++v61;
        v64 += v65;
        v62 += v67;
      }

      while (v61 != v63);
    }
  }

  v72 = *v57;
  v73 = (v72 - 1);
  v74 = v72 - 1;
  while (v73 >= 1)
  {
    v75 = v74 & 0x7FFFFFFF;
    --v73;
    --v74;
    if (*(8 * v75))
    {
      v76 = *(8 * v75);
      do
      {
        v78 = *(8 * v73);
        if (v78)
        {
          *(v76 + 8) = v78;
          v76 = *(8 * v73);
        }

        v77 = v73-- + 1;
      }

      while (v77 > 1);
      return;
    }
  }
}

void sub_100330E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10024105C(va);
  _Unwind_Resume(a1);
}

void sub_100330E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10024105C(va);
  _Unwind_Resume(a1);
}

void sub_100330E2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100330E78(uint64_t a1, _DWORD *a2, void *a3, double *a4, double *a5)
{
  v6 = a4;
  a3[1] = *a3;
  v10 = a2[1];
  LODWORD(v58) = *a2;
  v9 = v58;
  DWORD1(v58) = v10;
  *(&v58 + 1) = *(a1 + 408) + **(a1 + 464) * v10 + v58;
  v11 = *(*(a1 + 216) + **(a1 + 272) * v10 + 8 * v58);
  *a4 = v11;
  v59 = v11;
  v60 = *(*(a1 + 312) + **(a1 + 368) * v10 + 8 * v9);
  sub_100332294(a3, &v58);
  v12 = *v6;
  **(&v58 + 1) = 1;
  v53 = a3;
  v15 = a3;
  v14 = *a3;
  v13 = v15[1];
  if (v13 != v14)
  {
    v16 = __sincos_stret(v12);
    v17 = 0;
    sinval = v16.__sinval;
    cosval = v16.__cosval;
    v51 = a5;
    v52 = v6;
    do
    {
      v21 = *&v14[32 * v17];
      v22 = vmax_s32(v21, 0x100000001);
      v23 = vmin_s32(vadd_s32(*(a1 + 488), -1), vadd_s32(v21, 0x100000001));
      v24 = vcgt_s32(vadd_s32(v22, -1), v23);
      if (((v24.i32[1] | v24.i32[0]) & 1) == 0)
      {
        v50 = v17;
        v25 = (v23.i32[0] + 1);
        v26 = v22.u32[1] - 1;
        v54 = v23.u32[1];
        v55 = v22.u32[0] - 1;
        v27 = v53;
        do
        {
          v29 = *(a1 + 408) + **(a1 + 464) * v26;
          v30 = *(a1 + 216) + **(a1 + 272) * v26;
          v31 = *(a1 + 312) + **(a1 + 368) * v26;
          v32 = v55;
          do
          {
            if (((v32 | v26) & 0x80000000) == 0)
            {
              v36 = (v29 + v32);
              if (*(v29 + v32) != 1 && v32 < *(a1 + 212) && v26 < *(a1 + 208))
              {
                v37 = *(*(a1 + 216) + v26 * **(a1 + 272) + 8 * v32);
                if (v37 != -1024.0)
                {
                  v38 = *v6 - v37;
                  if (v38 < 0.0)
                  {
                    v38 = -v38;
                  }

                  if (v38 > 4.71238898)
                  {
                    v38 = v38 + -6.28318531;
                    if (v38 < 0.0)
                    {
                      v38 = -v38;
                    }
                  }

                  if (v38 <= *a5)
                  {
                    *v36 = 1;
                    v39 = *(v31 + 8 * v32);
                    v40 = *(v30 + 8 * v32);
                    v41 = v27[1];
                    v42 = v27[2];
                    v56 = v31;
                    v57 = v30;
                    if (v41 < v42)
                    {
                      *v41 = v32;
                      *(v41 + 4) = v26;
                      *(v41 + 8) = v36;
                      v33 = v41 + 32;
                      *(v41 + 16) = v40;
                      *(v41 + 24) = v39;
                    }

                    else
                    {
                      v43 = *v27;
                      v44 = v41 - *v27;
                      v45 = v44 >> 5;
                      v46 = (v44 >> 5) + 1;
                      if (v46 >> 59)
                      {
                        sub_10000918C();
                      }

                      v47 = v42 - v43;
                      if (v47 >> 4 > v46)
                      {
                        v46 = v47 >> 4;
                      }

                      if (v47 >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v48 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v48 = v46;
                      }

                      if (v48)
                      {
                        if (!(v48 >> 59))
                        {
                          operator new();
                        }

                        sub_10000927C();
                      }

                      v27 = v53;
                      v49 = 32 * v45;
                      *v49 = v32;
                      *(v49 + 4) = v26;
                      *(v49 + 8) = v36;
                      *(v49 + 16) = v40;
                      *(v49 + 24) = v39;
                      v33 = 32 * v45 + 32;
                      memcpy(0, v43, v44);
                      *v53 = 0;
                      v53[1] = v33;
                      v53[2] = 0;
                      if (v43)
                      {
                        operator delete(v43);
                      }

                      a5 = v51;
                      v6 = v52;
                    }

                    v27[1] = v33;
                    v30 = v57;
                    v34 = *(v57 + 8 * v32);
                    v35 = __sincosf_stret(v34);
                    cosval = cosval + v35.__cosval;
                    sinval = sinval + v35.__sinval;
                    *v6 = sub_100242754(sinval, cosval) * 0.0174532925;
                    v31 = v56;
                  }
                }
              }
            }

            ++v32;
          }

          while (v25 != v32);
        }

        while (v26++ < v54);
        v20 = v27;
        v14 = *v27;
        v13 = v20[1];
        v17 = v50;
      }

      ++v17;
    }

    while (v17 < (v13 - v14) >> 5);
  }
}

void sub_10033123C(uint64_t a1, double **a2, double *a3, double a4, double a5, double a6)
{
  v51[1] = a5;
  v52 = a4;
  v10 = *a2;
  v11 = a2[1] - *a2;
  if (!v11)
  {
    v50 = 0.0;
    v51[0] = 0.0;
    goto LABEL_14;
  }

  v12 = v11 >> 5;
  v13 = (v11 >> 5) > 1;
  if ((v11 >> 5) <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11 >> 5;
  }

  if (!v13)
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = 0.0;
LABEL_11:
    v25 = v14 - v15;
    v26 = &v10[4 * v15];
    do
    {
      v27 = v26[3];
      v28 = *v26;
      v26 += 4;
      v29.i64[0] = v28;
      v29.i64[1] = SHIDWORD(v28);
      v16 = vmlaq_n_f64(v16, vcvtq_f64_s64(v29), v27);
      v17 = v17 + v27;
      --v25;
    }

    while (v25);
    goto LABEL_13;
  }

  v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v18 = v10 + 4;
  v16 = 0uLL;
  v17 = 0.0;
  v19 = v14 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v20 = v18[3];
    v21 = *(v18 - 1);
    v17 = v17 + v21 + v20;
    v22 = *(v18 - 4);
    v23.i64[0] = v22;
    v23.i64[1] = SHIDWORD(v22);
    v24 = vcvtq_f64_s64(v23);
    v23.i64[0] = *v18;
    v23.i64[1] = HIDWORD(*v18);
    v16 = vaddq_f64(vaddq_f64(v16, vmulq_n_f64(v24, v21)), vmulq_n_f64(vcvtq_f64_s64(v23), v20));
    v18 += 8;
    v19 -= 2;
  }

  while (v19);
  if (v12 != v15)
  {
    goto LABEL_11;
  }

LABEL_13:
  v50 = v16.f64[1];
  v51[0] = v16.f64[0];
  if (v17 <= 0.0)
  {
LABEL_14:
    v49[0] = 0;
    v49[1] = 0;
    v30 = sub_1002A80E0(v49, 7);
    *v30 = 544044403;
    *(v30 + 3) = 807419424;
    sub_1002A8980(-215, v49, "region2rect", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 691);
  }

  v31 = v16.f64[0] / v17;
  v32 = v16.f64[1] / v17;
  v50 = v16.f64[1] / v17;
  v51[0] = v16.f64[0] / v17;
  sub_1003323B4(a1, a2, v51, &v50, &v52);
  v34 = v33;
  v35 = __sincos_stret(v33);
  v36 = a2[1] - *a2;
  if (v36)
  {
    v37 = v36 >> 5;
    if (v37 <= 1)
    {
      v37 = 1;
    }

    v38 = *a2 + 1;
    v39 = 0.0;
    v40 = 0.0;
    v41 = 0.0;
    v42 = 0.0;
    do
    {
      v43 = *(v38 - 1) - v31;
      v44 = *v38 - v32;
      v45 = v35.__sinval * v44 + v43 * v35.__cosval;
      v46 = v35.__cosval * v44 - v43 * v35.__sinval;
      if (v45 < v39)
      {
        v47 = v45;
      }

      else
      {
        v47 = v39;
      }

      if (v45 <= v40)
      {
        v39 = v47;
      }

      else
      {
        v40 = v45;
      }

      if (v46 > v41)
      {
        v41 = v46;
      }

      else if (v46 < v42)
      {
        v42 = v46;
      }

      v38 += 8;
      --v37;
    }

    while (v37);
    v48 = v41 - v42;
  }

  else
  {
    v40 = 0.0;
    v39 = 0.0;
    v48 = 0.0;
  }

  *a3 = v31 + v39 * v35.__cosval;
  a3[1] = v32 + v39 * v35.__sinval;
  a3[2] = v31 + v40 * v35.__cosval;
  a3[3] = v32 + v40 * v35.__sinval;
  a3[4] = v48;
  a3[5] = v31;
  a3[6] = v32;
  a3[7] = v34;
  a3[8] = v35.__cosval;
  a3[9] = v35.__sinval;
  a3[10] = a5;
  a3[11] = a6;
  if (v48 < 1.0)
  {
    a3[4] = 1.0;
  }
}

void sub_1003314DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

BOOL sub_1003314F4(uint64_t a1, double **a2, double *a3, double *a4, double a5, double a6, double a7)
{
  v32 = a5;
  v9 = *a2;
  v10 = a2[1];
  if (((v10 - *a2) >> 5) / (a3[4] * sqrt((a3[3] - a3[1]) * (a3[3] - a3[1]) + (a3[2] - *a3) * (a3[2] - *a3))) >= *a4)
  {
    return 1;
  }

  v14 = *v9;
  if (v10 == v9)
  {
    v24 = a4;
    v21 = 0.0;
    v19 = 0.0;
    v25 = 0.0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = v14;
    v18 = SHIDWORD(v14);
    v19 = 0.0;
    v20 = *a2;
    v21 = 0.0;
    do
    {
      **&v20[4 * v15 + 1] = 0;
      v20 = *a2;
      v22 = &(*a2)[4 * v15];
      if (sqrt((*(v22 + 1) - v18) * (*(v22 + 1) - v18) + (*v22 - v17) * (*v22 - v17)) < a3[4])
      {
          ;
        }

        while (i > 3.14159265)
        {
          i = i + -6.28318531;
        }

        v21 = v21 + i;
        v19 = v19 + i * i;
        ++v16;
      }

      ++v15;
    }

    while (v15 < (a2[1] - v20) >> 5);
    v24 = a4;
    v14 = *v20;
    v25 = v16;
  }

  v26 = sqrt((v19 + v21 / v25 * -2.0 * v21) / v25 + v21 / v25 * (v21 / v25));
  v30 = v14;
  v31 = v26 + v26;
  sub_100330E78(a1, &v30, a2, &v32, &v31);
  if ((a2[1] - *a2) < 0x21)
  {
    return 0;
  }

  v28 = v32;
  sub_10033123C(a1, a2, a3, v32, a6, a7);
  v29 = ((a2[1] - *a2) >> 5) / (a3[4] * sqrt((a3[3] - a3[1]) * (a3[3] - a3[1]) + (a3[2] - *a3) * (a3[2] - *a3)));
  return v29 >= *v24 || sub_100332650(a1, a2, a3, v24, v28, a6, a7, v29);
}

double sub_100331780(uint64_t a1, double *a2)
{
  sub_100332810(a1, a2);
  v5 = v4;
  if (v4 <= *(a1 + 552))
  {
    v6 = *(a2 + 3);
    v163 = *(a2 + 2);
    v164 = v6;
    v7 = *(a2 + 5);
    v165 = *(a2 + 4);
    v166 = v7;
    v8 = *(a2 + 1);
    v161 = *a2;
    v162 = v8;
    v9 = *(&v7 + 1) * 0.5;
    *&v166 = *(&v7 + 1) * 0.5 * 3.14159265;
    *(&v166 + 1) = *(&v7 + 1) * 0.5;
    sub_100332810(a1, &v161);
    if (v10 > v5)
    {
      v11 = v164;
      *(a2 + 2) = v163;
      *(a2 + 3) = v11;
      v12 = v166;
      *(a2 + 4) = v165;
      *(a2 + 5) = v12;
      v13 = v162;
      v5 = v10;
      *a2 = v161;
      *(a2 + 1) = v13;
    }

    *&v166 = v9 * 0.5 * 3.14159265;
    *(&v166 + 1) = v9 * 0.5;
    sub_100332810(a1, &v161);
    if (v14 > v5)
    {
      v15 = v164;
      *(a2 + 2) = v163;
      *(a2 + 3) = v15;
      v16 = v166;
      *(a2 + 4) = v165;
      *(a2 + 5) = v16;
      v17 = v162;
      v5 = v14;
      *a2 = v161;
      *(a2 + 1) = v17;
    }

    v18 = v9 * 0.5 * 0.5;
    *&v166 = v18 * 3.14159265;
    *(&v166 + 1) = v18;
    sub_100332810(a1, &v161);
    if (v19 > v5)
    {
      v20 = v164;
      *(a2 + 2) = v163;
      *(a2 + 3) = v20;
      v21 = v166;
      *(a2 + 4) = v165;
      *(a2 + 5) = v21;
      v22 = v162;
      v5 = v19;
      *a2 = v161;
      *(a2 + 1) = v22;
    }

    v23 = v18 * 0.5;
    *&v166 = v23 * 3.14159265;
    *(&v166 + 1) = v23;
    sub_100332810(a1, &v161);
    if (v24 > v5)
    {
      v25 = v164;
      *(a2 + 2) = v163;
      *(a2 + 3) = v25;
      v26 = v166;
      *(a2 + 4) = v165;
      *(a2 + 5) = v26;
      v27 = v162;
      v5 = v24;
      *a2 = v161;
      *(a2 + 1) = v27;
    }

    *&v166 = v23 * 0.5 * 3.14159265;
    *(&v166 + 1) = v23 * 0.5;
    sub_100332810(a1, &v161);
    if (v28 > v5)
    {
      v29 = v164;
      *(a2 + 2) = v163;
      *(a2 + 3) = v29;
      v30 = v166;
      *(a2 + 4) = v165;
      *(a2 + 5) = v30;
      v31 = v162;
      v5 = v28;
      *a2 = v161;
      *(a2 + 1) = v31;
    }

    if (v5 <= *(a1 + 552))
    {
      v32 = *(a2 + 3);
      v163 = *(a2 + 2);
      v164 = v32;
      v33 = *(a2 + 5);
      v165 = *(a2 + 4);
      v166 = v33;
      v34 = *(a2 + 1);
      v161 = *a2;
      v162 = v34;
      v35 = *&v163 + -0.5;
      if (*&v163 + -0.5 >= 0.5)
      {
        *&v163 = *&v163 + -0.5;
        sub_100332810(a1, &v161);
        if (v36 > v5)
        {
          v37 = v164;
          *(a2 + 2) = v163;
          *(a2 + 3) = v37;
          v38 = v166;
          *(a2 + 4) = v165;
          *(a2 + 5) = v38;
          v39 = v162;
          v5 = v36;
          *a2 = v161;
          *(a2 + 1) = v39;
        }
      }

      else
      {
        v35 = *&v163;
      }

      v40 = v35 + -0.5;
      if (v35 + -0.5 >= 0.5)
      {
        *&v163 = v35 + -0.5;
        sub_100332810(a1, &v161);
        if (v41 > v5)
        {
          v42 = v164;
          *(a2 + 2) = v163;
          *(a2 + 3) = v42;
          v43 = v166;
          *(a2 + 4) = v165;
          *(a2 + 5) = v43;
          v44 = v162;
          v5 = v41;
          *a2 = v161;
          *(a2 + 1) = v44;
        }
      }

      else
      {
        v40 = v35;
      }

      v45 = v40 + -0.5;
      if (v40 + -0.5 >= 0.5)
      {
        *&v163 = v40 + -0.5;
        sub_100332810(a1, &v161);
        if (v46 > v5)
        {
          v47 = v164;
          *(a2 + 2) = v163;
          *(a2 + 3) = v47;
          v48 = v166;
          *(a2 + 4) = v165;
          *(a2 + 5) = v48;
          v49 = v162;
          v5 = v46;
          *a2 = v161;
          *(a2 + 1) = v49;
        }
      }

      else
      {
        v45 = v40;
      }

      v50 = v45 + -0.5;
      if (v45 + -0.5 >= 0.5)
      {
        *&v163 = v45 + -0.5;
        sub_100332810(a1, &v161);
        if (v51 > v5)
        {
          v52 = v164;
          *(a2 + 2) = v163;
          *(a2 + 3) = v52;
          v53 = v166;
          *(a2 + 4) = v165;
          *(a2 + 5) = v53;
          v54 = v162;
          v5 = v51;
          *a2 = v161;
          *(a2 + 1) = v54;
        }
      }

      else
      {
        v50 = v45;
      }

      if (v50 + -0.5 >= 0.5)
      {
        *&v163 = v50 + -0.5;
        sub_100332810(a1, &v161);
        if (v55 > v5)
        {
          v56 = v164;
          *(a2 + 2) = v163;
          *(a2 + 3) = v56;
          v57 = v166;
          *(a2 + 4) = v165;
          *(a2 + 5) = v57;
          v58 = v162;
          v5 = v55;
          *a2 = v161;
          *(a2 + 1) = v58;
        }
      }

      if (v5 <= *(a1 + 552))
      {
        v59 = *(a2 + 1);
        v161 = *a2;
        v162 = v59;
        v60 = *(a2 + 3);
        v163 = *(a2 + 2);
        v164 = v60;
        v61 = *(a2 + 5);
        v165 = *(a2 + 4);
        v166 = v61;
        v62 = *&v165;
        v63 = -*(&v165 + 1);
        v64 = *(&v162 + 1);
        v65 = *(&v161 + 1);
        v66 = *&v161;
        v67 = *&v162;
        v68 = *&v163 + -0.5;
        v159 = -*(&v165 + 1);
        if (*&v163 + -0.5 >= 0.5)
        {
          v66 = *&v161 + v63 * 0.25;
          v65 = *(&v161 + 1) + *&v165 * 0.25;
          *&v161 = v66;
          *(&v161 + 1) = v65;
          v67 = *&v162 + v63 * 0.25;
          v64 = *(&v162 + 1) + *&v165 * 0.25;
          *&v162 = v67;
          *(&v162 + 1) = v64;
          *&v163 = *&v163 + -0.5;
          sub_100332810(a1, &v161);
          if (v86 > v5)
          {
            v87 = v164;
            *(a2 + 2) = v163;
            *(a2 + 3) = v87;
            v88 = v166;
            *(a2 + 4) = v165;
            *(a2 + 5) = v88;
            v89 = v162;
            v5 = v86;
            *a2 = v161;
            *(a2 + 1) = v89;
          }

          v63 = v159;
          v90 = v68 + -0.5;
          if (v68 + -0.5 >= 0.5)
          {
            v66 = v66 + v159 * 0.25;
            v65 = v65 + v62 * 0.25;
            *&v161 = v66;
            *(&v161 + 1) = v65;
            v67 = v67 + v159 * 0.25;
            v64 = v64 + v62 * 0.25;
            *&v162 = v67;
            *(&v162 + 1) = v64;
            *&v163 = v68 + -0.5;
            sub_100332810(a1, &v161);
            if (v69 > v5)
            {
              v70 = v164;
              *(a2 + 2) = v163;
              *(a2 + 3) = v70;
              v71 = v166;
              *(a2 + 4) = v165;
              *(a2 + 5) = v71;
              v72 = v162;
              v5 = v69;
              *a2 = v161;
              *(a2 + 1) = v72;
            }

            v63 = v159;
            v73 = -0.5;
            v74 = v90 + -0.5;
            v75 = 0.5;
            if (v90 + -0.5 < 0.5)
            {
LABEL_49:
              v74 = v90;
              v80 = v90 + v73;
              if (v80 < v75)
              {
                goto LABEL_50;
              }

              goto LABEL_41;
            }

LABEL_38:
            v66 = v66 + v63 * 0.25;
            v65 = v65 + v62 * 0.25;
            *&v161 = v66;
            *(&v161 + 1) = v65;
            v67 = v67 + v63 * 0.25;
            v64 = v64 + v62 * 0.25;
            *&v162 = v67;
            *(&v162 + 1) = v64;
            *&v163 = v74;
            sub_100332810(a1, &v161);
            if (v76 > v5)
            {
              v77 = v164;
              *(a2 + 2) = v163;
              *(a2 + 3) = v77;
              v78 = v166;
              *(a2 + 4) = v165;
              *(a2 + 5) = v78;
              v79 = v162;
              v5 = v76;
              *a2 = v161;
              *(a2 + 1) = v79;
            }

            v63 = v159;
            v80 = v74 + -0.5;
            if (v74 + -0.5 < 0.5)
            {
LABEL_50:
              v85 = v74 + -0.5;
              if (v74 + -0.5 < 0.5)
              {
                goto LABEL_53;
              }

              goto LABEL_51;
            }

LABEL_41:
            v66 = v66 + v63 * 0.25;
            v65 = v65 + v62 * 0.25;
            *&v161 = v66;
            *(&v161 + 1) = v65;
            v67 = v67 + v63 * 0.25;
            v64 = v64 + v62 * 0.25;
            *&v162 = v67;
            *(&v162 + 1) = v64;
            *&v163 = v80;
            sub_100332810(a1, &v161);
            if (v81 > v5)
            {
              v82 = v164;
              *(a2 + 2) = v163;
              *(a2 + 3) = v82;
              v83 = v166;
              *(a2 + 4) = v165;
              *(a2 + 5) = v83;
              v84 = v162;
              v5 = v81;
              *a2 = v161;
              *(a2 + 1) = v84;
            }

            v63 = v159;
            v85 = v80 + -0.5;
            if (v80 + -0.5 < 0.5)
            {
LABEL_53:
              if (v5 > *(a1 + 552))
              {
                return v5;
              }

              v95 = *(a2 + 1);
              v161 = *a2;
              v162 = v95;
              v96 = *(a2 + 3);
              v163 = *(a2 + 2);
              v164 = v96;
              v97 = *(a2 + 5);
              v165 = *(a2 + 4);
              v166 = v97;
              v98 = *(&v165 + 1);
              v99 = *(&v162 + 1);
              v100 = -*&v165;
              v101 = *(&v161 + 1);
              v102 = *&v161;
              v103 = *&v162;
              v104 = *&v163 + -0.5;
              v160 = *(&v165 + 1);
              if (*&v163 + -0.5 >= 0.5)
              {
                v102 = *&v161 + *(&v165 + 1) * 0.25;
                v101 = *(&v161 + 1) + v100 * 0.25;
                *&v161 = v102;
                *(&v161 + 1) = v101;
                v103 = *&v162 + *(&v165 + 1) * 0.25;
                v99 = *(&v162 + 1) + v100 * 0.25;
                *&v162 = v103;
                *(&v162 + 1) = v99;
                *&v163 = *&v163 + -0.5;
                sub_100332810(a1, &v161);
                if (v126 > v5)
                {
                  v127 = v164;
                  *(a2 + 2) = v163;
                  *(a2 + 3) = v127;
                  v128 = v166;
                  *(a2 + 4) = v165;
                  *(a2 + 5) = v128;
                  v129 = v162;
                  v5 = v126;
                  *a2 = v161;
                  *(a2 + 1) = v129;
                }

                v98 = v160;
                v130 = v104 + -0.5;
                if (v104 + -0.5 >= 0.5)
                {
                  v102 = v102 + v160 * 0.25;
                  v101 = v101 + v100 * 0.25;
                  *&v161 = v102;
                  *(&v161 + 1) = v101;
                  v103 = v103 + v160 * 0.25;
                  v99 = v99 + v100 * 0.25;
                  *&v162 = v103;
                  *(&v162 + 1) = v99;
                  *&v163 = v104 + -0.5;
                  sub_100332810(a1, &v161);
                  if (v105 > v5)
                  {
                    v106 = v164;
                    *(a2 + 2) = v163;
                    *(a2 + 3) = v106;
                    v107 = v166;
                    *(a2 + 4) = v165;
                    *(a2 + 5) = v107;
                    v108 = v162;
                    v5 = v105;
                    *a2 = v161;
                    *(a2 + 1) = v108;
                  }

                  v98 = v160;
                  v109 = -0.5;
                  v110 = v130 + -0.5;
                  v111 = 0.5;
                  if (v130 + -0.5 < 0.5)
                  {
LABEL_71:
                    v110 = v130;
                    v116 = v130 + v109;
                    if (v116 < v111)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_62;
                  }

LABEL_59:
                  v102 = v102 + v98 * 0.25;
                  v101 = v101 + v100 * 0.25;
                  *&v161 = v102;
                  *(&v161 + 1) = v101;
                  v103 = v103 + v98 * 0.25;
                  v99 = v99 + v100 * 0.25;
                  *&v162 = v103;
                  *(&v162 + 1) = v99;
                  *&v163 = v110;
                  sub_100332810(a1, &v161);
                  if (v112 > v5)
                  {
                    v113 = v164;
                    *(a2 + 2) = v163;
                    *(a2 + 3) = v113;
                    v114 = v166;
                    *(a2 + 4) = v165;
                    *(a2 + 5) = v114;
                    v115 = v162;
                    v5 = v112;
                    *a2 = v161;
                    *(a2 + 1) = v115;
                  }

                  v98 = v160;
                  v116 = v110 + -0.5;
                  if (v110 + -0.5 < 0.5)
                  {
LABEL_72:
                    v121 = v110 + -0.5;
                    if (v110 + -0.5 < 0.5)
                    {
LABEL_73:
                      if (v5 <= *(a1 + 552))
                      {
                        v131 = *(a2 + 3);
                        v163 = *(a2 + 2);
                        v164 = v131;
                        v132 = *(a2 + 5);
                        v165 = *(a2 + 4);
                        v166 = v132;
                        v133 = *(a2 + 1);
                        v161 = *a2;
                        v162 = v133;
                        if (*&v163 + -0.5 >= 0.5)
                        {
                          v134 = *(&v166 + 1) * 0.5;
                          *&v166 = *(&v166 + 1) * 0.5 * 3.14159265;
                          *(&v166 + 1) = *(&v166 + 1) * 0.5;
                          sub_100332810(a1, &v161);
                          if (v135 > v5)
                          {
                            v136 = v164;
                            *(a2 + 2) = v163;
                            *(a2 + 3) = v136;
                            v137 = v166;
                            *(a2 + 4) = v165;
                            *(a2 + 5) = v137;
                            v138 = v162;
                            v5 = v135;
                            *a2 = v161;
                            *(a2 + 1) = v138;
                          }

                          v139 = v134 * 0.5;
                          *&v166 = v139 * 3.14159265;
                          *(&v166 + 1) = v139;
                          sub_100332810(a1, &v161);
                          if (v140 > v5)
                          {
                            v141 = v164;
                            *(a2 + 2) = v163;
                            *(a2 + 3) = v141;
                            v142 = v166;
                            *(a2 + 4) = v165;
                            *(a2 + 5) = v142;
                            v143 = v162;
                            v5 = v140;
                            *a2 = v161;
                            *(a2 + 1) = v143;
                          }

                          v144 = v139 * 0.5;
                          *&v166 = v144 * 3.14159265;
                          *(&v166 + 1) = v144;
                          sub_100332810(a1, &v161);
                          if (v145 > v5)
                          {
                            v146 = v164;
                            *(a2 + 2) = v163;
                            *(a2 + 3) = v146;
                            v147 = v166;
                            *(a2 + 4) = v165;
                            *(a2 + 5) = v147;
                            v148 = v162;
                            v5 = v145;
                            *a2 = v161;
                            *(a2 + 1) = v148;
                          }

                          v149 = v144 * 0.5;
                          *&v166 = v149 * 3.14159265;
                          *(&v166 + 1) = v149;
                          sub_100332810(a1, &v161);
                          if (v150 > v5)
                          {
                            v151 = v164;
                            *(a2 + 2) = v163;
                            *(a2 + 3) = v151;
                            v152 = v166;
                            *(a2 + 4) = v165;
                            *(a2 + 5) = v152;
                            v153 = v162;
                            v5 = v150;
                            *a2 = v161;
                            *(a2 + 1) = v153;
                          }

                          *&v166 = v149 * 0.5 * 3.14159265;
                          *(&v166 + 1) = v149 * 0.5;
                          sub_100332810(a1, &v161);
                          if (v154 > v5)
                          {
                            v155 = v164;
                            *(a2 + 2) = v163;
                            *(a2 + 3) = v155;
                            v156 = v166;
                            *(a2 + 4) = v165;
                            *(a2 + 5) = v156;
                            v157 = v162;
                            v5 = v154;
                            *a2 = v161;
                            *(a2 + 1) = v157;
                          }
                        }
                      }

                      return v5;
                    }

LABEL_65:
                    *&v161 = v102 + v98 * 0.25;
                    *(&v161 + 1) = v101 + v100 * 0.25;
                    *&v162 = v103 + v98 * 0.25;
                    *(&v162 + 1) = v99 + v100 * 0.25;
                    *&v163 = v121;
                    sub_100332810(a1, &v161);
                    if (v122 > v5)
                    {
                      v123 = v164;
                      *(a2 + 2) = v163;
                      *(a2 + 3) = v123;
                      v124 = v166;
                      *(a2 + 4) = v165;
                      *(a2 + 5) = v124;
                      v125 = v162;
                      v5 = v122;
                      *a2 = v161;
                      *(a2 + 1) = v125;
                    }

                    goto LABEL_73;
                  }

LABEL_62:
                  v102 = v102 + v98 * 0.25;
                  v101 = v101 + v100 * 0.25;
                  *&v161 = v102;
                  *(&v161 + 1) = v101;
                  v103 = v103 + v98 * 0.25;
                  v99 = v99 + v100 * 0.25;
                  *&v162 = v103;
                  *(&v162 + 1) = v99;
                  *&v163 = v116;
                  sub_100332810(a1, &v161);
                  if (v117 > v5)
                  {
                    v118 = v164;
                    *(a2 + 2) = v163;
                    *(a2 + 3) = v118;
                    v119 = v166;
                    *(a2 + 4) = v165;
                    *(a2 + 5) = v119;
                    v120 = v162;
                    v5 = v117;
                    *a2 = v161;
                    *(a2 + 1) = v120;
                  }

                  v98 = v160;
                  v121 = v116 + -0.5;
                  if (v116 + -0.5 < 0.5)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_65;
                }
              }

              else
              {
                v104 = *&v163;
              }

              v130 = v104;
              v109 = -0.5;
              v110 = v104 + -0.5;
              v111 = 0.5;
              if (v110 < 0.5)
              {
                goto LABEL_71;
              }

              goto LABEL_59;
            }

LABEL_51:
            *&v161 = v66 + v63 * 0.25;
            *(&v161 + 1) = v65 + v62 * 0.25;
            *&v162 = v67 + v63 * 0.25;
            *(&v162 + 1) = v64 + v62 * 0.25;
            *&v163 = v85;
            sub_100332810(a1, &v161);
            if (v91 > v5)
            {
              v92 = v164;
              *(a2 + 2) = v163;
              *(a2 + 3) = v92;
              v93 = v166;
              *(a2 + 4) = v165;
              *(a2 + 5) = v93;
              v94 = v162;
              v5 = v91;
              *a2 = v161;
              *(a2 + 1) = v94;
            }

            goto LABEL_53;
          }
        }

        else
        {
          v68 = *&v163;
        }

        v90 = v68;
        v73 = -0.5;
        v74 = v68 + -0.5;
        v75 = 0.5;
        if (v74 < 0.5)
        {
          goto LABEL_49;
        }

        goto LABEL_38;
      }
    }
  }

  return v5;
}

void sub_10033217C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10000918C();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10000927C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_100332294(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    sub_10000918C();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    sub_10000927C();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_1003323B4(uint64_t a1, double **a2, double *a3, double *a4, double *a5)
{
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6 >> 5;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    v11 = *v5 - *a3;
    v12 = *(v5 + 1) - *a4;
    v13 = *(v5 + 3);
    v8 = v8 + v12 * v12 * v13;
    v9 = v9 + v11 * v11 * v13;
    v10 = v10 + -(v11 * v12) * v13;
    v5 += 32;
    --v7;
  }

  while (v7);
  if (v8 == 0.0)
  {
    goto LABEL_17;
  }

  v14 = fabs(v8);
  v15 = fmax(v14, 0.0);
  if (v15 < 2.22507386e-308)
  {
    v15 = 2.22507386e-308;
  }

  if (v14 / v15 <= 2.22044605e-14)
  {
LABEL_17:
    if (v9 == 0.0)
    {
      goto LABEL_31;
    }

    v16 = fabs(v9);
    v17 = fmax(v16, 0.0);
    if (v17 < 2.22507386e-308)
    {
      v17 = 2.22507386e-308;
    }

    if (v16 / v17 <= 2.22044605e-14)
    {
LABEL_31:
      if (v10 == 0.0)
      {
        goto LABEL_18;
      }

      v18 = fabs(v10);
      v19 = fmax(v18, 0.0);
      if (v19 < 2.22507386e-308)
      {
        v19 = 2.22507386e-308;
      }

      if (v18 / v19 <= 2.22044605e-14)
      {
LABEL_18:
        v30[0] = 0;
        v30[1] = 0;
        qmemcpy(sub_1002A80E0(v30, 71), "!(double_equal(Ixx, 0) && double_equal(Iyy, 0) && double_equal(Ixy, 0))", 71);
        sub_1002A8980(-215, v30, "get_theta", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 756);
      }
    }
  }

  v20 = (v9 + v8 - sqrt(v10 * (v10 * 4.0) + (v8 - v9) * (v8 - v9))) * 0.5;
  v21 = fabs(v8);
  v22 = fabs(v9);
  v23 = v20 - v9;
  v24 = v20 - v8;
  v25 = v21 <= v22;
  if (v21 <= v22)
  {
    v26 = v23;
  }

  else
  {
    v26 = v10;
  }

  if (v25)
  {
    v24 = v10;
  }

  v27 = v24;
  v28 = v26;
    ;
  }

    ;
  }
}

BOOL sub_100332650(uint64_t a1, double **a2, double *a3, double *a4, double a5, double a6, double a7, double a8)
{
  if (*a4 <= a8)
  {
    return 1;
  }

  v15 = *a2;
  v16 = a2[1];
  v17 = **a2;
  v18 = *(*a2 + 1);
  v19 = (a3[3] - v18) * (a3[3] - v18);
  if ((a3[1] - v18) * (a3[1] - v18) + (*a3 - v17) * (*a3 - v17) <= v19 + (a3[2] - v17) * (a3[2] - v17))
  {
    v20 = v19 + (a3[2] - v17) * (a3[2] - v17);
  }

  else
  {
    v20 = (a3[1] - v18) * (a3[1] - v18) + (*a3 - v17) * (*a3 - v17);
  }

  while (1)
  {
    v20 = v20 * 0.5625;
    if (v16 == v15)
    {
      v22 = (v16 - v15) >> 5;
    }

    else
    {
      v21 = 0;
      do
      {
        v23 = &v15[4 * v21];
        if ((*(v23 + 1) - v18) * (*(v23 + 1) - v18) + (*v23 - v17) * (*v23 - v17) > v20)
        {
          **(v23 + 1) = 0;
          v24 = a2[1];
          v25 = &(*a2)[4 * v21];
          v27 = *v25;
          v26 = *(v25 + 1);
          v28 = *(v24 - 1);
          *v25 = *(v24 - 2);
          *(v25 + 1) = v28;
          *(v24 - 2) = v27;
          *(v24 - 1) = v26;
          v15 = *a2;
          v16 = (a2[1] - 4);
          a2[1] = v16;
          --v21;
        }

        ++v21;
        v22 = (v16 - v15) >> 5;
      }

      while (v21 < v22);
    }

    result = v22 > 1;
    if (v22 <= 1)
    {
      break;
    }

    sub_10033123C(a1, a2, a3, a5, a6, a7);
    v15 = *a2;
    v16 = a2[1];
    if (((v16 - *a2) >> 5) / (a3[4] * sqrt((a3[3] - a3[1]) * (a3[3] - a3[1]) + (a3[2] - *a3) * (a3[2] - *a3))) >= *a4)
    {
      return 1;
    }
  }

  return result;
}

void sub_100332810(uint64_t a1, double *a2)
{
  v60 = 0;
  v4 = a2[3];
  v5 = a2[4] * 0.5;
  v6 = a2[9] * v5;
  v7 = v5 * a2[8];
  v8 = *a2;
  v9 = a2[1];
  v61 = (*a2 - v6);
  v62 = (v7 + v9);
  v63 = 0;
  v10 = a2[2];
  v64 = (v10 - v6);
  v65 = (v7 + v4);
  v66 = 0;
  v67 = (v6 + v10);
  v68 = (v4 - v7);
  v69 = 0;
  v70 = (v6 + v8);
  v71 = (v9 - v7);
  v72 = 0;
  v58 = sub_100332F40;
  sub_100334EB8(&v61, &v73, &v58, 4, 1);
  v11 = &v67;
  v12 = &v70;
  v13 = &v72;
  v14 = v62;
  v15 = v65;
  v16 = 12;
  if (v62 <= v65)
  {
    v16 = 0;
  }

  if (v62 >= v65)
  {
    v17 = v65;
  }

  else
  {
    v17 = v62;
  }

  v18 = 4;
  if (v62 < v65)
  {
    v19 = 4;
  }

  else
  {
    v19 = 16;
  }

  v20 = v68;
  if (v62 < v65)
  {
    v21 = v65;
  }

  else
  {
    v21 = v62;
  }

  if (v62 < v65)
  {
    v18 = 16;
  }

  v22 = 8;
  if (v62 >= v65)
  {
    v22 = 20;
  }

  v57 = v21;
  if (v21 < v68)
  {
    v18 = 28;
  }

  if (v17 > v68)
  {
    v16 = 24;
    v19 = 28;
  }

  v23 = *(&v61 + v19);
  v24 = v71;
  if (v17 > v68)
  {
    v22 = 32;
  }

  v54 = *(&v61 + v18);
  v55 = v71;
  if (v23 > v71)
  {
    v16 = 36;
  }

  v56 = v16;
  if (v23 <= v71)
  {
    v13 = &v61 + v22;
  }

  *v13 = 1;
  if ((v63 & 1) == 0)
  {
    v25 = &v61;
    if ((v66 & 1) == 0 && v61 > v64)
    {
      v25 = &v64;
    }

    goto LABEL_34;
  }

  v25 = &v64;
  if ((v66 & 1) == 0)
  {
LABEL_34:
    if ((v69 & 1) == 0 && *v25 > v67)
    {
      v25 = &v67;
    }

    goto LABEL_37;
  }

  v25 = &v67;
  if (v69)
  {
    v25 = &v70;
    if (v72)
    {
      v58 = 0;
      v59 = 0;
      v26 = sub_1002A80E0(&v58, 18);
      *(v26 + 16) = 27756;
      *v26 = *"leftmost != __null";
      sub_1002A8980(-215, &v58, "rect_nfa", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 1006);
    }

    goto LABEL_40;
  }

LABEL_37:
  if ((v72 & 1) == 0 && *v25 > v70)
  {
    v25 = &v70;
  }

LABEL_40:
  *(v25 + 8) = 1;
  if ((v63 & 1) == 0)
  {
    v27 = &v61;
    if ((v66 & 1) == 0 && v61 < v64)
    {
      v27 = &v64;
    }

    goto LABEL_48;
  }

  v27 = &v64;
  if ((v66 & 1) == 0)
  {
LABEL_48:
    if ((v69 & 1) == 0 && *v27 < v67)
    {
      v27 = &v67;
    }

    goto LABEL_51;
  }

  v27 = &v67;
  if (v69)
  {
    v27 = &v70;
    if (v72)
    {
      v58 = 0;
      v59 = 0;
      v28 = sub_1002A80E0(&v58, 19);
      *(v28 + 15) = 1819047278;
      *v28 = *"rightmost != __null";
      sub_1002A8980(-215, &v58, "rect_nfa", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 1025);
    }

    goto LABEL_54;
  }

LABEL_51:
  if ((v72 & 1) == 0 && *v27 < v70)
  {
    v27 = &v70;
  }

LABEL_54:
  *(v27 + 8) = 1;
  if (v63)
  {
    v29 = &v64;
    if (v66)
    {
      if (v69)
      {
        if (v72)
        {
          v58 = 0;
          v59 = 0;
          qmemcpy(sub_1002A80E0(&v58, 15), "tailp != __null", 15);
          sub_1002A8980(-215, &v58, "rect_nfa", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 1044);
        }

        goto LABEL_71;
      }

      goto LABEL_64;
    }
  }

  else
  {
    v29 = &v61;
    if ((v66 & 1) == 0 && v61 > v64)
    {
      v29 = &v64;
    }
  }

  if ((v69 & 1) == 0)
  {
    if (*v29 <= v67)
    {
      v11 = v29;
    }

    if (v72)
    {
      goto LABEL_65;
    }

    goto LABEL_69;
  }

  v11 = v29;
LABEL_64:
  if (v72)
  {
LABEL_65:
    v12 = v11;
    goto LABEL_71;
  }

LABEL_69:
  if (*v11 <= v70)
  {
    v12 = v11;
  }

LABEL_71:
  *(v12 + 8) = 1;
  v30 = 4;
  if (v14 > v15)
  {
    v30 = 16;
  }

  if (v17 > v20)
  {
    v30 = 28;
  }

  v31 = (&v61 + v30);
  if (v23 > v24)
  {
    v31 = &v71;
  }

  v32 = *v31;
  v33 = v25[1];
  v34 = 0.0;
  v35 = 0.0;
  if (v32 == v33)
  {
    v36 = *v12;
    v37 = v33 - *v12;
    if (v33 == *v12)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v35 = ((*(&v61 + v56) - *v25) / (v32 - v33));
    v36 = *v12;
    v37 = v33 - *v12;
    if (v33 == *v12)
    {
LABEL_79:
      v38 = v27[1];
      v39 = 0.0;
      v40 = 0.0;
      v41 = v32 - v38;
      if (v32 == v38)
      {
        goto LABEL_80;
      }

      goto LABEL_92;
    }
  }

  v34 = ((*v25 - v36) / v37);
  v38 = v27[1];
  v39 = 0.0;
  v40 = 0.0;
  v41 = v32 - v38;
  if (v32 == v38)
  {
LABEL_80:
    v42 = v38 - v36;
    if (v38 == v36)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_92:
  v40 = ((*(&v61 + v56) - *v27) / v41);
  v42 = v38 - v36;
  if (v38 != v36)
  {
LABEL_81:
    v39 = ((*v27 - v36) / v42);
  }

LABEL_82:
  v43 = 4;
  if (v14 < v15)
  {
    v43 = 16;
  }

  if (v57 < v20)
  {
    v43 = 28;
  }

  v44 = (&v61 + v43);
  if (v54 < v55)
  {
    v44 = &v71;
  }

  v45 = *v44;
  v47 = v60;
  v46 = HIDWORD(v60);
  if (v32 <= v45)
  {
    v48 = *(&v61 + v56);
    v49 = v48;
    do
    {
      if ((v32 & 0x80000000) == 0 && v32 < *(a1 + 492))
      {
        v51 = v49;
        if (v49 <= v48)
        {
          do
          {
            if ((v51 & 0x80000000) == 0 && v51 < *(a1 + 488))
            {
              ++v46;
              if (((v51 | v32) & 0x80000000) == 0 && *(a1 + 212) > v51 && *(a1 + 208) > v32)
              {
                v52 = *(*(a1 + 216) + **(a1 + 272) * v32 + 8 * v51);
                if (v52 != -1024.0)
                {
                  v53 = a2[7] - v52;
                  if (v53 < 0.0)
                  {
                    v53 = -v53;
                  }

                  if (v53 > 4.71238898)
                  {
                    v53 = v53 + -6.28318531;
                    if (v53 < 0.0)
                    {
                      v53 = -v53;
                    }
                  }

                  if (v53 <= a2[10])
                  {
                    ++v47;
                  }
                }
              }
            }

            ++v51;
          }

          while (v48 + 1 != v51);
        }

        if (v32 >= v33)
        {
          v35 = v34;
        }

        if (v32 >= v38)
        {
          v40 = v39;
        }

        v49 = v49 + v35;
        v48 = v48 + v40;
      }
    }

    while (v32++ != v45);
  }

  v60 = __PAIR64__(v46, v47);
  sub_100332F60(a1, &v60 + 1, &v60, a2 + 11);
}

void sub_100332EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100332F40(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

void sub_100332F60(uint64_t a1, int *a2, int *a3, long double *a4)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *a3;
    if (*a3)
    {
      v7 = v5 - v6;
      if (v5 == v6)
      {
        log10(*a4);
      }

      else
      {
        v8 = *a4;
        v9 = v6 + 1.0;
        if (v9 <= 15.0)
        {
          v14 = -(v9 + 5.5 - (v9 + 0.5) * log(v9 + 5.5));
          v15 = v14 - log(v6 + 1.0);
          v16 = *&qword_1004B10B8 + 0.0;
          v17 = v15 - log(v9 + 1.0);
          v18 = v16 + *&qword_1004B10C0 * v9;
          v19 = v17 - log(v9 + 2.0);
          v20 = v18 + *&qword_1004B10C8 * (v9 * v9);
          v21 = v19 - log(v9 + 3.0);
          v22 = *&qword_1004B10D0;
          v23 = v20 + v22 * pow(v6 + 1.0, 3.0);
          v24 = v21 - log(v9 + 4.0);
          v25 = *&qword_1004B10D8;
          v26 = v23 + v25 * pow(v6 + 1.0, 4.0);
          v27 = v24 - log(v9 + 5.0);
          v28 = *&qword_1004B10E0;
          v29 = v26 + v28 * pow(v6 + 1.0, 5.0);
          v30 = v27 - log(v9 + 6.0);
          v31 = *&qword_1004B10E8;
          v32 = pow(v6 + 1.0, 6.0);
          v13 = v30 + log(v29 + v31 * v32);
        }

        else
        {
          v10 = (v9 + -0.5) * log(v6 + 1.0) + 0.918938533 - v9;
          v11 = sinh(1.0 / v9);
          v12 = pow(v6 + 1.0, 6.0);
          v13 = v10 + v9 * 0.5 * log(1.0 / (v12 * 810.0) + v9 * v11);
        }

        v33 = 1.0 - v8;
        v72 = v5 + 1.0 - v13;
        v34 = v7;
        v35 = v7 + 1.0;
        if (v35 <= 15.0)
        {
          v40 = -(v35 + 5.5 - (v35 + 0.5) * log(v35 + 5.5));
          v41 = v40 - log(v7 + 1.0);
          v42 = *&qword_1004B10B8 + 0.0;
          v43 = v41 - log(v35 + 1.0);
          v44 = v42 + *&qword_1004B10C0 * v35;
          v45 = v43 - log(v35 + 2.0);
          v46 = v44 + *&qword_1004B10C8 * (v35 * v35);
          v47 = v45 - log(v35 + 3.0);
          v48 = *&qword_1004B10D0;
          v49 = v46 + v48 * pow(v7 + 1.0, 3.0);
          v50 = v47 - log(v35 + 4.0);
          v51 = *&qword_1004B10D8;
          v52 = v49 + v51 * pow(v7 + 1.0, 4.0);
          v53 = v50 - log(v35 + 5.0);
          v54 = *&qword_1004B10E0;
          v55 = v52 + v54 * pow(v7 + 1.0, 5.0);
          v56 = v53 - log(v35 + 6.0);
          v57 = *&qword_1004B10E8;
          v58 = pow(v7 + 1.0, 6.0);
          v39 = v56 + log(v55 + v57 * v58);
        }

        else
        {
          v36 = (v35 + -0.5) * log(v7 + 1.0) + 0.918938533 - v35;
          v37 = sinh(1.0 / v35);
          v38 = pow(v7 + 1.0, 6.0);
          v39 = v36 + v35 * 0.5 * log(1.0 / (v38 * 810.0) + v35 * v37);
          v33 = 1.0 - v8;
          v34 = v7;
        }

        v59 = v72 - v39 + v6 * log(v8);
        v60 = v59 + v34 * log(v33);
        v61 = exp(v60);
        if (v61 != 0.0)
        {
          v62 = v61;
          v63 = fabs(v61);
          v64 = fmax(v63, 0.0);
          if (v64 < 2.22507386e-308)
          {
            v64 = 2.22507386e-308;
          }

          if (v63 / v64 > 2.22044605e-14)
          {
            v65 = v5 - v6;
            if (v5 > v6)
            {
              v66 = v6 + 1;
              v67 = v62;
              v68 = v8 / v33;
              while (1)
              {
                v69 = v65 / v66;
                v67 = v67 * (v68 * v69);
                v62 = v62 + v67;
                if (v69 >= 1.0)
                {
                  if (v66 >= v5)
                  {
                    break;
                  }
                }

                else
                {
                  v70 = v67 * ((1.0 - pow(v68 * v69, v65)) / (1.0 - v68 * v69) + -1.0);
                  if (v70 < v62 * (vabdd_f64(-log10(v62), *(a1 + 496)) * 0.1) || v66 >= v5)
                  {
                    break;
                  }
                }

                --v65;
                ++v66;
              }
            }

            log10(v62);
          }
        }
      }
    }
  }
}

void sub_100333458(uint64_t a1, int *a2, uint64_t a3)
{
  sub_1002ACE7C(v34, &off_10047A138);
  if (sub_1002743D4(a2) || sub_1002743B4(a2, -1) != 1 && sub_1002743B4(a2, -1) != 3)
  {
    *v30 = 0uLL;
    qmemcpy(sub_1002A80E0(v30, 69), "!_image.empty() && (_image.channels() == 1 || _image.channels() == 3)", 69);
    sub_1002A8980(-215, v30, "drawSegments", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 1150);
  }

  if (sub_1002743B4(a2, -1) == 1)
  {
    sub_1002D2388(a2, a2, 8, 0);
  }

  *v30 = 1124007936;
  memset(&v30[4], 0, 60);
  v31 = &v30[8];
  v32 = v33;
  v33[0] = 0;
  v33[1] = 0;
  if (sub_100271148(a3) != 0x10000)
  {
    sub_1002703C0(a3, 0xFFFFFFFFLL, v26);
    goto LABEL_14;
  }

  v5 = *(a3 + 8);
  v6 = *v5;
  v7 = *(v5 + 16);
  *v26 = *v5;
  *&v26[16] = v7;
  *&v26[32] = *(v5 + 32);
  v8 = *(v5 + 56);
  *&v26[48] = *(v5 + 48);
  *&v26[56] = v8;
  v27 = &v26[8];
  v28 = v29;
  v29[0] = 0;
  v29[1] = 0;
  if (!v8)
  {
    if (SDWORD1(v6) <= 2)
    {
      goto LABEL_10;
    }

LABEL_13:
    *&v26[4] = 0;
    sub_100269B58(v26, v5);
    goto LABEL_14;
  }

  atomic_fetch_add((v8 + 20), 1u);
  if (*(v5 + 4) > 2)
  {
    goto LABEL_13;
  }

LABEL_10:
  v9 = *(v5 + 72);
  v10 = v28;
  *v28 = *v9;
  v10[1] = v9[1];
LABEL_14:
  if (*&v30[56] && atomic_fetch_add((*&v30[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v30);
  }

  if (*&v30[4] >= 1)
  {
    v11 = 0;
    v12 = v31;
    do
    {
      v12[v11++] = 0;
    }

    while (v11 < *&v30[4]);
  }

  *v30 = *v26;
  *&v30[16] = *&v26[16];
  *&v30[32] = *&v26[32];
  *&v30[48] = *&v26[48];
  v13 = v32;
  if (v32 == v33)
  {
    v14 = v28;
    if (*&v26[4] <= 2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    j__free(v32);
    v31 = &v30[8];
    v32 = v33;
    v13 = v33;
    v14 = v28;
    if (*&v26[4] <= 2)
    {
LABEL_22:
      *v13 = *v14;
      v13[1] = v14[1];
      goto LABEL_25;
    }
  }

  v31 = v27;
  v32 = v14;
  v27 = &v26[8];
  v28 = v29;
LABEL_25:
  *v26 = 1124007936;
  memset(&v26[4], 0, 60);
  if (v28 != v29)
  {
    j__free(v28);
  }

  v15 = sub_10026F620(v30, 4, -1, 1);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = v15;
    do
    {
      if ((v30[1] & 0x40) != 0 || *v31 == 1)
      {
        v18 = *&v30[16] + 16 * v16;
      }

      else if (v31[1] == 1)
      {
        v18 = *&v30[16] + *v32 * v16;
      }

      else
      {
        v18 = *&v30[16] + *v32 * (v16 / *&v30[12]) + 16 * (v16 % *&v30[12]);
      }

      v19 = *(v18 + 4);
      v20 = *(v18 + 8);
      v21 = *(v18 + 12);
      LODWORD(v25) = rintf(*v18);
      HIDWORD(v25) = rintf(v19);
      LODWORD(v24) = rintf(v20);
      HIDWORD(v24) = rintf(v21);
      *v26 = 0uLL;
      *&v26[16] = xmmword_1003E98A0;
      sub_1002FCC3C(a2, &v25, &v24, v26, 1, 8, 0);
      ++v16;
    }

    while (v16 != v17);
  }

  if (*&v30[56] && atomic_fetch_add((*&v30[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v30);
  }

  *&v30[56] = 0;
  memset(&v30[16], 0, 32);
  if (*&v30[4] >= 1)
  {
    v22 = 0;
    v23 = v31;
    do
    {
      v23[v22++] = 0;
    }

    while (v22 < *&v30[4]);
  }

  if (v32 != v33)
  {
    j__free(v32);
  }

  if (v34[2])
  {
    sub_1002ACC1C(v34);
  }
}

void sub_1003338C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_1002A8124(va);
  sub_1001D8BF4(v24 - 64);
  _Unwind_Resume(a1);
}

uint64_t sub_100333934(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4, int *a5)
{
  sub_1002ACE7C(v132, &off_10047A158);
  v87 = *a2;
  if (sub_1002769C0(a5) && (sub_100271154(a5, -1, v118), *v118 != *a2))
  {
    sub_100271154(a5, -1, v118);
    v87 = *v118;
    v9 = *v118;
    if (!vmul_lane_s32(v9, v9, 1).u32[0])
    {
LABEL_4:
      *v118 = 0uLL;
      v10 = sub_1002A80E0(v118, 9);
      *(v10 + 8) = 41;
      *v10 = *"sz.area()";
      sub_1002A8980(-215, v118, "compareSegments", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 1178);
    }
  }

  else
  {
    v9 = v87;
    if (!vmul_lane_s32(v9, v9, 1).u32[0])
    {
      goto LABEL_4;
    }
  }

  v111 = v9;
  sub_100266EA8(&v111, 0, v118);
  sub_100335F84(v122, v118);
  sub_100008E50(v118);
  *v107 = v87;
  sub_100266EA8(v107, 0, v118);
  sub_100335F84(&v111, v118);
  sub_100008E50(v118);
  *v118 = 1124007936;
  memset(&v118[4], 0, 60);
  v119 = &v118[8];
  v120 = v121;
  v121[1] = 0;
  v121[0] = 0;
  *v107 = 1124007936;
  memset(&v107[4], 0, 60);
  v108 = &v107[8];
  v109 = v110;
  v110[0] = 0;
  v110[1] = 0;
  if (sub_100271148(a3) != 0x10000)
  {
    sub_1002703C0(a3, 0xFFFFFFFFLL, v102);
    goto LABEL_13;
  }

  v11 = *(a3 + 8);
  v12 = *v11;
  v13 = *(v11 + 16);
  *v102 = *v11;
  *&v102[16] = v13;
  *&v102[32] = *(v11 + 32);
  v14 = *(v11 + 56);
  *&v102[48] = *(v11 + 48);
  *&v102[56] = v14;
  v103 = &v102[8];
  v104 = &v105;
  v105 = 0;
  v106 = 0;
  if (!v14)
  {
    if (SDWORD1(v12) <= 2)
    {
      goto LABEL_9;
    }

LABEL_12:
    *&v102[4] = 0;
    sub_100269B58(v102, v11);
    goto LABEL_13;
  }

  atomic_fetch_add((v14 + 20), 1u);
  if (*(v11 + 4) > 2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = *(v11 + 72);
  v16 = v104;
  *v104 = *v15;
  v16[1] = v15[1];
LABEL_13:
  if (*&v118[56] && atomic_fetch_add((*&v118[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v118);
  }

  if (*&v118[4] >= 1)
  {
    v17 = 0;
    v18 = v119;
    do
    {
      v18[v17++] = 0;
    }

    while (v17 < *&v118[4]);
  }

  *v118 = *v102;
  *&v118[16] = *&v102[16];
  *&v118[32] = *&v102[32];
  *&v118[48] = *&v102[48];
  v19 = v120;
  if (v120 == v121)
  {
    v20 = v104;
    if (*&v102[4] <= 2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    j__free(v120);
    v120 = v121;
    v119 = &v118[8];
    v19 = v121;
    v20 = v104;
    if (*&v102[4] <= 2)
    {
LABEL_21:
      *v19 = *v20;
      v19[1] = v20[1];
      goto LABEL_24;
    }
  }

  v120 = v20;
  v119 = v103;
  v103 = &v102[8];
  v104 = &v105;
LABEL_24:
  *v102 = 1124007936;
  memset(&v102[4], 0, 60);
  if (v104 != &v105)
  {
    j__free(v104);
  }

  if (sub_100271148(a4) != 0x10000)
  {
    sub_1002703C0(a4, 0xFFFFFFFFLL, v102);
    goto LABEL_33;
  }

  v21 = *(a4 + 8);
  v22 = *v21;
  v23 = *(v21 + 16);
  *v102 = *v21;
  *&v102[16] = v23;
  *&v102[32] = *(v21 + 32);
  v24 = *(v21 + 56);
  *&v102[48] = *(v21 + 48);
  *&v102[56] = v24;
  v103 = &v102[8];
  v104 = &v105;
  v105 = 0;
  v106 = 0;
  if (!v24)
  {
    if (SDWORD1(v22) <= 2)
    {
      goto LABEL_29;
    }

LABEL_32:
    *&v102[4] = 0;
    sub_100269B58(v102, v21);
    goto LABEL_33;
  }

  atomic_fetch_add((v24 + 20), 1u);
  if (*(v21 + 4) > 2)
  {
    goto LABEL_32;
  }

LABEL_29:
  v25 = *(v21 + 72);
  v26 = v104;
  *v104 = *v25;
  v26[1] = v25[1];
LABEL_33:
  if (*&v107[56] && atomic_fetch_add((*&v107[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v107);
  }

  if (*&v107[4] >= 1)
  {
    v27 = 0;
    v28 = v108;
    do
    {
      v28[v27++] = 0;
    }

    while (v27 < *&v107[4]);
  }

  *v107 = *v102;
  *&v107[16] = *&v102[16];
  *&v107[32] = *&v102[32];
  *&v107[48] = *&v102[48];
  v29 = v109;
  if (v109 == v110)
  {
    v30 = v104;
    if (*&v102[4] <= 2)
    {
      goto LABEL_41;
    }
  }

  else
  {
    j__free(v109);
    v108 = &v107[8];
    v109 = v110;
    v29 = v110;
    v30 = v104;
    if (*&v102[4] <= 2)
    {
LABEL_41:
      *v29 = *v30;
      v29[1] = v30[1];
      goto LABEL_44;
    }
  }

  v108 = v103;
  v109 = v30;
  v103 = &v102[8];
  v104 = &v105;
LABEL_44:
  *v102 = 1124007936;
  memset(&v102[4], 0, 60);
  if (v104 != &v105)
  {
    j__free(v104);
  }

  v31 = sub_10026F620(v118, 4, -1, 1);
  v32 = sub_10026F620(v107, 4, -1, 1);
  if (v31 >= 1)
  {
    v33 = 0;
    v34 = 4;
    v88 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      if ((v118[1] & 0x40) != 0 || *v119 == 1)
      {
        v36 = *(*&v118[16] + v34);
        v35 = *(*&v118[16] + v34 + 4);
        v37 = (*&v118[16] + v34 - 4);
        v38 = *v37;
      }

      else
      {
        if (v119[1] == 1)
        {
          v40 = *&v118[16];
          v41 = (*&v118[16] + *v120 * v33);
          v42 = (*&v118[16] + *v120 * v33);
          if (v119[1] == 1)
          {
            v38 = *v41;
            v36 = v42[1];
            v35 = *(*&v118[16] + *v120 * v33 + 8);
LABEL_60:
            v37 = (v40 + *v120 * v33);
            goto LABEL_51;
          }
        }

        else
        {
          v40 = *&v118[16];
          v41 = (*&v118[16] + v34 + *v120 * (v33 / *&v118[12]) - 16 * v33 / *&v118[12] * *&v118[12] - 4);
          v42 = v41;
        }

        v38 = *v41;
        v36 = v42[1];
        v35 = *(v40 + v34 + *v120 * (v33 / *&v118[12]) - 16 * v33 / *&v118[12] * *&v118[12] + 4);
        if (v119[1] == 1)
        {
          goto LABEL_60;
        }

        v37 = (v40 + *v120 * (v33 / *&v118[12]) + 16 * (v33 % *&v118[12]));
      }

LABEL_51:
      v39 = v37[3];
      LODWORD(v90) = -2097086464;
      *(&v90 + 1) = v122;
      *&v91 = 0;
      LODWORD(v99) = rintf(v38);
      HIDWORD(v99) = rintf(v36);
      LODWORD(v98[0]) = rintf(v35);
      HIDWORD(v98[0]) = rintf(v39);
      *v102 = v88;
      *&v102[16] = v88;
      sub_1002FCC3C(&v90, &v99, v98, v102, 1, 8, 0);
      ++v33;
      v34 += 16;
    }

    while (v31 != v33);
  }

  if (v32 >= 1)
  {
    v43 = 0;
    v44 = 4;
    v89 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      if ((v107[1] & 0x40) != 0 || *v108 == 1)
      {
        v46 = *(*&v107[16] + v44);
        v45 = *(*&v107[16] + v44 + 4);
        v47 = (*&v107[16] + v44 - 4);
        v48 = *v47;
      }

      else
      {
        if (v108[1] == 1)
        {
          v50 = *&v107[16];
          v51 = (*&v107[16] + *v109 * v43);
          v52 = (*&v107[16] + *v109 * v43);
          if (v108[1] == 1)
          {
            v48 = *v51;
            v46 = v52[1];
            v45 = *(*&v107[16] + *v109 * v43 + 8);
LABEL_75:
            v47 = (v50 + *v109 * v43);
            goto LABEL_66;
          }
        }

        else
        {
          v50 = *&v107[16];
          v51 = (*&v107[16] + v44 + *v109 * (v43 / *&v107[12]) - 16 * v43 / *&v107[12] * *&v107[12] - 4);
          v52 = v51;
        }

        v48 = *v51;
        v46 = v52[1];
        v45 = *(v50 + v44 + *v109 * (v43 / *&v107[12]) - 16 * v43 / *&v107[12] * *&v107[12] + 4);
        if (v108[1] == 1)
        {
          goto LABEL_75;
        }

        v47 = (v50 + *v109 * (v43 / *&v107[12]) + 16 * (v43 % *&v107[12]));
      }

LABEL_66:
      v49 = v47[3];
      LODWORD(v90) = -2097086464;
      *(&v90 + 1) = &v111;
      *&v91 = 0;
      LODWORD(v99) = rintf(v48);
      HIDWORD(v99) = rintf(v46);
      LODWORD(v98[0]) = rintf(v45);
      HIDWORD(v98[0]) = rintf(v49);
      *v102 = v89;
      *&v102[16] = v89;
      sub_1002FCC3C(&v90, &v99, v98, v102, 1, 8, 0);
      ++v43;
      v44 += 16;
    }

    while (v32 != v43);
  }

  *v102 = 1124007936;
  memset(&v102[4], 0, 60);
  v103 = &v102[8];
  v104 = &v105;
  v105 = 0;
  v106 = 0;
  *&v91 = 0;
  LODWORD(v90) = -2130640896;
  *(&v90 + 1) = v122;
  v101 = 0;
  LODWORD(v99) = -2130640896;
  v100 = &v111;
  LODWORD(v98[0]) = 33619968;
  v98[1] = v102;
  v98[2] = 0;
  v53 = sub_100276DA4();
  sub_1001DAB24(&v90, &v99, v98, v53);
  LODWORD(v90) = 16842752;
  *(&v90 + 1) = v102;
  *&v91 = 0;
  v54 = sub_1002A0BBC(&v90);
  if (sub_1002769C0(a5))
  {
    if (sub_1002743B4(a5, -1) != 3)
    {
      v90 = 0uLL;
      qmemcpy(sub_1002A80E0(&v90, 22), "_image.channels() == 3", 22);
      sub_1002A8980(-215, &v90, "compareSegments", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 1211);
    }

    v55 = sub_1002750F0(a5, -1);
    v56 = *v55;
    v57 = *(v55 + 16);
    v90 = *v55;
    v91 = v57;
    v92 = *(v55 + 32);
    v58 = *(v55 + 56);
    v93 = *(v55 + 48);
    v94 = v58;
    v95 = &v90 + 8;
    v96 = v97;
    v97[0] = 0;
    v97[1] = 0;
    if (v58)
    {
      atomic_fetch_add((v58 + 20), 1u);
      if (*(v55 + 4) <= 2)
      {
LABEL_81:
        v59 = *(v55 + 72);
        v60 = v96;
        *v96 = *v59;
        v60[1] = v59[1];
        goto LABEL_84;
      }
    }

    else if (SDWORD1(v56) <= 2)
    {
      goto LABEL_81;
    }

    DWORD1(v90) = 0;
    sub_100269B58(&v90, v55);
LABEL_84:
    if ((BYTE1(v90) & 0x40) == 0 || (v122[1] & 0x40) == 0 || (v111.i8[1] & 0x40) == 0)
    {
      v99 = 0;
      v100 = 0;
      qmemcpy(sub_1002A80E0(&v99, 60), "img.isContinuous() && I1.isContinuous() && I2.isContinuous()", 60);
      sub_1002A8980(-215, &v99, "compareSegments", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/lsd.cpp", 1213);
    }

    for (i = 0; ; ++i)
    {
      if (v123 >= 3)
      {
        v63 = (v129 + 4);
        v64 = v123 & 0x7FFFFFFE;
        v65 = 1;
        v66 = 1;
        do
        {
          v65 *= *(v63 - 1);
          v66 *= *v63;
          v63 += 2;
          v64 -= 2;
        }

        while (v64);
        v62 = v66 * v65;
        v67 = v123 - (v123 & 0x7FFFFFFE);
        if (v67)
        {
          v68 = (v129 + 8 * ((v123 >> 1) & 0x3FFFFFFF));
          do
          {
            v69 = *v68++;
            v62 *= v69;
            --v67;
          }

          while (v67);
        }
      }

      else
      {
        v62 = v125 * v124;
      }

      if (v62 <= i)
      {
        break;
      }

      if (*(v126 + i) | *(v112 + i))
      {
        v70 = *(v112 + i);
        v71 = 3 * i;
        if (*(v126 + i))
        {
          v72 = -1;
        }

        else
        {
          v72 = 0;
        }

        *(v91 + v71) = v72;
        *(v91 + v71 + 1) = 0;
        if (v70)
        {
          v73 = -1;
        }

        else
        {
          v73 = 0;
        }

        *(v91 + v71 + 2) = v73;
      }
    }

    if (v94 && atomic_fetch_add((v94 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v90);
    }

    v94 = 0;
    v91 = 0u;
    v92 = 0u;
    if (SDWORD1(v90) >= 1)
    {
      v74 = 0;
      v75 = v95;
      do
      {
        *&v75[4 * v74++] = 0;
      }

      while (v74 < SDWORD1(v90));
    }

    if (v96 != v97)
    {
      j__free(v96);
    }
  }

  if (*&v102[56] && atomic_fetch_add((*&v102[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v102);
  }

  *&v102[56] = 0;
  memset(&v102[16], 0, 32);
  if (*&v102[4] >= 1)
  {
    v76 = 0;
    v77 = v103;
    do
    {
      *&v77[4 * v76++] = 0;
    }

    while (v76 < *&v102[4]);
  }

  if (v104 != &v105)
  {
    j__free(v104);
  }

  if (*&v107[56] && atomic_fetch_add((*&v107[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v107);
  }

  *&v107[56] = 0;
  memset(&v107[16], 0, 32);
  if (*&v107[4] >= 1)
  {
    v78 = 0;
    v79 = v108;
    do
    {
      v79[v78++] = 0;
    }

    while (v78 < *&v107[4]);
  }

  if (v109 != v110)
  {
    j__free(v109);
  }

  if (*&v118[56] && atomic_fetch_add((*&v118[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v118);
  }

  *&v118[56] = 0;
  memset(&v118[16], 0, 32);
  if (*&v118[4] >= 1)
  {
    v80 = 0;
    v81 = v119;
    do
    {
      v81[v80++] = 0;
    }

    while (v80 < *&v118[4]);
  }

  if (v120 != v121)
  {
    j__free(v120);
  }

  if (v114 && atomic_fetch_add((v114 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v111);
  }

  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  if (v111.i32[1] >= 1)
  {
    v82 = 0;
    v83 = v115;
    do
    {
      *(v83 + 4 * v82++) = 0;
    }

    while (v82 < v111.i32[1]);
  }

  if (v116 != &v117)
  {
    j__free(v116);
  }

  if (v128 && atomic_fetch_add((v128 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v122);
  }

  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  if (v123 >= 1)
  {
    v84 = 0;
    v85 = v129;
    do
    {
      *(v85 + 4 * v84++) = 0;
    }

    while (v84 < v123);
  }

  if (v130 != &v131)
  {
    j__free(v130);
  }

  if (v132[2])
  {
    sub_1002ACC1C(v132);
  }

  return v54;
}

void sub_100334848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1002A8124(&a11);
  sub_100006D14(&a29);
  sub_100006D14(&a41);
  sub_100006D14(&a65);
  sub_10032F3A8(&a53);
  sub_10032F3A8(v65 - 208);
  sub_1001D8BF4(v65 - 112);
  _Unwind_Resume(a1);
}

void sub_1003349CC(uint64_t a1)
{
  sub_100334A04(a1);

  operator delete();
}

void *sub_100334A04(uint64_t a1)
{
  *a1 = off_10047A0C0;
  v2 = *(a1 + 576);
  if (v2)
  {
    *(a1 + 584) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 448);
  if (v3 && atomic_fetch_add((v3 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 392);
  }

  *(a1 + 448) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  if (*(a1 + 396) >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 456);
    do
    {
      *(v5 + 4 * v4++) = 0;
    }

    while (v4 < *(a1 + 396));
  }

  v6 = *(a1 + 464);
  if (v6 != (a1 + 472))
  {
    j__free(v6);
  }

  v7 = *(a1 + 352);
  if (v7 && atomic_fetch_add((v7 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 296);
  }

  *(a1 + 352) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  if (*(a1 + 300) >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 360);
    do
    {
      *(v9 + 4 * v8++) = 0;
    }

    while (v8 < *(a1 + 300));
  }

  v10 = *(a1 + 368);
  if (v10 != (a1 + 376))
  {
    j__free(v10);
  }

  v11 = *(a1 + 256);
  if (v11 && atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 200);
  }

  *(a1 + 256) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  if (*(a1 + 204) >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 264);
    do
    {
      *(v13 + 4 * v12++) = 0;
    }

    while (v12 < *(a1 + 204));
  }

  v14 = *(a1 + 272);
  if (v14 != (a1 + 280))
  {
    j__free(v14);
  }

  v15 = *(a1 + 160);
  if (v15 && atomic_fetch_add((v15 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 104);
  }

  *(a1 + 160) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  if (*(a1 + 108) >= 1)
  {
    v16 = 0;
    v17 = *(a1 + 168);
    do
    {
      *(v17 + 4 * v16++) = 0;
    }

    while (v16 < *(a1 + 108));
  }

  v18 = *(a1 + 176);
  if (v18 != (a1 + 184))
  {
    j__free(v18);
  }

  v19 = *(a1 + 64);
  if (v19 && atomic_fetch_add((v19 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v20 = 0;
    v21 = *(a1 + 72);
    do
    {
      *(v21 + 4 * v20++) = 0;
    }

    while (v20 < *(a1 + 12));
  }

  v22 = *(a1 + 80);
  if (v22 != (a1 + 88))
  {
    j__free(v22);
  }

  return sub_1001D8C28(a1);
}

uint64_t sub_100334CC0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_100334D44(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (v4 - *a1) >> 4;
    v12 = (16 * v6);
    v13 = 16 * a2;
    bzero(v12, 16 * a2);
    if (v5 != v4)
    {
      v14 = &v12[-16 * v11];
      do
      {
        *v14 = *v5;
        *(v14 + 1) = v5[1];
        v5 += 2;
        v14 += 16;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = &v12[-16 * v11];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_100334EB8(char *result, char *a2, uint64_t (**a3)(uint64_t *, int *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = result;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    result = v9;
    v11 = v10;
    v12 = &a2[-v9];
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          sub_100335424(result, (result + 12), (a2 - 12), a3);
          return;
        case 4uLL:
          sub_100335424(result, (result + 12), result + 3, a3);
          if ((*a3)((a2 - 12), result + 6))
          {
            v28 = result[32];
            v29 = *(a2 - 12);
            result[32] = *(a2 - 4);
            v30 = *(result + 3);
            *(result + 3) = v29;
            *(a2 - 12) = v30;
            *(a2 - 4) = v28;
            if ((*a3)(result + 3, result + 3))
            {
              v31 = result[20];
              result[20] = result[32];
              v32 = *(result + 12);
              *(result + 12) = *(result + 3);
              *(result + 3) = v32;
              result[32] = v31;
              if ((*a3)((result + 12), result))
              {
                v33 = result[8];
                result[8] = result[20];
                v34 = *result;
                *result = *(result + 12);
                *(result + 12) = v34;
                result[20] = v33;
              }
            }
          }

          return;
        case 5uLL:

          sub_100335558(result, (result + 12), (result + 24), (result + 36), (a2 - 12), a3);
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if ((*a3)((a2 - 12), result))
        {
          v25 = result[8];
          v26 = *(a2 - 12);
          result[8] = *(a2 - 4);
          v27 = *result;
          *result = v26;
          *(a2 - 12) = v27;
          *(a2 - 4) = v25;
        }

        return;
      }
    }

    if (v12 <= 287)
    {
      break;
    }

    if (v10 == 1)
    {
      if (result != a2)
      {
        v42 = (v13 - 2) >> 1;
        v43 = v42 + 1;
        v44 = &result[12 * v42];
        do
        {
          sub_100335C40(result, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 2), v44);
          v44 -= 12;
          --v43;
        }

        while (v43);
        v45 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          sub_100335DB4(result, a2, a3, v45);
          a2 -= 12;
        }

        while (v45-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &result[12 * (v13 >> 1)];
    if (v12 < 0x601)
    {
      sub_100335424(v15, result, (a2 - 12), a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_100335424(result, v15, (a2 - 12), a3);
      v16 = 12 * v14;
      v17 = &result[12 * v14 - 12];
      sub_100335424(result + 3, v17, a2 - 3, a3);
      sub_100335424(result + 6, &result[v16 + 12], (a2 - 36), a3);
      sub_100335424(v17, v15, &result[v16 + 12], a3);
      v18 = result[8];
      result[8] = *(v15 + 8);
      v19 = *result;
      *result = *v15;
      *v15 = v19;
      *(v15 + 8) = v18;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (((*a3)((result - 12), result) & 1) == 0)
    {
      v9 = sub_100335710(result, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    sub_100335860(result, a2, a3);
    v21 = v20;
    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }

    v23 = sub_1003359B0(result, v20, a3);
    v9 = v21 + 12;
    if (sub_1003359B0((v21 + 12), a2, a3))
    {
      a4 = -v11;
      a2 = v21;
      if (v23)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v23)
    {
LABEL_20:
      sub_100334EB8(result, v21, a3, -v11, a5 & 1);
      v9 = v21 + 12;
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (a5)
  {
    if (result != a2)
    {
      v35 = result + 12;
      if (result + 12 != a2)
      {
        v36 = 0;
        v37 = result;
        do
        {
          v39 = v35;
          if ((*a3)(v35, v37))
          {
            v52 = *v39;
            v53 = v37[20];
            v40 = v36;
            do
            {
              v41 = &result[v40];
              *(v41 + 12) = *&result[v40];
              v41[20] = result[v40 + 8];
              if (!v40)
              {
                v38 = result;
                goto LABEL_42;
              }

              v40 -= 12;
            }

            while (((*a3)(&v52, &result[v40]) & 1) != 0);
            v38 = &result[v40 + 12];
LABEL_42:
            *v38 = v52;
            *(v38 + 8) = v53;
          }

          v35 = v39 + 12;
          v36 += 12;
          v37 = v39;
        }

        while (v39 + 12 != a2);
      }
    }
  }

  else if (result != a2)
  {
    v47 = result + 12;
    if (result + 12 != a2)
    {
      v48 = result - 12;
      do
      {
        v49 = v47;
        if ((*a3)(v47, result))
        {
          v52 = *v49;
          v53 = result[20];
          v50 = v48;
          do
          {
            *(v50 + 3) = *(v50 + 12);
            v50[32] = v50[20];
            v51 = (*a3)(&v52, v50);
            v50 -= 12;
          }

          while ((v51 & 1) != 0);
          *(v50 + 3) = v52;
          v50[32] = v53;
        }

        v47 = (v49 + 12);
        v48 += 12;
        result = v49;
      }

      while ((v49 + 12) != a2);
    }
  }
}

uint64_t sub_100335424(int *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, int *))
{
  v8 = (*a4)(a2, a1);
  result = (*a4)(a3, a2);
  if (v8)
  {
    v11 = *a1;
    v10 = a1[1];
    v12 = *(a1 + 8);
    if (result)
    {
      *a1 = *a3;
      *(a1 + 8) = *(a3 + 8);
      *a3 = v11;
      *(a3 + 1) = v10;
LABEL_9:
      *(a3 + 8) = v12;
      return 1;
    }

    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a2 = v11;
    *(a2 + 1) = v10;
    *(a2 + 8) = v12;
    if ((*a4)(a3, a2))
    {
      v12 = *(a2 + 8);
      v19 = *a3;
      *(a2 + 8) = *(a3 + 8);
      v20 = *a2;
      *a2 = v19;
      *a3 = v20;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v13 = *(a2 + 8);
    v14 = *a3;
    *(a2 + 8) = *(a3 + 8);
    v15 = *a2;
    *a2 = v14;
    *a3 = v15;
    *(a3 + 8) = v13;
    if ((*a4)(a2, a1))
    {
      v16 = *(a1 + 8);
      v17 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v18 = *a1;
      *a1 = v17;
      *a2 = v18;
      *(a2 + 8) = v16;
    }
  }

  return 1;
}

double sub_100335558(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t *, int *))
{
  sub_100335424(a1, a2, a3, a6);
  if ((*a6)(a4, a3))
  {
    v12 = *(a3 + 8);
    v13 = *a4;
    *(a3 + 8) = *(a4 + 8);
    v14 = *a3;
    *a3 = v13;
    *a4 = v14;
    *(a4 + 8) = v12;
    if ((*a6)(a3, a2))
    {
      v15 = *(a2 + 8);
      v16 = *a3;
      *(a2 + 8) = *(a3 + 8);
      v17 = *a2;
      *a2 = v16;
      *a3 = v17;
      *(a3 + 8) = v15;
      if ((*a6)(a2, a1))
      {
        v18 = *(a1 + 8);
        v19 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v20 = *a1;
        *a1 = v19;
        *a2 = v20;
        *(a2 + 8) = v18;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v22 = *(a4 + 8);
    v23 = *a5;
    *(a4 + 8) = *(a5 + 8);
    v24 = *a4;
    *a4 = v23;
    *a5 = v24;
    *(a5 + 8) = v22;
    if ((*a6)(a4, a3))
    {
      v25 = *(a3 + 8);
      v26 = *a4;
      *(a3 + 8) = *(a4 + 8);
      v27 = *a3;
      *a3 = v26;
      *a4 = v27;
      *(a4 + 8) = v25;
      if ((*a6)(a3, a2))
      {
        v28 = *(a2 + 8);
        v29 = *a3;
        *(a2 + 8) = *(a3 + 8);
        v30 = *a2;
        *a2 = v29;
        *a3 = v30;
        *(a3 + 8) = v28;
        if ((*a6)(a2, a1))
        {
          v31 = *(a1 + 8);
          result = *a2;
          *(a1 + 8) = *(a2 + 8);
          v32 = *a1;
          *a1 = result;
          *a2 = v32;
          *(a2 + 8) = v31;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_100335710(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((*a3)(&v13, (a2 - 12)))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 12);
    }

    while (((*a3)(&v13, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 12);
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v13, v7);
      v7 = (v6 + 12);
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 = (v4 - 12);
    }

    while (((*a3)(&v13, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *(v6 + 8);
    v10 = *v4;
    *(v6 + 8) = *(v4 + 8);
    v11 = *v6;
    *v6 = v10;
    *v4 = v11;
    *(v4 + 8) = v9;
    do
    {
      v6 = (v6 + 12);
    }

    while (!(*a3)(&v13, v6));
    do
    {
      v4 = (v4 - 12);
    }

    while (((*a3)(&v13, v4) & 1) != 0);
  }

  if ((v6 - 12) != a1)
  {
    *a1 = *(v6 - 12);
    *(a1 + 8) = *(v6 - 4);
  }

  *(v6 - 12) = v13;
  *(v6 - 4) = v14;
  return v6;
}

double sub_100335860(uint64_t a1, uint64_t *a2, uint64_t (**a3)(uint64_t, double *))
{
  v6 = 0;
  v14 = *a1;
  v15 = *(a1 + 8);
  do
  {
    v6 += 12;
  }

  while (((*a3)(v6 + a1, &v14) & 1) != 0);
  v7 = a1 + v6;
  if (v6 == 12)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 = (a2 - 12);
    }

    while (((*a3)(a2, &v14) & 1) == 0);
  }

  else
  {
    do
    {
      a2 = (a2 - 12);
    }

    while (!(*a3)(a2, &v14));
  }

  v8 = a1 + v6;
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *(v8 + 8);
      v11 = *v9;
      *(v8 + 8) = *(v9 + 8);
      v12 = *v8;
      *v8 = v11;
      *v9 = v12;
      *(v9 + 8) = v10;
      do
      {
        v8 += 12;
      }

      while (((*a3)(v8, &v14) & 1) != 0);
      do
      {
        v9 = (v9 - 12);
      }

      while (!(*a3)(v9, &v14));
    }

    while (v8 < v9);
  }

  if (v8 - 12 != a1)
  {
    *a1 = *(v8 - 12);
    *(a1 + 8) = *(v8 - 4);
  }

  result = v14;
  *(v8 - 12) = v14;
  *(v8 - 4) = v15;
  return result;
}

BOOL sub_1003359B0(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, int *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_100335424(a1, (a1 + 12), (a2 - 12), a3);
        break;
      case 4:
        sub_100335424(a1, (a1 + 12), a1 + 3, a3);
        if ((*a3)((a2 - 12), a1 + 6))
        {
          v17 = *(a1 + 32);
          v18 = *(a2 - 12);
          *(a1 + 32) = *(a2 - 4);
          v19 = a1[3];
          a1[3] = v18;
          *(a2 - 12) = v19;
          *(a2 - 4) = v17;
          if ((*a3)(a1 + 3, a1 + 3))
          {
            v20 = *(a1 + 20);
            *(a1 + 20) = *(a1 + 32);
            v21 = *(a1 + 12);
            *(a1 + 12) = a1[3];
            a1[3] = v21;
            *(a1 + 32) = v20;
            if ((*a3)((a1 + 12), a1))
            {
              v22 = *(a1 + 8);
              *(a1 + 8) = *(a1 + 20);
              v23 = *a1;
              *a1 = *(a1 + 12);
              *(a1 + 12) = v23;
              *(a1 + 20) = v22;
            }
          }
        }

        return 1;
      case 5:
        sub_100335558(a1, a1 + 12, (a1 + 3), a1 + 36, a2 - 12, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)((a2 - 12), a1))
    {
      v7 = *(a1 + 8);
      v8 = *(a2 - 12);
      *(a1 + 8) = *(a2 - 4);
      v9 = *a1;
      *a1 = v8;
      *(a2 - 12) = v9;
      *(a2 - 4) = v7;
    }

    return 1;
  }

LABEL_11:
  sub_100335424(a1, (a1 + 12), a1 + 3, a3);
  v10 = a1 + 36;
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  v13 = (a1 + 3);
  while (1)
  {
    if ((*a3)(v10, v13))
    {
      v25 = *v10;
      v26 = *(v10 + 8);
      v15 = v11;
      do
      {
        v16 = a1 + v15;
        *(v16 + 36) = *(a1 + v15 + 24);
        *(v16 + 44) = *(a1 + v15 + 32);
        if (v15 == -24)
        {
          v14 = a1;
          goto LABEL_14;
        }

        v15 -= 12;
      }

      while (((*a3)(&v25, (v16 + 12)) & 1) != 0);
      v14 = a1 + v15 + 36;
LABEL_14:
      *v14 = v25;
      *(v14 + 8) = v26;
      if (++v12 == 8)
      {
        return v10 + 12 == a2;
      }
    }

    v13 = v10;
    v11 += 12;
    v10 += 12;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

double sub_100335C40(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 2)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 2)) | 1;
      v13 = a1 + 12 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 2) + 2;
      if (v14 < a3 && (*a2)(a1 + 12 * v12, v13 + 12))
      {
        v13 += 12;
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v19 = *v7;
        v20 = *(v7 + 8);
        do
        {
          v16 = v13;
          *v7 = *v13;
          *(v7 + 8) = *(v13 + 8);
          if (v9 < v12)
          {
            break;
          }

          v17 = (2 * v12) | 1;
          v13 = a1 + 12 * v17;
          v18 = 2 * v12 + 2;
          if (v18 < a3)
          {
            if ((*a2)(a1 + 12 * v17, v13 + 12))
            {
              v13 += 12;
              v17 = v18;
            }
          }

          v7 = v16;
          v12 = v17;
        }

        while (!(*a2)(v13, &v19));
        result = v19;
        *v16 = v19;
        *(v16 + 8) = v20;
      }
    }
  }

  return result;
}

uint64_t sub_100335DB4(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v27 = v4;
    v28 = v5;
    v9 = 0;
    v23 = *(result + 4);
    v24 = *result;
    v10 = (a4 - 2) >> 1;
    v11 = result;
    v21 = result;
    v22 = *(result + 8);
    do
    {
      v12 = v11 + 12 * v9;
      v13 = v12 + 12;
      v14 = (2 * v9) | 1;
      v15 = 2 * v9 + 2;
      if (v15 < a4)
      {
        v16 = v12 + 24;
        result = (*a3)(v12 + 12, v12 + 24);
        if (result)
        {
          v13 = v16;
          v14 = v15;
        }
      }

      *v11 = *v13;
      *(v11 + 8) = *(v13 + 8);
      v11 = v13;
      v9 = v14;
    }

    while (v14 <= v10);
    if (v13 == a2 - 12)
    {
      *v13 = v24;
      *(v13 + 4) = v23;
      *(v13 + 8) = v22;
    }

    else
    {
      *v13 = *(a2 - 12);
      *(v13 + 8) = *(a2 - 4);
      *(a2 - 12) = v24;
      *(a2 - 8) = v23;
      *(a2 - 4) = v22;
      v17 = v13 - v21 + 12;
      if (v17 >= 13)
      {
        v18 = (0xAAAAAAAAAAAAAAABLL * (v17 >> 2) - 2) >> 1;
        v19 = v21 + 12 * v18;
        result = (*a3)(v19, v13);
        if (result)
        {
          v25 = *v13;
          v26 = *(v13 + 8);
          do
          {
            v20 = v19;
            *v13 = *v19;
            *(v13 + 8) = *(v19 + 8);
            if (!v18)
            {
              break;
            }

            v18 = (v18 - 1) >> 1;
            v19 = v21 + 12 * v18;
            result = (*a3)(v19, &v25);
            v13 = v20;
          }

          while ((result & 1) != 0);
          *v20 = v25;
          *(v20 + 8) = v26;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100335F84(uint64_t a1, void *a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *a1 = 1124007936;
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  v3 = (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  sub_1003360D0(a1, v7, v3);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v4 = 0;
    v5 = v8;
    do
    {
      *(v5 + v4++) = 0;
    }

    while (v4 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }

  return a1;
}

void sub_1003360B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1002410F0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003360D0(uint64_t a1, unsigned int *a2, double a3)
{
  if ((*a2 & 0xFFF) != 0)
  {
    if ((*a2 & 7) != 0)
    {
      *v15 = -2113863680;
      *&v15[8] = a1;
      *&v15[16] = 0;
      sub_10020EF14(a2, v15, 0, 1.0, 0.0);
      return a1;
    }

    sub_10026E8FC(a2, 1, a2[1], 0, v15);
    if (v15 == a1)
    {
      if (*&v15[56] && atomic_fetch_add((*&v15[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v15);
      }

      goto LABEL_22;
    }

    v5 = *(a1 + 56);
    if (v5 && atomic_fetch_add((v5 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1);
    }

    *(a1 + 56) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    if (*(a1 + 4) >= 1)
    {
      v6 = 0;
      v7 = *(a1 + 64);
      do
      {
        *(v7 + 4 * v6++) = 0;
      }

      while (v6 < *(a1 + 4));
    }

    v8 = *&v15[4];
    v9 = *&v15[16];
    *a1 = *v15;
    *(a1 + 16) = v9;
    v10 = *&v15[48];
    *(a1 + 32) = *&v15[32];
    *(a1 + 48) = v10;
    v11 = *(a1 + 72);
    if (v11 == (a1 + 80))
    {
      v12 = v17;
      if (v8 <= 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      j__free(v11);
      *(a1 + 64) = a1 + 8;
      *(a1 + 72) = a1 + 80;
      v11 = (a1 + 80);
      v12 = v17;
      if (*&v15[4] <= 2)
      {
LABEL_15:
        *v11 = *v12;
        v11[1] = v12[1];
LABEL_21:
        *v15 = 1124007936;
        memset(&v15[4], 0, 60);
LABEL_22:
        *&v15[56] = 0;
        memset(&v15[16], 0, 32);
        if (*&v15[4] >= 1)
        {
          v13 = 0;
          v14 = v16;
          do
          {
            *&v14[4 * v13++] = 0;
          }

          while (v13 < *&v15[4]);
        }

        if (v17 != v18)
        {
          j__free(v17);
        }

        return a1;
      }
    }

    *(a1 + 64) = v16;
    *(a1 + 72) = v12;
    v16 = &v15[8];
    v17 = v18;
    goto LABEL_21;
  }

  sub_10025DAEC(a1, a2, a3);
  return a1;
}

void sub_100336300(unint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, unint64_t a7, uint64_t a8, double a9, double a10, unsigned int a11, int a12)
{
  sub_1002ACE7C(v264, &off_10047A1E8);
  if ((a11 * a8) <= 0 && (a9 <= 0.0 || a10 <= 0.0))
  {
    v269 = 0;
    v268 = 0;
    qmemcpy(sub_1002A80E0(&v268, 68), "(dst_width * dst_height > 0) || (inv_scale_x > 0 && inv_scale_y > 0)", 68);
    sub_1002A8980(-215, &v268, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3675);
  }

  if (a9 < 2.22044605e-16 || a10 < 2.22044605e-16)
  {
    a9 = a8 / a4;
    v20 = a5;
    a10 = a11 / a5;
  }

  else
  {
    v20 = a5;
  }

  v21 = rint(a9 * a4);
  v22 = rint(a10 * v20);
  if (v21 * v22 <= 0)
  {
    v269 = 0;
    v268 = 0;
    *sub_1002A80E0(&v268, 16) = *"dsize.area() > 0";
    sub_1002A8980(-215, &v268, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3687);
  }

  v18.n128_f64[0] = 1.0 / a9;
  v23 = rint(1.0 / a9);
  v24 = 1.0 / a10;
  v25 = rint(1.0 / a10);
  v248 = v18;
  v26 = vabdd_f64(1.0 / a9, v23) < 2.22044605e-16;
  v27 = vabdd_f64(1.0 / a10, v25) < 2.22044605e-16 && v26;
  v268 = __PAIR64__(a5, a4);
  sub_10024255C(v259, &v268, a1, a2, a3);
  v242 = a5;
  v268 = __PAIR64__(v22, v21);
  sub_10024255C(v254, &v268, a1, a6, a7);
  v29 = a12;
  if (!a12)
  {
    v43 = *(v261 + 4);
    v44 = *v256;
    v45 = v256[1];
    v268 = v270;
    v269 = v45;
    if (v45 >= 0x109)
    {
      operator new[]();
    }

    if (SDWORD1(v259[0]) < 1)
    {
      LODWORD(v46) = 0;
      LODWORD(v47) = 0;
      if (v45 < 1)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v46 = *(v262 + DWORD1(v259[0]) - 1);
      v47 = v46 >> 2;
      if (v45 < 1)
      {
        goto LABEL_116;
      }
    }

    v83 = v43 - 1;
    if (v45 >= 4)
    {
      v84 = v45 & 0x1FC;
      v86 = vdupq_n_s32(v83);
      v87 = xmmword_1003E3950;
      v88 = vdupq_n_s32(v46);
      v89.i64[0] = 0x400000004;
      v89.i64[1] = 0x400000004;
      v90 = v45 & 0x7FFFFFFC;
      v91 = v270;
      v85 = v248.n128_f64[0];
      do
      {
        v92.i64[0] = v87.u32[2];
        v92.i64[1] = v87.u32[3];
        v93 = vcvtq_f64_u64(v92);
        v92.i64[0] = v87.u32[0];
        v92.i64[1] = v87.u32[1];
        v94 = vmulq_n_f64(vcvtq_f64_u64(v92), v248.n128_f64[0]);
        v95 = vmulq_n_f64(v93, v248.n128_f64[0]);
        v96 = vcvtq_s64_f64(v95);
        v97 = vcvtq_s64_f64(v94);
        v98 = vuzp1q_s32(v97, v96);
        *v96.i8 = vmovn_s64(v96);
        *v97.i8 = vmovn_s64(v97);
        v92.i64[0] = v97.i32[0];
        v92.i64[1] = v97.i32[1];
        v99 = vcvtq_f64_s64(v92);
        v92.i64[0] = v96.i32[0];
        v92.i64[1] = v96.i32[1];
        *v91++ = vmulq_s32(vminq_s32(v86, vaddq_s32(vuzp1q_s32(vcgtq_f64(v99, v94), vcgtq_f64(vcvtq_f64_s64(v92), v95)), v98)), v88);
        v87 = vaddq_s32(v87, v89);
        v90 -= 4;
      }

      while (v90);
      if (v84 == v45)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v84 = 0;
      v85 = v248.n128_f64[0];
    }

    do
    {
      v100 = (v85 * v84) - (v85 * v84 < (v85 * v84));
      if (v83 < v100)
      {
        v100 = v43 - 1;
      }

      *&v270[4 * v84++] = v100 * v46;
    }

    while (v45 != v84);
LABEL_116:
    v265[0] = 0;
    v265[1] = v44;
    sub_10033B444(&__src, v259, v254, v270, v47, 1.0 / a10);
    if (SDWORD1(v254[0]) >= 3)
    {
      v102 = v256 + 1;
      v103 = 1;
      v104 = DWORD1(v254[0]) & 0x7FFFFFFE;
      v105 = 1;
      do
      {
        v103 *= *(v102 - 1);
        v105 *= *v102;
        v102 += 2;
        v104 -= 2;
      }

      while (v104);
      v101 = v105 * v103;
      v106 = DWORD1(v254[0]) - (DWORD1(v254[0]) & 0x7FFFFFFE);
      if (v106)
      {
        v107 = &v256[2 * ((DWORD1(v254[0]) >> 1) & 0x3FFFFFFF)];
        do
        {
          v108 = *v107++;
          v101 *= v108;
          --v106;
        }

        while (v106);
      }
    }

    else
    {
      v101 = SHIDWORD(v254[0]) * SDWORD2(v254[0]);
    }

    sub_1002829C8(v265, &__src, vcvtd_n_f64_u64(v101, 0x10uLL));
    sub_10033B950(&__src);
    if (v268 != v270 && v268 != 0)
    {
      goto LABEL_316;
    }

    goto LABEL_317;
  }

  v240 = a3;
  v241 = a1;
  v30 = a1 & 7;
  v250 = (a1 >> 3) & 0x1FF;
  v31 = v250 + 1;
  if (a12 == 1)
  {
    v37 = v25 == 2 && v23 == 2;
    if (v37 && v27)
    {
      v29 = 3;
    }

    else
    {
      v29 = 1;
    }

LABEL_42:
    v28.n128_u64[0] = 1.0;
    v38 = v248;
    if (v24 < 1.0 || v248.n128_f64[0] < 1.0 || v29 != 3)
    {
      goto LABEL_49;
    }

    goto LABEL_70;
  }

  if (a12 != 5)
  {
    goto LABEL_42;
  }

  v33 = v25 == 2 && v23 == 2 && v27;
  if (!v33 || v31 == 2)
  {
    if (v30 - 5 <= 2)
    {
      v269 = 0;
      v268 = 0;
      v35 = sub_1002A80E0(&v268, 9);
      *(v35 + 8) = 48;
      *v35 = *"func != 0";
      sub_1002A8980(-215, &v268, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3827);
    }

    (off_10047A348[v30])(a2, v240, a4, v242, a6, a7, a8, a11, a9, a10, v31);
    goto LABEL_317;
  }

  v29 = 3;
  v28.n128_u64[0] = 1.0;
  v38 = v248;
  if (v24 >= 1.0 && v248.n128_f64[0] >= 1.0)
  {
LABEL_70:
    if (!v27)
    {
      v74 = v22;
      v75 = off_10047A308[v30];
      if (v250 > 3 || ((0x6DuLL >> v30) & 1) == 0)
      {
        v269 = 0;
        v268 = 0;
        v76 = sub_1002A80E0(&v268, 20);
        *(v76 + 16) = 874528060;
        *v76 = *"func != 0 && cn <= 4";
        sub_1002A8980(-215, &v268, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3881);
      }

      v77 = 2 * (v242 + a4);
      v268 = v270;
      v269 = v77;
      if (v77 >= 0x5E)
      {
        is_mul_ok(v77, 0xCuLL);
        operator new[]();
      }

      v78 = 2 * a4;
      v79 = sub_10033AA40(a4, v21, v31, v270, v248.n128_f64[0]);
      v80 = sub_10033AA40(v242, v74, 1u, &v270[24 * a4], 1.0 / a10);
      __src.i64[0] = v267;
      __src.i64[1] = (&_mh_execute_header + (v74 << 32)) >> 32;
      if (__src.i64[1] >= 0x109uLL)
      {
        operator new[]();
      }

      if (v80 < 1)
      {
        v81 = 0;
      }

      else
      {
        v267[0] = 0.0;
        if (v80 == 1)
        {
          v81 = 1;
        }

        else
        {
          v124 = &v270[12 * v78 + 16];
          v125 = 1;
          v126 = 1;
          do
          {
            if (*v124 != *(v124 - 3))
            {
              LODWORD(v267[v126++]) = v125;
            }

            v124 += 3;
            ++v125;
          }

          while (v80 != v125);
          v81 = v126;
        }
      }

      LODWORD(v267[v81]) = v80;
      (v75)(v259, v254, v270, v79, &v270[12 * v78], v80);
      if (__src.i64[0] != v267 && __src.i64[0] != 0)
      {
        operator delete[]();
      }

      if (v268 != v270 && v268)
      {
        goto LABEL_316;
      }

      goto LABEL_317;
    }

    v50 = v23 * v25;
    v51 = v23 * v25 + v31 * v21;
    v268 = v270;
    v269 = v51;
    if (v51 >= 0x109)
    {
      operator new[]();
    }

    v52 = off_10047A2C8[v30];
    if ((0x92uLL >> v30))
    {
      __src = 0uLL;
      v53 = sub_1002A80E0(&__src, 9);
      *(v53 + 8) = 48;
      *v53 = *"func != 0";
      sub_1002A8980(-215, &__src, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3862);
    }

    if (v25 >= 1 && v23 >= 1)
    {
      LODWORD(v110) = 0;
      v111 = 0;
      v28 = xmmword_1003E3950;
      v38 = vdupq_n_s32(v31);
      v112 = v240 / ((0x88442211uLL >> (4 * (v259[0] & 7))) & 0xF);
      v113.i64[0] = 0x400000004;
      v113.i64[1] = 0x400000004;
      v114.i64[0] = 0x800000008;
      v114.i64[1] = 0x800000008;
      do
      {
        v115 = v111 * v112;
        v116 = v110;
        if ((v23 & 0x7FFFFFFF) >= 8uLL)
        {
          v110 = v110 + (v23 & 0x7FFFFFFF) - (v23 & 7);
          v118 = vdupq_n_s32(v115);
          v119 = (v23 & 0x7FFFFFFF) - (v23 & 7);
          v120 = xmmword_1003E3950;
          v121 = &v270[4 * v116 + 16];
          do
          {
            v121[-1] = vmlaq_s32(v118, v120, v38);
            *v121 = vmlaq_s32(v118, vaddq_s32(v120, v113), v38);
            v120 = vaddq_s32(v120, v114);
            v121 += 2;
            v119 -= 8;
          }

          while (v119);
          v117 = (v23 & 0x7FFFFFFF) - (v23 & 7);
          if ((v23 & 7) == 0)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v117 = 0;
          v110 = v110;
        }

        v122 = v23 - v117;
        v123 = v110;
        do
        {
          LODWORD(v110) = v123 + 1;
          *&v270[4 * v123] = v115 + v117 * v31;
          ++v117;
          ++v123;
          --v122;
        }

        while (v122);
LABEL_128:
        ++v111;
      }

      while (v111 != v25);
    }

    if (v21 < 1)
    {
LABEL_101:
      (v52)(v259, v254, v270, &v270[4 * v50], v23, v25, v28, v38);
      if (v268 != v270 && v268 != 0)
      {
        goto LABEL_316;
      }

      goto LABEL_317;
    }

    v55 = 0;
    v56 = 0;
    v57 = &v270[4 * v50 + 16];
    v58 = (v241 >> 3) & 0x1FF;
    v59 = 4 * v58 + 4;
    v60 = v58 + 1;
    v28 = xmmword_1003E3940;
    v38 = xmmword_1003E0C50;
    v61.i64[0] = 0x400000004;
    v61.i64[1] = 0x400000004;
    v62 = vdupq_n_s64(8uLL);
    v63 = &v270[4 * v50];
    while (1)
    {
      if (v250 >= 7)
      {
        v65 = vdupq_n_s64(v56 * v31 * v23);
        v66 = (v250 + 1) & 0x3F8;
        v67 = v57;
        v68 = xmmword_1003E0C50;
        v69 = xmmword_1003E3940;
        do
        {
          v70 = vuzp1q_s32(vaddq_s64(v68, v65), vaddq_s64(v69, v65));
          v67[-1] = v70;
          *v67 = vaddq_s32(v70, v61);
          v69 = vaddq_s64(v69, v62);
          v68 = vaddq_s64(v68, v62);
          v67 += 2;
          v66 -= 8;
        }

        while (v66);
        v64 = (v250 + 1) & 0x3F8;
        if (v64 == v250 + 1)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v64 = 0;
      }

      v71 = &v63[4 * v64];
      v72 = v55 + v64;
      v73 = v60 - v64;
      do
      {
        *v71++ = v72++;
        --v73;
      }

      while (v73);
LABEL_82:
      ++v56;
      v57 = (v57 + v59);
      v63 += v59;
      v55 += v31 * v23;
      if (v56 == (v21 & 0x7FFFFFFF))
      {
        goto LABEL_101;
      }
    }
  }

LABEL_49:
  if (v29 != 2)
  {
    if (v29 != 1)
    {
      if (v29 == 4)
      {
        v41 = 8;
        v42 = off_10047A288[v30];
        v246 = 4;
        if (v42)
        {
          goto LABEL_155;
        }

LABEL_154:
        v269 = 0;
        v268 = 0;
        v128 = sub_1002A80E0(&v268, 9);
        *(v128 + 8) = 48;
        *v128 = *"func != 0";
        sub_1002A8980(-215, &v268, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3922);
      }

      if (v29 != 3)
      {
        sub_1001FA81C(&v268, "Unknown interpolation method");
        sub_1002A8980(-5, &v268, "resize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/resize.cpp", 3919);
      }
    }

    v41 = 2;
    v42 = off_10047A208[v30];
    v246 = 1;
    if (v42)
    {
      goto LABEL_155;
    }

    goto LABEL_154;
  }

  v41 = 4;
  v42 = off_10047A248[v30];
  v246 = 2;
  if (!v42)
  {
    goto LABEL_154;
  }

LABEL_155:
  v129 = v31 * v21;
  v268 = v270;
  v269 = (4 * v41 + 4) * (v31 * v21 + v22);
  if (v269 >= 0x409)
  {
    operator new[]();
  }

  v228 = v42;
  v229 = v22;
  v253 = v30;
  v130 = v129;
  v131 = 4 * v22;
  v227 = &v270[4 * v129];
  v234 = v227 + v131;
  v226 = v41 * v129;
  _Q0.i64[1] = 0;
  __src = 0u;
  memset(v267, 0, 48);
  __asm { FMOV            V0.2S, #1.25 }

  v238 = *_Q0.f32;
  __asm
  {
    FMOV            V12.2S, #-2.25
    FMOV            V13.2S, #1.0
  }

  v247 = v21;
  if (v21 >= 1)
  {
    v136 = v21;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = v41 * v31;
    v235 = a4 - 1;
    v142 = v131 + 4 * v130;
    v239 = &v270[v142];
    v143 = v41;
    v243 = v136 & 0x7FFFFFFF;
    v144 = v141 - v41;
    v232 = v144 & 0xFFFFFFFFFFFFFFF8;
    v231 = (v144 & 0xFFFFFFFFFFFFFFF8) + v41;
    v146 = v144 < 8 || v41 < 8;
    v233 = v146;
    v230 = &v270[v142 + 16];
    _Q0.i64[1] = 0x300000002;
    v147.i64[0] = 0x400000004;
    v147.i64[1] = 0x400000004;
    v148.i64[0] = 0x800000008;
    v148.i64[1] = 0x800000008;
    v236 = v131;
    v237 = v130;
    while (1)
    {
      v149 = v139;
      if (v29 == 3)
      {
        v150 = (v248.n128_f64[0] * v149) - (v248.n128_f64[0] * v149 < (v248.n128_f64[0] * v149));
        v151 = (v139 + 1) - (v150 + 1) * a9;
        _Q0.i64[0] = 0;
        if (v151 > 0.0)
        {
          _Q0.f32[0] = v151 - ((__PAIR64__(v151, LODWORD(v151)) - COERCE_UNSIGNED_INT(v151)) >> 32);
        }
      }

      else
      {
        *_Q0.i64 = (v149 + 0.5) * v248.n128_f64[0] + -0.5;
        _Q0.f32[0] = *_Q0.i64;
        v150 = (__PAIR64__(_Q0.f32[0], _Q0.u32[0]) - COERCE_UNSIGNED_INT(_Q0.f32[0])) >> 32;
        _Q0.f32[0] = _Q0.f32[0] - v150;
      }

      if (v29 == 4)
      {
        v152 = v150;
      }

      else
      {
        v152 = 0;
      }

      if (v29 == 4)
      {
        v153 = _Q0.f32[0];
      }

      else
      {
        v153 = 0.0;
      }

      if (v29 == 2)
      {
        v152 = v150;
        v153 = _Q0.f32[0];
      }

      if (v150 >= 0)
      {
        v152 = v150;
        v153 = _Q0.f32[0];
      }

      if (v150 < v246 - 1)
      {
        v140 = v139 + 1;
        v150 = v152;
        _Q0.f32[0] = v153;
      }

      if (v150 + v246 < a4 || (v139 >= v247 ? (v154 = v247) : (v154 = v139), (v247 = v154, v150 >= v235) ? (v155 = v29 == 2) : (v155 = 1), !v155 ? (v156 = v29 == 4) : (v156 = 1), v156))
      {
        v157 = v138;
        v158 = v150 * v31;
        if (v250 < 7)
        {
          goto LABEL_195;
        }
      }

      else
      {
        _Q0.i64[0] = 0;
        v157 = v138;
        v158 = v235 * v31;
        if (v250 < 7)
        {
LABEL_195:
          v159 = 0;
LABEL_200:
          v165 = v158 + v159;
          v166 = &v270[4 * v159 + 4 * v157];
          v167 = ((v241 >> 3) & 0x1FF) + 1 - v159;
          do
          {
            *v166++ = v165++;
            --v167;
          }

          while (v167);
          goto LABEL_202;
        }
      }

      v160 = &v270[4 * v138 + 16];
      v161 = vdupq_n_s32(v158);
      v162 = (v250 + 1) & 0x3F8;
      v163 = xmmword_1003E3950;
      do
      {
        v164 = vaddq_s32(v161, v163);
        v160[-1] = v164;
        *v160 = vaddq_s32(v164, v147);
        v163 = vaddq_s32(v163, v148);
        v160 += 2;
        v162 -= 8;
      }

      while (v162);
      v159 = (v250 + 1) & 0x3F8;
      if (v159 != v250 + 1)
      {
        goto LABEL_200;
      }

LABEL_202:
      if (v29 == 2)
      {
        _Q0.f32[1] = 1.0 - _Q0.f32[0];
        *&__src.i32[1] = vmla_f32(_D13, *_Q0.f32, vmul_f32(*_Q0.f32, vmla_f32(_D12, v238, *_Q0.f32)));
        __src.f32[0] = ((((((_Q0.f32[0] + 1.0) * -0.75) + 3.75) * (_Q0.f32[0] + 1.0)) + -6.0) * (_Q0.f32[0] + 1.0)) + 3.0;
        __src.f32[3] = ((1.0 - __src.f32[0]) - __src.f32[1]) - __src.f32[2];
        v168 = v137;
        v169 = v143 + v137;
        v170 = v141 * v139;
        if (!v253)
        {
          goto LABEL_216;
        }
      }

      else if (v29 == 4)
      {
        _Q0 = sub_10033AC38(&__src, _Q0);
        v148.i64[0] = 0x800000008;
        v148.i64[1] = 0x800000008;
        v147.i64[0] = 0x400000004;
        v147.i64[1] = 0x400000004;
        v143 = v41;
        v131 = v236;
        v130 = v237;
        v168 = v137;
        v169 = v41 + v137;
        v170 = v141 * v139;
        if (!v253)
        {
          goto LABEL_216;
        }
      }

      else
      {
        __src.f32[0] = 1.0 - _Q0.f32[0];
        __src.i32[1] = _Q0.i32[0];
        v168 = v137;
        v169 = v143 + v137;
        v170 = v141 * v139;
        if (!v253)
        {
LABEL_216:
          v180 = __src.f32[1];
          v181 = rintf(__src.f32[0] * 2048.0);
          v182 = &v234[2 * v170];
          if (v181 <= -32768)
          {
            LODWORD(v181) = -32768;
          }

          if (v181 >= 0x7FFF)
          {
            LOWORD(v181) = 0x7FFF;
          }

          *v182 = v181;
          v183 = rintf(v180 * 2048.0);
          if (v183 <= -32768)
          {
            LODWORD(v183) = -32768;
          }

          if (v183 >= 0x7FFF)
          {
            LOWORD(v183) = 0x7FFF;
          }

          v182[1] = v183;
          if (v41 != 2)
          {
            v184 = __src.f32[3];
            v185 = rintf(__src.f32[2] * 2048.0);
            if (v185 <= -32768)
            {
              LODWORD(v185) = -32768;
            }

            if (v185 >= 0x7FFF)
            {
              LOWORD(v185) = 0x7FFF;
            }

            v182[2] = v185;
            v186 = rintf(v184 * 2048.0);
            if (v186 <= -32768)
            {
              LODWORD(v186) = -32768;
            }

            if (v186 >= 0x7FFF)
            {
              LOWORD(v186) = 0x7FFF;
            }

            v182[3] = v186;
            if (v41 != 4)
            {
              v187 = rintf(v267[0] * 2048.0);
              v188 = rintf(v267[1] * 2048.0);
              v189 = v267[3];
              v190 = rintf(v267[2] * 2048.0);
              if (v187 <= -32768)
              {
                LODWORD(v187) = -32768;
              }

              if (v187 >= 0x7FFF)
              {
                LOWORD(v187) = 0x7FFF;
              }

              v182[4] = v187;
              if (v188 <= -32768)
              {
                v191 = -32768;
              }

              else
              {
                v191 = v188;
              }

              if (v191 >= 0x7FFF)
              {
                LOWORD(v191) = 0x7FFF;
              }

              v182[5] = v191;
              if (v190 <= -32768)
              {
                v192 = -32768;
              }

              else
              {
                v192 = v190;
              }

              if (v192 >= 0x7FFF)
              {
                LOWORD(v192) = 0x7FFF;
              }

              v193 = rintf(v189 * 2048.0);
              v182[6] = v192;
              if (v193 <= -32768)
              {
                v194 = -32768;
              }

              else
              {
                v194 = v193;
              }

              if (v194 >= 0x7FFF)
              {
                LOWORD(v194) = 0x7FFF;
              }

              v182[7] = v194;
            }
          }

          if (v41 < v141)
          {
            v195 = &v239[2 * v169];
            v196 = v141 - v41;
            v197 = &v239[2 * v137];
            do
            {
              v198 = *v197++;
              *v195++ = v198;
              --v196;
            }

            while (v196);
          }

          goto LABEL_165;
        }
      }

      memcpy(&v239[4 * v170], &__src, 4 * v41);
      v148.i64[0] = 0x800000008;
      v148.i64[1] = 0x800000008;
      v147.i64[0] = 0x400000004;
      v147.i64[1] = 0x400000004;
      v143 = v41;
      v131 = v236;
      v130 = v237;
      if (v41 < v141)
      {
        v171 = v41;
        if (v233)
        {
          goto LABEL_209;
        }

        v172 = &v230[4 * v137];
        v173 = v232;
        v174 = &v230[4 * v169];
        do
        {
          _Q0 = v172[-1];
          v175 = *v172;
          v174[-1] = _Q0;
          *v174 = v175;
          v172 += 2;
          v174 += 2;
          v173 -= 8;
        }

        while (v173);
        v171 = v231;
        if (v141 - v41 != v232)
        {
LABEL_209:
          v176 = &v239[4 * v171 + 4 * v168];
          v177 = &v239[4 * (v171 + v168 - v41)];
          v178 = v141 - v171;
          do
          {
            v179 = *v177++;
            *v176++ = v179;
            --v178;
          }

          while (v178);
        }
      }

LABEL_165:
      ++v139;
      v138 = v157 + v31;
      v137 = v168 + v141;
      if (v139 == v243)
      {
        goto LABEL_259;
      }
    }
  }

  v140 = 0;
LABEL_259:
  if (v229 >= 1)
  {
    v199 = 0;
    v251 = &v270[4 * v226 + 4 * v130 + v131];
    v200 = v229 & 0x7FFFFFFF;
    v201 = &v270[4 * v130 + 8 + 2 * v226 + v131];
    v202 = 1;
    v203 = v227;
    while (1)
    {
      *_Q0.i64 = (v202 - 1);
      if (v29 == 3)
      {
        break;
      }

      *_Q0.i64 = (*_Q0.i64 + 0.5) * v24 + -0.5;
      _Q0.f32[0] = *_Q0.i64;
      v206 = (__PAIR64__(_Q0.f32[0], _Q0.u32[0]) - COERCE_UNSIGNED_INT(_Q0.f32[0])) >> 32;
      _Q0.f32[0] = _Q0.f32[0] - v206;
      *v203 = v206;
      if (v29 == 2)
      {
        _Q0.f32[1] = 1.0 - _Q0.f32[0];
        *&__src.i32[1] = vmla_f32(_D13, *_Q0.f32, vmul_f32(*_Q0.f32, vmla_f32(_D12, v238, *_Q0.f32)));
        __src.f32[0] = ((((((_Q0.f32[0] + 1.0) * -0.75) + 3.75) * (_Q0.f32[0] + 1.0)) + -6.0) * (_Q0.f32[0] + 1.0)) + 3.0;
        __src.f32[3] = ((1.0 - __src.f32[0]) - __src.f32[1]) - __src.f32[2];
        if (!v253)
        {
          goto LABEL_270;
        }
      }

      else
      {
        if (v29 != 4)
        {
          goto LABEL_266;
        }

        _Q0 = sub_10033AC38(&__src, _Q0);
        if (!v253)
        {
LABEL_270:
          v207 = __src.f32[1];
          v208 = rintf(__src.f32[0] * 2048.0);
          if (v208 <= -32768)
          {
            LODWORD(v208) = -32768;
          }

          if (v208 >= 0x7FFF)
          {
            LOWORD(v208) = 0x7FFF;
          }

          *(v201 - 4) = v208;
          v209 = rintf(v207 * 2048.0);
          if (v209 <= -32768)
          {
            LODWORD(v209) = -32768;
          }

          if (v209 >= 0x7FFF)
          {
            LOWORD(v209) = 0x7FFF;
          }

          *(v201 - 3) = v209;
          if (v41 != 2)
          {
            v210 = __src.f32[3];
            v211 = rintf(__src.f32[2] * 2048.0);
            if (v211 <= -32768)
            {
              LODWORD(v211) = -32768;
            }

            if (v211 >= 0x7FFF)
            {
              LOWORD(v211) = 0x7FFF;
            }

            *(v201 - 2) = v211;
            v212 = rintf(v210 * 2048.0);
            if (v212 <= -32768)
            {
              LODWORD(v212) = -32768;
            }

            if (v212 >= 0x7FFF)
            {
              LOWORD(v212) = 0x7FFF;
            }

            *(v201 - 1) = v212;
            if (v41 != 4)
            {
              v213 = rintf(v267[0] * 2048.0);
              v214 = rintf(v267[1] * 2048.0);
              v215 = v267[3];
              v216 = rintf(v267[2] * 2048.0);
              if (v213 <= -32768)
              {
                LODWORD(v213) = -32768;
              }

              if (v213 >= 0x7FFF)
              {
                LOWORD(v213) = 0x7FFF;
              }

              *v201 = v213;
              if (v214 <= -32768)
              {
                v217 = -32768;
              }

              else
              {
                v217 = v214;
              }

              if (v217 >= 0x7FFF)
              {
                LOWORD(v217) = 0x7FFF;
              }

              v201[1] = v217;
              if (v216 <= -32768)
              {
                v218 = -32768;
              }

              else
              {
                v218 = v216;
              }

              if (v218 >= 0x7FFF)
              {
                LOWORD(v218) = 0x7FFF;
              }

              v219 = rintf(v215 * 2048.0);
              v201[2] = v218;
              if (v219 <= -32768)
              {
                v220 = -32768;
              }

              else
              {
                v220 = v219;
              }

              if (v220 >= 0x7FFF)
              {
                LOWORD(v220) = 0x7FFF;
              }

              v201[3] = v220;
            }
          }

          goto LABEL_261;
        }
      }

LABEL_267:
      memcpy(&v251[4 * v199], &__src, 4 * v41);
LABEL_261:
      ++v202;
      v199 += v41;
      ++v203;
      v201 += v41;
      if (!--v200)
      {
        goto LABEL_311;
      }
    }

    v204 = (v24 * *_Q0.i64) - (v24 * *_Q0.i64 < (v24 * *_Q0.i64));
    v205 = v202 - (v204 + 1) * a10;
    _Q0.i32[0] = 0;
    if (v205 > 0.0)
    {
      _Q0.f32[0] = v205 - ((__PAIR64__(v205, LODWORD(v205)) - COERCE_UNSIGNED_INT(v205)) >> 32);
    }

    *v203 = v204;
LABEL_266:
    __src.f32[0] = 1.0 - _Q0.f32[0];
    __src.i32[1] = _Q0.i32[0];
    if (!v253)
    {
      goto LABEL_270;
    }

    goto LABEL_267;
  }

LABEL_311:
  if (v253)
  {
    v221 = &v234[4 * v226];
  }

  else
  {
    v221 = &v234[2 * v226];
  }

  v228(v259, v254, v270, v234, v227, v221, v140, v247, v41);
  if (v268 != v270 && v268)
  {
LABEL_316:
    operator delete[]();
  }

LABEL_317:
  if (v255 && atomic_fetch_add((v255 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v254);
  }

  v255 = 0;
  memset(&v254[1], 0, 32);
  if (SDWORD1(v254[0]) >= 1)
  {
    v222 = 0;
    v223 = v256;
    do
    {
      v223[v222++] = 0;
    }

    while (v222 < SDWORD1(v254[0]));
  }

  if (v257 != &v258)
  {
    j__free(v257);
  }

  if (v260 && atomic_fetch_add((v260 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v259);
  }

  v260 = 0;
  memset(&v259[1], 0, 32);
  if (SDWORD1(v259[0]) >= 1)
  {
    v224 = 0;
    v225 = v261;
    do
    {
      *(v225 + 4 * v224++) = 0;
    }

    while (v224 < SDWORD1(v259[0]));
  }

  if (v262 != &v263)
  {
    j__free(v262);
  }

  if (v264[2])
  {
    sub_1002ACC1C(v264);
  }
}

void sub_100337A14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100337C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_10033BA8C(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_10033C9D8(v23);
}

void sub_100337D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10033C9D8(va);
  _Unwind_Resume(a1);
}

void sub_100337D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_10033CB14(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_10033DA4C(v23);
}

void sub_100337E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10033DA4C(va);
  _Unwind_Resume(a1);
}

void sub_100337EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_10033DB88(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_10033EC1C(v23);
}

void sub_100337FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10033EC1C(va);
  _Unwind_Resume(a1);
}

void sub_100337FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_10033ED58(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_10033F868(v23);
}

void sub_1003380F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10033F868(va);
  _Unwind_Resume(a1);
}

void sub_10033810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_10033F9A4(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_100340458(v23);
}

void sub_10033822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100340458(va);
  _Unwind_Resume(a1);
}

void sub_100338240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_100340594(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_1003410C4(v23);
}

void sub_100338360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1003410C4(va);
  _Unwind_Resume(a1);
}

void sub_100338374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_100341200(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_100341DFC(v23);
}

void sub_100338494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100341DFC(va);
  _Unwind_Resume(a1);
}

void sub_1003384A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_100341F38(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_100342CD8(v23);
}

void sub_1003385C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100342CD8(va);
  _Unwind_Resume(a1);
}

void sub_1003385DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_100342E14(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_10034388C(v23);
}

void sub_1003386FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10034388C(va);
  _Unwind_Resume(a1);
}

void sub_100338710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_1003439C8(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_1003443AC(v23);
}

void sub_100338830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1003443AC(va);
  _Unwind_Resume(a1);
}

void sub_100338844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_1003444E8(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_100345188(v23);
}

void sub_100338964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100345188(va);
  _Unwind_Resume(a1);
}

void sub_100338978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_1003452C4(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_1003465F4(v23);
}

void sub_100338A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1003465F4(va);
  _Unwind_Resume(a1);
}

void sub_100338AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_100346730(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_100347C50(v23);
}

void sub_100338BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100347C50(va);
  _Unwind_Resume(a1);
}

void sub_100338BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_100347D8C(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_100348E4C(v23);
}

void sub_100338D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100348E4C(va);
  _Unwind_Resume(a1);
}

void sub_100338D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v10 = *(*(a1 + 64) + 4);
  HIDWORD(v26) = **(a1 + 64);
  v11 = *(*(a2 + 64) + 4);
  v12 = ((*a1 >> 3) & 0x1FF) + 1;
  HIDWORD(v25) = **(a2 + 64);
  LODWORD(v26) = v12 * v10;
  v24[1] = HIDWORD(v25);
  LODWORD(v25) = v12 * v11;
  v24[0] = 0;
  sub_100348F88(v23, a1, a2, a3, a5, a4, a6, &v26, &v25, a9, v12 * a7, v12 * a8);
  v13 = *(a2 + 4);
  if (v13 >= 3)
  {
    v15 = *(a2 + 64);
    v16 = (v15 + 4);
    v17 = 1;
    v18 = v13 & 0x7FFFFFFE;
    v19 = 1;
    do
    {
      v17 *= *(v16 - 1);
      v19 *= *v16;
      v16 += 2;
      v18 -= 2;
    }

    while (v18);
    v14 = v19 * v17;
    v20 = v13 - (v13 & 0x7FFFFFFE);
    if (v20)
    {
      v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
      do
      {
        v22 = *v21++;
        v14 *= v22;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v14 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v24, v23, vcvtd_n_f64_u64(v14, 0x10uLL));
  sub_100349F58(v23);
}

void sub_100338E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100349F58(va);
  _Unwind_Resume(a1);
}

void sub_100338E48(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v19[0] = 0;
  v19[1] = v7;
  sub_10034A094(v18, a1, a2, a5, a6, a3, a4);
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v19, v18, vcvtd_n_f64_u64(v9, 0x10uLL));
  sub_10034B330(v18);
}

void sub_100338F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10034B330(va);
  _Unwind_Resume(a1);
}

void sub_100338F34(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v19[0] = 0;
  v19[1] = v7;
  sub_10034B46C(v18, a1, a2, a5, a6, a3, a4);
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v19, v18, vcvtd_n_f64_u64(v9, 0x10uLL));
  sub_10034BE30(v18);
}

void sub_10033900C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10034BE30(va);
  _Unwind_Resume(a1);
}

void sub_100339020(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v19[0] = 0;
  v19[1] = v7;
  sub_10034BF6C(v18, a1, a2, a5, a6, a3, a4);
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v19, v18, vcvtd_n_f64_u64(v9, 0x10uLL));
  sub_10034C94C(v18);
}

void sub_1003390F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10034C94C(va);
  _Unwind_Resume(a1);
}

void sub_10033910C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v19[0] = 0;
  v19[1] = v7;
  sub_10034CA88(v18, a1, a2, a5, a6, a3, a4);
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v19, v18, vcvtd_n_f64_u64(v9, 0x10uLL));
  sub_10034D08C(v18);
}

void sub_1003391E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10034D08C(va);
  _Unwind_Resume(a1);
}

void sub_1003391F8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v19[0] = 0;
  v19[1] = v7;
  sub_10034D1C8(v18, a1, a2, a5, a6, a3, a4);
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * *(a2 + 8);
  }

  sub_1002829C8(v19, v18, vcvtd_n_f64_u64(v9, 0x10uLL));
  sub_10034D6F4(v18);
}

void sub_1003392D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10034D6F4(va);
  _Unwind_Resume(a1);
}

void sub_1003392E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v22[0] = 0;
  v22[1] = v7;
  v18[0] = &off_10047A8F8;
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a5;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * v7;
  }

  sub_1002829C8(v22, v18, vcvtd_n_f64_u64(v9, 0x10uLL));
  nullsub_1();
}

void sub_1003393D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v22[0] = 0;
  v22[1] = v7;
  v18[0] = &off_10047A938;
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a5;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * v7;
  }

  sub_1002829C8(v22, v18, vcvtd_n_f64_u64(v9, 0x10uLL));
  nullsub_1();
}

void sub_1003394CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v22[0] = 0;
  v22[1] = v7;
  v18[0] = &off_10047A978;
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a5;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * v7;
  }

  sub_1002829C8(v22, v18, vcvtd_n_f64_u64(v9, 0x10uLL));
  nullsub_1();
}

void sub_1003395C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v22[0] = 0;
  v22[1] = v7;
  v18[0] = &off_10047A9B8;
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a5;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * v7;
  }

  sub_1002829C8(v22, v18, vcvtd_n_f64_u64(v9, 0x10uLL));
  nullsub_1();
}

void sub_1003396B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v22[0] = 0;
  v22[1] = v7;
  v18[0] = &off_10047A9F8;
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a5;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    v10 = *(a2 + 64);
    v11 = (v10 + 4);
    v12 = 1;
    v13 = v8 & 0x7FFFFFFE;
    v14 = 1;
    do
    {
      v12 *= *(v11 - 1);
      v14 *= *v11;
      v11 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = v14 * v12;
    v15 = v8 - (v8 & 0x7FFFFFFE);
    if (v15)
    {
      v16 = (v10 + 8 * ((v8 >> 1) & 0x3FFFFFFF));
      do
      {
        v17 = *v16++;
        v9 *= v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v9 = *(a2 + 12) * v7;
  }

  sub_1002829C8(v22, v18, vcvtd_n_f64_u64(v9, 0x10uLL));
  nullsub_1();
}

uint64_t sub_1003397A8(unint64_t a1, unint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, int a11)
{
  if (a11 > 2)
  {
    if (a11 != 3)
    {
      if (a11 == 4)
      {
        v15 = a3 <= 2;
        v16 = sub_1003516B8;
        v17 = sub_1003514AC;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = a3 <= 2;
    v16 = sub_1003511E8;
    v17 = sub_100350D28;
  }

  else
  {
    if (a11 != 1)
    {
      if (a11 == 2)
      {
        v15 = a3 <= 2;
        v16 = sub_100350A64;
        v17 = sub_100350700;
        goto LABEL_11;
      }

LABEL_8:
      v15 = a3 <= 2;
      v16 = sub_100351D64;
      v17 = sub_10035197C;
      goto LABEL_11;
    }

    v15 = a3 <= 2;
    v16 = sub_10035043C;
    v17 = sub_10035018C;
  }

LABEL_11:
  if (!v15)
  {
    v16 = v17;
  }

  v29 = v16;
  v57 = 0x3FF0000000000000;
  *v36 = a9;
  sub_10029E2BC(&v57, v36, &v54);
  v55 = a3;
  LODWORD(v56) = 0;
  HIDWORD(v56) = a7;
  v57 = 0x3FF0000000000000;
  *v36 = a10;
  sub_10029E2BC(&v57, v36, &v51);
  v52 = a4;
  LODWORD(v53) = 0;
  HIDWORD(v53) = a8;
  v57 = v59;
  v58 = 4 * (a8 + a7) + 4 * a7 + 4 * a8;
  if (v58 >= 0x409)
  {
    operator new[]();
  }

  v28 = a6;
  v18 = &v59[a7];
  v19 = &v18[a8];
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = v59;
    v22 = &v18[a8];
    do
    {
      sub_10035202C(&v54, v20++, v21, v22);
      v22 += 2;
      ++v21;
    }

    while (a7 != v20);
  }

  v23 = v56;
  if (a8 >= 1)
  {
    v24 = 0;
    v25 = &v59[a7];
    v26 = &v19[a7];
    do
    {
      sub_10035202C(&v51, v24++, v25, v26);
      v26 += 2;
      ++v25;
    }

    while (a8 != v24);
  }

  v36[0] = &off_10047AA38;
  v36[1] = a1;
  v36[2] = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v28;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = v59;
  v45 = &v59[a7];
  v46 = &v18[a8];
  v47 = &v19[a7];
  v48 = v23;
  v49 = v53;
  v50 = v29;
  v35[0] = 0;
  v35[1] = a8;
  sub_1002829C8(v35, v36, vcvtd_n_f64_s32(a8 * a7, 0x10uLL));
  nullsub_1();
  result = v57;
  if (v57 != v59)
  {
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_100339B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  nullsub_1();
  if (a40 != a16 && a40 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100339B60(unint64_t a1, unint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, int a11)
{
  if (a11 > 2)
  {
    if (a11 != 3)
    {
      if (a11 == 4)
      {
        v15 = a3 <= 2;
        v16 = sub_100353D08;
        v17 = sub_100353B5C;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = a3 <= 2;
    v16 = sub_100353848;
    v17 = sub_100353610;
  }

  else
  {
    if (a11 != 1)
    {
      if (a11 == 2)
      {
        v15 = a3 <= 2;
        v16 = sub_1003532FC;
        v17 = sub_100353174;
        goto LABEL_11;
      }

LABEL_8:
      v15 = a3 <= 2;
      v16 = sub_100354488;
      v17 = sub_10035401C;
      goto LABEL_11;
    }

    v15 = a3 <= 2;
    v16 = sub_100352E60;
    v17 = sub_100352D28;
  }

LABEL_11:
  if (!v15)
  {
    v16 = v17;
  }

  v29 = v16;
  v57 = 0x3FF0000000000000;
  *v36 = a9;
  sub_10029E2BC(&v57, v36, &v54);
  v55 = a3;
  LODWORD(v56) = 0;
  HIDWORD(v56) = a7;
  v57 = 0x3FF0000000000000;
  *v36 = a10;
  sub_10029E2BC(&v57, v36, &v51);
  v52 = a4;
  LODWORD(v53) = 0;
  HIDWORD(v53) = a8;
  v57 = v59;
  v58 = 4 * (a8 + a7 + 2 * a7 + 2 * a8);
  if (v58 >= 0x409)
  {
    operator new[]();
  }

  v28 = a6;
  v18 = &v59[a7];
  v19 = &v18[a8];
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = v59;
    v22 = &v18[a8];
    do
    {
      sub_1003547A0(&v54, v20++, v21, v22);
      v22 += 2;
      ++v21;
    }

    while (a7 != v20);
  }

  v23 = v56;
  if (a8 >= 1)
  {
    v24 = 0;
    v25 = &v59[a7];
    v26 = &v19[2 * a7];
    do
    {
      sub_1003547A0(&v51, v24++, v25, v26);
      v26 += 2;
      ++v25;
    }

    while (a8 != v24);
  }

  v36[0] = &off_10047AA78;
  v36[1] = a1;
  v36[2] = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v28;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = v59;
  v45 = &v59[a7];
  v46 = &v18[a8];
  v47 = &v19[2 * a7];
  v48 = v23;
  v49 = v53;
  v50 = v29;
  v35[0] = 0;
  v35[1] = a8;
  sub_1002829C8(v35, v36, vcvtd_n_f64_s32(a8 * a7, 0x10uLL));
  nullsub_1();
  result = v57;
  if (v57 != v59)
  {
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_100339EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  nullsub_1();
  if (a40 != a16 && a40 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100339F18(unint64_t a1, unint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, int a11)
{
  if (a11 > 2)
  {
    if (a11 != 3)
    {
      if (a11 == 4)
      {
        v15 = a3 <= 2;
        v16 = sub_100356234;
        v17 = sub_100356090;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = a3 <= 2;
    v16 = sub_100355DEC;
    v17 = sub_100355BBC;
  }

  else
  {
    if (a11 != 1)
    {
      if (a11 == 2)
      {
        v15 = a3 <= 2;
        v16 = sub_100355918;
        v17 = sub_100355798;
        goto LABEL_11;
      }

LABEL_8:
      v15 = a3 <= 2;
      v16 = sub_1003569B0;
      v17 = sub_1003564D8;
      goto LABEL_11;
    }

    v15 = a3 <= 2;
    v16 = sub_1003554F4;
    v17 = sub_1003552C8;
  }

LABEL_11:
  if (!v15)
  {
    v16 = v17;
  }

  v29 = v16;
  v57 = 0x3FF0000000000000;
  *v36 = a9;
  sub_10029E2BC(&v57, v36, &v54);
  v55 = a3;
  LODWORD(v56) = 0;
  HIDWORD(v56) = a7;
  v57 = 0x3FF0000000000000;
  *v36 = a10;
  sub_10029E2BC(&v57, v36, &v51);
  v52 = a4;
  LODWORD(v53) = 0;
  HIDWORD(v53) = a8;
  v57 = v59;
  v58 = 4 * (a8 + a7 + 2 * a7 + 2 * a8);
  if (v58 >= 0x409)
  {
    operator new[]();
  }

  v28 = a6;
  v18 = &v59[a7];
  v19 = &v18[a8];
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = v59;
    v22 = &v18[a8];
    do
    {
      sub_100356C58(&v54, v20++, v21, v22);
      v22 += 2;
      ++v21;
    }

    while (a7 != v20);
  }

  v23 = v56;
  if (a8 >= 1)
  {
    v24 = 0;
    v25 = &v59[a7];
    v26 = &v19[2 * a7];
    do
    {
      sub_100356C58(&v51, v24++, v25, v26);
      v26 += 2;
      ++v25;
    }

    while (a8 != v24);
  }

  v36[0] = &off_10047AAB8;
  v36[1] = a1;
  v36[2] = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v28;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = v59;
  v45 = &v59[a7];
  v46 = &v18[a8];
  v47 = &v19[2 * a7];
  v48 = v23;
  v49 = v53;
  v50 = v29;
  v35[0] = 0;
  v35[1] = a8;
  sub_1002829C8(v35, v36, vcvtd_n_f64_s32(a8 * a7, 0x10uLL));
  nullsub_1();
  result = v57;
  if (v57 != v59)
  {
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_10033A27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  nullsub_1();
  if (a40 != a16 && a40 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10033A2D0(unint64_t a1, unint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, int a11)
{
  if (a11 > 2)
  {
    if (a11 != 3)
    {
      if (a11 == 4)
      {
        v15 = a3 <= 2;
        v16 = sub_1003583B8;
        v17 = sub_100358214;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = a3 <= 2;
    v16 = sub_100357F70;
    v17 = sub_100357D40;
  }

  else
  {
    if (a11 != 1)
    {
      if (a11 == 2)
      {
        v15 = a3 <= 2;
        v16 = sub_100357A9C;
        v17 = sub_10035791C;
        goto LABEL_11;
      }

LABEL_8:
      v15 = a3 <= 2;
      v16 = sub_100358B34;
      v17 = sub_10035865C;
      goto LABEL_11;
    }

    v15 = a3 <= 2;
    v16 = sub_100357678;
    v17 = sub_100357540;
  }

LABEL_11:
  if (!v15)
  {
    v16 = v17;
  }

  v29 = v16;
  v57 = 0x3FF0000000000000;
  *v36 = a9;
  sub_10029E2BC(&v57, v36, &v54);
  v55 = a3;
  LODWORD(v56) = 0;
  HIDWORD(v56) = a7;
  v57 = 0x3FF0000000000000;
  *v36 = a10;
  sub_10029E2BC(&v57, v36, &v51);
  v52 = a4;
  LODWORD(v53) = 0;
  HIDWORD(v53) = a8;
  v57 = v59;
  v58 = 4 * (a8 + a7 + 2 * a7 + 2 * a8);
  if (v58 >= 0x409)
  {
    operator new[]();
  }

  v28 = a6;
  v18 = &v59[a7];
  v19 = &v18[a8];
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = v59;
    v22 = &v18[a8];
    do
    {
      sub_1003547A0(&v54, v20++, v21, v22);
      v22 += 2;
      ++v21;
    }

    while (a7 != v20);
  }

  v23 = v56;
  if (a8 >= 1)
  {
    v24 = 0;
    v25 = &v59[a7];
    v26 = &v19[2 * a7];
    do
    {
      sub_1003547A0(&v51, v24++, v25, v26);
      v26 += 2;
      ++v25;
    }

    while (a8 != v24);
  }

  v36[0] = &off_10047AAF8;
  v36[1] = a1;
  v36[2] = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v28;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = v59;
  v45 = &v59[a7];
  v46 = &v18[a8];
  v47 = &v19[2 * a7];
  v48 = v23;
  v49 = v53;
  v50 = v29;
  v35[0] = 0;
  v35[1] = a8;
  sub_1002829C8(v35, v36, vcvtd_n_f64_s32(a8 * a7, 0x10uLL));
  nullsub_1();
  result = v57;
  if (v57 != v59)
  {
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_10033A634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  nullsub_1();
  if (a40 != a16 && a40 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10033A688(unint64_t a1, unint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, int a11)
{
  if (a11 > 2)
  {
    if (a11 != 3)
    {
      if (a11 == 4)
      {
        v15 = a3 <= 2;
        v16 = sub_10035A76C;
        v17 = sub_10035A5C0;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = a3 <= 2;
    v16 = sub_10035A1E0;
    v17 = sub_100359FE4;
  }

  else
  {
    if (a11 != 1)
    {
      if (a11 == 2)
      {
        v15 = a3 <= 2;
        v16 = sub_100359C04;
        v17 = sub_100359A98;
        goto LABEL_11;
      }

LABEL_8:
      v15 = a3 <= 2;
      v16 = sub_10035AF20;
      v17 = sub_10035AB4C;
      goto LABEL_11;
    }

    v15 = a3 <= 2;
    v16 = sub_1003596B8;
    v17 = sub_100359584;
  }

LABEL_11:
  if (!v15)
  {
    v16 = v17;
  }

  v29 = v16;
  v57 = 0x3FF0000000000000;
  *v36 = a9;
  sub_10029E2BC(&v57, v36, &v54);
  v55 = a3;
  LODWORD(v56) = 0;
  HIDWORD(v56) = a7;
  v57 = 0x3FF0000000000000;
  *v36 = a10;
  sub_10029E2BC(&v57, v36, &v51);
  v52 = a4;
  LODWORD(v53) = 0;
  HIDWORD(v53) = a8;
  v57 = v59;
  v58 = 4 * (a8 + a7) + 16 * a7 + 16 * a8;
  if (v58 >= 0x409)
  {
    operator new[]();
  }

  v28 = a6;
  v18 = &v59[a7];
  v19 = &v18[a8];
  if (a7 >= 1)
  {
    v20 = 0;
    v21 = v59;
    v22 = &v18[a8];
    do
    {
      sub_10035B304(&v54, v20++, v21, v22);
      v22 += 2;
      ++v21;
    }

    while (a7 != v20);
  }

  v23 = v56;
  if (a8 >= 1)
  {
    v24 = 0;
    v25 = &v59[a7];
    v26 = &v19[4 * a7];
    do
    {
      sub_10035B304(&v51, v24++, v25, v26);
      v26 += 2;
      ++v25;
    }

    while (a8 != v24);
  }

  v36[0] = &off_10047AB38;
  v36[1] = a1;
  v36[2] = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v28;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = v59;
  v45 = &v59[a7];
  v46 = &v18[a8];
  v47 = &v19[4 * a7];
  v48 = v23;
  v49 = v53;
  v50 = v29;
  v35[0] = 0;
  v35[1] = a8;
  sub_1002829C8(v35, v36, vcvtd_n_f64_s32(a8 * a7, 0x10uLL));
  nullsub_1();
  result = v57;
  if (v57 != v59)
  {
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_10033A9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  nullsub_1();
  if (a40 != a16 && a40 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10033AA40(int a1, int a2, unsigned int a3, uint64_t a4, double a5)
{
  if (a2 >= 1)
  {
    result = 0;
    v7 = 0;
    v8 = a1;
    v9 = a1 - 1;
    v10 = vdupq_n_s32(a3);
    v11 = 0.0;
    v12.i64[0] = 0x400000004;
    v12.i64[1] = 0x400000004;
    v13.i64[0] = 0x800000008;
    v13.i64[1] = 0x800000008;
    while (1)
    {
      v14 = v11 * a5;
      v15 = v11 * a5 + a5;
      v16 = v8 - v11 * a5;
      v17 = (v11 * a5);
      if (v16 >= a5)
      {
        v16 = a5;
      }

      if (v14 <= v17)
      {
        v18 = (v11 * a5);
      }

      else
      {
        v18 = v17 + 1;
      }

      v19 = v15 - (v15 < v15);
      if (v9 < v19)
      {
        v19 = v9;
      }

      v20 = v19 >= v18 ? v18 : v19;
      v21 = v20 - v14;
      if (v21 > 0.001)
      {
        v23 = a4 + 12 * result;
        *v23 = (v20 - 1) * a3;
        *(v23 + 4) = v7 * a3;
        v24 = v21 / v16;
        result = (result + 1);
        *(v23 + 8) = v24;
        if (v18 >= v19)
        {
LABEL_16:
          v22 = v15 - v19;
          if (v22 > 0.001)
          {
            goto LABEL_27;
          }

          goto LABEL_3;
        }
      }

      else if (v18 >= v19)
      {
        goto LABEL_16;
      }

      v25 = v7 * a3;
      v26 = 1.0 / v16;
      *&v26 = 1.0 / v16;
      v27 = result;
      v28 = (v19 + ~v20);
      if (v28 <= 6)
      {
        break;
      }

      v30 = v28 + 1;
      v31 = (v28 + 1) & 0x1FFFFFFF8;
      result = v31 + result;
      v29 = v20 + v31;
      v32 = vaddq_s32(vdupq_n_s32(v20), xmmword_1003E3950);
      v33 = vdupq_n_s32(v25);
      v34 = (a4 + 12 * v27);
      v35 = vdupq_lane_s32(*&v26, 0);
      v36 = v31;
      do
      {
        v37 = vmulq_s32(v32, v10);
        v45.val[0] = vmulq_s32(vaddq_s32(v32, v12), v10);
        v45.val[1] = v33;
        v45.val[2] = v35;
        v38 = v34 + 24;
        vst3q_f32(v34, *(&v33 - 1));
        v39 = v34 + 12;
        vst3q_f32(v39, v45);
        v32 = vaddq_s32(v32, v13);
        v34 = v38;
        v36 -= 8;
      }

      while (v36);
      if (v30 != v31)
      {
        goto LABEL_24;
      }

LABEL_26:
      v22 = v15 - v19;
      if (v22 > 0.001)
      {
LABEL_27:
        v43 = a4 + 12 * result;
        *v43 = v19 * a3;
        *(v43 + 4) = v7 * a3;
        if (v22 > 1.0)
        {
          v22 = 1.0;
        }

        if (v16 < v22)
        {
          v22 = v16;
        }

        v44 = v22 / v16;
        result = (result + 1);
        *(v43 + 8) = v44;
      }

LABEL_3:
      v11 = v11 + 1.0;
      if (++v7 == a2)
      {
        return result;
      }
    }

    result = result;
    v29 = v20;
LABEL_24:
    v40 = (a4 + 8 + 12 * result);
    v41 = v19 - v29;
    v42 = a3 * v29;
    do
    {
      *(v40 - 2) = v42;
      *(v40 - 1) = v25;
      ++result;
      *v40 = LODWORD(v26);
      v40 += 3;
      v42 += a3;
      --v41;
    }

    while (v41);
    goto LABEL_26;
  }

  return 0;
}

float32x4_t sub_10033AC38(float32x4_t *a1, float32x4_t a2)
{
  if (a2.f32[0] >= 0.00000011921)
  {
    a2.f32[0] = a2.f32[0] + 3.0;
    v28 = vdupq_lane_s32(*a2.f32, 0);
    a2.f32[1] = a2.f32[0] + -1.0;
    *&a2.u32[2] = vadd_f32(*v28.f32, 0xC0400000C0000000);
    v4 = vnegq_f32(a2);
    v27 = vdupq_n_s64(0x400921FB54442D18uLL);
    __asm { FMOV            V2.2D, #0.25 }

    v24 = vmulq_f64(vmulq_f64(vcvt_hight_f64_f32(v4), v27), _Q2);
    v25 = vmulq_f64(vmulq_f64(vcvtq_f64_f32(*v4.f32), v27), _Q2);
    v26 = _Q2;
    v10 = __sincos_stret(v25.f64[0]);
    v11.f64[0] = v10.__cosval + v10.__sinval * 0.0;
    v12 = vmulq_n_f64(xmmword_1003E9940, v10.__cosval);
    v13.f64[0] = v10.__sinval + v12.f64[0];
    v13.f64[1] = v10.__cosval * -0.707106781 + v10.__sinval * -0.707106781;
    v11.f64[1] = v10.__cosval * -0.707106781 + v10.__sinval * 0.707106781;
    v14 = vdivq_f64(v11, vmulq_f64(v24, v24));
    v15 = vcvt_f32_f64(vdivq_f64(v13, vmulq_f64(v25, v25)));
    *v11.f64 = *v15.i32 + 0.0;
    v16 = *&v15.i32[1];
    v17 = vcvt_hight_f32_f64(v15, v14);
    *&v14.f64[0] = vcvt_f32_f64(v14);
    *v14.f64 = ((*v11.f64 + v16) + *v14.f64) + *(v14.f64 + 1);
    v18 = vnegq_f32(vaddq_f32(v28, xmmword_1003E9950));
    v19 = vmulq_f64(vmulq_f64(vcvt_hight_f64_f32(v18), v27), v26);
    v20 = vmulq_f64(vmulq_f64(vcvtq_f64_f32(*v18.f32), v27), v26);
    v13.f64[1] = v12.f64[1];
    v13.f64[0] = -v10.__cosval;
    v21 = vdivq_f64(vmlaq_n_f64(v13, xmmword_1003E9970, v10.__sinval), vmulq_f64(v19, v19));
    v22 = vcvt_f32_f64(vdivq_f64(vmlaq_n_f64(v12, xmmword_1003E9960, v10.__sinval), vmulq_f64(v20, v20)));
    *v14.f64 = *v14.f64 + *v22.i32;
    LODWORD(v20.f64[0]) = v22.i32[1];
    v23 = vcvt_hight_f32_f64(v22, v21);
    *&v21.f64[0] = vcvt_f32_f64(v21);
    *v21.f64 = 1.0 / (((*v14.f64 + *v20.f64) + *v21.f64) + *(v21.f64 + 1));
    result = vmulq_n_f32(v23, *v21.f64);
    *a1 = vmulq_n_f32(v17, *v21.f64);
    a1[1] = result;
  }

  else
  {
    result.i64[0] = 0;
    *a1 = 0u;
    a1[1] = 0u;
    a1->i32[3] = 1065353216;
  }

  return result;
}