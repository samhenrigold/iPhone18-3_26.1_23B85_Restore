void sub_4F89FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, void **a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23)
{
  v25 = *a14;
  if (*a14)
  {
    *(v23 + 128) = v25;
    operator delete(v25);
    sub_4F0C94((v23 + 80));
    if ((*(v23 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v26 = *(v23 + 32);
      if (!v26)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_4F0C94((v23 + 80));
    if ((*(v23 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*a10);
  v26 = *(v23 + 32);
  if (!v26)
  {
LABEL_4:
    v27 = *a11;
    if (!*a11)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v23 + 40) = v26;
  operator delete(v26);
  v27 = *a11;
  if (!*a11)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v23 + 16) = v27;
  operator delete(v27);
  _Unwind_Resume(a1);
}

void sub_4F8AD4(int *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 + ((a2[1] - *a2) >> 3);
  if (v4 > (a2[2] - *a2) >> 3)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *(a1 + 1);
  v6 = *a1;
  v10 = a2;
  if (v6)
  {
    v7 = 4 * v6;
    do
    {
      v8 = *v5++;
      v9 = a3(v8);
      sub_A2324(&v10, &v9);
      v7 -= 4;
    }

    while (v7);
  }
}

void sub_4F8BD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8) + ((a2[1] - *a2) >> 5);
  if (v3 > (a2[2] - *a2) >> 5)
  {
    if (!(v3 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = a2[1];
    v8 = 8 * v6;
    do
    {
      while (1)
      {
        v9 = *v5;
        if (v7 < a2[2])
        {
          break;
        }

        v7 = sub_4F98C4(a2, v9);
        a2[1] = v7;
        ++v5;
        v8 -= 8;
        if (!v8)
        {
          return;
        }
      }

      sub_4EB210(v7, v9);
      v7 += 32;
      a2[1] = v7;
      a2[1] = v7;
      ++v5;
      v8 -= 8;
    }

    while (v8);
  }
}

uint64_t sub_4F8CFC(uint64_t a1, uint64_t a2, void *a3, void *a4, __int128 **a5, __int128 *a6, void *a7)
{
  *(a1 + 8) = 0;
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v10 = a3[1];
  if (v10 != *a3)
  {
    if (((v10 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v11 = a4[1] - *a4;
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  sub_4F1814(a1 + 80, *a5, a5[1], 0xCCCCCCCCCCCCCCCDLL * (a5[1] - *a5));
  v12 = *a6;
  *(a1 + 120) = 0;
  *(a1 + 104) = v12;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v13 = a7[1] - *a7;
  if (v13)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_4F8E94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      v7 = *v4;
      if (!*v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 40) = v6;
  operator delete(v6);
  v7 = *v4;
  if (!*v4)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 16) = v7;
  operator delete(v7);
  goto LABEL_5;
}

void sub_4F8F14()
{
  if (!*v0)
  {
    JUMPOUT(0x4F8ED8);
  }

  JUMPOUT(0x4F8ED0);
}

BOOL sub_4F8F28(uint64_t a1)
{
  if (*(a1 + 40) - *(a1 + 32) > 0x20uLL)
  {
    return 1;
  }

  v2 = *(a1 + 79);
  if (v2 < 0)
  {
    return *(a1 + 64) != 0;
  }

  else
  {
    return v2 != 0;
  }
}

uint64_t sub_4F8F64(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t sub_4F8F70(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 144);
  *(a1 + 4) = sub_E89380(*(a2 + 148));
  *(a1 + 5) = sub_E84AD8(*(a2 + 176));
  v4 = sub_E84AD8(*(a2 + 180));
  *(a1 + 72) = 0;
  *(a1 + 6) = v4;
  *(a1 + 16) = -NAN;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 48) = 0x8000000080000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 56) = 0x7FFFFFFF;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v5 = *(a2 + 161);
  if (*(a2 + 162))
  {
    v5 |= 2uLL;
  }

  if (*(a2 + 163))
  {
    v5 |= 4uLL;
  }

  if (*(a2 + 164))
  {
    v5 |= 8uLL;
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = 10 * *(a2 + 168);
  if ((*(a2 + 16) & 0x800) != 0)
  {
    v6 = 1000 * *(a2 + 172);
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  *(a1 + 20) = v6;
  v7 = *(a2 + 104);
  if (v7)
  {
    v8 = v7 + 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + 96);
  v29 = a1 + 24;
  if (v9)
  {
    v10 = 8 * v9;
    do
    {
      v11 = 10 * *(*v8 + 32);
      *&v28 = *(*v8 + 24);
      DWORD2(v28) = v11;
      sub_4F9D20(&v29, &v28);
      v8 += 8;
      v10 -= 8;
    }

    while (v10);
  }

  if (*(a2 + 16))
  {
    v12 = *(a2 + 136);
    v13 = *(v12 + 32);
    v14 = *(v12 + 36);
    *(a1 + 48) = *(v12 + 24);
    *(a1 + 56) = v13;
    *(a1 + 64) = v14;
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  sub_4F9E4C(v16, &v16[*(a2 + 72)], (a1 + 72));
  v17 = *(a1 + 104);
  v18 = *(a2 + 120) + ((*(a1 + 112) - v17) >> 4);
  if (v18 > (*(a1 + 120) - v17) >> 4)
  {
    if (!(v18 >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v19 = *(a2 + 120);
  v20 = *(a2 + 128);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  v29 = a1 + 104;
  if (v19)
  {
    v22 = 8 * v19;
    do
    {
      v23 = *v21;
      nullsub_1();
      v25 = v24;
      v26 = sub_E7FB84(v23);
      *&v28 = v25;
      BYTE8(v28) = v26;
      sub_4FA3B0(&v29, &v28);
      ++v21;
      v22 -= 8;
    }

    while (v22);
  }

  return a1;
}

void sub_4F9220(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 112) = v6;
    operator delete(v6);
    sub_4F0F58(v2);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_4F0F58(v2);
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v7;
  operator delete(v7);
  _Unwind_Resume(a1);
}

__n128 sub_4F927C(char **a1, uint64_t *a2)
{
  sub_4FA4DC(a2, 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4) - 0x5555555555555555 * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    v7 = a2[1];
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v10 = vnegq_f64(v8);
    do
    {
      while (v7 >= a2[2])
      {
        v7 = sub_4FA5E0(a2, v5);
        a2[1] = v7;
        v5 += 24;
        if (v5 == v6)
        {
          return result;
        }
      }

      *v7 = 0x7FFFFFFFFFFFFFFFLL;
      *(v7 + 8) = 0u;
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0u;
      if (v5[23] < 0)
      {
        sub_325C((v7 + 56), *v5, *(v5 + 1));
      }

      else
      {
        v9 = *v5;
        *(v7 + 72) = *(v5 + 2);
        *(v7 + 56) = v9;
      }

      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      result = v10;
      *(v7 + 104) = v10;
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 120) = 0;
      v7 += 144;
      a2[1] = v7;
      a2[1] = v7;
      v5 += 24;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_4F93B8(_Unwind_Exception *exception_object)
{
  v5 = v2[4];
  if (v5)
  {
    v2[5] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      *(v1 + 8) = v2;
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v2[2] = v6;
  operator delete(v6);
  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_4F93FC(uint64_t a1, int a2, char **a3)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -NAN;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 56) = 0x7FFFFFFF;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0x8000000080000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_4F927C(a3, (a1 + 72));
  return a1;
}

void sub_4F94A4(_Unwind_Exception *a1)
{
  v5 = v3;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 112) = v7;
    operator delete(v7);
    sub_4F0F58(v2);
    v8 = *v4;
    if (!*v4)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_4F0F58(v2);
    v8 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v8;
  operator delete(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_4F94F4(uint64_t a1, int a2, char a3, uint64_t a4, char a5, char a6, int a7, int a8, int a9, void *a10, __int128 *a11, uint64_t *a12, void *a13)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 5) = a5;
  *(a1 + 6) = a6;
  *(a1 + 8) = a4;
  *(a1 + 24) = 0;
  *(a1 + 16) = a7;
  *(a1 + 20) = a8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = a10[1];
  if (v14 != *a10)
  {
    if (((v14 - *a10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v15 = *a11;
  v16 = *(a11 + 2);
  *(a1 + 72) = 0;
  *(a1 + 64) = v16;
  *(a1 + 48) = v15;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_4F14AC(a1 + 72, *a12, a12[1], 0x8E38E38E38E38E39 * ((a12[1] - *a12) >> 4));
  *(a1 + 104) = 0;
  *(a1 + 96) = a9;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v17 = a13[1];
  if (v17 != *a13)
  {
    if (((v17 - *a13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_4F9648(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4F96F4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 80);
  *a2 = *(result + 72) + 144 * *(result + 96);
  a2[1] = v2;
  return result;
}

uint64_t sub_4F970C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 80);
  *a2 = *(result + 72);
  a2[1] = v2;
  return result;
}

BOOL sub_4F973C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v1 = *(a1 + 80);
  if (v2 == v1)
  {
    return 1;
  }

  v3 = v2 + 144;
  do
  {
    v4 = *(v3 - 80);
    if (*(v3 - 65) >= 0)
    {
      v4 = *(v3 - 65);
    }

    result = v4 != 0;
    if (v4)
    {
      v6 = v3 == v1;
    }

    else
    {
      v6 = 1;
    }

    v3 += 144;
  }

  while (!v6);
  return result;
}

void sub_4F9780(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v3 != v2)
  {
    if (0x8E38E38E38E38E39 * ((v3 - v2) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a2;
  while (v2 != v3)
  {
    if (*(v2 + 79) < 0)
    {
      sub_325C(__p, *(v2 + 56), *(v2 + 64));
    }

    else
    {
      *__p = *(v2 + 56);
      v5 = *(v2 + 72);
    }

    sub_9A5A0(&v6, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }

    v2 += 144;
  }
}

void sub_4F98A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_4F98C4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = sub_4EB210(32 * v2, a2);
  v8 = v7 + 32;
  v9 = *a1;
  v10 = *(a1 + 8) - *a1;
  v11 = v7 - v10;
  memcpy((v7 - v10), *a1, v10);
  *a1 = v11;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_4F99B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_4F99C8(uint64_t *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_4F9B40(__int128 **a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v3)
  {
    v3 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * (a1[1] - *a1);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 56) = v7;
  v8 = 80 * v2 + 80;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v6 / 0x10] - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = &(*a1)[v6 / 0x10] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 6);
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = v12[2];
      *(v13 + 48) = *(v12 + 6);
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 6) = 0;
      v15 = *(v12 + 56);
      *(v13 + 72) = *(v12 + 9);
      *(v13 + 56) = v15;
      v12 += 5;
      v13 += 80;
    }

    while (v12 != v10);
    do
    {
      v16 = *(v9 + 4);
      if (v16)
      {
        *(v9 + 5) = v16;
        operator delete(v16);
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 5;
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

uint64_t *sub_4F9D20(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + 1;
    if (v8 >> 60)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(16 * v7) = *a2;
    v12 = 16 * v7 + 16;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

uint64_t *sub_4F9E4C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    while (1)
    {
      sub_4F857C(&v18, *v6);
      v7 = a3[1];
      if (v7 >= a3[2])
      {
        v10 = sub_4FA044(a3, &v18);
        v11 = __p[0];
        a3[1] = v10;
        if (v11)
        {
          __p[1] = v11;
          operator delete(v11);
        }
      }

      else
      {
        v8 = v18;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = v8;
        *(v7 + 8) = *v19;
        *(v7 + 24) = v20;
        v19[0] = 0;
        v19[1] = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = *v21;
        *(v7 + 48) = v22;
        v20 = 0;
        v21[0] = 0;
        v21[1] = 0;
        v22 = 0;
        v9 = v23;
        *(v7 + 72) = v24;
        *(v7 + 80) = 0;
        *(v7 + 56) = v9;
        v23 = 0uLL;
        *(v7 + 88) = 0;
        *(v7 + 96) = 0;
        *(v7 + 80) = *v25;
        *(v7 + 96) = v26;
        v24 = 0;
        v25[0] = 0;
        v25[1] = 0;
        v26 = 0;
        *(v7 + 104) = v27;
        *(v7 + 120) = 0;
        *(v7 + 128) = 0;
        *(v7 + 136) = 0;
        *(v7 + 120) = *__p;
        *(v7 + 136) = v29;
        __p[0] = 0;
        __p[1] = 0;
        v29 = 0;
        a3[1] = v7 + 144;
      }

      v12 = v25[0];
      if (v25[0])
      {
        v13 = v25[1];
        v14 = v25[0];
        if (v25[1] != v25[0])
        {
          do
          {
            v15 = *(v13 - 6);
            if (v15)
            {
              *(v13 - 5) = v15;
              operator delete(v15);
            }

            v16 = (v13 - 80);
            if (*(v13 - 57) < 0)
            {
              operator delete(*v16);
            }

            v13 -= 80;
          }

          while (v16 != v12);
          v14 = v25[0];
        }

        v25[1] = v12;
        operator delete(v14);
      }

      if (SHIBYTE(v24) < 0)
      {
        break;
      }

      v17 = v21[0];
      if (v21[0])
      {
        goto LABEL_21;
      }

LABEL_22:
      if (v19[0])
      {
        v19[1] = v19[0];
        operator delete(v19[0]);
      }

      if (++v6 == a2)
      {
        return a3;
      }
    }

    operator delete(v23);
    v17 = v21[0];
    if (!v21[0])
    {
      goto LABEL_22;
    }

LABEL_21:
    v21[1] = v17;
    operator delete(v17);
    goto LABEL_22;
  }

  return a3;
}

uint64_t sub_4FA044(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v16 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 144 * v2;
  *v6 = *a2;
  __p = 0;
  v13 = 144 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 56) = v7;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v6 + 104) = *(a2 + 104);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v14 = 144 * v2 + 144;
  v15 = 0;
  sub_4FA214(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 144;
    sub_4F0FB4(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_4FA200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4FA214(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      *v9 = *v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = *(v8 + 8);
      *(v9 + 24) = *(v8 + 24);
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 32) = *(v8 + 32);
      *(v9 + 48) = *(v8 + 48);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      v10 = *(v8 + 56);
      *(v9 + 72) = *(v8 + 72);
      *(v9 + 56) = v10;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v9 + 80) = *(v8 + 80);
      *(v9 + 96) = *(v8 + 96);
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = 0;
      *(v9 + 104) = *(v8 + 104);
      *(v9 + 128) = 0;
      *(v9 + 136) = 0;
      *(v9 + 120) = 0;
      *(v9 + 120) = *(v8 + 120);
      *(v9 + 136) = *(v8 + 136);
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 136) = 0;
      v8 += 144;
      v9 += 144;
    }

    while (v8 != v5);
    do
    {
      result = sub_4F0FB4(result) + 144;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v11 = *a1;
  *a1 = v7;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

uint64_t sub_4FA35C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_4F0FB4(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_4FA3B0(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + 1;
    if (v8 >> 60)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(16 * v7) = *a2;
    v12 = 16 * v7 + 16;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

void sub_4FA4DC(uint64_t *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_4FA5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4FA5E0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 144 * v2;
  __p = 0;
  v14 = v6;
  v15 = v6;
  v16 = 0;
  *v6 = 0x7FFFFFFFFFFFFFFFLL;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  if (*(a2 + 23) < 0)
  {
    sub_325C((v6 + 56), *a2, *(a2 + 8));
    v7 = v15;
  }

  else
  {
    *(v6 + 56) = *a2;
    *(v6 + 72) = *(a2 + 16);
    v7 = v6;
  }

  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *(v6 + 104) = vnegq_f64(v8);
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 120) = 0;
  v15 = v7 + 144;
  sub_4FA214(a1, &__p);
  v9 = a1[1];
  v11 = v14;
  for (i = v15; v15 != v11; i = v15)
  {
    v15 = i - 144;
    sub_4F0FB4(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_4FA788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = v3[4];
  if (v6)
  {
    v3[5] = v6;
    operator delete(v6);
    v7 = *v4;
    if (!*v4)
    {
LABEL_3:
      sub_4FA35C(va);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v3[2] = v7;
  operator delete(v7);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

void sub_4FA7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4FA7E8(uint64_t result, int a2, uint64_t *a3, char a4, uint64_t *a5)
{
  *result = a2;
  v5 = *a3;
  *(result + 12) = *(a3 + 2);
  *(result + 4) = v5;
  *(result + 16) = a4;
  v6 = *a5;
  *(result + 28) = *(a5 + 2);
  *(result + 20) = v6;
  return result;
}

BOOL sub_4FA814(int *a1)
{
  result = sub_4566B4(a1 + 1);
  if (result)
  {
    return a1[5] != -1 || a1[6] != -1;
  }

  return result;
}

uint64_t sub_4FA868(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_4FBC5C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  *v8 = *(a2 + 44);
  sub_456538((v8 + 4), *(a2 + 32), *(a2 + 40), *(a2 + 36));
  *(v8 + 16) = *(a2 + 48);
  v9 = *(a2 + 24);
  if (!v9)
  {
    v9 = &off_277E738;
  }

  v10 = v9[6];
  v11 = &off_277E5E8;
  if (v10)
  {
    v11 = v10;
  }

  v12 = *(v11 + 7);
  v13 = -1;
  if (v12 <= 180.0)
  {
    v14 = *(v11 + 6);
    if (fabs(v14) <= 85.0511288 && v12 >= -180.0)
    {
      v15 = sin(fmin(fmax(v14, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v16) = ((log((v15 + 1.0) / (1.0 - v15)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v16 >= 0xFFFFFFFE)
      {
        v16 = 4294967294;
      }

      else
      {
        v16 = v16;
      }

      v13 = ((v12 + 180.0) / 360.0 * 4294967300.0) | (v16 << 32);
    }
  }

  *(v8 + 20) = v13;
  *(v8 + 28) = 0x7FFFFFFF;
  v17 = a1[4];
  v18 = a1[5] + 1;
  a1[5] = v18;
  v19 = v17 + v18;
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 >> 7));
  v22 = *v21 + 32 * (v19 & 0x7F);
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  if (v22 == *v21)
  {
    return *(v21 - 1) + 4064;
  }

  else
  {
    return v22 - 32;
  }
}

uint64_t sub_4FAA84(void *a1, int a2, int a3)
{
  v3 = a1[5];
  if (v3)
  {
    v4 = a1[1];
    if (a1[2] != v4)
    {
      v5 = a1[4];
      v6 = (v4 + 8 * (v5 >> 7));
      v7 = (*v6 + 32 * (v5 & 0x7F));
      v8 = *(v4 + (((v5 + v3) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v5 + v3) & 0x7F);
      if (v7 != v8)
      {
        v10 = v7 + 8;
        v11 = (v4 + 8 * (v5 >> 7));
        if (v7 - *v6 + 32 == "work/NaturalLanguage")
        {
          v11 = v6 + 1;
          v10 = v6[1];
        }

        if (v10 != v8)
        {
          v12 = 0;
          while (1)
          {
            v14 = 10 * (*v7 - *v10);
            v15 = sub_3F80(v7 + 1);
            v17 = a3 < fabs((v15 - sub_3F80(v10 + 1))) || v14 > a2;
            if (v10 - *v11 + 32 == "work/NaturalLanguage")
            {
              v18 = v11[1];
              ++v11;
              v10 = v18;
              v7 += 8;
              if (v7 - *v6 != "work/NaturalLanguage")
              {
                goto LABEL_9;
              }
            }

            else
            {
              v10 += 8;
              v7 += 8;
              if (v7 - *v6 != "work/NaturalLanguage")
              {
                goto LABEL_9;
              }
            }

            v13 = v6[1];
            ++v6;
            v7 = v13;
LABEL_9:
            v12 |= v17;
            if (v10 == v8)
            {
              return v12 & 1;
            }
          }
        }
      }
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t sub_4FABFC(void *a1)
{
  v1 = a1[1];
  if (a1[2] != v1)
  {
    v2 = a1[4];
    v3 = (v1 + 8 * (v2 >> 7));
    v4 = *v3;
    v5 = *v3 + 32 * (v2 & 0x7F);
    v6 = *(v1 + (((a1[5] + v2) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v2) & 0x7F);
    while (v5 != v6)
    {
      result = *(v5 + 16);
      if (result)
      {
        return result;
      }

      v5 += 32;
      if (v5 - v4 == 4096)
      {
        v8 = v3[1];
        ++v3;
        v4 = v8;
        v5 = v8;
      }
    }
  }

  return 0;
}

_DWORD *sub_4FAC6C(_DWORD *result, int a2, int a3, int a4)
{
  *result = a4;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t sub_4FAC78(uint64_t a1, int a2, uint64_t a3, char a4)
{
  nullsub_1();
  v9 = sub_3F80(v8);
  v10 = !sub_E6F0C8(a3) | a4;
  v11 = sub_E6F44C(a3);
  *a1 = a2;
  *(a1 + 4) = v9;
  *(a1 + 8) = v10;
  *(a1 + 9) = v11;
  return a1;
}

uint64_t sub_4FACEC(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v3;
  v4 = *a3;
  *(result + 20) = *(a3 + 2);
  *(result + 12) = v4;
  return result;
}

uint64_t sub_4FAD10(uint64_t a1, uint64_t a2)
{
  v4 = &off_2776F48;
  if (*(a2 + 24))
  {
    v4 = *(a2 + 24);
  }

  if ((~*(v4 + 4) & 3) != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    sub_58558(a1, v4[3], v4[4]);
  }

  v5 = &off_277E5E8;
  if (*(a2 + 32))
  {
    v5 = *(a2 + 32);
  }

  v6 = *(v5 + 7);
  v7 = -1;
  if (v6 <= 180.0)
  {
    v8 = *(v5 + 6);
    if (fabs(v8) <= 85.0511288 && v6 >= -180.0)
    {
      v9 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v10) = ((log((v9 + 1.0) / (1.0 - v9)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v10 >= 0xFFFFFFFE)
      {
        v10 = 4294967294;
      }

      else
      {
        v10 = v10;
      }

      v7 = ((v6 + 180.0) / 360.0 * 4294967300.0) | (v10 << 32);
    }
  }

  *(a1 + 24) = v7;
  *(a1 + 32) = 0x7FFFFFFF;
  *(a1 + 36) = *(a2 + 40) + 978307200;
  *(a1 + 40) = sub_4EB334(*(a2 + 44));
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if ((*(a2 + 16) & 0x10) != 0)
  {
    v11 = *(a2 + 48);
  }

  *(a1 + 48) = v11;
  return a1;
}

__n128 sub_4FAEB4(__n128 *a1, __n128 *a2, uint64_t a3, unsigned __int32 a4, unsigned __int8 a5, unint64_t a6)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  v7 = *(a3 + 8);
  a1[1].n128_u64[1] = *a3;
  a1[2].n128_u32[0] = v7;
  a1[2].n128_u32[1] = a4;
  a1[2].n128_u8[8] = a5;
  a1[3].n128_u64[0] = a6;
  return result;
}

uint64_t sub_4FAEE0(uint64_t a1, uint64_t a2)
{
  *(a1 + 12) = 0;
  *(a1 + 16) = 0u;
  v52 = (a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0x3FF0000000000000;
  *(a1 + 72) = 0;
  v55 = (a1 + 72);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0u;
  v58 = (a1 + 104);
  *(a1 + 96) = 5;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0x7FFFFFFF;
  *(a1 + 160) = 0;
  v54 = (a1 + 160);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *a1 = *(a2 + 104);
  if ((*(a2 + 16) & 8) != 0)
  {
    v4 = *(a2 + 112);
  }

  else
  {
    v4 = -1;
  }

  *(a1 + 4) = v4;
  if ((*(a2 + 16) & 4) != 0)
  {
    *(a1 + 8) = *(a2 + 108);
    *(a1 + 12) = 1;
  }

  v5 = *(a2 + 96);
  if (!v5)
  {
    v5 = &off_2734418;
  }

  v60 = 0uLL;
  *v61 = 0uLL;
  *__p = 0uLL;
  *&v62 = v5[6];
  v6 = v5[5];
  if (v6)
  {
    v7 = (v6 + 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 8);
  if (v8)
  {
    v9 = 8 * v8;
    do
    {
      sub_4FA868(__p, *v7++);
      v9 -= 8;
    }

    while (v9);
  }

  sub_4FB7B4(v52, __p);
  *(a1 + 64) = v62;
  v10 = __p[1];
  v11 = v60;
  v61[1] = 0;
  v12 = (v60 - __p[1]) >> 3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v10);
      v11 = v60;
      v10 = (__p[1] + 8);
      __p[1] = v10;
      v12 = (v60 - v10) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = &stru_20 + 32;
    goto LABEL_20;
  }

  if (v12 == 2)
  {
    v13 = &stru_68 + 24;
LABEL_20:
    v61[0] = v13;
  }

  if (v10 != v11)
  {
    do
    {
      v14 = *v10++;
      operator delete(v14);
    }

    while (v10 != v11);
    if (v60 != __p[1])
    {
      *&v60 = v60 + ((__p[1] - v60 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v15 = *(a2 + 40);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v53 = a2;
  v17 = *(a2 + 32);
  if (v17)
  {
    v18 = 8 * v17;
    while (1)
    {
      v19 = *v16;
      __p[0] = 0;
      __p[1] = 0;
      *&v60 = 0;
      *v61 = 0u;
      v62 = 0u;
      DWORD2(v60) = 0;
      v63 = 0x7FFFFFFF;
      v64 = 0x7FFFFFFFFFFFFFFFLL;
      v20 = *(v19 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (__p == v20)
      {
        v21 = 0;
        v22 = 0;
      }

      else if (*(v20 + 23) < 0)
      {
        sub_13A68(__p, *v20, *(v20 + 8));
        v21 = v61[0];
        v22 = v61[1];
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = *v20;
        *&v60 = *(v20 + 16);
        *__p = v23;
      }

      v24 = *(v19 + 56);
      if (!v24)
      {
        v24 = &off_27341C0;
      }

      DWORD2(v60) = *(v24 + 6);
      v25 = *(v19 + 32);
      if (v25 > v22 - v21)
      {
        break;
      }

      if (v25 < v22 - v21)
      {
        v26 = &v21[v25];
LABEL_47:
        v61[1] = v26;
      }

      v27 = *(a1 + 80);
      if (v27 >= *(a1 + 88))
      {
        v28 = sub_3E4A68(v55, __p);
      }

      else
      {
        sub_3E4C44(*(a1 + 80), __p);
        v28 = v27 + 80;
        *(a1 + 80) = v27 + 80;
      }

      *(a1 + 80) = v28;
      if (v61[0])
      {
        v61[1] = v61[0];
        operator delete(v61[0]);
      }

      if (SBYTE7(v60) < 0)
      {
        operator delete(__p[0]);
      }

      ++v16;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_55;
      }
    }

    if (v62 - v22 < v25 - (v22 - v21))
    {
      if ((v25 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v26 = &v21[v25];
    goto LABEL_47;
  }

LABEL_55:
  if ((*(v53 + 16) & 0x40) != 0)
  {
    *(a1 + 96) = sub_899A0(*(v53 + 124));
  }

  v29 = *(v53 + 64);
  v30 = (v29 + 8);
  if (!v29)
  {
    v30 = 0;
  }

  v31 = *(v53 + 56);
  if (v31)
  {
    v56 = &v30[v31];
    do
    {
      v57 = v30;
      v32 = *v30;
      v33 = *(*v30 + 40);
      if (v33)
      {
        v34 = (v33 + 8);
      }

      else
      {
        v34 = 0;
      }

      v35 = *(v32 + 32);
      if (v35)
      {
        v36 = *(a1 + 144);
        v37 = 8 * v35;
        do
        {
          v40 = *(a1 + 112);
          v41 = 170 * ((*(a1 + 120) - v40) >> 3) - 1;
          v42 = *v34;
          if (*(a1 + 120) == v40)
          {
            v41 = 0;
          }

          v43 = v36 + *(a1 + 136);
          if (v41 == v43)
          {
            sub_3F4F54(v58);
            v40 = *(a1 + 112);
            v43 = *(a1 + 144) + *(a1 + 136);
          }

          v38 = *(v40 + 8 * (v43 / 0xAA)) + 24 * (v43 % 0xAA);
          *v38 = *(v42 + 24);
          *(v38 + 8) = 1000 * *(v42 + 32);
          v39 = *(v32 + 48);
          if (!v39)
          {
            v39 = &off_2734450;
          }

          *(v38 + 12) = *(v39 + 6);
          *(v38 + 16) = 1000 * *(v39 + 7);
          *(v38 + 20) = *(v39 + 16);
          v36 = *(a1 + 144) + 1;
          *(a1 + 144) = v36;
          ++v34;
          v37 -= 8;
        }

        while (v37);
      }

      v30 = v57 + 1;
    }

    while (v57 + 1 != v56);
  }

  if ((*(v53 + 16) & 0x20) != 0)
  {
    v44 = *(v53 + 120);
    if (v44 != 0x7FFFFFFF)
    {
      *(a1 + 152) = v44 + 978307200;
    }
  }

  v45 = *(v53 + 88);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  v47 = *(v53 + 80);
  if (v47)
  {
    v48 = *(a1 + 168);
    v49 = 8 * v47;
    do
    {
      v50 = *v46;
      if (v48 >= *(a1 + 176))
      {
        v48 = sub_4FBAF4(v54, v50);
      }

      else
      {
        sub_4FAD10(v48, v50);
        v48 += 56;
        *(a1 + 168) = v48;
      }

      *(a1 + 168) = v48;
      ++v46;
      v49 -= 8;
    }

    while (v49);
  }

  return a1;
}

void sub_4FB488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void ***a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *a12;
  if (*a12)
  {
    *(v16 + 168) = v18;
    operator delete(v18);
  }

  sub_4F0D1C(a16);
  sub_4F0C94(a13);
  sub_4F0E40(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_4FB508@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 168);
  *a2 = *(result + 160);
  a2[1] = v2;
  return result;
}

uint64_t sub_4FB514@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 160);
  v2 = *(result + 168);
  *a2 = v2;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v3;
  return result;
}

uint64_t sub_4FB524(void *a1, __int128 *a2, unint64_t a3)
{
  v3 = *(a2 + 9);
  if ((*(a2 + 6) & *(a2 + 7)) == -1 || v3 == 0x7FFFFFFF)
  {
    v5 = 0;
    v6 = a1[21];
  }

  else
  {
    v7 = a1[20];
    v6 = a1[21];
    if (v7 == v6 || *(v6 - 5) <= v3)
    {
      v8 = a1[22];
      if (v6 >= v8)
      {
        v13 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 3) + 1;
        if (v13 > 0x492492492492492)
        {
          sub_1794();
        }

        v14 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x249249249249249)
        {
          v15 = 0x492492492492492;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          if (v15 <= 0x492492492492492)
          {
            operator new();
          }

          sub_1808();
        }

        v16 = 8 * ((v6 - v7) >> 3);
        v17 = a2[1];
        *v16 = *a2;
        *(v16 + 16) = v17;
        *(v16 + 32) = a2[2];
        *(v16 + 48) = *(a2 + 6);
        v12 = v16 + 56;
        v18 = v16 - (v6 - v7);
        if (v7 != v6)
        {
          v19 = v7;
          v20 = v16 - (v6 - v7);
          do
          {
            v21 = *v19;
            v22 = *(v19 + 1);
            v23 = *(v19 + 2);
            *(v20 + 48) = *(v19 + 6);
            *(v20 + 16) = v22;
            *(v20 + 32) = v23;
            *v20 = v21;
            v20 += 56;
            v19 += 56;
          }

          while (v19 != v6);
        }

        a1[20] = v18;
        a1[21] = v12;
        a1[22] = 0;
        if (v7)
        {
          v24 = a1;
          v25 = a3;
          operator delete(v7);
          a3 = v25;
          a1 = v24;
        }
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
        v11 = a2[2];
        *(v6 + 6) = *(a2 + 6);
        *(v6 + 1) = v10;
        *(v6 + 2) = v11;
        *v6 = v9;
        v12 = (v6 + 56);
      }

      a1[21] = v12;
      v5 = 1;
      v6 = v12;
    }

    else
    {
      v5 = 0;
    }
  }

  v26 = a1[20];
  v27 = &v6[-56 * a3];
  if (0x6DB6DB6DB6DB6DB7 * (&v6[-v26] >> 3) <= a3 || v27 == v26)
  {
    return v5;
  }

  if (v27 != v6)
  {
    v30 = &v27[-v26];
    do
    {
      v31 = &v30[v26];
      *v26 = v30[v26];
      *(v26 + 8) = *&v30[v26 + 8];
      *(v26 + 16) = *&v30[v26 + 16];
      v32 = *&v30[v26 + 24];
      *(v26 + 32) = *&v30[v26 + 32];
      *(v26 + 24) = v32;
      v33 = *&v30[v26 + 36];
      *(v26 + 52) = *&v30[v26 + 52];
      *(v26 + 36) = v33;
      v26 += 56;
    }

    while (v31 + 56 != v6);
  }

  a1[21] = v26;
  return v5;
}

double sub_4FB7B4(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  a1[5] = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = a1[2];
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 64;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 128;
  }

  a1[4] = v8;
LABEL_8:
  sub_4FB890(a1);
  v10 = a1[1];
  v9 = a1[2];
  if (v9 != v10)
  {
    a1[2] = v9 + ((v10 - v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_4FB984(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_4FB890(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[1];
    if (v3 >= 0x80)
    {
      operator delete(*v4);
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v2 = a1[5];
      v3 = a1[4] - 128;
      a1[4] = v3;
    }

    v5 = a1[2];
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 16 * (v5 - v4) - 1;
    }

    if (v6 - (v2 + v3) >= 0x80)
    {
      operator delete(*(v5 - 1));
      a1[2] -= 8;
    }

    v7 = a1;
  }

  else
  {
    v8 = a1[2];
    if (v8 != a1[1])
    {
      do
      {
        operator delete(*(v8 - 8));
        v9 = a1[1];
        v8 = a1[2] - 8;
        a1[2] = v8;
      }

      while (v8 != v9);
    }

    a1[4] = 0;
    v7 = a1;
  }

  sub_4FB984(v7);
}

void sub_4FB984(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3 - v4;
  v7 = v2 - v5;
  if (v6 > v2 - v5)
  {
    v8 = v7 >> 3;
    if (v2 != v5)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    if (v7 < v6)
    {
      v9 = *(a1 + 8);
      v10 = (*(a1 + 16) - v9);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = (v10 - 1);
      if ((v10 - 1) < 0x18)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (-v9 >= 0x20)
        {
          v14 = (v12 >> 3) + 1;
          v13 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
          v15 = (v13 + v9);
          v16 = (v9 + 16);
          v17 = dword_10;
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          v9 = v15;
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v11;
            *(a1 + 24) = 8 * v8;
            if (v4)
            {

              operator delete(v4);
            }

            return;
          }
        }
      }

      do
      {
        v20 = *v9;
        v9 += 8;
        *v13++ = v20;
      }

      while (v13 != v11);
      goto LABEL_16;
    }
  }
}

uint64_t sub_4FBAF4(void **a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v4 = 0x492492492492492;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  sub_4FAD10(v5, a2);
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1 + v5 - v7;
  if (v7 != *a1)
  {
    v9 = *a1 + v5 - v7;
    do
    {
      v10 = *v6;
      v11 = v6[1];
      v12 = v6[2];
      *(v9 + 6) = *(v6 + 6);
      *(v9 + 1) = v11;
      *(v9 + 2) = v12;
      *v9 = v10;
      v9 += 56;
      v6 = (v6 + 56);
    }

    while (v6 != v7);
    v6 = *a1;
  }

  *a1 = v8;
  a1[1] = (v5 + 56);
  a1[2] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return v5 + 56;
}

void sub_4FBC44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_4FBC5C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  sub_2133C(a1, &v10);
}

void sub_4FBFCC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_4FC024(int a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_74700();
  sub_58568(v10);
  nullsub_1();
  v7 = sub_4EF360(a3);
  if (sub_585D8(v7))
  {
    sub_4EF360(a3);
LABEL_8:
    nullsub_1();
    return;
  }

  v8 = sub_73EC4(v6);
  v9 = sub_585D8(v8);
  if (a1 == 1 && (v9 & 1) == 0 && a2 <= 0xC && ((1 << a2) & 0x1C09) != 0)
  {
    sub_73ECC(v6);
    goto LABEL_8;
  }
}

BOOL sub_4FC0DC(uint64_t a1)
{
  if (sub_4EE33C(a1) == -1)
  {
    return 0;
  }

  v2 = sub_3CF23C(a1);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  nullsub_1();
  if (*(v4 + 128) != 1)
  {
    return 0;
  }

  nullsub_1();
  if ((*(v5 + 128) & 1) == 0)
  {
    sub_4F0F0C();
  }

  return sub_4F9718(v5) != 0;
}

void sub_4FC16C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = sub_4EE304(a1);
  sub_4FB508(v7, &v12);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = v12;
  v9 = v13;
  if (v12 != v13)
  {
    if (a3 == 0x7FFFFFFF)
    {
      do
      {
        v10 = *(v8 + 32);
        v14 = *(v8 + 24);
        v15 = v10;
        sub_376F0(a4, &v14);
        v8 += 56;
      }

      while (v8 != v9);
    }

    else
    {
      do
      {
        if (((10 * (a2 - *(v8 + 36))) & ~((10 * (a2 - *(v8 + 36))) >> 31)) <= a3)
        {
          v11 = *(v8 + 32);
          v14 = *(v8 + 24);
          v15 = v11;
          sub_376F0(a4, &v14);
        }

        v8 += 56;
      }

      while (v8 != v9);
    }
  }
}

void sub_4FC248(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4FC268(unsigned int a1)
{
  result = 3;
  if (a1 > 4)
  {
    if (a1 - 5 < 3)
    {
      return 0;
    }

    if (a1 == 900)
    {
      return result;
    }

    if (a1 == 12)
    {
      return 1;
    }

LABEL_10:
    v3 = ((5243 * (a1 >> 2)) >> 17) - 1;
    if (v3 <= 0x11)
    {
      return byte_2298380[v3];
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return result;
    }

    if (a1 == 1)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (a1 == 2)
  {
    return 2;
  }

  if (a1 == 3)
  {
    return 4;
  }

  return 5;
}

BOOL sub_4FC330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v62);
    sub_4A5C(&v62, "Journey has an invalid static departure time", 44);
    if ((v72 & 0x10) != 0)
    {
      v12 = v71;
      if (v71 < v68)
      {
        v71 = v68;
        v12 = v68;
      }

      v13 = v67;
      v6 = v12 - v67;
      if (v12 - v67 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v6 = 0;
        v61 = 0;
LABEL_101:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 1u);
LABEL_102:
        if (v61 < 0)
        {
          operator delete(__dst);
        }

        if (v70 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v64);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v13 = v65[0];
      v6 = v66 - v65[0];
      if (v66 - v65[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_41:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v61 = v6;
    if (!v6)
    {
      goto LABEL_101;
    }

LABEL_100:
    memmove(&__dst, v13, v6);
    goto LABEL_101;
  }

  v7 = *(a1 + 156);
  v8 = *(a1 + 4);
  if (v7 == 2 && v8 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v62);
    sub_4A5C(&v62, "Journey based on realtime data has an invalid expected departure time", 69);
    if ((v72 & 0x10) != 0)
    {
      v14 = v71;
      if (v71 < v68)
      {
        v71 = v68;
        v14 = v68;
      }

      v13 = v67;
      v6 = v14 - v67;
      if (v14 - v67 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v6 = 0;
        v61 = 0;
        goto LABEL_101;
      }

      v13 = v65[0];
      v6 = v66 - v65[0];
      if (v66 - v65[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_58:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v61 = v6;
    if (!v6)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  if (*(a1 + 24) == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v62);
    sub_4A5C(&v62, "Journey has an invalid static original departure time", 53);
    if ((v72 & 0x10) != 0)
    {
      v16 = v71;
      if (v71 < v68)
      {
        v71 = v68;
        v16 = v68;
      }

      v17 = &v67;
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v6 = 0;
        v61 = 0;
        goto LABEL_101;
      }

      v17 = v65;
      v16 = v66;
    }

    v13 = *v17;
    v6 = v16 - *v17;
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v61 = v16 - *v17;
    if (!v6)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  if ((v7 - 3) >= 0xFFFFFFFE && *(a1 + 28) == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v62);
    sub_4A5C(&v62, "Journey which was based on realtime data has an invalid original expected departure time", 88);
    if ((v72 & 0x10) != 0)
    {
      v18 = v71;
      if (v71 < v68)
      {
        v71 = v68;
        v18 = v68;
      }

      v19 = &v67;
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v6 = 0;
        v61 = 0;
        goto LABEL_101;
      }

      v19 = v65;
      v18 = v66;
    }

    v13 = *v19;
    v6 = v18 - *v19;
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v61 = v18 - *v19;
    if (!v6)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v11 = *(a1 + 12);
  if (v11 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v62);
    sub_4A5C(&v62, "Journey has an invalid static arrival time", 42);
    if ((v72 & 0x10) != 0)
    {
      v21 = v71;
      if (v71 < v68)
      {
        v71 = v68;
        v21 = v68;
      }

      v22 = &v67;
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v6 = 0;
        v61 = 0;
        goto LABEL_101;
      }

      v22 = v65;
      v21 = v66;
    }

    v13 = *v22;
    v6 = v21 - *v22;
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v61 = v21 - *v22;
    if (!v6)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v15 = *(a1 + 16);
  if (v7 == 2 && v15 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v62);
    sub_4A5C(&v62, "Journey based on realtime data has an invalid expected arrival time", 67);
    sub_1959680(&v62, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_62;
  }

  if (*(a1 + 36) == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v62);
    sub_4A5C(&v62, "Journey has an invalid static original arrival time", 51);
    sub_1959680(&v62, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_62;
  }

  if ((v7 - 3) < 0xFFFFFFFE)
  {
    if (!v7 && v4 > v11 && a2)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v62);
      sub_4A5C(&v62, "Journey has a negative static duration of ", 42);
      v20 = std::ostream::operator<<();
      sub_4A5C(v20, " sec", 4);
      sub_1959680(&v62, &__dst);
      sub_7E854(&__dst, 1u);
      goto LABEL_62;
    }

LABEL_114:
    v25 = *(a1 + 96);
    v24 = *(a1 + 104);
    if (v25 != v24)
    {
      if (v7 == 2)
      {
        while (*v25 != 0x7FFFFFFF)
        {
          if (v25[1] == 0x7FFFFFFF)
          {
            result = sub_7E7E4(1u);
            if (!result)
            {
              return result;
            }

            sub_19594F8(&v62);
            sub_4A5C(&v62, "Journey based on realtime data has an invalid future expected departure time entry", 82);
            sub_1959680(&v62, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_62;
          }

          if (*v25 < v4)
          {
            goto LABEL_133;
          }

          v25 += 3;
          if (v25 == v24)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        while (*v25 != 0x7FFFFFFF)
        {
          if (*v25 < v4)
          {
LABEL_133:
            v28 = a1;
            result = sub_7E7E4(1u);
            if (!result)
            {
              return result;
            }

            sub_19594F8(&v62);
            v29 = sub_4A5C(&v62, "Journey has a future static departure time which is before the journey's static departure time: ", 96);
            v30 = sub_258D4(v29, v25);
            v31 = sub_4A5C(v30, " < ", 3);
            sub_258D4(v31, v28);
            sub_1959680(&v62, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_62;
          }

          v25 += 3;
          if (v25 == v24)
          {
            goto LABEL_124;
          }
        }
      }

      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v62);
        sub_4A5C(&v62, "Journey has an invalid future static departure time entry", 57);
        sub_1959680(&v62, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_62;
      }

      return result;
    }

LABEL_124:
    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    if (v27 != v26)
    {
      if (v7 == 2)
      {
        while (*v27 != 0x7FFFFFFF)
        {
          if (v27[1] == 0x7FFFFFFF)
          {
            result = sub_7E7E4(1u);
            if (!result)
            {
              return result;
            }

            sub_19594F8(&v62);
            sub_4A5C(&v62, "Journey based on realtime data has an invalid past expected departure time entry", 80);
            sub_1959680(&v62, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_62;
          }

          if (*v27 > v4)
          {
            goto LABEL_163;
          }

          v27 += 3;
          if (v27 == v26)
          {
            goto LABEL_138;
          }
        }
      }

      else
      {
        while (*v27 != 0x7FFFFFFF)
        {
          if (*v27 > v4)
          {
LABEL_163:
            v48 = a1;
            result = sub_7E7E4(1u);
            if (!result)
            {
              return result;
            }

            sub_19594F8(&v62);
            v49 = sub_4A5C(&v62, "Journey has a past static departure time which is after the journey's static departure time: ", 93);
            v50 = sub_258D4(v49, v27);
            v51 = sub_4A5C(v50, " > ", 3);
            sub_258D4(v51, v48);
            sub_1959680(&v62, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_62;
          }

          v27 += 3;
          if (v27 == v26)
          {
            goto LABEL_138;
          }
        }
      }

      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v62);
        sub_4A5C(&v62, "Journey has an invalid past static departure time entry", 55);
        sub_1959680(&v62, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_62;
      }

      return result;
    }

LABEL_138:
    v32 = *(a1 + 48);
    if (v32 == *(a1 + 56))
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v62);
        sub_4A5C(&v62, "Journey has an empty set of journey segment bundles", 51);
        sub_1959680(&v62, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_62;
      }

      return result;
    }

    v59 = *(a1 + 48);
LABEL_140:
    v34 = *v32;
    v33 = *(v32 + 1);
    if (*v32 == v33)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v62);
      sub_4A5C(&v62, "Journey segment bundle has an empty set of journey segments", 59);
      if ((v72 & 0x10) != 0)
      {
        v54 = v71;
        if (v71 < v68)
        {
          v71 = v68;
          v54 = v68;
        }

        v55 = &v67;
      }

      else
      {
        if ((v72 & 8) == 0)
        {
          v52 = 0;
          v61 = 0;
LABEL_190:
          *(&__dst + v52) = 0;
          sub_7E854(&__dst, 1u);
          goto LABEL_102;
        }

        v55 = v65;
        v54 = v66;
      }

      v58 = *v55;
      v52 = v54 - *v55;
      if (v52 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v52 >= 0x17)
      {
        operator new();
      }

      v61 = v54 - *v55;
      if (!v52)
      {
        goto LABEL_190;
      }

LABEL_189:
      memmove(&__dst, v58, v52);
      goto LABEL_190;
    }

    v35 = v33 - *&v34 - 144;
    if (v35 >= 0x90)
    {
      v38 = 0;
      v39 = 0;
      v40 = v35 / 0x90 + 1;
      v37 = (*&v34 + 144 * (v40 & 0x3FFFFFFFFFFFFFELL));
      v41 = *v32;
      v42 = v40 & 0x3FFFFFFFFFFFFFELL;
      do
      {
        if (!*v41)
        {
          ++v38;
        }

        if (!v41[36])
        {
          ++v39;
        }

        v41 += 72;
        v42 -= 2;
      }

      while (v42);
      v36 = v39 + v38;
      if (v40 == (v40 & 0x3FFFFFFFFFFFFFELL))
      {
        goto LABEL_153;
      }
    }

    else
    {
      v36 = 0;
      v37 = *v32;
    }

    do
    {
      v43 = *v37;
      v37 += 36;
      if (!v43)
      {
        ++v36;
      }
    }

    while (v37 != v33);
LABEL_153:
    if (v36 == 1)
    {
      v44 = a2;
      v45 = a3;
      v46 = a4;
      v62 = *v32;
      while (1)
      {
        v47 = a1;
        if (!sub_4FD68C(a1, &v59, &v62, v44, v45, v46))
        {
          return 0;
        }

        *&v34 += 144;
        v62 = v34;
        a1 = v47;
        if (*&v34 == *(v32 + 1))
        {
          v32 += 8;
          v59 = v32;
          a4 = v46;
          a3 = v45;
          a2 = v44;
          if (v32 != *(v47 + 56))
          {
            goto LABEL_140;
          }

          return 1;
        }
      }
    }

    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v62);
    sub_4A5C(&v62, "Journey segment bundle has ", 27);
    v53 = std::ostream::operator<<();
    sub_4A5C(v53, " segments of type MAIN", 22);
    if ((v72 & 0x10) != 0)
    {
      v56 = v71;
      if (v71 < v68)
      {
        v71 = v68;
        v56 = v68;
      }

      v57 = &v67;
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v52 = 0;
        v61 = 0;
        goto LABEL_190;
      }

      v57 = v65;
      v56 = v66;
    }

    v58 = *v57;
    v52 = v56 - *v57;
    if (v52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v52 >= 0x17)
    {
      operator new();
    }

    v61 = v56 - *v57;
    if (!v52)
    {
      goto LABEL_190;
    }

    goto LABEL_189;
  }

  if (*(a1 + 40) == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v62);
    sub_4A5C(&v62, "Journey which was based on realtime data has an invalid original expected arrival time", 86);
    sub_1959680(&v62, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_62;
  }

  if (v7 != 2 || !a2 || v8 <= v15)
  {
    goto LABEL_114;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v62);
    sub_4A5C(&v62, "Journey based on realtime data has a negative expected duration of ", 67);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, " sec", 4);
    sub_1959680(&v62, &__dst);
    sub_7E854(&__dst, 1u);
LABEL_62:
    if (v61 < 0)
    {
      operator delete(__dst);
    }

    sub_1959728(&v62);
    return 0;
  }

  return result;
}

void sub_4FD280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

BOOL sub_4FD60C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    return 1;
  }

  do
  {
    result = sub_4FC330(v4, a2, a3, a4);
    if (!result)
    {
      break;
    }

    v4 += 232;
  }

  while (v4 != v5);
  return result;
}

BOOL sub_4FD68C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + 16);
  v7 = *(*a3 + 8);
  if (v7 == v6)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v129);
    sub_4A5C(&v129, "Journey segment has an empty sequence of journey legs", 53);
    if ((v139 & 0x10) != 0)
    {
      v50 = v138;
      if (v138 < v135)
      {
        v138 = v135;
        v50 = v135;
      }

      v51 = v134;
      v21 = v50 - v134;
      if (v50 - v134 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if ((v139 & 8) == 0)
      {
        v21 = 0;
        v128 = 0;
        goto LABEL_137;
      }

      v51 = v132[0];
      v21 = v133 - v132[0];
      if (v133 - v132[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_145:
        sub_3244();
      }
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v128 = v21;
    if (v21)
    {
      goto LABEL_136;
    }

    goto LABEL_137;
  }

  v14 = v7 + 1136;
  while (v14 != v6)
  {
    v15 = *(v14 - 1084);
    v16 = *(v14 - 8);
    v17 = *(v14 + 52);
    v18 = *(v14 + 1128);
    v14 += 1136;
    if (v16)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18 == 0;
    }

    if (v19 && v15 != v17)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v129);
      sub_4A5C(&v129, "Journey segment contains public transport journey legs with differing risk statuses", 83);
      if ((v139 & 0x10) != 0)
      {
        v52 = v138;
        if (v138 < v135)
        {
          v138 = v135;
          v52 = v135;
        }

        v51 = v134;
        v21 = v52 - v134;
        if (v52 - v134 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if ((v139 & 8) == 0)
        {
          v21 = 0;
          v128 = 0;
          goto LABEL_137;
        }

        v51 = v132[0];
        v21 = v133 - v132[0];
        if (v133 - v132[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_147:
          sub_3244();
        }
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v128 = v21;
      if (v21)
      {
        goto LABEL_136;
      }

      goto LABEL_137;
    }
  }

  while (1)
  {
    if (sub_50360C(v7) == 0x7FFFFFFF)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v129);
      sub_4A5C(&v129, "Journey leg has an invalid static departure time", 48);
      if ((v139 & 0x10) != 0)
      {
        v63 = v138;
        if (v138 < v135)
        {
          v138 = v135;
          v63 = v135;
        }

        v64 = &v134;
      }

      else
      {
        if ((v139 & 8) == 0)
        {
          v21 = 0;
          v128 = 0;
          goto LABEL_137;
        }

        v64 = v132;
        v63 = v133;
      }

      v51 = *v64;
      v21 = v63 - *v64;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v128 = v63 - *v64;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    if (*(a1 + 156) == 2 && sub_50360C(v7) >> 32 == 0x7FFFFFFF)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v129);
      sub_4A5C(&v129, "Journey based on realtime data has a journey leg with an invalid expected departure time", 88);
      if ((v139 & 0x10) != 0)
      {
        v77 = v138;
        if (v138 < v135)
        {
          v138 = v135;
          v77 = v135;
        }

        v78 = &v134;
      }

      else
      {
        if ((v139 & 8) == 0)
        {
          v21 = 0;
          v128 = 0;
          goto LABEL_137;
        }

        v78 = v132;
        v77 = v133;
      }

      v51 = *v78;
      v21 = v77 - *v78;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v128 = v77 - *v78;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    if (sub_503828(v7) == 0x7FFFFFFF)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v129);
      sub_4A5C(&v129, "Journey leg has an invalid static arrival time", 46);
      if ((v139 & 0x10) != 0)
      {
        v65 = v138;
        if (v138 < v135)
        {
          v138 = v135;
          v65 = v135;
        }

        v66 = &v134;
      }

      else
      {
        if ((v139 & 8) == 0)
        {
          v21 = 0;
          v128 = 0;
          goto LABEL_137;
        }

        v66 = v132;
        v65 = v133;
      }

      v51 = *v66;
      v21 = v65 - *v66;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v128 = v65 - *v66;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    v22 = *(a1 + 156);
    if (v22 == 2)
    {
      if (sub_503828(v7) >> 32 == 0x7FFFFFFF)
      {
        if (!sub_7E7E4(1u))
        {
          return 0;
        }

        sub_19594F8(&v129);
        sub_4A5C(&v129, "Journey based on realtime data has a journey leg with an invalid expected arrival time", 86);
        if ((v139 & 0x10) != 0)
        {
          v79 = v138;
          if (v138 < v135)
          {
            v138 = v135;
            v79 = v135;
          }

          v80 = &v134;
        }

        else
        {
          if ((v139 & 8) == 0)
          {
            v21 = 0;
            v128 = 0;
            goto LABEL_137;
          }

          v80 = v132;
          v79 = v133;
        }

        v51 = *v80;
        v21 = v79 - *v80;
        if (v21 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v21 >= 0x17)
        {
          operator new();
        }

        v128 = v79 - *v80;
        if (!v21)
        {
          goto LABEL_137;
        }

        goto LABEL_136;
      }

      v22 = *(a1 + 156);
    }

    if (v22)
    {
      if (v22 != 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = sub_50360C(v7);
      if (v23 > sub_503828(v7))
      {
        if (!sub_7E7E4(1u))
        {
          return 0;
        }

        sub_19594F8(&v129);
        sub_4A5C(&v129, "Journey leg has a negative static duration of ", 46);
        sub_503828(v7);
        sub_50360C(v7);
        v60 = std::ostream::operator<<();
        sub_4A5C(v60, " sec", 4);
        if ((v139 & 0x10) != 0)
        {
          v86 = v138;
          if (v138 < v135)
          {
            v138 = v135;
            v86 = v135;
          }

          v87 = &v134;
        }

        else
        {
          if ((v139 & 8) == 0)
          {
            v21 = 0;
            v128 = 0;
            goto LABEL_137;
          }

          v87 = v132;
          v86 = v133;
        }

        v51 = *v87;
        v21 = v86 - *v87;
        if (v21 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v21 >= 0x17)
        {
          operator new();
        }

        v128 = v86 - *v87;
        if (!v21)
        {
          goto LABEL_137;
        }

        goto LABEL_136;
      }

      if (*(a1 + 156) != 2)
      {
        goto LABEL_34;
      }
    }

    v24 = sub_50360C(v7);
    if (SHIDWORD(v24) > (sub_503828(v7) >> 32))
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v129);
      sub_4A5C(&v129, "Journey based on realtime data has a journey leg with a negative expected duration of ", 86);
      sub_503828(v7);
      sub_50360C(v7);
      v58 = std::ostream::operator<<();
      sub_4A5C(v58, " sec", 4);
      if ((v139 & 0x10) != 0)
      {
        v82 = v138;
        if (v138 < v135)
        {
          v138 = v135;
          v82 = v135;
        }

        v83 = &v134;
      }

      else
      {
        if ((v139 & 8) == 0)
        {
          v21 = 0;
          v128 = 0;
          goto LABEL_137;
        }

        v83 = v132;
        v82 = v133;
      }

      v51 = *v83;
      v21 = v82 - *v83;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v128 = v82 - *v83;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

LABEL_34:
    v25 = (v7 + 1136);
    if (*(*a3 + 16) == v7 + 1136)
    {
      v33 = (*a2 + 64);
      if (*(a1 + 56) != v33)
      {
        v34 = *(*a2 + 72);
        v35 = *v33;
        if (v35 != v34)
        {
          while (*v35)
          {
            v35 += 144;
            if (v35 == v34)
            {
              goto LABEL_131;
            }
          }
        }

        if (v35 == v34 || (v40 = *(v35 + 8), v40 == *(v35 + 16)))
        {
LABEL_131:
          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v129);
          sub_4A5C(&v129, "Unable to resolve subsequent journey leg", 40);
          if ((v139 & 0x10) != 0)
          {
            v56 = v138;
            if (v138 < v135)
            {
              v138 = v135;
              v56 = v135;
            }

            v57 = &v134;
          }

          else
          {
            if ((v139 & 8) == 0)
            {
              v21 = 0;
              v128 = 0;
              goto LABEL_137;
            }

            v57 = v132;
            v56 = v133;
          }

          v51 = *v57;
          v21 = v56 - *v57;
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v21 >= 0x17)
          {
            operator new();
          }

          v128 = v56 - *v57;
          if (!v21)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        v41 = *(a1 + 156);
        if (a4 && !v41)
        {
          v42 = sub_503828(v7);
          if (v42 > sub_50360C(v40))
          {
            if (!sub_7E7E4(1u))
            {
              return 0;
            }

            sub_19594F8(&v129);
            v88 = sub_4A5C(&v129, "Journey leg has a static arrival time after the subsequent leg's static departure time: ", 88);
            __dst = sub_503828(v7);
            LOWORD(v127) = v89;
            v90 = sub_258D4(v88, &__dst);
            v91 = sub_4A5C(v90, " > ", 3);
            v124 = sub_50360C(v40);
            v125 = v92;
            sub_258D4(v91, &v124);
            sub_1959680(&v129, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_303;
          }

          v41 = *(a1 + 156);
        }

        if (a4)
        {
          if (v41 == 2)
          {
            v43 = a2;
            v44 = a6;
            v45 = a5;
            v46 = sub_503828(v7);
            v47 = sub_50360C(v40);
            v48 = HIDWORD(v46);
            a5 = v45;
            a6 = v44;
            a2 = v43;
            if (v48 > SHIDWORD(v47))
            {
              if (!sub_7E7E4(1u))
              {
                return 0;
              }

              sub_19594F8(&v129);
              v94 = sub_4A5C(&v129, "Journey based on realtime data has a journey leg with an expected arrival time after the subsequent leg's expected departure time: ", 131);
              __dst = sub_503828(v7);
              LOWORD(v127) = v95;
              v96 = sub_258D4(v94, &__dst + 1);
              v97 = sub_4A5C(v96, " > ", 3);
              v124 = sub_50360C(v40);
              v125 = v98;
              sub_258D4(v97, &v124 + 1);
              sub_1959680(&v129, &__dst);
              sub_7E854(&__dst, 1u);
              goto LABEL_303;
            }
          }
        }
      }
    }

    if (a4)
    {
      v26 = *(*a3 + 16);
      v27 = *(a1 + 156);
      if (v26 != v25 && v27 == 0)
      {
        v29 = sub_503828(v7);
        if (v29 > sub_50360C((v7 + 1136)))
        {
          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v129);
          v67 = sub_4A5C(&v129, "Journey leg has a static arrival time after the subsequent leg's static departure time: ", 88);
          __dst = sub_503828(v7);
          LOWORD(v127) = v68;
          v69 = sub_258D4(v67, &__dst);
          v70 = sub_4A5C(v69, " > ", 3);
          v124 = sub_50360C(v25);
          v125 = v71;
          sub_258D4(v70, &v124);
          sub_1959680(&v129, &__dst);
          sub_7E854(&__dst, 1u);
          goto LABEL_303;
        }

        v26 = *(*a3 + 16);
        v27 = *(a1 + 156);
      }

      if (v26 != v25 && v27 == 2)
      {
        v31 = sub_503828(v7);
        if (SHIDWORD(v31) > (sub_50360C((v7 + 1136)) >> 32))
        {
          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v129);
          v72 = sub_4A5C(&v129, "Journey based on realtime data has a journey leg with an expected arrival time after the subsequent leg's expected departure time: ", 131);
          __dst = sub_503828(v7);
          LOWORD(v127) = v73;
          v74 = sub_258D4(v72, &__dst + 1);
          v75 = sub_4A5C(v74, " > ", 3);
          v124 = sub_50360C(v25);
          v125 = v76;
          sub_258D4(v75, &v124 + 1);
          sub_1959680(&v129, &__dst);
          sub_7E854(&__dst, 1u);
          goto LABEL_303;
        }
      }
    }

    v32 = *(v7 + 1128);
    if (v32 <= 1)
    {
      break;
    }

    if (v32 != 2)
    {
      if (v32 == 3)
      {
        if (!a6)
        {
          goto LABEL_20;
        }

        if (sub_4D1F6C((v7 + 32)))
        {
          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v129);
          sub_4A5C(&v129, "Street walking journey leg has a route with no segments", 55);
          if ((v139 & 0x10) != 0)
          {
            v118 = v138;
            if (v138 < v135)
            {
              v138 = v135;
              v118 = v135;
            }

            v119 = &v134;
          }

          else
          {
            if ((v139 & 8) == 0)
            {
              v21 = 0;
              v128 = 0;
              goto LABEL_137;
            }

            v119 = v132;
            v118 = v133;
          }

          v51 = *v119;
          v21 = v118 - *v119;
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v21 >= 0x17)
          {
            operator new();
          }

          v128 = v118 - *v119;
          if (!v21)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        if (!sub_4D6530((v7 + 32)))
        {
          return 0;
        }

        v32 = *(v7 + 1128);
      }

      else if (v32 == 4)
      {
        if (*(a1 + 56) - *(a1 + 48) != 64 || *(*a2 + 8) - **a2 != 144 || *(*a3 + 16) - *(*a3 + 8) != 1136)
        {
          if (!sub_7E7E4(3u))
          {
            return 0;
          }

          sub_19594F8(&v129);
          sub_4A5C(&v129, "Journey contains a self-transfer journey leg, however, it is not the only leg of the journey.", 93);
          if ((v139 & 0x10) != 0)
          {
            v84 = v138;
            if (v138 < v135)
            {
              v138 = v135;
              v84 = v135;
            }

            v85 = &v134;
          }

          else
          {
            if ((v139 & 8) == 0)
            {
              v59 = 0;
              v128 = 0;
LABEL_330:
              *(&__dst + v59) = 0;
              sub_7E854(&__dst, 3u);
              goto LABEL_138;
            }

            v85 = v132;
            v84 = v133;
          }

          v103 = *v85;
          v59 = v84 - *v85;
          if (v59 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v59 >= 0x17)
          {
            operator new();
          }

          v128 = v84 - *v85;
          if (v59)
          {
            memmove(&__dst, v103, v59);
          }

          goto LABEL_330;
        }

LABEL_111:
        if (*(v7 + 4) == -1 || !*(v7 + 8))
        {
          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v129);
          sub_4A5C(&v129, "Self-transfer journey leg has an invalid stop reference", 55);
          if ((v139 & 0x10) != 0)
          {
            v101 = v138;
            if (v138 < v135)
            {
              v138 = v135;
              v101 = v135;
            }

            v102 = &v134;
          }

          else
          {
            if ((v139 & 8) == 0)
            {
              v21 = 0;
              v128 = 0;
              goto LABEL_137;
            }

            v102 = v132;
            v101 = v133;
          }

          v51 = *v102;
          v21 = v101 - *v102;
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v21 >= 0x17)
          {
            operator new();
          }

          v128 = v101 - *v102;
          if (v21)
          {
            goto LABEL_136;
          }

          goto LABEL_137;
        }

        goto LABEL_20;
      }

LABEL_110:
      if (v32 != 4)
      {
        goto LABEL_20;
      }

      goto LABEL_111;
    }

    if (*(v7 + 12) == -1 || !*(v7 + 16))
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v129);
      sub_4A5C(&v129, "Road access point journey leg has an invalid road access point reference", 72);
      if ((v139 & 0x10) != 0)
      {
        v104 = v138;
        if (v138 < v135)
        {
          v138 = v135;
          v104 = v135;
        }

        v105 = &v134;
      }

      else
      {
        if ((v139 & 8) == 0)
        {
          v21 = 0;
          v128 = 0;
          goto LABEL_137;
        }

        v105 = v132;
        v104 = v133;
      }

      v51 = *v105;
      v21 = v104 - *v105;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v128 = v104 - *v105;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

LABEL_20:
    v7 += 1136;
    if (v7 == *(*a3 + 16))
    {
      if (!sub_4FFDAC(*(*a3 + 32), *(*a3 + 40)) || !sub_4FFDAC(*(*a3 + 56), *(*a3 + 64)))
      {
        return 0;
      }

      v54 = *(*a3 + 80);
      v55 = *(*a3 + 88);

      return sub_4FFDAC(v54, v55);
    }
  }

  if (v32)
  {
    if (v32 != 1)
    {
      goto LABEL_110;
    }

    if (*(v7 + 8) == -1 || !*(v7 + 12))
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v129);
      sub_4A5C(&v129, "In-station walking journey leg has an origin terminal which is not a transit entity", 83);
      if ((v139 & 0x10) != 0)
      {
        v106 = v138;
        if (v138 < v135)
        {
          v138 = v135;
          v106 = v135;
        }

        v107 = &v134;
      }

      else
      {
        if ((v139 & 8) == 0)
        {
          v21 = 0;
          v128 = 0;
          goto LABEL_137;
        }

        v107 = v132;
        v106 = v133;
      }

      v51 = *v107;
      v21 = v106 - *v107;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v128 = v106 - *v107;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    v36 = *(v7 + 4);
    if (v36 && v36 != 3)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v129);
      v99 = sub_4A5C(&v129, "In-station walking journey leg has an unsupported origin terminal entity type of ", 81);
      sub_5066C8(v99, *(v7 + 4));
      if ((v139 & 0x10) != 0)
      {
        v120 = v138;
        if (v138 < v135)
        {
          v138 = v135;
          v120 = v135;
        }

        v121 = &v134;
      }

      else
      {
        if ((v139 & 8) == 0)
        {
          v21 = 0;
          v128 = 0;
          goto LABEL_137;
        }

        v121 = v132;
        v120 = v133;
      }

      v51 = *v121;
      v21 = v120 - *v121;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v128 = v120 - *v121;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    if (*(v7 + 20) == -1 || !*(v7 + 24))
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v129);
      sub_4A5C(&v129, "In-station walking journey leg has a destination terminal which is not a transit entity", 87);
      if ((v139 & 0x10) != 0)
      {
        v110 = v138;
        if (v138 < v135)
        {
          v138 = v135;
          v110 = v135;
        }

        v111 = &v134;
      }

      else
      {
        if ((v139 & 8) == 0)
        {
          v21 = 0;
          v128 = 0;
          goto LABEL_137;
        }

        v111 = v132;
        v110 = v133;
      }

      v51 = *v111;
      v21 = v110 - *v111;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v128 = v110 - *v111;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    v37 = *(v7 + 16);
    if (v37 && v37 != 3)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v129);
      v100 = sub_4A5C(&v129, "In-station walking journey leg has an unsupported destination terminal entity type of ", 86);
      sub_5066C8(v100, *(v7 + 16));
      if ((v139 & 0x10) != 0)
      {
        v122 = v138;
        if (v138 < v135)
        {
          v138 = v135;
          v122 = v135;
        }

        v123 = &v134;
      }

      else
      {
        if ((v139 & 8) == 0)
        {
          v21 = 0;
          v128 = 0;
          goto LABEL_137;
        }

        v123 = v132;
        v122 = v133;
      }

      v51 = *v123;
      v21 = v122 - *v123;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v128 = v122 - *v123;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    if (a5)
    {
      if (*(v7 + 36) == -1 || !*(v7 + 40))
      {
        if (!sub_7E7E4(1u))
        {
          return 0;
        }

        sub_19594F8(&v129);
        sub_4A5C(&v129, "In-station walking journey leg has an invalid transfer graph reference", 70);
        sub_1959680(&v129, &__dst);
        sub_7E854(&__dst, 1u);
      }

      else
      {
        v38 = *(v7 + 48);
        v39 = *(v7 + 56);
        if (v38 != v39)
        {
LABEL_97:
          while (HIDWORD(*v38) && *v38 != 0xFFFFFFFFLL)
          {
            if (++v38 == v39)
            {
              goto LABEL_110;
            }
          }

          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v129);
          sub_4A5C(&v129, "In-station walking journey leg contains an invalid transfer reference", 69);
          if ((v139 & 0x10) != 0)
          {
            v61 = v138;
            if (v138 < v135)
            {
              v138 = v135;
              v61 = v135;
            }

            v62 = &v134;
          }

          else
          {
            if ((v139 & 8) == 0)
            {
              v21 = 0;
              v128 = 0;
              goto LABEL_137;
            }

            v62 = v132;
            v61 = v133;
          }

          v51 = *v62;
          v21 = v61 - *v62;
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v21 >= 0x17)
          {
            operator new();
          }

          v128 = v61 - *v62;
          if (!v21)
          {
            goto LABEL_137;
          }

LABEL_136:
          memmove(&__dst, v51, v21);
LABEL_137:
          *(&__dst + v21) = 0;
          sub_7E854(&__dst, 1u);
LABEL_138:
          if (v128 < 0)
          {
            operator delete(__dst);
          }

          if (v137 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v131);
          std::ostream::~ostream();
          std::ios::~ios();
          return 0;
        }

        if (!sub_7E7E4(1u))
        {
          return 0;
        }

        sub_19594F8(&v129);
        sub_4A5C(&v129, "In-station walking journey leg spans an empty set of transfers", 62);
        sub_1959680(&v129, &__dst);
        sub_7E854(&__dst, 1u);
      }

LABEL_303:
      if (v128 < 0)
      {
        operator delete(__dst);
      }

      sub_1959728(&v129);
      return 0;
    }

    v38 = *(v7 + 48);
    v39 = *(v7 + 56);
    if (v38 != v39)
    {
      goto LABEL_97;
    }

    goto LABEL_20;
  }

  if (v7 != *(*a3 + 8) && *(v7 - 8))
  {
    if (!sub_7E7E4(3u))
    {
      return 0;
    }

    sub_19594F8(&v129);
    sub_4A5C(&v129, "Journey leg of type public transport is preceded by a journey leg of a different type in the same segment.", 106);
    sub_1959680(&v129, &__dst);
    sub_7E854(&__dst, 3u);
    goto LABEL_303;
  }

  if (*v7 == -1)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v129);
    sub_4A5C(&v129, "Public transport journey leg has an invalid id", 46);
    if ((v139 & 0x10) != 0)
    {
      v108 = v138;
      if (v138 < v135)
      {
        v138 = v135;
        v108 = v135;
      }

      v109 = &v134;
    }

    else
    {
      if ((v139 & 8) == 0)
      {
        v21 = 0;
        v128 = 0;
        goto LABEL_137;
      }

      v109 = v132;
      v108 = v133;
    }

    v51 = *v109;
    v21 = v108 - *v109;
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v128 = v108 - *v109;
    if (!v21)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  if (*(v7 + 4) == -1 || !*(v7 + 8))
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v129);
    sub_4A5C(&v129, "Public transport journey leg has an invalid trip reference", 58);
    if ((v139 & 0x10) != 0)
    {
      v112 = v138;
      if (v138 < v135)
      {
        v138 = v135;
        v112 = v135;
      }

      v113 = &v134;
    }

    else
    {
      if ((v139 & 8) == 0)
      {
        v21 = 0;
        v128 = 0;
        goto LABEL_137;
      }

      v113 = v132;
      v112 = v133;
    }

    v51 = *v113;
    v21 = v112 - *v113;
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v128 = v112 - *v113;
    if (!v21)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  if (*(v7 + 12) == -1)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v129);
    sub_4A5C(&v129, "Public transport journey leg has an invalid schedule index", 58);
    if ((v139 & 0x10) != 0)
    {
      v114 = v138;
      if (v138 < v135)
      {
        v138 = v135;
        v114 = v135;
      }

      v115 = &v134;
    }

    else
    {
      if ((v139 & 8) == 0)
      {
        v21 = 0;
        v128 = 0;
        goto LABEL_137;
      }

      v115 = v132;
      v114 = v133;
    }

    v51 = *v115;
    v21 = v114 - *v115;
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v128 = v114 - *v115;
    if (!v21)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  if (*(v7 + 16) == -1)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v129);
    sub_4A5C(&v129, "Public transport journey leg has an invalid departure stop index", 64);
    if ((v139 & 0x10) != 0)
    {
      v116 = v138;
      if (v138 < v135)
      {
        v138 = v135;
        v116 = v135;
      }

      v117 = &v134;
    }

    else
    {
      if ((v139 & 8) == 0)
      {
        v21 = 0;
        v128 = 0;
        goto LABEL_137;
      }

      v117 = v132;
      v116 = v133;
    }

    v51 = *v117;
    v21 = v116 - *v117;
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v128 = v116 - *v117;
    if (!v21)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  if (*(v7 + 20) != -1)
  {
    goto LABEL_20;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v129);
    sub_4A5C(&v129, "Public transport journey leg has an invalid arrival stop index", 62);
    sub_1959680(&v129, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_303;
  }

  return 0;
}

void sub_4FF774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

BOOL sub_4FFDAC(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  while (1)
  {
    if (*a1 == -1 || a1[1] == 0)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v10);
      sub_4A5C(&v10, "Journey segment departure alternative has an invalid trip reference", 67);
      if ((v20 & 0x10) != 0)
      {
        v5 = v19;
        if (v19 < v16)
        {
          v19 = v16;
          v5 = v16;
        }

        v6 = v15;
        v4 = v5 - v15;
        if (v5 - v15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if ((v20 & 8) == 0)
        {
          v4 = 0;
          v9 = 0;
          goto LABEL_35;
        }

        v6 = v13;
        v4 = v14 - v13;
        if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_41:
          sub_3244();
        }
      }

      if (v4 >= 0x17)
      {
        operator new();
      }

      v9 = v4;
      if (!v4)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (a1[4] == 0x7FFFFFFF)
    {
      break;
    }

    a1 += 7;
    if (a1 == a2)
    {
      return 1;
    }
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v10);
  sub_4A5C(&v10, "Journey leg has an invalid static departure time", 48);
  if ((v20 & 0x10) != 0)
  {
    v7 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v7 = v16;
    }

    v6 = v15;
    v4 = v7 - v15;
    if (v7 - v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v4 = 0;
      v9 = 0;
      goto LABEL_35;
    }

    v6 = v13;
    v4 = v14 - v13;
    if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_43:
      sub_3244();
    }
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
LABEL_34:
    memmove(&__p, v6, v4);
  }

