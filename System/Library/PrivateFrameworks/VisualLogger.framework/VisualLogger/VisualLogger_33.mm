void sub_2713C39E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if ((a23 & 1) != 0 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C3A0C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  sub_271839D90(a1, &v6);
  if (v6)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    LODWORD(__p) = 2;
    sub_27183A9AC(a1, &__p);
    if (__p > 1)
    {
      sub_27183B36C(a1, a2);
      LOBYTE(__p) = 0;
      sub_271839D90(a1, &__p);
      *(a2 + 8) = __p;
      while (1)
      {
        if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
        {
          return;
        }

        sub_27183D78C(a1, &__p);
        if (v10 < 0)
        {
          if (v9 == 1 && *(a1 + 72) == *__p)
          {
LABEL_15:
            v4 = 0;
            if (v10 < 0)
            {
              goto LABEL_18;
            }

            goto LABEL_6;
          }
        }

        else if (v10 == 1 && *(a1 + 72) == __p)
        {
          goto LABEL_15;
        }

        v4 = 1;
        if (v10 < 0)
        {
LABEL_18:
          operator delete(__p);
        }

LABEL_6:
        if ((v4 & 1) == 0)
        {
          return;
        }
      }
    }

    __p = 0;
    LOBYTE(v9) = 0;
    sub_27183B36C(a1, &__p);
    v7 = 0;
    sub_271839D90(a1, &v7);
    v5 = v7;
    *a2 = __p;
    *(a2 + 8) = v5;
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }
}

void sub_2713C3B9C(uint64_t a1, void *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_27183B6AC(a1, &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  if (v11 <= v5)
  {
    if (v11 >= v5)
    {
      v7 = a2[1];
      i = *a2;
      if (v4 != i)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = *a2 + 24 * v11;
      while (v4 != v7)
      {
        v9 = *(v4 - 1);
        v4 -= 3;
        if (v9 < 0)
        {
          operator delete(*v4);
        }
      }

      a2[1] = v7;
      for (i = *a2; i != v7; ++*(a1 + 104))
      {
LABEL_16:
        while (1)
        {
          ++*(a1 + 80);
          if (*(a1 + 128) != 1 || *(a1 + 131) != 1)
          {
            break;
          }

          *(a1 + 132) = 1;
          i += 24;
          if (i == v7)
          {
            return;
          }
        }

        sub_27183D78C(a1, &v12);
        if (*(i + 23) < 0)
        {
          operator delete(*i);
        }

        v10 = v12;
        *(i + 16) = v13;
        *i = v10;
        i += 24;
      }
    }
  }

  else
  {
    sub_2713C00BC(a2, v11 - v5);
    v8 = a2;
    i = *a2;
    v7 = v8[1];
    if (v7 != i)
    {
      goto LABEL_16;
    }
  }
}

void sub_2713C3CFC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a1, __p);
  if (LODWORD(__p[0]) > 1)
  {
    sub_27183B36C(a1, (a2 + 8));
    LOBYTE(__p[0]) = 0;
    sub_271839D90(a1, __p);
    *(a2 + 16) = __p[0];
    while (1)
    {
      if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_17;
      }

      sub_27183D78C(a1, __p);
      if (SHIBYTE(v10) < 0)
      {
        if (__p[1] == 1 && *(a1 + 72) == *__p[0])
        {
LABEL_12:
          v6 = 0;
          if (SHIBYTE(v10) < 0)
          {
            goto LABEL_15;
          }

          goto LABEL_3;
        }
      }

      else if (SHIBYTE(v10) == 1 && *(a1 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_12;
      }

      v6 = 1;
      if (SHIBYTE(v10) < 0)
      {
LABEL_15:
        operator delete(__p[0]);
      }

LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  __p[0] = 0;
  LOBYTE(__p[1]) = 0;
  sub_27183B36C(a1, __p);
  v8 = 0;
  sub_271839D90(a1, &v8);
  v7 = v8;
  *(a2 + 8) = __p[0];
  *(a2 + 16) = v7;
LABEL_17:
  if (a3 >= 2)
  {
    v8 = 0;
    sub_271839D90(a1, &v8);
    if (v8)
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 1;
      }

      ++*(a1 + 80);
      if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
      {
        *(a1 + 132) = 1;
      }

      else
      {
        sub_27183D78C(a1, __p);
        if (*(a2 + 47) < 0)
        {
          operator delete(*(a2 + 24));
        }

        *(a2 + 24) = *__p;
        *(a2 + 40) = v10;
        ++*(a1 + 104);
      }
    }

    else if (*(a2 + 48))
    {
      if (*(a2 + 47) < 0)
      {
        operator delete(*(a2 + 24));
      }

      *(a2 + 48) = 0;
    }
  }
}

void sub_2713C4378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2713BE258(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C439C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2713A32D8(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C43B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C43D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void sub_2713C43FC(uint64_t a1, unsigned __int16 *a2)
{
  LOWORD(__p[0]) = 0;
  sub_27183A32C(a1, __p);
  *a2 = __p[0];
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a1, __p);
  if (LODWORD(__p[0]) <= 1)
  {
    __p[1] = 0;
    v8 = 0;
    sub_27183B6AC(a1, &v8);
    __p[0] = v8;
    sub_27183A9AC(a1, &__p[1]);
    sub_27183A9AC(a1, (__p | 0xC));
    *(a2 + 4) = *__p;
LABEL_17:
    v5 = *a2;
    if (v5 == 1)
    {
      sub_2715F5588(a2);
    }

    sub_2715F7478(v5);
    sub_2713C479C(__p, a1);
    sub_2713BE068();
  }

  __p[0] = 0;
  sub_27183B6AC(a1, __p);
  *(a2 + 1) = __p[0];
  sub_27183A9AC(a1, a2 + 4);
  sub_27183A9AC(a1, a2 + 5);
  while (1)
  {
    if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
    {
      goto LABEL_17;
    }

    sub_27183D78C(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      goto LABEL_17;
    }
  }
}

uint64_t sub_2713C479C(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  __n = 0;
  sub_27183B6AC(a2, &__n);
  memset(&v9, 0, sizeof(v9));
  if (__n)
  {
    std::string::append(&v9, __n, 0);
    v5 = __n;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v5 = 0;
    v6 = &v9;
  }

  v8[0] = v6;
  v8[1] = v5;
  sub_27183D9CC(a2, v8);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v9.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v9.__r_.__value_.__l + 2);
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713C4940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v16);
  _Unwind_Resume(a1);
}

void sub_2713C49D0(uint64_t a1, void *a2, uint64_t a3)
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

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 2)
  {
    sub_2713C4AE0(&v14, a2, a3, v7);
  }

  else
  {
    sub_27173170C(a2);
    if (v7 >= 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = v7;
    }

    sub_2713C4D24(a2, a3, v10);
    v11 = a2[12];
    v12 = a2[9];
    a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
    a2[9] = v12 - 8;
    a2[12] = v11 - 8;
  }
}

void sub_2713C4AE0(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  *&v27 = 0;
  BYTE8(v27) = 0;
  LOBYTE(v28) = 0;
  v30 = 0;
  sub_2713C4FCC(&v11, a2, &v27);
  if (a4 >= 2)
  {
    v11 = "name";
    *&v12 = 4;
    *(&v12 + 1) = &v28;
    sub_2713C4ED8(a2, &v11);
  }

  v12 = v27;
  LOBYTE(v13[0]) = 0;
  v15 = 0;
  if (v30 == 1)
  {
    if (SHIBYTE(v29) < 0)
    {
      sub_271127178(v13, v28, *(&v28 + 1));
    }

    else
    {
      *v13 = v28;
      v14 = v29;
    }

    v15 = 1;
  }

  v16 = 0;
  v17 = 0;
  LOBYTE(v18) = 0;
  v20 = 0;
  LOBYTE(v21) = 0;
  v23 = 0;
  LOBYTE(__p) = 0;
  v26 = 0;
  sub_2713BCEE8(a3, &v11);
  if (v26 == 1)
  {
    v7 = __p;
    if (__p)
    {
      v8 = v25;
      v9 = __p;
      if (v25 != __p)
      {
        do
        {
          v10 = *(v8 - 1);
          v8 -= 3;
          if (v10 < 0)
          {
            operator delete(*v8);
          }
        }

        while (v8 != v7);
        v9 = __p;
      }

      v25 = v7;
      operator delete(v9);
    }
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v15 == 1 && SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (v30 == 1 && SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }
}

void sub_2713C4CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 64) == 1 && *(v18 - 65) < 0)
  {
    operator delete(*(v18 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C4D24(void *a1, uint64_t a2, unsigned int a3)
{
  sub_2713C4FCC(&v9, a1, a2 + 8);
  v9 = "name";
  v10 = 4;
  v11 = a2 + 24;
  sub_2713C4ED8(a1, &v9);
  if (a3 >= 4)
  {
    v6 = a1[6];
    if (a1[7] <= v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_271128104(exception, "Not enough data to read");
      __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
    }

    v7 = *(a1[3] + v6);
    a1[6] = v6 + 1;
    if (v7)
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 72) = 1;
      }

      sub_2713C4FCC(&v9, a1, a2 + 56);
    }

    else if (*(a2 + 72))
    {
      *(a2 + 72) = 0;
    }

    if (a3 == 5)
    {
      v9 = "space";
      v10 = 5;
      v11 = a2 + 80;
      sub_2713C4ED8(a1, &v9);
    }

    else if (a3 >= 6)
    {
      v9 = "space";
      v10 = 5;
      v11 = a2 + 80;
      sub_2713C4ED8(a1, &v9);
      v9 = "instance_id";
      v10 = 11;
      v11 = a2 + 112;
      sub_2713C4ED8(a1, &v9);
      sub_2713C52A0(&v9, a1, a2 + 144);
    }
  }
}

void *sub_2713C4ED8(void *result, uint64_t a2)
{
  v2 = result[6];
  if (result[7] <= v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v3 = *(a2 + 16);
  v4 = *(result[3] + v2);
  result[6] = v2 + 1;
  if (v4)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
    }

    v5 = result;
    sub_2717318E8(result, v3);
    return v5;
  }

  else if (*(v3 + 24))
  {
    if (*(v3 + 23) < 0)
    {
      v6 = result;
      v7 = v3;
      operator delete(*v3);
      result = v6;
      *(v7 + 24) = 0;
    }

    else
    {
      *(v3 + 24) = 0;
    }
  }

  return result;
}

void *sub_2713C4FCC(uint64_t a1, void *a2, uint64_t a3)
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

  v9 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v9 <= 1)
  {
    v15 = 0;
    v16 = 0;
    result = sub_2713C51C0(a2, &v15);
    v13 = v16;
    *a3 = v15;
    *(a3 + 8) = v13;
  }

  else
  {
    sub_27173170C(a2);
    result = sub_2713C50E0(a2, a3);
    v11 = a2[12];
    v12 = a2[9];
    a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
    a2[9] = v12 - 8;
    a2[12] = v11 - 8;
  }

  return result;
}

void *sub_2713C50E0(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7 || (*a2 = *(result[3] + v2), v6 = result[6], v7 = result[7], result[6] = v6 + 8, v7 <= v6 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(result[3] + v6 + 8);
  result[6] = v6 + 9;
  *(a2 + 8) = v8;
  return result;
}

void *sub_2713C51C0(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7 || (*a2 = *(result[3] + v2), v6 = result[6], v7 = result[7], result[6] = v6 + 8, v7 <= v6 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(result[3] + v6 + 8);
  result[6] = v6 + 9;
  *(a2 + 8) = v8;
  return result;
}

void sub_2713C52A0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  if (a2[7] <= v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v5 = *(a2[3] + v3);
  a2[6] = v3 + 1;
  if (v5)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    sub_2713C53C4(a2, a3);
  }

  else if (*(a3 + 24))
  {
    v6 = *a3;
    if (*a3)
    {
      v7 = *(a3 + 8);
      v8 = *a3;
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
        v8 = *a3;
      }

      *(a3 + 8) = v6;
      operator delete(v8);
    }

    *(a3 + 24) = 0;
  }
}

void sub_2713C53C4(void *a1, void ***a2)
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
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = v9 - *a2;
  v11 = *(a1[3] + v3);
  a1[6] = v3 + 8;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  if (v11 > v12)
  {
    sub_2713C00BC(a2, v11 - v12);
    v15 = a2;
    i = *a2;
    v14 = v15[1];
    if (v14 == i)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v11 >= v12)
  {
    v14 = v9;
    i = *a2;
    if (v9 == *a2)
    {
      return;
    }

    goto LABEL_15;
  }

  v14 = &v8[3 * v11];
  while (v9 != v14)
  {
    v16 = *(v9 - 1);
    v9 -= 3;
    if (v16 < 0)
    {
      operator delete(*v9);
    }
  }

  a2[1] = v14;
  for (i = *a2; i != v14; i += 24)
  {
LABEL_15:
    sub_2717318E8(a1, i);
  }
}

void sub_2713C5500(void *a1, unsigned __int16 *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    goto LABEL_23;
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  if (v8 <= 1)
  {
    *&v27 = &unk_28810F9B8;
    sub_2713BE9C4();
  }

  sub_27173170C(a1);
  v9 = a1[6];
  v10 = a1[7];
  v11 = v10 - v9;
  if (v10 < v9)
  {
    v11 = 0;
  }

  if (v11 <= 1)
  {
    goto LABEL_23;
  }

  v12 = a1[3];
  v13 = *(v12 + v9);
  a1[6] = v9 + 2;
  *a2 = v13;
  v4 = v10 >= v9 + 2;
  v14 = v10 - (v9 + 2);
  if (!v4)
  {
    v14 = 0;
  }

  if (v14 <= 3)
  {
    goto LABEL_23;
  }

  v15 = *(v12 + v9 + 2);
  a1[6] = v9 + 6;
  if (v15 <= 1)
  {
    v27 = 1uLL;
    sub_2713C5EA8(a1, &v27);
    *(a2 + 4) = v27;
    v25 = *a2;
    if (v25 != 1)
    {
LABEL_19:
      sub_2715F7478(v25);
      sub_2713C5F8C(&v27, a1);
      sub_2713BE068();
    }

LABEL_22:
    sub_2715F5588(a2);
  }

  sub_27173170C(a1);
  v17 = a1[6];
  v16 = a1[7];
  v18 = v16 - v17;
  if (v16 < v17)
  {
    v18 = 0;
  }

  if (v18 <= 7)
  {
LABEL_23:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
  }

  else
  {
    v19 = a1[3];
    v20 = *(v19 + v17);
    v21 = v17 + 8;
    a1[6] = v21;
    *(a2 + 1) = v20;
    v4 = v16 >= v21;
    v22 = v16 - v21;
    if (!v4)
    {
      v22 = 0;
    }

    if (v22 > 7)
    {
      *(a2 + 2) = *(v19 + v21);
      a1[6] += 8;
      v23 = a1[12];
      v24 = a1[9];
      a1[6] = *(v23 - 8) + *(v24 - 8) + 8;
      a1[9] = v24 - 8;
      a1[12] = v23 - 8;
      v25 = *a2;
      if (v25 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
  }

  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713C5DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2713BE258(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C5DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2713BE258(va);
  _Unwind_Resume(a1);
}

void sub_2713C5DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C5E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2713A32D8(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C5E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C5E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void *sub_2713C5EA8(void *result, void *a2)
{
  v3 = result[6];
  v2 = result[7];
  v4 = v2 - v3;
  if (v2 < v3)
  {
    v4 = 0;
  }

  if (v4 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_10;
  }

  v5 = result[3];
  v6 = *(v5 + v3);
  v7 = v3 + 8;
  result[6] = v7;
  *a2 = v6;
  v8 = v2 >= v7;
  v9 = v2 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
LABEL_10:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[1] = *(v5 + v7);
  result[6] += 8;
  return result;
}

uint64_t sub_2713C5F8C(uint64_t a1, void *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  v5 = a2[6];
  v6 = a2[7];
  v7 = v6 - v5;
  if (v6 < v5)
  {
    v7 = 0;
  }

  if (v7 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Not enough data to read");
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v8 = *(a2[3] + v5);
  v9 = v5 + 8;
  a2[6] = v9;
  memset(&v16, 0, sizeof(v16));
  if (v8)
  {
    std::string::append(&v16, v8, 0);
    v9 = a2[6];
    v6 = a2[7];
  }

  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (!v10)
  {
    v11 = 0;
  }

  if (v11 < v8)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "Not enough data to read binary blob");
    v15->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v15, off_279E2F400, MEMORY[0x277D825F8]);
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v16;
  }

  else
  {
    v12 = v16.__r_.__value_.__r.__words[0];
  }

  memcpy(v12, (a2[3] + v9), v8);
  a2[6] += v8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v16.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v16.__r_.__value_.__l + 2);
  *(&v16.__r_.__value_.__s + 23) = 0;
  v16.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713C6204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v15);
  _Unwind_Resume(a1);
}

void sub_2713C62C8(int *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 3)
    {
LABEL_17:
      sub_2713C66D4(&v13, a2, a3, v4);
      return;
    }

    v12 = 3;
    (*(*a2 + 13))(a2, &v12);
    if (v12 >= 7)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878A90))
      {
        sub_2713C64B4();
      }

      sub_271847D5C(qword_280878A78, v11, 6);
    }

    v7 = *a1;
  }

  if (v4 < 3 || v7 <= 0)
  {
    if (v4 >= 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = v4;
    }

    if (v4 > 2)
    {
      sub_2713C68E0(a2, a3, v10);
      return;
    }

    v4 = v10;
    goto LABEL_17;
  }

  (*(*a2 + 2))(a2);
  if (v4 >= 6)
  {
    v9 = 6;
  }

  else
  {
    v9 = v4;
  }

  sub_2713C68E0(a2, a3, v9);
  (*(*a2 + 3))(a2);
}

void sub_2713C6588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C65B8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_271851C68("6U]", 2, &v9);
  sub_2711309E8(__p, &v9, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_2713C669C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2713C66D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *&v25 = 0;
  BYTE8(v25) = 0;
  LOBYTE(v26) = 0;
  v28 = 0;
  sub_2713C7880(a2, v24, a4);
  *&v9[8] = v25;
  LOBYTE(v10[0]) = 0;
  v12 = 0;
  if (v28 == 1)
  {
    if (SHIBYTE(v27) < 0)
    {
      sub_271127178(v10, v26, *(&v26 + 1));
    }

    else
    {
      *v10 = v26;
      v11 = v27;
    }

    v12 = 1;
  }

  v13 = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  v17 = 0;
  LOBYTE(v18) = 0;
  v20 = 0;
  LOBYTE(__p) = 0;
  v23 = 0;
  sub_2713BCEE8(a3, v9);
  if (v23 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v22;
      v7 = __p;
      if (v22 != __p)
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

      v22 = v5;
      operator delete(v7);
    }
  }

  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15);
  }

  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v28 == 1 && SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }
}

