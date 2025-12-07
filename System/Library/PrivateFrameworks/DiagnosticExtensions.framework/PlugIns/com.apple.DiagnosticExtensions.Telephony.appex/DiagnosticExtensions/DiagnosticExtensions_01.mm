void sub_10000DA84()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_collate);
}

void sub_10000DADC(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100005880();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          sub_100005E08(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            sub_100005D48(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}

void sub_10000DD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_10000DD90(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE **a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100005880();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v5;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v5) = 0;
  memset(a4, 170, 24);
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v13, &v12[v13]);
  v14 = *(a4 + 23);
  v15 = v14;
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 == 1)
  {
    goto LABEL_26;
  }

  if (v14 != 12)
  {
    if (v15 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  *(v16 + 11) = *(v16 + 3);
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_10000DF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000DF54()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_ctype);
}

uint64_t sub_10000DFAC(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100005880();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_10000E104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000E120(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    v5 = *(a1 + 72);
    v4 = *(a1 + 80);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v9 = *(a1 + 64);
    v10 = v5 - v9;
    v11 = v5 - v9 + 1;
    if (v11 >= 0)
    {
      v12 = v4 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        v14 = v3;
        v15 = operator new(v13);
        v3 = v14;
      }

      else
      {
        v15 = 0;
      }

      v21 = &v15[v13];
      v15[v10] = v3;
      v6 = &v15[v10 + 1];
      goto LABEL_26;
    }

LABEL_29:
    sub_100005C50();
  }

  v8 = *(a1 + 72);
  v7 = *(a1 + 80);
  if (v8 < v7)
  {
    *v8 = a2;
    *(a1 + 72) = v8 + 1;
    return;
  }

  v9 = *(a1 + 64);
  v10 = v8 - v9;
  v16 = v8 - v9 + 1;
  if (v16 < 0)
  {
    goto LABEL_29;
  }

  v17 = v7 - v9;
  if (2 * v17 > v16)
  {
    v16 = 2 * v17;
  }

  if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = v16;
  }

  if (v18)
  {
    v19 = a2;
    v20 = operator new(v18);
    LOBYTE(a2) = v19;
    v15 = v20;
  }

  else
  {
    v15 = 0;
  }

  v21 = &v15[v18];
  v15[v10] = a2;
  v6 = &v15[v10 + 1];
LABEL_26:
  memcpy(v15, v9, v10);
  *(a1 + 64) = v15;
  *(a1 + 72) = v6;
  *(a1 + 80) = v21;
  if (v9)
  {
    operator delete(v9);
    *(a1 + 72) = v6;
    return;
  }

LABEL_28:
  *(a1 + 72) = v6;
}

void sub_10000E2C8(char **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    sub_100005C50();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x2AAAAAAAAAAAAAALL)
  {
    v11 = 0x555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 > 0x555555555555555)
    {
      sub_100005928();
    }

    v12 = a2;
    v13 = operator new(48 * v11);
    a2 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = &v13[48 * v8];
  *v14 = *a2;
  v15 = &v13[48 * v11];
  *(v14 + 2) = *(a2 + 2);
  *a2 = 0uLL;
  v16 = *(a2 + 24);
  a2[1] = 0uLL;
  *(v14 + 5) = *(a2 + 5);
  a2[2] = 0uLL;
  v7 = v14 + 48;
  v17 = *a1;
  v18 = a1[1] - *a1;
  *(v14 + 24) = v16;
  v19 = &v14[-v18];
  memcpy(&v14[-v18], v17, v18);
  *a1 = v19;
  a1[1] = v7;
  a1[2] = v15;
  if (!v17)
  {
    goto LABEL_3;
  }

  operator delete(v17);
  a1[1] = v7;
}

void sub_10000E440(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100005880();
  }

  if (v3 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v6 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v6, a2, v3);
    goto LABEL_10;
  }

  if ((v3 | 7) == 0x17)
  {
    v7 = 25;
  }

  else
  {
    v7 = (v3 | 7) + 1;
  }

  v8 = a2;
  v9 = operator new(v7);
  a2 = v8;
  v6 = v9;
  __dst[1] = v3;
  __dst[2] = (v7 | 0x8000000000000000);
  __dst[0] = v9;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v6 + v3) = 0;
  v10 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v10 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v11, &v10[v11]);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10000E578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000E594()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_range);
}