LABEL_35:
  *(&__p + v4) = 0;
  sub_7E854(&__p, 1u);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::locale::~locale(&v12);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_500184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_5001FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  if (v3 - v2 == *(a2 + 56) - v4)
  {
    if (v2 == v3)
    {
      return 1;
    }

    do
    {
      result = sub_500508(v2, v4);
      if (!result)
      {
        break;
      }

      v2 += 8;
      v4 += 8;
    }

    while (v2 != v3);
    return result;
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v11);
  sub_4A5C(&v11, "The given journeys have different numbers of journey segment bundles.", 69);
  if ((v21 & 0x10) != 0)
  {
    v7 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v7 = v17;
    }

    v8 = v16;
    v6 = v7 - v16;
    if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_25:
      sub_3244();
    }

LABEL_14:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v10 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_19;
  }

  if ((v21 & 8) != 0)
  {
    v8 = v14;
    v6 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v6 = 0;
  v10 = 0;
LABEL_19:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 1u);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::locale::~locale(&v13);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_5004BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_500508(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 == a2[1] - *a2)
  {
    if (v2 == v3)
    {
      return 1;
    }

    do
    {
      result = sub_500814(v2, v4);
      if (!result)
      {
        break;
      }

      v2 += 144;
      v4 += 144;
    }

    while (v2 != v3);
    return result;
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v11);
  sub_4A5C(&v11, "The given journey segment bundles have different numbers of journey legs.", 73);
  if ((v21 & 0x10) != 0)
  {
    v7 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v7 = v17;
    }

    v8 = v16;
    v6 = v7 - v16;
    if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_25:
      sub_3244();
    }

