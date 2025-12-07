void sub_2714ACA6C(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
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
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0((v3 + 16), v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714ACF44(uint64_t a1, uint64_t a2)
{
  sub_2714AA44C(a2, &__p);
  v4 = *(a1 + 104);
  *(a1 + 88) = "context_enable_state_changes";
  *(a1 + 96) = 28;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2714AD0B8(a1, &__p);
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  sub_2714AAAF4(&v12, __p.i64[0], 0, __p.i64[1]);
  v5 = a2 + 8;
  sub_271167834(a2, *(a2 + 8));
  v6 = v13;
  *a2 = v12;
  *(a2 + 8) = v6;
  v7 = v14;
  *(a2 + 16) = v14;
  if (v7)
  {
    *(v6 + 16) = v5;
    v12 = &v13;
    v13 = 0;
    v14 = 0;
    sub_271167834(&v12, 0);
    v8 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  else
  {
    *a2 = v5;
    sub_271167834(&v12, v6);
    v8 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  v9 = __p.i64[1];
  v10 = v8;
  if (__p.i64[1] != v8)
  {
    do
    {
      v11 = *(v9 - 9);
      v9 -= 4;
      if (v11 < 0)
      {
        operator delete(*v9);
      }
    }

    while (v9 != v8);
    v10 = __p.i64[0];
  }

  __p.i64[1] = v8;
  operator delete(v10);
}

void sub_2714AD084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12)
{
  sub_271167834(&a9, a10);
  sub_2711BEA2C(&a12);
  _Unwind_Resume(a1);
}

void sub_2714AD0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AD0B8(uint64_t a1, void *a2)
{
  v20[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v20);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 32);
  v6 = *v5;
  if (v6 == 2)
  {
    v7 = (*(*(v5 + 1) + 8) - **(v5 + 1)) >> 4;
  }

  else if (v6 == 1)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v5 + 1) + 8) - **(v5 + 1)) >> 3);
  }

  else
  {
    if (!*v5)
    {
      v7 = 0;
      v8 = (a2 + 1);
      v9 = a2[1];
      v10 = *a2;
      v11 = (v9 - *a2) >> 5;
      goto LABEL_13;
    }

    v7 = 1;
  }

  v8 = (a2 + 1);
  v9 = a2[1];
  v10 = *a2;
  v11 = (v9 - *a2) >> 5;
  if (v7 > v11)
  {
    sub_2714AD314(a2, v7 - v11);
    v13 = a2;
    v12 = *a2;
    if (v12 == v13[1])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (v11 <= v7)
  {
    v12 = *a2;
    if (v12 == v9)
    {
      goto LABEL_24;
    }

LABEL_19:
    v16 = *(a1 + 32);
    v20[0] = v12;
    v20[1] = v12 + 24;
    v21 = v16;
    v17 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v17;
    sub_27182D194(a1 + 40, &v21);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    if (*(a1 + 104) == 1)
    {
      *(a1 + 104) = 0;
    }

    v21 = a1;
    sub_2714AD470(v20, &v21);
  }

  v14 = (v10 + 32 * v7);
  while (v9 != v14)
  {
    v15 = *(v9 - 9);
    v9 -= 4;
    if (v15 < 0)
    {
      operator delete(*v9);
    }
  }

  *v8 = v14;
  v12 = *a2;
  if (v12 != v14)
  {
    goto LABEL_19;
  }

LABEL_24:
  v18 = *(a1 + 48);
  v19 = *(a1 + 72);
  *(a1 + 32) = *(v18 - 8);
  *(a1 + 112) = *(v19 - 8);
  *(a1 + 48) = v18 - 8;
  *(a1 + 72) = v19 - 8;
}

void sub_2714AD314(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v3) >> 5)
  {
    if (a2)
    {
      v9 = 32 * a2;
      v10 = v3 + 32 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 24) = 0;
        *(v3 + 16) = 0;
        v3 += 32;
        v9 -= 32;
      }

      while (v9);
      v3 = v10;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = (v3 - *a1) >> 5;
    v6 = v5 + a2;
    if ((v5 + a2) >> 59)
    {
      sub_271135560();
    }

    v7 = v4 - *a1;
    if (v7 >> 4 > v6)
    {
      v6 = v7 >> 4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 59))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v11 = 32 * v5;
    v12 = 32 * a2;
    v13 = 32 * v5 + 32 * a2;
    v14 = 32 * v5;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 24) = 0;
      *(v14 + 16) = 0;
      v14 += 32;
      v12 -= 32;
    }

    while (v12);
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v11 - v16;
    memcpy((v11 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_2714AD470(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_27182D6C4(*a2);
  ++v4[14];
  v10 = 0;
  v9 = 0uLL;
  sub_2715D6E6C(v5, &v9);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  v6 = v9;
  *(v3 + 16) = v10;
  *v3 = v6;
  v7 = *a2;
  v8 = sub_27182D6C4(v7);
  ++v7[14];
  v10 = 0;
  v9 = 0uLL;
  sub_2715D6E6C(v8, &v9);
  operator new();
}

void sub_2714AD5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a17 = 0;
  sub_27184D728(&a17, v23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714AD638(uint64_t *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v43;
        v11 = __p;
        if (v43 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v43 = v9;
        operator delete(v11);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v17 = v30;
    v15 = v29;
    if (v30 == v29)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v29;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v43;
      v7 = __p;
      if (v43 != __p)
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
        v7 = __p;
      }

      v43 = v5;
      operator delete(v7);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v14 = v30;
  v15 = v29;
  if (v30 != v29)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v30 = v13;
  operator delete(v15);
LABEL_66:
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v20[0]) = 6;
  sub_27183FB7C(a2[6], v20);
  sub_2713BF6F4(v20, a2, v3 + 16, LODWORD(v20[0]));
  return sub_2714ADA40(v20, a2, v3 + 200);
}

uint64_t sub_2714ADA40(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v8) = 1;
  sub_27183FB7C(a2[6], &v8);
  v9 = 0;
  sub_27183FF6C(a2[6], &v9);
  *&v8 = (*(a2[2] + 32))(a2 + 2);
  *(&v8 + 1) = v9;
  sub_2713BF82C((a2 + 3), &v8);
  sub_2714ADB54(a2, a3);
  v5 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(a2[2] + 40))(a2 + 2, v7);
  }

  a2[4] -= 16;
  return result;
}

void sub_2714ADB54(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  sub_27183FF6C(*(a1 + 48), &v8);
  sub_271167834(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  for (i = v8; i; --i)
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    v6 = 0;
    sub_2718403E0(*(a1 + 48), __p);
    v9 = 0;
    sub_27183F824(*(a1 + 48), &v9);
    v7 = v9;
    sub_27123BAFC(a2, __p, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714ADC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714ADC38(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
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
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713C0E9C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0((v3 + 16), v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714AE110(uint64_t a1, uint64_t a2)
{
  sub_2714AA44C(a2, &__p);
  v4 = *(a1 + 104);
  *(a1 + 88) = "context_enable_state_changes";
  *(a1 + 96) = 28;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2714AE284(a1, &__p);
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  sub_2714AAAF4(&v12, __p.i64[0], 0, __p.i64[1]);
  v5 = a2 + 8;
  sub_271167834(a2, *(a2 + 8));
  v6 = v13;
  *a2 = v12;
  *(a2 + 8) = v6;
  v7 = v14;
  *(a2 + 16) = v14;
  if (v7)
  {
    *(v6 + 16) = v5;
    v12 = &v13;
    v13 = 0;
    v14 = 0;
    sub_271167834(&v12, 0);
    v8 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  else
  {
    *a2 = v5;
    sub_271167834(&v12, v6);
    v8 = __p.i64[0];
    if (!__p.i64[0])
    {
      return;
    }
  }

  v9 = __p.i64[1];
  v10 = v8;
  if (__p.i64[1] != v8)
  {
    do
    {
      v11 = *(v9 - 9);
      v9 -= 4;
      if (v11 < 0)
      {
        operator delete(*v9);
      }
    }

    while (v9 != v8);
    v10 = __p.i64[0];
  }

  __p.i64[1] = v8;
  operator delete(v10);
}

void sub_2714AE250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void **a12)
{
  sub_271167834(&a9, a10);
  sub_2711BEA2C(&a12);
  _Unwind_Resume(a1);
}

void sub_2714AE270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714AE284(uint64_t a1, void *a2)
{
  v20[0] = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v20);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 32);
  v6 = *v5;
  if (v6 == 2)
  {
    v7 = (*(*(v5 + 1) + 8) - **(v5 + 1)) >> 4;
  }

  else if (v6 == 1)
  {
    v7 = *(*(v5 + 1) + 16);
  }

  else
  {
    if (!*v5)
    {
      v7 = 0;
      v8 = (a2 + 1);
      v9 = a2[1];
      v10 = *a2;
      v11 = (v9 - *a2) >> 5;
      goto LABEL_13;
    }

    v7 = 1;
  }

  v8 = (a2 + 1);
  v9 = a2[1];
  v10 = *a2;
  v11 = (v9 - *a2) >> 5;
  if (v7 > v11)
  {
    sub_2714AD314(a2, v7 - v11);
    v13 = a2;
    v12 = *a2;
    if (v12 == v13[1])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (v11 <= v7)
  {
    v12 = *a2;
    if (v12 == v9)
    {
      goto LABEL_24;
    }

LABEL_19:
    v16 = *(a1 + 32);
    v20[0] = v12;
    v20[1] = v12 + 24;
    v21 = v16;
    v17 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v17;
    sub_27182D194(a1 + 40, &v21);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    if (*(a1 + 104) == 1)
    {
      *(a1 + 104) = 0;
    }

    v21 = a1;
    sub_2714AE4CC(v20, &v21);
  }

  v14 = (v10 + 32 * v7);
  while (v9 != v14)
  {
    v15 = *(v9 - 9);
    v9 -= 4;
    if (v15 < 0)
    {
      operator delete(*v9);
    }
  }

  *v8 = v14;
  v12 = *a2;
  if (v12 != v14)
  {
    goto LABEL_19;
  }

LABEL_24:
  v18 = *(a1 + 48);
  v19 = *(a1 + 72);
  *(a1 + 32) = *(v18 - 8);
  *(a1 + 112) = *(v19 - 8);
  *(a1 + 48) = v18 - 8;
  *(a1 + 72) = v19 - 8;
}

void sub_2714AE4CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_27182D2AC(*a2);
  ++v4[14];
  v10 = 0;
  v9 = 0uLL;
  sub_2715D666C(v5, &v9);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  v6 = v9;
  *(v3 + 16) = v10;
  *v3 = v6;
  v7 = *a2;
  v8 = sub_27182D2AC(v7);
  ++v7[14];
  v10 = 0;
  v9 = 0uLL;
  sub_2715D666C(v8, &v9);
  operator new();
}

void sub_2714AE610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a17 = 0;
  sub_27184D728(&a17, v23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714AE694(uint64_t *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_2713DA430(v3 + 16, &v22);
      sub_2713B2524(v36, &v22);
      sub_2713E031C(v3 + 16, v36);
      if (v48 == 1)
      {
        v5 = __p;
        if (__p)
        {
          v6 = v47;
          v7 = __p;
          if (v47 != __p)
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
            v7 = __p;
          }

          v47 = v5;
          operator delete(v7);
        }
      }

      if (v45 == 1 && v44 < 0)
      {
        operator delete(v43);
      }

      if (v42 == 1 && v41 < 0)
      {
        operator delete(v40);
      }

      if (v39 == 1 && v38 < 0)
      {
        operator delete(v37);
      }

      if (v35 != 1)
      {
        goto LABEL_66;
      }

      v13 = v33;
      if (!v33)
      {
        goto LABEL_66;
      }

      v14 = v34;
      v15 = v33;
      if (v34 == v33)
      {
LABEL_65:
        v34 = v13;
        operator delete(v15);
LABEL_66:
        if (v32 == 1 && v31 < 0)
        {
          operator delete(v30);
        }

        if (v29 == 1 && v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(v24);
        }

        if (*(v3 + 192))
        {
          sub_2711308D4();
        }

        goto LABEL_76;
      }

      while (1)
      {
        v16 = v14;
        if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
        {
          operator delete(*(v14 - 8));
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
LABEL_37:
            if (*(v16 - 73) < 0)
            {
              operator delete(*v14);
            }
          }
        }

        else
        {
          v14 -= 12;
          if (*(v16 - 72) == 1)
          {
            goto LABEL_37;
          }
        }

        if (v14 == v13)
        {
          goto LABEL_64;
        }
      }
    }

    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), &v22);
    sub_2713B2524(v36, &v22);
    sub_2713E031C(v3 + 16, v36);
    if (v48 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v47;
        v11 = __p;
        if (v47 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v47 = v9;
        operator delete(v11);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v35 != 1)
    {
      goto LABEL_66;
    }

    v13 = v33;
    if (!v33)
    {
      goto LABEL_66;
    }

    v17 = v34;
    v15 = v33;
    if (v34 == v33)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v33;
        goto LABEL_65;
      }
    }
  }