void *sub_10000E5EC(void *result)
{
  *result = off_100030BB8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_10000E660(void *a1)
{
  *a1 = off_100030BB8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_10000E6E0(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10000E710(void *result)
{
  *result = off_100030BB8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_10000E784(void *a1)
{
  *a1 = off_100030BB8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_10000E804(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10000E83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  v13 = operator new(0x10uLL);
  v14 = *(a1 + 56);
  v15 = *(v14 + 8);
  *v13 = off_100030B40;
  v13[1] = v15;
  *(v14 + 8) = 0;
  v16 = operator new(0x38uLL);
  v17 = *(a1 + 32);
  v16[1] = *(a4 + 8);
  v16[2] = v13;
  *v16 = &off_100030FD8;
  v16[3] = a2;
  v16[4] = a3;
  *(v16 + 10) = v17;
  *(v16 + 11) = a5;
  *(v16 + 12) = a6;
  *(v16 + 52) = a7;
  *(a4 + 8) = 0;
  result = operator new(0x10uLL);
  *result = &off_100031068;
  result[1] = v16;
  *(v14 + 8) = result;
  *(a1 + 56) = v13;
  *(a4 + 8) = v16;
  *(a1 + 32) = v17 + 1;
  return result;
}

void sub_10000E97C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badbrace);
}

void sub_10000E9D4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brace);
}

void *sub_10000EA2C(void *a1)
{
  *a1 = &off_100031038;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100030BB8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10000EAE0(void *__p)
{
  *__p = &off_100031038;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *__p = off_100030BB8;
  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

uint64_t sub_10000EBA4(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_10000ED7C(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_10000EE44(void *a1)
{
  *a1 = &off_100031038;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100030BB8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10000EEF8(void *__p)
{
  *__p = &off_100031038;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *__p = off_100030BB8;
  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

uint64_t sub_10000EFC4(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10000EFD8(void *a1)
{
  *a1 = &off_100031038;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100030BB8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10000F08C(void *__p)
{
  *__p = &off_100031038;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *__p = off_100030BB8;
  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

uint64_t sub_10000F15C(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_10000F188(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_10000F19C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_empty);
}

unsigned __int8 *sub_10000F1F4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_10000F674(a1, a2, a3);
  if (result == a2 && result != a3 && result + 1 != a3 && *result == 92)
  {
    v7 = result[1];
    if (v7 == 40)
    {
      v8 = result + 2;
      if ((*(a1 + 24) & 2) != 0)
      {
        v10 = *(a1 + 28);
      }

      else
      {
        v9 = operator new(0x18uLL);
        v10 = *(a1 + 28) + 1;
        *(a1 + 28) = v10;
        v11 = *(a1 + 56);
        v12 = *(v11 + 8);
        *v9 = off_100030F48;
        v9[1] = v12;
        *(v9 + 4) = v10;
        *(v11 + 8) = v9;
        *(a1 + 56) = v9;
      }

      while (v8 != a3)
      {
        v14 = *(a1 + 56);
        v15 = *(a1 + 28);
        v16 = sub_10000F1F4(a1, v8, a3);
        if (v16 == v8)
        {
          break;
        }

        v17 = sub_10000F3FC(a1, v16, a3, v14, v15 + 1, *(a1 + 28) + 1);
        v18 = v17 == v8;
        v8 = v17;
        if (v18)
        {
          goto LABEL_20;
        }
      }

      v17 = v8;
LABEL_20:
      if (v17 == a3 || v17 + 1 == a3 || *v17 != 92 || v17[1] != 41)
      {
        sub_100007E98();
      }

      result = &v17[2 * (v17[1] == 41)];
      if ((*(a1 + 24) & 2) == 0)
      {
        v19 = result;
        v20 = operator new(0x18uLL);
        result = v19;
        v21 = *(a1 + 56);
        v22 = *(v21 + 8);
        *v20 = off_100030F90;
        v20[1] = v22;
        *(v20 + 4) = v10;
        *(v21 + 8) = v20;
        *(a1 + 56) = v20;
      }
    }

    else if (((v7 & 0xF8) == 0x30 || (v7 & 0xFE) == 0x38) && (v7 - 49) <= 8)
    {
      if ((v7 - 48) > *(a1 + 28))
      {
        sub_10000A39C();
      }

      v13 = result;
      sub_10000A3F4(a1, v7 - 48);
      return v13 + 2;
    }
  }

  return result;
}

unsigned __int8 *sub_10000F3FC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = *a2;
  if (v7 == 42)
  {
    sub_10000E83C(a1, 0, -1, a4, a5, a6, 1);
    return ++v6;
  }

  if (a2 + 1 == a3 || v7 != 92 || a2[1] != 123)
  {
    return v6;
  }

  v9 = &a2[2 * (a2[1] == 123)];
  if (v9 == a3)
  {
    goto LABEL_41;
  }

  v10 = *v9;
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    goto LABEL_41;
  }

  v11 = v10 - 48;
  v12 = v9 + 1;
  if (v9 + 1 != a3)
  {
    while (1)
    {
      v13 = *v12;
      if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
      {
        break;
      }

      if (v11 >= 214748364)
      {
        goto LABEL_41;
      }

      v11 = v13 + 10 * v11 - 48;
      if (++v12 == a3)
      {
        v12 = a3;
        break;
      }
    }
  }

  if (v12 == a3)
  {
    goto LABEL_42;
  }

  v14 = v12 + 1;
  v15 = *v12;
  if (v15 != 44)
  {
    if (v14 != a3 && v15 == 92 && *v14 == 125)
    {
      v19 = v12 + 2;
      sub_10000E83C(a1, v11, v11, a4, a5, a6, 1);
      return v19;
    }

LABEL_42:
    sub_10000E9D4();
  }

  if (v14 != a3 && ((v16 = *v14, (v16 & 0xF8) == 0x30) || (v16 & 0xFE) == 0x38))
  {
    v17 = v16 - 48;
    v14 = v12 + 2;
    if (v12 + 2 != a3)
    {
      while (1)
      {
        v20 = *v14;
        if ((v20 & 0xF8) != 0x30 && (v20 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_41;
        }

        v17 = v20 + 10 * v17 - 48;
        if (++v14 == a3)
        {
          v14 = a3;
          break;
        }
      }
    }
  }

  else
  {
    v17 = -1;
  }

  if (v14 == a3 || v14 + 1 == a3 || *v14 != 92 || v14[1] != 125)
  {
    goto LABEL_42;
  }

  v18 = &v14[2 * (v14[1] == 125)];
  if (v17 != -1)
  {
    if (v17 >= v11)
    {
      sub_10000E83C(a1, v11, v17, a4, a5, a6, 1);
      return v18;
    }

LABEL_41:
    sub_10000E97C();
  }

  sub_10000E83C(a1, v11, -1, a4, a5, a6, 1);
  return v18;
}

unsigned __int8 *sub_10000F674(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 1;
    v3 = *a2;
    if (a2 + 1 != a3 || v3 != 36)
    {
      if ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0)
      {
        sub_10000A1F0(a1, v3);
        return v4;
      }

      if (v4 == a3 || v3 != 92)
      {
        if (v3 == 46)
        {
          v10 = operator new(0x10uLL);
          v11 = *(a1 + 56);
          v12 = *(v11 + 8);
          *v10 = off_100031140;
          v10[1] = v12;
          *(v11 + 8) = v10;
          *(a1 + 56) = v10;
          return v4;
        }
      }

      else
      {
        v7 = *v4;
        if ((v7 - 36) <= 0x3A && ((1 << (v7 - 36)) & 0x580000000000441) != 0)
        {
          sub_10000A1F0(a1, v7);
          return a2 + 2;
        }
      }
    }
  }

  return sub_100009714(a1, a2, a3);
}

void *sub_10000F7A4(void *result)
{
  *result = off_100030BB8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_10000F818(void *a1)
{
  *a1 = off_100030BB8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_10000F898(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

uint64_t sub_10000F8D8(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > *(a1 + 28))
  {
    sub_10000A39C();
  }

  sub_10000A3F4(a1, a2 - 48);
  return 1;
}

unsigned __int8 *sub_10000F93C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
    v11 = sub_10000FC70(a1, a2, a3);
    if (v11 != a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_22;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_4;
  }

  if (v9 == 5)
  {
    if (!*(a1 + 36))
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_22:
    if ((v8 - 123) >= 2)
    {
LABEL_23:
      sub_10000A1F0(a1, v8);
      v11 = a2 + 1;
      goto LABEL_32;
    }
  }

LABEL_4:
  v10 = sub_10000FC70(a1, a2, a3);
  v11 = v10;
  if (v10 == a2)
  {
    if (*v10 == 46)
    {
      v12 = operator new(0x10uLL);
      v13 = *(a1 + 56);
      v14 = *(v13 + 8);
      *v12 = off_100031140;
      v12[1] = v14;
      *(v13 + 8) = v12;
      *(a1 + 56) = v12;
      ++v11;
      goto LABEL_9;
    }

LABEL_8:
    v11 = sub_100009714(a1, a2, a3);
  }

LABEL_9:
  if (v11 == a2 && v11 != a3)
  {
    v15 = *v11;
    switch(v15)
    {
      case '$':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = off_100030C30;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v21 = *(a1 + 28);
        }

        else
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 28) + 1;
          *(a1 + 28) = v21;
          v22 = *(a1 + 56);
          v23 = *(v22 + 8);
          *v20 = off_100030F48;
          v20[1] = v23;
          *(v20 + 4) = v21;
          *(v22 + 8) = v20;
          *(a1 + 56) = v20;
        }

        ++*(a1 + 36);
        v24 = sub_100006918(a1, v11 + 1, a3);
        if (v24 == a3 || (v11 = v24, *v24 != 41))
        {
          sub_100007E98();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v25 = operator new(0x18uLL);
          v26 = *(a1 + 56);
          v27 = *(v26 + 8);
          *v25 = off_100030F90;
          v25[1] = v27;
          *(v25 + 4) = v21;
          *(v26 + 8) = v25;
          *(a1 + 56) = v25;
        }

        --*(a1 + 36);
        goto LABEL_30;
      case '^':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = off_100030BE8;
        break;
      default:
        goto LABEL_31;
    }

    *v16 = v19;
    *(v16 + 16) = v17;
    *(v18 + 8) = v16;
    *(a1 + 56) = v16;
LABEL_30:
    ++v11;
  }

LABEL_31:
  if (v11 == a2)
  {
    return v11;
  }

LABEL_32:
  v28 = *(a1 + 28) + 1;

  return sub_10000790C(a1, v11, a3, v6, v7 + 1, v28);
}

unsigned __int8 *sub_10000FC70(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return a2;
  }

  v3 = a2[1];
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    v5 = a2;
    sub_10000A1F0(a1, v3);
    return v5 + 2;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v7 = a2 + 1;

    return sub_10000CED4(a1, v7, a3, 0);
  }

  else
  {
    v8 = a2;
    v9 = sub_10000F8D8(a1, v3);
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    return &v8[v10];
  }
}

uint64_t sub_10000FD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  *(a4 + 24) = a3;
  v11 = (a4 + 24);
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  sub_100008C44(a4, (v10 + 1), (a4 + 24));
  *(a4 + 48) = a2;
  *(a4 + 56) = a2;
  *(a4 + 64) = 0;
  *(a4 + 72) = *v11;
  *(a4 + 88) = *(a4 + 40);
  if ((v9 & 0x800) == 0)
  {
    *(a4 + 104) = a2;
  }

  *(a4 + 96) = 1;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    if (sub_10000876C(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (*(a1 + 28))
  {
    if (sub_100010AEC(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (a2 != a3 && (v9 & 0x40) == 0)
    {
      for (i = a2 + 1; i != a3; ++i)
      {
        sub_100008C44(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
        if ((*(a1 + 24) & 0x1F0) != 0)
        {
          if (*(a1 + 28))
          {
            if (sub_100010AEC(a1, i, a3, a4, v9 | 0x80, 0))
            {
              goto LABEL_28;
            }
          }

          else if (sub_1000101D4(a1, i, a3, a4, v9 | 0x80, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_10000876C(a1, i, a3, a4, v9 | 0x80, 0))
        {
          goto LABEL_28;
        }

        sub_100008C44(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      }

      sub_100008C44(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      if ((*(a1 + 24) & 0x1F0) != 0)
      {
        if (*(a1 + 28))
        {
          if (sub_100010AEC(a1, i, a3, a4, v9 | 0x80, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_1000101D4(a1, i, a3, a4, v9 | 0x80, 0))
        {
          goto LABEL_28;
        }
      }

      else if (sub_10000876C(a1, i, a3, a4, v9 | 0x80, 0))
      {
        goto LABEL_28;
      }
    }

    result = 0;
    *(a4 + 8) = *a4;
    return result;
  }

  if ((sub_1000101D4(a1, a2, a3, a4, v9, (v9 & 0x800) == 0) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (*(a4 + 8) == *a4)
  {
    v13 = v11;
  }

  else
  {
    v13 = *a4;
  }

  v14 = *v13;
  *(a4 + 56) = *v13;
  *(a4 + 64) = *(a4 + 48) != v14;
  v15 = *(v13 + 1);
  *(a4 + 72) = v15;
  *(a4 + 88) = v15 != *(a4 + 80);
  return 1;
}

void sub_100010068(char **result, uint64_t a2, char *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  v11 = a4[1] - *a4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v14 = *result;
  v13 = result[1];
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *result) >> 3);
  if (v12 <= v15)
  {
    if (v12 < v15)
    {
      v13 = &v14[v11];
      result[1] = &v14[v11];
    }
  }

  else
  {
    sub_10001218C(result, v12 - v15);
    v14 = *result;
    v13 = result[1];
  }

  if (v13 == v14)
  {
    v20 = a2 - v10;
  }

  else
  {
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
    v18 = *a4;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
    v20 = a2 - v10;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v21 = v14 + 16;
    do
    {
      if (v19 <= v16)
      {
        v22 = a4 + 3;
      }

      else
      {
        v22 = v18;
      }

      *(v21 - 2) = v20 + *v22;
      *(v21 - 1) = v20 + v22[1];
      *v21 = *(v22 + 16);
      v21 += 24;
      ++v16;
      v18 += 3;
    }

    while (v17 != v16);
  }

  result[3] = a3;
  result[4] = a3;
  *(result + 40) = 0;
  v23 = (v20 + a4[6]);
  result[6] = v23;
  result[7] = (v20 + a4[7]);
  *(result + 64) = *(a4 + 64);
  result[9] = (v20 + a4[9]);
  result[10] = (v20 + a4[10]);
  *(result + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    result[13] = v23;
  }

  *(result + 96) = *(a4 + 96);
}

uint64_t sub_1000101D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_91;
  }

  *v79 = 0;
  memset(&v79[8], 0, 85);
  sub_100011270(&v80);
  v12 = *(*(&v80 + 1) + 8 * ((v82.i64[0] + v82.i64[1]) / 0x2AuLL)) + 96 * ((v82.i64[0] + v82.i64[1]) % 0x2AuLL);
  v13 = *&v79[16];
  *v12 = *v79;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  memset(&v79[32], 0, 24);
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  memset(&v79[56], 0, 24);
  v14 = *&v79[80];
  *(v12 + 85) = *&v79[85];
  *(v12 + 80) = v14;
  v16 = v82.i64[1];
  v15 = v82.i64[0];
  v17 = ++v82.i64[1];
  v18 = *(&v80 + 1);
  v19 = *(a1 + 32);
  v20 = *(*(&v80 + 1) + 8 * ((v82.i64[0] + v16) / 0x2AuLL)) + 96 * ((v82.i64[0] + v16) % 0x2AuLL);
  *v20 = 0;
  *(v20 + 8) = a2;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v20 + 56);
  v22 = (*(v20 + 64) - v21) >> 4;
  v74 = a4;
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      *(v20 + 64) = v21 + 16 * v19;
    }
  }

  else
  {
    sub_100009470(v20 + 56, v19 - v22);
    v17 = v82.i64[1];
    v15 = v82.i64[0];
    v18 = *(&v80 + 1);
  }

  v75 = a3;
  v76 = 0;
  v77 = 0;
  v23 = 0;
  v24 = *(v18 + 8 * ((v15 + v17 - 1) / 0x2AuLL)) + 96 * ((v15 + v17 - 1) % 0x2AuLL);
  *(v24 + 80) = v6;
  *(v24 + 92) = a6;
  v25 = a3 - a2;
  *(v24 + 88) = a5;
  do
  {
    if ((++v23 & 0xFFF) == 0 && (v23 >> 12) >= v25)
    {
      sub_100008E5C();
    }

    v27 = *(*(&v80 + 1) + 8 * ((v17 + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v17 + v82.i64[0] - 1) % 0x2AuLL);
    v28 = *(v27 + 80);
    if (v28)
    {
      (*(*v28 + 16))(v28, v27);
    }

    v29 = *v27;
    if (*v27 <= -995)
    {
      if (v29 != -1000)
      {
        if (v29 == -999)
        {
          goto LABEL_9;
        }

        if (v29 != -995)
        {
LABEL_105:
          sub_100008EB4();
        }

        v30 = v82.i64[0];
        if (!v82.i64[0])
        {
          sub_1000118C0(&v80);
          v30 = v82.i64[0];
        }

        v31 = (*(&v80 + 1) + 8 * (v30 / 0x2A));
        v32 = *v31 + 96 * (v30 % 0x2A);
        if (v81 == *(&v80 + 1))
        {
          v32 = 0;
        }

        if (v32 == *v31)
        {
          v32 = *(v31 - 1) + 4032;
        }

        v33 = *(v27 + 16);
        *(v32 - 96) = *v27;
        *(v32 - 80) = v33;
        *(v32 - 56) = 0;
        *(v32 - 48) = 0;
        *(v32 - 64) = 0;
        *(v32 - 64) = *(v27 + 32);
        *(v32 - 48) = *(v27 + 48);
        *(v27 + 32) = 0;
        *(v27 + 40) = 0;
        *(v27 + 48) = 0;
        *(v32 - 40) = 0;
        *(v32 - 32) = 0;
        *(v32 - 24) = 0;
        *(v32 - 40) = *(v27 + 56);
        *(v32 - 24) = *(v27 + 72);
        *(v27 + 56) = 0;
        *(v27 + 64) = 0;
        *(v27 + 72) = 0;
        v34 = *(v27 + 80);
        *(v32 - 11) = *(v27 + 85);
        *(v32 - 16) = v34;
        v35 = vdupq_laneq_s64(v82, 1);
        v82 = vaddq_s64(v82, xmmword_100027C10);
        v35.i64[0] = vaddq_s64(v35, v82).u64[0];
        v36 = (*(*(&v80 + 1) + 8 * (v35.i64[0] / 0x2AuLL)) + 96 * (v35.i64[0] % 0x2AuLL));
        v37 = v36[7];
        if (!v37)
        {
          goto LABEL_39;
        }

LABEL_38:
        v36[8] = v37;
        operator delete(v37);
LABEL_39:
        v39 = v36[4];
        if (v39)
        {
          v36[5] = v39;
          operator delete(v39);
        }

        v40 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
        v41 = v82;
        --v82.i64[1];
        if (v81 == *(&v80 + 1))
        {
          v40 = 0;
        }

        if ((v40 - (v41.i64[1] + v41.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v81 - 8));
          *&v81 = v81 - 8;
        }

        goto LABEL_9;
      }

      v38 = *(v27 + 16);
      if ((a5 & 0x20) != 0 && v38 == a2 || (a5 & 0x1000) != 0 && v38 != v75)
      {
        goto LABEL_37;
      }

      v49 = v38 - *(v27 + 8);
      v50 = v76;
      if (v76 <= v49)
      {
        v50 = v49;
      }

      if (v77)
      {
        v49 = v50;
      }

      if (v49 == v25)
      {
        v51 = *(&v80 + 1);
        v52 = v81;
        if (v81 == *(&v80 + 1))
        {
          v82.i64[1] = 0;
          v64 = 0;
        }

        else
        {
          v53 = (*(&v80 + 1) + 8 * (v82.i64[0] / 0x2AuLL));
          v54 = (*v53 + 96 * (v82.i64[0] % 0x2AuLL));
          v55 = *(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0]) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0]) % 0x2AuLL);
          if (v54 != v55)
          {
            do
            {
              v56 = v54[7];
              if (v56)
              {
                v54[8] = v56;
                operator delete(v56);
              }

              v57 = v54[4];
              if (v57)
              {
                v54[5] = v57;
                operator delete(v57);
              }

              v54 += 12;
              if ((v54 - *v53) == 4032)
              {
                v58 = v53[1];
                ++v53;
                v54 = v58;
              }
            }

            while (v54 != v55);
            v51 = *(&v80 + 1);
            v52 = v81;
          }

          v82.i64[1] = 0;
          v64 = (v52 - v51) >> 3;
          if (v64 >= 3)
          {
            do
            {
              operator delete(*v51);
              v51 = (*(&v80 + 1) + 8);
              *(&v80 + 1) = v51;
              v64 = (v81 - v51) >> 3;
            }

            while (v64 > 2);
          }
        }

        if (v64 == 1)
        {
          v65 = 21;
LABEL_86:
          v82.i64[0] = v65;
        }

        else if (v64 == 2)
        {
          v65 = 42;
          goto LABEL_86;
        }

        v77 = 1;
        v76 = v25;
        goto LABEL_9;
      }

      v76 = v49;
      v59 = (*(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0] - 1) % 0x2AuLL));
      v60 = v59[7];
      if (v60)
      {
        v59[8] = v60;
        operator delete(v60);
      }

      v61 = v59[4];
      if (v61)
      {
        v59[5] = v61;
        operator delete(v61);
      }

      v62 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
      v63 = v82;
      --v82.i64[1];
      if (v81 == *(&v80 + 1))
      {
        v62 = 0;
      }

      if ((v62 - (v63.i64[1] + v63.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v81 - 8));
        *&v81 = v81 - 8;
      }

      v77 = 1;
    }

    else
    {
      if (v29 <= -993)
      {
        if (v29 == -994)
        {
          goto LABEL_9;
        }

        if (v29 != -993)
        {
          goto LABEL_105;
        }

LABEL_37:
        v36 = (*(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0] - 1) % 0x2AuLL));
        v37 = v36[7];
        if (v37)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v29 == -992)
      {
        *&v42 = 0xAAAAAAAAAAAAAAAALL;
        *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v79[64] = v42;
        *&v79[80] = v42;
        *&v79[32] = v42;
        *&v79[48] = v42;
        *v79 = v42;
        *&v79[16] = v42;
        sub_1000095A4(v79, v27);
        (*(**(v27 + 80) + 24))(*(v27 + 80), 1, v27);
        (*(**&v79[80] + 24))(*&v79[80], 0, v79);
        v43 = *(&v80 + 1);
        if (v81 == *(&v80 + 1))
        {
          v44 = 0;
        }

        else
        {
          v44 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
        }

        v45 = v82.i64[1] + v82.i64[0];
        if (v44 == v82.i64[1] + v82.i64[0])
        {
          sub_100011270(&v80);
          v43 = *(&v80 + 1);
          v45 = v82.i64[1] + v82.i64[0];
        }

        v46 = *(v43 + 8 * (v45 / 0x2A)) + 96 * (v45 % 0x2A);
        v47 = *&v79[16];
        *v46 = *v79;
        *(v46 + 16) = v47;
        *(v46 + 40) = 0;
        *(v46 + 48) = 0;
        *(v46 + 32) = 0;
        *(v46 + 32) = *&v79[32];
        *(v46 + 48) = *&v79[48];
        memset(&v79[32], 0, 24);
        *(v46 + 56) = 0;
        *(v46 + 64) = 0;
        *(v46 + 72) = 0;
        *(v46 + 56) = *&v79[56];
        *(v46 + 72) = *&v79[72];
        memset(&v79[56], 0, 24);
        v48 = *&v79[80];
        *(v46 + 85) = *&v79[85];
        *(v46 + 80) = v48;
        ++v82.i64[1];
        if (*&v79[56])
        {
          *&v79[64] = *&v79[56];
          operator delete(*&v79[56]);
        }

        if (*&v79[32])
        {
          *&v79[40] = *&v79[32];
          operator delete(*&v79[32]);
        }
      }

      else if (v29 != -991)
      {
        goto LABEL_105;
      }
    }

LABEL_9:
    v17 = v82.i64[1];
  }

  while (v82.i64[1]);
  if (v77)
  {
    v66 = *v74;
    *v66 = a2;
    *(v66 + 8) = a2 + v76;
    v67 = 1;
    *(v66 + 16) = 1;
    v68 = *(&v80 + 1);
    v69 = v81;
    v82.i64[1] = 0;
    v70 = (v81 - *(&v80 + 1)) >> 3;
    if (v70 < 3)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_91:
  v67 = 0;
  v68 = *(&v80 + 1);
  v69 = v81;
  v82.i64[1] = 0;
  v70 = (v81 - *(&v80 + 1)) >> 3;
  if (v70 < 3)
  {
    goto LABEL_93;
  }

  do
  {
LABEL_92:
    operator delete(*v68);
    v69 = v81;
    v68 = (*(&v80 + 1) + 8);
    *(&v80 + 1) = v68;
    v70 = (v81 - v68) >> 3;
  }

  while (v70 > 2);
LABEL_93:
  if (v70 == 1)
  {
    v71 = 21;
LABEL_97:
    v82.i64[0] = v71;
  }

  else if (v70 == 2)
  {
    v71 = 42;
    goto LABEL_97;
  }

  if (v68 != v69)
  {
    do
    {
      v72 = *v68++;
      operator delete(v72);
    }

    while (v68 != v69);
    if (v81 != *(&v80 + 1))
    {
      *&v81 = v81 + ((*(&v80 + 1) - v81 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v80)
  {
    operator delete(v80);
  }

  return v67;
}

void sub_100010A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_100008E18(va);
  sub_100011C48((v16 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_100010AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v69 = 0;
  v70 = 0;
  v71 = 0;
  *&v68[36] = -1431655766;
  *v66 = 0xAAAAAAAA00000000;
  memset(&v66[8], 0, 32);
  *v67 = 0u;
  memset(v68, 0, 36);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_69:
    v53 = 0;
    v54 = *v68;
    if (!*v68)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  *(&v64 + 1) = a3;
  v65 = 0xAAAAAAAAAAAAAA00;
  *&v64 = a3;
  *v63 = 0;
  memset(&v63[8], 0, 85);
  v70 = sub_100008F90(&v69, v63);
  if (*&v63[56])
  {
    *&v63[64] = *&v63[56];
    operator delete(*&v63[56]);
  }

  if (*&v63[32])
  {
    *&v63[40] = *&v63[32];
    operator delete(*&v63[32]);
  }

  v13 = v70;
  *(v70 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_1000092AC(v13 - 8, v15 - v16, &v64);
    v13 = v70;
  }

  v17 = *(v13 - 5);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 4) - v17) >> 4;
  v61 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 4) = v17 + 16 * v18;
    }
  }

  else
  {
    sub_100009470(v13 - 40, v18 - v19);
    v13 = v70;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v62 = a3;
  v23 = a3 - a2;
  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  *(v13 - 4) = a6;
  do
  {
    v24 = (++v22 & 0xFFF) != 0 || (v22 >> 12) < v23;
    if (!v24)
    {
      sub_100008E5C();
    }

    v26 = v13 - 1;
    v25 = *(v13 - 2);
    v27 = v13 - 6;
    if (v25)
    {
      (*(*v25 + 16))(v25, v13 - 6);
    }

    v28 = *v27;
    if (*v27 <= -994)
    {
      if ((v28 + 995) < 2)
      {
        goto LABEL_16;
      }

      if (v28 != -1000)
      {
LABEL_84:
        sub_100008EB4();
      }

      v29 = *(v13 - 10);
      if ((a5 & 0x20) != 0 && v29 == a2 || (a5 & 0x1000) != 0 && v29 != v62)
      {
LABEL_34:
        v30 = v70;
        v31 = *(v70 - 5);
        if (v31)
        {
          *(v70 - 4) = v31;
          operator delete(v31);
        }

        v32 = *(v30 - 8);
        if (v32)
        {
          *(v30 - 7) = v32;
          operator delete(v32);
        }

        v70 = v30 - 6;
        goto LABEL_16;
      }

      v37 = v20;
      v38 = v29 - *(v13 - 11);
      if ((v21 & (v37 >= v38)) == 0)
      {
        v39 = *(v13 - 5);
        *v66 = *v27;
        *&v66[16] = v39;
        if (v66 != v27)
        {
          sub_100011CC0(&v66[32], *(v13 - 8), *(v13 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - *(v13 - 8)) >> 3));
          sub_100011EC4(v68, *(v13 - 5), *(v13 - 4), (*(v13 - 4) - *(v13 - 5)) >> 4);
        }

        v40 = *v26;
        *&v68[29] = *(v13 - 11);
        *&v68[24] = v40;
        v37 = v38;
      }

      v41 = v70;
      if (v37 == v23)
      {
        v42 = v69;
        while (v41 != v42)
        {
          v43 = *(v41 - 5);
          if (v43)
          {
            *(v41 - 4) = v43;
            operator delete(v43);
          }

          v44 = *(v41 - 8);
          if (v44)
          {
            *(v41 - 7) = v44;
            operator delete(v44);
          }

          v41 -= 6;
        }

        v70 = v42;
        v21 = 1;
        v20 = v23;
      }

      else
      {
        v20 = v37;
        v45 = *(v70 - 5);
        if (v45)
        {
          *(v70 - 4) = v45;
          operator delete(v45);
        }

        v46 = *(v41 - 8);
        if (v46)
        {
          *(v41 - 7) = v46;
          operator delete(v46);
        }

        v70 = v41 - 6;
        v21 = 1;
      }
    }

    else
    {
      switch(v28)
      {
        case -993:
          goto LABEL_34;
        case -992:
          *&v33 = 0xAAAAAAAAAAAAAAAALL;
          *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v63[64] = v33;
          *&v63[80] = v33;
          *&v63[32] = v33;
          *&v63[48] = v33;
          *v63 = v33;
          *&v63[16] = v33;
          sub_1000095A4(v63, v13 - 6);
          (*(**v26 + 24))(*v26, 1, v13 - 6);
          (*(**&v63[80] + 24))(*&v63[80], 0, v63);
          v34 = v70;
          if (v70 >= v71)
          {
            v70 = sub_100008F90(&v69, v63);
            if (*&v63[56])
            {
              *&v63[64] = *&v63[56];
              operator delete(*&v63[56]);
            }
          }

          else
          {
            v35 = *&v63[16];
            *v70 = *v63;
            v34[1] = v35;
            *(v34 + 6) = 0;
            *(v34 + 7) = 0;
            *(v34 + 4) = 0;
            *(v34 + 5) = 0;
            v34[2] = *&v63[32];
            *(v34 + 6) = *&v63[48];
            *&v63[32] = 0;
            *&v63[40] = 0;
            *(v34 + 8) = 0;
            *(v34 + 9) = 0;
            *(v34 + 56) = *&v63[56];
            *(v34 + 9) = *&v63[72];
            memset(&v63[48], 0, 32);
            v36 = *&v63[80];
            *(v34 + 85) = *&v63[85];
            *(v34 + 10) = v36;
            v70 = v34 + 6;
          }

          if (*&v63[32])
          {
            *&v63[40] = *&v63[32];
            operator delete(*&v63[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_84;
      }
    }

LABEL_16:
    v13 = v70;
  }

  while (v69 != v70);
  if ((v21 & 1) == 0)
  {
    goto LABEL_69;
  }

  v47 = *v61;
  *v47 = a2;
  *(v47 + 8) = a2 + v20;
  *(v47 + 16) = 1;
  if (v67[0] != *&v66[32])
  {
    v48 = 0xAAAAAAAAAAAAAAABLL * ((v67[0] - *&v66[32]) >> 3);
    v49 = (*&v66[32] + 16);
    v50 = 1;
    do
    {
      v51 = v47 + 24 * v50;
      *v51 = *(v49 - 1);
      v52 = *v49;
      v49 += 24;
      *(v51 + 16) = v52;
      v24 = v48 > v50++;
    }

    while (v24);
  }

  v53 = 1;
  v54 = *v68;
  if (*v68)
  {
LABEL_70:
    *&v68[8] = v54;
    operator delete(v54);
  }

LABEL_71:
  if (*&v66[32])
  {
    v67[0] = *&v66[32];
    operator delete(*&v66[32]);
  }

  v55 = v69;
  if (v69)
  {
    v56 = v70;
    v57 = v69;
    if (v70 != v69)
    {
      do
      {
        v58 = *(v56 - 5);
        if (v58)
        {
          *(v56 - 4) = v58;
          operator delete(v58);
        }

        v59 = *(v56 - 8);
        if (v59)
        {
          *(v56 - 7) = v59;
          operator delete(v59);
        }

        v56 -= 6;
      }

      while (v56 != v55);
      v57 = v69;
    }

    v70 = v55;
    operator delete(v57);
  }

  return v53;
}

void sub_1000110BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100008E18(&a27);
  sub_100008F0C((v27 - 120));
  _Unwind_Resume(a1);
}

void sub_100011110(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(a1[5] + v4) / 0x2A] + 96 * ((a1[5] + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }

    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v12 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v11 = (v12 - v2) >> 3;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 42;
  }

  a1[4] = v13;
}

void sub_100011270(char **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x2A;
  v4 = v2 - 42;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[1];
  v9 = v7 - v8;
  v10 = v6 - *a1;
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v44 = operator new(0xFC0uLL);
      sub_1000115B4(a1, &v44);
      return;
    }

    v44 = operator new(0xFC0uLL);
    sub_100011734(a1, &v44);
LABEL_4:
    v5 = a1[1];
    v44 = *v5;
    a1[1] = v5 + 8;
    sub_1000115B4(a1, &v44);
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 61)
  {
    sub_100005928();
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = operator new(0xFC0uLL);
  v16 = v15;
  v17 = &v14[v9];
  v18 = &v14[v13];
  if (v9 != v13)
  {
    goto LABEL_15;
  }

  if (v9 < 1)
  {
    if (v7 == v8)
    {
      v22 = 1;
    }

    else
    {
      v22 = v9 >> 2;
    }

    if (v22 >> 61)
    {
      sub_100005928();
    }

    v17 = operator new(8 * v22);
    v18 = &v17[8 * v22];
    operator delete(v14);
    v23 = a1[1];
    v7 = a1[2];
    v14 = v17;
    *v17 = v16;
    v19 = v17 + 8;
    if (v7 == v23)
    {
      goto LABEL_16;
    }

LABEL_31:
    while (v17 != v14)
    {
      v24 = v17;
LABEL_30:
      v25 = *(v7 - 1);
      v7 -= 8;
      *(v24 - 1) = v25;
      v20 = v24 - 8;
      v17 = v20;
      if (v7 == a1[1])
      {
        goto LABEL_17;
      }
    }

    if (v19 < v18)
    {
      v24 = &v14[8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1)];
      v27 = v19 - v14;
      v26 = v19 == v14;
      v19 += 8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v26)
      {
        memmove(v24, v17, v27);
      }

      goto LABEL_30;
    }

    if (v18 == v14)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v18 - v14) >> 2;
    }

    if (v28 >> 61)
    {
      sub_100005928();
    }

    v29 = operator new(8 * v28);
    v30 = v29;
    v31 = (v28 + 3) >> 2;
    v24 = &v29[8 * v31];
    v32 = v19 - v14;
    v26 = v19 == v14;
    v19 = v24;
    if (!v26)
    {
      v19 = &v24[v32];
      v33 = v32 - 8;
      if (v33 >= 0x18 && (v34 = 8 * v31, (&v29[8 * v31] - v17) >= 0x20))
      {
        v38 = (v33 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
        v35 = &v24[v39];
        v36 = &v17[v39];
        v40 = (v17 + 16);
        v41 = &v29[v34 + 16];
        v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 32;
          v42 -= 4;
        }

        while (v42);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = &v29[8 * v31];
        v36 = v17;
      }

      do
      {
        v37 = *v36;
        v36 += 8;
        *v35 = v37;
        v35 += 8;
      }

      while (v35 != v19);
    }