LABEL_14:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v10 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_19;
  }

  if ((v21 & 8) != 0)
  {
    v8 = v14;
    v6 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v6 = 0;
  v10 = 0;
LABEL_19:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 1u);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::locale::~locale(&v13);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_5007C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_500814(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v33);
    sub_4A5C(&v33, "The given journey segments are of different types.", 50);
    if ((v43 & 0x10) != 0)
    {
      v18 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v18 = v39;
      }

      v19 = v38;
      v8 = v18 - v38;
      if (v18 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v8 = 0;
        v32 = 0;
LABEL_53:
        *(&__p + v8) = 0;
        sub_7E854(&__p, 1u);
        if (v32 < 0)
        {
          operator delete(__p);
        }

        if (v41 < 0)
        {
          operator delete(v40);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v19 = v36[0];
      v8 = v37 - v36[0];
      if (v37 - v36[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_44:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v32 = v8;
    if (!v8)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 == v4)
  {
    v6 = *(a1 + 8);
  }

  else
  {
    while (!sub_504820(v5))
    {
      v5 += 1136;
      if (v5 == v4)
      {
        v5 = v4;
        break;
      }
    }

    v6 = v5;
    v5 = *(a1 + 8);
  }

  v9 = 0x193D4BB7E327A977 * ((v6 - v5) >> 4);
  v11 = *(a2 + 8);
  v10 = *(a2 + 16);
  if (v11 == v10)
  {
    v12 = *(a2 + 8);
    if (!v9)
    {
      goto LABEL_17;
    }

LABEL_30:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v33);
    sub_4A5C(&v33, "The given journey segments have walking legs starting at different positions: ", 78);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " != ", 4);
    std::ostream::operator<<();
    if ((v43 & 0x10) != 0)
    {
      v20 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v20 = v39;
      }

      v19 = v38;
      v8 = v20 - v38;
      if (v20 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v8 = 0;
        v32 = 0;
        goto LABEL_53;
      }

      v19 = v36[0];
      v8 = v37 - v36[0];
      if (v37 - v36[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_65:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v32 = v8;
    if (!v8)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  while (!sub_504820(v11))
  {
    v11 += 284;
    if (v11 == v10)
    {
      v11 = v10;
      break;
    }
  }

  v12 = v11;
  v11 = *(a2 + 8);
  if (v9 != 0x193D4BB7E327A977 * ((v12 - v11) >> 4))
  {
    goto LABEL_30;
  }

LABEL_17:
  v13 = *(a1 + 8);
  if (v13 == v6)
  {
LABEL_20:
    v14 = *(a1 + 16);
    v15 = *(a2 + 16);
    if (v6 == v14 && v12 == v15)
    {
      return 1;
    }

    if ((v6 == v14) == (v12 == v15))
    {
      v21 = sub_503828(v14 - 284);
      v22 = v21 - sub_50360C(v6);
      v23 = sub_503828(v15 - 284);
      v24 = v23 - sub_50360C(v12);
      result = 1;
      if (v22 == v24)
      {
        return result;
      }

      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v33);
      sub_4A5C(&v33, "The two given walking journey leg ranges have different static durations: ", 74);
      v25 = std::ostream::operator<<();
      sub_4A5C(v25, " dsec != ", 9);
      v26 = std::ostream::operator<<();
      sub_4A5C(v26, " dsec", 5);
      if ((v43 & 0x10) != 0)
      {
        v29 = v42;
        if (v42 < v39)
        {
          v42 = v39;
          v29 = v39;
        }

        v30 = &v38;
      }

      else
      {
        if ((v43 & 8) == 0)
        {
          v8 = 0;
          v32 = 0;
          goto LABEL_53;
        }

        v30 = v36;
        v29 = v37;
      }

      v19 = *v30;
      v8 = v29 - *v30;
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      v32 = v29 - *v30;
      if (!v8)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v33);
      sub_4A5C(&v33, "From the two given journey leg ranges one contains walking whilst the other does not", 84);
      if ((v43 & 0x10) != 0)
      {
        v27 = v42;
        if (v42 < v39)
        {
          v42 = v39;
          v27 = v39;
        }

        v28 = &v38;
      }

      else
      {
        if ((v43 & 8) == 0)
        {
          v8 = 0;
          v32 = 0;
          goto LABEL_53;
        }

        v28 = v36;
        v27 = v37;
      }

      v19 = *v28;
      v8 = v27 - *v28;
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      v32 = v27 - *v28;
      if (!v8)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    memmove(&__p, v19, v8);
    goto LABEL_53;
  }

  while (1)
  {
    result = sub_501020(v13, v11);
    if (!result)
    {
      return result;
    }

    v13 += 284;
    v11 += 284;
    if (v13 == v6)
    {
      goto LABEL_20;
    }
  }
}

void sub_500F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_501020(unsigned int *a1, unsigned int *a2)
{
  v2 = a1[282];
  if (a2[282] != v2)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v49);
    sub_4A5C(&v49, "The given journey legs are of different types.", 46);
    if ((v59 & 0x10) != 0)
    {
      v20 = v58;
      if (v58 < v55)
      {
        v58 = v55;
        v20 = v55;
      }

      v21 = v54;
      v7 = v20 - v54;
      if (v20 - v54 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if ((v59 & 8) == 0)
      {
        v7 = 0;
        v48 = 0;
LABEL_112:
        *(&__dst + v7) = 0;
        sub_7E854(&__dst, 1u);
        goto LABEL_113;
      }

      v21 = v52[0];
      v7 = v53 - v52[0];
      if (v53 - v52[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_49:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v48 = v7;
    if (!v7)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  if (v2 == 4)
  {
    if (a1[2] == a2[2] && a1[1] == a2[1])
    {
      goto LABEL_24;
    }

    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v49);
    v9 = sub_4A5C(&v49, "The given self-transfer journey legs have different stop refs: ", 63);
    v10 = sub_2FF718(v9, *(a1 + 1));
    v11 = sub_4A5C(v10, " != ", 4);
    sub_2FF718(v11, *(a2 + 1));
    if ((v59 & 0x10) != 0)
    {
      v36 = v58;
      if (v58 < v55)
      {
        v58 = v55;
        v36 = v55;
      }

      v37 = &v54;
    }

    else
    {
      if ((v59 & 8) == 0)
      {
        v7 = 0;
        v48 = 0;
        goto LABEL_112;
      }

      v37 = v52;
      v36 = v53;
    }

    v21 = *v37;
    v7 = v36 - *v37;
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v48 = v36 - *v37;
    if (!v7)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  if (v2)
  {
    goto LABEL_24;
  }

  if (*a1 != *a2)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v49);
    v22 = sub_4A5C(&v49, "The given public transport journey legs have different ids: ", 60);
    std::ostream::operator<<();
    sub_4A5C(v22, " != ", 4);
    std::ostream::operator<<();
    if ((v59 & 0x10) != 0)
    {
      v34 = v58;
      if (v58 < v55)
      {
        v58 = v55;
        v34 = v55;
      }

      v35 = &v54;
    }

    else
    {
      if ((v59 & 8) == 0)
      {
        v7 = 0;
        v48 = 0;
        goto LABEL_112;
      }

      v35 = v52;
      v34 = v53;
    }

    v21 = *v35;
    v7 = v34 - *v35;
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v48 = v34 - *v35;
    if (!v7)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  if (a1[2] != a2[2] || a1[1] != a2[1])
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v49);
    v28 = sub_4A5C(&v49, "The given public transport journey legs have different trip references: ", 72);
    v29 = sub_2FF718(v28, *(a1 + 1));
    v30 = sub_4A5C(v29, " != ", 4);
    sub_2FF718(v30, *(a2 + 1));
    if ((v59 & 0x10) != 0)
    {
      v42 = v58;
      if (v58 < v55)
      {
        v58 = v55;
        v42 = v55;
      }

      v43 = &v54;
    }

    else
    {
      if ((v59 & 8) == 0)
      {
        v7 = 0;
        v48 = 0;
        goto LABEL_112;
      }

      v43 = v52;
      v42 = v53;
    }

    v21 = *v43;
    v7 = v42 - *v43;
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v48 = v42 - *v43;
    if (!v7)
    {
      goto LABEL_112;
    }

LABEL_111:
    memmove(&__dst, v21, v7);
    goto LABEL_112;
  }

  if (a1[3] != a2[3])
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v49);
      v33 = sub_4A5C(&v49, "The given public transport journey legs have different schedule indices: ", 73);
      std::ostream::operator<<();
      sub_4A5C(v33, " != ", 4);
      std::ostream::operator<<();
      sub_1959680(&v49, &__dst);
      sub_7E854(&__dst, 1u);
      goto LABEL_78;
    }

    return result;
  }

  if (a1[4] != a2[4])
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v49);
      v41 = sub_4A5C(&v49, "The given public transport journey legs have different departure stop indices: ", 79);
      std::ostream::operator<<();
      sub_4A5C(v41, " != ", 4);
      std::ostream::operator<<();
      sub_1959680(&v49, &__dst);
      sub_7E854(&__dst, 1u);
      goto LABEL_78;
    }

    return result;
  }

  if (a1[5] != a2[5])
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v49);
      v6 = sub_4A5C(&v49, "The given public transport journey legs have different arrival stop indices: ", 77);
      std::ostream::operator<<();
      sub_4A5C(v6, " != ", 4);
      std::ostream::operator<<();
      sub_1959680(&v49, &__dst);
      sub_7E854(&__dst, 1u);
