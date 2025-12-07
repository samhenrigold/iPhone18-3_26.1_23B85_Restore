void sub_DB3E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(a47);
  }

  sub_1959728(&STACK[0x2830]);
  sub_CDF878(v53 - 208);
  sub_60A84C(&STACK[0x6F0]);
  sub_D3C228(&STACK[0x530]);
  sub_D1D638(&STACK[0x4970]);
  sub_D130AC(&STACK[0x5BC8]);
  sub_14CA828(&STACK[0x4D08]);
  sub_14CA828(&STACK[0x4E08]);
  sub_CD6274(&STACK[0x50E8]);
  sub_D40D4C(&STACK[0x5120]);
  sub_D71160(&STACK[0x53E8]);
  sub_5C010(&STACK[0x5400]);
  sub_D9F480(&STACK[0x5440]);
  sub_1A104(&STACK[0x5648]);
  sub_616CD4(&STACK[0x5660]);
  sub_44FD90(&STACK[0x5688]);
  sub_419F70(&STACK[0x56A0]);
  sub_419F70(&STACK[0x5720]);
  *v52 = &STACK[0x57A8];
  sub_DC1694(&STACK[0x4970]);
  sub_454784(&STACK[0x57C0]);
  sub_454784(&STACK[0x57F0]);
  sub_34BE0(&STACK[0x5820]);
  sub_44D36C(&STACK[0x5838]);
  sub_5287C0(&STACK[0x58E8]);
  _Unwind_Resume(a1);
}

uint64_t sub_DB448C(uint64_t a1, uint64_t *a2, unsigned int *a3, const std::error_condition *a4, uint64_t a5)
{
  sub_7C6B8(4, a4, *a2);
  v18 = 18;
  strcpy(__p, "InternalError[All]");
  sub_7BDA0(4, __p, *a2);
  if (v18 < 0)
  {
    operator delete(*__p);
    if (!sub_7E7E4(3u))
    {
      goto LABEL_29;
    }
  }

  else if (!sub_7E7E4(3u))
  {
    goto LABEL_29;
  }

  sub_19594F8(__p);
  sub_DE8554(*a3, __dst);
  if ((v28 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v11 = v28;
  }

  else
  {
    v11 = __dst[1];
  }

  sub_4A5C(__p, v10, v11);
  if ((v28 & 0x80000000) == 0)
  {
    v12 = v26;
    if ((v26 & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v14 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v14 = v22;
    }

    v15 = __src;
    v13 = v14 - __src;
    if (v14 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_31:
      sub_3244();
    }

LABEL_19:
    if (v13 >= 0x17)
    {
      operator new();
    }

    v28 = v13;
    if (v13)
    {
      memmove(__dst, v15, v13);
    }

    goto LABEL_24;
  }

  operator delete(__dst[0]);
  v12 = v26;
  if ((v26 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if ((v12 & 8) != 0)
  {
    v15 = v19;
    v13 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  v13 = 0;
  v28 = 0;
LABEL_24:
  *(__dst + v13) = 0;
  sub_7E854(__dst, 3u);
  if (v28 < 0)
  {
    operator delete(__dst[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&__p[16]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_29:
  sub_DB6830(__p, 0, a4, a2[1], a2[2], a5);
  sub_D34970(__p, a1);
  return sub_D7208C(__p);
}

void sub_DB47C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 81) < 0)
  {
    operator delete(*(v9 - 104));
    sub_1959728(&a9);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a9);
  _Unwind_Resume(a1);
}

void sub_DB4828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DB4844(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v21[0] = *a2;
  LODWORD(v21[1]) = 2;
  __p[0] = v4;
  LOBYTE(__p[1]) = sub_E88F70(v21);
  v23 = v5;
  sub_D11BD4(v21, v26);
  if ((v26[0] & 1) == 0)
  {
    LODWORD(v21[0]) = 4;
    sub_DB448C(v25, *(a2 + 24), v21, &v27, *(a2 + 32));
    sub_14CA828(v25);
    v32.n128_u64[0] = 1;
    v32.n128_u64[1] = &off_2669FE0;
    sub_434934(v21, &v32);
    *a1 = 0;
    v10 = *__p;
    *(a1 + 8) = *v21;
    *(a1 + 24) = v10;
    *(a1 + 40) = v23;
    v11 = v24;
    goto LABEL_24;
  }

  sub_D73D78(&v29, v21);
  sub_7C9C0(4, v21, *(a2 + 40));
  v6 = __p[1];
  if (__p[1])
  {
    v7 = v23;
    v8 = __p[1];
    if (v23 != __p[1])
    {
      do
      {
        v9 = *(v7 - 25);
        v7 -= 6;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p[1];
    }

    v23 = v6;
    operator delete(v8);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v21[0]);
  }

  v12 = *(a2 + 48);
  if (v12 != &v27)
  {
    sub_CD80CC(v12, *&v27.__val_, v27.__cat_, 0x6FB586FB586FB587 * ((v27.__cat_ - *&v27.__val_) >> 3));
  }

  v13 = v26[0];
  *a1 = v26[0];
  v14 = (a1 + 8);
  if (v13 != 1)
  {
    *v14 = v27;
    sub_435834((a1 + 24), &v28);
    v11 = v30;
LABEL_24:
    *(a1 + 48) = v11;
    if (v26[0] != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  *&v14->__val_ = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_D71E14(v14, *&v27.__val_, v27.__cat_, 0x6FB586FB586FB587 * ((v27.__cat_ - *&v27.__val_) >> 3));
  v15 = v30;
  *(a1 + 32) = v29;
  *(a1 + 48) = v15;
  *(a1 + 64) = v31[0];
  *(a1 + 73) = *(v31 + 9);
  if (v26[0] != 1)
  {
LABEL_17:
    v16 = v28;
    if (!v28)
    {
      return;
    }

    v17 = v29;
    v18 = v28;
    if (v29 != v28)
    {
      do
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 24));
        }

        v17 -= 32;
      }

      while (v17 != v16);
      v18 = v28;
    }

    *&v29 = v16;
    goto LABEL_32;
  }

LABEL_25:
  v19 = *&v27.__val_;
  if (!*&v27.__val_)
  {
    return;
  }

  cat = v27.__cat_;
  v18 = *&v27.__val_;
  if (v27.__cat_ != *&v27.__val_)
  {
    do
    {
      cat -= 55;
      sub_44FDEC(cat);
    }

    while (cat != v19);
    v18 = *&v27.__val_;
  }

  v27.__cat_ = v19;
LABEL_32:
  operator delete(v18);
}

void sub_DB4AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9DA0(&a9);
  sub_D130AC(v9 - 160);
  _Unwind_Resume(a1);
}

double sub_DB4B38(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a3)
  {
    sub_DB6C90(v8, *a2, a2[1], a2[2], a2[3]);
  }

  *v8 = *(a3 + 8);
  sub_435834(&v9, (a3 + 24));
  v5 = *(a3 + 48);
  *a1 = 0;
  result = *v8;
  v7 = v9;
  *(a1 + 8) = *v8;
  *(a1 + 24) = v7;
  *(a1 + 40) = v10;
  *(a1 + 48) = v5;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  *(a1 + 912) = 0;
  *(a1 + 904) = 0;
  return result;
}

void sub_DB4E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9DA0(&a9);
  sub_D1D638(v9);
  _Unwind_Resume(a1);
}

void sub_DB4E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*a3 & 1) == 0)
  {
    *v57 = *(a3 + 8);
    sub_435834(__p, (a3 + 24));
    v25 = *(a3 + 48);
    *a1 = 0;
    v26 = *__p;
    *(a1 + 8) = *v57;
    *(a1 + 24) = v26;
    *(a1 + 40) = v59;
    *(a1 + 48) = v25;
    return;
  }

  if (*a2 != a3 + 112)
  {
    sub_DB710C(*a2, *(a3 + 112), *(a3 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 120) - *(a3 + 112)) >> 3));
  }

  if (sub_4EE128(*(a2 + 8)))
  {
    v6 = *(a2 + 16);
    v8 = *v6;
    v7 = v6[1];
    if (v7 != *v6)
    {
      do
      {
        v7 = sub_44FDEC(v7 - 440);
      }

      while (v7 != v8);
    }

    v10 = *(a3 + 136);
    v9 = *(a3 + 144);
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((v9 - v10) >> 4);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = v9 == v10;
    v6[1] = v8;
    if (v9 == v10)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    if (v15 != 1)
    {
      v29 = 1;
      v30 = 464;
      do
      {
        nullsub_1();
        v33 = sub_F69688(*v32 + 552 * (v29 >> 1));
        if (*v33 != -1 || *(v33 + 2) != 3)
        {
          v35 = (*(a3 + 136) + v30);
          v36 = (v35 - 56);
          v37 = *(a2 + 16);
          v38 = *(v37 + 8);
          if (v38 >= *(v37 + 16))
          {
            v31 = sub_DB7378(*(a2 + 16), v36, v35);
          }

          else
          {
            sub_DB7694(*(v37 + 8), v36, *v35);
            v31 = (v38 + 440);
            *(v37 + 8) = v38 + 440;
          }

          *(v37 + 8) = v31;
        }

        v29 += 2;
        v30 += 480;
      }

      while (v15 != v29);
    }
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  v82 = sub_CE9DE4(&v81);
  sub_F74004((v82 - 24), *(a2 + 24), 1);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v57[0] = &v81;
  v19 = sub_3B6890(v18);
  v20 = *v19;
  LODWORD(__p[0]) = *(v19 + 8);
  v57[1] = v20;
  BYTE4(__p[0]) = sub_E7C414(v16);
  __p[1] = v17;
  LOBYTE(v59) = 1;
  v60 = v18;
  sub_D01A24(v57, v76);
  if (v76[0])
  {
    BYTE7(v47) = 9;
    strcpy(v46, "UserRoute");
    sub_DAB314(&v80, v57);
    sub_7CA38(4, v46, v57, *(a2 + 72));
    v21 = __p[1];
    if (__p[1])
    {
      v22 = v59;
      v23 = __p[1];
      if (v59 != __p[1])
      {
        do
        {
          v24 = *(v22 - 25);
          v22 -= 6;
          if (v24 < 0)
          {
            operator delete(*v22);
          }
        }

        while (v22 != v21);
        v23 = __p[1];
      }

      v59 = v21;
      operator delete(v23);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v57[0]);
      if ((SBYTE7(v47) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else if ((SBYTE7(v47) & 0x80000000) == 0)
    {
LABEL_39:
      v39 = sub_FF3D04(*(a2 + 32), *(a2 + 40), 3);
      v44 = *(a2 + 40);
      v40 = sub_6910B0();
      v41 = sub_394BD0();
      v42 = *(a2 + 16);
      sub_E8041C(*(a2 + 32), v46);
      v43 = sub_E89654(*(a2 + 32));
      v57[0] = &v81;
      v57[1] = &v77;
      __p[0] = v79;
      __p[1] = (v39 | 0x10);
      LODWORD(v59) = v40;
      BYTE4(v59) = v41;
      v60 = v42;
      v63 = v48;
      *v64 = *v49;
      *&v64[15] = *&v49[15];
      v61 = *v46;
      v62 = v47;
      v66 = 0;
      v65 = 0;
      v67 = 0;
      if (v51 != v50)
      {
        if (((v51 - v50) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v68 = v52;
      v69 = v53;
      v70 = v54;
      v71 = v55;
      sub_81988(v72, &v56);
      v73 = v44;
      v72[3] = v43;
      v74 = 0;
      if (v56)
      {
        operator delete(v56);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      sub_D3A150(v57, a1);
      if (*a1)
      {
        v47 = 0u;
        v48 = 0u;
        *v46 = 0u;
        operator new();
      }

      LODWORD(v46[0]) = 13;
      sub_DB448C(v45, *(a2 + 56), v46, (a1 + 8), *(a2 + 64));
      sub_14CA828(v45);
      if (v72[0])
      {
        operator delete(v72[0]);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      goto LABEL_55;
    }

    operator delete(v46[0]);
    goto LABEL_39;
  }

  LODWORD(v57[0]) = 10;
  sub_DB448C(v75, *(a2 + 56), v57, &v77, *(a2 + 64));
  sub_14CA828(v75);
  *v57 = v77;
  sub_435834(__p, &v78);
  v27 = v79[4];
  *a1 = 0;
  v28 = *__p;
  *(a1 + 8) = *v57;
  *(a1 + 24) = v28;
  *(a1 + 40) = v59;
  *(a1 + 48) = v27;
LABEL_55:
  sub_DB6E14(v76);
  v57[0] = &v81;
  sub_DC1694(v57);
}

void sub_DB5568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1A104(&a43);
  sub_D3C228(v65);
  sub_D7A354(&a65);
  sub_DB6E14(v66 - 216);
  a65 = (v66 - 128);
  sub_DC1694(&a65);
  _Unwind_Resume(a1);
}

double sub_DB5674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    sub_E89678(&v8);
  }

  v8 = *(a3 + 8);
  sub_435834(&v9, (a3 + 24));
  v5 = *(a3 + 48);
  *a1 = 0;
  result = *&v8;
  v7 = v9;
  *(a1 + 8) = v8;
  *(a1 + 24) = v7;
  *(a1 + 40) = v10;
  *(a1 + 48) = v5;
  return result;
}

void sub_DB5794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  sub_528AB4(va);
  _Unwind_Resume(a1);
}

void sub_DB57A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    sub_456238(*a2);
    v6 = *(a2 + 16);
    *&v11 = 0;
    v7 = v6[1];
    if (v7 != *v6)
    {
      if ((0x6FB586FB586FB587 * ((v7 - *v6) >> 3)) < 0x94F2094F2094F3)
      {
        operator new();
      }

      sub_1794();
    }

    sub_E89678(&v11 + 8);
  }

  *v10 = *(a3 + 8);
  sub_435834(&v11, (a3 + 24));
  v8 = *(a3 + 48);
  *a1 = 0;
  v9 = v11;
  *(a1 + 8) = *v10;
  *(a1 + 24) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = v8;
}

void sub_DB5A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_9DA0(&a15);
  sub_DB5EB8(v52);
  sub_DBDBA0(va);
  _Unwind_Resume(a1);
}

void sub_DB5A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_DBDBA0(va);
  _Unwind_Resume(a1);
}

void sub_DB5AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_77B480(v53 + 24);
  sub_44FD90(&a53);
  _Unwind_Resume(a1);
}

void sub_DB5AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_4EA79C(va);
  _Unwind_Resume(a1);
}

void sub_DB5AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (v14)
  {
    v16 = v13 - 440;
    v17 = -v14;
    do
    {
      v16 = sub_44FDEC(v16) - 440;
      v17 += 440;
    }

    while (v17);
  }

  sub_4EA79C(va);
  _Unwind_Resume(a1);
}