LABEL_44:
    v18 = &v29[8 * v28];
    operator delete(v14);
    v14 = v30;
    goto LABEL_30;
  }

  v17 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
  *v17 = v15;
  v19 = v17 + 8;
  if (v7 != v8)
  {
    goto LABEL_31;
  }

LABEL_16:
  v20 = v17;
LABEL_17:
  v21 = *a1;
  *a1 = v14;
  a1[1] = v20;
  a1[2] = v19;
  a1[3] = v18;
  if (v21)
  {

    operator delete(v21);
  }
}

void sub_100011580(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1000115B4(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    sub_100005928();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

void sub_100011734(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        sub_100005928();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) = v6 - 8;
}

void sub_1000118C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) >= 0x2A)
  {
    *(a1 + 32) = v5 + 42;
    v41 = *(v2 - 1);
    *(a1 + 16) = v2 - 8;
    sub_100011734(a1, &v41);
    return;
  }

  v6 = *(a1 + 24);
  v7 = *a1;
  v8 = &v6[-*a1];
  if (v2 - v3 < v8)
  {
    if (v3 == v7)
    {
      v41 = operator new(0xFC0uLL);
      sub_1000115B4(a1, &v41);
      v37 = *(a1 + 16);
      v41 = *(v37 - 8);
      *(a1 + 16) = v37 - 8;
      sub_100011734(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v41 = operator new(0xFC0uLL);
      sub_100011734(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
LABEL_9:
        v9 = 21;
LABEL_42:
        *(a1 + 32) = v9;
        return;
      }
    }

    v9 = *(a1 + 32) + 42;
    goto LABEL_42;
  }

  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 >> 2;
  }

  if (v10 >> 61)
  {
    sub_100005928();
  }

  v11 = operator new(8 * v10);
  v12 = operator new(0xFC0uLL);
  v13 = v12;
  if (v10)
  {
    v14 = &v11[8 * v10];
    *v11 = v12;
    v15 = v11 + 8;
    if (v3 != v2)
    {
LABEL_16:
      v16 = v11;
      while (1)
      {
        if (v15 == v14)
        {
          if (v16 <= v11)
          {
            if (v15 == v11)
            {
              v20 = 1;
            }

            else
            {
              v20 = (v15 - v11) >> 2;
            }

            if (v20 >> 61)
            {
              sub_100005928();
            }

            v21 = operator new(8 * v20);
            v22 = v21;
            v23 = v20 >> 2;
            v17 = &v21[8 * (v20 >> 2)];
            v25 = v15 - v16;
            v24 = v15 == v16;
            v15 = v17;
            if (!v24)
            {
              v15 = &v17[v25];
              v26 = v25 - 8;
              if (v26 < 0x18 || (v27 = 8 * v23, (&v21[8 * v23] - v16) < 0x20))
              {
                v28 = &v21[8 * (v20 >> 2)];
                v29 = v16;
                goto LABEL_32;
              }

              v31 = (v26 >> 3) + 1;
              v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
              v28 = &v17[v32];
              v29 = &v16[v32];
              v33 = (v16 + 16);
              v34 = &v21[v27 + 16];
              v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v36 = *v33;
                *(v34 - 1) = *(v33 - 1);
                *v34 = v36;
                v33 += 2;
                v34 += 32;
                v35 -= 4;
              }

              while (v35);
              if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_32:
                  v30 = *v29;
                  v29 += 8;
                  *v28 = v30;
                  v28 += 8;
                }

                while (v28 != v15);
              }
            }

            v14 = &v21[8 * v20];
            if (v11)
            {
              operator delete(v11);
            }

            v11 = v22;
            goto LABEL_18;
          }

          v19 = (((v16 - v11) >> 3) + 1 + ((((v16 - v11) >> 3) + 1) >> 63)) >> 1;
          v17 = &v16[-8 * v19];
          if (v15 != v16)
          {
            memmove(&v16[-8 * v19], v16, v15 - v16);
          }

          v15 = &v17[v15 - v16];
        }

        else
        {
          v17 = v16;
        }

LABEL_18:
        v18 = *v3;
        v3 += 8;
        *v15 = v18;
        v15 += 8;
        v16 = v17;
        if (v3 == *(a1 + 16))
        {
          goto LABEL_45;
        }
      }
    }
  }

  else
  {
    v38 = operator new(8uLL);
    v14 = v38 + 8;
    operator delete(v11);
    v3 = *(a1 + 8);
    v39 = *(a1 + 16);
    v11 = v38;
    *v38 = v13;
    v15 = v38 + 8;
    if (v3 != v39)
    {
      goto LABEL_16;
    }
  }

  v17 = v11;
LABEL_45:
  v40 = *a1;
  *a1 = v11;
  *(a1 + 8) = v17;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  if (v15 - v17 == 8)
  {
    *(a1 + 32) = 21;
    if (!v40)
    {
      return;
    }
  }

  else
  {
    *(a1 + 32) += 42;
    if (!v40)
    {
      return;
    }
  }

  operator delete(v40);
}

void sub_100011C14(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void **sub_100011C48(void **a1)
{
  sub_100011110(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_100011CC0(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) >= a4)
  {
    v16 = a1[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - result) >> 3) >= a4)
    {
      while (v5 != a3)
      {
        *result = *v5;
        result[16] = v5[16];
        v5 += 24;
        result += 24;
      }

      a1[1] = result;
    }

    else
    {
      v17 = &a2[v16 - result];
      if (v16 != result)
      {
        do
        {
          *result = *v5;
          result[16] = v5[16];
          v5 += 24;
          result += 24;
        }

        while (v5 != v17);
      }

      if (v17 == a3)
      {
        a1[1] = v16;
      }

      else
      {
        v18 = v16;
        do
        {
          v19 = *v17;
          *(v16 + 2) = *(v17 + 2);
          *v16 = v19;
          v16 += 24;
          v17 += 24;
          v18 += 24;
        }

        while (v17 != a3);
        a1[1] = v18;
      }
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_25;
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    v12 = v10 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v11;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_25:
      sub_100005C50();
    }

    v13 = 24 * v12;
    result = operator new(24 * v12);
    v14 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v13];
    if (v5 != a3)
    {
      v15 = 24 * ((a3 - v5 - 24) / 0x18uLL) + 24;
      result = memcpy(result, v5, v15);
      v14 += v15;
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_100011EC4(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  result = *a1;
  if (a4 <= (v7 - result) >> 4)
  {
    v15 = *(a1 + 8);
    if (a4 <= (v15 - result) >> 4)
    {
      if (a2 == a3)
      {
        *(a1 + 8) = result;
        return result;
      }

      v24 = a3 - a2 - 16;
      if (v24 < 0xF0 || ((v44 = v24 & 0xFFFFFFFFFFFFFFF0 | 8, v45 = &result[v44], v46 = &a2[v44], v47 = (v24 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v47]) ? (v48 = a2 + 8 >= &result[v47]) : (v48 = 1), v48 ? (v49 = 0) : (v49 = 1), v45 > a2 ? (v50 = result >= v46) : (v50 = 1), !v50 || (v49 & 1) != 0))
      {
        v15 = result;
        v25 = a2;
      }

      else
      {
        v51 = (v24 >> 4) + 1;
        v52 = 16 * (v51 & 0x1FFFFFFFFFFFFFFCLL);
        v15 = &result[v52];
        v25 = &a2[v52];
        v53 = a2 + 32;
        v54 = result + 32;
        v55 = v51 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v57 = *(v53 - 2);
          v56 = *(v53 - 1);
          v59 = *v53;
          v58 = *(v53 + 1);
          v53 += 64;
          *(v54 - 2) = v57;
          *(v54 - 1) = v56;
          *v54 = v59;
          *(v54 + 1) = v58;
          v54 += 64;
          v55 -= 4;
        }

        while (v55);
        if (v51 == (v51 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }

      do
      {
        v26 = *v25;
        v27 = *(v25 + 1);
        v25 += 16;
        *v15 = v26;
        *(v15 + 1) = v27;
        v15 += 16;
      }

      while (v25 != a3);
LABEL_26:
      *(a1 + 8) = v15;
      return result;
    }

    v16 = &a2[v15 - result];
    if (v15 != result)
    {
      v17 = v15 - result - 16;
      if (v17 < 0xF0 || ((v28 = v17 & 0xFFFFFFFFFFFFFFF0 | 8, v29 = &result[v28], v30 = &a2[v28], v31 = (v17 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v31]) ? (v32 = a2 + 8 >= &result[v31]) : (v32 = 1), v32 ? (v33 = 0) : (v33 = 1), v29 > a2 ? (v34 = result >= v30) : (v34 = 1), !v34 || (v33 & 1) != 0))
      {
        v18 = result;
        v19 = a2;
      }

      else
      {
        v35 = (v17 >> 4) + 1;
        v36 = 16 * (v35 & 0x1FFFFFFFFFFFFFFCLL);
        v18 = &result[v36];
        v19 = &a2[v36];
        v37 = a2 + 32;
        v38 = result + 32;
        v39 = v35 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v41 = *(v37 - 2);
          v40 = *(v37 - 1);
          v43 = *v37;
          v42 = *(v37 + 1);
          v37 += 64;
          *(v38 - 2) = v41;
          *(v38 - 1) = v40;
          *v38 = v43;
          *(v38 + 1) = v42;
          v38 += 64;
          v39 -= 4;
        }

        while (v39);
        if (v35 == (v35 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_18;
        }
      }

      do
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        v19 += 16;
        *v18 = v20;
        *(v18 + 1) = v21;
        v18 += 16;
      }

      while (v19 != v16);
    }

LABEL_18:
    if (v16 != a3)
    {
      v22 = v15;
      do
      {
        v23 = *v16;
        v16 += 16;
        *v15 = v23;
        v15 += 16;
        v22 += 16;
      }

      while (v16 != a3);
      *(a1 + 8) = v22;
      return result;
    }

    goto LABEL_26;
  }

  if (result)
  {
    *(a1 + 8) = result;
    v9 = a4;
    operator delete(result);
    a4 = v9;
    v7 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  if (a4 >> 60)
  {
    goto LABEL_60;
  }

  v10 = v7 >> 3;
  if (v7 >> 3 <= a4)
  {
    v10 = a4;
  }

  v32 = v7 >= 0x7FFFFFFFFFFFFFF0;
  v11 = 0xFFFFFFFFFFFFFFFLL;
  if (!v32)
  {
    v11 = v10;
  }

  if (v11 >> 60)
  {
LABEL_60:
    sub_100005C50();
  }

  v12 = 16 * v11;
  result = operator new(16 * v11);
  v13 = result;
  *a1 = result;
  *(a1 + 8) = result;
  *(a1 + 16) = &result[v12];
  if (a2 != a3)
  {
    v14 = (a3 - a2) & 0xFFFFFFFFFFFFFFF0;
    result = memcpy(result, a2, v14);
    v13 += v14;
  }

  *(a1 + 8) = v13;
  return result;
}

void sub_10001218C(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = &v3[24 * a2];
      v12 = 24 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 1) = 0;
        v3[16] = 0;
        v3 += 24;
        v12 -= 24;
      }

      while (v12);
      v3 = v11;
    }

    a1[1] = v3;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v5 = v4 + a2;
    if (v4 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100005C50();
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100005928();
      }

      v8 = a2;
      v9 = a1;
      v10 = operator new(24 * v7);
      a1 = v9;
      a2 = v8;
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[24 * v4];
    v14 = 24 * a2;
    v15 = &v13[24 * a2];
    v16 = v13;
    do
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 0;
      v16 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = &v10[24 * v7];
    v18 = *a1;
    v19 = &v13[*a1 - v3];
    if (v3 != *a1)
    {
      v20 = v19;
      do
      {
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v20 += 24;
        v18 += 24;
      }

      while (v18 != v3);
      v18 = *a1;
    }

    *a1 = v19;
    a1[1] = v15;
    a1[2] = v17;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

uint64_t sub_100012340(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v6 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v6, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = a2[1];
  }

  if (sub_100012418(a1, v8, &v8[v7]) != &v8[v7])
  {
    sub_1000064AC();
  }

  return a1;
}

void sub_1000123E8(_Unwind_Exception *a1)
{
  sub_100005CD0(&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100012418(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &off_100030A98;
  v7 = operator new(0x10uLL);
  *v7 = off_100030B40;
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &off_100030AF0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
LABEL_4:
      if (v10)
      {
        if (v10 != 16)
        {
          if (v10 != 32)
          {
LABEL_27:
            sub_100006E4C();
          }

          goto LABEL_15;
        }

        return sub_100012904(a1, a2, a3);
      }

      else
      {

        return sub_1000126A0(a1, a2, a3);
      }
    }
  }

  else
  {
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
      goto LABEL_4;
    }
  }

  switch(v10)
  {
    case 0x40u:
LABEL_15:

      return sub_100012AA0(a1, a2, a3);
    case 0x80u:

      return sub_100012C30(a1, a2, a3);
    case 0x100u:

      return sub_100012E10(a1, a2, a3);
    default:
      goto LABEL_27;
  }
}

void sub_100012658(_Unwind_Exception *a1)
{
  sub_100007000(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1000126A0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_100012FF0(a1, v7, a3);
    if (v8 != v7)
    {
      continue;
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 28);
    v11 = sub_100013348(a1, v8, a3);
    if (v8 == v11)
    {
      break;
    }

    v7 = sub_1000135D8(a1, v11, a3, v9, v10 + 1, *(a1 + 28) + 1);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v12 = operator new(0x10uLL);
    v13 = *(a1 + 56);
    v14 = *(v13 + 8);
    *v12 = off_100030B40;
    v12[1] = v14;
    *(v13 + 8) = v12;
    *(a1 + 56) = v12;
  }

LABEL_11:
  if (v8 != a3)
  {
    if (*v8 == 124)
    {
      v22 = *(a1 + 56);
      v23 = v8 + 1;
      v24 = v8 + 1;
      while (1)
      {
        v8 = v24;
        v24 = sub_100012FF0(a1, v24, a3);
        if (v8 == v24)
        {
          v25 = *(a1 + 56);
          v26 = *(a1 + 28);
          v27 = sub_100013348(a1, v8, a3);
          if (v8 == v27)
          {
LABEL_8:
            if (v8 == v23)
            {
              v28 = operator new(0x10uLL);
              v29 = *(a1 + 56);
              v30 = *(v29 + 8);
              *v28 = off_100030B40;
              v28[1] = v30;
              *(v29 + 8) = v28;
              *(a1 + 56) = v28;
            }

            v15 = operator new(0x18uLL);
            v16 = *(v22 + 8);
            v15[1] = *(v6 + 8);
            v15[2] = v16;
            *v15 = &off_1000310B0;
            *(v6 + 8) = v15;
            *(v22 + 8) = 0;
            v17 = operator new(0x10uLL);
            v18 = *(a1 + 56);
            v19 = *(v18 + 8);
            *v17 = off_100030B40;
            v17[1] = v19;
            *(v22 + 8) = v17;
            *(v18 + 8) = 0;
            v20 = operator new(0x10uLL);
            v21 = *(v22 + 8);
            *v20 = &off_1000310F8;
            v20[1] = v21;
            *(v18 + 8) = v20;
            *(a1 + 56) = *(v22 + 8);
            goto LABEL_11;
          }

          v24 = sub_1000135D8(a1, v27, a3, v25, v26 + 1, *(a1 + 28) + 1);
        }

        if (v24 == v8)
        {
          goto LABEL_8;
        }
      }
    }

    return v8;
  }

  return a3;
}

