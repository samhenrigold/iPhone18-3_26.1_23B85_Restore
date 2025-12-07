void sub_23EBD1550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD15AC(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  v14 = 0;
  cf = 0;
  sub_23EB8FB78(v15, 2003060332, &v17);
  v7 = sub_23EB97374(a1, &v17, &v14, 0);
  if (!v7)
  {
    sub_23EB8CCB8(__p, "legacywds");
    sub_23EB90814(v15, __p, &v17);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB912D0(a1, &v17, &cf, 0);
    if (!v7)
    {
      v8 = CFGetTypeID(cf);
      if (v8 != CFArrayGetTypeID())
      {
        v7 = 4294960540;
        goto LABEL_13;
      }

      if (CFArrayGetCount(cf) <= 5)
      {
        if ((v14 & 3) == 0 || CFArrayGetCount(cf))
        {
          goto LABEL_12;
        }

        v9 = 1999720036;
      }

      else
      {
        v9 = 1732604488;
      }

      sub_23EBCB1D8(2003061875, v9, a3, a4);
LABEL_12:
      v7 = 0;
    }
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD1720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD1770(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v24, 0, sizeof(v24));
  sub_23EB8CCB8(&v22, a2);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  sub_23EB8CCB8(v16, a2);
  sub_23EB8CCB8(__p, "raI1");
  sub_23EB90814(v16, __p, &v24);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v8 = sub_23EB97710(a1, &v24, &v19, 0);
  v9 = v8;
  if (v8 == -5 || !v8)
  {
    if (SHIBYTE(v21) < 0)
    {
      if (v20)
      {
        v10 = v19;
        goto LABEL_12;
      }
    }

    else if (HIBYTE(v21))
    {
      v10 = &v19;
LABEL_12:
      v9 = sub_23EB7DE5C(v10, 0, &v18, 0, 0, 0, 0);
      goto LABEL_14;
    }

    v9 = 0;
LABEL_14:
    if (sub_23EBD19C0(a1, a2))
    {
      v11 = 1732604481;
      if (v9 || (v12 = v18, v18 + 1 < 2) || HIBYTE(v18) - 225 < 0xEu)
      {
LABEL_24:
        sub_23EBCB1D8(1918978353, v11, a3, a4);
        goto LABEL_25;
      }
    }

    else
    {
      v12 = v18;
      if (!v18)
      {
        goto LABEL_25;
      }
    }

    if (v12 + 1 >= 2)
    {
      if (HIBYTE(v12) - 225 > 0xDu)
      {
        goto LABEL_25;
      }

      v11 = 1732604485;
    }

    else
    {
      v11 = 1732604485;
    }

    goto LABEL_24;
  }

LABEL_25:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBD1948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD19C0(uint64_t a1, char *a2)
{
  memset(&v12, 0, sizeof(v12));
  sub_23EB8CCB8(v10, a2);
  v9 = 0;
  v8 = 0;
  v7 = 0;
  sub_23EB8CCB8(__p, "raWM");
  sub_23EB90814(v10, __p, &v12);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_23EB97374(a1, &v12, &v9, 0))
  {
    goto LABEL_10;
  }

  sub_23EB8CCB8(__p, "raEA");
  sub_23EB90814(v10, __p, &v12);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_23EB97588(a1, &v12, &v8, 0))
  {
    goto LABEL_10;
  }

  sub_23EB8CCB8(__p, "raFl");
  sub_23EB90814(v10, __p, &v12);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_23EB97374(a1, &v12, &v7, 0))
  {
LABEL_10:
    v3 = 0;
  }

  else if (v8 && (v9 - 3) < 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = v7 & 1;
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_23EBD1B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD1B94(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  v14 = 0;
  sub_23EB8FB78(v15, 1651724337, &v17);
  if (!sub_23EB9C430(a1, &v17))
  {
    goto LABEL_10;
  }

  sub_23EB8CCB8(__p, "raAu");
  sub_23EB90814(v15, __p, &v17);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB97374(a1, &v17, &v14, 0);
  if (!v8)
  {
    v9 = sub_23EBD19C0(a1, a2);
    v10 = 1732604481;
    if (!v9 || v14)
    {
      if (v14 < 0x10000)
      {
LABEL_10:
        v8 = 0;
        goto LABEL_11;
      }

      v10 = 1732604486;
    }

    sub_23EBCB1D8(1651724337, v10, a3, a4);
    goto LABEL_10;
  }

LABEL_11:
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD1CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD1D14(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v24, 0, sizeof(v24));
  sub_23EB8CCB8(v22, a2);
  v8 = sub_23EB8BE08(a1, 909398611);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_23EB8CCB8(__p, "raSe");
  sub_23EB90814(v22, __p, &v24);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = sub_23EB97710(a1, &v24, &v19, 0);
  if (!v9)
  {
    v10 = sub_23EBD19C0(a1, a2);
    v11 = 1732604481;
    v12 = HIBYTE(v21);
    if (v10)
    {
      v13 = v20;
      if (v21 >= 0)
      {
        v14 = HIBYTE(v21);
      }

      else
      {
        v14 = v20;
      }

      if (!v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = v20;
    }

    if (v21 < 0)
    {
      v12 = v13;
    }

    v15 = 32;
    if (v8)
    {
      v15 = 64;
    }

    if (v12 > v15)
    {
      v11 = 1732604483;
LABEL_17:
      sub_23EBCB1D8(1918980965, v11, a3, a4);
    }
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBD1E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD1EDC(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v18, 0, sizeof(v18));
  sub_23EB8CCB8(v16, a2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  sub_23EB8CCB8(__p, "raI2");
  sub_23EB90814(v16, __p, &v18);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97710(a1, &v18, &v13, 0);
  if (!v7)
  {
    if (SHIBYTE(v15) < 0)
    {
      if (v14)
      {
        v8 = v13;
        goto LABEL_9;
      }
    }

    else if (HIBYTE(v15))
    {
      v8 = &v13;
LABEL_9:
      v7 = sub_23EB7DE5C(v8, 0, &v12, 0, 0, 0, 0);
      if (v7 || v12 + 1 < 2 || HIBYTE(v12) - 225 <= 0xDu)
      {
        sub_23EBCB1D8(1918978354, 1732604485, a3, a4);
        goto LABEL_14;
      }
    }

    v7 = 0;
  }

LABEL_14:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2098(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v14, 0, sizeof(v14));
  sub_23EB8CCB8(v12, a2);
  v11 = 0;
  sub_23EB8FB78(v12, 1651724338, &v14);
  if (!sub_23EB9C430(a1, &v14))
  {
    goto LABEL_7;
  }

  sub_23EB8CCB8(__p, "raU2");
  sub_23EB90814(v12, __p, &v14);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97374(a1, &v14, &v11, 0);
  if (!v7 && HIWORD(v11))
  {
    sub_23EBCB1D8(1651724338, 1732604486, a3, a4);
LABEL_7:
    v7 = 0;
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD21A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD21F4(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v19, 0, sizeof(v19));
  sub_23EB8CCB8(v17, a2);
  v7 = sub_23EB8BE08(a1, 909398611);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_23EB8CCB8(__p, "raS2");
  sub_23EB90814(v17, __p, &v19);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB97710(a1, &v19, &v14, 0);
  if (!v8)
  {
    v9 = HIBYTE(v16);
    if (v16 < 0)
    {
      v9 = v15;
    }

    v10 = 32;
    if (v7)
    {
      v10 = 64;
    }

    if (v9 > v10)
    {
      sub_23EBCB1D8(1918980914, 1732604483, a3, a4);
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v14);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD2320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2384(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_23EB8FB78(v13, 1853117270, &v15);
  v7 = sub_23EB97710(a1, &v15, &__p, 0);
  v8 = HIBYTE(v12);
  if (!v7 && SHIBYTE(v12) < 0 && v11 > 0xFF)
  {
    sub_23EBCB1D8(1651723856, 1732604483, a3, a4);
    v8 = HIBYTE(v12);
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD24AC(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v7 = sub_23EB975E8(a1, 1918977107, &v14 + 1, 0);
  if (!v7)
  {
    v7 = sub_23EB975E8(a1, 1918979649, &v14, 0);
    if (!v7)
    {
      v7 = sub_23EB89D74(a1, 2002864494, &v13, 0);
      if (!v7)
      {
        sub_23EB8CCB8(__p, "raSt");
        sub_23EB90814(v15, __p, &v17);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = sub_23EB97374(a1, &v17, &v12, 0);
        if (!v7)
        {
          if (sub_23EBCF168(a1) || v13 == 4)
          {
            v8 = 1919763024;
            if (HIBYTE(v14) && v14)
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (v12 != 1)
            {
              goto LABEL_16;
            }

            v8 = 1919767380;
            if ((v14 & 0x100) == 0 && v14 != 1)
            {
              goto LABEL_16;
            }
          }

          sub_23EBCB1D8(1651724877, v8, a3, a4);
LABEL_16:
          v7 = 0;
        }
      }
    }
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2690(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (!sub_23EB97B0C(a1, 1718842224))
  {
    goto LABEL_10;
  }

  sub_23EB8FB78(v14, 1718842224, &v16);
  v7 = sub_23EB97710(a1, &v16, &__p, 0);
  if (v7)
  {
    goto LABEL_11;
  }

  if (sub_23EB97B0C(a1, 1651721805))
  {
    v10 = 0;
    v7 = sub_23EB89D74(a1, 1651721805, &v10, 0);
    if (!v7 && v10 == 1)
    {
      v8 = HIBYTE(v13);
      if (v13 < 0)
      {
        v8 = v12;
      }

      if (!v8)
      {
        sub_23EBCB1D8(1718842224, 1732604481, a3, a4);
      }
    }
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

LABEL_11:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD27D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2820(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_23EB8FB78(v15, 1635077710, &v17);
  v7 = sub_23EB97710(a1, &v17, &__p, 0);
  if (!v7)
  {
    if (v14 >= 0)
    {
      v9 = HIBYTE(v14);
    }

    else
    {
      v9 = v13;
    }

    if (v9)
    {
      v11 = 0;
      sub_23EB8FB78(v15, 1635078258, &v17);
      v7 = sub_23EB97588(a1, &v17, &v11, 0);
      if (v7)
      {
        goto LABEL_2;
      }

      v10 = 1732604483;
      if (v11)
      {
        if (v9 < 0x33)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v10 = 1732604484;
      }

      sub_23EBCB1D8(1635077710, v10, a3, a4);
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_2:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD296C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD29B4(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_23EB8FB78(v14, 1635077712, &v16);
  v7 = sub_23EB97710(a1, &v16, &__p, 0);
  if (!v7)
  {
    if (v13 >= 0)
    {
      v9 = HIBYTE(v13);
    }

    else
    {
      v9 = v12;
    }

    if (v9)
    {
      v10 = 0;
      sub_23EB8FB78(v14, 1635078258, &v16);
      v7 = sub_23EB97588(a1, &v16, &v10, 0);
      if (!v7)
      {
        if (!v10)
        {
          sub_23EBCB1D8(1635077712, 1732604484, a3, a4);
        }

        if (v9 >= 0x21)
        {
          sub_23EBCB1D8(1635077712, 1732604483, a3, a4);
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2B58(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  if (!sub_23EB8BE08(a1, 1400460148) || !sub_23EB8BE08(a1, 1396928343))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v10 = 0;
  v9 = 0;
  sub_23EB8FB78(__p, 1918979649, &v13);
  v7 = sub_23EB97588(a1, &v13, &v9 + 1, 0);
  if (!v7)
  {
    sub_23EB8FB78(__p, 1918977107, &v13);
    v7 = sub_23EB97588(a1, &v13, &v9, 0);
    if (!v7)
    {
      sub_23EB8FB78(__p, 1936605510, &v13);
      v7 = sub_23EB97374(a1, &v13, &v10, 0);
      if (!v7)
      {
        if (HIBYTE(v9) == 1 && v9 == 1 && (v10 & 1) == 0 && !sub_23EBCB438(a1, 2002867022))
        {
          sub_23EBCB1D8(1651725143, 2002867022, a3, a4);
        }

        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2D10(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  if (!sub_23EB8BE08(a1, 2000834122))
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v9 = 0;
  sub_23EB8FB78(__p, 1970496070, &v13);
  v7 = sub_23EB97374(a1, &v13, &v10, 0);
  if (!v7)
  {
    sub_23EB8FB78(__p, 2002929006, &v13);
    v7 = sub_23EB97588(a1, &v13, &v9, 0);
    if (!v7)
    {
      if ((v10 & 0x100) != 0 && !v9)
      {
        sub_23EBCB1D8(1651726160, 1918320962, a3, a4);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2E60(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  if (!sub_23EB8BE08(a1, 1400460148) || !sub_23EB8BE08(a1, 1396928343))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v10 = 0;
  v9 = 0;
  sub_23EB8FB78(__p, 1918979649, &v13);
  v7 = sub_23EB97588(a1, &v13, &v10 + 1, 0);
  if (!v7)
  {
    sub_23EB8FB78(__p, 1918977107, &v13);
    v7 = sub_23EB97588(a1, &v13, &v10, 0);
    if (!v7)
    {
      sub_23EB8FB78(__p, 2002865741, &v13);
      v7 = sub_23EB97588(a1, &v13, &v9, 0);
      if (!v7)
      {
        if (HIBYTE(v10) == 1 && v10 == 1 && !v9 && !sub_23EBCB438(a1, 2002862918))
        {
          sub_23EBCB1D8(1651726147, 2002862918, a3, a4);
        }

        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD3020(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  if (!sub_23EB8BE08(a1, 2000834122))
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v9 = 0;
  sub_23EB8FB78(__p, 1970496070, &v13);
  v7 = sub_23EB97374(a1, &v13, &v10, 0);
  if (!v7)
  {
    sub_23EB8FB78(__p, 2002929006, &v13);
    v7 = sub_23EB97588(a1, &v13, &v9, 0);
    if (!v7)
    {
      if ((v10 & 0x200) != 0 && !v9)
      {
        sub_23EBCB1D8(1651726150, 1918320962, a3, a4);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD3138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD3170(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  sub_23EB8CCB8(v25, a2);
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v22 = 0;
  v8 = sub_23EBB65EC(v28, 0x11uLL, -1);
  MEMORY[0x23EF1EFD0](v25, v8);
  sub_23EB8CCB8(&__p, "raNm");
  sub_23EB90814(v25, &__p, &v27);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  v9 = sub_23EB97710(a1, &v27, v23, 0);
  if (!v9)
  {
    sub_23EB8FB78(v25, 1918979649, &v27);
    v9 = sub_23EB97588(a1, &v27, &v22, 0);
    if (!v9)
    {
      if (!sub_23EB8BE08(a1, 1198748750) || !sub_23EB9C128(a1) || !v22)
      {
        v9 = 0;
        goto LABEL_23;
      }

      v18 = 0;
      __p = 0;
      v20 = 0;
      v21 = 0;
      sub_23EB8CCB8(v16, a2);
      sub_23EB8CCB8(v14, "raNm");
      v9 = (*(*a1 + 16))(a1, v16, v14, &v27);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      if (v9)
      {
        goto LABEL_34;
      }

      v9 = sub_23EB97710(a1, &v27, &__p, 0);
      if (v9)
      {
        goto LABEL_34;
      }

      v10 = 1732604481;
      v11 = HIBYTE(v21);
      if (v21 < 0)
      {
        v11 = v20;
      }

      if (v11)
      {
        v9 = sub_23EBB4964(1651722062, &v18);
        if (v9)
        {
          goto LABEL_34;
        }

        v12 = HIBYTE(v21);
        if (v21 < 0)
        {
          v12 = v20;
        }

        if (v12 <= *(v18 + 20))
        {
          if (!sub_23EB9B1C4(&__p, v23))
          {
LABEL_33:
            v9 = 0;
LABEL_34:
            if (SHIBYTE(v21) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_23;
          }

          v10 = 1735283310;
        }

        else
        {
          v10 = 1732604483;
        }
      }

      sub_23EBCB1D8(1651722062, v10, a3, a4);
      goto LABEL_33;
    }
  }

LABEL_23:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBD3440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v40 - 81) < 0)
  {
    operator delete(*(v40 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD34D4(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  memset(&v26, 0, sizeof(v26));
  sub_23EB8CCB8(v24, a2);
  v23 = 0;
  cf = 0;
  sub_23EB8FB78(v24, 1918979649, &v26);
  v8 = sub_23EB97588(a1, &v26, &v23, 0);
  if (v8)
  {
    goto LABEL_15;
  }

  if (!sub_23EB8BE08(a1, 1198748750) || !sub_23EB9C128(a1) || !v23)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v21 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_23EB8CCB8(v15, a2);
  sub_23EB8CCB8(__p, "raWM");
  v8 = (*(*a1 + 16))(a1, v15, __p, &v26);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (!v8)
  {
    v8 = sub_23EB97374(a1, &v26, &v20, 0);
    if (!v8)
    {
      if (v20)
      {
        sub_23EB8CCB8(v15, "raWE");
        sub_23EB90814(&v26, v15, &v26);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        sub_23EB912D0(a1, &v26, &cf, 0);
        if ((v20 - 3) >= 3)
        {
          if (v20 == 2)
          {
            v11 = 1769419083;
            if (cf && CFDataGetLength(cf) == 13)
            {
              goto LABEL_54;
            }
          }

          else
          {
            if (v20 != 1 || cf && CFDataGetLength(cf) == 5)
            {
              goto LABEL_54;
            }

            v11 = 1769419851;
          }
        }

        else
        {
          sub_23EB8CCB8(v15, "raEA");
          sub_23EB90814(&v26, v15, &v26);
          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          sub_23EB97588(a1, &v26, &v21 + 1, 0);
          sub_23EB8CCB8(v15, "raCr");
          sub_23EB90814(&v26, v15, &v26);
          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          sub_23EB97710(a1, &v26, &v17, 0);
          sub_23EB8CCB8(v15, "rTSN");
          sub_23EB90814(&v26, v15, &v26);
          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          v8 = sub_23EB97588(a1, &v26, &v21, 0);
          if (v8)
          {
            goto LABEL_11;
          }

          if (sub_23EB8BE08(a1, 1414745645) && v21 == 1)
          {
            v10 = HIBYTE(v19);
            if (v19 < 0)
            {
              v10 = v18;
            }

            if (v10 == 13)
            {
              goto LABEL_54;
            }

            v11 = 1767134030;
          }

          else
          {
            if ((v21 & 0x100) != 0)
            {
              goto LABEL_54;
            }

            v11 = 1767329857;
            if (cf && CFDataGetLength(cf) == 32)
            {
              v12 = HIBYTE(v19);
              if (v19 < 0)
              {
                v12 = v18;
              }

              if (v12)
              {
                goto LABEL_54;
              }
            }
          }
        }

        sub_23EBCB1D8(1651722064, v11, a3, a4);
      }

LABEL_54:
      v8 = 0;
    }
  }

LABEL_11:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD38B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD3954(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  memset(&v24, 0, sizeof(v24));
  sub_23EB8CCB8(v22, a2);
  __p = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v17 = 0;
  v8 = strlen(a2);
  if (v8 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if (!strncmp(a2, "6Wad", v9))
  {
    v10 = 911696228;
  }

  else
  {
    v10 = 1651717697;
  }

  sub_23EB8FB78(v22, 912483943, &v24);
  v11 = sub_23EB97374(a1, &v24, &v18, 0);
  if (!v11)
  {
    sub_23EB8FB78(v22, 912356724, &v24);
    v11 = sub_23EB97588(a1, &v24, &v17, 0);
    if (!v11)
    {
      sub_23EB8FB78(v22, 911696228, &v24);
      v11 = sub_23EB97710(a1, &v24, &__p, 0);
      if (!v11)
      {
        v12 = v18 == 5 || (v18 & 0xFFFFFFFD) == 1;
        v13 = v17;
        v14 = !v12;
        v25 = 0uLL;
        if (v17)
        {
LABEL_29:
          v11 = 0;
          goto LABEL_30;
        }

        if (SHIBYTE(v21) < 0)
        {
          if (v20)
          {
            p_p = __p;
LABEL_24:
            v11 = sub_23EB7D978(p_p, 0, &v25, 0, 0, 0, 0);
            if (v11)
            {
              sub_23EBCB1D8(v10, 1732604485, a3, a4);
              goto LABEL_30;
            }
          }
        }

        else if (HIBYTE(v21))
        {
          p_p = &__p;
          goto LABEL_24;
        }

        if (((v14 | v13) & 1) == 0 && sub_23EB7D7E4(&v25, 0))
        {
          sub_23EBCB1D8(v10, 1732604485, a3, a4);
        }

        goto LABEL_29;
      }
    }
  }

LABEL_30:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBD3BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD3BF8(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  memset(&v22, 0, sizeof(v22));
  sub_23EB8CCB8(v20, a2);
  __p = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v15 = 0;
  sub_23EB8FB78(v20, 912483943, &v22);
  v8 = sub_23EB97374(a1, &v22, &v16, 0);
  if (!v8)
  {
    sub_23EB8FB78(v20, 912356724, &v22);
    v8 = sub_23EB97588(a1, &v22, &v15, 0);
    if (!v8)
    {
      sub_23EB8FB78(v20, 911697783, &v22);
      v8 = sub_23EB97710(a1, &v22, &__p, 0);
      if (!v8)
      {
        v9 = v16 == 5 || (v16 & 0xFFFFFFFD) == 1;
        v10 = v15;
        v11 = !v9;
        v23 = 0uLL;
        if (v15)
        {
LABEL_26:
          v8 = 0;
          goto LABEL_27;
        }

        if (SHIBYTE(v19) < 0)
        {
          if (v18)
          {
            p_p = __p;
LABEL_18:
            v8 = sub_23EB7D978(p_p, 0, &v23, 0, 0, 0, 0);
            if (v8)
            {
              sub_23EBCB1D8(911697783, 1732604485, a3, a4);
              goto LABEL_27;
            }
          }
        }

        else if (HIBYTE(v19))
        {
          p_p = &__p;
          goto LABEL_18;
        }

        if (((v11 | v10) & 1) == 0)
        {
          v13 = v15 || v16 != 3 ? 3 : 0;
          if (sub_23EB7D7E4(&v23, v13))
          {
            sub_23EBCB1D8(911697783, 1732604485, a3, a4);
          }
        }

        goto LABEL_26;
      }
    }
  }

LABEL_27:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD3E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD3E84(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  memset(&v21, 0, sizeof(v21));
  sub_23EB8CCB8(v19, a2);
  __p = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v14 = 0;
  sub_23EB8FB78(v19, 912483943, &v21);
  v8 = sub_23EB97374(a1, &v21, &v15, 0);
  if (!v8)
  {
    sub_23EB8FB78(v19, 912356724, &v21);
    v8 = sub_23EB97588(a1, &v21, &v14, 0);
    if (!v8)
    {
      sub_23EB8FB78(v19, 910975332, &v21);
      v8 = sub_23EB97710(a1, &v21, &__p, 0);
      if (!v8)
      {
        v10 = v15 != 3 && v15 != 5;
        v11 = v14;
        v22 = 0uLL;
        if (v14)
        {
LABEL_23:
          v8 = 0;
          goto LABEL_24;
        }

        if (SHIBYTE(v18) < 0)
        {
          if (v17)
          {
            p_p = __p;
LABEL_18:
            v8 = sub_23EB7D978(p_p, 0, &v22, 0, 0, 0, 0);
            if (v8)
            {
              sub_23EBCB1D8(910975332, 1732604485, a3, a4);
              goto LABEL_24;
            }
          }
        }

        else if (HIBYTE(v18))
        {
          p_p = &__p;
          goto LABEL_18;
        }

        if (!v10 && !v11 && sub_23EB7D7E4(&v22, 0))
        {
          sub_23EBCB1D8(910975332, 1732604485, a3, a4);
        }

        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD40AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD40F0(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  memset(&v24, 0, sizeof(v24));
  sub_23EB8CCB8(v22, a2);
  __p = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v17 = 0;
  v8 = strlen(a2);
  if (v8 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if (!strncmp(a2, "6PDa", v9))
  {
    v10 = 911230049;
  }

  else
  {
    v10 = 1651717712;
  }

  sub_23EB8FB78(v22, 912483943, &v24);
  v11 = sub_23EB97374(a1, &v24, &v18, 0);
  if (!v11)
  {
    sub_23EB8FB78(v22, 912356724, &v24);
    v11 = sub_23EB97588(a1, &v24, &v17, 0);
    if (!v11)
    {
      sub_23EB8FB78(v22, 911230049, &v24);
      v11 = sub_23EB97710(a1, &v24, &__p, 0);
      if (!v11)
      {
        v13 = v18 != 3 && v18 != 5;
        v14 = v17;
        v25 = 0uLL;
        if (v17)
        {
LABEL_29:
          v11 = 0;
          goto LABEL_30;
        }

        if (SHIBYTE(v21) < 0)
        {
          if (v20)
          {
            p_p = __p;
LABEL_24:
            v11 = sub_23EB7D978(p_p, 0, &v25, 0, 0, 0, 0);
            if (v11)
            {
              sub_23EBCB1D8(v10, 1732604485, a3, a4);
              goto LABEL_30;
            }
          }
        }

        else if (HIBYTE(v21))
        {
          p_p = &__p;
          goto LABEL_24;
        }

        if (!v13 && !v14 && sub_23EB7D7E4(&v25, 0))
        {
          sub_23EBCB1D8(v10, 1732604485, a3, a4);
        }

        goto LABEL_29;
      }
    }
  }

LABEL_30:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBD434C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD4390(uint64_t a1, char *a2, char **a3, uint64_t *a4)
{
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  memset(&v21, 0, sizeof(v21));
  sub_23EB8CCB8(v19, a2);
  __p = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v14 = 0;
  sub_23EB8FB78(v19, 912483943, &v21);
  v8 = sub_23EB97374(a1, &v21, &v15, 0);
  if (!v8)
  {
    sub_23EB8FB78(v19, 912356724, &v21);
    v8 = sub_23EB97588(a1, &v21, &v14, 0);
    if (!v8)
    {
      sub_23EB8FB78(v19, 911701093, &v21);
      v8 = sub_23EB97710(a1, &v21, &__p, 0);
      if (!v8)
      {
        v9 = v15 != 3;
        v10 = v14;
        v13 = 0;
        if (v14)
        {
LABEL_17:
          v8 = 0;
          goto LABEL_18;
        }

        if (SHIBYTE(v18) < 0)
        {
          if (v17)
          {
            p_p = __p;
LABEL_12:
            v8 = sub_23EB7DE5C(p_p, 0, &v13, 0, 0, 0, 0);
            if (v8)
            {
              sub_23EBCB1D8(911701093, 1732604485, a3, a4);
              goto LABEL_18;
            }
          }
        }

        else if (HIBYTE(v18))
        {
          p_p = &__p;
          goto LABEL_12;
        }

        if (!v9 && !v10 && sub_23EB7D704(bswap32(v13)))
        {
          sub_23EBCB1D8(911701093, 1732604485, a3, a4);
        }

        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD4588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23EBD45CC()
{
  if (!qword_27E383818)
  {
    operator new();
  }

  v0 = &dword_281A6C3A8;
  do
  {
    v3 = v0;
    result = sub_23EBD5254(qword_27E383818, v0, "", &v3);
    result[5] = v0;
    v2 = *v0;
    v0 += 14;
  }

  while (v2 != 1651721040);
  return result;
}

uint64_t sub_23EBD4674(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294967292;
  }

  v8 = sub_23EB9AC64(a2);
  v9 = *(qword_27E383818 + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = qword_27E383818 + 8;
  do
  {
    if (*(v9 + 32) >= v8)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < v8));
  }

  while (v9);
  if (v10 == qword_27E383818 + 8 || v8 < *(v10 + 32))
  {
LABEL_9:
    v10 = qword_27E383818 + 8;
  }

  *a3 = 0;
  if (v10 == qword_27E383818 + 8)
  {
    return 0;
  }

  v11 = *(*(v10 + 40) + 48);
  if (!v11)
  {
    return 0;
  }

  return v11(a1, a2, a3, a4);
}

uint64_t sub_23EBD4754(const __CFDictionary *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  memset(&v18, 0, sizeof(v18));
  if (!a1)
  {
    return 4294967292;
  }

  Value = CFDictionaryGetValue(a1, @"legacywds");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  v6 = *MEMORY[0x277CBECE8];
  while (1)
  {
    sub_23EB6FF14(v2, v19, "[*].%kO:mac", v5, @"PeerMAC");
    v8 = v7;
    if (v7)
    {
      break;
    }

    *cStr = 0u;
    v21 = 0u;
    sub_23EB7E798(v19, 6, cStr);
    v9 = CFStringCreateWithCString(v6, cStr, 0x8000100u);
    if (v9)
    {
      snprintf(cStr, 0x20uLL, "%ld", v5);
      MEMORY[0x23EF1EFD0](&v18, "[*].");
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v18;
      }

      else
      {
        v10 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v18.__r_.__value_.__l.__size_;
      }

      v12 = v10 + size;
      if (size >= 1)
      {
        v13 = v10;
        do
        {
          v14 = memchr(v13, 42, size);
          if (!v14)
          {
            break;
          }

          if (*v14 == 42)
          {
            goto LABEL_19;
          }

          v13 = (v14 + 1);
          size = v12 - v13;
        }

        while (v12 - v13 > 0);
      }

      v14 = v12;
LABEL_19:
      if (v14 == v12)
      {
        v15 = -1;
      }

      else
      {
        v15 = v14 - v10;
      }

      std::string::replace(&v18, v15, 1uLL, cStr);
      std::string::append(&v18, "PeerMAC");
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v18;
      }

      else
      {
        v16 = v18.__r_.__value_.__r.__words[0];
      }

      v8 = sub_23EB71598(v2, v16, v9);
      CFRelease(v9);
      if (v8)
      {
        break;
      }

      if (++v5 != v4)
      {
        continue;
      }
    }

    v8 = 0;
    break;
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD4974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD4990(const __CFDictionary *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0;
  memset(&v16, 0, sizeof(v16));
  if (!a1)
  {
    return 4294967292;
  }

  cf = 0;
  Value = CFDictionaryGetValue(a1, @"legacywds");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    sub_23EB6FF14(v2, &v18, "[*].%kO", v5, @"PeerMAC");
    v7 = v6;
    if (v6)
    {
      break;
    }

    v7 = sub_23EB4EF94(1918979393, v18, 1, &cf);
    if (v7)
    {
      break;
    }

    snprintf(__str, 0x20uLL, "%ld", v5);
    MEMORY[0x23EF1EFD0](&v16, "[*].");
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v16;
    }

    else
    {
      v8 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    v10 = v8 + size;
    if (size >= 1)
    {
      v11 = v8;
      do
      {
        v12 = memchr(v11, 42, size);
        if (!v12)
        {
          break;
        }

        if (*v12 == 42)
        {
          goto LABEL_19;
        }

        v11 = (v12 + 1);
        size = v10 - v11;
      }

      while (v10 - v11 > 0);
    }

    v12 = v10;
LABEL_19:
    v13 = v12 == v10 ? -1 : v12 - v8;
    std::string::replace(&v16, v13, 1uLL, __str);
    std::string::append(&v16, "PeerMAC");
    v14 = (v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v16 : v16.__r_.__value_.__r.__words[0];
    v7 = sub_23EB71598(v2, v14, cf);
    CFRelease(cf);
    if (v7)
    {
      break;
    }

    if (++v5 == v4)
    {
      v7 = 0;
      break;
    }
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD4B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD4BB8(const __CFDictionary *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(&v19, 0, sizeof(v19));
  if (!a1)
  {
    return 4294967292;
  }

  v20 = 0;
  cf = 0;
  Value = CFDictionaryGetValue(a1, @"vaps");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    sub_23EB6FF14(v2, &cf, "[*].%kO", v5, @"raCr");
    v7 = v6;
    if (v6 != -6727)
    {
      break;
    }

LABEL_29:
    if (++v5 == v4)
    {
      goto LABEL_30;
    }
  }

  if (v6)
  {
    goto LABEL_31;
  }

  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFDataGetTypeID())
    {
      v9 = cf;
      TypeID = CFStringGetTypeID();
      v7 = sub_23EBD4E00(TypeID, v9, TypeID, &v20);
      if (v7)
      {
        goto LABEL_31;
      }

      snprintf(__str, 0x20uLL, "%ld", v5);
      MEMORY[0x23EF1EFD0](&v19, "[*].");
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v19;
      }

      else
      {
        v11 = v19.__r_.__value_.__r.__words[0];
      }

      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v19.__r_.__value_.__l.__size_;
      }

      v13 = v11 + size;
      if (size >= 1)
      {
        v14 = v11;
        do
        {
          v15 = memchr(v14, 42, size);
          if (!v15)
          {
            break;
          }

          if (*v15 == 42)
          {
            goto LABEL_22;
          }

          v14 = (v15 + 1);
          size = v13 - v14;
        }

        while (v13 - v14 > 0);
      }

      v15 = v13;
LABEL_22:
      v16 = v15 == v13 ? -1 : v15 - v11;
      std::string::replace(&v19, v16, 1uLL, __str);
      std::string::append(&v19, "raCr");
      v17 = (v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v19 : v19.__r_.__value_.__r.__words[0];
      v7 = sub_23EB71598(v2, v17, v20);
      CFRelease(v20);
      if (v7)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

LABEL_30:
  v7 = 0;
LABEL_31:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD4DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD4E00(int a1, const __CFString *cf, uint64_t a3, CFDataRef *a4)
{
  result = 4294967292;
  if (cf && a4)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == a3)
    {
      *a4 = cf;
      CFRetain(cf);
      return 0;
    }

    v9 = v8;
    TypeID = CFStringGetTypeID();
    v11 = CFDataGetTypeID();
    if (v9 == TypeID)
    {
      if (v11 == a3)
      {
        v21 = 0;
        __s = 0;
        result = sub_23EB70FE4(cf, &__s, &v21);
        if (result)
        {
          return result;
        }

        v12 = strlen(__s);
        *a4 = CFDataCreate(*MEMORY[0x277CBECE8], __s, v12);
        free(v21);
        v13 = *a4 == 0;
        goto LABEL_16;
      }

      return 4294967292;
    }

    if (v9 == v11)
    {
      if (CFStringGetTypeID() != a3)
      {
        return 4294967292;
      }

      v14 = *MEMORY[0x277CBECE8];
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      v17 = CFStringCreateWithBytes(v14, BytePtr, Length, 0x8000100u, 0);
LABEL_15:
      *a4 = v17;
      v13 = v17 == 0;
LABEL_16:
      if (v13)
      {
        return 4294967293;
      }

      else
      {
        return 0;
      }
    }

    v18 = CFBooleanGetTypeID();
    v19 = CFNumberGetTypeID();
    if (v9 == v18)
    {
      if (v19 != a3)
      {
        return 4294967292;
      }

      LODWORD(__s) = *MEMORY[0x277CBED10] != cf;
      v17 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &__s);
      goto LABEL_15;
    }

    if (v9 != v19 || CFBooleanGetTypeID() != a3)
    {
      return 4294967292;
    }

    LODWORD(__s) = 0;
    if (!CFNumberGetValue(cf, kCFNumberSInt32Type, &__s))
    {
      return 4294967293;
    }

    if (__s > 1)
    {
      return 4294967292;
    }

    result = 0;
    if (__s)
    {
      v20 = MEMORY[0x277CBED28];
    }

    else
    {
      v20 = MEMORY[0x277CBED10];
    }

    *a4 = *v20;
  }

  return result;
}

uint64_t sub_23EBD500C(const __CFDictionary *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(&v19, 0, sizeof(v19));
  if (!a1)
  {
    return 4294967292;
  }

  v20 = 0;
  cf = 0;
  Value = CFDictionaryGetValue(a1, @"vaps");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    sub_23EB6FF14(v2, &cf, "[*].%kO", v5, @"raCr");
    v7 = v6;
    if (v6 != -6727)
    {
      break;
    }

LABEL_29:
    if (++v5 == v4)
    {
      goto LABEL_30;
    }
  }

  if (v6)
  {
    goto LABEL_31;
  }

  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFStringGetTypeID())
    {
      v9 = cf;
      TypeID = CFDataGetTypeID();
      v7 = sub_23EBD4E00(TypeID, v9, TypeID, &v20);
      if (v7)
      {
        goto LABEL_31;
      }

      snprintf(__str, 0x20uLL, "%ld", v5);
      MEMORY[0x23EF1EFD0](&v19, "[*].");
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v19;
      }

      else
      {
        v11 = v19.__r_.__value_.__r.__words[0];
      }

      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v19.__r_.__value_.__l.__size_;
      }

      v13 = v11 + size;
      if (size >= 1)
      {
        v14 = v11;
        do
        {
          v15 = memchr(v14, 42, size);
          if (!v15)
          {
            break;
          }

          if (*v15 == 42)
          {
            goto LABEL_22;
          }

          v14 = (v15 + 1);
          size = v13 - v14;
        }

        while (v13 - v14 > 0);
      }

      v15 = v13;
LABEL_22:
      v16 = v15 == v13 ? -1 : v15 - v11;
      std::string::replace(&v19, v16, 1uLL, __str);
      std::string::append(&v19, "raCr");
      v17 = (v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v19 : v19.__r_.__value_.__r.__words[0];
      v7 = sub_23EB71598(v2, v17, v20);
      CFRelease(v20);
      if (v7)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

LABEL_30:
  v7 = 0;
LABEL_31:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD5238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23EBD5254(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_23EBD5328(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_23EBD5380(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_23EBD5380(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

__CFString *sub_23EBD551C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_systemTimeZone(MEMORY[0x277CBEBB0], a2, a3, a4);
  if (result)
  {
    v8 = objc_msgSend_name(result, v5, v6, v7);
    if (objc_msgSend_length(v8, v9, v10, v11))
    {
      return v8;
    }

    else
    {
      return @"GMT";
    }
  }

  return result;
}

uint64_t sub_23EBD557C(CFStringRef theString, void *a2)
{
  result = 4294960591;
  if (theString && a2)
  {
    if (CFStringGetLength(theString))
    {
      v7 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], v5, theString, v6);
      if (v7 || (v7 = objc_msgSend_timeZoneWithAbbreviation_(MEMORY[0x277CBEBB0], v8, theString, v9)) != 0)
      {
        v10 = v7;
        v11 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v8, 3, v9);
        if (v11)
        {
          v15 = v11;
          v16 = objc_msgSend_name(v10, v12, v13, v14);
          objc_msgSend_setObject_forKey_(v15, v17, v16, @"zoneName");
          v21 = objc_msgSend_data(v10, v18, v19, v20);
          objc_msgSend_setObject_forKey_(v15, v22, v21, @"zoneFile");
          v26 = objc_msgSend_timeZoneDataVersion(MEMORY[0x277CBEBB0], v23, v24, v25);
          objc_msgSend_setObject_forKey_(v15, v27, v26, @"zoneVersion");
          result = 0;
          *a2 = v15;
        }

        else
        {
          return 4294960568;
        }
      }

      else
      {
        return 4294960569;
      }
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

const __CFString *sub_23EBD5674(const __CFString *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = sub_23EBD5564(result, a2, a3, a4);
    if (result)
    {
      v5 = result;
      result = CFStringGetLength(result);
      if (result)
      {
        theString2 = 0;
        sub_23EB6FF14(v4, &theString2, "%kO", @"zoneVersion");
        if (v6 || !theString2)
        {
          return 0;
        }

        else
        {
          return (CFStringCompare(v5, theString2, 1uLL) == kCFCompareGreaterThan);
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EBD5700(const __CFString *a1, __CFString **a2)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    v5 = 0;
    if (a2 && Length)
    {
      v5 = 0;
      v6 = off_27E382AB0;
      v7 = 18;
      do
      {
        v8 = *v6;
        if (CFStringCompare(a1, *(v6 - 1), 1uLL) == kCFCompareEqualTo)
        {
          *a2 = v8;
          v5 = 1;
        }

        v6 += 2;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

__CFDictionary *sub_23EBD578C(const __CFString *a1)
{
  v11 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    sub_23EB6FF14(a1, &v11, "%kO:int", @"Version");
    if (v11 > 1 || (v3 = CFDictionaryGetValue(a1, @"Changed"), v4 = CFDictionaryGetValue(a1, @"Unchanged"), !v3) || (v5 = v4) == 0)
    {
      theDict = 0;
      sub_23EB6FF14(a1, &theDict, "%kO.[0]", @"Configurations");
      if (v6)
      {
        return Mutable;
      }

      if (!theDict)
      {
        return Mutable;
      }

      Value = CFDictionaryGetValue(theDict, @"Changed");
      if (!Value)
      {
        return Mutable;
      }

      v3 = Value;
      v8 = CFDictionaryGetValue(theDict, @"Unchanged");
      if (!v8)
      {
        return Mutable;
      }

      v5 = v8;
    }

    if (!sub_23EB6FED4(Mutable, v5))
    {
      CFDictionarySetValue(Mutable, @"APPLE-CONFIG", &stru_285145FE8);
      CFDictionaryApplyFunction(v3, sub_23EBD58E8, Mutable);
    }
  }

  return Mutable;
}

void sub_23EBD58E8(const void *a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  if (a3)
  {
    Value = CFDictionaryGetValue(theDict, @"Current");
    if (Value)
    {

      CFDictionarySetValue(a3, a1, Value);
    }
  }
}

uint64_t sub_23EBD5950(uint64_t *a1)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_Create(StepByStepContextRef *)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x106004078599C16uLL);
  if (!v2)
  {
    return 4294960568;
  }

  v3 = v2;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = dispatch_group_create();
  *(v3 + 40) = 1;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(v3 + 48) = Mutable;
  if (!Mutable)
  {
    goto LABEL_13;
  }

  v6 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v3 + 56) = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  *(v3 + 64) = 0;
  *(v3 + 80) = 0;
  v7 = sub_23EBE9B10((v3 + 88));
  if (v7)
  {
LABEL_14:
    sub_23EBD5A9C(v3);
    return v7;
  }

  if (!*(v3 + 88))
  {
LABEL_13:
    v7 = 4294960568;
    goto LABEL_14;
  }

  v7 = 0;
  *a1 = v3;
  return v7;
}

uint64_t sub_23EBD5A9C(uint64_t a1)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_Release(StepByStepContextRef)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_23EBB0D6C(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    sub_23EBB0D6C(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 72) = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 80) = 0;
  }

  sub_23EBE9CC0(*(a1 + 88));
  free(a1);
  return 0;
}

uint64_t sub_23EBD5BC8(uint64_t a1)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_Cancel(StepByStepContextRef)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 88);

  return sub_23EBEA004(v2);
}

uint64_t sub_23EBD5C5C(void *a1)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_Resume(StepByStepContextRef)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v2 = a1[4];
  if (!v2 || !a1[6])
  {
    return 4294960591;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_group_async_f(v2, global_queue, a1, sub_23EBD5D34);
  result = sub_23EBEA0DC(a1[11]);
  if (!result)
  {
    sub_23EBEB0B0(a1[11], 14, 0, 0);
    return 0;
  }

  return result;
}

void sub_23EBD5D34(uint64_t *result)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, " \n");
  }

  if (!result)
  {
    return;
  }

  if (!*result || !result[1])
  {
LABEL_690:
    v2 = 4294960591;
    goto LABEL_691;
  }

  v2 = 4294960573;
  if (sub_23EBEA238(result[11]))
  {
    goto LABEL_691;
  }

  allocator = *MEMORY[0x277CBECE8];
  while (2)
  {
    switch(sub_23EBDA4C0(result))
    {
      case 1u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_CreateExtendOrReplace");
        }

        v263 = 0;
        if (!result[6])
        {
          goto LABEL_690;
        }

        v264 = 0;
        v265[0] = 0;
        LODWORD(v261) = 0;
        sub_23EBDAC08(result, v265);
        if (v3)
        {
          goto LABEL_17;
        }

        if (!v265[0])
        {
          v2 = 4294960568;
          goto LABEL_18;
        }

        if (result[10])
        {
          v252 = result[10];
          v3 = sub_23EB6FDFC(allocator, v265[0], "%ks=%O", v4, v5, v6, v7, v8, "kSBSKey_AutoGuessRecommendation");
        }

        else
        {
          if (CFDictionaryContainsKey(v265[0], @"kSBSKey_SelectorChoice"))
          {
            goto LABEL_425;
          }

          v252 = 100;
          v3 = sub_23EB6FDFC(allocator, v265[0], "%ks=%i", v154, v155, v156, v157, v158, "kSBSKey_SelectorChoice");
        }

        if (v3)
        {
LABEL_17:
          v2 = v3;
          goto LABEL_18;
        }

LABEL_425:
        if (result[8])
        {
          if (!CFDictionaryContainsKey(v265[0], @"kSBSKey_RestoreRecommendation"))
          {
            v252 = result[8];
            v3 = sub_23EB6FDFC(allocator, v265[0], "%ks=%O", v159, v160, v161, v162, v163, "kSBSKey_RestoreRecommendation");
            if (v3)
            {
              goto LABEL_17;
            }
          }
        }

        v264 = 0;
        v3 = sub_23EBDAC94(result, 1, v265[0], &v264);
        if (v3)
        {
          goto LABEL_17;
        }

        if (!v264)
        {
          v2 = 4294960569;
          goto LABEL_18;
        }

        sub_23EB6FF14(v264, &v261, "%ks:int", "kSBSKey_SelectorChoice");
        if (v3)
        {
          goto LABEL_17;
        }

        v252 = v261;
        v3 = sub_23EB6FDFC(allocator, v265[0], "%ks=%i", v164, v165, v166, v167, v168, "kSBSKey_SelectorChoice");
        if (v3)
        {
          goto LABEL_17;
        }

        v2 = 4294960587;
        if (v261 <= 299)
        {
          if (v261 != 100)
          {
            if (v261 == 200)
            {
              if (*result && !sub_23EC0F77C(v3, v169, v170, v171))
              {
                v172 = 0;
                v173 = 5;
              }

              else
              {
                v172 = 0;
                v173 = 7;
              }

              goto LABEL_634;
            }

LABEL_18:
            if (v263)
            {
              CFRelease(v263);
            }

            if (!v2)
            {
              if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
              {
                v9 = "eSBSStep_CreateExtendOrReplace";
                goto LABEL_567;
              }

              goto LABEL_680;
            }

            goto LABEL_691;
          }

          v172 = 0;
          v173 = 2;
LABEL_634:
          v3 = sub_23EBD8E80(result, v173, v172);
          goto LABEL_17;
        }

        if (v261 == 300)
        {
          v172 = 0;
          v173 = 10;
          goto LABEL_634;
        }

        if (v261 != 400)
        {
          goto LABEL_18;
        }

        v262 = 0;
        sub_23EB6FF14(v265[0], &v262, "%ks", "kSBSKey_RestoreRecommendation", v252);
        if (v230)
        {
LABEL_572:
          v2 = v230;
          goto LABEL_18;
        }

        if (v262)
        {
          v230 = sub_23EB6F348(allocator, &v263, "{%ks=%O}", "kSBSKey_RestoreRecommendation", v262);
          if (v230)
          {
            goto LABEL_572;
          }

          v172 = v263;
          if (v263)
          {
            v173 = 16;
            goto LABEL_634;
          }
        }

        v2 = 4294960569;
        goto LABEL_18;
      case 2u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_Create_Config");
        }

        v15 = sub_23EBDA528(result);
        if (v15)
        {
          goto LABEL_694;
        }

        v22 = sub_23EBDA4C0(result);
        LOBYTE(v13) = v22 == 2;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_679;
        }

        v23 = v22;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_679;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", "eSBSStep_Create_Config");
        if (v23 != 2)
        {
          goto LABEL_680;
        }

        goto LABEL_693;
      case 3u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_Guest_Config");
        }

        v264 = 0;
        if (!result[6])
        {
          goto LABEL_690;
        }

        v265[0] = 0;
        v263 = 0;
        if (*result && result[1] && result[9])
        {
          sub_23EBDAC08(result, v265);
          if (v17)
          {
            goto LABEL_90;
          }

          if (v265[0])
          {
            sub_23EB6FF14(result[9], &v263, "%ks", "kSBSKey_Result_ConfigurationOptions");
            if (v17)
            {
              goto LABEL_90;
            }

            if (v263)
            {
              v17 = sub_23EB6FDFC(allocator, v265[0], "%##O", v138, v139, v140, v141, v142, v263);
              if (v17)
              {
                goto LABEL_90;
              }

              v143 = sub_23EBDAC94(result, 3, v265[0], &v264);
              if (v143 == -6769)
              {
                v17 = sub_23EBD8E80(result, 0, 0);
LABEL_90:
                v2 = v17;
                goto LABEL_182;
              }

              v2 = v143;
              if (!v143)
              {
                if (!v264)
                {
                  v2 = 4294960569;
                  goto LABEL_691;
                }

                v17 = sub_23EB6FDFC(allocator, v263, "%##O", v144, v145, v146, v147, v148, v264);
                goto LABEL_90;
              }
            }

            else
            {
              v2 = 4294960569;
            }
          }

          else
          {
            v2 = 4294960568;
          }
        }

        else
        {
          v2 = 4294960591;
        }

LABEL_182:
        if (v264)
        {
          CFRelease(v264);
        }

        if (v2)
        {
          goto LABEL_691;
        }

        v33 = sub_23EBDA4C0(result);
        v13 = v33 == 3;
        if (dword_27E382BC8 <= 800)
        {
          v34 = v33;
          if (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u))
          {
            sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", "eSBSStep_Guest_Config");
            if (v34 == 3)
            {
              goto LABEL_693;
            }

            goto LABEL_680;
          }
        }

LABEL_679:
        if (!v13)
        {
LABEL_680:
          if (sub_23EBEA238(result[11]))
          {
            v2 = 4294960573;
            goto LABEL_691;
          }

          continue;
        }

LABEL_693:
        v15 = sub_23EBEA18C(result[11]);
LABEL_694:
        v2 = v15;
LABEL_691:
        sub_23EBEAB18(result[11], 15, v2, result[9]);
        return;
      case 4u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ExtendWiredOrWireless");
        }

        v263 = 0;
        if (!result[6])
        {
          goto LABEL_690;
        }

        v264 = 0;
        v265[0] = 0;
        LODWORD(cf) = 0;
        if (!*result)
        {
          v2 = 4294960591;
          goto LABEL_238;
        }

        sub_23EBDAC08(result, v265);
        if (v20)
        {
          goto LABEL_108;
        }

        if (!v265[0])
        {
          v2 = 4294960568;
          goto LABEL_238;
        }

        if (!CFDictionaryContainsKey(v265[0], @"kSBSKey_SelectorChoice"))
        {
          v174 = v265[0];
          v175 = sub_23EB6B5A0(*result);
          v181 = 220;
          if (!v175)
          {
            v181 = 210;
          }

          v252 = v181;
          v20 = sub_23EB6FDFC(allocator, v174, "%ks=%i", v176, v177, v178, v179, v180, "kSBSKey_SelectorChoice");
          if (v20)
          {
            goto LABEL_108;
          }
        }

        v264 = 0;
        v60 = sub_23EBDAC94(result, 4, v265[0], &v264);
        if (v60 == -6769)
        {
          v67 = 0;
          v68 = 0;
          goto LABEL_463;
        }

        v2 = v60;
        if (v60)
        {
          goto LABEL_238;
        }

        if (!v264)
        {
          v2 = 4294960569;
          goto LABEL_238;
        }

        sub_23EB6FF14(v264, &cf, "%ks:int", "kSBSKey_SelectorChoice");
        if (v20)
        {
          goto LABEL_108;
        }

        v252 = cf;
        v20 = sub_23EB6FDFC(allocator, v265[0], "%ks=%i", v61, v62, v63, v64, v65, "kSBSKey_SelectorChoice");
        if (v20)
        {
          goto LABEL_108;
        }

        if (cf == 220)
        {
          v67 = 0;
          v68 = 5;
          goto LABEL_463;
        }

        if (cf != 210)
        {
          v2 = 4294960587;
          goto LABEL_238;
        }

        v262 = 0;
        v66 = sub_23EBDAEEC(result, &v262);
        if (v66 == -6727)
        {
          goto LABEL_299;
        }

        v2 = v66;
        v261 = 0;
        if (v66)
        {
          goto LABEL_238;
        }

        if (!v262)
        {
          goto LABEL_640;
        }

        if (sub_23EBB4248(result[1], 1852787795))
        {
          v231 = 14;
        }

        else
        {
          v231 = 6;
        }

        v232 = sub_23EBDB10C(v262, v231, *result, &v261);
        if (v232 == -6727)
        {
LABEL_299:
          v67 = 0;
          v68 = 8;
LABEL_463:
          v20 = sub_23EBD8E80(result, v68, v67);
LABEL_108:
          v2 = v20;
          goto LABEL_238;
        }

        v2 = v232;
        if (!v232)
        {
          if (v261)
          {
            if (CFArrayGetCount(v261))
            {
              v2 = sub_23EB6F348(allocator, &v263, "{%ks=%O}", "kSBSKey_NetworkScanRecordList", v261);
              if (v261)
              {
                CFRelease(v261);
              }

              if (!v2)
              {
                v67 = v263;
                if (v263)
                {
                  v68 = 7;
                  goto LABEL_463;
                }

                v2 = 4294960569;
              }
            }

            else
            {
              v2 = 4294960591;
            }
          }

          else
          {
LABEL_640:
            v2 = 4294960568;
          }
        }

LABEL_238:
        if (v263)
        {
          CFRelease(v263);
        }

        if (v2)
        {
          goto LABEL_691;
        }

        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_680;
        }

        v9 = "eSBSStep_ExtendWiredOrWireless";
        goto LABEL_567;
      case 5u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ExtendWired_Connections");
        }

        v15 = sub_23EBDA850(result);
        if (v15)
        {
          goto LABEL_694;
        }

        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_680;
        }

        v9 = "eSBSStep_ExtendWired_Connections";
        goto LABEL_567;
      case 6u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ExtendWired_Config");
        }

        v264 = 0;
        v265[0] = 0;
        v261 = 0;
        v262 = 0;
        v263 = 0;
        if (!result[6])
        {
          goto LABEL_690;
        }

        sub_23EBDAC08(result, v265);
        if (v24)
        {
          goto LABEL_133;
        }

        if (!v265[0])
        {
          goto LABEL_370;
        }

        v40 = sub_23EBDAC94(result, 6, v265[0], &v264);
        if (v40 == -6769)
        {
          v24 = sub_23EBD8E80(result, 0, 0);
LABEL_133:
          v2 = v24;
          goto LABEL_134;
        }

        v2 = v40;
        if (!v40)
        {
          if (v264)
          {
            sub_23EB6FF14(v264, &v261, "%ks", "kSBSKey_SourceBase");
            if (v24)
            {
              goto LABEL_133;
            }

            if (v261)
            {
              v24 = sub_23EBB4234(result[1], &v262);
              if (v24)
              {
                goto LABEL_133;
              }

              if (!v262)
              {
                v2 = 4294960569;
                goto LABEL_136;
              }

              v24 = sub_23EB6F348(allocator, &v263, "{%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O}", "kSBSKey_Result_ConfigurationChoice", 2, "kSBSKey_Result_ConfigurationOptions", v264, "kSBSKey_Result_TargetBase", *result, "kSBSKey_Result_TargetBaseSettings", v262, "kSBSKey_Result_SourceBase", v261);
              if (v24)
              {
                goto LABEL_133;
              }

              if (v263)
              {
                v2 = 0;
                result[9] = v263;
                v263 = 0;
              }

              else
              {
                v2 = 4294960568;
              }
            }

            else
            {
LABEL_370:
              v2 = 4294960568;
            }
          }

          else
          {
            v2 = 4294960569;
          }
        }

LABEL_134:
        if (v262)
        {
          CFRelease(v262);
          v262 = 0;
        }

LABEL_136:
        if (v264)
        {
          CFRelease(v264);
          v264 = 0;
        }

        if (v263)
        {
          CFRelease(v263);
        }

        if (v2)
        {
          goto LABEL_691;
        }

        v25 = sub_23EBDA4C0(result);
        v13 = v25 == 6;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_679;
        }

        v26 = v25;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_679;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", "eSBSStep_ExtendWired_Config");
        if (v26 == 6)
        {
          goto LABEL_693;
        }

        goto LABEL_680;
      case 7u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ExtendNetworkChoice");
        }

        v263 = 0;
        v264 = 0;
        v262 = 0;
        cf = 0;
        v261 = 0;
        v259 = 0;
        if (!result[6])
        {
          goto LABEL_690;
        }

        if (!*result)
        {
          v30 = 0;
          v2 = 4294960591;
          goto LABEL_525;
        }

        sub_23EBDAC08(result, &v264);
        if (v29)
        {
          goto LABEL_163;
        }

        if (!v264)
        {
          goto LABEL_524;
        }

        if (!CFDictionaryContainsKey(v264, @"kSBSKey_SelectorChoice"))
        {
          v252 = 211;
          v29 = sub_23EB6FDFC(allocator, v264, "%ks=%i", v69, v70, v71, v72, v73, "kSBSKey_SelectorChoice");
          if (v29)
          {
            goto LABEL_163;
          }
        }

        v74 = sub_23EBDAEEC(result, &v259);
        if (v74 == -6727)
        {
          goto LABEL_496;
        }

        v2 = v74;
        if (v74)
        {
          goto LABEL_164;
        }

        if (!v259)
        {
          goto LABEL_524;
        }

        if (sub_23EBB4248(result[1], 1112757313))
        {
          LODWORD(v265[0]) = 0;
          v29 = sub_23EBB3F7C(result[1], 1937326416, v265);
          if (v29)
          {
            goto LABEL_163;
          }

          v75 = LODWORD(v265[0]) >= 0x77 && !sub_23EBB4248(result[1], 1632923251);
        }

        else
        {
          v75 = 1;
        }

        if (sub_23EBB4248(result[1], 1852787795))
        {
          v192 = 14;
        }

        else
        {
          v192 = 6;
        }

        if (sub_23EBDB10C(v259, (v192 | v75), *result, &v262) != -6727)
        {
          v252 = v262;
          v29 = sub_23EB6FDFC(allocator, v264, "%ks=%O", v193, v194, v195, v196, v197, "kSBSKey_NetworkScanRecordList");
          if (v29)
          {
LABEL_163:
            v2 = v29;
LABEL_164:
            v30 = 0;
            goto LABEL_525;
          }
        }

LABEL_496:
        sub_23EB6FF14(v264, &v262, "%ks", "kSBSKey_NetworkScanRecordList");
        if (v29)
        {
          goto LABEL_163;
        }

        if (!v262)
        {
          goto LABEL_524;
        }

        if (CFDictionaryContainsKey(v264, @"kSBSKey_SourceNetwork"))
        {
          goto LABEL_506;
        }

        if (!v262)
        {
          goto LABEL_506;
        }

        v198 = sub_23EBEBA44(result[11], &cf, 0);
        if (v198 == -6727)
        {
          goto LABEL_506;
        }

        v2 = v198;
        if (v198)
        {
          goto LABEL_164;
        }

        if (!cf)
        {
          v30 = 0;
          v2 = 4294960568;
          goto LABEL_527;
        }

        v199 = sub_23EB6B6FC(cf, 0, v262);
        if (v199 == -1)
        {
          goto LABEL_506;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v262, v199);
        if (!ValueAtIndex)
        {
LABEL_524:
          v30 = 0;
          v2 = 4294960568;
          goto LABEL_525;
        }

        v252 = ValueAtIndex;
        v29 = sub_23EB6FDFC(allocator, v264, "%ks=%O", v201, v202, v203, v204, v205, "kSBSKey_SourceNetwork");
        if (v29)
        {
          goto LABEL_163;
        }

LABEL_506:
        v206 = sub_23EBB426C(result[1]);
        v30 = v206;
        if (v206)
        {
          v252 = v206;
          v212 = sub_23EB6FDFC(allocator, v264, "%ks=%O", v207, v208, v209, v210, v211, "kSBSKey_TargetBaseFeatures");
          if (v212)
          {
            goto LABEL_577;
          }
        }

        if (*(result + 41))
        {
          goto LABEL_509;
        }

        if (!sub_23EB6B5A0(*result))
        {
          goto LABEL_509;
        }

        v265[0] = 0;
        if (!sub_23EBDB28C(result, @"kSBSCacheKey_TargetRemoteBrowseRecords", v265))
        {
          if (v265[0])
          {
            goto LABEL_509;
          }
        }

        v265[0] = 0;
        v2 = sub_23EBEE8B0(result[11], *result, 0, 0, 0, 0, v265);
        if (v2)
        {
          goto LABEL_525;
        }

        if (v265[0])
        {
          v2 = sub_23EBD8C7C(result, v265[0]);
          if (v265[0])
          {
            CFRelease(v265[0]);
            v265[0] = 0;
          }

          if (v2)
          {
            goto LABEL_525;
          }
        }

        sub_23EBDB4B8(result, &v259);
        v259 = 0;
        *(result + 41) = 1;
LABEL_509:
        v263 = 0;
        v213 = sub_23EBDAC94(result, 7, v264, &v263);
        if (v213 == -6769)
        {
          v228 = 0;
          v227 = 0;
LABEL_576:
          v212 = sub_23EBD8E80(result, v227, v228);
LABEL_577:
          v2 = v212;
          goto LABEL_525;
        }

        v2 = v213;
        if (v213 != -6723)
        {
          v265[0] = 0;
          LODWORD(theArray) = 0;
          if (!v213)
          {
            if (v263)
            {
              sub_23EB6FF14(v263, &theArray, "%ks:int", "kSBSKey_SelectorChoice");
              if (v212)
              {
                goto LABEL_577;
              }

              v252 = theArray;
              v212 = sub_23EB6FDFC(allocator, v264, "%ks=%i", v214, v215, v216, v217, v218, "kSBSKey_SelectorChoice");
              if (v212)
              {
                goto LABEL_577;
              }

              sub_23EB6FF14(v263, v265, "%ks", "kSBSKey_SourceNetwork", v252);
              if (v212)
              {
                goto LABEL_577;
              }

              if (v265[0])
              {
                v252 = v265[0];
                v212 = sub_23EB6FDFC(allocator, v264, "%ks=%O", v219, v220, v221, v222, v223, "kSBSKey_SourceNetwork");
                if (v212)
                {
                  goto LABEL_577;
                }

                v212 = sub_23EB6F348(allocator, &v261, "{%ks=%i%ks=%O}", "kSBSKey_SelectorChoice", theArray, "kSBSKey_SourceNetwork", v265[0]);
                if (v212)
                {
                  goto LABEL_577;
                }

                if (v261)
                {
                  if (sub_23EC0FA70(v265[0], v224, v225, v226))
                  {
                    v227 = 8;
                  }

                  else
                  {
                    v227 = 9;
                  }

                  v228 = v261;
                  goto LABEL_576;
                }
              }
            }

            v2 = 4294960569;
          }
        }

LABEL_525:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

LABEL_527:
        if (v261)
        {
          CFRelease(v261);
          v261 = 0;
        }

        if (v30)
        {
          CFRelease(v30);
        }

        if (v2)
        {
          goto LABEL_691;
        }

        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_680;
        }

        v9 = "eSBSStep_ExtendNetworkChoice";
        goto LABEL_567;
      case 8u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ExtendWireless_Config");
        }

        v264 = 0;
        v265[0] = 0;
        cf = 0;
        v261 = 0;
        theArray = 0;
        v259 = 0;
        v257 = 0;
        v262 = 0;
        v263 = 0;
        if (!*result)
        {
          v2 = 4294960591;
          goto LABEL_671;
        }

        if (!result[6])
        {
          goto LABEL_369;
        }

        sub_23EBDAC08(result, v265);
        if (v21)
        {
          goto LABEL_116;
        }

        if (!v265[0])
        {
          goto LABEL_666;
        }

        sub_23EB6FF14(v265[0], &cf, "%ks", "kSBSKey_SourceNetwork");
        if (v21)
        {
          goto LABEL_116;
        }

        if (!cf)
        {
          goto LABEL_666;
        }

        v110 = sub_23EC0F94C(cf, v107, v108, v109);
        if (!v110)
        {
          goto LABEL_369;
        }

        v111 = v110;
        if (sub_23EBEBC34(result[11], v110, 0))
        {
          v112 = 0;
        }

        else
        {
          v112 = 1;
          v191 = sub_23EBEE390(result[11], cf, 0, 0, 1);
          if (v191 == -6723)
          {
            goto LABEL_683;
          }

          v2 = v191;
          if (v191)
          {
            goto LABEL_667;
          }
        }

        sub_23EB6FF14(v265[0], &v257, "%ks:int", "kSBSKey_SelectorChoice", v252);
        if (v21)
        {
          goto LABEL_116;
        }

        v113 = sub_23EBDB638(result, v112, &v259);
        if (v113 == -6727)
        {
LABEL_682:
          v21 = sub_23EBEDA58(result[11], @"kAskUserWarning_Prompt", 0, 0, @"kAskUserWarning_NoBaseStationsFound_OnNetwork", v111, 0, 0, 0);
          if (!v21)
          {
LABEL_683:
            v21 = sub_23EBD8E80(result, 0, 0);
          }

LABEL_116:
          v2 = v21;
          goto LABEL_667;
        }

        v2 = v113;
        if (!v113)
        {
          if (!v259)
          {
            goto LABEL_666;
          }

          v114 = sub_23EBDB8C4(result, v259, *result, 1, v257 == 211, 0, v111, &theArray);
          if (v114 == -6727)
          {
            goto LABEL_682;
          }

          v2 = v114;
          if (!v114)
          {
            if (!theArray)
            {
              goto LABEL_666;
            }

            Count = CFArrayGetCount(theArray);
            if (!Count)
            {
LABEL_369:
              v2 = 4294960591;
              goto LABEL_667;
            }

            v121 = Count;
            v252 = theArray;
            v2 = sub_23EB6FDFC(allocator, v265[0], "%ks=%O", v116, v117, v118, v119, v120, "kSBSKey_BrowseRecordList");
            CFRelease(theArray);
            if (v2)
            {
              goto LABEL_667;
            }

            if (v121 < 2)
            {
              if (v121 != 1)
              {
                goto LABEL_682;
              }

              v241 = CFArrayGetValueAtIndex(theArray, 0);
              v261 = v241;
              if (!v241)
              {
                goto LABEL_666;
              }

              v127 = v265[0];
              v252 = v241;
              v128 = "kSBSKey_SourceBase";
            }

            else
            {
              v127 = v265[0];
              v252 = theArray;
              v128 = "kSBSKey_BrowseRecordList";
            }

            v21 = sub_23EB6FDFC(allocator, v127, "%ks=%O", v122, v123, v124, v125, v126, v128);
            if (v21)
            {
              goto LABEL_116;
            }

            v242 = sub_23EBDAC94(result, 8, v265[0], &v264);
            if (v242 == -6769)
            {
              goto LABEL_683;
            }

            v2 = v242;
            if (!v242)
            {
              if (v264)
              {
                sub_23EB6FF14(v264, &v261, "%ks", "kSBSKey_SourceBase", v252);
                if (v21)
                {
                  goto LABEL_116;
                }

                if (v261)
                {
                  v21 = sub_23EBB4234(result[1], &v263);
                  if (v21)
                  {
                    goto LABEL_116;
                  }

                  if (!v263)
                  {
                    v2 = 4294960569;
                    goto LABEL_669;
                  }

                  v252 = v257;
                  v21 = sub_23EB6FDFC(allocator, v264, "%ks=%i", v243, v244, v245, v246, v247, "kSBSKey_SelectorChoice");
                  if (v21)
                  {
                    goto LABEL_116;
                  }

                  v248 = sub_23EBDBD64(result, v261);
                  v249 = 2;
                  if (!v248)
                  {
                    v249 = 3;
                  }

                  v21 = sub_23EB6F348(allocator, &v262, "{%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O}", "kSBSKey_Result_ConfigurationChoice", v249, "kSBSKey_Result_ConfigurationOptions", v264, "kSBSKey_Result_TargetBase", *result, "kSBSKey_Result_TargetBaseSettings", v263, "kSBSKey_Result_SourceBase", v261);
                  if (v21)
                  {
                    goto LABEL_116;
                  }

                  if (v262)
                  {
                    v2 = 0;
                    result[9] = v262;
                    v262 = 0;
                    goto LABEL_667;
                  }
                }

LABEL_666:
                v2 = 4294960568;
                goto LABEL_667;
              }

              v2 = 4294960569;
            }
          }
        }

LABEL_667:
        if (v263)
        {
          CFRelease(v263);
          v263 = 0;
        }

LABEL_669:
        if (v264)
        {
          CFRelease(v264);
          v264 = 0;
        }

LABEL_671:
        if (v262)
        {
          CFRelease(v262);
        }

        if (v2)
        {
          goto LABEL_691;
        }

        v250 = sub_23EBDA4C0(result);
        v13 = v250 == 8;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_679;
        }

        v251 = v250;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_679;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", "eSBSStep_ExtendWireless_Config");
        if (v251 == 8)
        {
          goto LABEL_693;
        }

        goto LABEL_680;
      case 9u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_Join_Config");
        }

        v262 = 0;
        v263 = 0;
        v264 = 0;
        if (!*result)
        {
          goto LABEL_690;
        }

        v265[0] = 0;
        cf = 0;
        v261 = 0;
        if (!result[6])
        {
          v2 = 4294960591;
          goto LABEL_384;
        }

        sub_23EBDAC08(result, v265);
        if (v32)
        {
          goto LABEL_180;
        }

        if (!v265[0])
        {
          goto LABEL_383;
        }

        sub_23EB6FF14(v265[0], &v261, "%ks", "kSBSKey_SourceNetwork");
        if (v32)
        {
          goto LABEL_180;
        }

        if (!v261)
        {
          goto LABEL_383;
        }

        v99 = sub_23EBECA80(result[11], @"keychainNetworkType", v261, &cf);
        if (v99 == -6727)
        {
          goto LABEL_345;
        }

        v2 = v99;
        if (v99)
        {
          goto LABEL_384;
        }

        if (cf)
        {
          v252 = cf;
          v2 = sub_23EB6FDFC(allocator, v265[0], "%ks=%O", v100, v101, v102, v103, v104, "kSBSKey_NetworkPassword");
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (!v2)
          {
LABEL_345:
            v105 = sub_23EBDAC94(result, 9, v265[0], &v264);
            if (v105 == -6769)
            {
              v32 = sub_23EBD8E80(result, 0, 0);
LABEL_180:
              v2 = v32;
              goto LABEL_384;
            }

            v2 = v105;
            if (!v105)
            {
              if (v264)
              {
                sub_23EB6FF14(v264, &v261, "%ks", "kSBSKey_SourceNetwork");
                if (v32)
                {
                  goto LABEL_180;
                }

                if (!v261)
                {
                  goto LABEL_625;
                }

                v106 = sub_23EBB4234(result[1], &v263);
                if (v106)
                {
                  goto LABEL_351;
                }

                if (!v263)
                {
                  v2 = 4294960569;
                  goto LABEL_386;
                }

                v106 = sub_23EB6F348(allocator, &v262, "{%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O}", "kSBSKey_Result_ConfigurationChoice", 4, "kSBSKey_Result_ConfigurationOptions", v264, "kSBSKey_Result_TargetBase", *result, "kSBSKey_Result_TargetBaseSettings", v263, "kSBSKey_Result_SourceNetwork", v261);
                if (v106)
                {
LABEL_351:
                  v2 = v106;
                  goto LABEL_384;
                }

                if (v262)
                {
                  v2 = 0;
                  result[9] = v262;
                  v262 = 0;
                }

                else
                {
LABEL_625:
                  v2 = 4294960568;
                }
              }

              else
              {
                v2 = 4294960569;
              }
            }
          }
        }

        else
        {
LABEL_383:
          v2 = 4294960568;
        }

LABEL_384:
        if (v263)
        {
          CFRelease(v263);
          v263 = 0;
        }

LABEL_386:
        if (v264)
        {
          CFRelease(v264);
          v264 = 0;
        }

        if (v262)
        {
          CFRelease(v262);
        }

        if (v2)
        {
          goto LABEL_691;
        }

        v136 = sub_23EBDA4C0(result);
        v13 = v136 == 9;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_679;
        }

        v137 = v136;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_679;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", "eSBSStep_Join_Config");
        if (v137 == 9)
        {
          goto LABEL_693;
        }

        goto LABEL_680;
      case 0xAu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ReplaceChoice");
        }

        v263 = 0;
        if (!result[6])
        {
          goto LABEL_690;
        }

        v264 = 0;
        v265[0] = 0;
        LODWORD(cf) = 0;
        if (!*result)
        {
          v2 = 4294960591;
          goto LABEL_230;
        }

        sub_23EBDAC08(result, v265);
        if (v16)
        {
          goto LABEL_80;
        }

        if (!v265[0])
        {
          v2 = 4294960568;
          goto LABEL_230;
        }

        v264 = 0;
        v51 = sub_23EBDAC94(result, 10, v265[0], &v264);
        if (v51 == -6769)
        {
          v58 = 0;
          v59 = 0;
        }

        else
        {
          v2 = v51;
          if (v51)
          {
            goto LABEL_230;
          }

          if (!v264)
          {
            v2 = 4294960569;
            goto LABEL_230;
          }

          sub_23EB6FF14(v264, &cf, "%ks:int", "kSBSKey_SelectorChoice");
          if (v16)
          {
            goto LABEL_80;
          }

          v252 = cf;
          v16 = sub_23EB6FDFC(allocator, v265[0], "%ks=%i", v52, v53, v54, v55, v56, "kSBSKey_SelectorChoice");
          if (v16)
          {
            goto LABEL_80;
          }

          if (cf == 330)
          {
            v58 = 0;
            v59 = 13;
            goto LABEL_449;
          }

          if (cf == 320)
          {
            v58 = 0;
            v59 = 12;
            goto LABEL_449;
          }

          if (cf != 310)
          {
            v2 = 4294960587;
            goto LABEL_230;
          }

          v262 = 0;
          v57 = sub_23EBDAEEC(result, &v262);
          if (v57 == -6727)
          {
            goto LABEL_288;
          }

          v2 = v57;
          v261 = 0;
          if (v57)
          {
LABEL_230:
            if (v263)
            {
              CFRelease(v263);
            }

            if (v2)
            {
              goto LABEL_691;
            }

            if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
            {
              v9 = "eSBSStep_ReplaceChoice";
LABEL_567:
              sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", v9);
            }

            goto LABEL_680;
          }

          if (!v262)
          {
LABEL_642:
            v2 = 4294960568;
            goto LABEL_230;
          }

          v233 = sub_23EBDB10C(v262, 2, *result, &v261);
          if (v233 != -6727)
          {
            v2 = v233;
            if (v233)
            {
              goto LABEL_230;
            }

            if (v261)
            {
              if (CFArrayGetCount(v261))
              {
                v2 = sub_23EB6F348(allocator, &v263, "{%ks=%O}", "kSBSKey_NetworkScanRecordList", v261);
                if (v261)
                {
                  CFRelease(v261);
                }

                if (!v2)
                {
                  v58 = v263;
                  if (v263)
                  {
                    v59 = 11;
                    goto LABEL_449;
                  }

                  v2 = 4294960569;
                }
              }

              else
              {
                v2 = 4294960591;
              }

              goto LABEL_230;
            }

            goto LABEL_642;
          }

LABEL_288:
          v58 = 0;
          v59 = 15;
        }

LABEL_449:
        v16 = sub_23EBD8E80(result, v59, v58);
LABEL_80:
        v2 = v16;
        goto LABEL_230;
      case 0xBu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ReplaceNetworkChoice");
        }

        v264 = 0;
        v265[0] = 0;
        v262 = 0;
        v263 = 0;
        cf = 0;
        v261 = 0;
        theArray = 0;
        v259 = 0;
        if (!result[6])
        {
          goto LABEL_690;
        }

        if (!*result)
        {
          goto LABEL_553;
        }

        sub_23EBDAC08(result, v265);
        if (v31)
        {
          goto LABEL_172;
        }

        if (!v265[0])
        {
          goto LABEL_554;
        }

        sub_23EB6FF14(v265[0], &v262, "%ks", "kSBSKey_NetworkScanRecordList");
        if (v31)
        {
          goto LABEL_172;
        }

        if (!v262)
        {
          goto LABEL_554;
        }

        if (CFDictionaryContainsKey(v265[0], @"kSBSKey_SourceNetwork"))
        {
          goto LABEL_320;
        }

        if (!v262)
        {
          goto LABEL_320;
        }

        v76 = sub_23EBEBA44(result[11], &v261, 0);
        if (v76 == -6727)
        {
          goto LABEL_320;
        }

        v2 = v76;
        if (v76)
        {
          goto LABEL_555;
        }

        if (!v261)
        {
          goto LABEL_554;
        }

        v77 = sub_23EB6B6FC(v261, 0, v262);
        if (v77 == -1)
        {
          goto LABEL_320;
        }

        v78 = CFArrayGetValueAtIndex(v262, v77);
        if (!v78)
        {
          goto LABEL_554;
        }

        v252 = v78;
        v31 = sub_23EB6FDFC(allocator, v265[0], "%ks=%O", v79, v80, v81, v82, v83, "kSBSKey_SourceNetwork");
        if (v31)
        {
          goto LABEL_172;
        }

        do
        {
LABEL_320:
          v264 = 0;
          v84 = sub_23EBDAC94(result, 11, v265[0], &v264);
          if (v84)
          {
            v2 = v84;
            if (v84 == -6769)
            {
              v189 = 0;
              v190 = 0;
              goto LABEL_481;
            }

            goto LABEL_555;
          }

          if (!v264)
          {
            goto LABEL_482;
          }

          sub_23EB6FF14(v264, &theArray, "%ks", "kSBSKey_SourceNetwork");
          if (v31)
          {
            goto LABEL_172;
          }

          if (!theArray)
          {
LABEL_482:
            v2 = 4294960569;
            goto LABEL_555;
          }

          v252 = theArray;
          v31 = sub_23EB6FDFC(allocator, v265[0], "%ks=%O", v85, v86, v87, v88, v89, "kSBSKey_SourceNetwork");
          if (v31)
          {
            goto LABEL_172;
          }

          v93 = sub_23EC0F94C(theArray, v90, v91, v92);
          if (!v93)
          {
            goto LABEL_553;
          }

          v94 = v93;
          if (sub_23EBEBC34(result[11], v93, 0))
          {
            v95 = 0;
            goto LABEL_330;
          }

          v95 = 1;
          v96 = sub_23EBEE390(result[11], theArray, 0, 0, 1);
        }

        while (v96 == -6723);
        v2 = v96;
        if (v96)
        {
          goto LABEL_555;
        }

LABEL_330:
        v97 = sub_23EBDB638(result, v95, &cf);
        if (v97 == -6727)
        {
LABEL_334:
          v2 = sub_23EBEDA58(result[11], @"kAskUserWarning_Prompt", 0, 0, @"kAskUserWarning_NoBaseStationsFound_OnNetwork", v94, 0, 0, 0);
          if (v2)
          {
            goto LABEL_555;
          }

          goto LABEL_320;
        }

        v2 = v97;
        if (v97)
        {
          goto LABEL_555;
        }

        if (!cf)
        {
          goto LABEL_554;
        }

        v98 = sub_23EBDB8C4(result, cf, *result, 0, 0, 1, v94, &v259);
        if (v98 == -6727)
        {
          goto LABEL_334;
        }

        v2 = v98;
        if (v98)
        {
          goto LABEL_555;
        }

        if (!v259)
        {
LABEL_554:
          v2 = 4294960568;
          goto LABEL_555;
        }

        if (!CFArrayGetCount(v259))
        {
LABEL_553:
          v2 = 4294960591;
          goto LABEL_555;
        }

        v229 = v259;
        v2 = 4294960569;
        if (theArray && v259)
        {
          v31 = sub_23EB6F348(allocator, &v263, "{%ks=%O%ks=%O}", "kSBSKey_SourceNetwork", theArray, "kSBSKey_BrowseRecordList", v259);
          if (v31)
          {
            goto LABEL_172;
          }

          v189 = v263;
          if (v263)
          {
            v190 = 15;
LABEL_481:
            v31 = sub_23EBD8E80(result, v190, v189);
LABEL_172:
            v2 = v31;
          }

LABEL_555:
          v229 = v259;
        }

        if (v229)
        {
          CFRelease(v229);
          v259 = 0;
        }

        if (v261)
        {
          CFRelease(v261);
          v261 = 0;
        }

        if (v263)
        {
          CFRelease(v263);
        }

        if (v2)
        {
          goto LABEL_691;
        }

        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_680;
        }

        v9 = "eSBSStep_ReplaceNetworkChoice";
        goto LABEL_567;
      case 0xCu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ReplaceConfiguration_Config");
        }

        v264 = 0;
        v265[0] = 0;
        v262 = 0;
        v263 = 0;
        cf = 0;
        v261 = 0;
        if (!result[6])
        {
          goto LABEL_690;
        }

        sub_23EBDAC08(result, v265);
        if (v11)
        {
          goto LABEL_42;
        }

        if (!v265[0])
        {
          goto LABEL_421;
        }

        if (CFDictionaryContainsKey(v265[0], @"kSBSKey_PreviousConfigurationList"))
        {
          goto LABEL_219;
        }

        v11 = sub_23EB6F348(allocator, &v262, "[%C%C%C%C%C%C%C%C%C]", 1717920116, 1717907505, 1752641585, 1937326416, 1466517097, 2002865473, 1918979393, 1818316097, 1918979693);
        if (v11)
        {
          goto LABEL_42;
        }

        if (!v262)
        {
          goto LABEL_421;
        }

        v2 = sub_23EBEB874(result[11], 0, v262, &v261);
        if (v262)
        {
          CFRelease(v262);
          v262 = 0;
        }

        if (v2 == -6727)
        {
          goto LABEL_219;
        }

        v259 = 0;
        if (v2)
        {
          goto LABEL_43;
        }

        if (!v261)
        {
LABEL_421:
          v2 = 4294960568;
          goto LABEL_43;
        }

        v2 = sub_23EBDBDF8(v261, *result, &v259);
        if (v261)
        {
          CFRelease(v261);
          v261 = 0;
        }

        if (v2 == -6727)
        {
          goto LABEL_219;
        }

        if (v2)
        {
          goto LABEL_43;
        }

        if (!v259)
        {
          goto LABEL_583;
        }

        if (CFArrayGetCount(v259))
        {
          v252 = v259;
          v2 = sub_23EB6FDFC(allocator, v265[0], "%ks=%O", v149, v150, v151, v152, v153, "kSBSKey_PreviousConfigurationList");
          if (v259)
          {
            CFRelease(v259);
          }

          if (!v2)
          {
LABEL_219:
            v39 = sub_23EBDAC94(result, 12, v265[0], &v264);
            if (v39 == -6769)
            {
              v11 = sub_23EBD8E80(result, 0, 0);
LABEL_42:
              v2 = v11;
              goto LABEL_43;
            }

            v2 = v39;
            if (v39 != -6723)
            {
              v259 = 0;
              if (!v39)
              {
                if (!v264)
                {
                  goto LABEL_475;
                }

                v11 = sub_23EBB4234(result[1], &cf);
                if (v11)
                {
                  goto LABEL_42;
                }

                if (cf)
                {
                  sub_23EB6FF14(v264, &v259, "%ks", "kSBSKey_SourceConfiguration");
                  if (v11)
                  {
                    goto LABEL_42;
                  }

                  if (v259)
                  {
                    v2 = sub_23EB6F348(allocator, &v263, "{%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O}", "kSBSKey_Result_ConfigurationChoice", 6, "kSBSKey_Result_ConfigurationOptions", v264, "kSBSKey_Result_TargetBase", *result, "kSBSKey_Result_TargetBaseSettings", cf, "kSBSKey_Result_ConfigChangeLogDict", v259);
                    if (!v2)
                    {
                      result[9] = v263;
                      v263 = 0;
                    }
                  }

                  else
                  {
LABEL_583:
                    v2 = 4294960568;
                  }
                }

                else
                {
LABEL_475:
                  v2 = 4294960569;
                }
              }
            }
          }
        }

        else
        {
          v2 = 4294960591;
        }

LABEL_43:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v264)
        {
          CFRelease(v264);
          v264 = 0;
        }

        if (v263)
        {
          CFRelease(v263);
        }

        if (v2)
        {
          goto LABEL_691;
        }

        v12 = sub_23EBDA4C0(result);
        v13 = v12 == 12;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_679;
        }

        v14 = v12;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_679;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", "eSBSStep_ReplaceConfiguration_Config");
        if (v14 == 12)
        {
          goto LABEL_693;
        }

        goto LABEL_680;
      case 0xDu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ReplaceOther_Connections");
        }

        v15 = sub_23EBDA850(result);
        if (v15)
        {
          goto LABEL_694;
        }

        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_680;
        }

        v9 = "eSBSStep_ReplaceOther_Connections";
        goto LABEL_567;
      case 0xEu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ReplaceOther_Config");
        }

        v15 = sub_23EBDA528(result);
        if (v15)
        {
          goto LABEL_694;
        }

        v27 = sub_23EBDA4C0(result);
        LOBYTE(v13) = v27 == 14;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_679;
        }

        v28 = v27;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_679;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", "eSBSStep_ReplaceOther_Config");
        if (v28 == 14)
        {
          goto LABEL_693;
        }

        goto LABEL_680;
      case 0xFu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_ReplaceBaseStation_Config");
        }

        v264 = 0;
        v265[0] = 0;
        cf = 0;
        v261 = 0;
        v262 = 0;
        v263 = 0;
        v259 = 0;
        if (!result[6])
        {
          v2 = 4294960591;
          goto LABEL_204;
        }

        sub_23EBDAC08(result, v265);
        if (v10)
        {
          goto LABEL_31;
        }

        if (!v265[0])
        {
          goto LABEL_461;
        }

        if (!CFDictionaryContainsKey(v265[0], @"kSBSKey_SelectorChoice"))
        {
          v252 = 313;
          v10 = sub_23EB6FDFC(allocator, v265[0], "%ks=%i", v41, v42, v43, v44, v45, "kSBSKey_SelectorChoice");
          if (v10)
          {
            goto LABEL_31;
          }
        }

        if (CFDictionaryContainsKey(v265[0], @"kSBSKey_BrowseRecordList"))
        {
          goto LABEL_266;
        }

        theArray = 0;
        v182 = sub_23EBDB638(result, 0, &theArray);
        if (v182 == -6727)
        {
          goto LABEL_471;
        }

        v2 = v182;
        if (v182)
        {
          goto LABEL_32;
        }

        if (!theArray)
        {
          goto LABEL_461;
        }

        v183 = sub_23EBDB8C4(result, theArray, *result, 0, 0, 1, 0, &v259);
        if (v183 == -6727)
        {
LABEL_471:
          v2 = sub_23EBEDA58(result[11], @"kAskUserWarning_Prompt", 0, 0, @"kAskUserWarning_NoBaseStationsFound_OnEthernet", 0, 0, 0, 0);
          if (!v2)
          {
LABEL_472:
            v10 = sub_23EBD8E80(result, 0, 0);
LABEL_31:
            v2 = v10;
            goto LABEL_32;
          }

          goto LABEL_32;
        }

        v2 = v183;
        if (v183)
        {
          goto LABEL_32;
        }

        if (!v259)
        {
LABEL_461:
          v2 = 4294960568;
          goto LABEL_32;
        }

        if (!CFArrayGetCount(v259))
        {
          v2 = 4294960591;
          goto LABEL_32;
        }

        v252 = v259;
        v2 = sub_23EB6FDFC(allocator, v265[0], "%ks=%O", v184, v185, v186, v187, v188, "kSBSKey_BrowseRecordList");
        if (v259)
        {
          CFRelease(v259);
          v259 = 0;
        }

        if (v2)
        {
          goto LABEL_32;
        }

LABEL_266:
        v46 = sub_23EBDAC94(result, 15, v265[0], &v264);
        if (v46 == -6769)
        {
          goto LABEL_472;
        }

        v2 = v46;
        if (v46)
        {
          goto LABEL_32;
        }

        if (!v264)
        {
          v2 = 4294960569;
          goto LABEL_32;
        }

        sub_23EB6FF14(v264, &v261, "%ks", "kSBSKey_SourceBase");
        if (v10)
        {
          goto LABEL_31;
        }

        if (!v261)
        {
          goto LABEL_461;
        }

        v47 = sub_23EB6A2C0(v261);
        v48 = sub_23EB6C1A0(v261);
        v49 = 101;
        if (v47 == 3 || v47 == 102)
        {
          goto LABEL_615;
        }

        if (v48)
        {
          v50 = sub_23EBB4234(result[1], &cf);
          if (v50)
          {
            goto LABEL_618;
          }

          if (!cf)
          {
            v2 = 4294960569;
            goto LABEL_34;
          }

          v2 = sub_23EB6F348(allocator, &v262, "{%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O}", "kSBSKey_Result_ConfigurationChoice", 5, "kSBSKey_Result_ConfigurationOptions", v264, "kSBSKey_Result_TargetBase", *result, "kSBSKey_Result_TargetBaseSettings", cf, "kSBSKey_Result_SourceBase", v261);
          if (!v2)
          {
            result[9] = v262;
            v262 = 0;
          }
        }

        else
        {
          v49 = 102;
LABEL_615:
          v10 = sub_23EB6F348(allocator, &v263, "{%ks=%O%ks=%i}", "kSBSKey_SourceBase", v261, "kSBSKey_SelectorChoice", v49);
          if (v10)
          {
            goto LABEL_31;
          }

          if (v263)
          {
            v50 = sub_23EBD8E80(result, 2, v263);
LABEL_618:
            v2 = v50;
            goto LABEL_32;
          }

          v2 = 4294960569;
        }

LABEL_32:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

LABEL_34:
        if (v264)
        {
          CFRelease(v264);
          v264 = 0;
        }

LABEL_204:
        if (v262)
        {
          CFRelease(v262);
          v262 = 0;
        }

        if (v263)
        {
          CFRelease(v263);
          v263 = 0;
        }

        if (v259)
        {
          CFRelease(v259);
        }

        if (v2)
        {
          goto LABEL_691;
        }

        v37 = sub_23EBDA4C0(result);
        v13 = v37 == 15;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_679;
        }

        v38 = v37;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_679;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", "eSBSStep_ReplaceBaseStation_Config");
        if (v38 == 15)
        {
          goto LABEL_693;
        }

        goto LABEL_680;
      case 0x10u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", "eSBSStep_Restore_Config");
        }

        v264 = 0;
        v265[0] = 0;
        v262 = 0;
        v263 = 0;
        if (!result[6])
        {
          goto LABEL_690;
        }

        if (!*result || !result[1])
        {
          Mutable = 0;
          v2 = 4294960591;
          goto LABEL_191;
        }

        sub_23EBDAC08(result, v265);
        if (v18)
        {
          goto LABEL_99;
        }

        if (!v265[0])
        {
          Mutable = 0;
          v2 = 4294960568;
          goto LABEL_191;
        }

        v129 = sub_23EBDAC94(result, 16, v265[0], &v264);
        if (v129 == -6769)
        {
          v18 = sub_23EBD8E80(result, 0, 0);
LABEL_99:
          v2 = v18;
LABEL_100:
          Mutable = 0;
          goto LABEL_191;
        }

        v2 = v129;
        if (v129 == -6723)
        {
          goto LABEL_100;
        }

        v261 = 0;
        if (v129)
        {
          goto LABEL_100;
        }

        if (!v264)
        {
          goto LABEL_483;
        }

        v18 = sub_23EBB4234(result[1], &v263);
        if (v18)
        {
          goto LABEL_99;
        }

        if (!v263)
        {
LABEL_483:
          Mutable = 0;
          v2 = 4294960569;
          goto LABEL_484;
        }

        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          goto LABEL_648;
        }

        v255 = v263;
        v254 = *result;
        v253 = v264;
        v252 = 7;
        v135 = sub_23EB6FDFC(allocator, Mutable, "%ks=%i%ks=%O%ks=%O%ks=%O", v130, v131, v132, v133, v134, "kSBSKey_Result_ConfigurationChoice");
        if (v135 || (sub_23EB6FF14(*result, &v261, "%ks.%ks", "txt", "raMA", "kSBSKey_Result_ConfigurationOptions", v253, "kSBSKey_Result_TargetBase", v254, "kSBSKey_Result_TargetBaseSettings", v255), v135))
        {
          v2 = v135;
          goto LABEL_191;
        }

        if (!v261)
        {
          goto LABEL_648;
        }

        if (sub_23EBEB874(result[11], v261, 0, &v262) == -6727)
        {
          goto LABEL_637;
        }

        v234 = CFArrayGetValueAtIndex(v262, 0);
        if (v234)
        {
          v252 = v234;
          v240 = sub_23EB6FDFC(allocator, Mutable, "%ks=%O", v235, v236, v237, v238, v239, "kSBSKey_Result_ConfigChangeLogDict");
          if (v240)
          {
            v2 = v240;
          }

          else
          {
LABEL_637:
            v2 = 0;
            result[9] = Mutable;
            Mutable = 0;
          }
        }

        else
        {
LABEL_648:
          v2 = 4294960568;
        }

LABEL_484:
        if (v262)
        {
          CFRelease(v262);
          v262 = 0;
        }

LABEL_191:
        if (v263)
        {
          CFRelease(v263);
          v263 = 0;
        }

        if (v264)
        {
          CFRelease(v264);
          v264 = 0;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v2)
        {
          goto LABEL_691;
        }

        v35 = sub_23EBDA4C0(result);
        v13 = v35 == 16;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_679;
        }

        v36 = v35;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_679;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", "eSBSStep_Restore_Config");
        if (v36 == 16)
        {
          goto LABEL_693;
        }

        goto LABEL_680;
      default:
        v2 = 4294960587;
        goto LABEL_691;
    }
  }
}

uint64_t sub_23EBD879C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_SetProgressCallback(StepByStepContextRef, assistant_progress_t, void *)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v6 = *(a1 + 88);

  return sub_23EBEAA74(v6, a2, a3);
}

uint64_t sub_23EBD884C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_SetAssistantCallback(StepByStepContextRef, assistant_callback_t, void *)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v6 = *(a1 + 88);

  return sub_23EBEA4E8(v6, a2, a3);
}

uint64_t sub_23EBD88FC(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  if (cf)
  {
    *(a1 + 80) = cf;
    CFRetain(cf);
  }

  return 0;
}

uint64_t sub_23EBD8954(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  if (cf)
  {
    *(a1 + 64) = cf;
    CFRetain(cf);
  }

  return 0;
}

uint64_t sub_23EBD89AC(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || !a2 || (a3 - 1) > 1)
  {
    return 4294960591;
  }

  if (a3 == 1)
  {
    v4 = @"kSBSCacheKey_ScanRecordsMerged";
  }

  else
  {
    v4 = @"kSBSCacheKey_ScanRecordsUnmerged";
  }

  return sub_23EBD89EC(a1, v4, a2);
}

uint64_t sub_23EBD89EC(uint64_t a1, CFStringRef theString1, uint64_t a3)
{
  cf = 0;
  v3 = 4294960591;
  if (!theString1 || !a3)
  {
    return v3;
  }

  if (*(a1 + 56))
  {
    if (CFStringCompare(theString1, @"kSBSCacheKey_BrowseRecords", 0))
    {
      if (CFStringCompare(theString1, @"kSBSCacheKey_BaseSettings", 0) == kCFCompareEqualTo)
      {
        goto LABEL_8;
      }

      v11 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], *(a1 + 56), "%kO=%O", v6, v7, v8, v9, v10, theString1);
      goto LABEL_7;
    }

    v13 = sub_23EBEBA44(*(a1 + 88), &cf, 0);
    v14 = theString1;
    if (v13 != -6727)
    {
      v3 = v13;
      if (v13)
      {
        goto LABEL_8;
      }

      v14 = cf;
      if (!cf)
      {
        return 4294960568;
      }
    }

    v28 = 0;
    if (CFDictionaryContainsKey(*(a1 + 56), theString1))
    {
      sub_23EB6FF14(*(a1 + 56), &v28, "%kO", theString1);
      if (v11)
      {
LABEL_7:
        v3 = v11;
        goto LABEL_8;
      }

      v20 = v28;
      if (v28)
      {
        v21 = *MEMORY[0x277CBECE8];
LABEL_20:
        v11 = sub_23EB6FDFC(v21, v20, "%kO=%O", v15, v16, v17, v18, v19, v14);
        goto LABEL_7;
      }

      goto LABEL_22;
    }

    v21 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v28 = Mutable;
    if (!Mutable)
    {
LABEL_22:
      v3 = 4294960568;
      goto LABEL_8;
    }

    v20 = Mutable;
    v3 = sub_23EB6FDFC(v21, *(a1 + 56), "%kO=%O", v23, v24, v25, v26, v27, theString1);
    CFRelease(v20);
    if (!v3)
    {
      goto LABEL_20;
    }
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t sub_23EBD8BAC(void *a1, const __CFString *a2, const void *a3)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_SetTargetBaseAndSettings(StepByStepContextRef, CFDictionaryRef, CFDictionaryRef)", 800, " \n");
  }

  result = 4294960591;
  if (a1 && a2)
  {
    if (*a1)
    {
      return 4294960577;
    }

    else
    {
      result = sub_23EBD8C7C(a1, a2);
      if (a3 && !result)
      {
        v7 = a1[1];

        return sub_23EBB1354(v7, a3);
      }
    }
  }

  return result;
}

uint64_t sub_23EBD8C7C(uint64_t a1, const __CFString *cf)
{
  v3 = *a1;
  if (*a1 == cf)
  {
    return 0;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = CFEqual(cf, v3);
  if (!v5 || dword_27E382BC8 > 800)
  {
    if (v5)
    {
      return 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

LABEL_11:
    *a1 = cf;
    CFRetain(cf);
    v9 = *a1;
    v8 = *(a1 + 8);
    if (v8)
    {
      if (v9)
      {
        result = sub_23EBB10D4(v8, v9);
        if (result)
        {
          return result;
        }
      }

      else
      {
        sub_23EBB0D6C(v8);
        *(a1 + 8) = 0;
      }
    }

    else if (v9)
    {
      v10 = 0;
      result = sub_23EBB0E1C(&v10, v9);
      if (result)
      {
        return result;
      }

      if (!v10)
      {
        return 4294960568;
      }

      *(a1 + 8) = v10;
    }

    return 0;
  }

  if (dword_27E382BC8 != -1 || (result = sub_23EB74AC8(&dword_27E382BC8, 0x320u), result))
  {
    v7 = sub_23EB6AE14(cf);
    sub_23EB75374(&dword_27E382BC8, "OSStatus _SetTargetBase(StepByStepContextRef, CFDictionaryRef)", 800, "equal SKIPPING update for: %@\n", v7);
    return 0;
  }

  return result;
}

uint64_t sub_23EBD8D8C(void *a1)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_StepByStepAsync(StepByStepContextRef)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  if (!a1[4])
  {
    return 4294960591;
  }

  v2 = a1[6];
  if (!v2)
  {
    return 4294960591;
  }

  CFArrayRemoveAllValues(v2);
  result = sub_23EBD8E80(a1, 1, 0);
  if (!result)
  {
    v4 = a1[4];
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_async_f(v4, global_queue, a1, sub_23EBD5D34);
    result = sub_23EBEA0DC(a1[11]);
    if (!result)
    {
      sub_23EBEB0B0(a1[11], 14, 0, 0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_23EBD8E80(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (!v4 || !*a1)
  {
    return 4294960591;
  }

  if (a2)
  {
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = sub_23EB6FDFC(v6, Mutable, "%ks=%i", v8, v9, v10, v11, v12, "kSBSKey_Step");
      if (!v14)
      {
        v14 = sub_23EB6FDFC(v6, v13, "%ks=%i", v15, v16, v17, v18, v19, "kSBSKey_Mode");
        if (!v14)
        {
          v14 = sub_23EB6FDFC(v6, v13, "%ks=%O", v20, v21, v22, v23, v24, "kSBSKey_TargetBase");
          if (!v14)
          {
            if (!a3 || (v14 = sub_23EB6FDFC(v6, v13, "%##O", v25, v26, v27, v28, v29, a3), !v14))
            {
              v14 = sub_23EB6FDFC(v6, *(a1 + 48), "%O", v25, v26, v27, v28, v29, v13);
            }
          }
        }
      }

      v30 = v14;
      CFRelease(v13);
    }

    else
    {
      return 4294960568;
    }
  }

  else
  {
    Count = CFArrayGetCount(v4);
    if (Count)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 48), Count - 1);
      return 0;
    }

    else
    {
      return 4294960586;
    }
  }

  return v30;
}

uint64_t sub_23EBD8FF8(const __CFString *a1, __CFArray **a2)
{
  v2 = 4294960591;
  if (a1 && a2)
  {
    v5 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return 4294960568;
    }

    v7 = Mutable;
    v36 = 0;
    v35 = 0;
    sub_23EB6FF14(a1, &v36, "%ks", "kSBSKey_GuestNetwork_On");
    if (v8)
    {
      goto LABEL_5;
    }

    if (v36)
    {
      v32 = v36;
      v8 = sub_23EB6FDFC(v5, v7, "%ks=%O", v9, v10, v11, v12, v13, "kBSAutoGuessSetupOptionKey_GuestNetwork_On");
      if (v8)
      {
        goto LABEL_5;
      }

      sub_23EB6FF14(a1, &v36, "%ks", "kSBSKey_GuestNetwork_Name", v32);
      if (v15 != -6727)
      {
        v2 = v15;
        if (v15)
        {
          goto LABEL_6;
        }

        if (!v36)
        {
          goto LABEL_25;
        }

        v33 = v36;
        v8 = sub_23EB6FDFC(v5, v7, "%ks=%O", v16, v17, v18, v19, v20, "kBSAutoGuessSetupOptionKey_GuestNetwork_Name");
        if (v8)
        {
          goto LABEL_5;
        }
      }

      sub_23EB6FF14(a1, &v35, "%ks:int", "kSBSKey_GuestNetwork_Security", v33);
      v2 = v21;
      if (v21 == -6727)
      {
LABEL_20:
        *a2 = v7;
        return v2;
      }

      if (v21)
      {
        goto LABEL_6;
      }

      if (v36)
      {
        v34 = v35;
        v8 = sub_23EB6FDFC(v5, v7, "%ks=%i", v22, v23, v24, v25, v26, "kBSAutoGuessSetupOptionKey_GuestNetwork_Security");
        if (v8)
        {
          goto LABEL_5;
        }

        if (v35 == 1)
        {
          goto LABEL_20;
        }

        sub_23EB6FF14(a1, &v36, "%ks", "kSBSKey_GuestNetwork_Password", v34);
        if (v8)
        {
LABEL_5:
          v2 = v8;
LABEL_6:
          CFRelease(v7);
          return v2;
        }

        if (v36)
        {
          v8 = sub_23EB6FDFC(v5, v7, "%ks=%O", v27, v28, v29, v30, v31, "kBSAutoGuessSetupOptionKey_GuestNetwork_Password");
          if (!v8)
          {
            goto LABEL_20;
          }

          goto LABEL_5;
        }
      }
    }

LABEL_25:
    v2 = 4294960568;
    goto LABEL_6;
  }

  return v2;
}

uint64_t sub_23EBD9210(const __CFString *a1, __CFArray **a2, __CFArray **a3)
{
  v3 = 4294960591;
  if (a2 && a3)
  {
    v191 = 0;
    v190 = 0;
    v188 = 0;
    v189 = 0;
    v187 = 0;
    sub_23EB6FF14(a1, &v191, "%ks:int", "kSBSKey_Result_ConfigurationChoice");
    if (v7)
    {
      return v7;
    }

    sub_23EB6FF14(a1, &v190, "%ks", "kSBSKey_Result_ConfigurationOptions");
    if (v7)
    {
      return v7;
    }

    if (v190)
    {
      sub_23EB6FF14(a1, &v189, "%ks", "kSBSKey_Result_TargetBase");
      if (v7)
      {
        return v7;
      }

      if (!v189)
      {
        return 4294960568;
      }

      sub_23EB6FF14(a1, &v188, "%ks", "kSBSKey_Result_TargetBaseSettings");
      if (v7)
      {
        return v7;
      }

      if (v188)
      {
        v9 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v16 = Mutable;
          v17 = sub_23EB6FDFC(v9, Mutable, "%ks=%O", v11, v12, v13, v14, v15, "BSAutoGuess_UnconfiguredBase");
          if (v17 || (v17 = sub_23EB6FDFC(v9, v16, "%ks=%O", v18, v19, v20, v21, v22, "BSAutoGuess_UnconfiguredBaseSettings"), v17) || (v17 = sub_23EB6FDFC(v9, v16, "%ks=%b", v23, v24, v25, v26, v27, "kBSAutoGuessSetupOptionKey_RecommendationIsAutomatic"), v17))
          {
            v3 = v17;
LABEL_17:
            v28 = v16;
LABEL_18:
            CFRelease(v28);
            return v3;
          }

          v184 = a1;
          v29 = a2;
          v30 = a3;
          if (v191 <= 3)
          {
            if (v191 == 1)
            {
              cf = 0;
              v185 = 0;
              v32 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!v32)
              {
                goto LABEL_129;
              }

              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_BaseName", 0);
              if (v73 != -6727)
              {
                v3 = v73;
                if (v73)
                {
                  goto LABEL_116;
                }

                if (!v187)
                {
                  goto LABEL_129;
                }

                v173 = v187;
                v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v74, v75, v76, v77, v78, "kBSAutoGuessSetupOptionKey_BaseName");
                if (v55)
                {
                  goto LABEL_115;
                }
              }

              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_BasePassword", v173);
              if (v55)
              {
                goto LABEL_115;
              }

              if (!v187)
              {
                goto LABEL_129;
              }

              v174 = v187;
              v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v79, v80, v81, v82, v83, "kBSAutoGuessSetupOptionKey_BasePassword");
              if (v55)
              {
                goto LABEL_115;
              }

              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_NetworkName", v174);
              if (v55)
              {
                goto LABEL_115;
              }

              if (!v187)
              {
                goto LABEL_129;
              }

              v175 = v187;
              v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v84, v85, v86, v87, v88, "kBSAutoGuessSetupOptionKey_NetworkName");
              if (v55)
              {
                goto LABEL_115;
              }

              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_NetworkPassword", v175);
              if (v55)
              {
                goto LABEL_115;
              }

              if (!v187)
              {
                goto LABEL_129;
              }

              v176 = v187;
              v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v89, v90, v91, v92, v93, "kBSAutoGuessSetupOptionKey_NetworkPassword");
              if (v55)
              {
                goto LABEL_115;
              }

              v94 = sub_23EBD8FF8(v190, &cf);
              if (v94 == -6727)
              {
                goto LABEL_76;
              }

              v3 = v94;
              if (!v94)
              {
                if (!cf)
                {
                  goto LABEL_129;
                }

                v3 = sub_23EB6FDFC(v9, v32, "%k##O", v95, v96, v97, v98, v99, cf);
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (!v3)
                {
LABEL_76:
                  sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_DiskSharing_Password", v176);
                  if (v100 != -6727)
                  {
                    v3 = v100;
                    if (v100)
                    {
                      goto LABEL_116;
                    }

                    if (!v187)
                    {
                      goto LABEL_129;
                    }

                    v177 = v187;
                    v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v101, v102, v103, v104, v105, "kBSAutoGuessSetupOptionKey_DiskSharing_Password");
                    if (v55)
                    {
                      goto LABEL_115;
                    }
                  }

                  sub_23EB6FF14(v190, &v185, "%ks:int", "kSBSKey_SelectorChoice", v177);
                  if (v106 == -6727)
                  {
LABEL_134:
                    v55 = sub_23EB6FDFC(v9, v16, "%ks=%s", v107, v108, v109, v110, v111, "BSAutoGuess_Recommendation");
                    if (!v55)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_115;
                  }

                  v3 = v106;
                  if (!v106)
                  {
                    if ((v185 - 101) > 1)
                    {
                      goto LABEL_55;
                    }

                    sub_23EB6FF14(v184, &v187, "%ks", "kSBSKey_Result_SourceBase");
                    if (v55)
                    {
                      goto LABEL_115;
                    }

                    if (!v187)
                    {
                      goto LABEL_129;
                    }

                    v55 = sub_23EB6FDFC(v9, v16, "%ks=%O", v112, v113, v114, v115, v116, "BSAutoGuess_SourceBase");
                    if (v55)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_134;
                  }
                }
              }

LABEL_116:
              CFRelease(v16);
LABEL_131:
              v28 = v32;
              goto LABEL_18;
            }

            if (v191 != 2)
            {
              if (v191 != 3)
              {
                goto LABEL_17;
              }

              LODWORD(cf) = 0;
              v32 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!v32)
              {
                goto LABEL_129;
              }

              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_BaseName", 0);
              if (v49 != -6727)
              {
                v3 = v49;
                if (v49)
                {
                  goto LABEL_116;
                }

                if (!v187)
                {
                  goto LABEL_129;
                }

                v171 = v187;
                v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v50, v51, v52, v53, v54, "kBSAutoGuessSetupOptionKey_BaseName");
                if (v55)
                {
                  goto LABEL_115;
                }
              }

              sub_23EB6FF14(v190, &cf, "%ks:int", "kSBSKey_SelectorChoice", v171);
              if (v56 != -6727)
              {
                v3 = v56;
                if (v56)
                {
                  goto LABEL_116;
                }

                if (!v187)
                {
                  goto LABEL_129;
                }

                if (cf == 212)
                {
                  v172 = 1;
                  v55 = sub_23EB6FDFC(v9, v32, "%ks=%b", v57, v58, v59, v60, v61, "kBSAutoGuessSetupOptionKey_ExtendOption_JoinApple");
                  if (v55)
                  {
                    goto LABEL_115;
                  }
                }
              }

              sub_23EB6FF14(v184, &v187, "%ks", "kSBSKey_Result_SourceBase", v172);
              if (!v55)
              {
                if (!v187)
                {
                  goto LABEL_129;
                }

                v55 = sub_23EB6FDFC(v9, v16, "%ks=%O", v62, v63, v64, v65, v66, "BSAutoGuess_SourceBase");
                if (!v55)
                {
                  v3 = sub_23EB6FDFC(v9, v16, "%ks=%s", v67, v68, v69, v70, v71, "BSAutoGuess_Recommendation");
                  if (!v3)
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_130;
                }
              }

              goto LABEL_115;
            }

            v142 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v142)
            {
              v32 = v142;
              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_BaseName", 0);
              if (v143 != -6727)
              {
                v3 = v143;
                if (v143)
                {
                  goto LABEL_116;
                }

                if (!v187)
                {
                  goto LABEL_136;
                }

                v182 = v187;
                v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v144, v145, v146, v147, v148, "kBSAutoGuessSetupOptionKey_BaseName");
                if (v55)
                {
                  goto LABEL_115;
                }
              }

              sub_23EB6FF14(v184, &v187, "%ks", "kSBSKey_Result_SourceBase", v182);
              if (v55)
              {
                goto LABEL_115;
              }

              if (v187)
              {
                v55 = sub_23EB6FDFC(v9, v16, "%ks=%O", v149, v150, v151, v152, v153, "BSAutoGuess_SourceBase");
                if (!v55)
                {
                  goto LABEL_134;
                }

                goto LABEL_115;
              }

LABEL_136:
              v3 = 4294960568;
              goto LABEL_116;
            }
          }

          else
          {
            if (v191 > 5)
            {
              if (v191 == 6)
              {
                cf = 0;
                sub_23EB6FF14(v184, &cf, "%ks", "kSBSKey_Result_ConfigChangeLogDict", 0);
                if (v141)
                {
                  v3 = v141;
                  v32 = 0;
                  goto LABEL_130;
                }

                if (cf)
                {
                  v32 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (v32)
                  {
                    v183 = cf;
                    v38 = sub_23EB6FDFC(v9, v32, "%ks=%O", v159, v160, v161, v162, v163, "kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
                    if (v38)
                    {
                      goto LABEL_127;
                    }

                    sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_BasePassword", v183);
                    if (v38)
                    {
                      goto LABEL_127;
                    }

                    if (v187)
                    {
                      v38 = sub_23EB6FDFC(v9, v32, "%ks=%O", v164, v165, v166, v167, v168, "kBSAutoGuessSetupOptionKey_BasePassword");
                      if (!v38)
                      {
                        goto LABEL_54;
                      }

                      goto LABEL_127;
                    }
                  }

LABEL_129:
                  v3 = 4294960568;
LABEL_130:
                  CFRelease(v16);
                  if (!v32)
                  {
                    return v3;
                  }

                  goto LABEL_131;
                }

                goto LABEL_128;
              }

              if (v191 != 7)
              {
                goto LABEL_17;
              }

              cf = 0;
              sub_23EB6FF14(v184, &cf, "%ks", "kSBSKey_Result_ConfigChangeLogDict", 0);
              v32 = 0;
              if (v72 == -6727)
              {
LABEL_54:
                v38 = sub_23EB6FDFC(v9, v16, "%ks=%s", v44, v45, v46, v47, v48, "BSAutoGuess_Recommendation");
                if (!v38)
                {
LABEL_55:
                  v3 = 0;
                  *v29 = v16;
                  *v30 = v32;
                  return v3;
                }

                goto LABEL_127;
              }

              v3 = v72;
              v32 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!v32)
              {
                goto LABEL_129;
              }

              if (!v3)
              {
                if (!cf)
                {
                  goto LABEL_129;
                }

                v3 = sub_23EB6FDFC(v9, v32, "%ks=%O", v154, v155, v156, v157, v158, "kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
                if (!v3)
                {
                  goto LABEL_54;
                }
              }

              goto LABEL_116;
            }

            if (v191 != 4)
            {
              LODWORD(cf) = 0;
              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_BaseName", 0);
              v32 = 0;
              if (v31 == -6727)
              {
LABEL_28:
                sub_23EB6FF14(v184, &v187, "%ks", "kSBSKey_Result_SourceBase", v169);
                if (v38)
                {
                  goto LABEL_127;
                }

                if (v187)
                {
                  v170 = v187;
                  v38 = sub_23EB6FDFC(v9, v16, "%ks=%O", v39, v40, v41, v42, v43, "BSAutoGuess_SourceBase");
                  if (!v38)
                  {
                    sub_23EB6FF14(v190, &cf, "%ks:int", "kSBSKey_SelectorChoice", v170);
                    if (!v38)
                    {
                      goto LABEL_54;
                    }
                  }

LABEL_127:
                  v3 = v38;
                  goto LABEL_130;
                }

                goto LABEL_129;
              }

              v3 = v31;
              if (v31)
              {
                goto LABEL_130;
              }

              if (v187)
              {
                v32 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (!v32)
                {
                  goto LABEL_129;
                }

                v169 = v187;
                v38 = sub_23EB6FDFC(v9, v32, "%ks=%O", v33, v34, v35, v36, v37, "kBSAutoGuessSetupOptionKey_BaseName");
                if (v38)
                {
                  goto LABEL_127;
                }

                goto LABEL_28;
              }

LABEL_128:
              v32 = 0;
              goto LABEL_129;
            }

            v117 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v117)
            {
              v32 = v117;
              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_BaseName", 0);
              if (v118 != -6727)
              {
                v3 = v118;
                if (v118)
                {
                  goto LABEL_116;
                }

                if (!v187)
                {
                  goto LABEL_136;
                }

                v178 = v187;
                v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v119, v120, v121, v122, v123, "kBSAutoGuessSetupOptionKey_BaseName");
                if (v55)
                {
                  goto LABEL_115;
                }
              }

              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_BasePassword", v178);
              if (v55)
              {
                goto LABEL_115;
              }

              if (!v187)
              {
                goto LABEL_136;
              }

              v179 = v187;
              v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v124, v125, v126, v127, v128, "kBSAutoGuessSetupOptionKey_BasePassword");
              if (v55)
              {
                goto LABEL_115;
              }

              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_AirPlayPassword", v179);
              if (v129 != -6727)
              {
                v3 = v129;
                if (v129)
                {
                  goto LABEL_116;
                }

                if (!v187)
                {
                  goto LABEL_136;
                }

                v180 = v187;
                v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v130, v131, v132, v133, v134, "kBSAutoGuessSetupOptionKey_AirPlayPassword");
                if (v55)
                {
                  goto LABEL_115;
                }
              }

              sub_23EB6FF14(v184, &v187, "%ks", "kSBSKey_Result_SourceNetwork", v180);
              if (v55)
              {
                goto LABEL_115;
              }

              if (!v187)
              {
                goto LABEL_136;
              }

              v181 = v187;
              v55 = sub_23EB6FDFC(v9, v16, "%ks=%O", v135, v136, v137, v138, v139, "BSAutoGuess_SourceNetwork");
              if (v55)
              {
                goto LABEL_115;
              }

              sub_23EB6FF14(v190, &v187, "%ks", "kSBSKey_NetworkPassword", v181);
              if (v140 == -6727)
              {
                goto LABEL_134;
              }

              v3 = v140;
              if (!v140)
              {
                if (v187)
                {
                  v55 = sub_23EB6FDFC(v9, v32, "%ks=%O", v107, v108, v109, v110, v111, "kBSAutoGuessSetupOptionKey_NetworkPassword");
                  if (!v55)
                  {
                    goto LABEL_134;
                  }

LABEL_115:
                  v3 = v55;
                  goto LABEL_116;
                }

                goto LABEL_136;
              }

              goto LABEL_116;
            }
          }

          v3 = 4294960568;
          goto LABEL_17;
        }
      }
    }

    return 4294960568;
  }

  return v3;
}