void sub_2713C6894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 48) == 1 && *(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C68E0(void **a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v24[0] = a1[1];
  LODWORD(__p) = 2;
  v6[13](a1, &__p);
  if (SLODWORD(v24[0]) < 1)
  {
    if (__p < 2)
    {
      __p = 0;
      LOBYTE(v30) = 0;
      (*(*a1 + 9))(a1, &__p);
      v26[0] = &v30;
      sub_2713C7418(a1, v26);
      v7 = v30;
      *(a2 + 8) = __p;
      *(a2 + 16) = v7;
    }

    else
    {
      (*(*a1 + 9))(a1, a2 + 8);
      __p = (a2 + 16);
      sub_2713C7418(a1, &__p);
    }
  }

  else
  {
    sub_2713C718C(v24, a1, a2 + 8, __p);
  }

  LOBYTE(__p) = 0;
  (*(*a1 + 10))(a1, &__p);
  if (__p)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    (*(*a1 + 18))(a1, a2 + 24);
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }

  if (a3 >= 4)
  {
    sub_2713C7590(a1, a2 + 56);
    if (a3 == 5)
    {
      LOBYTE(__p) = 0;
      (*(*a1 + 10))(a1, &__p);
      if (__p)
      {
        if ((*(a2 + 104) & 1) == 0)
        {
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 96) = 0;
          *(a2 + 104) = 1;
        }

        (*(*a1 + 18))(a1, a2 + 80);
      }

      else if (*(a2 + 104))
      {
        if (*(a2 + 103) < 0)
        {
          operator delete(*(a2 + 80));
        }

        *(a2 + 104) = 0;
      }
    }

    else if (a3 >= 6)
    {
      if ((*(a1 + 12) & 4) != 0)
      {
        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 104) & 1) == 0)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
            *(a2 + 96) = 0;
            *(a2 + 104) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 80);
        }

        else
        {
          if (*(a2 + 104))
          {
            if (*(a2 + 103) < 0)
            {
              operator delete(*(a2 + 80));
            }

            *(a2 + 104) = 0;
          }

          (*(*a1 + 35))(a1, v26);
        }

        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 136) & 1) == 0)
          {
            *(a2 + 112) = 0;
            *(a2 + 120) = 0;
            *(a2 + 128) = 0;
            *(a2 + 136) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 112);
        }

        else
        {
          if (*(a2 + 136))
          {
            if (*(a2 + 135) < 0)
            {
              operator delete(*(a2 + 112));
            }

            *(a2 + 136) = 0;
          }

          (*(*a1 + 35))(a1, v26);
        }

        LOBYTE(__p) = 0;
        v32 = 0;
        LOBYTE(v26[0]) = 0;
        (*(*a1 + 10))(a1, v26);
        if (LOBYTE(v26[0]))
        {
          if ((v32 & 1) == 0)
          {
            __p = 0;
            v30 = 0;
            v31 = 0;
            v32 = 1;
          }

          (*(*a1 + 18))(a1, &__p);
        }

        else
        {
          if (v32)
          {
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p);
            }

            v32 = 0;
          }

          (*(*a1 + 35))(a1, v24);
        }

        if (v32 == 1)
        {
          sub_2713BB9DC(&__p, v24);
          *v26 = *v24;
          v27 = v25;
          v24[1] = 0;
          v25 = 0;
          v24[0] = 0;
          v28 = 1;
          sub_2713BCDA4(a2 + 144, v26);
          if (v28 == 1)
          {
            v12 = v26[0];
            if (v26[0])
            {
              v13 = v26[1];
              v14 = v26[0];
              if (v26[1] != v26[0])
              {
                do
                {
                  v15 = *(v13 - 1);
                  v13 -= 3;
                  if (v15 < 0)
                  {
                    operator delete(*v13);
                  }
                }

                while (v13 != v12);
                v14 = v26[0];
              }

              v26[1] = v12;
              operator delete(v14);
            }
          }

          v20 = v24[0];
          if (v24[0])
          {
            v21 = v24[1];
            v22 = v24[0];
            if (v24[1] != v24[0])
            {
              do
              {
                v23 = *(v21 - 1);
                v21 -= 3;
                if (v23 < 0)
                {
                  operator delete(*v21);
                }
              }

              while (v21 != v20);
              v22 = v24[0];
            }

            v24[1] = v20;
            operator delete(v22);
          }
        }

        else if (*(a2 + 168) == 1)
        {
          v16 = *(a2 + 144);
          if (v16)
          {
            v17 = *(a2 + 152);
            v18 = *(a2 + 144);
            if (v17 != v16)
            {
              do
              {
                v19 = *(v17 - 1);
                v17 -= 3;
                if (v19 < 0)
                {
                  operator delete(*v17);
                }
              }

              while (v17 != v16);
              v18 = *(a2 + 144);
            }

            *(a2 + 152) = v16;
            operator delete(v18);
          }

          *(a2 + 168) = 0;
        }

        if (v32 == 1 && SHIBYTE(v31) < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 104) & 1) == 0)
          {
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
            *(a2 + 96) = 0;
            *(a2 + 104) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 80);
        }

        else if (*(a2 + 104))
        {
          if (*(a2 + 103) < 0)
          {
            operator delete(*(a2 + 80));
          }

          *(a2 + 104) = 0;
        }

        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 136) & 1) == 0)
          {
            *(a2 + 112) = 0;
            *(a2 + 120) = 0;
            *(a2 + 128) = 0;
            *(a2 + 136) = 1;
          }

          (*(*a1 + 18))(a1, a2 + 112);
        }

        else if (*(a2 + 136))
        {
          if (*(a2 + 135) < 0)
          {
            operator delete(*(a2 + 112));
          }

          *(a2 + 136) = 0;
        }

        LOBYTE(__p) = 0;
        (*(*a1 + 10))(a1, &__p);
        if (__p)
        {
          if ((*(a2 + 168) & 1) == 0)
          {
            *(a2 + 144) = 0;
            *(a2 + 152) = 0;
            *(a2 + 160) = 0;
            *(a2 + 168) = 1;
          }

          sub_2713C774C(a1, (a2 + 144));
        }

        else if (*(a2 + 168))
        {
          v8 = *(a2 + 144);
          if (v8)
          {
            v9 = *(a2 + 152);
            v10 = *(a2 + 144);
            if (v9 != v8)
            {
              do
              {
                v11 = *(v9 - 1);
                v9 -= 3;
                if (v11 < 0)
                {
                  operator delete(*v9);
                }
              }

              while (v9 != v8);
              v10 = *(a2 + 144);
            }

            *(a2 + 152) = v8;
            operator delete(v10);
          }

          *(a2 + 168) = 0;
        }
      }
    }
  }
}

void sub_2713C7160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a23 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C718C(int *a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v8 = a4;
    LODWORD(v11) = 2;
    (*(*a2 + 104))(a2, &v11);
    if (v11 >= 3)
    {
      v10 = v11;
      if ((atomic_load_explicit(&qword_280878A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878A70))
      {
        sub_2718519B4(qword_280878A58, "cv3d::kit::timeio::TimestampSample]", 0x22uLL);
        __cxa_guard_release(&qword_280878A70);
        sub_271847D5C(qword_280878A58, v10, 2);
      }

      sub_271847D5C(qword_280878A58, v10, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 72))(a2, a3);
    v11 = (a3 + 8);
    sub_2713C7418(a2, &v11);
    (*(*a2 + 24))(a2);
    return;
  }

  if (a4 >= 2)
  {
    (*(*a2 + 72))(a2, a3);
    v11 = (a3 + 8);
    sub_2713C7418(a2, &v11);
    return;
  }

LABEL_10:
  v11 = 0;
  v12 = 0;
  (*(*a2 + 72))(a2, &v11);
  v13 = &v12;
  sub_2713C7418(a2, &v13);
  v9 = v12;
  *a3 = v11;
  *(a3 + 8) = v9;
}

void sub_2713C7418(_BYTE *a1, _BYTE **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LOBYTE(__p[0]) = 0;
  (*(*a1 + 80))(a1, __p);
  **a2 = __p[0];
}

void sub_2713C753C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713C7590(void *a1, uint64_t a2)
{
  v7 = 0;
  (*(*a1 + 80))(a1, &v7);
  if (v7)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    v4 = *a1;
    v8 = a1[1];
    v5 = v8;
    LODWORD(v9) = 2;
    (*(v4 + 104))(a1, &v9);
    if (v5 < 1)
    {
      if (v9 < 2)
      {
        v9 = 0;
        v10 = 0;
        (*(*a1 + 72))(a1, &v9);
        v11 = &v10;
        sub_2713C7418(a1, &v11);
        v6 = v10;
        *a2 = v9;
        *(a2 + 8) = v6;
      }

      else
      {
        (*(*a1 + 72))(a1, a2);
        v9 = (a2 + 8);
        sub_2713C7418(a1, &v9);
      }
    }

    else
    {
      sub_2713C718C(&v8, a1, a2, v9);
    }
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }
}

void sub_2713C774C(uint64_t a1, void ***a2)
{
  v10 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  (*(*a1 + 120))(a1, &v10);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a2);
  if (v10 > v5)
  {
    sub_2713C00BC(a2, v10 - v5);
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

  v7 = &(*a2)[3 * v10];
  while (v4 != v7)
  {
    v9 = *(v4 - 1);
    v4 -= 3;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  for (i = *a2; i != v7; i += 3)
  {
LABEL_12:
    (*(*a1 + 144))(a1, i);
  }
}

void sub_2713C7880(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v8 = a1[1];
  LODWORD(v9) = 2;
  (*(v6 + 104))(a1, &v9);
  if (v8 < 1)
  {
    if (v9 < 2)
    {
      v9 = 0;
      v10 = 0;
      (*(*a1 + 72))(a1, &v9);
      v11 = &v10;
      sub_2713C7418(a1, &v11);
      v7 = v10;
      *(a2 + 8) = v9;
      *(a2 + 16) = v7;
      if (a3 < 2)
      {
        return;
      }
    }

    else
    {
      (*(*a1 + 72))(a1, a2 + 8);
      v9 = (a2 + 16);
      sub_2713C7418(a1, &v9);
      if (a3 < 2)
      {
        return;
      }
    }
  }

  else
  {
    sub_2713C718C(&v8, a1, a2 + 8, v9);
    if (a3 < 2)
    {
      return;
    }
  }

  LOBYTE(v9) = 0;
  (*(*a1 + 80))(a1, &v9);
  if (v9)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    (*(*a1 + 144))(a1, a2 + 24);
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }
}

void sub_2713C7A9C(int *a1, _DWORD *a2, char *a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v8 = a4;
    v10 = 2;
    (*(*a2 + 104))(a2, &v10);
    if (v10 >= 3)
    {
      v9 = v10;
      if ((atomic_load_explicit(&qword_280878830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878830))
      {
        sub_2713C7C68();
      }

      sub_271847D5C(qword_280878818, v9, 2);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_2713C829C(a2, a3);
  }

  if (a4 > 1)
  {
    sub_2713C829C(a2, a3);
  }

LABEL_10:
  sub_2713C7D6C(a2, a3);
}

void sub_2713C7D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C8218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2713BE258(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C823C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2713A32D8(va);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C8258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713AE3D8(v9);
  sub_2713BF3B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2713C8274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void sub_2713C829C(_DWORD *a1, char *a2)
{
  *v7 = a2;
  sub_2713C86EC(a1, v7);
  v4 = a1[2];
  v7[0] = 2;
  (*(*a1 + 104))(a1, v7);
  if (v4 >= 1)
  {
    if (v4 == 2)
    {
      if (v7[0] >= 2)
      {
        v7[0] = 2;
        (*(*a1 + 104))(a1, v7);
        if (v7[0] >= 3)
        {
          v5 = v7[0];
          if ((atomic_load_explicit(&qword_280878810, memory_order_acquire) & 1) == 0)
          {
            if (__cxa_guard_acquire(&qword_280878810))
            {
              sub_2713C89A4();
            }
          }

          sub_271847D5C(qword_2808787F8, v5, 2);
        }

LABEL_8:
        (*(*a1 + 16))(a1);
        *v7 = a2 + 8;
        sub_2713C8AA8(a1, v7);
        (*(*a1 + 104))(a1, a2 + 8);
        (*(*a1 + 104))(a1, a2 + 10);
        (*(*a1 + 24))(a1);
        v6 = *a2;
        if (v6 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }
    }

    else if (v7[0] > 1)
    {
      goto LABEL_8;
    }
  }

  sub_2713C8864(a1, a2 + 8, v7[0]);
  v6 = *a2;
  if (v6 != 1)
  {
LABEL_9:
    sub_2715F7478(v6);
    sub_2713C8C20(v7, a1);
    sub_2713BE068();
  }

LABEL_11:
  sub_2715F5588(a2);
}

void sub_2713C86D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713BE258(va);
  _Unwind_Resume(a1);
}

void sub_2713C86EC(_BYTE *a1, _WORD **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LOWORD(__p[0]) = 0;
  (*(*a1 + 96))(a1, __p);
  **a2 = __p[0];
}

void sub_2713C8810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2713C8864(_BYTE *a1, char *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v7 = 1uLL;
    v8 = &v7;
    sub_2713C8AA8(a1, &v8);
    (*(*a1 + 104))(a1, &v7 + 8);
    (*(*a1 + 104))(a1, &v7 | 0xC);
    result = *&v7;
    *a2 = v7;
  }

  else
  {
    *&v7 = a2;
    sub_2713C8AA8(a1, &v7);
    (*(*a1 + 104))(a1, a2 + 8);
    v5 = *(*a1 + 104);

    v5(a1, a2 + 12);
  }

  return result;
}

void sub_2713C8A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713C8AA8(_BYTE *a1, void **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  __p[0] = 0;
  (*(*a1 + 120))(a1, __p);
  **a2 = __p[0];
}

void sub_2713C8BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713C8C20(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_271129318(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  __n = 0;
  (*(*a2 + 120))(a2, &__n);
  memset(&v9, 0, sizeof(v9));
  if (__n)
  {
    std::string::append(&v9, __n, 0);
    v5 = __n;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v5 = 0;
    v6 = &v9;
  }

  v8[0] = v6;
  v8[1] = v5;
  (*(*a2 + 272))(a2, v8);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v9.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v9.__r_.__value_.__l + 2);
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  sub_271129318(a1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2713C8E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_2713B5444(v16);
  _Unwind_Resume(a1);
}

void sub_2713C8F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  (*(*v3 + 8))(v3, a2);
  sub_27122B39C(va);
  _Unwind_Resume(a1);
}

void sub_2713C8FB8(uint64_t a1, void **a2)
{
  v4 = *a2;
  *v8 = a2[1];
  v9 = 6;
  v4[13](a2, &v9);
  if (v8[0] < 1)
  {
    if (v9 < 3)
    {
      sub_2713C66D4(&v9, a2, a1 + 16, v9);
    }

    else
    {
      sub_2713C68E0(a2, a1 + 16, v9);
    }
  }

  else
  {
    sub_2713C62C8(v8, a2, a1 + 16, v9);
  }

  v5 = *a2;
  *v8 = a2[1];
  v6 = v8[0];
  v9 = 2;
  v5[13](a2, &v9);
  if (v6 >= 1)
  {
    sub_2713C7A9C(v8, a2, (a1 + 192), v9);
  }

  v7 = (a1 + 192);
  if (v9 >= 2)
  {
    sub_2713C829C(a2, v7);
  }

  sub_2713C7D6C(a2, v7);
}

void sub_2713C9104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27182791C(a2 + 48, (a2 + 40));
  v5 = sub_2718289B0(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    LOBYTE(v10) = 6;
    v11[0] = 4;
    v7 = sub_2718289B0(a2);
    v8 = *v7;
    *v7 = 6;
    LOBYTE(v10) = v8;
    v9 = v7[1];
    v7[1] = v11[0];
    v11[0] = v9;
    sub_2715CC40C(v11, v8);
  }

  sub_2713C9DA4(&v10, a3);
  sub_2713C9278(a2, &v10, 4u);
}