LABEL_76:
  LODWORD(v22) = 6;
  sub_27183A9AC(a2, &v22);
  if (v22 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v22;
  }

  if (v22 > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, &v22);
      if (SHIBYTE(v24) < 0)
      {
        if (v23 == 1 && *(a2 + 72) == *v22)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v24) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v24) == 1 && *(a2 + 72) == v22)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v24) < 0)
      {
LABEL_93:
        operator delete(v22);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(&v22, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v22) = 1;
  sub_27183A9AC(a2, &v22);
  sub_2714AEC1C(a2, v3 + 200);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, &v22);
    if (SHIBYTE(v24) < 0)
    {
      if (v23 == 1 && *(a2 + 72) == *v22)
      {
LABEL_105:
        v21 = 0;
        if (SHIBYTE(v24) < 0)
        {
          goto LABEL_108;
        }

        goto LABEL_96;
      }
    }

    else if (SHIBYTE(v24) == 1 && *(a2 + 72) == v22)
    {
      goto LABEL_105;
    }

    v21 = 1;
    if (SHIBYTE(v24) < 0)
    {
LABEL_108:
      operator delete(v22);
    }

LABEL_96:
    if ((v21 & 1) == 0)
    {
      return;
    }
  }
}

void sub_2714AEC1C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  sub_27183B6AC(a1, &v8);
  sub_271167834(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  for (i = v8; i; --i)
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    v6 = 0;
    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, &v9);
      if (SHIBYTE(v6) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v9;
      v6 = v10;
      ++*(a1 + 104);
    }

    LOBYTE(v9) = 0;
    sub_271839D90(a1, &v9);
    v7 = v9;
    sub_27123BAFC(a2, __p, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714AED3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AED5C(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v19);
    sub_2713B2524(v31, v19);
    sub_2713E031C(v3 + 16, v31);
    if (v43 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v42;
        v11 = __p;
        if (v42 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v42 = v9;
        operator delete(v11);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v17 = v29;
    v15 = v28;
    if (v29 == v28)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v28;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v19);
  sub_2713B2524(v31, v19);
  sub_2713E031C(v3 + 16, v31);
  if (v43 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v42;
      v7 = __p;
      if (v42 != __p)
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
        v7 = __p;
      }

      v42 = v5;
      operator delete(v7);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v14 = v29;
  v15 = v28;
  if (v29 != v28)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v29 = v13;
  operator delete(v15);
LABEL_66:
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  sub_2713C49D0(v19, a2, v3 + 16);
  sub_2714AF14C(v19, a2, v3 + 200);
}

void sub_2714AF14C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[6] = v3 + 4;
  sub_27173170C(a2);
  sub_2714AF210(a2, a3);
  v9 = a2[12];
  v10 = a2[9];
  a2[6] = *(v9 - 8) + *(v10 - 8) + 8;
  a2[9] = v10 - 8;
  a2[12] = v9 - 8;
}

void sub_2714AF210(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 8;
  v9 = (a2 + 8);
  sub_271167834(a2, *(a2 + 8));
  *a2 = v9;
  *(a2 + 16) = 0;
  for (*v9 = 0; v8; --v8)
  {
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    v15 = 0;
    sub_2717318E8(a1, __p);
    v10 = a1[6];
    if (a1[7] <= v10)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v12, "Not enough data to read");
      v12->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(v12, off_279E2F400, MEMORY[0x277D825F8]);
    }

    v11 = *(a1[3] + v10);
    a1[6] = v10 + 1;
    v16 = v11;
    sub_27123BAFC(a2, __p, __p);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714AF390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AF3C4(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v8 = 1;
    (*(*a2 + 104))(a2, &v8);
    if (v8 >= 2)
    {
      v7 = v8;
      if ((atomic_load_explicit(&qword_280878950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878950))
      {
        sub_2718519B4(qword_280878938, "cv3d::kit::viz::UpdateEnabledContextsSample]", 0x2BuLL);
        __cxa_guard_release(&qword_280878950);
        sub_271847D5C(qword_280878938, v7, 1);
      }

      sub_271847D5C(qword_280878938, v7, 1);
    }

    v5 = *a1;
  }

  if (v5 <= 0)
  {
    sub_2714AF558(a2, a3);
  }

  else
  {
    (*(*a2 + 16))(a2);
    sub_2714AF558(a2, a3);
    (*(*a2 + 24))(a2);
  }
}

void sub_2714AF558(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  (*(*a1 + 120))(a1, &v8);
  sub_271167834(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  for (i = v8; i; --i)
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    v6 = 0;
    (*(*a1 + 144))(a1, __p);
    v9 = 0;
    (*(*a1 + 80))(a1, &v9);
    v7 = v9;
    sub_27123BAFC(a2, __p, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2714AF678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714AF698(uint64_t a1)
{
  *a1 = &unk_288131B88;
  sub_271134CBC(a1 + 96);
  *(a1 + 8) = &unk_288131BD0;
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2714AF768(uint64_t a1)
{
  *a1 = &unk_288131B88;
  sub_271134CBC(a1 + 96);
  *(a1 + 8) = &unk_288131BD0;
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714AF868(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808789B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808789B0))
    {
      sub_2714B12F0();
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_2711C1280(&xmmword_280878998, "{", __p, ",", v2 + 72, "}");
}

void sub_2714AF968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714AF984(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.net");
  *(a1 + 24) = 4;
}

uint64_t sub_2714AF9FC(uint64_t a1)
{
  *a1 = &unk_288131BD0;
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2714AFAA8(uint64_t a1)
{
  *a1 = &unk_288131B88;
  sub_271134CBC(a1 + 96);
  *(a1 + 8) = &unk_288131BD0;
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2714AFB78(uint64_t a1)
{
  *a1 = &unk_288131B88;
  sub_271134CBC(a1 + 96);
  *(a1 + 8) = &unk_288131BD0;
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714AFC68(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878990, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878990))
    {
      sub_2714B1058();
    }
  }

  sub_2714B0B0C(qword_280878978, "{", a1 + 8, ",", a1 + 80, "}");
}

void sub_2714AFD1C(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2714AFD48(uint64_t a1)
{
  *a1 = &unk_288131BD0;
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714AFE14(void *a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_288131BF0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {

      return sub_2714AFF64(a1, result);
    }
  }

  return result;
}

uint64_t sub_2714AFEB0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878970))
  {
    sub_2718519B4(qword_280878958, "cv3d::kit::viz::UpdateEnabledLoggers]", 0x24uLL);
    __cxa_guard_release(&qword_280878970);
  }

  return sub_2714B00CC(qword_280878958, "{", (a1 + 8), "}");
}

BOOL sub_2714AFF64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v7 = 0;
    do
    {
      v8 = v4 + v7;
      v9 = v3 + v7;
      v10 = *(v3 + v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v3 + v7 + 23);
      }

      else
      {
        v11 = *(v3 + v7 + 8);
      }

      v12 = *(v8 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v8 + 8);
      }

      if (v11 != v12)
      {
        return 0;
      }

      v14 = v10 >= 0 ? (v3 + v7) : *v9;
      v15 = v13 >= 0 ? (v4 + v7) : *v8;
      if (memcmp(v14, v15, v11) || *(v9 + 24) != *(v8 + 24))
      {
        return 0;
      }

      v7 += 32;
    }

    while (v3 + v7 != v2);
  }

  v17 = *(a2 + 56);
  v18 = *(a1 + 56);
  result = v18 == v17;
  if (v18 == v17 && v18 != 0)
  {
    v21 = *(a1 + 55);
    if (v21 >= 0)
    {
      v22 = *(a1 + 55);
    }

    else
    {
      v22 = *(a1 + 40);
    }

    v23 = *(a2 + 55);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a2 + 40);
    }

    if (v22 == v23)
    {
      if (v21 >= 0)
      {
        v25 = (a1 + 32);
      }

      else
      {
        v25 = *(a1 + 32);
      }

      if (v24 >= 0)
      {
        v26 = (a2 + 32);
      }

      else
      {
        v26 = *(a2 + 32);
      }

      return memcmp(v25, v26, v22) == 0;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2714B00CC(__int128 *a1, const char *a2, const char **a3, const char *a4)
{
  v10 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v8, *a1, *(a1 + 1));
  }

  else
  {
    v8 = *a1;
    v9 = *(a1 + 2);
  }

  v10 = 1;
  v14 = &v8;
  v15 = a2;
  v16 = &v8;
  v17 = a2;
  v18 = a2;
  sub_271136F58(&v16, &v8);
  v11[0] = a3;
  v11[1] = a3 + 3;
  v14 = &v8;
  v15 = "{";
  v16 = &v8;
  v17 = "{";
  v18 = "{";
  if (v10 == -1 || (v13 = &v14, (*(&off_2881319B8 + v10))(&v13, &v8), LOBYTE(v14) = 1, v15 = &v8, v16 = &v12, sub_2714B0314(v11, &v14), v14 = &v8, v15 = "}", v16 = &v8, v17 = "}", v18 = "}", v10 == -1))
  {
    sub_2711308D4();
  }

  v13 = &v14;
  (*(&off_2881319B8 + v10))(&v13, &v8);
  v14 = &v8;
  v15 = a4;
  v16 = &v8;
  v17 = a4;
  v18 = a4;
  if (v10 == -1)
  {
    sub_2711308D4();
  }

  v11[0] = &v14;
  (*(&off_2881319B8 + v10))(v11, &v8);
  if (v10 == -1)
  {
    sub_2711308D4();
  }

  v14 = v11;
  result = (off_288131958[v10])(&v14, &v8);
  if (v10 != -1)
  {
    return (off_288131940[v10])(&v14, &v8);
  }

  return result;
}

uint64_t sub_2714B0314(const char ***a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    v12 = *(a2 + 8);
    v13 = ",";
    v14 = v12;
    v15 = ",";
    v16 = ",";
    v5 = *(v12 + 24);
    if (v5 == -1)
    {
      goto LABEL_13;
    }

    v17 = &v12;
    (*(&off_2881319B8 + v5))(&v17);
  }

  *a2 = 0;
  sub_2714B0474(&v12, *(a2 + 8), v4);
  v6 = a1[1];
  if ((*a2 & 1) == 0)
  {
    v12 = *(a2 + 8);
    v13 = ",";
    v14 = v12;
    v15 = ",";
    v16 = ",";
    v7 = *(v12 + 24);
    if (v7 == -1)
    {
      goto LABEL_13;
    }

    v17 = &v12;
    (*(&off_2881319B8 + v7))(&v17);
  }

  *a2 = 0;
  v8 = *(a2 + 8);
  if (*(v6 + 24) != 1)
  {
    v12 = *(a2 + 8);
    v13 = "nullopt";
    v14 = v8;
    v15 = "nullopt";
    v16 = "nullopt";
    v9 = *(v8 + 24);
    if (v9 != -1)
    {
      v17 = &v12;
      v10 = &off_2881319D0;
      return (v10[v9])(&v17);
    }

LABEL_13:
    sub_2711308D4();
  }

  v12 = *(a2 + 8);
  v13 = v6;
  v14 = v8;
  v15 = v6;
  v16 = v6;
  v9 = *(v8 + 24);
  if (v9 == -1)
  {
    goto LABEL_13;
  }

  v17 = &v12;
  v10 = off_2881319A0;
  return (v10[v9])(&v17);
}