uint64_t sub_23EBD9E90(const __CFString *a1, const __CFArray *a2, void *a3)
{
  values[1] = *MEMORY[0x277D85DE8];
  v29 = 0;
  valuePtr = 0;
  v3 = 4294960591;
  if (a1 && a3)
  {
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    Mutable = 0;
    v24 = 0;
    v22 = 0;
    sub_23EB6FF14(a1, &v28, "%ks", "BSAutoGuess_Recommendation");
    if (v7)
    {
      return v7;
    }

    if (!v28)
    {
      return 4294960568;
    }

    v26 = 0;
    v27 = 0;
    sub_23EB6FF14(a1, &v27, "%ks", "BSAutoGuess_UnconfiguredBase");
    if (v8 == -6727)
    {
      sub_23EB6FF14(a1, &v26, "%ks", "BSAutoGuess_UnconfiguredNetwork");
      if (v7)
      {
        return v7;
      }

      if (!v26)
      {
        return 4294960568;
      }
    }

    else
    {
      v3 = v8;
      if (v8)
      {
        return v3;
      }

      if (!v27)
      {
        return 4294960568;
      }
    }

    if (CFStringCompare(v28, @"BSSetupRecommend_OfferExtendWirelessly", 0))
    {
      if (CFStringCompare(v28, @"BSSetupRecommend_AskUserChooseBaseWireless", 0))
      {
        if (CFStringCompare(v28, @"BSSetupRecommend_OfferExtendOverEthernet", 0))
        {
          if (CFStringCompare(v28, @"BSSetupRecommend_AskUserChooseBaseWired", 0))
          {
            if (CFStringCompare(v28, @"BSSetupRecommend_OfferCreate", 0) == kCFCompareEqualTo)
            {
              v12 = 0;
LABEL_41:
              v13 = 2;
              goto LABEL_42;
            }

            if (CFStringCompare(v28, @"BSSetupRecommend_OfferJoinNetwork", 0))
            {
              if (CFStringCompare(v28, @"BSSetupRecommend_AskUserChooseNetworkToJoin", 0))
              {
                if (CFStringCompare(v28, @"BSSetupRecommend_OfferReplace", 0))
                {
                  if (CFStringCompare(v28, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", 0))
                  {
                    CFStringCompare(v28, @"BSSetupRecommend_NoNetworkToJoin", 0);
                    return 4294960561;
                  }

                  LODWORD(values[0]) = 0;
                  sub_23EB6FF14(a1, &v25, "%ks", "BSAutoGuess_SourceBase");
                  if (v7)
                  {
                    return v7;
                  }

                  if (v25)
                  {
                    sub_23EB6FF14(a1, values, "%ks:int", "kBSAutoGuessSetupOptionKey_NoConfigureReason");
                    if (v7)
                    {
                      return v7;
                    }

                    if (LODWORD(values[0]) == 2)
                    {
                      v18 = 102;
                    }

                    else
                    {
                      if (LODWORD(values[0]) != 1)
                      {
LABEL_73:
                        v19 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
                        if (!v19)
                        {
                          return 4294960568;
                        }

                        v12 = v19;
                        goto LABEL_41;
                      }

                      v18 = 101;
                    }

                    valuePtr = v18;
                    goto LABEL_73;
                  }
                }

                else
                {
                  sub_23EB6FF14(a1, &v25, "%ks", "BSAutoGuess_SourceBase");
                  if (v7)
                  {
                    return v7;
                  }

                  if (v25)
                  {
                    valuePtr = 313;
                    v17 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
                    if (v17)
                    {
                      v12 = v17;
                      v13 = 15;
                      goto LABEL_42;
                    }
                  }
                }

                return 4294960568;
              }

              sub_23EB6FF14(a1, &v22, "%ks", "BSAutoGuess_AskUserList");
              if (v7)
              {
                return v7;
              }
            }

            else
            {
              sub_23EB6FF14(a1, &v24, "%ks", "BSAutoGuess_SourceNetwork");
              if (v7)
              {
                return v7;
              }

              if (!v24)
              {
                return 4294960568;
              }

              sub_23EB6FF14(a1, &v22, "%ks", "BSAutoGuess_AskUserList");
              if (v16 == -6727)
              {
                goto LABEL_60;
              }

              v3 = v16;
              if (v16)
              {
                return v3;
              }
            }

            if (!v22)
            {
              return 4294960568;
            }

LABEL_60:
            v12 = 0;
            v13 = 9;
            v15 = "kSBSKey_NetworkScanRecordList";
            goto LABEL_43;
          }

          sub_23EB6FF14(a1, &v22, "%ks", "BSAutoGuess_AskUserList");
          if (v7)
          {
            return v7;
          }

          if (!v22)
          {
            return 4294960568;
          }
        }

        else
        {
          sub_23EB6FF14(a1, &v25, "%ks", "BSAutoGuess_SourceBase");
          if (v7)
          {
            return v7;
          }

          if (!v25)
          {
            return 4294960568;
          }
        }

        v12 = 0;
        v13 = 6;
LABEL_42:
        v15 = "kSBSKey_BrowseRecordList";
        goto LABEL_43;
      }

      sub_23EB6FF14(a1, &v22, "%ks", "BSAutoGuess_AskUserList");
      if (v7)
      {
        return v7;
      }

      if (!v22)
      {
        return 4294960568;
      }

      v14 = sub_23EBB07FC(a2, v22, &Mutable);
      v12 = 0;
      v13 = 8;
      v15 = "kSBSKey_BrowseRecordList";
      if (v14 == -6727 || (v3 = v14, !v14))
      {
LABEL_43:
        v3 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v29, "{%ks=%i%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O}", "kSBSKey_Step", v13, "kSBSKey_Mode", 2, "kSBSKey_TargetBase", v27, "kSBSKey_TargetNetwork", v26, "kSBSKey_SourceBase", v25, "kSBSKey_SourceNetwork", v24, v15, v22, "kSBSKey_SelectorChoice", v12, "kSBSKey_BaseNetworks", Mutable);
        if (v3)
        {
          if (!v29)
          {
            goto LABEL_49;
          }

          CFRelease(v29);
        }

        else
        {
          if (!v29)
          {
            v3 = 4294960568;
            if (!v12)
            {
              return v3;
            }

            goto LABEL_50;
          }

          v3 = 0;
          *a3 = v29;
        }

        v29 = 0;
LABEL_49:
        if (!v12)
        {
          return v3;
        }

LABEL_50:
        CFRelease(v12);
      }
    }

    else
    {
      sub_23EB6FF14(a1, &v25, "%ks", "BSAutoGuess_SourceBase");
      if (v7)
      {
        return v7;
      }

      if (!v25)
      {
        return 4294960568;
      }

      v9 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        return 4294960568;
      }

      values[0] = v25;
      v10 = CFArrayCreate(v9, values, 1, MEMORY[0x277CBF128]);
      if (!v10)
      {
        return 4294960568;
      }

      v11 = v10;
      v3 = sub_23EBB07FC(a2, v10, &Mutable);
      CFRelease(v11);
      if (!v3 || v3 == -6727)
      {
        v12 = 0;
        v13 = 8;
        goto LABEL_42;
      }
    }
  }

  return v3;
}