unsigned __int8 *sub_100012904(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      v7 = operator new(0x18uLL);
      v8 = (*(a1 + 24) & 0x5F0) == 1024;
      v9 = *(a1 + 56);
      v10 = *(v9 + 8);
      *v7 = off_100030BE8;
      v7[1] = v10;
      *(v7 + 16) = v8;
      *(v9 + 8) = v7;
      *(a1 + 56) = v7;
      result = a2 + 1;
    }

    if (result != a3)
    {
      do
      {
        if (result == a3)
        {
          v11 = a3;
          goto LABEL_13;
        }

        v11 = result;
        v12 = *(a1 + 56);
        v13 = *(a1 + 28);
        v14 = sub_10001576C(a1, result, a3);
        if (v11 == v14)
        {
          break;
        }

        result = sub_100015994(a1, v14, a3, v12, v13 + 1, *(a1 + 28) + 1);
      }

      while (v11 != result);
      if (v11 + 1 == a3 && *v11 == 36)
      {
        v15 = operator new(0x18uLL);
        v16 = (*(a1 + 24) & 0x5F0) == 1024;
        v17 = *(a1 + 56);
        v18 = *(v17 + 8);
        *v15 = off_100030C30;
        v15[1] = v18;
        *(v15 + 16) = v16;
        *(v17 + 8) = v15;
        *(a1 + 56) = v15;
        ++v11;
      }

LABEL_13:
      if (v11 != a3)
      {
        sub_10000F19C();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *sub_100012AA0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_100015D98(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = v7;
    v7 = sub_100015D98(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
LABEL_12:
    sub_10000F19C();
  }

  if (v8 == a3)
  {
    return a3;
  }

  while (*v8 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v8 + 1;
    v11 = sub_100015D98(a1, v8 + 1, a3);
    if (v8 + 1 == v11)
    {
      goto LABEL_12;
    }

    do
    {
      v8 = v11;
      v11 = sub_100015D98(a1, v11, a3);
    }

    while (v8 != v11);
    if (v8 == v10)
    {
      goto LABEL_12;
    }

    v12 = operator new(0x18uLL);
    v13 = *(v9 + 8);
    v12[1] = *(v6 + 8);
    v12[2] = v13;
    *v12 = &off_1000310B0;
    *(v6 + 8) = v12;
    *(v9 + 8) = 0;
    v14 = operator new(0x10uLL);
    v15 = *(a1 + 56);
    v16 = *(v15 + 8);
    *v14 = off_100030B40;
    v14[1] = v16;
    *(v9 + 8) = v14;
    *(v15 + 8) = 0;
    v17 = operator new(0x10uLL);
    v18 = *(v9 + 8);
    *v17 = &off_1000310F8;
    v17[1] = v18;
    *(v15 + 8) = v17;
    *(a1 + 56) = *(v9 + 8);
    if (v8 == a3)
    {
      return a3;
    }
  }

  return v8;
}

unsigned __int8 *sub_100012C30(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    *v11 = off_100030B40;
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    sub_100012904(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      *v14 = off_100030B40;
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      sub_100012904(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &off_1000310B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    *v18 = off_100030B40;
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &off_1000310F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *sub_100012E10(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    *v11 = off_100030B40;
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    sub_100012AA0(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      *v14 = off_100030B40;
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      sub_100012AA0(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &off_1000310B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    *v18 = off_100030B40;
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &off_1000310F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *sub_100012FF0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      v20 = a2 + 1;
      if (a2 + 1 != a3)
      {
        v21 = a2[1];
        if (v21 == 66)
        {
          sub_100007CF4(a1, 1);
        }

        else
        {
          if (v21 != 98)
          {
            return a2;
          }

          v23 = operator new(0x30uLL);
          v24 = *(*(a1 + 56) + 8);
          *v23 = off_100030C78;
          *(v23 + 1) = v24;
          std::locale::locale(v23 + 2, a1);
          *(v23 + 24) = *(a1 + 8);
          v23[40] = 0;
          *(*(a1 + 56) + 8) = v23;
          *(a1 + 56) = v23;
        }

        return v20 + 1;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = off_100030BE8;
LABEL_17:
    *v15 = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(v13 + 56) = v15;
    return v14 + 1;
  }

  if (v3 == 36)
  {
    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = off_100030C30;
    goto LABEL_17;
  }

  if (v3 != 40)
  {
    return a2;
  }

  v4 = a2 + 1;
  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    return a2;
  }

  v5 = a2[2];
  if (v5 == 33)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v25;
    v34 = v25;
    v31 = v25;
    v32 = v25;
    v26 = a1;
    sub_100007D70(&v31);
    v28 = v26;
    DWORD2(v32) = *(v26 + 24);
    v29 = v4 + 2;
    v30 = a3;
    v12 = sub_100012418(&v31, v29, a3);
    LODWORD(v26) = HIDWORD(v32);
    sub_100007DE0(v28, &v31, 1, *(v28 + 28));
    *(v28 + 28) += v26;
    if (v12 == v30 || *v12 != 41)
    {
      sub_100007E98();
    }

    goto LABEL_27;
  }

  if (v5 != 61)
  {
    return a2;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v6;
  v34 = v6;
  v31 = v6;
  v32 = v6;
  v7 = a1;
  sub_100007D70(&v31);
  v9 = v7;
  DWORD2(v32) = *(v7 + 24);
  v10 = v4 + 2;
  v11 = a3;
  v12 = sub_100012418(&v31, v10, a3);
  LODWORD(v7) = HIDWORD(v32);
  sub_100007DE0(v9, &v31, 0, *(v9 + 28));
  *(v9 + 28) += v7;
  if (v12 == v11 || *v12 != 41)
  {
    sub_100007E98();
  }

LABEL_27:
  sub_100005028(&v31);
  return v12 + 1;
}

unsigned __int8 *sub_100013348(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x3E)
  {
    if (*a2 > 0x5Bu)
    {
      if (v3 == 92)
      {
        return sub_100013954(a1, a2, a3);
      }

      if (v3 != 123)
      {
        return sub_1000098D0(a1, a2, a3);
      }

      goto LABEL_32;
    }

    if (v3 != 91)
    {
      if (v3 != 63)
      {
        return sub_1000098D0(a1, a2, a3);
      }

LABEL_32:
      sub_100009878();
    }

    return sub_100013AA4(a1, a2, a3);
  }

  if (v3 != 40)
  {
    if (v3 == 46)
    {
      v4 = a1;
      v5 = a2;
      v6 = operator new(0x10uLL);
      v7 = *(v4 + 56);
      v8 = *(v7 + 8);
      *v6 = off_100030D08;
      v6[1] = v8;
      *(v7 + 8) = v6;
      *(v4 + 56) = v6;
      return v5 + 1;
    }

    if (v3 - 42 >= 2)
    {
      return sub_1000098D0(a1, a2, a3);
    }

    goto LABEL_32;
  }

  v10 = a2 + 1;
  if (a2 + 1 == a3)
  {
LABEL_33:
    sub_100007E98();
  }

  v11 = a1;
  if (a2 + 2 != a3 && *v10 == 63 && a2[2] == 58)
  {
    ++*(a1 + 36);
    v12 = a3;
    v13 = sub_1000126A0(a1, a2 + 3, a3);
    if (v13 != v12 && *v13 == 41)
    {
      --*(v11 + 36);
      return v13 + 1;
    }

    goto LABEL_33;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    v17 = *(a1 + 28);
  }

  else
  {
    v14 = a3;
    v15 = operator new(0x18uLL);
    a3 = v14;
    v16 = v15;
    a1 = v11;
    v17 = *(v11 + 28) + 1;
    *(v11 + 28) = v17;
    v18 = *(v11 + 56);
    v19 = *(v18 + 8);
    *v16 = off_100030F48;
    v16[1] = v19;
    *(v16 + 4) = v17;
    *(v18 + 8) = v16;
    *(v11 + 56) = v16;
  }

  ++*(a1 + 36);
  v20 = a3;
  v21 = sub_1000126A0(a1, v10, a3);
  if (v21 == v20)
  {
    goto LABEL_33;
  }

  v22 = v21;
  if (*v21 != 41)
  {
    goto LABEL_33;
  }

  v23 = v11;
  if ((*(v11 + 24) & 2) == 0)
  {
    v24 = operator new(0x18uLL);
    v23 = v11;
    v25 = *(v11 + 56);
    v26 = *(v25 + 8);
    *v24 = off_100030F90;
    v24[1] = v26;
    *(v24 + 4) = v17;
    *(v25 + 8) = v24;
    *(v11 + 56) = v24;
  }

  --*(v23 + 36);
  return v22 + 1;
}

unsigned __int8 *sub_1000135D8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = *(a1 + 24) & 0x1F0;
  v8 = *a2;
  if (v8 > 0x3E)
  {
    if (v8 == 63)
    {
      v6 = a2 + 1;
      if (v7)
      {
        v19 = 1;
      }

      else
      {
        v19 = v6 == a3;
      }

      if (!v19 && *v6 == 63)
      {
        v6 = a2 + 2;
        v9 = 0;
        v16 = 1;
        v17 = 0;
        goto LABEL_72;
      }

      v9 = 0;
      v16 = 1;
      goto LABEL_71;
    }

    v6 = a2;
    if (v8 != 123)
    {
      return v6;
    }

    v10 = a2 + 1;
    if (a2 + 1 != a3)
    {
      v11 = *v10;
      if ((v11 & 0xF8) == 0x30 || (v11 & 0xFE) == 0x38)
      {
        v12 = v11 - 48;
        v13 = a2 + 2;
        if (a2 + 2 == a3)
        {
LABEL_19:
          v13 = a3;
        }

        else
        {
          while (1)
          {
            v14 = *v13;
            if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
            {
              break;
            }

            if (v12 >= 214748364)
            {
              goto LABEL_74;
            }

            v12 = v14 + 10 * v12 - 48;
            if (++v13 == a3)
            {
              goto LABEL_19;
            }
          }
        }

        if (v13 != v10)
        {
          if (v13 != a3)
          {
            v15 = *v13;
            if (v15 != 44)
            {
              if (v15 == 125)
              {
                v6 = v13 + 1;
                if (!v7 && v6 != a3 && *v6 == 63)
                {
                  v9 = v12;
                  v6 = v13 + 2;
                  v16 = v12;
                  v17 = 0;
LABEL_72:
                  sub_10000E83C(a1, v9, v16, a4, a5, a6, v17);
                  return v6;
                }

                v9 = v12;
                v16 = v12;
LABEL_71:
                v17 = 1;
                goto LABEL_72;
              }

              goto LABEL_74;
            }

            v20 = v13 + 1;
            if (v13 + 1 == a3)
            {
              goto LABEL_74;
            }

            v21 = *v20;
            if (v21 == 125)
            {
              v6 = v13 + 2;
              if (!v7 && v6 != a3 && *v6 == 63)
              {
                v9 = v12;
                v6 = v13 + 3;
                goto LABEL_34;
              }

              v9 = v12;
LABEL_43:
              v16 = -1;
              goto LABEL_71;
            }

            if (v20 != a3 && ((v21 & 0xF8) == 0x30 || (v21 & 0xFE) == 0x38))
            {
              v22 = v21 - 48;
              v23 = v13 + 2;
              if (v23 == a3)
              {
LABEL_60:
                v23 = a3;
              }

              else
              {
                while (1)
                {
                  v24 = *v23;
                  if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
                  {
                    break;
                  }

                  if (v22 >= 214748364)
                  {
                    goto LABEL_74;
                  }

                  v22 = v24 + 10 * v22 - 48;
                  if (++v23 == a3)
                  {
                    goto LABEL_60;
                  }
                }
              }

              if (v23 != v20 && v23 != a3 && *v23 == 125)
              {
                if (v22 >= v12)
                {
                  v6 = v23 + 1;
                  if (!v7 && v6 != a3 && *v6 == 63)
                  {
                    v9 = v12;
                    v16 = v22;
                    v6 = v23 + 2;
                    v17 = 0;
                    goto LABEL_72;
                  }

                  v9 = v12;
                  v16 = v22;
                  goto LABEL_71;
                }

                goto LABEL_74;
              }
            }
          }

          sub_10000E9D4();
        }
      }
    }

LABEL_74:
    sub_10000E97C();
  }

  if (v8 == 42)
  {
    v6 = a2 + 1;
    if (v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v6 == a3;
    }

    if (!v18 && *v6 == 63)
    {
      v6 = a2 + 2;
      v9 = 0;
      goto LABEL_34;
    }

    v9 = 0;
    goto LABEL_43;
  }

  v6 = a2;
  if (v8 == 43)
  {
    v6 = a2 + 1;
    if (!v7 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      v9 = 1;
LABEL_34:
      v16 = -1;
      v17 = 0;
      goto LABEL_72;
    }

    v9 = 1;
    goto LABEL_43;
  }

  return v6;
}

unsigned __int8 *sub_100013954(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v4 = a2 + 1;
    if (a3 == a2 + 1)
    {
      sub_100009A44();
    }

    v5 = *v4;
    v6 = (v5 - 48);
    if (v5 == 48)
    {
      sub_10000A1F0(a1, v6);
      v3 += 2;
      return v3;
    }

    v7 = v3;
    if ((v5 - 49) <= 8)
    {
      v3 += 2;
      if (v4 + 1 == a3)
      {
        v9 = a3;
        v3 = a3;
      }

      else
      {
        while (1)
        {
          v8 = *v3;
          if ((v8 - 48) > 9)
          {
            break;
          }

          if (v6 >= 0x19999999)
          {
            goto LABEL_23;
          }

          ++v3;
          LODWORD(v6) = v8 + 10 * v6 - 48;
          if (v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        v9 = a3;
        if (!v6)
        {
LABEL_23:
          sub_10000A39C();
        }
      }

      if (v6 > *(a1 + 28))
      {
        goto LABEL_23;
      }

      v10 = a1;
      sub_10000A3F4(a1, v6);
      a1 = v10;
      a3 = v9;
      if (v3 != v4)
      {
        return v3;
      }
    }

    v11 = a1;
    v12 = a3;
    v13 = sub_100013C00(a1, v4, a3);
    v14 = v12;
    v3 = v13;
    if (v13 == v4)
    {
      v15 = sub_100013E60(v11, v4, v14, 0);
      if (v15 == v4)
      {
        return v7;
      }

      else
      {
        return v15;
      }
    }
  }

  return v3;
}

unsigned __int8 *sub_100013AA4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    sub_10000B0EC(v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_21;
    }

    v9 = v7;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      sub_10000AF44(v8, 93);
      v9 = v7 + 1;
    }

    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      do
      {
        v10 = v9;
        sub_10001435C(a1, v9, a3, v8);
      }

      while (v10 != v9);
    }

    if (v10 == a3)
    {
      goto LABEL_21;
    }

    if (*v10 == 45)
    {
      sub_10000AF44(v8, 45);
      ++v10;
    }

    if (v10 == a3 || *v10 != 93)
    {
LABEL_21:
      sub_10000C36C();
    }

    return v10 + 1;
  }

  return a2;
}

unsigned __int8 *sub_100013C00(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v5 = *a2;
  if (v5 > 0x63)
  {
    if (v5 == 119)
    {
      v6 = operator new(0xB0uLL);
      sub_10000B0EC(v6, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_14;
    }

    if (v5 == 115)
    {
      v7 = operator new(0xB0uLL);
      sub_10000B0EC(v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_17;
    }

    if (v5 != 100)
    {
      return v3;
    }

    v7 = operator new(0xB0uLL);
    sub_10000B0EC(v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_12:
    *(*(a1 + 56) + 8) = v7;
    *(a1 + 56) = v7;
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v5)
  {
    case 'D':
      v7 = operator new(0xB0uLL);
      sub_10000B0EC(v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_12;
    case 'S':
      v7 = operator new(0xB0uLL);
      sub_10000B0EC(v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_17:
      *(*(a1 + 56) + 8) = v7;
      *(a1 + 56) = v7;
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v6 = operator new(0xB0uLL);
      sub_10000B0EC(v6, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_14:
      *(*(a1 + 56) + 8) = v6;
      *(a1 + 56) = v6;
      v6[40] |= 0x500u;
      sub_10000AF44(v6, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *sub_100013E60(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 12;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 10;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v6 = a2;
            v8 = 0;
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        case 'c':
          v6 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_98;
          }

          if (*v6 < 65)
          {
            goto LABEL_98;
          }

          v7 = *v6;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_98;
          }

          v8 = v7 & 0x1F;
          if (!a4)
          {
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v7 & 0x1F;
          return v6 + 1;
        case '_':
          goto LABEL_98;
      }
    }

LABEL_76:
    if ((v4 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
    {
      goto LABEL_98;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v6 = a2;
    v8 = v4;
LABEL_82:
    sub_10000A1F0(a1, v8);
    return v6 + 1;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 13;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 9;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

    goto LABEL_76;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v10 = a2[1];
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_98;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_98;
    }

    v11 = *a2;
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v12 = -87;
    }

    v5 = 16 * (v12 + v11);
LABEL_48:
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v13 = a2[1];
    v14 = -48;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      v13 |= 0x20u;
      if ((v13 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v14 = -87;
    }

    if (a2 + 2 != a3)
    {
      v15 = a2[2];
      v16 = -48;
      if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
      {
        goto LABEL_58;
      }

      v15 |= 0x20u;
      if ((v15 - 97) < 6)
      {
        v16 = -87;
LABEL_58:
        v17 = v15 + 16 * (v5 + v14 + v13) + v16;
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v17;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v18 = a2;
        sub_10000A1F0(a1, v17);
        return v18 + 3;
      }
    }

LABEL_98:
    sub_100009A44();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_48;
    }

    goto LABEL_76;
  }

  if (!a4)
  {
    v6 = a2;
    v8 = 11;
    goto LABEL_82;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void sub_10001435C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return;
  }

  v8 = 0;
  v9 = a2 + 1;
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_25:
    v17 = *(a1 + 24) & 0x1F0;
    goto LABEL_26;
  }

  v10 = a2[1];
  if (v10 != 46)
  {
    if (v10 == 58)
    {
      v11 = a2 + 2;
      if (a3 - (v4 + 2) >= 2 && a3 - 1 != v11)
      {
        v12 = v4 + 2;
        v13 = v4 + 3;
        if (v4[2] != 58)
        {
          goto LABEL_14;
        }

LABEL_13:
        if (*v13 == 93)
        {
          if (a3 != v12)
          {
            v21 = sub_1000155F8(a1, v11, v12, *(a1 + 24) & 1);
            if (!v21)
            {
              sub_10000DF54();
            }

            *(a4 + 160) |= v21;
            if (SHIBYTE(v35) < 0)
            {
              goto LABEL_69;
            }

            return;
          }
        }

        else
        {
LABEL_14:
          while (v13 != a3 - 1)
          {
            ++v12;
            if (*v13++ == 58)
            {
              goto LABEL_13;
            }
          }
        }
      }

      sub_10000C36C();
    }

    if (v10 == 61)
    {
      sub_100014918(a1, a2 + 2, a3, a4);
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_69;
    }

    v8 = 0;
    goto LABEL_25;
  }

  v14 = a2 + 2;
  if (a3 - (v4 + 2) < 2 || a3 - 1 == v14)
  {
LABEL_90:
    sub_10000C36C();
  }

  v15 = v4 + 2;
  v16 = v9 + 2;
  if (*(v16 - 1) != 46)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (*v16 != 93)
  {
LABEL_21:
    while (v16 != a3 - 1)
    {
      ++v15;
      if (*v16++ == 46)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_90;
  }

  if (a3 == v15)
  {
    goto LABEL_90;
  }

  v22 = a1;
  sub_100015344(a1, v14, v15, &v36);
  a1 = v22;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
    a1 = v22;
  }

  v35 = v37;
  *__p = v36;
  v23 = HIBYTE(v37);
  v8 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v23 = __p[1];
  }

  if ((v23 - 1) >= 2)
  {
    sub_10000DA84();
  }

  v4 = v15 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  v24 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v24 = __p[1];
  }

  if (v24)
  {
LABEL_49:
    if (v4 == a3)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_26:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v18) = *v4;
    goto LABEL_45;
  }

  v18 = *v4;
  if (v18 != 92)
  {
LABEL_45:
    if (v8 < 0)
    {
      v25 = __p[0];
      __p[1] = 1;
    }

    else
    {
      HIBYTE(v35) = 1;
      v25 = __p;
    }

    *v25 = v18;
    *(v25 + 1) = 0;
    ++v4;
    goto LABEL_49;
  }

  v19 = a1;
  if (v17)
  {
    v20 = sub_100014E78(a1, v4 + 1, a3, __p);
  }

  else
  {
    v20 = sub_100014C94(a1, v4 + 1, a3, __p, a4);
  }

  v4 = v20;
  a1 = v19;
  if (v4 == a3)
  {
LABEL_51:
    if (SHIBYTE(v35) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_68;
      }

      if (__p[1] != 1)
      {
        v27 = __p[0];
LABEL_67:
        sub_10000D830(a4, *v27, *(v27 + 1));
        goto LABEL_68;
      }

      v27 = __p[0];
    }

    else
    {
      if (!HIBYTE(v35))
      {
        goto LABEL_68;
      }

      v27 = __p;
      if (HIBYTE(v35) != 1)
      {
        goto LABEL_67;
      }
    }

    sub_10000AF44(a4, *v27);
    goto LABEL_68;
  }

LABEL_50:
  v26 = *v4;
  if (v26 == 93)
  {
    goto LABEL_51;
  }

  v28 = v4 + 1;
  if (v4 + 1 == a3 || v26 != 45 || *v28 == 93)
  {
    goto LABEL_51;
  }

  v36 = 0uLL;
  v37 = 0;
  v29 = v4 + 2;
  if (v28 + 1 != a3 && *v28 == 91 && *v29 == 46)
  {
    sub_100014BB0(a1, v28 + 2, a3, &v36);
    goto LABEL_81;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v28) = *v28;
    goto LABEL_79;
  }

  LODWORD(v28) = *v28;
  if (v28 != 92)
  {
LABEL_79:
    HIBYTE(v37) = 1;
    LOWORD(v36) = v28;
    goto LABEL_81;
  }

  if (v17)
  {
    sub_100014E78(a1, v29, a3, &v36);
  }

  else
  {
    sub_100014C94(a1, v29, a3, &v36, a4);
  }

LABEL_81:
  *v32 = *__p;
  v33 = v35;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  *v30 = v36;
  v31 = v37;
  v36 = 0uLL;
  v37 = 0;
  sub_10000D394(a4, v32, v30);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_86:
    operator delete(v32[0]);
    if (SHIBYTE(v37) < 0)
    {
      goto LABEL_87;
    }

LABEL_68:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_69;
  }

  operator delete(v30[0]);
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_86;
  }