uint64_t sub_2714B0474(uint64_t a1, uint64_t a2, const char **a3)
{
  if (a3[1] - *a3 > 31)
  {
    v11 = a2;
    v12 = "{";
    v13 = a2;
    v14 = "{";
    v15 = "{";
    v5 = *(a2 + 24);
    if (v5 != -1)
    {
      v16 = &v11;
      (*(&off_2881319B8 + v5))(&v16, a2);
      v7 = *a3;
      v11 = a2;
      v12 = "{";
      v13 = a2;
      v14 = "{";
      v15 = "{";
      v8 = *(a2 + 24);
      if (v8 != -1)
      {
        v16 = &v11;
        (*(&off_2881319B8 + v8))(&v16, a2);
        LOBYTE(v11) = 1;
        v12 = a2;
        v13 = &v10;
        sub_2714B06C8(v7, &v11);
      }
    }

LABEL_7:
    sub_2711308D4();
  }

  v11 = a2;
  v12 = "{}";
  v13 = a2;
  v14 = "{}";
  v15 = "{}";
  v4 = *(a2 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  v16 = &v11;
  return (*(&off_288131AA8 + v4))(&v16, a2);
}

void sub_2714B06C8(const char *a1, uint64_t a2)
{
  if ((*a2 & 1) == 0)
  {
    v7 = *(a2 + 8);
    v8 = ",";
    v9 = v7;
    v10 = ",";
    v11 = ",";
    v4 = *(v7 + 24);
    if (v4 == -1)
    {
      goto LABEL_9;
    }

    v12 = &v7;
    (*(&off_2881319B8 + v4))(&v12);
  }

  *a2 = 0;
  v7 = *(a2 + 8);
  v8 = a1;
  v9 = v7;
  v10 = a1;
  v11 = a1;
  v5 = *(v7 + 24);
  if (v5 != -1)
  {
    v12 = &v7;
    (off_2881319A0[v5])(&v12);
    if (*a2)
    {
      goto LABEL_8;
    }

    v7 = *(a2 + 8);
    v8 = ",";
    v9 = v7;
    v10 = ",";
    v11 = ",";
    v6 = *(v7 + 24);
    if (v6 != -1)
    {
      v12 = &v7;
      (*(&off_2881319B8 + v6))(&v12);
LABEL_8:
      *a2 = 0;
      sub_2714B07D4(*(a2 + 8), a1 + 6);
    }
  }

LABEL_9:
  sub_2711308D4();
}

void sub_2714B09F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714B0A3C(uint64_t a1)
{
  *a1 = &unk_288131B88;
  sub_271134CBC(a1 + 96);
  *(a1 + 8) = &unk_288131BD0;
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2714B0B0C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14[0] = &v9;
  v14[1] = a2;
  v14[2] = a2;
  sub_271136F58(v14, &v9);
  sub_2714B0D3C(&v8, &v9, a3);
}

void sub_2714B0CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B0FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280878970);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2714B112C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714B12B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714B12F0()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_2714B1598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

__n128 sub_2714B1688(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288131B88;
  *(a1 + 8) = &unk_288131BD0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(a1 + 64) = 1;
  }

  v3 = *(a2 + 80);
  *(a1 + 96) = 0;
  *(a1 + 80) = v3;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v4 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v4;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    *(a1 + 120) = 1;
  }

  result = *(a2 + 128);
  v6 = *(a2 + 144);
  *(a1 + 152) = 0;
  *(a1 + 144) = v6;
  *(a1 + 128) = result;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    result = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = result;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    *(a1 + 176) = 1;
    *(a1 + 192) = 0;
    v7 = (a1 + 192);
    *(a1 + 240) = 0;
    if (*(a2 + 240) != 1)
    {
LABEL_7:
      *(a1 + 256) = 0;
      *(a1 + 280) = 0;
      if (*(a2 + 280) != 1)
      {
        return result;
      }

LABEL_11:
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 0;
      result = *(a2 + 256);
      *(a1 + 256) = result;
      *(a1 + 272) = *(a2 + 272);
      *(a2 + 256) = 0;
      *(a2 + 264) = 0;
      *(a2 + 272) = 0;
      *(a1 + 280) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 192) = 0;
    v7 = (a1 + 192);
    *(a1 + 240) = 0;
    if (*(a2 + 240) != 1)
    {
      goto LABEL_7;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 192);
  v7[1].n128_u64[0] = *(a2 + 208);
  *v7 = result;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 192) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 224) = _X2;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t *sub_2714B1860(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_2714B1970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2711BE948(va);
  *(v10 + 8) = v11;
  sub_2711BE9A8(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_2714B1990(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v54);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v54);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v54);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0((a2 + 16), &v39);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v39);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v39);
  }

  if (v54 != v39)
  {
    goto LABEL_52;
  }

  if (v55 != v40)
  {
    goto LABEL_52;
  }

  v38[0] = &v56;
  v38[1] = &v59;
  v38[2] = &v60;
  v38[3] = &v63;
  v38[4] = &v66;
  v37[0] = &v41;
  v37[1] = &v44;
  v37[2] = &v45;
  v37[3] = &v48;
  v37[4] = &__p;
  if (!sub_2714FBB90(v38, v37))
  {
    goto LABEL_52;
  }

  v7 = *(a1 + 200);
  v6 = *(a1 + 208);
  v8 = *(a2 + 200);
  if (v6 - v7 != *(a2 + 208) - v8)
  {
    goto LABEL_52;
  }

  if (v7 != v6)
  {
    v9 = 0;
    do
    {
      v10 = v8 + v9;
      v11 = v7 + v9;
      v12 = *(v7 + v9 + 23);
      if (v12 >= 0)
      {
        v13 = *(v7 + v9 + 23);
      }

      else
      {
        v13 = *(v7 + v9 + 8);
      }

      v14 = *(v10 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v10 + 8);
      }

      if (v13 != v14)
      {
        goto LABEL_52;
      }

      v16 = v12 >= 0 ? (v7 + v9) : *v11;
      v17 = v15 >= 0 ? (v8 + v9) : *v10;
      if (memcmp(v16, v17, v13) || *(v11 + 24) != *(v10 + 24))
      {
        goto LABEL_52;
      }

      v9 += 32;
    }

    while (v7 + v9 != v6);
  }

  v19 = *(a2 + 248);
  v20 = *(a1 + 248);
  v21 = v20 == v19;
  if (v20 == v19 && *(a1 + 248))
  {
    v22 = *(a1 + 247);
    if (v22 >= 0)
    {
      v23 = *(a1 + 247);
    }

    else
    {
      v23 = *(a1 + 232);
    }

    v24 = *(a2 + 247);
    v25 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(a2 + 232);
    }

    if (v23 == v24)
    {
      if (v22 >= 0)
      {
        v26 = (a1 + 224);
      }

      else
      {
        v26 = *(a1 + 224);
      }

      if (v25 >= 0)
      {
        v27 = (a2 + 224);
      }

      else
      {
        v27 = *(a2 + 224);
      }

      v21 = memcmp(v26, v27, v23) == 0;
      goto LABEL_53;
    }

LABEL_52:
    v21 = 0;
  }

LABEL_53:
  if (v53 == 1)
  {
    v28 = __p;
    if (__p)
    {
      v29 = v52;
      v30 = __p;
      if (v52 == __p)
      {
LABEL_66:
        v52 = v28;
        operator delete(v30);
        goto LABEL_67;
      }

      while (1)
      {
        v31 = v29;
        if (*(v29 - 16) == 1 && *(v29 - 41) < 0)
        {
          operator delete(*(v29 - 8));
          v29 -= 12;
          if (*(v31 - 72) == 1)
          {
LABEL_61:
            if (*(v31 - 73) < 0)
            {
              operator delete(*v29);
            }
          }
        }

        else
        {
          v29 -= 12;
          if (*(v31 - 72) == 1)
          {
            goto LABEL_61;
          }
        }

        if (v29 == v28)
        {
          v30 = __p;
          goto LABEL_66;
        }
      }
    }
  }

LABEL_67:
  if (v50 == 1 && v49 < 0)
  {
    operator delete(v48);
  }

  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v68 == 1)
  {
    v32 = v66;
    if (v66)
    {
      v33 = v67;
      v34 = v66;
      if (v67 == v66)
      {
LABEL_89:
        v67 = v32;
        operator delete(v34);
        goto LABEL_90;
      }

      while (1)
      {
        v35 = v33;
        if (*(v33 - 16) == 1 && *(v33 - 41) < 0)
        {
          operator delete(*(v33 - 8));
          v33 -= 12;
          if (*(v35 - 72) == 1)
          {
LABEL_84:
            if (*(v35 - 73) < 0)
            {
              operator delete(*v33);
            }
          }
        }

        else
        {
          v33 -= 12;
          if (*(v35 - 72) == 1)
          {
            goto LABEL_84;
          }
        }

        if (v33 == v32)
        {
          v34 = v66;
          goto LABEL_89;
        }
      }
    }
  }

LABEL_90:
  if (v65 == 1 && v64 < 0)
  {
    operator delete(v63);
  }

  if (v62 == 1 && v61 < 0)
  {
    operator delete(v60);
  }

  if (v58 == 1 && v57 < 0)
  {
    operator delete(v56);
  }

  return v21;
}

void sub_2714B1E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_2714B1E44(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v4)
  {
    sub_2714B23FC(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v5)
  {
    sub_2714B32F0(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v6)
    {
      sub_2714B38DC(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v7)
    {
      sub_2714B42E0(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v8)
      {
        sub_2714B4768(&v10, v8);
      }

      else
      {
        sub_2714B2010(&v9, a1);
      }
    }
  }
}

void sub_2714B2010(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v13 = 4;
    (*(*a2 + 104))(a2, &v13);
    v10 = v13;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_2713DFA84(a2, v3 + 16, v13);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v13 = 5;
    (*(*a2 + 104))(a2, &v13);
    v8 = v13;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_2713DF128(a2, v3 + 16, v13);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v13 = 6;
    (*(*a2 + 104))(a2, &v13);
    v6 = v13;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_2713B9F84(a2, v3 + 16, v13);
  }

LABEL_17:
  v11 = a2[2];
  v13 = 1;
  (*(*a2 + 104))(a2, &v13);
  v12 = v13;
  if (v11 < 1)
  {
    sub_2714B4C08(a2, v3 + 200, v13);
  }

  else
  {
    if (v11 == 2)
    {
      v13 = 1;
      (*(*a2 + 104))(a2, &v13);
    }

    (*(*a2 + 16))(a2);
    sub_2714B4C08(a2, v3 + 200, v12);
    (*(*a2 + 24))(a2);
  }
}

void sub_2714B23FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CC40C(&v26, v10);
        }

        sub_2713B29CC(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CC40C(&v26, v17);
    }

    sub_2713DA6CC(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CC40C(&v26, v24);
  }

  sub_2713DAF34(a2, v3 + 16, 4);
}

void sub_2714B2924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2714B1860(&v9, a2);
  LOBYTE(__p) = 0;
  v13 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v12 = *(a2 + 40);
    }

    v13 = 1;
  }

  sub_2714B2A64(a1, &v9);
  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  v5 = v9;
  if (v9)
  {
    v6 = v10;
    v7 = v9;
    if (v10 != v9)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v9;
    }

    v10 = v5;
    operator delete(v7);
  }
}

void sub_2714B2A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B2A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