void sub_2713C9278(uint64_t a1, uint64_t **a2, unsigned int a3)
{
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "vertices";
    *(a1 + 80) = 8;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_2718289B0(a1);
  v6 = *(a1 + 88);
  if (v6 == 1)
  {
    v6 = 0;
    *(a1 + 88) = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v13 = *(a1 + 56);
    v12 = *(v13 - 8);
    *(a1 + 40) = v12;
    *(a1 + 56) = v13 - 8;
    if (v6)
    {
LABEL_9:
      *(a1 + 88) = 0;
    }
  }

  else
  {
    do
    {
      v9 = *v7;
      LODWORD(v16) = *(v7 + 2);
      v15 = v9;
      v14[0] = &v15;
      v14[1] = 3;
      sub_27182C644(a1, v14);
      v7 = (v7 + 12);
    }

    while (v7 != v8);
    v10 = *(a1 + 56);
    v11 = *(a1 + 88);
    v12 = *(v10 - 8);
    *(a1 + 40) = v12;
    *(a1 + 56) = v10 - 8;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (*v12 <= 1u)
  {
    *(a1 + 72) = "colors_type";
    *(a1 + 80) = 11;
    *(a1 + 88) = 1;
  }

  sub_2713CACE8(a1, (a2 + 4));
}

uint64_t sub_2713C9DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2713C9F18(a1, a2);
  *(v4 + 8) = *(a2 + 32);
  sub_2713C9F18(v4 + 5, a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  sub_2713C9F18((a1 + 80), a2 + 80);
  *(a1 + 112) = *(a2 + 112);
  sub_2713CA044((a1 + 120), a2 + 120);
  *(a1 + 152) = *(a2 + 152);
  sub_2713CA044((a1 + 160), a2 + 160);
  sub_2713CA14C((a1 + 192), a2 + 192);
  sub_2713CA278((a1 + 224), a2 + 224);
  sub_2713CA38C((a1 + 256), a2 + 256);
  sub_2713CA14C((a1 + 288), a2 + 288);
  v5 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v5;
  sub_2713CAB34((a1 + 352), a2 + 352);
  return a1;
}

void sub_2713C9E64(_Unwind_Exception *a1)
{
  sub_2713AE8DC(v1 + 36);
  sub_2713AE96C(v1 + 32);
  sub_2713AE9F0(v1 + 28);
  sub_2713AE8DC(v1 + 24);
  sub_2713AEA74(v1 + 20);
  sub_2713AEA74(v1 + 15);
  sub_2713AEAF4(v1 + 10);
  sub_2713AEAF4(v1 + 5);
  sub_2713AEAF4(v1);
  _Unwind_Resume(a1);
}

void sub_2713C9EE8(_Unwind_Exception *a1)
{
  sub_2713AEAF4(v1 + 5);
  sub_2713AEAF4(v1);
  _Unwind_Resume(a1);
}

int **sub_2713C9F18(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_2881319E8[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_271135560();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_2881319F8[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[3 * v10];
    memmove(v9, v7, v8);
    a1[1] = (v9 + v8);
  }

  return a1;
}

int **sub_2713CA044(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288131A08[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      sub_271135560();
    }

    v14 = v6 - v7;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288131A18[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = (v9 + v10);
    memmove(v9, v7, v8);
    a1[1] = (v9 + v8);
  }

  return a1;
}

int **sub_2713CA14C(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288131A28[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_271135560();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288131A38[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[3 * v10];
    memmove(v9, v7, v8);
    a1[1] = (v9 + v8);
  }

  return a1;
}

int **sub_2713CA278(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288131A48[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 >> 3) >> 61)
    {
      sub_271135560();
    }

    v14 = v8 >> 3;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288131A58[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[2 * v10];
    memmove(v9, v7, v8);
    a1[1] = (v9 + v8);
  }

  return a1;
}

int **sub_2713CA38C(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288131A68[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 >> 3) >> 61)
    {
      sub_271135560();
    }

    v14 = v8 >> 3;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288131A78[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[2 * v10];
    memmove(v9, v7, v8);
    a1[1] = (v9 + v8);
  }

  return a1;
}

vm_address_t sub_2713CA4F4(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_2713CA598(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_288131900[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

uint64_t **sub_2713CA644(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = *(v1 + 4) - v2;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_2881318F0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_2713CA724(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_2713CA7C8(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_2881318C0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_2713CA8B4(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_2713CA93C(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_2881318E0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_2713CAA1C(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_2713CAAA4(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_2881318D0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

int **sub_2713CAB34(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v15;
  v5 = (off_288131A88[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 >> 2) >> 62)
    {
      sub_271135560();
    }

    v14 = v8 >> 2;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v15 = &v14;
    v9 = (off_288131A98[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[v10];
    memmove(v9, v7, v8);
    a1[1] = (v9 + v8);
  }

  return a1;
}

uint64_t **sub_2713CAC58(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 2;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_2711308D4();
      }

      v5 = result;
      v8 = &v6;
      (off_2881318B0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

void sub_2713CADB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713CADD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713CADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713CB004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713CB048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (*(v5 + 40) == 1)
  {
    v11[0] = (v5 + 16);
    sub_2718460EC(v11, 4u);
  }

  else
  {
    sub_27184636C(v11, (v5 + 8), 4u);
  }

  sub_271840ADC(*(a2 + 24));
  sub_2713C9DA4(v11, a3);
  sub_2713CB17C(a2, v11, 4u);
  sub_2713AE52C(v11);
  v6 = *(a2 + 24);
  v7 = *(*(v6 + 88) - 8);
  sub_2718404E0((v6 + 48), *(v6 + 16) - v7 - 9);
  v8 = *(v6 + 48);
  if (v8)
  {
    memmove((*(v6 + 24) + v7), *(v6 + 56), v8);
  }

  *(v6 + 48) = 0;
  v9 = *(v6 + 80);
  v10 = *(v6 + 88) - 8;
  *(v6 + 88) = v10;
  if (v9 == v10)
  {
    std::ostream::write();
    if (*(v6 + 40) == 1)
    {
      free(*(v6 + 24));
      *(v6 + 40) = 0;
    }
  }
}

void sub_2713CB17C(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    v127 = (v7 + 16);
    sub_271846AEC(&v127, v6);
    v8 = *a2;
    v9 = a2[1];
    if (v9 == *a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_271846E00((v7 + 8), v6);
    v8 = *a2;
    v9 = a2[1];
    if (v9 == *a2)
    {
      goto LABEL_9;
    }
  }

  v10 = (v8 + 8);
  do
  {
    while (1)
    {
      v12 = *(a1 + 24);
      if (*(v12 + 40) != 1)
      {
        break;
      }

      v127 = (v12 + 16);
      sub_271846EFC(&v128, &v127, v10 - 2);
      sub_271846EFC(&v128, &v127, v10 - 1);
      sub_271846EFC(&v128, &v127, v10);
      v11 = v10 + 1;
      v10 += 3;
      if (v11 == v9)
      {
        goto LABEL_9;
      }
    }

    v13 = *(v10 - 2);
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v13);
    std::ostream::write();
    v14 = *(v10 - 1);
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v14);
    std::ostream::write();
    v15 = *v10;
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v15);
    std::ostream::write();
    v16 = v10 + 1;
    v10 += 3;
  }

  while (v16 != v9);
LABEL_9:
  v17 = *(a2 + 8);
  v18 = *(a1 + 24);
  if (*(v18 + 40) == 1)
  {
    v127 = (v18 + 16);
    sub_2718460EC(&v127, v17);
  }

  else
  {
    sub_27184636C(&v127, (v18 + 8), v17);
  }

  v19 = 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2);
  v20 = *(a1 + 24);
  if (*(v20 + 40) == 1)
  {
    v127 = (v20 + 16);
    sub_271846AEC(&v127, v19);
    v21 = a2[5];
    v22 = a2[6];
    if (v22 == v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_271846E00((v20 + 8), v19);
    v21 = a2[5];
    v22 = a2[6];
    if (v22 == v21)
    {
      goto LABEL_20;
    }
  }

  v23 = (v21 + 8);
  do
  {
    while (1)
    {
      v25 = *(a1 + 24);
      if (*(v25 + 40) != 1)
      {
        break;
      }

      v127 = (v25 + 16);
      sub_271846EFC(&v128, &v127, v23 - 2);
      sub_271846EFC(&v128, &v127, v23 - 1);
      sub_271846EFC(&v128, &v127, v23);
      v24 = v23 + 1;
      v23 += 3;
      if (v24 == v22)
      {
        goto LABEL_20;
      }
    }

    v26 = *(v23 - 2);
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v26);
    std::ostream::write();
    v27 = *(v23 - 1);
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v27);
    std::ostream::write();
    v28 = *v23;
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v28);
    std::ostream::write();
    v29 = v23 + 1;
    v23 += 3;
  }

  while (v29 != v22);
LABEL_20:
  v30 = *(a2 + 18);
  v31 = *(a1 + 24);
  if (*(v31 + 40) == 1)
  {
    v127 = (v31 + 16);
    sub_2718460EC(&v127, v30);
  }

  else
  {
    sub_27184636C(&v127, (v31 + 8), v30);
  }

  v32 = 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 2);
  v33 = *(a1 + 24);
  if (*(v33 + 40) == 1)
  {
    v127 = (v33 + 16);
    sub_271846AEC(&v127, v32);
    v34 = a2[10];
    v35 = a2[11];
    if (v35 == v34)
    {
      goto LABEL_31;
    }
  }

  else
  {
    sub_271846E00((v33 + 8), v32);
    v34 = a2[10];
    v35 = a2[11];
    if (v35 == v34)
    {
      goto LABEL_31;
    }
  }

  v36 = (v34 + 8);
  do
  {
    while (1)
    {
      v38 = *(a1 + 24);
      if (*(v38 + 40) != 1)
      {
        break;
      }

      v127 = (v38 + 16);
      sub_271846EFC(&v128, &v127, v36 - 2);
      sub_271846EFC(&v128, &v127, v36 - 1);
      sub_271846EFC(&v128, &v127, v36);
      v37 = v36 + 1;
      v36 += 3;
      if (v37 == v35)
      {
        goto LABEL_31;
      }
    }

    v39 = *(v36 - 2);
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v39);
    std::ostream::write();
    v40 = *(v36 - 1);
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v40);
    std::ostream::write();
    v41 = *v36;
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v41);
    std::ostream::write();
    v42 = v36 + 1;
    v36 += 3;
  }

  while (v42 != v35);
LABEL_31:
  v43 = *(a2 + 28);
  v44 = *(a1 + 24);
  if (*(v44 + 40) == 1)
  {
    v127 = (v44 + 16);
    sub_2718460EC(&v127, v43);
    v45 = a2[16] - a2[15];
    v46 = *(a1 + 24);
    if (*(v46 + 40) != 1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    sub_27184636C(&v127, (v44 + 8), v43);
    v45 = a2[16] - a2[15];
    v46 = *(a1 + 24);
    if (*(v46 + 40) != 1)
    {
LABEL_33:
      sub_271846E00((v46 + 8), v45);
      v47 = a2[15];
      v48 = a2[16];
      v49 = *(a1 + 24);
      if (*(v49 + 40) != 1)
      {
        goto LABEL_34;
      }

LABEL_42:
      v127 = (v49 + 16);
      if (v48 != v47)
      {
        do
        {
          sub_2718454CC(&v127, v47++);
        }

        while (v47 != v48);
      }

      goto LABEL_44;
    }
  }

  v127 = (v46 + 16);
  sub_271846AEC(&v127, v45);
  v47 = a2[15];
  v48 = a2[16];
  v49 = *(a1 + 24);
  if (*(v49 + 40) == 1)
  {
    goto LABEL_42;
  }

LABEL_34:
  if (v48 != v47)
  {
    do
    {
      while (1)
      {
        v50 = *v47;
        if ((v50 & 0x80000000) == 0)
        {
          break;
        }

        LOBYTE(v127) = -52;
        BYTE1(v127) = v50;
        std::ostream::write();
        if (++v47 == v48)
        {
          goto LABEL_44;
        }
      }

      LOBYTE(v127) = *v47;
      std::ostream::write();
      ++v47;
    }

    while (v47 != v48);
  }

LABEL_44:
  v51 = *(a2 + 38);
  v52 = *(a1 + 24);
  if (*(v52 + 40) == 1)
  {
    v127 = (v52 + 16);
    sub_2718460EC(&v127, v51);
    v53 = a2[21] - a2[20];
    v54 = *(a1 + 24);
    if (*(v54 + 40) != 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    sub_27184636C(&v127, (v52 + 8), v51);
    v53 = a2[21] - a2[20];
    v54 = *(a1 + 24);
    if (*(v54 + 40) != 1)
    {
LABEL_46:
      sub_271846E00((v54 + 8), v53);
      v55 = a2[20];
      v56 = a2[21];
      v57 = *(a1 + 24);
      if (*(v57 + 40) != 1)
      {
        goto LABEL_47;
      }

LABEL_55:
      v127 = (v57 + 16);
      if (v56 != v55)
      {
        do
        {
          sub_2718454CC(&v127, v55++);
        }

        while (v55 != v56);
      }

      goto LABEL_57;
    }
  }

  v127 = (v54 + 16);
  sub_271846AEC(&v127, v53);
  v55 = a2[20];
  v56 = a2[21];
  v57 = *(a1 + 24);
  if (*(v57 + 40) == 1)
  {
    goto LABEL_55;
  }

LABEL_47:
  if (v56 != v55)
  {
    do
    {
      while (1)
      {
        v58 = *v55;
        if ((v58 & 0x80000000) == 0)
        {
          break;
        }

        LOBYTE(v127) = -52;
        BYTE1(v127) = v58;
        std::ostream::write();
        if (++v55 == v56)
        {
          goto LABEL_57;
        }
      }

      LOBYTE(v127) = *v55;
      std::ostream::write();
      ++v55;
    }

    while (v55 != v56);
  }

LABEL_57:
  v59 = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - a2[24]) >> 2);
  v60 = *(a1 + 24);
  if (*(v60 + 40) != 1)
  {
    sub_271846E00((v60 + 8), v59);
    v61 = a2[24];
    v62 = a2[25];
    if (v62 == v61)
    {
      goto LABEL_90;
    }

    while (1)
    {
      while (1)
      {
LABEL_63:
        while (1)
        {
          v63 = *(a1 + 24);
          if (*(v63 + 40) != 1)
          {
            break;
          }

          v127 = (v63 + 16);
          sub_2718460EC(&v127, *v61);
          sub_2718460EC(&v127, v61[1]);
          sub_2718460EC(&v127, v61[2]);
          v61 += 3;
          if (v61 == v62)
          {
            goto LABEL_90;
          }
        }

        v64 = *v61;
        if (*v61 > 0xFF)
        {
          break;
        }

        if (v64 > 0x7F)
        {
          LOBYTE(v127) = -52;
          BYTE1(v127) = v64;
          std::ostream::write();
          v65 = v61[1];
          if (v65 >= 0x100)
          {
            goto LABEL_78;
          }
        }

        else
        {
          LOBYTE(v127) = *v61;
          std::ostream::write();
          v65 = v61[1];
          if (v65 >= 0x100)
          {
            goto LABEL_78;
          }
        }

LABEL_72:
        if (v65 >= 0x80)
        {
          LOBYTE(v127) = -52;
          BYTE1(v127) = v65;
          std::ostream::write();
          v68 = v61[2];
          if (v68 >= 0x100)
          {
            goto LABEL_86;
          }
        }

        else
        {
          LOBYTE(v127) = v65;
          std::ostream::write();
          v68 = v61[2];
          if (v68 >= 0x100)
          {
            goto LABEL_86;
          }
        }

LABEL_80:
        if (v68 >= 0x80)
        {
          LOBYTE(v127) = -52;
          BYTE1(v127) = v68;
          std::ostream::write();
          v61 += 3;
          if (v61 == v62)
          {
            goto LABEL_90;
          }
        }

        else
        {
          LOBYTE(v127) = v68;
          std::ostream::write();
          v61 += 3;
          if (v61 == v62)
          {
            goto LABEL_90;
          }
        }
      }

      v66 = HIWORD(v64);
      v67 = bswap32(v64);
      if (v66)
      {
        LOBYTE(v127) = -50;
        *(&v127 + 1) = v67;
        std::ostream::write();
        v65 = v61[1];
        if (v65 >= 0x100)
        {
          goto LABEL_78;
        }

        goto LABEL_72;
      }

      LOBYTE(v127) = -51;
      *(&v127 + 1) = HIWORD(v67);
      std::ostream::write();
      v65 = v61[1];
      if (v65 < 0x100)
      {
        goto LABEL_72;
      }

LABEL_78:
      v69 = bswap32(v65);
      if (v65 >= 0x10000)
      {
        LOBYTE(v127) = -50;
        *(&v127 + 1) = v69;
        std::ostream::write();
        v68 = v61[2];
        if (v68 < 0x100)
        {
          goto LABEL_80;
        }
      }

      else
      {
        LOBYTE(v127) = -51;
        *(&v127 + 1) = HIWORD(v69);
        std::ostream::write();
        v68 = v61[2];
        if (v68 < 0x100)
        {
          goto LABEL_80;
        }
      }

LABEL_86:
      v70 = bswap32(v68);
      if (v68 >= 0x10000)
      {
        LOBYTE(v127) = -50;
        *(&v127 + 1) = v70;
        std::ostream::write();
        v61 += 3;
        if (v61 == v62)
        {
          goto LABEL_90;
        }
      }

      else
      {
        LOBYTE(v127) = -51;
        *(&v127 + 1) = HIWORD(v70);
        std::ostream::write();
        v61 += 3;
        if (v61 == v62)
        {
          goto LABEL_90;
        }
      }
    }
  }

  v127 = (v60 + 16);
  sub_271846AEC(&v127, v59);
  v61 = a2[24];
  v62 = a2[25];
  if (v62 != v61)
  {
    goto LABEL_63;
  }

LABEL_90:
  v71 = (a2[29] - a2[28]) >> 3;
  v72 = *(a1 + 24);
  if (*(v72 + 40) != 1)
  {
    sub_271846E00((v72 + 8), v71);
    v73 = a2[28];
    v74 = a2[29];
    if (v74 == v73)
    {
      goto LABEL_115;
    }

    while (1)
    {
      while (1)
      {
LABEL_96:
        while (1)
        {
          v75 = *(a1 + 24);
          if (*(v75 + 40) != 1)
          {
            break;
          }

          v127 = (v75 + 16);
          sub_2718460EC(&v127, *v73);
          sub_2718460EC(&v127, v73[1]);
          v73 += 2;
          if (v73 == v74)
          {
            goto LABEL_115;
          }
        }

        v76 = *v73;
        if (*v73 <= 0xFF)
        {
          break;
        }

        v78 = HIWORD(v76);
        v79 = bswap32(v76);
        if (!v78)
        {
          LOBYTE(v127) = -51;
          *(&v127 + 1) = HIWORD(v79);
          std::ostream::write();
          v77 = v73[1];
          if (v77 >= 0x100)
          {
            goto LABEL_111;
          }

          goto LABEL_105;
        }

        LOBYTE(v127) = -50;
        *(&v127 + 1) = v79;
        std::ostream::write();
        v77 = v73[1];
        if (v77 < 0x100)
        {
          goto LABEL_105;
        }

LABEL_111:
        v80 = bswap32(v77);
        if (v77 >= 0x10000)
        {
          LOBYTE(v127) = -50;
          *(&v127 + 1) = v80;
          std::ostream::write();
          v73 += 2;
          if (v73 == v74)
          {
            goto LABEL_115;
          }
        }

        else
        {
          LOBYTE(v127) = -51;
          *(&v127 + 1) = HIWORD(v80);
          std::ostream::write();
          v73 += 2;
          if (v73 == v74)
          {
            goto LABEL_115;
          }
        }
      }

      if (v76 > 0x7F)
      {
        LOBYTE(v127) = -52;
        BYTE1(v127) = v76;
        std::ostream::write();
        v77 = v73[1];
        if (v77 < 0x100)
        {
          goto LABEL_105;
        }

        goto LABEL_111;
      }

      LOBYTE(v127) = *v73;
      std::ostream::write();
      v77 = v73[1];
      if (v77 >= 0x100)
      {
        goto LABEL_111;
      }

LABEL_105:
      if (v77 >= 0x80)
      {
        LOBYTE(v127) = -52;
        BYTE1(v127) = v77;
        std::ostream::write();
        v73 += 2;
        if (v73 == v74)
        {
          goto LABEL_115;
        }
      }

      else
      {
        LOBYTE(v127) = v77;
        std::ostream::write();
        v73 += 2;
        if (v73 == v74)
        {
          goto LABEL_115;
        }
      }
    }
  }

  v127 = (v72 + 16);
  sub_271846AEC(&v127, v71);
  v73 = a2[28];
  v74 = a2[29];
  if (v74 != v73)
  {
    goto LABEL_96;
  }

LABEL_115:
  v81 = (a2[33] - a2[32]) >> 3;
  v82 = *(a1 + 24);
  if (*(v82 + 40) == 1)
  {
    v127 = (v82 + 16);
    sub_271846AEC(&v127, v81);
    v83 = a2[32];
    v84 = a2[33];
    if (v84 == v83)
    {
      goto LABEL_123;
    }
  }

  else
  {
    sub_271846E00((v82 + 8), v81);
    v83 = a2[32];
    v84 = a2[33];
    if (v84 == v83)
    {
      goto LABEL_123;
    }
  }

  v85 = (v83 + 4);
  do
  {
    while (1)
    {
      v87 = *(a1 + 24);
      if (*(v87 + 40) != 1)
      {
        break;
      }

      v127 = (v87 + 16);
      sub_271846EFC(&v128, &v127, v85 - 1);
      sub_271846EFC(&v128, &v127, v85);
      v86 = v85 + 1;
      v85 += 2;
      if (v86 == v84)
      {
        goto LABEL_123;
      }
    }

    v88 = *(v85 - 1);
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v88);
    std::ostream::write();
    v89 = *v85;
    LOBYTE(v127) = -54;
    *(&v127 + 1) = bswap32(v89);
    std::ostream::write();
    v90 = v85 + 1;
    v85 += 2;
  }

  while (v90 != v84);
LABEL_123:
  v91 = 0xAAAAAAAAAAAAAAABLL * ((a2[37] - a2[36]) >> 2);
  v92 = *(a1 + 24);
  if (*(v92 + 40) != 1)
  {
    sub_271846E00((v92 + 8), v91);
    v93 = a2[36];
    v94 = a2[37];
    if (v94 == v93)
    {
      goto LABEL_156;
    }

    while (1)
    {
      while (1)
      {
LABEL_129:
        while (1)
        {
          v95 = *(a1 + 24);
          if (*(v95 + 40) != 1)
          {
            break;
          }

          v127 = (v95 + 16);
          sub_2718460EC(&v127, *v93);
          sub_2718460EC(&v127, v93[1]);
          sub_2718460EC(&v127, v93[2]);
          v93 += 3;
          if (v93 == v94)
          {
            goto LABEL_156;
          }
        }

        v96 = *v93;
        if (*v93 > 0xFF)
        {
          break;
        }

        if (v96 > 0x7F)
        {
          LOBYTE(v127) = -52;
          BYTE1(v127) = v96;
          std::ostream::write();
          v97 = v93[1];
          if (v97 >= 0x100)
          {
            goto LABEL_144;
          }
        }

        else
        {
          LOBYTE(v127) = *v93;
          std::ostream::write();
          v97 = v93[1];
          if (v97 >= 0x100)
          {
            goto LABEL_144;
          }
        }

LABEL_138:
        if (v97 >= 0x80)
        {
          LOBYTE(v127) = -52;
          BYTE1(v127) = v97;
          std::ostream::write();
          v100 = v93[2];
          if (v100 >= 0x100)
          {
            goto LABEL_152;
          }
        }

        else
        {
          LOBYTE(v127) = v97;
          std::ostream::write();
          v100 = v93[2];
          if (v100 >= 0x100)
          {
            goto LABEL_152;
          }
        }

LABEL_146:
        if (v100 >= 0x80)
        {
          LOBYTE(v127) = -52;
          BYTE1(v127) = v100;
          std::ostream::write();
          v93 += 3;
          if (v93 == v94)
          {
            goto LABEL_156;
          }
        }

        else
        {
          LOBYTE(v127) = v100;
          std::ostream::write();
          v93 += 3;
          if (v93 == v94)
          {
            goto LABEL_156;
          }
        }
      }

      v98 = HIWORD(v96);
      v99 = bswap32(v96);
      if (v98)
      {
        LOBYTE(v127) = -50;
        *(&v127 + 1) = v99;
        std::ostream::write();
        v97 = v93[1];
        if (v97 >= 0x100)
        {
          goto LABEL_144;
        }

        goto LABEL_138;
      }

      LOBYTE(v127) = -51;
      *(&v127 + 1) = HIWORD(v99);
      std::ostream::write();
      v97 = v93[1];
      if (v97 < 0x100)
      {
        goto LABEL_138;
      }

LABEL_144:
      v101 = bswap32(v97);
      if (v97 >= 0x10000)
      {
        LOBYTE(v127) = -50;
        *(&v127 + 1) = v101;
        std::ostream::write();
        v100 = v93[2];
        if (v100 < 0x100)
        {
          goto LABEL_146;
        }
      }

      else
      {
        LOBYTE(v127) = -51;
        *(&v127 + 1) = HIWORD(v101);
        std::ostream::write();
        v100 = v93[2];
        if (v100 < 0x100)
        {
          goto LABEL_146;
        }
      }

LABEL_152:
      v102 = bswap32(v100);
      if (v100 >= 0x10000)
      {
        LOBYTE(v127) = -50;
        *(&v127 + 1) = v102;
        std::ostream::write();
        v93 += 3;
        if (v93 == v94)
        {
          goto LABEL_156;
        }
      }

      else
      {
        LOBYTE(v127) = -51;
        *(&v127 + 1) = HIWORD(v102);
        std::ostream::write();
        v93 += 3;
        if (v93 == v94)
        {
          goto LABEL_156;
        }
      }
    }
  }

  v127 = (v92 + 16);
  sub_271846AEC(&v127, v91);
  v93 = a2[36];
  v94 = a2[37];
  if (v94 != v93)
  {
    goto LABEL_129;
  }

LABEL_156:
  if (a3 < 2)
  {
    return;
  }

  if (*(a2 + 344) != 1)
  {
    v128 = 0;
    v113 = *(a1 + 24);
    if (*(v113 + 40) == 1)
    {
      v127 = (v113 + 16);
      sub_2718454CC(&v127, &v128);
    }

    else
    {
      LOBYTE(v127) = 0;
      std::ostream::write();
    }

    goto LABEL_175;
  }

  v128 = 1;
  v103 = *(a1 + 24);
  if (*(v103 + 40) == 1)
  {
    v127 = (v103 + 16);
    sub_2718454CC(&v127, &v128);
    v104 = *(a1 + 24);
    if (*(v104 + 40) != 1)
    {
      goto LABEL_160;
    }
  }

  else
  {
    LOBYTE(v127) = 1;
    std::ostream::write();
    v104 = *(a1 + 24);
    if (*(v104 + 40) != 1)
    {
LABEL_160:
      sub_27184636C(&v127, (v104 + 8), 2u);
      sub_271840ADC(*(a1 + 24));
      v105 = *(a1 + 24);
      if (*(v105 + 40) != 1)
      {
        goto LABEL_161;
      }

LABEL_167:
      v127 = (v105 + 16);
      sub_271846EFC(&v128, &v127, a2 + 80);
      sub_271846EFC(&v128, &v127, a2 + 81);
      sub_271846EFC(&v128, &v127, a2 + 82);
      v109 = *(a1 + 24);
      if (*(v109 + 40) != 1)
      {
        goto LABEL_162;
      }

LABEL_168:
      v127 = (v109 + 16);
      sub_271846EFC(&v128, &v127, a2 + 83);
      sub_271846EFC(&v128, &v127, a2 + 84);
      sub_271846EFC(&v128, &v127, a2 + 85);
      goto LABEL_169;
    }
  }

  v127 = (v104 + 16);
  sub_2718460EC(&v127, 2u);
  sub_271840ADC(*(a1 + 24));
  v105 = *(a1 + 24);
  if (*(v105 + 40) == 1)
  {
    goto LABEL_167;
  }

LABEL_161:
  v106 = *(a2 + 80);
  LOBYTE(v127) = -54;
  *(&v127 + 1) = bswap32(v106);
  std::ostream::write();
  v107 = *(a2 + 81);
  LOBYTE(v127) = -54;
  *(&v127 + 1) = bswap32(v107);
  std::ostream::write();
  v108 = *(a2 + 82);
  LOBYTE(v127) = -54;
  *(&v127 + 1) = bswap32(v108);
  std::ostream::write();
  v109 = *(a1 + 24);
  if (*(v109 + 40) == 1)
  {
    goto LABEL_168;
  }

LABEL_162:
  v110 = *(a2 + 83);
  LOBYTE(v127) = -54;
  *(&v127 + 1) = bswap32(v110);
  std::ostream::write();
  v111 = *(a2 + 84);
  LOBYTE(v127) = -54;
  *(&v127 + 1) = bswap32(v111);
  std::ostream::write();
  v112 = *(a2 + 85);
  LOBYTE(v127) = -54;
  *(&v127 + 1) = bswap32(v112);
  std::ostream::write();
LABEL_169:
  v114 = *(a1 + 24);
  v115 = *(*(v114 + 88) - 8);
  sub_2718404E0((v114 + 48), *(v114 + 16) - v115 - 9);
  v116 = *(v114 + 48);
  if (v116)
  {
    memmove((*(v114 + 24) + v115), *(v114 + 56), v116);
  }

  *(v114 + 48) = 0;
  v117 = *(v114 + 80);
  v118 = *(v114 + 88) - 8;
  *(v114 + 88) = v118;
  if (v117 == v118)
  {
    std::ostream::write();
    if (*(v114 + 40) == 1)
    {
      free(*(v114 + 24));
      *(v114 + 40) = 0;
    }
  }

LABEL_175:
  if (a3 < 4)
  {
    return;
  }

  v119 = *(a2 + 87);
  v120 = *(a1 + 24);
  if (*(v120 + 40) == 1)
  {
    v127 = (v120 + 16);
    sub_2718460EC(&v127, v119);
  }

  else
  {
    sub_27184636C(&v127, (v120 + 8), v119);
  }

  v121 = (a2[45] - a2[44]) >> 2;
  v122 = *(a1 + 24);
  if (*(v122 + 40) == 1)
  {
    v127 = (v122 + 16);
    sub_271846AEC(&v127, v121);
    v124 = a2[44];
    v123 = a2[45];
    v125 = *(a1 + 24);
    if (*(v125 + 40) != 1)
    {
      goto LABEL_181;
    }
  }

  else
  {
    sub_271846E00((v122 + 8), v121);
    v124 = a2[44];
    v123 = a2[45];
    v125 = *(a1 + 24);
    if (*(v125 + 40) != 1)
    {
LABEL_181:
      if (v123 != v124)
      {
        do
        {
          v126 = *v124++;
          LOBYTE(v127) = -54;
          *(&v127 + 1) = bswap32(v126);
          std::ostream::write();
        }

        while (v124 != v123);
      }

      return;
    }
  }

  v127 = (v125 + 16);
  if (v123 != v124)
  {
    do
    {
      sub_271846EFC(&v128, &v127, v124++);
    }

    while (v124 != v123);
  }
}

void sub_2713CC488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2715DF0F0(a2 + 48, (a2 + 40));
  v5 = sub_27182815C(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    LOBYTE(v10) = 6;
    v11[0] = 4;
    v7 = sub_27182815C(a2);
    v8 = *v7;
    *v7 = 6;
    LOBYTE(v10) = v8;
    v9 = v7[1];
    v7[1] = v11[0];
    v11[0] = v9;
    sub_2715CA870(v11, v8);
  }

  sub_2713C9DA4(&v10, a3);
  sub_2713CC5FC(a2, &v10, 4u);
}