const __CFArray *sub_23EBDA4C0(uint64_t a1)
{
  v3 = 0;
  result = *(a1 + 48);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result)
    {
      sub_23EB6FF14(*(a1 + 48), &v3, "[*].%ks:int", result - 1, "kSBSKey_Step");
      return v3;
    }
  }

  return result;
}

uint64_t sub_23EBDA528(uint64_t *a1)
{
  v34 = 0;
  cf = 0;
  if (!a1[6])
  {
    return 4294960591;
  }

  v36 = 0;
  v35 = 0;
  if (!*a1 || !a1[1])
  {
    goto LABEL_26;
  }

  sub_23EBDAC08(a1, &v36);
  if (!v2)
  {
    if (!v36)
    {
      v4 = 0;
      Mutable = 0;
      goto LABEL_37;
    }

    sub_23EB6FF14(v36, &v35, "%kO:int", @"kSBSKey_Step");
    if (v2)
    {
      goto LABEL_5;
    }

    if (v35 == 14 || v35 == 2)
    {
      v4 = sub_23EBB426C(a1[1]);
      if (!v4 || (v11 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v36, "%ks=%O", v6, v7, v8, v9, v10, "kSBSKey_TargetBaseFeatures"), !v11))
      {
        v12 = sub_23EBDAC94(a1, v35, v36, &v34);
        if (v12 == -6769)
        {
          v11 = sub_23EBD8E80(a1, 0, 0);
        }

        else
        {
          v3 = v12;
          if (v12 == -6723)
          {
            goto LABEL_6;
          }

          v32 = 0;
          v31 = 0;
          if (v12)
          {
            goto LABEL_6;
          }

          if (!v34)
          {
            goto LABEL_40;
          }

          v11 = sub_23EBB4234(a1[1], &cf);
          if (!v11)
          {
            if (cf)
            {
              v13 = *MEMORY[0x277CBECE8];
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (Mutable)
              {
                sub_23EB6FF14(v36, &v31, "%ks:int", "kSBSKey_SelectorChoice");
                if (v14 != -6727)
                {
                  v3 = v14;
                  if (v14)
                  {
                    goto LABEL_27;
                  }

                  v20 = sub_23EB6FDFC(v13, v34, "%ks=%i", v15, v16, v17, v18, v19, "kSBSKey_SelectorChoice");
                  if (v20)
                  {
                    goto LABEL_25;
                  }
                }

                v30 = cf;
                v29 = *a1;
                v28 = v34;
                v20 = sub_23EB6FDFC(v13, Mutable, "%ks=%i%ks=%O%ks=%O%ks=%O", v15, v16, v17, v18, v19, "kSBSKey_Result_ConfigurationChoice");
                if (v20)
                {
LABEL_25:
                  v3 = v20;
                  goto LABEL_27;
                }

                sub_23EB6FF14(v36, &v32, "%ks", "kSBSKey_SourceBase", 1, "kSBSKey_Result_ConfigurationOptions", v28, "kSBSKey_Result_TargetBase", v29, "kSBSKey_Result_TargetBaseSettings", v30);
                if (v22 == -6727)
                {
LABEL_45:
                  v3 = 0;
                  a1[9] = Mutable;
                  goto LABEL_6;
                }

                v3 = v22;
                if (v22)
                {
                  goto LABEL_27;
                }

                if (v32)
                {
                  v20 = sub_23EB6FDFC(v13, Mutable, "%ks=%O", v23, v24, v25, v26, v27, "kSBSKey_Result_SourceBase");
                  if (v20)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_45;
                }
              }

LABEL_37:
              v3 = 4294960568;
              goto LABEL_27;
            }

LABEL_40:
            Mutable = 0;
            v3 = 4294960569;
            goto LABEL_27;
          }
        }
      }

      v3 = v11;
      goto LABEL_6;
    }

LABEL_26:
    v4 = 0;
    Mutable = 0;
    v3 = 4294960591;
    goto LABEL_27;
  }