void sub_DB5B1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (*a5)
  {
    if ((atomic_load_explicit(&qword_27B8868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B8868))
    {
      sub_DBE97C(&unk_27B6988);
      __cxa_guard_release(&qword_27B8868);
    }

    v13 = *a6;
    v12 = a6 + 8;
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_27B6988;
    }

    v15 = *a2;
    v26 = *(a2 + 1);
    v16 = a2[3];
    if (*a4 == 1)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v18 = *(a4 + 32);
      v17 = *(a4 + 40);
      if (v17 != v18)
      {
        if (0x86BCA1AF286BCA1BLL * ((v17 - v18) >> 3) < 0x1AF286BCA1AF287)
        {
          operator new();
        }

        sub_1794();
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
    }

    v22 = a2[4];
    v23 = a2[5];
    v24 = a2[6];
    v25 = v21 & *(a4 + 56) & 1;
    *&v30 = v15;
    *(&v30 + 1) = a3;
    *&v31 = a5 + 8;
    *(&v31 + 1) = v14;
    v32 = v16;
    v33 = &v27;
    v34 = v22;
    v35 = v24;
    v36 = v26;
    v37 = v25;
    v38 = v23;
    sub_E89678(&v39);
  }

  v30 = *(a5 + 8);
  sub_435834(&v31, (a5 + 24));
  v19 = *(a5 + 48);
  *a1 = 0;
  v20 = v31;
  *(a1 + 8) = v30;
  *(a1 + 24) = v20;
  *(a1 + 40) = v32;
  *(a1 + 48) = v19;
}

void sub_DB5E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  sub_9DA0(va);
  sub_CD15B8(v48);
  _Unwind_Resume(a1);
}

void sub_DB5E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DB5EB8(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8464);
    if (v2)
    {
      *(a1 + 8472) = v2;
      operator delete(v2);
    }

    sub_60B2B4(a1 + 8);
    return a1;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    return a1;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 24);
  if (v5 != v4)
  {
    do
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 24));
      }

      v5 -= 32;
    }

    while (v5 != v4);
    v6 = *(a1 + 24);
  }

  *(a1 + 32) = v4;
  operator delete(v6);
  return a1;
}

void sub_DB5F64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*a3)
  {
    v37 = sub_7EA60(a2[1]);
    LODWORD(v38) = 2;
    v8 = *a2;
    HIBYTE(__p[2]) = 17;
    strcpy(__p, "RequestLatency_ms");
    v41[0] = __p;
    v9 = sub_A1D1C(v8, __p, &unk_229EB70, v41);
    v10 = *(v9 + 12);
    if (v10 == -1)
    {
      if (v38 == -1)
      {
        goto LABEL_8;
      }
    }

    else if (v38 == -1)
    {
      v11 = v9;
      (off_2673EC8[v10])(v41, v9 + 5);
      *(v11 + 12) = -1;
      goto LABEL_8;
    }

    v41[0] = (v9 + 5);
    (off_2673F10[v38])(v41);
LABEL_8:
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      v14 = v38;
      if (v38 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = v38;
      if (v38 == -1)
      {
LABEL_13:
        v15 = a2[2];
        v16 = sub_3B2E6C(a2[3]);
        sub_2C1B08(__p, v16);
        v28 = 1;
        sub_E855B8(v15, __p, &v37);
        if (v28 != 1)
        {
          goto LABEL_17;
        }

        if (v27 < 0)
        {
          operator delete(v26);
          if ((v25 & 0x80000000) == 0)
          {
LABEL_16:
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
              goto LABEL_17;
            }

LABEL_20:
            operator delete(__p[0]);
LABEL_17:
            v17 = sub_3B6890(a2[3]);
            v18 = *v17;
            v19 = *(v17 + 8);
            v20 = sub_E800B8(a2[2]);
            v23 = *(a2 + 3);
            v21 = a2[5];
            v22 = *a2;
            sub_D71F30(__p, &v37);
            v29 = v39;
            v30 = v40;
            v31 = a3 + 8;
            v32 = vextq_s8(v23, v23, 8uLL);
            v33 = v18;
            v34 = v19;
            memset(v35, 0, 24);
            sub_353184(v35, *v21, v21[1], 0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 3));
            v35[3] = v20 & 0xFFFFFFFFFFLL;
            v35[4] = a4 + 8;
            sub_5ADDC(&v36, v22);
            sub_CFDD00(__p);
          }
        }

        else if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        operator delete(__p[3]);
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    (off_2673EC8[v14])(__p, &v37);
    goto LABEL_13;
  }

  *__p = *(a3 + 8);
  sub_435834(&__p[2], (a3 + 24));
  v12 = *(a3 + 48);
  *a1 = 0;
  v13 = *&__p[2];
  *(a1 + 8) = *__p;
  *(a1 + 24) = v13;
  *(a1 + 40) = __p[4];
  *(a1 + 48) = v12;
}

void sub_DB630C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_9DA0(&a11);
  sub_DB63FC(v51);
  sub_D71D0C(va);
  _Unwind_Resume(a1);
}

void sub_DB6340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_DBFC60(&a11);
  sub_D71D0C(va);
  _Unwind_Resume(a1);
}

void sub_DB635C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_1A104((v51 + 248));
  sub_D71D0C(&a11);
  sub_D71D0C(va);
  _Unwind_Resume(a1);
}

void sub_DB6388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_D71D0C(va);
  _Unwind_Resume(a1);
}

void sub_DB639C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_D71D0C(va);
  _Unwind_Resume(a1);
}

void sub_DB63B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_D71D0C(va);
  _Unwind_Resume(a1);
}

void sub_DB63C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_D71D80(va);
  _Unwind_Resume(a1);
}

void sub_DB63D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_5BC80(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_DB63FC(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_14CA828((a1 + 264));
    sub_14CA828((a1 + 8));
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_DB64A0(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (!v2)
    {
      return a1;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 == v2)
    {
      goto LABEL_63;
    }

    while (1)
    {
      v6 = *(v3 - 3);
      if (v6)
      {
        v7 = *(v3 - 2);
        v8 = *(v3 - 3);
        if (v7 != v6)
        {
          do
          {
            v10 = *(v7 - 4);
            if (v10)
            {
              do
              {
                v11 = *v10;
                operator delete(v10);
                v10 = v11;
              }

              while (v11);
            }

            v12 = *(v7 - 6);
            *(v7 - 6) = 0;
            if (v12)
            {
              operator delete(v12);
            }

            v13 = *(v7 - 9);
            if (v13)
            {
              do
              {
                v14 = *v13;
                operator delete(v13);
                v13 = v14;
              }

              while (v14);
            }

            v15 = *(v7 - 11);
            *(v7 - 11) = 0;
            if (v15)
            {
              operator delete(v15);
            }

            v16 = v7 - 14;
            v17 = *(v7 - 14);
            if (v17)
            {
              v18 = *(v7 - 13);
              v9 = *(v7 - 14);
              if (v18 != v17)
              {
                v19 = *(v7 - 13);
                do
                {
                  v21 = *(v19 - 5);
                  v19 -= 40;
                  v20 = v21;
                  if (v21)
                  {
                    *(v18 - 4) = v20;
                    operator delete(v20);
                  }

                  v18 = v19;
                }

                while (v19 != v17);
                v9 = *v16;
              }

              *(v7 - 13) = v17;
              operator delete(v9);
            }

            v7 -= 14;
          }

          while (v16 != v6);
          v8 = *(v3 - 3);
        }

        *(v3 - 2) = v6;
        operator delete(v8);
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
        v22 = *(v3 - 16);
        if (v22)
        {
LABEL_35:
          v25 = *(v3 - 15);
          v26 = v22;
          if (v25 != v22)
          {
            do
            {
              v25 = sub_3EEA68(v25 - 1096);
            }

            while (v25 != v22);
            v26 = *(v3 - 16);
          }

          *(v3 - 15) = v22;
          operator delete(v26);
          v23 = v3 - 19;
          v24 = *(v3 - 19);
          if (!v24)
          {
            goto LABEL_7;
          }

LABEL_39:
          v27 = *(v3 - 18);
          v5 = v24;
          if (v27 != v24)
          {
            do
            {
              v28 = *(v27 - 3);
              if (v28)
              {
                v29 = *(v27 - 2);
                v30 = *(v27 - 3);
                if (v29 != v28)
                {
                  do
                  {
                    v31 = v29 - 32;
                    v32 = *(v29 - 2);
                    if (v32 != -1)
                    {
                      (off_2673E98[v32])(&v38, v29 - 32);
                    }

                    *(v29 - 2) = -1;
                    v29 -= 32;
                  }

                  while (v31 != v28);
                  v30 = *(v27 - 3);
                }

                *(v27 - 2) = v28;
                operator delete(v30);
              }

              v33 = *(v27 - 8);
              if (v33 != -1)
              {
                (off_2673E98[v33])(&v39, v27 - 7);
              }

              v34 = v27 - 10;
              *(v27 - 8) = -1;
              if (*(v27 - 57) < 0)
              {
                operator delete(*v34);
              }

              v27 -= 10;
            }

            while (v34 != v24);
            v5 = *v23;
          }

          *(v3 - 18) = v24;
          operator delete(v5);
          goto LABEL_7;
        }
      }

      else
      {
        v22 = *(v3 - 16);
        if (v22)
        {
          goto LABEL_35;
        }
      }

      v23 = v3 - 19;
      v24 = *(v3 - 19);
      if (v24)
      {
        goto LABEL_39;
      }

LABEL_7:
      v3 = v23;
      if (v23 == v2)
      {
        v4 = *(a1 + 8);
LABEL_63:
        *(a1 + 16) = v2;
LABEL_64:
        operator delete(v4);
        return a1;
      }
    }
  }

  v35 = *(a1 + 24);
  if (v35)
  {
    v36 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v36 != v35)
    {
      do
      {
        if (*(v36 - 1) < 0)
        {
          operator delete(*(v36 - 24));
        }

        v36 -= 32;
      }

      while (v36 != v35);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v35;
    goto LABEL_64;
  }

  return a1;
}

uint64_t sub_DB6790(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_DC1D58(a1, (a1 + 8));
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_DB6830(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = sub_3B2E6C(a4);
  sub_2C1B08(v57, v12);
  v63 = 1;
  v25 = sub_E73488(a5, v57);
  v13 = sub_3B2E6C(a4);
  sub_2C1B08(v50, v13);
  v56 = 1;
  v14 = sub_E73A88(a5, v50);
  v15 = sub_3B6890(a4);
  v44[0] = 0;
  sub_E6359C(v47, a4, v44);
  v45 = a5;
  v46 = 2;
  sub_E63864(v47, &v45, &v48);
  v16 = sub_E8305C(a5);
  sub_E7BE68(a5, v44);
  v17 = sub_4EF388(v44);
  v18 = sub_3B2E6C(a4);
  sub_2C1B08(v26, v18);
  v32 = 1;
  sub_E854F8(a5, v26, &v33);
  *a1 = a4;
  *(a1 + 8) = a2;
  *(a1 + 12) = v25;
  *(a1 + 16) = v14;
  v19 = *v15;
  v20 = *(v15 + 8);
  *(a1 + 32) = 0;
  *(a1 + 28) = v20;
  *(a1 + 20) = v19;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_D71E14(a1 + 32, v48, v49, 0x6FB586FB586FB587 * ((v49 - v48) >> 3));
  *(a1 + 56) = v16;
  *(a1 + 60) = v17;
  sub_D71F30(a1 + 64, &v33);
  *(a1 + 264) = *a3;
  sub_435834((a1 + 280), (a3 + 16));
  *(a1 + 304) = *(a3 + 40);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 312) = *a6;
  *(a1 + 328) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v32 == 1)
  {
    if (v31 < 0)
    {
      operator delete(v30);
      if ((v29 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v27 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_31:
        operator delete(v26[0]);
        sub_5287C0(v44);
        v21 = v48;
        if (!v48)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

    else if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v28);
    if (v27 < 0)
    {
      goto LABEL_31;
    }
  }

LABEL_15:
  sub_5287C0(v44);
  v21 = v48;
  if (!v48)
  {
    goto LABEL_20;
  }

LABEL_16:
  v22 = v49;
  v23 = v21;
  if (v49 != v21)
  {
    do
    {
      v22 = sub_44FDEC(v22 - 440);
    }

    while (v22 != v21);
    v23 = v48;
  }

  v49 = v21;
  operator delete(v23);
LABEL_20:
  if (v56 != 1)
  {
    goto LABEL_24;
  }

  if (v55 < 0)
  {
    operator delete(v54);
    if ((v53 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v51 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_35:
      operator delete(v50[0]);
      if (v63 != 1)
      {
        return a1;
      }

      goto LABEL_25;
    }
  }

  else if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v52);
  if (v51 < 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  if (v63 != 1)
  {
    return a1;
  }

LABEL_25:
  if (v62 < 0)
  {
    operator delete(v61);
    if ((v60 & 0x80000000) == 0)
    {
LABEL_27:
      if (v58 < 0)
      {
        goto LABEL_39;
      }

      return a1;
    }
  }

  else if ((v60 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v59);
  if (v58 < 0)
  {
LABEL_39:
    operator delete(v57[0]);
  }

  return a1;
}

void sub_DB6BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_D71D0C(v46 + 64);
  sub_44FD90(v47);
  sub_D71D0C(&a21);
  sub_D71D80(&a11);
  sub_5287C0(&a46);
  sub_44FD90(&STACK[0x3F8]);
  sub_D71D80(v48 - 256);
  sub_D71D80(v48 - 176);
  _Unwind_Resume(a1);
}

void sub_DB6C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = sub_394BD0();
  *(a1 + 4) = sub_6910B0();
  *(a1 + 8) = sub_E7C414(a2);
  sub_E89434(a2, (a1 + 16));
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  sub_E89450(a2, (a1 + 56));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3B9ACA0000000000;
  sub_E8041C(a2, a1 + 112);
  *(a1 + 288) = sub_E89654(a2);
  *(a1 + 296) = a3;
  sub_E882B4(a2, (a1 + 304));
  sub_E889B4(a2, (a1 + 328));
  sub_E88C70(a2, (a1 + 352));
  *(a1 + 384) = a4;
  *(a1 + 392) = a5;
  *(a1 + 400) = 0x1000000;
  sub_D75D50(a1);
}

void sub_DB6D84(_Unwind_Exception *a1)
{
  v4 = *(v1 + 352);
  if (v4)
  {
    *(v1 + 360) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 328);
  if (v5)
  {
    *(v1 + 336) = v5;
    operator delete(v5);
  }

  sub_4E3C94((v1 + 304));
  sub_44D36C((v2 + 32));
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  sub_1A104((v1 + 56));
  sub_1A104((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_DB6E14(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);
      if (v3 != v2)
      {
        v5 = *(a1 + 40);
        do
        {
          v8 = *(v5 - 3);
          v5 -= 3;
          v7 = v8;
          if (v8)
          {
            v9 = *(v3 - 2);
            v6 = v7;
            if (v9 != v7)
            {
              do
              {
                v11 = *(v9 - 3);
                if (v11)
                {
                  v12 = *(v9 - 2);
                  v13 = *(v9 - 3);
                  if (v12 != v11)
                  {
                    do
                    {
                      v14 = *(v12 - 5);
                      if (v14)
                      {
                        *(v12 - 4) = v14;
                        operator delete(v14);
                      }

                      v12 -= 56;
                    }

                    while (v12 != v11);
                    v13 = *(v9 - 3);
                  }

                  *(v9 - 2) = v11;
                  operator delete(v13);
                }

                v15 = v9 - 6;
                v16 = *(v9 - 6);
                if (v16)
                {
                  v17 = *(v9 - 5);
                  v10 = *(v9 - 6);
                  if (v17 != v16)
                  {
                    do
                    {
                      v18 = *(v17 - 9);
                      if (v18)
                      {
                        *(v17 - 8) = v18;
                        operator delete(v18);
                      }

                      v19 = *(v17 - 12);
                      if (v19)
                      {
                        *(v17 - 11) = v19;
                        operator delete(v19);
                      }

                      v17 -= 136;
                    }

                    while (v17 != v16);
                    v10 = *v15;
                  }

                  *(v9 - 5) = v16;
                  operator delete(v10);
                }

                v9 -= 6;
              }

              while (v15 != v7);
              v6 = *v5;
            }

            *(v3 - 2) = v7;
            operator delete(v6);
          }

          v3 = v5;
        }

        while (v5 != v2);
        v4 = *(a1 + 32);
      }

      *(a1 + 40) = v2;
      operator delete(v4);
    }

    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = *(a1 + 16);
      v22 = *(a1 + 8);
      if (v24 != v23)
      {
        v25 = *(a1 + 16);
        do
        {
          v28 = *(v25 - 3);
          v25 -= 3;
          v27 = v28;
          if (v28)
          {
            v29 = *(v24 - 2);
            v26 = v27;
            if (v29 != v27)
            {
              v30 = *(v24 - 2);
              do
              {
                v33 = *(v30 - 3);
                v30 -= 3;
                v32 = v33;
                if (v33)
                {
                  v34 = *(v29 - 2);
                  v31 = v32;
                  if (v34 != v32)
                  {
                    v35 = v34 - 128;
                    do
                    {
                      v37 = *(v35 + 72);
                      if (v37)
                      {
                        *(v35 + 80) = v37;
                        operator delete(v37);
                      }

                      v38 = *(v35 + 48);
                      if (v38)
                      {
                        *(v35 + 56) = v38;
                        operator delete(v38);
                      }

                      v39 = *(v35 + 24);
                      if (v39)
                      {
                        *(v35 + 32) = v39;
                        operator delete(v39);
                      }

                      v40 = *v35;
                      if (*v35)
                      {
                        *(v35 + 8) = v40;
                        operator delete(v40);
                      }

                      v41 = *(v35 - 24);
                      if (v41)
                      {
                        *(v35 - 16) = v41;
                        operator delete(v41);
                      }

                      v42 = *(v35 - 48);
                      if (v42)
                      {
                        *(v35 - 40) = v42;
                        operator delete(v42);
                      }

                      v43 = *(v35 - 72);
                      if (v43)
                      {
                        *(v35 - 64) = v43;
                        operator delete(v43);
                      }

                      v44 = *(v35 - 96);
                      if (v44)
                      {
                        *(v35 - 88) = v44;
                        operator delete(v44);
                      }

                      v45 = *(v35 - 120);
                      if (v45)
                      {
                        *(v35 - 112) = v45;
                        operator delete(v45);
                      }

                      v46 = *(v35 - 144);
                      if (v46)
                      {
                        *(v35 - 136) = v46;
                        operator delete(v46);
                      }

                      v36 = (v35 - 160);
                      v35 -= 288;
                    }

                    while (v36 != v32);
                    v31 = *v30;
                  }

                  *(v29 - 2) = v32;
                  operator delete(v31);
                }

                v29 = v30;
              }

              while (v30 != v27);
              v26 = *v25;
            }

            *(v24 - 2) = v27;
            operator delete(v26);
          }

          v24 = v25;
        }

        while (v25 != v23);
        v22 = *(a1 + 8);
      }

      *(a1 + 16) = v23;
LABEL_78:
      operator delete(v22);
    }
  }

  else
  {
    v20 = *(a1 + 24);
    if (v20)
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 24);
      if (v21 != v20)
      {
        do
        {
          if (*(v21 - 1) < 0)
          {
            operator delete(*(v21 - 24));
          }

          v21 -= 32;
        }

        while (v21 != v20);
        v22 = *(a1 + 24);
      }

      *(a1 + 32) = v20;
      goto LABEL_78;
    }
  }

  return a1;
}

