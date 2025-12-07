void sub_1000C1EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::mutex::unlock((v13 + 16));
  sub_1000C4E7C(va);
  _Unwind_Resume(a1);
}

void sub_1000C1F50(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  memset(v1, 0, 44);
  sub_10002E794(a1 + 64, v1);
  if (*(&v1[0] + 1))
  {
    sub_10000E984(*(&v1[0] + 1));
  }
}

void sub_1000C1FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000C1FB8(void *result, void *a2)
{
  v2 = a2[10];
  result[9] = a2[9];
  result[10] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[13];
  result[12] = a2[12];
  result[13] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000C1FEC(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {

    sub_10000E984(v3);
  }
}

void sub_1000C20C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000E950(va);
  _Unwind_Resume(a1);
}

void sub_1000C20D4(const __CFString *a1, const void *a2, __CFDictionary *a3)
{
  TypeID = CFStringGetTypeID();
  if (a1)
  {
    v7 = TypeID;
    if (CFGetTypeID(a1) != TypeID)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v15 = a1;
      v16 = exception;
      v17 = CFGetTypeID(v15);
LABEL_18:
      v18 = v16;
      v19 = v7;
      goto LABEL_19;
    }
  }

  v8 = sub_100144B8C(a1);
  switch(v8)
  {
    case 1651272568:
      return;
    case 1886155636:
      return;
    case 1970628964:
      return;
  }

  v9 = CFArrayGetTypeID();
  if (!a2)
  {
    return;
  }

  v7 = v9;
  if (CFGetTypeID(a2) != v9)
  {
    v16 = __cxa_allocate_exception(0x40uLL);
    v17 = CFGetTypeID(a2);
    goto LABEL_18;
  }

  if (CFArrayGetCount(a2) < 1)
  {
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
  v11 = CFDictionaryGetTypeID();
  if (!ValueAtIndex)
  {
    return;
  }

  v12 = v11;
  if (CFGetTypeID(ValueAtIndex) != v11)
  {
    goto LABEL_21;
  }

  ValueAtIndex = CFDictionaryGetValue(ValueAtIndex, @"Data");
  v13 = CFDataGetTypeID();
  if (!ValueAtIndex)
  {
    return;
  }

  v12 = v13;
  if (CFGetTypeID(ValueAtIndex) != v13)
  {
LABEL_21:
    v21 = __cxa_allocate_exception(0x40uLL);
    v17 = CFGetTypeID(ValueAtIndex);
    v18 = v21;
    v19 = v12;
LABEL_19:
    v20 = sub_100053B68(v18, v17, v19);
  }

  CFDictionaryAddValue(a3, a1, ValueAtIndex);
}

void sub_1000C24B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100028D2C(&a9);
  sub_10000E950(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_1000C24E0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    sub_1000C048C(v7, a1, a1 + 64, 3);
    if (!sub_1000C0CC8(v7, a2))
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000C01B8(v7, a1, a1 + 64);
    if (!sub_1000C0CC8(v7, a2))
    {
LABEL_6:
      v4 = sub_1000BFEB0(v7);
      goto LABEL_7;
    }
  }

  v4 = 0;
LABEL_7:
  sub_1000C2EF4(v10, v10[1]);
  std::mutex::~mutex(&v9);
  v6 = &v8;
  sub_1000C2F54(&v6);
  return v4;
}

void sub_1000C25CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000C04F0(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000C25EC@<W0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1 + 8;
  v4 = a1[8];
  v6 = a1 + 9;
  v7 = a1[9];
  v8 = a1[5];
  if (v4 != v7)
  {
    while (v8 > (v4[6] & 1) + v4[5] - 1)
    {
      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v13 = *v10 == v4;
          v4 = v10;
        }

        while (!v13);
      }

      *v5 = v10;
      v4 = v10;
      if (v10 == v7)
      {
        goto LABEL_11;
      }
    }
  }

  v10 = v4;
LABEL_11:
  v11 = sub_1000C2790(a1 + 8, v6, v8);
  if (v11)
  {
    result = sub_1000C2790(v5, v6, v8);
    v13 = v10 == v7 || !result;
    v14 = v8;
    if (!v13)
    {
      do
      {
        v14 = (v10[6] & 1) + v10[5];
        result = sub_1000C2790(v5, v6, v14);
        if (!result)
        {
          break;
        }

        v15 = v10[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v10[2];
            v13 = *v16 == v10;
            v10 = v16;
          }

          while (!v13);
        }

        *v5 = v16;
        v10 = v16;
      }

      while (v16 != v7);
    }
  }

  else
  {
    result = sub_1000C2790(v5, v6, v8);
    v14 = v8;
    if (!result)
    {
      if (v10 == v7)
      {
        v14 = a1[3];
      }

      else if ((v10[6] & 2) != 0)
      {
        v14 = v10[4];
      }

      else
      {
        v14 = v10[4] + 1;
      }
    }
  }

  *a2 = v8;
  *(a2 + 8) = v14;
  *(a2 + 16) = 2;
  *(a2 + 24) = v11;
  return result;
}

BOOL sub_1000C2790(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = *a1;
  if (*a1 == *a2)
  {
    return 0;
  }

  v4 = *(v3 + 32);
  if ((*(v3 + 48) & 2) != 0)
  {
    if (v4 > a3)
    {
      return 0;
    }
  }

  else if (v4 >= a3)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  if (*(v3 + 48))
  {
    if (v5 < a3)
    {
      return 0;
    }
  }

  else if (v5 <= a3)
  {
    return 0;
  }

  v7 = *(v3 + 56);
  return v7 == 1 || HIBYTE(v7) == 128;
}

void *sub_1000C2888(void *a1)
{
  *a1 = &off_1001FD4E0;
  sub_100063044((a1 + 8));
  v2 = a1[7];
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

void sub_1000C28D8(void *a1)
{
  *a1 = &off_1001FD4E0;
  sub_100063044((a1 + 8));
  v2 = a1[7];
  if (v2)
  {
    sub_10000E984(v2);
  }

  operator delete();
}

_WORD *sub_1000C2AC4(_WORD *result, int a2)
{
  v2 = 0;
  *result = a2;
  v5 = 0x10000800040002;
  v6 = 4194336;
  v7 = 128;
  do
  {
    a2 &= *(&v5 + v2) ^ 0xFFFF;
    v2 += 2;
  }

  while (v2 != 14);
  if (a2)
  {
    v3 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "block_attributes";
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &off_10020AFD0;
    *(exception + 16) = v3;
  }

  return result;
}

void sub_1000C2BC8(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_1000C2C00(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_10017204C(a1);
  sub_100010B0C(v15, v3);
  sub_100028820(v10);
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = sub_100001FE8(&v11, v4, v5);
  v7 = sub_100001FE8(v6, " [", 2);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = std::ostream::operator<<();
  sub_100001FE8(v8, "]", 1);
  sub_100028B04(&v12, a2);
  v11 = v9;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1000C2EB4(uint64_t a1)
{
  sub_1000C2EF4(a1 + 72, *(a1 + 80));

  std::mutex::~mutex(a1);
}

void sub_1000C2EF4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000C2EF4(a1, *a2);
    sub_1000C2EF4(a1, a2[1]);
    v4 = a2[12];
    if (v4)
    {
      sub_10000E984(v4);
    }

    operator delete(a2);
  }
}

void sub_1000C2F54(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000C2FA8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000C2FA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 184;
      v6 = (v4 - 168);
      sub_1000C2EF4(v4 - 96, *(v4 - 88));
      std::mutex::~mutex(v6);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_1000C300C(unint64_t *a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    sub_100015B70();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1000C31F0(a1, v6);
  }

  v13 = 0;
  v14 = 184 * v2;
  sub_1000C3158(a1, 184 * v2, a2);
  v15 = 184 * v2 + 184;
  v7 = a1[1];
  v8 = 184 * v2 + *a1 - v7;
  sub_1000C324C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1000C3410(&v13);
  return v12;
}

void sub_1000C3144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000C3410(va);
  _Unwind_Resume(a1);
}

__n128 sub_1000C3158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0;
  *(a2 + 88) = *(a3 + 88);
  v3 = (a3 + 96);
  v4 = *(a3 + 96);
  *(a2 + 96) = v4;
  v5 = a2 + 96;
  *(a2 + 16) = 850045863;
  *(a2 + 80) = *(a3 + 80);
  v6 = *(a3 + 104);
  *(a2 + 104) = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *(a3 + 88) = v3;
    *v3 = 0;
    *(a3 + 104) = 0;
  }

  else
  {
    *(a2 + 88) = v5;
  }

  *(a2 + 112) = *(a3 + 112);
  *(a2 + 128) = *(a3 + 128);
  result = *(a3 + 144);
  *(a2 + 144) = result;
  *(a2 + 160) = *(a3 + 160);
  *(a2 + 168) = 0;
  *(a2 + 176) = *(a3 + 176);
  return result;
}

void sub_1000C31F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_1000C324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      sub_1000C3158(a1, a4, v7);
      v7 += 184;
      a4 = v12 + 184;
      v12 += 184;
    }

    while (v7 != a3);
  }

  v10 = 1;
  sub_1000C3308(a1, a2, a3);
  return sub_1000C3368(v9);
}

void sub_1000C3308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 88;
    do
    {
      sub_1000C2EF4(v4, *(v4 + 8));
      std::mutex::~mutex((v4 - 72));
      v5 = v4 + 96;
      v4 += 184;
    }

    while (v5 != a3);
  }
}

uint64_t sub_1000C3368(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000C33B4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1000C33B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    do
    {
      v6 = a3 - 184;
      v7 = (a3 - 168);
      sub_1000C2EF4(a3 - 96, *(a3 - 88));
      std::mutex::~mutex(v7);
      a3 = v6;
    }

    while (v6 != a5);
  }
}