LABEL_5:
  v3 = v2;
  v4 = 0;
LABEL_6:
  Mutable = 0;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v34)
  {
    CFRelease(v34);
    v34 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

uint64_t sub_23EBDA850(uint64_t a1)
{
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  theArray = 0;
  v30 = 0;
  cf = 0;
  if (!*(a1 + 48))
  {
    v3 = 4294960591;
    goto LABEL_51;
  }

  if (!*a1 || !*(a1 + 8))
  {
    goto LABEL_46;
  }

  sub_23EBDAC08(a1, &v34);
  if (v2)
  {
LABEL_5:
    v3 = v2;
    goto LABEL_47;
  }

  if (!v34)
  {
    goto LABEL_54;
  }

  sub_23EB6FF14(v34, &v33, "%ks:int", "kSBSKey_Step");
  if (v2)
  {
    goto LABEL_5;
  }

  if ((v33 & 0xFFFFFFF7) != 5)
  {
    goto LABEL_46;
  }

  v9 = *MEMORY[0x277CBECE8];
  v2 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v34, "%ks=%b", v4, v5, v6, v7, v8, "kSBSKey_CannotBeBackedInto");
  if (v2)
  {
    goto LABEL_5;
  }

  v2 = sub_23EBEE8B0(*(a1 + 88), *a1, 0, 0, 0, 0, &v32);
  if (v2)
  {
    goto LABEL_5;
  }

  if (v32)
  {
    v3 = sub_23EBD8C7C(a1, v32);
    if (v32)
    {
      CFRelease(v32);
      v32 = 0;
    }

    if (v3)
    {
      goto LABEL_47;
    }
  }

  v2 = sub_23EBB4DE4(*(a1 + 8), 1937327724);
  if (v2)
  {
    goto LABEL_5;
  }

  v2 = sub_23EBB3F7C(*(a1 + 8), 1937327724, &v31);
  if (v2)
  {
    goto LABEL_5;
  }

  if ((v31 & 0x200) == 0)
  {
    v27 = 0;
    v2 = sub_23EBE9E2C(*(a1 + 88), &v30);
    if (v2)
    {
      goto LABEL_5;
    }

    if (!v30)
    {
      goto LABEL_54;
    }

    v2 = sub_23EBEECB0(v30, *(a1 + 8), 512, &v27);
    if (v2)
    {
      goto LABEL_5;
    }

    if (!v27)
    {
      goto LABEL_54;
    }

    sub_23EBDAD80(v30, v33, v34, 0, v10, v11, v12, v13);
    v3 = v14;
    sub_23EBB1474(*(a1 + 8));
    sub_23EBEEBCC(v27);
    if (v3 == -6769)
    {
LABEL_30:
      v17 = 0;
      v18 = 0;
      goto LABEL_34;
    }

    if (v3)
    {
      goto LABEL_47;
    }

    v2 = sub_23EBDB3B8(a1);
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (v33 != 5)
  {
    v18 = 14;
LABEL_32:
    v2 = sub_23EBD8E80(a1, 0, 0);
    if (v2)
    {
      goto LABEL_5;
    }

    v17 = cf;
LABEL_34:
    v2 = sub_23EBD8E80(a1, v18, v17);
    goto LABEL_5;
  }

  v27 = 0;
  v15 = sub_23EBDB4B8(a1, &v27);
  if ((v15 & 0xFFFFFFF7) == 0xFFFFE5B1)
  {
    goto LABEL_28;
  }

  v3 = v15;
  v26 = 0;
  if (v15)
  {
    goto LABEL_47;
  }

  if (!v27)
  {
LABEL_54:
    v3 = 4294960568;
    goto LABEL_47;
  }

  v19 = sub_23EBDB638(a1, 0, &v26);
  if (v19 != -6727)
  {
    v3 = v19;
    if (v19)
    {
      goto LABEL_47;
    }

    if (!v26)
    {
      goto LABEL_54;
    }

    v20 = sub_23EBDB73C(v27, v26, &theArray);
    if (v20 != -6727)
    {
      v3 = v20;
      if (v20)
      {
        goto LABEL_47;
      }

      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          v22 = Count;
          ValueAtIndex = theArray;
          if (v22 < 2)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
            v32 = ValueAtIndex;
            if (!ValueAtIndex)
            {
              goto LABEL_61;
            }

            v24 = "kSBSKey_SourceBase";
          }

          else
          {
            v24 = "kSBSKey_BrowseRecordList";
          }

          v2 = sub_23EB6F348(v9, &cf, "{%ks=%O}", v24, ValueAtIndex);
          if (v2)
          {
            goto LABEL_5;
          }

          if (cf)
          {
            v18 = 6;
            goto LABEL_32;
          }

LABEL_61:
          v3 = 4294960569;
          goto LABEL_47;
        }

LABEL_46:
        v3 = 4294960591;
        goto LABEL_47;
      }

      goto LABEL_54;
    }
  }