void sub_2714B2A64(uint64_t a1, uint64_t a2)
{
  sub_2714B2E00(a2, &v20);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "logger_enable_state_changes";
    *(a1 + 80) = 27;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_2718289B0(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    LOBYTE(v5) = 0;
    *(a1 + 88) = 0;
  }

  v6 = v20.i64[0];
  if (v20.i64[0] != v20.i64[1])
  {
    sub_27182791C(a1 + 48, (a1 + 40));
    *(a1 + 40) = sub_2718289B0(a1);
    if (*(a1 + 88) == 1)
    {
      *(a1 + 88) = 0;
    }

    sub_27182B1E4(a1, v6);
    v21 = *(v6 + 24);
    v24 = 0;
    sub_2714B07D4(&v22, &v21);
  }

  v19 = *(a1 + 56);
  *(a1 + 40) = *(v19 - 8);
  *(a1 + 56) = v19 - 8;
  if (v5)
  {
    *(a1 + 88) = 0;
  }

  sub_2714B3078(&v20, &v22);
  v7 = *a2;
  if (*a2)
  {
    v8 = *(a2 + 8);
    v9 = *a2;
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 9);
        v8 -= 4;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *a2;
    }

    *(a2 + 8) = v7;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v22;
  *(a2 + 16) = v23;
  v11 = v20.i64[0];
  if (v20.i64[0])
  {
    v12 = v20.i64[1];
    v13 = v20.i64[0];
    if (v20.i64[1] != v20.i64[0])
    {
      do
      {
        v14 = *(v12 - 9);
        v12 -= 4;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v20.i64[0];
    }

    v20.i64[1] = v11;
    operator delete(v13);
  }

  if (**(a1 + 40) <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "target_context";
    *(a1 + 80) = 14;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  if (*(a2 + 48))
  {
    sub_27182B1E4(a1, a2 + 24);
  }

  else
  {
    v22.i8[0] = 0;
    v22.i64[1] = 0;
    v16 = sub_2718289B0(a1);
    v17 = *v16;
    *v16 = 0;
    v22.i8[0] = v17;
    v18 = v16[1];
    v16[1] = v22.i64[1];
    v22.i64[1] = v18;
    sub_2715CC40C(&v22.i64[1], v17);
  }
}

void sub_2714B2E00(__int128 **a1@<X0>, int64x2_t *a2@<X8>)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  *a2 = vdupq_n_s64(0);
  a2[1].i64[0] = 0;
}

void sub_2714B303C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a9);
  _Unwind_Resume(a1);
}

void sub_2714B3078(__int128 **a1@<X0>, int64x2_t *a2@<X8>)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  *a2 = vdupq_n_s64(0);
  a2[1].i64[0] = 0;
}

void sub_2714B32B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a9);
  _Unwind_Resume(a1);
}

void sub_2714B32F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v19 = (v7 + 16);
      sub_2718460EC(&v19, 4u);
    }

    else
    {
      sub_27184636C(&v19, (v7 + 8), 4u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v19 = (v6 + 16);
      sub_2718460EC(&v19, 5u);
    }

    else
    {
      sub_27184636C(&v19, (v6 + 8), 5u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v19 = (v5 + 16);
      sub_2718460EC(&v19, 6u);
    }

    else
    {
      sub_27184636C(&v19, (v5 + 8), 6u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6);
  }

  v8 = *(a2 + 24);
  v9 = *(*(v8 + 88) - 8);
  sub_2718404E0((v8 + 48), *(v8 + 16) - v9 - 9);
  v10 = *(v8 + 48);
  if (v10)
  {
    memmove((*(v8 + 24) + v9), *(v8 + 56), v10);
  }

  *(v8 + 48) = 0;
  v11 = *(v8 + 80);
  v12 = *(v8 + 88) - 8;
  *(v8 + 88) = v12;
  if (v11 == v12)
  {
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(*(v8 + 24));
      *(v8 + 40) = 0;
    }
  }

  v13 = *(a2 + 24);
  if (*(v13 + 40) == 1)
  {
    v19 = (v13 + 16);
    sub_2718460EC(&v19, 1u);
  }

  else
  {
    sub_27184636C(&v19, (v13 + 8), 1u);
  }

  sub_271840ADC(*(a2 + 24));
  sub_2714B3584(a2, v3 + 200, 1);
  v14 = *(a2 + 24);
  v15 = *(*(v14 + 88) - 8);
  sub_2718404E0((v14 + 48), *(v14 + 16) - v15 - 9);
  v16 = *(v14 + 48);
  if (v16)
  {
    memmove((*(v14 + 24) + v15), *(v14 + 56), v16);
  }

  *(v14 + 48) = 0;
  v17 = *(v14 + 80);
  v18 = *(v14 + 88) - 8;
  *(v14 + 88) = v18;
  if (v17 == v18)
  {
    std::ostream::write();
    if (*(v14 + 40) == 1)
    {
      free(*(v14 + 24));
      *(v14 + 40) = 0;
    }
  }
}

void sub_2714B3584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2714B1860(&v9, a2);
  LOBYTE(__p) = 0;
  v13 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v12 = *(a2 + 40);
    }

    v13 = 1;
  }

  sub_2714B36C4(a1, &v9);
  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  v5 = v9;
  if (v9)
  {
    v6 = v10;
    v7 = v9;
    if (v10 != v9)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v9;
    }

    v10 = v5;
    operator delete(v7);
  }
}

void sub_2714B3680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B36B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

char *sub_2714B36C4(uint64_t a1, uint64_t *a2)
{
  v4 = (a2[1] - *a2) >> 5;
  v5 = *(a1 + 24);
  if (*(v5 + 40) != 1)
  {
    sub_271846E00((v5 + 8), v4);
    v6 = *a2;
    v7 = a2[1];
    if (v7 == *a2)
    {
      goto LABEL_12;
    }

    while (1)
    {
LABEL_7:
      v8 = *(a1 + 24);
      if (*(v8 + 40) == 1)
      {
        v16 = (v8 + 16);
        sub_271847238(&v16, v6);
        v9 = *(v6 + 6);
        v10 = *(a1 + 24);
        if (*(v10 + 40) != 1)
        {
          goto LABEL_11;
        }

LABEL_6:
        v16 = (v10 + 16);
        sub_271845BC4(&v16, v9);
        v6 += 4;
        if (v6 == v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_271847654((v8 + 8), v6);
        v9 = *(v6 + 6);
        v10 = *(a1 + 24);
        if (*(v10 + 40) == 1)
        {
          goto LABEL_6;
        }

LABEL_11:
        sub_271845FEC((v10 + 8), v9);
        v6 += 4;
        if (v6 == v7)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v16 = (v5 + 16);
  sub_271846AEC(&v16, v4);
  v6 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (*(a2 + 48) == 1)
  {
    v15 = 1;
    v11 = *(a1 + 24);
    if (*(v11 + 40) == 1)
    {
      v16 = (v11 + 16);
      sub_2718454CC(&v16, &v15);
      v12 = *(a1 + 24);
      if (*(v12 + 40) != 1)
      {
        return sub_271847654((v12 + 8), a2 + 3);
      }
    }

    else
    {
      LOBYTE(v16) = 1;
      std::ostream::write();
      v12 = *(a1 + 24);
      if (*(v12 + 40) != 1)
      {
        return sub_271847654((v12 + 8), a2 + 3);
      }
    }

    v16 = (v12 + 16);
    return sub_271847238(&v16, a2 + 3);
  }

  else
  {
    v15 = 0;
    v14 = *(a1 + 24);
    if (*(v14 + 40) == 1)
    {
      v16 = (v14 + 16);
      return sub_2718454CC(&v16, &v15);
    }

    else
    {
      LOBYTE(v16) = 0;
      return std::ostream::write();
    }
  }
}

void sub_2714B38DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CA870(&v26, v10);
        }

        sub_2713B6988(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CA870(&v26, v17);
    }

    sub_2713DCA04(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CA870(&v26, v24);
  }

  sub_2713DD090(a2, v3 + 16, 4);
}

void sub_2714B3E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2714B1860(&v9, a2);
  LOBYTE(__p) = 0;
  v13 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v12 = *(a2 + 40);
    }

    v13 = 1;
  }

  sub_2714B3F44(a1, &v9);
  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  v5 = v9;
  if (v9)
  {
    v6 = v10;
    v7 = v9;
    if (v10 != v9)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v9;
    }

    v10 = v5;
    operator delete(v7);
  }
}

void sub_2714B3F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B3F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

void sub_2714B3F44(uint64_t a1, uint64_t a2)
{
  sub_2714B2E00(a2, &v20);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "logger_enable_state_changes";
    *(a1 + 80) = 27;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_27182815C(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    LOBYTE(v5) = 0;
    *(a1 + 88) = 0;
  }

  v6 = v20.i64[0];
  if (v20.i64[0] != v20.i64[1])
  {
    sub_2715DF0F0(a1 + 48, (a1 + 40));
    *(a1 + 40) = sub_27182815C(a1);
    if (*(a1 + 88) == 1)
    {
      *(a1 + 88) = 0;
    }

    sub_271829354(a1, v6);
    v21 = *(v6 + 24);
    v24 = 0;
    sub_2714B07D4(&v22, &v21);
  }

  v19 = *(a1 + 56);
  *(a1 + 40) = *(v19 - 8);
  *(a1 + 56) = v19 - 8;
  if (v5)
  {
    *(a1 + 88) = 0;
  }

  sub_2714B3078(&v20, &v22);
  v7 = *a2;
  if (*a2)
  {
    v8 = *(a2 + 8);
    v9 = *a2;
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 9);
        v8 -= 4;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *a2;
    }

    *(a2 + 8) = v7;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v22;
  *(a2 + 16) = v23;
  v11 = v20.i64[0];
  if (v20.i64[0])
  {
    v12 = v20.i64[1];
    v13 = v20.i64[0];
    if (v20.i64[1] != v20.i64[0])
    {
      do
      {
        v14 = *(v12 - 9);
        v12 -= 4;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v20.i64[0];
    }

    v20.i64[1] = v11;
    operator delete(v13);
  }

  if (**(a1 + 40) <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "target_context";
    *(a1 + 80) = 14;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  if (*(a2 + 48))
  {
    sub_271829354(a1, a2 + 24);
  }

  else
  {
    v22.i8[0] = 0;
    v22.i64[1] = 0;
    v16 = sub_27182815C(a1);
    v17 = *v16;
    *v16 = 0;
    v22.i8[0] = v17;
    v18 = v16[1];
    v16[1] = v22.i64[1];
    v22.i64[1] = v18;
    sub_2715CA870(&v22.i64[1], v17);
  }
}

void *sub_2714B42E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_271120E64(v16, &v19, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_271120E64(v5, &v17, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_271120E64(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_271120E64(v7, &v18, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_271120E64(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_271120E64(v11, &v22, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_2714B44F4(a2, v3 + 200, 1);
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_271120E64(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_271120E64(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_2714B44F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2714B1860(&v9, a2);
  LOBYTE(__p) = 0;
  v13 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v12 = *(a2 + 40);
    }

    v13 = 1;
  }

  sub_2714B4634(a1, &v9);
  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  v5 = v9;
  if (v9)
  {
    v6 = v10;
    v7 = v9;
    if (v10 != v9)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v9;
    }

    v10 = v5;
    operator delete(v7);
  }
}

void sub_2714B45F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B4620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

void sub_2714B4634(uint64_t a1, uint64_t *a2)
{
  v4 = (a2[1] - *a2) >> 5;
  if (*(a1 + 40))
  {
    v5 = *(a1 + 24);
    v12 = *(a1 + 32);
    sub_271120E64(v5, &v12, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v4);
  ++*(a1 + 40);
  v6 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    do
    {
      sub_271839128(a1, v6);
      v8 = *(v6 + 24);
      if (*(a1 + 40))
      {
        v9 = *(a1 + 24);
        v13 = *(a1 + 32);
        sub_271120E64(v9, &v13, 1);
      }

      MEMORY[0x2743BE7E0](*(a1 + 24), v8);
      ++*(a1 + 40);
      v6 += 32;
    }

    while (v6 != v7);
  }

  if (*(a2 + 48) == 1)
  {
    v11 = 1;
    sub_2718388F8(a1, &v11);
    sub_271839128(a1, (a2 + 3));
  }

  else
  {
    v10 = 0;
    sub_2718388F8(a1, &v10);
  }
}

void sub_2714B4768(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v12, 4);
    v7 = __src;
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v12, 4);
    v6 = __src;
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    __src = 6;
    sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v12, 4);
    v5 = __src;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 1;
  sub_27173318C((a2 + 24), *(a2 + 32), &__src, &v12, 4);
  v9 = __src;
  sub_2717312C0(a2);
  sub_2714B491C(a2, v3 + 200, v9);
  v10 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v10 + 10) = *(a2 + 32) - v10 - 18;
  *(a2 + 56) -= 8;
}

void sub_2714B491C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2714B1860(&v9, a2);
  LOBYTE(__p) = 0;
  v13 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v12 = *(a2 + 40);
    }

    v13 = 1;
  }

  sub_2714B4A5C(a1, &v9);
  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  v5 = v9;
  if (v9)
  {
    v6 = v10;
    v7 = v9;
    if (v10 != v9)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v9;
    }

    v10 = v5;
    operator delete(v7);
  }
}