void sub_2713CC5FC(uint64_t a1, uint64_t **a2, unsigned int a3)
{
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "vertices";
    *(a1 + 80) = 8;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_27182815C(a1);
  v6 = *(a1 + 88);
  if (v6 == 1)
  {
    v6 = 0;
    *(a1 + 88) = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v13 = *(a1 + 56);
    v12 = *(v13 - 8);
    *(a1 + 40) = v12;
    *(a1 + 56) = v13 - 8;
    if (v6)
    {
LABEL_9:
      *(a1 + 88) = 0;
    }
  }

  else
  {
    do
    {
      v9 = *v7;
      LODWORD(v16) = *(v7 + 2);
      v15 = v9;
      v14[0] = &v15;
      v14[1] = 3;
      sub_27182A338(a1, v14);
      v7 = (v7 + 12);
    }

    while (v7 != v8);
    v10 = *(a1 + 56);
    v11 = *(a1 + 88);
    v12 = *(v10 - 8);
    *(a1 + 40) = v12;
    *(a1 + 56) = v10 - 8;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (*v12 <= 1u)
  {
    *(a1 + 72) = "colors_type";
    *(a1 + 80) = 11;
    *(a1 + 88) = 1;
  }

  sub_2713CD128(a1, (a2 + 4));
}

void sub_2713CD1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713CD214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713CD228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713CD23C(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  if (*(a1 + 40))
  {
    v7 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v7, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v6);
  v8 = *(a1 + 40) + 1;
  *(a1 + 40) = v8;
  v9 = *a2;
  v10 = a2[1];
  if (v10 != *a2)
  {
    while (1)
    {
      if (v8)
      {
        v11 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v11, &__p, 1);
      }

      v155 = 9;
      v12 = *(a1 + 24);
      sub_271838D28("{:.{}}", v9, &v155, &__p);
      v13 = (v154 & 0x80u) == 0 ? &__p : __p;
      v14 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_271120E64(v12, v13, v14);
      if ((v154 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v27 = *(a1 + 40);
      *(a1 + 40) = v27 + 1;
      if (v27 != -1)
      {
        goto LABEL_16;
      }

LABEL_17:
      v155 = 9;
      v17 = *(a1 + 24);
      v18 = v9 + 1;
      sub_271838D28("{:.{}}", v18, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v20 = v154;
      }

      else
      {
        v20 = v153;
      }

      sub_271120E64(v17, p_p, v20);
      if (v154 < 0)
      {
        operator delete(__p);
        v28 = *(a1 + 40);
        *(a1 + 40) = v28 + 1;
        if (v28 == -1)
        {
          goto LABEL_26;
        }

LABEL_25:
        v22 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v22, &__p, 1);
        goto LABEL_26;
      }

      v21 = *(a1 + 40);
      *(a1 + 40) = v21 + 1;
      if (v21 != -1)
      {
        goto LABEL_25;
      }

LABEL_26:
      v155 = 9;
      v23 = *(a1 + 24);
      v24 = v18 + 1;
      sub_271838D28("{:.{}}", v24, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v25 = &__p;
      }

      else
      {
        v25 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v26 = v154;
      }

      else
      {
        v26 = v153;
      }

      sub_271120E64(v23, v25, v26);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v8 = *(a1 + 40) + 1;
      *(a1 + 40) = v8;
      v9 = v24 + 1;
      if (v9 == v10)
      {
        goto LABEL_38;
      }
    }

    v15 = *(a1 + 40);
    *(a1 + 40) = v15 + 1;
    if (v15 == -1)
    {
      goto LABEL_17;
    }

LABEL_16:
    v16 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v16, &__p, 1);
    goto LABEL_17;
  }

LABEL_38:
  v29 = *(a2 + 8);
  if (v8)
  {
    v30 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v30, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v29);
  v31 = *(a1 + 40);
  *(a1 + 40) = v31 + 1;
  v32 = 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2);
  if (v31 != -1)
  {
    v33 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v33, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v32);
  v34 = *(a1 + 40) + 1;
  *(a1 + 40) = v34;
  v35 = a2[5];
  v36 = a2[6];
  if (v36 != v35)
  {
    while (1)
    {
      if (v34)
      {
        v37 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v37, &__p, 1);
      }

      v155 = 9;
      v38 = *(a1 + 24);
      sub_271838D28("{:.{}}", v35, &v155, &__p);
      v39 = (v154 & 0x80u) == 0 ? &__p : __p;
      v40 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_271120E64(v38, v39, v40);
      if ((v154 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v53 = *(a1 + 40);
      *(a1 + 40) = v53 + 1;
      if (v53 != -1)
      {
        goto LABEL_55;
      }

LABEL_56:
      v155 = 9;
      v43 = *(a1 + 24);
      v44 = v35 + 1;
      sub_271838D28("{:.{}}", v44, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v45 = &__p;
      }

      else
      {
        v45 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v46 = v154;
      }

      else
      {
        v46 = v153;
      }

      sub_271120E64(v43, v45, v46);
      if (v154 < 0)
      {
        operator delete(__p);
        v54 = *(a1 + 40);
        *(a1 + 40) = v54 + 1;
        if (v54 == -1)
        {
          goto LABEL_65;
        }

LABEL_64:
        v48 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v48, &__p, 1);
        goto LABEL_65;
      }

      v47 = *(a1 + 40);
      *(a1 + 40) = v47 + 1;
      if (v47 != -1)
      {
        goto LABEL_64;
      }

LABEL_65:
      v155 = 9;
      v49 = *(a1 + 24);
      v50 = v44 + 1;
      sub_271838D28("{:.{}}", v50, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v51 = &__p;
      }

      else
      {
        v51 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v52 = v154;
      }

      else
      {
        v52 = v153;
      }

      sub_271120E64(v49, v51, v52);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v34 = *(a1 + 40) + 1;
      *(a1 + 40) = v34;
      v35 = v50 + 1;
      if (v35 == v36)
      {
        goto LABEL_77;
      }
    }

    v41 = *(a1 + 40);
    *(a1 + 40) = v41 + 1;
    if (v41 == -1)
    {
      goto LABEL_56;
    }

LABEL_55:
    v42 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v42, &__p, 1);
    goto LABEL_56;
  }

LABEL_77:
  v55 = *(a2 + 18);
  if (v34)
  {
    v56 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v56, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v55);
  v57 = *(a1 + 40);
  *(a1 + 40) = v57 + 1;
  v58 = 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 2);
  if (v57 != -1)
  {
    v59 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v59, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v58);
  v60 = *(a1 + 40) + 1;
  *(a1 + 40) = v60;
  v61 = a2[10];
  v62 = a2[11];
  if (v62 != v61)
  {
    while (1)
    {
      if (v60)
      {
        v63 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v63, &__p, 1);
      }

      v155 = 9;
      v64 = *(a1 + 24);
      sub_271838D28("{:.{}}", v61, &v155, &__p);
      v65 = (v154 & 0x80u) == 0 ? &__p : __p;
      v66 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_271120E64(v64, v65, v66);
      if ((v154 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v79 = *(a1 + 40);
      *(a1 + 40) = v79 + 1;
      if (v79 != -1)
      {
        goto LABEL_94;
      }

LABEL_95:
      v155 = 9;
      v69 = *(a1 + 24);
      v70 = v61 + 1;
      sub_271838D28("{:.{}}", v70, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v71 = &__p;
      }

      else
      {
        v71 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v72 = v154;
      }

      else
      {
        v72 = v153;
      }

      sub_271120E64(v69, v71, v72);
      if (v154 < 0)
      {
        operator delete(__p);
        v80 = *(a1 + 40);
        *(a1 + 40) = v80 + 1;
        if (v80 == -1)
        {
          goto LABEL_104;
        }

LABEL_103:
        v74 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v74, &__p, 1);
        goto LABEL_104;
      }

      v73 = *(a1 + 40);
      *(a1 + 40) = v73 + 1;
      if (v73 != -1)
      {
        goto LABEL_103;
      }

LABEL_104:
      v155 = 9;
      v75 = *(a1 + 24);
      v76 = v70 + 1;
      sub_271838D28("{:.{}}", v76, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v77 = &__p;
      }

      else
      {
        v77 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v78 = v154;
      }

      else
      {
        v78 = v153;
      }

      sub_271120E64(v75, v77, v78);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v60 = *(a1 + 40) + 1;
      *(a1 + 40) = v60;
      v61 = v76 + 1;
      if (v61 == v62)
      {
        goto LABEL_116;
      }
    }

    v67 = *(a1 + 40);
    *(a1 + 40) = v67 + 1;
    if (v67 == -1)
    {
      goto LABEL_95;
    }

LABEL_94:
    v68 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v68, &__p, 1);
    goto LABEL_95;
  }

LABEL_116:
  v81 = *(a2 + 28);
  if (v60)
  {
    v82 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v82, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v81);
  v83 = *(a1 + 40);
  *(a1 + 40) = v83 + 1;
  v84 = a2[16] - a2[15];
  if (v83 != -1)
  {
    v85 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v85, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v84);
  v86 = *(a1 + 40) + 1;
  *(a1 + 40) = v86;
  v87 = a2[15];
  v88 = a2[16];
  if (v88 != v87)
  {
    do
    {
      sub_2718388F8(a1, v87++);
    }

    while (v87 != v88);
    v86 = *(a1 + 40);
  }

  v89 = *(a2 + 38);
  if (v86)
  {
    v90 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v90, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), v89);
  v91 = *(a1 + 40);
  *(a1 + 40) = v91 + 1;
  v92 = a2[21] - a2[20];
  if (v91 != -1)
  {
    v93 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v93, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v92);
  v94 = *(a1 + 40) + 1;
  *(a1 + 40) = v94;
  v95 = a2[20];
  v96 = a2[21];
  if (v96 != v95)
  {
    do
    {
      sub_2718388F8(a1, v95++);
    }

    while (v95 != v96);
    v94 = *(a1 + 40);
  }

  v97 = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - a2[24]) >> 2);
  if (v94)
  {
    v98 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v98, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v97);
  v99 = *(a1 + 40) + 1;
  *(a1 + 40) = v99;
  v100 = a2[24];
  v101 = a2[25];
  if (v101 != v100)
  {
    do
    {
      if (v99)
      {
        v112 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v112, &__p, 1);
      }

      MEMORY[0x2743BE7F0](*(a1 + 24), *v100);
      v113 = *(a1 + 40);
      *(a1 + 40) = v113 + 1;
      if (v113 != -1)
      {
        v114 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v114, &__p, 1);
      }

      MEMORY[0x2743BE7F0](*(a1 + 24), v100[1]);
      v115 = *(a1 + 40);
      *(a1 + 40) = v115 + 1;
      if (v115 != -1)
      {
        v116 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v116, &__p, 1);
      }

      MEMORY[0x2743BE7F0](*(a1 + 24), v100[2]);
      v99 = *(a1 + 40) + 1;
      *(a1 + 40) = v99;
      v100 += 3;
    }

    while (v100 != v101);
  }

  v102 = (a2[29] - a2[28]) >> 3;
  if (v99)
  {
    v103 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v103, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v102);
  v104 = *(a1 + 40) + 1;
  *(a1 + 40) = v104;
  v105 = a2[28];
  v106 = a2[29];
  if (v106 != v105)
  {
    do
    {
      if (v104)
      {
        v117 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v117, &__p, 1);
      }

      MEMORY[0x2743BE7F0](*(a1 + 24), *v105);
      v118 = *(a1 + 40);
      *(a1 + 40) = v118 + 1;
      if (v118 != -1)
      {
        v119 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v119, &__p, 1);
      }

      MEMORY[0x2743BE7F0](*(a1 + 24), v105[1]);
      v104 = *(a1 + 40) + 1;
      *(a1 + 40) = v104;
      v105 += 2;
    }

    while (v105 != v106);
  }

  v107 = (a2[33] - a2[32]) >> 3;
  if (v104)
  {
    v108 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v108, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v107);
  v109 = *(a1 + 40) + 1;
  *(a1 + 40) = v109;
  v110 = a2[32];
  v111 = a2[33];
  if (v111 != v110)
  {
    while (1)
    {
      if (v109)
      {
        v120 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v120, &__p, 1);
      }

      v155 = 9;
      v121 = *(a1 + 24);
      sub_271838D28("{:.{}}", v110, &v155, &__p);
      v122 = (v154 & 0x80u) == 0 ? &__p : __p;
      v123 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_271120E64(v121, v122, v123);
      if (v154 < 0)
      {
        break;
      }

      v124 = *(a1 + 40);
      *(a1 + 40) = v124 + 1;
      if (v124 != -1)
      {
        goto LABEL_163;
      }

LABEL_164:
      v155 = 9;
      v126 = *(a1 + 24);
      v127 = v110 + 1;
      sub_271838D28("{:.{}}", v127, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v128 = &__p;
      }

      else
      {
        v128 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v129 = v154;
      }

      else
      {
        v129 = v153;
      }

      sub_271120E64(v126, v128, v129);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v109 = *(a1 + 40) + 1;
      *(a1 + 40) = v109;
      v110 = v127 + 1;
      if (v110 == v111)
      {
        goto LABEL_174;
      }
    }

    operator delete(__p);
    v130 = *(a1 + 40);
    *(a1 + 40) = v130 + 1;
    if (v130 == -1)
    {
      goto LABEL_164;
    }

LABEL_163:
    v125 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v125, &__p, 1);
    goto LABEL_164;
  }

LABEL_174:
  v131 = 0xAAAAAAAAAAAAAAABLL * ((a2[37] - a2[36]) >> 2);
  if (v109)
  {
    v132 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_271120E64(v132, &__p, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v131);
  v133 = *(a1 + 40) + 1;
  *(a1 + 40) = v133;
  v134 = a2[36];
  v135 = a2[37];
  if (v135 != v134)
  {
    do
    {
      if (v133)
      {
        v140 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v140, &__p, 1);
      }

      MEMORY[0x2743BE7F0](*(a1 + 24), *v134);
      v141 = *(a1 + 40);
      *(a1 + 40) = v141 + 1;
      if (v141 != -1)
      {
        v142 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v142, &__p, 1);
      }

      MEMORY[0x2743BE7F0](*(a1 + 24), v134[1]);
      v143 = *(a1 + 40);
      *(a1 + 40) = v143 + 1;
      if (v143 != -1)
      {
        v144 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v144, &__p, 1);
      }

      MEMORY[0x2743BE7F0](*(a1 + 24), v134[2]);
      v133 = *(a1 + 40) + 1;
      *(a1 + 40) = v133;
      v134 += 3;
    }

    while (v134 != v135);
  }

  if (a3 >= 2)
  {
    if (*(a2 + 344) == 1)
    {
      LOBYTE(__p) = 1;
      sub_2718388F8(a1, &__p);
      if (*(a1 + 40))
      {
        v136 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v136, &__p, 1);
      }

      MEMORY[0x2743BE7F0](*(a1 + 24), 2);
      ++*(a1 + 40);
      sub_271838C54(a1, a2 + 80);
      sub_271838C54(a1, a2 + 81);
      sub_271838C54(a1, a2 + 82);
      sub_271838C54(a1, a2 + 83);
      sub_271838C54(a1, a2 + 84);
      sub_271838C54(a1, a2 + 85);
      v137 = *(a1 + 34);
      if (*(a1 + 40))
      {
        v138 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_271120E64(v138, &__p, 1);
      }

      v139 = *(a1 + 24);
      LOBYTE(__p) = v137;
      sub_271120E64(v139, &__p, 1);
      ++*(a1 + 40);
      if (a3 < 4)
      {
        return;
      }
    }

    else
    {
      LOBYTE(__p) = 0;
      sub_2718388F8(a1, &__p);
      if (a3 < 4)
      {
        return;
      }
    }

    v145 = *(a2 + 87);
    if (*(a1 + 40))
    {
      v146 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v146, &__p, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), v145);
    v147 = *(a1 + 40);
    *(a1 + 40) = v147 + 1;
    v148 = (a2[45] - a2[44]) >> 2;
    if (v147 != -1)
    {
      v149 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_271120E64(v149, &__p, 1);
    }

    MEMORY[0x2743BE850](*(a1 + 24), v148);
    ++*(a1 + 40);
    v151 = a2[44];
    v150 = a2[45];
    if (v150 != v151)
    {
      do
      {
        sub_271838C54(a1, v151++);
      }

      while (v151 != v150);
    }
  }
}

void sub_2713CE038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2713CE060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v8[0]) = 4;
  sub_27173318C((a2 + 24), *(a2 + 32), v8, v8 + 4, 4);
  v5 = v8[0];
  sub_2717312C0(a2);
  sub_2713C9DA4(v8, a3);
  sub_2713CE124(a2, v8, v5);
  result = sub_2713AE52C(v8);
  v7 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v7 + 10) = *(a2 + 32) - v7 - 18;
  *(a2 + 56) -= 8;
  return result;
}