LABEL_78:
      if (v48 < 0)
      {
        operator delete(__dst);
      }

      sub_1959728(&v49);
      return 0;
    }

    return result;
  }

LABEL_24:
  v12 = sub_50360C(a1);
  if (v12 != sub_50360C(a2))
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v49);
    v14 = sub_4A5C(&v49, "The given journey legs have different static departure times: ", 62);
    __dst = sub_50360C(a1);
    LOWORD(v47) = v15;
    v16 = sub_258D4(v14, &__dst);
    v17 = sub_4A5C(v16, " != ", 4);
    v44 = sub_50360C(a2);
    v45 = v18;
    sub_258D4(v17, &v44);
    if ((v59 & 0x10) != 0)
    {
      v31 = v58;
      if (v58 < v55)
      {
        v58 = v55;
        v31 = v55;
      }

      v32 = &v54;
    }

    else
    {
      if ((v59 & 8) == 0)
      {
        v19 = 0;
        v48 = 0;
LABEL_72:
        *(&__dst + v19) = 0;
        sub_7E854(&__dst, 1u);
LABEL_113:
        if (v48 < 0)
        {
          operator delete(__dst);
        }

        if (v57 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v51);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v32 = v52;
      v31 = v53;
    }

    v38 = *v32;
    v19 = v31 - *v32;
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v48 = v31 - *v32;
    if (!v19)
    {
      goto LABEL_72;
    }

LABEL_71:
    memmove(&__dst, v38, v19);
    goto LABEL_72;
  }

  v13 = sub_503828(a1);
  if (v13 == sub_503828(a2))
  {
    return 1;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v49);
    v23 = sub_4A5C(&v49, "The given journey legs have different static arrival times: ", 60);
    __dst = sub_503828(a1);
    LOWORD(v47) = v24;
    v25 = sub_258D4(v23, &__dst);
    v26 = sub_4A5C(v25, " != ", 4);
    v44 = sub_503828(a2);
    v45 = v27;
    sub_258D4(v26, &v44);
    if ((v59 & 0x10) != 0)
    {
      v39 = v58;
      if (v58 < v55)
      {
        v58 = v55;
        v39 = v55;
      }

      v40 = &v54;
    }

    else
    {
      if ((v59 & 8) == 0)
      {
        v19 = 0;
        v48 = 0;
        goto LABEL_72;
      }

      v40 = v52;
      v39 = v53;
    }

    v38 = *v40;
    v19 = v39 - *v40;
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v48 = v39 - *v40;
    if (!v19)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  return result;
}

