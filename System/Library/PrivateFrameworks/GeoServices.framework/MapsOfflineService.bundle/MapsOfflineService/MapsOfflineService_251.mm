void sub_F55714(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_F55748(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  v15 = v7;
  if (*a1 != v5)
  {
    v8 = v4 + v6 - v5;
    v9 = v6;
    do
    {
      sub_F55608(v8, v9);
      v9 += 136;
      v8 = v15 + 136;
      v15 += 136;
    }

    while (v9 != v5);
    do
    {
      v10 = *(v6 + 112);
      if (v10)
      {
        *(v6 + 120) = v10;
        operator delete(v10);
      }

      v11 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v11;
        operator delete(v11);
      }

      v6 += 136;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v12 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_F55860(uint64_t a1)
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
        v7 = *(v4 - 24);
        if (v7)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v8 = v4 - 136;
        v9 = *(v4 - 136);
        if (v9)
        {
          *(v4 - 128) = v9;
          operator delete(v9);
        }

        v4 -= 136;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

uint64_t sub_F558DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 136);
    *(a1 + 16) = i - 136;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      *(i - 128) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_F55954(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v5 = 0x222222222222222;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x222222222222222)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 120 * v2;
  v16 = 0;
  sub_F55AB8(120 * v2, a2);
  v15 = 120 * v2 + 120;
  sub_F55BF0(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v9 = (v15 - 120);
    v15 -= 120;
    v10 = *(v8 - 24);
    if (v10)
    {
      *(v8 - 16) = v10;
      operator delete(v10);
    }

    v11 = *v9;
    if (*v9)
    {
      *(v8 - 112) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_F55AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_F55D84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F55AB8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 != a2)
  {
    sub_35354C(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 96) = 0;
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v9 = *(a2 + 96);
  v8 = *(a2 + 104);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_F55BBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_F55BF0(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  v15 = v7;
  if (*a1 != v5)
  {
    v8 = v4 + v6 - v5;
    v9 = v6;
    do
    {
      sub_F55AB8(v8, v9);
      v9 += 120;
      v8 = v15 + 120;
      v15 += 120;
    }

    while (v9 != v5);
    do
    {
      v10 = *(v6 + 96);
      if (v10)
      {
        *(v6 + 104) = v10;
        operator delete(v10);
      }

      v11 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v11;
        operator delete(v11);
      }

      v6 += 120;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v12 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_F55D08(uint64_t a1)
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
        v7 = *(v4 - 24);
        if (v7)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v8 = v4 - 120;
        v9 = *(v4 - 120);
        if (v9)
        {
          *(v4 - 112) = v9;
          operator delete(v9);
        }

        v4 -= 120;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

uint64_t sub_F55D84(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 120);
    *(a1 + 16) = i - 120;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      *(i - 112) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_F55DFC(uint64_t *result, _OWORD *a2)
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

void *sub_F55F28(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (v8[2] == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void *sub_F56264(void *a1, unint64_t a2, uint64_t a3)
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

void sub_F563E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  sub_35390(&a9);
  _Unwind_Resume(a1);
}

void sub_F5640C(uint64_t *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_F56554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_4E6B1C(va1);
  sub_4E6B8C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_F56570@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 2)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F56634(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F56650(void *a1, unint64_t a2)
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

void sub_F5678C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_F5686C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      v5 = *(a1 + 32);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_F56A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_F56A44(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  sub_7E9A4(v10);
  sub_F56B98(a1, a2, a4);
  sub_F56C8C(a1, a2, a3, a4, a5);
}

void sub_F56B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F56B98(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = sub_4D1DC0(a2);
  sub_F5640C(a3, v5);
  *__p = 0u;
  v9 = 0u;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = sub_4D1DC0(a2);
  if (v6)
  {
    v7 = a3[1];
    do
    {
      while (v7 >= a3[2])
      {
        v7 = sub_87B970(a3, __p);
        a3[1] = v7;
        if (!--v6)
        {
          goto LABEL_6;
        }
      }

      sub_F548B4(v7, __p);
      v7 += 40;
      a3[1] = v7;
      a3[1] = v7;
      --v6;
    }

    while (v6);
LABEL_6:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_F56C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F56C8C(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  v7 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    v8 = (v7 - 12);
    do
    {
      if (v8 + 6 == v6)
      {
        goto LABEL_11;
      }

      v9 = v8[3];
      v10 = v8[4];
      v8 += 3;
    }

    while (v9 != v8[3] || v10 != v8[4]);
    v12 = v8 + 6;
    if (v8 + 6 == v6)
    {
      v13 = (v8 + 3);
      if (v8 + 3 == v6)
      {
        goto LABEL_11;
      }

LABEL_20:
      v6 = v13;
      a3[1] = v13;
      v14 = v13 - v7;
      v59 = a2;
      if (v13 - v7 != 12)
      {
        goto LABEL_30;
      }

LABEL_21:
      v17 = a3[2];
      if (v6 >= v17)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2);
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v7) >> 2);
        if (2 * v20 <= v19 + 1)
        {
          v21 = v19 + 1;
        }

        else
        {
          v21 = 2 * v20;
        }

        if (v20 >= 0xAAAAAAAAAAAAAAALL)
        {
          v21 = 0x1555555555555555;
        }

        if (v21 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v18 = *v7;
      *(v6 + 8) = *(v7 + 8);
      *v6 = v18;
      a3[1] = v6 + 12;
LABEL_30:
      sub_F56570(a3, &v79);
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v22 = sub_4D1DC0(v5);
      if (v22)
      {
        if (!(v22 >> 59))
        {
          operator new();
        }

        sub_1794();
      }

      v23 = sub_4D1DC0(v5);
      if (v23)
      {
        if (!(v23 >> 61))
        {
          operator new();
        }

        sub_1794();
      }

      v24 = 0;
      v25 = sub_4D1DC0(v5);
      if (v25)
      {
        v26 = 0;
        v58 = v25;
        do
        {
          v27 = *a1;
          v28 = sub_4D1F50(v5, v26);
          sub_2B7A20(v27, *(v28 + 32) & 0xFFFFFFFFFFFFFFLL, &v61);
          sub_31BF20(&v61, &v68);
          if (__p)
          {
            v63 = __p;
            operator delete(__p);
          }

          v29 = v68;
          v30 = v69;
          if (v68 != v69)
          {
            v31 = v68 + 12;
            if (v68 + 12 != v69)
            {
              do
              {
                v32 = v77;
                if (v77 >= v78)
                {
                  v36 = v76;
                  v37 = v77 - v76;
                  v38 = (v77 - v76) >> 5;
                  v39 = v38 + 1;
                  if ((v38 + 1) >> 59)
                  {
                    sub_1794();
                  }

                  v40 = v78 - v76;
                  if ((v78 - v76) >> 4 > v39)
                  {
                    v39 = v40 >> 4;
                  }

                  if (v40 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v41 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v41 = v39;
                  }

                  if (v41)
                  {
                    if (!(v41 >> 59))
                    {
                      operator new();
                    }

LABEL_74:
                    sub_1808();
                  }

                  v42 = (32 * v38);
                  v43 = *(v31 - 12);
                  v44.i64[0] = v43;
                  v44.i64[1] = HIDWORD(v43);
                  *v42 = vcvtq_f64_u64(v44);
                  v44.i64[0] = *v31;
                  v44.i64[1] = HIDWORD(*v31);
                  v42[1] = vcvtq_f64_u64(v44);
                  v35 = 32 * v38 + 32;
                  memcpy(0, v36, v37);
                  v76 = 0;
                  v77 = v35;
                  v78 = 0;
                  if (v36)
                  {
                    operator delete(v36);
                  }
                }

                else
                {
                  v33 = *(v31 - 12);
                  v34.i64[0] = v33;
                  v34.i64[1] = HIDWORD(v33);
                  *v77 = vcvtq_f64_u64(v34);
                  v34.i64[0] = *v31;
                  v34.i64[1] = HIDWORD(*v31);
                  v32[1] = vcvtq_f64_u64(v34);
                  v35 = &v32[2];
                }

                v77 = v35;
                v45 = v24;
                v46 = v24 >> 3;
                if (((v24 >> 3) + 1) >> 61)
                {
                  sub_1794();
                }

                if (v24 >> 3 != -1)
                {
                  if (!(((v24 >> 3) + 1) >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_74;
                }

                *(8 * v46) = v26;
                v24 = 8 * v46 + 8;
                memcpy(0, 0, v45);
                v31 = (v31 + 12);
              }

              while (v31 != v30);
              v29 = v68;
            }

            v5 = v59;
          }

          if (v29)
          {
            v69 = v29;
            operator delete(v29);
          }

          ++v26;
        }

        while (v26 != v58);
      }

      v47 = sub_321E4(v75, a3);
      v48 = a1[2];
      v49 = sub_34490(v47);
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v61 = 0;
      __p = 0;
      v63 = 0;
      sub_C0A400(&v71, 0x2000uLL, &v61);
      if (v61)
      {
        __p = v61;
        operator delete(v61);
      }

      sub_7E9A4(v67);
      sub_43268(&v68, &v79, &v76, &v72, v48 / 100.0 / v49);
      v50 = sub_7EA60(v67);
      v51 = v72;
      v52 = v73;
      v53 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v73 - v72) >> 3));
      *(a5 + 16) = (v50 + *(a5 + 16));
      if (v52 == v51)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      sub_F61244(v51, v52, &v61, v54, 1);
      v55 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2);
      v65 = 0;
      v66 = 0;
      v64 = 0;
      if (!(v55 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    do
    {
      if (*v8 != *v12 || v8[1] != v12[1])
      {
        v16 = v12[2];
        *(v8 + 3) = *v12;
        v8 += 3;
        v8[2] = v16;
      }

      v12 += 3;
    }

    while (v12 != v6);
    v7 = *a3;
    v6 = a3[1];
    v13 = (v8 + 3);
    if (v8 + 3 != v6)
    {
      goto LABEL_20;
    }
  }

LABEL_11:
  v14 = v6 - v7;
  v59 = a2;
  if (v6 - v7 != 12)
  {
    goto LABEL_30;
  }

  goto LABEL_21;
}

void sub_F5823C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_F5686C(&a65);
  v68 = *(v66 - 248);
  if (v68)
  {
    *(v66 - 240) = v68;
    operator delete(v68);
  }

  if (v65)
  {
    operator delete(v65);
    v69 = *(v66 - 208);
    if (!v69)
    {
LABEL_7:
      v70 = *(v66 - 184);
      if (!v70)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v69 = *(v66 - 208);
    if (!v69)
    {
      goto LABEL_7;
    }
  }

  *(v66 - 200) = v69;
  operator delete(v69);
  v70 = *(v66 - 184);
  if (!v70)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_11:
  *(v66 - 176) = v70;
  operator delete(v70);
  _Unwind_Resume(a1);
}

uint64_t sub_F5845C(uint64_t *a1, void *a2, void *a3)
{
  sub_5C0C0(v45);
  if (sub_4D1DC0(a2))
  {
    v6 = sub_4D1F50(a2, 0);
    nullsub_1();
    sub_2B7A20(*a1, *(v6 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
    sub_31BF20(__p, &v44);
    if (__p[1])
    {
      v39 = __p[1];
      operator delete(__p[1]);
    }

    v7 = a3[4];
    if (!*&v7)
    {
      goto LABEL_26;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = *a3[3];
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = *v9;
    if (!v10)
    {
      goto LABEL_26;
    }

    if (v8.u32[0] < 2uLL)
    {
      v11 = *&v7 - 1;
      while (1)
      {
        v13 = v10[1];
        if (v13)
        {
          if ((v13 & v11) != 0)
          {
            goto LABEL_26;
          }
        }

        else if (!v10[2])
        {
          goto LABEL_21;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
      v12 = v10[1];
      if (v12)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }

        if (v12)
        {
          goto LABEL_26;
        }
      }

      else if (!v10[2])
      {
LABEL_21:
        v14 = *(v10 + 6);
        if (v14 > 2)
        {
          switch(v14)
          {
            case 3:
              v43[6] = 9;
              BYTE8(v41) = 101;
              *&v41 = *"ProbeLine";
              v15 = &v41 + 9;
              goto LABEL_27;
            case 4:
              v43[6] = 16;
              v41 = *"PartialProbeLine";
              v15 = &v42;
              goto LABEL_27;
            case 5:
              v43[6] = 15;
              qmemcpy(&v41, "WalkingGeometry", 15);
              v15 = &v41 + 15;
              goto LABEL_27;
          }

          goto LABEL_52;
        }

        if (!v14)
        {
          v43[6] = 7;
          qmemcpy(&v41, "Unknown", 7);
          v15 = &v41 + 7;
          goto LABEL_27;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            v43[6] = 17;
            v42 = 101;
            v41 = *"PartialCenterLine";
            v15 = v43;
LABEL_27:
            *v15 = 0;
            v16 = a3[9];
            if (v16)
            {
              v17 = vcnt_s8(v16);
              v17.i16[0] = vaddlv_u8(v17);
              v18 = *a3[8];
              if (v18)
              {
                v19 = *v18;
                if (v19)
                {
                  if (v17.u32[0] < 2uLL)
                  {
                    v20 = *&v16 - 1;
                    while (1)
                    {
                      v22 = v19[1];
                      if (v22)
                      {
                        if ((v22 & v20) != 0)
                        {
                          goto LABEL_43;
                        }
                      }

                      else if (!v19[2])
                      {
                        goto LABEL_45;
                      }

                      v19 = *v19;
                      if (!v19)
                      {
                        goto LABEL_43;
                      }
                    }
                  }

                  do
                  {
                    v21 = v19[1];
                    if (v21)
                    {
                      if (v21 >= *&v16)
                      {
                        v21 %= *&v16;
                      }

                      if (v21)
                      {
                        break;
                      }
                    }

                    else if (!v19[2])
                    {
LABEL_45:
                      v23 = *(v19 + 6);
LABEL_44:
                      sub_F5B594(v23, &v40);
                      sub_5C0C4(v45);
                    }

                    v19 = *v19;
                  }

                  while (v19);
                }
              }
            }

LABEL_43:
            v23 = 0;
            goto LABEL_44;
          }

LABEL_52:
          v43[6] = 0;
          v15 = &v41;
          goto LABEL_27;
        }

LABEL_26:
        v43[6] = 10;
        WORD4(v41) = 25966;
        *&v41 = *"CenterLine";
        v15 = &v41 + 10;
        goto LABEL_27;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_26;
      }
    }
  }

  v24 = sub_74700();
  if (sub_74244(v24) == 2 && (v25 = sub_74700(), *sub_7424C(v25)) && (v26 = sub_74700(), v27 = sub_7424C(v26), !*(*v27 + *(**v27 - 24) + 32)))
  {
    v31 = sub_74700();
    v32 = *sub_7424C(v31);
    sub_5E354(v45, __p);
    sub_5F104(v32, __p);
    v33 = v39;
    if (v39)
    {
      do
      {
        v34 = *v33;
        v35 = *(v33 + 12);
        if (v35 != -1)
        {
          (off_26749B8[v35])(&v44, v33 + 5);
        }

        *(v33 + 12) = -1;
        if (*(v33 + 39) < 0)
        {
          operator delete(v33[2]);
        }

        operator delete(v33);
        v33 = v34;
      }

      while (v34);
    }
  }

  else
  {
    sub_5E354(v45, __p);
    sub_5F104(&std::cout, __p);
    v28 = v39;
    if (v39)
    {
      do
      {
        v29 = *v28;
        v30 = *(v28 + 12);
        if (v30 != -1)
        {
          (off_26749B8[v30])(&v44, v28 + 5);
        }

        *(v28 + 12) = -1;
        if (*(v28 + 39) < 0)
        {
          operator delete(v28[2]);
        }

        operator delete(v28);
        v28 = v29;
      }

      while (v29);
    }
  }

  v36 = __p[0];
  __p[0] = 0;
  if (v36)
  {
    operator delete(v36);
  }

  return sub_3DB9A4(v45);
}

void sub_F59628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_5C010(va);
  sub_3DB9A4(v30 - 184);
  _Unwind_Resume(a1);
}

void sub_F5969C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a65 = __p;
    operator delete(__p);
  }

  sub_1959728(&a31);
  if (a66)
  {
    a67 = a66;
    operator delete(a66);
  }

  if (a69 < 0)
  {
    operator delete(a68);
    if ((*(v69 - 217) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v69 - 217) & 0x80000000) == 0)
  {
LABEL_7:
    v71 = *(v69 - 208);
    if (!v71)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  operator delete(*(v69 - 240));
  v71 = *(v69 - 208);
  if (!v71)
  {
LABEL_9:
    sub_3DB9A4(v69 - 184);
    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v69 - 200) = v71;
  operator delete(v71);
  goto LABEL_9;
}

void sub_F598E4(void *result, uint64_t **a2)
{
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = result[5];
  v7 = *result == result[4] && v3 == v6;
  if (!v7 || v4 != result[6])
  {
    v8 = v3 + 1;
    while (v4 != v8)
    {
      v9 = *(*v5 + 8 * v8++);
      if (v9 != -1)
      {
        v10 = v8 - 1;
        v11 = v8 - 1 == v6 && *result == result[4];
        if (v11 && v4 == result[6])
        {
          return;
        }

        goto LABEL_19;
      }
    }

    v10 = result[2];
    v12 = v4 == v6 && *result == result[4];
    if (v12 && v4 == result[6])
    {
      return;
    }

LABEL_19:
    if (v4 != result[6] || *result != result[4])
    {
      while (1)
      {
        if (v3 + 1 == v10)
        {
          goto LABEL_25;
        }

LABEL_23:
        v13 = **a2;
        v14 = *(v13 + 8 * v3);
        v15 = *(v13 + 8 * v10);
        if (v14 != v15)
        {
          sub_F5A420(a2[1], a2[2], a2[3], v14, v15 + 1);
        }

LABEL_25:
        v16 = v10 + 1;
        do
        {
          if (v4 == v16)
          {
            v10 = v4;
            goto LABEL_30;
          }

          v17 = *(*v5 + 8 * v16++);
        }

        while (v17 == -1);
        v10 = v16 - 1;
LABEL_30:
        v18 = v3 + 1;
        while (v4 != v18)
        {
          v19 = *(*v5 + 8 * v18++);
          if (v19 != -1)
          {
            v3 = v18 - 1;
            if (v18 == v10)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }

        v3 = v4;
      }
    }

    do
    {
LABEL_36:
      if (v3 + 1 != v10)
      {
        v20 = **a2;
        v21 = *(v20 + 8 * v3);
        v22 = *(v20 + 8 * v10);
        if (v21 != v22)
        {
          sub_F5A420(a2[1], a2[2], a2[3], v21, v22 + 1);
        }
      }

      v23 = v10 + 1;
      while (v4 != v23)
      {
        v24 = *(*v5 + 8 * v23++);
        if (v24 != -1)
        {
          v10 = v23 - 1;
          goto LABEL_44;
        }
      }

      v10 = v4;
LABEL_44:
      v25 = v3 + 1;
      do
      {
        if (v4 == v25)
        {
          v3 = v4;
          if (v10 == v6)
          {
            return;
          }

          goto LABEL_36;
        }

        v26 = *(*v5 + 8 * v25++);
      }

      while (v26 == -1);
      v3 = v25 - 1;
    }

    while (v10 != v6);
  }
}

void sub_F59AC8(uint64_t a1, unsigned int **a2, char **a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * (v3 - *a2) >= 2)
  {
    v5 = v4[2];
    if (v4 == v3)
    {
LABEL_11:
      v9 = a3[1] - *a3;
      if (v9)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
        v11 = 8;
        do
        {
          *&(*a3)[v11] = v5;
          v11 += 12;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v6 = *(v3 - 1);
      v7 = *a2;
      while (v7[2] != 0x7FFFFFFF)
      {
        v7 += 3;
        if (v7 == v3)
        {
          v8 = *a2;
          do
          {
            if (*v8 != *v4 || v8[1] != v4[1] || v8[2] != v5)
            {
              operator new();
            }

            v8 += 3;
          }

          while (v8 != v3);
          goto LABEL_11;
        }
      }

      *(*a3 + 2) = v5;
      if (v5 == 0x7FFFFFFF)
      {
        v12 = v6;
      }

      else
      {
        v12 = v5;
      }

      v13 = a3[1];
      v14 = (v13 - *a3) >> 2;
      v15 = 0xAAAAAAAAAAAAAAABLL * v14 - 1;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * v14 - 1;
      }

      if (v15 >= 2)
      {
        v17 = v16 - 1;
        v18 = 20;
        do
        {
          *&(*a3)[v18] = v12;
          v18 += 12;
          --v17;
        }

        while (v17);
        v13 = a3[1];
      }

      *(v13 - 1) = v6;
    }
  }
}

void sub_F5A39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_F5A420(uint64_t *a1, void *a2, void *a3, unint64_t a4, unint64_t a5)
{
  if (a4 != a5)
  {
    v6 = a4;
    sub_F56650(a3, a4);
    nullsub_1();
    sub_F56650(a3, a5 - 1);
    nullsub_1();
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v179[0] = 0;
    v179[1] = 0;
    v180 = 0;
    if (v6 <= a5)
    {
      v8 = a5;
    }

    else
    {
      v8 = v6;
    }

    v160 = v8;
    if (v6 >= a5)
    {
      goto LABEL_204;
    }

    v163 = a3;
    while (1)
    {
      v9 = *a1;
      v10 = sub_4D1F50(a2, v6);
      sub_2B7A20(v9, *(v10 + 32) & 0xFFFFFFFFFFFFFFLL, &v175);
      sub_31C60C(&v175, &v165);
      if (v178)
      {
        if (__p == v177)
        {
          v11 = 0;
        }

        else
        {
          v11 = -1;
        }

        LODWORD(v12) = v11;
        v13 = v173;
        v164 = v11;
        if (v172 != v11 || v173 != v11)
        {
          break;
        }

        goto LABEL_168;
      }

      if (__p != v177)
      {
        v15 = *(v177 - 1);
        v16 = sub_2B4D24(v175, v15, 0);
        v17 = &v16[*&v16[-*v16 + 4]];
        v18 = &v17[4 * HIDWORD(v15) + *v17];
        v19 = (v18 + 4 + *(v18 + 4));
        v12 = (v177 - __p) >> 3;
        v20 = (v19 + *(v19 - *v19 + 6));
        v13 = v173;
        v164 = *(v20 + *v20);
        if (v172 != v12 || v173 != *(v20 + *v20))
        {
          break;
        }

        goto LABEL_168;
      }

      LODWORD(v12) = 0;
      v13 = v173;
      v164 = 0;
      if (v172 || v173 != 0)
      {
        break;
      }

LABEL_168:
      sub_F56650(v163, v6);
      nullsub_1();
      v119 = *v118;
      v120 = *(v118 + 8);
      if (*v118 != v120)
      {
        v121 = v179[1];
        do
        {
          v122.i64[0] = *v119;
          v122.i64[1] = HIDWORD(*v119);
          v123 = vcvtq_f64_u64(v122);
          if (v121 < v180)
          {
            *v121++ = v123;
          }

          else
          {
            v124 = v179[0];
            v125 = v121 - v179[0];
            v126 = (v121 - v179[0]) >> 4;
            v127 = v126 + 1;
            if ((v126 + 1) >> 60)
            {
              sub_1794();
            }

            v128 = v180 - v179[0];
            if ((v180 - v179[0]) >> 3 > v127)
            {
              v127 = v128 >> 3;
            }

            if (v128 >= 0x7FFFFFFFFFFFFFF0)
            {
              v129 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v129 = v127;
            }

            if (v129)
            {
              if (!(v129 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v130 = (v121 - v179[0]) >> 4;
            v131 = (16 * v126);
            v132 = (16 * v126 - 16 * v130);
            *v131 = v123;
            v121 = v131 + 1;
            memcpy(v132, v124, v125);
            v179[0] = v132;
            v179[1] = v121;
            v180 = 0;
            if (v124)
            {
              operator delete(v124);
            }
          }

          v179[1] = v121;
          v119 = (v119 + 12);
        }

        while (v119 != v120);
      }

      v133 = sub_F56650(v163, v6);
      sub_F54F0C(v133);
      if (__p)
      {
        v177 = __p;
        operator delete(__p);
      }

      if (++v6 == v160)
      {
        v134 = v179[1];
        if (v179[0] != v179[1])
        {
          v135 = (v179[0] - 16);
          do
          {
            if (v135 + 4 == v179[1])
            {
              goto LABEL_204;
            }

            v136 = v135[2];
            v135 += 2;
          }

          while (v136 != v135[2] || v135[1] != v135[3]);
          for (i = v135 + 4; i != v134; i += 2)
          {
            if (*v135 != *i || v135[1] != i[1])
            {
              *(v135 + 1) = *i;
              v135 += 2;
            }
          }

          if (v135 + 2 != v134)
          {
            v179[1] = v135 + 2;
          }
        }

LABEL_204:
        sub_3C188(&v165, &v184, v179, 0);
      }
    }

    v23 = v168;
    while (1)
    {
      v24 = &v23[2 * v13];
      v25 = v24[2];
      v26 = v24[3];
      v27 = sub_57A90(v170);
      v28 = v170 & ~(-1 << (v27 & 0xFE));
      v29 = sub_581D8(v28);
      v30 = sub_581D8(v28 >> 1);
      v31 = 1 << -(v27 >> 1);
      if (v27 < 2)
      {
        v31 = -2;
      }

      if ((v30 * v31 + 4 * v26) >= 0xFFFFFFFE)
      {
        v32 = -2;
      }

      else
      {
        v32 = v30 * v31 + 4 * v26;
      }

      v33 = v29 * v31 + 4 * v25;
      v34 = v185;
      if (v185 >= v186)
      {
        v43 = v184;
        v44 = v185 - v184;
        v45 = (v185 - v184) >> 4;
        v46 = v45 + 1;
        if ((v45 + 1) >> 60)
        {
          sub_1794();
        }

        v47 = v186 - v184;
        if ((v186 - v184) >> 3 > v46)
        {
          v46 = v47 >> 3;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          if (!(v48 >> 60))
          {
            operator new();
          }

LABEL_235:
          sub_1808();
        }

        v77 = (16 * v45);
        *v77 = v33;
        v77[1] = v32;
        memcpy(0, v43, v44);
        v184 = 0;
        v185 = (16 * v45 + 16);
        v186 = 0;
        if (v43)
        {
          operator delete(v43);
        }

        v185 = (16 * v45 + 16);
        v36 = v182;
        v35 = v183;
        if (v182 >= v183)
        {
LABEL_103:
          v78 = v181;
          v79 = v36 - v181;
          v80 = (v36 - v181) >> 3;
          v81 = v80 + 1;
          if ((v80 + 1) >> 61)
          {
            sub_1794();
          }

          v82 = v35 - v181;
          if (v82 >> 2 > v81)
          {
            v81 = v82 >> 2;
          }

          if (v82 >= 0x7FFFFFFFFFFFFFF8)
          {
            v83 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v83 = v81;
          }

          if (v83)
          {
            if (!(v83 >> 61))
            {
              operator new();
            }

            goto LABEL_235;
          }

          v84 = (v36 - v181) >> 3;
          v85 = (8 * v80);
          v86 = (8 * v80 - 8 * v84);
          *v85 = v6;
          v87 = v85 + 1;
          memcpy(v86, v78, v79);
          v181 = v86;
          v182 = v87;
          v183 = 0;
          if (v78)
          {
            operator delete(v78);
          }

          v182 = v87;
          v37 = v173;
          if (v174)
          {
LABEL_40:
            v13 = v37 - 1;
            v173 = v37 - 1;
            v23 = v168;
            if ((v37 - 1) < *v168)
            {
              v38 = (v168 + 4 * v37 + 4);
              v39 = (v168 + 4 * v13 + 4);
              if (*v38 != *v39)
              {
                goto LABEL_30;
              }

              if (v38[1] != v39[1])
              {
                goto LABEL_30;
              }

              v40 = *v166;
              v41 = v166[1] - *v166;
              if (*v168 == 2 && v41 == 8)
              {
                goto LABEL_30;
              }

              v13 = v37 - 2;
              v42 = --v172;
              v173 = v13;
              if (v172 >= (v41 >> 3))
              {
                goto LABEL_30;
              }

LABEL_57:
              while (2)
              {
                v50 = *(v40 + 8 * v42);
                v170 = v50;
                v51 = v165;
                v189 = 0;
                v190 = v50;
                v187 = &v189;
                v188 = &v190;
                v52 = *(v165 + 482) + 1;
                *(v165 + 482) = v52;
                if (!*v51)
                {
                  exception = __cxa_allocate_exception(0x40uLL);
                  v193 = *v188;
                  v191 = sub_7FCF0(1u);
                  v192 = v141;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v191, &v194);
                  if ((v196 & 0x80u) == 0)
                  {
                    v142 = &v194;
                  }

                  else
                  {
                    v142 = v194;
                  }

                  if ((v196 & 0x80u) == 0)
                  {
                    v143 = v196;
                  }

                  else
                  {
                    v143 = v195;
                  }

                  v144 = sub_2D390(exception, v142, v143);
                }

                if (*(v51 + 28) == v50)
                {
                  ++v51[483];
                  v51[15] = v52;
                  v53 = v51[16];
                  if (!v53)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_80;
                }

                v54 = (v51 + 17);
                if (*(v51 + 34) == v50)
                {
LABEL_62:
                  ++v51[483];
                  *(v54 + 1) = v52;
                  v53 = *(v54 + 2);
                  if (!v53)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_80;
                }

                if (*(v51 + 40) == v50)
                {
                  ++v51[483];
                  v51[21] = v52;
                  v53 = v51[22];
                  if (!v53)
                  {
LABEL_213:
                    v145 = __cxa_allocate_exception(0x40uLL);
                    v193 = *v188;
                    v191 = sub_7FCF0(1u);
                    v192 = v146;
                    sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v191, &v194);
                    if ((v196 & 0x80u) == 0)
                    {
                      v147 = &v194;
                    }

                    else
                    {
                      v147 = v194;
                    }

                    if ((v196 & 0x80u) == 0)
                    {
                      v148 = v196;
                    }

                    else
                    {
                      v148 = v195;
                    }

                    v149 = sub_2D390(v145, v147, v148);
                  }

LABEL_80:
                  v63 = (v53 + *v53);
                  v64 = (v63 - *v63);
                  if (*v64 >= 7u)
                  {
LABEL_81:
                    v65 = v64[3];
                    if (v65)
                    {
                      LODWORD(v65) = *(v63 + v65);
                    }

                    v171 = v65;
                    v66 = (v63 - *v63);
                    if (*v66 >= 5u)
                    {
LABEL_87:
                      v67 = v66[2];
                      if (v67)
                      {
                        v68 = v63 + v67 + *(v63 + v67);
                        goto LABEL_90;
                      }
                    }

LABEL_89:
                    v68 = 0;
LABEL_90:
                    v69 = &v68[4 * HIDWORD(v50) + 4 + *&v68[4 * HIDWORD(v50) + 4]];
                    v167 = v69;
                    v70 = &v69[-*v69];
                    v71 = *v70;
                    v23 = *(v70 + 3);
                    if (*(v70 + 3))
                    {
                      v23 = (v23 + v69 + *(v23 + v69));
                    }

                    v168 = v23;
                    if (v71 >= 0xB && (v72 = *(v70 + 5)) != 0)
                    {
                      v73 = &v69[v72 + *&v69[v72]];
                    }

                    else
                    {
                      v73 = 0;
                    }

                    v169 = v73;
                    v74 = *v23;
                    v13 = *v23 - 2;
                    v173 = v13;
                    v75 = &v23[2 * (v74 - 1) + 2];
                    v76 = &v23[2 * v13 + 2];
                    if (*v75 != *v76)
                    {
                      goto LABEL_30;
                    }

                    if (v75[1] != v76[1])
                    {
                      goto LABEL_30;
                    }

                    v13 = v74 - 3;
                    v42 = --v172;
                    v173 = v13;
                    v40 = *v166;
                    if (v172 >= ((v166[1] - *v166) >> 3))
                    {
                      goto LABEL_30;
                    }

                    continue;
                  }
                }

                else
                {
                  v54 = (v51 + 23);
                  if (*(v51 + 46) == v50)
                  {
                    goto LABEL_62;
                  }

                  v55 = v51[21];
                  v56 = v51[18];
                  v57 = v51[15];
                  v58 = v51[24];
                  v53 = sub_2D52A4(*v51, 1, v50, 1);
                  if (v57 >= v52)
                  {
                    v59 = v52;
                  }

                  else
                  {
                    v59 = v57;
                  }

                  v60 = v56 >= v59;
                  if (v56 < v59)
                  {
                    v59 = v56;
                  }

                  v61 = 4 * (v57 < v52);
                  if (!v60)
                  {
                    v61 = 5;
                  }

                  if (v55 < v59)
                  {
                    v61 = 6;
                    v59 = v55;
                  }

                  if (v58 < v59)
                  {
                    v61 = 7;
                  }

                  v62 = &v51[3 * v61 + 2];
                  *v62 = v190;
                  *(v62 + 8) = v51[482];
                  *(v62 + 16) = v53;
                  if (v53)
                  {
                    goto LABEL_80;
                  }

                  sub_2B572C(&v187);
                  v63 = 0;
                  v64 = (&loc_1120530 + 1);
                  if (*(&loc_1120530 + 1) >= 7u)
                  {
                    goto LABEL_81;
                  }
                }

                break;
              }

              v171 = 0;
              v66 = (v63 - *v63);
              if (*v66 >= 5u)
              {
                goto LABEL_87;
              }

              goto LABEL_89;
            }

            v40 = *v166;
            v49 = v166[1] - *v166;
            v42 = --v172;
            if (v172 < (v49 >> 3))
            {
              goto LABEL_57;
            }

LABEL_30:
            if (v172 != v12)
            {
              continue;
            }

            goto LABEL_31;
          }

          goto LABEL_115;
        }
      }

      else
      {
        *v185 = v33;
        v34[1] = v32;
        v185 = v34 + 2;
        v36 = v182;
        v35 = v183;
        if (v182 >= v183)
        {
          goto LABEL_103;
        }
      }

      *v36 = v6;
      v182 = v36 + 1;
      v37 = v173;
      if (v174)
      {
        goto LABEL_40;
      }

LABEL_115:
      v13 = v37 + 1;
      v173 = v37 + 1;
      v23 = v168;
      if ((v37 + 1) >= *v168)
      {
        v90 = *v166;
        v93 = v166[1] - *v166;
        v92 = ++v172;
        if (v172 < (v93 >> 3))
        {
          goto LABEL_123;
        }

        goto LABEL_30;
      }

      v88 = (v168 + 4 * v37 + 4);
      v89 = (v168 + 4 * v13 + 4);
      if (*v88 != *v89)
      {
        goto LABEL_30;
      }

      if (v88[1] != v89[1])
      {
        goto LABEL_30;
      }

      v90 = *v166;
      v91 = v166[1] - *v166;
      if (*v168 == 2 && v91 == 8)
      {
        goto LABEL_30;
      }

      v13 = v37 + 2;
      v92 = ++v172;
      v173 = v13;
      if (v172 >= (v91 >> 3))
      {
        goto LABEL_30;
      }

      while (1)
      {
LABEL_123:
        v94 = *(v90 + 8 * v92);
        v170 = v94;
        v95 = v165;
        v189 = 0;
        v190 = v94;
        v187 = &v189;
        v188 = &v190;
        v96 = *(v165 + 482) + 1;
        *(v165 + 482) = v96;
        if (!*v95)
        {
          v150 = __cxa_allocate_exception(0x40uLL);
          v193 = *v188;
          v191 = sub_7FCF0(1u);
          v192 = v151;
          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v191, &v194);
          if ((v196 & 0x80u) == 0)
          {
            v152 = &v194;
          }

          else
          {
            v152 = v194;
          }

          if ((v196 & 0x80u) == 0)
          {
            v153 = v196;
          }

          else
          {
            v153 = v195;
          }

          v154 = sub_2D390(v150, v152, v153);
        }

        if (*(v95 + 28) == v94)
        {
          ++v95[483];
          v95[15] = v96;
          v97 = v95[16];
          if (!v97)
          {
            goto LABEL_227;
          }

          goto LABEL_146;
        }

        v98 = (v95 + 17);
        if (*(v95 + 34) == v94)
        {
          goto LABEL_128;
        }

        if (*(v95 + 40) == v94)
        {
          ++v95[483];
          v95[21] = v96;
          v97 = v95[22];
          if (!v97)
          {
LABEL_227:
            v155 = __cxa_allocate_exception(0x40uLL);
            v193 = *v188;
            v191 = sub_7FCF0(1u);
            v192 = v156;
            sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v191, &v194);
            if ((v196 & 0x80u) == 0)
            {
              v157 = &v194;
            }

            else
            {
              v157 = v194;
            }

            if ((v196 & 0x80u) == 0)
            {
              v158 = v196;
            }

            else
            {
              v158 = v195;
            }

            v159 = sub_2D390(v155, v157, v158);
          }

LABEL_146:
          v107 = (v97 + *v97);
          v108 = (v107 - *v107);
          if (*v108 < 7u)
          {
            goto LABEL_152;
          }

          goto LABEL_147;
        }

        v98 = (v95 + 23);
        if (*(v95 + 46) == v94)
        {
LABEL_128:
          ++v95[483];
          *(v98 + 1) = v96;
          v97 = *(v98 + 2);
          if (!v97)
          {
            goto LABEL_227;
          }

          goto LABEL_146;
        }

        v99 = v95[21];
        v100 = v95[18];
        v101 = v95[15];
        v102 = v95[24];
        v97 = sub_2D52A4(*v95, 1, v94, 1);
        if (v101 >= v96)
        {
          v103 = v96;
        }

        else
        {
          v103 = v101;
        }

        v104 = v100 >= v103;
        if (v100 < v103)
        {
          v103 = v100;
        }

        v105 = 4 * (v101 < v96);
        if (!v104)
        {
          v105 = 5;
        }

        if (v99 < v103)
        {
          v105 = 6;
          v103 = v99;
        }

        if (v102 < v103)
        {
          v105 = 7;
        }

        v106 = &v95[3 * v105 + 2];
        *v106 = v190;
        *(v106 + 8) = v95[482];
        *(v106 + 16) = v97;
        if (v97)
        {
          goto LABEL_146;
        }

        sub_2B572C(&v187);
        v107 = 0;
        v108 = (&loc_1120530 + 1);
        if (*(&loc_1120530 + 1) < 7u)
        {
LABEL_152:
          v171 = 0;
          v110 = (v107 - *v107);
          if (*v110 < 5u)
          {
            goto LABEL_155;
          }

          goto LABEL_153;
        }

LABEL_147:
        v109 = v108[3];
        if (v109)
        {
          LODWORD(v109) = *(v107 + v109);
        }

        v171 = v109;
        v110 = (v107 - *v107);
        if (*v110 < 5u)
        {
          goto LABEL_155;
        }

LABEL_153:
        v111 = v110[2];
        if (v111)
        {
          v112 = v107 + v111 + *(v107 + v111);
          goto LABEL_156;
        }

LABEL_155:
        v112 = 0;
LABEL_156:
        v113 = &v112[4 * HIDWORD(v94) + 4 + *&v112[4 * HIDWORD(v94) + 4]];
        v167 = v113;
        v114 = &v113[-*v113];
        v115 = *v114;
        v23 = *(v114 + 3);
        if (*(v114 + 3))
        {
          v23 = (v23 + v113 + *(v23 + v113));
        }

        v168 = v23;
        if (v115 >= 0xB && (v116 = *(v114 + 5)) != 0)
        {
          v117 = &v113[v116 + *&v113[v116]];
        }

        else
        {
          v117 = 0;
        }

        v169 = v117;
        v13 = 1;
        v173 = 1;
        if (v23[2] != v23[4])
        {
          goto LABEL_30;
        }

        if (v23[3] != v23[5])
        {
          break;
        }

        v13 = 2;
        v92 = ++v172;
        v173 = 2;
        v90 = *v166;
        if (v172 >= ((v166[1] - *v166) >> 3))
        {
          goto LABEL_30;
        }
      }

      v13 = 1;
      if (v172 != v12)
      {
        continue;
      }

LABEL_31:
      if (v13 == v164)
      {
        goto LABEL_168;
      }
    }
  }
}

void sub_F5B460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  sub_3C214(&a15);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
    v40 = *(v38 - 208);
    if (!v40)
    {
LABEL_3:
      v41 = *(v38 - 184);
      if (!v41)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v40 = *(v38 - 208);
    if (!v40)
    {
      goto LABEL_3;
    }
  }

  *(v38 - 200) = v40;
  operator delete(v40);
  v41 = *(v38 - 184);
  if (!v41)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v38 - 176) = v41;
  operator delete(v41);
  _Unwind_Resume(a1);
}

void sub_F5B594(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (!a1)
  {
    a2[23] = 0;
    *a2 = 0;
    return;
  }

  v3 = a1;
  sub_19594F8(&v7);
  v18 = 40;
  sub_4A5C(&v7, &v18, 1);
  if (v3)
  {
    sub_4A5C(&v7, " Shifted", 8);
  }

  if ((v3 & 2) != 0)
  {
    sub_4A5C(&v7, " Bezier Curve", 13);
  }

  v18 = 41;
  sub_4A5C(&v7, &v18, 1);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    v6 = __src;
    v4 = v5 - __src;
    if (v5 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }

LABEL_13:
    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      memmove(a2, v6, v4);
    }

    goto LABEL_18;
  }

  if ((v17 & 8) != 0)
  {
    v6 = v10;
    v4 = v11 - v10;
    if ((v11 - v10) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v4 = 0;
  a2[23] = 0;
LABEL_18:
  a2[v4] = 0;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v9);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_F5B998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F5BAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_F5BB0C(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  sub_7E9A4(v10);
  sub_F5BC60(a1, a2, a4);
  sub_F5BD54(a1, a2, a3, a4, a5);
}

void sub_F5BC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F5BC60(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = sub_4D1DC0(a2);
  sub_F5640C(a3, v5);
  *__p = 0u;
  v9 = 0u;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = sub_4D1DC0(a2);
  if (v6)
  {
    v7 = a3[1];
    do
    {
      while (v7 >= a3[2])
      {
        v7 = sub_87B970(a3, __p);
        a3[1] = v7;
        if (!--v6)
        {
          goto LABEL_6;
        }
      }

      sub_F548B4(v7, __p);
      v7 += 40;
      a3[1] = v7;
      a3[1] = v7;
      --v6;
    }

    while (v6);
LABEL_6:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_F5BD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F5BD54(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  v7 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    v8 = (v7 - 12);
    do
    {
      if (v8 + 6 == v6)
      {
        goto LABEL_11;
      }

      v9 = v8[3];
      v10 = v8[4];
      v8 += 3;
    }

    while (v9 != v8[3] || v10 != v8[4]);
    v12 = v8 + 6;
    if (v8 + 6 == v6)
    {
      v13 = (v8 + 3);
      if (v8 + 3 == v6)
      {
        goto LABEL_11;
      }

LABEL_20:
      v6 = v13;
      a3[1] = v13;
      v14 = v13 - v7;
      v59 = a2;
      if (v13 - v7 != 12)
      {
        goto LABEL_30;
      }

LABEL_21:
      v17 = a3[2];
      if (v6 >= v17)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2);
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v7) >> 2);
        if (2 * v20 <= v19 + 1)
        {
          v21 = v19 + 1;
        }

        else
        {
          v21 = 2 * v20;
        }

        if (v20 >= 0xAAAAAAAAAAAAAAALL)
        {
          v21 = 0x1555555555555555;
        }

        if (v21 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v18 = *v7;
      *(v6 + 8) = *(v7 + 8);
      *v6 = v18;
      a3[1] = v6 + 12;
LABEL_30:
      sub_F56570(a3, &v79);
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v22 = sub_4D1DC0(v5);
      if (v22)
      {
        if (!(v22 >> 59))
        {
          operator new();
        }

        sub_1794();
      }

      v23 = sub_4D1DC0(v5);
      if (v23)
      {
        if (!(v23 >> 61))
        {
          operator new();
        }

        sub_1794();
      }

      v24 = 0;
      v25 = sub_4D1DC0(v5);
      if (v25)
      {
        v26 = 0;
        v58 = v25;
        do
        {
          v27 = *a1;
          v28 = sub_4D1F50(v5, v26);
          sub_2B7A20(v27, (((*(v28 + 36) & 0x20000000) << 19) | (*(v28 + 36) << 32) | *(v28 + 32)) ^ 0x1000000000000, &v61);
          sub_31BF20(&v61, &v68);
          if (__p)
          {
            v63 = __p;
            operator delete(__p);
          }

          v29 = v68;
          v30 = v69;
          if (v68 != v69)
          {
            v31 = v68 + 12;
            if (v68 + 12 != v69)
            {
              do
              {
                v32 = v77;
                if (v77 >= v78)
                {
                  v36 = v76;
                  v37 = v77 - v76;
                  v38 = (v77 - v76) >> 5;
                  v39 = v38 + 1;
                  if ((v38 + 1) >> 59)
                  {
                    sub_1794();
                  }

                  v40 = v78 - v76;
                  if ((v78 - v76) >> 4 > v39)
                  {
                    v39 = v40 >> 4;
                  }

                  if (v40 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v41 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v41 = v39;
                  }

                  if (v41)
                  {
                    if (!(v41 >> 59))
                    {
                      operator new();
                    }

LABEL_74:
                    sub_1808();
                  }

                  v42 = (32 * v38);
                  v43 = *(v31 - 12);
                  v44.i64[0] = v43;
                  v44.i64[1] = HIDWORD(v43);
                  *v42 = vcvtq_f64_u64(v44);
                  v44.i64[0] = *v31;
                  v44.i64[1] = HIDWORD(*v31);
                  v42[1] = vcvtq_f64_u64(v44);
                  v35 = 32 * v38 + 32;
                  memcpy(0, v36, v37);
                  v76 = 0;
                  v77 = v35;
                  v78 = 0;
                  if (v36)
                  {
                    operator delete(v36);
                  }
                }

                else
                {
                  v33 = *(v31 - 12);
                  v34.i64[0] = v33;
                  v34.i64[1] = HIDWORD(v33);
                  *v77 = vcvtq_f64_u64(v34);
                  v34.i64[0] = *v31;
                  v34.i64[1] = HIDWORD(*v31);
                  v32[1] = vcvtq_f64_u64(v34);
                  v35 = &v32[2];
                }

                v77 = v35;
                v45 = v24;
                v46 = v24 >> 3;
                if (((v24 >> 3) + 1) >> 61)
                {
                  sub_1794();
                }

                if (v24 >> 3 != -1)
                {
                  if (!(((v24 >> 3) + 1) >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_74;
                }

                *(8 * v46) = v26;
                v24 = 8 * v46 + 8;
                memcpy(0, 0, v45);
                v31 = (v31 + 12);
              }

              while (v31 != v30);
              v29 = v68;
            }

            v5 = v59;
          }

          if (v29)
          {
            v69 = v29;
            operator delete(v29);
          }

          ++v26;
        }

        while (v26 != v58);
      }

      v47 = sub_321E4(v75, a3);
      v48 = a1[2];
      v49 = sub_34490(v47);
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v61 = 0;
      __p = 0;
      v63 = 0;
      sub_C0A400(&v71, 0x2000uLL, &v61);
      if (v61)
      {
        __p = v61;
        operator delete(v61);
      }

      sub_7E9A4(v67);
      sub_43268(&v68, &v79, &v76, &v72, v48 / 100.0 / v49);
      v50 = sub_7EA60(v67);
      v51 = v72;
      v52 = v73;
      v53 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v73 - v72) >> 3));
      *(a5 + 16) = (v50 + *(a5 + 16));
      if (v52 == v51)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      sub_F61244(v51, v52, &v61, v54, 1);
      v55 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2);
      v65 = 0;
      v66 = 0;
      v64 = 0;
      if (!(v55 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    do
    {
      if (*v8 != *v12 || v8[1] != v12[1])
      {
        v16 = v12[2];
        *(v8 + 3) = *v12;
        v8 += 3;
        v8[2] = v16;
      }

      v12 += 3;
    }

    while (v12 != v6);
    v7 = *a3;
    v6 = a3[1];
    v13 = (v8 + 3);
    if (v8 + 3 != v6)
    {
      goto LABEL_20;
    }
  }

LABEL_11:
  v14 = v6 - v7;
  v59 = a2;
  if (v6 - v7 != 12)
  {
    goto LABEL_30;
  }

  goto LABEL_21;
}

void sub_F5D32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_F5686C(&a65);
  v68 = *(v66 - 248);
  if (v68)
  {
    *(v66 - 240) = v68;
    operator delete(v68);
  }

  if (v65)
  {
    operator delete(v65);
    v69 = *(v66 - 208);
    if (!v69)
    {
LABEL_7:
      v70 = *(v66 - 184);
      if (!v70)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v69 = *(v66 - 208);
    if (!v69)
    {
      goto LABEL_7;
    }
  }

  *(v66 - 200) = v69;
  operator delete(v69);
  v70 = *(v66 - 184);
  if (!v70)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_11:
  *(v66 - 176) = v70;
  operator delete(v70);
  _Unwind_Resume(a1);
}

uint64_t sub_F5D54C(uint64_t *a1, void *a2, void *a3)
{
  sub_5C0C0(v45);
  if (sub_4D1DC0(a2))
  {
    v6 = sub_4D1F50(a2, 0);
    nullsub_1();
    sub_2B7A20(*a1, (((*(v6 + 36) & 0x20000000) << 19) | (*(v6 + 36) << 32) | *(v6 + 32)) ^ 0x1000000000000, __p);
    sub_31BF20(__p, &v44);
    if (__p[1])
    {
      v39 = __p[1];
      operator delete(__p[1]);
    }

    v7 = a3[4];
    if (!*&v7)
    {
      goto LABEL_26;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = *a3[3];
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = *v9;
    if (!v10)
    {
      goto LABEL_26;
    }

    if (v8.u32[0] < 2uLL)
    {
      v11 = *&v7 - 1;
      while (1)
      {
        v13 = v10[1];
        if (v13)
        {
          if ((v13 & v11) != 0)
          {
            goto LABEL_26;
          }
        }

        else if (!v10[2])
        {
          goto LABEL_21;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
      v12 = v10[1];
      if (v12)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }

        if (v12)
        {
          goto LABEL_26;
        }
      }

      else if (!v10[2])
      {
LABEL_21:
        v14 = *(v10 + 6);
        if (v14 > 2)
        {
          switch(v14)
          {
            case 3:
              v43[6] = 9;
              BYTE8(v41) = 101;
              *&v41 = *"ProbeLine";
              v15 = &v41 + 9;
              goto LABEL_27;
            case 4:
              v43[6] = 16;
              v41 = *"PartialProbeLine";
              v15 = &v42;
              goto LABEL_27;
            case 5:
              v43[6] = 15;
              qmemcpy(&v41, "WalkingGeometry", 15);
              v15 = &v41 + 15;
              goto LABEL_27;
          }

          goto LABEL_52;
        }

        if (!v14)
        {
          v43[6] = 7;
          qmemcpy(&v41, "Unknown", 7);
          v15 = &v41 + 7;
          goto LABEL_27;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            v43[6] = 17;
            v42 = 101;
            v41 = *"PartialCenterLine";
            v15 = v43;
LABEL_27:
            *v15 = 0;
            v16 = a3[9];
            if (v16)
            {
              v17 = vcnt_s8(v16);
              v17.i16[0] = vaddlv_u8(v17);
              v18 = *a3[8];
              if (v18)
              {
                v19 = *v18;
                if (v19)
                {
                  if (v17.u32[0] < 2uLL)
                  {
                    v20 = *&v16 - 1;
                    while (1)
                    {
                      v22 = v19[1];
                      if (v22)
                      {
                        if ((v22 & v20) != 0)
                        {
                          goto LABEL_43;
                        }
                      }

                      else if (!v19[2])
                      {
                        goto LABEL_45;
                      }

                      v19 = *v19;
                      if (!v19)
                      {
                        goto LABEL_43;
                      }
                    }
                  }

                  do
                  {
                    v21 = v19[1];
                    if (v21)
                    {
                      if (v21 >= *&v16)
                      {
                        v21 %= *&v16;
                      }

                      if (v21)
                      {
                        break;
                      }
                    }

                    else if (!v19[2])
                    {
LABEL_45:
                      v23 = *(v19 + 6);
LABEL_44:
                      sub_F60708(v23, &v40);
                      sub_5C0C4(v45);
                    }

                    v19 = *v19;
                  }

                  while (v19);
                }
              }
            }

LABEL_43:
            v23 = 0;
            goto LABEL_44;
          }

LABEL_52:
          v43[6] = 0;
          v15 = &v41;
          goto LABEL_27;
        }

LABEL_26:
        v43[6] = 10;
        WORD4(v41) = 25966;
        *&v41 = *"CenterLine";
        v15 = &v41 + 10;
        goto LABEL_27;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_26;
      }
    }
  }

  v24 = sub_74700();
  if (sub_74244(v24) == 2 && (v25 = sub_74700(), *sub_7424C(v25)) && (v26 = sub_74700(), v27 = sub_7424C(v26), !*(*v27 + *(**v27 - 24) + 32)))
  {
    v31 = sub_74700();
    v32 = *sub_7424C(v31);
    sub_5E354(v45, __p);
    sub_5F104(v32, __p);
    v33 = v39;
    if (v39)
    {
      do
      {
        v34 = *v33;
        v35 = *(v33 + 12);
        if (v35 != -1)
        {
          (off_26749B8[v35])(&v44, v33 + 5);
        }

        *(v33 + 12) = -1;
        if (*(v33 + 39) < 0)
        {
          operator delete(v33[2]);
        }

        operator delete(v33);
        v33 = v34;
      }

      while (v34);
    }
  }

  else
  {
    sub_5E354(v45, __p);
    sub_5F104(&std::cout, __p);
    v28 = v39;
    if (v39)
    {
      do
      {
        v29 = *v28;
        v30 = *(v28 + 12);
        if (v30 != -1)
        {
          (off_26749B8[v30])(&v44, v28 + 5);
        }

        *(v28 + 12) = -1;
        if (*(v28 + 39) < 0)
        {
          operator delete(v28[2]);
        }

        operator delete(v28);
        v28 = v29;
      }

      while (v29);
    }
  }

  v36 = __p[0];
  __p[0] = 0;
  if (v36)
  {
    operator delete(v36);
  }

  return sub_3DB9A4(v45);
}

void sub_F5E788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_5C010(va);
  sub_3DB9A4(v30 - 184);
  _Unwind_Resume(a1);
}

void sub_F5E7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a65 = __p;
    operator delete(__p);
  }

  sub_1959728(&a31);
  if (a66)
  {
    a67 = a66;
    operator delete(a66);
  }

  if (a69 < 0)
  {
    operator delete(a68);
    if ((*(v69 - 217) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v69 - 217) & 0x80000000) == 0)
  {
LABEL_7:
    v71 = *(v69 - 208);
    if (!v71)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  operator delete(*(v69 - 240));
  v71 = *(v69 - 208);
  if (!v71)
  {
LABEL_9:
    sub_3DB9A4(v69 - 184);
    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v69 - 200) = v71;
  operator delete(v71);
  goto LABEL_9;
}

void sub_F5EA44(void *result, uint64_t **a2)
{
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = result[5];
  v7 = *result == result[4] && v3 == v6;
  if (!v7 || v4 != result[6])
  {
    v8 = v3 + 1;
    while (v4 != v8)
    {
      v9 = *(*v5 + 8 * v8++);
      if (v9 != -1)
      {
        v10 = v8 - 1;
        v11 = v8 - 1 == v6 && *result == result[4];
        if (v11 && v4 == result[6])
        {
          return;
        }

        goto LABEL_19;
      }
    }

    v10 = result[2];
    v12 = v4 == v6 && *result == result[4];
    if (v12 && v4 == result[6])
    {
      return;
    }

LABEL_19:
    if (v4 != result[6] || *result != result[4])
    {
      while (1)
      {
        if (v3 + 1 == v10)
        {
          goto LABEL_25;
        }

LABEL_23:
        v13 = **a2;
        v14 = *(v13 + 8 * v3);
        v15 = *(v13 + 8 * v10);
        if (v14 != v15)
        {
          sub_F5F580(a2[1], a2[2], a2[3], v14, v15 + 1);
        }

LABEL_25:
        v16 = v10 + 1;
        do
        {
          if (v4 == v16)
          {
            v10 = v4;
            goto LABEL_30;
          }

          v17 = *(*v5 + 8 * v16++);
        }

        while (v17 == -1);
        v10 = v16 - 1;
LABEL_30:
        v18 = v3 + 1;
        while (v4 != v18)
        {
          v19 = *(*v5 + 8 * v18++);
          if (v19 != -1)
          {
            v3 = v18 - 1;
            if (v18 == v10)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }

        v3 = v4;
      }
    }

    do
    {
LABEL_36:
      if (v3 + 1 != v10)
      {
        v20 = **a2;
        v21 = *(v20 + 8 * v3);
        v22 = *(v20 + 8 * v10);
        if (v21 != v22)
        {
          sub_F5F580(a2[1], a2[2], a2[3], v21, v22 + 1);
        }
      }

      v23 = v10 + 1;
      while (v4 != v23)
      {
        v24 = *(*v5 + 8 * v23++);
        if (v24 != -1)
        {
          v10 = v23 - 1;
          goto LABEL_44;
        }
      }

      v10 = v4;
LABEL_44:
      v25 = v3 + 1;
      do
      {
        if (v4 == v25)
        {
          v3 = v4;
          if (v10 == v6)
          {
            return;
          }

          goto LABEL_36;
        }

        v26 = *(*v5 + 8 * v25++);
      }

      while (v26 == -1);
      v3 = v25 - 1;
    }

    while (v10 != v6);
  }
}

void sub_F5EC28(uint64_t a1, unsigned int **a2, char **a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * (v3 - *a2) >= 2)
  {
    v5 = v4[2];
    if (v4 == v3)
    {
LABEL_11:
      v9 = a3[1] - *a3;
      if (v9)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
        v11 = 8;
        do
        {
          *&(*a3)[v11] = v5;
          v11 += 12;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v6 = *(v3 - 1);
      v7 = *a2;
      while (v7[2] != 0x7FFFFFFF)
      {
        v7 += 3;
        if (v7 == v3)
        {
          v8 = *a2;
          do
          {
            if (*v8 != *v4 || v8[1] != v4[1] || v8[2] != v5)
            {
              operator new();
            }

            v8 += 3;
          }

          while (v8 != v3);
          goto LABEL_11;
        }
      }

      *(*a3 + 2) = v5;
      if (v5 == 0x7FFFFFFF)
      {
        v12 = v6;
      }

      else
      {
        v12 = v5;
      }

      v13 = a3[1];
      v14 = (v13 - *a3) >> 2;
      v15 = 0xAAAAAAAAAAAAAAABLL * v14 - 1;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * v14 - 1;
      }

      if (v15 >= 2)
      {
        v17 = v16 - 1;
        v18 = 20;
        do
        {
          *&(*a3)[v18] = v12;
          v18 += 12;
          --v17;
        }

        while (v17);
        v13 = a3[1];
      }

      *(v13 - 1) = v6;
    }
  }
}

void sub_F5F4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_F5F580(uint64_t *a1, void *a2, void *a3, unint64_t a4, unint64_t a5)
{
  if (a4 != a5)
  {
    v6 = a4;
    sub_F56650(a3, a4);
    nullsub_1();
    sub_F56650(a3, a5 - 1);
    nullsub_1();
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v179[0] = 0;
    v179[1] = 0;
    v180 = 0;
    if (v6 <= a5)
    {
      v8 = a5;
    }

    else
    {
      v8 = v6;
    }

    v160 = v8;
    if (v6 >= a5)
    {
      goto LABEL_204;
    }

    v163 = a3;
    while (1)
    {
      v9 = *a1;
      v10 = sub_4D1F50(a2, v6);
      sub_2B7A20(v9, (((*(v10 + 36) & 0x20000000) << 19) | (*(v10 + 36) << 32) | *(v10 + 32)) ^ 0x1000000000000, &v175);
      sub_31C60C(&v175, &v165);
      if (v178)
      {
        if (__p == v177)
        {
          v11 = 0;
        }

        else
        {
          v11 = -1;
        }

        LODWORD(v12) = v11;
        v13 = v173;
        v164 = v11;
        if (v172 != v11 || v173 != v11)
        {
          break;
        }

        goto LABEL_168;
      }

      if (__p != v177)
      {
        v15 = *(v177 - 1);
        v16 = sub_2B4D24(v175, v15, 0);
        v17 = &v16[*&v16[-*v16 + 4]];
        v18 = &v17[4 * HIDWORD(v15) + *v17];
        v19 = (v18 + 4 + *(v18 + 4));
        v12 = (v177 - __p) >> 3;
        v20 = (v19 + *(v19 - *v19 + 6));
        v13 = v173;
        v164 = *(v20 + *v20);
        if (v172 != v12 || v173 != *(v20 + *v20))
        {
          break;
        }

        goto LABEL_168;
      }

      LODWORD(v12) = 0;
      v13 = v173;
      v164 = 0;
      if (v172 || v173 != 0)
      {
        break;
      }

LABEL_168:
      sub_F56650(v163, v6);
      nullsub_1();
      v119 = *v118;
      v120 = *(v118 + 8);
      if (*v118 != v120)
      {
        v121 = v179[1];
        do
        {
          v122.i64[0] = *v119;
          v122.i64[1] = HIDWORD(*v119);
          v123 = vcvtq_f64_u64(v122);
          if (v121 < v180)
          {
            *v121++ = v123;
          }

          else
          {
            v124 = v179[0];
            v125 = v121 - v179[0];
            v126 = (v121 - v179[0]) >> 4;
            v127 = v126 + 1;
            if ((v126 + 1) >> 60)
            {
              sub_1794();
            }

            v128 = v180 - v179[0];
            if ((v180 - v179[0]) >> 3 > v127)
            {
              v127 = v128 >> 3;
            }

            if (v128 >= 0x7FFFFFFFFFFFFFF0)
            {
              v129 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v129 = v127;
            }

            if (v129)
            {
              if (!(v129 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v130 = (v121 - v179[0]) >> 4;
            v131 = (16 * v126);
            v132 = (16 * v126 - 16 * v130);
            *v131 = v123;
            v121 = v131 + 1;
            memcpy(v132, v124, v125);
            v179[0] = v132;
            v179[1] = v121;
            v180 = 0;
            if (v124)
            {
              operator delete(v124);
            }
          }

          v179[1] = v121;
          v119 = (v119 + 12);
        }

        while (v119 != v120);
      }

      v133 = sub_F56650(v163, v6);
      sub_F54F0C(v133);
      if (__p)
      {
        v177 = __p;
        operator delete(__p);
      }

      if (++v6 == v160)
      {
        v134 = v179[1];
        if (v179[0] != v179[1])
        {
          v135 = (v179[0] - 16);
          do
          {
            if (v135 + 4 == v179[1])
            {
              goto LABEL_204;
            }

            v136 = v135[2];
            v135 += 2;
          }

          while (v136 != v135[2] || v135[1] != v135[3]);
          for (i = v135 + 4; i != v134; i += 2)
          {
            if (*v135 != *i || v135[1] != i[1])
            {
              *(v135 + 1) = *i;
              v135 += 2;
            }
          }

          if (v135 + 2 != v134)
          {
            v179[1] = v135 + 2;
          }
        }

LABEL_204:
        sub_3C188(&v165, &v184, v179, 0);
      }
    }

    v23 = v168;
    while (1)
    {
      v24 = &v23[2 * v13];
      v25 = v24[2];
      v26 = v24[3];
      v27 = sub_57A90(v170);
      v28 = v170 & ~(-1 << (v27 & 0xFE));
      v29 = sub_581D8(v28);
      v30 = sub_581D8(v28 >> 1);
      v31 = 1 << -(v27 >> 1);
      if (v27 < 2)
      {
        v31 = -2;
      }

      if ((v30 * v31 + 4 * v26) >= 0xFFFFFFFE)
      {
        v32 = -2;
      }

      else
      {
        v32 = v30 * v31 + 4 * v26;
      }

      v33 = v29 * v31 + 4 * v25;
      v34 = v185;
      if (v185 >= v186)
      {
        v43 = v184;
        v44 = v185 - v184;
        v45 = (v185 - v184) >> 4;
        v46 = v45 + 1;
        if ((v45 + 1) >> 60)
        {
          sub_1794();
        }

        v47 = v186 - v184;
        if ((v186 - v184) >> 3 > v46)
        {
          v46 = v47 >> 3;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          if (!(v48 >> 60))
          {
            operator new();
          }

LABEL_235:
          sub_1808();
        }

        v77 = (16 * v45);
        *v77 = v33;
        v77[1] = v32;
        memcpy(0, v43, v44);
        v184 = 0;
        v185 = (16 * v45 + 16);
        v186 = 0;
        if (v43)
        {
          operator delete(v43);
        }

        v185 = (16 * v45 + 16);
        v36 = v182;
        v35 = v183;
        if (v182 >= v183)
        {
LABEL_103:
          v78 = v181;
          v79 = v36 - v181;
          v80 = (v36 - v181) >> 3;
          v81 = v80 + 1;
          if ((v80 + 1) >> 61)
          {
            sub_1794();
          }

          v82 = v35 - v181;
          if (v82 >> 2 > v81)
          {
            v81 = v82 >> 2;
          }

          if (v82 >= 0x7FFFFFFFFFFFFFF8)
          {
            v83 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v83 = v81;
          }

          if (v83)
          {
            if (!(v83 >> 61))
            {
              operator new();
            }

            goto LABEL_235;
          }

          v84 = (v36 - v181) >> 3;
          v85 = (8 * v80);
          v86 = (8 * v80 - 8 * v84);
          *v85 = v6;
          v87 = v85 + 1;
          memcpy(v86, v78, v79);
          v181 = v86;
          v182 = v87;
          v183 = 0;
          if (v78)
          {
            operator delete(v78);
          }

          v182 = v87;
          v37 = v173;
          if (v174)
          {
LABEL_40:
            v13 = v37 - 1;
            v173 = v37 - 1;
            v23 = v168;
            if ((v37 - 1) < *v168)
            {
              v38 = (v168 + 4 * v37 + 4);
              v39 = (v168 + 4 * v13 + 4);
              if (*v38 != *v39)
              {
                goto LABEL_30;
              }

              if (v38[1] != v39[1])
              {
                goto LABEL_30;
              }

              v40 = *v166;
              v41 = v166[1] - *v166;
              if (*v168 == 2 && v41 == 8)
              {
                goto LABEL_30;
              }

              v13 = v37 - 2;
              v42 = --v172;
              v173 = v13;
              if (v172 >= (v41 >> 3))
              {
                goto LABEL_30;
              }

LABEL_57:
              while (2)
              {
                v50 = *(v40 + 8 * v42);
                v170 = v50;
                v51 = v165;
                v189 = 0;
                v190 = v50;
                v187 = &v189;
                v188 = &v190;
                v52 = *(v165 + 482) + 1;
                *(v165 + 482) = v52;
                if (!*v51)
                {
                  exception = __cxa_allocate_exception(0x40uLL);
                  v193 = *v188;
                  v191 = sub_7FCF0(1u);
                  v192 = v141;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v191, &v194);
                  if ((v196 & 0x80u) == 0)
                  {
                    v142 = &v194;
                  }

                  else
                  {
                    v142 = v194;
                  }

                  if ((v196 & 0x80u) == 0)
                  {
                    v143 = v196;
                  }

                  else
                  {
                    v143 = v195;
                  }

                  v144 = sub_2D390(exception, v142, v143);
                }

                if (*(v51 + 28) == v50)
                {
                  ++v51[483];
                  v51[15] = v52;
                  v53 = v51[16];
                  if (!v53)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_80;
                }

                v54 = (v51 + 17);
                if (*(v51 + 34) == v50)
                {
LABEL_62:
                  ++v51[483];
                  *(v54 + 1) = v52;
                  v53 = *(v54 + 2);
                  if (!v53)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_80;
                }

                if (*(v51 + 40) == v50)
                {
                  ++v51[483];
                  v51[21] = v52;
                  v53 = v51[22];
                  if (!v53)
                  {
LABEL_213:
                    v145 = __cxa_allocate_exception(0x40uLL);
                    v193 = *v188;
                    v191 = sub_7FCF0(1u);
                    v192 = v146;
                    sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v191, &v194);
                    if ((v196 & 0x80u) == 0)
                    {
                      v147 = &v194;
                    }

                    else
                    {
                      v147 = v194;
                    }

                    if ((v196 & 0x80u) == 0)
                    {
                      v148 = v196;
                    }

                    else
                    {
                      v148 = v195;
                    }

                    v149 = sub_2D390(v145, v147, v148);
                  }

LABEL_80:
                  v63 = (v53 + *v53);
                  v64 = (v63 - *v63);
                  if (*v64 >= 7u)
                  {
LABEL_81:
                    v65 = v64[3];
                    if (v65)
                    {
                      LODWORD(v65) = *(v63 + v65);
                    }

                    v171 = v65;
                    v66 = (v63 - *v63);
                    if (*v66 >= 5u)
                    {
LABEL_87:
                      v67 = v66[2];
                      if (v67)
                      {
                        v68 = v63 + v67 + *(v63 + v67);
                        goto LABEL_90;
                      }
                    }

LABEL_89:
                    v68 = 0;
LABEL_90:
                    v69 = &v68[4 * HIDWORD(v50) + 4 + *&v68[4 * HIDWORD(v50) + 4]];
                    v167 = v69;
                    v70 = &v69[-*v69];
                    v71 = *v70;
                    v23 = *(v70 + 3);
                    if (*(v70 + 3))
                    {
                      v23 = (v23 + v69 + *(v23 + v69));
                    }

                    v168 = v23;
                    if (v71 >= 0xB && (v72 = *(v70 + 5)) != 0)
                    {
                      v73 = &v69[v72 + *&v69[v72]];
                    }

                    else
                    {
                      v73 = 0;
                    }

                    v169 = v73;
                    v74 = *v23;
                    v13 = *v23 - 2;
                    v173 = v13;
                    v75 = &v23[2 * (v74 - 1) + 2];
                    v76 = &v23[2 * v13 + 2];
                    if (*v75 != *v76)
                    {
                      goto LABEL_30;
                    }

                    if (v75[1] != v76[1])
                    {
                      goto LABEL_30;
                    }

                    v13 = v74 - 3;
                    v42 = --v172;
                    v173 = v13;
                    v40 = *v166;
                    if (v172 >= ((v166[1] - *v166) >> 3))
                    {
                      goto LABEL_30;
                    }

                    continue;
                  }
                }

                else
                {
                  v54 = (v51 + 23);
                  if (*(v51 + 46) == v50)
                  {
                    goto LABEL_62;
                  }

                  v55 = v51[21];
                  v56 = v51[18];
                  v57 = v51[15];
                  v58 = v51[24];
                  v53 = sub_2D52A4(*v51, 1, v50, 1);
                  if (v57 >= v52)
                  {
                    v59 = v52;
                  }

                  else
                  {
                    v59 = v57;
                  }

                  v60 = v56 >= v59;
                  if (v56 < v59)
                  {
                    v59 = v56;
                  }

                  v61 = 4 * (v57 < v52);
                  if (!v60)
                  {
                    v61 = 5;
                  }

                  if (v55 < v59)
                  {
                    v61 = 6;
                    v59 = v55;
                  }

                  if (v58 < v59)
                  {
                    v61 = 7;
                  }

                  v62 = &v51[3 * v61 + 2];
                  *v62 = v190;
                  *(v62 + 8) = v51[482];
                  *(v62 + 16) = v53;
                  if (v53)
                  {
                    goto LABEL_80;
                  }

                  sub_2B572C(&v187);
                  v63 = 0;
                  v64 = (&loc_1120530 + 1);
                  if (*(&loc_1120530 + 1) >= 7u)
                  {
                    goto LABEL_81;
                  }
                }

                break;
              }

              v171 = 0;
              v66 = (v63 - *v63);
              if (*v66 >= 5u)
              {
                goto LABEL_87;
              }

              goto LABEL_89;
            }

            v40 = *v166;
            v49 = v166[1] - *v166;
            v42 = --v172;
            if (v172 < (v49 >> 3))
            {
              goto LABEL_57;
            }

LABEL_30:
            if (v172 != v12)
            {
              continue;
            }

            goto LABEL_31;
          }

          goto LABEL_115;
        }
      }

      else
      {
        *v185 = v33;
        v34[1] = v32;
        v185 = v34 + 2;
        v36 = v182;
        v35 = v183;
        if (v182 >= v183)
        {
          goto LABEL_103;
        }
      }

      *v36 = v6;
      v182 = v36 + 1;
      v37 = v173;
      if (v174)
      {
        goto LABEL_40;
      }

LABEL_115:
      v13 = v37 + 1;
      v173 = v37 + 1;
      v23 = v168;
      if ((v37 + 1) >= *v168)
      {
        v90 = *v166;
        v93 = v166[1] - *v166;
        v92 = ++v172;
        if (v172 < (v93 >> 3))
        {
          goto LABEL_123;
        }

        goto LABEL_30;
      }

      v88 = (v168 + 4 * v37 + 4);
      v89 = (v168 + 4 * v13 + 4);
      if (*v88 != *v89)
      {
        goto LABEL_30;
      }

      if (v88[1] != v89[1])
      {
        goto LABEL_30;
      }

      v90 = *v166;
      v91 = v166[1] - *v166;
      if (*v168 == 2 && v91 == 8)
      {
        goto LABEL_30;
      }

      v13 = v37 + 2;
      v92 = ++v172;
      v173 = v13;
      if (v172 >= (v91 >> 3))
      {
        goto LABEL_30;
      }

      while (1)
      {
LABEL_123:
        v94 = *(v90 + 8 * v92);
        v170 = v94;
        v95 = v165;
        v189 = 0;
        v190 = v94;
        v187 = &v189;
        v188 = &v190;
        v96 = *(v165 + 482) + 1;
        *(v165 + 482) = v96;
        if (!*v95)
        {
          v150 = __cxa_allocate_exception(0x40uLL);
          v193 = *v188;
          v191 = sub_7FCF0(1u);
          v192 = v151;
          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v191, &v194);
          if ((v196 & 0x80u) == 0)
          {
            v152 = &v194;
          }

          else
          {
            v152 = v194;
          }

          if ((v196 & 0x80u) == 0)
          {
            v153 = v196;
          }

          else
          {
            v153 = v195;
          }

          v154 = sub_2D390(v150, v152, v153);
        }

        if (*(v95 + 28) == v94)
        {
          ++v95[483];
          v95[15] = v96;
          v97 = v95[16];
          if (!v97)
          {
            goto LABEL_227;
          }

          goto LABEL_146;
        }

        v98 = (v95 + 17);
        if (*(v95 + 34) == v94)
        {
          goto LABEL_128;
        }

        if (*(v95 + 40) == v94)
        {
          ++v95[483];
          v95[21] = v96;
          v97 = v95[22];
          if (!v97)
          {
LABEL_227:
            v155 = __cxa_allocate_exception(0x40uLL);
            v193 = *v188;
            v191 = sub_7FCF0(1u);
            v192 = v156;
            sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v191, &v194);
            if ((v196 & 0x80u) == 0)
            {
              v157 = &v194;
            }

            else
            {
              v157 = v194;
            }

            if ((v196 & 0x80u) == 0)
            {
              v158 = v196;
            }

            else
            {
              v158 = v195;
            }

            v159 = sub_2D390(v155, v157, v158);
          }

LABEL_146:
          v107 = (v97 + *v97);
          v108 = (v107 - *v107);
          if (*v108 < 7u)
          {
            goto LABEL_152;
          }

          goto LABEL_147;
        }

        v98 = (v95 + 23);
        if (*(v95 + 46) == v94)
        {
LABEL_128:
          ++v95[483];
          *(v98 + 1) = v96;
          v97 = *(v98 + 2);
          if (!v97)
          {
            goto LABEL_227;
          }

          goto LABEL_146;
        }

        v99 = v95[21];
        v100 = v95[18];
        v101 = v95[15];
        v102 = v95[24];
        v97 = sub_2D52A4(*v95, 1, v94, 1);
        if (v101 >= v96)
        {
          v103 = v96;
        }

        else
        {
          v103 = v101;
        }

        v104 = v100 >= v103;
        if (v100 < v103)
        {
          v103 = v100;
        }

        v105 = 4 * (v101 < v96);
        if (!v104)
        {
          v105 = 5;
        }

        if (v99 < v103)
        {
          v105 = 6;
          v103 = v99;
        }

        if (v102 < v103)
        {
          v105 = 7;
        }

        v106 = &v95[3 * v105 + 2];
        *v106 = v190;
        *(v106 + 8) = v95[482];
        *(v106 + 16) = v97;
        if (v97)
        {
          goto LABEL_146;
        }

        sub_2B572C(&v187);
        v107 = 0;
        v108 = (&loc_1120530 + 1);
        if (*(&loc_1120530 + 1) < 7u)
        {
LABEL_152:
          v171 = 0;
          v110 = (v107 - *v107);
          if (*v110 < 5u)
          {
            goto LABEL_155;
          }

          goto LABEL_153;
        }

LABEL_147:
        v109 = v108[3];
        if (v109)
        {
          LODWORD(v109) = *(v107 + v109);
        }

        v171 = v109;
        v110 = (v107 - *v107);
        if (*v110 < 5u)
        {
          goto LABEL_155;
        }

LABEL_153:
        v111 = v110[2];
        if (v111)
        {
          v112 = v107 + v111 + *(v107 + v111);
          goto LABEL_156;
        }

LABEL_155:
        v112 = 0;
LABEL_156:
        v113 = &v112[4 * HIDWORD(v94) + 4 + *&v112[4 * HIDWORD(v94) + 4]];
        v167 = v113;
        v114 = &v113[-*v113];
        v115 = *v114;
        v23 = *(v114 + 3);
        if (*(v114 + 3))
        {
          v23 = (v23 + v113 + *(v23 + v113));
        }

        v168 = v23;
        if (v115 >= 0xB && (v116 = *(v114 + 5)) != 0)
        {
          v117 = &v113[v116 + *&v113[v116]];
        }

        else
        {
          v117 = 0;
        }

        v169 = v117;
        v13 = 1;
        v173 = 1;
        if (v23[2] != v23[4])
        {
          goto LABEL_30;
        }

        if (v23[3] != v23[5])
        {
          break;
        }

        v13 = 2;
        v92 = ++v172;
        v173 = 2;
        v90 = *v166;
        if (v172 >= ((v166[1] - *v166) >> 3))
        {
          goto LABEL_30;
        }
      }

      v13 = 1;
      if (v172 != v12)
      {
        continue;
      }

LABEL_31:
      if (v13 == v164)
      {
        goto LABEL_168;
      }
    }
  }
}

void sub_F605D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  sub_3C214(&a15);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
    v40 = *(v38 - 208);
    if (!v40)
    {
LABEL_3:
      v41 = *(v38 - 184);
      if (!v41)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v40 = *(v38 - 208);
    if (!v40)
    {
      goto LABEL_3;
    }
  }

  *(v38 - 200) = v40;
  operator delete(v40);
  v41 = *(v38 - 184);
  if (!v41)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v38 - 176) = v41;
  operator delete(v41);
  _Unwind_Resume(a1);
}