void sub_DB710C(char ***a1, void *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v15 - v8) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_146EC(v8, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
        }

        v5 += 24;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 3;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_146EC(v8, *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 2);
      }

      v18 += 24;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_49D948(a1, (v5 + v16), a3, v15);
}

void *sub_DB7378(void **a1, uint64_t a2, unsigned int *a3)
{
  v3 = 0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x94F2094F2094F2)
  {
    sub_1794();
  }

  if (0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6FB586FB586FB587 * ((a1[2] - *a1) >> 3)) >= 0x4A7904A7904A79)
  {
    v6 = 0x94F2094F2094F2;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x94F2094F2094F2)
    {
      operator new();
    }

    sub_1808();
  }

  v25 = 8 * ((a1[1] - *a1) >> 3);
  sub_DB7694(v25, a2, *a3);
  v7 = (440 * v3 + 440);
  v8 = *a1;
  v9 = a1[1];
  v10 = (440 * v3 + *a1 - v9);
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = (v25 + *a1 - v9);
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      v15 = *(v11 + 3);
      *(v12 + 63) = *(v11 + 63);
      *(v12 + 2) = v14;
      *(v12 + 3) = v15;
      *(v12 + 1) = v13;
      *(v12 + 10) = 0;
      *(v12 + 11) = 0;
      *(v12 + 9) = 0;
      *(v12 + 72) = *(v11 + 72);
      *(v12 + 11) = *(v11 + 11);
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      *(v11 + 11) = 0;
      v16 = *(v11 + 6);
      v12[112] = v11[112];
      *(v12 + 6) = v16;
      v17 = *(v11 + 120);
      *(v12 + 136) = *(v11 + 136);
      *(v12 + 120) = v17;
      *(v12 + 19) = *(v11 + 19);
      *(v12 + 10) = *(v11 + 10);
      *(v11 + 19) = 0;
      *(v11 + 20) = 0;
      *(v11 + 21) = 0;
      v18 = *(v11 + 22);
      *(v12 + 46) = *(v11 + 46);
      *(v12 + 22) = v18;
      v19 = *(v11 + 12);
      *(v12 + 26) = *(v11 + 26);
      *(v12 + 12) = v19;
      *(v11 + 25) = 0;
      *(v11 + 26) = 0;
      *(v11 + 24) = 0;
      v20 = *(v11 + 216);
      *(v12 + 29) = *(v11 + 29);
      *(v12 + 216) = v20;
      *(v11 + 28) = 0;
      *(v11 + 29) = 0;
      *(v11 + 27) = 0;
      v21 = *(v11 + 15);
      *(v12 + 32) = *(v11 + 32);
      *(v12 + 15) = v21;
      *(v11 + 30) = 0;
      *(v11 + 31) = 0;
      *(v11 + 32) = 0;
      v22 = *(v11 + 264);
      *(v12 + 35) = *(v11 + 35);
      *(v12 + 264) = v22;
      *(v11 + 33) = 0;
      *(v11 + 34) = 0;
      *(v11 + 35) = 0;
      v23 = *(v11 + 38);
      *(v12 + 18) = *(v11 + 18);
      *(v12 + 38) = v23;
      *(v12 + 39) = 0;
      *(v12 + 40) = 0;
      *(v12 + 41) = 0;
      *(v12 + 39) = *(v11 + 39);
      *(v12 + 20) = *(v11 + 20);
      *(v11 + 39) = 0;
      *(v11 + 40) = 0;
      *(v11 + 41) = 0;
      *(v12 + 42) = 0;
      *(v12 + 43) = 0;
      *(v12 + 44) = 0;
      *(v12 + 21) = *(v11 + 21);
      *(v12 + 44) = *(v11 + 44);
      *(v11 + 42) = 0;
      *(v11 + 43) = 0;
      *(v11 + 44) = 0;
      *(v12 + 45) = 0;
      *(v12 + 46) = 0;
      *(v12 + 47) = 0;
      *(v12 + 45) = *(v11 + 45);
      *(v12 + 23) = *(v11 + 23);
      *(v11 + 46) = 0;
      *(v11 + 47) = 0;
      *(v11 + 45) = 0;
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 51) = 0;
      *(v12 + 52) = 0;
      *(v12 + 50) = 0;
      *(v12 + 25) = *(v11 + 25);
      *(v12 + 52) = *(v11 + 52);
      *(v11 + 50) = 0;
      *(v11 + 51) = 0;
      *(v11 + 52) = 0;
      *(v12 + 106) = *(v11 + 106);
      *(v12 + 54) = *(v11 + 54);
      v11 += 440;
      v12 += 440;
    }

    while (v11 != v9);
    do
    {
      v8 = (sub_44FDEC(v8) + 440);
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_DB7680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4EA748(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DB7694(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 72) = 0;
  *(a1 + 16) = v5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v9 = *(a2 + 72);
  v8 = *(a2 + 80);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v10;
  v11 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v11;
  sub_81988((a1 + 152), a2 + 152);
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = a3;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = -1;
  *(a1 + 392) = -1;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = 0;
  *(a1 + 436) = 0;
  return a1;
}

void sub_DB77C4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DB77E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *v2;
      while (1)
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_6;
        }

        v10 = *(v4 - 2);
        v7 = v8;
        if (v10 != v8)
        {
          break;
        }

LABEL_5:
        *(v4 - 2) = v8;
        operator delete(v7);
