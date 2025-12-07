void sub_93D854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1668)
  {
    qword_27B1670 = qword_27B1668;
    operator delete(qword_27B1668);
  }

  _Unwind_Resume(exception_object);
}

void sub_93DA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void sub_93DAD0(_DWORD *a1@<X0>, uint64_t a2@<X8>, _DWORD *a3@<X1>)
{
  *a2 = &off_266D928;
  *(a2 + 16) = 0;
  v4 = (a2 + 16);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 8) = *a1;
  *(a2 + 12) = 2;
  sub_93DBEC(a1, a3, v12);
  sub_93DDC4(v12, &v10);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(a2 + 24);
    v7 = *v4;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *v4;
    }

    *(a2 + 24) = v5;
    operator delete(v7);
  }

  *(a2 + 16) = v10;
  v9 = v12[0];
  *(a2 + 32) = v11;
  if (v9)
  {
    v12[1] = v9;
    operator delete(v9);
  }
}

void sub_93DBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    sub_932F98(v13);
    _Unwind_Resume(a1);
  }

  sub_932F98(v13);
  _Unwind_Resume(a1);
}

void sub_93DBEC(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_93C870(a2);
  if (v6 <= 0xFFFFFFFEFFFFFFFFLL && v6)
  {
    sub_3A25A8(*(a1 + 24), v6, 0, "trip");
    operator new();
  }

  sub_959CC0(a2, 0, *(a1 + 16), *(a1 + 24), v9);
  v7 = v9[0];
  v8 = v9[1];
  *a3 = 0;
  a3[2] = 0;
  a3[1] = 0;
  if (v8 != v7)
  {
    if ((v8 - v7) >= 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_2CAA68(a3);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_93DD80(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *v3 = v5;
    operator delete(v5);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_93DDC4(void *a2@<X1>, const void ***a3@<X8>)
{
  nullsub_1();
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a2[1];
  if (v5 != *a2)
  {
    if (((v5 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a3;
  sub_93524(a3);
}

void sub_93DFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_395478(va);
  sub_1A104(v22);
  _Unwind_Resume(a1);
}

void sub_93E014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1A104(v16);
    _Unwind_Resume(a1);
  }

  sub_1A104(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_93E04C(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x1Fu)
  {
    v9 = *(v8 + 15);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_93E1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_93E1D8()
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
  xmmword_27B16D8 = 0u;
  unk_27B16E8 = 0u;
  dword_27B16F8 = 1065353216;
  sub_3A9A34(&xmmword_27B16D8, v0, v0);
  sub_3A9A34(&xmmword_27B16D8, v3, v3);
  sub_3A9A34(&xmmword_27B16D8, __p, __p);
  sub_3A9A34(&xmmword_27B16D8, v9, v9);
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
    qword_27B16B0 = 0;
    qword_27B16B8 = 0;
    qword_27B16A8 = 0;
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

void sub_93E420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B16C0)
  {
    qword_27B16C8 = qword_27B16C0;
    operator delete(qword_27B16C0);
  }

  _Unwind_Resume(exception_object);
}

void sub_93E4CC(_DWORD *a1, void *a2)
{
  v3 = 11;
  strcpy(__p, "ttl_seconds");
  *a1 = 10 * sub_352470(a2, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_93E5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_93E734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_93E760(uint64_t a1@<X0>, void *a2@<X8>, char **a3@<X1>)
{
  a2[1] = 0x27FFFFFFFLL;
  *a2 = &off_266D988;
  a2[2] = 0;
  v5 = (a2 + 2);
  a2[3] = 0;
  a2[4] = 0;
  if (*(*(a1 + 8) + 11688))
  {
    sub_93E844(a1, a3, &v9);
    v6 = *v5;
    if (*v5)
    {
      v7 = a2[3];
      v8 = *v5;
      if (v7 != v6)
      {
        do
        {
          v7 = sub_399184(v7 - 456);
        }

        while (v7 != v6);
        v8 = *v5;
      }

      a2[3] = v6;
      operator delete(v8);
    }

    *(a2 + 1) = v9;
    a2[4] = v10;
  }

  *(a2 + 2) = *a1;
}

void sub_93E844(uint64_t a1@<X0>, char **a2@<X1>, unint64_t *a3@<X8>)
{
  sub_95B8C4(v14, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v6 = sub_95B900(v14, a2 + 84);
  v7 = sub_64AEEC(v6, *(a1 + 4));
  sub_95D748(v7, *(a1 + 40));
  v8 = sub_93C858(a2);
  if (*v8 && v8[1] != -1 && v8[3] != -1)
  {
    sub_3A25A8(*(a1 + 24), *v8, 0, "trip");
    operator new();
  }

  sub_93C810(a2);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 48);
  }

  if (v9 == 5)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 48);
  }

  sub_959A2C(a2, v10, *(a1 + 24), &__p);
  sub_95B980(v14, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  sub_959CC0(a2, v11, *(a1 + 16), *(a1 + 24), &__p);
  sub_95B940(v14, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  sub_95BD68(v14, a3);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_93EA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
    sub_93EA94(va);
    _Unwind_Resume(a1);
  }

  sub_93EA94(va);
  _Unwind_Resume(a1);
}

void *sub_93EA94(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    a1[8] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_93EB08()
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
  xmmword_27B1730 = 0u;
  unk_27B1740 = 0u;
  dword_27B1750 = 1065353216;
  sub_3A9A34(&xmmword_27B1730, v0, v0);
  sub_3A9A34(&xmmword_27B1730, v3, v3);
  sub_3A9A34(&xmmword_27B1730, __p, __p);
  sub_3A9A34(&xmmword_27B1730, v9, v9);
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
    qword_27B1708 = 0;
    qword_27B1710 = 0;
    qword_27B1700 = 0;
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

void sub_93ED50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1718)
  {
    qword_27B1720 = qword_27B1718;
    operator delete(qword_27B1718);
  }

  _Unwind_Resume(exception_object);
}

void sub_93EFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_93F11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_93F144(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  sub_93F4DC(a1, a2 + 78, a2, a3);
  v6 = sub_93C858(a2);
  if (*v6)
  {
    v7 = v6[1] == -1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    sub_3AFEE8(*(a1 + 24));
    v20 = sub_3AFC64(*(a1 + 24));
    sub_3A25A8(v20, *v6, 0, "trip");
    sub_948248();
  }

  v26 = sub_93C810(a2);
  v27 = v8;
  sub_93FB44(a1, &v26, v9, v10, v11, v12, v13, v14);
  v15 = *(a3 + 112);
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = *(a3 + 120);
  v17 = *(a3 + 112);
  if (v16 == v15)
  {
    goto LABEL_16;
  }

  v18 = v16 - 48;
  do
  {
    if (*(v18 + 47) < 0)
    {
      operator delete(*(v18 + 24));
      if (!*v18)
      {
        goto LABEL_9;
      }

LABEL_14:
      sub_936658(v18);
      operator delete(*v18);
      goto LABEL_9;
    }

    if (*v18)
    {
      goto LABEL_14;
    }

LABEL_9:
    v19 = v18 - 24;
    v18 -= 72;
  }

  while (v19 != v15);
  v17 = *(a3 + 112);
LABEL_16:
  *(a3 + 120) = v15;
  operator delete(v17);
LABEL_17:
  *(a3 + 112) = *v22;
  *(a3 + 128) = v23;
  sub_9483C8(&v26, *(a1 + 32), *(a1 + 24), *(a1 + 8), v22);
  if (*(a3 + 88))
  {
    sub_936658((a3 + 88));
    operator delete(*(a3 + 88));
  }

  *(a3 + 88) = *v22;
  *(a3 + 104) = v23;
  v21 = sub_3AFB1C(*(a1 + 24));
  sub_9592FC(a2, v21, *(a1 + 32), v22);
  if (*(a3 + 207) < 0)
  {
    operator delete(*(a3 + 184));
  }

  *(a3 + 184) = *v22;
  *(a3 + 200) = v23;
  HIBYTE(v23) = 0;
  LOBYTE(v22[0]) = 0;
  if (v25 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }

  *(a3 + 8) = *(a1 + 20);
}

double sub_93F4DC@<D0>(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_940794(a2, a3, *(a1 + 24), &v72);
  v8 = v72;
  v9 = v73;
  if (v72 == v73)
  {
    *(a4 + 8) = 0x27FFFFFFFLL;
    *a4 = &off_266D9B8;
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = -1;
    if (v8)
    {
      goto LABEL_54;
    }

    return result;
  }

  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v68 = 0u;
  v69 = 0u;
  memset(v67, 0, sizeof(v67));
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  __p = 0;
  v47 = 0uLL;
  sub_9B0188(v75, 1, v10, v11, v67, &__p);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  v12 = v8;
  do
  {
    v13 = v12 + 1;
    sub_9B2B2C(v75, v12, v12 + 1);
    v12 = v13 + 1;
  }

  while (v13 + 1 != v9);
  v14 = sub_3AFB1C(*(a1 + 24));
  v15 = sub_3AFC64(*(a1 + 24));
  v16 = sub_3AFEE8(*(a1 + 24));
  sub_A28C5C(v66, v14, v15, v16);
  v45 = a3;
  sub_501CE8(&v65, v66);
  sub_A23E54(&v65, v67);
  *(a4 + 8) = 0x27FFFFFFFLL;
  *a4 = &off_266D9B8;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 208) = -1;
  if ((a4 + 16) != (&v68 + 8))
  {
    sub_941BB4((a4 + 16), *(&v68 + 1), v69, 0x66FD0EB66FD0EB67 * ((v69 - *(&v68 + 1)) >> 3));
  }

  if ((a4 + 40) != v70)
  {
    sub_942718((a4 + 40), *&v70[0], *(&v70[0] + 1), 0x4EC4EC4EC4EC4EC5 * ((*(&v70[0] + 1) - *&v70[0]) >> 4));
  }

  *v62 = 0u;
  *v63 = 0u;
  v64 = 1065353216;
  v17 = *a2;
  v18 = a2[1];
  if (v17 == v18)
  {
    goto LABEL_49;
  }

  while (2)
  {
    v19 = sub_3AFC64(*(a1 + 24));
    v20 = *v17;
    v21 = v17[3];
    v22 = sub_3A231C(v19, v17[1] | (v20 << 32), 0);
    v23 = &v22[-*v22];
    if (*v23 < 5u)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(v23 + 2);
      if (*(v23 + 2))
      {
        v24 += &v22[*&v22[v24]];
      }
    }

    v25 = (v24 + 4 * v20 + 4 + *(v24 + 4 * v20 + 4));
    v26 = (v25 - *v25);
    if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
    {
      v28 = *(v25 + v27);
    }

    else
    {
      v28 = -1;
    }

    v61 = *&v22[24 * v28 + 4 + 24 * v21 + *(v23 + 3) + *&v22[*(v23 + 3)]];
    if (sub_3A8760(v62, &v61))
    {
      goto LABEL_13;
    }

    sub_944524(v62, &v61, &v61);
    sub_941220(a1, v17, &__p);
    v29 = *(a4 + 72);
    if (v29 >= *(a4 + 80))
    {
      v35 = sub_942AA0((a4 + 64), &__p);
      v36 = SHIBYTE(v58);
      *(a4 + 72) = v35;
      if (v36 < 0)
      {
        operator delete(v57);
        v34 = v55[0];
        if (!v55[0])
        {
          goto LABEL_42;
        }
      }

      else
      {
        v34 = v55[0];
        if (!v55[0])
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      *v29 = __p;
      v30 = v47;
      *(v29 + 24) = v48;
      *(v29 + 8) = v30;
      v47 = 0uLL;
      v31 = v50;
      *(v29 + 32) = v49;
      *(v29 + 48) = v31;
      v48 = 0;
      v49 = 0uLL;
      v50 = 0;
      v32 = v51;
      *(v29 + 64) = v52;
      *(v29 + 56) = v32;
      *(v29 + 72) = 0;
      *(v29 + 80) = 0;
      *(v29 + 88) = 0;
      *(v29 + 96) = 0;
      *(v29 + 72) = *v53;
      *(v29 + 88) = v54;
      v53[0] = 0;
      v53[1] = 0;
      *(v29 + 104) = 0;
      *(v29 + 112) = 0;
      *(v29 + 96) = *v55;
      *(v29 + 112) = v56;
      v54 = 0;
      v55[0] = 0;
      v55[1] = 0;
      v56 = 0;
      v33 = v57;
      *(v29 + 136) = v58;
      *(v29 + 120) = v33;
      v58 = 0;
      v57 = 0uLL;
      LODWORD(v32) = v59;
      *(v29 + 148) = v60;
      *(v29 + 144) = v32;
      *(a4 + 72) = v29 + 152;
      v34 = v55[0];
      if (!v55[0])
      {
        goto LABEL_42;
      }
    }

    v37 = v34;
    if (v55[1] == v34)
    {
      goto LABEL_41;
    }

    v38 = v55[1] - 65;
    do
    {
      if (v38[64] < 0)
      {
        operator delete(*(v38 + 41));
        if ((v38[32] & 0x80000000) == 0)
        {
LABEL_33:
          if (*v38 < 0)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }
      }

      else if ((v38[32] & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(*(v38 + 9));
      if (*v38 < 0)
      {
LABEL_38:
        operator delete(*(v38 - 23));
        v40 = *(v38 - 39);
        if (v40 == -1)
        {
          goto LABEL_30;
        }

LABEL_39:
        (off_266DCB0[v40])(&v74, v38 - 71);
        goto LABEL_30;
      }

LABEL_34:
      v40 = *(v38 - 39);
      if (v40 != -1)
      {
        goto LABEL_39;
      }

LABEL_30:
      *(v38 - 39) = -1;
      v39 = v38 - 79;
      v38 -= 144;
    }

    while (v39 != v34);
    v37 = v55[0];
LABEL_41:
    v55[1] = v34;
    operator delete(v37);
LABEL_42:
    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
      if (SHIBYTE(v48) < 0)
      {
        goto LABEL_46;
      }
    }

    else if (SHIBYTE(v48) < 0)
    {
LABEL_46:
      operator delete(v47);
    }

LABEL_13:
    v17 += 30;
    if (v17 != v18)
    {
      continue;
    }

    break;
  }

LABEL_49:
  *(a4 + 208) = sub_941658(a1, v45);
  v41 = v63[0];
  if (v63[0])
  {
    do
    {
      v42 = *v41;
      operator delete(v41);
      v41 = v42;
    }

    while (v42);
  }

  v43 = v62[0];
  v62[0] = 0;
  if (v43)
  {
    operator delete(v43);
  }

  sub_942D1C(v75);
  sub_942F5C(v67);
  v8 = v72;
  if (v72)
  {
LABEL_54:
    operator delete(v8);
  }

  return result;
}

void sub_93FA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_11BD8(&a31);
  sub_939910(v41);
  sub_942D1C(&STACK[0x230]);
  v43 = STACK[0x210];
  sub_942F5C(&a41);
  if (v43)
  {
    operator delete(v43);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_93FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  v101 = 0uLL;
  v102 = 0;
  v14 = sub_3AFB1C(*(v8 + 24));
  v15 = *(v14 + 8);
  v96 = *v14;
  v97 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memcpy(v98, (v14 + 16), sizeof(v98));
  v16 = *(v14 + 3880);
  v99 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v100 = *(v14 + 3888);
  v17 = *(v10 + 8);
  if (v17 > 2)
  {
    if (v17 == 4)
    {
      v27 = sub_503310(&v96, *v10, 0, "access point");
      v28 = (v27 - *v27);
      if (*v28 >= 0x11u)
      {
        v29 = v28[8];
        if (v29)
        {
          v30 = (v27 + v29 + *(v27 + v29));
          v31 = *v30;
          if (v31)
          {
            v32 = 8 * v31;
            v33 = v30 + 1;
            do
            {
              if (v100 != 1 || sub_2D5204(v98[482]))
              {
                operator new();
              }

              v33 += 2;
              v32 -= 8;
            }

            while (v32);
          }
        }
      }
    }

    else if (v17 == 3)
    {
      sub_9419FC(&v96, *v10, &v93);
      if (v101)
      {
        *(&v101 + 1) = v101;
        operator delete(v101);
      }

      v101 = v93;
      v102 = v94;
    }
  }

  else
  {
    if (v17 == 1)
    {
      v23 = sub_502FF8(&v96, *v10, 0, "stop");
      v19 = *(v23 + *(v23 - *v23 + 12));
      if (v19 > 0xFFFFFFFEFFFFFFFFLL || v19 == 0)
      {
        goto LABEL_46;
      }

      v25 = v101;
      if (v102 == v101)
      {
        if (v102)
        {
          *(&v101 + 1) = v101;
          operator delete(v101);
          v101 = 0uLL;
          v102 = 0;
        }

        operator new();
      }

      v26 = *(&v101 + 1);
      if (*(&v101 + 1) == v101)
      {
        **(&v101 + 1) = v19;
        *(&v101 + 1) = v26 - v25 + v26 + 8;
      }

      else
      {
        *v101 = v19;
        *(&v101 + 1) = v25 + 8;
      }
    }

    else
    {
      if (v17 != 2)
      {
        goto LABEL_46;
      }

      v18 = sub_93D2F4(&v96, *v10, 0, "hall");
      v19 = *(v18 + *(v18 - *v18 + 10));
      if (v19 > 0xFFFFFFFEFFFFFFFFLL || v19 == 0)
      {
        goto LABEL_46;
      }

      v21 = v101;
      if (v102 == v101)
      {
        if (v102)
        {
          *(&v101 + 1) = v101;
          operator delete(v101);
          v101 = 0uLL;
          v102 = 0;
        }

        operator new();
      }

      v22 = *(&v101 + 1);
      if (*(&v101 + 1) == v101)
      {
        **(&v101 + 1) = v19;
        *(&v101 + 1) = v22 - v21 + v22 + 8;
      }

      else
      {
        *v101 = v19;
        *(&v101 + 1) = v21 + 8;
      }
    }

    sub_9419FC(&v96, v19, &v93);
    sub_2CE7AC(&v101, *(&v101 + 1), v93, *(&v93 + 1), (*(&v93 + 1) - v93) >> 3);
    if (v93)
    {
      *(&v93 + 1) = v93;
      operator delete(v93);
    }
  }

LABEL_46:
  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0;
  v84 = *(&v101 + 1);
  for (i = v101; i != v84; ++i)
  {
    v36 = *i;
    *&v93 = -1;
    *(&v93 + 1) = -1;
    LODWORD(v94) = 0x7FFFFFFF;
    memset(__p, 0, sizeof(__p));
    *&v103 = v36;
    DWORD2(v103) = 3;
    sub_9483C8(&v103, *(v11 + 32), *(v11 + 24), *(v11 + 8), v89);
    v37 = __p[0];
    if (!__p[0])
    {
      goto LABEL_66;
    }

    v38 = __p[0];
    if (__p[1] == __p[0])
    {
      goto LABEL_65;
    }

    v39 = __p[1] - 65;
    do
    {
      if (v39[64] < 0)
      {
        operator delete(*(v39 + 41));
        if ((v39[32] & 0x80000000) == 0)
        {
LABEL_57:
          if (*v39 < 0)
          {
            goto LABEL_62;
          }

          goto LABEL_58;
        }
      }

      else if ((v39[32] & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      operator delete(*(v39 + 9));
      if (*v39 < 0)
      {
LABEL_62:
        operator delete(*(v39 - 23));
        v41 = *(v39 - 39);
        if (v41 == -1)
        {
          goto LABEL_54;
        }

LABEL_63:
        (off_266DCB0[v41])(&v87, v39 - 71);
        goto LABEL_54;
      }

LABEL_58:
      v41 = *(v39 - 39);
      if (v41 != -1)
      {
        goto LABEL_63;
      }

LABEL_54:
      *(v39 - 39) = -1;
      v40 = v39 - 79;
      v39 -= 144;
    }

    while (v40 != v37);
    v38 = __p[0];
LABEL_65:
    __p[1] = v37;
    operator delete(v38);
LABEL_66:
    *__p = *v89;
    __p[2] = v90;
    v42 = sub_93D480(&v96, v36, 0, "station");
    v43 = (v42 - *v42);
    if (*v43 >= 5u && (v44 = v43[2]) != 0)
    {
      v45 = *(v42 + v44);
    }

    else
    {
      v45 = 0;
    }

    v46 = sub_2C939C(&v96, 1u, 0);
    if (!v46 || (v47 = &v46[-*v46], *v47 < 0xDu) || (v48 = *(v47 + 6)) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v83 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v49 = &v46[v48 + *&v46[v48]];
    v50 = &v49[-*v49];
    if (*v50 >= 0xBu)
    {
      v51 = *(v50 + 5);
      if (v51)
      {
        if (v49[v51])
        {
          nullsub_1();
          v45 = v52;
        }
      }
    }

    *&v93 = v45;
    v53 = sub_93D480(&v96, v36, 0, "station");
    v54 = v53 + *(v53 - *v53 + 6);
    v55 = *v54;
    LODWORD(v54) = *(v54 + 4);
    if (v54 >= 0xFFFFFFFE)
    {
      v54 = 4294967294;
    }

    else
    {
      v54 = v54;
    }

    *(&v93 + 1) = v55 | (v54 << 32);
    LODWORD(v94) = 0x7FFFFFFF;
    nullsub_1();
    v56 = sub_93D480(&v96, v36, 0, "station");
    v57 = (v56 - *v56);
    if (*v57 >= 9u && (v58 = v57[4]) != 0)
    {
      v59 = (v56 + v58 + *(v56 + v58));
      v103 = 0uLL;
      v104 = 0;
      sub_943AEC(&v103, *v59);
      v106 = (v59 + 1);
      v105 = &v59[*v59 + 1];
      sub_943E24(&v106, &v105, &v103, sub_509164);
      v60 = v103;
      v61 = v104;
    }

    else
    {
      v61 = 0;
      v60 = 0uLL;
    }

    *v85 = v60;
    v86 = v61;
    sub_9D6590(v85, *(v11 + 32) + 968, &v87);
    sub_9D45F0(&v87, v89);
    if (SHIBYTE(__p[5]) < 0)
    {
      operator delete(__p[3]);
    }

    *&__p[3] = *v89;
    __p[5] = v90;
    HIBYTE(v90) = 0;
    LOBYTE(v89[0]) = 0;
    if (v92 < 0)
    {
      operator delete(v91);
      if (SHIBYTE(v90) < 0)
      {
        operator delete(v89[0]);
        v62 = v87;
        if (!v87)
        {
          goto LABEL_98;
        }

LABEL_89:
        v63 = v88;
        v64 = v62;
        if (v88 == v62)
        {
LABEL_97:
          v88 = v62;
          operator delete(v64);
          goto LABEL_98;
        }

        while (1)
        {
          if (*(v63 - 1) < 0)
          {
            operator delete(*(v63 - 3));
            v65 = v63 - 7;
            if ((*(v63 - 33) & 0x80000000) == 0)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v65 = v63 - 7;
            if ((*(v63 - 33) & 0x80000000) == 0)
            {
LABEL_92:
              v63 = v65;
              if (v65 == v62)
              {
                goto LABEL_96;
              }

              continue;
            }
          }

          operator delete(*v65);
          v63 = v65;
          if (v65 == v62)
          {
LABEL_96:
            v64 = v87;
            goto LABEL_97;
          }
        }
      }
    }

    v62 = v87;
    if (v87)
    {
      goto LABEL_89;
    }

LABEL_98:
    v66 = v85[0];
    if (v85[0])
    {
      v67 = v85[1];
      v68 = v85[0];
      if (v85[1] != v85[0])
      {
        do
        {
          v69 = *(v67 - 3);
          if (v69)
          {
            v70 = *(v67 - 2);
            v71 = *(v67 - 3);
            if (v70 != v69)
            {
              do
              {
                if (*(v70 - 1) < 0)
                {
                  operator delete(*(v70 - 24));
                }

                v70 -= 32;
              }

              while (v70 != v69);
              v71 = *(v67 - 3);
            }

            *(v67 - 2) = v69;
            operator delete(v71);
          }

          v72 = (v67 - 64);
          if (*(v67 - 41) < 0)
          {
            operator delete(*v72);
          }

          v67 -= 64;
        }

        while (v72 != v66);
        v68 = v85[0];
      }

      v85[1] = v66;
      operator delete(v68);
    }

    v73 = v13[1];
    if (v73 >= v13[2])
    {
      v13[1] = sub_944130(v13, &v93);
      if ((SHIBYTE(__p[5]) & 0x80000000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_117;
    }

    v74 = v93;
    *(v73 + 16) = v94;
    *v73 = v74;
    sub_93636C((v73 + 24), __p);
    if (SHIBYTE(__p[5]) < 0)
    {
      sub_325C((v73 + 48), __p[3], __p[4]);
      v13[1] = v73 + 72;
      if ((SHIBYTE(__p[5]) & 0x80000000) == 0)
      {
        goto LABEL_120;
      }

LABEL_117:
      operator delete(__p[3]);
      v76 = __p[0];
      if (__p[0])
      {
        goto LABEL_121;
      }

      continue;
    }

    v75 = *&__p[3];
    *(v73 + 64) = __p[5];
    *(v73 + 48) = v75;
    v13[1] = v73 + 72;
    if (SHIBYTE(__p[5]) < 0)
    {
      goto LABEL_117;
    }

LABEL_120:
    v76 = __p[0];
    if (__p[0])
    {
LABEL_121:
      v35 = v76;
      if (__p[1] != v76)
      {
        v77 = __p[1] - 65;
        while (1)
        {
          if (v77[64] < 0)
          {
            operator delete(*(v77 + 41));
            if ((v77[32] & 0x80000000) == 0)
            {
LABEL_126:
              if ((*v77 & 0x80000000) == 0)
              {
                goto LABEL_127;
              }

              goto LABEL_131;
            }
          }

          else if ((v77[32] & 0x80000000) == 0)
          {
            goto LABEL_126;
          }

          operator delete(*(v77 + 9));
          if ((*v77 & 0x80000000) == 0)
          {
LABEL_127:
            v79 = *(v77 - 39);
            if (v79 == -1)
            {
              goto LABEL_123;
            }

LABEL_132:
            (off_266DCB0[v79])(v89, v77 - 71);
            goto LABEL_123;
          }

LABEL_131:
          operator delete(*(v77 - 23));
          v79 = *(v77 - 39);
          if (v79 != -1)
          {
            goto LABEL_132;
          }

LABEL_123:
          *(v77 - 39) = -1;
          v78 = v77 - 79;
          v77 -= 144;
          if (v78 == v76)
          {
            v35 = __p[0];
            break;
          }
        }
      }

      __p[1] = v76;
      operator delete(v35);
    }
  }

  v80 = v99;
  if (v99 && !atomic_fetch_add(&v99->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v80->__on_zero_shared)(v80);
    std::__shared_weak_count::__release_weak(v80);
  }

  v81 = v97;
  if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v81->__on_zero_shared)(v81);
    std::__shared_weak_count::__release_weak(v81);
  }

  if (v101)
  {
    *(&v101 + 1) = v101;
    operator delete(v101);
  }
}

void sub_940674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  operator delete(v35);
  sub_3A0ED4(va);
  v38 = *(v36 - 176);
  if (v38)
  {
    *(v36 - 168) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

void sub_940794(unsigned int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v78 = sub_3AFB1C(a4);
  v77 = sub_3AFC64(a4);
  v8 = sub_93C858(a3);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if (*v8)
  {
    v9 = v8[1] == -1;
  }

  else
  {
    v9 = 1;
  }

  v74 = v8;
  if (!v9)
  {
    goto LABEL_9;
  }

  sub_93C810(a3);
  if (v10 == 5)
  {
    operator new();
  }

  if (*(a3 + 584) || (v15 = *(a3 + 24), v73 = *(a3 + 32), v15 == v73))
  {
LABEL_9:
    v11 = 0;
    v13 = *a2;
    v12 = a2[1];
    if (*a2 != v12)
    {
      goto LABEL_40;
    }

    goto LABEL_10;
  }

  do
  {
    v16 = *v15;
    v17 = sub_502FF8(v78, *v15, 0, "stop");
    v18 = *(v17 + *(v17 - *v17 + 12));
    v19 = v18 > 0xFFFFFFFEFFFFFFFFLL || v18 == 0;
    v76 = v15;
    if (v19)
    {
      v20 = sub_502FF8(v78, v16, 0, "stop");
      v21 = (v20 - *v20);
      if (*v21 >= 0xFu)
      {
        v22 = v21[7];
        if (v22)
        {
          v23 = (v20 + v22 + *(v20 + v22));
          v24 = *v23;
          if (v24)
          {
            v25 = 8 * v24;
            v26 = v23 + 1;
            do
            {
              if (*(v78 + 3888) != 1 || sub_2D5204(*(v78 + 3872)))
              {
                operator new();
              }

              v26 += 2;
              v25 -= 8;
            }

            while (v25);
          }
        }
      }
    }

    else
    {
      v27 = sub_93D480(v78, v18, 0, "station");
      v28 = (v27 - *v27);
      if (*v28 >= 0xFu)
      {
        v29 = v28[7];
        if (v29)
        {
          v30 = (v27 + v29 + *(v27 + v29));
          v31 = *v30;
          if (v31)
          {
            v32 = 8 * v31;
            v33 = v30 + 1;
            do
            {
              if (*(v78 + 3888) != 1 || sub_2D5204(*(v78 + 3872)))
              {
                operator new();
              }

              v33 += 2;
              v32 -= 8;
            }

            while (v32);
          }
        }
      }
    }

    v15 = v76 + 1;
  }

  while (v76 + 1 != v73);
  v11 = *a5;
  v13 = *a2;
  v12 = a2[1];
  if (*a2 == v12)
  {
LABEL_10:
    v14 = a5[1];
    goto LABEL_61;
  }

  do
  {
    while (1)
    {
LABEL_40:
      v34 = *v13;
      v35 = v13[3];
      v36 = v13[1] | (v34 << 32);
      v37 = sub_3A25A8(v77, v36, 0, "trip");
      v38 = *(v37 + *(v37 - *v37 + 6));
      v39 = sub_3A231C(v77, v36, 0);
      v40 = &v39[-*v39];
      if (*v40 < 5u)
      {
        v41 = 0;
      }

      else
      {
        v41 = *(v40 + 2);
        if (*(v40 + 2))
        {
          v41 += &v39[*&v39[v41]];
        }
      }

      v42 = (v41 + 4 * v34 + 4 + *(v41 + 4 * v34 + 4));
      v43 = (v42 - *v42);
      if (*v43 >= 0xDu && (v44 = v43[6]) != 0)
      {
        v45 = *(v42 + v44);
      }

      else
      {
        v45 = -1;
      }

      v46 = sub_502FF8(v78, *&v39[24 * v45 + 4 + 24 * v35 + *(v40 + 3) + *&v39[*(v40 + 3)]], 0, "stop");
      v47 = *(v46 + *(v46 - *v46 + 12));
      v49 = a5[1];
      v48 = a5[2];
      if (v49 >= v48)
      {
        break;
      }

      *v49 = v38;
      *(v49 + 1) = v47;
      v14 = v49 + 16;
      a5[1] = v49 + 16;
      v13 += 30;
      if (v13 == v12)
      {
        goto LABEL_61;
      }
    }

    v50 = v49 - v11;
    v51 = (v49 - v11) >> 4;
    v52 = v51 + 1;
    if ((v51 + 1) >> 60)
    {
      *a5 = v11;
      sub_1794();
    }

    v53 = v48 - v11;
    if (v53 >> 3 > v52)
    {
      v52 = v53 >> 3;
    }

    if (v53 >= 0x7FFFFFFFFFFFFFF0)
    {
      v54 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v54 = v52;
    }

    if (v54)
    {
      if (!(v54 >> 60))
      {
        operator new();
      }

      *a5 = v11;
      sub_1808();
    }

    v55 = (16 * v51);
    *v55 = v38;
    v55[1] = v47;
    v14 = (16 * v51 + 16);
    memcpy(0, v11, v50);
    a5[1] = v14;
    a5[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }

    v11 = 0;
    a5[1] = v14;
    v13 += 30;
  }

  while (v13 != v12);
LABEL_61:
  *a5 = v11;
  if (v11 == v14)
  {
    if (*v74)
    {
      if (v74[1] != -1)
      {
        v56 = v74[3];
        if (v56 != -1)
        {
          v57 = *v74;
          v58 = sub_3A25A8(v77, *v74, 0, "trip");
          v59 = *(v58 + *(v58 - *v58 + 6));
          v60 = sub_3A231C(v77, v57, 0);
          v61 = &v60[-*v60];
          if (*v61 < 5u)
          {
            v62 = 0;
          }

          else
          {
            v62 = *(v61 + 2);
            if (*(v61 + 2))
            {
              v62 += &v60[*&v60[v62]];
            }
          }

          v63 = (v62 + 4 * HIDWORD(v57) + 4 + *(v62 + 4 * HIDWORD(v57) + 4));
          v64 = (v63 - *v63);
          if (*v64 >= 0xDu && (v65 = v64[6]) != 0)
          {
            v66 = *(v63 + v65);
          }

          else
          {
            v66 = -1;
          }

          v67 = sub_502FF8(v78, *&v60[24 * (v66 + v56) + 4 + *(v61 + 3) + *&v60[*(v61 + 3)]], 0, "stop");
          v68 = *(v67 + *(v67 - *v67 + 12));
          v69 = a5[2];
          if (v14 >= v69)
          {
            v70 = v69 - v14;
            v71 = v70 >> 3;
            if ((v70 >> 3) <= 1)
            {
              v71 = 1;
            }

            if (v70 >= 0x7FFFFFFFFFFFFFF0)
            {
              v72 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v72 = v71;
            }

            if (!(v72 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          *v14 = v59;
          *(v14 + 1) = v68;
          a5[1] = v14 + 16;
        }
      }
    }
  }
}

void sub_9411AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_941220@<X0>(unsigned __int8 *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = -1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = -1;
  *(a3 + 64) = 0x7FFFFFFF;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0x7FFFFFFF;
  *(a3 + 148) = 0;
  v6 = sub_3AFB1C(*(a1 + 3));
  v7 = sub_3AFC64(*(a1 + 3));
  v8 = *a2;
  v9 = a2[3];
  v10 = sub_3A231C(v7, a2[1] | (v8 << 32), 0);
  v11 = &v10[-*v10];
  if (*v11 < 5u)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 2);
    if (*(v11 + 2))
    {
      v12 += &v10[*&v10[v12]];
    }
  }

  v13 = (v12 + 4 * v8 + 4 + *(v12 + 4 * v8 + 4));
  v14 = (v13 - *v13);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = *(v13 + v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = *&v10[24 * v16 + 4 + 24 * v9 + *(v11 + 3) + *&v10[*(v11 + 3)]];
  v18 = sub_502FF8(v6, v17, 0, "stop");
  v19 = (v18 - *v18);
  if (*v19 >= 5u && (v20 = v19[2]) != 0)
  {
    v21 = *(v18 + v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_2C939C(v6, 1u, 0);
  if (!v22 || (v23 = &v22[-*v22], *v23 < 0xDu) || (v24 = *(v23 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v38 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v25 = &v22[v24 + *&v22[v24]];
  v26 = &v25[-*v25];
  if (*v26 >= 0xBu)
  {
    v27 = *(v26 + 5);
    if (v27)
    {
      if (v25[v27])
      {
        nullsub_1();
        v21 = v28;
      }
    }
  }

  *a3 = v21;
  v29 = sub_502FF8(v6, v17, 0, "stop");
  v30 = (v29 - *v29);
  if (*v30 >= 0x2Bu && (v31 = v30[21]) != 0)
  {
    v32 = (v29 + v31);
    v33 = *v32;
    v34 = *(v32 + v33);
    if (v34 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v40) = *(v32 + v33);
    if (v34)
    {
      memcpy(&__dst, v32 + v33 + 4, v34);
      *(&__dst + v34) = 0;
      if ((*(a3 + 55) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    *(&__dst + v34) = 0;
    if (*(a3 + 55) < 0)
    {
LABEL_27:
      operator delete(*(a3 + 32));
    }
  }

  else
  {
    HIBYTE(v40) = 0;
    LOBYTE(__dst) = 0;
    if (*(a3 + 55) < 0)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  *(a3 + 32) = __dst;
  *(a3 + 48) = v40;
  result = sub_95A454(a2 + 12, v6, *a1);
  *(a3 + 144) = v36;
  return result;
}

uint64_t sub_9415C0(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 96))
  {
    sub_936658((a1 + 96));
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_941658(uint64_t a1, uint64_t a2)
{
  v3 = sub_93C810(a2);
  v5 = v4;
  v32 = v3;
  v33 = v4;
  v6 = sub_3AFB1C(*(a1 + 24));
  v7 = sub_3AFC64(*(a1 + 24));
  LODWORD(v8) = 0;
  v9 = 0xFFFFFFFF00000000;
  if (v5 <= 2)
  {
    switch(v5)
    {
      case 0:
        return -1;
      case 1:
        v10 = sub_502FF8(v6, v3, 0, "stop");
        break;
      case 2:
        v10 = sub_93D2F4(v6, v3, 0, "hall");
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v5 <= 4)
  {
    if (v5 != 3)
    {
      v10 = sub_503310(v6, v3, 0, "access point");
      v11 = *(v10 - *v10 + 22);
LABEL_18:
      v8 = *(v10 + v11);
      v9 = v8 & 0xFFFFFFFF00000000;
      goto LABEL_19;
    }

    v10 = sub_93D480(v6, v3, 0, "station");
LABEL_17:
    v11 = *(v10 - *v10 + 18);
    goto LABEL_18;
  }

  if (v5 == 5)
  {
    v14 = &v32;
  }

  else
  {
    if (v5 != 6)
    {
      goto LABEL_19;
    }

    v12 = v7;
    v13 = sub_3A25A8(v7, v3, 0, "trip");
    v30 = *(v13 + *(v13 - *v13 + 6));
    v14 = &v30;
    v7 = v12;
  }

  sub_941908(v7, v14, __p);
  v8 = *__p[0];
  v9 = *__p[0] & 0xFFFFFFFF00000000;
  __p[1] = __p[0];
  operator delete(__p[0]);
LABEL_19:
  v16 = sub_3AFEE8(*(a1 + 24));
  v17 = sub_943960(v16, v8 | v9, 0, "market");
  v18 = (v17 - *v17);
  if (*v18 >= 5u && (v19 = v18[2]) != 0)
  {
    v15 = *(v17 + v19);
    v20 = sub_2C939C(v16, 1u, 0);
    if (!v20)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v15 = 0;
    v20 = sub_2C939C(v16, 1u, 0);
    if (!v20)
    {
      goto LABEL_31;
    }
  }

  v21 = &v20[-*v20];
  if (*v21 < 0xDu || (v22 = *(v21 + 6)) == 0)
  {
LABEL_31:
    exception = __cxa_allocate_exception(0x40uLL);
    v29 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v23 = &v20[v22 + *&v20[v22]];
  v24 = &v23[-*v23];
  if (*v24 >= 0xBu)
  {
    v25 = *(v24 + 5);
    if (v25)
    {
      if (v23[v25])
      {
        nullsub_1();
        return v26;
      }
    }
  }

  return v15;
}

void sub_941908(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_92FC60(a1, *a2, 0, "line");
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v9 = *v8;
    if (v9)
    {
      v10 = 8 * v9;
      v11 = (v8 + 1);
      do
      {
        if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
        {
          v12 = *v11;
          sub_2512DC(a3, &v12);
        }

        ++v11;
        v10 -= 8;
      }

      while (v10);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_9419E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_9419FC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_93D480(a1, a2, 0, "station");
  v6 = (v5 - *v5);
  if (*v6 >= 0x2Fu && (v7 = v6[23]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v9 = *v8;
    if (v9)
    {
      v10 = 8 * v9;
      v11 = (v8 + 1);
      do
      {
        if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
        {
          v12 = *v11;
          sub_2512DC(a3, &v12);
        }

        ++v11;
        v10 -= 8;
      }

      while (v10);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_941AD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_941AEC(void ***a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              if (*(v6 - 1) < 0)
              {
                operator delete(*(v6 - 3));
              }

              v6 -= 4;
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v8 = v3 - 8;
        if (*(v3 - 41) < 0)
        {
          operator delete(*v8);
        }

        v3 -= 8;
      }

      while (v8 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_941BB4(void **result, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x66FD0EB66FD0EB67 * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_9357A0(v10 - 696);
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

    if (a4 <= 0x5E293205E29320)
    {
      v12 = 0x66FD0EB66FD0EB67 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2F149902F14990)
      {
        v14 = 0x5E293205E29320;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x5E293205E29320)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0x66FD0EB66FD0EB67 * (&v15[-v8] >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_941E54(v8, v5);
        v5 += 696;
        v8 += 696;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 696;
      result = sub_9357A0(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        result = sub_941E54(v8, v5);
        v5 += 696;
        v8 += 696;
        v16 -= 696;
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
        result = sub_934F60(&v15[v19], &v17[v19]);
        v19 += 696;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_941E28(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 696;
    v7 = -v4;
    do
    {
      v6 = sub_9357A0(v6) - 696;
      v7 += 696;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_941E54(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  else
  {
    sub_942014(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    v4 = *(a2 + 47);
    if (*(a1 + 47) < 0)
    {
      if (v4 >= 0)
      {
        v7 = (a2 + 24);
      }

      else
      {
        v7 = *(a2 + 24);
      }

      if (v4 >= 0)
      {
        v8 = *(a2 + 47);
      }

      else
      {
        v8 = *(a2 + 32);
      }

      sub_13B38((a1 + 24), v7, v8);
    }

    else if ((*(a2 + 47) & 0x80) != 0)
    {
      sub_13A68((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    v9 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v9;
    sub_31F64((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  }

  *(a1 + 96) = *(a2 + 96);
  sub_5410A0(a1 + 104, a2 + 104);
  sub_5410A0(a1 + 216, a2 + 216);
  sub_5410A0(a1 + 328, a2 + 328);
  sub_5410A0(a1 + 440, a2 + 440);
  v10 = *(a2 + 560);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = v10;
  if (a1 == a2)
  {
    *(a1 + 640) = *(a2 + 640);
  }

  else
  {
    sub_384B90((a1 + 568), *(a2 + 568), *(a2 + 576), *(a2 + 576) - *(a2 + 568));
    sub_384B90((a1 + 592), *(a2 + 592), *(a2 + 600), *(a2 + 600) - *(a2 + 592));
    sub_384B90((a1 + 616), *(a2 + 616), *(a2 + 624), *(a2 + 624) - *(a2 + 616));
    *(a1 + 640) = *(a2 + 640);
    sub_9423BC((a1 + 648), *(a2 + 648), *(a2 + 656), (*(a2 + 656) - *(a2 + 648)) >> 3);
    sub_3865E0((a1 + 672), *(a2 + 672), *(a2 + 680), (*(a2 + 680) - *(a2 + 672)) >> 4);
  }

  return a1;
}

void sub_942014(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3) < a4)
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_22:
      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
LABEL_23:
      if (a4 <= 0x492492492492492)
      {
        v18 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
        v19 = 2 * v18;
        if (2 * v18 <= a4)
        {
          v19 = a4;
        }

        if (v18 >= 0x249249249249249)
        {
          v20 = 0x492492492492492;
        }

        else
        {
          v20 = v19;
        }

        if (v20 <= 0x492492492492492)
        {
          operator new();
        }
      }

      sub_1794();
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 24));
        v12 = (v10 - 56);
        if (*(v10 - 33) < 0)
        {
LABEL_10:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = (v10 - 56);
        if (*(v10 - 33) < 0)
        {
          goto LABEL_10;
        }
      }

      v10 = v12;
      if (v12 == v8)
      {
        v11 = *a1;
        goto LABEL_22;
      }
    }
  }

  v13 = a1[1] - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v13 >> 3) < a4)
  {
    sub_942268(a2, a2 + v13, v8);
    a1[1] = sub_93555C(a1, (a2 + v13), a3, a1[1]);
    return;
  }

  sub_942268(a2, a3, v8);
  v15 = v14;
  v16 = a1[1];
  if (v16 != v14)
  {
    do
    {
      if (*(v16 - 1) < 0)
      {
        operator delete(*(v16 - 24));
        v17 = (v16 - 56);
        if (*(v16 - 33) < 0)
        {
LABEL_20:
          operator delete(*v17);
        }
      }

      else
      {
        v17 = (v16 - 56);
        if (*(v16 - 33) < 0)
        {
          goto LABEL_20;
        }
      }

      v16 = v17;
    }

    while (v17 != v15);
  }

  a1[1] = v15;
}

uint64_t sub_942268(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (result != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = (v4 + v6);
      if (v4 == a3)
      {
        *(v7 + 24) = *(v8 + 24);
      }

      else
      {
        v9 = *(v8 + 23);
        if (*(v7 + 23) < 0)
        {
          if (v9 >= 0)
          {
            v11 = (v4 + v6);
          }

          else
          {
            v11 = *(v4 + v6);
          }

          if (v9 >= 0)
          {
            v12 = *(v8 + 23);
          }

          else
          {
            v12 = *(v4 + v6 + 8);
          }

          sub_13B38(v7, v11, v12);
        }

        else if ((*(v8 + 23) & 0x80) != 0)
        {
          sub_13A68(v7, *(v4 + v6), *(v4 + v6 + 8));
        }

        else
        {
          v10 = *v8;
          *(v7 + 16) = *(v8 + 2);
          *v7 = v10;
        }

        v13 = a3 + v6;
        *(a3 + v6 + 24) = *(v4 + v6 + 24);
        v14 = (v4 + v6 + 32);
        v15 = *(v4 + v6 + 55);
        if (*(a3 + v6 + 55) < 0)
        {
          if (v15 >= 0)
          {
            v17 = (v4 + v6 + 32);
          }

          else
          {
            v17 = *v14;
          }

          if (v15 >= 0)
          {
            v18 = *(v4 + v6 + 55);
          }

          else
          {
            v18 = *(v4 + v6 + 40);
          }

          sub_13B38((v13 + 32), v17, v18);
        }

        else if ((*(v4 + v6 + 55) & 0x80) != 0)
        {
          sub_13A68((v13 + 32), *v14, *(v4 + v6 + 40));
        }

        else
        {
          v16 = *v14;
          *(v13 + 48) = *(v4 + v6 + 48);
          *(v13 + 32) = v16;
        }
      }

      v6 += 56;
    }

    while (v4 + v6 != a2);
    return a2;
  }

  return result;
}

char *sub_9423BC(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (a4 > (v5 - v6) >> 3)
  {
    if (v6)
    {
      a1[1] = v6;
      v8 = a4;
      operator delete(v6);
      a4 = v8;
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v5 >> 2;
      if (v5 >> 2 <= a4)
      {
        v9 = a4;
      }

      v33 = v5 >= 0x7FFFFFFFFFFFFFF8;
      v10 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v33)
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = a1[1];
  if (a4 <= (v11 - v6) >> 3)
  {
    if (a2 != a3)
    {
      v26 = a3 - a2 - 8;
      if (v26 >= 0x78)
      {
        v45 = v26 & 0xFFFFFFFFFFFFFFF8 | 4;
        v46 = &v6[v45];
        v47 = &a2[v45];
        v48 = (v26 & 0xFFFFFFFFFFFFFFF8) + 8;
        v50 = v6 + 4 < &a2[v48] && a2 + 4 < &v6[v48];
        if (v46 <= a2 || v6 >= v47)
        {
          if (v50)
          {
            v27 = a2;
          }

          else
          {
            v52 = (v26 >> 3) + 1;
            v53 = 8 * (v52 & 0x3FFFFFFFFFFFFFF8);
            result = &v6[v53];
            v27 = &a2[v53];
            v54 = (a2 + 32);
            v55 = v6 + 32;
            v56 = v52 & 0x3FFFFFFFFFFFFFF8;
            do
            {
              v58 = *(v54 - 2);
              v57 = *(v54 - 1);
              v60 = *v54;
              v59 = *(v54 + 1);
              v54 += 8;
              *(v55 - 2) = v58;
              *(v55 - 1) = v57;
              *v55 = v60;
              v55[1] = v59;
              v55 += 4;
              v56 -= 8;
            }

            while (v56);
            if (v52 == (v52 & 0x3FFFFFFFFFFFFFF8))
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v27 = a2;
        }
      }

      else
      {
        v27 = a2;
      }

      do
      {
        v28 = *v27++;
        *result = v28;
        result += 8;
      }

      while (v27 != a3);
    }

LABEL_29:
    a1[1] = result;
    return result;
  }

  v12 = &a2[v11 - v6];
  v13 = v11 - v6;
  if (v11 == v6)
  {
    goto LABEL_16;
  }

  v14 = v13 - 8;
  if ((v13 - 8) < 0x78)
  {
    v15 = a2;
    do
    {
LABEL_15:
      v16 = *v15++;
      *result = v16;
      result += 8;
    }

    while (v15 != v12);
    goto LABEL_16;
  }

  v29 = v14 & 0xFFFFFFFFFFFFFFF8 | 4;
  v30 = &v6[v29];
  v31 = &a2[v29];
  v32 = (v14 & 0xFFFFFFFFFFFFFFF8) + 8;
  v33 = v6 + 4 >= &a2[v32] || a2 + 4 >= &v6[v32];
  v34 = !v33;
  v15 = a2;
  if (v30 > a2 && v6 < v31)
  {
    goto LABEL_15;
  }

  if (v34)
  {
    goto LABEL_15;
  }

  v36 = (v14 >> 3) + 1;
  v37 = 8 * (v36 & 0x3FFFFFFFFFFFFFF8);
  result = &v6[v37];
  v15 = &a2[v37];
  v38 = (a2 + 32);
  v39 = v6 + 32;
  v40 = v36 & 0x3FFFFFFFFFFFFFF8;
  do
  {
    v42 = *(v38 - 2);
    v41 = *(v38 - 1);
    v44 = *v38;
    v43 = *(v38 + 1);
    v38 += 8;
    *(v39 - 2) = v42;
    *(v39 - 1) = v41;
    *v39 = v44;
    v39[1] = v43;
    v39 += 4;
    v40 -= 8;
  }

  while (v40);
  if (v36 != (v36 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v12 == a3)
  {
    a1[1] = v11;
  }

  else
  {
    v17 = &a3[v6] - &a2[v11] - 8;
    if (v17 < 0x18)
    {
      goto LABEL_22;
    }

    if ((v6 - a2) < 0x20)
    {
      goto LABEL_22;
    }

    v18 = (v17 >> 3) + 1;
    v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
    v12 = (v12 + v19);
    v20 = &v11[v19];
    v21 = v11 + 16;
    v22 = &a2[v21 - v6];
    v23 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v24 = *v22;
      *(v21 - 1) = *(v22 - 1);
      *v21 = v24;
      v21 += 32;
      v22 += 32;
      v23 -= 4;
    }

    while (v23);
    v11 = v20;
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_22:
      v20 = v11;
      do
      {
        v25 = *v12++;
        *v20 = v25;
        v20 += 8;
      }

      while (v12 != a3);
    }

    a1[1] = v20;
  }

  return result;
}

void **sub_942718(void **result, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *result) >> 4) < a4)
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
          v10 = sub_935DD4(v10 - 208);
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

    if (a4 <= 0x13B13B13B13B13BLL)
    {
      v12 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x9D89D89D89D89DLL)
      {
        v14 = 0x13B13B13B13B13BLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x13B13B13B13B13BLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0x4EC4EC4EC4EC4EC5 * (&v15[-v8] >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_9429B8(v8, v5);
        v5 += 208;
        v8 += 208;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 208;
      result = sub_935DD4(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        result = sub_9429B8(v8, v5);
        v5 += 208;
        v8 += 208;
        v16 -= 208;
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
        result = sub_935BD4(&v15[v19], &v17[v19]);
        v19 += 208;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_94298C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 208;
    v7 = -v4;
    do
    {
      v6 = sub_935DD4(v6) - 208;
      v7 += 208;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_9429B8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    sub_942014(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    v4 = *(a2 + 47);
    if (*(a1 + 47) < 0)
    {
      if (v4 >= 0)
      {
        v6 = (a2 + 24);
      }

      else
      {
        v6 = *(a2 + 24);
      }

      if (v4 >= 0)
      {
        v7 = *(a2 + 47);
      }

      else
      {
        v7 = *(a2 + 32);
      }

      sub_13B38((a1 + 24), v6, v7);
    }

    else if ((*(a2 + 47) & 0x80) != 0)
    {
      sub_13A68((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    *(a1 + 48) = *(a2 + 48);
    sub_31F64((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 3);
  }

  sub_5410A0(a1 + 88, a2 + 88);
  *(a1 + 200) = *(a2 + 200);
  return a1;
}

void *sub_942AA0(void **a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 112) = *(a2 + 112);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v9 = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  *(v6 + 120) = v9;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  LODWORD(v7) = *(a2 + 144);
  *(v6 + 148) = *(a2 + 148);
  *(v6 + 144) = v7;
  v10 = (152 * v2 + 152);
  v11 = *a1;
  v12 = a1[1];
  v13 = (v6 + *a1 - v12);
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 8);
      *(v15 + 3) = *(v14 + 3);
      *(v15 + 8) = v16;
      *(v14 + 2) = 0;
      *(v14 + 3) = 0;
      *(v14 + 1) = 0;
      v17 = *(v14 + 2);
      *(v15 + 6) = *(v14 + 6);
      *(v15 + 2) = v17;
      *(v14 + 5) = 0;
      *(v14 + 6) = 0;
      *(v14 + 4) = 0;
      v18 = *(v14 + 7);
      *(v15 + 16) = *(v14 + 16);
      *(v15 + 7) = v18;
      *(v15 + 10) = 0;
      *(v15 + 11) = 0;
      *(v15 + 72) = *(v14 + 72);
      *(v15 + 11) = *(v14 + 11);
      *(v14 + 9) = 0;
      *(v14 + 10) = 0;
      *(v14 + 11) = 0;
      *(v15 + 13) = 0;
      *(v15 + 14) = 0;
      *(v15 + 6) = *(v14 + 6);
      *(v15 + 14) = *(v14 + 14);
      *(v14 + 12) = 0;
      *(v14 + 13) = 0;
      *(v14 + 14) = 0;
      v19 = *(v14 + 120);
      *(v15 + 17) = *(v14 + 17);
      *(v15 + 120) = v19;
      *(v14 + 16) = 0;
      *(v14 + 17) = 0;
      *(v14 + 15) = 0;
      LODWORD(v18) = *(v14 + 36);
      v15[148] = v14[148];
      *(v15 + 36) = v18;
      v14 += 152;
      v15 += 152;
    }

    while (v14 != v12);
    do
    {
      sub_936258(v11);
      v11 += 152;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

uint64_t sub_942D1C(uint64_t a1)
{
  v2 = *(a1 + 424);
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

  v4 = *(a1 + 408);
  *(a1 + 408) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 384);
  if (v5)
  {
    do
    {
      v26 = *v5;
      v27 = v5[2];
      if (v27)
      {
        v5[3] = v27;
        operator delete(v27);
      }

      operator delete(v5);
      v5 = v26;
    }

    while (v26);
  }

  v6 = *(a1 + 368);
  *(a1 + 368) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 344);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 328);
  *(a1 + 328) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 304);
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

  v12 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 264);
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

  v15 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(a1 + 224);
  if (v16)
  {
    do
    {
      v17 = *v16;
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(a1 + 184);
  if (v19)
  {
    do
    {
      v20 = *v19;
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(a1 + 144);
  if (v22)
  {
    do
    {
      v23 = *v22;
      operator delete(v22);
      v22 = v23;
    }

    while (v23);
  }

  v24 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v24)
  {
    operator delete(v24);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  sub_942EB8((a1 + 48));
  return a1;
}

uint64_t *sub_942EB8(uint64_t *a1)
{
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    sub_F4AF44(v2);
    operator delete();
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    sub_F4AF44(v3);
    operator delete();
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    sub_784028(v4);
    operator delete();
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    sub_784028(v5);
    operator delete();
  }

  return a1;
}

void **sub_942F5C(void **a1)
{
  v2 = a1[30];
  if (v2)
  {
    v3 = a1[31];
    v4 = a1[30];
    if (v3 != v2)
    {
      v5 = a1[31];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[30];
    }

    a1[31] = v2;
    operator delete(v4);
  }

  v8 = a1[27];
  if (v8)
  {
    v9 = a1[28];
    v10 = a1[27];
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 3);
        if (v11)
        {
          *(v9 - 2) = v11;
          operator delete(v11);
        }

        v12 = v9 - 6;
        if (*(v9 - 25) < 0)
        {
          operator delete(*v12);
        }

        v9 -= 6;
      }

      while (v12 != v8);
      v10 = a1[27];
    }

    a1[28] = v8;
    operator delete(v10);
  }

  v13 = a1[24];
  if (v13)
  {
    v14 = a1[25];
    v15 = a1[24];
    if (v14 != v13)
    {
      do
      {
        v14 = sub_399184(v14 - 456);
      }

      while (v14 != v13);
      v15 = a1[24];
    }

    a1[25] = v13;
    operator delete(v15);
  }

  v16 = a1[21];
  if (v16)
  {
    v17 = a1[22];
    v18 = a1[21];
    if (v17 != v16)
    {
      do
      {
        v17 = sub_78B5C0(v17 - 7808);
      }

      while (v17 != v16);
      v18 = a1[21];
    }

    a1[22] = v16;
    operator delete(v18);
  }

  v19 = a1[18];
  if (!v19)
  {
    goto LABEL_42;
  }

  v20 = a1[19];
  v21 = a1[18];
  if (v20 == v19)
  {
    goto LABEL_41;
  }

  do
  {
    if (*(v20 - 9) < 0)
    {
      operator delete(*(v20 - 4));
      if (*(v20 - 41) < 0)
      {
LABEL_38:
        operator delete(*(v20 - 8));
        v22 = v20 - 14;
        v23 = *(v20 - 20);
        if (v23 == -1)
        {
          goto LABEL_32;
        }

LABEL_39:
        (off_266DCB0[v23])(&v43, v22);
        goto LABEL_32;
      }
    }

    else if (*(v20 - 41) < 0)
    {
      goto LABEL_38;
    }

    v22 = v20 - 14;
    v23 = *(v20 - 20);
    if (v23 != -1)
    {
      goto LABEL_39;
    }

LABEL_32:
    *(v20 - 20) = -1;
    v20 = v22;
  }

  while (v22 != v19);
  v21 = a1[18];
LABEL_41:
  a1[19] = v19;
  operator delete(v21);
LABEL_42:
  v24 = a1[15];
  if (v24)
  {
    v25 = a1[16];
    v26 = a1[15];
    if (v25 != v24)
    {
      do
      {
        v25 = sub_9432AC(v25 - 304);
      }

      while (v25 != v24);
      v26 = a1[15];
    }

    a1[16] = v24;
    operator delete(v26);
  }

  v27 = a1[12];
  if (v27)
  {
    v28 = a1[13];
    v29 = a1[12];
    if (v28 != v27)
    {
      do
      {
        v28 = sub_935DD4(v28 - 208);
      }

      while (v28 != v27);
      v29 = a1[12];
    }

    a1[13] = v27;
    operator delete(v29);
  }

  v30 = a1[9];
  if (v30)
  {
    v31 = a1[10];
    v32 = a1[9];
    if (v31 != v30)
    {
      do
      {
        v31 = sub_9357A0(v31 - 696);
      }

      while (v31 != v30);
      v32 = a1[9];
    }

    a1[10] = v30;
    operator delete(v32);
  }

  v33 = a1[6];
  if (v33)
  {
    v34 = a1[7];
    v35 = a1[6];
    if (v34 != v33)
    {
      do
      {
        v34 = sub_943558(v34 - 136);
      }

      while (v34 != v33);
      v35 = a1[6];
    }

    a1[7] = v33;
    operator delete(v35);
  }

  v36 = a1[3];
  if (v36)
  {
    v37 = a1[4];
    v38 = a1[3];
    if (v37 != v36)
    {
      do
      {
        v37 = sub_943718(v37 - 144);
      }

      while (v37 != v36);
      v38 = a1[3];
    }

    a1[4] = v36;
    operator delete(v38);
  }

  v39 = *a1;
  if (*a1)
  {
    v40 = a1[1];
    v41 = *a1;
    if (v40 != v39)
    {
      do
      {
        v40 = sub_943834(v40 - 168);
      }

      while (v40 != v39);
      v41 = *a1;
    }

    a1[1] = v39;
    operator delete(v41);
  }

  return a1;
}

uint64_t sub_9432AC(uint64_t a1)
{
  if ((*(a1 + 295) & 0x80000000) == 0)
  {
    if ((*(a1 + 263) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 240));
    v2 = *(a1 + 224);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 272));
  if (*(a1 + 263) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 224);
  if (v2 != -1)
  {
LABEL_7:
    (off_266DCB0[v2])(&v19, a1 + 192);
  }

LABEL_8:
  *(a1 + 224) = -1;
  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    v5 = *(a1 + 144);
    v6 = *(a1 + 136);
    if (v5 == v4)
    {
LABEL_20:
      *(a1 + 144) = v4;
      operator delete(v6);
      goto LABEL_21;
    }

    while (1)
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 24));
        if (*(v5 - 33) < 0)
        {
LABEL_18:
          operator delete(*(v5 - 56));
        }
      }

      else if (*(v5 - 33) < 0)
      {
        goto LABEL_18;
      }

      v5 -= 64;
      if (v5 == v4)
      {
        v6 = *(a1 + 136);
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v7 = *(a1 + 112);
  if (!v7)
  {
    goto LABEL_32;
  }

  v8 = *(a1 + 120);
  v9 = *(a1 + 112);
  if (v8 != v7)
  {
    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 24));
        if (*(v8 - 33) < 0)
        {
LABEL_29:
          operator delete(*(v8 - 56));
        }
      }

      else if (*(v8 - 33) < 0)
      {
        goto LABEL_29;
      }

      v8 -= 64;
      if (v8 == v7)
      {
        v9 = *(a1 + 112);
        break;
      }
    }
  }

  *(a1 + 120) = v7;
  operator delete(v9);
LABEL_32:
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_38:
    operator delete(*(a1 + 64));
    v10 = *(a1 + 40);
    if (!v10)
    {
LABEL_35:
      v11 = *(a1 + 16);
      if (v11)
      {
        goto LABEL_49;
      }

      return a1;
    }

    goto LABEL_39;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v10 = *(a1 + 40);
  if (!v10)
  {
    goto LABEL_35;
  }

LABEL_39:
  v13 = *(a1 + 48);
  if (v13 == v10)
  {
    *(a1 + 48) = v10;
    operator delete(v10);
    v11 = *(a1 + 16);
    if (v11)
    {
      goto LABEL_49;
    }

    return a1;
  }

  do
  {
    if (*(v13 - 1) < 0)
    {
      operator delete(*(v13 - 3));
      v14 = v13 - 7;
      if ((*(v13 - 33) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v14 = v13 - 7;
      if ((*(v13 - 33) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    operator delete(*v14);
LABEL_42:
    v13 = v14;
  }

  while (v14 != v10);
  v15 = *(a1 + 40);
  *(a1 + 48) = v10;
  operator delete(v15);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return a1;
  }

LABEL_49:
  v16 = *(a1 + 24);
  v17 = v11;
  if (v16 != v11)
  {
    while (1)
    {
      if (*(v16 - 1) < 0)
      {
        operator delete(*(v16 - 3));
        v18 = v16 - 7;
        if (*(v16 - 33) < 0)
        {
LABEL_56:
          operator delete(*v18);
        }
      }

      else
      {
        v18 = v16 - 7;
        if (*(v16 - 33) < 0)
        {
          goto LABEL_56;
        }
      }

      v16 = v18;
      if (v18 == v11)
      {
        v17 = *(a1 + 16);
        break;
      }
    }
  }

  *(a1 + 24) = v11;
  operator delete(v17);
  return a1;
}

uint64_t sub_943558(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 120);
  v4 = *(a1 + 112);
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 32));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 64));
        v5 = *(v3 - 80);
        if (v5 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266DCB0[v5])(&v14, v3 - 112);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = *(v3 - 80);
    if (v5 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 80) = -1;
    v3 -= 128;
  }

  while (v3 != v2);
  v4 = *(a1 + 112);
LABEL_13:
  *(a1 + 120) = v2;
  operator delete(v4);
LABEL_14:
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 64);
    if (v7 == v6)
    {
LABEL_24:
      *(a1 + 72) = v6;
      operator delete(v8);
      goto LABEL_25;
    }

    while (2)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 24));
        if (*(v7 - 33) < 0)
        {
          goto LABEL_22;
        }
      }

      else if (*(v7 - 33) < 0)
      {
LABEL_22:
        operator delete(*(v7 - 56));
      }

      v7 -= 64;
      if (v7 == v6)
      {
        v8 = *(a1 + 64);
        goto LABEL_24;
      }

      continue;
    }
  }

LABEL_25:
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 == v9)
    {
LABEL_37:
      *(a1 + 24) = v9;
      operator delete(v11);
      return a1;
    }

    while (2)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 7;
        if (*(v10 - 33) < 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v12 = v10 - 7;
        if (*(v10 - 33) < 0)
        {
LABEL_35:
          operator delete(*v12);
        }
      }

      v10 = v12;
      if (v12 == v9)
      {
        v11 = *(a1 + 16);
        goto LABEL_37;
      }

      continue;
    }
  }

  return a1;
}

uint64_t sub_943718(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
    if (v4 == v3)
    {
LABEL_13:
      *(a1 + 72) = v3;
      operator delete(v5);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
        if (*(v4 - 33) < 0)
        {
LABEL_11:
          operator delete(*(v4 - 56));
        }
      }

      else if (*(v4 - 33) < 0)
      {
        goto LABEL_11;
      }

      v4 -= 64;
      if (v4 == v3)
      {
        v5 = *(a1 + 64);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 16);
    if (v7 == v6)
    {
LABEL_26:
      *(a1 + 24) = v6;
      operator delete(v8);
      return a1;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
LABEL_24:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
          goto LABEL_24;
        }
      }

      v7 = v9;
      if (v9 == v6)
      {
        v8 = *(a1 + 16);
        goto LABEL_26;
      }
    }
  }

  return a1;
}

uint64_t sub_943834(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
    if (v4 == v3)
    {
LABEL_15:
      *(a1 + 72) = v3;
      operator delete(v5);
      goto LABEL_16;
    }

    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
        if (*(v4 - 33) < 0)
        {
LABEL_13:
          operator delete(*(v4 - 56));
        }
      }

      else if (*(v4 - 33) < 0)
      {
        goto LABEL_13;
      }

      v4 -= 64;
      if (v4 == v3)
      {
        v5 = *(a1 + 64);
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 16);
    if (v7 == v6)
    {
LABEL_28:
      *(a1 + 24) = v6;
      operator delete(v8);
      return a1;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
LABEL_26:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
          goto LABEL_26;
        }
      }

      v7 = v9;
      if (v9 == v6)
      {
        v8 = *(a1 + 16);
        goto LABEL_28;
      }
    }
  }

  return a1;
}

uint64_t sub_943960(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x13u)
  {
    v9 = *(v8 + 9);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_943ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_943AEC(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 6)
  {
    if (!(a2 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_943C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_943D6C(va);
  _Unwind_Resume(a1);
}

void sub_943C1C(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 40) = 0;
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      v7 += 64;
      v8 += 64;
    }

    while (v7 != v4);
    do
    {
      v10 = *(v5 + 40);
      if (v10)
      {
        v11 = *(v5 + 48);
        v12 = *(v5 + 40);
        if (v11 != v10)
        {
          do
          {
            if (*(v11 - 1) < 0)
            {
              operator delete(*(v11 - 24));
            }

            v11 -= 32;
          }

          while (v11 != v10);
          v12 = *(v5 + 40);
        }

        *(v5 + 48) = v10;
        operator delete(v12);
      }

      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 64;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t sub_943D6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    v4 = *(i - 24);
    if (v4)
    {
      v5 = *(i - 16);
      v6 = *(i - 24);
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
        v6 = *(i - 24);
      }

      *(i - 16) = v4;
      operator delete(v6);
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_943E24(char **a1, unsigned int **a2, uint64_t *a3, void (*a4)(void **__return_ptr, char *))
{
  if (*a1 != *a2)
  {
    a4(v16, &(*a1)[**a1]);
    while (1)
    {
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        v11 = sub_943F8C(a3, v16);
        v12 = __p[0];
        a3[1] = v11;
        if (v12)
        {
          v13 = __p[1];
          v14 = v12;
          if (__p[1] != v12)
          {
            do
            {
              if (*(v13 - 1) < 0)
              {
                operator delete(*(v13 - 3));
              }

              v13 -= 4;
            }

            while (v13 != v12);
            v14 = __p[0];
          }

          __p[1] = v12;
          operator delete(v14);
        }
      }

      else
      {
        v10 = *v16;
        *(v9 + 16) = v17;
        *v9 = v10;
        v16[1] = 0;
        v17 = 0;
        v16[0] = 0;
        *(v9 + 24) = v18;
        *(v9 + 48) = 0;
        *(v9 + 56) = 0;
        *(v9 + 40) = 0;
        *(v9 + 40) = *__p;
        *(v9 + 56) = v20;
        __p[0] = 0;
        __p[1] = 0;
        v20 = 0;
        a3[1] = v9 + 64;
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      v8 = (*a1 + 4);
      *a1 = v8;
      if (v8 == *a2)
      {
        break;
      }

      a4(v16, v8 + *v8);
    }
  }

  return a3;
}

uint64_t sub_943F8C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 6;
  __p = 0;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  v17 = (v2 << 6) + 64;
  v18 = 0;
  sub_943C1C(a1, &__p);
  v8 = a1[1];
  v9 = v16;
  while (1)
  {
    v10 = v17;
    if (v17 == v9)
    {
      break;
    }

    v17 -= 64;
    v11 = *(v10 - 24);
    if (v11)
    {
      v12 = *(v10 - 16);
      v13 = *(v10 - 24);
      if (v12 != v11)
      {
        do
        {
          if (*(v12 - 1) < 0)
          {
            operator delete(*(v12 - 24));
          }

          v12 -= 32;
        }

        while (v12 != v11);
        v13 = *(v10 - 24);
      }

      *(v10 - 16) = v11;
      operator delete(v13);
    }

    if (*(v10 - 41) < 0)
    {
      operator delete(*(v10 - 64));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_94411C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_943D6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_944130(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    if (v6 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 72 * v2;
  __p = 0;
  v16 = v7;
  v17 = v7;
  v18 = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  sub_93636C((v7 + 24), (a2 + 24));
  if (*(a2 + 71) < 0)
  {
    sub_325C((v7 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 64) = *(a2 + 64);
  }

  v17 += 72;
  sub_944314(a1, &__p);
  v8 = a1[1];
  v9 = v16;
  while (1)
  {
    v10 = v17;
    if (v17 == v9)
    {
      break;
    }

    v17 -= 72;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v13 = *(v10 - 48);
      v11 = (v10 - 48);
      if (v13)
      {
LABEL_19:
        sub_936658(v11);
        operator delete(*v11);
      }
    }

    else
    {
      v12 = *(v10 - 48);
      v11 = (v10 - 48);
      if (v12)
      {
        goto LABEL_19;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_9442E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_934E08((v3 + 24));
  sub_944448(va);
  _Unwind_Resume(a1);
}

void sub_944300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_944448(va);
  _Unwind_Resume(a1);
}

void sub_944314(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v10 = *(v7 + 48);
      *(v8 + 64) = *(v7 + 64);
      *(v8 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v7 += 72;
      v8 += 72;
    }

    while (v7 != v4);
    while (*(v5 + 71) < 0)
    {
      operator delete(*(v5 + 48));
      v11 = (v5 + 24);
      if (*(v5 + 24))
      {
        goto LABEL_10;
      }

LABEL_5:
      v5 += 72;
      if (v5 == v4)
      {
        goto LABEL_11;
      }
    }

    v11 = (v5 + 24);
    if (!*(v5 + 24))
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_936658(v11);
    operator delete(*v11);
    goto LABEL_5;
  }

LABEL_11:
  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_944448(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      v6 = *(i - 48);
      v4 = (i - 48);
      if (!v6)
      {
        continue;
      }

LABEL_8:
      sub_936658(v4);
      operator delete(*v4);
      continue;
    }

    v5 = *(i - 48);
    v4 = (i - 48);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9444D4(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 24))
  {
    sub_936658((a1 + 24));
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t *sub_944524(void *a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 33);
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
        if (*(v11 + 4) == v3 && *(v11 + 5) == HIDWORD(v3))
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

  if (*(v11 + 4) != v3 || *(v11 + 5) != HIDWORD(v3))
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t sub_94489C(uint64_t a1, unint64_t a2)
{
  v3 = sub_92FC60(a1, a2, 0, "line");
  v4 = (v3 - *v3);
  if (*v4 >= 9u)
  {
    v5 = v4[4];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 8 * v7;
        v9 = v6 + 1;
        do
        {
          if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
          {
            operator new();
          }

          v9 += 2;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }

  return 3;
}

void sub_944AB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_944AD0()
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
  xmmword_27B17B8 = 0u;
  unk_27B17C8 = 0u;
  dword_27B17D8 = 1065353216;
  sub_3A9A34(&xmmword_27B17B8, v0, v0);
  sub_3A9A34(&xmmword_27B17B8, v3, v3);
  sub_3A9A34(&xmmword_27B17B8, __p, __p);
  sub_3A9A34(&xmmword_27B17B8, v9, v9);
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
    qword_27B1760 = 0;
    qword_27B1768 = 0;
    qword_27B1758 = 0;
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

void sub_944DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1770)
  {
    qword_27B1778 = qword_27B1770;
    operator delete(qword_27B1770);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_944FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9450EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_945114(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0x27FFFFFFFLL;
  *a3 = &off_266D9E8;
  *(a3 + 16) = -1;
  v6 = a3 + 16;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = -1;
  *(a3 + 80) = 0x7FFFFFFF;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0x7FFFFFFF;
  *(a3 + 164) = 0;
  v7 = sub_93C810(a2);
  v9 = v8;
  v33 = v7;
  v34 = v8;
  if (*(a2 + 584) || *(a2 + 24) == *(a2 + 32) || !v8)
  {
    goto LABEL_2;
  }

  v14 = *sub_945514((a2 + 24), 0);
  v15 = sub_3AFB1C(*(a1 + 4));
  sub_9572CC(v14, v15, *(a1 + 3), v9 == 1, v22, a2);
  sub_939B60(v6, v22);
  if (v32 < 0)
  {
    operator delete(v31);
    v16 = v29;
    if (!v29)
    {
LABEL_17:
      v17 = v27;
      if (!v27)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v16 = v29;
    if (!v29)
    {
      goto LABEL_17;
    }
  }

  v18 = v16;
  if (v30 == v16)
  {
    goto LABEL_36;
  }

  v19 = v30 - 65;
  do
  {
    if (v19[64] < 0)
    {
      operator delete(*(v19 + 41));
      if ((v19[32] & 0x80000000) == 0)
      {
LABEL_28:
        if (*v19 < 0)
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }
    }

    else if ((v19[32] & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(*(v19 + 9));
    if (*v19 < 0)
    {
LABEL_33:
      operator delete(*(v19 - 23));
      v21 = *(v19 - 39);
      if (v21 == -1)
      {
        goto LABEL_25;
      }

LABEL_34:
      (off_266DCD8[v21])(&v35, v19 - 71);
      goto LABEL_25;
    }

LABEL_29:
    v21 = *(v19 - 39);
    if (v21 != -1)
    {
      goto LABEL_34;
    }

LABEL_25:
    *(v19 - 39) = -1;
    v20 = v19 - 79;
    v19 -= 144;
  }

  while (v20 != v16);
  v18 = v29;
LABEL_36:
  v30 = v16;
  operator delete(v18);
  v17 = v27;
  if (v27)
  {
LABEL_18:
    v28 = v17;
    operator delete(v17);
  }

LABEL_19:
  if (v26 < 0)
  {
    operator delete(__p);
    if (v24 < 0)
    {
      goto LABEL_39;
    }
  }

  else if (v24 < 0)
  {
LABEL_39:
    operator delete(v22[1]);
  }

LABEL_2:
  v10 = sub_93C870(a2);
  v11 = v10;
  if (v10 <= 0xFFFFFFFEFFFFFFFFLL && v10)
  {
    v12 = sub_3AFC64(*(a1 + 4));
    sub_3A25A8(v12, v11, 0, "trip");
    sub_948248();
  }

  sub_9483C8(&v33, *(a1 + 3), *(a1 + 4), *(a1 + 1), v22);
  if (*(a3 + 112))
  {
    sub_936658((a3 + 112));
    operator delete(*(a3 + 112));
  }

  *(a3 + 112) = *v22;
  *(a3 + 128) = v23;
  v13 = sub_3AFB1C(*(a1 + 4));
  sub_9592FC(a2, v13, *(a1 + 3), v22);
  if (*(a3 + 159) < 0)
  {
    operator delete(*(a3 + 136));
  }

  *(a3 + 136) = *v22;
  *(a3 + 152) = v23;
  HIBYTE(v23) = 0;
  LOBYTE(v22[0]) = 0;
  if (v26 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }

  *(a3 + 8) = *(a1 + 4);
}

unint64_t sub_945514(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, (a1[1] - *a1) >> 3);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 8 * a2;
}

void sub_945648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_945728()
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
  xmmword_27B1810 = 0u;
  unk_27B1820 = 0u;
  dword_27B1830 = 1065353216;
  sub_3A9A34(&xmmword_27B1810, v0, v0);
  sub_3A9A34(&xmmword_27B1810, v3, v3);
  sub_3A9A34(&xmmword_27B1810, __p, __p);
  sub_3A9A34(&xmmword_27B1810, v9, v9);
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
    qword_27B17E8 = 0;
    qword_27B17F0 = 0;
    qword_27B17E0 = 0;
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

void sub_945970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B17F8)
  {
    qword_27B1800 = qword_27B17F8;
    operator delete(qword_27B17F8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_945A1C(unint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = sub_92FC60(a2, *v2, 0, "line");
      v6 = (v5 - *v5);
      if (*v6 >= 0x45u)
      {
        v7 = v6[34];
        if (v7)
        {
          if (*(v5 + v7 + *(v5 + v7)))
          {
            operator new();
          }
        }
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return 0;
}

void sub_945BF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_945C14(unint64_t **a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = sub_3AFEE8(a4);
  v76 = sub_3AFB1C(a4);
  v77 = sub_3AFC64(a4);
  v78 = 0;
  v10 = *a2;
  v11 = a2[1];
  v100 = 0u;
  v101 = 0u;
  v102 = 1065353216;
  v79 = 0;
  v80 = 0;
  if (v10 == v11)
  {
    v33 = 0;
    v34 = 0;
    goto LABEL_87;
  }

  do
  {
    v12 = *v10;
    nullsub_1();
    v13 = sub_93E04C(v9, v12, 0, "system");
    v14 = (v13 - *v13);
    if (*v14 >= 7u && (v15 = v14[3]) != 0)
    {
      v16 = (v13 + v15 + *(v13 + v15));
      v103 = 0uLL;
      v104 = 0;
      sub_943AEC(&v103, *v16);
      v87 = (v16 + 1);
      v86 = &v16[*v16 + 1];
      sub_943E24(&v87, &v86, &v103, sub_509164);
      v17 = v103;
      v18 = v104;
    }

    else
    {
      v18 = 0;
      v17 = 0uLL;
    }

    *__p = v17;
    v82 = v18;
    sub_9D6590(__p, a3 + 968, &v83);
    v19 = __p[0];
    if (__p[0])
    {
      v20 = __p[1];
      v21 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v22 = *(v20 - 3);
          if (v22)
          {
            v23 = *(v20 - 2);
            v24 = *(v20 - 3);
            if (v23 != v22)
            {
              do
              {
                if (*(v23 - 1) < 0)
                {
                  operator delete(*(v23 - 24));
                }

                v23 -= 32;
              }

              while (v23 != v22);
              v24 = *(v20 - 3);
            }

            *(v20 - 2) = v22;
            operator delete(v24);
          }

          v25 = (v20 - 64);
          if (*(v20 - 41) < 0)
          {
            operator delete(*v25);
          }

          v20 -= 64;
        }

        while (v25 != v19);
        v21 = __p[0];
      }

      __p[1] = v19;
      operator delete(v21);
    }

    sub_9D45D8(&v83, &v103);
    memset(v91, 255, sizeof(v91));
    v92 = 0uLL;
    v93 = 0;
    v94 = 0;
    v96 = 0;
    v95 = 0uLL;
    v97 = 0;
    v99 = 0;
    v98 = 0uLL;
    v90 = 0;
    LODWORD(v88) = 1;
    if (SHIBYTE(v104) < 0)
    {
      sub_13A68(&v98, v103, *(&v103 + 1));
    }

    else
    {
      v98 = v103;
      v99 = v104;
    }

    if (v106 < 0)
    {
      operator delete(v105);
      if ((SHIBYTE(v104) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_32:
      operator delete(v103);
      v26 = v83;
      if (!v83)
      {
        goto LABEL_42;
      }

LABEL_33:
      v27 = v84;
      v28 = v26;
      if (v84 == v26)
      {
LABEL_41:
        v84 = v26;
        operator delete(v28);
        goto LABEL_42;
      }

      while (1)
      {
        if (*(v27 - 1) < 0)
        {
          operator delete(*(v27 - 3));
          v29 = v27 - 7;
          if ((*(v27 - 33) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_39:
          operator delete(*v29);
          v27 = v29;
          if (v29 == v26)
          {
LABEL_40:
            v28 = v83;
            goto LABEL_41;
          }
        }

        else
        {
          v29 = v27 - 7;
          if (*(v27 - 33) < 0)
          {
            goto LABEL_39;
          }

LABEL_36:
          v27 = v29;
          if (v29 == v26)
          {
            goto LABEL_40;
          }
        }
      }
    }

    if (SHIBYTE(v104) < 0)
    {
      goto LABEL_32;
    }

LABEL_29:
    v26 = v83;
    if (v83)
    {
      goto LABEL_33;
    }

LABEL_42:
    if (!sub_94A7F4(&v100, &v88))
    {
      sub_94B3C0(&v100, &v88, &v88);
      v31 = v79;
      if (v79 >= v80)
      {
        v79 = sub_94B948(&v78, &v88);
        if (SHIBYTE(v99) < 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        *v79 = v88;
        sub_55F1E8((v31 + 8), v89);
        if (SHIBYTE(v99) < 0)
        {
          sub_325C(v31 + 120, v98, *(&v98 + 1));
          v79 = v31 + 144;
          if (SHIBYTE(v99) < 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v32 = v98;
          *(v31 + 17) = v99;
          *(v31 + 120) = v32;
          v79 = v31 + 144;
          if (SHIBYTE(v99) < 0)
          {
            goto LABEL_53;
          }
        }
      }

LABEL_44:
      if ((SHIBYTE(v96) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_54;
    }

    if ((SHIBYTE(v99) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_53:
    operator delete(v98);
    if ((SHIBYTE(v96) & 0x80000000) == 0)
    {
LABEL_45:
      if ((v94 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_55:
      operator delete(*(&v92 + 1));
      v30 = v90;
      if (v90 == -1)
      {
        goto LABEL_3;
      }

      goto LABEL_56;
    }

LABEL_54:
    operator delete(v95);
    if (v94 < 0)
    {
      goto LABEL_55;
    }

LABEL_46:
    v30 = v90;
    if (v90 != -1)
    {
LABEL_56:
      (off_266DD00[v30])(&v103, v89);
    }

LABEL_3:
    ++v10;
  }

  while (v10 != v11);
  v34 = v78;
  v33 = v79;
  if (v78 == v79)
  {
LABEL_87:
    v36 = a5;
    goto LABEL_113;
  }

  v35 = v78 + 287;
  v36 = a5;
  while (1)
  {
    v34 = (v35 - 287);
    v39 = *(v35 - 287);
    if (v39 == 4)
    {
      goto LABEL_64;
    }

    if (v39 == 3)
    {
      break;
    }

    if (v39 != 1)
    {
      goto LABEL_83;
    }

    v40 = *(v35 - 144);
    if ((v40 & 0x80u) != 0)
    {
      v40 = *(v35 - 159);
    }

    if (!v40)
    {
      goto LABEL_83;
    }

LABEL_64:
    v38 = v35 - 143;
    v35 += 144;
    if (v38 == v79)
    {
      v34 = v79;
      goto LABEL_113;
    }
  }

  v41 = *(v35 - 247);
  if (v41 <= 2)
  {
    v42 = v35 - 279;
    if (v41 == 1)
    {
      if (*v42 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (v41 != 2 || *(v35 - 275) == -1 && *v42 == -1 && *(v35 - 271) == *(v35 - 263))
    {
      goto LABEL_83;
    }

    goto LABEL_64;
  }

  if (v41 == 3 || v41 == 4)
  {
    v37 = *(v35 - 256);
    if ((v37 & 0x80u) != 0)
    {
      v37 = *(v35 - 271);
    }

    if (v37)
    {
      goto LABEL_64;
    }
  }

LABEL_83:
  if (v34 != v79 && v35 - 143 != v79)
  {
    while (1)
    {
      v44 = *(v35 - 143);
      if (v44 == 4)
      {
        goto LABEL_90;
      }

      if (v44 != 3)
      {
        break;
      }

      v46 = *(v35 - 103);
      if (v46 > 2)
      {
        if (v46 != 3 && v46 != 4)
        {
          goto LABEL_91;
        }

        v47 = *(v35 - 112);
        if ((v47 & 0x80u) != 0)
        {
          v47 = *(v35 - 127);
        }

        if (!v47)
        {
          goto LABEL_91;
        }

LABEL_90:
        sub_94BC18(v34, (v35 - 143));
        v34 += 144;
        goto LABEL_91;
      }

      if (v46 != 1)
      {
        if (v46 != 2 || *(v35 - 131) == -1 && *(v35 - 135) == -1 && *(v35 - 127) == *(v35 - 119))
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      if (*(v35 - 135) != -1)
      {
        goto LABEL_90;
      }

LABEL_91:
      v43 = (v35 + 1);
      v35 += 144;
      if (v43 == v33)
      {
        v33 = v79;
        goto LABEL_113;
      }
    }

    if (v44 != 1)
    {
      goto LABEL_91;
    }

    v45 = *v35;
    if ((v45 & 0x80u) != 0)
    {
      v45 = *(v35 - 15);
    }

    if (!v45)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_113:
  sub_94BAF4(&v78, v34, v33);
  v48 = v79;
  if (0x8E38E38E38E38E39 * ((v79 - v78) >> 4) > v36)
  {
    v49 = 0;
    v50 = v79 - 144;
    do
    {
      v52 = &v48[v49];
      if (v48[v49 - 1] < 0)
      {
        operator delete(*(v52 - 3));
        if ((*(v52 - 33) & 0x80000000) == 0)
        {
LABEL_118:
          v53 = &v48[v49];
          if ((v48[v49 - 65] & 0x80000000) == 0)
          {
            goto LABEL_119;
          }

          goto LABEL_123;
        }
      }

      else if ((*(v52 - 33) & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

      operator delete(*&v48[v49 - 56]);
      v53 = &v48[v49];
      if ((v48[v49 - 65] & 0x80000000) == 0)
      {
LABEL_119:
        v54 = *(v53 - 26);
        if (v54 == -1)
        {
          goto LABEL_115;
        }

LABEL_124:
        (off_266DD00[v54])(&v88, v52 - 136);
        goto LABEL_115;
      }

LABEL_123:
      operator delete(*(v53 - 11));
      v54 = *(v53 - 26);
      if (v54 != -1)
      {
        goto LABEL_124;
      }

LABEL_115:
      *(v53 - 26) = -1;
      v79 = &v48[v49 - 144];
      v51 = 0x8E38E38E38E38E39 * ((&v50[v49] - v78) >> 4);
      v49 -= 144;
    }

    while (v51 > v36);
  }

  sub_94A714(&v100);
  v56 = v78;
  v55 = v79;
  v57 = v79 - v78;
  if (0x8E38E38E38E38E39 * ((v79 - v78) >> 4) > 1)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v88 = a6;
    v89[0] = 0;
    if (v55 == v56)
    {
      goto LABEL_156;
    }

LABEL_130:
    if (0x8E38E38E38E38E39 * (v57 >> 4) <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_945A1C(a1, v77))
  {
    v59 = v78;
    v58 = v79;
    v57 = v79 - v78;
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v88 = a6;
    v89[0] = 0;
    if (v58 == v59)
    {
      goto LABEL_156;
    }

    goto LABEL_130;
  }

  v60 = *a1;
  v61 = a1[1];
  v100 = 0u;
  v101 = 0u;
  v102 = 1065353216;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  if (v60 != v61)
  {
    sub_9A8A70(v9, v76, v77, *v60, a3);
  }

  sub_94BAF4(&v83, 0, 0);
  sub_94A714(&v100);
  if (v83 != v84)
  {
    v62 = 0x8E38E38E38E38E39 * ((v84 - v83) >> 4);
    if (v62 <= a5)
    {
      *a6 = 0;
      a6[1] = 0;
      a6[2] = 0;
      v88 = a6;
      v89[0] = 0;
      if (v62 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1794();
    }
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v88 = a6;
  v89[0] = 0;
  if (v79 != v78)
  {
    if (0x8E38E38E38E38E39 * ((v79 - v78) >> 4) <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1794();
  }

  v63 = v83;
  if (!v83)
  {
    goto LABEL_156;
  }

  v64 = v83;
  if (v84 == v83)
  {
    goto LABEL_155;
  }

  v65 = v84 - 65;
  do
  {
    if (v65[64] < 0)
    {
      operator delete(*(v65 + 41));
      if ((v65[32] & 0x80000000) == 0)
      {
LABEL_147:
        if (*v65 < 0)
        {
          goto LABEL_152;
        }

        goto LABEL_148;
      }
    }

    else if ((v65[32] & 0x80000000) == 0)
    {
      goto LABEL_147;
    }

    operator delete(*(v65 + 9));
    if (*v65 < 0)
    {
LABEL_152:
      operator delete(*(v65 - 23));
      v67 = *(v65 - 39);
      if (v67 == -1)
      {
        goto LABEL_144;
      }

LABEL_153:
      (off_266DD00[v67])(&v88, v65 - 71);
      goto LABEL_144;
    }

LABEL_148:
    v67 = *(v65 - 39);
    if (v67 != -1)
    {
      goto LABEL_153;
    }

LABEL_144:
    *(v65 - 39) = -1;
    v66 = v65 - 79;
    v65 -= 144;
  }

  while (v66 != v63);
  v64 = v83;
LABEL_155:
  v84 = v63;
  operator delete(v64);
LABEL_156:
  v68 = v78;
  if (!v78)
  {
    return;
  }

  v69 = v78;
  if (v79 == v78)
  {
    goto LABEL_170;
  }

  v70 = v79 - 65;
  while (2)
  {
    if ((v70[64] & 0x80000000) == 0)
    {
      if ((v70[32] & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

LABEL_166:
      operator delete(*(v70 + 9));
      if (*v70 < 0)
      {
        goto LABEL_167;
      }

LABEL_163:
      v72 = *(v70 - 39);
      if (v72 == -1)
      {
        goto LABEL_159;
      }

LABEL_168:
      (off_266DD00[v72])(&v88, v70 - 71);
      goto LABEL_159;
    }

    operator delete(*(v70 + 41));
    if (v70[32] < 0)
    {
      goto LABEL_166;
    }

LABEL_162:
    if ((*v70 & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

LABEL_167:
    operator delete(*(v70 - 23));
    v72 = *(v70 - 39);
    if (v72 != -1)
    {
      goto LABEL_168;
    }

LABEL_159:
    *(v70 - 39) = -1;
    v71 = v70 - 79;
    v70 -= 144;
    if (v71 != v68)
    {
      continue;
    }

    break;
  }

  v69 = v78;
LABEL_170:
  v79 = v68;
  operator delete(v69);
}

void sub_946B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  v29 = v27;
  *(v29 + 8) = v28;
  sub_936608(&a27);
  sub_934E08(&a22);
  sub_934E08(&a14);
  _Unwind_Resume(a1);
}

void sub_946B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_934E08(va1);
  sub_94A714(v11 - 256);
  sub_934E08(va);
  _Unwind_Resume(a1);
}

void sub_946C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_948038(va);
  sub_509680(v26 - 208);
  sub_9354C4(&a22);
  sub_934E08(&a14);
  sub_94A714(v26 - 256);
  _Unwind_Resume(a1);
}

void sub_946D44(unint64_t **a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v9 = sub_3AFEE8(a4);
  sub_3AFB1C(a4);
  v10 = sub_3AFC64(a4);
  v11 = *a2;
  v12 = a2[1];
  memset(v84, 0, sizeof(v84));
  v85 = 1065353216;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  if (v11 == v12)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_49;
  }

  do
  {
    sub_9480E4(*v11, v9, a3, &v69);
    if (sub_94A7F4(v84, &v69))
    {
      if ((SHIBYTE(v81) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_94B3C0(v84, &v69, &v69);
      v14 = v67;
      if (v67 >= v68)
      {
        v67 = sub_94B948(&v66, &v69);
        if ((SHIBYTE(v81) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *v67 = v69;
        sub_55F1E8((v14 + 8), v70);
        if (SHIBYTE(v81) < 0)
        {
          sub_325C(v14 + 120, __p, *(&__p + 1));
          v67 = v14 + 144;
          if ((SHIBYTE(v81) & 0x80000000) == 0)
          {
LABEL_6:
            if ((SHIBYTE(v78) & 0x80000000) == 0)
            {
              goto LABEL_7;
            }

            goto LABEL_16;
          }
        }

        else
        {
          v15 = __p;
          *(v14 + 17) = v81;
          *(v14 + 120) = v15;
          v67 = v14 + 144;
          if ((SHIBYTE(v81) & 0x80000000) == 0)
          {
            goto LABEL_6;
          }
        }
      }
    }

    operator delete(__p);
    if ((SHIBYTE(v78) & 0x80000000) == 0)
    {
LABEL_7:
      if (v75 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

LABEL_16:
    operator delete(v76);
    if (v75 < 0)
    {
LABEL_17:
      operator delete(*(&v73 + 1));
      v13 = v71;
      if (v71 == -1)
      {
        goto LABEL_3;
      }

LABEL_18:
      (off_266DD00[v13])(v82, v70);
      goto LABEL_3;
    }

LABEL_8:
    v13 = v71;
    if (v71 != -1)
    {
      goto LABEL_18;
    }

LABEL_3:
    ++v11;
  }

  while (v11 != v12);
  v17 = v66;
  v16 = v67;
  if (v66 == v67)
  {
LABEL_49:
    v19 = a5;
    goto LABEL_75;
  }

  v18 = v66 + 287;
  v19 = a5;
  while (1)
  {
    v17 = (v18 - 287);
    v22 = *(v18 - 287);
    if (v22 == 4)
    {
      goto LABEL_26;
    }

    if (v22 == 3)
    {
      break;
    }

    if (v22 != 1)
    {
      goto LABEL_45;
    }

    v23 = *(v18 - 144);
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v18 - 159);
    }

    if (!v23)
    {
      goto LABEL_45;
    }

LABEL_26:
    v21 = v18 - 143;
    v18 += 144;
    if (v21 == v67)
    {
      v17 = v67;
      goto LABEL_75;
    }
  }

  v24 = *(v18 - 247);
  if (v24 <= 2)
  {
    v25 = v18 - 279;
    if (v24 == 1)
    {
      if (*v25 == -1)
      {
        goto LABEL_45;
      }
    }

    else if (v24 != 2 || *(v18 - 275) == -1 && *v25 == -1 && *(v18 - 271) == *(v18 - 263))
    {
      goto LABEL_45;
    }

    goto LABEL_26;
  }

  if (v24 == 3 || v24 == 4)
  {
    v20 = *(v18 - 256);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(v18 - 271);
    }

    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_45:
  if (v17 != v67 && v18 - 143 != v67)
  {
    while (1)
    {
      v27 = *(v18 - 143);
      if (v27 == 4)
      {
        goto LABEL_52;
      }

      if (v27 != 3)
      {
        break;
      }

      v29 = *(v18 - 103);
      if (v29 > 2)
      {
        if (v29 != 3 && v29 != 4)
        {
          goto LABEL_53;
        }

        v30 = *(v18 - 112);
        if ((v30 & 0x80u) != 0)
        {
          v30 = *(v18 - 127);
        }

        if (!v30)
        {
          goto LABEL_53;
        }

LABEL_52:
        sub_94BC18(v17, (v18 - 143));
        v17 += 144;
        goto LABEL_53;
      }

      if (v29 != 1)
      {
        if (v29 != 2 || *(v18 - 131) == -1 && *(v18 - 135) == -1 && *(v18 - 127) == *(v18 - 119))
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      if (*(v18 - 135) != -1)
      {
        goto LABEL_52;
      }

LABEL_53:
      v26 = (v18 + 1);
      v18 += 144;
      if (v26 == v16)
      {
        v16 = v67;
        goto LABEL_75;
      }
    }

    if (v27 != 1)
    {
      goto LABEL_53;
    }

    v28 = *v18;
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(v18 - 15);
    }

    if (!v28)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_75:
  sub_94BAF4(&v66, v17, v16);
  v31 = v67;
  if (0x8E38E38E38E38E39 * ((v67 - v66) >> 4) > v19)
  {
    v32 = 0;
    do
    {
      v34 = &v31[v32];
      if (v31[v32 - 1] < 0)
      {
        operator delete(*(v34 - 3));
        if ((*(v34 - 33) & 0x80000000) == 0)
        {
LABEL_80:
          v35 = &v31[v32];
          if ((v31[v32 - 65] & 0x80000000) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_85;
        }
      }

      else if ((*(v34 - 33) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }

      operator delete(*&v31[v32 - 56]);
      v35 = &v31[v32];
      if ((v31[v32 - 65] & 0x80000000) == 0)
      {
LABEL_81:
        v36 = *(v35 - 26);
        if (v36 == -1)
        {
          goto LABEL_77;
        }

LABEL_86:
        (off_266DD00[v36])(&v69, v34 - 136);
        goto LABEL_77;
      }

LABEL_85:
      operator delete(*(v35 - 11));
      v36 = *(v35 - 26);
      if (v36 != -1)
      {
        goto LABEL_86;
      }

LABEL_77:
      *(v35 - 26) = -1;
      v67 = &v31[v32 - 144];
      v33 = 0x8E38E38E38E38E39 * ((&v31[v32 - 144] - v66) >> 4);
      v32 -= 144;
    }

    while (v33 > a5);
  }

  sub_94A714(v84);
  v38 = v66;
  v37 = v67;
  v39 = 0x8E38E38E38E38E39 * ((v67 - v66) >> 4);
  if (v39 >= 2)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v69 = a6;
    v70[0] = 0;
    if (v37 != v38)
    {
      if (v39 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1794();
    }

    goto LABEL_141;
  }

  v40 = *a1;
  v41 = a1[1];
  memset(v82, 0, sizeof(v82));
  v83 = 1065353216;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  if (v40 != v41)
  {
    operator new();
  }

  sub_94BAF4(&v63, 0, 0);
  sub_94A714(v82);
  if (v63 != v64)
  {
    v43 = v66;
    v42 = v67;
    v44 = 0x8E38E38E38E38E39 * ((v64 - v63) >> 4);
    if (v66 == v67)
    {
      if (v44 <= a5)
      {
        *a6 = 0;
        a6[1] = 0;
        a6[2] = 0;
        v69 = a6;
        v70[0] = 0;
        if (v44 <= 0x1C71C71C71C71C7)
        {
          operator new();
        }

        sub_1794();
      }

      v46 = 0;
      v45 = a6;
      goto LABEL_110;
    }

    v45 = a6;
    if (v44 <= a5)
    {
      if (sub_945A1C(a1, v10))
      {
        *a6 = 0;
        a6[1] = 0;
        a6[2] = 0;
        v69 = a6;
        v70[0] = 0;
        if (v64 != v63)
        {
          if (0x8E38E38E38E38E39 * ((v64 - v63) >> 4) <= 0x1C71C71C71C71C7)
          {
            operator new();
          }

          sub_1794();
        }

        goto LABEL_126;
      }

      v43 = v66;
      v42 = v67;
      v44 = 0x8E38E38E38E38E39 * ((v64 - v63) >> 4);
    }

    v46 = v42 - v43;
    if (v44 - 0x71C71C71C71C71C7 * ((v42 - v43) >> 4) + 1 > a5)
    {
LABEL_110:
      *v45 = 0;
      v45[1] = 0;
      v45[2] = 0;
      v69 = v45;
      v70[0] = 0;
      if (v42 != v43)
      {
        if (0x8E38E38E38E38E39 * (v46 >> 4) <= 0x1C71C71C71C71C7)
        {
          operator new();
        }

        sub_1794();
      }

      goto LABEL_126;
    }

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v69 = a6;
    v70[0] = 0;
    if (v42 != v43)
    {
      if (0x8E38E38E38E38E39 * ((v42 - v43) >> 4) <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1794();
    }

    memset(v72, 255, sizeof(v72));
    v73 = 0uLL;
    v74 = 0;
    v75 = 0;
    v77 = 0;
    v78 = 0;
    v76 = 0;
    v79 = 0;
    v81 = 0;
    __p = 0uLL;
    v71 = 0;
    LODWORD(v69) = 4;
    sub_94A210(a6, &v69);
    v48 = SHIBYTE(v81);
    a6[1] = v49;
    if (v48 < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v78) < 0)
      {
        goto LABEL_117;
      }

LABEL_122:
      if ((v75 & 0x80000000) == 0)
      {
        goto LABEL_123;
      }

LABEL_118:
      operator delete(*(&v73 + 1));
      v47 = v71;
      if (v71 != -1)
      {
LABEL_124:
        (off_266DD00[v47])(v84, v70);
      }
    }

    else
    {
      if ((SHIBYTE(v78) & 0x80000000) == 0)
      {
        goto LABEL_122;
      }

LABEL_117:
      operator delete(v76);
      if (v75 < 0)
      {
        goto LABEL_118;
      }

LABEL_123:
      v47 = v71;
      if (v71 != -1)
      {
        goto LABEL_124;
      }
    }

    sub_94BD48(a6, a6[1], v63, v64, 0x8E38E38E38E38E39 * ((v64 - v63) >> 4));
    goto LABEL_126;
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v69 = a6;
  v70[0] = 0;
  if (v67 != v66)
  {
    if (0x8E38E38E38E38E39 * ((v67 - v66) >> 4) <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1794();
  }

LABEL_126:
  v50 = v63;
  if (!v63)
  {
    goto LABEL_141;
  }

  v51 = v63;
  if (v64 == v63)
  {
    goto LABEL_140;
  }

  v52 = v64 - 65;
  while (2)
  {
    if ((v52[64] & 0x80000000) == 0)
    {
      if ((v52[32] & 0x80000000) == 0)
      {
        goto LABEL_132;
      }

LABEL_136:
      operator delete(*(v52 + 9));
      if (*v52 < 0)
      {
        goto LABEL_137;
      }

LABEL_133:
      v54 = *(v52 - 39);
      if (v54 == -1)
      {
        goto LABEL_129;
      }

LABEL_138:
      (off_266DD00[v54])(&v69, v52 - 71);
      goto LABEL_129;
    }

    operator delete(*(v52 + 41));
    if (v52[32] < 0)
    {
      goto LABEL_136;
    }

LABEL_132:
    if ((*v52 & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

LABEL_137:
    operator delete(*(v52 - 23));
    v54 = *(v52 - 39);
    if (v54 != -1)
    {
      goto LABEL_138;
    }

LABEL_129:
    *(v52 - 39) = -1;
    v53 = v52 - 79;
    v52 -= 144;
    if (v53 != v50)
    {
      continue;
    }

    break;
  }

  v51 = v63;
LABEL_140:
  v64 = v50;
  operator delete(v51);
LABEL_141:
  v55 = v66;
  if (!v66)
  {
    return;
  }

  v56 = v66;
  if (v67 == v66)
  {
    goto LABEL_155;
  }

  v57 = v67 - 65;
  while (2)
  {
    if ((v57[64] & 0x80000000) == 0)
    {
      if ((v57[32] & 0x80000000) == 0)
      {
        goto LABEL_147;
      }

LABEL_151:
      operator delete(*(v57 + 9));
      if (*v57 < 0)
      {
        goto LABEL_152;
      }

LABEL_148:
      v59 = *(v57 - 39);
      if (v59 == -1)
      {
        goto LABEL_144;
      }

LABEL_153:
      (off_266DD00[v59])(&v69, v57 - 71);
      goto LABEL_144;
    }

    operator delete(*(v57 + 41));
    if (v57[32] < 0)
    {
      goto LABEL_151;
    }

LABEL_147:
    if ((*v57 & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

LABEL_152:
    operator delete(*(v57 - 23));
    v59 = *(v57 - 39);
    if (v59 != -1)
    {
      goto LABEL_153;
    }

LABEL_144:
    *(v57 - 39) = -1;
    v58 = v57 - 79;
    v57 -= 144;
    if (v58 != v55)
    {
      continue;
    }

    break;
  }

  v56 = v66;
LABEL_155:
  v67 = v55;
  operator delete(v56);
}

void sub_947E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void *);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  *(v9 + 8) = v10;
  sub_936608(va2);
  sub_934E08(va);
  sub_934E08(va1);
  _Unwind_Resume(a1);
}

void sub_947EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v18 = va_arg(va1, void *);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  *(v15 + 8) = v16;
  sub_936608(va1);
  sub_934E08(va);
  _Unwind_Resume(a1);
}

void sub_947F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_934E08(&a13);
  sub_94A714(va);
  sub_934E08(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_948038(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 88));
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = *(a1 + 40);
    if (v2 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(a1 + 56));
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
LABEL_9:
    (off_266DD00[v2])(&v4, a1 + 8);
  }

LABEL_10:
  *(a1 + 40) = -1;
  return a1;
}

double sub_9480E4@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_9A809C(a2, a1, &v11);
  *(a4 + 40) = 0;
  *(a4 + 48) = -1;
  *(a4 + 51) = -1;
  *(a4 + 88) = 0;
  v8 = (a4 + 88);
  *(a4 + 55) = 0;
  *(a4 + 71) = 0;
  *(a4 + 63) = 0;
  *(a4 + 79) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 120) = 0;
  *a4 = 3;
  sub_5410A0(a4 + 8, &v11);
  if ((v17 & 0x80000000) == 0)
  {
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v14);
    v9 = v13;
    if (v13 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(__p);
  if (v15 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = v13;
  if (v13 != -1)
  {
LABEL_7:
    (off_266DD00[v9])(&v18, &v11);
  }

LABEL_8:
  sub_9BC958(a1, a2, a3, &v11);
  if (*(a4 + 111) < 0)
  {
    operator delete(*v8);
  }

  result = *&v11;
  *v8 = v11;
  *(a4 + 104) = v12;
  return result;
}

void sub_94822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_948038(v3);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_948384(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_9483C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v46 = 0;
  v10 = *(a1 + 8);
  if (v10 > 2)
  {
    if (v10 > 4)
    {
      if (v10 == 5)
      {
        sub_948248();
      }

      if (v10 == 6)
      {
        v27 = sub_3AFC64(a3);
        if (*(a1 + 8) == 6)
        {
          sub_3A25A8(v27, *a1, 0, "trip");
          sub_948248();
        }

        sub_5AF20();
      }

      goto LABEL_29;
    }

    if (v10 != 3)
    {
      v11 = sub_3AFB1C(a3);
      if (*(a1 + 8) != 4)
      {
        sub_5AF20();
      }

      v12 = v11;
      v13 = sub_503310(v11, *a1, 0, "access point");
      v14 = (v13 - *v13);
      if (*v14 >= 0x11u)
      {
        v15 = v14[8];
        if (v15)
        {
          v16 = (v13 + v15 + *(v13 + v15));
          v17 = *v16;
          if (v17)
          {
            v18 = 8 * v17;
            v19 = v16 + 1;
            do
            {
              if (*(v12 + 3888) != 1 || sub_2D5204(*(v12 + 3872)))
              {
                operator new();
              }

              v19 += 2;
              v18 -= 8;
            }

            while (v18);
          }
        }
      }

      goto LABEL_29;
    }

    v29 = *a1;
    v30 = sub_3AFB1C(a3);
    v31 = sub_3AFC64(a3);
    sub_9498A4(v29, v30, v31, a2, &v43);
    v32 = *(a1 + 8);
    *v47 = v43;
    v48 = v44;
    if (v32 != 3)
    {
      sub_5AF20();
    }

    v33 = *a1;
    v34 = sub_3AFEE8(a3);
    v35 = sub_3AFB1C(a3);
    sub_949C08(v33, v34, v35, a2, &v43);
    goto LABEL_28;
  }

  switch(v10)
  {
    case 0:
      v28 = 0;
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      goto LABEL_33;
    case 1:
      v36 = *a1;
      v37 = sub_3AFB1C(a3);
      v38 = sub_3AFC64(a3);
      sub_9489C4(v36, v37, v38, a2, &v43);
      v39 = *(a1 + 8);
      *v47 = v43;
      v48 = v44;
      if (v39 != 1)
      {
        sub_5AF20();
      }

      v40 = *a1;
      v41 = sub_3AFEE8(a3);
      v42 = sub_3AFB1C(a3);
      sub_948D28(v40, v41, v42, a2, &v43);
      goto LABEL_28;
    case 2:
      v20 = *a1;
      v21 = sub_3AFB1C(a3);
      v22 = sub_3AFC64(a3);
      sub_949134(v20, v21, v22, a2, &v43);
      v23 = *(a1 + 8);
      *v47 = v43;
      v48 = v44;
      if (v23 != 2)
      {
        sub_5AF20();
      }

      v24 = *a1;
      v25 = sub_3AFEE8(a3);
      v26 = sub_3AFB1C(a3);
      sub_949498(v24, v25, v26, a2, &v43);
LABEL_28:
      *__p = v43;
      v46 = v44;
      break;
  }

LABEL_29:
  if (*(a2 + 1433) == 1)
  {
    sub_945C14(v47, __p, a2, a3, a4, a5);
  }

  else
  {
    sub_946D44(v47, __p, a2, a3, a4, a5);
  }

  v28 = __p[0];
LABEL_33:
  if (v28)
  {
    operator delete(v28);
  }

  if (v47[0])
  {
    operator delete(v47[0]);
  }
}

void sub_948938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  operator delete(v21);
  if (__p)
  {
    operator delete(__p);
    v23 = a21;
    if (a21)
    {
LABEL_6:
      operator delete(v23);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v23 = a21;
    if (a21)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

int8x16_t *sub_9489C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int8x16_t **a5@<X8>)
{
  v10 = sub_502FF8(a2, a1, 0, "stop");
  v11 = (v10 - *v10);
  if (*v11 < 0x39u || (v12 = v11[28]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = (a5 + 1);
LABEL_12:
    v28 = v17;
    v18 = sub_502FF8(a2, a1, 0, "stop");
    v19 = (v18 - *v18);
    if (*v19 >= 0xFu)
    {
      v20 = v19[7];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v17 = v28;
    sub_2D31D4(0, 0, &v29, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
    {
      v30 = *v16;
      sub_2512DC(a5, &v30);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = (a5 + 1);
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  result = sub_94C4B0(v26, *v17, a4, a3);
  if (result != a5[1])
  {
    *v17 = result;
  }

  return result;
}

void sub_948CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = *v12;
  if (*v12)
  {
    *a12 = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_948D28(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int8x16_t **a5@<X8>)
{
  v10 = sub_502FF8(a3, a1, 0, "stop");
  v11 = (v10 - *v10);
  if (*v11 < 0x37u || (v12 = v11[27]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = a5 + 1;
LABEL_12:
    v18 = sub_502FF8(a3, a1, 0, "stop");
    v19 = (v18 - *v18);
    if (*v19 >= 0x11u)
    {
      v20 = v19[8];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2D31D4(0, 0, &v33, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
    {
      v34 = *v16;
      sub_2512DC(a5, &v34);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = a5 + 1;
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  v27 = *v17;
  if (v26 != *v17)
  {
    while (1)
    {
      v28 = v26->i64[0];
      if (*(a4 + 1432) & 1) == 0 && (sub_94C60C(a2, v26->i64[0]))
      {
        break;
      }

      v29 = *(a4 + 1433);
      if (v29 < sub_94C828(a2, v28))
      {
        break;
      }

      v26 = (v26 + 8);
      if (v26 == v27)
      {
        v26 = v27;
        goto LABEL_37;
      }
    }

    if (v26 != v27)
    {
      for (i = &v26->u64[1]; i != v27; ++i)
      {
        v31 = *i;
        if ((*(a4 + 1432) & 1) != 0 || (sub_94C60C(a2, *i) & 1) == 0)
        {
          v32 = *(a4 + 1433);
          if (v32 >= sub_94C828(a2, v31))
          {
            v26->i64[0] = *i;
            v26 = (v26 + 8);
          }
        }
      }
    }
  }

LABEL_37:
  if (v26 != a5[1])
  {
    *v17 = v26;
  }
}

void sub_9490D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void **a12)
{
  v13 = *a12;
  if (*a12)
  {
    *a11 = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t *sub_949134@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int8x16_t **a5@<X8>)
{
  v10 = sub_93D2F4(a2, a1, 0, "hall");
  v11 = (v10 - *v10);
  if (*v11 < 0x2Bu || (v12 = v11[21]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = (a5 + 1);
LABEL_12:
    v28 = v17;
    v18 = sub_93D2F4(a2, a1, 0, "hall");
    v19 = (v18 - *v18);
    if (*v19 >= 0xFu)
    {
      v20 = v19[7];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v17 = v28;
    sub_2D31D4(0, 0, &v29, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
    {
      v30 = *v16;
      sub_2512DC(a5, &v30);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = (a5 + 1);
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  result = sub_94C4B0(v26, *v17, a4, a3);
  if (result != a5[1])
  {
    *v17 = result;
  }

  return result;
}

void sub_949440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = *v12;
  if (*v12)
  {
    *a12 = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_949498(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int8x16_t **a5@<X8>)
{
  v10 = sub_93D2F4(a3, a1, 0, "hall");
  v11 = (v10 - *v10);
  if (*v11 < 0x27u || (v12 = v11[19]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = a5 + 1;
LABEL_12:
    v18 = sub_93D2F4(a3, a1, 0, "hall");
    v19 = (v18 - *v18);
    if (*v19 >= 0x11u)
    {
      v20 = v19[8];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2D31D4(0, 0, &v33, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
    {
      v34 = *v16;
      sub_2512DC(a5, &v34);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = a5 + 1;
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  v27 = *v17;
  if (v26 != *v17)
  {
    while (1)
    {
      v28 = v26->i64[0];
      if (*(a4 + 1432) & 1) == 0 && (sub_94C60C(a2, v26->i64[0]))
      {
        break;
      }

      v29 = *(a4 + 1433);
      if (v29 < sub_94C828(a2, v28))
      {
        break;
      }

      v26 = (v26 + 8);
      if (v26 == v27)
      {
        v26 = v27;
        goto LABEL_37;
      }
    }

    if (v26 != v27)
    {
      for (i = &v26->u64[1]; i != v27; ++i)
      {
        v31 = *i;
        if ((*(a4 + 1432) & 1) != 0 || (sub_94C60C(a2, *i) & 1) == 0)
        {
          v32 = *(a4 + 1433);
          if (v32 >= sub_94C828(a2, v31))
          {
            v26->i64[0] = *i;
            v26 = (v26 + 8);
          }
        }
      }
    }
  }

LABEL_37:
  if (v26 != a5[1])
  {
    *v17 = v26;
  }
}

void sub_949844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void **a12)
{
  v13 = *a12;
  if (*a12)
  {
    *a11 = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t *sub_9498A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int8x16_t **a5@<X8>)
{
  v10 = sub_93D480(a2, a1, 0, "station");
  v11 = (v10 - *v10);
  if (*v11 < 0x2Du || (v12 = v11[22]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = (a5 + 1);
LABEL_12:
    v28 = v17;
    v18 = sub_93D480(a2, a1, 0, "station");
    v19 = (v18 - *v18);
    if (*v19 >= 0xFu)
    {
      v20 = v19[7];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v17 = v28;
    sub_2D31D4(0, 0, &v29, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
    {
      v30 = *v16;
      sub_2512DC(a5, &v30);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = (a5 + 1);
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  result = sub_94C4B0(v26, *v17, a4, a3);
  if (result != a5[1])
  {
    *v17 = result;
  }

  return result;
}

void sub_949BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = *v12;
  if (*v12)
  {
    *a12 = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_949C08(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int8x16_t **a5@<X8>)
{
  v10 = sub_93D480(a3, a1, 0, "station");
  v11 = (v10 - *v10);
  if (*v11 < 0x2Bu || (v12 = v11[21]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = a5 + 1;
LABEL_12:
    v18 = sub_93D480(a3, a1, 0, "station");
    v19 = (v18 - *v18);
    if (*v19 >= 0x11u)
    {
      v20 = v19[8];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2D31D4(0, 0, &v33, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
    {
      v34 = *v16;
      sub_2512DC(a5, &v34);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = a5 + 1;
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  v27 = *v17;
  if (v26 != *v17)
  {
    while (1)
    {
      v28 = v26->i64[0];
      if (*(a4 + 1432) & 1) == 0 && (sub_94C60C(a2, v26->i64[0]))
      {
        break;
      }

      v29 = *(a4 + 1433);
      if (v29 < sub_94C828(a2, v28))
      {
        break;
      }

      v26 = (v26 + 8);
      if (v26 == v27)
      {
        v26 = v27;
        goto LABEL_37;
      }
    }

    if (v26 != v27)
    {
      for (i = &v26->u64[1]; i != v27; ++i)
      {
        v31 = *i;
        if ((*(a4 + 1432) & 1) != 0 || (sub_94C60C(a2, *i) & 1) == 0)
        {
          v32 = *(a4 + 1433);
          if (v32 >= sub_94C828(a2, v31))
          {
            v26->i64[0] = *i;
            v26 = (v26 + 8);
          }
        }
      }
    }
  }

LABEL_37:
  if (v26 != a5[1])
  {
    *v17 = v26;
  }
}

void sub_949FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void **a12)
{
  v13 = *a12;
  if (*a12)
  {
    *a11 = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_94A014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 120);
    do
    {
      v8 = v6 - 120;
      *v4 = *(v6 - 30);
      sub_55F1E8(v4 + 8, (v6 - 7));
      if (*(v6 + 23) < 0)
      {
        sub_325C((v4 + 120), *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 136) = *(v6 + 2);
        *(v4 + 120) = v7;
      }

      v4 = v13 + 144;
      v13 += 144;
      v6 += 9;
    }

    while (v8 + 144 != a3);
  }

  v11 = 1;
  sub_94A11C(v10);
  return v4;
}

void sub_94A0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53E440(v9);
  sub_94A11C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_94A11C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 65;
      do
      {
        if (v4[64] < 0)
        {
          operator delete(*(v4 + 41));
          if ((v4[32] & 0x80000000) == 0)
          {
LABEL_7:
            if ((*v4 & 0x80000000) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_12;
          }
        }

        else if ((v4[32] & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(*(v4 + 9));
        if ((*v4 & 0x80000000) == 0)
        {
LABEL_8:
          v6 = *(v4 - 39);
          if (v6 == -1)
          {
            goto LABEL_4;
          }

LABEL_13:
          (off_266DD00[v6])(&v8, v4 - 71);
          goto LABEL_4;
        }

LABEL_12:
        operator delete(*(v4 - 23));
        v6 = *(v4 - 39);
        if (v6 != -1)
        {
          goto LABEL_13;
        }

LABEL_4:
        *(v4 - 39) = -1;
        v5 = v4 - 79;
        v4 -= 144;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

double sub_94A210(unint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v13 + 1) = 0;
  *v6 = *a2;
  *(v6 + 8) = 0;
  *(v6 + 40) = -1;
  v7 = *(a2 + 40);
  if (v7 != -1)
  {
    v14 = v6 + 8;
    (off_266DD28[v7])(&v14, a2 + 8);
    *(v6 + 40) = v7;
  }

  *(v6 + 48) = *(a2 + 48);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 88) = *(a2 + 88);
  *(v6 + 104) = *(a2 + 104);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  *(v6 + 112) = *(a2 + 112);
  v8 = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  *(v6 + 120) = v8;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  *&v13 = v6 + 144;
  sub_94A43C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  *&result = v6 + 144;
  *(a1 + 1) = v13;
  if (v11)
  {
    operator delete(v11);
    *&result = v6 + 144;
  }

  return result;
}

void sub_94A3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_94A404(va);
  _Unwind_Resume(a1);
}

uint64_t sub_94A404(uint64_t a1)
{
  sub_94A630(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_94A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2 + 8;
    do
    {
      v11 = v7 - 8;
      *v4 = *(v7 - 8);
      *(v4 + 8) = 0;
      *(v4 + 40) = -1;
      v12 = *(v7 + 32);
      v13 = v4;
      if (v12 != -1)
      {
        v20 = v4 + 8;
        (off_266DD28[v12])(&v20, v7);
        *(v4 + 40) = v12;
        v13 = v19;
      }

      *(v4 + 48) = *(v7 + 40);
      v8 = *(v7 + 48);
      *(v4 + 72) = *(v7 + 64);
      *(v4 + 56) = v8;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      *(v4 + 80) = *(v7 + 72);
      v9 = *(v7 + 80);
      *(v4 + 104) = *(v7 + 96);
      *(v4 + 88) = v9;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 80) = 0;
      *(v4 + 112) = *(v7 + 104);
      v10 = *(v7 + 112);
      *(v4 + 136) = *(v7 + 128);
      *(v4 + 120) = v10;
      *(v7 + 120) = 0;
      *(v7 + 128) = 0;
      *(v7 + 112) = 0;
      v4 = v13 + 144;
      v19 = v13 + 144;
      v7 += 144;
    }

    while (v11 + 144 != a3);
    v17 = 1;
    while (v6 != a3)
    {
      if (*(v6 + 143) < 0)
      {
        operator delete(*(v6 + 120));
        if ((*(v6 + 111) & 0x80000000) == 0)
        {
LABEL_11:
          if ((*(v6 + 79) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }
      }

      else if ((*(v6 + 111) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(*(v6 + 88));
      if ((*(v6 + 79) & 0x80000000) == 0)
      {
LABEL_12:
        v14 = *(v6 + 40);
        if (v14 == -1)
        {
          goto LABEL_8;
        }

LABEL_17:
        (off_266DD00[v14])(&v20, v6 + 8);
        goto LABEL_8;
      }

LABEL_16:
      operator delete(*(v6 + 56));
      v14 = *(v6 + 40);
      if (v14 != -1)
      {
        goto LABEL_17;
      }

LABEL_8:
      *(v6 + 40) = -1;
      v6 += 144;
    }
  }

  return sub_94A11C(v16);
}

void sub_94A630(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 33) & 0x80000000) == 0)
      {
LABEL_6:
        if ((*(i - 65) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(i - 33) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 56));
    if ((*(i - 65) & 0x80000000) == 0)
    {
LABEL_7:
      v5 = *(i - 104);
      if (v5 == -1)
      {
        goto LABEL_3;
      }

LABEL_12:
      (off_266DD00[v5])(&v6, i - 136);
      goto LABEL_3;
    }

LABEL_11:
    operator delete(*(i - 88));
    v5 = *(i - 104);
    if (v5 != -1)
    {
      goto LABEL_12;
    }

LABEL_3:
    *(i - 104) = -1;
  }
}

uint64_t sub_94A714(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 159) < 0)
      {
        operator delete(v2[17]);
        if ((*(v2 + 127) & 0x80000000) == 0)
        {
LABEL_6:
          if ((*(v2 + 95) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_11;
        }
      }

      else if ((*(v2 + 127) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(v2[13]);
      if ((*(v2 + 95) & 0x80000000) == 0)
      {
LABEL_7:
        v4 = *(v2 + 14);
        if (v4 == -1)
        {
          goto LABEL_3;
        }

LABEL_12:
        (off_266DD00[v4])(&v7, v2 + 3);
        goto LABEL_3;
      }

LABEL_11:
      operator delete(v2[9]);
      v4 = *(v2 + 14);
      if (v4 != -1)
      {
        goto LABEL_12;
      }

LABEL_3:
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t *sub_94A7F4(void *a1, uint64_t a2)
{
  v4 = sub_94AA10(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    v11 = (a2 + 120);
    if (v7.u32[0] < 2uLL)
    {
      v12 = *&v5 - 1;
      while (1)
      {
        v13 = v10[1];
        if (v13 == v6)
        {
          if (*(v10 + 4) == *a2 && sub_55DD5C((v10 + 3), a2 + 8))
          {
            v14 = *(v10 + 159);
            if (v14 >= 0)
            {
              v15 = *(v10 + 159);
            }

            else
            {
              v15 = v10[18];
            }

            v16 = *(a2 + 143);
            v17 = v16;
            if ((v16 & 0x80u) != 0)
            {
              v16 = *(a2 + 128);
            }

            if (v15 == v16)
            {
              v18 = v14 >= 0 ? v10 + 17 : v10[17];
              v19 = (v17 >= 0 ? a2 + 120 : *v11);
              if (!memcmp(v18, v19, v15))
              {
                return v10;
              }
            }
          }
        }

        else if ((v13 & v12) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v21 = v10[1];
      if (v21 == v6)
      {
        if (*(v10 + 4) == *a2 && sub_55DD5C((v10 + 3), a2 + 8))
        {
          v22 = *(v10 + 159);
          if (v22 >= 0)
          {
            v23 = *(v10 + 159);
          }

          else
          {
            v23 = v10[18];
          }

          v24 = *(a2 + 143);
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = *(a2 + 128);
          }

          if (v23 == v24)
          {
            v26 = v22 >= 0 ? v10 + 17 : v10[17];
            v27 = (v25 >= 0 ? a2 + 120 : *v11);
            if (!memcmp(v26, v27, v23))
            {
              return v10;
            }
          }
        }
      }

      else
      {
        if (v21 >= *&v5)
        {
          v21 %= *&v5;
        }

        if (v21 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

uint64_t sub_94AA10(uint64_t a1, unsigned int *a2)
{
  v14 = 3735928559;
  v3 = *a2;
  sub_55F1E8(v8, (a2 + 2));
  if (*(a2 + 143) < 0)
  {
    sub_325C(__p, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    *__p = *(a2 + 30);
    v7 = *(a2 + 17);
  }

  v14 = (v3 + 0x388152A534) ^ 0xDEADBEEFLL;
  if (SHIBYTE(v7) < 0)
  {
    sub_325C(&v15, __p[0], __p[1]);
  }

  else
  {
    v15 = *__p;
    v16 = v7;
  }

  sub_94ABD4(&v14, v8, &v15);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v12);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_11:
    v4 = v9;
    if (v9 == -1)
    {
      return v14;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v10);
  v4 = v9;
  if (v9 != -1)
  {
LABEL_17:
    (off_266DD00[v4])(&v15, v8);
  }

  return v14;
}

void sub_94AB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if ((a14 & 0x80000000) == 0)
  {
    sub_53E440(&a15);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_53E440(&a15);
  _Unwind_Resume(a1);
}

void sub_94ABD4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_55F1E8(v8, a2);
  *a1 ^= sub_94AD3C(&v15, v8) + (*a1 << 6) + (*a1 >> 2) + 2654435769u;
  if ((v14 & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v11);
    v5 = v10;
    if (v10 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(__p);
  if (v12 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v10;
  if (v10 != -1)
  {
LABEL_7:
    (off_266DD00[v5])(&v16, v8);
  }

LABEL_8:
  if (*(a3 + 23) < 0)
  {
    sub_325C(v8, *a3, *(a3 + 8));
  }

  else
  {
    *v8 = *a3;
    v9 = *(a3 + 16);
  }

  if (v9 >= 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = v8[0];
  }

  if (v9 >= 0)
  {
    v7 = HIBYTE(v9);
  }

  else
  {
    v7 = v8[1];
  }

  *a1 ^= sub_AAD8(&v16, v6, v7) + 2654435769u + (*a1 << 6) + (*a1 >> 2);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

unint64_t sub_94AD3C(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 72) + 0x388152A534) ^ 0xDEADBEEFLL;
  v4 = (*(a2 + 104) + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v5 = *(a2 + 32);
  if (v5 == 2)
  {
    v6 = 2654435770;
  }

  else
  {
    v6 = 2654435769;
  }

  v7 = (v6 + (v4 << 6) + (v4 >> 2)) ^ v4;
  if (v5 == 3)
  {
    v8 = 2654435770;
  }

  else
  {
    v8 = 2654435769;
  }

  if (v5 == 4)
  {
    v9 = 2654435770;
  }

  else
  {
    v9 = 2654435769;
  }

  if (v5 == 1)
  {
    v10 = 2654435770;
  }

  else
  {
    v10 = 2654435769;
  }

  v11 = (v8 + (((v10 + (v7 << 6) + (v7 >> 2)) ^ v7) << 6) + (((v10 + (v7 << 6) + (v7 >> 2)) ^ v7) >> 2)) ^ (v10 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v12 = (v9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  v18 = v12;
  switch(v5)
  {
    case 1:
      *__p = *a2;
      if (*(a2 + 31) < 0)
      {
        sub_325C(&__p[8], *(a2 + 8), *(a2 + 16));
      }

      else
      {
        *&__p[8] = *(a2 + 8);
        v20 = *(a2 + 24);
      }

LABEL_32:
      v12 ^= sub_94B14C(&v21, __p) + 2654435769u + (v12 << 6) + (v12 >> 2);
      if (SHIBYTE(v20) < 0)
      {
        v16 = *&__p[8];
LABEL_34:
        operator delete(v16);
        return v12;
      }

      return v12;
    case 2:
      v13 = *(a2 + 8);
      *__p = *a2;
      *&__p[8] = 0;
      *&__p[16] = 0;
      v20 = 0;
      v14 = *(a2 + 16);
      if (v14 != v13)
      {
        if (((v14 - v13) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v15 = sub_94B2A0(&v21, __p) + 2654435769 + (v12 << 6) + (v12 >> 2);
      if (*&__p[8])
      {
        *&__p[16] = *&__p[8];
        operator delete(*&__p[8]);
      }

      v12 ^= v15;
      if (*(a2 + 40) == -1)
      {
        return v12;
      }

      *__p = *(a2 + 40);
      if (*(a2 + 71) < 0)
      {
        sub_325C(&__p[8], *(a2 + 48), *(a2 + 56));
      }

      else
      {
        *&__p[8] = *(a2 + 48);
        v20 = *(a2 + 64);
      }

      goto LABEL_32;
    case 3:
      sub_94B010(&v18, a2);
      return v18;
    case 4:
      if (*(a2 + 23) < 0)
      {
        sub_325C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        *&__p[16] = *(a2 + 16);
      }

      v21 = 3735928559;
      sub_94B010(&v21, __p);
      v12 ^= v21 + 2654435769 + (v12 << 6) + (v12 >> 2);
      if ((__p[23] & 0x80000000) != 0)
      {
        v16 = *__p;
        goto LABEL_34;
      }

      break;
  }

  return v12;
}

void sub_94AFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_94B010(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v7 = *a2;
    v8 = *(a2 + 16);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
LABEL_3:
      *__p = *v7;
      v10 = v8;
      goto LABEL_6;
    }
  }

  sub_325C(__p, v7[0], v7[1]);
LABEL_6:
  if (v10 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v10 >= 0)
  {
    v4 = HIBYTE(v10);
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_AAD8(&v11, v3, v4);
  if (SHIBYTE(v10) < 0)
  {
    v6 = v5;
    operator delete(__p[0]);
    v5 = v6;
  }

  *a1 ^= ((v5 + 0x388152A534) ^ 0xDEADBEEF) + (*a1 << 6) + (*a1 >> 2) + 2654435769u;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_94B12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_94B14C(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C(__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    *__p = *(a2 + 2);
    v14 = *(a2 + 3);
  }

  if (v14 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v14 >= 0)
  {
    v5 = HIBYTE(v14);
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_AAD8(&v15, v4, v5);
  if (SHIBYTE(v14) < 0)
  {
    v7 = v6;
    operator delete(__p[0]);
    v6 = v7;
  }

  v8 = ((((v3 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v3 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + v6 + 2654435769u) ^ (v3 + 0x388152A534) ^ 0xDEADBEEFLL;
  v9 = a2[1];
  v10 = ((v9 - 0x61C8860E9D9A5872) << 6) + BYTE2(v9) + ((v9 - 0x61C8860E9D9A5872) >> 2) - 0x61C8864680B583EDLL;
  v11 = (v10 << 6) + BYTE1(v9) + (v10 >> 2) - 0x61C8864680B583EDLL;
  return ((v8 >> 2) + (v9 >> 24) + (v11 >> 2) + ((v11 + v8) << 6) - 0x61C88645E27E0A34) ^ v8;
}