void sub_F60708(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (!a1)
  {
    a2[23] = 0;
    *a2 = 0;
    return;
  }

  v3 = a1;
  sub_19594F8(&v7);
  v18 = 40;
  sub_4A5C(&v7, &v18, 1);
  if (v3)
  {
    sub_4A5C(&v7, " Shifted", 8);
  }

  if ((v3 & 2) != 0)
  {
    sub_4A5C(&v7, " Bezier Curve", 13);
  }

  v18 = 41;
  sub_4A5C(&v7, &v18, 1);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    v6 = __src;
    v4 = v5 - __src;
    if (v5 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }

LABEL_13:
    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      memmove(a2, v6, v4);
    }

    goto LABEL_18;
  }

  if ((v17 & 8) != 0)
  {
    v6 = v10;
    v4 = v11 - v10;
    if ((v11 - v10) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v4 = 0;
  a2[23] = 0;
LABEL_18:
  a2[v4] = 0;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v9);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_F60B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F60B30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = **a1;
  v5 = sub_4D1F50(*(a1 + 8), *a3);
  sub_2B7A20(v4, *(v5 + 32) & 0xFFFFFFFFFFFFFFLL, v52);
  v6 = sub_31A76C(v52);
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  nullsub_1();
  v8 = *(v7 + 8);
  v10 = *(v8 - 12);
  v9 = (v8 - 12);
  v11 = *(a1 + 32);
  v12 = v10;
  LODWORD(v13) = v9[1];
  v14 = v13;
  LODWORD(v15) = *v11;
  LODWORD(v16) = v11[1];
  v17 = v15 - v10;
  v18 = v16 - v14;
  v19 = v17 * v17 + v18 * v18;
  if (v19 == 0.0)
  {
    goto LABEL_7;
  }

  v20 = -v19;
  if (v19 > 0.0)
  {
    v20 = v17 * v17 + v18 * v18;
  }

  if (v20 < 2.22044605e-16)
  {
LABEL_7:
    v21 = 0.0;
  }

  else
  {
    v21 = ((v6 - v12) * v17 + (HIDWORD(v6) - v14) * v18) / v19;
  }

  v22 = 1.0;
  if (v21 <= 1.0)
  {
    v22 = v21;
  }

  v23 = v21 < 0.0;
  v24 = 0.0;
  if (!v23)
  {
    v24 = v22;
  }

  v25 = sub_6EFC0(v9, v11, v24);
  v27 = v26;
  nullsub_1();
  v29 = v28;
  v30 = v28[1];
  v31 = v28[2];
  if (v30 >= v31)
  {
    v33 = *v28;
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v28) >> 2);
    v35 = v34 + 1;
    if (v34 + 1 > 0x1555555555555555)
    {
      goto LABEL_40;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 2);
    if (2 * v36 > v35)
    {
      v35 = 2 * v36;
    }

    if (v36 >= 0xAAAAAAAAAAAAAAALL)
    {
      v37 = 0x1555555555555555;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      if (v37 <= 0x1555555555555555)
      {
        operator new();
      }

LABEL_41:
      sub_1808();
    }

    v38 = 4 * ((v30 - *v28) >> 2);
    *v38 = v25;
    *(v38 + 8) = v27;
    v32 = 12 * v34 + 12;
    v39 = 12 * v34 - (v30 - v33);
    memcpy((v38 - (v30 - v33)), v33, v30 - v33);
    *v29 = v39;
    v29[1] = v32;
    v29[2] = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v30 = v25;
    *(v30 + 8) = v27;
    v32 = v30 + 12;
  }

  v29[1] = v32;
  nullsub_1();
  v41 = v40;
  v42 = v40[1];
  v43 = v40[2];
  if (v42 < v43)
  {
    *v42 = v25;
    *(v42 + 8) = v27;
    v44 = v42 + 12;
    goto LABEL_39;
  }

  v45 = *v40;
  v46 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *v40) >> 2);
  v47 = v46 + 1;
  if (v46 + 1 > 0x1555555555555555)
  {
LABEL_40:
    sub_1794();
  }

  v48 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v45) >> 2);
  if (2 * v48 > v47)
  {
    v47 = 2 * v48;
  }

  if (v48 >= 0xAAAAAAAAAAAAAAALL)
  {
    v49 = 0x1555555555555555;
  }

  else
  {
    v49 = v47;
  }

  if (v49)
  {
    if (v49 <= 0x1555555555555555)
    {
      operator new();
    }

    goto LABEL_41;
  }

  v50 = 4 * ((v42 - *v40) >> 2);
  *v50 = v25;
  *(v50 + 8) = v27;
  v44 = 12 * v46 + 12;
  v51 = (12 * v46 - (v42 - v45));
  memcpy(v51, v45, v42 - v45);
  *v41 = v51;
  v41[1] = v44;
  v41[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

LABEL_39:
  v41[1] = v44;
}