void sub_2714B4A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B4A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

char *sub_2714B4A5C(uint64_t a1, uint64_t *a2)
{
  v18 = (a2[1] - *a2) >> 5;
  sub_27173318C((a1 + 24), *(a1 + 32), &v18, &__src, 8);
  v4 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    do
    {
      v6 = *(v4 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v4 + 8);
      }

      __src = v6;
      sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v20, 8);
      v7 = *(v4 + 23);
      if (v7 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = *v4;
      }

      if (v7 >= 0)
      {
        v9 = *(v4 + 23);
      }

      else
      {
        v9 = *(v4 + 8);
      }

      sub_27173318C((a1 + 24), *(a1 + 32), v8, &v8[v9], v9);
      LODWORD(__src) = *(v4 + 24);
      sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
      v4 += 32;
    }

    while (v4 != v5);
  }

  if (*(a2 + 48) == 1)
  {
    LOBYTE(__src) = 1;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 1, 1);
    v10 = *(a2 + 47);
    if ((v10 & 0x80u) != 0)
    {
      v10 = a2[4];
    }

    __src = v10;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v20, 8);
    v11 = *(a2 + 47);
    if (v11 >= 0)
    {
      p_src = (a2 + 3);
    }

    else
    {
      p_src = a2[3];
    }

    if (v11 >= 0)
    {
      v13 = *(a2 + 47);
    }

    else
    {
      v13 = a2[4];
    }

    v14 = *(a1 + 32);
    v15 = (a1 + 24);
    v16 = &p_src[v13];
  }

  else
  {
    LOBYTE(__src) = 0;
    v14 = *(a1 + 32);
    v15 = (a1 + 24);
    p_src = &__src;
    v16 = &__src + 1;
    v13 = 1;
  }

  return sub_27173318C(v15, v14, p_src, v16, v13);
}

void sub_2714B4C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2714B1860(&v9, a2);
  LOBYTE(__p) = 0;
  v13 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v12 = *(a2 + 40);
    }

    v13 = 1;
  }

  sub_2714B4D48(a1, &v9);
  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  v5 = v9;
  if (v9)
  {
    v6 = v10;
    v7 = v9;
    if (v10 != v9)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v9;
    }

    v10 = v5;
    operator delete(v7);
  }
}

void sub_2714B4D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B4D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714B4D48(uint64_t a1, uint64_t *a2)
{
  v7 = (a2[1] - *a2) >> 5;
  (*(*a1 + 120))(a1, &v7);
  v4 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    do
    {
      (*(*a1 + 144))(a1, v4);
      v8 = *(v4 + 24);
      (*(*a1 + 56))(a1, &v8);
      v4 += 32;
    }

    while (v4 != v5);
  }

  if (*(a2 + 48) == 1)
  {
    v10 = 1;
    (*(*a1 + 80))(a1, &v10);
    return (*(*a1 + 144))(a1, a2 + 3);
  }

  else
  {
    v9 = 0;
    return (*(*a1 + 80))(a1, &v9);
  }
}

void sub_2714B4ED8(void *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v4)
  {
    sub_2714B5510(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v5)
  {
    sub_2714B60D8(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v6)
    {
      sub_2714B6750(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v7)
    {
      sub_2714B71A8(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v8)
      {
        sub_2714B7978(&v10, v8);
      }

      else
      {
        sub_2714B50A4(&v9, a1);
      }
    }
  }
}

void sub_2714B50A4(uint64_t *a1, void **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v21);
    sub_2713B2524(v33, v21);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v44;
        v11 = __p;
        if (v44 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v44 = v9;
        operator delete(v11);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v17 = v31;
    v15 = v30;
    if (v31 == v30)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v30;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v21);
  sub_2713B2524(v33, v21);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v44;
      v7 = __p;
      if (v44 != __p)
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
        v7 = __p;
      }

      v44 = v5;
      operator delete(v7);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v14 = v31;
  v15 = v30;
  if (v31 != v30)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v31 = v13;
  operator delete(v15);
LABEL_66:
  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v21[0] = a2[1];
  v20 = v21[0];
  v33[0] = 6;
  v19[13](a2, v33);
  if (v20 < 1)
  {
    if (v33[0] < 3)
    {
      sub_2713C66D4(v33, a2, v3 + 16, v33[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v33[0]);
    }
  }

  else
  {
    sub_2713C62C8(v21, a2, v3 + 16, v33[0]);
  }

  v21[0] = a2[1];
  sub_2714B7FDC(v21, a2, v3 + 200);
}

void sub_2714B5510(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
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
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0((v3 + 16), v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714B59E8(uint64_t a1, uint64_t a2)
{
  sub_2714B2E00(a2, &__p);
  v4 = *(a1 + 104);
  *(a1 + 88) = "logger_enable_state_changes";
  *(a1 + 96) = 27;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2714B5B58(a1, &__p);
  sub_2714B3078(&__p, &v14);
  v5 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 8);
    v7 = *a2;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *a2;
    }

    *(a2 + 8) = v5;
    operator delete(v7);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v14;
  v9 = __p.i64[0];
  *(a2 + 16) = v15;
  if (v9)
  {
    v10 = __p.i64[1];
    v11 = v9;
    if (__p.i64[1] != v9)
    {
      do
      {
        v12 = *(v10 - 9);
        v10 -= 4;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p.i64[0];
    }

    __p.i64[1] = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 104);
  *(a1 + 88) = "target_context";
  *(a1 + 96) = 14;
  if ((v13 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2713BBFEC(a1, a2 + 24);
}

void sub_2714B5B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714B5B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714B5B58(uint64_t a1, void *a2)
{
  v20[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v20);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 32);
  v6 = *v5;
  if (v6 == 2)
  {
    v7 = (*(*(v5 + 1) + 8) - **(v5 + 1)) >> 4;
  }

  else if (v6 == 1)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v5 + 1) + 8) - **(v5 + 1)) >> 3);
  }

  else
  {
    if (!*v5)
    {
      v7 = 0;
      v8 = (a2 + 1);
      v9 = a2[1];
      v10 = *a2;
      v11 = (v9 - *a2) >> 5;
      goto LABEL_13;
    }

    v7 = 1;
  }

  v8 = (a2 + 1);
  v9 = a2[1];
  v10 = *a2;
  v11 = (v9 - *a2) >> 5;
  if (v7 > v11)
  {
    sub_2714B5DB4(a2, v7 - v11);
    v13 = a2;
    v12 = *a2;
    if (v12 == v13[1])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (v11 <= v7)
  {
    v12 = *a2;
    if (v12 == v9)
    {
      goto LABEL_24;
    }

LABEL_19:
    v16 = *(a1 + 32);
    v20[0] = v12;
    v20[1] = v12 + 24;
    v21 = v16;
    v17 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v17;
    sub_27182D194(a1 + 40, &v21);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    if (*(a1 + 104) == 1)
    {
      *(a1 + 104) = 0;
    }

    v21 = a1;
    sub_2714B5F10(v20, &v21);
  }

  v14 = (v10 + 32 * v7);
  while (v9 != v14)
  {
    v15 = *(v9 - 9);
    v9 -= 4;
    if (v15 < 0)
    {
      operator delete(*v9);
    }
  }

  *v8 = v14;
  v12 = *a2;
  if (v12 != v14)
  {
    goto LABEL_19;
  }

LABEL_24:
  v18 = *(a1 + 48);
  v19 = *(a1 + 72);
  *(a1 + 32) = *(v18 - 8);
  *(a1 + 112) = *(v19 - 8);
  *(a1 + 48) = v18 - 8;
  *(a1 + 72) = v19 - 8;
}

void sub_2714B5DB4(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v3) >> 5)
  {
    if (a2)
    {
      v9 = 32 * a2;
      v10 = v3 + 32 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 24) = 0;
        *(v3 + 16) = 0;
        v3 += 32;
        v9 -= 32;
      }

      while (v9);
      v3 = v10;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = (v3 - *a1) >> 5;
    v6 = v5 + a2;
    if ((v5 + a2) >> 59)
    {
      sub_271135560();
    }

    v7 = v4 - *a1;
    if (v7 >> 4 > v6)
    {
      v6 = v7 >> 4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 59))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v11 = 32 * v5;
    v12 = 32 * a2;
    v13 = 32 * v5 + 32 * a2;
    v14 = 32 * v5;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 24) = 0;
      *(v14 + 16) = 0;
      v14 += 32;
      v12 -= 32;
    }

    while (v12);
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v11 - v16;
    memcpy((v11 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_2714B5F10(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_27182D6C4(*a2);
  ++v4[14];
  v10 = 0;
  v9 = 0uLL;
  sub_2715D6E6C(v5, &v9);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  v6 = v9;
  *(v3 + 16) = v10;
  *v3 = v6;
  v7 = *a2;
  v8 = sub_27182D6C4(v7);
  ++v7[14];
  v10 = 0;
  v9 = 0uLL;
  sub_2715D6E6C(v8, &v9);
  operator new();
}

void sub_2714B6054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a17 = 0;
  sub_27184D728(&a17, v23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714B60D8(uint64_t *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v43;
        v11 = __p;
        if (v43 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v43 = v9;
        operator delete(v11);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v17 = v30;
    v15 = v29;
    if (v30 == v29)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v29;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v43;
      v7 = __p;
      if (v43 != __p)
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
        v7 = __p;
      }

      v43 = v5;
      operator delete(v7);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v14 = v30;
  v15 = v29;
  if (v30 != v29)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v30 = v13;
  operator delete(v15);
LABEL_66:
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v20[0]) = 6;
  sub_27183FB7C(a2[6], v20);
  sub_2713BF6F4(v20, a2, v3 + 16, LODWORD(v20[0]));
  LODWORD(v20[0]) = 1;
  sub_27183FB7C(a2[6], v20);
  return sub_2714B64FC(v20, a2, v3 + 200);
}

uint64_t sub_2714B64FC(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = 0;
  sub_27183FF6C(a2[6], &v9);
  *&v8 = (*(a2[2] + 32))(a2 + 2);
  *(&v8 + 1) = v9;
  sub_2713BF82C((a2 + 3), &v8);
  sub_2714B6654(a2, a3);
  LOBYTE(v8) = 0;
  sub_27183F824(a2[6], &v8);
  if (v8)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    sub_2718403E0(a2[6], (a3 + 24));
  }

  else if (*(a3 + 48))
  {
    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
    }

    *(a3 + 48) = 0;
  }

  v5 = a2[4];
  result = (*(a2[2] + 32))(a2 + 2);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(a2[2] + 40))(a2 + 2, v7);
  }

  a2[4] -= 16;
  return result;
}