LABEL_83:
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

LABEL_87:
  operator delete(v36);
  if (SHIBYTE(v35) < 0)
  {
LABEL_69:
    operator delete(__p[0]);
  }
}

void sub_10001485C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_100014918(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_39;
  }

  v6 = a2 + 1;
  v7 = a2;
  if (*a2 != 61)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v6 != 93)
  {
LABEL_5:
    while (v6 != a3 - 1)
    {
      ++v7;
      if (*v6++ == 61)
      {
        goto LABEL_4;
      }
    }

LABEL_39:
    sub_10000C36C();
  }

  if (a3 == v7)
  {
    goto LABEL_39;
  }

  memset(v17, 170, sizeof(v17));
  sub_100015344(a1, a2, v7, v17);
  v8 = SHIBYTE(v17[2]);
  if ((SHIBYTE(v17[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v17[2]))
    {
      memset(__p, 170, sizeof(__p));
      v9 = v17;
      goto LABEL_14;
    }

LABEL_40:
    sub_10000DA84();
  }

  v8 = v17[1];
  if (!v17[1])
  {
    goto LABEL_40;
  }

  memset(__p, 170, sizeof(__p));
  v9 = v17[0];
LABEL_14:
  sub_10000DD90(a1, v9, v8 + v9, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_16:
      v10 = *(a4 + 144);
      if (v10 >= *(a4 + 152))
      {
        *(a4 + 144) = sub_100005AFC(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          sub_10000595C(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v11 = *__p;
          *(v10 + 16) = __p[2];
          *v10 = v11;
        }

        *(a4 + 144) = v10 + 24;
        *(a4 + 144) = v10 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_33;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_16;
  }

  v12 = HIBYTE(v17[2]);
  if (SHIBYTE(v17[2]) < 0)
  {
    v12 = v17[1];
  }

  if (v12 == 2)
  {
    v14 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v14 = v17[0];
    }

    sub_10000D830(a4, *v14, *(v14 + 1));
  }

  else
  {
    if (v12 != 1)
    {
      sub_10000DA84();
    }

    v13 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v13 = v17[0];
    }

    sub_10000AF44(a4, *v13);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_37:
    operator delete(__p[0]);
    if (SHIBYTE(v17[2]) < 0)
    {
      goto LABEL_38;
    }

    return v7 + 2;
  }

LABEL_33:
  if ((SHIBYTE(v17[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_38:
  operator delete(v17[0]);
  return v7 + 2;
}

void sub_100014B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_100014BB0(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_15;
  }

  v5 = a2 + 1;
  v6 = a2;
  if (*a2 != 46)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v5 != 93)
  {
LABEL_5:
    while (v5 != a3 - 1)
    {
      ++v6;
      if (*v5++ == 46)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    sub_10000C36C();
  }

  if (a3 == v6)
  {
    goto LABEL_15;
  }

  sub_100015344(a1, a2, v6, &v10);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  v7 = v11;
  *(a4 + 16) = v11;
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 - 1 >= 2)
  {
    sub_10000DA84();
  }

  return v6 + 2;
}

unsigned __int8 *sub_100014C94(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_100009A44();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        sub_10000AF44(a5, 95);
        return a2 + 1;
      }

      return sub_100013E60(a1, a2, a3, a4);
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      return sub_100013E60(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 8;
    return a2 + 1;
  }

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        sub_10000E120(a5, 95);
        return a2 + 1;
      }

      return sub_100013E60(a1, a2, a3, a4);
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

      return sub_100013E60(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }
}

unsigned __int8 *sub_100014E78(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_82;
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v4 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 12;
          return a2 + 1;
        }

        else
        {
          sub_10000A1F0(a1, 12);
          return a2 + 1;
        }
      }

      else
      {
        if (v4 != 110)
        {
          goto LABEL_48;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 10;
          return a2 + 1;
        }

        else
        {
          sub_10000A1F0(a1, 10);
          return a2 + 1;
        }
      }
    }

    else
    {
      switch(v4)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 13;
            return a2 + 1;
          }

          else
          {
            sub_10000A1F0(a1, 13);
            return a2 + 1;
          }

        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 9;
            return a2 + 1;
          }

          else
          {
            sub_10000A1F0(a1, 9);
            return a2 + 1;
          }

        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 11;
            return a2 + 1;
          }

          else
          {
            sub_10000A1F0(a1, 11);
            return a2 + 1;
          }

        default:
          goto LABEL_48;
      }
    }
  }

  if (*a2 <= 0x5Bu)
  {
    if (v4 != 34 && v4 != 47)
    {
      goto LABEL_48;
    }

    goto LABEL_21;
  }

  if (v4 == 92)
  {
LABEL_21:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      sub_10000A1F0(a1, v4);
      return a2 + 1;
    }
  }

  if (v4 != 97)
  {
    if (v4 == 98)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      else
      {
        sub_10000A1F0(a1, 8);
        return a2 + 1;
      }
    }

LABEL_48:
    if ((v4 & 0xFFFFFFF8) == 0x30)
    {
      v8 = v4 - 48;
      if (a2 + 1 == a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2 + 1;
        v10 = a2[1];
        if ((v10 & 0xF8) == 0x30)
        {
          v8 = v10 + 8 * v8 - 48;
          if (a2 + 2 != a3)
          {
            v11 = a2[2];
            v12 = v11 & 0xF8;
            v13 = v11 + 8 * v8 - 48;
            if (v12 == 48)
            {
              v9 = a2 + 3;
            }

            else
            {
              v9 = a2 + 2;
            }

            if (v12 == 48)
            {
              v8 = v13;
            }

            if (!a4)
            {
              goto LABEL_81;
            }

            goto LABEL_69;
          }

          v9 = a3;
          if (!a4)
          {
LABEL_81:
            sub_10000A1F0(a1, v8);
            return v9;
          }

LABEL_69:
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          result = v9;
          *a4 = v8;
          *(a4 + 1) = 0;
          return result;
        }
      }

      if (!a4)
      {
        goto LABEL_81;
      }

      goto LABEL_69;
    }

LABEL_82:
    sub_100009A44();
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 7;
    return a2 + 1;
  }

  else
  {
    sub_10000A1F0(a1, 7);
    return a2 + 1;
  }
}

void sub_100015344(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100005880();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          sub_100005E08(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            sub_100005D48(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}

void sub_1000155B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1000155F8(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100005880();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_100015750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_10001576C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = sub_100015C0C(a1, a2, a3);
  if (v6 != v4)
  {
    return v6;
  }

  if (v4 == a3 || v4 + 1 == a3 || *v6 != 92)
  {
    return v4;
  }

  v7 = v4[1];
  if (v7 == 40)
  {
    v6 = v4 + 2;
  }

  if (v6 != v4)
  {
    if ((*(a1 + 24) & 2) != 0)
    {
      v11 = *(a1 + 28);
    }

    else
    {
      v9 = v6;
      v10 = operator new(0x18uLL);
      v6 = v9;
      v11 = *(a1 + 28) + 1;
      *(a1 + 28) = v11;
      v12 = *(a1 + 56);
      v13 = *(v12 + 8);
      *v10 = off_100030F48;
      v10[1] = v13;
      *(v10 + 4) = v11;
      *(v12 + 8) = v10;
      *(a1 + 56) = v10;
    }

    do
    {
      if (v6 == a3)
      {
        goto LABEL_31;
      }

      v14 = v6;
      v15 = *(a1 + 56);
      v16 = *(a1 + 28);
      v17 = sub_10001576C(a1, v6, a3);
      if (v14 == v17)
      {
        break;
      }

      v6 = sub_100015994(a1, v17, a3, v15, v16 + 1, *(a1 + 28) + 1);
    }

    while (v14 != v6);
    if (v14 == a3)
    {
      v4 = a3;
    }

    else
    {
      if (v14 + 1 == a3 || *v14 != 92)
      {
        goto LABEL_31;
      }

      if (v14[1] == 41)
      {
        v4 = v14 + 2;
      }

      else
      {
        v4 = v14;
      }
    }

    if (v4 != v14)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        v18 = operator new(0x18uLL);
        v19 = *(a1 + 56);
        v20 = *(v19 + 8);
        *v18 = off_100030F90;
        v18[1] = v20;
        *(v18 + 4) = v11;
        *(v19 + 8) = v18;
        *(a1 + 56) = v18;
        return v4;
      }

      return v4;
    }

LABEL_31:
    sub_100007E98();
  }

  if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38 || (v7 - 49) > 8)
  {
    return v4;
  }

  if ((v7 - 48) > *(a1 + 28))
  {
    sub_10000A39C();
  }

  sub_10000A3F4(a1, v7 - 48);
  return v4 + 2;
}

unsigned __int8 *sub_100015994(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 == 42)
  {
    v7 = a2;
    sub_10000E83C(a1, 0, -1, a4, a5, a6, 1);
    return v7 + 1;
  }

  if (a2 + 1 == a3 || v6 != 92)
  {
    return a2;
  }

  v9 = a2[1] == 123 ? a2 + 2 : a2;
  if (v9 == a2)
  {
    return a2;
  }

  if (v9 == a3)
  {
    v10 = 0;
LABEL_20:
    v12 = a3;
    goto LABEL_21;
  }

  v11 = *v9;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    goto LABEL_54;
  }

  v10 = v11 - 48;
  v12 = v9 + 1;
  if (v9 + 1 == a3)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = *v12;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      break;
    }

    if (v10 >= 214748364)
    {
      goto LABEL_54;
    }

    v10 = v13 + 10 * v10 - 48;
    if (++v12 == a3)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v12 == v9)
  {
    goto LABEL_54;
  }

  if (v12 == a3)
  {
    goto LABEL_55;
  }

  v14 = *v12;
  v15 = v12 + 1;
  if (v14 == 44)
  {
    if (v15 == a3)
    {
      goto LABEL_55;
    }

    v16 = *v15;
    if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
    {
      v15 = v12 + 2;
      if (v12 + 2 == a3)
      {
        goto LABEL_55;
      }

      v17 = v16 - 48;
      while (1)
      {
        v22 = *v15;
        if ((v22 & 0xF8) != 0x30 && (v22 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_54;
        }

        v17 = v22 + 10 * v17 - 48;
        if (++v15 == a3)
        {
          v15 = a3;
          break;
        }
      }
    }

    else
    {
      v17 = -1;
    }

    if (v15 != a3)
    {
      if (v15 + 1 == a3 || *v15 != 92)
      {
        goto LABEL_55;
      }

      if (v15[1] == 125)
      {
        a3 = v15 + 2;
      }

      else
      {
        a3 = v15;
      }
    }

    if (a3 != v15)
    {
      if (v17 == -1)
      {
        v20 = v10;
        v19 = a3;
        v21 = -1;
        goto LABEL_53;
      }

      if (v17 >= v10)
      {
        v19 = a3;
        v20 = v10;
        v21 = v17;
        goto LABEL_53;
      }

LABEL_54:
      sub_10000E97C();
    }

LABEL_55:
    sub_10000E9D4();
  }

  if (v15 == a3 || v14 != 92)
  {
    goto LABEL_55;
  }

  v18 = (v12[1] == 125 ? v12 + 2 : v12);
  if (v12 == v18)
  {
    goto LABEL_55;
  }

  v19 = v18;
  v20 = v10;
  v21 = v10;
LABEL_53:
  sub_10000E83C(a1, v20, v21, a4, a5, a6, 1);
  return v19;
}

unsigned __int8 *sub_100015C0C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return sub_100013AA4(a1, a2, a3);
  }

  v4 = a2 + 1;
  v3 = *a2;
  if ((a2 + 1 != a3 || v3 != 36) && ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0))
  {
    v18 = a2;
    sub_10000A1F0(a1, v3);
    return v18 + 1;
  }

  v6 = a2;
  if (v4 == a3)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  if (v7 == 92)
  {
    v8 = *v4;
    if ((v8 - 36) > 0x3A || ((1 << (v8 - 36)) & 0x580000000000441) == 0)
    {
      return sub_100013AA4(a1, a2, a3);
    }

    v10 = a1;
    v11 = a2;
    v12 = a3;
    sub_10000A1F0(a1, v8);
    a2 = v11;
    a3 = v12;
    a1 = v10;
    v6 = v4 + 1;
    if (v4 + 1 == v11)
    {
LABEL_9:
      if (*v6 != 46)
      {
        return sub_100013AA4(a1, a2, a3);
      }

LABEL_19:
      v14 = a1;
      v15 = operator new(0x10uLL);
      v16 = *(v14 + 56);
      v17 = *(v16 + 8);
      *v15 = off_100031140;
      v15[1] = v17;
      *(v16 + 8) = v15;
      *(v14 + 56) = v15;
      return v6 + 1;
    }

    return v6;
  }

  v6 = a2;
  if (v7 == 46)
  {
    goto LABEL_19;
  }

  return sub_100013AA4(a1, a2, a3);
}