void sub_F60E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F60EB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = **a1;
  v5 = sub_4D1F50(*(a1 + 8), *a3);
  sub_2B7A20(v4, (((*(v5 + 36) & 0x20000000) << 19) | (*(v5 + 36) << 32) | *(v5 + 32)) ^ 0x1000000000000, v52);
  v6 = sub_31A76C(v52);
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  nullsub_1();
  v8 = *(v7 + 8);
  v10 = *(v8 - 12);
  v9 = (v8 - 12);
  v11 = *(a1 + 32);
  v12 = v10;
  LODWORD(v13) = v9[1];
  v14 = v13;
  LODWORD(v15) = *v11;
  LODWORD(v16) = v11[1];
  v17 = v15 - v10;
  v18 = v16 - v14;
  v19 = v17 * v17 + v18 * v18;
  if (v19 == 0.0)
  {
    goto LABEL_7;
  }

  v20 = -v19;
  if (v19 > 0.0)
  {
    v20 = v17 * v17 + v18 * v18;
  }

  if (v20 < 2.22044605e-16)
  {
LABEL_7:
    v21 = 0.0;
  }

  else
  {
    v21 = ((v6 - v12) * v17 + (HIDWORD(v6) - v14) * v18) / v19;
  }

  v22 = 1.0;
  if (v21 <= 1.0)
  {
    v22 = v21;
  }

  v23 = v21 < 0.0;
  v24 = 0.0;
  if (!v23)
  {
    v24 = v22;
  }

  v25 = sub_6EFC0(v9, v11, v24);
  v27 = v26;
  nullsub_1();
  v29 = v28;
  v30 = v28[1];
  v31 = v28[2];
  if (v30 >= v31)
  {
    v33 = *v28;
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v28) >> 2);
    v35 = v34 + 1;
    if (v34 + 1 > 0x1555555555555555)
    {
      goto LABEL_40;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 2);
    if (2 * v36 > v35)
    {
      v35 = 2 * v36;
    }

    if (v36 >= 0xAAAAAAAAAAAAAAALL)
    {
      v37 = 0x1555555555555555;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      if (v37 <= 0x1555555555555555)
      {
        operator new();
      }

LABEL_41:
      sub_1808();
    }

    v38 = 4 * ((v30 - *v28) >> 2);
    *v38 = v25;
    *(v38 + 8) = v27;
    v32 = 12 * v34 + 12;
    v39 = 12 * v34 - (v30 - v33);
    memcpy((v38 - (v30 - v33)), v33, v30 - v33);
    *v29 = v39;
    v29[1] = v32;
    v29[2] = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v30 = v25;
    *(v30 + 8) = v27;
    v32 = v30 + 12;
  }

  v29[1] = v32;
  nullsub_1();
  v41 = v40;
  v42 = v40[1];
  v43 = v40[2];
  if (v42 < v43)
  {
    *v42 = v25;
    *(v42 + 8) = v27;
    v44 = v42 + 12;
    goto LABEL_39;
  }

  v45 = *v40;
  v46 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *v40) >> 2);
  v47 = v46 + 1;
  if (v46 + 1 > 0x1555555555555555)
  {
LABEL_40:
    sub_1794();
  }

  v48 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v45) >> 2);
  if (2 * v48 > v47)
  {
    v47 = 2 * v48;
  }

  if (v48 >= 0xAAAAAAAAAAAAAAALL)
  {
    v49 = 0x1555555555555555;
  }

  else
  {
    v49 = v47;
  }

  if (v49)
  {
    if (v49 <= 0x1555555555555555)
    {
      operator new();
    }

    goto LABEL_41;
  }

  v50 = 4 * ((v42 - *v40) >> 2);
  *v50 = v25;
  *(v50 + 8) = v27;
  v44 = 12 * v46 + 12;
  v51 = (12 * v46 - (v42 - v45));
  memcpy(v51, v45, v42 - v45);
  *v41 = v51;
  v41[1] = v44;
  v41[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

LABEL_39:
  v41[1] = v44;
}