void sub_2714B6654(uint64_t a1, void *a2)
{
  v10 = (a2[1] - *a2) >> 5;
  sub_27183FF6C(*(a1 + 48), &v10);
  v4 = a2[1];
  v5 = (v4 - *a2) >> 5;
  if (v10 > v5)
  {
    sub_2714B5DB4(a2, v10 - v5);
    v8 = a2;
    i = *a2;
    v7 = v8[1];
    if (v7 == i)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v10 >= v5)
  {
    v7 = a2[1];
    i = *a2;
    if (v4 == i)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = *a2 + 32 * v10;
  while (v4 != v7)
  {
    v9 = *(v4 - 9);
    v4 -= 4;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  for (i = *a2; i != v7; i += 32)
  {
LABEL_12:
    sub_2718403E0(*(a1 + 48), i);
    v11 = 0;
    sub_27183FACC(*(a1 + 48), &v11);
    *(i + 24) = v11;
  }
}

void sub_2714B6750(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
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
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713C0E9C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0((v3 + 16), v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714B6C28(uint64_t a1, uint64_t a2)
{
  sub_2714B2E00(a2, &__p);
  v4 = *(a1 + 104);
  *(a1 + 88) = "logger_enable_state_changes";
  *(a1 + 96) = 27;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2714B6D98(a1, &__p);
  sub_2714B3078(&__p, &v14);
  v5 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 8);
    v7 = *a2;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *a2;
    }

    *(a2 + 8) = v5;
    operator delete(v7);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v14;
  v9 = __p.i64[0];
  *(a2 + 16) = v15;
  if (v9)
  {
    v10 = __p.i64[1];
    v11 = v9;
    if (__p.i64[1] != v9)
    {
      do
      {
        v12 = *(v10 - 9);
        v10 -= 4;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p.i64[0];
    }

    __p.i64[1] = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 104);
  *(a1 + 88) = "target_context";
  *(a1 + 96) = 14;
  if ((v13 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2713C1708(a1, a2 + 24);
}

void sub_2714B6D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714B6D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714B6D98(uint64_t a1, void *a2)
{
  v20[0] = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v20);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 32);
  v6 = *v5;
  if (v6 == 2)
  {
    v7 = (*(*(v5 + 1) + 8) - **(v5 + 1)) >> 4;
  }

  else if (v6 == 1)
  {
    v7 = *(*(v5 + 1) + 16);
  }

  else
  {
    if (!*v5)
    {
      v7 = 0;
      v8 = (a2 + 1);
      v9 = a2[1];
      v10 = *a2;
      v11 = (v9 - *a2) >> 5;
      goto LABEL_13;
    }

    v7 = 1;
  }

  v8 = (a2 + 1);
  v9 = a2[1];
  v10 = *a2;
  v11 = (v9 - *a2) >> 5;
  if (v7 > v11)
  {
    sub_2714B5DB4(a2, v7 - v11);
    v13 = a2;
    v12 = *a2;
    if (v12 == v13[1])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (v11 <= v7)
  {
    v12 = *a2;
    if (v12 == v9)
    {
      goto LABEL_24;
    }

LABEL_19:
    v16 = *(a1 + 32);
    v20[0] = v12;
    v20[1] = v12 + 24;
    v21 = v16;
    v17 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v17;
    sub_27182D194(a1 + 40, &v21);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    if (*(a1 + 104) == 1)
    {
      *(a1 + 104) = 0;
    }

    v21 = a1;
    sub_2714B6FE0(v20, &v21);
  }

  v14 = (v10 + 32 * v7);
  while (v9 != v14)
  {
    v15 = *(v9 - 9);
    v9 -= 4;
    if (v15 < 0)
    {
      operator delete(*v9);
    }
  }

  *v8 = v14;
  v12 = *a2;
  if (v12 != v14)
  {
    goto LABEL_19;
  }

LABEL_24:
  v18 = *(a1 + 48);
  v19 = *(a1 + 72);
  *(a1 + 32) = *(v18 - 8);
  *(a1 + 112) = *(v19 - 8);
  *(a1 + 48) = v18 - 8;
  *(a1 + 72) = v19 - 8;
}

void sub_2714B6FE0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_27182D2AC(*a2);
  ++v4[14];
  v10 = 0;
  v9 = 0uLL;
  sub_2715D666C(v5, &v9);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  v6 = v9;
  *(v3 + 16) = v10;
  *v3 = v6;
  v7 = *a2;
  v8 = sub_27182D2AC(v7);
  ++v7[14];
  v10 = 0;
  v9 = 0uLL;
  sub_2715D666C(v8, &v9);
  operator new();
}

void sub_2714B7124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a17 = 0;
  sub_27184D728(&a17, v23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714B71A8(uint64_t *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v21);
    sub_2713B2524(v34, v21);
    sub_2713E031C(v3 + 16, v34);
    if (v46 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v45;
        v11 = __p;
        if (v45 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v45 = v9;
        operator delete(v11);
      }
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v33 != 1)
    {
      goto LABEL_66;
    }

    v13 = v31;
    if (!v31)
    {
      goto LABEL_66;
    }

    v17 = v32;
    v15 = v31;
    if (v32 == v31)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v31;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v21);
  sub_2713B2524(v34, v21);
  sub_2713E031C(v3 + 16, v34);
  if (v46 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v45;
      v7 = __p;
      if (v45 != __p)
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
        v7 = __p;
      }

      v45 = v5;
      operator delete(v7);
    }
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v33 != 1)
  {
    goto LABEL_66;
  }

  v13 = v31;
  if (!v31)
  {
    goto LABEL_66;
  }

  v14 = v32;
  v15 = v31;
  if (v32 != v31)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v32 = v13;
  operator delete(v15);
LABEL_66:
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v21[0]) = 6;
  sub_27183A9AC(a2, v21);
  if (LODWORD(v21[0]) >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = LODWORD(v21[0]);
  }

  if (LODWORD(v21[0]) > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v21);
      if (SHIBYTE(v22) < 0)
      {
        if (v21[1] == 1 && *(a2 + 72) == *v21[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v22) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v22) == 1 && *(a2 + 72) == LOBYTE(v21[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v22) < 0)
      {
LABEL_93:
        operator delete(v21[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(v21, a2, v3 + 16, v19);
LABEL_95:
  sub_2714B7678(v21, a2, v3 + 200);
}

void sub_2714B7678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(__p[0]) = 1;
  sub_27183A9AC(a2, __p);
  sub_2714B781C(a2, a3);
  v6 = 0;
  sub_271839D90(a2, &v6);
  if (v6)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    ++*(a2 + 80);
    if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
    {
      *(a2 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a2, __p);
      if (*(a3 + 47) < 0)
      {
        operator delete(*(a3 + 24));
      }

      *(a3 + 24) = *__p;
      *(a3 + 40) = v8;
      ++*(a2 + 104);
    }
  }

  else if (*(a3 + 48))
  {
    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
    }

    *(a3 + 48) = 0;
  }

  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, __p);
    if (SHIBYTE(v8) < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_23:
        v5 = 0;
        if (SHIBYTE(v8) < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_14;
      }
    }

    else if (SHIBYTE(v8) == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_23;
    }

    v5 = 1;
    if (SHIBYTE(v8) < 0)
    {
LABEL_26:
      operator delete(__p[0]);
    }

LABEL_14:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void sub_2714B781C(uint64_t a1, void *a2)
{
  v11 = (a2[1] - *a2) >> 5;
  sub_27183B6AC(a1, &v11);
  v4 = a2[1];
  v5 = (v4 - *a2) >> 5;
  if (v11 > v5)
  {
    sub_2714B5DB4(a2, v11 - v5);
    v8 = a2;
    i = *a2;
    v7 = v8[1];
    if (v7 == i)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v11 >= v5)
  {
    v7 = a2[1];
    i = *a2;
    if (v4 == i)
    {
      return;
    }

    goto LABEL_17;
  }

  v7 = *a2 + 32 * v11;
  while (v4 != v7)
  {
    v9 = *(v4 - 9);
    v4 -= 4;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  for (i = *a2; i != v7; i += 32)
  {
LABEL_17:
    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, &v12);
      if (*(i + 23) < 0)
      {
        operator delete(*i);
      }

      v10 = v12;
      *(i + 16) = v13;
      *i = v10;
      ++*(a1 + 104);
    }

    LODWORD(v12) = 0;
    sub_27183A66C(a1, &v12);
    *(i + 24) = v12;
  }
}

void *sub_2714B7978(uint64_t *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0((v3 + 16), v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v43;
        v11 = __p;
        if (v43 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v43 = v9;
        operator delete(v11);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v17 = v30;
    v15 = v29;
    if (v30 == v29)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v29;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v43;
      v7 = __p;
      if (v43 != __p)
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
        v7 = __p;
      }

      v43 = v5;
      operator delete(v7);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v14 = v30;
  v15 = v29;
  if (v30 != v29)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v30 = v13;
  operator delete(v15);
LABEL_66:
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  sub_2713C49D0(v20, a2, v3 + 16);
  return sub_2714B7D68(v20, a2, (v3 + 200));
}

void *sub_2714B7D68(uint64_t a1, void *a2, void ***a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[6] = v3 + 4;
  sub_27173170C(a2);
  sub_2714B7E58(a2, a3);
  v13[0] = "target_context";
  v13[1] = 14;
  v13[2] = a3 + 3;
  result = sub_2713C4ED8(a2, v13);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
  return result;
}

void sub_2714B7E58(void *a1, void ***a2)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_20;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = v9 - *a2;
  v11 = *(a1[3] + v3);
  a1[6] = v3 + 8;
  if (v11 > v10 >> 5)
  {
    sub_2714B5DB4(a2, v11 - (v10 >> 5));
    v14 = a2;
    v12 = *a2;
    v13 = v14[1];
    if (v13 != v12)
    {
      goto LABEL_15;
    }

    return;
  }

  if (v11 < v10 >> 5)
  {
    v13 = &v8[4 * v11];
    while (v9 != v13)
    {
      v15 = *(v9 - 9);
      v9 -= 4;
      if (v15 < 0)
      {
        operator delete(*v9);
      }
    }

    a2[1] = v13;
    v12 = *a2;
    if (v13 == v12)
    {
      return;
    }

    while (1)
    {
LABEL_15:
      sub_2717318E8(a1, v12);
      v16 = a1[6];
      v17 = a1[7];
      v4 = v17 >= v16;
      v18 = v17 - v16;
      if (!v4)
      {
        v18 = 0;
      }

      if (v18 <= 3)
      {
        break;
      }

      v19 = *(a1[3] + v16);
      a1[6] = v16 + 4;
      *(v12 + 24) = v19;
      v12 += 32;
      if (v12 == v13)
      {
        return;
      }
    }

LABEL_20:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v13 = v9;
  v12 = *a2;
  if (v9 != *a2)
  {
    goto LABEL_15;
  }
}

void sub_2714B7FDC(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = 1;
  (*(*a2 + 104))(a2, &v6);
  if (*a1 < 1)
  {
    sub_2714B8344(a2, a3);
    v7 = 0;
    (*(*a2 + 80))(a2, &v7);
    if (v7)
    {
      if ((*(a3 + 48) & 1) == 0)
      {
        *(a3 + 24) = 0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 48) = 1;
      }

      (*(*a2 + 144))(a2, a3 + 24);
    }

    else if (*(a3 + 48))
    {
      if (*(a3 + 47) < 0)
      {
        operator delete(*(a3 + 24));
      }

      *(a3 + 48) = 0;
    }
  }

  else
  {
    sub_2714B8130(a1, a2, a3);
  }
}

void sub_2714B8130(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v8 = 1;
    (*(*a2 + 104))(a2, &v8);
    if (v8 >= 2)
    {
      v7 = v8;
      if ((atomic_load_explicit(&qword_2808789D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808789D0))
      {
        sub_2718519B4(qword_2808789B8, "cv3d::kit::viz::UpdateEnabledLoggersSample]", 0x2AuLL);
        __cxa_guard_release(&qword_2808789D0);
        sub_271847D5C(qword_2808789B8, v7, 1);
      }

      sub_271847D5C(qword_2808789B8, v7, 1);
    }

    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  sub_2714B8344(a2, a3);
  v9 = 0;
  (*(*a2 + 80))(a2, &v9);
  if (v9)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    (*(*a2 + 144))(a2, a3 + 24);
  }

  else if (*(a3 + 48))
  {
    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
    }

    *(a3 + 48) = 0;
  }

  if (v5 >= 1)
  {
    (*(*a2 + 24))(a2);
  }
}