char *sub_2713CE124(uint64_t a1, char **a2, unsigned int a3)
{
  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v6 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    v8 = *a2;
    do
    {
      v9 = v6 + 12;
      sub_27173318C((a1 + 24), *(a1 + 32), v6, v6 + 12, 12);
      v8 += 12;
      v6 = v9;
    }

    while (v8 != v7);
  }

  LODWORD(__src) = *(a2 + 8);
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2);
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v10 = a2[5];
  v11 = a2[6];
  if (v11 != v10)
  {
    v12 = a2[5];
    do
    {
      v13 = v10 + 12;
      sub_27173318C((a1 + 24), *(a1 + 32), v10, v10 + 12, 12);
      v12 += 12;
      v10 = v13;
    }

    while (v12 != v11);
  }

  LODWORD(__src) = *(a2 + 18);
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 2);
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v14 = a2[10];
  v15 = a2[11];
  if (v15 != v14)
  {
    v16 = a2[10];
    do
    {
      v17 = v14 + 12;
      sub_27173318C((a1 + 24), *(a1 + 32), v14, v14 + 12, 12);
      v16 += 12;
      v14 = v17;
    }

    while (v16 != v15);
  }

  LODWORD(__src) = *(a2 + 28);
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
  __src = a2[16] - a2[15];
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  sub_27173318C((a1 + 24), *(a1 + 32), a2[15], a2[16], a2[16] - a2[15]);
  LODWORD(__src) = *(a2 + 38);
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
  __src = a2[21] - a2[20];
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  sub_27173318C((a1 + 24), *(a1 + 32), a2[20], a2[21], a2[21] - a2[20]);
  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - a2[24]) >> 2);
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v18 = a2[24];
  v19 = a2[25];
  if (v19 != v18)
  {
    v20 = a2[24];
    do
    {
      v21 = v18 + 12;
      sub_27173318C((a1 + 24), *(a1 + 32), v18, v18 + 12, 12);
      v20 += 12;
      v18 = v21;
    }

    while (v20 != v19);
  }

  __src = (a2[29] - a2[28]) >> 3;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v22 = a2[28];
  v23 = a2[29];
  if (v23 != v22)
  {
    v24 = a2[28];
    do
    {
      v25 = v22 + 8;
      sub_27173318C((a1 + 24), *(a1 + 32), v22, v22 + 8, 8);
      v24 += 8;
      v22 = v25;
    }

    while (v24 != v23);
  }

  __src = (a2[33] - a2[32]) >> 3;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v26 = a2[32];
  v27 = a2[33];
  if (v27 != v26)
  {
    v28 = a2[32];
    do
    {
      v29 = v26 + 8;
      sub_27173318C((a1 + 24), *(a1 + 32), v26, v26 + 8, 8);
      v28 += 8;
      v26 = v29;
    }

    while (v28 != v27);
  }

  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[37] - a2[36]) >> 2);
  result = sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
  v31 = a2[36];
  v32 = a2[37];
  if (v32 != v31)
  {
    v33 = a2[36];
    do
    {
      v34 = v31 + 12;
      result = sub_27173318C((a1 + 24), *(a1 + 32), v31, v31 + 12, 12);
      v33 += 12;
      v31 = v34;
    }

    while (v33 != v32);
  }

  if (a3 >= 2)
  {
    if (*(a2 + 344) == 1)
    {
      LOBYTE(__src) = 1;
      sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 1, 1);
      LODWORD(__src) = 2;
      sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
      sub_2717312C0(a1);
      sub_27173318C((a1 + 24), *(a1 + 32), a2 + 320, a2 + 332, 12);
      result = sub_27173318C((a1 + 24), *(a1 + 32), a2 + 332, a2 + 344, 12);
      v35 = *(*(a1 + 56) - 8) + *(a1 + 24);
      *(v35 + 10) = *(a1 + 32) - v35 - 18;
      *(a1 + 56) -= 8;
      if (a3 < 4)
      {
        return result;
      }
    }

    else
    {
      LOBYTE(__src) = 0;
      result = sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 1, 1);
      if (a3 < 4)
      {
        return result;
      }
    }

    LODWORD(__src) = *(a2 + 87);
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
    __src = (a2[45] - a2[44]) >> 2;
    sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v37, 8);
    return sub_27173318C((a1 + 24), *(a1 + 32), a2[44], a2[45], a2[45] - a2[44]);
  }

  return result;
}

uint64_t *sub_2713CE684(_DWORD *a1, uint64_t a2)
{
  v4 = a1[2];
  LODWORD(v7[0]) = 4;
  (*(*a1 + 104))(a1, v7);
  v5 = v7[0];
  if (v4 < 1)
  {
    sub_2713C9DA4(v7, a2);
    sub_2713CE814(a1, v7, v5);
    return sub_2713AE52C(v7);
  }

  else
  {
    if (v4 == 2)
    {
      LODWORD(v7[0]) = 3;
      (*(*a1 + 104))(a1, v7);
    }

    (*(*a1 + 16))(a1);
    sub_2713C9DA4(v7, a2);
    sub_2713CE814(a1, v7, v5);
    sub_2713AE52C(v7);
    return (*(*a1 + 24))(a1);
  }
}

uint64_t sub_2713CE814(_DWORD *a1, uint64_t *a2, unsigned int a3)
{
  v28 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  (*(*a1 + 120))(a1, &v28);
  v6 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    do
    {
      (*(*a1 + 128))(a1, v6);
      (*(*a1 + 128))(a1, v6 + 4);
      (*(*a1 + 128))(a1, v6 + 8);
      v6 += 12;
    }

    while (v6 != v7);
  }

  sub_2713CF338(a1, a2 + 8);
  v28 = 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2);
  (*(*a1 + 120))(a1, &v28);
  v8 = a2[5];
  for (i = a2[6]; v8 != i; v8 += 12)
  {
    (*(*a1 + 128))(a1, v8);
    (*(*a1 + 128))(a1, v8 + 4);
    (*(*a1 + 128))(a1, v8 + 8);
  }

  sub_2713CF338(a1, a2 + 18);
  v28 = 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 2);
  (*(*a1 + 120))(a1, &v28);
  v10 = a2[10];
  for (j = a2[11]; v10 != j; v10 += 12)
  {
    (*(*a1 + 128))(a1, v10);
    (*(*a1 + 128))(a1, v10 + 4);
    (*(*a1 + 128))(a1, v10 + 8);
  }

  sub_2713CF338(a1, a2 + 28);
  v28 = a2[16] - a2[15];
  (*(*a1 + 120))(a1, &v28);
  v12 = a2[15];
  for (k = a2[16]; v12 != k; ++v12)
  {
    (*(*a1 + 80))(a1, v12);
  }

  sub_2713CF338(a1, a2 + 38);
  v28 = a2[21] - a2[20];
  (*(*a1 + 120))(a1, &v28);
  v14 = a2[20];
  for (m = a2[21]; v14 != m; ++v14)
  {
    (*(*a1 + 80))(a1, v14);
  }

  v28 = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - a2[24]) >> 2);
  (*(*a1 + 120))(a1, &v28);
  v16 = a2[24];
  for (n = a2[25]; v16 != n; v16 += 12)
  {
    (*(*a1 + 104))(a1, v16);
    (*(*a1 + 104))(a1, v16 + 4);
    (*(*a1 + 104))(a1, v16 + 8);
  }

  v28 = (a2[29] - a2[28]) >> 3;
  (*(*a1 + 120))(a1, &v28);
  v18 = a2[28];
  for (ii = a2[29]; v18 != ii; v18 += 8)
  {
    (*(*a1 + 104))(a1, v18);
    (*(*a1 + 104))(a1, v18 + 4);
  }

  v28 = (a2[33] - a2[32]) >> 3;
  (*(*a1 + 120))(a1, &v28);
  v20 = a2[32];
  for (jj = a2[33]; v20 != jj; v20 += 8)
  {
    (*(*a1 + 128))(a1, v20);
    (*(*a1 + 128))(a1, v20 + 4);
  }

  v28 = 0xAAAAAAAAAAAAAAABLL * ((a2[37] - a2[36]) >> 2);
  result = (*(*a1 + 120))(a1, &v28);
  v23 = a2[36];
  for (kk = a2[37]; v23 != kk; v23 += 12)
  {
    (*(*a1 + 104))(a1, v23);
    (*(*a1 + 104))(a1, v23 + 4);
    result = (*(*a1 + 104))(a1, v23 + 8);
  }

  if (a3 >= 2)
  {
    if (*(a2 + 344) == 1)
    {
      LOBYTE(v28) = 1;
      (*(*a1 + 80))(a1, &v28);
      v25 = a1[2];
      LODWORD(v28) = 2;
      (*(*a1 + 104))(a1, &v28);
      if (v25 < 1)
      {
        (*(*a1 + 128))(a1, a2 + 40);
        (*(*a1 + 128))(a1, a2 + 324);
        (*(*a1 + 128))(a1, a2 + 41);
        (*(*a1 + 128))(a1, a2 + 332);
        (*(*a1 + 128))(a1, a2 + 42);
        result = (*(*a1 + 128))(a1, a2 + 340);
        if (a3 < 4)
        {
          return result;
        }
      }

      else
      {
        if (v25 == 2)
        {
          LODWORD(v28) = 2;
          (*(*a1 + 104))(a1, &v28);
        }

        (*(*a1 + 16))(a1);
        (*(*a1 + 128))(a1, a2 + 40);
        (*(*a1 + 128))(a1, a2 + 324);
        (*(*a1 + 128))(a1, a2 + 41);
        (*(*a1 + 128))(a1, a2 + 332);
        (*(*a1 + 128))(a1, a2 + 42);
        (*(*a1 + 128))(a1, a2 + 340);
        result = (*(*a1 + 24))(a1);
        if (a3 < 4)
        {
          return result;
        }
      }
    }

    else
    {
      LOBYTE(v28) = 0;
      result = (*(*a1 + 80))(a1, &v28);
      if (a3 < 4)
      {
        return result;
      }
    }

    sub_2713CF338(a1, a2 + 87);
    v28 = (a2[45] - a2[44]) >> 2;
    result = (*(*a1 + 120))(a1, &v28);
    v27 = a2[44];
    for (mm = a2[45]; v27 != mm; v27 += 4)
    {
      result = (*(*a1 + 128))(a1, v27);
    }
  }

  return result;
}

void sub_2713CF338(_BYTE *a1, _DWORD *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v2[6] = 0;
    sub_2713CADFC(&v3, v2, a2);
  }

  v2[0] = *a2;
  (*(*a1 + 104))(a1, v2);
}

void sub_2713CF45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713CF478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713CF48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713CF4A0(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, &v7);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v7 = "version";
  v8 = 7;
  LODWORD(v9) = 4;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v9);
  if (v9 >= 3)
  {
    v7 = "vertices";
    v8 = 8;
    v9 = a2;
    sub_2713D0504(a1, &v7);
    v5 = *(a1 + 104);
    *(a1 + 88) = "colors_type";
    *(a1 + 96) = 11;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v7 = (a2 + 32);
    sub_2713D08AC(a1, &v7);
  }

  v10 = 0u;
  v12[0] = 0;
  v11 = 0;
  *(&v12[1] + 4) = 0;
  *(&v12[2] + 4) = 0;
  *(&v12[3] + 4) = 0;
  v12[5] = 0;
  *(&v12[6] + 4) = 0;
  *(&v12[7] + 4) = 0;
  v12[10] = 0;
  *(&v12[8] + 4) = 0;
  *(&v12[11] + 4) = 0;
  *(&v12[12] + 4) = 0;
  *(&v12[13] + 4) = 0;
  v12[15] = 0;
  *(&v12[18] + 4) = 0;
  *(&v12[16] + 4) = 0;
  *(&v12[17] + 4) = 0;
  v26 = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  memset(&v12[20], 0, 24);
  v16 = 0;
  v13 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v20 = 0;
  v19 = 0;
  v21 = 0;
  v18 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v25 = 0;
  v7 = "vertices";
  v8 = 8;
  v9 = &v10;
  sub_2713D0504(a1, &v7);
  v6 = *(a1 + 104);
  *(a1 + 88) = "colors_type";
  *(a1 + 96) = 11;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7 = v12 + 4;
  sub_2713D08AC(a1, &v7);
}

void sub_2713D04DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_2713D1DB4(va);
  _Unwind_Resume(a1);
}

void sub_2713D04F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_2713D1DB4(va);
  _Unwind_Resume(a1);
}

void sub_2713D0504(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v16);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v6 + 1) + 8) - **(v6 + 1)) >> 3);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v10 - *v4);
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v10 - *v4);
  if (v8 > v12)
  {
    sub_2713D06C0(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[3 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 3;
    v13 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    sub_27182F4D4(v13, v16);
    v11 += 3;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_2713D06C0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v13 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v13);
      v4 += v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0x1555555555555555)
    {
      sub_271135560();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x1555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      LODWORD(v25) = v8;
      v9 = *(a1 + 28);
      if (v9 == -1)
      {
        sub_2711308D4();
      }

      v10 = a2;
      v23 = &v25;
      v11 = (off_2881319F8[v9])(&v23, a1 + 24);
      v8 = v12;
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v14 = (v11 + 12 * v5);
    v15 = v11 + 12 * v8;
    v16 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v14, v16);
    v17 = &v14[v16];
    v18 = *(a1 + 8) - *a1;
    v19 = &v14[-v18];
    memcpy(v19, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v17;
    v21 = *(a1 + 16);
    *(a1 + 16) = v15;
    if (v20)
    {
      v23 = v20;
      v24 = -1431655765 * ((v21 - v20) >> 2);
      v22 = *(a1 + 28);
      if (v22 == -1)
      {
        sub_2711308D4();
      }

      v25 = &v23;
      (off_288131900[v22])(&v25, a1 + 24);
    }
  }
}

void sub_2713D08AC(void *a1, _DWORD **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D6C4(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D6E6C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_2713D099C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713D0A30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v16);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v6 + 1) + 8) - **(v6 + 1)) >> 3);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v4) >> 2);
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v4) >> 2);
  if (v8 > v12)
  {
    sub_2713D0BEC(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[3 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 3;
    v13 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    sub_27182F1C8(v13, v16);
    v11 += 3;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_2713D0BEC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v13 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v13);
      v4 += v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0x1555555555555555)
    {
      sub_271135560();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x1555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      LODWORD(v25) = v8;
      v9 = *(a1 + 28);
      if (v9 == -1)
      {
        sub_2711308D4();
      }

      v10 = a2;
      v23 = &v25;
      v11 = (off_288131A38[v9])(&v23, a1 + 24);
      v8 = v12;
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v14 = (v11 + 12 * v5);
    v15 = v11 + 12 * v8;
    v16 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v14, v16);
    v17 = &v14[v16];
    v18 = *(a1 + 8) - *a1;
    v19 = &v14[-v18];
    memcpy(v19, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v17;
    v21 = *(a1 + 16);
    *(a1 + 16) = v15;
    if (v20)
    {
      v23 = v20;
      v24 = -1431655765 * ((v21 - v20) >> 2);
      v22 = *(a1 + 28);
      if (v22 == -1)
      {
        sub_2711308D4();
      }

      v25 = &v23;
      (off_2881318C0[v22])(&v25, a1 + 24);
    }
  }
}

