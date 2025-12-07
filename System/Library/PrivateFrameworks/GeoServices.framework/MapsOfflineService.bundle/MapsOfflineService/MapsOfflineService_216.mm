void sub_CC2548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_C4C7CC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_CC255C(void *a1, unint64_t *a2, uint64_t a3, void **a4)
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

void sub_CC28D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CAFB4C(va);
  _Unwind_Resume(a1);
}

double sub_CC28E4@<D0>(int a1@<W0>, char *a2@<X8>)
{
  if (a1 == 2)
  {
    operator new();
  }

  if (a1 == 1)
  {
    a2[23] = 18;
    result = *"blocking_incidents";
    strcpy(a2, "blocking_incidents");
  }

  else if (a1)
  {
    a2[23] = 7;
    strcpy(a2, "unknown");
  }

  else
  {
    a2[23] = 11;
    strcpy(a2, "static_only");
  }

  return result;
}

uint64_t sub_CC29F4(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = 8;
  strcpy(__p, "fill_in_");
  sub_CC9264(a1 + 40, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_CC2A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_CC2A98@<Q0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a1 = vaddq_f64(*a2, *a1);
  *(a1 + 16) = vaddq_f64(a2[1], v5);
  *(a1 + 32) = a2[2].f64[0] + *(a1 + 32);
  sub_CC92D8(a1 + 40, &a2[2].f64[1], &__p);
  if (v14 < 0)
  {
    operator delete(__p);
    v7 = *(a1 + 16);
    *a3 = *a1;
    *(a3 + 16) = v7;
    *(a3 + 32) = *(a1 + 32);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a3 + 40), *(a1 + 40), *(a1 + 48));
    goto LABEL_6;
  }

  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a3 + 40) = *(a1 + 40);
  *(a3 + 56) = *(a1 + 56);
LABEL_6:
  v8 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v8;
  v9 = *(a1 + 176);
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = v9;
  v10 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v10;
  result = *(a1 + 96);
  v12 = *(a1 + 112);
  *(a3 + 96) = result;
  *(a3 + 112) = v12;
  return result;
}