LABEL_28:
  v16 = sub_23EBEDA58(*(a1 + 88), @"kAskUserWarning_Prompt", 0, 0, @"kAskUserWarning_NoBaseStationsFound_OnEthernet", 0, 0, 0, 0);
  if (v16 == -6723)
  {
    v3 = 4294960573;
    goto LABEL_47;
  }

  v3 = v16;
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_47:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

LABEL_51:
  if (v30)
  {
    sub_23EBE9F5C(v30);
  }

  return v3;
}

void sub_23EBDAC08(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*(a1 + 48))
    {
      Count = CFArrayGetCount(*(a1 + 48));
      if (Count)
      {
        v5 = *(a1 + 48);
        v7 = 0;
        sub_23EB6FF14(v5, &v7, "[*]", Count - 1);
        if (!v6)
        {
          if (v7)
          {
            *a2 = v7;
          }
        }
      }
    }
  }
}

uint64_t sub_23EBDAC94(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus _CopyAndWaitResultsDictFromStep(StepByStepContextRef, eSBSStep, CFDictionaryRef, CFDictionaryRef *)", 800, " \n");
  }

  v16 = 0;
  v12 = sub_23EBE9E2C(*(a1 + 88), &v16);
  v13 = v16;
  if (!v12)
  {
    if (!v16)
    {
      return 4294960568;
    }

    if (v16[3])
    {
      sub_23EBDAD80(v16, a2, a3, a4, v8, v9, v10, v11);
      v12 = v15;
      v13 = v16;
      if (!v16)
      {
        return v12;
      }
    }

    else
    {
      v12 = 4294960591;
    }

    goto LABEL_7;
  }

  if (v16)
  {
LABEL_7:
    sub_23EBE9F5C(v13);
  }

  return v12;
}