void sub_501AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

_DWORD *sub_501CF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3AFB1C(*a1);
  v7 = sub_3AFC64(*a1);
  v8 = *(a3 + 16);
  *(a3 + 16) = v8 | 0x10;
  *(a3 + 56) = 0;
  *(a3 + 60) = *a2;
  *(a3 + 16) = v8 | 0x31;
  v9 = *(a3 + 24);
  if (!v9)
  {
    v10 = *(a3 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_120834C(v11);
    v9 = v12;
    *(a3 + 24) = v12;
  }

  v13 = *(a2 + 16);
  v14 = *(v9 + 16);
  *(v9 + 16) = v14 | 0x20;
  *(v9 + 64) = v13;
  *(v9 + 68) = *(a2 + 20);
  *(v9 + 16) = v14 | 0x64;
  v15 = *(v9 + 40);
  if (!v15)
  {
    v16 = *(v9 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v15 = sub_12096B8(v17);
    *(v9 + 40) = v15;
  }

  v18 = *(a2 + 24);
  v19 = v15[4];
  v15[4] = v19 | 1;
  v15[6] = v18;
  v15[7] = *(a2 + 28);
  v15[8] = *(a2 + 32);
  v20 = *(a2 + 33);
  v15[4] = v19 | 0xF;
  v15[9] = v20;
  *(v9 + 16) |= 8u;
  v21 = *(v9 + 48);
  if (!v21)
  {
    v22 = *(v9 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_12096B8(v23);
    *(v9 + 48) = v21;
  }

  v24 = *(a2 + 36);
  v25 = v21[4];
  v21[4] = v25 | 1;
  v21[6] = v24;
  v21[7] = *(a2 + 40);
  v21[8] = *(a2 + 44);
  v26 = *(a2 + 45);
  v21[4] = v25 | 0xF;
  v21[9] = v26;
  v27 = *(a2 + 4);
  v28 = *(a2 + 8) | (v27 << 32);
  v29 = sub_3A25A8(v7, v28, 0, "trip");
  v30 = (v29 - *v29);
  if (*v30 >= 5u && v30[2])
  {
    v31 = sub_2C939C(v7, 1u, 0);
    if (!v31)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v31 = sub_2C939C(v7, 1u, 0);
    if (!v31)
    {
      goto LABEL_58;
    }
  }

  v32 = &v31[-*v31];
  if (*v32 < 0xDu || (v33 = *(v32 + 6)) == 0)
  {
LABEL_58:
    exception = __cxa_allocate_exception(0x40uLL);
    v76 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v34 = &v31[v33 + *&v31[v33]];
  v35 = &v34[-*v34];
  if (*v35 >= 0xBu)
  {
    v36 = *(v35 + 5);
    if (v36)
    {
      if (v34[v36])
      {
        nullsub_1();
      }
    }
  }

  nullsub_1();
  *(v9 + 16) |= 0x10u;
  *(v9 + 56) = v37;
  v38 = *(a2 + 16);
  v39 = sub_3A231C(v7, v28, 0);
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

  v42 = 4 * v27;
  v43 = (v41 + 4 * v27 + 4 + *(v41 + 4 * v27 + 4));
  v44 = (v43 - *v43);
  if (*v44 >= 0xDu && (v45 = v44[6]) != 0)
  {
    v46 = *(v43 + v45);
  }

  else
  {
    v46 = -1;
  }

  v77 = *&v39[24 * (v46 + v38) + 4 + *(v40 + 3) + *&v39[*(v40 + 3)]];
  sub_502230(v6, &v77);
  nullsub_1();
  *(v9 + 16) |= 0x200u;
  *(v9 + 80) = v47;
  v48 = *(a2 + 20);
  v49 = sub_3A231C(v7, v28, 0);
  v50 = &v49[-*v49];
  if (*v50 < 5u)
  {
    v51 = 0;
  }

  else
  {
    v51 = *(v50 + 2);
    if (*(v50 + 2))
    {
      v51 += &v49[*&v49[v51]];
    }
  }

  v52 = (v51 + v42 + 4 + *(v51 + v42 + 4));
  v53 = (v52 - *v52);
  if (*v53 >= 0xDu && (v54 = v53[6]) != 0)
  {
    v55 = *(v52 + v54);
  }

  else
  {
    v55 = -1;
  }

  v77 = *&v49[24 * (v55 + v48) + 4 + *(v50 + 3) + *&v49[*(v50 + 3)]];
  sub_502230(v6, &v77);
  nullsub_1();
  *(v9 + 16) |= 0x400u;
  *(v9 + 88) = v56;
  v57 = *(a2 + 12);
  v58 = sub_3A231C(v7, v28, 0);
  v59 = &v58[-*v58];
  v60 = *v59;
  if (v60 <= 4)
  {
    v63 = 0;
    v62 = (v42 + 4 + *(v42 + 4));
    goto LABEL_48;
  }

  v61 = *(v59 + 2);
  if (*(v59 + 2))
  {
    v61 += &v58[*&v58[v61]];
  }

  v62 = (v61 + v42 + 4 + *(v61 + v42 + 4));
  if (v60 < 0xD)
  {
    v63 = 0;
    v64 = (v62 - *v62);
    if (*v64 < 0x15u)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v63 = *(v59 + 6);
  if (!v63)
  {
LABEL_48:
    v64 = (v62 - *v62);
    if (*v64 < 0x15u)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v63 += &v58[*&v58[v63]];
  v64 = (v62 - *v62);
  if (*v64 < 0x15u)
  {
    goto LABEL_52;
  }

LABEL_49:
  v65 = v64[10];
  if (v65)
  {
    v66 = *(v62 + v65);
    goto LABEL_53;
  }

LABEL_52:
  v66 = -1;
LABEL_53:
  v67 = v63 + 8 * (v66 + v57);
  v68 = *(v67 + 4);
  v69 = *(v67 + 6);
  v70 = *(v67 + 7);
  *(v9 + 16) |= 1u;
  result = *(v9 + 24);
  if (!result)
  {
    v72 = *(v9 + 8);
    v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
    if (v72)
    {
      v73 = *v73;
    }

    result = sub_1208254(v73);
    *(v9 + 24) = result;
  }

  v74 = result[4];
  result[6] = v68;
  result[7] = v69;
  result[4] = v74 | 7;
  result[8] = v70;
  return result;
}

void sub_502230(uint64_t a1, unint64_t *a2)
{
  v3 = sub_502FF8(a1, *a2, 0, "stop");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && v4[2])
  {
    v5 = sub_2C939C(a1, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = sub_2C939C(a1, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v6 = &v5[-*v5];
  if (*v6 < 0xDu || (v7 = *(v6 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v8 = &v5[v7 + *&v5[v7]];
  v9 = &v8[-*v8];
  if (*v9 >= 0xBu)
  {
    v10 = *(v9 + 5);
    if (v10)
    {
      if (v8[v10])
      {

        nullsub_1();
      }
    }
  }
}

void sub_502358(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(a3 + 16) = v5 | 0x10;
  *(a3 + 56) = 2;
  *(a3 + 60) = *a2;
  *(a3 + 16) = v5 | 0x32;
  v6 = *(a3 + 32);
  if (!v6)
  {
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    sub_12083D0(v9);
    v6 = v10;
    *(a3 + 32) = v10;
  }

  sub_502440(a1, a2 + 4);
  nullsub_1();
  *(v6 + 16) |= 1u;
  *(v6 + 24) = v11;
  sub_502440(a1, a2 + 16);
  nullsub_1();
  v12 = *(v6 + 16);
  *(v6 + 16) = v12 | 2;
  *(v6 + 32) = v13;
  v14 = *(a2 + 28);
  *(v6 + 16) = v12 | 6;
  *(v6 + 40) = v14;
  *(v6 + 44) = *(a2 + 32);
  LOBYTE(v14) = *(a2 + 72);
  *(v6 + 16) = v12 | 0x1E;
  *(v6 + 48) = v14;
}

void sub_502440(uint64_t *a1, uint64_t a2)
{
  v3 = sub_3AFB1C(*a1);
  v4 = *a2;
  if (*a2 == 4)
  {
    v20.__r_.__value_.__l.__data_ = vrev64_s32(*(a2 + 4));
    sub_502764(v3, &v20);
  }

  else if (v4 == 3)
  {
    v5 = *(a2 + 8) | (*(a2 + 4) << 32);
    v6 = v3;
    sub_503310(v3, v5, 0, "access point");
    v7 = sub_2C939C(v6, 1u, 0);
    if (!v7 || (v8 = &v7[-*v7], *v8 < 0xDu) || (v9 = *(v8 + 6)) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v10 = &v7[v9 + *&v7[v9]];
    v11 = &v10[-*v10];
    if (*v11 >= 0xBu)
    {
      v12 = *(v11 + 5);
      if (v12)
      {
        if (v10[v12])
        {

          nullsub_1();
        }
      }
    }
  }

  else
  {
    if (v4)
    {
      v15 = __cxa_allocate_exception(0x40uLL);
      std::to_string(&v19, *a2);
      sub_23E08("Cannot handle street walking leg terminal type ", &v19, &v20);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v20;
      }

      else
      {
        v16 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v20.__r_.__value_.__l.__size_;
      }

      v18 = sub_2D390(v15, v16, size);
    }

    v20.__r_.__value_.__l.__data_ = vrev64_s32(*(a2 + 4));
    sub_502230(v3, &v20);
  }
}

void sub_50262C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_502684(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3AFB1C(*a1);
  v6 = *(a3 + 16);
  *(a3 + 16) = v6 | 0x10;
  *(a3 + 56) = 3;
  *(a3 + 60) = *a2;
  *(a3 + 16) = v6 | 0x34;
  v7 = *(a3 + 40);
  if (!v7)
  {
    v8 = v5;
    v9 = *(a3 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v7 = sub_1208450(v10);
    *(a3 + 40) = v7;
    v5 = v8;
  }

  v11 = *(a2 + 4);
  v12 = *(v7 + 4);
  *(v7 + 4) = v12 | 1;
  *(v7 + 6) = v11;
  v13 = *(a2 + 8);
  *(v7 + 4) = v12 | 3;
  *(v7 + 7) = v13;
  v15 = vrev64_s32(*(a2 + 12));
  sub_502764(v5, &v15);
  nullsub_1();
  *(v7 + 4) |= 4u;
  v7[4] = v14;
}

void sub_502764(uint64_t a1, unint64_t *a2)
{
  v3 = sub_503184(a1, *a2, 0, "road access point");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && v4[2])
  {
    v5 = sub_2C939C(a1, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = sub_2C939C(a1, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v6 = &v5[-*v5];
  if (*v6 < 0xDu || (v7 = *(v6 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v8 = &v5[v7 + *&v5[v7]];
  v9 = &v8[-*v8];
  if (*v9 >= 0xBu)
  {
    v10 = *(v9 + 5);
    if (v10)
    {
      if (v8[v10])
      {

        nullsub_1();
      }
    }
  }
}

void sub_50288C(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(a3 + 16) = v5 | 0x10;
  *(a3 + 56) = 4;
  *(a3 + 60) = *a2;
  *(a3 + 16) = v5 | 0x38;
  v6 = *(a3 + 48);
  if (!v6)
  {
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    sub_12084CC(v9);
    v6 = v10;
    *(a3 + 48) = v10;
  }

  v11 = *sub_3CF22C((a2 + 8));
  *(v6 + 16) |= 4u;
  *(v6 + 40) = v11;
  v12 = *(sub_3CF22C((a2 + 8)) + 4);
  *(v6 + 16) |= 8u;
  *(v6 + 44) = v12;
  v13 = sub_4D1DB8((a2 + 8));
  *(v6 + 16) |= 0x10u;
  *(v6 + 48) = v13;
  if (a2[2] != -1 && a2[3])
  {
    sub_502440(a1, (a2 + 1));
    nullsub_1();
    *(v6 + 16) |= 1u;
    *(v6 + 24) = v14;
  }

  if (a2[5] != -1)
  {
    if (a2[6])
    {
      sub_502440(a1, (a2 + 4));
      nullsub_1();
      *(v6 + 16) |= 2u;
      *(v6 + 32) = v15;
    }
  }
}

void sub_5029C0(uint64_t *a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v7 = *a2;
  if (*a2 <= 1)
  {
    *(a4 + 16) |= 1u;
    *(a4 + 48) = v7;
  }

  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  while (v8 != v9)
  {
    v12 = v8[282];
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v22 = *(a4 + 40);
        if (v22 && (v23 = *(a4 + 32), v23 < *v22))
        {
          *(a4 + 32) = v23 + 1;
          v24 = *&v22[2 * v23 + 2];
        }

        else
        {
          sub_120854C(*(a4 + 24));
          v24 = sub_19593CC(a4 + 24, v30);
        }

        sub_502684(a1, v8, v24);
        v8 += 284;
        continue;
      }

      if (v12 == 3)
      {
        v16 = *(a4 + 40);
        if (v16 && (v17 = *(a4 + 32), v17 < *v16))
        {
          *(a4 + 32) = v17 + 1;
          v11 = *&v16[2 * v17 + 2];
        }

        else
        {
          sub_120854C(*(a4 + 24));
          v11 = sub_19593CC(a4 + 24, v10);
        }

        sub_50288C(a1, v8, v11);
      }

LABEL_6:
      v8 += 284;
      continue;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        v13 = *(a4 + 40);
        if (v13 && (v14 = *(a4 + 32), v14 < *v13))
        {
          *(a4 + 32) = v14 + 1;
          v15 = *&v13[2 * v14 + 2];
        }

        else
        {
          sub_120854C(*(a4 + 24));
          v15 = sub_19593CC(a4 + 24, v25);
        }

        sub_502358(a1, v8, v15);
        v8 += 284;
        continue;
      }

      goto LABEL_6;
    }

    v18 = *(a4 + 40);
    if (v18 && (v19 = *(a4 + 32), v19 < *v18))
    {
      *(a4 + 32) = v19 + 1;
      v20 = *&v18[2 * v19 + 2];
      sub_501CF0(a1, v8, v20);
      v21 = a3[1];
      if (!*&v21)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_120854C(*(a4 + 24));
      v20 = sub_19593CC(a4 + 24, v26);
      sub_501CF0(a1, v8, v20);
      v21 = a3[1];
      if (!*&v21)
      {
        goto LABEL_6;
      }
    }

    v27 = *v8;
    v28 = vcnt_s8(v21);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      v29 = *v8;
      if (*&v21 <= v27)
      {
        v29 = v27 % v21.i32[0];
      }
    }

    else
    {
      v29 = (v21.i32[0] - 1) & v27;
    }

    v31 = *(*a3 + 8 * v29);
    if (!v31)
    {
      goto LABEL_6;
    }

    v32 = *v31;
    if (!*v31)
    {
      goto LABEL_6;
    }

    if (v28.u32[0] < 2uLL)
    {
      v33 = *&v21 - 1;
      while (1)
      {
        v35 = v32[1];
        if (v35 == v27)
        {
          if (*(v32 + 4) == v27)
          {
            goto LABEL_51;
          }
        }

        else if ((v35 & v33) != v29)
        {
          goto LABEL_6;
        }

        v32 = *v32;
        if (!v32)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
      v34 = v32[1];
      if (v34 == v27)
      {
        break;
      }

      if (v34 >= *&v21)
      {
        v34 %= *&v21;
      }

      if (v34 != v29)
      {
        goto LABEL_6;
      }

LABEL_40:
      v32 = *v32;
      if (!v32)
      {
        goto LABEL_6;
      }
    }

    if (*(v32 + 4) != v27)
    {
      goto LABEL_40;
    }

LABEL_51:
    *(v20 + 16) |= 1u;
    v36 = *(v20 + 24);
    if (v36)
    {
      *(v36 + 16) |= 2u;
      v37 = *(v36 + 32);
      if (!v37)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v38 = *(v20 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      sub_120834C(v39);
      v36 = v40;
      *(v20 + 24) = v40;
      *(v40 + 16) |= 2u;
      v37 = *(v40 + 32);
      if (!v37)
      {
LABEL_57:
        v41 = *(v36 + 8);
        v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v42 = *v42;
        }

        v37 = sub_12082D0(v42);
        *(v36 + 32) = v37;
      }
    }

    v43 = *(v32 + 5);
    if ((v43 - 1) >= 5)
    {
      v43 = 0;
    }

    *(v37 + 16) |= 1u;
    *(v37 + 24) = v43;
    v8 += 284;
  }
}

void sub_502D3C(uint64_t *a1, int *a2, void *a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  *(a4 + 92) = 1;
  *(a4 + 16) = v8 | 0x81;
  v9 = *(a4 + 48);
  if (!v9)
  {
    v10 = *(a4 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v9 = sub_12096B8(v11);
    *(a4 + 48) = v9;
  }

  v12 = *a2;
  v13 = v9[4];
  v9[4] = v13 | 1;
  v9[6] = v12;
  v14 = *(a2 + 8);
  v9[7] = a2[1];
  v9[8] = v14;
  v15 = *(a2 + 9);
  v9[4] = v13 | 0xF;
  v9[9] = v15;
  *(a4 + 16) |= 2u;
  v16 = *(a4 + 56);
  if (!v16)
  {
    v17 = *(a4 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v16 = sub_12096B8(v18);
    *(a4 + 56) = v16;
  }

  v19 = a2[3];
  v20 = v16[4];
  v16[4] = v20 | 1;
  v16[6] = v19;
  v21 = *(a2 + 20);
  v16[7] = a2[4];
  v16[8] = v21;
  v22 = *(a2 + 21);
  v16[4] = v20 | 0xF;
  v16[9] = v22;
  *(a4 + 16) |= 4u;
  v23 = *(a4 + 64);
  if (!v23)
  {
    v24 = *(a4 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v23 = sub_12096B8(v25);
    *(a4 + 64) = v23;
  }

  v26 = a2[6];
  v27 = v23[4];
  v23[4] = v27 | 1;
  v23[6] = v26;
  v28 = *(a2 + 32);
  v23[7] = a2[7];
  v23[8] = v28;
  v29 = *(a2 + 33);
  v23[4] = v27 | 0xF;
  v23[9] = v29;
  *(a4 + 16) |= 8u;
  v30 = *(a4 + 72);
  if (!v30)
  {
    v31 = *(a4 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    v30 = sub_12096B8(v32);
    *(a4 + 72) = v30;
  }

  v33 = a2[9];
  v34 = v30[4];
  v30[4] = v34 | 1;
  v30[6] = v33;
  v35 = *(a2 + 44);
  v30[7] = a2[10];
  v30[8] = v35;
  v36 = *(a2 + 45);
  v30[4] = v34 | 0xF;
  v30[9] = v36;
  v37 = a2[39];
  v38 = a2[40];
  if (v37 >= 3)
  {
    v37 = 0;
  }

  v39 = *(a4 + 16);
  *(a4 + 88) = v37;
  if (v38 >= 3)
  {
    v40 = 0;
  }

  else
  {
    v40 = v38;
  }

  *(a4 + 16) = v39 | 0x140;
  *(a4 + 96) = v40;
  v41 = *(a2 + 6);
  v42 = *(a2 + 7);
  while (v41 != v42)
  {
    v43 = *(a4 + 40);
    if (v43 && (v44 = *(a4 + 32), v44 < *v43))
    {
      *(a4 + 32) = v44 + 1;
      v45 = *&v43[2 * v44 + 2];
    }

    else
    {
      v46 = sub_1208674(*(a4 + 24));
      v45 = sub_19593CC(a4 + 24, v46);
    }

    v47 = *v41;
    v48 = v41[1];
    while (v47 != v48)
    {
      v51 = *(v45 + 32);
      if (v51 && (v52 = *(v45 + 24), v52 < *v51))
      {
        *(v45 + 24) = v52 + 1;
        v50 = *&v51[2 * v52 + 2];
      }

      else
      {
        sub_12085CC(*(v45 + 16));
        v50 = sub_19593CC(v45 + 16, v49);
      }

      sub_5029C0(a1, v47, a3, v50);
      v47 += 36;
    }

    v41 += 8;
  }
}

uint64_t sub_502FF8(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x1Du)
  {
    v9 = *(v8 + 14);
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

void sub_503154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_503184(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x15u)
  {
    v9 = *(v8 + 10);
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

void sub_5032E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_503310(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 5u)
  {
    v9 = *(v8 + 2);
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

void sub_50346C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_50349C(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  if (result != v1)
  {
    while (*result)
    {
      result += 36;
      if (result == v1)
      {
        goto LABEL_4;
      }
    }
  }

  if (result == v1)
  {
LABEL_4:
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_2D390(exception, "Journey has a segment bundle without a main segment", 0x33uLL);
  }

  return result;
}

uint64_t sub_503514(_DWORD *a1, int a2)
{
  v2 = a1[282];
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = a1[6];
      v4 = a1[7];
      v5 = a2 == 2;
      if (v4 != 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

      return v3;
    }

    if (v2 != 1)
    {
      return 0x7FFFFFFFLL;
    }

    v3 = a1[7];
LABEL_10:
    v4 = v3;
    v5 = a2 == 2;
    if (v3 == 0x7FFFFFFF)
    {
      return v3;
    }

    goto LABEL_13;
  }

  if (v2 == 2)
  {
    v3 = a1[1];
    goto LABEL_10;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      v3 = a1[3];
      goto LABEL_10;
    }

    return 0x7FFFFFFFLL;
  }

  v3 = *sub_3CF22C((a1 + 8));
  v4 = v3;
  v5 = a2 == 2;
  if (v3 == 0x7FFFFFFF)
  {
    return v3;
  }

LABEL_13:
  if (v5)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_50360C(unsigned int *a1)
{
  v1 = a1[282];
  LODWORD(v2) = 0x7FFFFFFF;
  if (v1 <= 1)
  {
    if (v1)
    {
      v3 = 0x7FFFFFFFLL;
      if (v1 == 1)
      {
        v2 = a1[7];
        goto LABEL_10;
      }

      return v2 | (v3 << 32);
    }

    return a1[6] | (a1[7] << 32);
  }

  else
  {
    if (v1 == 2)
    {
      v2 = a1[1];
      goto LABEL_10;
    }

    if (v1 != 3)
    {
      v3 = 0x7FFFFFFFLL;
      if (v1 == 4)
      {
        v2 = a1[3];
LABEL_10:
        v3 = v2;
        return v2 | (v3 << 32);
      }

      return v2 | (v3 << 32);
    }

    v5 = sub_3CF22C((a1 + 8));
    return *v5 | (*v5 << 32);
  }
}

uint64_t sub_5036C4(_DWORD *a1, int a2)
{
  v2 = a1[282];
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = a1[9];
      v4 = a1[10];
      v5 = a2 == 2;
      if (v4 == 0x7FFFFFFF)
      {
        return v3;
      }

      goto LABEL_16;
    }

    if (v2 != 1)
    {
      return 0x7FFFFFFFLL;
    }

    v3 = a1[8];
LABEL_10:
    v4 = v3;
    v5 = a2 == 2;
    if (v3 == 0x7FFFFFFF)
    {
      return v3;
    }

    goto LABEL_16;
  }

  if (v2 == 2)
  {
    v3 = a1[2];
    goto LABEL_10;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      v3 = a1[4];
      goto LABEL_10;
    }

    return 0x7FFFFFFFLL;
  }

  v8 = sub_3CF22C((a1 + 8));
  v9 = *(sub_3CF22C((a1 + 8)) + 4);
  v10 = v9 / 10;
  v11 = v9 % 10;
  if (v9 < 0)
  {
    v12 = -5;
  }

  else
  {
    v12 = 5;
  }

  v3 = v10 + *v8 + (((103 * (v12 + v11)) >> 15) & 1) + ((103 * (v12 + v11)) >> 10);
  v4 = v3;
  v5 = a2 == 2;
  if (v3 == 0x7FFFFFFF)
  {
    return v3;
  }

LABEL_16:
  if (v5)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_503828(unsigned int *a1)
{
  v1 = a1[282];
  LODWORD(v2) = 0x7FFFFFFF;
  if (v1 <= 1)
  {
    if (v1)
    {
      v3 = 0x7FFFFFFFLL;
      if (v1 == 1)
      {
        v2 = a1[8];
        goto LABEL_10;
      }

      return v2 | (v3 << 32);
    }

    return a1[9] | (a1[10] << 32);
  }

  else
  {
    if (v1 == 2)
    {
      v2 = a1[2];
      goto LABEL_10;
    }

    if (v1 != 3)
    {
      v3 = 0x7FFFFFFFLL;
      if (v1 == 4)
      {
        v2 = a1[4];
LABEL_10:
        v3 = v2;
        return v2 | (v3 << 32);
      }

      return v2 | (v3 << 32);
    }

    v6 = sub_3CF22C((a1 + 8));
    v7 = *(sub_3CF22C((a1 + 8)) + 4);
    v8 = v7 / 10;
    v9 = v7 % 10;
    if (v7 < 0)
    {
      v10 = -5;
    }

    else
    {
      v10 = 5;
    }

    v11 = v8 + *v6 + (((103 * (v10 + v9)) >> 15) & 1) + ((103 * (v10 + v9)) >> 10);
    return v11 | (v11 << 32);
  }
}

uint64_t sub_50394C(uint64_t a1, int a2)
{
  v2 = 4 * (*(a1 + 28) != 0x7FFFFFFF);
  if (a2 != 2)
  {
    v2 = 0;
  }

  return *(a1 + v2 + 24);
}

uint64_t sub_503974(uint64_t a1, int a2)
{
  v2 = 4 * (*(a1 + 40) != 0x7FFFFFFF);
  if (a2 != 2)
  {
    v2 = 0;
  }

  return *(a1 + v2 + 36);
}

uint64_t sub_50399C(uint64_t a1)
{
  if (*(a1 + 156) == 2)
  {
    v1 = 4 * (*(a1 + 4) != 0x7FFFFFFF);
  }

  else
  {
    v1 = 0;
  }

  return *(a1 + v1);
}

uint64_t sub_5039D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16) | (*(a1 + 12) << 32);
  v4 = sub_503184(a2, v3, 0, "road access point");
  v5 = (v4 + *(v4 - *v4 + 8));
  if (v5[1] >= 0xFFFFFFFE)
  {
    v6 = -2;
  }

  else
  {
    v6 = v5[1];
  }

  v30 = *v5;
  v7 = sub_503184(a2, v3, 0, "road access point");
  v8 = sub_503310(a2, *(v7 + *(v7 - *v7 + 6)), 0, "access point");
  v9 = (v8 + *(v8 - *v8 + 14));
  LODWORD(v10) = v30;
  HIDWORD(v10) = *v9;
  v31 = v10;
  v11 = v9[1];
  if (v11 >= 0xFFFFFFFE)
  {
    v12 = -2;
  }

  else
  {
    v12 = v11;
  }

  v13 = exp(3.14159265 - v6 * 6.28318531 / 4294967300.0);
  v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
  v15 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
  v16 = atan((v15 - 1.0 / v15) * 0.5) * 57.2957795 * 0.0174532925;
  v17.i64[0] = v31;
  v17.i64[1] = HIDWORD(v31);
  v18 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v17), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v32 = vsubq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0];
  v19 = sin((v14 - v16) * 0.5);
  v20 = v19 * v19;
  v21 = cos(v14);
  v22 = v21 * cos(v16);
  v23 = sin(0.5 * v32);
  v24 = atan2(sqrt(v23 * v23 * v22 + v20), sqrt(1.0 - (v23 * v23 * v22 + v20)));
  v25 = (v24 + v24) * 6372797.56 * 100.0;
  if (v25 >= 0.0)
  {
    v26 = v25;
    if (v25 >= 4.50359963e15)
    {
      goto LABEL_13;
    }

    v27 = (v25 + v25) + 1;
  }

  else
  {
    v26 = v25;
    if (v25 <= -4.50359963e15)
    {
      goto LABEL_13;
    }

    v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
  }

  v26 = (v27 >> 1);
LABEL_13:
  if (v26 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v25 >= 0.0)
  {
    if (v25 < 4.50359963e15)
    {
      v28 = (v25 + v25) + 1;
      return (v28 >> 1);
    }
  }

  else if (v25 > -4.50359963e15)
  {
    v28 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    return (v28 >> 1);
  }

  return v25;
}

uint64_t sub_503CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_504BC8(a2, *(*(a1 + 48) + 4) | (**(a1 + 48) << 32), 0, "transfer");
  v29 = *(v4 + *(v4 - *v4 + 6));
  v5 = sub_504BC8(a2, *(*(a1 + 56) - 4) | (*(*(a1 + 56) - 8) << 32), 0, "transfer");
  v28 = *(v5 + *(v5 - *v5 + 8));
  v6 = sub_504030(a2, &v29);
  v7 = sub_504030(a2, &v28);
  if (v6 == -1 && HIDWORD(v6) == 0xFFFFFFFF || v7 == -1 && HIDWORD(v7) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = HIDWORD(v7);
  v10 = v7;
  v11 = exp(3.14159265 - HIDWORD(v6) * 6.28318531 / 4294967300.0);
  v12 = atan((v11 - 1.0 / v11) * 0.5) * 57.2957795 * 0.0174532925;
  v13.i64[0] = v6;
  v13.i64[1] = v10;
  v14 = exp(3.14159265 - v9 * 6.28318531 / 4294967300.0);
  v15 = atan((v14 - 1.0 / v14) * 0.5) * 57.2957795 * 0.0174532925;
  v16 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v13), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v27 = vsubq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0];
  v17 = sin((v12 - v15) * 0.5);
  v18 = v17 * v17;
  v19 = cos(v12);
  v20 = v19 * cos(v15);
  v21 = sin(0.5 * v27);
  v22 = atan2(sqrt(v21 * v21 * v20 + v18), sqrt(1.0 - (v21 * v21 * v20 + v18)));
  v23 = (v22 + v22) * 6372797.56 * 100.0;
  if (v23 >= 0.0)
  {
    v24 = v23;
    if (v23 >= 4.50359963e15)
    {
      goto LABEL_12;
    }

    v25 = (v23 + v23) + 1;
  }

  else
  {
    v24 = v23;
    if (v23 <= -4.50359963e15)
    {
      goto LABEL_12;
    }

    v25 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
  }

  v24 = (v25 >> 1);
LABEL_12:
  if (v24 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v23 >= 0.0)
  {
    if (v23 < 4.50359963e15)
    {
      v26 = (v23 + v23) + 1;
      return (v26 >> 1);
    }
  }

  else if (v23 > -4.50359963e15)
  {
    v26 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
    return (v26 >> 1);
  }

  return v23;
}

uint64_t sub_504030(uint64_t a1, unint64_t *a2)
{
  v4 = sub_504D54(a1, *a2, 0, "transfer node");
  v5 = (v4 - *v4);
  if (*v5 < 7u)
  {
    return -1;
  }

  v6 = v5[3];
  if (!v6)
  {
    return -1;
  }

  v7 = *(v4 + v6);
  if (v7 == 2)
  {
    v15 = sub_504D54(a1, *a2, 0, "transfer node");
    v16 = (v15 - *v15);
    if (*v16 >= 7u)
    {
      v17 = v16[3];
      if (!v17)
      {
LABEL_18:
        v20 = 0xFFFFFFFF00000000;
        goto LABEL_19;
      }

      if (*(v15 + v17) == 2)
      {
        v18 = sub_504D54(a1, *a2, 0, "transfer node");
        v19 = (v18 + *(v18 - *v18 + 8));
        v17 = *v19;
        v20 = v19[1] << 32;
LABEL_19:
        v21 = sub_503310(a1, v17 | v20, 0, "access point");
        v22 = 14;
        goto LABEL_20;
      }
    }

    v17 = 0;
    goto LABEL_18;
  }

  if (v7 != 3)
  {
    return -1;
  }

  v8 = sub_504D54(a1, *a2, 0, "transfer node");
  v9 = (v8 - *v8);
  if (*v9 < 7u)
  {
    goto LABEL_14;
  }

  v10 = v9[3];
  if (!v10)
  {
LABEL_15:
    v13 = 0xFFFFFFFF00000000;
    goto LABEL_16;
  }

  if (*(v8 + v10) != 3)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v11 = sub_504D54(a1, *a2, 0, "transfer node");
  v12 = (v11 + *(v11 - *v11 + 8));
  v10 = *v12;
  v13 = v12[1] << 32;
LABEL_16:
  v21 = sub_502FF8(a1, v10 | v13, 0, "stop");
  v22 = 6;
LABEL_20:
  v24 = v21 + *(v21 + v22 - *v21);
  v23 = *v24;
  LODWORD(v24) = *(v24 + 4);
  if (v24 >= 0xFFFFFFFE)
  {
    v24 = 4294967294;
  }

  else
  {
    v24 = v24;
  }

  return (v24 << 32) | v23;
}

uint64_t sub_504214(unsigned int *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3 <= v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = a1[4];
  }

  if (v3 < v2)
  {
    v7 = 0;
    v42 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v43 = vdupq_n_s64(0x4076800000000000uLL);
    v40 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v41 = vdupq_n_s64(0xC066800000000000);
    while (1)
    {
      v9 = a1[1];
      v10 = sub_3A231C(a2, a1[2] | (v9 << 32), 0);
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

      v13 = (v12 + 4 * v9 + 4 + *(v12 + 4 * v9 + 4));
      v14 = (v13 - *v13);
      if (*v14 >= 0x1Fu && (v15 = v14[15]) != 0)
      {
        v16 = *(v13 + v15);
      }

      else
      {
        v16 = -1;
      }

      v48 = *&v10[8 * v16 + 4 + 8 * v3 + *(v11 + 8) + *&v10[*(v11 + 8)]];
      sub_504EE0(a2, &v48, &v46);
      v17 = v46;
      v18 = v47;
      v19 = 0.0;
      if (v46 == v47)
      {
        break;
      }

      v20 = v46 + 3;
      if (v46 + 3 == v47)
      {
        break;
      }

      v21 = 0.0;
      do
      {
        LODWORD(v19) = *(v20 - 2);
        v22 = exp(3.14159265 - *&v19 * 6.28318531 / 4294967300.0);
        *&v23 = atan((v22 - 1.0 / v22) * 0.5) * 57.2957795;
        LODWORD(v24) = *(v20 - 3);
        HIDWORD(v24) = *v20;
        v44 = v24;
        v25 = *&v23 * 0.0174532925;
        LODWORD(v23) = v20[1];
        v26 = exp(3.14159265 - v23 * 6.28318531 / 4294967300.0);
        v27 = atan((v26 - 1.0 / v26) * 0.5) * 57.2957795 * 0.0174532925;
        v28.i64[0] = v44;
        v28.i64[1] = HIDWORD(v44);
        v29 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v28), v43), v42), v41), v40);
        v45 = vsubq_f64(v29, vdupq_laneq_s64(v29, 1)).f64[0];
        v30 = sin((v25 - v27) * 0.5);
        v31 = v30 * v30;
        v32 = cos(v25);
        v33 = v32 * cos(v27);
        v34 = sin(0.5 * v45);
        v35 = atan2(sqrt(v34 * v34 * v33 + v31), sqrt(1.0 - (v34 * v34 * v33 + v31)));
        v19 = (v35 + v35) * 6372797.56;
        v21 = v21 + v19;
        v20 += 3;
      }

      while (v20 != v18);
      v19 = v21 * 100.0;
      if (v21 * 100.0 >= 0.0)
      {
        if (v19 < 4.50359963e15)
        {
          break;
        }

        v37 = 0;
        v36 = v21 * 100.0;
      }

      else if (v19 <= -4.50359963e15)
      {
        v37 = 1;
        v36 = v21 * 100.0;
      }

      else
      {
        v36 = (((v19 + v19) - 1) / 2);
        v37 = 1;
      }

LABEL_26:
      if (v36 < 9.22337204e18)
      {
        if (v37)
        {
          if (v19 > -4.50359963e15)
          {
            v38 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
            goto LABEL_32;
          }
        }

        else if (v19 < 4.50359963e15)
        {
          v38 = (v19 + v19) + 1;
LABEL_32:
          v19 = (v38 >> 1);
        }

        v8 = v19;
        if (!v17)
        {
          goto LABEL_8;
        }

LABEL_7:
        v47 = v17;
        operator delete(v17);
        goto LABEL_8;
      }

      v8 = 0x7FFFFFFFFFFFFFFELL;
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_8:
      v7 += v8;
      if (++v3 == v4)
      {
        return v7;
      }
    }

    v37 = 0;
    v36 = (((v19 + v19) + 1) >> 1);
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_50461C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3 != v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = v3[1];
      v9 = *v3;
      if (*v3 != v8)
      {
        while (*v9)
        {
          v9 += 144;
          if (v9 == v8)
          {
            goto LABEL_24;
          }
        }
      }

      if (v9 == v8)
      {
LABEL_24:
        exception = __cxa_allocate_exception(0x40uLL);
        v16 = sub_2D390(exception, "Journey has a segment bundle without a main segment", 0x33uLL);
      }

      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      while (v10 != v11)
      {
        v13 = v10[282];
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v12 = sub_5039D4(v10, a2);
            goto LABEL_11;
          }

          if (v13 == 3)
          {
            v12 = sub_4D1DB8((v10 + 8));
            goto LABEL_11;
          }
        }

        else
        {
          if (!v13)
          {
            v12 = sub_504214(v10, a3);
LABEL_11:
            v7 += v12;
            goto LABEL_12;
          }

          if (v13 == 1)
          {
            v12 = sub_503CF0(v10, a2);
            goto LABEL_11;
          }
        }

LABEL_12:
        v10 += 284;
      }

      v3 += 8;
      if (v3 == v4)
      {
        return v7;
      }
    }
  }

  return 0;
}

BOOL sub_504760(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 56) - v1 != 64)
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  if (v2 != v3)
  {
    while (*v2)
    {
      v2 += 144;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_5:
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_2D390(exception, "Journey has a segment bundle without a main segment", 0x33uLL);
  }

  v8 = *(v2 + 8);
  v7 = *(v2 + 16);
  if (v8 == v7)
  {
    return 1;
  }

  v9 = v8 + 1136;
  do
  {
    v10 = *(v9 - 8);
    result = v10 != 0;
    if (v10)
    {
      v11 = v9 == v7;
    }

    else
    {
      v11 = 1;
    }

    v9 += 1136;
  }

  while (!v11);
  return result;
}

uint64_t sub_504834(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    v3 = *v1;
    v4 = v1[1];
    while (v3 != v4)
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      while (v5 != v6)
      {
        v7 = *(v5 + 1128);
        if (v7 == 3)
        {
          sub_3CF22C(v5 + 32);
          v7 = *(v5 + 1128);
        }

        else if (!v7)
        {
          LOBYTE(v7) = *(v5 + 32) == 1;
          goto LABEL_15;
        }

        if (v7)
        {
          if (v7 == 3)
          {
            sub_3CF22C(v5 + 32);
            sub_3CF22C(v5 + 32);
          }

          goto LABEL_6;
        }

LABEL_15:
        result = 1;
        if ((v7 & 1) != 0 || *(v5 + 44) == 1)
        {
          return result;
        }

LABEL_6:
        v5 += 1136;
      }

      v3 += 144;
    }

    v1 += 8;
  }

  while (v1 != v2);
  return 0;
}