void sub_F61228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F61244(unint64_t *result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = result;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    result = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v28 = a2 - 24;
        v29 = *(a2 - 3);
        v30 = v29 == *result;
        if (v29 >= *result)
        {
          v31 = 1;
        }

        else
        {
          v31 = -1;
        }

        if (v30)
        {
          v32 = *(a2 - 2);
          v33 = result[1];
          v34 = v32 >= v33;
          v35 = v32 == v33;
          v31 = -1;
          if (v34)
          {
            v31 = 1;
          }

          if (v35)
          {
            v31 = 0;
          }
        }

        if (v31 < 0)
        {
          v109 = result[2];
          v106 = *result;
          v36 = *v28;
          result[2] = *(a2 - 1);
          *result = v36;
          *v28 = v106;
          *(a2 - 1) = v109;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      sub_F618C8(result, result + 3, result + 6);
      v37 = a2 - 24;
      v38 = *(a2 - 3);
      v39 = result[6];
      v40 = v38 == v39;
      if (v38 >= v39)
      {
        v41 = 1;
      }

      else
      {
        v41 = -1;
      }

      if (v40)
      {
        v42 = *(a2 - 2);
        v43 = result[7];
        v34 = v42 >= v43;
        v44 = v42 == v43;
        v41 = -1;
        if (v34)
        {
          v41 = 1;
        }

        if (v44)
        {
          v41 = 0;
        }
      }

      if (v41 < 0)
      {
        v45 = result[8];
        v46 = *(result + 3);
        v47 = *(a2 - 1);
        *(result + 3) = *v37;
        result[8] = v47;
        *v37 = v46;
        *(a2 - 1) = v45;
        v48 = result[6];
        v49 = result[3];
        v50 = v48 == v49;
        if (v48 >= v49)
        {
          v51 = 1;
        }

        else
        {
          v51 = -1;
        }

        if (v50)
        {
          v52 = result[7];
          v53 = result[4];
          v34 = v52 >= v53;
          v54 = v52 == v53;
          v51 = -1;
          if (v34)
          {
            v51 = 1;
          }

          if (v54)
          {
            v51 = 0;
          }
        }

        if (v51 < 0)
        {
          v55 = result[5];
          v56 = *(result + 3);
          *(result + 3) = *(result + 3);
          result[5] = result[8];
          *(result + 3) = v56;
          result[8] = v55;
          v57 = result[3];
          v58 = v57 == *result;
          if (v57 >= *result)
          {
            v59 = 1;
          }

          else
          {
            v59 = -1;
          }

          if (v58)
          {
            v60 = result[4];
            v61 = result[1];
            v34 = v60 >= v61;
            v62 = v60 == v61;
            v59 = -1;
            if (v34)
            {
              v59 = 1;
            }

            if (v62)
            {
              v59 = 0;
            }
          }

          if (v59 < 0)
          {
            v110 = result[2];
            v107 = *result;
            *result = *(result + 3);
            result[2] = result[5];
            *(result + 3) = v107;
            result[5] = v110;
          }
        }
      }

      return;
    }

    if (v13 == 5)
    {

      sub_F61A8C(result, result + 3, result + 6, result + 9, a2 - 3);
      return;
    }

LABEL_10:
    if (v12 <= 575)
    {
      v63 = (result + 3);
      v65 = result == a2 || v63 == a2;
      if (a5)
      {
        if (v65)
        {
          return;
        }

        v66 = 0;
        v67 = result;
        while (2)
        {
          v69 = v63;
          v70 = v67[3];
          if (v70 >= *v67)
          {
            v71 = 1;
          }

          else
          {
            v71 = -1;
          }

          if (v70 == *v67)
          {
            v72 = v67[4];
            v73 = v67[1];
            v74 = v72 == v73;
            if (v72 >= v73)
            {
              v75 = 1;
            }

            else
            {
              v75 = -1;
            }

            if (v74)
            {
              v75 = 0;
            }

            if (v75 < 0)
            {
              goto LABEL_111;
            }
          }

          else if (v71 < 0)
          {
LABEL_111:
            v76 = v67[4];
            v77 = v67[5];
            v78 = v66;
            do
            {
              v79 = result + v78;
              *(v79 + 24) = *(result + v78);
              *(v79 + 5) = *(result + v78 + 16);
              if (!v78)
              {
                v68 = result;
                goto LABEL_97;
              }

              v80 = *(v79 - 3);
              v81 = v70 == v80;
              if (v70 >= v80)
              {
                v82 = 1;
              }

              else
              {
                v82 = -1;
              }

              if (v81)
              {
                v83 = *(result + v78 - 16);
                v84 = v76 == v83;
                v82 = v76 >= v83 ? 1 : -1;
                if (v84)
                {
                  v82 = 0;
                }
              }

              v78 -= 24;
            }

            while (v82 < 0);
            v68 = (result + v78 + 24);
LABEL_97:
            *v68 = v70;
            v68[1] = v76;
            v68[2] = v77;
          }

          v63 = v69 + 24;
          v66 += 24;
          v67 = v69;
          if (v69 + 24 == a2)
          {
            return;
          }

          continue;
        }
      }

      if (v65)
      {
        return;
      }

      while (2)
      {
        v90 = v63;
        v91 = result[3];
        if (v91 >= *result)
        {
          v92 = 1;
        }

        else
        {
          v92 = -1;
        }

        if (v91 == *result)
        {
          v93 = result[4];
          v94 = result[1];
          v95 = v93 == v94;
          if (v93 >= v94)
          {
            v96 = 1;
          }

          else
          {
            v96 = -1;
          }

          if (v95)
          {
            v96 = 0;
          }

          if (v96 < 0)
          {
LABEL_149:
            v97 = result[4];
            v98 = result[5];
            v99 = v90;
            do
            {
              *v99 = *(v99 - 3);
              v99[2] = *(v99 - 1);
              v100 = *(v99 - 6);
              v101 = v91 == v100;
              if (v91 >= v100)
              {
                v102 = 1;
              }

              else
              {
                v102 = -1;
              }

              if (v101)
              {
                v103 = *(v99 - 5);
                v104 = v97 == v103;
                v102 = v97 >= v103 ? 1 : -1;
                if (v104)
                {
                  v102 = 0;
                }
              }

              v99 -= 3;
            }

            while (v102 < 0);
            *v99 = v91;
            v99[1] = v97;
            v99[2] = v98;
          }
        }

        else if (v92 < 0)
        {
          goto LABEL_149;
        }

        v63 = (v90 + 3);
        result = v90;
        if (v90 + 3 == a2)
        {
          return;
        }

        continue;
      }
    }

    if (v10 == 1)
    {
      if (result != a2)
      {
        v85 = (v13 - 2) >> 1;
        v86 = v85 + 1;
        v87 = &result[3 * v85];
        do
        {
          sub_F62440(result, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 3), v87);
          v87 -= 3;
          --v86;
        }

        while (v86);
        v88 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          sub_F625F0(result, a2, a3, v88);
          a2 -= 24;
        }

        while (v88-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &result[3 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      sub_F618C8(v15, result, a2 - 3);
      if (a5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_F618C8(result, v15, a2 - 3);
      v16 = 3 * v14;
      v17 = &result[3 * v14 - 3];
      sub_F618C8(result + 3, v17, a2 - 6);
      sub_F618C8(result + 6, &result[v16 + 3], a2 - 9);
      sub_F618C8(v17, v15, &result[v16 + 3]);
      v108 = result[2];
      v105 = *result;
      v18 = *v15;
      result[2] = v15[2];
      *result = v18;
      v15[2] = v108;
      *v15 = v105;
      if (a5)
      {
        goto LABEL_27;
      }
    }

    v19 = *(result - 3);
    v20 = v19 == *result;
    if (v19 >= *result)
    {
      v21 = 1;
    }

    else
    {
      v21 = -1;
    }

    if (v20)
    {
      v22 = *(result - 2);
      v23 = result[1];
      v24 = v22 == v23;
      v21 = v22 >= v23 ? 1 : -1;
      if (v24)
      {
        v21 = 0;
      }
    }

    if ((v21 & 0x80) == 0)
    {
      v9 = sub_F61D28(result, a2);
      goto LABEL_32;
    }

LABEL_27:
    v25 = sub_F61F04(result, a2);
    if ((v26 & 1) == 0)
    {
      goto LABEL_30;
    }

    v27 = sub_F620C0(result, v25);
    v9 = v25 + 3;
    if (sub_F620C0(v25 + 3, a2))
    {
      a4 = -v11;
      a2 = v25;
      if (v27)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v27)
    {
LABEL_30:
      sub_F61244(result, v25, a3, -v11, a5 & 1);
      v9 = v25 + 3;
LABEL_32:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  sub_F618C8(result, result + 3, a2 - 3);
}

uint64_t sub_F618C8(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = -1;
  if (*a2 >= *a1)
  {
    v4 = 1;
  }

  if (*a2 == *a1)
  {
    v5 = a2[1];
    v6 = a1[1];
    v7 = v5 >= v6;
    v8 = v5 == v6;
    v9 = -1;
    if (v7)
    {
      v9 = 1;
    }

    if (v8)
    {
      v4 = 0;
    }

    else
    {
      v4 = v9;
    }
  }

  v10 = *a3;
  v11 = -1;
  if (*a3 >= v3)
  {
    v11 = 1;
  }

  if ((v4 & 0x80) == 0)
  {
    if (v10 == v3)
    {
      v12 = a3[1];
      v13 = a2[1];
      v7 = v12 >= v13;
      v14 = v12 == v13;
      v15 = -1;
      if (v7)
      {
        v15 = 1;
      }

      if (v14)
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }
    }

    if ((v11 & 0x80) == 0)
    {
      return 0;
    }

    v31 = a2[2];
    v32 = *a2;
    v33 = a3[2];
    *a2 = *a3;
    a2[2] = v33;
    *a3 = v32;
    a3[2] = v31;
    if (*a2 >= *a1)
    {
      v34 = 1;
    }

    else
    {
      v34 = -1;
    }

    if (*a2 == *a1)
    {
      v35 = a2[1];
      v36 = a1[1];
      v7 = v35 >= v36;
      v37 = v35 == v36;
      v34 = -1;
      if (v7)
      {
        v34 = 1;
      }

      if (v37)
      {
        v34 = 0;
      }
    }

    if (v34 < 0)
    {
      v38 = a1[2];
      v39 = *a1;
      v40 = a2[2];
      *a1 = *a2;
      a1[2] = v40;
      *a2 = v39;
      a2[2] = v38;
    }

    return 1;
  }

  if (v10 == v3)
  {
    v17 = a3[1];
    v18 = a2[1];
    v7 = v17 >= v18;
    v19 = v17 == v18;
    v20 = -1;
    if (v7)
    {
      v20 = 1;
    }

    if (v19)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }
  }

  if ((v11 & 0x80) == 0)
  {
    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (*a3 >= *a2)
    {
      v24 = 1;
    }

    else
    {
      v24 = -1;
    }

    if (*a3 == *a2)
    {
      v25 = a3[1];
      v26 = a2[1];
      v7 = v25 >= v26;
      v27 = v25 == v26;
      v24 = -1;
      if (v7)
      {
        v24 = 1;
      }

      if (v27)
      {
        v24 = 0;
      }
    }

    if (v24 < 0)
    {
      v28 = a2[2];
      v29 = *a2;
      v30 = a3[2];
      *a2 = *a3;
      a2[2] = v30;
      *a3 = v29;
      a3[2] = v28;
      return 1;
    }

    return 1;
  }

  v41 = a1[2];
  v42 = *a1;
  v43 = a3[2];
  *a1 = *a3;
  a1[2] = v43;
  *a3 = v42;
  a3[2] = v41;
  return 1;
}

__n128 sub_F61A8C(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  sub_F618C8(a1, a2, a3);
  if (*a4 >= *a3)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  if (*a4 == *a3)
  {
    v12 = a4[1];
    v13 = a3[1];
    v14 = v12 >= v13;
    v15 = v12 == v13;
    v11 = -1;
    if (v14)
    {
      v11 = 1;
    }

    if (v15)
    {
      v11 = 0;
    }
  }

  if (v11 < 0)
  {
    v16 = a3[2];
    result = *a3;
    v17 = a4[2];
    *a3 = *a4;
    a3[2] = v17;
    *a4 = result;
    a4[2] = v16;
    if (*a3 >= *a2)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (*a3 == *a2)
    {
      v19 = a3[1];
      v20 = a2[1];
      v14 = v19 >= v20;
      v21 = v19 == v20;
      v18 = -1;
      if (v14)
      {
        v18 = 1;
      }

      if (v21)
      {
        v18 = 0;
      }
    }

    if (v18 < 0)
    {
      v22 = a2[2];
      result = *a2;
      v23 = a3[2];
      *a2 = *a3;
      a2[2] = v23;
      *a3 = result;
      a3[2] = v22;
      if (*a2 >= *a1)
      {
        v24 = 1;
      }

      else
      {
        v24 = -1;
      }

      if (*a2 == *a1)
      {
        v25 = a2[1];
        v26 = a1[1];
        v14 = v25 >= v26;
        v27 = v25 == v26;
        v24 = -1;
        if (v14)
        {
          v24 = 1;
        }

        if (v27)
        {
          v24 = 0;
        }
      }

      if (v24 < 0)
      {
        v28 = a1[2];
        result = *a1;
        v29 = a2[2];
        *a1 = *a2;
        a1[2] = v29;
        *a2 = result;
        a2[2] = v28;
      }
    }
  }

  if (*a5 >= *a4)
  {
    v30 = 1;
  }

  else
  {
    v30 = -1;
  }

  if (*a5 == *a4)
  {
    v31 = a5[1];
    v32 = a4[1];
    v14 = v31 >= v32;
    v33 = v31 == v32;
    v30 = -1;
    if (v14)
    {
      v30 = 1;
    }

    if (v33)
    {
      v30 = 0;
    }
  }

  if (v30 < 0)
  {
    v34 = a4[2];
    result = *a4;
    v35 = a5[2];
    *a4 = *a5;
    a4[2] = v35;
    *a5 = result;
    a5[2] = v34;
    if (*a4 >= *a3)
    {
      v36 = 1;
    }

    else
    {
      v36 = -1;
    }

    if (*a4 == *a3)
    {
      v37 = a4[1];
      v38 = a3[1];
      v14 = v37 >= v38;
      v39 = v37 == v38;
      v36 = -1;
      if (v14)
      {
        v36 = 1;
      }

      if (v39)
      {
        v36 = 0;
      }
    }

    if (v36 < 0)
    {
      v40 = a3[2];
      result = *a3;
      v41 = a4[2];
      *a3 = *a4;
      a3[2] = v41;
      *a4 = result;
      a4[2] = v40;
      if (*a3 >= *a2)
      {
        v42 = 1;
      }

      else
      {
        v42 = -1;
      }

      if (*a3 == *a2)
      {
        v43 = a3[1];
        v44 = a2[1];
        v14 = v43 >= v44;
        v45 = v43 == v44;
        v42 = -1;
        if (v14)
        {
          v42 = 1;
        }

        if (v45)
        {
          v42 = 0;
        }
      }

      if (v42 < 0)
      {
        v46 = a2[2];
        result = *a2;
        v47 = a3[2];
        *a2 = *a3;
        a2[2] = v47;
        *a3 = result;
        a3[2] = v46;
        if (*a2 >= *a1)
        {
          v48 = 1;
        }

        else
        {
          v48 = -1;
        }

        if (*a2 == *a1)
        {
          v49 = a2[1];
          v50 = a1[1];
          v14 = v49 >= v50;
          v51 = v49 == v50;
          v48 = -1;
          if (v14)
          {
            v48 = 1;
          }

          if (v51)
          {
            v48 = 0;
          }
        }

        if (v48 < 0)
        {
          v52 = a1[2];
          result = *a1;
          v53 = a2[2];
          *a1 = *a2;
          a1[2] = v53;
          *a2 = result;
          a2[2] = v52;
        }
      }
    }
  }

  return result;
}

unint64_t *sub_F61D28(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 24);
  v5 = *a1 == v4;
  if (*a1 >= v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    v7 = *(a2 - 16);
    v8 = v3 >= v7;
    v9 = v3 == v7;
    v6 = -1;
    if (v8)
    {
      v6 = 1;
    }

    if (v9)
    {
      v6 = 0;
    }
  }

  if (v6 < 0)
  {
    v15 = a1;
    v11 = a1;
    do
    {
      v16 = v11[3];
      v11 += 3;
      v17 = v2 == v16;
      if (v2 >= v16)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = v15[4];
        v20 = v3 == v19;
        if (v3 >= v19)
        {
          v21 = 1;
        }

        else
        {
          v21 = -1;
        }

        if (v20)
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }
      }

      v15 = v11;
    }

    while ((v18 & 0x80) == 0);
  }

  else
  {
    v10 = a1 + 3;
    do
    {
      v11 = v10;
      if (v10 >= a2)
      {
        break;
      }

      if (v2 >= *v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (v2 == *v10)
      {
        v13 = v10[1];
        v14 = v3 == v13;
        v12 = v3 >= v13 ? 1 : -1;
        if (v14)
        {
          v12 = 0;
        }
      }

      v10 += 3;
    }

    while ((v12 & 0x80) == 0);
  }

  if (v11 >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a2;
    do
    {
      v23 = *(v22 - 24);
      v22 -= 24;
      v24 = v2 == v23;
      if (v2 >= v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

      if (v24)
      {
        v26 = *(a2 - 16);
        v27 = v3 == v26;
        v25 = v3 >= v26 ? 1 : -1;
        if (v27)
        {
          v25 = 0;
        }
      }

      a2 = v22;
    }

    while (v25 < 0);
  }

  v28 = a1[2];
  while (v11 < v22)
  {
    v45 = v11[2];
    v44 = *v11;
    v29 = *v22;
    v11[2] = *(v22 + 16);
    *v11 = v29;
    *(v22 + 16) = v45;
    *v22 = v44;
    v30 = v11;
    do
    {
      v31 = v11[3];
      v11 += 3;
      v32 = v2 == v31;
      if (v2 >= v31)
      {
        v33 = 1;
      }

      else
      {
        v33 = -1;
      }

      if (v32)
      {
        v34 = v30[4];
        v35 = v3 == v34;
        v33 = v3 >= v34 ? 1 : -1;
        if (v35)
        {
          v33 = 0;
        }
      }

      v30 = v11;
    }

    while ((v33 & 0x80) == 0);
    v36 = v22;
    do
    {
      v37 = *(v22 - 24);
      v22 -= 24;
      v38 = v2 == v37;
      if (v2 >= v37)
      {
        v39 = 1;
      }

      else
      {
        v39 = -1;
      }

      if (v38)
      {
        v40 = *(v36 - 16);
        v41 = v3 == v40;
        v39 = v3 >= v40 ? 1 : -1;
        if (v41)
        {
          v39 = 0;
        }
      }

      v36 = v22;
    }

    while (v39 < 0);
  }

  if (v11 - 3 != a1)
  {
    v42 = *(v11 - 3);
    a1[2] = *(v11 - 1);
    *a1 = v42;
  }

  *(v11 - 3) = v2;
  *(v11 - 2) = v3;
  *(v11 - 1) = v28;
  return v11;
}

unint64_t *sub_F61F04(unint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  do
  {
    v6 = a1[v2 + 3];
    v7 = v6 == v3;
    if (v6 >= v3)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (v7)
    {
      v9 = a1[v2 + 4];
      v10 = v9 == v4;
      v8 = v9 >= v4 ? 1 : -1;
      if (v10)
      {
        v8 = 0;
      }
    }

    v2 += 3;
  }

  while (v8 < 0);
  v11 = &a1[v2];
  if (v2 == 3)
  {
    while (v11 < a2)
    {
      v12 = a2 - 24;
      v18 = *(a2 - 24);
      v19 = v18 == v3;
      if (v18 >= v3)
      {
        v20 = 1;
      }

      else
      {
        v20 = -1;
      }

      if (v19)
      {
        v21 = *(a2 - 16);
        v22 = v21 == v4;
        v20 = v21 >= v4 ? 1 : -1;
        if (v22)
        {
          v20 = 0;
        }
      }

      a2 -= 24;
      if (v20 < 0)
      {
        goto LABEL_43;
      }
    }

    v12 = a2;
  }

  else
  {
    v12 = a2;
    do
    {
      v13 = *(v12 - 24);
      v12 -= 24;
      v14 = v13 == v3;
      if (v13 >= v3)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }

      if (v14)
      {
        v16 = *(a2 - 16);
        v17 = v16 == v4;
        v15 = v16 >= v4 ? 1 : -1;
        if (v17)
        {
          v15 = 0;
        }
      }

      a2 = v12;
    }

    while ((v15 & 0x80) == 0);
  }

LABEL_43:
  if (v11 >= v12)
  {
    v23 = &a1[v2];
  }

  else
  {
    v23 = &a1[v2];
    v24 = v12;
    do
    {
      v25 = *v23;
      v26 = v23[2];
      v27 = *(v24 + 16);
      *v23 = *v24;
      v23[2] = v27;
      *(v24 + 16) = v26;
      *v24 = v25;
      v28 = v23;
      do
      {
        v29 = v23[3];
        v23 += 3;
        v30 = v29 == v3;
        if (v29 >= v3)
        {
          v31 = 1;
        }

        else
        {
          v31 = -1;
        }

        if (v30)
        {
          v32 = v28[4];
          v33 = v32 == v4;
          v31 = v32 >= v4 ? 1 : -1;
          if (v33)
          {
            v31 = 0;
          }
        }

        v28 = v23;
      }

      while (v31 < 0);
      v34 = v24;
      do
      {
        v35 = *(v24 - 24);
        v24 -= 24;
        v36 = v35 == v3;
        if (v35 >= v3)
        {
          v37 = 1;
        }

        else
        {
          v37 = -1;
        }

        if (v36)
        {
          v38 = *(v34 - 16);
          v39 = v38 == v4;
          v37 = v38 >= v4 ? 1 : -1;
          if (v39)
          {
            v37 = 0;
          }
        }

        v34 = v24;
      }

      while ((v37 & 0x80) == 0);
    }

    while (v23 < v24);
  }

  if (v23 - 3 != a1)
  {
    v40 = *(v23 - 3);
    a1[2] = *(v23 - 1);
    *a1 = v40;
  }

  *(v23 - 3) = v3;
  *(v23 - 2) = v4;
  *(v23 - 1) = v5;
  return v23 - 3;
}