void sub_23EBDAD80(__CFArray **a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus _CopyAndWaitResultsDictFromStepWithCallbackContext(AssistantCallbackContextRef, eSBSStep, CFDictionaryRef, CFDictionaryRef *)", 800, " \n");
  }

  if (a1 && *a1 == 1634561902 && !sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1[3], "%ks=%i", a4, a5, a6, a7, a8, "kBSAssistantCallbackKey_SBS_SBSStep") && (!a3 || !sub_23EBEB5E8(a1, @"kBSAssistantCallbackKey_SBS_SBSParamDict", a3, v11, v12, v13, v14, v15)) && !sub_23EBEA59C(a1, 1))
  {
    v16 = sub_23EBEA92C(a1);
    if (!*(a1 + 8) && !v16)
    {
      if (a4)
      {
        if (sub_23EBEB5B8(a1, @"kBSAssistantCallbackKey_SBS_SBSOptionsDict"))
        {
          cf = 0;
          sub_23EBEB494(a1, @"kBSAssistantCallbackKey_SBS_SBSOptionsDict", &cf);
          if (!v17)
          {
            v18 = cf;
            if (cf)
            {
              *a4 = cf;
              CFRetain(v18);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23EBDAEEC(uint64_t a1, CFTypeRef *a2)
{
  v22 = 0;
  cf = 0;
  if (!a2)
  {
    return 4294960591;
  }

  v4 = sub_23EBDB28C(a1, @"kSBSCacheKey_ScanRecordsMerged", &cf);
  if (v4 == -6727)
  {
    if (!cf)
    {
      v7 = sub_23EBEC5F4(*(a1 + 88), 0, 3, 1, &cf);
      v5 = v7;
      v8 = cf;
      if (v7 || !cf)
      {
        if (v7)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v5 = sub_23EBD89EC(a1, @"kSBSCacheKey_ScanRecordsMerged", cf);
        CFRelease(cf);
        if (v5)
        {
          goto LABEL_29;
        }

        v8 = cf;
      }

      if (!v8)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v5 = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    if (!cf)
    {
      goto LABEL_28;
    }
  }

  *v21 = 0;
  v6 = sub_23EBEBA44(*(a1 + 88), v21, 0);
  if (v6 == -6727)
  {
LABEL_12:
    v5 = 0;
    *a2 = cf;
    cf = 0;
    goto LABEL_29;
  }

  v5 = v6;
  if (!v6)
  {
    if (*v21)
    {
      if (sub_23EB6B6FC(*v21, 0, cf) != -1)
      {
        goto LABEL_12;
      }

      v9 = sub_23EBEC4F4(*(a1 + 88), *v21, 3, &v22);
      if (v9)
      {
        v5 = v9;
        goto LABEL_29;
      }

      if (v22)
      {
        v10 = *MEMORY[0x277CBECE8];
        if (cf)
        {
          Count = CFArrayGetCount(cf);
          MutableCopy = CFArrayCreateMutableCopy(v10, Count + 1, cf);
          if (MutableCopy)
          {
LABEL_25:
            v18 = MutableCopy;
            v19 = sub_23EB6FDFC(v10, MutableCopy, "%O", v13, v14, v15, v16, v17, v22);
            if (v19)
            {
              v5 = v19;
              CFRelease(v18);
              goto LABEL_29;
            }

            v5 = sub_23EBD89EC(a1, @"kSBSCacheKey_ScanRecordsMerged", v18);
            cf = v18;
            CFRelease(v18);
            if (v5)
            {
              goto LABEL_29;
            }

            goto LABEL_12;
          }
        }

        else
        {
          MutableCopy = CFArrayCreateMutable(v10, 1, MEMORY[0x277CBF128]);
          if (MutableCopy)
          {
            goto LABEL_25;
          }
        }
      }
    }

LABEL_28:
    v5 = 4294960568;
  }

LABEL_29:
  if (v22)
  {
    CFRelease(v22);
    v22 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t sub_23EBDB10C(CFArrayRef theArray, const char *a2, const __CFString *a3, CFMutableArrayRef *a4)
{
  v4 = 4294960591;
  if (!theArray)
  {
    return v4;
  }

  if (!a4)
  {
    return v4;
  }

  v6 = a3;
  if (!a2 && !a3)
  {
    return v4;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v10 = Count;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v13 = Mutable;
  v23 = 0;
  if (v10 >= 1)
  {
    for (i = 0; v10 != i; ++i)
    {
      sub_23EB6FF14(theArray, &v23, "[*]", i);
      if (v15)
      {
LABEL_24:
        v4 = v15;
        goto LABEL_27;
      }

      v16 = v23;
      if (!v23)
      {
        v4 = 4294960568;
LABEL_27:
        CFRelease(v13);
        return v4;
      }

      if (v6)
      {
        if (sub_23EB6B600(v6, v23))
        {
          v6 = 0;
          continue;
        }

        v16 = v23;
      }

      if (!sub_23EC0FB00(v16, a2))
      {
        v15 = sub_23EB6FDFC(v11, v13, "%O", v17, v18, v19, v20, v21, v23);
        if (v15)
        {
          goto LABEL_24;
        }
      }
    }
  }

  if (!CFArrayGetCount(v13))
  {
    v4 = 4294960569;
    goto LABEL_27;
  }

  v4 = 0;
  *a4 = v13;
  return v4;
}

uint64_t sub_23EBDB28C(uint64_t a1, CFStringRef theString1, CFTypeRef *a3)
{
  cf = 0;
  v12 = 0;
  v3 = 4294960591;
  if (!theString1 || !a3)
  {
    return v3;
  }

  if (!*(a1 + 56))
  {
    goto LABEL_16;
  }

  if (CFStringCompare(theString1, @"kSBSCacheKey_BrowseRecords", 0))
  {
    if (CFStringCompare(theString1, @"kSBSCacheKey_BaseSettings", 0) == kCFCompareEqualTo)
    {
      goto LABEL_16;
    }

    sub_23EB6FF14(*(a1 + 56), &v12, "%kO", theString1);
    goto LABEL_11;
  }

  v8 = sub_23EBEBA44(*(a1 + 88), &cf, 0);
  v9 = theString1;
  if (v8 == -6727)
  {
    goto LABEL_10;
  }

  v3 = v8;
  if (v8)
  {
    goto LABEL_16;
  }

  v9 = cf;
  if (cf)
  {
LABEL_10:
    sub_23EB6FF14(*(a1 + 56), &v12, "%kO.%kO", theString1, v9);
LABEL_11:
    if (v7)
    {
      v3 = v7;
    }

    else if (v12)
    {
      v3 = 0;
      *a3 = v12;
      v12 = 0;
    }

    else
    {
      v3 = 4294960568;
    }

LABEL_16:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_18;
  }

  v3 = 4294960568;
LABEL_18:
  if (v12)
  {
    CFRelease(v12);
  }

  return v3;
}

uint64_t sub_23EBDB3B8(uint64_t a1)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus _SendResetContextCommand(StepByStepContextRef)", 800, " \n");
  }

  context = 0;
  v7 = sub_23EBE9E2C(*(a1 + 88), &context);
  v8 = context;
  if (!v7)
  {
    if (!context)
    {
      return 4294960568;
    }

    v10 = *(context + 3);
    if (!v10)
    {
      v7 = 4294960591;
      goto LABEL_7;
    }

    v7 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v10, "%ks=%i", v2, v3, v4, v5, v6, "kBSAssistantCallbackKey_SBS_SBSStep");
    v8 = context;
    if (!v7)
    {
      v7 = sub_23EBEA814(context, 1);
      v8 = context;
    }
  }

  if (v8)
  {
LABEL_7:
    sub_23EBE9F5C(v8);
  }

  return v7;
}

uint64_t sub_23EBDB4B8(uint64_t a1, CFArrayRef *a2)
{
  theArray = 0;
  if (!a2)
  {
    return 4294960591;
  }

  v4 = sub_23EBDB28C(a1, @"kSBSCacheKey_TargetRemoteBrowseRecords", &theArray);
  if (v4 != -6727)
  {
    v5 = v4;
    if (!v4)
    {
      v6 = theArray;
      if (!theArray)
      {
        return 4294960568;
      }

      v5 = 0;
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  v6 = theArray;
  if (theArray)
  {
    v5 = 4294960569;
LABEL_9:
    *a2 = v6;
    return v5;
  }

  cf = 0;
  sub_23EBEAB18(*(a1 + 88), 3, 0, 0);
  v5 = sub_23EBB7360(*a1, @"local.", @"_airport._tcp", @"wan", 2u, 1, &cf);
  sub_23EBEAB18(*(a1 + 88), 4, 0, 0);
  if (!v5)
  {
    if (!cf)
    {
      goto LABEL_20;
    }

    v5 = sub_23EB6B2C8(cf, &theArray);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v5)
    {
      goto LABEL_21;
    }

    if (theArray)
    {
      if (CFArrayGetCount(theArray))
      {
        v5 = sub_23EBD89EC(a1, @"kSBSCacheKey_TargetRemoteBrowseRecords", theArray);
        CFRelease(theArray);
        if (!v5)
        {
          v6 = theArray;
          goto LABEL_9;
        }
      }

      else
      {
        v5 = 4294960569;
      }
    }

    else
    {
LABEL_20:
      v5 = 4294960568;
    }
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v5;
}

uint64_t sub_23EBDB638(uint64_t a1, int a2, void *a3)
{
  cf = 0;
  if (!a3)
  {
    return 4294960591;
  }

  v6 = sub_23EBDB28C(a1, @"kSBSCacheKey_BrowseRecords", &cf);
  if (v6 == -6727)
  {
    v8 = cf;
    if (cf)
    {
      v7 = 4294960569;
      goto LABEL_9;
    }

    if (a2 && (v9 = sub_23EBEC174(*(a1 + 88), 8), v9) || (v9 = sub_23EBED960(*(a1 + 88), 15, &cf), v9))
    {
      v7 = v9;
    }

    else
    {
      if (!cf)
      {
        return 4294960568;
      }

      v7 = sub_23EBD89EC(a1, @"kSBSCacheKey_BrowseRecords", cf);
      CFRelease(cf);
      if (!v7)
      {
        v8 = cf;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = v6;
    if (!v6)
    {
      v8 = cf;
      if (cf)
      {
        v7 = 0;
LABEL_9:
        *a3 = v8;
        return v7;
      }

      return 4294960568;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t sub_23EBDB73C(const __CFArray *a1, const __CFArray *a2, __CFArray **a3)
{
  v3 = 4294960591;
  if (a1 && a3)
  {
    Count = CFArrayGetCount(a1);
    if (Count && (v8 = Count, CFArrayGetCount(a2)))
    {
      v9 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v11 = Mutable;
        v23 = 0;
        if (v8 >= 1)
        {
          v12 = 0;
          while (1)
          {
            sub_23EB6FF14(a1, &v23, "[*].%kO.%kO", v12, @"txt", @"waMA");
            if (v13 != -6727)
            {
              v3 = v13;
              if (v13)
              {
                goto LABEL_23;
              }

              if (!v23)
              {
LABEL_21:
                v3 = 4294960568;
                goto LABEL_23;
              }

              v14 = sub_23EB6B3A8(a2, v23);
              if (v14 != -1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
                if (!ValueAtIndex)
                {
                  goto LABEL_21;
                }

                v21 = sub_23EB6FDFC(v9, v11, "%O", v16, v17, v18, v19, v20, ValueAtIndex);
                if (v21)
                {
                  break;
                }
              }
            }

            if (v8 == ++v12)
            {
              goto LABEL_15;
            }
          }

          v3 = v21;
          goto LABEL_23;
        }

LABEL_15:
        if (!CFArrayGetCount(v11))
        {
          v3 = 4294960569;
LABEL_23:
          CFRelease(v11);
          return v3;
        }

        v3 = 0;
        *a3 = v11;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return v3;
}

uint64_t sub_23EBDB8C4(uint64_t a1, CFArrayRef theArray, const __CFString *a3, int a4, int a5, int a6, const __CFString *a7, CFMutableArrayRef *a8)
{
  if (!a8)
  {
    return 4294960591;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v17 = Count;
  v51 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v19 = Mutable;
  v47 = a1;
  v50 = a6;
  v49 = a7;
  v52 = 0;
  if (v17 >= 1)
  {
    v20 = 0;
    v21 = 0;
    v48 = Mutable;
    while (1)
    {
      sub_23EB6FF14(theArray, &v52, "[*]", v21);
      if (v22)
      {
LABEL_73:
        v43 = v22;
        goto LABEL_76;
      }

      if (!v52)
      {
        v43 = 4294960568;
LABEL_76:
        CFRelease(v19);
        return v43;
      }

      if (a5)
      {
        v20 = sub_23EB6A2C0(v52);
      }

      if (a3 && sub_23EB6B674(a3, v52))
      {
        a3 = 0;
        goto LABEL_57;
      }

      if (a4 && !sub_23EB6AF6C(v52))
      {
        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_57;
        }

        v28 = "Skipping non-wireless %@\n";
LABEL_33:
        v35 = sub_23EB6AE14(v52);
        sub_23EB75374(&dword_27E382BC8, "OSStatus _CopyNarrowedDownBrowseRecords(StepByStepContextRef, CFArrayRef, CFDictionaryRef, Boolean, Boolean, Boolean, CFStringRef, CFArrayRef *)", 800, v28, v35);
        v19 = v48;
        goto LABEL_57;
      }

      if (a5 && (v20 == 3 || v20 == 102 || sub_23EB6C138(v52)))
      {
        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_57;
        }

        v28 = "Skipping non-extendable %@\n";
        goto LABEL_33;
      }

      if (v50)
      {
        v29 = v52;
        if (v52)
        {
          if (*(v47 + 8))
          {
            break;
          }
        }
      }

LABEL_52:
      v41 = v52;
      if (v49)
      {
        v42 = sub_23EB6A394(v52, v49);
        v41 = v52;
        if (!v42)
        {
          if (!sub_23EB6A560(v52))
          {
            goto LABEL_57;
          }

          v41 = v52;
        }
      }

      v22 = sub_23EB6FDFC(v51, v19, "%O", v23, v24, v25, v26, v27, v41);
      if (v22)
      {
        goto LABEL_73;
      }

LABEL_57:
      if (v17 == ++v21)
      {
        goto LABEL_71;
      }
    }

    v30 = sub_23EB6AF6C(v52);
    if (v30 && (v31 = v30, CFStringGetLength(v30)))
    {
      v34 = sub_23EC0F96C(v31, 3, v32, v33);
    }

    else
    {
      v36 = sub_23EB6ADC8(v29);
      v37 = v36;
      if (!v36)
      {
        goto LABEL_38;
      }

      if (!CFStringGetLength(v36))
      {
        v37 = 0;
LABEL_38:
        if (sub_23EBB4248(*(v47 + 8), 1852787795))
        {
          v53 = 0;
          if (v37)
          {
            if (sub_23EC0F8D8(v37, &v53, 0) && (v53 & 0xFFFFFFFE) == 2)
            {
              v19 = v48;
              if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
              {
                v45 = sub_23EB6AE14(v29);
                sub_23EB75374(&dword_27E382BC8, "Boolean _IsSourceBaseReplaceable(StepByStepContextRef, CFDictionaryRef)", 800, "This base is irreplaceable because it's WEP %@\n", v45);
              }

LABEL_64:
              if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
              {
                goto LABEL_57;
              }

              v28 = "Skipping irreplaceable %@\n";
              goto LABEL_33;
            }
          }
        }

        v19 = v48;
        if (!sub_23EB6C138(v29) && sub_23EB6AFB8(v29) == 1)
        {
          if (!sub_23EBB4248(*(v47 + 8), 1112757313) || (v53 = 0, !sub_23EBB3F7C(*(v47 + 8), 1937326416, &v53)) && v53 >= 0x77 && !sub_23EBB4248(*(v47 + 8), 1632923251))
          {
            if (dword_27E382BC8 > 800)
            {
              goto LABEL_57;
            }

            if (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u))
            {
              v46 = sub_23EB6AE14(v29);
              sub_23EB75374(&dword_27E382BC8, "Boolean _IsSourceBaseReplaceable(StepByStepContextRef, CFDictionaryRef)", 800, "This base is irreplaceable because it's a STA %@\n", v46);
            }

            goto LABEL_64;
          }
        }

        goto LABEL_52;
      }

      v34 = sub_23EC0F9B4(v37, v38, v39, v40);
    }

    v37 = v34;
    goto LABEL_38;
  }

LABEL_71:
  if (!CFArrayGetCount(v19))
  {
    v43 = 4294960569;
    goto LABEL_76;
  }

  v43 = 0;
  *a8 = v19;
  return v43;
}

BOOL sub_23EBDBD64(uint64_t a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  if (sub_23EBDB4B8(a1, &v5))
  {
    return 0;
  }

  sub_23EB6FF14(a2, &v6, "%kO.%kO", @"txt", @"waMA");
  return !v3 && v6 && sub_23EB6B3A8(v5, v6) != -1;
}

uint64_t sub_23EBDBDF8(const __CFArray *a1, const __CFString *a2, __CFArray **a3)
{
  v3 = 4294960591;
  if (a2 && a3)
  {
    v5 = a2;
    Count = CFArrayGetCount(a1);
    if (Count)
    {
      v8 = Count;
      v9 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v11 = Mutable;
        v20 = 0;
        v21 = 0;
        if (v8 >= 1)
        {
          v12 = 0;
          while (1)
          {
            sub_23EB6FF14(a1, &v21, "[*]", v12);
            if (v13)
            {
              goto LABEL_21;
            }

            if (!v21)
            {
              break;
            }

            sub_23EB6FF14(v21, &v20, "%ks", "macAddress");
            if (v13)
            {
LABEL_21:
              v3 = v13;
              goto LABEL_24;
            }

            if (!v20)
            {
              break;
            }

            if (v5 && sub_23EB6B424(v5, v20))
            {
              v5 = 0;
            }

            else
            {
              v13 = sub_23EB6FDFC(v9, v11, "%O", v14, v15, v16, v17, v18, v21);
              if (v13)
              {
                goto LABEL_21;
              }
            }

            if (v8 == ++v12)
            {
              goto LABEL_17;
            }
          }

          v3 = 4294960568;
          goto LABEL_24;
        }

LABEL_17:
        if (!CFArrayGetCount(v11))
        {
          v3 = 4294960569;
LABEL_24:
          CFRelease(v11);
          return v3;
        }

        v3 = 0;
        *a3 = v11;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return v3;
}

__CFString *sub_23EBDBFC4(const __CFString *a1)
{
  v1 = &stru_285145FE8;
  v3 = &stru_285145FE8;
  if (a1)
  {
    sub_23EB6FF14(a1, &v3, "%ks.%ks", "txt", "raNm");
    return v3;
  }

  return v1;
}

void sub_23EBDC01C(const char *a1, CFArrayRef theArray)
{
  v61 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void dlog_user__BaseStationArray(const char *, CFArrayRef)", 800, "%s BaseStation list count: %d\n", a1, Count);
    }

    if (Count)
    {
      v5 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 8, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        if (Count < 1)
        {
LABEL_62:
          CFRelease(Mutable);
          return;
        }

        v7 = 0;
        while (1)
        {
          sub_23EB6FF14(theArray, &v61, "[*].%ks", v7, "name");
          if (v13)
          {
            v14 = 1;
          }

          else
          {
            v14 = v61 == 0;
          }

          if (v14)
          {
            v61 = @"<Not found>";
          }

          v15 = sub_23EB6FDFC(v5, Mutable, "%ks=%O", v8, v9, v10, v11, v12, "name");
          if (v15)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v61, "[*].%ks.%kC", v7, "txt", 1937327724);
          if (v21 || !v61)
          {
            v61 = @"<Not found>";
          }

          v15 = sub_23EB6FDFC(v5, Mutable, "%kC=%O", v16, v17, v18, v19, v20, 0x7379466Cu);
          if (v15)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v61, "[*].%ks.%kC", v7, "txt", 1937326416);
          if (v27 || !v61)
          {
            v61 = @"<Not found>";
          }

          v15 = sub_23EB6FDFC(v5, Mutable, "%kC=%O", v22, v23, v24, v25, v26, 0x73794150u);
          if (v15)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v61, "[*].%ks.%ks", v7, "txt", "raMA");
          if (v33 || !v61)
          {
            v61 = @"<Not found>";
          }

          v15 = sub_23EB6FDFC(v5, Mutable, "%ks=%O", v28, v29, v30, v31, v32, "raMA");
          if (v15)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v61, "[*].%ks.%ks", v7, "txt", "raM2");
          if (v34 != -6727)
          {
            if (v34 || !v61)
            {
              v61 = @"<Not found>";
            }

            v15 = sub_23EB6FDFC(v5, Mutable, "%ks=%O", v35, v36, v37, v38, v39, "raM2");
            if (v15)
            {
              break;
            }
          }

          sub_23EB6FF14(theArray, &v61, "[*].%ks.%ks", v7, "txt", "raNm");
          if (v45 || !v61)
          {
            v61 = @"<Not found>";
          }

          v15 = sub_23EB6FDFC(v5, Mutable, "%ks=%O", v40, v41, v42, v43, v44, "raNm");
          if (v15)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v61, "[*].%ks.%ks", v7, "txt", "syVs");
          if (v51 || !v61)
          {
            v61 = @"<Not found>";
          }

          v15 = sub_23EB6FDFC(v5, Mutable, "%ks=%O", v46, v47, v48, v49, v50, "syVs");
          if (v15)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v61, "[*].%ks.%ks", v7, "txt", "prob");
          if (v52 != -6727)
          {
            if (v52 || (v58 = v61) == 0)
            {
              v61 = @"<Not found>";
              v58 = @"<Not found>";
            }

            v60 = v58;
            v15 = sub_23EB6FDFC(v5, Mutable, "%ks=%O", v53, v54, v55, v56, v57, "prob");
            if (v15)
            {
              break;
            }
          }

          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void dlog_user__BaseStationArray(const char *, CFArrayRef)", 800, "\t%@", Mutable, v60);
          }

          CFDictionaryRemoveAllValues(Mutable);
          if (Count == ++v7)
          {
            goto LABEL_61;
          }
        }

        v59 = v15;
      }

      else
      {
        LODWORD(v7) = 0;
        v59 = -6728;
      }
    }

    else
    {
      LODWORD(v7) = 0;
      Mutable = 0;
      v59 = -6727;
    }
  }

  else
  {
    LODWORD(v7) = 0;
    Mutable = 0;
    v59 = -6705;
  }

  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__BaseStationArray(const char *, CFArrayRef)", 800, "err: %d index: %d", v59, v7);
  }

LABEL_61:
  if (Mutable)
  {
    goto LABEL_62;
  }
}

void sub_23EBDC50C(const char *a1, CFArrayRef theArray)
{
  v43 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void dlog_user__NetworkArray(const char *, CFArrayRef)", 800, "%sNetwork list count: %d\n", a1, Count);
    }

    if (Count)
    {
      v5 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        if (Count < 1)
        {
LABEL_50:
          CFRelease(Mutable);
          return;
        }

        v7 = 0;
        while (1)
        {
          sub_23EB6FF14(theArray, &v43, "[*].%kO", v7, @"SSID_STR");
          if (v13)
          {
            v14 = 1;
          }

          else
          {
            v14 = v43 == 0;
          }

          if (v14)
          {
            v43 = @"<Not found>";
          }

          v15 = sub_23EB6FDFC(v5, Mutable, "%kO=%O", v8, v9, v10, v11, v12, @"SSID_STR");
          if (v15)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v43, "[*].%kO", v7, @"BSSID");
          if (v16 == -6727)
          {
            sub_23EB6FF14(theArray, &v43, "[*].%kO", v7, @"BSSID");
          }

          if (v16 || !v43)
          {
            v43 = @"<Not found>";
          }

          v15 = sub_23EB6FDFC(v5, Mutable, "%kO=%O", v17, v18, v19, v20, v21, @"BSSID");
          if (v15)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v43, "[*].%kO", v7, @"CHANNEL");
          if (v27 || !v43)
          {
            v43 = @"<Not found>";
          }

          v15 = sub_23EB6FDFC(v5, Mutable, "%kO=%O", v22, v23, v24, v25, v26, @"CHANNEL");
          if (v15)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v43, "[*].%kO", v7, @"IE");
          if (v33 || !v43)
          {
            v43 = @"<Not found>";
          }

          v15 = sub_23EB6FDFC(v5, Mutable, "%kO=%O", v28, v29, v30, v31, v32, @"IE");
          if (v15)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v43, "[*].%kO", v7, @"APPLE_IE");
          if (v39 || (v40 = v43) == 0)
          {
            v43 = @"<Not found>";
            v40 = @"<Not found>";
          }

          v42 = v40;
          v15 = sub_23EB6FDFC(v5, Mutable, "%kO=%O", v34, v35, v36, v37, v38, @"APPLE_IE");
          if (v15)
          {
            break;
          }

          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void dlog_user__NetworkArray(const char *, CFArrayRef)", 800, "\t%@", Mutable, v42);
          }

          CFDictionaryRemoveAllValues(Mutable);
          if (Count == ++v7)
          {
            goto LABEL_49;
          }
        }

        v41 = v15;
      }

      else
      {
        LODWORD(v7) = 0;
        v41 = -6728;
      }
    }

    else
    {
      LODWORD(v7) = 0;
      Mutable = 0;
      v41 = -6727;
    }
  }

  else
  {
    LODWORD(v7) = 0;
    Mutable = 0;
    v41 = -6705;
  }

  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__NetworkArray(const char *, CFArrayRef)", 800, "err: %d index: %d", v41, v7);
  }