uint64_t sub_1000C3410(uint64_t a1)
{
  sub_1000C3448(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000C3448(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    v5 = (i - 168);
    sub_1000C2EF4(i - 96, *(i - 88));
    std::mutex::~mutex(v5);
  }
}

uint64_t sub_1000C34B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C3748(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C34FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C3748(v1);

  return std::ios::~ios();
}

void sub_1000C355C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C3748(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C35C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C3600(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000C366C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C3748(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C36D0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C3748(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C3748(uint64_t a1)
{
  *a1 = &off_10020B1B8;
  sub_1000C38B4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000C38B4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_1000C3A64((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000C3A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C3A2C(uint64_t a1)
{
  sub_1000C3748(a1);

  operator delete();
}

int *sub_1000C3A64(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 339;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 339;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

const void **sub_1000C3C48(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1000C3C7C(uint64_t a1, uint64_t a2)
{
  sub_10013A038(&v15, a2);
  v4 = v15;
  v9 = v20;
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v5 = v16;
  v6 = v17;
  v7 = v18;
  v8 = v19;
  sub_10013A158(&v4, v13);
  v4 = &v14;
  *&v5 = HIDWORD(v15) >> 3;
  sub_1000C3D5C(a1, &v4);
  return a1;
}

uint64_t sub_1000C3D5C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 12);
  if (v2 == -1)
  {
    sub_100015D74();
  }

  v6 = &v5;
  (off_10020B228[v2])(&v6, a1 + 4);
  return a1;
}

uLong sub_1000C3DC0(const Bytef ****a1, _DWORD *a2)
{
  result = crc32(*a2, ***a1, *(**a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_1000C3DFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = *a2;
  if ((*(a3 + 16) & 2) != 0)
  {
    v3 = *a3;
  }

  else
  {
    v3 = *a3 + 1;
  }

  v5 = (a2 + 144);
  v4 = *(a2 + 144);
  v6 = *(a2 + 128);
  if (v6 != v4)
  {
    while (1)
    {
      v7 = v6[4];
      if ((v6[6] & 2) == 0)
      {
        ++v7;
      }

      if (v7 >= v3)
      {
        break;
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
      if (v9 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = v6;
LABEL_16:
  if (v9 == v4)
  {
    v16 = *(a2 + 80);
    *(result + 96) = 0;
    *(result + 16) = 850045863;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    *(result + 80) = v16;
    *(result + 104) = 0;
    *(result + 88) = result + 96;
    *(result + 112) = *v5;
    *(result + 128) = *v5;
    *(result + 144) = *v5;
    *(result + 168) = 0;
    v9 = *(result + 112);
    if (v9 == *(result + 144))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v11 = *(a2 + 136);
  v12 = v9;
  while (1)
  {
    v13 = v12[4];
    if ((v12[6] & 2) == 0)
    {
      ++v13;
    }

    if (v13 > (*(a3 + 16) & 1) + *(a3 + 8) - 1)
    {
      break;
    }

    v14 = v12[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v12[2];
        v10 = *v15 == v12;
        v12 = v15;
      }

      while (!v10);
    }

    v12 = v15;
    if (v15 == v4)
    {
      goto LABEL_31;
    }
  }

  v15 = v12;
LABEL_31:
  v17 = *(a2 + 80);
  *(result + 96) = 0;
  *(result + 16) = 850045863;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0;
  *(result + 80) = v17;
  *(result + 88) = result + 96;
  *(result + 104) = 0;
  *(result + 112) = v9;
  *(result + 120) = v11;
  *(result + 128) = v9;
  *(result + 136) = v11;
  *(result + 144) = v15;
  *(result + 152) = v11;
  *(result + 168) = 0;
  if (v9 != v15)
  {
LABEL_32:
    v18 = *(v9 + 48);
    v19 = v9[4];
    if ((v18 & 2) == 0)
    {
      ++v19;
    }

    *(result + 160) = v19;
  }

LABEL_35:
  *(result + 176) = 0;
  return result;
}

uint64_t sub_1000C3FC4(uint64_t a1, unsigned int a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 850045863;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1018212795;
  *a1 = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  if (a2)
  {
    sub_1000C4084((a1 + 8), a2);
  }

  return a1;
}

void sub_1000C4058(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1000C4084(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_100017300(a1, a2);
    }

    sub_100015B70();
  }
}

uint64_t sub_1000C4124(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        v5 = v4[2];
        if (v5)
        {
          sub_10000E984(v5);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        operator delete();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 8);
  }

  *(a1 + 16) = v2;
  std::condition_variable::~condition_variable((a1 + 96));
  std::mutex::~mutex((a1 + 32));
  v7 = *(a1 + 8);
  if (v7)
  {
    *(a1 + 16) = v7;
    operator delete(v7);
  }

  return a1;
}

void *sub_1000C429C(void *a1, void *a2, uint64_t *a3, int *a4, char *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020B248;
  sub_100193100((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_1000C4324(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020B248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000C43A0(uint64_t a1)
{
  std::mutex::lock(a1);
  *(a1 + 152) = 1;
  sub_1000C2EF4(a1 + 72, *(a1 + 80));
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;

  std::mutex::unlock(a1);
}

void sub_1000C4480(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_begin_catch(a1);
  sub_1000C44AC(va, v3);
  __cxa_rethrow();
}

void sub_1000C44AC(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v2 = *a1;
  std::mutex::lock((*a1 + 32));
  sub_1000C4604(v2 + 8, &v3);
  std::mutex::unlock((v2 + 32));
  std::condition_variable::notify_one((v2 + 96));
}

void sub_1000C44FC(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_1000C4518(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000C4550(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  std::mutex::lock((v1 + 32));
  sub_1000C4604(v1 + 8, &v2);
  std::mutex::unlock((v1 + 32));
  std::condition_variable::notify_one((v1 + 96));
}

void sub_1000C45A0(void *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 32));
  sub_100001A14(a1);
}

uint64_t sub_1000C45C0(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_10020B2D8))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *sub_1000C4604(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100015B70();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100017300(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return (v6 - 8);
}

uint64_t sub_1000C46DC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020B1B8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1000C478C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C47A4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *sub_1000C4864(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_1000C4864(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1000C48EC(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1000C48EC((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

BOOL sub_1000C48EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v2 == 3)
    {
      if (v3 < v4)
      {
LABEL_4:
        v6 = *a2;
        v5 = *(a2 + 8);
        v7 = *a2 >= v5 || *a2 + 1 >= v5;
        v8 = v6 >= v5;
        v9 = v5 < v6;
        if (*(a2 + 16) != 3)
        {
          v9 = v8;
        }

        if (*(a2 + 16))
        {
          v10 = v9;
        }

        else
        {
          v10 = v7;
        }

        return !v10;
      }
    }

    else if (v4 >= v3)
    {
      goto LABEL_4;
    }
  }

  else if (v4 >= v3 || v4 + 1 >= v3)
  {
    goto LABEL_4;
  }

  if ((v2 & 2) != 0)
  {
    v13 = *a1;
  }

  else
  {
    v13 = v4 + 1;
  }

  v14 = *a2;
  if ((*(a2 + 16) & 2) == 0)
  {
    ++v14;
  }

  if (v13 < v14)
  {
    return 1;
  }

  if (v14 == v13)
  {
    return (v2 & 1) + v3 - 1 < (*(a2 + 16) & 1) + *(a2 + 8) - 1;
  }

  return 0;
}

void sub_1000C49CC(void **a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_1000C4AA0(a1, *a1, a4, *a1 + 56 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        if (*v12)
        {
          sub_10000E984(*v12);
        }

        v12 += 7;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v13 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v13;
  a1[2] = a3;
}

void sub_1000C4A7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1000C4AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (a2 != a3)
  {
    *a5 = *a2;
    v7 = *(a2 + 8);
    *(a5 + 24) = *(a2 + 24);
    *(a5 + 8) = v7;
    result = *(a2 + 32);
    *(a5 + 32) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a5 + 48) = *(a2 + 48);
    a2 += 56;
    a5 += 56;
  }

  if (a6)
  {
    v9 = a6;
    v10 = a5;
    do
    {
      *v10 = *a7;
      v11 = *(a7 + 8);
      *(v10 + 24) = *(a7 + 24);
      *(v10 + 8) = v11;
      result = *(a7 + 32);
      *(v10 + 32) = result;
      *(a7 + 32) = 0;
      *(a7 + 40) = 0;
      *(v10 + 48) = *(a7 + 48);
      a7 += 56;
      v10 += 56;
      --v9;
    }

    while (v9);
  }

  if (a3 != a4)
  {
    v12 = a5 + 56 * a6;
    do
    {
      *v12 = *a3;
      v13 = *(a3 + 8);
      *(v12 + 24) = *(a3 + 24);
      *(v12 + 8) = v13;
      result = *(a3 + 32);
      *(v12 + 32) = result;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(v12 + 48) = *(a3 + 48);
      a3 += 56;
      v12 += 56;
    }

    while (a3 != a4);
  }

  return result;
}

void sub_1000C4B78(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1000C4C2C(a1, a3);
  if (v11 >= 0x24924924924924ALL)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(56 * v11);
  sub_1000C4CAC(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_1000C4C2C(uint64_t a1, uint64_t a2)
{
  v2 = 0x249249249249249;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x249249249249249 - v4 < a2 - v4 + v3)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = v3 + a2;
  if (v8 < 0x249249249249249)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void sub_1000C4CAC(void **a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_1000C4D80(a1, *a1, a4, *a1 + 56 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        if (*v12)
        {
          sub_10000E984(*v12);
        }

        v12 += 7;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v13 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v13;
  a1[2] = a3;
}

void sub_1000C4D5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1000C4D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (a2 != a3)
  {
    *a5 = *a2;
    v7 = *(a2 + 8);
    *(a5 + 24) = *(a2 + 24);
    *(a5 + 8) = v7;
    *(a5 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a5 + 48) = *(a2 + 48);
    a2 += 56;
    a5 += 56;
  }

  *a5 = *a7;
  v8 = *(a7 + 8);
  *(a5 + 24) = *(a7 + 24);
  *(a5 + 8) = v8;
  result = *(a7 + 32);
  *(a5 + 32) = result;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a5 + 48) = *(a7 + 48);
  if (a3 != a4)
  {
    v10 = a5 + 56 * a6;
    do
    {
      *v10 = *a3;
      v11 = *(a3 + 8);
      *(v10 + 24) = *(a3 + 24);
      *(v10 + 8) = v11;
      result = *(a3 + 32);
      *(v10 + 32) = result;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(v10 + 48) = *(a3 + 48);
      a3 += 56;
      v10 += 56;
    }

    while (a3 != a4);
  }

  return result;
}

uint64_t *sub_1000C4E3C(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10004EE4C(a1, a2);
  v4 = a2[12];
  if (v4)
  {
    sub_10000E984(v4);
  }

  operator delete(a2);
  return v3;
}

void **sub_1000C4E7C(void **a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 40);
    do
    {
      if (*v3)
      {
        sub_10000E984(*v3);
      }

      v3 += 7;
      --v2;
    }

    while (v2);
  }

  if (a1[2] && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000C4EEC(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = off_10020B2F8;
  sub_10004CE20(a1 + 24, a1);
  *(a1 + 560) = *a2;
  v6 = a2[1];
  *(a1 + 568) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 576) = 850045863;
  *(a1 + 632) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  sub_100010B0C(__p, "com.apple.diskimages.band_unmap");
  v7 = sub_100043D30();
  sub_10004FB6C((a1 + 640), __p, v7);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  sub_1000C5330(a1);
  *(a1 + 64) = *(*(a1 + 560) + 152);
  *(a1 + 72) = a3;
  sub_1000C53FC((a1 + 712), *(a1 + 16));
  if (*(a1 + 16))
  {
    operator new();
  }

  *&v8 = "DiskImageSparseBundle::DiskImageSparseBundle(const shared_ptr<SparseBundleBackend> &, size_t)";
  *(&v8 + 1) = 44;
  v9 = 0;
  sub_1000C54D8(__p, &v8);
  sub_100001FE8(v12, "Initialized bands array of size ", 32);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_1000CB0D8(__p);
  std::ios::~ios();
  sub_1000897CC();
}

void sub_1000C5294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1000CB5D8(&__p);
  sub_10004E9D0(v17 + 640);
  std::mutex::~mutex((v17 + 576));
  v20 = *(v17 + 568);
  if (v20)
  {
    sub_10000E984(v20);
  }

  sub_1000CB65C(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C5330(uint64_t a1)
{
  result = sub_1000C5648(*(a1 + 560) + 24);
  if (result)
  {
    *&v4 = "DiskImageSparseBundle::init_bands_array_size()";
    *(&v4 + 1) = 44;
    v5 = 0;
    sub_1000C56EC(v6, &v4);
    sub_100001FE8(v7, "Mounted on AFP, max open bands is set to ", 41);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000CBA10(v6);
    result = std::ios::~ios();
    v3 = 3;
  }

  else
  {
    v3 = 64;
  }

  *(a1 + 16) = v3;
  return result;
}

void sub_1000C53E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000C5814(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000C53FC(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_1000CABC4(result, a2);
    }

    sub_100015B70();
  }

  return result;
}

void sub_1000C54C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000CACC0(va);
  _Unwind_Resume(a1);
}

void *sub_1000C54D8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DA1C8(a1, a2);
  *a1 = off_10020B4B0;
  a1[45] = &off_10020B5B0;
  a1[46] = &off_10020B5D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020B4B0;
  a1[45] = off_10020B538;
  a1[46] = off_10020B560;
  return a1;
}

void sub_1000C55DC(_Unwind_Exception *a1)
{
  sub_1000CB0D8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C5600(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CB0D8(a1);
  std::ios::~ios();
  return a1;
}

BOOL sub_1000C5648(uint64_t a1)
{
  sub_100151E60(a1);
  if (v7 < 0)
  {
    v2 = v6 == 5 && *v5 == 1718642273 && v5[4] == 115;
    operator delete(v5);
  }

  else
  {
    return v7 == 5 && v5 == 1718642273 && BYTE4(v5) == 115;
  }

  return v2;
}

void *sub_1000C56EC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DA290(a1, a2);
  *a1 = off_10020B6D0;
  a1[45] = &off_10020B7D0;
  a1[46] = &off_10020B7F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020B6D0;
  a1[45] = off_10020B758;
  a1[46] = off_10020B780;
  return a1;
}

void sub_1000C57F0(_Unwind_Exception *a1)
{
  sub_1000CBA10(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C5814(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CBA10(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000C5858(uint64_t a1)
{
  v10 = 0;
  sub_10004FEB8(a1 + 352, 0, v11);
  v2 = *(a1 + 712);
  v3 = *(a1 + 720);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      sub_100096290(&v8, v2);
      if (v9 && (*(v9 + 68) & 1) != 0)
      {
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 1174405120;
        v6[2] = sub_1000C59C0;
        v6[3] = &unk_10020B3C8;
        sub_100096290(v7, &v8);
        v7[3] = &v10;
        sub_10004FC88(v11, v6);
        ++v4;
        sub_1000961CC(v7);
      }

      sub_1000961CC(&v8);
      v2 += 24;
    }

    while (v2 != v3);
  }

  sub_10004FE34(v11);
  return atomic_load(&v10);
}

void sub_1000C59B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100001A14(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000C59C0(uint64_t a1)
{
  if (sub_1000E9608())
  {
    *&v3 = "size_t> DiskImageSparseBundle::flush_open_bands()_block_invoke";
    *(&v3 + 1) = 47;
    v4 = 2;
    sub_1000C5A8C(v5, &v3);
    sub_100001FE8(v6, "Flushing ", 9);
    sub_1000960B0(v6, *(a1 + 40));
    std::ostream::~ostream();
    sub_1000CC1A8(v5);
    std::ios::~ios();
  }

  result = sub_100095E08(*(a1 + 40));
  if (result)
  {
    atomic_store(result, *(a1 + 56));
  }

  return result;
}

void sub_1000C5A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000C5BB4(va);
  _Unwind_Resume(a1);
}

void *sub_1000C5A8C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DA358(a1, a2);
  *a1 = off_10020B8F0;
  a1[45] = &off_10020B9F0;
  a1[46] = &off_10020BA18;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020B8F0;
  a1[45] = off_10020B978;
  a1[46] = off_10020B9A0;
  return a1;
}

void sub_1000C5B90(_Unwind_Exception *a1)
{
  sub_1000CC1A8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C5BB4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CC1A8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000C5C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000E9608())
  {
    *&v7 = "int DiskImageSparseBundle::flush(DiskImage::Context &, di_flush_mode)";
    *(&v7 + 1) = 32;
    v8 = 2;
    sub_100070B68(v9, &v7);
    sub_100001FE8(v10, "Starting flush", 14);
    std::ostream::~ostream();
    sub_100070D9C(v9);
    std::ios::~ios();
  }

  std::mutex::lock((a1 + 576));
  sub_10004C23C(a1 + 80);
  v5 = sub_1000C5858(a1);
  sub_10004C24C(a1 + 80);
  if (v5)
  {
    *&v7 = "int DiskImageSparseBundle::flush(DiskImage::Context &, di_flush_mode)";
    *(&v7 + 1) = 32;
    v8 = 16;
    sub_100044E3C(v9, &v7);
    sub_100001FE8(v10, "Flush failed - returning ", 25);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100047848(v9);
    std::ios::~ios();
  }

  else
  {
    if (sub_1000E9608())
    {
      *&v7 = "int DiskImageSparseBundle::flush(DiskImage::Context &, di_flush_mode)";
      *(&v7 + 1) = 32;
      v8 = 2;
      sub_10008725C(v9, &v7);
      std::ostream::operator<<();
      sub_100001FE8(v10, " bands flushed, calling ", 24);
      sub_1001927A0(v10, a3);
      std::ostream::~ostream();
      sub_10008A8A4(v9);
      std::ios::~ios();
    }

    v5 = (*(**(a1 + 560) + 16))(*(a1 + 560), a3);
  }

  std::mutex::unlock((a1 + 576));
  return v5;
}

uint64_t *sub_1000C5E44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if ((*(*a1 + 40))(a1))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = v8 | 0x200;
  }

  else
  {
    v9 = v8;
  }

  while (1)
  {
    sub_1000C5FD4(a1, a2, v11);
    if (v11[1].__d_.__rep_)
    {
      sub_100096294(a4, v11);
      return sub_1000961CC(&v11[0].__d_.__rep_);
    }

    if (sub_10004C2D4(a1 + 208, a2))
    {
      break;
    }

    sub_1000961CC(&v11[0].__d_.__rep_);
  }

  sub_1000C6228(a1, a2, v9, a4);
  return sub_1000961CC(&v11[0].__d_.__rep_);
}

std::chrono::steady_clock::time_point sub_1000C5FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::chrono::steady_clock::time_point *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = *(a1 + 712);
  while (*(v7 + 16) != a2)
  {
    ++v6;
    v7 += 24;
    if (v4 == v6)
    {
      goto LABEL_14;
    }
  }

  sub_100096290(a3, v7);
  rep = a3[1].__d_.__rep_;
  if (!rep || *(rep + 32) != a2)
  {
    if (sub_1000E9608())
    {
      *&v10 = "DiskImageSparseBundle::find_band_in_array(uint64_t)";
      *(&v10 + 1) = 41;
      v11 = 2;
      sub_1000C6DF4(v12, &v10);
      sub_100001FE8(v13, "Band ", 5);
      *(&v13[1] + *(v13[0] - 24)) = *(&v13[1] + *(v13[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v13[1] + *(v13[0] - 24)) = *(&v13[1] + *(v13[0] - 24)) & 0xFFFFFFB5 | 2;
      sub_100001FE8(v13, " changed before retain completed", 32);
      std::ostream::~ostream();
      sub_1000CE008(v12);
      std::ios::~ios();
    }

    sub_1000961CC(&a3->__d_.__rep_);
LABEL_14:
    operator new();
  }

  if (sub_1000E9608())
  {
    *&v10 = "DiskImageSparseBundle::find_band_in_array(uint64_t)";
    *(&v10 + 1) = 41;
    v11 = 2;
    sub_1000C6C88(v12, &v10);
    sub_100001FE8(v13, "Found ", 6);
    sub_1000960B0(v13, a3[1].__d_.__rep_);
    sub_100001FE8(v13, " at index ", 10);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000CD870(v12);
    std::ios::~ios();
  }

  result.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *(a3->__d_.__rep_ + 16) = result;
  return result;
}

void sub_1000C6228(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (sub_1000E9608())
  {
    *&v11 = "DiskImageSparseBundle::open_band(uint64_t, int)";
    *(&v11 + 1) = 32;
    v12 = 2;
    sub_1000C65A4(v13, &v11);
    sub_100001FE8(v14, "Opening band ", 13);
    *(&v14[1] + *(v14[0] - 24)) = *(&v14[1] + *(v14[0] - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    *(&v14[1] + *(v14[0] - 24)) = *(&v14[1] + *(v14[0] - 24)) & 0xFFFFFFB5 | 2;
    std::ostream::~ostream();
    sub_1000CC940(v13);
    std::ios::~ios();
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1000C6710;
  v9[3] = &unk_10020B400;
  v9[4] = &v15;
  v9[5] = a1;
  v9[6] = a2;
  v10 = a3;
  sub_10004CE24(a1 + 24, v9);
  sub_1000C6754(a1, v16[3], a4);
  if (!a4[1])
  {
    v8 = 0;
    do
    {
      if (!v8 && sub_1000E9608())
      {
        *&v11 = "DiskImageSparseBundle::open_band(uint64_t, int)";
        *(&v11 + 1) = 32;
        v12 = 2;
        sub_10007C718(v13, &v11);
        sub_100001FE8(v14, "Failed to evict band to make room for ", 38);
        sub_1000960B0(v14, v16[3]);
        sub_100001FE8(v14, ", retrying", 10);
        std::ostream::~ostream();
        sub_10008214C(v13);
        std::ios::~ios();
      }

      usleep(0x3E8u);
      sub_1000961CC(a4);
      ++v8;
      sub_1000C6754(a1, v16[3], a4);
    }

    while (!a4[1]);
  }

  if (sub_1000E9608())
  {
    *&v11 = "DiskImageSparseBundle::open_band(uint64_t, int)";
    *(&v11 + 1) = 32;
    v12 = 2;
    sub_1000C6B1C(v13, &v11);
    sub_1000960B0(v14, a4[1]);
    sub_100001FE8(v14, " opened and replaced at attempt ", 32);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000CD0D8(v13);
    std::ios::~ios();
  }

  _Block_object_dispose(&v15, 8);
}

void sub_1000C653C(_Unwind_Exception *a1)
{
  sub_1000961CC(v1);
  _Block_object_dispose((v2 - 120), 8);
  _Unwind_Resume(a1);
}

void *sub_1000C65A4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DA420(a1, a2);
  *a1 = off_10020BB10;
  a1[45] = &off_10020BC10;
  a1[46] = &off_10020BC38;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020BB10;
  a1[45] = off_10020BB98;
  a1[46] = off_10020BBC0;
  return a1;
}

void sub_1000C66A8(_Unwind_Exception *a1)
{
  sub_1000CC940(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C66CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CC940(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000C6754(uint64_t a1@<X0>, std::chrono::steady_clock::time_point *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v22;
  __p = v22;
  v21 = xmmword_1001C1080;
  if (*(a1 + 16))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = atomic_load(*(*(a1 + 712) + v7));
      if (v9 == 1)
      {
        *&v18[0] = *(*(*(a1 + 712) + v7) + 16);
        *(&v18[0] + 1) = v8;
        v10 = __p + 16 * v21;
        if (v21 == *(&v21 + 1))
        {
          sub_1000DA740(&__p, v10, &v16, 1, v18);
        }

        else
        {
          *v10 = v18[0];
          *&v21 = v21 + 1;
        }
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < *(a1 + 16));
    v6 = __p;
    v11 = __p + 16 * v21;
    if (v21)
    {
      v12 = 126 - 2 * __clz(v21);
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v22;
  }

  v12 = 0;
LABEL_13:
  sub_1000CE508(v6, v11, v18, v12, 1);
  if (sub_1000E9608())
  {
    *&v16 = "DiskImageSparseBundle::replace_oldest_band(Band *)";
    *(&v16 + 1) = 42;
    v17 = 2;
    sub_100095F44(v18, &v16);
    sub_100001FE8(v19, "Looking for an evictable slot for ", 34);
    sub_1000960B0(v19, a2);
    std::ostream::~ostream();
    sub_10009D230(v18);
    std::ios::~ios();
  }

  if (!v21)
  {
LABEL_21:
    operator new();
  }

  v13 = (__p + 8);
  v14 = 16 * v21;
  while (1)
  {
    v15 = *v13;
    v13 += 2;
    sub_100096300((*(a1 + 712) + 24 * v15), a2, a3);
    if (a3[1])
    {
      break;
    }

    if (sub_1000E9608())
    {
      *&v16 = "DiskImageSparseBundle::replace_oldest_band(Band *)";
      *(&v16 + 1) = 42;
      v17 = 2;
      sub_1000C70CC(v18, &v16);
      sub_100001FE8(v19, "Failed placing new ", 19);
      sub_1000960B0(v19, a2);
      sub_100001FE8(v19, " at index ", 10);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_1000D0228(v18);
      std::ios::~ios();
    }

    sub_1000961CC(a3);
    v14 -= 16;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  if (sub_1000E9608())
  {
    *&v16 = "DiskImageSparseBundle::replace_oldest_band(Band *)";
    *(&v16 + 1) = 42;
    v17 = 2;
    sub_1000C6F60(v18, &v16);
    sub_100001FE8(v19, "Placed new ", 11);
    sub_1000960B0(v19, a2);
    sub_100001FE8(v19, " at index ", 10);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000CFA90(v18);
    std::ios::~ios();
  }

  sub_10004C898(a1 + 208, a2[4].__d_.__rep_, 1);
  if (*(&v21 + 1) && v22 != __p)
  {
    operator delete(__p);
  }
}

void sub_1000C6B04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100001A14(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1000C6B1C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DA4E8(a1, a2);
  *a1 = off_10020BD30;
  a1[45] = &off_10020BE30;
  a1[46] = &off_10020BE58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020BD30;
  a1[45] = off_10020BDB8;
  a1[46] = off_10020BDE0;
  return a1;
}

void sub_1000C6C20(_Unwind_Exception *a1)
{
  sub_1000CD0D8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C6C44(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CD0D8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C6C88(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DA5B0(a1, a2);
  *a1 = off_10020BF50;
  a1[45] = &off_10020C050;
  a1[46] = &off_10020C078;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020BF50;
  a1[45] = off_10020BFD8;
  a1[46] = off_10020C000;
  return a1;
}

void sub_1000C6D8C(_Unwind_Exception *a1)
{
  sub_1000CD870(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C6DB0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CD870(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C6DF4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DA678(a1, a2);
  *a1 = off_10020C170;
  a1[45] = &off_10020C270;
  a1[46] = &off_10020C298;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020C170;
  a1[45] = off_10020C1F8;
  a1[46] = off_10020C220;
  return a1;
}

void sub_1000C6EF8(_Unwind_Exception *a1)
{
  sub_1000CE008(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C6F1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CE008(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C6F60(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DA854(a1, a2);
  *a1 = off_10020C390;
  a1[45] = &off_10020C490;
  a1[46] = &off_10020C4B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020C390;
  a1[45] = off_10020C418;
  a1[46] = off_10020C440;
  return a1;
}

void sub_1000C7064(_Unwind_Exception *a1)
{
  sub_1000CFA90(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C7088(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CFA90(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C70CC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DA91C(a1, a2);
  *a1 = off_10020C5B0;
  a1[45] = &off_10020C6B0;
  a1[46] = &off_10020C6D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020C5B0;
  a1[45] = off_10020C638;
  a1[46] = off_10020C660;
  return a1;
}

void sub_1000C71D0(_Unwind_Exception *a1)
{
  sub_1000D0228(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C71F4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D0228(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000C7238(uint64_t a1)
{
  *a1 = off_10020B2F8;
  *&v8 = "DiskImageSparseBundle::~DiskImageSparseBundle()";
  *(&v8 + 1) = 45;
  v9 = 0;
  sub_1000C73E0(v10, &v8);
  sub_100001FE8(v11, "Closing bands", 13);
  std::ostream::~ostream();
  sub_1000D09C0(v10);
  std::ios::~ios();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      if (*(*(a1 + 712) + v4))
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_1000C754C;
        v7[3] = &unk_10020B420;
        v7[4] = a1;
        v7[5] = v3;
        sub_10004FC88((a1 + 416), v7);
        v2 = *(a1 + 16);
      }

      ++v3;
      v4 += 24;
    }

    while (v3 < v2);
  }

  sub_10004FDD4(a1 + 416, 0xFFFFFFFFFFFFFFFFLL);
  v10[0] = (a1 + 712);
  sub_1000CB5D8(v10);
  v10[0] = (a1 + 664);
  sub_100018720(v10);
  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  std::mutex::~mutex((a1 + 576));
  v5 = *(a1 + 568);
  if (v5)
  {
    sub_10000E984(v5);
  }

  sub_1000CB65C(a1 + 24);
  return a1;
}

void *sub_1000C73E0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DA9E4(a1, a2);
  *a1 = off_10020C7D0;
  a1[45] = &off_10020C8D0;
  a1[46] = &off_10020C8F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020C7D0;
  a1[45] = off_10020C858;
  a1[46] = off_10020C880;
  return a1;
}

void sub_1000C74E4(_Unwind_Exception *a1)
{
  sub_1000D09C0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C7508(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D09C0(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000C754C(uint64_t a1)
{
  if (sub_1000E9608())
  {
    *&v1 = "DiskImageSparseBundle::~DiskImageSparseBundle()_block_invoke";
    *(&v1 + 1) = 45;
    v2 = 2;
    sub_1000C76F4(&v3, &v1);
    sub_100001FE8(v4, "Background close of band at index ", 34);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000D1158(&v3);
    std::ios::~ios();
  }

  operator new();
}

void sub_1000C76C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000C7988(va);
  _Unwind_Resume(a1);
}

void *sub_1000C76F4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DAAAC(a1, a2);
  *a1 = off_10020C9F0;
  a1[45] = &off_10020CAF0;
  a1[46] = &off_10020CB18;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020C9F0;
  a1[45] = off_10020CA78;
  a1[46] = off_10020CAA0;
  return a1;
}

void sub_1000C77F8(_Unwind_Exception *a1)
{
  sub_1000D1158(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C781C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D1158(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C7860(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DAB74(a1, a2);
  *a1 = off_10020CC10;
  a1[45] = &off_10020CD10;
  a1[46] = &off_10020CD38;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020CC10;
  a1[45] = off_10020CC98;
  a1[46] = off_10020CCC0;
  return a1;
}

void sub_1000C7964(_Unwind_Exception *a1)
{
  sub_1000D18F0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C7988(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D18F0(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000C79D0(uint64_t a1)
{
  sub_1000C7238(a1);

  operator delete();
}

size_t sub_1000C7A08(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = 0;
  v8 = *(a1 + 64);
  v10 = a4[2];
  v9 = a4[3];
  v11 = v9 / v8;
  v21 = v8;
  v12 = v9 % v8;
  while (v10)
  {
    if (v10 >= v21 - v12)
    {
      v13 = v21 - v12;
    }

    else
    {
      v13 = v10;
    }

    sub_100093AE4(&v31, a4, v13, v7, v12, a4[4] - v7);
    sub_1000C5E44(a1, v11, a3, &v29);
    v14 = v30;
    if (v30)
    {
      v15 = *(v29 + 24);
      if (!*(*(a2 + 16) + 16 * v15))
      {
        goto LABEL_10;
      }

      if (sub_1000C7FE4(*(*(a2 + 16) + 16 * v15)))
      {
        v14 = v30;
LABEL_10:
        sub_100095C54(v14, v33);
      }

      sub_10002F320(&v31, v33);
      v16 = *(*(a2 + 16) + 16 * v15);
      sub_10002E310(v34, &v26);
      sub_10002DF68(v34, v23);
      if (a3)
      {
        v17 = sub_10000FEB4(v16);
      }

      else
      {
        v17 = sub_10000FDE0(v16);
      }

      v4 = v17;
      if (v25)
      {
        sub_10000E984(v25);
      }

      if (v24)
      {
        sub_10000E984(v24);
      }

      if (v28)
      {
        sub_10000E984(v28);
      }

      if (*(&v26 + 1))
      {
        sub_10000E984(*(&v26 + 1));
      }

      sub_1000157A4(v33);
      if (v4 != v13)
      {
        v18 = 0;
        goto LABEL_29;
      }

      v4 = v13;
    }

    else
    {
      if (sub_1000E9608())
      {
        *&v26 = "DiskImageSparseBundle::perform_io(ContextSparseBundle &, BOOL, const sg_entry &)";
        *(&v26 + 1) = 33;
        v27 = 2;
        sub_1000C807C(v33, &v26);
        sub_100001FE8(v35, "Band ", 5);
        *(&v35[1] + *(v35[0] - 24)) = *(&v35[1] + *(v35[0] - 24)) & 0xFFFFFFB5 | 8;
        std::ostream::operator<<();
        *(&v35[1] + *(v35[0] - 24)) = *(&v35[1] + *(v35[0] - 24)) & 0xFFFFFFB5 | 2;
        sub_100001FE8(v35, " doesn't exist, returning zeros", 31);
        std::ostream::~ostream();
        sub_1000D2088(v33);
        std::ios::~ios();
      }

      bzero((*a4 + v7), v13);
    }

    v12 = 0;
    v10 -= v13;
    v7 += v13;
    ++v11;
    v18 = 1;
LABEL_29:
    sub_1000961CC(&v29);
    if (v32)
    {
      sub_10000E984(v32);
    }

    if ((v18 & 1) == 0)
    {
      return v4;
    }
  }

  return a4[2];
}

void sub_1000C7D58(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 a43, int a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, uint64_t _1B0)
{
  if (a2)
  {
    sub_1000961CC(&a65);
    if (STACK[0x208])
    {
      sub_10000E984(STACK[0x208]);
    }

    if (a2 == 2)
    {
      v67 = __cxa_begin_catch(a1);
      *&a43 = "DiskImageSparseBundle::perform_io(ContextSparseBundle &, BOOL, const sg_entry &)";
      *(&a43 + 1) = 33;
      a45 = 16;
      sub_1000C81E8(&STACK[0x270], &a43);
      if (a14)
      {
        v68 = "Write error: ";
      }

      else
      {
        v68 = "Read error: ";
      }

      if (a14)
      {
        v69 = 13;
      }

      else
      {
        v69 = 12;
      }

      sub_100001FE8(&STACK[0x3D8], v68, v69);
      v70 = (*(*v67 + 16))(v67);
      v71 = strlen(v70);
      sub_100001FE8(&STACK[0x3D8], v70, v71);
      sub_100001FE8(&STACK[0x3D8], " (band ", 7);
      *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) = *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) = *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) & 0xFFFFFFB5 | 2;
      sub_100001FE8(&STACK[0x3D8], ", err ", 6);
      std::ostream::operator<<();
      sub_100001FE8(&STACK[0x3D8], ")", 1);
      sub_1000C8310(&STACK[0x270]);
      __cxa_end_catch();
      JUMPOUT(0x1000C7D14);
    }

    sub_100001A14(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000C7FD4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1000C7E2CLL);
  }

  JUMPOUT(0x1000C7FC4);
}

uint64_t sub_1000C7FE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = 1;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_10000E984(v3);
  }

  return v4;
}

void *sub_1000C807C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DAC3C(a1, a2);
  *a1 = off_10020CE30;
  a1[45] = &off_10020CF30;
  a1[46] = &off_10020CF58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020CE30;
  a1[45] = off_10020CEB8;
  a1[46] = off_10020CEE0;
  return a1;
}

void sub_1000C8180(_Unwind_Exception *a1)
{
  sub_1000D2088(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C81A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D2088(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C81E8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DAD04(a1, a2);
  *a1 = off_10020D050;
  a1[45] = &off_10020D150;
  a1[46] = &off_10020D178;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020D050;
  a1[45] = off_10020D0D8;
  a1[46] = off_10020D100;
  return a1;
}

void sub_1000C82EC(_Unwind_Exception *a1)
{
  sub_1000D2820(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8310(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D2820(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000C8354(uint64_t a1)
{
  v5 = 0;
  v2 = (a1 + 704);
  v4[0] = a1;
  v4[1] = &v5;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v7 = v4;
    v6 = &v7;
    std::__call_once(v2, &v6, sub_1000DADCC);
  }

  return v5;
}

size_t sub_1000C83BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000C8354(a1);
  if (v6)
  {
    if (v6 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = -v6;
    }

    return -v7;
  }

  else
  {
    v9 = sub_1000C7A08(a1, a2, 1, a3);
    v8 = v9;
    if ((v9 & 0x8000000000000000) != 0 && v9)
    {
      v10 = *(a2 + 8);
      *&v12 = "DiskImage::terminate()";
      *(&v12 + 1) = 20;
      v13 = 16;
      sub_1000D2D20(v14, &v12);
      sub_100001FE8(v15, "Encountered an inrecoverable I/O error, all future I/Os will be invalidated", 75);
      std::ostream::~ostream();
      sub_1000D2F54(v14);
      std::ios::~ios();
      atomic_store(1u, v10 + 8);
      (*(*v10 + 200))(v10);
      sub_100195BE8();
    }
  }

  return v8;
}

void sub_1000C84DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000D2E48(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1000C84F0(void **a1)
{
  v2 = (*(*a1[70] + 40))(a1[70]);
  if (v2 % ((*a1)[3])(a1))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001940(exception, "Size is not a multiple of block size", 0x16u);
  }

  return v2 / ((*a1)[3])(a1);
}

uint64_t sub_1000C85D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100096290(&v10, *(a1 + 712) + 24 * a2);
  v8 = v11 != 0;
  if (v11 && sub_100094604(v11, a4))
  {
    sub_1000961CC(&v10);
    return sub_100096CC0(*(a1 + 712) + 24 * a2, a3);
  }

  else
  {
    sub_1000961CC(&v10);
  }

  return v8;
}

void sub_1000C8674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000961CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8688(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_10004C2D4(a1 + 208, a2);
  if (v6)
  {
    if (sub_1000DB87C(a3) != *(a1 + 64))
    {
      if (sub_1000E9608())
      {
        *&v8 = "DiskImageSparseBundle::try_unmap_band_extents_without_list(uint64_t, const extents_set_t &)";
        *(&v8 + 1) = 58;
        v9 = 2;
        sub_1000C8C14(v10, &v8);
        sub_100001FE8(v11, "Unmapping band ", 15);
        *(&v11[1] + *(v11[0] - 24)) = *(&v11[1] + *(v11[0] - 24)) & 0xFFFFFFB5 | 8;
        std::ostream::operator<<();
        *(&v11[1] + *(v11[0] - 24)) = *(&v11[1] + *(v11[0] - 24)) & 0xFFFFFFB5 | 2;
        sub_100001FE8(v11, " directly (without list)", 24);
        std::ostream::~ostream();
        sub_1000D411C(v10);
        std::ios::~ios();
      }

      sub_10018E1AC(v10, a1 + 24, a2, 0, 0);
    }

    if (sub_1000E9608())
    {
      *&v8 = "DiskImageSparseBundle::try_unmap_band_extents_without_list(uint64_t, const extents_set_t &)";
      *(&v8 + 1) = 58;
      v9 = 2;
      sub_1000C8AA8(v10, &v8);
      sub_100001FE8(v11, "Unmapping band ", 15);
      *(&v11[1] + *(v11[0] - 24)) = *(&v11[1] + *(v11[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v11[1] + *(v11[0] - 24)) = *(&v11[1] + *(v11[0] - 24)) & 0xFFFFFFB5 | 2;
      sub_100001FE8(v11, " completely", 11);
      std::ostream::~ostream();
      sub_1000D3984(v10);
      std::ios::~ios();
    }

    sub_100094854(a1 + 24, a2);
    sub_10004C934(a1 + 208, a2);
  }

  return v6;
}

void sub_1000C89D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(exception_object);
    sub_10004C934(v13 + 208, v12);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_1000D461C(exception, v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000C8AA8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DB960(a1, a2);
  *a1 = off_10020D490;
  a1[45] = &off_10020D590;
  a1[46] = &off_10020D5B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020D490;
  a1[45] = off_10020D518;
  a1[46] = off_10020D540;
  return a1;
}

void sub_1000C8BAC(_Unwind_Exception *a1)
{
  sub_1000D3984(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8BD0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D3984(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C8C14(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DBA28(a1, a2);
  *a1 = off_10020D6B0;
  a1[45] = &off_10020D7B0;
  a1[46] = &off_10020D7D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020D6B0;
  a1[45] = off_10020D738;
  a1[46] = off_10020D760;
  return a1;
}

void sub_1000C8D18(_Unwind_Exception *a1)
{
  sub_1000D411C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8D3C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D411C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000C8D80(uint64_t a1, unint64_t a2, void *a3)
{
  do
  {
    while (1)
    {
      v6 = *(a1 + 16);
      if (!v6)
      {
        break;
      }

      v7 = 0;
      v8 = (*(a1 + 712) + 16);
      while (1)
      {
        v9 = *v8;
        v8 += 3;
        if (v9 == a2)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_9;
        }
      }

      if (v7 < 0)
      {
        break;
      }

      result = sub_1000C85D0(a1, v7, a2, a3);
      if (result)
      {
        return result;
      }

      usleep(0x3E8u);
    }

LABEL_9:
    result = sub_1000C8688(a1, a2, a3);
  }

  while (!result);
  return result;
}

uint64_t sub_1000C8E18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1000E9608())
  {
    *&v49 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
    *(&v49 + 1) = 32;
    v50 = 2;
    sub_1000C971C(&v42, &v49);
    sub_100001FE8(v48, "Starting unmap of ", 18);
    std::ostream::operator<<();
    sub_100001FE8(v48, " extents", 8);
    std::ostream::~ostream();
    sub_1000D49DC(&v42);
    std::ios::~ios();
  }

  v6 = a1[8];
  v41 = 0;
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  if (a1[43])
  {
    v7 = sub_1000C8354(a1);
    if (!v7)
    {
      sub_10004FEB8((a1 + 80), 0, &v49);
      if (a4)
      {
        v8 = 0;
        v9 = 0;
        v32 = a3;
        do
        {
          v10 = v8;
          v11 = *(a3 + 16 * v8);
          v12 = (*(*a1 + 24))(a1);
          v34 = v10;
          v13 = *(a3 + 16 * v10 + 8);
          v35 = v12 * v11;
          v14 = (*(*a1 + 24))(a1) * v13;
          if (sub_1000E9608())
          {
            *&v37 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
            *(&v37 + 1) = 32;
            v38 = 2;
            sub_1000C99F4(&v42, &v37);
            sub_100001FE8(v48, "Extent ", 7);
            std::ostream::operator<<();
            sub_100001FE8(v48, ": [", 3);
            v15 = v48[0];
            *(&v48[1] + *(v48[0] - 24)) |= 0x200u;
            *(&v48[1] + *(v15 - 24)) = *(&v48[1] + *(v15 - 24)) & 0xFFFFFFB5 | 8;
            std::ostream::operator<<();
            sub_100001FE8(v48, "-", 1);
            std::ostream::operator<<();
            sub_100001FE8(v48, "]", 1);
            v16 = v48[0];
            *(&v48[1] + *(v48[0] - 24)) &= ~0x200u;
            *(&v48[1] + *(v16 - 24)) = *(&v48[1] + *(v16 - 24)) & 0xFFFFFFB5 | 2;
            std::ostream::~ostream();
            sub_1000D590C(&v42);
            std::ios::~ios();
          }

          if (v14)
          {
            v17 = v35 / v6;
            v18 = v35 % v6;
            do
            {
              if (v9 != v17 && v39 != v40)
              {
                v42 = 0;
                v43 = &v42;
                v44 = 0x4002000000;
                v45 = sub_1000C9B60;
                v46 = sub_1000C9B9C;
                sub_1000DBD48(v47, &v39);
                v36[0] = _NSConcreteStackBlock;
                v36[1] = 0x40000000;
                v36[2] = sub_1000C9BA8;
                v36[3] = &unk_10020B448;
                v36[4] = &v42;
                v36[5] = a1;
                v36[6] = v9;
                v36[7] = &v41;
                sub_10004FC88(&v49, v36);
                sub_1000DBF90(&v39, v39, v40);
                _Block_object_dispose(&v42, 8);
                sub_1000285E0(v47, v47[1]);
              }

              if (v14 >= v6 - v18)
              {
                v19 = v6 - v18;
              }

              else
              {
                v19 = v14;
              }

              if (sub_1000BAAA8(a1[43], v17))
              {
                v42 = v18;
                v43 = (v19 + v18);
                LOBYTE(v44) = 2;
                if (v18 < v19 + v18)
                {
                  v20 = sub_1000DC038(&v39, &v42, &v42);
                  if (v21)
                  {
                    *&v37 = v20;
                    sub_1000DC0D4(&v39, &v37);
                    sub_1000DC1D4(&v39, &v37);
                  }

                  else
                  {
                    v22 = v40[0];
                    v23 = v40;
                    if (!v40[0])
                    {
                      goto LABEL_47;
                    }

                    v24 = v43 + (v44 & 1) - 1;
                    v23 = v40;
                    do
                    {
                      v25 = v22[4];
                      if ((v22[6] & 2) == 0)
                      {
                        ++v25;
                      }

                      v26 = v24 >= v25;
                      v27 = v24 >= v25;
                      if (!v26)
                      {
                        v23 = v22;
                      }

                      v22 = v22[v27];
                    }

                    while (v22);
                    v28 = *v23;
                    if (*v23)
                    {
                      do
                      {
                        v29 = v28;
                        v28 = v28[1];
                      }

                      while (v28);
                    }

                    else
                    {
LABEL_47:
                      do
                      {
                        v29 = v23[2];
                        v30 = *v29 == v23;
                        v23 = v29;
                      }

                      while (v30);
                    }

                    sub_1000DBFF0(&v39, &v42, v29);
                  }
                }

                v9 = v17;
              }

              v18 = 0;
              ++v17;
              v14 -= v19;
            }

            while (v14);
          }

          v8 = v34 + 1;
          a3 = v32;
        }

        while (v34 + 1 != a4);
      }

      else
      {
        v9 = 0;
      }

      if (v39 != v40)
      {
        sub_1000C8D80(a1, v9, &v39);
      }

      sub_10004FE34(&v49);
      if (sub_1000E9608())
      {
        *&v49 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
        *(&v49 + 1) = 32;
        v50 = 2;
        sub_1000CA054(&v42, &v49);
        sub_100001FE8(v48, "Unmap done", 10);
        std::ostream::~ostream();
        sub_1000D6FD4(&v42);
        std::ios::~ios();
      }

      v7 = atomic_load(&v41);
    }
  }

  else
  {
    *&v49 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
    *(&v49 + 1) = 32;
    v50 = 16;
    sub_1000C9888(&v42, &v49);
    sub_100001FE8(v48, "Unexpected unmap command received on read only image", 52);
    std::ostream::~ostream();
    sub_1000D5174(&v42);
    std::ios::~ios();
    v7 = 4294967277;
  }

  sub_1000285E0(&v39, v40[0]);
  return v7;
}

void sub_1000C94CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_1000CA17C(&a32);
  sub_1000285E0(&a28, a29);
  _Unwind_Resume(a1);
}

void *sub_1000C971C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DBAF0(a1, a2);
  *a1 = off_10020D8D0;
  a1[45] = &off_10020D9D0;
  a1[46] = &off_10020D9F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020D8D0;
  a1[45] = off_10020D958;
  a1[46] = off_10020D980;
  return a1;
}

void sub_1000C9820(_Unwind_Exception *a1)
{
  sub_1000D49DC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C9844(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D49DC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C9888(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DBBB8(a1, a2);
  *a1 = off_10020DAF0;
  a1[45] = &off_10020DBF0;
  a1[46] = &off_10020DC18;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020DAF0;
  a1[45] = off_10020DB78;
  a1[46] = off_10020DBA0;
  return a1;
}

void sub_1000C998C(_Unwind_Exception *a1)
{
  sub_1000D5174(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C99B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D5174(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C99F4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DBC80(a1, a2);
  *a1 = off_10020DD10;
  a1[45] = &off_10020DE10;
  a1[46] = &off_10020DE38;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020DD10;
  a1[45] = off_10020DD98;
  a1[46] = off_10020DDC0;
  return a1;
}

void sub_1000C9AF8(_Unwind_Exception *a1)
{
  sub_1000D590C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C9B1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D590C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C9B60(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void *sub_1000C9D7C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DBEC8(a1, a2);
  *a1 = off_10020DF30;
  a1[45] = &off_10020E030;
  a1[46] = &off_10020E058;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020DF30;
  a1[45] = off_10020DFB8;
  a1[46] = off_10020DFE0;
  return a1;
}

void sub_1000C9E80(_Unwind_Exception *a1)
{
  sub_1000D60A4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C9EA4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D60A4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C9EE8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DC6CC(a1, a2);
  *a1 = off_10020E150;
  a1[45] = &off_10020E250;
  a1[46] = &off_10020E278;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020E150;
  a1[45] = off_10020E1D8;
  a1[46] = off_10020E200;
  return a1;
}

void sub_1000C9FEC(_Unwind_Exception *a1)
{
  sub_1000D683C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA010(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D683C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000CA054(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DC794(a1, a2);
  *a1 = off_10020E370;
  a1[45] = &off_10020E470;
  a1[46] = &off_10020E498;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020E370;
  a1[45] = off_10020E3F8;
  a1[46] = off_10020E420;
  return a1;
}

void sub_1000CA158(_Unwind_Exception *a1)
{
  sub_1000D6FD4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA17C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D6FD4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000CA1C0(uint64_t a1)
{
  if (sub_1000E9608())
  {
    *&v6 = "void DiskImageSparseBundle::on_eject()";
    *(&v6 + 1) = 36;
    v7 = 2;
    sub_1000CA31C(v8, &v6);
    sub_100001FE8(v9, "Evicting all bands for eject", 28);
    std::ostream::~ostream();
    sub_1000D776C(v8);
    std::ios::~ios();
  }

  if (*(a1 + 16))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sub_100096300((*(a1 + 712) + v2), 0, v5);
      sub_1000961CC(v5);
      ++v3;
      v2 += 24;
    }

    while (v3 < *(a1 + 16));
  }

  sub_10004FDD4(a1 + 416, 0xFFFFFFFFFFFFFFFFLL);
  *&v6 = "void DiskImageSparseBundle::on_eject()";
  *(&v6 + 1) = 36;
  v7 = 0;
  sub_1000CA488(v8, &v6);
  sub_100001FE8(v9, "Sparse bundle ejected", 21);
  std::ostream::~ostream();
  sub_1000D7F04(v8);
  return std::ios::~ios();
}

void sub_1000CA2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000CA444(va);
  _Unwind_Resume(a1);
}

void *sub_1000CA31C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DC85C(a1, a2);
  *a1 = off_10020E590;
  a1[45] = &off_10020E690;
  a1[46] = &off_10020E6B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020E590;
  a1[45] = off_10020E618;
  a1[46] = off_10020E640;
  return a1;
}

void sub_1000CA420(_Unwind_Exception *a1)
{
  sub_1000D776C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA444(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D776C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000CA488(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DC924(a1, a2);
  *a1 = off_10020E7B0;
  a1[45] = &off_10020E8B0;
  a1[46] = &off_10020E8D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020E7B0;
  a1[45] = off_10020E838;
  a1[46] = off_10020E860;
  return a1;
}

void sub_1000CA58C(_Unwind_Exception *a1)
{
  sub_1000D7F04(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA5B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D7F04(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000CA5F4(uint64_t a1, uint64_t a2)
{
  result = sub_1000CA73C(a1, a2);
  if (!result)
  {
    if (((a2 + 4095) & 0xFFFFFFFFFFFFF000) < 0x200000000000001)
    {
      v5 = *(**(a1 + 560) + 56);

      return v5();
    }

    else
    {
      *&v6 = "int DiskImageSparseBundle::set_size(uint64_t)";
      *(&v6 + 1) = 35;
      v7 = 16;
      sub_1000CA918(v8, &v6);
      std::ostream::operator<<();
      sub_100001FE8(v9, " bytes are above the sparsebundle limit of ", 43);
      std::ostream::operator<<();
      sub_100001FE8(v9, " bytes", 6);
      std::ostream::~ostream();
      sub_1000D869C(v8);
      std::ios::~ios();
      return 4294967269;
    }
  }

  return result;
}

void sub_1000CA724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000CAA40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA73C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = (*(*a1 + 24))(a1) * v4;
  v6 = (*(*a1 + 24))(a1);
  v7 = (a2 + v6 - 1) / v6 * v6;
  if (v5 <= v7)
  {
    return 0;
  }

  v11[0] = v7 / (*(*a1 + 24))(a1);
  v11[1] = (v5 - v7) / (*(*a1 + 24))(a1);
  v8 = (*(*a1 + 144))(a1);
  v9 = (*(*a1 + 192))(a1, v8, v11, 1);
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  return v9;
}

void sub_1000CA900(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001982AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000CA918(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DC9EC(a1, a2);
  *a1 = off_10020E9D0;
  a1[45] = &off_10020EAD0;
  a1[46] = &off_10020EAF8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020E9D0;
  a1[45] = off_10020EA58;
  a1[46] = off_10020EA80;
  return a1;
}

void sub_1000CAA1C(_Unwind_Exception *a1)
{
  sub_1000D869C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000CAA40(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D869C(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000CABC4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_1000CAC1C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_100096290(a4, v8);
      v8 += 24;
      a4 += 24;
      v7 -= 24;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_1000961CC(v6);
      v6 += 3;
    }
  }

  return result;
}

void sub_1000CAC9C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 24);
    do
    {
      v4 = sub_1000961CC(v4) - 3;
      v2 += 24;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000CACC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_1000961CC((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000CAD10(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100015B70();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1000CABC4(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  sub_100096294(24 * v2, a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = 24 * v2 + *a1 - v7;
  sub_1000CAC1C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1000CACC0(&v13);
  return v12;
}

void sub_1000CAE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000CACC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CAE40(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CB0D8(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CAE8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CB0D8(v1);

  return std::ios::~ios();
}

void sub_1000CAEEC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CB0D8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CAF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CAF90(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000CAFFC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CB0D8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CB060(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CB0D8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CB0D8(uint64_t a1)
{
  *a1 = &off_10020B648;
  sub_1000CB244(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000CB244(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000CB3F4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000CB390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CB3BC(uint64_t a1)
{
  sub_1000CB0D8(a1);

  operator delete();
}

int *sub_1000CB3F4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 46;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 46;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_1000CB5D8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1000961CC(v4 - 3);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1000CB65C(uint64_t a1)
{
  sub_10004FE34(a1 + 392);
  v7 = (a1 + 352);
  sub_100018720(&v7);
  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  v2 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::condition_variable::~condition_variable((a1 + 272));
  std::mutex::~mutex((a1 + 208));
  sub_1000285E0(a1 + 184, *(a1 + 192));
  std::condition_variable::~condition_variable((a1 + 136));
  std::mutex::~mutex((a1 + 64));
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  return a1;
}

uint64_t sub_1000CB778(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CBA10(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CB7C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CBA10(v1);

  return std::ios::~ios();
}

void sub_1000CB824(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CBA10(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CB88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CB8C8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000CB934(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CBA10(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CB998(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CBA10(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CBA10(uint64_t a1)
{
  *a1 = &off_10020B868;
  sub_1000CBB7C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000CBB7C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000CBD2C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000CBCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CBCF4(uint64_t a1)
{
  sub_1000CBA10(a1);

  operator delete();
}

int *sub_1000CBD2C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 59;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 59;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CBF10(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CC1A8(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CBF5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CC1A8(v1);

  return std::ios::~ios();
}

void sub_1000CBFBC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CC1A8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CC024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CC060(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000CC0CC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CC1A8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CC130(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CC1A8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CC1A8(uint64_t a1)
{
  *a1 = &off_10020BA88;
  sub_1000CC314(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000CC314(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000CC4C4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000CC460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CC48C(uint64_t a1)
{
  sub_1000CC1A8(a1);

  operator delete();
}

int *sub_1000CC4C4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 80;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 80;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CC6A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CC940(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CC6F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CC940(v1);

  return std::ios::~ios();
}

void sub_1000CC754(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CC940(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CC7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CC7F8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000CC864(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CC940(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CC8C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CC940(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CC940(uint64_t a1)
{
  *a1 = &off_10020BCA8;
  sub_1000CCAAC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000CCAAC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000CCC5C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000CCBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CCC24(uint64_t a1)
{
  sub_1000CC940(a1);

  operator delete();
}

int *sub_1000CCC5C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 154;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 154;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CCE40(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CD0D8(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CCE8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CD0D8(v1);

  return std::ios::~ios();
}

void sub_1000CCEEC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CD0D8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CCF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CCF90(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000CCFFC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CD0D8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CD060(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CD0D8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CD0D8(uint64_t a1)
{
  *a1 = &off_10020BEC8;
  sub_1000CD244(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000CD244(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000CD3F4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000CD390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CD3BC(uint64_t a1)
{
  sub_1000CD0D8(a1);

  operator delete();
}

int *sub_1000CD3F4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 165;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 165;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CD5D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CD870(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CD624(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CD870(v1);

  return std::ios::~ios();
}

void sub_1000CD684(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CD870(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CD6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CD728(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000CD794(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CD870(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CD7F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CD870(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CD870(uint64_t a1)
{
  *a1 = &off_10020C0E8;
  sub_1000CD9DC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000CD9DC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000CDB8C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000CDB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CDB54(uint64_t a1)
{
  sub_1000CD870(a1);

  operator delete();
}

int *sub_1000CDB8C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 190;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 190;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CDD70(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CE008(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CDDBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CE008(v1);

  return std::ios::~ios();
}

void sub_1000CDE1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CE008(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CDE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CDEC0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000CDF2C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CE008(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CDF90(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CE008(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CE008(uint64_t a1)
{
  *a1 = &off_10020C308;
  sub_1000CE174(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000CE174(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000CE324((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000CE2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CE2EC(uint64_t a1)
{
  sub_1000CE008(a1);

  operator delete();
}

int *sub_1000CE324(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 194;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 194;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CE508(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v25 = *(a2 - 2);
        v26 = *v9;
        v27 = -1;
        if (v25 >= *v9)
        {
          v27 = 1;
        }

        if (v25 == *v9)
        {
          v28 = *(a2 - 1);
          v29 = *(v9 + 1);
          v30 = v28 >= v29;
          v31 = v28 == v29;
          v27 = -1;
          if (v30)
          {
            v27 = 1;
          }

          if (v31)
          {
            v27 = 0;
          }
        }

        if (v27 < 0)
        {
          v32 = *(v9 + 1);
          v33 = *(a2 - 1);
          *v9 = v25;
          *(v9 + 1) = v33;
          *(a2 - 2) = v26;
          *(a2 - 1) = v32;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = sub_1000CE994(v9, v9 + 2, v9 + 4);
      v34 = *(a2 - 2);
      v35 = *(v9 + 4);
      v36 = -1;
      if (v34 >= v35)
      {
        v36 = 1;
      }

      if (v34 == v35)
      {
        v37 = *(a2 - 1);
        v38 = *(v9 + 5);
        v30 = v37 >= v38;
        v39 = v37 == v38;
        v36 = -1;
        if (v30)
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
        *(v9 + 4) = v34;
        *(a2 - 2) = v35;
        v40 = *(v9 + 4);
        v41 = *(v9 + 5);
        *(v9 + 5) = *(a2 - 1);
        *(a2 - 1) = v41;
        v42 = *(v9 + 2);
        v43 = -1;
        if (v40 >= v42)
        {
          v43 = 1;
        }

        if (v40 == v42)
        {
          v44 = *(v9 + 5);
          v45 = *(v9 + 3);
          v30 = v44 >= v45;
          v46 = v44 == v45;
          v43 = -1;
          if (v30)
          {
            v43 = 1;
          }

          if (v46)
          {
            v43 = 0;
          }
        }

        if (v43 < 0)
        {
          v47 = *(v9 + 3);
          v48 = *(v9 + 5);
          *(v9 + 2) = v40;
          *(v9 + 3) = v48;
          *(v9 + 4) = v42;
          *(v9 + 5) = v47;
          v49 = *v9;
          v50 = -1;
          if (v40 >= *v9)
          {
            v50 = 1;
          }

          if (v40 == *v9)
          {
            v51 = *(v9 + 1);
            v30 = v48 >= v51;
            v52 = v48 == v51;
            v50 = -1;
            if (v30)
            {
              v50 = 1;
            }

            if (v52)
            {
              v50 = 0;
            }
          }

          if (v50 < 0)
          {
            v53 = *(v9 + 1);
            *v9 = v40;
            *(v9 + 1) = v48;
            *(v9 + 2) = v49;
            *(v9 + 3) = v53;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return sub_1000CEAE4(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_1000CED1C(v9, a2);
      }

      else
      {

        return sub_1000CEDDC(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_1000CF418(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[16 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      sub_1000CE994(&v9[16 * (v12 >> 1)], v9, a2 - 2);
      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1000CE994(v9, &v9[16 * (v12 >> 1)], a2 - 2);
      sub_1000CE994(v9 + 2, v14 - 2, a2 - 4);
      sub_1000CE994(v9 + 4, &v9[16 * v13 + 16], a2 - 6);
      sub_1000CE994(v14 - 2, v14, &v9[16 * v13 + 16]);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_28;
      }
    }

    v16 = *(v9 - 2);
    v17 = v16 == *v9;
    if (v16 >= *v9)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v17)
    {
      v19 = *(v9 - 1);
      v20 = *(v9 + 1);
      v21 = v19 == v20;
      v18 = v19 >= v20 ? 1 : -1;
      if (v21)
      {
        v18 = 0;
      }
    }

    if ((v18 & 0x80) == 0)
    {
      result = sub_1000CEE7C(v9, a2);
      v9 = result;
      goto LABEL_33;
    }

LABEL_28:
    v22 = sub_1000CF004(v9, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

    v24 = sub_1000CF16C(v9, v22);
    v9 = (v22 + 2);
    result = sub_1000CF16C(v22 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_31:
      result = sub_1000CE508(v8, v22, a3, -v11, a5 & 1);
      v9 = (v22 + 2);
LABEL_33:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return sub_1000CE994(v9, v9 + 2, a2 - 2);
}

uint64_t sub_1000CE994(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (*a2 == *a1)
  {
    v6 = a2[1];
    v7 = a1[1];
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = -1;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  v11 = *a3;
  v12 = -1;
  if (*a3 >= v3)
  {
    v12 = 1;
  }

  if (v5 < 0)
  {
    if (v11 == v3)
    {
      v18 = a3[1];
      v19 = a2[1];
      v8 = v18 >= v19;
      v20 = v18 == v19;
      v12 = -1;
      if (v8)
      {
        v12 = 1;
      }

      if (v20)
      {
        v12 = 0;
      }
    }

    if (v12 < 0)
    {
      v36 = a1[1];
      v37 = a3[1];
      *a1 = v11;
      a1[1] = v37;
      *a3 = v4;
      a3[1] = v36;
    }

    else
    {
      v21 = a1[1];
      v22 = a2[1];
      *a1 = v3;
      a1[1] = v22;
      *a2 = v4;
      a2[1] = v21;
      v23 = -1;
      if (*a3 >= v4)
      {
        v23 = 1;
      }

      if (*a3 == v4)
      {
        v24 = a3[1];
        v8 = v24 >= v21;
        v25 = v24 == v21;
        v23 = -1;
        if (v8)
        {
          v23 = 1;
        }

        if (v25)
        {
          v23 = 0;
        }
      }

      if (v23 < 0)
      {
        v26 = a3[1];
        *a2 = *a3;
        a2[1] = v26;
        *a3 = v4;
        a3[1] = v21;
      }
    }
  }

  else
  {
    if (v11 == v3)
    {
      v13 = a3[1];
      v14 = a2[1];
      v8 = v13 >= v14;
      v15 = v13 == v14;
      v16 = -1;
      if (v8)
      {
        v16 = 1;
      }

      if (v15)
      {
        v12 = 0;
      }

      else
      {
        v12 = v16;
      }
    }

    if ((v12 & 0x80) == 0)
    {
      return 0;
    }

    *a2 = v11;
    *a3 = v3;
    v27 = *a2;
    v28 = a2[1];
    a2[1] = a3[1];
    a3[1] = v28;
    v29 = *a1;
    v30 = -1;
    if (v27 >= *a1)
    {
      v30 = 1;
    }

    if (v27 == *a1)
    {
      v31 = a2[1];
      v32 = a1[1];
      v8 = v31 >= v32;
      v33 = v31 == v32;
      v30 = -1;
      if (v8)
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
      v34 = a1[1];
      v35 = a2[1];
      *a1 = v27;
      a1[1] = v35;
      *a2 = v29;
      a2[1] = v34;
    }
  }

  return 1;
}

uint64_t sub_1000CEAE4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_1000CE994(a1, a2, a3);
  v11 = *a3;
  v12 = -1;
  if (*a4 >= *a3)
  {
    v12 = 1;
  }

  if (*a4 == *a3)
  {
    v13 = a4[1];
    v14 = a3[1];
    v15 = v13 >= v14;
    v16 = v13 == v14;
    v12 = -1;
    if (v15)
    {
      v12 = 1;
    }

    if (v16)
    {
      v12 = 0;
    }
  }

  if (v12 < 0)
  {
    *a3 = *a4;
    *a4 = v11;
    v17 = *a3;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a2;
    v20 = -1;
    if (v17 >= *a2)
    {
      v20 = 1;
    }

    if (v17 == *a2)
    {
      v21 = a3[1];
      v22 = a2[1];
      v15 = v21 >= v22;
      v23 = v21 == v22;
      v20 = -1;
      if (v15)
      {
        v20 = 1;
      }

      if (v23)
      {
        v20 = 0;
      }
    }

    if (v20 < 0)
    {
      *a2 = v17;
      *a3 = v19;
      v24 = *a2;
      v25 = a2[1];
      a2[1] = a3[1];
      a3[1] = v25;
      v26 = *a1;
      v27 = -1;
      if (v24 >= *a1)
      {
        v27 = 1;
      }

      if (v24 == *a1)
      {
        v28 = a2[1];
        v29 = a1[1];
        v15 = v28 >= v29;
        v30 = v28 == v29;
        v27 = -1;
        if (v15)
        {
          v27 = 1;
        }

        if (v30)
        {
          v27 = 0;
        }
      }

      if (v27 < 0)
      {
        v31 = a1[1];
        v32 = a2[1];
        *a1 = v24;
        a1[1] = v32;
        *a2 = v26;
        a2[1] = v31;
      }
    }
  }

  v33 = *a4;
  v34 = -1;
  if (*a5 >= *a4)
  {
    v34 = 1;
  }

  if (*a5 == *a4)
  {
    v35 = a5[1];
    v36 = a4[1];
    v15 = v35 >= v36;
    v37 = v35 == v36;
    v34 = -1;
    if (v15)
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
    *a4 = *a5;
    *a5 = v33;
    v38 = *a4;
    v39 = a4[1];
    a4[1] = a5[1];
    a5[1] = v39;
    v40 = *a3;
    v41 = -1;
    if (v38 >= *a3)
    {
      v41 = 1;
    }

    if (v38 == *a3)
    {
      v42 = a4[1];
      v43 = a3[1];
      v15 = v42 >= v43;
      v44 = v42 == v43;
      v41 = -1;
      if (v15)
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
      *a3 = v38;
      *a4 = v40;
      v45 = *a3;
      v46 = a3[1];
      a3[1] = a4[1];
      a4[1] = v46;
      v47 = *a2;
      v48 = -1;
      if (v45 >= *a2)
      {
        v48 = 1;
      }

      if (v45 == *a2)
      {
        v49 = a3[1];
        v50 = a2[1];
        v15 = v49 >= v50;
        v51 = v49 == v50;
        v48 = -1;
        if (v15)
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
        *a2 = v45;
        *a3 = v47;
        v52 = *a2;
        v53 = a2[1];
        a2[1] = a3[1];
        a3[1] = v53;
        v54 = *a1;
        v55 = -1;
        if (v52 >= *a1)
        {
          v55 = 1;
        }

        if (v52 == *a1)
        {
          v56 = a2[1];
          v57 = a1[1];
          v15 = v56 >= v57;
          v58 = v56 == v57;
          v55 = -1;
          if (v15)
          {
            v55 = 1;
          }

          if (v58)
          {
            v55 = 0;
          }
        }

        if (v55 < 0)
        {
          v59 = a1[1];
          v60 = a2[1];
          *a1 = v52;
          a1[1] = v60;
          *a2 = v54;
          a2[1] = v59;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_1000CED1C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        v7 = *v4;
        if (v6 >= *v4)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (v6 == *v4)
        {
          v9 = v4[3];
          v10 = v4[1];
          v11 = v9 == v10;
          v8 = v9 >= v10 ? 1 : -1;
          if (v11)
          {
            v8 = 0;
          }
        }

        if (v8 < 0)
        {
          v12 = v4[3];
          v13 = v3;
          while (1)
          {
            v14 = result + v13;
            v15 = *(result + v13 + 8);
            *(v14 + 2) = v7;
            *(v14 + 3) = v15;
            if (!v13)
            {
              break;
            }

            v7 = *(v14 - 2);
            if (v6 >= v7)
            {
              v16 = 1;
            }

            else
            {
              v16 = -1;
            }

            if (v6 == v7)
            {
              v17 = *(result + v13 - 8);
              v18 = v12 == v17;
              if (v12 >= v17)
              {
                v16 = 1;
              }

              else
              {
                v16 = -1;
              }

              if (v18)
              {
                v16 = 0;
              }
            }

            v13 -= 16;
            if ((v16 & 0x80) == 0)
            {
              v19 = (result + v13 + 16);
              goto LABEL_28;
            }
          }

          v19 = result;
LABEL_28:
          *v19 = v6;
          v19[1] = v12;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t *sub_1000CEDDC(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 3;
      do
      {
        v4 = v2;
        v5 = result[2];
        v6 = *result;
        if (v5 >= *result)
        {
          v7 = 1;
        }

        else
        {
          v7 = -1;
        }

        if (v5 == *result)
        {
          v8 = result[3];
          v9 = result[1];
          v10 = v8 == v9;
          v7 = v8 >= v9 ? 1 : -1;
          if (v10)
          {
            v7 = 0;
          }
        }

        if (v7 < 0)
        {
          v11 = result[3];
          v12 = v3;
          do
          {
            v13 = *(v12 - 2);
            *(v12 - 1) = v6;
            *v12 = v13;
            v6 = *(v12 - 5);
            if (v5 >= v6)
            {
              v14 = 1;
            }

            else
            {
              v14 = -1;
            }

            if (v5 == v6)
            {
              v15 = *(v12 - 4);
              v16 = v11 == v15;
              if (v11 >= v15)
              {
                v14 = 1;
              }

              else
              {
                v14 = -1;
              }

              if (v16)
              {
                v14 = 0;
              }
            }

            v12 -= 2;
          }

          while (v14 < 0);
          *(v12 - 1) = v5;
          *v12 = v11;
        }

        v2 = v4 + 2;
        v3 += 2;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

void *sub_1000CEE7C(void *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
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
    v7 = *(a2 - 1);
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
      v16 = v11[2];
      v11 += 2;
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
        v19 = v15[3];
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
    v10 = a1 + 2;
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

      v10 += 2;
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
      v23 = *(v22 - 2);
      v22 -= 2;
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
        v26 = *(a2 - 1);
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

  if (v11 < v22)
  {
    v28 = *v11;
    v29 = *v22;
    do
    {
      v30 = v11[1];
      v31 = v22[1];
      *v11 = v29;
      v11[1] = v31;
      *v22 = v28;
      v22[1] = v30;
      v32 = v11;
      do
      {
        v33 = v11[2];
        v11 += 2;
        v28 = v33;
        v34 = v2 == v33;
        if (v2 >= v33)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        if (v34)
        {
          v36 = v32[3];
          v37 = v3 == v36;
          v35 = v3 >= v36 ? 1 : -1;
          if (v37)
          {
            v35 = 0;
          }
        }

        v32 = v11;
      }

      while ((v35 & 0x80) == 0);
      v38 = v22;
      do
      {
        v39 = *(v22 - 2);
        v22 -= 2;
        v29 = v39;
        v40 = v2 == v39;
        if (v2 >= v39)
        {
          v41 = 1;
        }

        else
        {
          v41 = -1;
        }

        if (v40)
        {
          v42 = *(v38 - 1);
          v43 = v3 == v42;
          v41 = v3 >= v42 ? 1 : -1;
          if (v43)
          {
            v41 = 0;
          }
        }

        v38 = v22;
      }

      while (v41 < 0);
    }

    while (v11 < v22);
  }

  if (v11 - 2 != a1)
  {
    *a1 = *(v11 - 1);
  }

  *(v11 - 2) = v2;
  *(v11 - 1) = v3;
  return v11;
}

uint64_t *sub_1000CF004(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (v5 == v3)
    {
      v7 = a1[v2 + 3];
      v8 = v7 == v4;
      v6 = v7 >= v4 ? 1 : -1;
      if (v8)
      {
        v6 = 0;
      }
    }

    v2 += 2;
  }

  while (v6 < 0);
  v9 = &a1[v2];
  if (v2 == 2)
  {
    while (v9 < a2)
    {
      v10 = a2 - 2;
      v16 = *(a2 - 2);
      v17 = v16 == v3;
      if (v16 >= v3)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = *(a2 - 1);
        v20 = v19 == v4;
        v18 = v19 >= v4 ? 1 : -1;
        if (v20)
        {
          v18 = 0;
        }
      }

      a2 -= 2;
      if (v18 < 0)
      {
        goto LABEL_39;
      }
    }

    v10 = a2;
  }

  else
  {
    v10 = a2;
    do
    {
      v11 = *(v10 - 2);
      v10 -= 2;
      v12 = v11 == v3;
      if (v11 >= v3)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (v12)
      {
        v14 = *(a2 - 1);
        v15 = v14 == v4;
        v13 = v14 >= v4 ? 1 : -1;
        if (v15)
        {
          v13 = 0;
        }
      }

      a2 = v10;
    }

    while ((v13 & 0x80) == 0);
  }

LABEL_39:
  if (v9 >= v10)
  {
    v22 = v9;
  }

  else
  {
    v21 = *v10;
    v22 = v9;
    v23 = v10;
    do
    {
      v24 = v22[1];
      v25 = v23[1];
      *v22 = v21;
      v22[1] = v25;
      *v23 = v5;
      v23[1] = v24;
      v26 = v22;
      do
      {
        v27 = v22[2];
        v22 += 2;
        v5 = v27;
        v28 = v27 == v3;
        if (v27 >= v3)
        {
          v29 = 1;
        }

        else
        {
          v29 = -1;
        }

        if (v28)
        {
          v30 = v26[3];
          v31 = v30 == v4;
          v29 = v30 >= v4 ? 1 : -1;
          if (v31)
          {
            v29 = 0;
          }
        }

        v26 = v22;
      }

      while (v29 < 0);
      v32 = v23;
      do
      {
        v33 = *(v23 - 2);
        v23 -= 2;
        v21 = v33;
        v34 = v33 == v3;
        if (v33 >= v3)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        if (v34)
        {
          v36 = *(v32 - 1);
          v37 = v36 == v4;
          v35 = v36 >= v4 ? 1 : -1;
          if (v37)
          {
            v35 = 0;
          }
        }

        v32 = v23;
      }

      while ((v35 & 0x80) == 0);
    }

    while (v22 < v23);
  }

  if (v22 - 2 != a1)
  {
    *a1 = *(v22 - 1);
  }

  *(v22 - 2) = v3;
  *(v22 - 1) = v4;
  return v22 - 2;
}

BOOL sub_1000CF16C(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_1000CE994(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        sub_1000CE994(a1, a1 + 2, a1 + 4);
        v32 = *(a2 - 2);
        v33 = a1[4];
        v34 = -1;
        if (v32 >= v33)
        {
          v34 = 1;
        }

        if (v32 == v33)
        {
          v35 = *(a2 - 1);
          v36 = a1[5];
          v10 = v35 >= v36;
          v37 = v35 == v36;
          v34 = -1;
          if (v10)
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
          a1[4] = v32;
          *(a2 - 2) = v33;
          v38 = a1[4];
          v39 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v39;
          v40 = a1[2];
          v41 = -1;
          if (v38 >= v40)
          {
            v41 = 1;
          }

          if (v38 == v40)
          {
            v42 = a1[5];
            v43 = a1[3];
            v10 = v42 >= v43;
            v44 = v42 == v43;
            v41 = -1;
            if (v10)
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
            v45 = a1[3];
            v46 = a1[5];
            a1[2] = v38;
            a1[3] = v46;
            a1[4] = v40;
            a1[5] = v45;
            v47 = *a1;
            v48 = -1;
            if (v38 >= *a1)
            {
              v48 = 1;
            }

            if (v38 == *a1)
            {
              v49 = a1[1];
              v10 = v46 >= v49;
              v50 = v46 == v49;
              v48 = -1;
              if (v10)
              {
                v48 = 1;
              }

              if (v50)
              {
                v48 = 0;
              }
            }

            if (v48 < 0)
            {
              v51 = a1[1];
              *a1 = v38;
              a1[1] = v46;
              a1[2] = v47;
              a1[3] = v51;
            }
          }
        }

        return 1;
      case 5:
        sub_1000CEAE4(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    v7 = -1;
    if (v5 >= *a1)
    {
      v7 = 1;
    }

    if (v5 == *a1)
    {
      v8 = *(a2 - 1);
      v9 = a1[1];
      v10 = v8 >= v9;
      v11 = v8 == v9;
      v7 = -1;
      if (v10)
      {
        v7 = 1;
      }

      if (v11)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      v12 = a1[1];
      v13 = *(a2 - 1);
      *a1 = v5;
      a1[1] = v13;
      *(a2 - 2) = v6;
      *(a2 - 1) = v12;
    }

    return 1;
  }

LABEL_19:
  v14 = a1 + 4;
  sub_1000CE994(a1, a1 + 2, a1 + 4);
  v15 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *v15;
    v19 = *v14;
    if (*v15 >= *v14)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (*v15 == *v14)
    {
      v21 = v15[1];
      v22 = v14[1];
      v23 = v21 == v22;
      v20 = v21 >= v22 ? 1 : -1;
      if (v23)
      {
        v20 = 0;
      }
    }

    if (v20 < 0)
    {
      v24 = v15[1];
      v25 = v16;
      while (1)
      {
        v26 = (a1 + v25);
        v27 = *(a1 + v25 + 40);
        v26[6] = v19;
        v26[7] = v27;
        if (v25 == -32)
        {
          break;
        }

        v19 = v26[2];
        if (v18 >= v19)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if (v18 == v19)
        {
          v29 = *(a1 + v25 + 24);
          v30 = v24 == v29;
          v28 = v24 >= v29 ? 1 : -1;
          if (v30)
          {
            v28 = 0;
          }
        }

        v25 -= 16;
        if ((v28 & 0x80) == 0)
        {
          v31 = (a1 + v25 + 48);
          goto LABEL_45;
        }
      }

      v31 = a1;
LABEL_45:
      *v31 = v18;
      v31[1] = v24;
      if (++v17 == 8)
      {
        return v15 + 2 == a2;
      }
    }

    v14 = v15;
    v16 += 16;
    v15 += 2;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

char *sub_1000CF418(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        sub_1000CF580(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (*v12 >= *a1)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        if (*v12 == *a1)
        {
          v15 = *(v12 + 1);
          v16 = *(a1 + 1);
          v17 = v15 == v16;
          v14 = v15 >= v16 ? 1 : -1;
          if (v17)
          {
            v14 = 0;
          }
        }

        if (v14 < 0)
        {
          v18 = *(v12 + 1);
          v19 = *(a1 + 1);
          *v12 = *a1;
          *(v12 + 1) = v19;
          *a1 = v13;
          *(a1 + 1) = v18;
          sub_1000CF580(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v20 = a2 - 16;
      do
      {
        v22 = *a1;
        v21 = *(a1 + 1);
        v23 = sub_1000CF6CC(a1, a4, v8);
        if (v20 == v23)
        {
          *v23 = v22;
          *(v23 + 1) = v21;
        }

        else
        {
          *v23 = *v20;
          *v20 = v22;
          *(v20 + 1) = v21;
          sub_1000CF75C(a1, (v23 + 16), a4, (v23 + 16 - a1) >> 4);
        }

        v20 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1000CF580(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        v11 = *v8 == v10;
        if (*v8 >= v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if (v11)
        {
          v13 = v8[1];
          v14 = v8[3];
          v15 = v13 >= v14;
          v16 = v13 == v14;
          v12 = -1;
          if (v15)
          {
            v12 = 1;
          }

          if (v16)
          {
            v12 = 0;
          }
        }

        if (v12 < 0)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v17 = *v8;
      v18 = *a4;
      v19 = -1;
      if (*v8 >= *a4)
      {
        v19 = 1;
      }

      if (*v8 == *a4)
      {
        v20 = v8[1];
        v21 = a4[1];
        v15 = v20 >= v21;
        v22 = v20 == v21;
        v19 = -1;
        if (v15)
        {
          v19 = 1;
        }

        if (v22)
        {
          v19 = 0;
        }
      }

      if ((v19 & 0x80) == 0)
      {
        v23 = a4[1];
        do
        {
          v24 = a4;
          a4 = v8;
          v25 = v8[1];
          *v24 = v17;
          v24[1] = v25;
          if (v5 < v7)
          {
            break;
          }

          v26 = (2 * v7) | 1;
          v8 = (result + 16 * v26);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v26;
          }

          else
          {
            v27 = v8[2];
            v28 = *v8 == v27;
            if (*v8 >= v27)
            {
              v29 = 1;
            }

            else
            {
              v29 = -1;
            }

            if (v28)
            {
              v30 = v8[1];
              v31 = v8[3];
              v32 = v30 == v31;
              v29 = v30 >= v31 ? 1 : -1;
              if (v32)
              {
                v29 = 0;
              }
            }

            if (v29 < 0)
            {
              v8 += 2;
            }

            else
            {
              v7 = v26;
            }
          }

          v17 = *v8;
          if (*v8 >= v18)
          {
            v33 = 1;
          }

          else
          {
            v33 = -1;
          }

          if (*v8 == v18)
          {
            v34 = v8[1];
            v35 = v34 == v23;
            if (v34 >= v23)
            {
              v33 = 1;
            }

            else
            {
              v33 = -1;
            }

            if (v35)
            {
              v33 = 0;
            }
          }
        }

        while ((v33 & 0x80) == 0);
        *a4 = v18;
        a4[1] = v23;
      }
    }
  }

  return result;
}

_OWORD *sub_1000CF6CC(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = v4 + 4;
      v8 = v4[4];
      v9 = v4[2];
      v10 = v9 == v8;
      if (v9 >= v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = v4[3];
        v13 = v4[5];
        v14 = v12 == v13;
        if (v12 >= v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
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

      if (v11 < 0)
      {
        v5 = v7;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = *v5;
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_1000CF75C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 16 * v4);
    v6 = (a2 - 16);
    v7 = *(a2 - 16);
    v8 = *v5;
    v9 = -1;
    if (*v5 >= v7)
    {
      v9 = 1;
    }

    if (*v5 == v7)
    {
      v10 = v5[1];
      v11 = *(a2 - 8);
      v12 = v10 >= v11;
      v13 = v10 == v11;
      v9 = -1;
      if (v12)
      {
        v9 = 1;
      }

      if (v13)
      {
        v9 = 0;
      }
    }

    if (v9 < 0)
    {
      v14 = *(a2 - 8);
      do
      {
        v15 = v6;
        v6 = v5;
        v16 = v5[1];
        *v15 = v8;
        v15[1] = v16;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 16 * v4);
        v8 = *v5;
        if (*v5 >= v7)
        {
          v17 = 1;
        }

        else
        {
          v17 = -1;
        }

        if (*v5 == v7)
        {
          v18 = v5[1];
          v19 = v18 == v14;
          if (v18 >= v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = -1;
          }

          if (v19)
          {
            v17 = 0;
          }
        }
      }

      while (v17 < 0);
      *v6 = v7;
      v6[1] = v14;
    }
  }

  return result;
}

uint64_t sub_1000CF7F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CFA90(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CF844(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CFA90(v1);

  return std::ios::~ios();
}

void sub_1000CF8A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CFA90(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CF90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CF948(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000CF9B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CFA90(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CFA18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CFA90(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CFA90(uint64_t a1)
{
  *a1 = &off_10020C528;
  sub_1000CFBFC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000CFBFC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000CFDAC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000CFD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CFD74(uint64_t a1)
{
  sub_1000CFA90(a1);

  operator delete();
}

int *sub_1000CFDAC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 218;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 218;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CFF90(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D0228(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CFFDC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D0228(v1);

  return std::ios::~ios();
}

void sub_1000D003C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D0228(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D00A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D00E0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000D014C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D0228(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D01B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D0228(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D0228(uint64_t a1)
{
  *a1 = &off_10020C748;
  sub_1000D0394(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000D0394(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000D0544((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000D04E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D050C(uint64_t a1)
{
  sub_1000D0228(a1);

  operator delete();
}

int *sub_1000D0544(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 222;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 222;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D0728(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D09C0(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D0774(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D09C0(v1);

  return std::ios::~ios();
}

void sub_1000D07D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D09C0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D083C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D0878(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000D08E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D09C0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D0948(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D09C0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D09C0(uint64_t a1)
{
  *a1 = &off_10020C968;
  sub_1000D0B2C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000D0B2C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000D0CDC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000D0C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D0CA4(uint64_t a1)
{
  sub_1000D09C0(a1);

  operator delete();
}

int *sub_1000D0CDC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 231;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 231;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D0EC0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D1158(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D0F0C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D1158(v1);

  return std::ios::~ios();
}

void sub_1000D0F6C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D1158(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D0FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D1010(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000D107C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D1158(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D10E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D1158(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D1158(uint64_t a1)
{
  *a1 = &off_10020CB88;
  sub_1000D12C4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000D12C4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000D1474((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000D1410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D143C(uint64_t a1)
{
  sub_1000D1158(a1);

  operator delete();
}

int *sub_1000D1474(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 235;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 235;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D1658(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D18F0(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D16A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D18F0(v1);

  return std::ios::~ios();
}

void sub_1000D1704(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D18F0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D176C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D17A8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000D1814(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D18F0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D1878(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D18F0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D18F0(uint64_t a1)
{
  *a1 = &off_10020CDA8;
  sub_1000D1A5C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000D1A5C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000D1C0C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000D1BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D1BD4(uint64_t a1)
{
  sub_1000D18F0(a1);

  operator delete();
}

int *sub_1000D1C0C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 237;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 237;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D1DF0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D2088(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D1E3C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D2088(v1);

  return std::ios::~ios();
}

void sub_1000D1E9C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D2088(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D1F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D1F40(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000D1FAC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D2088(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D2010(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D2088(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D2088(uint64_t a1)
{
  *a1 = &off_10020CFC8;
  sub_1000D21F4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000D21F4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000D23A4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000D2340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D236C(uint64_t a1)
{
  sub_1000D2088(a1);

  operator delete();
}

int *sub_1000D23A4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 284;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 284;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D2588(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D2820(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D25D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D2820(v1);

  return std::ios::~ios();
}

void sub_1000D2634(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D2820(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D269C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D26D8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000D2744(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D2820(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D27A8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D2820(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D2820(uint64_t a1)
{
  *a1 = &off_10020D1E8;
  sub_1000D298C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000D298C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000D2B3C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000D2AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D2B04(uint64_t a1)
{
  sub_1000D2820(a1);

  operator delete();
}

int *sub_1000D2B3C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 295;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 295;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000D2D20(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D2E8C(a1, a2);
  *a1 = off_10020D270;
  a1[45] = &off_10020D370;
  a1[46] = &off_10020D398;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020D270;
  a1[45] = off_10020D2F8;
  a1[46] = off_10020D320;
  return a1;
}

void sub_1000D2E24(_Unwind_Exception *a1)
{
  sub_1000D2F54(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000D2E48(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D2F54(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000D2E8C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020D408;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1000D2F3C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D2F54(uint64_t a1)
{
  *a1 = &off_10020D408;
  sub_1000D3394(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000D30C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D2F54(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D3128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D3164(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000D31D0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D2F54(v1);

  return std::ios::~ios();
}

void sub_1000D321C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D2F54(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D3280(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D2F54(v1);

  return std::ios::~ios();
}