void sub_2713D0DD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v16);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v6 + 1) + 8) - **(v6 + 1)) >> 3);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = (v10 - *v4) >> 3;
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = (v10 - *v4) >> 3;
  if (v8 > v12)
  {
    sub_2713D0F78(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[2 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 2;
    v13 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    sub_27182F1C8(v13, v16);
    v11 += 2;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_2713D0F78(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v14 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 3;
    if ((v5 + a2) >> 61)
    {
      sub_271135560();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    v8 = v6 >= 0x7FFFFFFFFFFFFFF8;
    v9 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      LODWORD(v26) = v9;
      v10 = *(a1 + 28);
      if (v10 == -1)
      {
        sub_2711308D4();
      }

      v11 = a2;
      v24 = &v26;
      v12 = (off_288131A58[v10])(&v24, a1 + 24);
      v9 = v13;
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v15 = (v12 + 8 * v5);
    v16 = 8 * a2;
    v17 = v12 + 8 * v9;
    bzero(v15, 8 * a2);
    v18 = &v15[v16];
    v19 = *(a1 + 8) - *a1;
    v20 = &v15[-v19];
    memcpy(v20, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v18;
    v22 = *(a1 + 16);
    *(a1 + 16) = v17;
    if (v21)
    {
      v24 = v21;
      v25 = (v22 - v21) >> 3;
      v23 = *(a1 + 28);
      if (v23 == -1)
      {
        sub_2711308D4();
      }

      v26 = &v24;
      (off_2881318E0[v23])(&v26, a1 + 24);
    }
  }
}

void sub_2713D10FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v16);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v6 + 1) + 8) - **(v6 + 1)) >> 3);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = (v10 - *v4) >> 3;
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = (v10 - *v4) >> 3;
  if (v8 > v12)
  {
    sub_2713D129C(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[2 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 2;
    v13 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    sub_27182F4D4(v13, v16);
    v11 += 2;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_2713D129C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v14 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 3;
    if ((v5 + a2) >> 61)
    {
      sub_271135560();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    v8 = v6 >= 0x7FFFFFFFFFFFFFF8;
    v9 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      LODWORD(v26) = v9;
      v10 = *(a1 + 28);
      if (v10 == -1)
      {
        sub_2711308D4();
      }

      v11 = a2;
      v24 = &v26;
      v12 = (off_288131A78[v10])(&v24, a1 + 24);
      v9 = v13;
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v15 = (v12 + 8 * v5);
    v16 = 8 * a2;
    v17 = v12 + 8 * v9;
    bzero(v15, 8 * a2);
    v18 = &v15[v16];
    v19 = *(a1 + 8) - *a1;
    v20 = &v15[-v19];
    memcpy(v20, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v18;
    v22 = *(a1 + 16);
    *(a1 + 16) = v17;
    if (v21)
    {
      v24 = v21;
      v25 = (v22 - v21) >> 3;
      v23 = *(a1 + 28);
      if (v23 == -1)
      {
        sub_2711308D4();
      }

      v26 = &v24;
      (off_2881318D0[v23])(&v26, a1 + 24);
    }
  }
}

void sub_2713D14F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713D1524(uint64_t a1, uint64_t a2)
{
  LOBYTE(v11) = 0;
  v13 = 0;
  if (*(a2 + 344) == 1)
  {
    *&v3 = *(a2 + 320);
    DWORD2(v3) = *(a2 + 328);
    HIDWORD(v3) = *(a2 + 332);
    LODWORD(v4) = vdup_lane_s32(*(a2 + 332), 1).u32[0];
    v11 = v3;
    HIDWORD(v4) = *(a2 + 340);
    v12 = v4;
    v13 = 1;
  }

  v10 = 0;
  HIDWORD(v9) = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_2713D1BFC(a1, a2, (a2 + 32), a2 + 40, (a2 + 72), a2 + 80, (a2 + 112), a2 + 120, (a2 + 152), a2 + 160, a2 + 192, a2 + 224, a2 + 256, a2 + 288, &v11, &v10, &v6);
  if (v6)
  {
    v7 = v6;
    *&v11 = v6;
    DWORD2(v11) = (v8 - v6) >> 2;
    if (HIDWORD(v9) == -1)
    {
      sub_2711308D4();
    }

    v14 = &v11;
    (off_2881318B0[HIDWORD(v9)])(&v14, &v9);
  }

  return a1;
}

void sub_2713D1658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2713AEB84(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2713D1670(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    a1[1] = v4;
    v5 = -1431655765 * ((a1[2] - v4) >> 2);
    v36 = v4;
    v37 = v5;
    v6 = *(a1 + 7);
    if (v6 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v36;
    (off_288131900[v6])(&v38, a1 + 3);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = *(a2 + 24);
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = a1[5];
  *(a1 + 8) = *(a2 + 32);
  if (v7)
  {
    a1[6] = v7;
    v8 = -1431655765 * ((a1[7] - v7) >> 2);
    v36 = v7;
    v37 = v8;
    v9 = *(a1 + 17);
    if (v9 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v36;
    (off_288131900[v9])(&v38, a1 + 8);
    a1[5] = 0;
    a1[6] = 0;
    a1[7] = 0;
  }

  a1[8] = *(a2 + 64);
  *(a1 + 5) = *(a2 + 40);
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v10 = a1[10];
  *(a1 + 18) = *(a2 + 72);
  if (v10)
  {
    a1[11] = v10;
    v11 = -1431655765 * ((a1[12] - v10) >> 2);
    v36 = v10;
    v37 = v11;
    v12 = *(a1 + 27);
    if (v12 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v36;
    (off_288131900[v12])(&v38, a1 + 13);
    a1[10] = 0;
    a1[11] = 0;
    a1[12] = 0;
  }

  a1[13] = *(a2 + 104);
  *(a1 + 5) = *(a2 + 80);
  a1[12] = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v13 = a1[15];
  *(a1 + 28) = *(a2 + 112);
  if (v13)
  {
    a1[16] = v13;
    v14 = *(a1 + 34) - v13;
    v36 = v13;
    v37 = v14;
    v15 = *(a1 + 37);
    if (v15 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v36;
    (off_2881318F0[v15])(&v38, a1 + 18);
    a1[15] = 0;
    a1[16] = 0;
    a1[17] = 0;
  }

  a1[18] = *(a2 + 144);
  *(a1 + 15) = *(a2 + 120);
  a1[17] = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v16 = a1[20];
  *(a1 + 38) = *(a2 + 152);
  if (v16)
  {
    a1[21] = v16;
    v17 = *(a1 + 44) - v16;
    v36 = v16;
    v37 = v17;
    v18 = *(a1 + 47);
    if (v18 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v36;
    (off_2881318F0[v18])(&v38, a1 + 23);
    a1[20] = 0;
    a1[21] = 0;
    a1[22] = 0;
  }

  a1[23] = *(a2 + 184);
  *(a1 + 10) = *(a2 + 160);
  a1[22] = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v19 = a1[24];
  if (v19)
  {
    a1[25] = v19;
    v20 = -1431655765 * ((a1[26] - v19) >> 2);
    v36 = v19;
    v37 = v20;
    v21 = *(a1 + 55);
    if (v21 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v36;
    (off_2881318C0[v21])(&v38, a1 + 27);
    a1[24] = 0;
    a1[25] = 0;
    a1[26] = 0;
  }

  a1[27] = *(a2 + 216);
  *(a1 + 12) = *(a2 + 192);
  a1[26] = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v22 = a1[28];
  if (v22)
  {
    a1[29] = v22;
    v23 = (a1[30] - v22) >> 3;
    v36 = v22;
    v37 = v23;
    v24 = *(a1 + 63);
    if (v24 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v36;
    (off_2881318E0[v24])(&v38, a1 + 31);
    a1[28] = 0;
    a1[29] = 0;
    a1[30] = 0;
  }

  a1[31] = *(a2 + 248);
  *(a1 + 14) = *(a2 + 224);
  a1[30] = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  v25 = a1[32];
  if (v25)
  {
    a1[33] = v25;
    v26 = (a1[34] - v25) >> 3;
    v36 = v25;
    v37 = v26;
    v27 = *(a1 + 71);
    if (v27 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v36;
    (off_2881318D0[v27])(&v38, a1 + 35);
    a1[32] = 0;
    a1[33] = 0;
    a1[34] = 0;
  }

  a1[35] = *(a2 + 280);
  *(a1 + 16) = *(a2 + 256);
  a1[34] = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  v28 = a1[36];
  if (v28)
  {
    a1[37] = v28;
    v29 = -1431655765 * ((a1[38] - v28) >> 2);
    v36 = v28;
    v37 = v29;
    v30 = *(a1 + 79);
    if (v30 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v36;
    (off_2881318C0[v30])(&v38, a1 + 39);
    a1[36] = 0;
    a1[37] = 0;
    a1[38] = 0;
  }

  a1[39] = *(a2 + 312);
  *(a1 + 18) = *(a2 + 288);
  a1[38] = *(a2 + 304);
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 288) = 0;
  v31 = *(a2 + 336);
  *(a1 + 20) = *(a2 + 320);
  *(a1 + 21) = v31;
  v32 = a1[44];
  if (v32)
  {
    a1[45] = v32;
    v33 = (a1[46] - v32) >> 2;
    v36 = v32;
    v37 = v33;
    v34 = *(a1 + 95);
    if (v34 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v36;
    (off_2881318B0[v34])(&v38, a1 + 47);
    a1[44] = 0;
    a1[45] = 0;
    a1[46] = 0;
  }

  a1[47] = *(a2 + 376);
  *(a1 + 22) = *(a2 + 352);
  a1[46] = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  return a1;
}

uint64_t sub_2713D1BFC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6, _DWORD *a7, uint64_t a8, _DWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15, _DWORD *a16, uint64_t a17)
{
  v24 = sub_2713C9F18(a1, a2);
  *(v24 + 8) = *a3;
  sub_2713C9F18(v24 + 5, a4);
  *(a1 + 72) = *a5;
  sub_2713C9F18((a1 + 80), a6);
  *(a1 + 112) = *a7;
  sub_2713CA044((a1 + 120), a8);
  *(a1 + 152) = *a9;
  sub_2713CA044((a1 + 160), a10);
  sub_2713CA14C((a1 + 192), a11);
  sub_2713CA278((a1 + 224), a12);
  sub_2713CA38C((a1 + 256), a13);
  sub_2713CA14C((a1 + 288), a14);
  v25 = *a15;
  *(a1 + 332) = *(a15 + 12);
  *(a1 + 320) = v25;
  *(a1 + 348) = *a16;
  sub_2713CAB34((a1 + 352), a17);
  return a1;
}

void sub_2713D1D00(_Unwind_Exception *a1)
{
  sub_2713AE8DC(v1 + 36);
  sub_2713AE96C(v1 + 32);
  sub_2713AE9F0(v1 + 28);
  sub_2713AE8DC(v1 + 24);
  sub_2713AEA74(v1 + 20);
  sub_2713AEA74(v1 + 15);
  sub_2713AEAF4(v1 + 10);
  sub_2713AEAF4(v1 + 5);
  sub_2713AEAF4(v1);
  _Unwind_Resume(a1);
}

void sub_2713D1D84(_Unwind_Exception *a1)
{
  sub_2713AEAF4(v1 + 5);
  sub_2713AEAF4(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2713D1DB4(uint64_t *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    v3 = -1431655765 * ((a1[38] - v2) >> 2);
    v30 = v2;
    v31 = v3;
    v4 = *(a1 + 79);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v32 = &v30;
    (off_2881318C0[v4])(&v32, a1 + 39);
  }

  v5 = a1[32];
  if (v5)
  {
    a1[33] = v5;
    v6 = (a1[34] - v5) >> 3;
    v30 = v5;
    v31 = v6;
    v7 = *(a1 + 71);
    if (v7 == -1)
    {
      sub_2711308D4();
    }

    v32 = &v30;
    (off_2881318D0[v7])(&v32, a1 + 35);
  }

  v8 = a1[28];
  if (v8)
  {
    a1[29] = v8;
    v9 = (a1[30] - v8) >> 3;
    v30 = v8;
    v31 = v9;
    v10 = *(a1 + 63);
    if (v10 == -1)
    {
      sub_2711308D4();
    }

    v32 = &v30;
    (off_2881318E0[v10])(&v32, a1 + 31);
  }

  v11 = a1[24];
  if (v11)
  {
    a1[25] = v11;
    v12 = -1431655765 * ((a1[26] - v11) >> 2);
    v30 = v11;
    v31 = v12;
    v13 = *(a1 + 55);
    if (v13 == -1)
    {
      sub_2711308D4();
    }

    v32 = &v30;
    (off_2881318C0[v13])(&v32, a1 + 27);
  }

  v14 = a1[20];
  if (v14)
  {
    a1[21] = v14;
    v15 = *(a1 + 44) - v14;
    v30 = v14;
    v31 = v15;
    v16 = *(a1 + 47);
    if (v16 == -1)
    {
      sub_2711308D4();
    }

    v32 = &v30;
    (off_2881318F0[v16])(&v32, a1 + 23);
  }

  v17 = a1[15];
  if (v17)
  {
    a1[16] = v17;
    v18 = *(a1 + 34) - v17;
    v30 = v17;
    v31 = v18;
    v19 = *(a1 + 37);
    if (v19 == -1)
    {
      sub_2711308D4();
    }

    v32 = &v30;
    (off_2881318F0[v19])(&v32, a1 + 18);
  }

  v20 = a1[10];
  if (v20)
  {
    a1[11] = v20;
    v21 = -1431655765 * ((a1[12] - v20) >> 2);
    v30 = v20;
    v31 = v21;
    v22 = *(a1 + 27);
    if (v22 == -1)
    {
      sub_2711308D4();
    }

    v32 = &v30;
    (off_288131900[v22])(&v32, a1 + 13);
  }

  v23 = a1[5];
  if (v23)
  {
    a1[6] = v23;
    v24 = -1431655765 * ((a1[7] - v23) >> 2);
    v30 = v23;
    v31 = v24;
    v25 = *(a1 + 17);
    if (v25 == -1)
    {
      sub_2711308D4();
    }

    v32 = &v30;
    (off_288131900[v25])(&v32, a1 + 8);
  }

  v26 = *a1;
  if (*a1)
  {
    a1[1] = v26;
    v27 = -1431655765 * ((a1[2] - v26) >> 2);
    v30 = v26;
    v31 = v27;
    v28 = *(a1 + 7);
    if (v28 == -1)
    {
      sub_2711308D4();
    }

    v32 = &v30;
    (off_288131900[v28])(&v32, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713D210C(void *a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v105 = 0u;
    v107 = 0;
    v106 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v115 = 0;
    v114 = 0;
    v116 = 0;
    v118 = 0;
    v117 = 0;
    v119 = 0;
    v122 = 0;
    v120 = 0;
    v121 = 0;
    v123[32] = 0;
    LOBYTE(v124) = 0;
    v127 = 0;
    memset(v123, 0, 28);
    memset(&v123[8], 0, 28);
    memset(&v123[16], 0, 28);
    memset(&v123[24], 0, 28);
    *&v104[0] = 0;
    sub_27183FF6C(a1[6], v104);
    v11 = *(&v105 + 1);
    v10 = v105;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((*(&v105 + 1) - v105) >> 2);
    if (*&v104[0] <= v12)
    {
      if (*&v104[0] < v12)
      {
        v11 = (v105 + 12 * *&v104[0]);
        *(&v105 + 1) = v11;
      }
    }

    else
    {
      sub_2713D06C0(&v105, *&v104[0] - v12);
      v11 = *(&v105 + 1);
      v10 = v105;
    }

    for (; v10 != v11; v10 = v51 + 1)
    {
      v50 = a1[6];
      sub_271840060(v50, v10);
      v51 = v10 + 1;
      sub_271840060(v50, v51++);
      sub_271840060(v50, v51);
    }

    LODWORD(v104[0]) = 0;
    sub_27183FB7C(a1[6], v104);
    HIDWORD(v107) = v104[0];
    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * (v109 - v108);
    sub_27183FF6C(a1[6], v104);
    v52 = v108;
    v53 = v109;
    v54 = 0xAAAAAAAAAAAAAAABLL * (v109 - v108);
    if (*&v104[0] <= v54)
    {
      if (*&v104[0] < v54)
      {
        v53 = &v108[3 * *&v104[0]];
        v109 = v53;
      }
    }

    else
    {
      sub_2713D06C0(&v108, *&v104[0] - v54);
      v52 = v108;
      v53 = v109;
    }

    for (; v52 != v53; v52 = v56 + 1)
    {
      v55 = a1[6];
      sub_271840060(v55, v52);
      v56 = v52 + 1;
      sub_271840060(v55, v56++);
      sub_271840060(v55, v56);
    }

    LODWORD(v104[0]) = 0;
    sub_27183FB7C(a1[6], v104);
    HIDWORD(v111) = v104[0];
    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * (v113 - v112);
    sub_27183FF6C(a1[6], v104);
    v57 = v112;
    v58 = v113;
    v59 = 0xAAAAAAAAAAAAAAABLL * (v113 - v112);
    if (*&v104[0] <= v59)
    {
      if (*&v104[0] < v59)
      {
        v58 = &v112[3 * *&v104[0]];
        v113 = v58;
      }
    }

    else
    {
      sub_2713D06C0(&v112, *&v104[0] - v59);
      v57 = v112;
      v58 = v113;
    }

    for (; v57 != v58; v57 = v61 + 1)
    {
      v60 = a1[6];
      sub_271840060(v60, v57);
      v61 = v57 + 1;
      sub_271840060(v60, v61++);
      sub_271840060(v60, v61);
    }

    LODWORD(v104[0]) = 0;
    sub_27183FB7C(a1[6], v104);
    HIDWORD(v115) = v104[0];
    *&v104[0] = v117 - v116;
    sub_27183FF6C(a1[6], v104);
    v62 = v117;
    v63 = v116;
    if (*&v104[0] <= (v117 - v116))
    {
      if (*&v104[0] < (v117 - v116))
      {
        v62 = &v116[*&v104[0]];
        v117 = &v116[*&v104[0]];
      }
    }

    else
    {
      sub_271358BDC(&v116, *&v104[0] - (v117 - v116));
      v63 = v116;
      v62 = v117;
    }

    v64 = a1[6];
    v65 = v62 - v63;
    if (v62 != v63)
    {
      do
      {
        sub_27183F824(v64, v63++);
        --v65;
      }

      while (v65);
      v64 = a1[6];
    }

    LODWORD(v104[0]) = 0;
    sub_27183FB7C(v64, v104);
    HIDWORD(v119) = v104[0];
    *&v104[0] = v121 - v120;
    sub_27183FF6C(a1[6], v104);
    v66 = v121;
    v67 = v120;
    if (*&v104[0] <= (v121 - v120))
    {
      if (*&v104[0] < (v121 - v120))
      {
        v66 = &v120[*&v104[0]];
        v121 = &v120[*&v104[0]];
      }
    }

    else
    {
      sub_271358BDC(&v120, *&v104[0] - (v121 - v120));
      v67 = v120;
      v66 = v121;
    }

    v68 = a1[6];
    v69 = v66 - v67;
    if (v66 != v67)
    {
      do
      {
        sub_27183F824(v68, v67++);
        --v69;
      }

      while (v69);
      v68 = a1[6];
    }

    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*&v123[3] - *&v123[1]) >> 2);
    sub_27183FF6C(v68, v104);
    v70 = *&v123[3];
    v71 = *&v123[1];
    v72 = 0xAAAAAAAAAAAAAAABLL * ((*&v123[3] - *&v123[1]) >> 2);
    if (*&v104[0] <= v72)
    {
      if (*&v104[0] < v72)
      {
        v70 = *&v123[1] + 12 * *&v104[0];
        *&v123[3] = v70;
      }
    }

    else
    {
      sub_2713D0BEC(&v123[1], *&v104[0] - v72);
      v71 = *&v123[1];
      v70 = *&v123[3];
    }

    if (v70 != v71)
    {
      do
      {
        v73 = a1[6];
        sub_27183FB7C(v73, v71);
        v74 = v71 + 1;
        sub_27183FB7C(v73, v74++);
        sub_27183FB7C(v73, v74);
        v71 = v74 + 1;
      }

      while (v71 != v70);
    }

    *&v104[0] = (*&v123[11] - *&v123[9]) >> 3;
    sub_27183FF6C(a1[6], v104);
    v75 = *&v123[11];
    v76 = *&v123[9];
    v77 = (*&v123[11] - *&v123[9]) >> 3;
    if (*&v104[0] <= v77)
    {
      if (*&v104[0] < v77)
      {
        v75 = *&v123[9] + 8 * *&v104[0];
        *&v123[11] = v75;
      }
    }

    else
    {
      sub_2713D0F78(&v123[9], *&v104[0] - v77);
      v76 = *&v123[9];
      v75 = *&v123[11];
    }

    if (v75 != v76)
    {
      do
      {
        v78 = a1[6];
        sub_27183FB7C(v78, v76);
        v79 = v76 + 1;
        sub_27183FB7C(v78, v79);
        v76 = v79 + 1;
      }

      while (v76 != v75);
    }

    *&v104[0] = (*&v123[19] - *&v123[17]) >> 3;
    sub_27183FF6C(a1[6], v104);
    v80 = *&v123[19];
    v81 = *&v123[17];
    v82 = (*&v123[19] - *&v123[17]) >> 3;
    if (*&v104[0] <= v82)
    {
      if (*&v104[0] < v82)
      {
        v80 = *&v123[17] + 8 * *&v104[0];
        *&v123[19] = v80;
      }
    }

    else
    {
      sub_2713D129C(&v123[17], *&v104[0] - v82);
      v81 = *&v123[17];
      v80 = *&v123[19];
    }

    if (v80 != v81)
    {
      do
      {
        v83 = a1[6];
        sub_271840060(v83, v81);
        v84 = v81 + 1;
        sub_271840060(v83, v84);
        v81 = v84 + 1;
      }

      while (v81 != v80);
    }

    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*&v123[27] - *&v123[25]) >> 2);
    sub_27183FF6C(a1[6], v104);
    v85 = *&v123[27];
    v86 = *&v123[25];
    v87 = 0xAAAAAAAAAAAAAAABLL * ((*&v123[27] - *&v123[25]) >> 2);
    if (*&v104[0] <= v87)
    {
      if (*&v104[0] < v87)
      {
        v85 = *&v123[25] + 12 * *&v104[0];
        *&v123[27] = v85;
      }
    }

    else
    {
      sub_2713D0BEC(&v123[25], *&v104[0] - v87);
      v86 = *&v123[25];
      v85 = *&v123[27];
    }

    if (v85 != v86)
    {
      do
      {
        v88 = a1[6];
        sub_27183FB7C(v88, v86);
        v89 = v86 + 1;
        sub_27183FB7C(v88, v89++);
        sub_27183FB7C(v88, v89);
        v86 = v89 + 1;
      }

      while (v86 != v85);
    }

    if (a3 == 2)
    {
      v128 = 0;
      sub_27183F824(a1[6], &v128);
      if (v128)
      {
        if ((v127 & 1) == 0)
        {
          v124 = 0;
          v125 = 0;
          v126 = 0;
          v127 = 1;
        }

        LODWORD(v104[0]) = 1;
        sub_27183FB7C(a1[6], v104);
        v90 = a1[6];
        sub_271840060(v90, &v124);
        sub_271840060(v90, &v124 + 1);
        sub_271840060(v90, &v125);
        v91 = a1[6];
        sub_271840060(v91, &v125 + 1);
        sub_271840060(v91, &v126);
        sub_271840060(v91, &v126 + 1);
      }

      else if (v127)
      {
        v127 = 0;
      }
    }

    sub_2713D1524(v104, &v105);
    sub_2713D1670(a2, v104);
    sub_2713AE52C(v104);
    return sub_2713D1DB4(&v105);
  }

  else
  {
    *&v105 = 0;
    sub_27183FF6C(a1[6], &v105);
    v6 = a1 + 2;
    *&v104[0] = (*(a1[2] + 32))(a1 + 2);
    *(&v104[0] + 1) = v105;
    sub_2713BF82C((a1 + 3), v104);
    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2);
    sub_27183FF6C(a1[6], v104);
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 2);
    if (*&v104[0] <= v9)
    {
      if (*&v104[0] < v9)
      {
        v8 = &v7[3 * *&v104[0]];
        *(a2 + 8) = v8;
      }
    }

    else
    {
      sub_2713D06C0(a2, *&v104[0] - v9);
      v7 = *a2;
      v8 = *(a2 + 8);
    }

    for (; v7 != v8; v7 += 3)
    {
      v13 = a1[6];
      sub_271840060(v13, v7);
      sub_271840060(v13, v7 + 1);
      sub_271840060(v13, v7 + 2);
    }

    LODWORD(v104[0]) = 0;
    sub_27183FB7C(a1[6], v104);
    *(a2 + 32) = v104[0];
    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2);
    sub_27183FF6C(a1[6], v104);
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    v16 = 0xAAAAAAAAAAAAAAABLL * (v15 - v14);
    if (*&v104[0] <= v16)
    {
      if (*&v104[0] < v16)
      {
        v15 = &v14[3 * *&v104[0]];
        *(a2 + 48) = v15;
      }
    }

    else
    {
      sub_2713D06C0(a2 + 40, *&v104[0] - v16);
      v14 = *(a2 + 40);
      v15 = *(a2 + 48);
    }

    for (; v14 != v15; v14 += 3)
    {
      v17 = a1[6];
      sub_271840060(v17, v14);
      sub_271840060(v17, v14 + 1);
      sub_271840060(v17, v14 + 2);
    }

    LODWORD(v104[0]) = 0;
    sub_27183FB7C(a1[6], v104);
    *(a2 + 72) = v104[0];
    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 2);
    sub_27183FF6C(a1[6], v104);
    v18 = *(a2 + 80);
    v19 = *(a2 + 88);
    v20 = 0xAAAAAAAAAAAAAAABLL * (v19 - v18);
    if (*&v104[0] <= v20)
    {
      if (*&v104[0] < v20)
      {
        v19 = &v18[3 * *&v104[0]];
        *(a2 + 88) = v19;
      }
    }

    else
    {
      sub_2713D06C0(a2 + 80, *&v104[0] - v20);
      v18 = *(a2 + 80);
      v19 = *(a2 + 88);
    }

    for (; v18 != v19; v18 += 3)
    {
      v21 = a1[6];
      sub_271840060(v21, v18);
      sub_271840060(v21, v18 + 1);
      sub_271840060(v21, v18 + 2);
    }

    LODWORD(v104[0]) = 0;
    sub_27183FB7C(a1[6], v104);
    *(a2 + 112) = v104[0];
    *&v104[0] = *(a2 + 128) - *(a2 + 120);
    sub_27183FF6C(a1[6], v104);
    v23 = *(a2 + 120);
    v22 = *(a2 + 128);
    if (*&v104[0] <= (v22 - v23))
    {
      if (*&v104[0] < (v22 - v23))
      {
        v22 = &v23[*&v104[0]];
        *(a2 + 128) = &v23[*&v104[0]];
      }
    }

    else
    {
      sub_271358BDC(a2 + 120, *&v104[0] - (v22 - v23));
      v23 = *(a2 + 120);
      v22 = *(a2 + 128);
    }

    v24 = a1[6];
    v25 = v22 - v23;
    if (v22 != v23)
    {
      do
      {
        sub_27183F824(v24, v23++);
        --v25;
      }

      while (v25);
      v24 = a1[6];
    }

    LODWORD(v104[0]) = 0;
    sub_27183FB7C(v24, v104);
    *(a2 + 152) = v104[0];
    *&v104[0] = *(a2 + 168) - *(a2 + 160);
    sub_27183FF6C(a1[6], v104);
    v27 = *(a2 + 160);
    v26 = *(a2 + 168);
    if (*&v104[0] <= (v26 - v27))
    {
      if (*&v104[0] < (v26 - v27))
      {
        v26 = &v27[*&v104[0]];
        *(a2 + 168) = &v27[*&v104[0]];
      }
    }

    else
    {
      sub_271358BDC(a2 + 160, *&v104[0] - (v26 - v27));
      v27 = *(a2 + 160);
      v26 = *(a2 + 168);
    }

    v28 = a1[6];
    v29 = v26 - v27;
    if (v26 != v27)
    {
      do
      {
        sub_27183F824(v28, v27++);
        --v29;
      }

      while (v29);
      v28 = a1[6];
    }

    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 2);
    sub_27183FF6C(v28, v104);
    v30 = *(a2 + 192);
    v31 = *(a2 + 200);
    v32 = 0xAAAAAAAAAAAAAAABLL * (v31 - v30);
    if (*&v104[0] <= v32)
    {
      if (*&v104[0] < v32)
      {
        v31 = &v30[3 * *&v104[0]];
        *(a2 + 200) = v31;
      }
    }

    else
    {
      sub_2713D0BEC(a2 + 192, *&v104[0] - v32);
      v30 = *(a2 + 192);
      v31 = *(a2 + 200);
    }

    for (; v30 != v31; v30 += 3)
    {
      v33 = a1[6];
      sub_27183FB7C(v33, v30);
      sub_27183FB7C(v33, v30 + 1);
      sub_27183FB7C(v33, v30 + 2);
    }

    *&v104[0] = (*(a2 + 232) - *(a2 + 224)) >> 3;
    sub_27183FF6C(a1[6], v104);
    v34 = *(a2 + 224);
    v35 = *(a2 + 232);
    v36 = (v35 - v34) >> 3;
    if (*&v104[0] <= v36)
    {
      if (*&v104[0] < v36)
      {
        v35 = &v34[8 * *&v104[0]];
        *(a2 + 232) = v35;
      }
    }

    else
    {
      sub_2713D0F78(a2 + 224, *&v104[0] - v36);
      v34 = *(a2 + 224);
      v35 = *(a2 + 232);
    }

    for (; v34 != v35; v34 += 8)
    {
      v37 = a1[6];
      sub_27183FB7C(v37, v34);
      sub_27183FB7C(v37, v34 + 1);
    }

    *&v104[0] = (*(a2 + 264) - *(a2 + 256)) >> 3;
    sub_27183FF6C(a1[6], v104);
    v38 = *(a2 + 256);
    v39 = *(a2 + 264);
    v40 = (v39 - v38) >> 3;
    if (*&v104[0] <= v40)
    {
      if (*&v104[0] < v40)
      {
        v39 = &v38[2 * *&v104[0]];
        *(a2 + 264) = v39;
      }
    }

    else
    {
      sub_2713D129C(a2 + 256, *&v104[0] - v40);
      v38 = *(a2 + 256);
      v39 = *(a2 + 264);
    }

    for (; v38 != v39; v38 += 2)
    {
      v41 = a1[6];
      sub_271840060(v41, v38);
      sub_271840060(v41, v38 + 1);
    }

    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 2);
    sub_27183FF6C(a1[6], v104);
    v42 = *(a2 + 288);
    v43 = *(a2 + 296);
    v44 = 0xAAAAAAAAAAAAAAABLL * (v43 - v42);
    if (*&v104[0] <= v44)
    {
      if (*&v104[0] < v44)
      {
        v43 = &v42[3 * *&v104[0]];
        *(a2 + 296) = v43;
      }
    }

    else
    {
      sub_2713D0BEC(a2 + 288, *&v104[0] - v44);
      v42 = *(a2 + 288);
      v43 = *(a2 + 296);
    }

    for (; v42 != v43; v42 += 3)
    {
      v45 = a1[6];
      sub_27183FB7C(v45, v42);
      sub_27183FB7C(v45, v42 + 1);
      sub_27183FB7C(v45, v42 + 2);
    }

    v128 = 0;
    sub_27183F824(a1[6], &v128);
    if (v128)
    {
      if ((*(a2 + 344) & 1) == 0)
      {
        *(a2 + 320) = 0;
        *(a2 + 328) = 0;
        *(a2 + 336) = 0;
        *(a2 + 344) = 1;
      }

      LODWORD(v104[0]) = 2;
      sub_27183FB7C(a1[6], v104);
      if (LODWORD(v104[0]) <= 1)
      {
        memset(v104, 0, 24);
        v92 = a1[6];
        sub_271840060(v92, v104);
        sub_271840060(v92, v104 + 1);
        sub_271840060(v92, v104 + 2);
        v93 = a1[6];
        sub_271840060(v93, (v104 | 0xC));
        sub_271840060(v93, &v104[1]);
        sub_271840060(v93, &v104[1] + 1);
        v94 = v104[0];
        v95 = *(v104 + 12);
        HIDWORD(v94) = HIDWORD(v104[0]);
        *(a2 + 320) = v94;
        LODWORD(v94) = vdup_lane_s32(v95, 1).u32[0];
        DWORD1(v94) = DWORD1(v104[1]);
        *(a2 + 336) = v94;
      }

      else
      {
        *&v105 = 0;
        sub_27183FF6C(a1[6], &v105);
        *&v104[0] = (*(a1[2] + 32))(a1 + 2);
        *(&v104[0] + 1) = v105;
        sub_2713BF82C((a1 + 3), v104);
        v47 = a1[6];
        sub_271840060(v47, (a2 + 320));
        sub_271840060(v47, (a2 + 324));
        sub_271840060(v47, (a2 + 328));
        v48 = a1[6];
        sub_271840060(v48, (a2 + 332));
        sub_271840060(v48, (a2 + 336));
        sub_271840060(v48, (a2 + 340));
        v49 = a1[4];
        v46 = *(v49 - 16) - (*(a1[2] + 32))(a1 + 2) + *(v49 - 8);
        if (v46)
        {
          (*(*v6 + 40))(a1 + 2, v46);
        }

        a1[4] -= 16;
      }
    }

    else if (*(a2 + 344))
    {
      *(a2 + 344) = 0;
    }

    if (a3 != 3)
    {
      LODWORD(v104[0]) = 0;
      sub_27183FB7C(a1[6], v104);
      *(a2 + 348) = v104[0];
      *&v104[0] = (*(a2 + 360) - *(a2 + 352)) >> 2;
      sub_27183FF6C(a1[6], v104);
      v97 = *(a2 + 352);
      v96 = *(a2 + 360);
      v98 = v96 - v97;
      v46 = *&v104[0] - v98;
      if (*&v104[0] <= v98)
      {
        if (*&v104[0] < v98)
        {
          v96 = &v97[*&v104[0]];
          *(a2 + 360) = v96;
        }
      }

      else
      {
        sub_2713591A4(a2 + 352, v46);
        v97 = *(a2 + 352);
        v96 = *(a2 + 360);
      }

      v99 = v96 - v97;
      if (v96 != v97)
      {
        v100 = a1[6];
        do
        {
          sub_271840060(v100, v97++);
          v99 -= 4;
        }

        while (v99);
      }
    }

    v101 = a1[4];
    result = (*(a1[2] + 32))(a1 + 2, v46);
    v103 = *(v101 - 16) - result + *(v101 - 8);
    if (v103)
    {
      result = (*(*v6 + 40))(a1 + 2, v103);
    }

    a1[4] -= 16;
  }

  return result;
}

void sub_2713D325C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, &v7);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v7 = "version";
  v8 = 7;
  LODWORD(v9) = 4;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v9);
  if (v9 >= 3)
  {
    v7 = "vertices";
    v8 = 8;
    v9 = a2;
    sub_2713D425C(a1, &v7);
    v5 = *(a1 + 104);
    *(a1 + 88) = "colors_type";
    *(a1 + 96) = 11;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v7 = (a2 + 32);
    sub_2713D4404(a1, &v7);
  }

  v10 = 0u;
  v12[0] = 0;
  v11 = 0;
  *(&v12[1] + 4) = 0;
  *(&v12[2] + 4) = 0;
  *(&v12[3] + 4) = 0;
  v12[5] = 0;
  *(&v12[6] + 4) = 0;
  *(&v12[7] + 4) = 0;
  v12[10] = 0;
  *(&v12[8] + 4) = 0;
  *(&v12[11] + 4) = 0;
  *(&v12[12] + 4) = 0;
  *(&v12[13] + 4) = 0;
  v12[15] = 0;
  *(&v12[18] + 4) = 0;
  *(&v12[16] + 4) = 0;
  *(&v12[17] + 4) = 0;
  v26 = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  memset(&v12[20], 0, 24);
  v16 = 0;
  v13 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v20 = 0;
  v19 = 0;
  v21 = 0;
  v18 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v25 = 0;
  v7 = "vertices";
  v8 = 8;
  v9 = &v10;
  sub_2713D425C(a1, &v7);
  v6 = *(a1 + 104);
  *(a1 + 88) = "colors_type";
  *(a1 + 96) = 11;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7 = v12 + 4;
  sub_2713D4404(a1, &v7);
}

void sub_2713D425C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v16);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = *(*(v6 + 1) + 16);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v10 - *v4);
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v10 - *v4);
  if (v8 > v12)
  {
    sub_2713D06C0(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[3 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 3;
    v13 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    sub_27182E498(v13, v16);
    v11 += 3;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_2713D4404(void *a1, _DWORD **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D2AC(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D666C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_2713D44F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713D4588(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v16);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = *(*(v6 + 1) + 16);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v4) >> 2);
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v4) >> 2);
  if (v8 > v12)
  {
    sub_2713D0BEC(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[3 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 3;
    v13 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    sub_27182E164(v13, v16);
    v11 += 3;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_2713D4730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v16);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = *(*(v6 + 1) + 16);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = (v10 - *v4) >> 3;
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = (v10 - *v4) >> 3;
  if (v8 > v12)
  {
    sub_2713D0F78(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[2 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 2;
    v13 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    sub_27182E164(v13, v16);
    v11 += 2;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_2713D48BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v16);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = *(*(v6 + 1) + 16);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = (v10 - *v4) >> 3;
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = (v10 - *v4) >> 3;
  if (v8 > v12)
  {
    sub_2713D129C(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[2 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 2;
    v13 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    sub_27182E498(v13, v16);
    v11 += 2;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

uint64_t *sub_2713D4A48(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v42 = 0u;
  v44 = 0;
  v43 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v52 = 0;
  v51 = 0;
  v53 = 0;
  v55 = 0;
  v54 = 0;
  v56 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v60[32] = 0;
  LOBYTE(v61) = 0;
  v64 = 0;
  memset(v60, 0, 28);
  memset(&v60[8], 0, 28);
  memset(&v60[16], 0, 28);
  memset(&v60[24], 0, 28);
  v41[0] = 0;
  sub_27183B6AC(a1, v41);
  v7 = *(&v42 + 1);
  v6 = v42;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((*(&v42 + 1) - v42) >> 2);
  if (v41[0] <= v8)
  {
    if (v41[0] < v8)
    {
      v7 = (v42 + 12 * v41[0]);
      *(&v42 + 1) = v7;
    }
  }

  else
  {
    sub_2713D06C0(&v42, v41[0] - v8);
    v7 = *(&v42 + 1);
    v6 = v42;
  }

  for (; v6 != v7; v6 = v9 + 1)
  {
    sub_27183BD60(a1, v6);
    v9 = v6 + 1;
    sub_27183BD60(a1, v9++);
    sub_27183BD60(a1, v9);
  }

  LODWORD(v41[0]) = 0;
  sub_27183A9AC(a1, v41);
  HIDWORD(v44) = v41[0];
  v41[0] = 0xAAAAAAAAAAAAAAABLL * (v46 - v45);
  sub_27183B6AC(a1, v41);
  v10 = v45;
  v11 = v46;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v46 - v45);
  if (v41[0] <= v12)
  {
    if (v41[0] < v12)
    {
      v11 = &v45[3 * v41[0]];
      v46 = v11;
    }
  }

  else
  {
    sub_2713D06C0(&v45, v41[0] - v12);
    v10 = v45;
    v11 = v46;
  }

  for (; v10 != v11; v10 = v13 + 1)
  {
    sub_27183BD60(a1, v10);
    v13 = v10 + 1;
    sub_27183BD60(a1, v13++);
    sub_27183BD60(a1, v13);
  }

  LODWORD(v41[0]) = 0;
  sub_27183A9AC(a1, v41);
  HIDWORD(v48) = v41[0];
  v41[0] = 0xAAAAAAAAAAAAAAABLL * (v50 - v49);
  sub_27183B6AC(a1, v41);
  v14 = v49;
  v15 = v50;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v50 - v49);
  if (v41[0] <= v16)
  {
    if (v41[0] < v16)
    {
      v15 = &v49[3 * v41[0]];
      v50 = v15;
    }
  }

  else
  {
    sub_2713D06C0(&v49, v41[0] - v16);
    v14 = v49;
    v15 = v50;
  }

  for (; v14 != v15; v14 = v17 + 1)
  {
    sub_27183BD60(a1, v14);
    v17 = v14 + 1;
    sub_27183BD60(a1, v17++);
    sub_27183BD60(a1, v17);
  }

  LODWORD(v41[0]) = 0;
  sub_27183A9AC(a1, v41);
  HIDWORD(v52) = v41[0];
  v41[0] = v54 - v53;
  sub_27183B6AC(a1, v41);
  v18 = v54;
  v19 = v53;
  if (v41[0] <= (v54 - v53))
  {
    if (v41[0] < (v54 - v53))
    {
      v18 = &v53[v41[0]];
      v54 = &v53[v41[0]];
    }
  }

  else
  {
    sub_271358BDC(&v53, v41[0] - (v54 - v53));
    v19 = v53;
    v18 = v54;
  }

  v20 = v18 - v19;
  if (v18 != v19)
  {
    do
    {
      sub_271839D90(a1, v19++);
      --v20;
    }

    while (v20);
  }

  LODWORD(v41[0]) = 0;
  sub_27183A9AC(a1, v41);
  HIDWORD(v56) = v41[0];
  v41[0] = v58 - v57;
  sub_27183B6AC(a1, v41);
  v21 = v58;
  v22 = v57;
  if (v41[0] <= (v58 - v57))
  {
    if (v41[0] < (v58 - v57))
    {
      v21 = &v57[v41[0]];
      v58 = &v57[v41[0]];
    }
  }

  else
  {
    sub_271358BDC(&v57, v41[0] - (v58 - v57));
    v22 = v57;
    v21 = v58;
  }

  v23 = v21 - v22;
  if (v21 != v22)
  {
    do
    {
      sub_271839D90(a1, v22++);
      --v23;
    }

    while (v23);
  }

  v41[0] = 0xAAAAAAAAAAAAAAABLL * ((*&v60[3] - *&v60[1]) >> 2);
  sub_27183B6AC(a1, v41);
  v24 = *&v60[3];
  v25 = *&v60[1];
  v26 = 0xAAAAAAAAAAAAAAABLL * ((*&v60[3] - *&v60[1]) >> 2);
  if (v41[0] <= v26)
  {
    if (v41[0] < v26)
    {
      v24 = *&v60[1] + 12 * v41[0];
      *&v60[3] = v24;
    }
  }

  else
  {
    sub_2713D0BEC(&v60[1], v41[0] - v26);
    v25 = *&v60[1];
    v24 = *&v60[3];
  }

  if (v24 != v25)
  {
    do
    {
      sub_27183A9AC(a1, v25);
      v27 = v25 + 1;
      sub_27183A9AC(a1, v27++);
      sub_27183A9AC(a1, v27);
      v25 = v27 + 1;
    }

    while (v25 != v24);
  }

  v41[0] = (*&v60[11] - *&v60[9]) >> 3;
  sub_27183B6AC(a1, v41);
  v28 = *&v60[11];
  v29 = *&v60[9];
  v30 = (*&v60[11] - *&v60[9]) >> 3;
  if (v41[0] <= v30)
  {
    if (v41[0] < v30)
    {
      v28 = *&v60[9] + 8 * v41[0];
      *&v60[11] = v28;
    }
  }

  else
  {
    sub_2713D0F78(&v60[9], v41[0] - v30);
    v29 = *&v60[9];
    v28 = *&v60[11];
  }

  if (v28 != v29)
  {
    do
    {
      sub_27183A9AC(a1, v29);
      v31 = v29 + 1;
      sub_27183A9AC(a1, v31);
      v29 = v31 + 1;
    }

    while (v29 != v28);
  }

  v41[0] = (*&v60[19] - *&v60[17]) >> 3;
  sub_27183B6AC(a1, v41);
  v32 = *&v60[19];
  v33 = *&v60[17];
  v34 = (*&v60[19] - *&v60[17]) >> 3;
  if (v41[0] <= v34)
  {
    if (v41[0] < v34)
    {
      v32 = *&v60[17] + 8 * v41[0];
      *&v60[19] = v32;
    }
  }

  else
  {
    sub_2713D129C(&v60[17], v41[0] - v34);
    v33 = *&v60[17];
    v32 = *&v60[19];
  }

  if (v32 != v33)
  {
    do
    {
      sub_27183BD60(a1, v33);
      v35 = v33 + 1;
      sub_27183BD60(a1, v35);
      v33 = v35 + 1;
    }

    while (v33 != v32);
  }

  v41[0] = 0xAAAAAAAAAAAAAAABLL * ((*&v60[27] - *&v60[25]) >> 2);
  sub_27183B6AC(a1, v41);
  v36 = *&v60[27];
  v37 = *&v60[25];
  v38 = 0xAAAAAAAAAAAAAAABLL * ((*&v60[27] - *&v60[25]) >> 2);
  if (v41[0] <= v38)
  {
    if (v41[0] < v38)
    {
      v36 = *&v60[25] + 12 * v41[0];
      *&v60[27] = v36;
    }
  }

  else
  {
    sub_2713D0BEC(&v60[25], v41[0] - v38);
    v37 = *&v60[25];
    v36 = *&v60[27];
  }

  if (v36 != v37)
  {
    do
    {
      sub_27183A9AC(a1, v37);
      v39 = v37 + 1;
      sub_27183A9AC(a1, v39++);
      sub_27183A9AC(a1, v39);
      v37 = v39 + 1;
    }

    while (v37 != v36);
  }

  if (a3 >= 2)
  {
    v65 = 0;
    sub_271839D90(a1, &v65);
    if (v65)
    {
      if ((v64 & 1) == 0)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 1;
      }

      LODWORD(v41[0]) = 1;
      sub_27183A9AC(a1, v41);
      sub_27183BD60(a1, &v61);
      sub_27183BD60(a1, &v61 + 1);
      sub_27183BD60(a1, &v62);
      sub_27183BD60(a1, &v62 + 1);
      sub_27183BD60(a1, &v63);
      sub_27183BD60(a1, &v63 + 1);
    }

    else if (v64)
    {
      v64 = 0;
    }
  }

  sub_2713D1524(v41, &v42);
  sub_2713D1670(a2, v41);
  sub_2713AE52C(v41);
  return sub_2713D1DB4(&v42);
}

void sub_2713D5298(uint64_t a1, uint64_t a2, unsigned int a3)
{
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  sub_27183B6AC(a1, __p);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 2);
  if (__p[0] <= v8)
  {
    if (__p[0] < v8)
    {
      v7 = &v6[3 * __p[0]];
      *(a2 + 8) = v7;
    }
  }

  else
  {
    sub_2713D06C0(a2, __p[0] - v8);
    v6 = *a2;
    v7 = *(a2 + 8);
  }

  for (; v6 != v7; v6 += 3)
  {
    sub_27183BD60(a1, v6);
    sub_27183BD60(a1, v6 + 1);
    sub_27183BD60(a1, v6 + 2);
  }

  LODWORD(__p[0]) = 0;
  sub_27183A9AC(a1, __p);
  *(a2 + 32) = __p[0];
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2));
  sub_27183B6AC(a1, __p);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 - v9);
  if (__p[0] <= v11)
  {
    if (__p[0] < v11)
    {
      v10 = &v9[3 * __p[0]];
      *(a2 + 48) = v10;
    }
  }

  else
  {
    sub_2713D06C0(a2 + 40, __p[0] - v11);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
  }

  for (; v9 != v10; v9 += 3)
  {
    sub_27183BD60(a1, v9);
    sub_27183BD60(a1, v9 + 1);
    sub_27183BD60(a1, v9 + 2);
  }

  LODWORD(__p[0]) = 0;
  sub_27183A9AC(a1, __p);
  *(a2 + 72) = __p[0];
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 2));
  sub_27183B6AC(a1, __p);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = 0xAAAAAAAAAAAAAAABLL * (v13 - v12);
  if (__p[0] <= v14)
  {
    if (__p[0] < v14)
    {
      v13 = &v12[3 * __p[0]];
      *(a2 + 88) = v13;
    }
  }

  else
  {
    sub_2713D06C0(a2 + 80, __p[0] - v14);
    v12 = *(a2 + 80);
    v13 = *(a2 + 88);
  }

  for (; v12 != v13; v12 += 3)
  {
    sub_27183BD60(a1, v12);
    sub_27183BD60(a1, v12 + 1);
    sub_27183BD60(a1, v12 + 2);
  }

  LODWORD(__p[0]) = 0;
  sub_27183A9AC(a1, __p);
  *(a2 + 112) = __p[0];
  __p[0] = (*(a2 + 128) - *(a2 + 120));
  sub_27183B6AC(a1, __p);
  v16 = *(a2 + 120);
  v15 = *(a2 + 128);
  if (__p[0] <= (v15 - v16))
  {
    if (__p[0] < (v15 - v16))
    {
      v15 = &v16[__p[0]];
      *(a2 + 128) = &v16[__p[0]];
    }
  }

  else
  {
    sub_271358BDC(a2 + 120, __p[0] - (v15 - v16));
    v16 = *(a2 + 120);
    v15 = *(a2 + 128);
  }

  v17 = v15 - v16;
  if (v15 != v16)
  {
    do
    {
      sub_271839D90(a1, v16++);
      --v17;
    }

    while (v17);
  }

  LODWORD(__p[0]) = 0;
  sub_27183A9AC(a1, __p);
  *(a2 + 152) = __p[0];
  __p[0] = (*(a2 + 168) - *(a2 + 160));
  sub_27183B6AC(a1, __p);
  v19 = *(a2 + 160);
  v18 = *(a2 + 168);
  if (__p[0] <= (v18 - v19))
  {
    if (__p[0] < (v18 - v19))
    {
      v18 = &v19[__p[0]];
      *(a2 + 168) = &v19[__p[0]];
    }
  }

  else
  {
    sub_271358BDC(a2 + 160, __p[0] - (v18 - v19));
    v19 = *(a2 + 160);
    v18 = *(a2 + 168);
  }

  v20 = v18 - v19;
  if (v18 != v19)
  {
    do
    {
      sub_271839D90(a1, v19++);
      --v20;
    }

    while (v20);
  }

  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 2));
  sub_27183B6AC(a1, __p);
  v21 = *(a2 + 192);
  v22 = *(a2 + 200);
  v23 = 0xAAAAAAAAAAAAAAABLL * (v22 - v21);
  if (__p[0] <= v23)
  {
    if (__p[0] < v23)
    {
      v22 = &v21[3 * __p[0]];
      *(a2 + 200) = v22;
    }
  }

  else
  {
    sub_2713D0BEC(a2 + 192, __p[0] - v23);
    v21 = *(a2 + 192);
    v22 = *(a2 + 200);
  }

  for (; v21 != v22; v21 += 3)
  {
    sub_27183A9AC(a1, v21);
    sub_27183A9AC(a1, v21 + 1);
    sub_27183A9AC(a1, v21 + 2);
  }

  __p[0] = ((*(a2 + 232) - *(a2 + 224)) >> 3);
  sub_27183B6AC(a1, __p);
  v24 = *(a2 + 224);
  v25 = *(a2 + 232);
  v26 = (v25 - v24) >> 3;
  if (__p[0] <= v26)
  {
    if (__p[0] < v26)
    {
      v25 = &v24[8 * __p[0]];
      *(a2 + 232) = v25;
    }
  }

  else
  {
    sub_2713D0F78(a2 + 224, __p[0] - v26);
    v24 = *(a2 + 224);
    v25 = *(a2 + 232);
  }

  for (; v24 != v25; v24 += 8)
  {
    sub_27183A9AC(a1, v24);
    sub_27183A9AC(a1, v24 + 1);
  }

  __p[0] = ((*(a2 + 264) - *(a2 + 256)) >> 3);
  sub_27183B6AC(a1, __p);
  v27 = *(a2 + 256);
  v28 = *(a2 + 264);
  v29 = (v28 - v27) >> 3;
  if (__p[0] <= v29)
  {
    if (__p[0] < v29)
    {
      v28 = &v27[8 * __p[0]];
      *(a2 + 264) = v28;
    }
  }

  else
  {
    sub_2713D129C(a2 + 256, __p[0] - v29);
    v27 = *(a2 + 256);
    v28 = *(a2 + 264);
  }

  for (; v27 != v28; v27 += 8)
  {
    sub_27183BD60(a1, v27);
    sub_27183BD60(a1, v27 + 1);
  }

  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 2));
  sub_27183B6AC(a1, __p);
  v30 = *(a2 + 288);
  v31 = *(a2 + 296);
  v32 = 0xAAAAAAAAAAAAAAABLL * (v31 - v30);
  if (__p[0] <= v32)
  {
    if (__p[0] < v32)
    {
      v31 = &v30[3 * __p[0]];
      *(a2 + 296) = v31;
    }
  }

  else
  {
    sub_2713D0BEC(a2 + 288, __p[0] - v32);
    v30 = *(a2 + 288);
    v31 = *(a2 + 296);
  }

  for (; v30 != v31; v30 += 3)
  {
    sub_27183A9AC(a1, v30);
    sub_27183A9AC(a1, v30 + 1);
    sub_27183A9AC(a1, v30 + 2);
  }

  if (a3 >= 2)
  {
    v40 = 0;
    sub_271839D90(a1, &v40);
    if (v40)
    {
      if ((*(a2 + 344) & 1) == 0)
      {
        *(a2 + 320) = 0;
        *(a2 + 328) = 0;
        *(a2 + 336) = 0;
        *(a2 + 344) = 1;
      }

      LODWORD(__p[0]) = 2;
      sub_27183A9AC(a1, __p);
      if (LODWORD(__p[0]) > 1)
      {
        sub_27183BD60(a1, (a2 + 320));
        sub_27183BD60(a1, (a2 + 324));
        sub_27183BD60(a1, (a2 + 328));
        sub_27183BD60(a1, (a2 + 332));
        sub_27183BD60(a1, (a2 + 336));
        sub_27183BD60(a1, (a2 + 340));
        while (1)
        {
          if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
          {
            goto LABEL_77;
          }

          sub_27183D78C(a1, __p);
          if (SHIBYTE(__p[2]) < 0)
          {
            if (__p[1] == 1 && *(a1 + 72) == *__p[0])
            {
LABEL_70:
              v33 = 0;
              if (SHIBYTE(__p[2]) < 0)
              {
                goto LABEL_73;
              }

              goto LABEL_61;
            }
          }

          else if (SHIBYTE(__p[2]) == 1 && *(a1 + 72) == LOBYTE(__p[0]))
          {
            goto LABEL_70;
          }

          v33 = 1;
          if (SHIBYTE(__p[2]) < 0)
          {
LABEL_73:
            operator delete(__p[0]);
          }

LABEL_61:
          if ((v33 & 1) == 0)
          {
            goto LABEL_77;
          }
        }
      }

      memset(__p, 0, 24);
      sub_27183BD60(a1, __p);
      sub_27183BD60(a1, __p + 1);
      sub_27183BD60(a1, &__p[1]);
      sub_27183BD60(a1, (__p | 0xC));
      sub_27183BD60(a1, &__p[2]);
      sub_27183BD60(a1, &__p[2] + 1);
      v34 = *__p;
      v35 = *(&__p[1] + 4);
      HIDWORD(v34) = HIDWORD(__p[1]);
      *(a2 + 320) = v34;
      LODWORD(v34) = vdup_lane_s32(v35, 1).u32[0];
      DWORD1(v34) = HIDWORD(__p[2]);
      *(a2 + 336) = v34;
    }

    else if (*(a2 + 344))
    {
      *(a2 + 344) = 0;
    }

LABEL_77:
    if (a3 >= 4)
    {
      LODWORD(__p[0]) = 0;
      sub_27183A9AC(a1, __p);
      *(a2 + 348) = __p[0];
      __p[0] = ((*(a2 + 360) - *(a2 + 352)) >> 2);
      sub_27183B6AC(a1, __p);
      v37 = *(a2 + 352);
      v36 = *(a2 + 360);
      v38 = (v36 - v37) >> 2;
      if (__p[0] <= v38)
      {
        if (__p[0] < v38)
        {
          v36 = &v37[4 * __p[0]];
          *(a2 + 360) = v36;
        }
      }

      else
      {
        sub_2713591A4(a2 + 352, __p[0] - v38);
        v37 = *(a2 + 352);
        v36 = *(a2 + 360);
      }

      v39 = v36 - v37;
      if (v36 != v37)
      {
        do
        {
          sub_27183BD60(a1, v37);
          v37 += 4;
          v39 -= 4;
        }

        while (v39);
      }
    }
  }
}