LABEL_6:
        v4 = v6;
        if (v6 == v5)
        {
          return a1;
        }
      }

      while (1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 3));
          v11 = v10 - 6;
          v12 = *(v10 - 6);
          if (v12)
          {
LABEL_16:
            v13 = *(v10 - 5);
            v14 = v12;
            if (v13 != v12)
            {
              do
              {
                v13 = sub_4547F0(v13 - 552);
              }

              while (v13 != v12);
              v14 = *v11;
            }

            *(v10 - 5) = v12;
            operator delete(v14);
          }
        }

        else
        {
          v11 = v10 - 6;
          v12 = *(v10 - 6);
          if (v12)
          {
            goto LABEL_16;
          }
        }

        v10 = v11;
        if (v11 == v8)
        {
          v7 = *v6;
          goto LABEL_5;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_DB78E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingUpdateSelectionModule", 0x1CuLL);
  LOBYTE(v7) = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_D0ACE4(a2 + 3, "Runtime", &v7, a1);
    a2[4] = v5;
    if (*(a1 + 8))
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_D0AE98(a2[4], "Runtime", &v7, a1);
    v5 = v4 + 48;
    a2[4] = v5;
    if (*(a1 + 8))
    {
      goto LABEL_9;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v5 >= a2[5])
  {
    result = sub_DB8054(a2 + 3, "Savings.none", &v8, &v7);
    v5 = result;
    a2[4] = result;
    if (!*(a1 + 8))
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_DB8208(v5, "Savings.none", &v8, &v7);
    v5 += 48;
    a2[4] = v5;
    if (!*(a1 + 8))
    {
      goto LABEL_23;
    }
  }

LABEL_9:
  v8 = 4;
  v7 = 1;
  if (v5 >= a2[5])
  {
    result = sub_DB8358(a2 + 3, "Savings.>0s", &v8, &v7);
    v5 = result;
    a2[4] = result;
    if (*(a1 + 8) < 0x3Du)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_DB850C(v5, "Savings.>0s", &v8, &v7);
    v5 += 48;
    a2[4] = v5;
    if (*(a1 + 8) < 0x3Du)
    {
      goto LABEL_23;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v5 >= a2[5])
  {
    result = sub_DB8054(a2 + 3, "Savings.>60s", &v8, &v7);
    v5 = result;
    a2[4] = result;
    if (*(a1 + 8) < 0x5Bu)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_DB8208(v5, "Savings.>60s", &v8, &v7);
    v5 += 48;
    a2[4] = v5;
    if (*(a1 + 8) < 0x5Bu)
    {
      goto LABEL_23;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v5 >= a2[5])
  {
    result = sub_DB8054(a2 + 3, "Savings.>90s", &v8, &v7);
    v5 = result;
    a2[4] = result;
    if (*(a1 + 8) < 0x79u)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_DB8208(v5, "Savings.>90s", &v8, &v7);
    v5 += 48;
    a2[4] = v5;
    if (*(a1 + 8) < 0x79u)
    {
LABEL_23:
      if (*(a1 + 12) != 1)
      {
        return result;
      }

      goto LABEL_24;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v5 >= a2[5])
  {
    result = sub_DB865C(a2 + 3, "Savings.>120s", &v8, &v7);
    v5 = result;
    a2[4] = result;
    if (*(a1 + 8) < 0xB5u)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_DB8810(v5, "Savings.>120s", &v8, &v7);
    v5 += 48;
    a2[4] = v5;
    if (*(a1 + 8) < 0xB5u)
    {
      goto LABEL_23;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v5 >= a2[5])
  {
    result = sub_DB865C(a2 + 3, "Savings.>180s", &v8, &v7);
    v5 = result;
    a2[4] = result;
    if (*(a1 + 12) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_DB8810(v5, "Savings.>180s", &v8, &v7);
    v5 += 48;
    a2[4] = v5;
    if (*(a1 + 12) != 1)
    {
      return result;
    }
  }

LABEL_24:
  v8 = 4;
  v7 = 1;
  if (v5 >= a2[5])
  {
    result = sub_DA9CE4(a2 + 3, "PreventedDeclinedDetour", &v8, &v7);
  }

  else
  {
    sub_DA9E98(v5, "PreventedDeclinedDetour", &v8, &v7);
    result = v5 + 48;
  }

  a2[4] = result;
  return result;
}

void sub_DB7CE0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_DB7DB4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xE21A291C077975B9 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_3EEA68(v10 - 1096);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x3BCBADC7F10D14)
    {
      v12 = 0xE21A291C077975B9 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x1DE5D6E3F8868ALL)
      {
        v14 = 0x3BCBADC7F10D14;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x3BCBADC7F10D14)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xE21A291C077975B9 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_4D4310(v8, v5);
        v5 += 1096;
        v8 += 1096;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 1096;
      result = sub_3EEA68(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_4D4310(v8, v5);
        v5 += 1096;
        v8 += 1096;
        v16 -= 1096;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_3ED4B8(v15 + v19, v17 + v19);
        v19 += 1096;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_DB8028(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 1096;
    v7 = -v4;
    do
    {
      v6 = sub_3EEA68(v6) - 1096;
      v7 += 1096;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_DB8054(__int128 **a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DB8208(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DB81F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DB8208(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DB8358(__int128 **a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DB850C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DB84F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DB850C(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DB865C(__int128 **a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DB8810(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DB87FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DB8810(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void sub_DB8960(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingUpdateGuidanceModule", 0x1BuLL);
  v19 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_D0ACE4(a2 + 3, "Runtime", &v19, a1);
  }

  else
  {
    sub_D0AE98(a2[4], "Runtime", &v19, a1);
    v5 = v4 + 48;
  }

  a2[4] = v5;
  v18 = 4;
  v17 = 1;
  if (v5 >= a2[5])
  {
    v6 = sub_D799AC(a2 + 3, "ETAUGuidanceProcessed", &v18, &v17);
    a2[4] = v6;
    v16 = 1;
    if (v6 >= a2[5])
    {
LABEL_6:
      v7 = sub_D0C808(a2 + 3, "UpdateUserRouteBuilding", &v16, a1 + 1);
      a2[4] = v7;
      v15 = 1;
      if (v7 >= a2[5])
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_D79B60(v5, "ETAUGuidanceProcessed", &v18, &v17);
    v6 = v5 + 48;
    a2[4] = v6;
    v16 = 1;
    if (v6 >= a2[5])
    {
      goto LABEL_6;
    }
  }

  sub_D0C9BC(v6, "UpdateUserRouteBuilding", &v16, a1 + 1);
  v7 = v6 + 48;
  a2[4] = v7;
  v15 = 1;
  if (v7 >= a2[5])
  {
LABEL_7:
    v8 = sub_D0CB0C(a2 + 3, "DodgeballDetection", &v15, a1 + 2);
    a2[4] = v8;
    v14 = 1;
    if (v8 >= a2[5])
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_D0CCC0(v7, "DodgeballDetection", &v15, a1 + 2);
  v8 = v7 + 48;
  a2[4] = v8;
  v14 = 1;
  if (v8 >= a2[5])
  {
LABEL_8:
    v9 = sub_D0AFE8(a2 + 3, "DodgeballPopulation", &v14, a1 + 3);
    a2[4] = v9;
    v13 = 1;
    if (v9 >= a2[5])
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_D0B19C(v8, "DodgeballPopulation", &v14, a1 + 3);
  v9 = v8 + 48;
  a2[4] = v9;
  v13 = 1;
  if (v9 >= a2[5])
  {
LABEL_9:
    v10 = sub_DBB838(a2 + 3, "AlternateGuidanceBuilding", &v13, a1 + 4);
    a2[4] = v10;
    v12 = 1;
    if (v10 >= a2[5])
    {
LABEL_10:
      v11 = sub_D769CC(a2 + 3, "DisplayETAUpdate", &v12, a1 + 5);
      goto LABEL_17;
    }

LABEL_16:
    sub_D76B80(v10, "DisplayETAUpdate", &v12, a1 + 5);
    v11 = v10 + 48;
LABEL_17:
    a2[4] = v11;
    sub_DB8D64(a1 + 6, a2 + 3);
  }

LABEL_15:
  sub_DBB9EC(v9, "AlternateGuidanceBuilding", &v13, a1 + 4);
  v10 = v9 + 48;
  a2[4] = v10;
  v12 = 1;
  if (v10 >= a2[5])
  {
    goto LABEL_10;
  }

  goto LABEL_16;
}

void sub_DB8C80(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBB698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DBB838(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DBB9EC(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBB9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBB9EC(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void sub_DBBB3C(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    LOBYTE(v6) = 4;
    LODWORD(__p[0]) = 1;
    v3 = *(a2 + 8);
    if (v3 >= *(a2 + 16))
    {
      v4 = sub_DBC0B8(a2, "Notification.ETAUsIssuingDodgeballsCount", &v6, __p);
    }

    else
    {
      sub_DBC26C(*(a2 + 8), "Notification.ETAUsIssuingDodgeballsCount", &v6, __p);
      v4 = v3 + 48;
      *(a2 + 8) = v3 + 48;
    }

    *(a2 + 8) = v4;
  }

  operator new();
}

void sub_DBBDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DBBE04@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v15);
  v7 = strlen(a1);
  sub_4A5C(&v16, a1, v7);
  v8 = std::ostream::operator<<();
  v9 = strlen(a3);
  sub_4A5C(v8, a3, v9);
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a4[23] = v10;
  if (v10)
  {
    memmove(a4, v12, v10);
  }

LABEL_12:
  a4[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_DBC094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_DBC0B8(__int128 **a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DBC26C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBC258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBC26C(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

unint64_t sub_DBC3BC(__int128 **a1, uint64_t a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v4)
  {
    v4 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (a1[1] - *a1);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a1 + v10 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 3;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DBC58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_DBC5A0(__int128 **a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v4)
  {
    v4 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (a1[1] - *a1);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a1 + v10 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 3;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DBC770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBC784(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DBC938(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBC924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBC938(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBCA88(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DBCC3C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBCC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBCC3C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBCD8C(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DBCF40(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBCF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBCF40(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBD090(__int128 **a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DBD244(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBD230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBD244(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

void sub_DBD394(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 16) == 1)
  {
    operator new();
  }

  if (*a1 != 0x7FFFFFFF)
  {
    operator new();
  }

  operator new();
}

void sub_DBDB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_DBDBA0(void **a1)
{
  sub_77B480((a1 + 3));
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_44FDEC(v3 - 440);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_DBDC04(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingUpdateAnalyticsModule", 0x1CuLL);
  LOBYTE(__p[0]) = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_CCEBC0(a2 + 3, "Runtime", __p, a1);
    a2[4] = v5;
    v6 = (a1 + 8);
    if (!*(a1 + 8))
    {
LABEL_3:
      LOBYTE(__p[0]) = 1;
      if (v5 < a2[5])
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else
  {
    sub_CCED74(a2[4], "Runtime", __p, a1);
    v5 = v4 + 48;
    a2[4] = v5;
    v6 = (a1 + 8);
    if (!*(a1 + 8))
    {
      goto LABEL_3;
    }
  }

  LOBYTE(__p[0]) = 2;
  if (v5 >= a2[5])
  {
    v5 = sub_D0CB0C(a2 + 3, "AnalyticsData.Size", __p, v6);
  }

  else
  {
    sub_D0CCC0(v5, "AnalyticsData.Size", __p, v6);
    v5 += 48;
  }

  a2[4] = v5;
  LOBYTE(__p[0]) = 1;
  if (v5 < a2[5])
  {
LABEL_4:
    sub_DBEBEC(v5, "FineGrainedETAAnalytics.Runtime", __p, (a1 + 16));
    v7 = v5 + 48;
    a2[4] = v7;
    LOBYTE(__p[0]) = 1;
    if (v7 >= a2[5])
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = sub_DBEA38(a2 + 3, "FineGrainedETAAnalytics.Runtime", __p, (a1 + 16));
  a2[4] = v7;
  LOBYTE(__p[0]) = 1;
  if (v7 >= a2[5])
  {
LABEL_5:
    v8 = sub_DBED44(a2 + 3, "FineGrainedETAAnalytics.StackedExperiments.Runtime", __p, (a1 + 40));
    a2[4] = v8;
    LOBYTE(__p[0]) = 1;
    if (v8 >= a2[5])
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_DBEEF8(v7, "FineGrainedETAAnalytics.StackedExperiments.Runtime", __p, (a1 + 40));
  v8 = v7 + 48;
  a2[4] = v8;
  LOBYTE(__p[0]) = 1;
  if (v8 >= a2[5])
  {
LABEL_6:
    v9 = sub_DBF050(a2 + 3, "FineGrainedETAAnalytics.ScenarioInstanceDetection.Runtime", __p, (a1 + 48));
    a2[4] = v9;
    LOBYTE(__p[0]) = 1;
    if (v9 >= a2[5])
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_DBF204(v8, "FineGrainedETAAnalytics.ScenarioInstanceDetection.Runtime", __p, (a1 + 48));
  v9 = v8 + 48;
  a2[4] = v9;
  LOBYTE(__p[0]) = 1;
  if (v9 >= a2[5])
  {
LABEL_7:
    v10 = sub_DBF35C(a2 + 3, "FineGrainedETAAnalytics.MessagePopulation.Runtime", __p, (a1 + 56));
    a2[4] = v10;
    v11 = (a1 + 24);
    if (!*(a1 + 24))
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  sub_DBF510(v9, "FineGrainedETAAnalytics.MessagePopulation.Runtime", __p, (a1 + 56));
  v10 = v9 + 48;
  a2[4] = v10;
  v11 = (a1 + 24);
  if (!*(a1 + 24))
  {
LABEL_8:
    v12 = (a1 + 32);
    if (!*(a1 + 32))
    {
      goto LABEL_9;
    }

LABEL_35:
    LOBYTE(__p[0]) = 4;
    if (v10 >= a2[5])
    {
      v10 = sub_DA69A0(a2 + 3, "FineGrainedETAAnalytics.NumSkippedExperiments", __p, v12);
      a2[4] = v10;
      v13 = (a1 + 36);
      if (*(a1 + 36))
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_DA6B54(v10, "FineGrainedETAAnalytics.NumSkippedExperiments", __p, v12);
      v10 += 48;
      a2[4] = v10;
      v13 = (a1 + 36);
      if (*(a1 + 36))
      {
        goto LABEL_39;
      }
    }

LABEL_10:
    LOBYTE(__p[0]) = 1;
    if (v10 < a2[5])
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_31:
  LOBYTE(__p[0]) = 2;
  if (v10 >= a2[5])
  {
    v10 = sub_389CC8(a2 + 3, "FineGrainedETAAnalytics.Size", __p, v11);
    a2[4] = v10;
    v12 = (a1 + 32);
    if (*(a1 + 32))
    {
      goto LABEL_35;
    }
  }

  else
  {
    sub_389E7C(v10, "FineGrainedETAAnalytics.Size", __p, v11);
    v10 += 48;
    a2[4] = v10;
    v12 = (a1 + 32);
    if (*(a1 + 32))
    {
      goto LABEL_35;
    }
  }

LABEL_9:
  v13 = (a1 + 36);
  if (!*(a1 + 36))
  {
    goto LABEL_10;
  }

LABEL_39:
  LOBYTE(__p[0]) = 4;
  if (v10 >= a2[5])
  {
    v10 = sub_D7C624(a2 + 3, "FineGrainedETAAnalytics.NumActiveExperiments", __p, v13);
  }

  else
  {
    sub_D7C7D8(v10, "FineGrainedETAAnalytics.NumActiveExperiments", __p, v13);
    v10 += 48;
  }

  a2[4] = v10;
  LOBYTE(__p[0]) = 1;
  if (v10 < a2[5])
  {
LABEL_11:
    sub_D11A7C(v10, "ClosureAnalytics.Runtime", __p, (a1 + 64));
    v14 = v10 + 48;
    a2[4] = v14;
    v15 = (a1 + 72);
    if (!*(a1 + 72))
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v14 = sub_D118C8(a2 + 3, "ClosureAnalytics.Runtime", __p, (a1 + 64));
  a2[4] = v14;
  v15 = (a1 + 72);
  if (!*(a1 + 72))
  {
LABEL_12:
    LOBYTE(__p[0]) = 1;
    if (v14 < a2[5])
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_44:
  LOBYTE(__p[0]) = 2;
  if (v14 >= a2[5])
  {
    v14 = sub_D0CE10(a2 + 3, "ClosureAnalytics.Size", __p, v15);
  }

  else
  {
    sub_D0CFC4(v14, "ClosureAnalytics.Size", __p, v15);
    v14 += 48;
  }

  a2[4] = v14;
  LOBYTE(__p[0]) = 1;
  if (v14 < a2[5])
  {
LABEL_13:
    sub_D7FA9C(v14, "TrajectoryAnalytics.Runtime", __p, (a1 + 80));
    v16 = v14 + 48;
    a2[4] = v16;
    v17 = (a1 + 88);
    if (!*(a1 + 88))
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = sub_D7F8E8(a2 + 3, "TrajectoryAnalytics.Runtime", __p, (a1 + 80));
  a2[4] = v16;
  v17 = (a1 + 88);
  if (!*(a1 + 88))
  {
LABEL_14:
    LOBYTE(__p[0]) = 1;
    if (v16 < a2[5])
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_49:
  LOBYTE(__p[0]) = 2;
  if (v16 >= a2[5])
  {
    v16 = sub_D0B5F0(a2 + 3, "TrajectoryAnalytics.Size", __p, v17);
  }

  else
  {
    sub_D0B7A4(v16, "TrajectoryAnalytics.Size", __p, v17);
    v16 += 48;
  }

  a2[4] = v16;
  LOBYTE(__p[0]) = 1;
  if (v16 < a2[5])
  {
LABEL_15:
    sub_CCFCB0(v16, "RouteAnalytics.Runtime", __p, (a1 + 96));
    v18 = v16 + 48;
    a2[4] = v18;
    v19 = (a1 + 104);
    if (!*(a1 + 104))
    {
      goto LABEL_16;
    }

LABEL_54:
    LOBYTE(__p[0]) = 2;
    if (v18 >= a2[5])
    {
      v18 = sub_D0AFE8(a2 + 3, "RouteAnalytics.Size", __p, v19);
      a2[4] = v18;
      v20 = (a1 + 112);
      if (*(a1 + 112))
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_D0B19C(v18, "RouteAnalytics.Size", __p, v19);
      v18 += 48;
      a2[4] = v18;
      v20 = (a1 + 112);
      if (*(a1 + 112))
      {
        goto LABEL_58;
      }
    }

LABEL_17:
    v21 = (a1 + 116);
    if (!*(a1 + 116))
    {
      goto LABEL_18;
    }

LABEL_62:
    v36.__r_.__value_.__s.__data_[0] = 4;
    LODWORD(__p[0]) = 0;
    if (v18 >= a2[5])
    {
      v18 = sub_D7FF0C(a2 + 3, "ClosureAnalytics.NumInactiveSoftClosures", &v36, v21, __p);
      a2[4] = v18;
      v22 = (a1 + 120);
      if (*(a1 + 120))
      {
        goto LABEL_66;
      }
    }

    else
    {
      sub_D800D0(v18, "ClosureAnalytics.NumInactiveSoftClosures", &v36, v21, __p);
      v18 += 48;
      a2[4] = v18;
      v22 = (a1 + 120);
      if (*(a1 + 120))
      {
        goto LABEL_66;
      }
    }

LABEL_19:
    v23 = (a1 + 124);
    if (!*(a1 + 124))
    {
      goto LABEL_20;
    }

LABEL_70:
    v36.__r_.__value_.__s.__data_[0] = 4;
    LODWORD(__p[0]) = 0;
    if (v18 >= a2[5])
    {
      v24 = sub_D80854(a2 + 3, "ClosureAnalytics.NumGeometryPatches", &v36, v23, __p);
    }

    else
    {
      sub_D80A18(v18, "ClosureAnalytics.NumGeometryPatches", &v36, v23, __p);
      v24 = v18 + 48;
    }

    a2[4] = v24;
    if (*(a1 + 141))
    {
      return;
    }

    goto LABEL_74;
  }

LABEL_53:
  v18 = sub_CCFAFC(a2 + 3, "RouteAnalytics.Runtime", __p, (a1 + 96));
  a2[4] = v18;
  v19 = (a1 + 104);
  if (*(a1 + 104))
  {
    goto LABEL_54;
  }

LABEL_16:
  v20 = (a1 + 112);
  if (!*(a1 + 112))
  {
    goto LABEL_17;
  }

LABEL_58:
  v36.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 0;
  if (v18 >= a2[5])
  {
    v18 = sub_D7FBF4(a2 + 3, "ClosureAnalytics.NumActiveSoftClosures", &v36, v20, __p);
    a2[4] = v18;
    v21 = (a1 + 116);
    if (*(a1 + 116))
    {
      goto LABEL_62;
    }
  }

  else
  {
    sub_D7FDB8(v18, "ClosureAnalytics.NumActiveSoftClosures", &v36, v20, __p);
    v18 += 48;
    a2[4] = v18;
    v21 = (a1 + 116);
    if (*(a1 + 116))
    {
      goto LABEL_62;
    }
  }

LABEL_18:
  v22 = (a1 + 120);
  if (!*(a1 + 120))
  {
    goto LABEL_19;
  }

LABEL_66:
  v36.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 0;
  if (v18 >= a2[5])
  {
    v18 = sub_D80224(a2 + 3, "ClosureAnalytics.NumHardClosures", &v36, v22, __p);
    a2[4] = v18;
    v23 = (a1 + 124);
    if (*(a1 + 124))
    {
      goto LABEL_70;
    }
  }

  else
  {
    sub_D803E8(v18, "ClosureAnalytics.NumHardClosures", &v36, v22, __p);
    v18 += 48;
    a2[4] = v18;
    v23 = (a1 + 124);
    if (*(a1 + 124))
    {
      goto LABEL_70;
    }
  }

LABEL_20:
  if (*(a1 + 141))
  {
    return;
  }

LABEL_74:
  if ((*(a1 + 140) & 1) == 0)
  {
    v25 = *(a1 + 128);
    if (v25 != 0.0)
    {
      if (v25 <= 0.0)
      {
        v25 = -v25;
      }

      if (v25 >= 2.22044605e-16)
      {
        std::to_string(&v36, *(a1 + 136));
        v26 = std::string::insert(&v36, 0, "EV.PredictionError.RelativeErrorRate.KM_", 0x28uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v38 = v26->__r_.__value_.__r.__words[2];
        *__p = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v35 = 6;
        v28 = *(a1 + 128) * 100.0;
        v34 = v28;
        v33 = 1;
        v29 = a2[4];
        if (v29 >= a2[5])
        {
          v32 = sub_DBF668(a2 + 3, __p, &v35, &v34, &v33);
          v30 = HIBYTE(v38);
        }

        else
        {
          v30 = HIBYTE(v38);
          if (SHIBYTE(v38) < 0)
          {
            sub_325C(a2[4], __p[0], __p[1]);
          }

          else
          {
            v31 = *__p;
            *(v29 + 16) = v38;
            *v29 = v31;
          }

          *(v29 + 24) = 6;
          *(v29 + 32) = v28;
          *(v29 + 40) = 1;
          v32 = v29 + 48;
        }

        a2[4] = v32;
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_DBE5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *(v23 + 32) = v24;
  operator delete(__p);
  if (a17 < 0)
  {
    operator delete(a12);
    sub_9DA0(v23);
    _Unwind_Resume(a1);
  }

  sub_9DA0(v23);
  _Unwind_Resume(a1);
}

void sub_DBE638(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE664(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE690(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE6BC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE6E8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE714(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE740(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE76C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE798(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE7C4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE7F0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE81C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE848(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE874(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE88C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE8B8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE8E4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE924(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE950(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DBE97C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 23) = 0;
  *(a1 + 39) = 0;
  *(a1 + 31) = 0;
  *(a1 + 47) = 0;
  sub_60AB38(a1 + 48);
  *(a1 + 7888) = 0u;
  *(a1 + 7872) = 0u;
  *(a1 + 7856) = 0u;
  return a1;
}

void sub_DBE9CC(_Unwind_Exception *a1)
{
  sub_5DAA94((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *sub_DBE9F0(void *a1)
{
  v2 = a1[258];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[248];
  if (v3)
  {
    a1[249] = v3;
    operator delete(v3);
  }

  sub_77B480((a1 + 12));
  return a1;
}

uint64_t sub_DBEA38(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DBEBEC(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBEBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBEBEC(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBED44(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DBEEF8(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBEEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBEEF8(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBF050(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DBF204(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBF1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBF204(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBF35C(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DBF510(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBF4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBF510(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBF668(__int128 **a1, uint64_t a2, char *a3, double *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * (a1[1] - *a1);
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = &(*a1)[v8 / 0x10] - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = &(*a1)[v8 / 0x10] - v13;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 3;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = (v8 + 48);
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v8 + 48;
}

void sub_DBF850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

void **sub_DBF864(void **a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(a1[13]);
  }

  v2 = a1[10];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[8];
  a1[8] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  if (*a1)
  {
    sub_DBF8E8(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_DBF8E8(uint64_t a1, void **a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 != a2)
  {
    v4 = *(a1 + 8);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      if (v7)
      {
        v26 = v4;
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          v25 = v3;
          while (1)
          {
            if (*(v8 - 1) < 0)
            {
              operator delete(*(v8 - 3));
              v10 = *(v8 - 13);
              if (v10)
              {
LABEL_17:
                v13 = *(v8 - 12);
                v14 = v10;
                if (v13 != v10)
                {
                  do
                  {
                    v13 = sub_3EEA68(v13 - 1096);
                  }

                  while (v13 != v10);
                  v14 = *(v8 - 13);
                }

                *(v8 - 12) = v10;
                operator delete(v14);
                v11 = v8 - 16;
                v12 = *(v8 - 16);
                if (!v12)
                {
                  goto LABEL_11;
                }

LABEL_21:
                v15 = *(v8 - 15);
                v9 = v12;
                if (v15 != v12)
                {
                  do
                  {
                    v16 = *(v15 - 3);
                    if (v16)
                    {
                      v17 = *(v15 - 2);
                      v18 = *(v15 - 3);
                      if (v17 != v16)
                      {
                        do
                        {
                          v19 = v17 - 32;
                          v20 = *(v17 - 2);
                          if (v20 != -1)
                          {
                            (off_2673E98[v20])(&v27, v17 - 32);
                          }

                          *(v17 - 2) = -1;
                          v17 -= 32;
                        }

                        while (v19 != v16);
                        v18 = *(v15 - 3);
                      }

                      *(v15 - 2) = v16;
                      operator delete(v18);
                    }

                    v21 = *(v15 - 8);
                    if (v21 != -1)
                    {
                      (off_2673E98[v21])(&v28, v15 - 7);
                    }

                    v22 = v15 - 10;
                    *(v15 - 8) = -1;
                    if (*(v15 - 57) < 0)
                    {
                      operator delete(*v22);
                    }

                    v15 -= 10;
                  }

                  while (v22 != v12);
                  v9 = *v11;
                }

                *(v8 - 15) = v12;
                operator delete(v9);
                goto LABEL_11;
              }
            }

            else
            {
              v10 = *(v8 - 13);
              if (v10)
              {
                goto LABEL_17;
              }
            }

            v11 = v8 - 16;
            v12 = *(v8 - 16);
            if (v12)
            {
              goto LABEL_21;
            }

LABEL_11:
            v8 = v11;
            if (v11 == v6)
            {
              v3 = v25;
              v5 = *v26;
              v2 = a2;
              break;
            }
          }
        }

        *(v3 - 2) = v6;
        operator delete(v5);
        v4 = v26;
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  *(a1 + 8) = v2;
}

uint64_t sub_DBFAE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingUpdateResponseBuilderModule", 0x22uLL);
  v8 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_D0ACE4(a2 + 3, "Runtime", &v8, a1);
    a2[4] = v5;
    v7 = 2;
    if (v5 >= a2[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_D0AE98(a2[4], "Runtime", &v8, a1);
    v5 = v4 + 48;
    a2[4] = v5;
    v7 = 2;
    if (v5 >= a2[5])
    {
LABEL_3:
      result = sub_D0B2EC(a2 + 3, "SessionState.Size", &v7, a1 + 1);
      a2[4] = result;
      return result;
    }
  }

  sub_D0B4A0(v5, "SessionState.Size", &v7, a1 + 1);
  result = v5 + 48;
  a2[4] = v5 + 48;
  return result;
}

void sub_DBFC08(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DBFC60(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2673EC8[v4])(&v15, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 248);
  if (v6)
  {
    v7 = *(a1 + 256);
    v8 = *(a1 + 248);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 248);
    }

    *(a1 + 256) = v6;
    operator delete(v8);
  }

  v10 = *(a1 + 176);
  if (v10)
  {
    *(a1 + 184) = v10;
    operator delete(v10);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    *(a1 + 112) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    *(a1 + 80) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    *(a1 + 16) = v13;
    operator delete(v13);
  }

  return a1;
}

void sub_DBFDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  sub_E83344(a2, (a1 + 8));
  operator new();
}

void sub_DBFFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D9FE7C(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_DBFFF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingRouteSnappingModule", 0x1AuLL);
  v11 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    result = sub_D0ACE4(a2 + 3, "Runtime", &v11, a1);
    v6 = result;
    a2[4] = result;
    if (*(a1 + 8) != 1)
    {
LABEL_3:
      if (*(a1 + 9) != 1)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = sub_D0AE98(a2[4], "Runtime", &v11, a1);
    v6 = v4 + 48;
    a2[4] = v6;
    if (*(a1 + 8) != 1)
    {
      goto LABEL_3;
    }
  }

  v10 = 4;
  v9 = 1;
  if (v6 >= a2[5])
  {
    result = sub_D7557C(a2 + 3, "HasLocalWaypoints", &v10, &v9);
    v6 = result;
    a2[4] = result;
    if (*(a1 + 9) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_D75730(v6, "HasLocalWaypoints", &v10, &v9);
    v6 += 48;
    a2[4] = v6;
    if (*(a1 + 9) != 1)
    {
      return result;
    }
  }

LABEL_10:
  v8 = 4;
  v7 = 1;
  if (v6 >= a2[5])
  {
    result = sub_D75880(a2 + 3, "CrossesLocalArea", &v8, &v7);
    a2[4] = result;
  }

  else
  {
    sub_D75A34(v6, "CrossesLocalArea", &v8, &v7);
    result = v6 + 48;
    a2[4] = v6 + 48;
  }

  return result;
}

void sub_DC01D0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DC022C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_E82110(a2, a9, a1 + 128);
  *(a1 + 176) = a8;
  *(a1 + 184) = a7;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a9;
  *(a1 + 216) = a10;
  *(a1 + 224) = sub_E82FAC(a2);
  *(a1 + 232) = *a6;
  v16 = sub_3B6890(*(a1 + 208));
  v17 = *v16;
  *(a1 + 140) = *(v16 + 8);
  *(a1 + 132) = v17;
  sub_1019024(a3, a9, v18, v19, v20, v21, v22, v23);
}

void sub_DC07B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  v53 = *v51;
  if (*v51)
  {
    *(v51 + 8) = v53;
    operator delete(v53);
  }

  *(v48 + 64) = v51;
  sub_D78EB0(&__p);
  sub_D78EB0(&a48);
  v54 = *(v48 + 104);
  if (v54)
  {
    *(v48 + 112) = v54;
    operator delete(v54);
  }

  sub_5ECEBC(v50);
  sub_39393C((v48 + 56));
  sub_39393C(v49);
  v55 = *v48;
  if (*v48)
  {
    *(v48 + 8) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

BOOL sub_DC0888(unsigned int **a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = &(*a1)[v2];
  v5 = *(a2 + 8);
  do
  {
    v12.n128_u64[0] = *v3;
    v12.n128_u64[1] = &off_2669FE0;
    sub_434934(&v13, &v12);
    v8 = sub_434C20(v5, &v13);
    v9 = __p;
    if (__p)
    {
      v10 = v15;
      v6 = __p;
      if (v15 != __p)
      {
        do
        {
          if (*(v10 - 1) < 0)
          {
            operator delete(*(v10 - 3));
          }

          v10 -= 4;
        }

        while (v10 != v9);
        v6 = __p;
      }

      v15 = v9;
      operator delete(v6);
    }

    v7 = ++v3 == v4 || v8;
  }

  while (v7 != 1);
  return v8;
}

void sub_DC096C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_CF3C94(va);
  _Unwind_Resume(a1);
}

void sub_DC0980(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((8 * (v6 >> 3)), v11);
    v12 = (8 * (v6 >> 3) - v6);
    sub_CF031C(a1, v5, v4, v12);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = 8 * (v6 >> 3) + v11;
    if (v13)
    {
      operator delete(v13);
    }
  }
}

void sub_DC0B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDF7D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DC0B3C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v1 = **(a1 + 16);
    v2 = **(a1 + 8);
    if (v1 != v2)
    {
      v3 = **(a1 + 16);
      v24 = **(a1 + 8);
      do
      {
        v6 = *(v3 - 3);
        v3 -= 3;
        v5 = v6;
        if (v6)
        {
          v26 = v3;
          v7 = *(v1 - 2);
          v4 = v5;
          if (v7 != v5)
          {
            v25 = v1;
            while (1)
            {
              if (*(v7 - 1) < 0)
              {
                operator delete(*(v7 - 3));
                v9 = *(v7 - 13);
                if (v9)
                {
LABEL_18:
                  v12 = *(v7 - 12);
                  v13 = v9;
                  if (v12 != v9)
                  {
                    do
                    {
                      v12 = sub_3EEA68(v12 - 1096);
                    }

                    while (v12 != v9);
                    v13 = *(v7 - 13);
                  }

                  *(v7 - 12) = v9;
                  operator delete(v13);
                  v10 = v7 - 16;
                  v11 = *(v7 - 16);
                  if (!v11)
                  {
                    goto LABEL_12;
                  }

LABEL_22:
                  v14 = *(v7 - 15);
                  v8 = v11;
                  if (v14 != v11)
                  {
                    do
                    {
                      v15 = *(v14 - 3);
                      if (v15)
                      {
                        v16 = *(v14 - 2);
                        v17 = *(v14 - 3);
                        if (v16 != v15)
                        {
                          do
                          {
                            v18 = v16 - 32;
                            v19 = *(v16 - 2);
                            if (v19 != -1)
                            {
                              (off_2673E98[v19])(&v27, v16 - 32);
                            }

                            *(v16 - 2) = -1;
                            v16 -= 32;
                          }

                          while (v18 != v15);
                          v17 = *(v14 - 3);
                        }

                        *(v14 - 2) = v15;
                        operator delete(v17);
                      }

                      v20 = *(v14 - 8);
                      if (v20 != -1)
                      {
                        (off_2673E98[v20])(&v28, v14 - 7);
                      }

                      v21 = v14 - 10;
                      *(v14 - 8) = -1;
                      if (*(v14 - 57) < 0)
                      {
                        operator delete(*v21);
                      }

                      v14 -= 10;
                    }

                    while (v21 != v11);
                    v8 = *v10;
                  }

                  *(v7 - 15) = v11;
                  operator delete(v8);
                  goto LABEL_12;
                }
              }

              else
              {
                v9 = *(v7 - 13);
                if (v9)
                {
                  goto LABEL_18;
                }
              }

              v10 = v7 - 16;
              v11 = *(v7 - 16);
              if (v11)
              {
                goto LABEL_22;
              }

LABEL_12:
              v7 = v10;
              if (v10 == v5)
              {
                v1 = v25;
                v4 = *v26;
                v2 = v24;
                break;
              }
            }
          }

          *(v1 - 2) = v5;
          operator delete(v4);
          v3 = v26;
        }

        v1 = v3;
      }

      while (v3 != v2);
    }
  }

  return a1;
}

uint64_t sub_DC0D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC0E60(a1, a2);
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v6)
  {
    if (0x86BCA1AF286BCA1BLL * ((v5 - v6) >> 3) < 0x1AF286BCA1AF287)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 48) = *(a2 + 48);
  sub_DAF818(a1 + 56, (a2 + 56));
  v7 = *(a2 + 128);
  v8 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v7;
  *(a1 + 144) = v8;
  return a1;
}

void sub_DC0E38(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_CEFBD8(v1);
  _Unwind_Resume(a1);
}

void *sub_DC0E60(void *a1, char **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_DC0F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_DC0B3C(va);
  *(v10 + 8) = v11;
  sub_DC11B4(&a9);
  _Unwind_Resume(a1);
}

void sub_DC0FA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 57))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_DC1070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 128;
    v15 = -v12;
    do
    {
      sub_60B38C(v14);
      v14 -= 128;
      v15 += 128;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_CDF538(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_DC10A8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_3ED39C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  return a1;
}

void sub_DC1184(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void ****sub_DC11B4(void ****result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = **result;
    if (v1)
    {
      v2 = result;
      sub_DBF8E8(*result, v1);
      operator delete(**v2);
      return v2;
    }
  }

  return result;
}

uint64_t *sub_DC1204(uint64_t *a1, char **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_DC13A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_DC1694(va);
  _Unwind_Resume(a1);
}

void sub_DC13B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void ***);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  sub_DC15BC(va2);
  sub_DB77E4(va1);
  *(a5 + 8) = a4;
  sub_DC1694(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DC13F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = (a2 + 24);
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      v8 = v6 - 24;
      sub_49E958(v4, *(v6 - 3), *(v6 - 2), 0xF128CFC4A33F128DLL * ((*(v6 - 2) - *(v6 - 3)) >> 3));
      if (*(v6 + 23) < 0)
      {
        sub_325C((v4 + 24), *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 40) = *(v6 + 2);
        *(v4 + 24) = v7;
      }

      v4 = v10 + 48;
      v10 += 48;
      v6 += 3;
    }

    while (v8 + 48 != a3);
  }

  return v4;
}

void sub_DC14D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_487EC4(v9);
  sub_DC1500(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_DC1500(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v7 = v4 - 6;
          v8 = *(v4 - 6);
          if (v8)
          {
LABEL_10:
            v9 = *(v4 - 5);
            v10 = v8;
            if (v9 != v8)
            {
              do
              {
                v9 = sub_4547F0(v9 - 552);
              }

              while (v9 != v8);
              v10 = *v7;
            }

            *(v4 - 5) = v8;
            operator delete(v10);
          }
        }

        else
        {
          v7 = v4 - 6;
          v8 = *(v4 - 6);
          if (v8)
          {
            goto LABEL_10;
          }
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

void ****sub_DC15BC(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_15:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (1)
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v6 = v4 - 6;
          v7 = *(v4 - 6);
          if (v7)
          {
LABEL_11:
            v8 = *(v4 - 5);
            v9 = v7;
            if (v8 != v7)
            {
              do
              {
                v8 = sub_4547F0(v8 - 552);
              }

              while (v8 != v7);
              v9 = *v6;
            }

            *(v4 - 5) = v7;
            operator delete(v9);
          }
        }

        else
        {
          v6 = v4 - 6;
          v7 = *(v4 - 6);
          if (v7)
          {
            goto LABEL_11;
          }
        }

        v4 = v6;
        if (v6 == v3)
        {
          v5 = **a1;
          goto LABEL_15;
        }
      }
    }
  }

  return a1;
}

void sub_DC1694(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 != v2)
  {
    v6 = v1[1];
    while (1)
    {
      v9 = *(v6 - 3);
      v6 -= 3;
      v8 = v9;
      if (!v9)
      {
        goto LABEL_6;
      }

      v10 = *(v4 - 2);
      v7 = v8;
      if (v10 != v8)
      {
        break;
      }

LABEL_5:
      *(v4 - 2) = v8;
      operator delete(v7);
LABEL_6:
      v4 = v6;
      if (v6 == v2)
      {
        v5 = **a1;
        goto LABEL_20;
      }
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v11 = v10 - 6;
        v12 = *(v10 - 6);
        if (v12)
        {
LABEL_16:
          v13 = *(v10 - 5);
          v14 = v12;
          if (v13 != v12)
          {
            do
            {
              v13 = sub_4547F0(v13 - 552);
            }

            while (v13 != v12);
            v14 = *v11;
          }

          *(v10 - 5) = v12;
          operator delete(v14);
        }
      }

      else
      {
        v11 = v10 - 6;
        v12 = *(v10 - 6);
        if (v12)
        {
          goto LABEL_16;
        }
      }

      v10 = v11;
      if (v11 == v8)
      {
        v7 = *v6;
        goto LABEL_5;
      }
    }
  }

LABEL_20:
  v1[1] = v2;

  operator delete(v5);
}

void sub_DC1910(_Unwind_Exception *a1)
{
  sub_419F70(v1 + 128);
  sub_419F70(v1);
  _Unwind_Resume(a1);
}

void sub_DC192C(_Unwind_Exception *a1)
{
  sub_DACA48((v1 + 312));
  sub_419F70(v2 + 128);
  sub_419F70(v2);
  _Unwind_Resume(a1);
}

void sub_DC1950(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = sub_6910B0();
  v12 = sub_E7C46C(a1);
  v13 = sub_394BD0();
  v14 = sub_394BD0();
  nullsub_1();
  if (*(v15 + 128) == 1)
  {
    nullsub_1();
    v17 = sub_4F96C8(v16);
  }

  else
  {
    v17 = 0;
  }

  v61 = sub_E7C160(a1);
  v62 = v18;
  v19 = sub_3B6890(a7);
  v20 = *(v19 + 4);
  v21 = *(v19 + 8);
  sub_E8041C(a1, v57);
  v55[0] = 0;
  v55[1] = 0;
  v56 = 0;
  if (!v21)
  {
    v22 = *a5;
    v23 = a5[1];
    if (*a5 != v23)
    {
      while (*(v22 + 176) == 1)
      {
        v22 += 440;
        if (v22 == v23)
        {
          goto LABEL_11;
        }
      }
    }

    if (v22 == v23)
    {
LABEL_11:
      v46[0] = 0;
      v46[1] = 0;
      v47 = 0;
    }

    else
    {
      *v46 = *(v22 + 288);
      v47 = *(v22 + 304);
    }

    HIBYTE(v54) = 15;
    strcpy(v53, "RerouteCategory");
    memset(__p, 0, 24);
    v24 = sub_3AEC94(a7, v53, __p);
    sub_4EB344(&v48, v24);
    v25 = sub_4EB3E0(v57, &v48);
    v26 = __p[0];
    if (__p[0])
    {
      v27 = __p[1];
      v28 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v29 = *(v27 - 1);
          v27 -= 3;
          if (v29 < 0)
          {
            operator delete(*v27);
          }
        }

        while (v27 != v26);
        v28 = __p[0];
      }

      __p[1] = v26;
      operator delete(v28);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53[0]);
    }

    strcpy(__p, "FilteredRerouteHistory");
    HIBYTE(__p[2]) = 22;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v30 = sub_3AEC94(a7, __p, &v48);
    sub_4EAA24(v51, v30);
    sub_4EAA28(a6, v46, v20, v14, v25, v51, v53);
    v31 = v48;
    *v55 = *v53;
    v56 = v54;
    v53[1] = 0;
    v54 = 0;
    v53[0] = 0;
    if (v48)
    {
      v32 = v49;
      v33 = v48;
      if (v49 != v48)
      {
        do
        {
          v34 = *(v32 - 1);
          v32 -= 3;
          if (v34 < 0)
          {
            operator delete(*v32);
          }
        }

        while (v32 != v31);
        v33 = v48;
      }

      v49 = v31;
      operator delete(v33);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v53[0] = sub_4EF368(a6);
  LODWORD(v53[1]) = v35;
  sub_4ED880(a6, v46);
  v36 = sub_4EF5DC(a6);
  v37 = sub_4EF360(a6);
  sub_DAC7F8(a8, a3, a4, a2, v41, v12, v13, v14, v17, &v61, v55, v57, v53, v46, v36, v37);
  v38 = v46[1];
  if (v46[1])
  {
    v39 = v47;
    v40 = v46[1];
    if (v47 != v46[1])
    {
      do
      {
        v39 -= 72;
        sub_3E4690(v39);
      }

      while (v39 != v38);
      v40 = v46[1];
    }

    v47 = v38;
    operator delete(v40);
  }

  if (v55[0])
  {
    v55[1] = v55[0];
    operator delete(v55[0]);
  }

  if (v60)
  {
    operator delete(v60);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_DC1CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_44D36C(&a48);
  _Unwind_Resume(a1);
}

void sub_DC1D58(uint64_t a1, void *a2)
{
  v3 = a2[3];
  if (v3)
  {
    v4 = a2[4];
    v5 = a2[3];
    if (v4 != v3)
    {
      do
      {
        v4 = sub_49AEC0(v4 - 30);
      }

      while (v4 != v3);
      v5 = a2[3];
    }

    a2[4] = v3;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = a2[1];
    v8 = *a2;
    if (v7 != v6)
    {
      do
      {
        v7 = sub_49AEC0(v7 - 30);
      }

      while (v7 != v6);
      v8 = *a2;
    }

    a2[1] = v6;

    operator delete(v8);
  }
}

void sub_DC1E00()
{
  byte_27B890F = 3;
  LODWORD(qword_27B88F8) = 5136193;
  byte_27B8927 = 3;
  LODWORD(qword_27B8910) = 5136194;
  byte_27B893F = 3;
  LODWORD(qword_27B8928) = 5136195;
  byte_27B8957 = 15;
  strcpy(&qword_27B8940, "vehicle_mass_kg");
  byte_27B896F = 21;
  strcpy(&xmmword_27B8958, "vehicle_cargo_mass_kg");
  byte_27B8987 = 19;
  strcpy(&qword_27B8970, "vehicle_aux_power_w");
  byte_27B899F = 15;
  strcpy(&qword_27B8988, "dcdc_efficiency");
  strcpy(&qword_27B89A0, "drive_train_efficiency");
  HIBYTE(word_27B89B6) = 22;
  operator new();
}

void sub_DC2208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B88B8)
  {
    qword_27B88C0 = qword_27B88B8;
    operator delete(qword_27B88B8);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_DC22FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v14 = *sub_3B8500(v11);
  v26 = sub_74700();
  __p = 0uLL;
  v29 = 0;
  v40[0] = 1851878480;
  v41 = 4;
  sub_D89468(&v42, &__p);
  v15 = __p;
  if (__p)
  {
    v16 = *(&__p + 1);
    v17 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v18 = *(v16 - 25);
        v16 -= 6;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    *(&__p + 1) = v15;
    operator delete(v17);
  }

  HIBYTE(v29) = 12;
  strcpy(&__p, "Plan.Started");
  sub_7BDA0(6, &__p, v14);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  sub_7E9A4(v39);
  if (!sub_E8166C(v13) || (sub_3AF4C8(v12) & 1) != 0)
  {
    sub_DEF4CC(v13, v12, v40);
    if (sub_E8166C(v13))
    {
      __dst[0] = 4;
      LODWORD(__p) = 1;
      v19 = *v43;
      if (*v43 >= v44)
      {
        v20 = sub_D895C0(&v42, "RequestWithTrafficAttached", __dst, &__p);
      }

      else
      {
        sub_D89774(*v43, "RequestWithTrafficAttached", __dst, &__p);
        v20 = v19 + 48;
      }

      *v43 = v20;
    }

    if (sub_E7F33C(v13) && sub_3B6984(v12))
    {
      operator new();
    }

    v38[91] = v26;
    v38[92] = v40;
    v38[93] = v39;
    v38[94] = v14;
    v38[95] = v12;
    v38[96] = v10;
    v38[86] = v14;
    v38[87] = v13;
    v38[88] = v39;
    v38[89] = v10;
    v38[90] = v12;
    sub_E79F40(v13, v38);
    v21 = sub_E7A5E0(v13);
    sub_4FC024(1, v21, v38);
    v37[23] = 8;
    strcpy(v37, "Historic");
    v36 = 4;
    strcpy(v35, "Live");
    *&__p = v13;
    DWORD2(__p) = 1;
    v29 = v12;
    LOBYTE(v30) = sub_E88F70(&__p);
    v31 = 0;
    sub_D11BD4(&__p, v32);
    if (v32[0] != 1 || (0x6FB586FB586FB587 * ((v33[1] - v33[0]) >> 3)) <= 1)
    {
      operator new();
    }

    sub_D73D78(v34, &__p);
    sub_7C9C0(6, &__p, v14);
    v22 = v30;
    if (v30)
    {
      v23 = v31;
      v24 = v30;
      if (v31 != v30)
      {
        do
        {
          v25 = *(v23 - 25);
          v23 -= 6;
          if (v25 < 0)
          {
            operator delete(*v23);
          }
        }

        while (v23 != v22);
        v24 = v30;
      }

      v31 = v22;
      operator delete(v24);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    sub_D77D70(&__p, v13, v33, v12);
  }

  operator new();
}

void sub_DC452C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_D35A8C(&STACK[0xCF0]);
  sub_DB048C(&STACK[0x1200]);
  sub_CD5434(&STACK[0x1EB8]);
  sub_DC5E8C(v20 - 216);
  sub_D0F460(&STACK[0x2000]);
  sub_DB64A0(&STACK[0x33D8]);
  STACK[0x2000] = &STACK[0x3448];
  sub_DC6748(&STACK[0x2000]);
  sub_CF0134(&STACK[0x3460]);
  sub_DB6E14(&STACK[0x3510]);
  sub_CEBCA0(&STACK[0x3598]);
  sub_CDF878(v20 - 160);
  sub_CF0134(&STACK[0x3818]);
  sub_DAE40C(&STACK[0x38C8]);
  sub_419F70(&STACK[0x3B70]);
  sub_419F70(&STACK[0x3BF0]);
  sub_DB6E14(&STACK[0x3C78]);
  sub_CEBCA0(&STACK[0x3D00]);
  sub_DAAEFC(&STACK[0x3F80]);
  sub_D9F480(&STACK[0x4070]);
  sub_CD6274(&STACK[0x4278]);
  sub_CF4478(&STACK[0x42B0]);
  sub_D130AC(&STACK[0x4388]);
  if (SLOBYTE(STACK[0x43FF]) < 0)
  {
    operator delete(STACK[0x43E8]);
  }

  if (SLOBYTE(STACK[0x4417]) < 0)
  {
    operator delete(STACK[0x4400]);
  }

  sub_5287C0(&STACK[0x4418]);
  sub_9DA0(&STACK[0x4738]);
  _Unwind_Resume(a1);
}

uint64_t sub_DC4D28(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_DC4D70(uint64_t *a1, uint64_t **a2, unint64_t a3, unint64_t a4)
{
  v33.n128_u64[0] = a3;
  v33.n128_u64[1] = a4;
  sub_7C6B8(6, &v33, *a1);
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v21);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  sub_4A5C(&v21, v7, v8);
  if ((v31 & 0x10) != 0)
  {
    v10 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v10 = v27;
    }

    v11 = v26;
    v9 = v10 - v26;
    if (v10 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v9 = 0;
      v20 = 0;
LABEL_19:
      *(&__dst + v9) = 0;
      sub_7E854(&__dst, 3u);
      if (v20 < 0)
      {
        operator delete(__dst);
      }

      if (v29 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v23);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_24:
      v12 = a1[1];
      v13 = sub_7EA0C(a1[2]);
      *&v32 = v12;
      *(&v32 + 1) = v13;
      sub_434934(&v17, &v33);
      v14 = a1[4];
      v15 = a1[1];
      memset(v16, 0, sizeof(v16));
      sub_D7189C(v18, 0, &v17, v14, v15, &v32, v16);
      sub_D34518(v18, &__dst);
    }

    v11 = v24;
    v9 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v20 = v9;
  if (v9)
  {
    memmove(&__dst, v11, v9);
  }

  goto LABEL_19;
}

void sub_DC51D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a65 < 0)
  {
    operator delete(__p);
    sub_1959728(&STACK[0x3F0]);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x3F0]);
  _Unwind_Resume(a1);
}

void sub_DC5220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_1758FB8(&STACK[0x3F0]);
  sub_1758FB8(&a63);
  sub_D7208C(&a19);
  sub_D71160(&a10);
  sub_CF3C94(&a13);
  _Unwind_Resume(a1);
}

unint64_t sub_DC5290@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingDooMCountryFilterModule", 0x1EuLL);
  v9 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    result = sub_D0ACE4(a2 + 3, "Runtime", &v9, a1);
    v6 = result;
    a2[4] = result;
    if (*(a1 + 8) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_D0AE98(a2[4], "Runtime", &v9, a1);
    v6 = v4 + 48;
    a2[4] = v6;
    if (*(a1 + 8) != 1)
    {
      return result;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v6 >= a2[5])
  {
    result = sub_DC5FCC(a2 + 3, "Filtered", &v8, &v7);
    a2[4] = result;
  }

  else
  {
    sub_DC6180(v6, "Filtered", &v8, &v7);
    result = v6 + 48;
    a2[4] = v6 + 48;
  }

  return result;
}

void sub_DC53E4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void *sub_DC5428(uint64_t a1, const void **a2)
{
  sub_1757EA4(v68, 0, 0);
  v70 |= 0x400000u;
  v71 = 0;
  sub_EE1660(v68);
  v32[0].n128_u8[0] = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v41, 0, sizeof(v41));
  v49 = 0u;
  v48 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 5;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0x7FFFFFFF;
  v60 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  memset(v59, 0, sizeof(v59));
  v61 = -1;
  v62 = 0x7FFFFFFF;
  v63 = 0;
  v64 = 0;
  v65 = -1;
  v66 = -1;
  v67 = 0;
  v4 = sub_73EC4(*a1);
  sub_4EC868(v32, v4);
  sub_4EE138(v32, 0);
  sub_4EF378(v32);
  sub_EE1810(v32, v68);
  LOBYTE(v30) = 1;
  v5 = *(a1 + 8);
  v25[0] = COERCE_VOID_(sub_7EA60(*(a1 + 16)));
  v6 = *(v5 + 32);
  if (v6 >= *(v5 + 40))
  {
    v7 = sub_D8B2BC((v5 + 24), "Runtime", &v30, v25);
  }

  else
  {
    sub_D8B470(*(v5 + 32), "Runtime", &v30, v25);
    v7 = v6 + 48;
    *(v5 + 32) = v6 + 48;
  }

  *(v5 + 32) = v7;
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v8)
  {
    if (v8 + 8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v8 + 8 > 0x16)
    {
      operator new();
    }

    v25[1] = 0;
    v26 = 0;
    HIBYTE(v26) = v8 + 8;
    v25[0] = 0x2E656D69746E7552;
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(&v25[1], v9, v8);
    *(&v25[1] + v8) = 0;
    v31 = 1;
    v10 = *(a1 + 8);
    v11 = sub_7EA60(*(a1 + 16));
    v30 = v11;
    v12 = *(v10 + 32);
    if (v12 >= *(v10 + 40))
    {
      *(v10 + 32) = sub_DC62D0((v10 + 24), v25, &v31, &v30);
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_43;
    }

    v13 = v31;
    if (SHIBYTE(v26) < 0)
    {
      v24 = v11;
      sub_325C(*(v10 + 32), v25[0], v25[1]);
      v11 = v24;
    }

    else
    {
      v14 = *v25;
      *(v12 + 16) = v26;
      *v12 = v14;
    }

    *(v12 + 24) = v13;
    *(v12 + 32) = v11;
    *(v12 + 40) = 1;
    *(v10 + 32) = v12 + 48;
    *(v10 + 32) = v12 + 48;
    if (SHIBYTE(v26) < 0)
    {
LABEL_43:
      operator delete(v25[0]);
    }
  }

LABEL_18:
  sub_7C9C0(6, *(a1 + 8), *(a1 + 24));
  sub_3B2E78(*(a1 + 32), v25);
  sub_7C9C0(1, v25, *(a1 + 24));
  v15 = __p;
  if (__p)
  {
    v16 = v28;
    v17 = __p;
    if (v28 != __p)
    {
      do
      {
        v18 = *(v16 - 25);
        v16 -= 6;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v28 = v15;
    operator delete(v17);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  v19 = *(a1 + 40);
  sub_1757EA4(v25, 0, 0);
  v20 = v25[1];
  if ((v25[1] & 2) != 0)
  {
    v20 = 0;
  }

  else if (v25[1])
  {
    v20 = *(v25[1] & 0xFFFFFFFFFFFFFFFCLL);
  }

  v21 = v69;
  if ((v69 & 2) != 0)
  {
    v21 = 0;
  }

  else if (v69)
  {
    v21 = *(v69 & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (v20 == v21)
  {
    sub_175C55C(v25, v68);
  }

  else
  {
    sub_175C1D0(v25, v68);
  }

  sub_1757EA4(v29, 0, 0);
  v22 = *(v19 + 24);
  if (!v22)
  {
    sub_2B7420();
  }

  (*(*v22 + 48))(v22, v25);
  sub_1758FB8(v29);
  sub_1758FB8(v25);
  sub_5287C0(v32);
  return sub_1758FB8(v68);
}

void sub_DC58B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v15 + 32) = v14;
  if (a14 < 0)
  {
    operator delete(__p);
    sub_5287C0(&STACK[0x490]);
    sub_1758FB8(&STACK[0x740]);
    _Unwind_Resume(a1);
  }

  sub_5287C0(&STACK[0x490]);
  sub_1758FB8(&STACK[0x740]);
  _Unwind_Resume(a1);
}

unint64_t sub_DC59C4(__int128 **a1, char *a2, char *a3, void *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_CC97E8(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_CC999C(a1[1], a2, a3, a4);
    a1[1] = (v5 + 48);
    a1[1] = (v5 + 48);
    return v5;
  }
}

unint64_t sub_DC5A2C(__int128 **a1, char *a2, char *a3, int *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_DA9CE4(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_DA9E98(a1[1], a2, a3, a4);
    a1[1] = (v5 + 48);
    a1[1] = (v5 + 48);
    return v5;
  }
}

uint64_t sub_DC5A94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingDooMSelectionModule", 0x1AuLL);
  v6 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    result = sub_D0ACE4(a2 + 3, "Runtime", &v6, a1);
    a2[4] = result;
  }

  else
  {
    sub_D0AE98(a2[4], "Runtime", &v6, a1);
    result = v4 + 48;
    a2[4] = v4 + 48;
  }

  return result;
}

void sub_DC5B60(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void **sub_DC5B8C(void **a1)
{
  v2 = a1[209];
  if (v2)
  {
    a1[210] = v2;
    operator delete(v2);
  }

  v3 = a1[206];
  if (v3)
  {
    do
    {
      v9 = *v3;
      v10 = v3[8];
      if (v10)
      {
        do
        {
          v11 = *v10;
          operator delete(v10);
          v10 = v11;
        }

        while (v11);
      }

      v12 = v3[6];
      v3[6] = 0;
      if (v12)
      {
        operator delete(v12);
      }

      operator delete(v3);
      v3 = v9;
    }

    while (v9);
  }

  v4 = a1[204];
  a1[204] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  sub_528AB4((a1 + 3));
  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_44FDEC(v6 - 440);
      }

      while (v6 != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_DC5C60@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  *(a1 + 32) = 0u;
  *a1 = *"DooMGuidanceModule";
  *(a1 + 16) = 0u;
  *(a1 + 23) = 18;
  *(a1 + 16) = 25964;
  v4 = 1;
  result = sub_D0ACE4((a1 + 24), "Runtime", &v4, a2);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_DC5CE8(uint64_t a1)
{
  v2 = *(a1 + 3232);
  if (v2)
  {
    v3 = *(a1 + 3240);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5EB19C(v3 - 3200);
      }

      while (v3 != v2);
      v4 = *(a1 + 3232);
    }

    *(a1 + 3240) = v2;
    operator delete(v4);
  }

  return sub_DB048C(a1);
}

unint64_t sub_DC5D54(__int128 **a1, char *a2, char *a3, double *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_D8B2BC(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_D8B470(a1[1], a2, a3, a4);
    a1[1] = (v5 + 48);
    a1[1] = (v5 + 48);
    return v5;
  }
}

unint64_t sub_DC5DBC(__int128 **a1, char *a2, char *a3, double *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_D8B5C8(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_D8B77C(a1[1], a2, a3, a4);
    a1[1] = (v5 + 48);
    a1[1] = (v5 + 48);
    return v5;
  }
}

unint64_t sub_DC5E24(__int128 **a1, char *a2, char *a3, double *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_D8B8D4(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_D8BA88(a1[1], a2, a3, a4);
    a1[1] = (v5 + 48);
    a1[1] = (v5 + 48);
    return v5;
  }
}

uint64_t sub_DC5E8C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 3200;
          sub_5EB19C(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_DC5F44(uint64_t a1, __int128 *a2, __int128 **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  sub_D89468((a1 + 24), a3);
  return a1;
}

void sub_DC5FB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DC5FCC(__int128 **a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DC6180(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DC616C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DC6180(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

unint64_t sub_DC62D0(__int128 **a1, uint64_t a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v4)
  {
    v4 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (a1[1] - *a1);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a1 + v10 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 3;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DC64AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DC64C0(uint64_t a1)
{
  v2 = sub_559C9C(a1);
  bzero((v2 + 1088), 0x348uLL);
  sub_5C0A00(a1 + 1112);
  return a1;
}

void sub_DC64FC(_Unwind_Exception *a1)
{
  sub_5706DC((v1 + 1088));
  sub_559E70(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DC6518(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = a2[1];
  v5 = a2[2];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F4380(a1 + 32, a2 + 4);
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  sub_5713F4(a1 + 1120, a2[140], a2[141], 0xAF8AF8AF8AF8AF8BLL * ((a2[141] - a2[140]) >> 5));
  sub_5DAD70(a1 + 1144, (a2 + 143));
  sub_D71F30(a1 + 1960, a2 + 490);
  *(a1 + 2160) = a2[270];
  sub_4E9DA4(a1 + 2168, (a2 + 271));
  sub_4E9DA4(a1 + 2608, (a2 + 326));
  *(a1 + 3048) = a2[381];
  v7 = *(a2 + 191);
  v8 = *(a2 + 192);
  *(a1 + 3084) = *(a2 + 3084);
  *(a1 + 3072) = v8;
  *(a1 + 3056) = v7;
  sub_99A14((a1 + 3104), a2 + 388);
  *(a1 + 3128) = a2[391];
  v9 = *(a2 + 196);
  *(a1 + 3152) = *(a2 + 3152);
  *(a1 + 3136) = v9;
  sub_5ADDC(a1 + 3160, (a2 + 395));
  sub_DAF6F0((a1 + 3200), a2 + 400);
  *(a1 + 3224) = a2[403];
  return a1;
}

void sub_DC66A8(_Unwind_Exception *a1)
{
  sub_5C010(v1 + 3160);
  sub_1A104((v1 + 3104));
  sub_44FDEC(v1 + 2608);
  sub_44FDEC(v1 + 2168);
  sub_D71D0C(v1 + 1960);
  sub_D0AA6C(v1 + 32);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_DC6748(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = **a1;
    if (v1[1] != v2)
    {
      v25 = a1;
      v26 = v1;
      v5 = v1[1];
      v6 = v5;
      v27 = v2;
      do
      {
        v9 = *(v5 - 3);
        v5 -= 3;
        v8 = v9;
        if (v9)
        {
          v29 = v5;
          v10 = *(v6 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            v28 = v6;
            while (1)
            {
              if (*(v10 - 1) < 0)
              {
                operator delete(*(v10 - 3));
                v12 = *(v10 - 13);
                if (v12)
                {
LABEL_18:
                  v15 = *(v10 - 12);
                  v16 = v12;
                  if (v15 != v12)
                  {
                    do
                    {
                      v15 = sub_3EEA68(v15 - 1096);
                    }

                    while (v15 != v12);
                    v16 = *(v10 - 13);
                  }

                  *(v10 - 12) = v12;
                  operator delete(v16);
                  v13 = v10 - 16;
                  v14 = *(v10 - 16);
                  if (!v14)
                  {
                    goto LABEL_12;
                  }

LABEL_22:
                  v17 = *(v10 - 15);
                  v11 = v14;
                  if (v17 != v14)
                  {
                    do
                    {
                      v18 = *(v17 - 3);
                      if (v18)
                      {
                        v19 = *(v17 - 2);
                        v20 = *(v17 - 3);
                        if (v19 != v18)
                        {
                          do
                          {
                            v21 = v19 - 32;
                            v22 = *(v19 - 2);
                            if (v22 != -1)
                            {
                              (off_2673F58[v22])(&v30, v19 - 32);
                            }

                            *(v19 - 2) = -1;
                            v19 -= 32;
                          }

                          while (v21 != v18);
                          v20 = *(v17 - 3);
                        }

                        *(v17 - 2) = v18;
                        operator delete(v20);
                      }

                      v23 = *(v17 - 8);
                      if (v23 != -1)
                      {
                        (off_2673F58[v23])(&v31, v17 - 7);
                      }

                      v24 = v17 - 10;
                      *(v17 - 8) = -1;
                      if (*(v17 - 57) < 0)
                      {
                        operator delete(*v24);
                      }

                      v17 -= 10;
                    }

                    while (v24 != v14);
                    v11 = *v13;
                  }

                  *(v10 - 15) = v14;
                  operator delete(v11);
                  goto LABEL_12;
                }
              }

              else
              {
                v12 = *(v10 - 13);
                if (v12)
                {
                  goto LABEL_18;
                }
              }

              v13 = v10 - 16;
              v14 = *(v10 - 16);
              if (v14)
              {
                goto LABEL_22;
              }

LABEL_12:
              v10 = v13;
              if (v13 == v8)
              {
                v6 = v28;
                v7 = *v29;
                v2 = v27;
                break;
              }
            }
          }

          *(v6 - 2) = v8;
          operator delete(v7);
          v5 = v29;
        }

        v6 = v5;
      }

      while (v5 != v2);
      v4 = **v25;
      v1 = v26;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

uint64_t sub_DC696C(uint64_t a1, uint64_t a2)
{
  sub_1757EA4(a1, 0, 0);
  sub_DC69D4(a1, a2);
  sub_1757EA4(a1 + 576, 0, 0);
  return a1;
}

uint64_t sub_DC69D4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 8);
    if ((v2 & 2) != 0)
    {
      v2 = 0;
    }

    else if (v2)
    {
      v2 = *(v2 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v3 = *(a2 + 8);
    if ((v3 & 2) != 0)
    {
      v3 = 0;
    }

    else if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v4 = result;
    if (v2 == v3)
    {
      sub_175C55C(result, a2);
    }

    else
    {
      sub_175C1D0(result, a2);
    }

    return v4;
  }

  return result;
}

void *sub_DC6A58(void *a1, unint64_t a2, uint64_t a3)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  sub_DC6AEC(a1, a2, &__p);
  v4 = __p;
  if (__p)
  {
    v5 = v9;
    v6 = __p;
    if (v9 != __p)
    {
      do
      {
        v5 -= 128;
        sub_60B38C(v5);
      }

      while (v5 != v4);
      v6 = __p;
    }

    v9 = v4;
    operator delete(v6);
  }

  return a1;
}

void sub_DC6AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_60A84C(va);
  _Unwind_Resume(a1);
}

void *sub_DC6AEC(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_DC6BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_DC6748(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_DC6BE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 7)
    {
      v15 = v10 - a2;
      v16 = (v10 - a2) >> 7;
      if (v16 >= a5)
      {
        v20 = a5 << 7;
        v21 = v10 - (a5 << 7);
        for (i = a1[1]; v21 < v10; i += 128)
        {
          *i = 0;
          *(i + 8) = 0;
          *(i + 16) = 0;
          *i = *v21;
          *(i + 16) = *(v21 + 16);
          *v21 = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *(i + 24) = 0;
          *(i + 32) = 0;
          *(i + 40) = 0;
          *(i + 24) = *(v21 + 24);
          *(i + 40) = *(v21 + 40);
          *(v21 + 24) = 0;
          *(v21 + 32) = 0;
          *(v21 + 40) = 0;
          v23 = *(v21 + 48);
          v24 = *(v21 + 64);
          v25 = *(v21 + 80);
          *(i + 94) = *(v21 + 94);
          *(i + 64) = v24;
          *(i + 80) = v25;
          *(i + 48) = v23;
          v26 = *(v21 + 104);
          *(i + 120) = *(v21 + 120);
          *(i + 104) = v26;
          *(v21 + 112) = 0;
          *(v21 + 120) = 0;
          *(v21 + 104) = 0;
          v21 += 128;
        }

        a1[1] = i;
        if (v10 != a2 + (a5 << 7))
        {
          v27 = v10 - 128;
          v28 = a2 + v20 - v10;
          v29 = v10 - 128 - v20;
          do
          {
            sub_D7A6D4(v27, v29);
            v27 -= 128;
            v29 -= 128;
            v28 += 128;
          }

          while (v28);
        }

        v30 = 0;
        v31 = v7 + (a5 << 7);
        do
        {
          v35 = v5 + v30;
          if (v7 == v5)
          {
            v32 = *(v7 + v30 + 48);
            v33 = *(v7 + v30 + 64);
            v34 = *(v7 + v30 + 80);
            *(v35 + 94) = *(v7 + v30 + 94);
            *(v35 + 64) = v33;
            *(v35 + 80) = v34;
            *(v35 + 48) = v32;
          }

          else
          {
            v36 = v7 + v30;
            sub_9FD394((v5 + v30), *(v7 + v30), *(v7 + v30 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v7 + v30 + 8) - *(v7 + v30)) >> 4));
            sub_DB7DB4((v35 + 24), *(v36 + 24), *(v36 + 32), 0xE21A291C077975B9 * ((*(v36 + 32) - *(v36 + 24)) >> 3));
            v37 = *(v7 + v30 + 48);
            v38 = *(v7 + v30 + 64);
            v39 = *(v7 + v30 + 80);
            *(v35 + 94) = *(v7 + v30 + 94);
            *(v35 + 64) = v38;
            *(v35 + 80) = v39;
            *(v35 + 48) = v37;
            v40 = (v7 + v30 + 104);
            v41 = *(v7 + v30 + 127);
            if (*(v35 + 127) < 0)
            {
              if (v41 >= 0)
              {
                v43 = (v36 + 104);
              }

              else
              {
                v43 = *v40;
              }

              if (v41 >= 0)
              {
                v44 = *(v36 + 127);
              }

              else
              {
                v44 = *(v36 + 112);
              }

              sub_13B38((v35 + 104), v43, v44);
            }

            else if ((*(v7 + v30 + 127) & 0x80) != 0)
            {
              sub_13A68((v35 + 104), *v40, *(v7 + v30 + 112));
            }

            else
            {
              v42 = *v40;
              *(v35 + 120) = *(v36 + 120);
              *(v35 + 104) = v42;
            }
          }

          v30 += 128;
        }

        while (v7 + v30 != v31);
      }

      else
      {
        v18 = v15 + a3;
        if (v15 + a3 == a4)
        {
          v19 = a1[1];
          a1[1] = v10;
          if (v16 < 1)
          {
            return v5;
          }
        }

        else
        {
          v51 = 0;
          do
          {
            sub_CE37CC(v10 + v51, v18 + v51);
            v51 += 128;
          }

          while (v18 + v51 != a4);
          v19 = v10 + v51;
          a1[1] = v10 + v51;
          if (v16 < 1)
          {
            return v5;
          }
        }

        v52 = a5 << 7;
        v53 = v19 - (a5 << 7);
        for (j = v19; v53 < v10; j += 128)
        {
          *j = 0;
          *(j + 8) = 0;
          *(j + 16) = 0;
          *j = *v53;
          *(j + 16) = *(v53 + 16);
          *v53 = 0;
          *(v53 + 8) = 0;
          *(v53 + 16) = 0;
          *(j + 24) = 0;
          *(j + 32) = 0;
          *(j + 40) = 0;
          *(j + 24) = *(v53 + 24);
          *(j + 40) = *(v53 + 40);
          *(v53 + 24) = 0;
          *(v53 + 32) = 0;
          *(v53 + 40) = 0;
          v55 = *(v53 + 48);
          v56 = *(v53 + 64);
          v57 = *(v53 + 80);
          *(j + 94) = *(v53 + 94);
          *(j + 64) = v56;
          *(j + 80) = v57;
          *(j + 48) = v55;
          v58 = *(v53 + 104);
          *(j + 120) = *(v53 + 120);
          *(j + 104) = v58;
          *(v53 + 112) = 0;
          *(v53 + 120) = 0;
          *(v53 + 104) = 0;
          v53 += 128;
        }

        a1[1] = j;
        if (v19 != v5 + (a5 << 7))
        {
          v59 = v19 - 128;
          v60 = v5 + v52 - v19;
          v61 = v19 - 128 - v52;
          do
          {
            sub_D7A6D4(v59, v61);
            v59 -= 128;
            v61 -= 128;
            v60 += 128;
          }

          while (v60);
        }

        if (v10 != v5)
        {
          v62 = 0;
          do
          {
            v66 = v5 + v62;
            if (v7 == v5)
            {
              v63 = *(v7 + v62 + 48);
              v64 = *(v7 + v62 + 64);
              v65 = *(v7 + v62 + 80);
              *(v66 + 94) = *(v7 + v62 + 94);
              *(v66 + 64) = v64;
              *(v66 + 80) = v65;
              *(v66 + 48) = v63;
            }

            else
            {
              v67 = v7 + v62;
              sub_9FD394((v5 + v62), *(v7 + v62), *(v7 + v62 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v7 + v62 + 8) - *(v7 + v62)) >> 4));
              sub_DB7DB4((v66 + 24), *(v67 + 24), *(v67 + 32), 0xE21A291C077975B9 * ((*(v67 + 32) - *(v67 + 24)) >> 3));
              v68 = *(v7 + v62 + 48);
              v69 = *(v7 + v62 + 64);
              v70 = *(v7 + v62 + 80);
              *(v66 + 94) = *(v7 + v62 + 94);
              *(v66 + 64) = v69;
              *(v66 + 80) = v70;
              *(v66 + 48) = v68;
              v71 = (v7 + v62 + 104);
              v72 = *(v7 + v62 + 127);
              if (*(v66 + 127) < 0)
              {
                if (v72 >= 0)
                {
                  v74 = (v67 + 104);
                }

                else
                {
                  v74 = *v71;
                }

                if (v72 >= 0)
                {
                  v75 = *(v67 + 127);
                }

                else
                {
                  v75 = *(v67 + 112);
                }

                sub_13B38((v66 + 104), v74, v75);
              }

              else if ((*(v7 + v62 + 127) & 0x80) != 0)
              {
                sub_13A68((v66 + 104), *v71, *(v7 + v62 + 112));
              }

              else
              {
                v73 = *v71;
                *(v66 + 120) = *(v67 + 120);
                *(v66 + 104) = v73;
              }
            }

            v62 += 128;
          }

          while (v7 + v62 != v18);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 7);
      if (v12 >> 57)
      {
        sub_1794();
      }

      v13 = v9 - v11;
      if (v13 >> 6 > v12)
      {
        v12 = v13 >> 6;
      }

      if (v13 >= 0x7FFFFFFFFFFFFF80)
      {
        v14 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v80 = a1;
      if (v14)
      {
        if (!(v14 >> 57))
        {
          operator new();
        }

        sub_1808();
      }

      v45 = (a2 - v11) >> 7 << 7;
      __p = 0;
      v77 = v45;
      v78 = v45;
      v79 = 0;
      v46 = a5 << 7;
      v47 = v45 + (a5 << 7);
      do
      {
        sub_CE37CC(v45, v7);
        v45 += 128;
        v7 += 128;
        v46 -= 128;
      }

      while (v46);
      v78 = v47;
      v5 = sub_DC71C4(a1, &__p, v5);
      v49 = v77;
      for (k = v78; v78 != v49; k = v78)
      {
        v78 = k - 128;
        sub_60B38C(k - 128);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_DC7168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

void sub_DC717C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v2 - 128;
    v7 = -v4;
    do
    {
      sub_60B38C(v6);
      v6 -= 128;
      v7 += 128;
    }

    while (v7);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void sub_DC71AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DC71C4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
      v12 = *(v9 + 80);
      *(v8 + 94) = *(v9 + 94);
      *(v8 + 64) = v11;
      *(v8 + 80) = v12;
      *(v8 + 48) = v10;
      v13 = *(v9 + 104);
      *(v8 + 120) = *(v9 + 120);
      *(v8 + 104) = v13;
      *(v9 + 112) = 0;
      *(v9 + 120) = 0;
      *(v9 + 104) = 0;
      v9 += 128;
      v8 += 128;
    }

    while (v9 != v7);
    v14 = a3;
    do
    {
      sub_60B38C(v14);
      v14 += 128;
    }

    while (v14 != v7);
  }

  v15 = *a1;
  v16 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v17 = v16 + v15 - a3;
  if (v15 != a3)
  {
    v18 = v15;
    v19 = v16 + v15 - a3;
    do
    {
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      *v19 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v18 = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
      *(v19 + 24) = *(v18 + 24);
      *(v19 + 40) = *(v18 + 40);
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      v22 = *(v18 + 80);
      *(v19 + 94) = *(v18 + 94);
      *(v19 + 64) = v21;
      *(v19 + 80) = v22;
      *(v19 + 48) = v20;
      v23 = *(v18 + 104);
      *(v19 + 120) = *(v18 + 120);
      *(v19 + 104) = v23;
      *(v18 + 112) = 0;
      *(v18 + 120) = 0;
      *(v18 + 104) = 0;
      v18 += 128;
      v19 += 128;
    }

    while (v18 != a3);
    do
    {
      sub_60B38C(v15);
      v15 += 128;
    }

    while (v15 != a3);
  }

  a2[1] = v17;
  v24 = *a1;
  *a1 = v17;
  a1[1] = v24;
  a2[1] = v24;
  v25 = a1[1];
  a1[1] = a2[2];
  a2[2] = v25;
  v26 = a1[2];
  a1[2] = a2[3];
  a2[3] = v26;
  *a2 = a2[1];
  return v6;
}

void sub_DC73A8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_D71E14(a1, *a3, a3[1], 0x6FB586FB586FB587 * ((a3[1] - *a3) >> 3));
  sub_E78844((a1 + 3));
}

void sub_DC7630(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 1680) = v4;
    operator delete(v4);
  }

  sub_616CD4(v1 + 1632);
  sub_528AB4(v1 + 24);
  sub_44FD90(v1);
  _Unwind_Resume(a1);
}

void sub_DC76A4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x147AE147AE147BLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_DC77C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v11)
  {
    v13 = v10 + v11 - 3200;
    v14 = -v11;
    do
    {
      v13 = sub_5EB19C(v13) - 3200;
      v14 += 3200;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  sub_DC7830(&a9);
  _Unwind_Resume(a1);
}

void ***sub_DC7830(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_5EB19C(v4 - 3200);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_DC78A8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B8A30 = 0u;
  unk_27B8A40 = 0u;
  dword_27B8A50 = 1065353216;
  sub_3A9A34(&xmmword_27B8A30, v0, v0);
  sub_3A9A34(&xmmword_27B8A30, v3, v3);
  sub_3A9A34(&xmmword_27B8A30, __p, __p);
  sub_3A9A34(&xmmword_27B8A30, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B89D8 = 0;
    qword_27B89E0 = 0;
    qword_27B89D0 = 0;
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