uint64_t sub_504908(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v1 != v2)
  {
    while (2)
    {
      for (i = *v1; i != v1[1]; i += 144)
      {
        v4 = *(i + 80);
        v5 = *(i + 88);
        if (v4 != v5)
        {
          while (*(v4 + 24) != 1)
          {
            v4 += 28;
            if (v4 == v5)
            {
              goto LABEL_3;
            }
          }

          return 1;
        }

LABEL_3:
        ;
      }

      v1 += 8;
      if (v1 != v2)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t sub_50496C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 != v3)
  {
    while (1)
    {
      v5 = *v2;
      v6 = v2[1];
LABEL_6:
      if (v5 != v6)
      {
        break;
      }

      v2 += 8;
      if (v2 == v3)
      {
        return 0;
      }
    }

    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    while (1)
    {
      if (v7 == v8)
      {
        v5 += 144;
        goto LABEL_6;
      }

      if (!v7[282])
      {
        v11 = **(a2 + 3896);
        if (v11)
        {
          v12 = v7[3];
          v13 = v7[2] | (v7[1] << 32);
          if (v12 == -1)
          {
            if (!sub_3A7F20(v11, v13, *(a2 + 3904)))
            {
              goto LABEL_15;
            }
          }

          else if (!sub_3A7E8C(v11, v13, v12, *(a2 + 3904)))
          {
            goto LABEL_15;
          }

          v14 = v7[3];
          v15 = v7[2] | (v7[1] << 32);
          v16 = **(a2 + 3896);
          if (v14 == -1)
          {
            v9 = sub_3A7F20(v16, v15, *(a2 + 3904))[4];
            if (v9 < 0xFFFFFFFF00000000 || v9 != 0xFFFFFFFFLL)
            {
              return 1;
            }
          }

          else
          {
            v17 = sub_3A7E8C(v16, v15, v14, *(a2 + 3904))[4];
            if (v17 < 0xFFFFFFFF00000000 || v17 != 0xFFFFFFFFLL)
            {
              return 1;
            }
          }
        }
      }

LABEL_15:
      v7 += 284;
    }
  }

  return 0;
}