void sub_2713D5A84(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    goto LABEL_77;
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  if (v8 > 2)
  {
    sub_27173170C(a1);
    sub_2713D6564(a1, a2);
    v9 = a1[6];
    v10 = a1[7];
    v4 = v10 >= v9;
    v11 = v10 - v9;
    if (!v4)
    {
      v11 = 0;
    }

    if (v11 > 3)
    {
      v12 = *(a1[3] + v9);
      a1[6] = v9 + 4;
      *(a2 + 32) = v12;
      sub_2713D6564(a1, (a2 + 40));
      v13 = a1[6];
      v14 = a1[7];
      v4 = v14 >= v13;
      v15 = v14 - v13;
      if (!v4)
      {
        v15 = 0;
      }

      if (v15 > 3)
      {
        v16 = *(a1[3] + v13);
        a1[6] = v13 + 4;
        *(a2 + 72) = v16;
        sub_2713D6564(a1, (a2 + 80));
        v17 = a1[6];
        v18 = a1[7];
        v4 = v18 >= v17;
        v19 = v18 - v17;
        if (!v4)
        {
          v19 = 0;
        }

        if (v19 > 3)
        {
          v20 = *(a1[3] + v17);
          a1[6] = v17 + 4;
          *(a2 + 112) = v20;
          sub_2713D6438(a1, (a2 + 120));
          v21 = a1[6];
          v22 = a1[7];
          v4 = v22 >= v21;
          v23 = v22 - v21;
          if (!v4)
          {
            v23 = 0;
          }

          if (v23 > 3)
          {
            v24 = *(a1[3] + v21);
            a1[6] = v21 + 4;
            *(a2 + 152) = v24;
            v25 = sub_2713D6438(a1, (a2 + 160));
            sub_2713D66B8(v25, (a2 + 192));
            sub_2713D680C(a1, (a2 + 224));
            sub_2713D6944(a1, (a2 + 256));
            sub_2713D66B8(a1, (a2 + 288));
            v27 = a1[6];
            v26 = a1[7];
            if (v26 > v27)
            {
              v28 = *(a1[3] + v27);
              v29 = v27 + 1;
              a1[6] = v29;
              if (!v28)
              {
                if (*(a2 + 344))
                {
                  *(a2 + 344) = 0;
                }

                if (v8 == 3)
                {
                  goto LABEL_73;
                }

                goto LABEL_59;
              }

              v30 = (a2 + 320);
              if ((*(a2 + 344) & 1) == 0)
              {
                *v30 = 0;
                *(a2 + 328) = 0;
                *(a2 + 336) = 0;
                *(a2 + 344) = 1;
                v29 = a1[6];
                v26 = a1[7];
              }

              v4 = v26 >= v29;
              v31 = v26 - v29;
              if (!v4)
              {
                v31 = 0;
              }

              if (v31 > 3)
              {
                v32 = *(a1[3] + v29);
                a1[6] = v29 + 4;
                if (v32 <= 1)
                {
                  memset(v85, 0, 24);
                  sub_2713D6A7C(a1, v85);
                  v66 = v85[0];
                  v67 = *(v85 + 12);
                  HIDWORD(v66) = HIDWORD(v85[0]);
                  *(a2 + 320) = v66;
                  LODWORD(v66) = vdup_lane_s32(v67, 1).u32[0];
                  DWORD1(v66) = DWORD1(v85[1]);
                  *(a2 + 336) = v66;
                  if (v8 == 3)
                  {
LABEL_73:
                    v81 = a1[12];
                    v82 = a1[9];
                    a1[6] = *(v81 - 8) + *(v82 - 8) + 8;
                    a1[9] = v82 - 8;
                    a1[12] = v81 - 8;
                    return;
                  }
                }

                else
                {
                  sub_27173170C(a1);
                  v33 = a1[6];
                  v34 = a1[7];
                  v4 = v34 >= v33;
                  v35 = v34 - v33;
                  if (!v4)
                  {
                    v35 = 0;
                  }

                  if (v35 <= 0xB)
                  {
                    goto LABEL_89;
                  }

                  v36 = (a1[3] + v33);
                  v37 = *v36;
                  *(a2 + 328) = *(v36 + 2);
                  *v30 = v37;
                  v38 = a1[7];
                  v39 = a1[6] + 12;
                  a1[6] = v39;
                  v4 = v38 >= v39;
                  v40 = v38 - v39;
                  if (!v4)
                  {
                    v40 = 0;
                  }

                  if (v40 <= 0xB)
                  {
LABEL_89:
                    exception = __cxa_allocate_exception(0x10uLL);
                    sub_271128104(exception, "Not enough data to read span");
                    goto LABEL_90;
                  }

                  v41 = a1[3] + v39;
                  v42 = *v41;
                  *(a2 + 340) = *(v41 + 8);
                  *(a2 + 332) = v42;
                  a1[6] += 12;
                  v43 = a1[12];
                  v44 = a1[9];
                  a1[6] = *(v43 - 8) + *(v44 - 8) + 8;
                  a1[9] = v44 - 8;
                  a1[12] = v43 - 8;
                  if (v8 == 3)
                  {
                    goto LABEL_73;
                  }
                }

LABEL_59:
                v69 = a1[6];
                v68 = a1[7];
                v70 = v68 - v69;
                if (v68 < v69)
                {
                  v70 = 0;
                }

                if (v70 <= 3)
                {
                  goto LABEL_85;
                }

                v71 = a1[3];
                v72 = *(v71 + v69);
                a1[6] = v69 + 4;
                *(a2 + 348) = v72;
                v73 = v68 - (v69 + 4);
                if (v68 < v69 + 4)
                {
                  v73 = 0;
                }

                if (v73 <= 7)
                {
LABEL_85:
                  exception = __cxa_allocate_exception(0x10uLL);
                  sub_271128104(exception, "Not enough data to read");
                }

                else
                {
                  v74 = *(v71 + v69 + 4);
                  v75 = v69 + 12;
                  a1[6] = v75;
                  v76 = *(a2 + 352);
                  v77 = *(a2 + 360);
                  v78 = (v77 - v76) >> 2;
                  if (v74 <= v78)
                  {
                    if (v74 < v78)
                    {
                      v77 = &v76[4 * v74];
                      *(a2 + 360) = v77;
                    }
                  }

                  else
                  {
                    sub_2713591A4(a2 + 352, v74 - v78);
                    v76 = *(a2 + 352);
                    v77 = *(a2 + 360);
                    v75 = a1[6];
                    v68 = a1[7];
                  }

                  v79 = v77 - v76;
                  v4 = v68 >= v75;
                  v80 = v68 - v75;
                  if (!v4)
                  {
                    v80 = 0;
                  }

                  if (v80 >= v79)
                  {
                    memcpy(v76, (a1[3] + v75), v77 - v76);
                    a1[6] += v79;
                    goto LABEL_73;
                  }

                  exception = __cxa_allocate_exception(0x10uLL);
                  sub_271128104(exception, "Not enough data to read span");
                }

LABEL_90:
                __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
              }
            }
          }
        }
      }
    }

LABEL_77:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_90;
  }

  v86 = 0u;
  v88 = 0;
  v87 = 0;
  memset(v89, 0, sizeof(v89));
  v90 = 0;
  memset(v91, 0, sizeof(v91));
  v92 = 0;
  memset(v93, 0, sizeof(v93));
  v94 = 0;
  memset(v95, 0, 24);
  v96 = 0;
  v97[0] = 0;
  v98 = 0;
  memset(&v95[3] + 4, 0, 28);
  memset(&v95[7] + 4, 0, 28);
  memset(&v95[11] + 4, 0, 28);
  memset(&v95[15] + 4, 0, 28);
  sub_2713D6564(a1, &v86);
  v45 = a1[6];
  v46 = a1[7];
  v4 = v46 >= v45;
  v47 = v46 - v45;
  if (!v4)
  {
    v47 = 0;
  }

  if (v47 <= 3)
  {
    goto LABEL_91;
  }

  v48 = *(a1[3] + v45);
  a1[6] = v45 + 4;
  HIDWORD(v88) = v48;
  sub_2713D6564(a1, v89);
  v49 = a1[6];
  v50 = a1[7];
  v4 = v50 >= v49;
  v51 = v50 - v49;
  if (!v4)
  {
    v51 = 0;
  }

  if (v51 <= 3)
  {
    goto LABEL_91;
  }

  v52 = *(a1[3] + v49);
  a1[6] = v49 + 4;
  HIDWORD(v90) = v52;
  sub_2713D6564(a1, v91);
  v53 = a1[6];
  v54 = a1[7];
  v4 = v54 >= v53;
  v55 = v54 - v53;
  if (!v4)
  {
    v55 = 0;
  }

  if (v55 <= 3)
  {
    goto LABEL_91;
  }

  v56 = *(a1[3] + v53);
  a1[6] = v53 + 4;
  HIDWORD(v92) = v56;
  sub_2713D6438(a1, v93);
  v57 = a1[6];
  v58 = a1[7];
  v4 = v58 >= v57;
  v59 = v58 - v57;
  if (!v4)
  {
    v59 = 0;
  }

  if (v59 <= 3)
  {
    goto LABEL_91;
  }

  v60 = *(a1[3] + v57);
  a1[6] = v57 + 4;
  HIDWORD(v94) = v60;
  sub_2713D6438(a1, v95);
  sub_2713D66B8(a1, &v95[4]);
  sub_2713D680C(a1, &v95[8]);
  sub_2713D6944(a1, &v95[12]);
  sub_2713D66B8(a1, &v95[16]);
  if (v8 == 2)
  {
    v61 = a1[6];
    v62 = a1[7];
    if (v62 > v61)
    {
      v63 = *(a1[3] + v61);
      v64 = v61 + 1;
      a1[6] = v61 + 1;
      if (!v63)
      {
        if (v98)
        {
          v98 = 0;
        }

        goto LABEL_76;
      }

      if ((v98 & 1) == 0)
      {
        memset(v97, 0, sizeof(v97));
        v98 = 1;
      }

      v4 = v62 >= v64;
      v65 = v62 - v64;
      if (!v4)
      {
        v65 = 0;
      }

      if (v65 > 3)
      {
        a1[6] = v61 + 5;
        sub_2713D6A7C(a1, v97);
        goto LABEL_76;
      }
    }

LABEL_91:
    v84 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v84, "Not enough data to read");
    v84->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v84, off_279E2F400, MEMORY[0x277D825F8]);
  }