BOOL sub_F620C0(unint64_t *a1, unint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_F618C8(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        sub_F618C8(a1, a1 + 3, a1 + 6);
        v38 = a2 - 3;
        v39 = *(a2 - 3);
        v40 = a1[6];
        v41 = v39 == v40;
        if (v39 >= v40)
        {
          v42 = 1;
        }

        else
        {
          v42 = -1;
        }

        if (v41)
        {
          v43 = *(a2 - 2);
          v44 = a1[7];
          v9 = v43 >= v44;
          v45 = v43 == v44;
          v42 = -1;
          if (v9)
          {
            v42 = 1;
          }

          if (v45)
          {
            v42 = 0;
          }
        }

        if (v42 < 0)
        {
          v46 = a1[8];
          v47 = *(a1 + 3);
          v48 = *(a2 - 1);
          *(a1 + 3) = *v38;
          a1[8] = v48;
          *v38 = v47;
          *(a2 - 1) = v46;
          v49 = a1[6];
          v50 = a1[3];
          v51 = v49 == v50;
          if (v49 >= v50)
          {
            v52 = 1;
          }

          else
          {
            v52 = -1;
          }

          if (v51)
          {
            v53 = a1[7];
            v54 = a1[4];
            v9 = v53 >= v54;
            v55 = v53 == v54;
            v52 = -1;
            if (v9)
            {
              v52 = 1;
            }

            if (v55)
            {
              v52 = 0;
            }
          }

          if (v52 < 0)
          {
            v56 = a1[5];
            v57 = *(a1 + 3);
            *(a1 + 3) = *(a1 + 3);
            a1[5] = a1[8];
            *(a1 + 3) = v57;
            a1[8] = v56;
            v58 = a1[3];
            v59 = v58 == *a1;
            if (v58 >= *a1)
            {
              v60 = 1;
            }

            else
            {
              v60 = -1;
            }

            if (v59)
            {
              v61 = a1[4];
              v62 = a1[1];
              v9 = v61 >= v62;
              v63 = v61 == v62;
              v60 = -1;
              if (v9)
              {
                v60 = 1;
              }

              if (v63)
              {
                v60 = 0;
              }
            }

            if (v60 < 0)
            {
              v64 = a1[2];
              v65 = *a1;
              *a1 = *(a1 + 3);
              a1[2] = a1[5];
              *(a1 + 3) = v65;
              a1[5] = v64;
            }
          }
        }

        return 1;
      case 5:
        sub_F61A8C(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = a2 - 3;
      v4 = *(a2 - 3);
      v5 = v4 == *a1;
      if (v4 >= *a1)
      {
        v6 = 1;
      }

      else
      {
        v6 = -1;
      }

      if (v5)
      {
        v7 = *(a2 - 2);
        v8 = a1[1];
        v9 = v7 >= v8;
        v10 = v7 == v8;
        v6 = -1;
        if (v9)
        {
          v6 = 1;
        }

        if (v10)
        {
          v6 = 0;
        }
      }

      if (v6 < 0)
      {
        v11 = a1[2];
        v12 = *a1;
        v13 = *(a2 - 1);
        *a1 = *v3;
        a1[2] = v13;
        *v3 = v12;
        *(a2 - 1) = v11;
        return 1;
      }

      return 1;
    }
  }

  v15 = a1 + 6;
  sub_F618C8(a1, a1 + 3, a1 + 6);
  v18 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    v21 = *v18;
    if (*v18 >= *v15)
    {
      v22 = 1;
    }

    else
    {
      v22 = -1;
    }

    if (*v18 == *v15)
    {
      v23 = v18[1];
      v24 = v15[1];
      v25 = v23 == v24;
      v22 = v23 >= v24 ? 1 : -1;
      if (v25)
      {
        v22 = 0;
      }
    }

    if (v22 < 0)
    {
      break;
    }

LABEL_50:
    v15 = v18;
    v19 += 24;
    v18 += 3;
    if (v18 == a2)
    {
      return 1;
    }
  }

  v26 = v18[1];
  v27 = v18[2];
  v28 = v19;
  do
  {
    v29 = a1 + v28;
    *(v29 + 72) = *(a1 + v28 + 48);
    *(v29 + 11) = *(a1 + v28 + 64);
    if (v28 == -48)
    {
      *a1 = v21;
      a1[1] = v26;
      a1[2] = v27;
      if (++v20 != 8)
      {
        goto LABEL_50;
      }

      return v18 + 3 == a2;
    }

    v30 = *(v29 + 3);
    v31 = v21 == v30;
    if (v21 >= v30)
    {
      v32 = 1;
    }

    else
    {
      v32 = -1;
    }

    if (v31)
    {
      v33 = *(a1 + v28 + 32);
      v34 = v26 == v33;
      v32 = v26 >= v33 ? 1 : -1;
      if (v34)
      {
        v32 = 0;
      }
    }

    v28 -= 24;
  }

  while (v32 < 0);
  v35 = (a1 + v28);
  v35[9] = v21;
  v35[10] = v26;
  v35[11] = v27;
  if (++v20 != 8)
  {
    goto LABEL_50;
  }

  return v18 + 3 == a2;
}