uint64_t sub_504AA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 != v3)
  {
    while (1)
    {
      v5 = *v2;
      v6 = v2[1];
LABEL_6:
      if (v5 != v6)
      {
        break;
      }

      v2 += 8;
      if (v2 == v3)
      {
        return 0;
      }
    }

    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    while (1)
    {
      if (v7 == v8)
      {
        v5 += 144;
        goto LABEL_6;
      }

      if (!v7[282])
      {
        v9 = **(a2 + 3896);
        if (v9)
        {
          v10 = v7[3];
          v11 = v7[2] | (v7[1] << 32);
          if (v10 == -1)
          {
            if (!sub_3A7F20(v9, v11, *(a2 + 3904)))
            {
              goto LABEL_12;
            }
          }

          else if (!sub_3A7E8C(v9, v11, v10, *(a2 + 3904)))
          {
            goto LABEL_12;
          }

          v12 = v7[3];
          v13 = v7[2] | (v7[1] << 32);
          v14 = **(a2 + 3896);
          if (v12 == -1)
          {
            if (*(sub_3A7F20(v14, v13, *(a2 + 3904)) + 64))
            {
              return 1;
            }
          }

          else if (*(sub_3A7E8C(v14, v13, v12, *(a2 + 3904)) + 64))
          {
            return 1;
          }
        }
      }

LABEL_12:
      v7 += 284;
    }
  }

  return 0;
}