uint64_t sub_CC2B80(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC2D34(v17 * 16, a2, a3, a4);
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

void sub_CC2D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC2D34(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC2E84(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC3038(v17 * 16, a2, a3, a4);
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

void sub_CC3024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC3038(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC3188(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC333C(v17 * 16, a2, a3, a4);
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

void sub_CC3328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC333C(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC348C(uint64_t a1)
{
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = 0;
  LOBYTE(__p[0]) = 0;
  sub_CC9264(a1 + 280, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_CC29F4(a1 + 432);
  LODWORD(__p[0]) = 0;
  sub_CCE5F4(a1 + 624, __p);
  LODWORD(__p[0]) = 1;
  sub_CCE5F4(a1 + 760, __p);
  LODWORD(__p[0]) = 2;
  sub_CCE5F4(a1 + 896, __p);
  LODWORD(__p[0]) = 3;
  sub_CCE5F4(a1 + 1032, __p);
  v4 = 0;
  LOBYTE(__p[0]) = 0;
  sub_CC572C(a1 + 1168, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_CC3594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 495) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v15 + 303) & 0x80000000) == 0)
      {
LABEL_8:
        if (*(v15 + 55) < 0)
        {
          operator delete(*(v15 + 32));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(*(v15 + 280));
      goto LABEL_8;
    }
  }

  else if ((*(v15 + 495) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v15 + 472));
  if ((*(v15 + 303) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_CC3644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    JUMPOUT(0xCC3628);
  }

  JUMPOUT(0xCC362CLL);
}

uint64_t sub_CC365C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(a1 + 24) = *(a2 + 24) + *(a1 + 24);
  *a1 = vaddq_f64(*a2, *a1);
  *(a1 + 16) = *(a2 + 16) + v4;
  sub_CC384C(a1, (a1 + 32), (a2 + 32));
  *(a1 + 56) = vaddq_f64(*(a2 + 56), *(a1 + 56));
  *(a1 + 72) = vaddq_f64(*(a2 + 72), *(a1 + 72));
  *(a1 + 88) = vaddq_f64(*(a2 + 88), *(a1 + 88));
  *(a1 + 104) = vaddq_f64(*(a2 + 104), *(a1 + 104));
  *(a1 + 120) = vaddq_f64(*(a2 + 120), *(a1 + 120));
  *(a1 + 136) = vaddq_f64(*(a2 + 136), *(a1 + 136));
  *(a1 + 152) = vaddq_f64(*(a2 + 152), *(a1 + 152));
  *(a1 + 168) = vaddq_f64(*(a2 + 168), *(a1 + 168));
  *(a1 + 184) = vaddq_f64(*(a2 + 184), *(a1 + 184));
  *(a1 + 200) = vaddq_f64(*(a2 + 200), *(a1 + 200));
  *(a1 + 216) = vaddq_f64(*(a2 + 216), *(a1 + 216));
  *(a1 + 232) = vaddq_f64(*(a2 + 232), *(a1 + 232));
  *(a1 + 248) = vaddq_f64(*(a2 + 248), *(a1 + 248));
  *(a1 + 264) = vaddq_f64(*(a2 + 264), *(a1 + 264));
  sub_CC92D8(a1 + 280, a2 + 280, &v9);
  if (v10 < 0)
  {
    operator delete(v9);
    sub_CC2A98(a1 + 432, (a2 + 432), v6);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator delete(__p);
    goto LABEL_3;
  }

  sub_CC2A98(a1 + 432, (a2 + 432), v6);
  if (v8 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_CCE624(a1 + 624, a2 + 624);
  sub_CCE624(a1 + 760, a2 + 760);
  sub_CCE624(a1 + 896, a2 + 896);
  sub_CCE624(a1 + 1032, a2 + 1032);
  sub_CC5794(a1 + 1168, a2 + 1168);
  return a1;
}

void sub_CC384C(int a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  if (v3)
  {
    v5 = *(a3 + 23);
    v6 = v5;
    if (v5 < 0)
    {
      v5 = a3[1];
    }

    if (v5)
    {
      if (v3 != v5 || (v4 >= 0 ? (v7 = a2) : (v7 = *a2), v6 >= 0 ? (v8 = a3) : (v8 = *a3), v9 = a2, v10 = memcmp(v7, v8, v3), a2 = v9, v10))
      {
        if (v4 < 0)
        {
          a2[1] = dword_4 + 3;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 7;
        }

        strcpy(a2, "various");
      }
    }
  }

  else if (a2 != a3)
  {
    v11 = *(a3 + 23);
    if (v4 < 0)
    {
      if (v11 >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      if (v11 >= 0)
      {
        v14 = *(a3 + 23);
      }

      else
      {
        v14 = a3[1];
      }

      sub_13B38(a2, v13, v14);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      v16 = *a3;
      v15 = a3[1];

      sub_13A68(a2, v16, v15);
    }

    else
    {
      v12 = *a3;
      a2[2] = a3[2];
      *a2 = v12;
    }
  }
}

void sub_CC3998(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"JourneyPlannerModule";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 20;
  *(a2 + 16) = 1701606756;
  v4 = (a2 + 24);
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(*a1);
  v5 = sub_CC2B80((a2 + 24), "Runtime", v62, v66);
  v6 = v5;
  v7 = *(a2 + 40);
  v8 = a1[96];
  v9 = a1[79];
  *(a2 + 32) = v5;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(v9 + v8);
  if (v5 >= v7)
  {
    v10 = sub_CC468C(v4, "Runtime.InitialWalking", v62, v66);
  }

  else
  {
    sub_CC4840(v5, "Runtime.InitialWalking", v62, v66);
    v10 = v6 + 48;
  }

  *(a2 + 32) = v10;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[113]);
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_CC4990(v4, "Runtime.DirectWalking", v62, v66);
  }

  else
  {
    sub_CC4B44(v10, "Runtime.DirectWalking", v62, v66);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[1] + a1[2]);
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_CC4990(v4, "Runtime.Preprocessing", v62, v66);
  }

  else
  {
    sub_CC4B44(v11, "Runtime.Preprocessing", v62, v66);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[7]);
  if (v12 >= *(a2 + 40))
  {
    v13 = sub_CC4C94(v4, "Runtime.JourneyPlanningAlgorithm", v62, v66);
  }

  else
  {
    sub_CC4E48(v12, "Runtime.JourneyPlanningAlgorithm", v62, v66);
    v13 = v12 + 48;
  }

  v14 = a1[30];
  v15 = a1[8] + a1[9] + a1[10] + a1[13] + a1[14] + a1[15] + a1[16] + a1[17] + a1[18] + a1[19] + a1[20] + a1[21] + a1[22] + a1[23] + a1[24] + a1[25] + a1[26] + a1[27] + a1[28] + a1[29];
  *(a2 + 32) = v13;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(v15 + v14);
  if (v13 >= *(a2 + 40))
  {
    v16 = sub_CC468C(v4, "Runtime.Postprocessing", v62, v66);
  }

  else
  {
    sub_CC4840(v13, "Runtime.Postprocessing", v62, v66);
    v16 = v13 + 48;
  }

  *(a2 + 32) = v16;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[11]);
  if (v16 >= *(a2 + 40))
  {
    v17 = sub_CC4F98(v4, "RunTime.FareCalculation", v62, v66);
  }

  else
  {
    sub_CC514C(v16, "RunTime.FareCalculation", v62, v66);
    v17 = v16 + 48;
  }

  *(a2 + 32) = v17;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[12]);
  if (v17 >= *(a2 + 40))
  {
    v18 = sub_CC4F98(v4, "RunTime.RealtimeUpdates", v62, v66);
  }

  else
  {
    sub_CC514C(v17, "RunTime.RealtimeUpdates", v62, v66);
    v18 = v17 + 48;
  }

  *(a2 + 32) = v18;
  LOBYTE(v62[0]) = 1;
  v66[0] = llround(a1[130]);
  if (v18 >= *(a2 + 40))
  {
    v19 = sub_CC529C(v4, "Runtime.WalkingUnpacking", v62, v66);
  }

  else
  {
    sub_CC5450(v18, "Runtime.WalkingUnpacking", v62, v66);
    v19 = v18 + 48;
  }

  *(a2 + 32) = v19;
  LOBYTE(v62[0]) = 4;
  v66[0] = llround(a1[31]);
  if (v19 >= *(a2 + 40))
  {
    v20 = sub_CC3188(v4, "Iterations", v62, v66);
  }

  else
  {
    sub_CC333C(v19, "Iterations", v62, v66);
    v20 = v19 + 48;
  }

  *(a2 + 32) = v20;
  LOBYTE(v62[0]) = 4;
  v66[0] = llround(a1[34]);
  if (v20 >= *(a2 + 40))
  {
    v21 = sub_CC529C(v4, "WalkingUnpackingFailures", v62, v66);
  }

  else
  {
    sub_CC5450(v20, "WalkingUnpackingFailures", v62, v66);
    v21 = v20 + 48;
  }

  *(a2 + 32) = v21;
  v70 = v4;
  sub_CC93E4((a1 + 35), v66);
  sub_CC43AC(&v70, v66);
  sub_CCE7C4(a1 + 78, v62);
  sub_CC43AC(&v70, v62);
  sub_CCE7C4(a1 + 95, v58);
  sub_CC43AC(&v70, v58);
  sub_CCE7C4(a1 + 112, v54);
  sub_CC43AC(&v70, v54);
  sub_CCE7C4(a1 + 129, v50);
  sub_CC43AC(&v70, v50);
  sub_CC57E8(a1 + 146, v46);
  sub_CC43AC(&v70, v46);
  v22 = __p;
  if (__p)
  {
    v23 = v49;
    v24 = __p;
    if (v49 != __p)
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
      v24 = __p;
    }

    v49 = v22;
    operator delete(v24);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  v26 = v52;
  if (v52)
  {
    v27 = v53;
    v28 = v52;
    if (v53 != v52)
    {
      do
      {
        v29 = *(v27 - 25);
        v27 -= 6;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = v52;
    }

    v53 = v26;
    operator delete(v28);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  v30 = v56;
  if (v56)
  {
    v31 = v57;
    v32 = v56;
    if (v57 != v56)
    {
      do
      {
        v33 = *(v31 - 25);
        v31 -= 6;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v56;
    }

    v57 = v30;
    operator delete(v32);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  v34 = v60;
  if (v60)
  {
    v35 = v61;
    v36 = v60;
    if (v61 != v60)
    {
      do
      {
        v37 = *(v35 - 25);
        v35 -= 6;
        if (v37 < 0)
        {
          operator delete(*v35);
        }
      }

      while (v35 != v34);
      v36 = v60;
    }

    v61 = v34;
    operator delete(v36);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  v38 = v64;
  if (v64)
  {
    v39 = v65;
    v40 = v64;
    if (v65 != v64)
    {
      do
      {
        v41 = *(v39 - 25);
        v39 -= 6;
        if (v41 < 0)
        {
          operator delete(*v39);
        }
      }

      while (v39 != v38);
      v40 = v64;
    }

    v65 = v38;
    operator delete(v40);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  v42 = v68;
  if (v68)
  {
    v43 = v69;
    v44 = v68;
    if (v69 != v68)
    {
      do
      {
        v45 = *(v43 - 25);
        v43 -= 6;
        if (v45 < 0)
        {
          operator delete(*v43);
        }
      }

      while (v43 != v42);
      v44 = v68;
    }

    v69 = v42;
    operator delete(v44);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }
}

void sub_CC4144(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC4170(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC419C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC41C8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC41F4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC4220(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC424C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC4278(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC42A4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC42D0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC42E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_9DA0(&a10);
  sub_9DA0(&a16);
  sub_9DA0(&a22);
  sub_9DA0(va);
  sub_9DA0(v28 - 152);
  sub_9DA0(v28 - 104);
  sub_9DA0(v27);
  _Unwind_Resume(a1);
}

void sub_CC4364(_Unwind_Exception *a1)
{
  sub_9DA0(v2 - 104);
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC43AC(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    sub_3608D0(v20, "");
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    if (v5 == v6)
    {
      goto LABEL_35;
    }

    goto LABEL_7;
  }

  sub_2D4D58(".", a2, v20);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5 != v6)
  {
LABEL_7:
    v7 = *a1;
    do
    {
      if ((v21 & 0x80u) == 0)
      {
        v10 = v21;
      }

      else
      {
        v10 = v20[1];
      }

      if (*(v5 + 23) >= 0)
      {
        v11 = *(v5 + 23);
      }

      else
      {
        v11 = v5[1];
      }

      if (v11 + v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v11 + v10 > 0x16)
      {
        operator new();
      }

      v27 = 0;
      v26 = 0uLL;
      HIBYTE(v27) = v11 + v10;
      if (v10)
      {
        if ((v21 & 0x80u) == 0)
        {
          v12 = v20;
        }

        else
        {
          v12 = v20[0];
        }

        memmove(&v26, v12, v10);
      }

      v13 = &v26 + v10;
      if (v11)
      {
        if (*(v5 + 23) >= 0)
        {
          v14 = v5;
        }

        else
        {
          v14 = *v5;
        }

        memmove(v13, v14, v11);
      }

      v13[v11] = 0;
      v15 = *(v5 + 24);
      if (SHIBYTE(v27) < 0)
      {
        v17 = v26;
        sub_325C(__p, v26, *(&v26 + 1));
        LOBYTE(v24) = v15;
        *(&v24 + 1) = v5[4];
        v25 = 1;
        operator delete(v17);
        v16 = *(v7 + 8);
        if (v16 >= *(v7 + 16))
        {
LABEL_33:
          v18 = sub_CC55A0(v7, __p);
          v19 = SHIBYTE(v23);
          *(v7 + 8) = v18;
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_9;
        }
      }

      else
      {
        *__p = v26;
        v23 = v27;
        LOBYTE(v24) = v15;
        *(&v24 + 1) = v5[4];
        v25 = 1;
        v16 = *(v7 + 8);
        if (v16 >= *(v7 + 16))
        {
          goto LABEL_33;
        }
      }

      v8 = *__p;
      *(v16 + 16) = v23;
      *v16 = v8;
      __p[1] = 0;
      v23 = 0;
      __p[0] = 0;
      v9 = v25;
      *(v16 + 24) = v24;
      *(v16 + 40) = v9;
      *(v7 + 8) = v16 + 48;
LABEL_9:
      v5 += 6;
    }

    while (v5 != v6);
  }

LABEL_35:
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_CC4624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v21);
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_CC468C(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC4840(v17 * 16, a2, a3, a4);
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

void sub_CC482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC4840(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC4990(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC4B44(v17 * 16, a2, a3, a4);
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

void sub_CC4B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC4B44(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC4C94(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC4E48(v17 * 16, a2, a3, a4);
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

void sub_CC4E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC4E48(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC4F98(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC514C(v17 * 16, a2, a3, a4);
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

void sub_CC5138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC514C(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC529C(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC5450(v17 * 16, a2, a3, a4);
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

void sub_CC543C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC5450(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC55A0(__int128 **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
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
  *(v6 + 40) = *(a2 + 40);
  v7 = 48 * v2 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = &(*a1)[v6 / 0x10] - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = &(*a1)[v6 / 0x10] - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 10);
      *(v12 + 24) = v14;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 += 3;
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

double sub_CC572C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = a1;
    sub_325C(a1, *a2, *(a2 + 1));
    a1 = v3;
  }

  else
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
  }

  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

double sub_CC5794(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = vaddq_f64(*(a2 + 24), *(a1 + 24));
  *(a1 + 40) = vaddq_f64(*(a2 + 40), *(a1 + 40));
  *(a1 + 56) = vaddq_f64(*(a2 + 56), *(a1 + 56));
  *(a1 + 72) = vaddq_f64(*(a2 + 72), *(a1 + 72));
  result = *(a2 + 88) + *(a1 + 88);
  *(a1 + 88) = result;
  return result;
}

uint64_t sub_CC57E8@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v17 = 4;
  v16 = llround(a1[3]);
  v4 = sub_CC5C50((a2 + 24), "Solutions", &v17, &v16);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = a1[4];
  *(a2 + 32) = v4;
  v17 = 4;
  v16 = llround(v7);
  if (v4 >= v6)
  {
    v8 = sub_CC5F54((a2 + 24), "Journeys", &v17, &v16);
  }

  else
  {
    sub_CC6108(v4, "Journeys", &v17, &v16);
    v8 = v5 + 48;
  }

  *(a2 + 32) = v8;
  v17 = 4;
  v16 = llround(a1[5]);
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_CC529C((a2 + 24), "JourneysWithRealtimeData", &v17, &v16);
  }

  else
  {
    sub_CC5450(v8, "JourneysWithRealtimeData", &v17, &v16);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  v17 = 4;
  v16 = llround(a1[6]);
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_CC6258((a2 + 24), "JourneysBasedOnRealtimeData", &v17, &v16);
  }

  else
  {
    sub_CC640C(v9, "JourneysBasedOnRealtimeData", &v17, &v16);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  v17 = 4;
  v16 = llround(a1[7]);
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_CC655C((a2 + 24), "JourneysAtRisk", &v17, &v16);
  }

  else
  {
    sub_CC6710(v10, "JourneysAtRisk", &v17, &v16);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  v17 = 4;
  v16 = llround(a1[8]);
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_CC6860((a2 + 24), "JourneysWithBlockingIncidents", &v17, &v16);
  }

  else
  {
    sub_CC6A14(v11, "JourneysWithBlockingIncidents", &v17, &v16);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  v17 = 4;
  v16 = llround(a1[9]);
  if (v12 >= *(a2 + 40))
  {
    v13 = sub_CC2E84((a2 + 24), "JourneysWithFareData", &v17, &v16);
  }

  else
  {
    sub_CC3038(v12, "JourneysWithFareData", &v17, &v16);
    v13 = v12 + 48;
  }

  *(a2 + 32) = v13;
  v17 = 4;
  v16 = llround(a1[10]);
  if (v13 >= *(a2 + 40))
  {
    v14 = sub_CC6B64((a2 + 24), "JourneysFailedFareNormalisation", &v17, &v16);
  }

  else
  {
    sub_CC6D18(v13, "JourneysFailedFareNormalisation", &v17, &v16);
    v14 = v13 + 48;
  }

  *(a2 + 32) = v14;
  v17 = 4;
  v16 = llround(a1[11]);
  if (v14 >= *(a2 + 40))
  {
    result = sub_CC6258((a2 + 24), "BlockingOffjourneyIncidents", &v17, &v16);
    *(a2 + 32) = result;
  }

  else
  {
    sub_CC640C(v14, "BlockingOffjourneyIncidents", &v17, &v16);
    result = v14 + 48;
    *(a2 + 32) = v14 + 48;
  }

  return result;
}

void sub_CC5B7C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_CC5C50(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC5E04(v17 * 16, a2, a3, a4);
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

void sub_CC5DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC5E04(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC5F54(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC6108(v17 * 16, a2, a3, a4);
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

void sub_CC60F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC6108(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC6258(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC640C(v17 * 16, a2, a3, a4);
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

void sub_CC63F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC640C(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC655C(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC6710(v17 * 16, a2, a3, a4);
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

void sub_CC66FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC6710(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC6860(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC6A14(v17 * 16, a2, a3, a4);
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

void sub_CC6A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC6A14(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC6B64(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC6D18(v17 * 16, a2, a3, a4);
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

void sub_CC6D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC6D18(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC6E68@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"JourneyUpdaterModule";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 20;
  *(a2 + 16) = 1701606756;
  v13 = 4;
  v12 = llround(*a1);
  v4 = sub_CC5F54((a2 + 24), "Journeys", &v13, &v12);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = a1[1];
  *(a2 + 32) = v4;
  v13 = 4;
  v12 = llround(v7);
  if (v4 >= v6)
  {
    v8 = sub_CC655C((a2 + 24), "JourneysFailed", &v13, &v12);
  }

  else
  {
    sub_CC6710(v4, "JourneysFailed", &v13, &v12);
    v8 = v5 + 48;
  }

  *(a2 + 32) = v8;
  v13 = 4;
  v12 = llround(a1[2]);
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_CC529C((a2 + 24), "JourneysWithRealtimeData", &v13, &v12);
  }

  else
  {
    sub_CC5450(v8, "JourneysWithRealtimeData", &v13, &v12);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  v13 = 1;
  v12 = llround(a1[3]);
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_CC2B80((a2 + 24), "Runtime", &v13, &v12);
  }

  else
  {
    sub_CC2D34(v9, "Runtime", &v13, &v12);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  v13 = 1;
  v12 = llround(a1[5]);
  if (v10 >= *(a2 + 40))
  {
    result = sub_CC4F98((a2 + 24), "RunTime.RealtimeUpdates", &v13, &v12);
    *(a2 + 32) = result;
  }

  else
  {
    sub_CC514C(v10, "RunTime.RealtimeUpdates", &v13, &v12);
    result = v10 + 48;
    *(a2 + 32) = v10 + 48;
  }

  return result;
}

void sub_CC709C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

float64x2_t sub_CC7110(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  *a1 = vaddq_f64(*a2, *a1);
  a1[1] = vaddq_f64(a2[1], v2);
  result = vaddq_f64(a2[2], a1[2]);
  a1[2] = result;
  return result;
}

uint64_t sub_CC7140@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "PaymentMethodLookupModule", 0x19uLL);
  v11 = 4;
  v10 = llround(*a1);
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_CC2E84(a2 + 3, "OutOfTransitCoverage", &v11, &v10);
  }

  else
  {
    sub_CC3038(a2[4], "OutOfTransitCoverage", &v11, &v10);
    v5 = v4 + 48;
  }

  a2[4] = v5;
  v11 = 4;
  v10 = llround(a1[1]);
  if (v5 >= a2[5])
  {
    v6 = sub_CC5C50(a2 + 3, "Solutions", &v11, &v10);
  }

  else
  {
    sub_CC5E04(v5, "Solutions", &v11, &v10);
    v6 = v5 + 48;
  }

  a2[4] = v6;
  v11 = 4;
  v10 = llround(a1[2]);
  if (v6 >= a2[5])
  {
    v7 = sub_CC2E84(a2 + 3, "PaymentMethodRegions", &v11, &v10);
  }

  else
  {
    sub_CC3038(v6, "PaymentMethodRegions", &v11, &v10);
    v7 = v6 + 48;
  }

  a2[4] = v7;
  v11 = 1;
  v10 = llround(a1[3]);
  if (v7 >= a2[5])
  {
    v8 = sub_CC2B80(a2 + 3, "Runtime", &v11, &v10);
  }

  else
  {
    sub_CC2D34(v7, "Runtime", &v11, &v10);
    v8 = v7 + 48;
  }

  a2[4] = v8;
  v11 = 1;
  v10 = llround(a1[4]);
  if (v8 >= a2[5])
  {
    result = sub_CC4990(a2 + 3, "Runtime.Preprocessing", &v11, &v10);
    a2[4] = result;
  }

  else
  {
    sub_CC4B44(v8, "Runtime.Preprocessing", &v11, &v10);
    result = v8 + 48;
    a2[4] = v8 + 48;
  }

  return result;
}

void sub_CC7398(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

_OWORD *sub_CC7424(_OWORD *a1)
{
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v4 = 4;
  sub_CCE5F4((a1 + 17), &v4);
  v3 = 5;
  sub_CCE5F4(a1 + 408, &v3);
  return a1;
}

float64x2_t *sub_CC74A0(float64x2_t *a1, float64x2_t *a2)
{
  v4 = a1[1];
  *a1 = vaddq_f64(*a2, *a1);
  a1[1] = vaddq_f64(a2[1], v4);
  v5 = a1[3];
  a1[2] = vaddq_f64(a2[2], a1[2]);
  a1[3] = vaddq_f64(a2[3], v5);
  v6 = a1[5];
  a1[4] = vaddq_f64(a2[4], a1[4]);
  a1[5] = vaddq_f64(a2[5], v6);
  v7 = a1[7];
  a1[6] = vaddq_f64(a2[6], a1[6]);
  a1[7] = vaddq_f64(a2[7], v7);
  v8 = a1[9];
  a1[8] = vaddq_f64(a2[8], a1[8]);
  a1[9] = vaddq_f64(a2[9], v8);
  v9 = a1[11];
  a1[10] = vaddq_f64(a2[10], a1[10]);
  a1[11] = vaddq_f64(a2[11], v9);
  v10 = a1[13];
  a1[12] = vaddq_f64(a2[12], a1[12]);
  a1[13] = vaddq_f64(a2[13], v10);
  v11 = a1[15];
  a1[14] = vaddq_f64(a2[14], a1[14]);
  a1[15] = vaddq_f64(a2[15], v11);
  a1[16] = vaddq_f64(a2[16], a1[16]);
  sub_CCE624(&a1[17], &a2[17]);
  sub_CCE624(&a1[25].f64[1], &a2[25].f64[1]);
  return a1;
}

void sub_CC75D0(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"ScheduleLookupModule";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 20;
  *(a2 + 16) = 1701606756;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(*a1);
  v4 = sub_CC4F98((a2 + 24), "UserLocationUnavailable", v34, v38);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = a1[1];
  *(a2 + 32) = v4;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(v7);
  if (v4 >= v6)
  {
    v8 = sub_CC8350((a2 + 24), "UserLocationAndOriginMatch", v34, v38);
  }

  else
  {
    sub_CC8504(v4, "UserLocationAndOriginMatch", v34, v38);
    v8 = v5 + 48;
  }

  *(a2 + 32) = v8;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[2]);
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_CC8654((a2 + 24), "FarFromTransitStops", v34, v38);
  }

  else
  {
    sub_CC8808(v8, "FarFromTransitStops", v34, v38);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[3]);
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_CC2E84((a2 + 24), "OutOfTransitCoverage", v34, v38);
  }

  else
  {
    sub_CC3038(v9, "OutOfTransitCoverage", v34, v38);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[4]);
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_CC5C50((a2 + 24), "Solutions", v34, v38);
  }

  else
  {
    sub_CC5E04(v10, "Solutions", v34, v38);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[5]);
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_CC3188((a2 + 24), "Categories", v34, v38);
  }

  else
  {
    sub_CC333C(v11, "Categories", v34, v38);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[6]);
  if (v12 >= *(a2 + 40))
  {
    v13 = sub_CC8958((a2 + 24), "Groups", v34, v38);
  }

  else
  {
    sub_CC8B0C(v12, "Groups", v34, v38);
    v13 = v12 + 48;
  }

  *(a2 + 32) = v13;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[7]);
  if (v13 >= *(a2 + 40))
  {
    v14 = sub_CC8C5C((a2 + 24), "Cells", v34, v38);
  }

  else
  {
    sub_CC8E10(v13, "Cells", v34, v38);
    v14 = v13 + 48;
  }

  *(a2 + 32) = v14;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[8]);
  if (v14 >= *(a2 + 40))
  {
    v15 = sub_CC5C50((a2 + 24), "Schedules", v34, v38);
  }

  else
  {
    sub_CC5E04(v14, "Schedules", v34, v38);
    v15 = v14 + 48;
  }

  *(a2 + 32) = v15;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[11]);
  if (v15 >= *(a2 + 40))
  {
    v16 = sub_CC8F60((a2 + 24), "BlockingIncidents", v34, v38);
  }

  else
  {
    sub_CC9114(v15, "BlockingIncidents", v34, v38);
    v16 = v15 + 48;
  }

  *(a2 + 32) = v16;
  LOBYTE(v34[0]) = 4;
  v38[0] = llround(a1[12]);
  if (v16 >= *(a2 + 40))
  {
    v17 = sub_CC4F98((a2 + 24), "OriginWalkingIterations", v34, v38);
  }

  else
  {
    sub_CC514C(v16, "OriginWalkingIterations", v34, v38);
    v17 = v16 + 48;
  }

  *(a2 + 32) = v17;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(a1[13]);
  if (v17 >= *(a2 + 40))
  {
    v18 = sub_CC2B80((a2 + 24), "Runtime", v34, v38);
  }

  else
  {
    sub_CC2D34(v17, "Runtime", v34, v38);
    v18 = v17 + 48;
  }

  *(a2 + 32) = v18;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(a1[35] + a1[52]);
  if (v18 >= *(a2 + 40))
  {
    v19 = sub_CC468C((a2 + 24), "Runtime.InitialWalking", v34, v38);
  }

  else
  {
    sub_CC4840(v18, "Runtime.InitialWalking", v34, v38);
    v19 = v18 + 48;
  }

  *(a2 + 32) = v19;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(a1[14] + a1[15]);
  if (v19 >= *(a2 + 40))
  {
    v20 = sub_CC4990((a2 + 24), "Runtime.Preprocessing", v34, v38);
  }

  else
  {
    sub_CC4B44(v19, "Runtime.Preprocessing", v34, v38);
    v20 = v19 + 48;
  }

  *(a2 + 32) = v20;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(a1[16]);
  if (v20 >= *(a2 + 40))
  {
    v21 = sub_CC6B64((a2 + 24), "Runtime.ScheduleLookupAlgorithm", v34, v38);
  }

  else
  {
    sub_CC6D18(v20, "Runtime.ScheduleLookupAlgorithm", v34, v38);
    v21 = v20 + 48;
  }

  v22 = a1[30];
  v23 = a1[17] + a1[18] + a1[19] + a1[20] + a1[21] + a1[22] + a1[23] + a1[24] + a1[25] + a1[26] + a1[27] + a1[28] + a1[29];
  *(a2 + 32) = v21;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(v23 + v22 + a1[31] + a1[33]);
  if (v21 >= *(a2 + 40))
  {
    v24 = sub_CC468C((a2 + 24), "Runtime.Postprocessing", v34, v38);
  }

  else
  {
    sub_CC4840(v21, "Runtime.Postprocessing", v34, v38);
    v24 = v21 + 48;
  }

  *(a2 + 32) = v24;
  LOBYTE(v34[0]) = 1;
  v38[0] = llround(a1[32]);
  if (v24 >= *(a2 + 40))
  {
    v25 = sub_CC529C((a2 + 24), "Runtime.WalkingUnpacking", v34, v38);
  }

  else
  {
    sub_CC5450(v24, "Runtime.WalkingUnpacking", v34, v38);
    v25 = v24 + 48;
  }

  *(a2 + 32) = v25;
  sub_CCE7C4(a1 + 34, v38);
  sub_CC80E4((a2 + 24), v38);
  sub_CCE7C4(a1 + 51, v34);
  sub_CC80E4((a2 + 24), v34);
  v26 = __p;
  if (__p)
  {
    v27 = v37;
    v28 = __p;
    if (v37 != __p)
    {
      do
      {
        v29 = *(v27 - 25);
        v27 -= 6;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = __p;
    }

    v37 = v26;
    operator delete(v28);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  v30 = v40;
  if (v40)
  {
    v31 = v41;
    v32 = v40;
    if (v41 != v40)
    {
      do
      {
        v33 = *(v31 - 25);
        v31 -= 6;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v40;
    }

    v41 = v30;
    operator delete(v32);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }
}

void sub_CC7DCC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7DF8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7E24(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7E50(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7E7C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7EA8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7ED4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7F00(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7F2C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7F58(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7F84(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7FB0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC7FDC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC8008(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC8034(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC8060(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_CC8078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_9DA0(&a9);
  sub_9DA0(va);
  sub_9DA0(v14);
  _Unwind_Resume(a1);
}

void sub_CC809C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_9DA0(va);
  sub_9DA0(v13);
  _Unwind_Resume(a1);
}

void sub_CC80E4(__int128 **a1, const void **a2)
{
  v2 = a2[3];
  v3 = a2[4];
  if (v2 != v3)
  {
    while (1)
    {
      v8 = *(a2 + 23);
      if (v8 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = a2[1];
      }

      if (v9 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v9 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v26, 0, sizeof(v26));
      *(&v26.__r_.__value_.__s + 23) = v9 + 1;
      if (v9)
      {
        if ((v8 & 0x80u) == 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = *a2;
        }

        memmove(&v26, v10, v9);
      }

      *(&v26.__r_.__value_.__l.__data_ + v9) = 46;
      v11 = *(v2 + 23);
      v12 = v11 >= 0 ? v2 : *v2;
      v13 = v11 >= 0 ? *(v2 + 23) : v2[1];
      v14 = std::string::append(&v26, v12, v13);
      v16 = v14->__r_.__value_.__r.__words[0];
      size = v14->__r_.__value_.__l.__size_;
      v27[0] = v14->__r_.__value_.__r.__words[2];
      *(v27 + 3) = *(&v14->__r_.__value_.__r.__words[2] + 3);
      v17 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v18 = *(v2 + 24);
      if (v17 < 0)
      {
        break;
      }

      __p[0] = v16;
      __p[1] = size;
      LODWORD(v23) = v27[0];
      *(&v23 + 3) = *(v27 + 3);
      HIBYTE(v23) = v17;
      LOBYTE(v24) = v18;
      *(&v24 + 1) = v2[4];
      v25 = 1;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      v19 = a1[1];
      if (v19 < a1[2])
      {
        v6 = *__p;
        *(v19 + 16) = v23;
        *v19 = v6;
        __p[1] = 0;
        v23 = 0;
        __p[0] = 0;
        v7 = v25;
        *(v19 + 24) = v24;
        *(v19 + 40) = v7;
        a1[1] = (v19 + 48);
      }

      else
      {
        v20 = sub_CC55A0(a1, __p);
        v21 = SHIBYTE(v23);
        a1[1] = v20;
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v2 += 6;
      if (v2 == v3)
      {
        return;
      }
    }

    sub_325C(__p, v16, size);
    LOBYTE(v24) = v18;
    *(&v24 + 1) = v2[4];
    v25 = 1;
    operator delete(v16);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    operator delete(v26.__r_.__value_.__l.__data_);
    goto LABEL_25;
  }
}

void sub_CC8310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v23);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_CC8350(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC8504(v17 * 16, a2, a3, a4);
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

void sub_CC84F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC8504(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC8654(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC8808(v17 * 16, a2, a3, a4);
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

void sub_CC87F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC8808(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC8958(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC8B0C(v17 * 16, a2, a3, a4);
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

void sub_CC8AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC8B0C(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC8C5C(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC8E10(v17 * 16, a2, a3, a4);
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

void sub_CC8DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC8E10(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC8F60(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC9114(v17 * 16, a2, a3, a4);
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

void sub_CC9100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC9114(uint64_t a1, char *__s, char *a3, void *a4)
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

double sub_CC9264(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = a1;
    sub_325C(a1, *a2, *(a2 + 1));
    a1 = v3;
  }

  else
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
  }

  result = 0.0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

__n128 sub_CC92D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 + 24;
  *(a1 + 24) = vaddq_f64(*(a2 + 24), *(a1 + 24));
  *(a1 + 40) = vaddq_f64(*(a2 + 40), *(a1 + 40));
  *(a1 + 56) += *(a2 + 56);
  *(a1 + 64) = vaddq_f64(*(a2 + 64), *(a1 + 64));
  *(a1 + 80) = vaddq_f64(*(a2 + 80), *(a1 + 80));
  *(a1 + 96) = vaddq_f64(*(a2 + 96), *(a1 + 96));
  *(a1 + 112) = vaddq_f64(*(a2 + 112), *(a1 + 112));
  *(a1 + 128) = vaddq_f64(*(a2 + 128), *(a1 + 128));
  *(a1 + 144) += *(a2 + 144);
  if (*(a1 + 23) < 0)
  {
    sub_325C(a3, *a1, *(a1 + 8));
  }

  else
  {
    *a3 = *a1;
    *(a3 + 16) = *(a1 + 16);
  }

  v5 = *(v4 + 80);
  *(a3 + 88) = *(v4 + 64);
  *(a3 + 104) = v5;
  v6 = *(v4 + 112);
  *(a3 + 120) = *(v4 + 96);
  *(a3 + 136) = v6;
  v7 = *(v4 + 16);
  *(a3 + 24) = *v4;
  *(a3 + 40) = v7;
  result = *(v4 + 32);
  v9 = *(v4 + 48);
  *(a3 + 56) = result;
  *(a3 + 72) = v9;
  return result;
}

uint64_t sub_CC93E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 23) = 3;
  *a2 = 20563;
  *(a2 + 2) = 65;
  v16 = 1;
  v15 = llround(*(a1 + 24));
  v4 = sub_CC2B80((a2 + 24), "Runtime", &v16, &v15);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = *(a1 + 32);
  *(a2 + 32) = v4;
  v16 = 1;
  v15 = llround(v7);
  if (v4 >= v6)
  {
    v8 = sub_CC2E84((a2 + 24), "Runtime.StopPatterns", &v16, &v15);
  }

  else
  {
    sub_CC3038(v4, "Runtime.StopPatterns", &v16, &v15);
    v8 = v5 + 48;
  }

  *(a2 + 32) = v8;
  v16 = 1;
  v15 = llround(*(a1 + 40));
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_CC8F60((a2 + 24), "Runtime.Transfers", &v16, &v15);
  }

  else
  {
    sub_CC9114(v8, "Runtime.Transfers", &v16, &v15);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  v16 = 1;
  v15 = llround(*(a1 + 48));
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_CC8F60((a2 + 24), "Runtime.TimeShift", &v16, &v15);
  }

  else
  {
    sub_CC9114(v9, "Runtime.TimeShift", &v16, &v15);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  v16 = 4;
  v15 = llround(*(a1 + 64));
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_CC5F54((a2 + 24), "Journeys", &v16, &v15);
  }

  else
  {
    sub_CC6108(v10, "Journeys", &v16, &v15);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  v16 = 4;
  v15 = llround(*(a1 + 112));
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_CC8F60((a2 + 24), "TimeShiftAttempts", &v16, &v15);
  }

  else
  {
    sub_CC9114(v11, "TimeShiftAttempts", &v16, &v15);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  v16 = 4;
  v15 = llround(*(a1 + 120));
  if (v12 >= *(a2 + 40))
  {
    v13 = sub_CC97E8((a2 + 24), "TimeShiftApplied", &v16, &v15);
  }

  else
  {
    sub_CC999C(v12, "TimeShiftApplied", &v16, &v15);
    v13 = v12 + 48;
  }

  *(a2 + 32) = v13;
  v16 = 2;
  v15 = *(a1 + 144);
  if (v13 >= *(a2 + 40))
  {
    result = sub_CC9AEC((a2 + 24), "MemoryFootprint", &v16, &v15);
    *(a2 + 32) = result;
  }

  else
  {
    sub_CC9CA0(v13, "MemoryFootprint", &v16, &v15);
    result = v13 + 48;
    *(a2 + 32) = v13 + 48;
  }

  return result;
}

void sub_CC972C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_CC97E8(__int128 **a1, char *a2, char *a3, void *a4)
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
  sub_CC999C(v17 * 16, a2, a3, a4);
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

void sub_CC9988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC999C(uint64_t a1, char *__s, char *a3, void *a4)
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

uint64_t sub_CC9AEC(__int128 **a1, char *a2, char *a3, uint64_t *a4)
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
  sub_CC9CA0(v17 * 16, a2, a3, a4);
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

void sub_CC9C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CC9CA0(uint64_t a1, char *__s, char *a3, uint64_t *a4)
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

uint64_t sub_CC9DF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v189);
  v6 = *(a2 + 160);
  if (v6 == 1)
  {
    v12 = *(a2 + 12);
    if (HIDWORD(v12) == 1)
    {
      if (v12 == -3)
      {
        v13 = 19;
        *(&v212[0].__r_.__value_.__s + 23) = 19;
        strcpy(v212, "virtual destination");
        v14 = 0x206C617574726976;
        goto LABEL_34;
      }

      if (v12 == -2)
      {
        v13 = 14;
        *(&v212[0].__r_.__value_.__s + 23) = 14;
        strcpy(v212, "virtual origin");
        v14 = 0x206C617574726976;
        goto LABEL_34;
      }
    }

    v31 = sub_502FF8(a1[515] + 24, __ROR8__(v12, 32), 0, "stop");
    v32 = (v31 - *v31);
    if (*v32 >= 9u && (v33 = v32[4]) != 0)
    {
      v34 = (v31 + v33 + *(v31 + v33));
    }

    else
    {
      v34 = 0;
    }

    sub_CCE434(v34, 2, v212);
    v13 = HIBYTE(v212[0].__r_.__value_.__r.__words[2]);
    v14 = v212[0].__r_.__value_.__r.__words[0];
LABEL_34:
    if ((v13 & 0x80u) == 0)
    {
      v39 = v212;
    }

    else
    {
      v39 = v14;
    }

    if ((v13 & 0x80u) == 0)
    {
      size = v13;
    }

    else
    {
      size = v212[0].__r_.__value_.__l.__size_;
    }

    v41 = sub_4A5C(&v190, v39, size);
    v42 = sub_4A5C(v41, " (", 2);
    sub_A4FC74(a1 + 515, *(a2 + 12));
    v44 = std::ostream::operator<<(v42, v43);
    v45 = sub_4A5C(v44, ") @ ", 4);
    sub_35CC(__p, *(a2 + 4));
    v188 = 8;
    strcpy(v187, "HH:mm:ss");
    sub_4564(__p, v187, &v201);
    if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &v201;
    }

    else
    {
      v46 = v201.__r_.__value_.__r.__words[0];
    }

    if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(v201.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = v201.__r_.__value_.__l.__size_;
    }

    v48 = sub_4A5C(v45, v46, v47);
    v49 = sub_4A5C(v48, " -> ", 4);
    v50 = *(a2 + 20);
    if (HIDWORD(v50) == 1)
    {
      if (v50 == -3)
      {
        v51 = 19;
        HIBYTE(v185[2]) = 19;
        strcpy(v185, "virtual destination");
        v52 = 0x206C617574726976;
        goto LABEL_106;
      }

      if (v50 == -2)
      {
        v51 = 14;
        HIBYTE(v185[2]) = 14;
        strcpy(v185, "virtual origin");
        v52 = 0x206C617574726976;
        goto LABEL_106;
      }
    }

    v53 = sub_502FF8(a1[515] + 24, __ROR8__(v50, 32), 0, "stop");
    v54 = (v53 - *v53);
    if (*v54 >= 9u && (v55 = v54[4]) != 0)
    {
      v56 = (v53 + v55 + *(v53 + v55));
    }

    else
    {
      v56 = 0;
    }

    sub_CCE434(v56, 2, v185);
    v51 = HIBYTE(v185[2]);
    v52 = v185[0];
LABEL_106:
    if ((v51 & 0x80u) == 0)
    {
      v88 = v185;
    }

    else
    {
      v88 = v52;
    }

    if ((v51 & 0x80u) == 0)
    {
      v89 = v51;
    }

    else
    {
      v89 = v185[1];
    }

    v90 = sub_4A5C(v49, v88, v89);
    v91 = sub_4A5C(v90, " (", 2);
    sub_A4FC74(a1 + 515, *(a2 + 20));
    v93 = std::ostream::operator<<(v91, v92);
    v94 = sub_4A5C(v93, ") @ ", 4);
    sub_35CC(v186, *(a2 + 8));
    v181 = 8;
    strcpy(v180, "HH:mm:ss");
    sub_4564(v186, v180, &__dst);
    if ((v184 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if ((v184 & 0x80u) == 0)
    {
      v96 = v184;
    }

    else
    {
      v96 = v183;
    }

    sub_4A5C(v94, p_dst, v96);
    if (v184 < 0)
    {
      operator delete(__dst);
      if ((v181 & 0x80000000) == 0)
      {
LABEL_120:
        sub_3874(v186);
        if ((SHIBYTE(v185[2]) & 0x80000000) == 0)
        {
          goto LABEL_121;
        }

        goto LABEL_127;
      }
    }

    else if ((v181 & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    operator delete(v180[0]);
    sub_3874(v186);
    if ((SHIBYTE(v185[2]) & 0x80000000) == 0)
    {
LABEL_121:
      if ((SHIBYTE(v201.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_128;
    }

LABEL_127:
    operator delete(v185[0]);
    if ((SHIBYTE(v201.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_122:
      if ((v188 & 0x80000000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_129;
    }

LABEL_128:
    operator delete(v201.__r_.__value_.__l.__data_);
    if ((v188 & 0x80000000) == 0)
    {
LABEL_123:
      sub_3874(__p);
      if ((SHIBYTE(v212[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_259;
      }

LABEL_130:
      operator delete(v212[0].__r_.__value_.__l.__data_);
      goto LABEL_259;
    }

LABEL_129:
    operator delete(v187[0]);
    sub_3874(__p);
    if ((SHIBYTE(v212[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_130;
  }

  if (v6)
  {
    sub_5AF20();
  }

  v7 = __ROR8__(sub_A56F04(a1 + 517, *(a2 + 32), *(a2 + 52), *(a2 + 40)), 32);
  v8 = sub_3A25A8(a1[523] + 24, v7, 0, "trip");
  v9 = (v8 - *v8);
  if (*v9 >= 7u && (v10 = v9[3]) != 0)
  {
    v11 = *(v8 + v10 + 4) | (*(v8 + v10) << 32);
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v15 = *(a2 + 52);
  v16 = sub_A57920(a1 + 517, *(a2 + 32));
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
  v22 = sub_A57920(a1 + 517, *(a2 + 32));
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
  v28 = *v26;
  if (HIDWORD(v27) == 1)
  {
    if (v27 == -3)
    {
      v29 = 19;
      *(&v186[0].__r_.__value_.__s + 23) = 19;
      strcpy(v186, "virtual destination");
      v30 = 0x206C617574726976;
      goto LABEL_56;
    }

    if (v27 == -2)
    {
      v29 = 14;
      *(&v186[0].__r_.__value_.__s + 23) = 14;
      strcpy(v186, "virtual origin");
      v30 = 0x206C617574726976;
      goto LABEL_56;
    }
  }

  v35 = sub_502FF8(a1[515] + 24, __ROR8__(v27, 32), 0, "stop");
  v36 = (v35 - *v35);
  if (*v36 >= 9u && (v37 = v36[4]) != 0)
  {
    v38 = (v35 + v37 + *(v35 + v37));
  }

  else
  {
    v38 = 0;
  }

  sub_CCE434(v38, 2, v186);
  v29 = HIBYTE(v186[0].__r_.__value_.__r.__words[2]);
  v30 = v186[0].__r_.__value_.__r.__words[0];
LABEL_56:
  if ((v29 & 0x80u) == 0)
  {
    v57 = v186;
  }

  else
  {
    v57 = v30;
  }

  if ((v29 & 0x80u) == 0)
  {
    v58 = v29;
  }

  else
  {
    v58 = v186[0].__r_.__value_.__l.__size_;
  }

  v59 = sub_4A5C(&v190, v57, v58);
  v60 = sub_4A5C(v59, " (", 2);
  sub_A4FC74(a1 + 515, v27);
  v62 = std::ostream::operator<<(v60, v61);
  v63 = sub_4A5C(v62, ") @ ", 4);
  v64 = *(a2 + 16);
  v201.__r_.__value_.__r.__words[0] = *(a2 + 8);
  LODWORD(v201.__r_.__value_.__r.__words[1]) = v64;
  HIBYTE(v203.__locale_) = 8;
  strcpy(__p, "HH:mm:ss");
  sub_509AD8(&v201, __p, v212);
  if (SHIBYTE(v203.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v212[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = v212;
  }

  else
  {
    v65 = v212[0].__r_.__value_.__r.__words[0];
  }

  if ((v212[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = HIBYTE(v212[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v66 = v212[0].__r_.__value_.__l.__size_;
  }

  sub_4A5C(v63, v65, v66);
  if (SHIBYTE(v212[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v186[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_72:
      if (!*(a2 + 4))
      {
        goto LABEL_96;
      }

      goto LABEL_76;
    }
  }

  else if ((SHIBYTE(v186[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(v186[0].__r_.__value_.__l.__data_);
  if (!*(a2 + 4))
  {
    goto LABEL_96;
  }

LABEL_76:
  v67 = sub_4A5C(&v190, " [check in by: ", 15);
  v68 = *(a2 + 4);
  v69 = *(a2 + 12);
  if (v69 == 0x7FFFFFFF || v68 == 0x7FFFFFFF)
  {
    v70 = v68 / -10;
    v71 = v68 % 10;
    v73 = 0x7FFFFFFF00000000;
  }

  else
  {
    v70 = v68 / -10;
    v71 = v68 % 10;
    if (v68 < 0)
    {
      v72 = -5;
    }

    else
    {
      v72 = 5;
    }

    v73 = (v69 + v70 + (((-103 * (v72 + v71)) >> 15) & 1) + ((-103 * (v72 + v71)) >> 10)) << 32;
  }

  v74 = v70 + *(a2 + 8);
  if (v68 < 0)
  {
    v75 = -5;
  }

  else
  {
    v75 = 5;
  }

  v76 = *(a2 + 16);
  v212[0].__r_.__value_.__r.__words[0] = v73 | (v74 + (((-103 * (v75 + v71)) >> 15) & 1) + ((-103 * (v75 + v71)) >> 10));
  LODWORD(v212[0].__r_.__value_.__r.__words[1]) = v76;
  HIBYTE(v203.__locale_) = 8;
  strcpy(__p, "HH:mm:ss");
  sub_509AD8(v212, __p, v186);
  if (SHIBYTE(v203.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v186[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v77 = v186;
  }

  else
  {
    v77 = v186[0].__r_.__value_.__r.__words[0];
  }

  if ((v186[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = HIBYTE(v186[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v78 = v186[0].__r_.__value_.__l.__size_;
  }

  v79 = sub_4A5C(v67, v77, v78);
  sub_4A5C(v79, "]", 1);
  if (SHIBYTE(v186[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186[0].__r_.__value_.__l.__data_);
  }

LABEL_96:
  v80 = sub_4A5C(&v190, " -> ", 4);
  v81 = __ROR8__(v28, 32);
  if (HIDWORD(v81) == 1)
  {
    if (v81 == -3)
    {
      v82 = 19;
      *(&v186[0].__r_.__value_.__s + 23) = 19;
      strcpy(v186, "virtual destination");
      v83 = 0x206C617574726976;
      goto LABEL_132;
    }

    if (v81 == -2)
    {
      v82 = 14;
      *(&v186[0].__r_.__value_.__s + 23) = 14;
      strcpy(v186, "virtual origin");
      v83 = 0x206C617574726976;
      goto LABEL_132;
    }
  }

  v84 = sub_502FF8(a1[515] + 24, __ROR8__(v81, 32), 0, "stop");
  v85 = (v84 - *v84);
  if (*v85 >= 9u && (v86 = v85[4]) != 0)
  {
    v87 = (v84 + v86 + *(v84 + v86));
  }

  else
  {
    v87 = 0;
  }

  sub_CCE434(v87, 2, v186);
  v82 = HIBYTE(v186[0].__r_.__value_.__r.__words[2]);
  v83 = v186[0].__r_.__value_.__r.__words[0];
LABEL_132:
  if ((v82 & 0x80u) == 0)
  {
    v97 = v186;
  }

  else
  {
    v97 = v83;
  }

  if ((v82 & 0x80u) == 0)
  {
    v98 = v82;
  }

  else
  {
    v98 = v186[0].__r_.__value_.__l.__size_;
  }

  v99 = sub_4A5C(v80, v97, v98);
  v100 = sub_4A5C(v99, " (", 2);
  sub_A4FC74(a1 + 515, v81);
  v102 = std::ostream::operator<<(v100, v101);
  v103 = sub_4A5C(v102, ") @ ", 4);
  v104 = *(a2 + 28);
  v201.__r_.__value_.__r.__words[0] = *(a2 + 20);
  LODWORD(v201.__r_.__value_.__r.__words[1]) = v104;
  HIBYTE(v203.__locale_) = 8;
  strcpy(__p, "HH:mm:ss");
  sub_509AD8(&v201, __p, v212);
  if (SHIBYTE(v203.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v212[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v105 = v212;
  }

  else
  {
    v105 = v212[0].__r_.__value_.__r.__words[0];
  }

  if ((v212[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v106 = HIBYTE(v212[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v106 = v212[0].__r_.__value_.__l.__size_;
  }

  v107 = sub_4A5C(v103, v105, v106);
  v108 = sub_4A5C(v107, " (", 2);
  v109 = __ROR8__(v11, 32);
  v110 = sub_92FC60(a1[507] + 24, v109, 0, "line");
  v111 = a1 + 507;
  v112 = (v110 - *v110);
  if (*v112 >= 0xFu && (v113 = v112[7]) != 0)
  {
    v114 = (v110 + v113 + *(v110 + v113));
  }

  else
  {
    v114 = 0;
  }

  sub_CCE434(v114, 2, __p);
  if (SHIBYTE(v203.__locale_) >= 0)
  {
    v115 = __p;
  }

  else
  {
    v115 = __p[0];
  }

  if (SHIBYTE(v203.__locale_) >= 0)
  {
    locale_high = HIBYTE(v203.__locale_);
  }

  else
  {
    locale_high = __p[1];
  }

  v117 = sub_4A5C(v108, v115, locale_high);
  v118 = sub_4A5C(v117, "; line: ", 8);
  v119 = sub_92FC60(*v111 + 24, v109, 0, "line");
  v120 = (v119 - *v119);
  if (*v120 >= 5u && (v121 = v120[2]) != 0)
  {
    v122 = *(v119 + v121);
  }

  else
  {
    v122 = 0;
  }

  v123 = sub_2C939C(*v111 + 24, 1u, 0);
  if (!v123)
  {
    goto LABEL_278;
  }

  v124 = &v123[-*v123];
  if (*v124 < 0xDu)
  {
    goto LABEL_278;
  }

  v125 = *(v124 + 6);
  if (!v125)
  {
    goto LABEL_278;
  }

  v126 = &v123[v125 + *&v123[v125]];
  v127 = &v126[-*v126];
  if (*v127 >= 0xBu)
  {
    v128 = *(v127 + 5);
    if (v128)
    {
      if (v126[v128])
      {
        nullsub_1();
        v122 = v129;
      }
    }
  }

  v130 = std::ostream::operator<<(v118, v122);
  v131 = sub_4A5C(v130, "; trip: ", 8);
  v132 = sub_3A25A8(a1[523] + 24, v7, 0, "trip");
  v133 = (v132 - *v132);
  if (*v133 >= 5u && (v134 = v133[2]) != 0)
  {
    v135 = *(v132 + v134);
  }

  else
  {
    v135 = 0;
  }

  v136 = sub_2C939C(a1[523] + 24, 1u, 0);
  if (!v136 || (v137 = &v136[-*v136], *v137 < 0xDu) || (v138 = *(v137 + 6)) == 0)
  {
LABEL_278:
    exception = __cxa_allocate_exception(0x40uLL);
    v179 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v139 = &v136[v138 + *&v136[v138]];
  v140 = &v139[-*v139];
  if (*v140 >= 0xBu)
  {
    v141 = *(v140 + 5);
    if (v141)
    {
      if (v139[v141])
      {
        nullsub_1();
        v135 = v142;
      }
    }
  }

  v143 = std::ostream::operator<<(v131, v135);
  sub_4A5C(v143, ")", 1);
  if (SHIBYTE(v203.__locale_) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v212[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_180:
      if ((SHIBYTE(v186[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_181;
      }

LABEL_185:
      operator delete(v186[0].__r_.__value_.__l.__data_);
      v144 = *(a2 + 64);
      v145 = *(a2 + 72);
      if (v144 == v145)
      {
        goto LABEL_188;
      }

LABEL_186:
      __p[0] = 0;
      __p[1] = 0;
      v203.__locale_ = 0;
      if (!((0xEEEEEEEEEEEEEEEFLL * ((v145 - v144) >> 2)) >> 62))
      {
        operator new();
      }

      sub_1794();
    }
  }

  else if ((SHIBYTE(v212[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_180;
  }

  operator delete(v212[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(v186[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_185;
  }

LABEL_181:
  v144 = *(a2 + 64);
  v145 = *(a2 + 72);
  if (v144 != v145)
  {
    goto LABEL_186;
  }

LABEL_188:
  if (*(a2 + 88) == *(a2 + 96))
  {
    goto LABEL_259;
  }

  v146 = sub_4A5C(&v190, " [Upcoming after ", 17);
  sub_35CC(v186, *(a2 + 112));
  HIBYTE(v185[2]) = 8;
  strcpy(v185, "HH:mm:ss");
  sub_4564(v186, v185, v187);
  if (v188 >= 0)
  {
    v147 = v187;
  }

  else
  {
    v147 = v187[0];
  }

  if (v188 >= 0)
  {
    v148 = v188;
  }

  else
  {
    v148 = v187[1];
  }

  v149 = sub_4A5C(v146, v147, v148);
  v150 = sub_4A5C(v149, ": ", 2);
  v151 = *(a2 + 88);
  v152 = *(a2 + 96);
  sub_19594F8(__p);
  if (v151 != v152)
  {
    v153 = *(v151 + 12);
    v180[0] = *(v151 + 4);
    LODWORD(v180[1]) = v153;
    *(&v212[0].__r_.__value_.__s + 23) = 8;
    strcpy(v212, "HH:mm:ss");
    sub_509AD8(v180, v212, &v201);
    if (SHIBYTE(v212[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v212[0].__r_.__value_.__l.__data_);
    }

    if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v154 = &v201;
    }

    else
    {
      v154 = v201.__r_.__value_.__r.__words[0];
    }

    if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v155 = HIBYTE(v201.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v155 = v201.__r_.__value_.__l.__size_;
    }

    sub_4A5C(__p, v154, v155);
    if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v201.__r_.__value_.__l.__data_);
      v156 = v151 + 60;
      if (v151 + 60 == v152)
      {
        goto LABEL_220;
      }
    }

    else
    {
      v156 = v151 + 60;
      if (v151 + 60 == v152)
      {
        goto LABEL_220;
      }
    }

    do
    {
      sub_4A5C(__p, ", ", 2);
      v157 = *(v156 + 12);
      v180[0] = *(v156 + 4);
      LODWORD(v180[1]) = v157;
      *(&v212[0].__r_.__value_.__s + 23) = 8;
      strcpy(v212, "HH:mm:ss");
      sub_509AD8(v180, v212, &v201);
      if (SHIBYTE(v212[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v212[0].__r_.__value_.__l.__data_);
      }

      if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v158 = &v201;
      }

      else
      {
        v158 = v201.__r_.__value_.__r.__words[0];
      }

      if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v159 = HIBYTE(v201.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v159 = v201.__r_.__value_.__l.__size_;
      }

      sub_4A5C(__p, v158, v159);
      if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v201.__r_.__value_.__l.__data_);
      }

      v156 += 60;
    }

    while (v156 != v152);
  }

LABEL_220:
  if ((v211 & 0x10) != 0)
  {
    v161 = v210;
    if (v210 < v207)
    {
      v210 = v207;
      v161 = v207;
    }

    v162 = v206;
    v160 = v161 - v206;
    if (v161 - v206 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_247;
    }
  }

  else
  {
    if ((v211 & 8) == 0)
    {
      v160 = 0;
      v184 = 0;
      goto LABEL_231;
    }

    v162 = v204;
    v160 = v205 - v204;
    if ((v205 - v204) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_247:
      sub_3244();
    }
  }

  if (v160 >= 0x17)
  {
    operator new();
  }

  v184 = v160;
  if (v160)
  {
    memmove(&__dst, v162, v160);
  }

LABEL_231:
  *(&__dst + v160) = 0;
  if (v209 < 0)
  {
    operator delete(v208);
  }

  std::locale::~locale(&v203);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((v184 & 0x80u) == 0)
  {
    v163 = &__dst;
  }

  else
  {
    v163 = __dst;
  }

  if ((v184 & 0x80u) == 0)
  {
    v164 = v184;
  }

  else
  {
    v164 = v183;
  }

  v165 = sub_4A5C(v150, v163, v164);
  v166 = sub_4A5C(v165, ", ", 2);
  v167 = *(a2 + 144);
  if (v167 <= 1)
  {
    if (*(a2 + 144))
    {
      goto LABEL_245;
    }

    v168 = 6;
    HIBYTE(v203.__locale_) = 6;
    LODWORD(__p[0]) = 1952543859;
    v170 = 25449;
  }

  else
  {
    if (v167 == 2)
    {
      v168 = 12;
      HIBYTE(v203.__locale_) = 12;
      LODWORD(__p[1]) = 1701013878;
      v169 = "good_service";
      goto LABEL_249;
    }

    if (v167 != 3)
    {
      if (v167 == 4)
      {
        v168 = 10;
        HIBYTE(v203.__locale_) = 10;
        LOWORD(__p[1]) = 25955;
        v169 = "no_service";
LABEL_249:
        __p[0] = *v169;
        goto LABEL_253;
      }

LABEL_245:
      v168 = 7;
      HIBYTE(v203.__locale_) = 7;
      qmemcpy(__p, "unknown", 7);
      goto LABEL_253;
    }

    v168 = 6;
    HIBYTE(v203.__locale_) = 6;
    LODWORD(__p[0]) = 1634493796;
    v170 = 29561;
  }

  WORD2(__p[0]) = v170;
LABEL_253:
  *(__p + v168) = 0;
  v171 = sub_4A5C(v166, __p, v168);
  if (SHIBYTE(v203.__locale_) < 0)
  {
    v172 = v171;
    operator delete(__p[0]);
    v171 = v172;
  }

  sub_4A5C(v171, "]", 1);
  if ((v184 & 0x80000000) == 0)
  {
    if ((v188 & 0x80000000) == 0)
    {
      goto LABEL_257;
    }

LABEL_276:
    operator delete(v187[0]);
    if ((SHIBYTE(v185[2]) & 0x80000000) == 0)
    {
      goto LABEL_258;
    }

LABEL_277:
    operator delete(v185[0]);
    goto LABEL_258;
  }

  operator delete(__dst);
  if (v188 < 0)
  {
    goto LABEL_276;
  }

LABEL_257:
  if (SHIBYTE(v185[2]) < 0)
  {
    goto LABEL_277;
  }

LABEL_258:
  sub_3874(v186);
LABEL_259:
  if ((v200 & 0x10) != 0)
  {
    v174 = v199;
    if (v199 < v196)
    {
      v199 = v196;
      v174 = v196;
    }

    v175 = v195;
    v173 = v174 - v195;
    if (v174 - v195 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_274;
    }
  }

  else
  {
    if ((v200 & 8) == 0)
    {
      v173 = 0;
      a3[23] = 0;
      goto LABEL_270;
    }

    v175 = v193;
    v173 = v194 - v193;
    if ((v194 - v193) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_274:
      sub_3244();
    }
  }

  if (v173 >= 0x17)
  {
    operator new();
  }

  a3[23] = v173;
  if (v173)
  {
    memmove(a3, v175, v173);
  }

LABEL_270:
  a3[v173] = 0;
  v190 = v176;
  if (v198 < 0)
  {
    operator delete(v197);
  }

  std::locale::~locale(&v192);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CCB4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(a65);
  }

  sub_1959728(&a67);
  if (a34 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_9:
      sub_3874(&a22);
      sub_DBE4(&a38);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(a15);
  goto LABEL_9;
}

void sub_CCB858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    JUMPOUT(0xCCB864);
  }

  JUMPOUT(0xCCB8B0);
}

void sub_CCB87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (*(v66 - 105) < 0)
  {
    operator delete(*(v66 - 128));
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_DBE4(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_CCB8C0(_BYTE *a1, int **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = 126 - 2 * __clz((v5 - v4) >> 2);
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_9BD1AC(v4, v5, &v29, v7, 1);
  v28 = sub_B780(a2, 9000, 10, 1, 1);
  if (sub_B6E0(&v28))
  {
    sub_D7B0(&v29);
    nullsub_1();
    if (*v8 == *sub_B718(&v28))
    {
      sub_4A5C(&v31, "every ", 6);
      nullsub_1();
    }

    else
    {
      sub_4A5C(&v31, "every ", 6);
      nullsub_1();
      v15 = std::ostream::operator<<();
      sub_4A5C(v15, "–", 3);
      sub_B718(&v28);
    }

    v16 = std::ostream::operator<<();
    sub_4A5C(v16, " min", 4);
    if ((v44 & 0x10) != 0)
    {
      v18 = v43;
      if (v43 < v38)
      {
        v43 = v38;
        v18 = v38;
      }

      v19 = v37;
      v17 = v18 - v37;
      if ((v18 - v37) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v17 = 0;
        a1[23] = 0;
LABEL_31:
        a1[v17] = 0;
        v31.__locale_ = v20;
        if (v42 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v33);
        std::iostream::~basic_iostream();
        return std::ios::~ios();
      }

      v19 = v34;
      v17 = v36 - v34;
      if (v36 - v34 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_35:
        sub_3244();
      }
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    a1[23] = v17;
    if (v17)
    {
      memmove(a1, v19, v17);
    }

    goto LABEL_31;
  }

  v10 = *a2;
  v9 = a2[1];
  sub_19594F8(&v29);
  if (v10 != v9)
  {
    sub_35CC(v50, *v10);
    v49 = 8;
    strcpy(v48, "HH:mm:ss");
    sub_4564(v11, v48, &v45);
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    sub_3874(v50);
    if ((v47 & 0x80u) == 0)
    {
      v12 = &v45;
    }

    else
    {
      v12 = v45;
    }

    if ((v47 & 0x80u) == 0)
    {
      v13 = v47;
    }

    else
    {
      v13 = v46;
    }

    sub_4A5C(&v29, v12, v13);
    if (v47 < 0)
    {
      operator delete(v45);
      v14 = v10 + 1;
      if (v14 == v9)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v14 = v10 + 1;
      if (v14 == v9)
      {
        goto LABEL_49;
      }
    }

    do
    {
      sub_4A5C(&v29, ", ", 2);
      sub_35CC(v50, *v14);
      v49 = 8;
      strcpy(v48, "HH:mm:ss");
      sub_4564(v21, v48, &v45);
      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      sub_3874(v50);
      if ((v47 & 0x80u) == 0)
      {
        v22 = &v45;
      }

      else
      {
        v22 = v45;
      }

      if ((v47 & 0x80u) == 0)
      {
        v23 = v47;
      }

      else
      {
        v23 = v46;
      }

      sub_4A5C(&v29, v22, v23);
      if (v47 < 0)
      {
        operator delete(v45);
      }

      ++v14;
    }

    while (v14 != v9);
  }

LABEL_49:
  if ((v41 & 0x10) != 0)
  {
    v25 = v40;
    if (v40 < v36)
    {
      v40 = v36;
      v25 = v36;
    }

    v26 = v35;
    v24 = v25 - v35;
    if (v25 - v35 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_65:
      sub_3244();
    }

LABEL_55:
    if (v24 >= 0x17)
    {
      operator new();
    }

    a1[23] = v24;
    if (v24)
    {
      memmove(a1, v26, v24);
    }

    goto LABEL_60;
  }

  if ((v41 & 8) != 0)
  {
    v26 = v32;
    v24 = v34 - v32;
    if ((v34 - v32) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_65;
    }

    goto LABEL_55;
  }

  v24 = 0;
  a1[23] = 0;
LABEL_60:
  a1[v24] = 0;
  if (SHIBYTE(__p) < 0)
  {
    operator delete(v38);
  }

  std::locale::~locale(&v31);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_CCC008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 137) < 0)
  {
    operator delete(*(v3 - 160));
  }

  sub_1959728(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCC094@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v28);
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v5 != *a2)
  {
    sub_4A5C(&v29, "    [", 5);
    v7 = std::ostream::operator<<();
    v8 = sub_4A5C(v7, "] ", 2);
    sub_CC9DF0(a1, *a2, &__p);
    if ((v27 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v10 = v27;
    }

    else
    {
      v10 = v26;
    }

    sub_4A5C(v8, p_p, v10);
    if (v27 < 0)
    {
      operator delete(__p);
      if (v6 == 168)
      {
        goto LABEL_12;
      }
    }

    else if (v6 == 168)
    {
      goto LABEL_12;
    }

    v17 = 0xCF3CF3CF3CF3CF3DLL * (v6 >> 3) - 1;
    v18 = 2;
    v19 = 168;
    do
    {
      sub_4A5C(&v29, "\n", 1);
      sub_4A5C(&v29, "    [", 5);
      v20 = std::ostream::operator<<();
      v21 = sub_4A5C(v20, "] ", 2);
      sub_CC9DF0(a1, *a2 + v19, &__p);
      if ((v27 & 0x80u) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v23 = v27;
      }

      else
      {
        v23 = v26;
      }

      sub_4A5C(v21, v22, v23);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      ++v18;
      v19 += 168;
      --v17;
    }

    while (v17);
  }

LABEL_12:
  if ((v39 & 0x10) != 0)
  {
    v13 = v38;
    if (v38 < v35)
    {
      v38 = v35;
      v13 = v35;
    }

    v12 = a3;
    v14 = v34;
    v11 = v13 - v34;
    if (v13 - v34 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if ((v39 & 8) == 0)
    {
      v11 = 0;
      v12 = a3;
      a3[23] = 0;
      goto LABEL_23;
    }

    v12 = a3;
    v14 = v32;
    v11 = v33 - v32;
    if ((v33 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_37:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  v12[23] = v11;
  if (v11)
  {
    memmove(v12, v14, v11);
  }

LABEL_23:
  v12[v11] = 0;
  v29 = v15;
  if (v37 < 0)
  {
    operator delete(v36);
  }

  std::locale::~locale(&v31);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CCC45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_DBE4(&a16);
    _Unwind_Resume(a1);
  }

  sub_DBE4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_CCC4A8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result + 20;
  if (*(result + 20) == 0x7FFFFFFF)
  {
    a2[23] = 0;
    *a2 = 0;
    return result;
  }

  v4 = result;
  sub_D7B0(v148);
  v5 = sub_4A5C(&v149, "  Criteria:\n", 12);
  v6 = sub_4A5C(v5, "    Exp. Departure time: ", 25);
  HIBYTE(v146[2]) = 19;
  strcpy(v146, "yyyy-MM-dd HH:mm:ss");
  sub_509AD8(v3, v146, &v147);
  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v147;
  }

  else
  {
    v7 = v147.__r_.__value_.__r.__words[0];
  }

  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v147.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v147.__r_.__value_.__l.__size_;
  }

  v9 = sub_4A5C(v6, v7, size);
  v10 = sub_4A5C(v9, " (", 2);
  v144 = 0;
  LOBYTE(v143) = 0;
  sub_509AD8(v3, &v143, &v145);
  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v145;
  }

  else
  {
    v11 = v145.__r_.__value_.__r.__words[0];
  }

  if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v145.__r_.__value_.__l.__size_;
  }

  v13 = sub_4A5C(v10, v11, v12);
  v14 = sub_4A5C(v13, ")\n", 2);
  v15 = sub_4A5C(v14, "    Exp. Arrival time: ", 23);
  HIBYTE(v141[2]) = 19;
  strcpy(v141, "yyyy-MM-dd HH:mm:ss");
  sub_509AD8(v4 + 32, v141, &v142);
  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v142;
  }

  else
  {
    v16 = v142.__r_.__value_.__r.__words[0];
  }

  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v142.__r_.__value_.__l.__size_;
  }

  v18 = sub_4A5C(v15, v16, v17);
  v19 = sub_4A5C(v18, " (", 2);
  v139 = 0;
  LOBYTE(v138) = 0;
  sub_509AD8(v4 + 32, &v138, &v140);
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v140;
  }

  else
  {
    v20 = v140.__r_.__value_.__r.__words[0];
  }

  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v140.__r_.__value_.__l.__size_;
  }

  v22 = sub_4A5C(v19, v20, v21);
  v23 = sub_4A5C(v22, ")\n", 2);
  v24 = sub_4A5C(v23, "    Exp. Travel duration: ", 26);
  v136 = 0;
  LOBYTE(v135) = 0;
  sub_50A10C(v4 + 48, &v135, &v137);
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v137;
  }

  else
  {
    v25 = v137.__r_.__value_.__r.__words[0];
  }

  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v137.__r_.__value_.__l.__size_;
  }

  v27 = sub_4A5C(v24, v25, v26);
  v28 = sub_4A5C(v27, "\n", 1);
  v29 = sub_4A5C(v28, "    Exp. Walking duration: ", 27);
  v133 = 0;
  LOBYTE(v132) = 0;
  sub_50A10C(v4 + 60, &v132, &v134);
  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v134;
  }

  else
  {
    v30 = v134.__r_.__value_.__r.__words[0];
  }

  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v134.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v134.__r_.__value_.__l.__size_;
  }

  v32 = sub_4A5C(v29, v30, v31);
  v33 = sub_4A5C(v32, "\n", 1);
  v34 = sub_4A5C(v33, "    Routing Preference Penalty: ", 32);
  std::ostream::operator<<();
  v35 = sub_4A5C(v34, "\n", 1);
  v36 = sub_4A5C(v35, "    Fare Estimate Penalty: ", 27);
  std::ostream::operator<<();
  v37 = sub_4A5C(v36, "\n", 1);
  v38 = sub_4A5C(v37, "    Price: ", 11);
  v40 = *(v4 + 104);
  if (v40 == 0x7FFFFFFF)
  {
    goto LABEL_50;
  }

  v41 = *(v4 + 135);
  if ((v41 & 0x80u) != 0)
  {
    v41 = *(v4 + 120);
  }

  if (!v41)
  {
LABEL_50:
    v50 = 0;
    v51 = 4;
    HIBYTE(v131) = 4;
    strcpy(&v130, "none");
  }

  else
  {
    v42 = v38;
    LODWORD(v39) = *(v4 + 136);
    std::to_string(&v128, v40 / v39);
    v43 = std::string::append(&v128, " ", 1uLL);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v129.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v129.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    v45 = *(v4 + 135);
    if (v45 >= 0)
    {
      v46 = (v4 + 112);
    }

    else
    {
      v46 = *(v4 + 112);
    }

    if (v45 >= 0)
    {
      v47 = *(v4 + 135);
    }

    else
    {
      v47 = *(v4 + 120);
    }

    v48 = std::string::append(&v129, v46, v47);
    v49 = *&v48->__r_.__value_.__l.__data_;
    v131 = v48->__r_.__value_.__r.__words[2];
    v130 = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    v50 = 1;
    v51 = HIBYTE(v131);
    v38 = v42;
  }

  if ((v51 & 0x80u) == 0)
  {
    v52 = &v130;
  }

  else
  {
    v52 = v130;
  }

  if ((v51 & 0x80u) == 0)
  {
    v53 = v51;
  }

  else
  {
    v53 = *(&v130 + 1);
  }

  v54 = sub_4A5C(v38, v52, v53);
  v55 = sub_4A5C(v54, "\n", 1);
  v56 = sub_4A5C(v55, "    Normalised Monetary Cost: ", 30);
  v57 = *(v4 + 144);
  if (v57 == -1)
  {
    v58 = 4;
    *(&v127.__r_.__value_.__s + 23) = 4;
    strcpy(&v127, "none");
  }

  else
  {
    std::to_string(&v127, v57);
    v58 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
  }

  if ((v58 & 0x80u) == 0)
  {
    v59 = &v127;
  }

  else
  {
    v59 = v127.__r_.__value_.__r.__words[0];
  }

  if ((v58 & 0x80u) == 0)
  {
    v60 = v58;
  }

  else
  {
    v60 = v127.__r_.__value_.__l.__size_;
  }

  v61 = sub_4A5C(v56, v59, v60);
  v62 = sub_4A5C(v61, "\n", 1);
  v63 = sub_4A5C(v62, "    Used Transport Modes: ", 26);
  v126 = 8;
  strcpy(v125, "00000000");
  v64 = *(v4 + 96);
  if (v64)
  {
    HIBYTE(v125[0]) = 49;
    if ((v64 & 2) == 0)
    {
LABEL_68:
      if ((v64 & 4) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_92;
    }
  }

  else if ((v64 & 2) == 0)
  {
    goto LABEL_68;
  }

  BYTE6(v125[0]) = 49;
  if ((v64 & 4) == 0)
  {
LABEL_69:
    if ((v64 & 8) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_93;
  }

LABEL_92:
  BYTE5(v125[0]) = 49;
  if ((v64 & 8) == 0)
  {
LABEL_70:
    if ((v64 & 0x10) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_94;
  }

LABEL_93:
  BYTE4(v125[0]) = 49;
  if ((v64 & 0x10) == 0)
  {
LABEL_71:
    if ((v64 & 0x20) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_95;
  }

LABEL_94:
  BYTE3(v125[0]) = 49;
  if ((v64 & 0x20) == 0)
  {
LABEL_72:
    if ((v64 & 0x40) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_96;
  }

LABEL_95:
  BYTE2(v125[0]) = 49;
  if ((v64 & 0x40) == 0)
  {
LABEL_73:
    if ((v64 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_96:
  BYTE1(v125[0]) = 49;
  if ((v64 & 0x80) != 0)
  {
LABEL_74:
    LOBYTE(v125[0]) = 49;
  }

LABEL_75:
  v65 = sub_4A5C(v63, v125, 8);
  v66 = sub_4A5C(v65, "\n", 1);
  v67 = sub_4A5C(v66, "    Blocked: ", 13);
  if (*v4)
  {
    v68 = "yes";
  }

  else
  {
    v68 = "no";
  }

  if (*v4)
  {
    v69 = 3;
  }

  else
  {
    v69 = 2;
  }

  v70 = sub_4A5C(v67, v68, v69);
  v71 = sub_4A5C(v70, "\n", 1);
  v72 = sub_4A5C(v71, "    Avoids Blocking Incidents: ", 31);
  if (*(v4 + 1))
  {
    v73 = "yes";
  }

  else
  {
    v73 = "no";
  }

  if (*(v4 + 1))
  {
    v74 = 3;
  }

  else
  {
    v74 = 2;
  }

  v75 = sub_4A5C(v72, v73, v74);
  v76 = sub_4A5C(v75, "\n", 1);
  v77 = sub_4A5C(v76, "    Risk: ", 10);
  v78 = *(v4 + 2);
  if (v78 <= 1)
  {
    if (v78 == 1)
    {
      v79 = 3;
      v160 = 3;
      qmemcpy(&v159, "low", 3);
      goto LABEL_103;
    }

LABEL_101:
    v79 = 7;
    v160 = 7;
    qmemcpy(&v159, "unknown", 7);
    goto LABEL_103;
  }

  if (v78 != 2)
  {
    if (v78 == 3)
    {
      v79 = 10;
      v160 = 10;
      WORD4(v159) = 25964;
      *&v159 = *"infeasible";
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v79 = 16;
  v160 = 16;
  v159 = *"tight connection";
LABEL_103:
  *(&v159 + v79) = 0;
  v80 = sub_4A5C(v77, &v159, v79);
  if (v160 < 0)
  {
    v81 = v80;
    operator delete(v159);
    v80 = v81;
  }

  v82 = sub_4A5C(v80, "\n", 1);
  v83 = sub_4A5C(v82, "    Type: ", 10);
  if (*(v4 + 13) == 1)
  {
    v84 = 7;
    v160 = 7;
    LODWORD(v159) = 1819044198;
    v85 = 1852386668;
  }

  else
  {
    if (!*(v4 + 13))
    {
      v84 = 4;
      v160 = 4;
      LODWORD(v159) = 1852399981;
      goto LABEL_111;
    }

    v84 = 7;
    v160 = 7;
    LODWORD(v159) = 1852534389;
    v85 = 1853321070;
  }

  *(&v159 + 3) = v85;
LABEL_111:
  *(&v159 | v84) = 0;
  v86 = sub_4A5C(v83, &v159, v84);
  if (v160 < 0)
  {
    operator delete(v159);
    v87 = *(v4 + 16);
    if (v87 != -1)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v87 = *(v4 + 16);
    if (v87 != -1)
    {
LABEL_113:
      std::to_string(&v121, v87);
      v88 = std::string::insert(&v121, 0, " (group ", 8uLL);
      v89 = *&v88->__r_.__value_.__l.__data_;
      v122.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
      *&v122.__r_.__value_.__l.__data_ = v89;
      v88->__r_.__value_.__l.__size_ = 0;
      v88->__r_.__value_.__r.__words[2] = 0;
      v88->__r_.__value_.__r.__words[0] = 0;
      v90 = std::string::append(&v122, ")", 1uLL);
      v91 = *&v90->__r_.__value_.__l.__data_;
      v124 = v90->__r_.__value_.__r.__words[2];
      *__p = v91;
      v90->__r_.__value_.__l.__size_ = 0;
      v90->__r_.__value_.__r.__words[2] = 0;
      v90->__r_.__value_.__r.__words[0] = 0;
      v92 = HIBYTE(v124);
      goto LABEL_116;
    }
  }

  v92 = 0;
  HIBYTE(v124) = 0;
  LOBYTE(__p[0]) = 0;
LABEL_116:
  if ((v92 & 0x80u) == 0)
  {
    v93 = __p;
  }

  else
  {
    v93 = __p[0];
  }

  if ((v92 & 0x80u) == 0)
  {
    v94 = v92;
  }

  else
  {
    v94 = __p[1];
  }

  v95 = sub_4A5C(v86, v93, v94);
  v96 = sub_4A5C(v95, "\n", 1);
  v97 = sub_4A5C(v96, "    Realtime: ", 14);
  v98 = *(v4 + 4);
  switch(v98)
  {
    case 2:
      v99 = 12;
      v160 = 12;
      DWORD2(v159) = 1162692948;
      v100 = "ALL_REALTIME";
      goto LABEL_128;
    case 1:
      v99 = 13;
      v160 = 13;
      qmemcpy(&v159, "SOME_REALTIME", 13);
      goto LABEL_130;
    case 0:
      v99 = 10;
      v160 = 10;
      WORD4(v159) = 17225;
      v100 = "ALL_STATIC";
LABEL_128:
      *&v159 = *v100;
      goto LABEL_130;
  }

  v99 = 7;
  v160 = 7;
  qmemcpy(&v159, "UNKNOWN", 7);
LABEL_130:
  *(&v159 + v99) = 0;
  v101 = sub_4A5C(v97, &v159, v99);
  if (v160 < 0)
  {
    v102 = v101;
    operator delete(v159);
    v101 = v102;
  }

  v103 = sub_4A5C(v101, "\n", 1);
  v104 = sub_4A5C(v103, "    Realtime (Original): ", 25);
  v105 = *(v4 + 8);
  switch(v105)
  {
    case 2:
      v106 = 12;
      v160 = 12;
      DWORD2(v159) = 1162692948;
      v107 = "ALL_REALTIME";
      goto LABEL_138;
    case 1:
      v106 = 13;
      v160 = 13;
      qmemcpy(&v159, "SOME_REALTIME", 13);
      goto LABEL_140;
    case 0:
      v106 = 10;
      v160 = 10;
      WORD4(v159) = 17225;
      v107 = "ALL_STATIC";
LABEL_138:
      *&v159 = *v107;
      goto LABEL_140;
  }

  v106 = 7;
  v160 = 7;
  qmemcpy(&v159, "UNKNOWN", 7);
LABEL_140:
  *(&v159 + v106) = 0;
  v108 = sub_4A5C(v104, &v159, v106);
  if (v160 < 0)
  {
    v109 = v108;
    operator delete(v159);
    v108 = v109;
  }

  v110 = sub_4A5C(v108, "\n", 1);
  v111 = sub_4A5C(v110, "    Fulfils Avoid Types: ", 25);
  if (*(v4 + 12))
  {
    v112 = "yes";
  }

  else
  {
    v112 = "no";
  }

  if (*(v4 + 12))
  {
    v113 = 3;
  }

  else
  {
    v113 = 2;
  }

  v114 = sub_4A5C(v111, v112, v113);
  sub_4A5C(v114, "\n", 1);
  if (SHIBYTE(v124) < 0)
  {
    operator delete(__p[0]);
    if (v87 == -1)
    {
      goto LABEL_154;
    }
  }

  else if (v87 == -1)
  {
LABEL_154:
    if ((v126 & 0x80000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_161;
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_154;
    }
  }

  else if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_154;
  }

  operator delete(v121.__r_.__value_.__l.__data_);
  if ((v126 & 0x80000000) == 0)
  {
LABEL_155:
    if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_162;
  }

LABEL_161:
  operator delete(v125[0]);
  if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_156:
    if ((SHIBYTE(v131) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

LABEL_163:
    operator delete(v130);
    if (!v50)
    {
      goto LABEL_166;
    }

    goto LABEL_164;
  }

LABEL_162:
  operator delete(v127.__r_.__value_.__l.__data_);
  if (SHIBYTE(v131) < 0)
  {
    goto LABEL_163;
  }

LABEL_157:
  if (!v50)
  {
LABEL_166:
    if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_184;
  }

LABEL_164:
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_166;
    }
  }

  else if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_166;
  }

  operator delete(v128.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_167:
    if ((v133 & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_185;
  }

LABEL_184:
  operator delete(v134.__r_.__value_.__l.__data_);
  if ((v133 & 0x80000000) == 0)
  {
LABEL_168:
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_186;
  }

LABEL_185:
  operator delete(v132);
  if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_169:
    if ((v136 & 0x80000000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_187;
  }

LABEL_186:
  operator delete(v137.__r_.__value_.__l.__data_);
  if ((v136 & 0x80000000) == 0)
  {
LABEL_170:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_188;
  }

LABEL_187:
  operator delete(v135);
  if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_171:
    if ((v139 & 0x80000000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_189;
  }

LABEL_188:
  operator delete(v140.__r_.__value_.__l.__data_);
  if ((v139 & 0x80000000) == 0)
  {
LABEL_172:
    if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_190;
  }

LABEL_189:
  operator delete(v138);
  if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_173:
    if ((SHIBYTE(v141[2]) & 0x80000000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_191;
  }

LABEL_190:
  operator delete(v142.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v141[2]) & 0x80000000) == 0)
  {
LABEL_174:
    if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_192;
  }

LABEL_191:
  operator delete(v141[0]);
  if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_175:
    if ((v144 & 0x80000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_193;
  }

LABEL_192:
  operator delete(v145.__r_.__value_.__l.__data_);
  if ((v144 & 0x80000000) == 0)
  {
LABEL_176:
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_194;
  }

LABEL_193:
  operator delete(v143);
  if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_177:
    if ((SHIBYTE(v146[2]) & 0x80000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_195;
  }

LABEL_194:
  operator delete(v147.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v146[2]) & 0x80000000) == 0)
  {
LABEL_178:
    v115 = v158;
    if ((v158 & 0x10) == 0)
    {
      goto LABEL_179;
    }

LABEL_196:
    v118 = v157;
    if (v157 < v154)
    {
      v157 = v154;
      v118 = v154;
    }

    v117 = &v153;
    goto LABEL_199;
  }

LABEL_195:
  operator delete(v146[0]);
  v115 = v158;
  if ((v158 & 0x10) != 0)
  {
    goto LABEL_196;
  }

LABEL_179:
  if ((v115 & 8) != 0)
  {
    v117 = v152;
    v118 = v152[2];
LABEL_199:
    v119 = *v117;
    v116 = v118 - *v117;
    if (v116 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v116 >= 0x17)
    {
      operator new();
    }

    a2[23] = v116;
    if (v116)
    {
      memmove(a2, v119, v116);
    }

    goto LABEL_205;
  }

  v116 = 0;
  a2[23] = 0;
LABEL_205:
  a2[v116] = 0;
  v149 = v120;
  if (v156 < 0)
  {
    operator delete(v155);
  }

  std::locale::~locale(&v151);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CCD31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a56 < 0)
  {
    operator delete(a51);
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a50 & 0x80000000) == 0)
  {
LABEL_7:
    if (a65 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  operator delete(a45);
  if (a65 < 0)
  {
LABEL_8:
    operator delete(a63);
    if ((a62 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((a62 & 0x80000000) == 0)
  {
LABEL_9:
    if (a69 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a57);
  if (a69 < 0)
  {
LABEL_10:
    operator delete(a68);
    if ((a67 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((a67 & 0x80000000) == 0)
  {
LABEL_11:
    if (a73 < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a66);
  if (a73 < 0)
  {
LABEL_12:
    operator delete(a72);
    if ((a71 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((a71 & 0x80000000) == 0)
  {
LABEL_13:
    if (a77 < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(a70);
  if (a77 < 0)
  {
LABEL_14:
    operator delete(a76);
    if ((a75 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((a75 & 0x80000000) == 0)
  {
LABEL_15:
    if (SLOBYTE(STACK[0x217]) < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(a74);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
LABEL_16:
    operator delete(STACK[0x200]);
    if ((a79 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  if ((a79 & 0x80000000) == 0)
  {
LABEL_17:
    sub_DBE4(&STACK[0x218]);
    _Unwind_Resume(a1);
  }

LABEL_29:
  operator delete(a78);
  sub_DBE4(&STACK[0x218]);
  _Unwind_Resume(a1);
}

uint64_t sub_CCD67C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_D7B0(v57);
  sub_CCC4A8(a2, &v69);
  if (v71 >= 0)
  {
    v6 = &v69;
  }

  else
  {
    v6 = v69;
  }

  if (v71 >= 0)
  {
    v7 = v71;
  }

  else
  {
    v7 = v70;
  }

  sub_4A5C(&v58, v6, v7);
  if (v71 < 0)
  {
    operator delete(v69);
    __dst = a3;
    v9 = a2[25];
    v11 = a2[26];
    v10 = v11 - v9;
    if (v11 == v9)
    {
      goto LABEL_42;
    }

LABEL_11:
    sub_4A5C(&v58, "  Bundle ", 9);
    v12 = std::ostream::operator<<();
    sub_4A5C(v12, " of ", 4);
    v13 = std::ostream::operator<<();
    v14 = sub_4A5C(v13, " [", 2);
    v15 = *(v9 + 24);
    if (v15 == 1)
    {
      v16 = "walking";
    }

    else
    {
      v16 = "public transport";
    }

    if (v15 == 1)
    {
      v17 = 7;
    }

    else
    {
      v17 = 16;
    }

    sub_4A5C(v14, v16, v17);
    if (*(v9 + 24))
    {
LABEL_32:
      v23 = sub_4A5C(&v58, "]:\n", 3);
      sub_CCC094(a1, v9, &v69);
      if (v71 >= 0)
      {
        v24 = &v69;
      }

      else
      {
        v24 = v69;
      }

      if (v71 >= 0)
      {
        v25 = v71;
      }

      else
      {
        v25 = v70;
      }

      sub_4A5C(v23, v24, v25);
      if (v71 < 0)
      {
        operator delete(v69);
        if (v10 == 72)
        {
          goto LABEL_42;
        }
      }

      else if (v10 == 72)
      {
        goto LABEL_42;
      }

      v37 = 0;
      v38 = 0x8E38E38E38E38E39 * (v10 >> 3) - 1;
      v39 = 2;
      while (1)
      {
        v40 = a2[25];
        sub_4A5C(&v58, "\n", 1);
        sub_4A5C(&v58, "  Bundle ", 9);
        v41 = std::ostream::operator<<();
        sub_4A5C(v41, " of ", 4);
        v42 = std::ostream::operator<<();
        v43 = sub_4A5C(v42, " [", 2);
        v44 = *(v40 + v37 + 96) == 1 ? "walking" : "public transport";
        v45 = *(v40 + v37 + 96) == 1 ? 7 : 16;
        sub_4A5C(v43, v44, v45);
        if (!*(v40 + v37 + 96))
        {
          break;
        }

LABEL_93:
        v50 = sub_4A5C(&v58, "]:\n", 3);
        sub_CCC094(a1, (v40 + v37 + 72), &v69);
        if (v71 >= 0)
        {
          v51 = &v69;
        }

        else
        {
          v51 = v69;
        }

        if (v71 >= 0)
        {
          v52 = v71;
        }

        else
        {
          v52 = v70;
        }

        sub_4A5C(v50, v51, v52);
        if (v71 < 0)
        {
          operator delete(v69);
        }

        ++v39;
        v37 += 72;
        if (!--v38)
        {
          goto LABEL_42;
        }
      }

      v46 = sub_4A5C(&v58, ", ", 2);
      v47 = *(v40 + v37 + 128);
      if (v47 <= 1)
      {
        if (*(v40 + v37 + 128))
        {
LABEL_86:
          v71 = 7;
          qmemcpy(&v69, "unknown", 7);
          v48 = 7;
          goto LABEL_91;
        }

        v71 = 6;
        LODWORD(v69) = 1952543859;
        v48 = 6;
        v49 = 25449;
      }

      else
      {
        if (v47 == 2)
        {
          v71 = 12;
          LODWORD(v70) = 1701013878;
          v69 = *"good_service";
          v48 = 12;
          goto LABEL_91;
        }

        if (v47 != 3)
        {
          if (v47 == 4)
          {
            v71 = 10;
            LOWORD(v70) = 25955;
            v69 = *"no_service";
            v48 = 10;
            goto LABEL_91;
          }

          goto LABEL_86;
        }

        v71 = 6;
        LODWORD(v69) = 1634493796;
        v48 = 6;
        v49 = 29561;
      }

      WORD2(v69) = v49;
LABEL_91:
      *(&v69 + v48) = 0;
      sub_4A5C(v46, &v69, v48);
      if (v71 < 0)
      {
        operator delete(v69);
      }

      goto LABEL_93;
    }

    v18 = sub_4A5C(&v58, ", ", 2);
    v19 = *(v9 + 56);
    if (v19 <= 1)
    {
      if (*(v9 + 56))
      {
        goto LABEL_24;
      }

      v20 = 6;
      v71 = 6;
      LODWORD(v69) = 1952543859;
      v22 = 25449;
    }

    else
    {
      if (v19 == 2)
      {
        v20 = 12;
        v71 = 12;
        LODWORD(v70) = 1701013878;
        v21 = "good_service";
        goto LABEL_26;
      }

      if (v19 != 3)
      {
        if (v19 == 4)
        {
          v20 = 10;
          v71 = 10;
          LOWORD(v70) = 25955;
          v21 = "no_service";
LABEL_26:
          v69 = *v21;
          goto LABEL_30;
        }

LABEL_24:
        v20 = 7;
        v71 = 7;
        qmemcpy(&v69, "unknown", 7);
        goto LABEL_30;
      }

      v20 = 6;
      v71 = 6;
      LODWORD(v69) = 1634493796;
      v22 = 29561;
    }

    WORD2(v69) = v22;
LABEL_30:
    *(&v69 + v20) = 0;
    sub_4A5C(v18, &v69, v20);
    if (v71 < 0)
    {
      operator delete(v69);
    }

    goto LABEL_32;
  }

  __dst = a3;
  v9 = a2[25];
  v8 = a2[26];
  v10 = v8 - v9;
  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_42:
  v26 = a2[29];
  v27 = a2[28];
  if (v27 != v26)
  {
    do
    {
      if (*(v27 + 4) != 0x7FFFFFFF)
      {
        operator new();
      }

      v27 += 16;
    }

    while (v27 != v26);
    v28 = sub_4A5C(&v58, "\nRuns expected ", 15);
    v55 = 0;
    v56 = 0;
    __p = 0;
    sub_CCB8C0(&v69, &__p);
    if (v71 >= 0)
    {
      v29 = &v69;
    }

    else
    {
      v29 = v69;
    }

    if (v71 >= 0)
    {
      v30 = v71;
    }

    else
    {
      v30 = v70;
    }

    sub_4A5C(v28, v29, v30);
    if (v71 < 0)
    {
      operator delete(v69);
    }

    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }
  }

  if ((v68 & 0x10) != 0)
  {
    v33 = v67;
    v31 = __dst;
    if (v67 < v64)
    {
      v67 = v64;
      v33 = v64;
    }

    v34 = v63;
    v32 = v33 - v63;
    if (v33 - v63 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v31 = __dst;
    if ((v68 & 8) == 0)
    {
      v32 = 0;
      *(__dst + 23) = 0;
      goto LABEL_68;
    }

    v34 = v61;
    v32 = v62 - v61;
    if ((v62 - v61) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_102:
      sub_3244();
    }
  }

  if (v32 >= 0x17)
  {
    operator new();
  }

  v31[23] = v32;
  if (v32)
  {
    memmove(v31, v34, v32);
  }

LABEL_68:
  v31[v32] = 0;
  v58 = v35;
  if (v66 < 0)
  {
    operator delete(v65);
  }

  std::locale::~locale(&v60);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CCDF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (*(v13 - 89) < 0)
  {
    operator delete(*(v13 - 112));
    sub_DBE4(va);
    _Unwind_Resume(a1);
  }

  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCE054@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v27);
  v5 = *(a2 + 16) - *(a2 + 8);
  if (v5)
  {
    v6 = 0;
    v7 = 0x14C1BACF914C1BADLL * (v5 >> 3);
    v8 = 1;
    do
    {
      v9 = *(a2 + 8);
      sub_4A5C(&v28, "Journey ", 8);
      v10 = std::ostream::operator<<();
      sub_4A5C(v10, " of ", 4);
      v11 = std::ostream::operator<<();
      sub_4A5C(v11, " (score ", 8);
      v12 = std::ostream::operator<<();
      v13 = sub_4A5C(v12, "%):\n", 4);
      sub_CCD67C(a1, (v9 + v6), __p);
      if ((v26 & 0x80u) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v15 = v26;
      }

      else
      {
        v15 = __p[1];
      }

      v16 = sub_4A5C(v13, v14, v15);
      v17 = sub_4A5C(v16, "\n", 1);
      sub_4A5C(v17, "\n", 1);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      ++v8;
      v6 += 296;
      --v7;
    }

    while (v7);
  }

  if ((v38 & 0x10) != 0)
  {
    v20 = v37;
    if (v37 < v34)
    {
      v37 = v34;
      v20 = v34;
    }

    v19 = a3;
    v21 = v33;
    v18 = v20 - v33;
    if (v20 - v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if ((v38 & 8) == 0)
    {
      v18 = 0;
      v19 = a3;
      a3[23] = 0;
      goto LABEL_23;
    }

    v19 = a3;
    v21 = v31;
    v18 = v32 - v31;
    if ((v32 - v31) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_27:
      sub_3244();
    }
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  v19[23] = v18;
  if (v18)
  {
    memmove(v19, v21, v18);
  }

LABEL_23:
  v19[v18] = 0;
  v28 = v22;
  if (v36 < 0)
  {
    operator delete(v35);
  }

  std::locale::~locale(&v30);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CCE434(unsigned int *a1@<X1>, int a2@<W2>, _BYTE *a3@<X8>)
{
  if (!a1 || (v4 = *a1, !v4))
  {
    *a3 = 0x6E776F6E6B6E75;
    a3[23] = 7;
    return;
  }

  v5 = a1 + 1;
  v6 = v4;
  for (i = v6 * 4; i; i -= 4)
  {
    v8 = a1[1];
    v9 = a1 + v8 - *(a1 + v8 + 4);
    if (*(v9 + 2) < 9u || (v10 = *(v9 + 6)) == 0)
    {
      if (!a2)
      {
        break;
      }

      goto LABEL_5;
    }

    if (*(a1 + v8 + v10 + 4) == a2)
    {
      break;
    }

LABEL_5:
    ++a1;
  }

  if (a1 + 1 == &v5[v6])
  {
    v11 = (v5 + *v5);
    v14 = (v11 - *v11);
    if (*v14 >= 7u)
    {
      v13 = v14[3];
      if (v13)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v15 = 0;
  }

  else
  {
    v11 = (a1 + a1[1] + 4);
    v12 = (v11 - *v11);
    if (*v12 < 7u)
    {
      goto LABEL_17;
    }

    v13 = v12[3];
    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    v15 = (v11 + v13 + *(v11 + v13));
  }

  v16 = (v15 + *(v15 - *v15 + 6));
  v17 = *v16;
  v18 = *(v16 + v17);
  if (v18 >= 0x17)
  {
    operator new();
  }

  a3[23] = v18;
  if (v18)
  {
    memcpy(a3, v16 + v17 + 4, v18);
  }

  a3[v18] = 0;
}

double sub_CCE5F4(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

float64x2_t sub_CCE624(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = vaddq_f64(*(a2 + 8), *(a1 + 8));
  *(a1 + 24) = vaddq_f64(*(a2 + 24), *(a1 + 24));
  *(a1 + 40) = vaddq_f64(*(a2 + 40), *(a1 + 40));
  *(a1 + 56) = vaddq_f64(*(a2 + 56), *(a1 + 56));
  *(a1 + 72) = vaddq_f64(*(a2 + 72), *(a1 + 72));
  *(a1 + 88) = vaddq_f64(*(a2 + 88), *(a1 + 88));
  *(a1 + 104) = vaddq_f64(*(a2 + 104), *(a1 + 104));
  result = vaddq_f64(*(a2 + 120), *(a1 + 120));
  *(a1 + 120) = result;
  return result;
}

double sub_CCE6A8(uint64_t a1, uint64_t *a2)
{
  *(a1 + 48) = vaddq_f64(*(a2 + 3), *(a1 + 48));
  *(a1 + 72) = vaddq_f64(*(a2 + 5), *(a1 + 72));
  *(a1 + 88) = vaddq_f64(*(a2 + 7), *(a1 + 88));
  v2 = a2[1];
  v3 = *a2;
  v4 = v2 - *a2;
  *(a1 + 112) = *(a1 + 112) + (0x8E38E38E38E38E39 * (v4 >> 7));
  if (v2 == v3)
  {
    result = *(a1 + 120) + 0.0;
    *(a1 + 120) = result;
    return result;
  }

  v5 = v4 - 1152;
  if (v5 >= 0x480)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5 / 0x480 + 1;
    v7 = v3 + 1152 * (v11 & 0x7FFFFFFFFFFFFELL);
    v12 = v11 & 0x7FFFFFFFFFFFFELL;
    do
    {
      v9 += *(v3 + 44);
      v10 += *(v3 + 1196);
      v3 += 2304;
      v12 -= 2;
    }

    while (v12);
    v6 = v10 + v9;
    if (v11 == (v11 & 0x7FFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    v7 = v3;
  }

  do
  {
    v6 += *(v7 + 44);
    v7 += 1152;
  }

  while (v7 != v2);
LABEL_9:
  result = *(a1 + 120) + v6;
  *(a1 + 120) = result;
  return result;
}

uint64_t sub_CCE7C4@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_2345C(a2, off_2673188[*a1]);
  v18 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_CCEBC0(a2 + 3, "Runtime", &v18, a1 + 1);
    a2[4] = v5;
    v17 = 1;
    if (v5 >= a2[5])
    {
LABEL_3:
      v6 = sub_CCEECC(a2 + 3, "Runtime.InStation", &v17, a1 + 2);
      a2[4] = v6;
      v16 = 1;
      if (v6 >= a2[5])
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_CCED74(a2[4], "Runtime", &v18, a1 + 1);
    v5 = v4 + 48;
    a2[4] = v5;
    v17 = 1;
    if (v5 >= a2[5])
    {
      goto LABEL_3;
    }
  }

  sub_CCF080(v5, "Runtime.InStation", &v17, a1 + 2);
  v6 = v5 + 48;
  a2[4] = v6;
  v16 = 1;
  if (v6 >= a2[5])
  {
LABEL_4:
    v7 = sub_CCF1D8(a2 + 3, "Runtime.AccessPoint", &v16, a1 + 3);
    a2[4] = v7;
    v15 = 1;
    if (v7 >= a2[5])
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_CCF38C(v6, "Runtime.AccessPoint", &v16, a1 + 3);
  v7 = v6 + 48;
  a2[4] = v7;
  v15 = 1;
  if (v7 >= a2[5])
  {
LABEL_5:
    v8 = sub_CCF4E4(a2 + 3, "Runtime.OnStreet", &v15, a1 + 4);
    a2[4] = v8;
    v14 = 4;
    if (v8 >= a2[5])
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_CCF698(v7, "Runtime.OnStreet", &v15, a1 + 4);
  v8 = v7 + 48;
  a2[4] = v8;
  v14 = 4;
  if (v8 >= a2[5])
  {
LABEL_6:
    v9 = sub_CCF7F0(a2 + 3, "NumWalkingPaths", &v14, a1 + 8);
    a2[4] = v9;
    v13 = 4;
    if (v9 >= a2[5])
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_CCFCB0(v9, "NumMissingSearchSpaces", &v13, a1 + 11);
    v10 = v9 + 48;
    a2[4] = v10;
    v12 = 4;
    if (v10 >= a2[5])
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  sub_CCF9A4(v8, "NumWalkingPaths", &v14, a1 + 8);
  v9 = v8 + 48;
  a2[4] = v9;
  v13 = 4;
  if (v9 < a2[5])
  {
    goto LABEL_14;
  }

LABEL_7:
  v10 = sub_CCFAFC(a2 + 3, "NumMissingSearchSpaces", &v13, a1 + 11);
  a2[4] = v10;
  v12 = 4;
  if (v10 >= a2[5])
  {
LABEL_8:
    result = sub_CCFE08(a2 + 3, "NumMissingBucketEntries", &v12, a1 + 12);
    a2[4] = result;
    return result;
  }

LABEL_15:
  sub_CCFFBC(v10, "NumMissingBucketEntries", &v12, a1 + 12);
  result = v10 + 48;
  a2[4] = v10 + 48;
  return result;
}

void sub_CCEAF0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_CCEBC0(__int128 **a1, char *a2, char *a3, double *a4)
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
  sub_CCED74(v17 * 16, a2, a3, a4);
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

void sub_CCED60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCED74(uint64_t a1, char *__s, char *a3, double *a4)
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

uint64_t sub_CCEECC(__int128 **a1, char *a2, char *a3, double *a4)
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
  sub_CCF080(v17 * 16, a2, a3, a4);
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

void sub_CCF06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCF080(uint64_t a1, char *__s, char *a3, double *a4)
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

uint64_t sub_CCF1D8(__int128 **a1, char *a2, char *a3, double *a4)
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
  sub_CCF38C(v17 * 16, a2, a3, a4);
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

void sub_CCF378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCF38C(uint64_t a1, char *__s, char *a3, double *a4)
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

uint64_t sub_CCF4E4(__int128 **a1, char *a2, char *a3, double *a4)
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
  sub_CCF698(v17 * 16, a2, a3, a4);
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

void sub_CCF684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCF698(uint64_t a1, char *__s, char *a3, double *a4)
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

uint64_t sub_CCF7F0(__int128 **a1, char *a2, char *a3, double *a4)
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
  sub_CCF9A4(v17 * 16, a2, a3, a4);
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

void sub_CCF990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCF9A4(uint64_t a1, char *__s, char *a3, double *a4)
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

uint64_t sub_CCFAFC(__int128 **a1, char *a2, char *a3, double *a4)
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
  sub_CCFCB0(v17 * 16, a2, a3, a4);
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

void sub_CCFC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CCFCB0(uint64_t a1, char *__s, char *a3, double *a4)
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

uint64_t sub_CCFE08(__int128 **a1, char *a2, char *a3, double *a4)
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
  sub_CCFFBC(v17 * 16, a2, a3, a4);
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