LABEL_76:
  sub_2713D1524(v85, &v86);
  sub_2713D1670(a2, v85);
  sub_2713AE52C(v85);
  sub_2713D1DB4(&v86);
}

void sub_2713D62F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  __cxa_free_exception(v57);
  sub_2713D1DB4(&a57);
  _Unwind_Resume(a1);
}

void *sub_2713D6438(void *a1, void **a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 = 0;
  }

  if (v4 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_15;
  }

  v6 = *(a1[3] + v2);
  v7 = v2 + 8;
  a1[6] = v2 + 8;
  v8 = *a2;
  v9 = a2[1];
  v10 = v9 - *a2;
  v11 = v6 >= v10;
  v12 = v6 - v10;
  if (v12 != 0 && v11)
  {
    sub_271358BDC(a2, v12);
    v8 = *a2;
    v9 = a2[1];
    v7 = a1[6];
    v3 = a1[7];
  }

  else if (!v11)
  {
    v9 = &v8[v6];
    a2[1] = &v8[v6];
  }

  v14 = v9 - v8;
  v15 = v3 - v7;
  if (v3 < v7)
  {
    v15 = 0;
  }

  if (v15 < v14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
LABEL_15:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  memcpy(v8, (a1[3] + v7), v9 - v8);
  a1[6] += v14;
  return a1;
}