uint64_t sub_F62440(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 24 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
      {
        v9 = v6[3];
        v10 = *v6 == v9;
        if (*v6 >= v9)
        {
          v11 = 1;
        }

        else
        {
          v11 = -1;
        }

        if (v10)
        {
          v12 = v6[1];
          v13 = v6[4];
          v14 = v12 >= v13;
          v15 = v12 == v13;
          v11 = -1;
          if (v14)
          {
            v11 = 1;
          }

          if (v15)
          {
            v11 = 0;
          }
        }

        if (v11 < 0)
        {
          v6 += 3;
          v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
        }

        v7 = *a4;
        if (*v6 >= *a4)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (*v6 != *a4)
        {
LABEL_8:
          if (v8 < 0)
          {
            return result;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v7 = *a4;
        if (*v6 >= *a4)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (*v6 != *a4)
        {
          goto LABEL_8;
        }
      }

      v16 = v6[1];
      v17 = a4[1];
      v14 = v16 >= v17;
      v18 = v16 == v17;
      v19 = -1;
      if (v14)
      {
        v19 = 1;
      }

      if (v18)
      {
        v19 = 0;
      }

      if ((v19 & 0x80) == 0)
      {
LABEL_32:
        v20 = a4[1];
        v21 = a4[2];
        while (1)
        {
          v22 = a4;
          a4 = v6;
          v23 = *v6;
          v22[2] = v6[2];
          *v22 = v23;
          if (v4 < v5)
          {
LABEL_64:
            *a4 = v7;
            a4[1] = v20;
            a4[2] = v21;
            return result;
          }

          v24 = (2 * v5) | 1;
          v6 = (result + 24 * v24);
          v5 = 2 * v5 + 2;
          if (v5 >= a3)
          {
            v5 = v24;
            if (*v6 >= v7)
            {
              v31 = 1;
            }

            else
            {
              v31 = -1;
            }

            if (*v6 != v7)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v25 = v6[3];
            v26 = *v6 == v25;
            if (*v6 >= v25)
            {
              v27 = 1;
            }

            else
            {
              v27 = -1;
            }

            if (v26)
            {
              v28 = v6[1];
              v29 = v6[4];
              v30 = v28 == v29;
              v27 = v28 >= v29 ? 1 : -1;
              if (v30)
              {
                v27 = 0;
              }
            }

            if (v27 < 0)
            {
              v6 += 3;
            }

            else
            {
              v5 = v24;
            }

            if (*v6 >= v7)
            {
              v31 = 1;
            }

            else
            {
              v31 = -1;
            }

            if (*v6 != v7)
            {
              goto LABEL_33;
            }
          }

          v32 = v6[1];
          v33 = v32 == v20;
          if (v32 >= v20)
          {
            v31 = 1;
          }

          else
          {
            v31 = -1;
          }

          if (v33)
          {
            v31 = 0;
          }

LABEL_33:
          if (v31 < 0)
          {
            goto LABEL_64;
          }
        }
      }
    }
  }

  return result;
}