unsigned __int8 *sub_100015D98(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_100015FD8(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = off_100030C30;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v16 = *(a1 + 28);
        }

        else
        {
          v15 = operator new(0x18uLL);
          v16 = *(a1 + 28) + 1;
          *(a1 + 28) = v16;
          v17 = *(a1 + 56);
          v18 = *(v17 + 8);
          *v15 = off_100030F48;
          v15[1] = v18;
          *(v15 + 4) = v16;
          *(v17 + 8) = v15;
          *(a1 + 56) = v15;
        }

        ++*(a1 + 36);
        v19 = sub_100012AA0(a1, v9 + 1, a3);
        if (v19 == a3 || (v9 = v19, *v19 != 41))
        {
          sub_100007E98();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 56);
          v22 = *(v21 + 8);
          *v20 = off_100030F90;
          v20[1] = v22;
          *(v20 + 4) = v16;
          *(v21 + 8) = v20;
          *(a1 + 56) = v20;
        }

        --*(a1 + 36);
        goto LABEL_17;
      case '^':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = off_100030BE8;
        break;
      default:
        goto LABEL_18;
    }

    *v11 = v14;
    *(v11 + 16) = v12;
    *(v13 + 8) = v11;
    *(a1 + 56) = v11;
LABEL_17:
    ++v9;
  }

LABEL_18:
  if (v9 == a2)
  {
    return a2;
  }

  v23 = *(a1 + 28) + 1;

  return sub_1000135D8(a1, v9, a3, v6, v7 + 1, v23);
}

unsigned __int8 *sub_100015FD8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    result = sub_100016140(a1, a2, a2);
    if (result != a2)
    {
      return result;
    }

    return sub_100013AA4(a1, a2, a3);
  }

  v7 = *a2;
  v8 = (v7 - 36);
  if (v8 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v7 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_6;
  }

  if (v8 == 5)
  {
    if (!*(a1 + 36))
    {
      sub_10000A1F0(a1, 41);
      return a2 + 1;
    }
  }

  else
  {
LABEL_13:
    if ((v7 - 123) >= 2)
    {
      sub_10000A1F0(a1, v7);
      return a2 + 1;
    }
  }

LABEL_6:
  result = sub_100016140(a1, a2, a3);
  if (result == a2)
  {
    if (*result == 46)
    {
      v9 = result;
      v10 = operator new(0x10uLL);
      v11 = *(a1 + 56);
      v12 = *(v11 + 8);
      *v10 = off_100031140;
      v10[1] = v12;
      *(v11 + 8) = v10;
      *(a1 + 56) = v10;
      return v9 + 1;
    }

    return sub_100013AA4(a1, a2, a3);
  }

  return result;
}

unsigned __int8 *sub_100016140(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return v3;
  }

  v4 = a2[1];
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    sub_10000A1F0(a1, v4);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    return sub_100014E78(a1, a2 + 1, a3, 0);
  }

  if (sub_10000F8D8(a1, v4))
  {
    v3 += 2;
  }

  return v3;
}

void sub_100016378(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x100016338);
  }

  __cxa_rethrow();
}

const void **sub_100016408(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_10001643C(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *sub_100016584(void *a1, int a2, int a3)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1000166D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1000166B0);
}

uint64_t sub_100016738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100005880();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_100016910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void util::readPlistToCFDictionary(uint64_t a1@<X0>, CFPropertyListRef *a2@<X8>)
{
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v17 = CFStringCreateWithCString(kCFAllocatorDefault, v2, 0x8000100u);
  v4 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v17, kCFURLPOSIXPathStyle, 0);
  cf = v4;
  *a2 = 0;
  if (v4)
  {
    v5 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v4);
    v6 = v5;
    v15 = v5;
    if (!v5)
    {
      goto LABEL_16;
    }

    CFReadStreamOpen(v5);
    error = 0;
    *a2 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v6, 0, 1uLL, 0, &error);
    CFReadStreamClose(v6);
    if (!error)
    {
      goto LABEL_15;
    }

    CFErrorGetDomain(error);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v13 = *&buf[16];
    if ((atomic_load_explicit(&qword_1000346B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000346B8))
    {
      qword_1000346C0 = 0;
      qword_1000346C8 = 0;
      __cxa_guard_release(&qword_1000346B8);
    }

    if (qword_1000346B0 == -1)
    {
      v7 = qword_1000346C8;
      if (!os_log_type_enabled(qword_1000346C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&qword_1000346B0, &stru_100031198);
      v7 = qword_1000346C8;
      if (!os_log_type_enabled(qword_1000346C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v9 = cf;
    Code = CFErrorGetCode(error);
    v11 = __p;
    if (v13 < 0)
    {
      v11 = __p[0];
    }

    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = Code;
    *&buf[22] = 2080;
    v19 = v11;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
LABEL_9:
    CFRelease(error);
    v8 = *a2;
    *a2 = 0;
    if (v8)
    {
      CFRelease(v8);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
      v6 = v15;
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = v15;
      if (!v15)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    CFRelease(v6);
    goto LABEL_16;
  }

LABEL_18:
  if (v17)
  {
    CFRelease(v17);
  }
}

void sub_100016BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    sub_100004D3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100016C40(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    result = strcasecmp(a1, "false");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "off");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "no");
    if (!result)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

LABEL_28:
    result = 1;
LABEL_29:
    *a2 = result;
    return result;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  result = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "off");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "no");
  if (!result)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_31:
    result = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_31;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  result = std::stol(a1, &__idx, 10);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx == size && result >= 0xFFFFFFFF80000000 && result <= 0x7FFFFFFF)
  {
    goto LABEL_29;
  }

  return result;
}