void sub_2714B8344(uint64_t a1, void *a2)
{
  v10 = (a2[1] - *a2) >> 5;
  (*(*a1 + 120))(a1, &v10);
  v4 = a2[1];
  v5 = (v4 - *a2) >> 5;
  if (v10 > v5)
  {
    sub_2714B5DB4(a2, v10 - v5);
    v8 = a2;
    i = *a2;
    v7 = v8[1];
    if (v7 == i)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v10 >= v5)
  {
    v7 = a2[1];
    i = *a2;
    if (v4 == i)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = *a2 + 32 * v10;
  while (v4 != v7)
  {
    v9 = *(v4 - 9);
    v4 -= 4;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  for (i = *a2; i != v7; i += 32)
  {
LABEL_12:
    (*(*a1 + 144))(a1, i);
    v11 = 0;
    (*(*a1 + 56))(a1, &v11);
    *(i + 24) = v11;
  }
}

void *sub_2714B8710(void *a1)
{
  *a1 = &unk_288131C18;
  sub_271134CBC((a1 + 10));
  return a1;
}

void sub_2714B8754(void *a1)
{
  *a1 = &unk_288131C18;
  sub_271134CBC((a1 + 10));

  JUMPOUT(0x2743BF050);
}

void sub_2714B87C8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878A30, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878A30))
    {
      sub_2714B99D4();
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_2711C1280(&xmmword_280878A18, "{", __p, ",", v2 + 56, "}");
}

void sub_2714B88C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714B88E4(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.net");
  *(a1 + 24) = 5;
}

void *sub_2714B8960(void *a1)
{
  *a1 = &unk_288131C18;
  sub_271134CBC((a1 + 10));
  return a1;
}

void sub_2714B89A4(void *a1)
{
  *a1 = &unk_288131C18;
  sub_271134CBC((a1 + 10));

  JUMPOUT(0x2743BF050);
}

void sub_2714B8A08(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878A10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878A10))
    {
      sub_2714B9740();
    }
  }

  sub_2714B91F4(qword_2808789F8, "{", a1 + 8, ",", a1 + 64, "}");
}

void sub_2714B8ABC(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

BOOL sub_2714B8AFC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, &unk_288132918, &unk_288131C80, 0);
  if (v4)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    v5 = *(a1 + 48);
    v6 = v5 == *(v4 + 48);
    if (v5 != *(v4 + 48) || v5 == 0)
    {
      return v6;
    }

    if (*(a1 + 8) == v4[1])
    {
      v9 = *(a1 + 24);
      v10 = *(v4 + 24);
      if (v9 != v10 || v9 == 0)
      {
        if (v9 != v10)
        {
          return 0;
        }

LABEL_19:
        v12 = *(a1 + 40);
        v6 = v12 == *(v4 + 40);
        if (v12 == *(v4 + 40) && *(a1 + 40))
        {
          return *(a1 + 32) == v4[4];
        }

        return v6;
      }

      if (*(a1 + 16) == v4[2])
      {
        goto LABEL_19;
      }
    }
  }

  return 0;
}

uint64_t sub_2714B8C3C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808789F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808789F0))
  {
    sub_2718519B4(qword_2808789D8, "cv3d::kit::viz::UpdateSyncConfiguration]", 0x27uLL);
    __cxa_guard_release(&qword_2808789F0);
  }

  return sub_2714B8CF0(qword_2808789D8, "{", a1 + 8, "}");
}

uint64_t sub_2714B8CF0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14 = &v9;
  v15 = a2;
  v16 = a2;
  sub_271136F58(&v14, &v9);
  sub_2714B8E9C(&v8, &v9, a3);
  v12 = &v9;
  v13 = a4;
  v14 = &v9;
  v15 = a4;
  v16 = a4;
  if (v11 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (*(&off_2881319B8 + v11))(&v17, &v9);
  if (v11 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v17;
  result = (off_288131958[v11])(&v12, &v9);
  if (v11 != -1)
  {
    return (off_288131940[v11])(&v12, &v9);
  }

  return result;
}

void sub_2714B8E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B8E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B8E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B8E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B8E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714B8E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = "{";
  v11 = a2;
  v12 = "{";
  v13 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_7;
  }

  v14 = &v9;
  (*(&off_2881319B8 + v3))(&v14);
  if (*(a3 + 40) == 1)
  {
    sub_2714B8FA8(&v9, a2, a3);
  }

  v9 = a2;
  v10 = "nullopt";
  v11 = a2;
  v12 = "nullopt";
  v13 = "nullopt";
  v6 = *(a2 + 24);
  if (v6 == -1 || (v14 = &v9, (*(&off_2881319D0 + v6))(&v14, a2), v9 = a2, v10 = "}", v11 = a2, v12 = "}", v13 = "}", v7 = *(a2 + 24), v7 == -1))
  {
LABEL_7:
    sub_2711308D4();
  }

  v14 = &v9;
  return (*(&off_2881319B8 + v7))(&v14, a2);
}

void sub_2714B91B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714B91F4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14[0] = &v9;
  v14[1] = a2;
  v14[2] = a2;
  sub_271136F58(v14, &v9);
  sub_2714B9424(&v8, &v9, a3);
}

void sub_2714B9394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B93AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B93C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B93D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B93E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B93FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B9410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B96B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_2808789F0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2714B9814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714B9994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714B99D4()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_2714B9C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

BOOL sub_2714B9D68(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0((a1 + 16), &v39);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v39);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v39);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0((a2 + 16), &v24);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v24);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v24);
  }

  if (v39 != v24)
  {
    goto LABEL_22;
  }

  if (v40 != v25)
  {
    goto LABEL_22;
  }

  v23[0] = &v41;
  v23[1] = &v44;
  v23[2] = &v45;
  v23[3] = &v48;
  v23[4] = &v51;
  v22[0] = &v26;
  v22[1] = &v29;
  v22[2] = &v30;
  v22[3] = &v33;
  v22[4] = &__p;
  if (!sub_2714FBB90(v23, v22))
  {
    goto LABEL_22;
  }

  v6 = *(a2 + 248);
  v7 = *(a1 + 248);
  v8 = v7 == v6;
  if (v7 == v6 && *(a1 + 248))
  {
    if (*(a1 + 208) != *(a2 + 208))
    {
LABEL_22:
      v8 = 0;
      goto LABEL_23;
    }

    v9 = *(a1 + 224);
    v10 = *(a2 + 224);
    if (v9 == v10 && *(a1 + 224))
    {
      if (*(a1 + 216) != *(a2 + 216))
      {
        goto LABEL_22;
      }
    }

    else if (v9 != v10)
    {
      goto LABEL_22;
    }

    v20 = *(a2 + 240);
    v21 = *(a1 + 240);
    v8 = v21 == v20;
    if (v21 == v20 && *(a1 + 240))
    {
      v8 = *(a1 + 232) == *(a2 + 232);
    }
  }

LABEL_23:
  if (v38 == 1)
  {
    v11 = __p;
    if (__p)
    {
      v12 = v37;
      v13 = __p;
      if (v37 == __p)
      {
LABEL_36:
        v37 = v11;
        operator delete(v13);
        goto LABEL_37;
      }

      while (1)
      {
        v14 = v12;
        if (*(v12 - 16) == 1 && *(v12 - 41) < 0)
        {
          operator delete(*(v12 - 8));
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
LABEL_31:
            if (*(v14 - 73) < 0)
            {
              operator delete(*v12);
            }
          }
        }

        else
        {
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
            goto LABEL_31;
          }
        }

        if (v12 == v11)
        {
          v13 = __p;
          goto LABEL_36;
        }
      }
    }
  }

LABEL_37:
  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v53 == 1)
  {
    v15 = v51;
    if (v51)
    {
      v16 = v52;
      v17 = v51;
      if (v52 == v51)
      {
LABEL_59:
        v52 = v15;
        operator delete(v17);
        goto LABEL_60;
      }

      while (1)
      {
        v18 = v16;
        if (*(v16 - 16) == 1 && *(v16 - 41) < 0)
        {
          operator delete(*(v16 - 8));
          v16 -= 12;
          if (*(v18 - 72) == 1)
          {
LABEL_54:
            if (*(v18 - 73) < 0)
            {
              operator delete(*v16);
            }
          }
        }

        else
        {
          v16 -= 12;
          if (*(v18 - 72) == 1)
          {
            goto LABEL_54;
          }
        }

        if (v16 == v15)
        {
          v17 = v51;
          goto LABEL_59;
        }
      }
    }
  }

LABEL_60:
  if (v50 == 1 && v49 < 0)
  {
    operator delete(v48);
  }

  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  return v8;
}

void sub_2714BA13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_2714BA178(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2;
  v4 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v4)
  {
    sub_2714BA730(&v10, v4);
  }

  v10 = a2;
  v5 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v5)
  {
    sub_2714BB368(&v10, v5);
  }

  else
  {
    v10 = a2;
    v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v6)
    {
      sub_2714BB7BC(&v10, v6);
    }

    v10 = a2;
    v7 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v7)
    {
      sub_2714BC3F4(&v10, v7);
    }

    else
    {
      v10 = a2;
      v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v8)
      {
        sub_2714BC748(&v10, v8);
      }

      else
      {
        sub_2714BA344(&v9, a1);
      }
    }
  }
}

uint64_t sub_2714BA344(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v13 = 4;
    (*(*a2 + 104))(a2, &v13);
    v10 = v13;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_2713DFA84(a2, v3 + 16, v13);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v13 = 5;
    (*(*a2 + 104))(a2, &v13);
    v8 = v13;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_2713DF128(a2, v3 + 16, v13);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v13 = 6;
    (*(*a2 + 104))(a2, &v13);
    v6 = v13;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_2713B9F84(a2, v3 + 16, v13);
  }

LABEL_17:
  v11 = a2[2];
  v13 = 1;
  (*(*a2 + 104))(a2, &v13);
  if (v11 < 1)
  {
    return sub_2714BCA54(a2, v3 + 200);
  }

  if (v11 == 2)
  {
    v13 = 1;
    (*(*a2 + 104))(a2, &v13);
  }

  (*(*a2 + 16))(a2);
  sub_2714BCA54(a2, v3 + 200);
  return (*(*a2 + 24))(a2);
}

void sub_2714BA730(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CC40C(&v26, v10);
        }

        sub_2713B29CC(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CC40C(&v26, v17);
    }

    sub_2713DA6CC(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CC40C(&v26, v24);
  }

  sub_2713DAF34(a2, v3 + 16, 4);
}