unint64_t *sub_F625F0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v37 = *result;
    v38 = result[2];
    v5 = result;
    do
    {
      v7 = &v5[3 * v4];
      v8 = v7 + 3;
      v9 = (2 * v4) | 1;
      v4 = 2 * v4 + 2;
      if (v4 >= a4)
      {
        v4 = v9;
      }

      else
      {
        v10 = v7 + 6;
        v11 = v7[6];
        v12 = v7[3];
        v13 = v12 == v11;
        if (v12 >= v11)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        if (v13)
        {
          v15 = v7[4];
          v16 = v7[7];
          v17 = v15 == v16;
          if (v15 >= v16)
          {
            v18 = 1;
          }

          else
          {
            v18 = -1;
          }

          if (v17)
          {
            v14 = 0;
          }

          else
          {
            v14 = v18;
          }
        }

        if (v14 < 0)
        {
          v8 = v10;
        }

        else
        {
          v4 = v9;
        }
      }

      v6 = *v8;
      v5[2] = v8[2];
      *v5 = v6;
      v5 = v8;
    }

    while (v4 <= ((a4 - 2) >> 1));
    v19 = (a2 - 24);
    if (v8 == (a2 - 24))
    {
      v8[2] = v38;
      *v8 = v37;
    }

    else
    {
      v20 = *v19;
      v8[2] = *(a2 - 8);
      *v8 = v20;
      *v19 = v37;
      *(a2 - 8) = v38;
      v21 = v8 - result + 24;
      if (v21 >= 25)
      {
        v22 = (0xAAAAAAAAAAAAAAABLL * (v21 >> 3) - 2) >> 1;
        v23 = &result[3 * v22];
        v24 = *v8;
        if (*v23 >= *v8)
        {
          v25 = 1;
        }

        else
        {
          v25 = -1;
        }

        if (*v23 == *v8)
        {
          v26 = v23[1];
          v27 = v8[1];
          v28 = v26 >= v27;
          v29 = v26 == v27;
          v25 = -1;
          if (v28)
          {
            v25 = 1;
          }

          if (v29)
          {
            v25 = 0;
          }
        }

        if (v25 < 0)
        {
          v30 = v8[1];
          v31 = v8[2];
          do
          {
            v32 = v8;
            v8 = v23;
            v33 = *v23;
            v32[2] = v23[2];
            *v32 = v33;
            if (!v22)
            {
              break;
            }

            v22 = (v22 - 1) >> 1;
            v23 = &result[3 * v22];
            if (*v23 >= v24)
            {
              v34 = 1;
            }

            else
            {
              v34 = -1;
            }

            if (*v23 == v24)
            {
              v35 = v23[1];
              v36 = v35 == v30;
              if (v35 >= v30)
              {
                v34 = 1;
              }

              else
              {
                v34 = -1;
              }

              if (v36)
              {
                v34 = 0;
              }
            }
          }

          while (v34 < 0);
          *v8 = v24;
          v8[1] = v30;
          v8[2] = v31;
        }
      }
    }
  }

  return result;
}

void sub_F627B4()
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
  xmmword_27BF6E8 = 0u;
  unk_27BF6F8 = 0u;
  dword_27BF708 = 1065353216;
  sub_3A9A34(&xmmword_27BF6E8, v0, v0);
  sub_3A9A34(&xmmword_27BF6E8, v3, v3);
  sub_3A9A34(&xmmword_27BF6E8, __p, __p);
  sub_3A9A34(&xmmword_27BF6E8, v9, v9);
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
    qword_27BF6C0 = 0;
    qword_27BF6C8 = 0;
    qword_27BF6B8 = 0;
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

void sub_F629FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF6D0)
  {
    qword_27BF6D8 = qword_27BF6D0;
    operator delete(qword_27BF6D0);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_F62AA8(uint64_t a1)
{
  v2 = sub_45AC50(a1);
  v3 = sub_588D8(a1);
  if (v2 == v3)
  {
    return 1;
  }

  v5 = v3;
  do
  {
    v6 = sub_F63DFC(v2);
    if (!v6)
    {
      break;
    }

    v2 += 6;
  }

  while (v2 != v5);
  if (v6)
  {
    return 1;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v12);
    sub_4A5C(&v12, "Found inconsistent Path(s) in the PathSet.", 42);
    if ((v22 & 0x10) != 0)
    {
      v8 = v21;
      if (v21 < v18)
      {
        v21 = v18;
        v8 = v18;
      }

      v9 = v17;
      v7 = v8 - v17;
      if (v8 - v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((v22 & 8) == 0)
      {
        v7 = 0;
        v11 = 0;
LABEL_21:
        *(&__p + v7) = 0;
        sub_7E854(&__p, 1u);
        if (v11 < 0)
        {
          operator delete(__p);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }

        std::locale::~locale(&v14);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v9 = v15;
      v7 = v16 - v15;
      if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_27:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v11 = v7;
    if (v7)
    {
      memmove(&__p, v9, v7);
    }

    goto LABEL_21;
  }

  return result;
}

void sub_F62D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_F62DB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  do
  {
    result = sub_F62AA8(v1);
    if (!result)
    {
      break;
    }

    v1 += 24;
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_F62E04@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v14);
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      if (v8 != a1)
      {
        v9 = strlen(a3);
        sub_4A5C(&v14, a3, v9);
      }

      sub_F73208(&v14, __clz(__rbit64(v8)));
      v8 &= v8 - 1;
    }

    while (v8 != a2);
  }

  if ((v24 & 0x10) != 0)
  {
    v11 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v11 = v20;
    }

    v12 = v19;
    v10 = v11 - v19;
    if (v11 - v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_17;
    }

    v12 = v17;
    v10 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
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

LABEL_17:
  a4[v10] = 0;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v16);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_F63064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_F63078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_F6308C()
{
  byte_27BF757 = 3;
  LODWORD(qword_27BF740) = 5136193;
  byte_27BF76F = 3;
  LODWORD(qword_27BF758) = 5136194;
  byte_27BF787 = 3;
  LODWORD(qword_27BF770) = 5136195;
  byte_27BF79F = 15;
  strcpy(&qword_27BF788, "vehicle_mass_kg");
  byte_27BF7B7 = 21;
  strcpy(&xmmword_27BF7A0, "vehicle_cargo_mass_kg");
  byte_27BF7CF = 19;
  strcpy(&qword_27BF7B8, "vehicle_aux_power_w");
  byte_27BF7E7 = 15;
  strcpy(&qword_27BF7D0, "dcdc_efficiency");
  strcpy(&qword_27BF7E8, "drive_train_efficiency");
  HIBYTE(word_27BF7FE) = 22;
  operator new();
}

void sub_F63268(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BF7FE) < 0)
  {
    sub_21E54F8();
  }

  sub_21E5504();
  _Unwind_Resume(a1);
}

std::string *sub_F63288(std::string *a1, uint64_t *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  sub_49E958(a1, *a2, a2[1], 0xF128CFC4A33F128DLL * ((a2[1] - *a2) >> 3));
  sub_11814F8(a2, a1 + 1);
  return a1;
}

void *sub_F63300(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_11814F8(a1, a1 + 1);
  return a1;
}