void util::findLastLogDumpTimestamp(util *this@<X0>, const char *__s@<X1>, const char *a3@<X2>, int a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v239 = a3;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v276 = 0;
  v275 = 0;
  v277 = 0;
  memset(v274, 170, 24);
  v7 = strlen(__s);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100005880();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v7 | 7) + 1;
    }

    v9 = operator new(v14);
    *&__dst[0].st_uid = v14 | 0x8000000000000000;
    *&__dst[0].st_dev = v9;
    __dst[0].st_ino = v8;
  }

  else
  {
    HIBYTE(__dst[0].st_gid) = v7;
    v9 = __dst;
    if (!v7)
    {
      LOBYTE(__dst[0].st_dev) = 0;
      st_gid_high = SHIBYTE(__dst[0].st_gid);
      if ((SHIBYTE(__dst[0].st_gid) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(v9, __s, v8);
  *(&v9->st_dev + v8) = 0;
  st_gid_high = SHIBYTE(__dst[0].st_gid);
  if ((SHIBYTE(__dst[0].st_gid) & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (st_gid_high - 21 < 2)
    {
      v11 = st_gid_high + 2;
      v12 = __dst;
      v13 = 22;
LABEL_15:
      v15 = 2 * v13;
      if (v11 > 2 * v13)
      {
        v15 = v11;
      }

      if ((v15 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v15 | 7) + 1;
      }

      if (v15 >= 0x17)
      {
        v17 = v16;
      }

      else
      {
        v17 = 23;
      }

      v18 = v13 == 22;
      goto LABEL_24;
    }

    v22 = __dst;
    *(&__dst[0].st_dev + st_gid_high) = 10798;
    v23 = st_gid_high + 2;
    if ((SHIBYTE(__dst[0].st_gid) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_12:
  st_gid_high = __dst[0].st_ino;
  v13 = (*&__dst[0].st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v13 - __dst[0].st_ino >= 2)
  {
    v22 = *&__dst[0].st_dev;
    *(*&__dst[0].st_dev + __dst[0].st_ino) = 10798;
    v23 = st_gid_high + 2;
    if ((SHIBYTE(__dst[0].st_gid) & 0x80000000) == 0)
    {
LABEL_30:
      HIBYTE(__dst[0].st_gid) = v23 & 0x7F;
LABEL_33:
      v21 = v22 + v23;
      goto LABEL_34;
    }

LABEL_32:
    __dst[0].st_ino = v23;
    goto LABEL_33;
  }

  v11 = __dst[0].st_ino + 2;
  if (0x7FFFFFFFFFFFFFF7 - (*&__dst[0].st_uid & 0x7FFFFFFFFFFFFFFFuLL) < __dst[0].st_ino + 2 - v13)
  {
    sub_100005880();
  }

  v12 = *&__dst[0].st_dev;
  if (v13 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v18 = 0;
  v17 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v19 = operator new(v17);
  v20 = v19;
  if (st_gid_high)
  {
    memmove(v19, v12, st_gid_high);
  }

  *&v20[st_gid_high] = 10798;
  if (!v18)
  {
    operator delete(v12);
  }

  *&__dst[0].st_uid = v17 | 0x8000000000000000;
  *&__dst[0].st_dev = v20;
  __dst[0].st_ino = v11;
  v21 = &v20[v11];
LABEL_34:
  *v21 = 0;
  v274[2] = *&__dst[0].st_uid;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v273 = v24;
  *v274 = *&__dst[0].st_dev;
  *&v272[16] = v24;
  *&v272[32] = v24;
  *v272 = v24;
  sub_100012340(v272, v274, 0);
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v270[32] = v25;
  v271 = v25;
  *v270 = v25;
  *&v270[16] = v25;
  sub_100005F20(v270, "(\\d{4})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{3})", 0);
  v26 = a5 == 0;
  v27 = strlen(this);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100005880();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v30 = 25;
    }

    else
    {
      v30 = (v27 | 7) + 1;
    }

    v29 = operator new(v30);
    __p[1] = v28;
    v269 = v30 | 0x8000000000000000;
    __p[0] = v29;
    goto LABEL_42;
  }

  HIBYTE(v269) = v27;
  v29 = __p;
  if (v27)
  {
LABEL_42:
    memcpy(v29, this, v28);
  }

  *(v28 + v29) = 0;
  std::locale::locale(&v262, v272);
  v263 = *&v272[8];
  v264 = *&v272[24];
  v265 = *&v272[40];
  v266 = v273;
  if (v273)
  {
    atomic_fetch_add_explicit((v273 + 8), 1uLL, memory_order_relaxed);
  }

  v267 = *(&v273 + 1);
  v31 = sub_1000050C0(__p, &v262, &v275, 0);
  v32 = v266;
  if (!v266 || atomic_fetch_add(&v266->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(&v262);
    if ((SHIBYTE(v269) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(__p[0]);
    v33 = a6;
    if (!v31)
    {
      goto LABEL_458;
    }

    goto LABEL_52;
  }

  (v32->__on_zero_shared)(v32);
  std::__shared_weak_count::__release_weak(v32);
  std::locale::~locale(&v262);
  if (SHIBYTE(v269) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v33 = a6;
  if (!v31)
  {
    goto LABEL_458;
  }

LABEL_52:
  v34 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v276 - v275) >> 3));
  if (v276 == v275)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  sub_1000196B8(v275, v276, __dst, v35, 1);
  v260[0] = 0;
  v260[1] = 0;
  v261 = 0;
  v36 = v275;
  v242 = v276;
  v33 = a6;
  if (v275 == v276)
  {
LABEL_458:
    if (!v239)
    {
      goto LABEL_491;
    }

    goto LABEL_459;
  }

  while (2)
  {
    memset(v259, 170, 24);
    v244 = v36;
    v245 = v26;
    if (*(v36 + 23) < 0)
    {
      sub_10000595C(v259, *v36, v36[1]);
    }

    else
    {
      v37 = *v36;
      v259[2] = v36[2];
      *v259 = v37;
    }

    if (v261 >= 0)
    {
      v38 = HIBYTE(v261);
    }

    else
    {
      v38 = v260[1];
    }

    v39 = HIBYTE(v259[2]);
    v40 = SHIBYTE(v259[2]);
    v42 = v259[0];
    v41 = v259[1];
    if (v38)
    {
      v43 = SHIBYTE(v259[2]) >= 0 ? v259 : v259[0];
      v44 = SHIBYTE(v259[2]) >= 0 ? HIBYTE(v259[2]) : v259[1];
      v45 = v261 >= 0 ? v260 : v260[0];
      if (v44 >= v38)
      {
        v64 = &v44[v43];
        v65 = *v45;
        v66 = v43;
        do
        {
          v67 = &v44[-v38];
          if (v67 == -1)
          {
            break;
          }

          v68 = memchr(v66, v65, (v67 + 1));
          if (!v68)
          {
            break;
          }

          v69 = v68;
          if (!memcmp(v68, v45, v38))
          {
            if (v69 == v64 || v69 - v43 == -1)
            {
              break;
            }

            v63 = 3;
            v33 = a6;
            v78 = v244;
            v26 = v245;
            if ((v40 & 0x80) == 0)
            {
              goto LABEL_431;
            }

            goto LABEL_135;
          }

          v66 = (v69 + 1);
          v44 = (v64 - (v69 + 1));
        }

        while (v44 >= v38);
      }
    }

    *&v46 = 0xAAAAAAAAAAAAAAAALL;
    *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v306 = v46;
    v303 = 0xAAAAAAAAAAAAAA00;
    v300[3] = 0xAAAAAAAAAAAAAAAALL;
    v301 = 0;
    v302 = 0;
    v304 = 0;
    v305 = 0;
    LOBYTE(v306) = 0;
    BYTE8(v306) = 0;
    v307 = 0;
    *v299 = 0u;
    memset(v300, 0, 25);
    if (!v245)
    {
      if (v40 >= 0)
      {
        v59 = v259;
      }

      else
      {
        v59 = v42;
      }

      if (v40 >= 0)
      {
        v60 = v39;
      }

      else
      {
        v60 = v41;
      }

      v61 = strlen(a5);
      v33 = a6;
      if (v61)
      {
        v62 = v61;
        if (v60 < v61)
        {
LABEL_112:
          v26 = 0;
          v63 = 0;
          goto LABEL_428;
        }

        v70 = &v60[v59];
        v71 = *a5;
        v72 = v59;
        while (1)
        {
          if (&v60[-v62] == -1)
          {
            goto LABEL_112;
          }

          v73 = memchr(v72, v71, &v60[-v62 + 1]);
          if (!v73)
          {
            goto LABEL_112;
          }

          v74 = v73;
          if (!memcmp(v73, a5, v62))
          {
            break;
          }

          v72 = (v74 + 1);
          v60 = (v70 - (v74 + 1));
          if (v60 < v62)
          {
            goto LABEL_112;
          }
        }

        v26 = 0;
        if (v74 == v70)
        {
          v63 = 0;
          goto LABEL_428;
        }

        v63 = 0;
        if (v74 - v59 == -1)
        {
          goto LABEL_428;
        }
      }

      sub_10001B4D8(v260, a5);
LABEL_187:
      v63 = 0;
      goto LABEL_427;
    }

    *&__dst[0].st_birthtimespec.tv_nsec = v46;
    __dst[0].st_ctimespec = 0xAAAAAAAAAAAAAA00;
    __dst[0].st_atimespec.tv_nsec = v46;
    __dst[0].st_mtimespec = 0uLL;
    __dst[0].st_birthtimespec.tv_sec = 0;
    LOBYTE(__dst[0].st_birthtimespec.tv_nsec) = 0;
    LOBYTE(__dst[0].st_size) = 0;
    __dst[0].st_blocks = 0;
    memset(__dst, 0, 32);
    if (v40 >= 0)
    {
      v47 = v259;
    }

    else
    {
      v47 = v42;
    }

    if (v40 >= 0)
    {
      v48 = v39;
    }

    else
    {
      v48 = v41;
    }

    *(&__dst[0].st_rdev + 1) = 0uLL;
    v49 = sub_10000FD5C(v270, v47, &v48[v47], __dst, 0);
    v50 = HIBYTE(v259[2]);
    if (SHIBYTE(v259[2]) >= 0)
    {
      v51 = v259;
    }

    else
    {
      v51 = v259[0];
    }

    if (SHIBYTE(v259[2]) < 0)
    {
      v50 = v259[1];
    }

    sub_100010068(v299, v51, &v50[v51], &__dst[0].st_dev, 0);
    v33 = a6;
    if (*&__dst[0].st_dev)
    {
      __dst[0].st_ino = *&__dst[0].st_dev;
      operator delete(*&__dst[0].st_dev);
    }

    if (!v49)
    {
      goto LABEL_187;
    }

    v52 = v299[0] + 16;
    if (v299[1] == v299[0])
    {
      v52 = &v300[3];
    }

    if (*v52 == 1)
    {
      v53 = &v300[1];
      if (v299[1] != v299[0])
      {
        v53 = v299[0];
      }

      v54 = *v53;
      v55 = (v299[0] + 8);
      if (v299[1] == v299[0])
      {
        v55 = &v300[2];
      }

      v56 = *v55;
      v57 = *v55 - v54;
      if (v57 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100005880();
      }

      if (v57 > 0x16)
      {
        if ((v57 | 7) == 0x17)
        {
          v79 = 25;
        }

        else
        {
          v79 = (v57 | 7) + 1;
        }

        v58 = operator new(v79);
        *&__dst[0].st_uid = v79 | 0x8000000000000000;
        *&__dst[0].st_dev = v58;
        __dst[0].st_ino = v57;
        if (v56 == v54)
        {
LABEL_101:
          *(&v58->st_dev + v57) = 0;
          if (*(a6 + 23) < 0)
          {
            goto LABEL_102;
          }

LABEL_126:
          *a6 = *&__dst[0].st_dev;
          *(a6 + 16) = *&__dst[0].st_uid;
          if (!a4)
          {
            goto LABEL_426;
          }

          goto LABEL_127;
        }
      }

      else
      {
        HIBYTE(__dst[0].st_gid) = *v55 - v54;
        v58 = __dst;
        if (v56 == v54)
        {
          goto LABEL_101;
        }
      }

      memmove(v58, v54, v57);
      goto LABEL_101;
    }

    memset(__dst, 0, 24);
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

LABEL_102:
    operator delete(*a6);
    *a6 = *&__dst[0].st_dev;
    *(a6 + 16) = *&__dst[0].st_uid;
    if (!a4)
    {
      goto LABEL_426;
    }

LABEL_127:
    v75 = strlen(this);
    if (v75 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100005880();
    }

    v76 = v75;
    if (v75 >= 0x17)
    {
      if ((v75 | 7) == 0x17)
      {
        v80 = 25;
      }

      else
      {
        v80 = (v75 | 7) + 1;
      }

      v77 = operator new(v80);
      v257[1] = v76;
      v258 = v80 | 0x8000000000000000;
      v257[0] = v77;
LABEL_146:
      memcpy(v77, this, v76);
      *(v76 + v77) = 0;
      if ((*(a6 + 23) & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_147;
    }

    HIBYTE(v258) = v75;
    v77 = v257;
    if (v75)
    {
      goto LABEL_146;
    }

    LOBYTE(v257[0]) = 0;
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
LABEL_131:
      *v255 = *a6;
      v256 = *(a6 + 16);
      goto LABEL_148;
    }

LABEL_147:
    sub_10000595C(v255, *a6, *(a6 + 8));
LABEL_148:
    v295 = 0;
    v294 = 0;
    v296 = 0;
    *&v81 = 0xAAAAAAAAAAAAAAAALL;
    *(&v81 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v292[32] = v81;
    v293 = v81;
    *v292 = v81;
    *&v292[16] = v81;
    v82 = SHIBYTE(v256);
    if (v256 >= 0)
    {
      v83 = HIBYTE(v256);
    }

    else
    {
      v83 = v255[1];
    }

    v84 = v83 + 2;
    if (v83 + 2 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100005880();
    }

    if (v84 < 0x17)
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = 10798;
      buf[23] = v83 + 2;
      v87 = &buf[2];
      if (!v83)
      {
        goto LABEL_162;
      }
    }

    else
    {
      if ((v84 | 7) == 0x17)
      {
        v85 = 25;
      }

      else
      {
        v85 = (v84 | 7) + 1;
      }

      v86 = operator new(v85);
      *&buf[8] = v83 + 2;
      *&buf[16] = v85 | 0x8000000000000000;
      *buf = v86;
      *v86 = 10798;
      v87 = (v86 + 1);
    }

    if (v82 >= 0)
    {
      v88 = v255;
    }

    else
    {
      v88 = v255[0];
    }

    memmove(v87, v88, v83);
LABEL_162:
    v87[v83] = 0;
    v89 = buf[23];
    if ((buf[23] & 0x8000000000000000) == 0)
    {
      if ((buf[23] - 21) < 2)
      {
        v90 = buf[23] + 2;
        v91 = buf;
        v92 = 22;
LABEL_168:
        v93 = 2 * v92;
        if (v90 > 2 * v92)
        {
          v93 = v90;
        }

        if ((v93 | 7) == 0x17)
        {
          v94 = 25;
        }

        else
        {
          v94 = (v93 | 7) + 1;
        }

        if (v93 >= 0x17)
        {
          v95 = v94;
        }

        else
        {
          v95 = 23;
        }

        v96 = v92 == 22;
        goto LABEL_177;
      }

      v100 = buf;
      *&buf[buf[23]] = 10798;
      v101 = v89 + 2;
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_189;
    }

    v89 = *&buf[8];
    v92 = (*&buf[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v92 - *&buf[8] >= 2)
    {
      v100 = *buf;
      *(*buf + *&buf[8]) = 10798;
      v101 = v89 + 2;
      if ((buf[23] & 0x80000000) == 0)
      {
LABEL_183:
        buf[23] = v101 & 0x7F;
LABEL_190:
        v99 = &v100[v101];
        goto LABEL_191;
      }

LABEL_189:
      *&buf[8] = v101;
      goto LABEL_190;
    }

    v90 = *&buf[8] + 2;
    if (0x7FFFFFFFFFFFFFF7 - (*&buf[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&buf[8] + 2 - v92)
    {
      sub_100005880();
    }

    v91 = *buf;
    if (v92 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_168;
    }

    v96 = 0;
    v95 = 0x7FFFFFFFFFFFFFF7;
LABEL_177:
    v97 = operator new(v95);
    v98 = v97;
    if (v89)
    {
      memmove(v97, v91, v89);
    }

    *&v98[v89] = 10798;
    if (!v96)
    {
      operator delete(v91);
    }

    *&buf[8] = v90;
    *&buf[16] = v95 | 0x8000000000000000;
    *buf = v98;
    v99 = &v98[v90];
LABEL_191:
    *v99 = 0;
    *&__dst[0].st_dev = *buf;
    *&__dst[0].st_uid = *&buf[16];
    memset(buf, 0, sizeof(buf));
    sub_100012340(v292, __dst, 0);
    if ((SHIBYTE(__dst[0].st_gid) & 0x80000000) == 0)
    {
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_193;
      }

LABEL_196:
      operator delete(*buf);
      if ((SHIBYTE(v258) & 0x80000000) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_197;
    }

    operator delete(*&__dst[0].st_dev);
    if (buf[23] < 0)
    {
      goto LABEL_196;
    }

LABEL_193:
    if ((SHIBYTE(v258) & 0x80000000) == 0)
    {
LABEL_194:
      *v290 = *v257;
      v291 = v258;
      goto LABEL_198;
    }

LABEL_197:
    sub_10000595C(v290, v257[0], v257[1]);
LABEL_198:
    std::locale::locale(&v284, v292);
    v285 = *&v292[8];
    v286 = *&v292[24];
    v287 = *&v292[40];
    v288 = v293;
    if (v293)
    {
      atomic_fetch_add_explicit((v293 + 8), 1uLL, memory_order_relaxed);
    }

    v289 = *(&v293 + 1);
    v102 = sub_1000050C0(v290, &v284, &v294, 0);
    v103 = v288;
    if (!v288 || atomic_fetch_add(&v288->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      std::locale::~locale(&v284);
      if ((SHIBYTE(v291) & 0x80000000) == 0)
      {
        goto LABEL_203;
      }

LABEL_207:
      operator delete(v290[0]);
      if (!v102)
      {
LABEL_208:
        v104 = 0;
        v105 = v293;
        if (v293)
        {
          goto LABEL_343;
        }

        goto LABEL_402;
      }

      goto LABEL_204;
    }

    (v103->__on_zero_shared)(v103);
    std::__shared_weak_count::__release_weak(v103);
    std::locale::~locale(&v284);
    if (SHIBYTE(v291) < 0)
    {
      goto LABEL_207;
    }

LABEL_203:
    if (!v102)
    {
      goto LABEL_208;
    }

LABEL_204:
    memset(v283, 170, 24);
    if (SHIBYTE(v258) < 0)
    {
      sub_10000595C(v281, v257[0], v257[1]);
    }

    else
    {
      *v281 = *v257;
      v282 = v258;
    }

    v279 = 0;
    v278 = 0;
    v280 = 0;
    v106 = v294;
    v107 = v295;
    *&buf[8] = 0xAAAAAAAAAAAAAA00;
    *buf = &v278;
    v108 = v295 - v294;
    if (v295 == v294)
    {
      memset(v283, 0, 24);
      goto LABEL_306;
    }

    if (0xAAAAAAAAAAAAAAABLL * (v108 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_100005C50();
    }

    v109 = operator new(v295 - v294);
    v278 = v109;
    v279 = v109;
    v280 = v109 + v108;
    v298[0] = v109;
    v297 = v109;
    *&__dst[0].st_dev = &v278;
    __dst[0].st_ino = &v297;
    *&__dst[0].st_rdev = 0xAAAAAAAAAAAAAA00;
    *&__dst[0].st_uid = v298;
    do
    {
      while ((*(v106 + 23) & 0x80000000) == 0)
      {
        v110 = *v106;
        v109[2] = v106[2];
        *v109 = v110;
        v111 = v109;
        v106 += 3;
        v109 += 3;
        v298[0] = v109;
        if (v106 == v107)
        {
          goto LABEL_217;
        }
      }

      sub_10000595C(v109, *v106, v106[1]);
      v111 = v298[0];
      v106 += 3;
      v109 = v298[0] + 24;
      v298[0] = v298[0] + 24;
    }

    while (v106 != v107);
LABEL_217:
    v279 = v109;
    memset(v283, 0, 24);
    if (v278 == v109)
    {
      goto LABEL_306;
    }

    v112 = v278 - 24;
    while (1)
    {
      memset(buf, 170, sizeof(buf));
      if (v112[47] < 0)
      {
        sub_10000595C(buf, *(v112 + 3), *(v112 + 4));
      }

      else
      {
        v113 = *(v112 + 24);
        *&buf[16] = *(v112 + 5);
        *buf = v113;
      }

      memset(v298, 170, sizeof(v298));
      v114 = SHIBYTE(v282);
      if (v282 >= 0)
      {
        v115 = HIBYTE(v282);
      }

      else
      {
        v115 = v281[1];
      }

      v116 = buf[23];
      if ((buf[23] & 0x80u) == 0)
      {
        v117 = buf[23];
      }

      else
      {
        v117 = *&buf[8];
      }

      v118 = v117 + v115;
      if (v117 + v115 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100005880();
      }

      if (v118 <= 0x16)
      {
        memset(v298, 0, sizeof(v298));
        v120 = v298;
        HIBYTE(v298[2]) = v117 + v115;
        if (!v115)
        {
          goto LABEL_242;
        }

LABEL_238:
        if (v114 >= 0)
        {
          v121 = v281;
        }

        else
        {
          v121 = v281[0];
        }

        memmove(v120, v121, v115);
        goto LABEL_242;
      }

      if ((v118 | 7) == 0x17)
      {
        v119 = 25;
      }

      else
      {
        v119 = (v118 | 7) + 1;
      }

      v120 = operator new(v119);
      v298[2] = (v119 | 0x8000000000000000);
      v298[0] = v120;
      v298[1] = (v117 + v115);
      if (v115)
      {
        goto LABEL_238;
      }

LABEL_242:
      if (v117)
      {
        if (v116 >= 0)
        {
          v122 = buf;
        }

        else
        {
          v122 = *buf;
        }

        memmove(&v120[v115], v122, v117);
      }

      v120[v115 + v117] = 0;
      v123.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v123.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *__dst[0].st_qspare = v123;
      *&__dst[0].st_blksize = v123;
      *&__dst[0].st_size = v123;
      __dst[0].st_birthtimespec = v123;
      __dst[0].st_ctimespec = v123;
      __dst[0].st_mtimespec = v123;
      __dst[0].st_atimespec = v123;
      *&__dst[0].st_uid = v123;
      *&__dst[0].st_dev = v123;
      v124 = SHIBYTE(v298[2]) >= 0 ? v298 : v298[0];
      if (!stat(v124, __dst))
      {
        v126 = SHIBYTE(v298[2]) >= 0 ? v298 : v298[0];
        v127 = opendir(v126);
        v128 = v127;
        if (v127)
        {
          break;
        }
      }

      v125 = HIBYTE(v298[2]);
LABEL_252:
      if (v125 < 0)
      {
        operator delete(v298[0]);
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_220;
        }

LABEL_254:
        operator delete(*buf);
        v112 += 24;
        if (v112 == v111)
        {
          goto LABEL_306;
        }
      }

      else
      {
        if (buf[23] < 0)
        {
          goto LABEL_254;
        }

LABEL_220:
        v112 += 24;
        if (v112 == v111)
        {
          goto LABEL_306;
        }
      }
    }

    v129 = readdir(v127);
    closedir(v128);
    v125 = HIBYTE(v298[2]);
    if (!v129)
    {
      goto LABEL_252;
    }

    if ((HIBYTE(v298[2]) & 0x80) == 0)
    {
      if (HIBYTE(v298[2]) <= 4u)
      {
        goto LABEL_596;
      }

      v130 = &v297 + HIBYTE(v298[2]) + 3;
      if (*v130 == 1885626669 && *(&v297 + HIBYTE(v298[2]) + 7) == 108)
      {
        goto LABEL_296;
      }

      if (*v130 == 1935962413 && v130[4] == 115)
      {
        goto LABEL_296;
      }

      v133 = *v130;
      v134 = v130[4];
      if (v133 == 1634296877 && v134 == 103)
      {
        goto LABEL_296;
      }

      if (HIBYTE(v298[2]) < 9u)
      {
        goto LABEL_596;
      }

      v136 = v298;
      v137 = HIBYTE(v298[2]);
      goto LABEL_291;
    }

    v137 = v298[1];
    if (v298[1] < 5)
    {
      goto LABEL_596;
    }

    v136 = v298[0];
    v138 = v298[0] + v298[1];
    if ((*(v298[0] + v298[1] - 5) != 1885626669 || *(v298[0] + v298[1] - 1) != 108) && (*(v138 - 5) != 1935962413 || *(v138 - 1) != 115))
    {
      v141 = *(v138 - 5);
      v142 = *(v138 - 1);
      if (v141 != 1634296877 || v142 != 103)
      {
        if (v298[1] < 9)
        {
LABEL_596:
          sub_100005A08();
        }

LABEL_291:
        v144 = v136 + v137;
        v145 = *(v144 - 9);
        v146 = *(v144 - 1);
        if (v145 == 0x636172742D62622DLL && v146 == 101)
        {
          goto LABEL_296;
        }

        goto LABEL_252;
      }
    }

LABEL_296:
    v148 = buf[23];
    if ((buf[23] & 0x80u) == 0)
    {
      v149 = buf[23];
    }

    else
    {
      v149 = *&buf[8];
    }

    v150 = v149 + 9;
    if (v149 + 9 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100005880();
    }

    if (v150 < 0x17)
    {
      memset(__dst, 0, 24);
      v152 = __dst;
      HIBYTE(__dst[0].st_gid) = v149 + 9;
      if (v149)
      {
        goto LABEL_386;
      }
    }

    else
    {
      if ((v150 | 7) == 0x17)
      {
        v151 = 25;
      }

      else
      {
        v151 = (v150 | 7) + 1;
      }

      v152 = operator new(v151);
      *&__dst[0].st_uid = v151 | 0x8000000000000000;
      *&__dst[0].st_dev = v152;
      __dst[0].st_ino = v149 + 9;
LABEL_386:
      if (v148 >= 0)
      {
        v180 = buf;
      }

      else
      {
        v180 = *buf;
      }

      memmove(v152, v180, v149);
    }

    strcpy(v152 + v149, "/info.txt");
    *v283 = *&__dst[0].st_dev;
    v283[2] = *&__dst[0].st_uid;
    if (v125 < 0)
    {
      operator delete(v298[0]);
      LOBYTE(v148) = buf[23];
    }

    if ((v148 & 0x80) != 0)
    {
      operator delete(*buf);
    }

LABEL_306:
    v153 = v278;
    if (v278)
    {
      v154 = v279;
      v155 = v278;
      if (v279 != v278)
      {
        do
        {
          v156 = *(v154 - 1);
          v154 -= 3;
          if (v156 < 0)
          {
            operator delete(*v154);
          }
        }

        while (v154 != v153);
        v155 = v278;
      }

      v279 = v153;
      operator delete(v155);
    }

    if (SHIBYTE(v282) < 0)
    {
      operator delete(v281[0]);
      v157 = SHIBYTE(v283[2]);
      if (SHIBYTE(v283[2]) >= 0)
      {
        v158 = HIBYTE(v283[2]);
      }

      else
      {
        v158 = v283[1];
      }

      if (!v158)
      {
        goto LABEL_333;
      }

LABEL_319:
      memset(__dst, 170, sizeof(__dst));
      v159 = SHIBYTE(v258);
      if (v258 >= 0)
      {
        v160 = HIBYTE(v258);
      }

      else
      {
        v160 = v257[1];
      }

      v161 = v160 + v158;
      if (v160 + v158 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100005880();
      }

      if (v161 <= 0x16)
      {
        memset(buf, 0, sizeof(buf));
        v163 = buf;
        buf[23] = v160 + v158;
        if (!v160)
        {
          goto LABEL_350;
        }
      }

      else
      {
        if ((v161 | 7) == 0x17)
        {
          v162 = 25;
        }

        else
        {
          v162 = (v161 | 7) + 1;
        }

        v163 = operator new(v162);
        *&buf[8] = v160 + v158;
        *&buf[16] = v162 | 0x8000000000000000;
        *buf = v163;
        if (!v160)
        {
LABEL_350:
          if (v157 >= 0)
          {
            v167 = v283;
          }

          else
          {
            v167 = v283[0];
          }

          memmove(&v163[v160], v167, v158);
          v163[v160 + v158] = 0;
          sub_100004E4C(__dst, buf, 8);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__dst[0].st_qspare[1])
            {
              goto LABEL_355;
            }
          }

          else if (__dst[0].st_qspare[1])
          {
LABEL_355:
            std::istream::seekg();
            memset(buf, 170, sizeof(buf));
            sub_100005718(__dst, buf);
            v168 = buf[23];
            v170 = *buf;
            v169 = *&buf[8];
            if ((buf[23] & 0x80u) == 0)
            {
              v171 = buf;
            }

            else
            {
              v171 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v169 = buf[23];
            }

            if (v169 >= 35)
            {
              v172 = &v171[v169];
              v173 = v171;
              do
              {
                v174 = memchr(v173, 98, v169 - 34);
                if (!v174)
                {
                  break;
                }

                if (*v174 == 0x6320676F6C206262 && *(v174 + 1) == 0x6F697463656C6C6FLL && *(v174 + 2) == 0x20726F66202D206ELL && *(v174 + 3) == 0x6E67616964737973 && *(v174 + 27) == 0x65736F6E67616964)
                {
                  if (v174 != v172 && v174 - v171 != -1)
                  {
                    v104 = 1;
                    goto LABEL_398;
                  }

                  break;
                }

                v173 = v174 + 1;
                v169 = v172 - v173;
              }

              while (v172 - v173 >= 35);
            }

            v104 = 0;
LABEL_398:
            if (v168 < 0)
            {
              operator delete(v170);
            }

LABEL_400:
            *&__dst[0].st_dev = v238;
            *(&__dst[0].st_dev + *(v238 - 24)) = v237;
            std::filebuf::~filebuf();
            std::istream::~istream();
            std::ios::~ios();
            if (SHIBYTE(v283[2]) < 0)
            {
              goto LABEL_401;
            }

LABEL_342:
            v105 = v293;
            if (!v293)
            {
              goto LABEL_402;
            }

            goto LABEL_343;
          }

          if ((atomic_load_explicit(&qword_1000346B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000346B8))
          {
            qword_1000346C0 = 0;
            qword_1000346C8 = 0;
            __cxa_guard_release(&qword_1000346B8);
          }

          if (qword_1000346B0 == -1)
          {
            v179 = qword_1000346C8;
            if (!os_log_type_enabled(qword_1000346C8, OS_LOG_TYPE_ERROR))
            {
LABEL_382:
              v104 = 0;
              goto LABEL_400;
            }
          }

          else
          {
            dispatch_once(&qword_1000346B0, &stru_100031198);
            v179 = qword_1000346C8;
            if (!os_log_type_enabled(qword_1000346C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_382;
            }
          }

          v190 = v283;
          if (SHIBYTE(v283[2]) < 0)
          {
            v190 = v283[0];
          }

          *buf = 136315138;
          *&buf[4] = v190;
          _os_log_error_impl(&_mh_execute_header, v179, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_382;
        }
      }

      if (v159 >= 0)
      {
        v166 = v257;
      }

      else
      {
        v166 = v257[0];
      }

      memmove(v163, v166, v160);
      goto LABEL_350;
    }

    v157 = SHIBYTE(v283[2]);
    if (SHIBYTE(v283[2]) >= 0)
    {
      v158 = HIBYTE(v283[2]);
    }

    else
    {
      v158 = v283[1];
    }

    if (v158)
    {
      goto LABEL_319;
    }

LABEL_333:
    if ((atomic_load_explicit(&qword_1000346B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000346B8))
    {
      qword_1000346C0 = 0;
      qword_1000346C8 = 0;
      __cxa_guard_release(&qword_1000346B8);
    }

    if (qword_1000346B0 != -1)
    {
      dispatch_once(&qword_1000346B0, &stru_100031198);
    }

    v164 = qword_1000346C8;
    v104 = 0;
    if (!os_log_type_enabled(qword_1000346C8, OS_LOG_TYPE_DEFAULT))
    {
      if (SHIBYTE(v283[2]) < 0)
      {
        goto LABEL_401;
      }

      goto LABEL_342;
    }

    v165 = v255;
    if (v256 < 0)
    {
      v165 = v255[0];
    }

    __dst[0].st_dev = 136315138;
    *&__dst[0].st_mode = v165;
    _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __dst, 0xCu);
    v104 = 0;
    if ((SHIBYTE(v283[2]) & 0x80000000) == 0)
    {
      goto LABEL_342;
    }

LABEL_401:
    operator delete(v283[0]);
    v105 = v293;
    if (!v293)
    {
      goto LABEL_402;
    }

LABEL_343:
    if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v105->__on_zero_shared)(v105);
      std::__shared_weak_count::__release_weak(v105);
    }

LABEL_402:
    std::locale::~locale(v292);
    v181 = v294;
    if (v294)
    {
      v182 = v295;
      v183 = v294;
      if (v295 != v294)
      {
        do
        {
          v184 = *(v182 - 1);
          v182 -= 3;
          if (v184 < 0)
          {
            operator delete(*v182);
          }
        }

        while (v182 != v181);
        v183 = v294;
      }

      v295 = v181;
      operator delete(v183);
    }

    if (SHIBYTE(v256) < 0)
    {
      operator delete(v255[0]);
      if (SHIBYTE(v258) < 0)
      {
        goto LABEL_425;
      }

LABEL_412:
      if (v104)
      {
        goto LABEL_413;
      }

LABEL_426:
      v63 = 2;
    }

    else
    {
      if ((SHIBYTE(v258) & 0x80000000) == 0)
      {
        goto LABEL_412;
      }

LABEL_425:
      operator delete(v257[0]);
      if ((v104 & 1) == 0)
      {
        goto LABEL_426;
      }

LABEL_413:
      if ((atomic_load_explicit(&qword_1000346B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000346B8))
      {
        qword_1000346C0 = 0;
        qword_1000346C8 = 0;
        __cxa_guard_release(&qword_1000346B8);
      }

      if (qword_1000346B0 == -1)
      {
        v185 = qword_1000346C8;
        if (os_log_type_enabled(qword_1000346C8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_416;
        }
      }

      else
      {
        dispatch_once(&qword_1000346B0, &stru_100031198);
        v185 = qword_1000346C8;
        if (os_log_type_enabled(qword_1000346C8, OS_LOG_TYPE_DEFAULT))
        {
LABEL_416:
          if (*(a6 + 23) >= 0)
          {
            v186 = a6;
          }

          else
          {
            v186 = *a6;
          }

          __dst[0].st_dev = 136315138;
          *&__dst[0].st_mode = v186;
          _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", __dst, 0xCu);
        }
      }

      if (v260 != a6)
      {
        v187 = *(a6 + 23);
        if (SHIBYTE(v261) < 0)
        {
          if (v187 >= 0)
          {
            v188 = a6;
          }

          else
          {
            v188 = *a6;
          }

          if (v187 >= 0)
          {
            v189 = *(a6 + 23);
          }

          else
          {
            v189 = *(a6 + 8);
          }

          sub_100005E08(v260, v188, v189);
        }

        else
        {
          if ((*(a6 + 23) & 0x80) == 0)
          {
            *v260 = *a6;
            v261 = *(a6 + 16);
            goto LABEL_443;
          }

          sub_100005D48(v260, *a6, *(a6 + 8));
        }
      }

      if (*(a6 + 23) < 0)
      {
        v63 = 0;
        **a6 = 0;
        *(a6 + 8) = 0;
      }

      else
      {
LABEL_443:
        v63 = 0;
        *a6 = 0;
        *(a6 + 23) = 0;
      }
    }

LABEL_427:
    v26 = 1;
LABEL_428:
    if (v299[0])
    {
      v299[1] = v299[0];
      operator delete(v299[0]);
    }

    v78 = v244;
    if ((HIBYTE(v259[2]) & 0x80) != 0)
    {
LABEL_135:
      operator delete(v259[0]);
      if (v63 != 3)
      {
        goto LABEL_432;
      }

LABEL_57:
      v36 = v78 + 3;
      if (v36 == v242)
      {
        goto LABEL_457;
      }

      continue;
    }

    break;
  }

LABEL_431:
  if (v63 == 3)
  {
    goto LABEL_57;
  }

LABEL_432:
  if (!v63)
  {
    goto LABEL_57;
  }

LABEL_457:
  if ((SHIBYTE(v261) & 0x80000000) == 0)
  {
    goto LABEL_458;
  }

  operator delete(v260[0]);
  if (v239)
  {
LABEL_459:
    if (*(v33 + 23) < 0)
    {
      sub_10000595C(v253, *v33, *(v33 + 8));
    }

    else
    {
      *v253 = *v33;
      v254 = *(v33 + 16);
    }

    std::locale::locale(&v247, v270);
    v248 = *&v270[8];
    v249 = *&v270[24];
    v250 = *&v270[40];
    v251 = v271;
    if (v271)
    {
      atomic_fetch_add_explicit((v271 + 8), 1uLL, memory_order_relaxed);
    }

    v252 = *(&v271 + 1);
    *&v191 = 0xAAAAAAAAAAAAAAAALL;
    *(&v191 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v303 = 0xAAAAAAAAAAAAAA00;
    v300[3] = 0xAAAAAAAAAAAAAAAALL;
    v306 = v191;
    v301 = 0;
    v302 = 0;
    v305 = 0;
    v304 = 0;
    LOBYTE(v306) = 0;
    BYTE8(v306) = 0;
    v307 = 0;
    *v299 = 0u;
    memset(v300, 0, 25);
    if (v254 >= 0)
    {
      v192 = v253;
    }

    else
    {
      v192 = v253[0];
    }

    if (v254 >= 0)
    {
      v193 = HIBYTE(v254);
    }

    else
    {
      v193 = v253[1];
    }

    __dst[0].st_ctimespec = 0xAAAAAAAAAAAAAA00;
    __dst[0].st_atimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&__dst[0].st_birthtimespec.tv_nsec = v191;
    __dst[0].st_mtimespec = 0uLL;
    __dst[0].st_birthtimespec.tv_sec = 0;
    LOBYTE(__dst[0].st_birthtimespec.tv_nsec) = 0;
    LOBYTE(__dst[0].st_size) = 0;
    __dst[0].st_blocks = 0;
    memset(__dst, 0, 41);
    v194 = sub_10000FD5C(&v247, v192, &v193[v192], __dst, 0x1040u);
    sub_100010068(v299, v192, &v193[v192], &__dst[0].st_dev, 0);
    if (*&__dst[0].st_dev)
    {
      __dst[0].st_ino = *&__dst[0].st_dev;
      operator delete(*&__dst[0].st_dev);
    }

    if (!v194 || (v306 & 1) != 0)
    {
      v195 = 0;
      v196 = v299[0];
      if (v299[0])
      {
LABEL_475:
        v299[1] = v196;
        operator delete(v196);
      }

LABEL_476:
      v197 = v251;
      if (v251 && !atomic_fetch_add(&v251->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v197->__on_zero_shared)(v197);
        std::__shared_weak_count::__release_weak(v197);
        std::locale::~locale(&v247);
        if ((SHIBYTE(v254) & 0x80000000) == 0)
        {
LABEL_479:
          if (!v195)
          {
            goto LABEL_491;
          }

LABEL_487:
          if (*(v33 + 23) < 0)
          {
            **v33 = 0;
            *(v33 + 8) = 0;
          }

          else
          {
            *v33 = 0;
            *(v33 + 23) = 0;
          }

          goto LABEL_491;
        }
      }

      else
      {
        std::locale::~locale(&v247);
        if ((SHIBYTE(v254) & 0x80000000) == 0)
        {
          goto LABEL_479;
        }
      }

      operator delete(v253[0]);
      if (!v195)
      {
        goto LABEL_491;
      }

      goto LABEL_487;
    }

    memset(__dst, 0, 56);
    v198 = v299[0];
    if (*(v299[0] + 40) == 1)
    {
      v200 = *(v299[0] + 3);
      v199 = *(v299[0] + 4);
      v201 = v199 - v200;
      if ((v199 - v200) > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100005880();
      }

      if (v201 > 0x16)
      {
        if ((v201 | 7) == 0x17)
        {
          v209 = 25;
        }

        else
        {
          v209 = (v201 | 7) + 1;
        }

        v202 = operator new(v209);
        *&v292[16] = v209 | 0x8000000000000000;
        *v292 = v202;
        *&v292[8] = v199 - v200;
      }

      else
      {
        v292[23] = v199 - v200;
        v202 = v292;
      }

      if (v199 != v200)
      {
        memmove(v202, v200, v199 - v200);
      }

      v202[v201] = 0;
    }

    else
    {
      memset(v292, 0, 24);
    }

    sub_100016C40(v292, &__dst[0].st_gid);
    if ((v292[23] & 0x80000000) != 0)
    {
      operator delete(*v292);
      __dst[0].st_gid -= 1900;
      if (v198[64] == 1)
      {
        goto LABEL_521;
      }
    }

    else
    {
      __dst[0].st_gid -= 1900;
      if (v198[64] == 1)
      {
LABEL_521:
        v211 = *(v198 + 6);
        v210 = *(v198 + 7);
        v212 = v210 - v211;
        if ((v210 - v211) > 0x7FFFFFFFFFFFFFF7)
        {
          sub_100005880();
        }

        if (v212 > 0x16)
        {
          if ((v212 | 7) == 0x17)
          {
            v214 = 25;
          }

          else
          {
            v214 = (v212 | 7) + 1;
          }

          v213 = operator new(v214);
          *&v292[16] = v214 | 0x8000000000000000;
          *v292 = v213;
          *&v292[8] = v210 - v211;
        }

        else
        {
          v292[23] = v210 - v211;
          v213 = v292;
        }

        if (v210 != v211)
        {
          memmove(v213, v211, v210 - v211);
        }

        v213[v212] = 0;
LABEL_533:
        sub_100016C40(v292, &__dst[0].st_uid);
        if ((v292[23] & 0x80000000) != 0)
        {
          operator delete(*v292);
          --__dst[0].st_uid;
          if (v198[88] == 1)
          {
            goto LABEL_535;
          }
        }

        else
        {
          --__dst[0].st_uid;
          if (v198[88] == 1)
          {
LABEL_535:
            v216 = *(v198 + 9);
            v215 = *(v198 + 10);
            v217 = v215 - v216;
            if ((v215 - v216) > 0x7FFFFFFFFFFFFFF7)
            {
              sub_100005880();
            }

            if (v217 > 0x16)
            {
              if ((v217 | 7) == 0x17)
              {
                v219 = 25;
              }

              else
              {
                v219 = (v217 | 7) + 1;
              }

              v218 = operator new(v219);
              *&v292[16] = v219 | 0x8000000000000000;
              *v292 = v218;
              *&v292[8] = v215 - v216;
            }

            else
            {
              v292[23] = v215 - v216;
              v218 = v292;
            }

            if (v215 != v216)
            {
              memmove(v218, v216, v215 - v216);
            }

            v218[v217] = 0;
LABEL_547:
            sub_100016C40(v292, (__dst | 0xC));
            if ((v292[23] & 0x80000000) != 0)
            {
              operator delete(*v292);
              if (v198[112] == 1)
              {
                goto LABEL_549;
              }
            }

            else if (v198[112] == 1)
            {
LABEL_549:
              v221 = *(v198 + 12);
              v220 = *(v198 + 13);
              v222 = v220 - v221;
              if ((v220 - v221) > 0x7FFFFFFFFFFFFFF7)
              {
                sub_100005880();
              }

              if (v222 > 0x16)
              {
                if ((v222 | 7) == 0x17)
                {
                  v224 = 25;
                }

                else
                {
                  v224 = (v222 | 7) + 1;
                }

                v223 = operator new(v224);
                *&v292[16] = v224 | 0x8000000000000000;
                *v292 = v223;
                *&v292[8] = v220 - v221;
              }

              else
              {
                v292[23] = v220 - v221;
                v223 = v292;
              }

              if (v220 != v221)
              {
                memmove(v223, v221, v220 - v221);
              }

              v223[v222] = 0;
LABEL_561:
              sub_100016C40(v292, &__dst[0].st_ino);
              if ((v292[23] & 0x80000000) != 0)
              {
                operator delete(*v292);
                if (v198[136] == 1)
                {
                  goto LABEL_563;
                }
              }

              else if (v198[136] == 1)
              {
LABEL_563:
                v226 = *(v198 + 15);
                v225 = *(v198 + 16);
                v227 = v225 - v226;
                if ((v225 - v226) > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_100005880();
                }

                if (v227 > 0x16)
                {
                  if ((v227 | 7) == 0x17)
                  {
                    v229 = 25;
                  }

                  else
                  {
                    v229 = (v227 | 7) + 1;
                  }

                  v228 = operator new(v229);
                  *&v292[16] = v229 | 0x8000000000000000;
                  *v292 = v228;
                  *&v292[8] = v225 - v226;
                }

                else
                {
                  v292[23] = v225 - v226;
                  v228 = v292;
                }

                if (v225 != v226)
                {
                  memmove(v228, v226, v225 - v226);
                }

                v228[v227] = 0;
LABEL_575:
                sub_100016C40(v292, &__dst[0].st_mode);
                if ((v292[23] & 0x80000000) != 0)
                {
                  operator delete(*v292);
                  if (v198[160] == 1)
                  {
                    goto LABEL_577;
                  }
                }

                else if (v198[160] == 1)
                {
LABEL_577:
                  v231 = *(v198 + 18);
                  v230 = *(v198 + 19);
                  v232 = v230 - v231;
                  if ((v230 - v231) > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_100005880();
                  }

                  if (v232 > 0x16)
                  {
                    if ((v232 | 7) == 0x17)
                    {
                      v234 = 25;
                    }

                    else
                    {
                      v234 = (v232 | 7) + 1;
                    }

                    v233 = operator new(v234);
                    *&v292[16] = v234 | 0x8000000000000000;
                    *v292 = v233;
                    *&v292[8] = v230 - v231;
                  }

                  else
                  {
                    v292[23] = v230 - v231;
                    v233 = v292;
                  }

                  if (v230 != v231)
                  {
                    memmove(v233, v231, v230 - v231);
                  }

                  v233[v232] = 0;
LABEL_589:
                  sub_100016C40(v292, __dst);
                  if ((v292[23] & 0x80000000) != 0)
                  {
                    operator delete(*v292);
                  }

                  LODWORD(__dst[0].st_atimespec.tv_sec) = -1;
                  v235 = mktime(__dst);
                  memset(v292, 170, 16);
                  Timestamp::now(v292, v236);
                  v195 = *v292 - v235 > v239;
                  v196 = v299[0];
                  if (v299[0])
                  {
                    goto LABEL_475;
                  }

                  goto LABEL_476;
                }

                memset(v292, 0, 24);
                goto LABEL_589;
              }

              memset(v292, 0, 24);
              goto LABEL_575;
            }

            memset(v292, 0, 24);
            goto LABEL_561;
          }
        }

        memset(v292, 0, 24);
        goto LABEL_547;
      }
    }

    memset(v292, 0, 24);
    goto LABEL_533;
  }

LABEL_491:
  v203 = v271;
  if (v271 && !atomic_fetch_add((v271 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v203->__on_zero_shared)(v203);
    std::__shared_weak_count::__release_weak(v203);
    std::locale::~locale(v270);
    v204 = v273;
    if (!v273)
    {
      goto LABEL_495;
    }

LABEL_494:
    if (atomic_fetch_add(&v204->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_495;
    }

    (v204->__on_zero_shared)(v204);
    std::__shared_weak_count::__release_weak(v204);
    std::locale::~locale(v272);
    if (SHIBYTE(v274[2]) < 0)
    {
LABEL_496:
      operator delete(v274[0]);
    }
  }

  else
  {
    std::locale::~locale(v270);
    v204 = v273;
    if (v273)
    {
      goto LABEL_494;
    }

LABEL_495:
    std::locale::~locale(v272);
    if (SHIBYTE(v274[2]) < 0)
    {
      goto LABEL_496;
    }
  }

  v205 = v275;
  if (v275)
  {
    v206 = v276;
    v207 = v275;
    if (v276 != v275)
    {
      do
      {
        v208 = *(v206 - 1);
        v206 -= 3;
        if (v208 < 0)
        {
          operator delete(*v206);
        }
      }

      while (v206 != v205);
      v207 = v275;
    }

    v276 = v205;
    operator delete(v207);
  }
}