LABEL_49:
  if (Mutable)
  {
    goto LABEL_50;
  }
}

void sub_23EBDC8C0(const char *a1, CFDictionaryRef theDict)
{
  v14 = 0;
  v15 = 0;
  if (!theDict)
  {
    Mutable = 0;
    v8 = -6705;
    goto LABEL_13;
  }

  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    Mutable = 0;
    v8 = -6727;
    goto LABEL_13;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
LABEL_12:
    v8 = -6728;
    goto LABEL_13;
  }

  v7 = sub_23EB71A18(theDict, &v15);
  if (!v7)
  {
    if (v15)
    {
      while (sub_23EB71AC0(v15, 0, &v14))
      {
        v7 = sub_23EB6FDFC(v5, Mutable, "%O", v9, v10, v11, v12, v13, v14);
        if (v7)
        {
          goto LABEL_5;
        }
      }

      sub_23EBDC01C(a1, Mutable);
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_5:
  v8 = v7;
LABEL_13:
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__BaseStationDictionaryList(const char *, CFDictionaryRef)", 800, "err: %d", v8);
  }

  if (Mutable)
  {
LABEL_18:
    CFRelease(Mutable);
  }

  if (v15)
  {
    sub_23EB71AB4(v15);
  }
}

void sub_23EBDCA2C(const char *a1, CFDictionaryRef theDict)
{
  v14 = 0;
  v15 = 0;
  if (!theDict)
  {
    Mutable = 0;
    v8 = -6705;
    goto LABEL_13;
  }

  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    Mutable = 0;
    v8 = -6727;
    goto LABEL_13;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
LABEL_12:
    v8 = -6728;
    goto LABEL_13;
  }

  v7 = sub_23EB71A18(theDict, &v15);
  if (!v7)
  {
    if (v15)
    {
      while (sub_23EB71AC0(v15, 0, &v14))
      {
        v7 = sub_23EB6FDFC(v5, Mutable, "%O", v9, v10, v11, v12, v13, v14);
        if (v7)
        {
          goto LABEL_5;
        }
      }

      sub_23EBDC50C(a1, Mutable);
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_5:
  v8 = v7;
LABEL_13:
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__NetworkDictionaryList(const char *, CFDictionaryRef)", 800, "err: %d ", v8);
  }

  if (Mutable)
  {
LABEL_18:
    CFRelease(Mutable);
  }

  if (v15)
  {
    sub_23EB71AB4(v15);
  }
}

void sub_23EBDCB98(const char *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v11 = sub_23EB6FDFC(v4, Mutable, "%O", v5, v6, v7, v8, v9, v2);
      if (!v11)
      {
        sub_23EBDC01C(a1, Mutable);
LABEL_14:

        CFRelease(Mutable);
        return;
      }

      v12 = v11;
    }

    else
    {
      v12 = -6728;
    }
  }

  else
  {
    Mutable = 0;
    v12 = -6705;
  }

  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__BaseStationDictionary(const char *, CFDictionaryRef)", 800, "err: %d", v12);
  }

  if (Mutable)
  {
    goto LABEL_14;
  }
}