uint64_t sub_504BC8(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x23u)
  {
    v9 = *(v8 + 17);
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

void sub_504D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_504D54(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x29u)
  {
    v9 = *(v8 + 20);
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

void sub_504EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_504EE0(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_505224(a1, *a2, 0, "link");
  if (v4)
  {
    v31 = a3;
    v5 = (v4 + *(v4 - *v4 + 8));
    v6 = (v5 + *v5);
    if (*v6)
    {
      v7 = 0;
      v8 = 0;
      v32 = &v6[3 * *v6 + 1];
      v9 = v6 + 1;
      while (1)
      {
        v10 = sub_5053B0(a1, *v9, 0, "segment");
        v11 = (v10 - *v10);
        if (*v11 < 5u)
        {
          v12 = 0;
          v13 = (&loc_1120530 + 1);
          if (*(&loc_1120530 + 1) < 5u)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v12 = v11[2];
          if (v12)
          {
            v12 = (v12 + v10 + *(v12 + v10));
          }

          v13 = (v12 - *v12);
          if (*v13 < 5u)
          {
LABEL_13:
            v15 = 0;
            v16 = -17958193;
            v34 = v9;
            goto LABEL_15;
          }
        }

        v14 = v13[2];
        if (!v14)
        {
          v15 = 0;
          v16 = -17958193;
          v34 = v9;
LABEL_15:
          v17 = 0;
          v18 = *(v9 + 8);
          v19 = v15 + 1;
          v20 = -1;
          v35 = v15;
          do
          {
            v21 = v17;
            if (v18 == 1)
            {
              v21 = v20 + *v15;
            }

            v22 = &v19[2 * v21];
            v23 = *v22;
            LODWORD(v22) = *(v22 + 4);
            if (v22 >= 0xFFFFFFFE)
            {
              v22 = 4294967294;
            }

            else
            {
              v22 = v22;
            }

            v24 = v23 | (v22 << 32);
            v25 = v8 - v7;
            v26 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 2);
            v27 = v26 + 1;
            if (v26 + 1 > 0x1555555555555555)
            {
              sub_1794();
            }

            if (0x5555555555555556 * (-v7 >> 2) > v27)
            {
              v27 = 0x5555555555555556 * (-v7 >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v7 >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v28 = 0x1555555555555555;
            }

            else
            {
              v28 = v27;
            }

            if (v28)
            {
              if (v28 <= 0x1555555555555555)
              {
                operator new();
              }

              sub_1808();
            }

            v29 = 12 * v26;
            *v29 = v24;
            *(v29 + 8) = 0x7FFFFFFF;
            v8 = 12 * v26 + 12;
            v30 = (v29 + 12 * (v25 / -12));
            memcpy(v30, v7, v25);
            if (v7)
            {
              operator delete(v7);
            }

            v7 = v30;
            v15 = v35;
            ++v17;
            --v20;
          }

          while (v16 + v20 != -1);
          goto LABEL_4;
        }

        v15 = (v12 + v14 + *(v12 + v14));
        v16 = *v15;
        v34 = v9;
        if (*v15)
        {
          goto LABEL_15;
        }

LABEL_4:
        v9 = v34 + 3;
        if (v34 + 3 == v32)
        {
          goto LABEL_36;
        }
      }
    }

    v8 = 0;
    v7 = 0;
LABEL_36:
    *v31 = v7;
    v31[1] = v8;
    v31[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_505204(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_505224(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x11u)
  {
    v9 = *(v8 + 8);
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

void sub_505380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5053B0(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x17u)
  {
    v9 = *(v8 + 11);
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

void sub_50550C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_50553C(void *a1)
{
  if (*a1)
  {
    return 1;
  }

  if (a1[4])
  {
    return 1;
  }

  return a1[8] != 0;
}

void sub_50556C(void *a1)
{
  v1 = a1[5];
  a1[4] = 0;
  a1[5] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[7];
    a1[6] = 0;
    a1[7] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[7];
    a1[6] = 0;
    a1[7] = 0;
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_50564C(uint64_t a1)
{
  v1 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

double sub_5056CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 136) = 850045863;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 850045863;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  return result;
}

void sub_505724(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return;
  }

  std::mutex::lock((a1 + 200));
  std::mutex::lock((a1 + 136));
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  *&v34 = v5;
  *(&v34 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 80);
  v35 = *(a1 + 72);
  v36 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 96);
  v37 = *(a1 + 88);
  v38 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 112);
  v39 = *(a1 + 104);
  v40 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 128);
  v41 = *(a1 + 120);
  v42 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 136));
  v10 = *a2;
  if (!v5)
  {
    v11 = 1;
    v12 = v37 != 0;
    v13 = a2[1];
    if (!v13)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *(v10 + 56) != *(v5 + 56);
  v12 = v37 != 0;
  v13 = a2[1];
  if (v13)
  {
LABEL_14:
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_15:
  v14 = *(&v34 + 1);
  *&v34 = v10;
  *(&v34 + 1) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v11)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v11)
  {
LABEL_18:
    sub_505B50();
  }

LABEL_19:
  if (v12 && v11)
  {
    sub_CB3064();
  }

  v25 = v34;
  if (*(&v34 + 1))
  {
    atomic_fetch_add_explicit((*(&v34 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v26 = v35;
  v27 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = v37;
  v29 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  v30 = v39;
  v31 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = v41;
  v33 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::lock((a1 + 136));
  sub_3ADC80(a1 + 56, &v25);
  std::mutex::unlock((a1 + 136));
  sub_3B889C(&v25);
  if (*(a1 + 24))
  {
    v16 = v34;
    if (*(&v34 + 1))
    {
      atomic_fetch_add_explicit((*(&v34 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v17 = v35;
    v18 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = v37;
    v20 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = v39;
    v22 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = v41;
    v24 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(a1 + 24);
    if (!v15)
    {
      sub_2B7420();
    }

    (*(*v15 + 48))(v15, &v16);
    sub_3B889C(&v16);
  }

  sub_3B889C(&v34);
  std::mutex::unlock((a1 + 200));
}