void sub_2714BAB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_27182791C(a2 + 48, (a2 + 40));
  v5 = sub_2718289B0(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, v6 = *(a2 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a2 + 96) = 1;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    LOBYTE(v21[0]) = 6;
    *(&v21[0] + 1) = 1;
    v10 = sub_2718289B0(a2);
    v11 = *v10;
    *v10 = 6;
    LOBYTE(v21[0]) = v11;
    v12 = v10[1];
    v10[1] = *(&v21[0] + 1);
    *(&v21[0] + 1) = v12;
    sub_2715CC40C(v21 + 1, v11);
    v5 = *(a2 + 40);
  }

  v13 = *(a3 + 16);
  v21[0] = *a3;
  v21[1] = v13;
  v21[2] = *(a3 + 32);
  v22 = *(a3 + 48);
  if (*v5 <= 1u)
  {
    v14 = *(a2 + 88);
    *(a2 + 72) = "initial_sync_command";
    *(a2 + 80) = 20;
    if ((v14 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  if (v22)
  {
    v19 = *(a2 + 8);
    sub_2714BAD98(&v19, a2, v21 + 8);
  }

  else
  {
    LOBYTE(v19) = 0;
    v20 = 0;
    v15 = sub_2718289B0(a2);
    v16 = *v15;
    *v15 = 0;
    LOBYTE(v19) = v16;
    v17 = v15[1];
    v15[1] = v20;
    v20 = v17;
    sub_2715CC40C(&v20, v16);
  }

  v18 = *(a2 + 56);
  *(a2 + 40) = *(v18 - 8);
  *(a2 + 56) = v18 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_2714BAD98(int *a1, uint64_t a2, uint64_t a3)
{
  sub_27182791C(a2 + 48, (a2 + 40));
  v6 = sub_2718289B0(a2);
  *(a2 + 40) = v6;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a2 + 80);
    v9 = a2 + 72;
  }

  else
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    v7 = (a2 + 80);
    *(a2 + 88) = 1;
    v9 = a2 + 72;
    v8 = *(a2 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a2 + 96) = 1;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v13 = *a1;
      if (*a1 < 1)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }
  }

  LOBYTE(v24[0]) = 6;
  *(&v24[0] + 1) = 1;
  v14 = sub_2718289B0(a2);
  v15 = *v14;
  *v14 = 6;
  LOBYTE(v24[0]) = v15;
  v16 = v14[1];
  v14[1] = *(&v24[0] + 1);
  *(&v24[0] + 1) = v16;
  sub_2715CC40C(v24 + 1, v15);
  v13 = *a1;
  if (*a1 < 1)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (v13 != 2)
  {
    goto LABEL_24;
  }

  v17 = *(a2 + 88);
  if (**(a2 + 40) <= 1u)
  {
    *v9 = "min_version";
    *v7 = 11;
    if ((v17 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }

    goto LABEL_23;
  }

  if ((*(a2 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v18 = *(*v9 + 3) == *"sion") : (v18 = 0), !v18))
  {
LABEL_23:
    LOBYTE(v24[0]) = 6;
    *(&v24[0] + 1) = 1;
    v19 = sub_2718289B0(a2);
    v20 = *v19;
    *v19 = 6;
    LOBYTE(v24[0]) = v20;
    v21 = v19[1];
    v19[1] = *(&v24[0] + 1);
    *(&v24[0] + 1) = v21;
    sub_2715CC40C(v24 + 1, v20);
    goto LABEL_24;
  }

  *(a2 + 96) = 1;
  *(a2 + 100) = 1;
  *(a2 + 88) = 0;
LABEL_24:
  v22 = *(a3 + 16);
  v24[0] = *a3;
  v24[1] = v22;
  v25 = *(a3 + 32);
  sub_2714BB010(a2, v24);
  v23 = *(a2 + 56);
  *(a2 + 40) = *(v23 - 8);
  *(a2 + 56) = v23 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_2714BB010(uint64_t result, void ***a2)
{
  v4 = *(result + 40);
  if (*v4 <= 1u)
  {
    *(result + 72) = "sync_command_id";
    v5 = result + 72;
    v7 = (result + 88);
    v6 = *(result + 88);
    *(result + 80) = 15;
    v8 = (result + 80);
    if ((v6 & 1) == 0)
    {
      *v7 = 1;
    }

    goto LABEL_10;
  }

  v7 = (result + 88);
  v5 = result + 72;
  v8 = (result + 80);
  if ((*(result + 88) & 1) == 0 || *(result + 80) != 7 || (**v5 == *"version" ? (v9 = *(*v5 + 3) == *"sion") : (v9 = 0), !v9))
  {
LABEL_10:
    v25 = *a2;
    v10 = sub_2718289B0(result);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v25;
    v25 = v12;
    sub_2715CC40C(&v25, v11);
    v4 = *(result + 40);
  }

  if (*v4 <= 1u)
  {
    v13 = *v7;
    *v5 = "proceed_n";
    *v8 = 9;
    if ((v13 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((a2[2] & 1) == 0)
  {
    v25 = 0;
    v15 = sub_2718289B0(result);
    v16 = *v15;
    *v15 = 0;
    goto LABEL_23;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v14 = *(*v5 + 3) == *"sion") : (v14 = 0), !v14))
  {
    v25 = a2[1];
    v15 = sub_2718289B0(result);
    v16 = *v15;
    *v15 = 6;
LABEL_23:
    v17 = v15[1];
    v15[1] = v25;
    v25 = v17;
    sub_2715CC40C(&v25, v16);
  }

  if (**(result + 40) <= 1u)
  {
    v18 = *v7;
    *v5 = "proceed_until";
    *v8 = 13;
    if ((v18 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((a2[4] & 1) == 0)
  {
    v25 = 0;
    v23 = sub_2718289B0(result);
    v21 = *v23;
    *v23 = 0;
    v24 = v23[1];
    v23[1] = v25;
    v25 = v24;
    goto LABEL_36;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v19 = *(*v5 + 3) == *"sion") : (v19 = 0), !v19))
  {
    v25 = a2[3];
    v20 = sub_2718289B0(result);
    v21 = *v20;
    *v20 = 6;
    v22 = v20[1];
    v20[1] = v25;
    v25 = v22;
LABEL_36:
    sub_2715CC40C(&v25, v21);
  }
}

void sub_2714BB368(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v13 = (v7 + 16);
      sub_2718460EC(&v13, 4u);
    }

    else
    {
      sub_27184636C(&v13, (v7 + 8), 4u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v13 = (v6 + 16);
      sub_2718460EC(&v13, 5u);
    }

    else
    {
      sub_27184636C(&v13, (v6 + 8), 5u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v13 = (v5 + 16);
      sub_2718460EC(&v13, 6u);
    }

    else
    {
      sub_27184636C(&v13, (v5 + 8), 6u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6);
  }

  v8 = *(a2 + 24);
  v9 = *(*(v8 + 88) - 8);
  sub_2718404E0((v8 + 48), *(v8 + 16) - v9 - 9);
  v10 = *(v8 + 48);
  if (v10)
  {
    memmove((*(v8 + 24) + v9), *(v8 + 56), v10);
  }

  *(v8 + 48) = 0;
  v11 = *(v8 + 80);
  v12 = *(v8 + 88) - 8;
  *(v8 + 88) = v12;
  if (v11 == v12)
  {
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(*(v8 + 24));
      *(v8 + 40) = 0;
    }
  }

  sub_2714BB534(&v13, a2, v3 + 200);
}

void sub_2714BB534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 24);
  if (*(v5 + 40) == 1)
  {
    *&v22[0] = v5 + 16;
    sub_2718460EC(v22, 1u);
  }

  else
  {
    sub_27184636C(v22, (v5 + 8), 1u);
  }

  sub_271840ADC(*(a2 + 24));
  v6 = *(a3 + 16);
  v22[0] = *a3;
  v22[1] = v6;
  v22[2] = *(a3 + 32);
  v23 = *(a3 + 48);
  if (v23)
  {
    v20 = 1;
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v21 = (v7 + 16);
      sub_2718454CC(&v21, &v20);
    }

    else
    {
      LOBYTE(v21) = 1;
      std::ostream::write();
    }

    v9 = *(a2 + 24);
    if (*(v9 + 40) == 1)
    {
      v21 = (v9 + 16);
      sub_2718460EC(&v21, 1u);
    }

    else
    {
      sub_27184636C(&v21, (v9 + 8), 1u);
    }

    sub_271840ADC(*(a2 + 24));
    sub_271496D74(a2, v22 + 1);
    v10 = *(a2 + 24);
    v11 = *(*(v10 + 88) - 8);
    sub_2718404E0((v10 + 48), *(v10 + 16) - v11 - 9);
    v12 = *(v10 + 48);
    if (v12)
    {
      memmove((*(v10 + 24) + v11), *(v10 + 56), v12);
    }

    *(v10 + 48) = 0;
    v13 = *(v10 + 80);
    v14 = *(v10 + 88) - 8;
    *(v10 + 88) = v14;
    if (v13 == v14)
    {
      std::ostream::write();
      if (*(v10 + 40) == 1)
      {
        free(*(v10 + 24));
        *(v10 + 40) = 0;
      }
    }
  }

  else
  {
    v20 = 0;
    v8 = *(a2 + 24);
    if (*(v8 + 40) == 1)
    {
      v21 = (v8 + 16);
      sub_2718454CC(&v21, &v20);
    }

    else
    {
      LOBYTE(v21) = 0;
      std::ostream::write();
    }
  }

  v15 = *(a2 + 24);
  v16 = *(*(v15 + 88) - 8);
  sub_2718404E0((v15 + 48), *(v15 + 16) - v16 - 9);
  v17 = *(v15 + 48);
  if (v17)
  {
    memmove((*(v15 + 24) + v16), *(v15 + 56), v17);
  }

  *(v15 + 48) = 0;
  v18 = *(v15 + 80);
  v19 = *(v15 + 88) - 8;
  *(v15 + 88) = v19;
  if (v18 == v19)
  {
    std::ostream::write();
    if (*(v15 + 40) == 1)
    {
      free(*(v15 + 24));
      *(v15 + 40) = 0;
    }
  }
}

void sub_2714BB7BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CA870(&v26, v10);
        }

        sub_2713B6988(a2, v3 + 16, 6);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CA870(&v26, v17);
    }

    sub_2713DCA04(a2, v3 + 16, 5);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CA870(&v26, v24);
  }

  sub_2713DD090(a2, v3 + 16, 4);
}

void sub_2714BBC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_2715DF0F0(a2 + 48, (a2 + 40));
  v5 = sub_27182815C(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, v6 = *(a2 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a2 + 96) = 1;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    LOBYTE(v21[0]) = 6;
    *(&v21[0] + 1) = 1;
    v10 = sub_27182815C(a2);
    v11 = *v10;
    *v10 = 6;
    LOBYTE(v21[0]) = v11;
    v12 = v10[1];
    v10[1] = *(&v21[0] + 1);
    *(&v21[0] + 1) = v12;
    sub_2715CA870(v21 + 1, v11);
    v5 = *(a2 + 40);
  }

  v13 = *(a3 + 16);
  v21[0] = *a3;
  v21[1] = v13;
  v21[2] = *(a3 + 32);
  v22 = *(a3 + 48);
  if (*v5 <= 1u)
  {
    v14 = *(a2 + 88);
    *(a2 + 72) = "initial_sync_command";
    *(a2 + 80) = 20;
    if ((v14 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  if (v22)
  {
    v19 = *(a2 + 8);
    sub_2714BBE24(&v19, a2, v21 + 8);
  }

  else
  {
    LOBYTE(v19) = 0;
    v20 = 0;
    v15 = sub_27182815C(a2);
    v16 = *v15;
    *v15 = 0;
    LOBYTE(v19) = v16;
    v17 = v15[1];
    v15[1] = v20;
    v20 = v17;
    sub_2715CA870(&v20, v16);
  }

  v18 = *(a2 + 56);
  *(a2 + 40) = *(v18 - 8);
  *(a2 + 56) = v18 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_2714BBE24(int *a1, uint64_t a2, uint64_t a3)
{
  sub_2715DF0F0(a2 + 48, (a2 + 40));
  v6 = sub_27182815C(a2);
  *(a2 + 40) = v6;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a2 + 80);
    v9 = a2 + 72;
  }

  else
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    v7 = (a2 + 80);
    *(a2 + 88) = 1;
    v9 = a2 + 72;
    v8 = *(a2 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a2 + 96) = 1;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v13 = *a1;
      if (*a1 < 1)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }
  }

  LOBYTE(v24[0]) = 6;
  *(&v24[0] + 1) = 1;
  v14 = sub_27182815C(a2);
  v15 = *v14;
  *v14 = 6;
  LOBYTE(v24[0]) = v15;
  v16 = v14[1];
  v14[1] = *(&v24[0] + 1);
  *(&v24[0] + 1) = v16;
  sub_2715CA870(v24 + 1, v15);
  v13 = *a1;
  if (*a1 < 1)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (v13 != 2)
  {
    goto LABEL_24;
  }

  v17 = *(a2 + 88);
  if (**(a2 + 40) <= 1u)
  {
    *v9 = "min_version";
    *v7 = 11;
    if ((v17 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }

    goto LABEL_23;
  }

  if ((*(a2 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v18 = *(*v9 + 3) == *"sion") : (v18 = 0), !v18))
  {
LABEL_23:
    LOBYTE(v24[0]) = 6;
    *(&v24[0] + 1) = 1;
    v19 = sub_27182815C(a2);
    v20 = *v19;
    *v19 = 6;
    LOBYTE(v24[0]) = v20;
    v21 = v19[1];
    v19[1] = *(&v24[0] + 1);
    *(&v24[0] + 1) = v21;
    sub_2715CA870(v24 + 1, v20);
    goto LABEL_24;
  }

  *(a2 + 96) = 1;
  *(a2 + 100) = 1;
  *(a2 + 88) = 0;
LABEL_24:
  v22 = *(a3 + 16);
  v24[0] = *a3;
  v24[1] = v22;
  v25 = *(a3 + 32);
  sub_2714BC09C(a2, v24);
  v23 = *(a2 + 56);
  *(a2 + 40) = *(v23 - 8);
  *(a2 + 56) = v23 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}