void sub_F63360(void *a1, __int128 *a2)
{
  sub_49EA74(v3, a2);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_F6345C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 + 8) = v11;
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F6347C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F634A0(uint64_t *a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  *(a2 + 504) = 0;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_F636D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = v11;
  *(v10 + 8) = v12;
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F636FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F63748(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  sub_F65824(a1, v6);
  sub_F65908(a1, __p);
  sub_F659EC(a3, v6, __p, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_F637CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

__n128 sub_F63818@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F65BBC(a1, &v11);
  sub_F65CA0(a1, &v9);
  *a2 = 0;
  *(a2 + 8) = xmmword_2291230;
  v4 = v11;
  *(a2 + 24) = v11;
  v5 = v12;
  *(a2 + 32) = v12;
  v11 = 0;
  v12 = 0uLL;
  v6 = v9;
  *(a2 + 48) = v9;
  result.n128_u64[0] = v10;
  *(a2 + 56) = v10;
  v9 = 0;
  v10 = 0uLL;
  if (v4 != v5)
  {
    v8 = ((result.n128_u64[0] - v6) >> 4) - 1;
    *(a2 + 16) = v8;
    result = *&v6[2 * v8];
    *a2 = result;
  }

  return result;
}

void sub_F638CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F638E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F65D84(a1, &v17);
  result = sub_F65E68(a1, &v15);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = v16;
  v5 = v17;
  *(a2 + 16) = v17;
  v7 = v18;
  *(a2 + 24) = v18;
  v17 = 0;
  v18 = 0uLL;
  v8 = v15;
  *(a2 + 40) = v15;
  *(a2 + 56) = v6;
  v15 = 0uLL;
  v16 = 0;
  if (v5 != v7)
  {
    v9 = v7 - v5;
    v10 = v9 - 1;
    if (v9 == 1)
    {
      v11 = 0;
    }

    else
    {
      if (*v5 == *v8)
      {
        v11 = 0;
        v12 = v9 - 2;
        while (v12 != v11)
        {
          v13 = v5[v11 + 1];
          v14 = v8[++v11];
          if (v13 != v14)
          {
            goto LABEL_11;
          }
        }

        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

LABEL_11:
      *(a2 + 8) = v11;
    }

    *a2 = v5[v11];
  }

  return result;
}

void sub_F639E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F63A00(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v21) = 0;
  sub_F63748(a1, &v13);
  v18 = 0;
  sub_F65BBC(a1, &v21);
  sub_F65CA0(a1, &v19);
  *v8 = 0;
  *&v8[8] = xmmword_2291230;
  v9 = v21;
  v4 = v21;
  v10 = v22;
  v5 = v22;
  v21 = 0;
  v22 = 0uLL;
  v6 = v19;
  __p = v19;
  v7 = v20;
  v12 = v20;
  v19 = 0;
  v20 = 0uLL;
  if (v4 != v5)
  {
    *&v8[16] = ((v7 - v6) >> 4) - 1;
    *v8 = *&v6[2 * *&v8[16]];
  }

  sub_43F5CC(a2, &v13);
  sub_43F5CC(a2 + 72, v8);
  if (__p)
  {
    *&v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    *&v10 = v9;
    operator delete(v9);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_F63B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  v20 = *(v18 - 40);
  if (v20)
  {
    *(v18 - 32) = v20;
    operator delete(v20);
    sub_3DB674(va);
    _Unwind_Resume(a1);
  }

  sub_3DB674(va);
  _Unwind_Resume(a1);
}

void sub_F63B68(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F638E8(a1, &v13);
  v18 = 0;
  sub_F65F4C(a1, &v21);
  sub_F66030(a1, &v19);
  v8 = 0uLL;
  v9 = v21;
  v4 = v21;
  v10 = v22;
  v5 = v22;
  v21 = 0;
  v22 = 0uLL;
  v6 = v19;
  __p = v19;
  v7 = v20;
  v12 = v20;
  v19 = 0;
  v20 = 0uLL;
  if (v4 != v5)
  {
    *&v8 = v6[((v7 - v6) >> 3) - 1];
    *(&v8 + 1) = ((v7 - v6) >> 3) - 1;
  }

  sub_4C6FEC(a2, &v13);
  sub_4C6FEC(a2 + 64, &v8);
  if (__p)
  {
    *&v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    *&v10 = v9;
    operator delete(v9);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_F63C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  v19 = *(v17 - 40);
  if (v19)
  {
    *(v17 - 32) = v19;
    operator delete(v19);
    sub_334D18(va);
    _Unwind_Resume(a1);
  }

  sub_334D18(va);
  _Unwind_Resume(a1);
}

BOOL sub_F63CCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_F6E668(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 552;
    v4 += 69;
  }

  while (v2 != v3);
  return result;
}

BOOL sub_F63D58(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v2 == v3)
  {
    return 1;
  }

  if (v3 - v2 == 552)
  {
    return sub_F69D6C(v2);
  }

  return 0;
}

uint64_t sub_F63D8C(uint64_t *a1)
{
  result = a1[1];
    ;
  }

  a1[1] = i;
  if (*(a1 + 47) < 0)
  {
    a1[4] = 0;
    *a1[3] = 0;
  }

  else
  {
    *(a1 + 47) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_F63DFC(char **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  if (v2 - v1 == 552)
  {
    if (sub_F69D6C(*a1))
    {
      return 1;
    }

    v1 = *a1;
    v2 = a1[1];
  }

  v5 = 1;
  if (v1 == v2)
  {
    v6 = 1;
  }

  else
  {
    do
    {
      v6 = sub_F66114(&v12, v1);
      if (!v6)
      {
        break;
      }

      v1 += 552;
    }

    while (v1 != v2);
    v1 = *a1;
    v2 = a1[1];
  }

  v11 = 1;
  v10 = &v11;
  if (v1 != v2 && v1 + 552 != v2)
  {
    v8 = v6;
    do
    {
      sub_F66530(&v10, v1, (v1 + 552));
      v9 = v1 + 1104;
      v1 += 552;
    }

    while (v9 != v2);
    v5 = v11;
    v6 = v8;
  }

  return v6 & v5;
}

uint64_t sub_F63EFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 |= sub_F68F18(v1);
    v1 += 552;
  }

  while (v1 != v2);
  return v3;
}

unint64_t sub_F63F64(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 |= sub_F68F18(v3);
    v3 += 552;
  }

  while (v3 != v4);
  return (v5 >> a2) & 1;
}

uint64_t sub_F64018(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_F6D024(v1);
    v1 += 69;
  }

  while (v1 != v2);
  return v3;
}

std::string *sub_F64080(std::string *a1, uint64_t *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  sub_49F664(a1, *a2, a2[1], 0xF128CFC4A33F128DLL * ((a2[1] - *a2) >> 3));
  sub_11817D8(a2, a1 + 1);
  return a1;
}

void *sub_F640F8(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_11817D8(a1, a1 + 1);
  return a1;
}

void sub_F64158(void *a1, __int128 *a2)
{
  sub_49F780(v3, a2);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_F64254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 + 8) = v11;
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F64274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F64298(uint64_t *a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  *(a2 + 504) = 0;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_F644D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = v11;
  *(v10 + 8) = v12;
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F644F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_F64514@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F66818(a1, &v17);
  result = sub_F66904(a1, &v15);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = v16;
  v5 = v17;
  *(a2 + 16) = v17;
  v7 = v18;
  *(a2 + 24) = v18;
  v17 = 0;
  v18 = 0uLL;
  v8 = v15;
  *(a2 + 40) = v15;
  *(a2 + 56) = v6;
  v15 = 0uLL;
  v16 = 0;
  if (v5 != v7)
  {
    v9 = v7 - v5;
    v10 = v9 - 1;
    if (v9 == 1)
    {
      v11 = 0;
    }

    else
    {
      if (*v5 == *v8)
      {
        v11 = 0;
        v12 = v9 - 2;
        while (v12 != v11)
        {
          v13 = v5[v11 + 1];
          v14 = v8[++v11];
          if (v13 != v14)
          {
            goto LABEL_11;
          }
        }

        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

LABEL_11:
      *(a2 + 8) = v11;
    }

    *a2 = v5[v11];
  }

  return result;
}

void sub_F64610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F64658(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  sub_F66BC8(a1, v6);
  sub_F66CAC(a1, __p);
  sub_F66D90(a3, v6, __p, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_F646DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

__n128 sub_F64728@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F66F60(a1, &v11);
  sub_F67044(a1, &v9);
  *a2 = 0;
  *(a2 + 8) = xmmword_2291230;
  v4 = v11;
  *(a2 + 24) = v11;
  v5 = v12;
  *(a2 + 32) = v12;
  v11 = 0;
  v12 = 0uLL;
  v6 = v9;
  *(a2 + 48) = v9;
  result.n128_u64[0] = v10;
  *(a2 + 56) = v10;
  v9 = 0;
  v10 = 0uLL;
  if (v4 != v5)
  {
    v8 = ((result.n128_u64[0] - v6) >> 4) - 1;
    *(a2 + 16) = v8;
    result = *&v6[2 * v8];
    *a2 = result;
  }

  return result;
}

void sub_F647DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F647F8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F64514(a1, &v13);
  v18 = 0;
  sub_F669F0(a1, &v21);
  sub_F66ADC(a1, &v19);
  v8 = 0uLL;
  v9 = v21;
  v4 = v21;
  v10 = v22;
  v5 = v22;
  v21 = 0;
  v22 = 0uLL;
  v6 = v19;
  __p = v19;
  v7 = v20;
  v12 = v20;
  v19 = 0;
  v20 = 0uLL;
  if (v4 != v5)
  {
    *&v8 = v6[((v7 - v6) >> 3) - 1];
    *(&v8 + 1) = ((v7 - v6) >> 3) - 1;
  }

  sub_F65700(a2, &v13);
  sub_F65700(a2 + 64, &v8);
  if (__p)
  {
    *&v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    *&v10 = v9;
    operator delete(v9);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_F64904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  v19 = *(v17 - 40);
  if (v19)
  {
    *(v17 - 32) = v19;
    operator delete(v19);
    sub_334D18(va);
    _Unwind_Resume(a1);
  }

  sub_334D18(va);
  _Unwind_Resume(a1);
}

void sub_F64940(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v21) = 0;
  sub_F64658(a1, &v13);
  v18 = 0;
  sub_F66F60(a1, &v21);
  sub_F67044(a1, &v19);
  *v8 = 0;
  *&v8[8] = xmmword_2291230;
  v9 = v21;
  v4 = v21;
  v10 = v22;
  v5 = v22;
  v21 = 0;
  v22 = 0uLL;
  v6 = v19;
  __p = v19;
  v7 = v20;
  v12 = v20;
  v19 = 0;
  v20 = 0uLL;
  if (v4 != v5)
  {
    *&v8[16] = ((v7 - v6) >> 4) - 1;
    *v8 = *&v6[2 * *&v8[16]];
  }

  sub_4407A0(a2, &v13);
  sub_4407A0(a2 + 72, v8);
  if (__p)
  {
    *&v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    *&v10 = v9;
    operator delete(v9);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_F64A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  v20 = *(v18 - 40);
  if (v20)
  {
    *(v18 - 32) = v20;
    operator delete(v20);
    sub_3DB674(va);
    _Unwind_Resume(a1);
  }

  sub_3DB674(va);
  _Unwind_Resume(a1);
}

BOOL sub_F64AA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_F711D0(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 552;
    v4 += 552;
  }

  while (v2 != v3);
  return result;
}

BOOL sub_F64B34(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v2 == v3)
  {
    return 1;
  }

  if (v3 - v2 == 552)
  {
    return sub_F6FDC8(v2);
  }

  return 0;
}

uint64_t sub_F64B68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  if (v2 - v1 == 552)
  {
    if (sub_F6FDC8(*a1))
    {
      return 1;
    }

    v1 = *a1;
    v2 = a1[1];
  }

  v5 = 1;
  if (v1 == v2)
  {
    v6 = 1;
  }

  else
  {
    do
    {
      v6 = sub_F67128(&v12, v1);
      if (!v6)
      {
        break;
      }

      v1 += 552;
    }

    while (v1 != v2);
    v1 = *a1;
    v2 = a1[1];
  }

  v11 = 1;
  v10 = &v11;
  if (v1 != v2 && v1 + 552 != v2)
  {
    v8 = v6;
    do
    {
      sub_F67544(&v10, v1, v1 + 552);
      v9 = v1 + 1104;
      v1 += 552;
    }

    while (v9 != v2);
    v5 = v11;
    v6 = v8;
  }

  return v6 & v5;
}

uint64_t sub_F64C84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_F6FD88(v1);
    v1 += 552;
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_F64CEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_F70F54(v1);
    v1 += 552;
  }

  while (v1 != v2);
  return v3;
}

void *sub_F64D54(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1181668(a1, a1 + 1);
  return a1;
}

void sub_F64DB4(void *a1, __int128 *a2)
{
  sub_49D2CC(v3, a2);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_F64EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 + 8) = v11;
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F64ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F64EF4(uint64_t *a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  *(a2 + 504) = 0;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_F6512C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = v11;
  *(v10 + 8) = v12;
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F65150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49D8D0(&a9);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_F6519C(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  sub_F6782C(a1, v6);
  sub_F67910(a1, __p);
  sub_F679F4(a3, v6, __p, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_F65220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

__n128 sub_F6526C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F67BC4(a1, &v11);
  sub_F67CA8(a1, &v9);
  *a2 = 0;
  *(a2 + 8) = xmmword_2291230;
  v4 = v11;
  *(a2 + 24) = v11;
  v5 = v12;
  *(a2 + 32) = v12;
  v11 = 0;
  v12 = 0uLL;
  v6 = v9;
  *(a2 + 48) = v9;
  result.n128_u64[0] = v10;
  *(a2 + 56) = v10;
  v9 = 0;
  v10 = 0uLL;
  if (v4 != v5)
  {
    v8 = ((result.n128_u64[0] - v6) >> 4) - 1;
    *(a2 + 16) = v8;
    result = *&v6[2 * v8];
    *a2 = result;
  }

  return result;
}

void sub_F65320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F6533C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v21) = 0;
  sub_F6519C(a1, &v13);
  v18 = 0;
  sub_F67BC4(a1, &v21);
  sub_F67CA8(a1, &v19);
  *v8 = 0;
  *&v8[8] = xmmword_2291230;
  v9 = v21;
  v4 = v21;
  v10 = v22;
  v5 = v22;
  v21 = 0;
  v22 = 0uLL;
  v6 = v19;
  __p = v19;
  v7 = v20;
  v12 = v20;
  v19 = 0;
  v20 = 0uLL;
  if (v4 != v5)
  {
    *&v8[16] = ((v7 - v6) >> 4) - 1;
    *v8 = *&v6[2 * *&v8[16]];
  }

  sub_43EFA8(a2, &v13);
  sub_43EFA8(a2 + 72, v8);
  if (__p)
  {
    *&v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    *&v10 = v9;
    operator delete(v9);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_F65468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  v20 = *(v18 - 40);
  if (v20)
  {
    *(v18 - 32) = v20;
    operator delete(v20);
    sub_3DB674(va);
    _Unwind_Resume(a1);
  }

  sub_3DB674(va);
  _Unwind_Resume(a1);
}

BOOL sub_F654A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_F6BA98(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 552;
    v4 += 69;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_F65530(char **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  if (v2 - v1 == 552)
  {
    if (sub_F69D6C(*a1))
    {
      return 1;
    }

    v1 = *a1;
    v2 = a1[1];
  }

  v5 = 1;
  if (v1 == v2)
  {
    v6 = 1;
  }

  else
  {
    do
    {
      v6 = sub_F67D8C(&v12, v1);
      if (!v6)
      {
        break;
      }

      v1 += 552;
    }

    while (v1 != v2);
    v1 = *a1;
    v2 = a1[1];
  }

  v11 = 1;
  v10 = &v11;
  if (v1 != v2 && v1 + 552 != v2)
  {
    v8 = v6;
    do
    {
      sub_F681A8(&v10, v1, (v1 + 552));
      v9 = v1 + 1104;
      v1 += 552;
    }

    while (v9 != v2);
    v5 = v11;
    v6 = v8;
  }

  return v6 & v5;
}

uint64_t sub_F65630(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_F69D2C(v1);
    v1 += 69;
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_F65698(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_F6B804(v1);
    v1 += 552;
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_F65700(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_F657F0(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F65824@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F658EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F65908@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F659D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F659EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0u;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 24) = *a2;
  *(a1 + 40) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v6 != v7)
  {
    if (a4)
    {
      v8 = *(a1 + 48);
      v9 = ((*(a1 + 56) - v8) >> 4) - 1;
      *(a1 + 16) = v9;
      v10 = (v8 + 16 * v9);
LABEL_21:
      *a1 = *v10;
      return a1;
    }

    v11 = *(a1 + 16);
    if (v11 >= ((v7 - v6) >> 4) - 1)
    {
LABEL_20:
      v10 = (v6 + 16 * v11);
      goto LABEL_21;
    }

    while (1)
    {
      v12 = 16 * v11;
      v13 = v6 + v12;
      v14 = *v5 + v12;
      if (*(v6 + v12))
      {
        v15 = *(v13 + 8);
        v16 = sub_F6D024(*(v6 + v12));
        v17 = v15 < v16;
        v18 = *v14;
        if (!*v14)
        {
          if (v15 < v16)
          {
            goto LABEL_19;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v18 = *v14;
        if (!*v14)
        {
          goto LABEL_7;
        }

        v17 = 0;
      }

      v19 = *(v14 + 8);
      v20 = sub_F6D024(v18);
      if (v19 < v20 && v17)
      {
        v22 = sub_F6D17C(*v13, *(v13 + 8));
        if (v22 != sub_F6D17C(*v14, *(v14 + 8)))
        {
LABEL_19:
          v11 = *(a1 + 16);
          v6 = *(a1 + 24);
          goto LABEL_20;
        }
      }

      else if ((v17 ^ (v19 < v20)))
      {
        goto LABEL_19;
      }

LABEL_7:
      v6 = *(a1 + 24);
      v11 = *(a1 + 16) + 1;
      *(a1 + 16) = v11;
      if (v11 >= ((*(a1 + 32) - v6) >> 4) - 1)
      {
        goto LABEL_19;
      }
    }
  }

  return a1;
}