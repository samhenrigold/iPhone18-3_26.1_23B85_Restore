void sub_23F1FC45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FC9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FCAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FCBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FCCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FCDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FCDF4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two8u]", 29, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F1FCED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1FCFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD014(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two16f]", 30, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F1FD0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1FD204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD234(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two32f]", 30, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F1FD318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1FD424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FDA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F1FDA7C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F1FDD88(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_23F1FDB7C(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v4 = *a2;
  v16[0] = *(a2 + 8);
  v3 = v16[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v4;
  *v12 = v3;
  *&v12[7] = *(v16 + 7);
  v13 = v5;
  memset(v16, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2851882D0[v9])(&v10, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11);
    return;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_13;
  }
}

void sub_23F1FDD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F1FDD88(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_23F1FDF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F1FDF38(unsigned int *a1, int a2)
{
  v6 = a2;
  v8[0] = 0;
  v8[1] = 0;
  value = v8;
  sub_23F2D2898(&value);
}

void sub_23F1FE218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(&a9);
  sub_23EF3AE8C(v11);
  _Unwind_Resume(a1);
}

void sub_23F1FE2CC(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v8 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v8;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *MEMORY[0x277CC4DE8];
  value = 0;
  if (v5 && CFDictionaryGetValueIfPresent(*a1, v5, &value))
  {
    v6 = value;
    if (value)
    {
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v6) == TypeID)
      {
        CFRetain(v6);
        sub_23F1FE738(&v11, v6);
      }
    }

    v9[0] = 0;
    v9[16] = 0;
  }

LABEL_12:
  *a2 = 0;
  a2[16] = 0;
}

void sub_23F1FE520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF3AE8C(v9 - 48);
  sub_23F061EB0(va);
  _Unwind_Resume(a1);
}

void sub_23F1FE60C(void *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_23F1FE738(&v4, v3);
}

void sub_23F1FE93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F1FE9BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F1FE9F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F1FEA18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1FEA78(uint64_t *a1, const void *a2, unsigned int *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3, a2);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_23EFEA754(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_23F1FEC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1FEC84(uint64_t *a1, const void *a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3, a2);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_23EFEA754(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_23F1FEE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1FEE90(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 340, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_12:
        qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = a2;
  v19 = *(a1 + 8);
  v12 = v19;
  if (atomic_load_explicit((v19 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v19 + 104), &v20, sub_23F202824);
  }

  if (v11 >= (*(v12 + 120) - *(v12 + 112)) >> 3)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 341, "idx < p_->GetCachedBaseAddress().size()", 0x27uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v13 = qword_27E396178, v14 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_23:
        qword_27E396190(*algn_27E396198, "idx < p_->GetCachedBaseAddress().size()", 39, &unk_23F3091D6, 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_27E396178;
      v14 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v16 = *v13;
      v15 = *(v13 + 8);
      v13 += 16;
      v16(v15, "idx < p_->GetCachedBaseAddress().size()", 39, &unk_23F3091D6, 0);
    }

    while (v13 != v14);
    if (byte_27E3961A0)
    {
      goto LABEL_23;
    }

LABEL_29:
    abort();
  }

LABEL_24:
  v17 = *(a1 + 8);
  v19 = v17;
  if (atomic_load_explicit((v17 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v17 + 104), &v20, sub_23F202824);
  }

  return *(*(v17 + 112) + 8 * v11);
}

void *sub_23F1FF194(void *result)
{
  *result = &unk_285188558;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_23F1FF228(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_23F2036F0(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_23F1FF324(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_23F2036F0(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_285188558;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_23F1FF43C(void *a1)
{
  sub_23F1FF324(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1FF474(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_23F2037F4(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_23F1FF570(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_23F2037F4(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_285188558;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_23F1FF688(void *a1)
{
  sub_23F1FF570(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F1FF6C0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 850045863;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0;
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 850045863;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0;
  }

  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = &unk_28518B6D8;
  IOSurface = CVPixelBufferGetIOSurface(*a2);
  sub_23F28EAA4(&v7, IOSurface, 1, 0);
}

void sub_23F1FF8BC(_Unwind_Exception *a1)
{
  sub_23F28ED4C(v2);
  v4 = *(v1 + 112);
  if (v4)
  {
    *(v1 + 120) = v4;
    operator delete(v4);
  }

  sub_23F2014A4(v1);
  _Unwind_Resume(a1);
}

void sub_23F1FF8E8(uint64_t a1, unsigned int *a2, OSType a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v5[2] = 0;
  sub_23F1FE60C(v5, a5);
}

void sub_23F2002DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
    if ((v30 & 1) == 0)
    {
LABEL_6:
      sub_23F200698(&a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void sub_23F200418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23EF3AE8C(v21 - 128);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F200450()
{
  if (*(v0 - 129) < 0)
  {
    operator delete(*(v0 - 152));
  }

  JUMPOUT(0x23F2004B0);
}

void sub_23F20046C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x23F2004B0);
}

void sub_23F2004AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_23EF41D10(va);
  sub_23EF3AE8C(&a22);
  _Unwind_Resume(a1);
}

void sub_23F2004C8()
{
  v1 = *(v0 - 128);
  *(v0 - 128) = 0;
  if (v1)
  {
    sub_23F302A54(v0 - 128, v1);
  }

  JUMPOUT(0x23F2004B0);
}

void *sub_23F2004E4(void *result)
{
  *result = &unk_285188558;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F200684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F200698(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = result;
    (**result)();
    return v1;
  }

  else if (*(result + 31) < 0)
  {
    v2 = result;
    operator delete(*(result + 8));
    return v2;
  }

  return result;
}

void sub_23F200720(void *a1)
{
  *a1 = &unk_285188558;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F2007C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 347, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_12:
        qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if (byte_27E3961A0)
    {
      goto LABEL_12;
    }

LABEL_18:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = *(a1 + 8);
  v13 = *(v11 + 144);
  v12 = *(v11 + 152);
  *a2 = &unk_28518B6D8;
  a2[1] = v13;
  a2[2] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }
}

size_t sub_23F200988(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 293, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v9 != v10);
    if (byte_27E3961A0)
    {
LABEL_19:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetWidth(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetWidth(v6);
}

size_t sub_23F200BC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 303, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v9 != v10);
    if (byte_27E3961A0)
    {
LABEL_19:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetHeight(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetHeight(v6);
}

size_t sub_23F200E00(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 313, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v9 != v10);
    if (byte_27E3961A0)
    {
LABEL_19:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetBytesPerRow(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetBytesPerRow(v6);
}

_DWORD *sub_23F20103C(_DWORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v6 = (a1 + 2);
  *&v14 = a3;
  *(&v14 + 1) = a4;
  sub_23F201650();
  v7 = qword_27E395DF0;
  if (!qword_27E395DF0)
  {
    goto LABEL_8;
  }

  v8 = &qword_27E395DF0;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v8 != &qword_27E395DF0 && *(v8 + 8) <= a2)
  {
    sub_23F201650();
    v17 = v14;
    v18 = ": ";
    v19 = 2;
    v11 = v8[5];
    v10 = v8 + 5;
    v9 = v11;
    v12 = *(v10 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = v10[1];
    }

    else
    {
      v9 = v10;
    }

    v20 = v9;
    v21 = v12;
    sub_23EF45AA0(&v17, v22, 0, 0, v6);
  }

  else
  {
LABEL_8:
    sub_23F201650();
    LODWORD(v19) = 0;
    sub_23F04D774(&v16, &v17, &v14);
    if (v19 == -1)
    {
      sub_23EF41D6C();
    }

    v16 = &v15;
    (off_285188418[v19])(&v16, &v17);
    if (v19 != -1)
    {
      (off_2851883E8[v19])(&v16, &v17);
    }
  }

  return a1;
}

void sub_23F2011C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2011E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2011F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void *sub_23F201208(void *a1, int *a2)
{
  v11 = 0;
  v14 = v10;
  v15 = "{";
  v16 = v10;
  v17 = "{";
  v18 = "{";
  v12.__r_.__value_.__r.__words[0] = &v14;
  sub_23EF42398(&v12);
  std::to_string(&v12, *a2);
  v14 = v10;
  v15 = &v12;
  v16 = v10;
  v17 = &v12;
  v18 = &v12;
  if (v11 == -1)
  {
    sub_23EF41D6C();
  }

  v13 = &v14;
  (off_285188400[v11])(&v13, v10);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v14 = v10;
  v15 = ",";
  v16 = v10;
  v17 = ",";
  v18 = ",";
  if (v11 == -1 || (v12.__r_.__value_.__r.__words[0] = &v14, (*(&off_285188480 + v11))(&v12, v10), v14 = v10, v15 = (a2 + 2), v16 = v10, v17 = (a2 + 2), v18 = (a2 + 2), v11 == -1) || (v12.__r_.__value_.__r.__words[0] = &v14, (off_285188498[v11])(&v12, v10), v14 = v10, v15 = "}", v16 = v10, v17 = "}", v18 = "}", v11 == -1))
  {
    sub_23EF41D6C();
  }

  v12.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_285188480 + v11))(&v12, v10);
  if (v11 == -1)
  {
    sub_23EF41D6C();
  }

  v14 = &v12;
  (off_285188418[v11])(__p, &v14, v10);
  if (v11 != -1)
  {
    (off_2851883E8[v11])(&v14, v10);
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  result = sub_23EF2F9B0(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_23F20144C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2014A4(uint64_t a1)
{
  std::mutex::~mutex((a1 + 40));
  result = a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23F201650()
{
  v1 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E395DE0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395DE0))
    {
      v0 = 0;
      operator new();
    }
  }
}

void sub_23F201F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x210]);
  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a79 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a80);
  if ((a79 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a77 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a78);
  if ((a77 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a75 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a76);
  if ((a75 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(a74);
  if ((a73 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a71 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(a72);
  if ((a71 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(a70);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a67 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(a68);
  if ((a67 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(a66);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(a60);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_13:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(a53);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_14:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_15:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_16:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_17:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(a25);
  if ((a23 & 0x80000000) == 0)
  {
LABEL_18:
    if ((a16 & 0x80000000) == 0)
    {
LABEL_38:
      __cxa_guard_abort(&qword_27E395DE0);
      _Unwind_Resume(a1);
    }

LABEL_37:
    operator delete(a11);
    __cxa_guard_abort(&qword_27E395DE0);
    _Unwind_Resume(a1);
  }

LABEL_36:
  operator delete(a18);
  if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  goto LABEL_37;
}

uint64_t sub_23F20214C(uint64_t a1, int a2, char *__s)
{
  *a1 = a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v6;
  if (v6)
  {
    memmove(v5, __s, v6);
  }

  *(v5 + v7) = 0;
  return a1;
}

void sub_23F202208(uint64_t *result, uint64_t a2)
{
  qword_27E395DF8 = 0;
  qword_27E395DF0 = 0;
  qword_27E395DE8 = &qword_27E395DF0;
  if (a2)
  {
    operator new();
  }
}

void sub_23F2023C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F202400(va);
  sub_23F202468(qword_27E395DF0);
  _Unwind_Resume(a1);
}

void *sub_23F202400(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 63) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 40));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_23F202468(char *a1)
{
  if (a1)
  {
    sub_23F202468(*a1);
    sub_23F202468(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void sub_23F2026E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F202768(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2027A0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2027C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F202824(CVPixelBufferRef ****a1)
{
  IOSurface = CVPixelBufferGetIOSurface(****a1);
  v2 = IOSurface;
  if (IOSurface)
  {
    CFRetain(IOSurface);
  }

  sub_23F2024E4(&buffer, v2);
}

void sub_23F202A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  operator delete(v10);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F202AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F202AE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285188440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F202B3C(uint64_t a1)
{
  *(a1 + 160) = &unk_28518B6D8;
  v2 = *(a1 + 176);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 64));
  v4 = *(a1 + 32);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

size_t sub_23F202C40(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2851883E8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F202D34(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2851883E8[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_23F202EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F202F50(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23F203190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F2033B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F203430(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F203468(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F20348C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F2034EC(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) + 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }

      v5 = 1;
    }

    else
    {
      if (v3 != 2 || *(a1 + 32))
      {
        goto LABEL_5;
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v5);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v6 = 1;
    v7 = 1;
  }

  CVPixelBufferLockBaseAddress(*a1, v6);
  *(a1 + 16) = v7;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_23F2035F0(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) + 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 1;
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v6);
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_19:
  CVPixelBufferLockBaseAddress(*a1, v7);
  *(a1 + 16) = v8;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void sub_23F2036F0(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) - 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }

      v5 = 1;
    }

    else
    {
      if (v3 != 2 || *(a1 + 32))
      {
        goto LABEL_5;
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v5);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v6 = 1;
    v7 = 1;
  }

  CVPixelBufferLockBaseAddress(*a1, v6);
  *(a1 + 16) = v7;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_23F2037F4(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) - 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 1;
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v6);
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_19:
  CVPixelBufferLockBaseAddress(*a1, v7);
  *(a1 + 16) = v8;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

size_t sub_23F2038F4(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_285188608[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F2039E8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr8u]", 29, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F203ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v9 = *(v7 - 104);
  *(v7 - 104) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9, a2, a3, a4);
  }

  v10 = *(v7 - 96);
  *(v7 - 96) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10, a2, a3, a4);
    sub_23F08B948(va);
    sub_23F08B948(va1);
    _Unwind_Resume(a1);
  }

  sub_23F08B948(va);
  sub_23F08B948(va1);
  _Unwind_Resume(a1);
}

void sub_23F21619C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F08B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2161B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F133F30(va);
  _Unwind_Resume(a1);
}

void sub_23F2161C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F131A04(va);
  _Unwind_Resume(a1);
}

void sub_23F2161D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F130B24(va);
  _Unwind_Resume(a1);
}

void sub_23F2161EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F13AEB0(va);
  _Unwind_Resume(a1);
}

void sub_23F216200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F133050(va);
  _Unwind_Resume(a1);
}

void sub_23F216214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F138988(va);
  _Unwind_Resume(a1);
}

void sub_23F216228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12E5F8(va);
  _Unwind_Resume(a1);
}

void sub_23F21623C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12ED68(va);
  _Unwind_Resume(a1);
}

void sub_23F216250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F13A744(va);
  _Unwind_Resume(a1);
}

void sub_23F216264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F08B8D0(va);
  _Unwind_Resume(a1);
}

void sub_23F216278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12B318(va);
  _Unwind_Resume(a1);
}

void sub_23F21628C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12D71C(va);
  _Unwind_Resume(a1);
}

void sub_23F2162A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F131294(va);
  _Unwind_Resume(a1);
}

void sub_23F2162B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12C0D0(va);
  _Unwind_Resume(a1);
}

void sub_23F2162C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F08B858(va);
  _Unwind_Resume(a1);
}

void sub_23F2162DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12DE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2162F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F138218(va);
  _Unwind_Resume(a1);
}

void sub_23F216304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F1390F4(va);
  _Unwind_Resume(a1);
}

void sub_23F216318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F137338(va);
  _Unwind_Resume(a1);
}

void sub_23F21632C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F139864(va);
  _Unwind_Resume(a1);
}

void sub_23F216340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F139FD4(va);
  _Unwind_Resume(a1);
}

void sub_23F216354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F13645C(va);
  _Unwind_Resume(a1);
}

void sub_23F216368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12B9F4(va);
  _Unwind_Resume(a1);
}

void sub_23F21637C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12C83C(va);
  _Unwind_Resume(a1);
}

void sub_23F216390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F137AA8(va);
  _Unwind_Resume(a1);
}

void sub_23F2163A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F13557C(va);
  _Unwind_Resume(a1);
}

void sub_23F2163B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F1337C0(va);
  _Unwind_Resume(a1);
}

void sub_23F2163CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F13B620(va);
  _Unwind_Resume(a1);
}

void sub_23F2163E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12CFAC(va);
  _Unwind_Resume(a1);
}

void sub_23F2163F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F132170(va);
  _Unwind_Resume(a1);
}

void sub_23F216408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F13BD90(va);
  _Unwind_Resume(a1);
}

void sub_23F21641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12FC48(va);
  _Unwind_Resume(a1);
}

void sub_23F216430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F1303B4(va);
  _Unwind_Resume(a1);
}

void sub_23F216444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F1346A0(va);
  _Unwind_Resume(a1);
}

void sub_23F216458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F136BCC(va);
  _Unwind_Resume(a1);
}

void sub_23F21646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F12F4D8(va);
  _Unwind_Resume(a1);
}

void sub_23F216480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F134E10(va);
  _Unwind_Resume(a1);
}

void sub_23F216494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F1328E0(va);
  _Unwind_Resume(a1);
}

void sub_23F2164A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_23F135CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F216560(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F2165D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F216690(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F216740()
{
  if ((atomic_load_explicit(&qword_27E395378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395378))
  {
    sub_23F2167DC();
  }

  if (byte_27E395377 >= 0)
  {
    return &qword_27E395360;
  }

  else
  {
    return qword_27E395360;
  }
}

void sub_23F2168A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2168DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F216914(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F216978(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F2169D8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F216A50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F216B08(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F216BB8()
{
  if ((atomic_load_explicit(&qword_27E395398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395398))
  {
    sub_23F216C54();
  }

  if (byte_27E395397 >= 0)
  {
    return &qword_27E395380;
  }

  else
  {
    return qword_27E395380;
  }
}

void sub_23F216D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F216D50(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two16u]", 30, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F216E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F216E70(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F216EA8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F216F0C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F216F6C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F216FE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21709C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21712C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F231BB0(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F2171A0()
{
  if ((atomic_load_explicit(&qword_27E3953B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3953B8))
  {
    sub_23F21723C();
  }

  if (byte_27E3953B7 >= 0)
  {
    return &qword_27E3953A0;
  }

  else
  {
    return qword_27E3953A0;
  }
}

void sub_23F217308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21733C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F217374(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F231BB0(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2173B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F217418(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F217490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F217548(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F2175F8()
{
  if ((atomic_load_explicit(&qword_27E3953D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3953D8))
  {
    sub_23F217694();
  }

  if (byte_27E3953D7 >= 0)
  {
    return &qword_27E3953C0;
  }

  else
  {
    return qword_27E3953C0;
  }
}

void sub_23F217760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F217794(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2177CC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F217830(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F217890(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F217908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2179C0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F217A70()
{
  if ((atomic_load_explicit(&qword_27E3953F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3953F8))
  {
    sub_23F217B0C();
  }

  if (byte_27E3953F7 >= 0)
  {
    return &qword_27E3953E0;
  }

  else
  {
    return qword_27E3953E0;
  }
}

void sub_23F217BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F217C08(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three8u]", 31, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F217CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F217D28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F217D60(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F217DC4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F217E24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F217E9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F217F54(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F218004()
{
  if ((atomic_load_explicit(&qword_27E395418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395418))
  {
    sub_23F2180A0();
  }

  if (byte_27E395417 >= 0)
  {
    return &qword_27E395400;
  }

  else
  {
    return qword_27E395400;
  }
}

void sub_23F21816C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21819C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three16u]", 32, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F218280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2182BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2182F4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F218358(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F2183B8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F218430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2184E8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F218578(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F23577C(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F2185EC()
{
  if ((atomic_load_explicit(&qword_27E395438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395438))
  {
    sub_23F218688();
  }

  if (byte_27E395437 >= 0)
  {
    return &qword_27E395420;
  }

  else
  {
    return qword_27E395420;
  }
}

void sub_23F218754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F218784(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three16f]", 32, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F218868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2188A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2188DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F23577C(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F218920(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE11EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE11EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE11EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE11EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F218980(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F2189F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F218AB0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F218B60()
{
  if ((atomic_load_explicit(&qword_27E395458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395458))
  {
    sub_23F218BFC();
  }

  if (byte_27E395457 >= 0)
  {
    return &qword_27E395440;
  }

  else
  {
    return qword_27E395440;
  }
}

void sub_23F218CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F218CF8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three32f]", 32, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F218DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F218E18(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F218E50(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F218EB4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE12EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE12EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE12EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE12EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F218F14(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F218F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F219044(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F2190F4()
{
  if ((atomic_load_explicit(&qword_27E395478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395478))
  {
    sub_23F219190();
  }

  if (byte_27E395477 >= 0)
  {
    return &qword_27E395460;
  }

  else
  {
    return qword_27E395460;
  }
}

void sub_23F21925C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21928C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four8u]", 30, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F219370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2193AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2193E4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F219448(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE13EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE13EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE13EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE13EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F2194A8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F219520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2195D8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F219688()
{
  if ((atomic_load_explicit(&qword_27E395498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395498))
  {
    sub_23F219724();
  }

  if (byte_27E395497 >= 0)
  {
    return &qword_27E395480;
  }

  else
  {
    return qword_27E395480;
  }
}

void sub_23F2197F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F219820(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four16u]", 31, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F219904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F219940(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F219978(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2199DC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE14EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE14EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE14EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE14EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F219A3C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F219AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F219B6C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F219BFC(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F238420(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F219C70()
{
  if ((atomic_load_explicit(&qword_27E3954B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3954B8))
  {
    sub_23F219D0C();
  }

  if (byte_27E3954B7 >= 0)
  {
    return &qword_27E3954A0;
  }

  else
  {
    return qword_27E3954A0;
  }
}

void sub_23F219DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F219E08(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four16f]", 31, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F219EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F219F28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F219F60(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F238420(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F219FA4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE15EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE15EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE15EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE15EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21A004(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21A07C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21A134(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21A1E4()
{
  if ((atomic_load_explicit(&qword_27E3954D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3954D8))
  {
    sub_23F21A280();
  }

  if (byte_27E3954D7 >= 0)
  {
    return &qword_27E3954C0;
  }

  else
  {
    return qword_27E3954C0;
  }
}

void sub_23F21A34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21A37C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four32f]", 31, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F21A460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21A49C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21A4D4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21A538(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE16EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE16EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE16EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE16EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21A598(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21A610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21A6C8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21A778()
{
  if ((atomic_load_explicit(&qword_27E3954F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3954F8))
  {
    sub_23F21A814();
  }

  if (byte_27E3954F7 >= 0)
  {
    return &qword_27E3954E0;
  }

  else
  {
    return qword_27E3954E0;
  }
}

void sub_23F21A8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21A914(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21A94C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21A9B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE17EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE17EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE17EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE17EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21AA10(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21AA88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21AB40(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21ABF0()
{
  if ((atomic_load_explicit(&qword_27E395518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395518))
  {
    sub_23F21AC8C();
  }

  if (byte_27E395517 >= 0)
  {
    return &qword_27E395500;
  }

  else
  {
    return qword_27E395500;
  }
}

void sub_23F21AD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21AD88(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr16u]", 30, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F21AE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21AEA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21AEE0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21AF44(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE18EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE18EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE18EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE18EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21AFA4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21B01C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21B0D4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21B164(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F23AF64(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F21B1D8()
{
  if ((atomic_load_explicit(&qword_27E395538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395538))
  {
    sub_23F21B274();
  }

  if (byte_27E395537 >= 0)
  {
    return &qword_27E395520;
  }

  else
  {
    return qword_27E395520;
  }
}

void sub_23F21B340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21B370(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr16f]", 30, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F21B454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21B490(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21B4C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F23AF64(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21B50C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE19EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE19EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE19EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE19EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21B56C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21B5E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21B69C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21B74C()
{
  if ((atomic_load_explicit(&qword_27E395558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395558))
  {
    sub_23F21B7E8();
  }

  if (byte_27E395557 >= 0)
  {
    return &qword_27E395540;
  }

  else
  {
    return qword_27E395540;
  }
}

void sub_23F21B8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21B8E4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr32f]", 30, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F21B9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21BA04(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21BA3C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21BAA0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE20EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE20EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE20EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE20EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21BB00(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21BB78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21BC30(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21BCE0()
{
  if ((atomic_load_explicit(&qword_27E395578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395578))
  {
    sub_23F21BD7C();
  }

  if (byte_27E395577 >= 0)
  {
    return &qword_27E395560;
  }

  else
  {
    return qword_27E395560;
  }
}

void sub_23F21BE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21BE78(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra16u]", 31, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F21BF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21BF98(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21BFD0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21C034(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21C094(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21C10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21C1C4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21C254(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F2405DC(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F21C2C8()
{
  if ((atomic_load_explicit(&qword_27E395598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395598))
  {
    sub_23F21C364();
  }

  if (byte_27E395597 >= 0)
  {
    return &qword_27E395580;
  }

  else
  {
    return qword_27E395580;
  }
}

void sub_23F21C430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21C460(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra16f]", 31, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F21C544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21C580(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21C5B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F2405DC(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21C5FC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21C65C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21C6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21C78C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21C83C()
{
  if ((atomic_load_explicit(&qword_27E3955B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3955B8))
  {
    sub_23F21C8D8();
  }

  if (byte_27E3955B7 >= 0)
  {
    return &qword_27E3955A0;
  }

  else
  {
    return qword_27E3955A0;
  }
}

void sub_23F21C9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21C9D4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra32f]", 31, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F21CAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21CAF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21CB2C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21CB90(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21CBF0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21CC68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21CD20(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21CDD0()
{
  if ((atomic_load_explicit(&qword_27E3955D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3955D8))
  {
    sub_23F21CE6C();
  }

  if (byte_27E3955D7 >= 0)
  {
    return &qword_27E3955C0;
  }

  else
  {
    return qword_27E3955C0;
  }
}

void sub_23F21CF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21CF68(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr16u]", 31, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F21D04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21D088(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21D0C0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21D124(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21D184(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21D1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21D2B4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21D344(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F245C64(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F21D3B8()
{
  if ((atomic_load_explicit(&qword_27E3955F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3955F8))
  {
    sub_23F21D454();
  }

  if (byte_27E3955F7 >= 0)
  {
    return &qword_27E3955E0;
  }

  else
  {
    return qword_27E3955E0;
  }
}

void sub_23F21D520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21D550(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr16f]", 31, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F21D634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21D670(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21D6A8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F245C64(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21D6EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21D74C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21D7C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21D87C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21D92C()
{
  if ((atomic_load_explicit(&qword_27E395618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395618))
  {
    sub_23F21D9C8();
  }

  if (byte_27E395617 >= 0)
  {
    return &qword_27E395600;
  }

  else
  {
    return qword_27E395600;
  }
}

void sub_23F21DA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21DAC4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr32f]", 31, &v9);
  sub_23EF42150(__p, &v9, 1uLL);
  sub_23F302CF4(a1, __p, a2);
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

void sub_23F21DBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21DBE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21DC1C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21DC80(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F21DCE0(int a1@<W0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  switch(a1)
  {
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];
      v486 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v4)
      {
        sub_23F085930(a2[1]);
      }

      v6 = (*(*v4 + 24))(v4);
      (*(*v6 + 24))(&v496);
      v7 = v496;
      v496 = 0;
      v500 = v7;
      if (v7)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 1);
      v399 = *(v498 + 16);
      *v490 = *v498;
      *&v490[16] = v399;
      v498 = 0;
      MEMORY[0x245CACD00]();
      *&v490[24] = *v490;
      *&v490[32] = *&v490[8];
      v400 = (*(MEMORY[0] + 104))(0);
      LOWORD(v491) = v400 & ((v400 >> 1) >> 15);
      v401 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v401->__on_zero_shared)(v401);
        std::__shared_weak_count::__release_weak(v401);
      }

      v402 = v496;
      v496 = 0;
      if (v402)
      {
        (*(*v402 + 8))(v402);
      }

      *a3 = &unk_285179288;
      v403 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v490[32], 2, &v490[40], 2, 1);
      v404 = v489 | 0x100000000;
      v190 = v491;
      if (!BYTE4(v489))
      {
        v404 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v403;
      v405 = v496;
      *(a3 + 24) = v404;
      *(a3 + 32) = v405;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      *(a3 + 56) = 1;
      goto LABEL_645;
    case 2:
      v120 = **a2;
      v121 = (*a2)[1];
      v486 = v121;
      if (v121)
      {
        atomic_fetch_add_explicit((v121 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v120)
      {
        sub_23F090714(a2[1]);
      }

      v122 = (*(*v120 + 24))(v120);
      (*(*v122 + 24))(&v496);
      v123 = v496;
      v496 = 0;
      v500 = v123;
      if (v123)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 2);
      v393 = *(v498 + 16);
      *v490 = *v498;
      *&v490[16] = v393;
      v498 = 0;
      MEMORY[0x245CACD00]();
      *&v490[24] = *v490;
      *&v490[32] = *&v490[8];
      v394 = (*(MEMORY[0] + 104))(0);
      LOWORD(v491) = v394 & ((v394 >> 1) >> 15);
      v395 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v395->__on_zero_shared)(v395);
        std::__shared_weak_count::__release_weak(v395);
      }

      v396 = v496;
      v496 = 0;
      if (v396)
      {
        (*(*v396 + 8))(v396);
      }

      *a3 = &unk_285179288;
      v302 = v487;
      v301 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      v303 = BYTE4(v489);
      v304 = 2;
      sub_23F28E5E0(&v496, &v490[32], 2, &v490[40], 2, 2);
      v170 = v491;
      v305 = (2 * v489);
      goto LABEL_528;
    case 3:
      v116 = **a2;
      v117 = (*a2)[1];
      v486 = v117;
      if (v117)
      {
        atomic_fetch_add_explicit((v117 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v116)
      {
        sub_23F1C5850(a2[1]);
      }

      v118 = (*(*v116 + 24))(v116);
      (*(*v118 + 24))(&v496);
      v119 = v496;
      v496 = 0;
      v500 = v119;
      if (v119)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 3);
      v386 = *(v498 + 16);
      *v490 = *v498;
      *&v490[16] = v386;
      v498 = 0;
      MEMORY[0x245CACD00]();
      *&v490[24] = *v490;
      *&v490[32] = *&v490[8];
      v387 = (*(MEMORY[0] + 104))(0);
      LOWORD(v491) = v387 & ((v387 >> 1) >> 15);
      v388 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v388->__on_zero_shared)(v388);
        std::__shared_weak_count::__release_weak(v388);
      }

      v389 = v496;
      v496 = 0;
      if (v389)
      {
        (*(*v389 + 8))(v389);
      }

      *a3 = &unk_285179288;
      v390 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v490[32], 2, &v490[40], 2, 2);
      v170 = v491;
      v391 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v391 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v390;
      v392 = v496;
      *(a3 + 24) = v391;
      *(a3 + 32) = v392;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 3;
      goto LABEL_631;
    case 4:
      v72 = **a2;
      v73 = (*a2)[1];
      v486 = v73;
      if (v73)
      {
        atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v72)
      {
        sub_23F1C609C(a2[1]);
      }

      v74 = (*(*v72 + 24))(v72);
      (*(*v74 + 24))(&v496);
      v75 = v496;
      v496 = 0;
      v500 = v75;
      if (v75)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 4);
      v297 = *(v498 + 16);
      *v490 = *v498;
      *&v490[16] = v297;
      v498 = 0;
      MEMORY[0x245CACD00]();
      *&v490[24] = *v490;
      *&v490[32] = *&v490[8];
      v298 = (*(MEMORY[0] + 104))(0);
      LOWORD(v491) = v298 & ((v298 >> 1) >> 15);
      v299 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v299->__on_zero_shared)(v299);
        std::__shared_weak_count::__release_weak(v299);
      }

      v300 = v496;
      v496 = 0;
      if (v300)
      {
        (*(*v300 + 8))(v300);
      }

      *a3 = &unk_285179288;
      v302 = v487;
      v301 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      v303 = BYTE4(v489);
      v304 = 4;
      sub_23F28E5E0(&v496, &v490[32], 2, &v490[40], 2, 4);
      v170 = v491;
      v305 = (4 * v489);
LABEL_528:
      v397 = v305 | 0x100000000;
      if (!v303)
      {
        v397 = 0;
      }

      *(a3 + 8) = v302;
      *(a3 + 16) = v301;
      v398 = v496;
      *(a3 + 24) = v397;
      *(a3 + 32) = v398;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      *(a3 + 56) = v304;
      goto LABEL_632;
    case 5:
      v104 = **a2;
      v105 = (*a2)[1];
      v486 = v105;
      if (v105)
      {
        atomic_fetch_add_explicit((v105 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v104)
      {
        sub_23F226364(&v487, a2[1]);
      }

      v106 = (*(*v104 + 24))(v104);
      (*(*v106 + 24))(&v496);
      v107 = v496;
      v496 = 0;
      v500 = v107;
      if (v107)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 5);
      v363 = *(v498 + 16);
      v362 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v363;
      *&v490[32] = v362;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v364 = (*(MEMORY[0] + 104))(0);
      v495 = v364 & ((v364 >> 1) >> 15);
      v365 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v365->__on_zero_shared)(v365);
        std::__shared_weak_count::__release_weak(v365);
      }

      v366 = v496;
      v496 = 0;
      if (v366)
      {
        (*(*v366 + 8))(v366);
      }

      *a3 = &unk_285179288;
      v367 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 1);
      v368 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v368 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v367;
      v369 = v496;
      *(a3 + 24) = v368;
      *(a3 + 32) = v369;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 5;
      goto LABEL_644;
    case 6:
      v68 = **a2;
      v69 = (*a2)[1];
      v486 = v69;
      if (v69)
      {
        atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v68)
      {
        sub_23F22660C(&v487, a2[1]);
      }

      v70 = (*(*v68 + 24))(v68);
      (*(*v70 + 24))(&v496);
      v71 = v496;
      v496 = 0;
      v500 = v71;
      if (v71)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 6);
      v290 = *(v498 + 16);
      v289 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v290;
      *&v490[32] = v289;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v291 = (*(MEMORY[0] + 104))(0);
      v495 = v291 & ((v291 >> 1) >> 15);
      v292 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v292->__on_zero_shared)(v292);
        std::__shared_weak_count::__release_weak(v292);
      }

      v293 = v496;
      v496 = 0;
      if (v293)
      {
        (*(*v293 + 8))(v293);
      }

      *a3 = &unk_285179288;
      v294 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v295 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v295 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v294;
      v296 = v496;
      *(a3 + 24) = v295;
      *(a3 + 32) = v296;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 6;
      goto LABEL_631;
    case 7:
      v48 = **a2;
      v49 = (*a2)[1];
      v486 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v48)
      {
        sub_23F22691C(&v487, a2[1]);
      }

      v50 = (*(*v48 + 24))(v48);
      (*(*v50 + 24))(&v496);
      v51 = v496;
      v496 = 0;
      v500 = v51;
      if (v51)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 7);
      v250 = *(v498 + 16);
      v249 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v250;
      *&v490[32] = v249;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v251 = (*(MEMORY[0] + 104))(0);
      v495 = v251 & ((v251 >> 1) >> 15);
      v252 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v252->__on_zero_shared)(v252);
        std::__shared_weak_count::__release_weak(v252);
      }

      v253 = v496;
      v496 = 0;
      if (v253)
      {
        (*(*v253 + 8))(v253);
      }

      *a3 = &unk_285179288;
      v254 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v255 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v255 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v254;
      v256 = v496;
      *(a3 + 24) = v255;
      *(a3 + 32) = v256;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 7;
      goto LABEL_631;
    case 8:
      v112 = **a2;
      v113 = (*a2)[1];
      v486 = v113;
      if (v113)
      {
        atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v112)
      {
        sub_23F226BBC(&v487, a2[1]);
      }

      v114 = (*(*v112 + 24))(v112);
      (*(*v114 + 24))(&v496);
      v115 = v496;
      v496 = 0;
      v500 = v115;
      if (v115)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 8);
      v379 = *(v498 + 16);
      v378 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v379;
      *&v490[32] = v378;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v380 = (*(MEMORY[0] + 104))(0);
      v495 = v380 & ((v380 >> 1) >> 15);
      v381 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v381->__on_zero_shared)(v381);
        std::__shared_weak_count::__release_weak(v381);
      }

      v382 = v496;
      v496 = 0;
      if (v382)
      {
        (*(*v382 + 8))(v382);
      }

      *a3 = &unk_285179288;
      v383 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v384 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v384 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v383;
      v385 = v496;
      *(a3 + 24) = v384;
      *(a3 + 32) = v385;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 8;
      goto LABEL_631;
    case 9:
      v100 = **a2;
      v101 = (*a2)[1];
      v486 = v101;
      if (v101)
      {
        atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v100)
      {
        sub_23F226ECC(&v487, a2[1]);
      }

      v102 = (*(*v100 + 24))(v100);
      (*(*v102 + 24))(&v496);
      v103 = v496;
      v496 = 0;
      v500 = v103;
      if (v103)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 9);
      v355 = *(v498 + 16);
      v354 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v355;
      *&v490[32] = v354;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v356 = (*(MEMORY[0] + 104))(0);
      v495 = v356 & ((v356 >> 1) >> 15);
      v357 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v357->__on_zero_shared)(v357);
        std::__shared_weak_count::__release_weak(v357);
      }

      v358 = v496;
      v496 = 0;
      if (v358)
      {
        (*(*v358 + 8))(v358);
      }

      *a3 = &unk_285179288;
      v359 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 1);
      v360 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v360 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v359;
      v361 = v496;
      *(a3 + 24) = v360;
      *(a3 + 32) = v361;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 9;
      goto LABEL_644;
    case 10:
      v132 = **a2;
      v133 = (*a2)[1];
      v486 = v133;
      if (v133)
      {
        atomic_fetch_add_explicit((v133 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v132)
      {
        sub_23F227174(&v487, a2[1]);
      }

      v134 = (*(*v132 + 24))(v132);
      (*(*v134 + 24))(&v496);
      v135 = v496;
      v496 = 0;
      v500 = v135;
      if (v135)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 10);
      v423 = *(v498 + 16);
      v422 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v423;
      *&v490[32] = v422;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v424 = (*(MEMORY[0] + 104))(0);
      v495 = v424 & ((v424 >> 1) >> 15);
      v425 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v425->__on_zero_shared)(v425);
        std::__shared_weak_count::__release_weak(v425);
      }

      v426 = v496;
      v496 = 0;
      if (v426)
      {
        (*(*v426 + 8))(v426);
      }

      *a3 = &unk_285179288;
      v427 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v428 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v428 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v427;
      v429 = v496;
      *(a3 + 24) = v428;
      *(a3 + 32) = v429;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 10;
      goto LABEL_631;
    case 11:
      v128 = **a2;
      v129 = (*a2)[1];
      v486 = v129;
      if (v129)
      {
        atomic_fetch_add_explicit((v129 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v128)
      {
        sub_23F227484(&v487, a2[1]);
      }

      v130 = (*(*v128 + 24))(v128);
      (*(*v130 + 24))(&v496);
      v131 = v496;
      v496 = 0;
      v500 = v131;
      if (v131)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 11);
      v415 = *(v498 + 16);
      v414 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v415;
      *&v490[32] = v414;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v416 = (*(MEMORY[0] + 104))(0);
      v495 = v416 & ((v416 >> 1) >> 15);
      v417 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v417->__on_zero_shared)(v417);
        std::__shared_weak_count::__release_weak(v417);
      }

      v418 = v496;
      v496 = 0;
      if (v418)
      {
        (*(*v418 + 8))(v418);
      }

      *a3 = &unk_285179288;
      v419 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v420 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v420 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v419;
      v421 = v496;
      *(a3 + 24) = v420;
      *(a3 + 32) = v421;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 11;
      goto LABEL_631;
    case 12:
      v20 = **a2;
      v21 = (*a2)[1];
      v486 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v20)
      {
        sub_23F227724(&v487, a2[1]);
      }

      v22 = (*(*v20 + 24))(v20);
      (*(*v22 + 24))(&v496);
      v23 = v496;
      v496 = 0;
      v500 = v23;
      if (v23)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 12);
      v194 = *(v498 + 16);
      v193 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v194;
      *&v490[32] = v193;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v195 = (*(MEMORY[0] + 104))(0);
      v495 = v195 & ((v195 >> 1) >> 15);
      v196 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v196->__on_zero_shared)(v196);
        std::__shared_weak_count::__release_weak(v196);
      }

      v197 = v496;
      v496 = 0;
      if (v197)
      {
        (*(*v197 + 8))(v197);
      }

      *a3 = &unk_285179288;
      v198 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v199 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v199 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v198;
      v200 = v496;
      *(a3 + 24) = v199;
      *(a3 + 32) = v200;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 12;
      goto LABEL_631;
    case 13:
      v36 = **a2;
      v37 = (*a2)[1];
      v486 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v36)
      {
        sub_23F227A34(&v487, a2[1]);
      }

      v38 = (*(*v36 + 24))(v36);
      (*(*v38 + 24))(&v496);
      v39 = v496;
      v496 = 0;
      v500 = v39;
      if (v39)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 13);
      v226 = *(v498 + 16);
      v225 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v226;
      *&v490[32] = v225;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v227 = (*(MEMORY[0] + 104))(0);
      v495 = v227 & ((v227 >> 1) >> 15);
      v228 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v228->__on_zero_shared)(v228);
        std::__shared_weak_count::__release_weak(v228);
      }

      v229 = v496;
      v496 = 0;
      if (v229)
      {
        (*(*v229 + 8))(v229);
      }

      *a3 = &unk_285179288;
      v230 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 1);
      v231 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v231 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v230;
      v232 = v496;
      *(a3 + 24) = v231;
      *(a3 + 32) = v232;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 13;
      goto LABEL_644;
    case 14:
      v32 = **a2;
      v33 = (*a2)[1];
      v486 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v32)
      {
        sub_23F227CDC(&v487, a2[1]);
      }

      v34 = (*(*v32 + 24))(v32);
      (*(*v34 + 24))(&v496);
      v35 = v496;
      v496 = 0;
      v500 = v35;
      if (v35)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 14);
      v218 = *(v498 + 16);
      v217 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v218;
      *&v490[32] = v217;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v219 = (*(MEMORY[0] + 104))(0);
      v495 = v219 & ((v219 >> 1) >> 15);
      v220 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v220->__on_zero_shared)(v220);
        std::__shared_weak_count::__release_weak(v220);
      }

      v221 = v496;
      v496 = 0;
      if (v221)
      {
        (*(*v221 + 8))(v221);
      }

      *a3 = &unk_285179288;
      v222 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v223 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v223 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v222;
      v224 = v496;
      *(a3 + 24) = v223;
      *(a3 + 32) = v224;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 14;
      goto LABEL_631;
    case 15:
      v148 = **a2;
      v149 = (*a2)[1];
      v486 = v149;
      if (v149)
      {
        atomic_fetch_add_explicit((v149 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v148)
      {
        sub_23F227FEC(&v487, a2[1]);
      }

      v150 = (*(*v148 + 24))(v148);
      (*(*v150 + 24))(&v496);
      v151 = v496;
      v496 = 0;
      v500 = v151;
      if (v151)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 15);
      v455 = *(v498 + 16);
      v454 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v455;
      *&v490[32] = v454;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v456 = (*(MEMORY[0] + 104))(0);
      v495 = v456 & ((v456 >> 1) >> 15);
      v457 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v457->__on_zero_shared)(v457);
        std::__shared_weak_count::__release_weak(v457);
      }

      v458 = v496;
      v496 = 0;
      if (v458)
      {
        (*(*v458 + 8))(v458);
      }

      *a3 = &unk_285179288;
      v459 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v460 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v460 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v459;
      v461 = v496;
      *(a3 + 24) = v460;
      *(a3 + 32) = v461;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 15;
      goto LABEL_631;
    case 16:
      v108 = **a2;
      v109 = (*a2)[1];
      v486 = v109;
      if (v109)
      {
        atomic_fetch_add_explicit((v109 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v108)
      {
        sub_23F22828C(&v487, a2[1]);
      }

      v110 = (*(*v108 + 24))(v108);
      (*(*v110 + 24))(&v496);
      v111 = v496;
      v496 = 0;
      v500 = v111;
      if (v111)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 16);
      v371 = *(v498 + 16);
      v370 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v371;
      *&v490[32] = v370;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v372 = (*(MEMORY[0] + 104))(0);
      v495 = v372 & ((v372 >> 1) >> 15);
      v373 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v373->__on_zero_shared)(v373);
        std::__shared_weak_count::__release_weak(v373);
      }

      v374 = v496;
      v496 = 0;
      if (v374)
      {
        (*(*v374 + 8))(v374);
      }

      *a3 = &unk_285179288;
      v375 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v376 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v376 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v375;
      v377 = v496;
      *(a3 + 24) = v376;
      *(a3 + 32) = v377;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 16;
      goto LABEL_631;
    case 17:
      v152 = **a2;
      v153 = (*a2)[1];
      v486 = v153;
      if (v153)
      {
        atomic_fetch_add_explicit((v153 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v152)
      {
        sub_23F22859C(&v487, a2[1]);
      }

      v154 = (*(*v152 + 24))(v152);
      (*(*v154 + 24))(&v496);
      v155 = v496;
      v496 = 0;
      v500 = v155;
      if (v155)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 17);
      v463 = *(v498 + 16);
      v462 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v463;
      *&v490[32] = v462;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v464 = (*(MEMORY[0] + 104))(0);
      v495 = v464 & ((v464 >> 1) >> 15);
      v465 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v465->__on_zero_shared)(v465);
        std::__shared_weak_count::__release_weak(v465);
      }

      v466 = v496;
      v496 = 0;
      if (v466)
      {
        (*(*v466 + 8))(v466);
      }

      *a3 = &unk_285179288;
      v467 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 1);
      v468 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v468 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v467;
      v469 = v496;
      *(a3 + 24) = v468;
      *(a3 + 32) = v469;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 17;
      goto LABEL_644;
    case 18:
      v44 = **a2;
      v45 = (*a2)[1];
      v486 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v44)
      {
        sub_23F228844(&v487, a2[1]);
      }

      v46 = (*(*v44 + 24))(v44);
      (*(*v46 + 24))(&v496);
      v47 = v496;
      v496 = 0;
      v500 = v47;
      if (v47)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 18);
      v242 = *(v498 + 16);
      v241 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v242;
      *&v490[32] = v241;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v243 = (*(MEMORY[0] + 104))(0);
      v495 = v243 & ((v243 >> 1) >> 15);
      v244 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v244->__on_zero_shared)(v244);
        std::__shared_weak_count::__release_weak(v244);
      }

      v245 = v496;
      v496 = 0;
      if (v245)
      {
        (*(*v245 + 8))(v245);
      }

      *a3 = &unk_285179288;
      v246 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v247 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v247 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v246;
      v248 = v496;
      *(a3 + 24) = v247;
      *(a3 + 32) = v248;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 18;
      goto LABEL_631;
    case 19:
      v12 = **a2;
      v13 = (*a2)[1];
      v486 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v12)
      {
        sub_23F228B54(&v487, a2[1]);
      }

      v14 = (*(*v12 + 24))(v12);
      (*(*v14 + 24))(&v496);
      v15 = v496;
      v496 = 0;
      v500 = v15;
      if (v15)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 19);
      v176 = *(v498 + 16);
      v175 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v176;
      *&v490[32] = v175;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v177 = (*(MEMORY[0] + 104))(0);
      v495 = v177 & ((v177 >> 1) >> 15);
      v178 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v178->__on_zero_shared)(v178);
        std::__shared_weak_count::__release_weak(v178);
      }

      v179 = v496;
      v496 = 0;
      if (v179)
      {
        (*(*v179 + 8))(v179);
      }

      *a3 = &unk_285179288;
      v180 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v181 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v181 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v180;
      v182 = v496;
      *(a3 + 24) = v181;
      *(a3 + 32) = v182;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 19;
      goto LABEL_631;
    case 20:
      v140 = **a2;
      v141 = (*a2)[1];
      v486 = v141;
      if (v141)
      {
        atomic_fetch_add_explicit((v141 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v140)
      {
        sub_23F228DF4(&v487, a2[1]);
      }

      v142 = (*(*v140 + 24))(v140);
      (*(*v142 + 24))(&v496);
      v143 = v496;
      v496 = 0;
      v500 = v143;
      if (v143)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 20);
      v439 = *(v498 + 16);
      v438 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v439;
      *&v490[32] = v438;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v440 = (*(MEMORY[0] + 104))(0);
      v495 = v440 & ((v440 >> 1) >> 15);
      v441 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v441->__on_zero_shared)(v441);
        std::__shared_weak_count::__release_weak(v441);
      }

      v442 = v496;
      v496 = 0;
      if (v442)
      {
        (*(*v442 + 8))(v442);
      }

      *a3 = &unk_285179288;
      v443 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v444 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v444 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v443;
      v445 = v496;
      *(a3 + 24) = v444;
      *(a3 + 32) = v445;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 20;
      goto LABEL_631;
    case 21:
      v160 = **a2;
      v161 = (*a2)[1];
      v486 = v161;
      if (v161)
      {
        atomic_fetch_add_explicit((v161 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v160)
      {
        sub_23F085E58(a2[1]);
      }

      v162 = (*(*v160 + 24))(v160);
      (*(*v162 + 24))(&v496);
      v163 = v496;
      v496 = 0;
      v500 = v163;
      if (v163)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 21);
      v479 = *(v498 + 16);
      v478 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v479;
      *&v490[32] = v478;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v480 = (*(MEMORY[0] + 104))(0);
      v495 = v480 & ((v480 >> 1) >> 15);
      v481 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v481->__on_zero_shared)(v481);
        std::__shared_weak_count::__release_weak(v481);
      }

      v482 = v496;
      v496 = 0;
      if (v482)
      {
        (*(*v482 + 8))(v482);
      }

      *a3 = &unk_285179288;
      v483 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 1);
      v484 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v484 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v483;
      v485 = v496;
      *(a3 + 24) = v484;
      *(a3 + 32) = v485;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 21;
      goto LABEL_644;
    case 22:
      v56 = **a2;
      v57 = (*a2)[1];
      v486 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v56)
      {
        sub_23F1C68B8(a2[1]);
      }

      v58 = (*(*v56 + 24))(v56);
      (*(*v58 + 24))(&v496);
      v59 = v496;
      v496 = 0;
      v500 = v59;
      if (v59)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 22);
      v266 = *(v498 + 16);
      v265 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v266;
      *&v490[32] = v265;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v267 = (*(MEMORY[0] + 104))(0);
      v495 = v267 & ((v267 >> 1) >> 15);
      v268 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v268->__on_zero_shared)(v268);
        std::__shared_weak_count::__release_weak(v268);
      }

      v269 = v496;
      v496 = 0;
      if (v269)
      {
        (*(*v269 + 8))(v269);
      }

      *a3 = &unk_285179288;
      v270 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v271 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v271 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v270;
      v272 = v496;
      *(a3 + 24) = v271;
      *(a3 + 32) = v272;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 22;
      goto LABEL_631;
    case 23:
      v156 = **a2;
      v157 = (*a2)[1];
      v486 = v157;
      if (v157)
      {
        atomic_fetch_add_explicit((v157 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v156)
      {
        sub_23F1C7160(a2[1]);
      }

      v158 = (*(*v156 + 24))(v156);
      (*(*v158 + 24))(&v496);
      v159 = v496;
      v496 = 0;
      v500 = v159;
      if (v159)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 23);
      v471 = *(v498 + 16);
      v470 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v471;
      *&v490[32] = v470;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v472 = (*(MEMORY[0] + 104))(0);
      v495 = v472 & ((v472 >> 1) >> 15);
      v473 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v473->__on_zero_shared)(v473);
        std::__shared_weak_count::__release_weak(v473);
      }

      v474 = v496;
      v496 = 0;
      if (v474)
      {
        (*(*v474 + 8))(v474);
      }

      *a3 = &unk_285179288;
      v475 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v476 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v476 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v475;
      v477 = v496;
      *(a3 + 24) = v476;
      *(a3 + 32) = v477;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 23;
      goto LABEL_631;
    case 24:
      v28 = **a2;
      v29 = (*a2)[1];
      v486 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v28)
      {
        sub_23F1C79CC(a2[1]);
      }

      v30 = (*(*v28 + 24))(v28);
      (*(*v30 + 24))(&v496);
      v31 = v496;
      v496 = 0;
      v500 = v31;
      if (v31)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 24);
      v210 = *(v498 + 16);
      v209 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v210;
      *&v490[32] = v209;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v211 = (*(MEMORY[0] + 104))(0);
      v495 = v211 & ((v211 >> 1) >> 15);
      v212 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v212->__on_zero_shared)(v212);
        std::__shared_weak_count::__release_weak(v212);
      }

      v213 = v496;
      v496 = 0;
      if (v213)
      {
        (*(*v213 + 8))(v213);
      }

      *a3 = &unk_285179288;
      v214 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v215 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v215 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v214;
      v216 = v496;
      *(a3 + 24) = v215;
      *(a3 + 32) = v216;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 24;
      goto LABEL_631;
    case 25:
      v16 = **a2;
      v17 = (*a2)[1];
      v486 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v16)
      {
        sub_23F1C8274(a2[1]);
      }

      v18 = (*(*v16 + 24))(v16);
      (*(*v18 + 24))(&v496);
      v19 = v496;
      v496 = 0;
      v500 = v19;
      if (v19)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 25);
      v184 = *(v498 + 16);
      v183 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v184;
      *&v490[32] = v183;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v185 = (*(MEMORY[0] + 104))(0);
      v495 = v185 & ((v185 >> 1) >> 15);
      v186 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v186->__on_zero_shared)(v186);
        std::__shared_weak_count::__release_weak(v186);
      }

      v187 = v496;
      v496 = 0;
      if (v187)
      {
        (*(*v187 + 8))(v187);
      }

      *a3 = &unk_285179288;
      v188 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 1);
      v189 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v189 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v188;
      v191 = v496;
      *(a3 + 24) = v189;
      *(a3 + 32) = v191;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 25;
      goto LABEL_644;
    case 26:
      v60 = **a2;
      v61 = (*a2)[1];
      v486 = v61;
      if (v61)
      {
        atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v60)
      {
        sub_23F229104(&v487, a2[1]);
      }

      v62 = (*(*v60 + 24))(v60);
      (*(*v62 + 24))(&v496);
      v63 = v496;
      v496 = 0;
      v500 = v63;
      if (v63)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 26);
      v274 = *(v498 + 16);
      v273 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v274;
      *&v490[32] = v273;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v275 = (*(MEMORY[0] + 104))(0);
      v495 = v275 & ((v275 >> 1) >> 15);
      v276 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v276->__on_zero_shared)(v276);
        std::__shared_weak_count::__release_weak(v276);
      }

      v277 = v496;
      v496 = 0;
      if (v277)
      {
        (*(*v277 + 8))(v277);
      }

      *a3 = &unk_285179288;
      v278 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v279 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v279 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v278;
      v280 = v496;
      *(a3 + 24) = v279;
      *(a3 + 32) = v280;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 26;
      goto LABEL_631;
    case 27:
      v8 = **a2;
      v9 = (*a2)[1];
      v486 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v8)
      {
        sub_23F229414(&v487, a2[1]);
      }

      v10 = (*(*v8 + 24))(v8);
      (*(*v10 + 24))(&v496);
      v11 = v496;
      v496 = 0;
      v500 = v11;
      if (v11)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 27);
      v165 = *(v498 + 16);
      v164 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v165;
      *&v490[32] = v164;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v166 = (*(MEMORY[0] + 104))(0);
      v495 = v166 & ((v166 >> 1) >> 15);
      v167 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v167->__on_zero_shared)(v167);
        std::__shared_weak_count::__release_weak(v167);
      }

      v168 = v496;
      v496 = 0;
      if (v168)
      {
        (*(*v168 + 8))(v168);
      }

      *a3 = &unk_285179288;
      v169 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v171 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v171 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v169;
      v172 = v496;
      *(a3 + 24) = v171;
      *(a3 + 32) = v172;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 27;
      goto LABEL_631;
    case 28:
      v76 = **a2;
      v77 = (*a2)[1];
      v486 = v77;
      if (v77)
      {
        atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v76)
      {
        sub_23F2296B4(&v487, a2[1]);
      }

      v78 = (*(*v76 + 24))(v76);
      (*(*v78 + 24))(&v496);
      v79 = v496;
      v496 = 0;
      v500 = v79;
      if (v79)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 28);
      v307 = *(v498 + 16);
      v306 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v307;
      *&v490[32] = v306;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v308 = (*(MEMORY[0] + 104))(0);
      v495 = v308 & ((v308 >> 1) >> 15);
      v309 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v309->__on_zero_shared)(v309);
        std::__shared_weak_count::__release_weak(v309);
      }

      v310 = v496;
      v496 = 0;
      if (v310)
      {
        (*(*v310 + 8))(v310);
      }

      *a3 = &unk_285179288;
      v311 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v312 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v312 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v311;
      v313 = v496;
      *(a3 + 24) = v312;
      *(a3 + 32) = v313;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 28;
      goto LABEL_631;
    case 29:
      v24 = **a2;
      v25 = (*a2)[1];
      v486 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v24)
      {
        sub_23F1C8AB4(a2[1]);
      }

      v26 = (*(*v24 + 24))(v24);
      (*(*v26 + 24))(&v496);
      v27 = v496;
      v496 = 0;
      v500 = v27;
      if (v27)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 29);
      v202 = *(v498 + 16);
      v201 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v202;
      *&v490[32] = v201;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v203 = (*(MEMORY[0] + 104))(0);
      v495 = v203 & ((v203 >> 1) >> 15);
      v204 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v204->__on_zero_shared)(v204);
        std::__shared_weak_count::__release_weak(v204);
      }

      v205 = v496;
      v496 = 0;
      if (v205)
      {
        (*(*v205 + 8))(v205);
      }

      *a3 = &unk_285179288;
      v206 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 1);
      v207 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v207 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v206;
      v208 = v496;
      *(a3 + 24) = v207;
      *(a3 + 32) = v208;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 29;
      goto LABEL_644;
    case 30:
      v88 = **a2;
      v89 = (*a2)[1];
      v486 = v89;
      if (v89)
      {
        atomic_fetch_add_explicit((v89 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v88)
      {
        sub_23F1C92F4(a2[1]);
      }

      v90 = (*(*v88 + 24))(v88);
      (*(*v90 + 24))(&v496);
      v91 = v496;
      v496 = 0;
      v500 = v91;
      if (v91)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 30);
      v331 = *(v498 + 16);
      v330 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v331;
      *&v490[32] = v330;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v332 = (*(MEMORY[0] + 104))(0);
      v495 = v332 & ((v332 >> 1) >> 15);
      v333 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v333->__on_zero_shared)(v333);
        std::__shared_weak_count::__release_weak(v333);
      }

      v334 = v496;
      v496 = 0;
      if (v334)
      {
        (*(*v334 + 8))(v334);
      }

      *a3 = &unk_285179288;
      v335 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v336 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v336 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v335;
      v337 = v496;
      *(a3 + 24) = v336;
      *(a3 + 32) = v337;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 30;
      goto LABEL_631;
    case 31:
      v64 = **a2;
      v65 = (*a2)[1];
      v486 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v64)
      {
        sub_23F1C9B9C(a2[1]);
      }

      v66 = (*(*v64 + 24))(v64);
      (*(*v66 + 24))(&v496);
      v67 = v496;
      v496 = 0;
      v500 = v67;
      if (v67)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 31);
      v282 = *(v498 + 16);
      v281 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v282;
      *&v490[32] = v281;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v283 = (*(MEMORY[0] + 104))(0);
      v495 = v283 & ((v283 >> 1) >> 15);
      v284 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v284->__on_zero_shared)(v284);
        std::__shared_weak_count::__release_weak(v284);
      }

      v285 = v496;
      v496 = 0;
      if (v285)
      {
        (*(*v285 + 8))(v285);
      }

      *a3 = &unk_285179288;
      v286 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v287 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v287 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v286;
      v288 = v496;
      *(a3 + 24) = v287;
      *(a3 + 32) = v288;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 31;
      goto LABEL_631;
    case 32:
      v96 = **a2;
      v97 = (*a2)[1];
      v486 = v97;
      if (v97)
      {
        atomic_fetch_add_explicit((v97 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v96)
      {
        sub_23F1CA408(a2[1]);
      }

      v98 = (*(*v96 + 24))(v96);
      (*(*v98 + 24))(&v496);
      v99 = v496;
      v496 = 0;
      v500 = v99;
      if (v99)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 32);
      v347 = *(v498 + 16);
      v346 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v347;
      *&v490[32] = v346;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v348 = (*(MEMORY[0] + 104))(0);
      v495 = v348 & ((v348 >> 1) >> 15);
      v349 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v349->__on_zero_shared)(v349);
        std::__shared_weak_count::__release_weak(v349);
      }

      v350 = v496;
      v496 = 0;
      if (v350)
      {
        (*(*v350 + 8))(v350);
      }

      *a3 = &unk_285179288;
      v351 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v352 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v352 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v351;
      v353 = v496;
      *(a3 + 24) = v352;
      *(a3 + 32) = v353;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 32;
      goto LABEL_631;
    case 33:
      v136 = **a2;
      v137 = (*a2)[1];
      v486 = v137;
      if (v137)
      {
        atomic_fetch_add_explicit((v137 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v136)
      {
        sub_23F1CACB0(a2[1]);
      }

      v138 = (*(*v136 + 24))(v136);
      (*(*v138 + 24))(&v496);
      v139 = v496;
      v496 = 0;
      v500 = v139;
      if (v139)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 33);
      v431 = *(v498 + 16);
      v430 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v431;
      *&v490[32] = v430;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v432 = (*(MEMORY[0] + 104))(0);
      v495 = v432 & ((v432 >> 1) >> 15);
      v433 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v433->__on_zero_shared)(v433);
        std::__shared_weak_count::__release_weak(v433);
      }

      v434 = v496;
      v496 = 0;
      if (v434)
      {
        (*(*v434 + 8))(v434);
      }

      *a3 = &unk_285179288;
      v435 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 1);
      v436 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v436 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v435;
      v437 = v496;
      *(a3 + 24) = v436;
      *(a3 + 32) = v437;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 33;
      goto LABEL_644;
    case 34:
      v92 = **a2;
      v93 = (*a2)[1];
      v486 = v93;
      if (v93)
      {
        atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v92)
      {
        sub_23F2299C4(&v487, a2[1]);
      }

      v94 = (*(*v92 + 24))(v92);
      (*(*v94 + 24))(&v496);
      v95 = v496;
      v496 = 0;
      v500 = v95;
      if (v95)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 34);
      v339 = *(v498 + 16);
      v338 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v339;
      *&v490[32] = v338;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v340 = (*(MEMORY[0] + 104))(0);
      v495 = v340 & ((v340 >> 1) >> 15);
      v341 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v341->__on_zero_shared)(v341);
        std::__shared_weak_count::__release_weak(v341);
      }

      v342 = v496;
      v496 = 0;
      if (v342)
      {
        (*(*v342 + 8))(v342);
      }

      *a3 = &unk_285179288;
      v343 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v344 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v344 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v343;
      v345 = v496;
      *(a3 + 24) = v344;
      *(a3 + 32) = v345;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 34;
      goto LABEL_631;
    case 35:
      v84 = **a2;
      v85 = (*a2)[1];
      v486 = v85;
      if (v85)
      {
        atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v84)
      {
        sub_23F229CD4(&v487, a2[1]);
      }

      v86 = (*(*v84 + 24))(v84);
      (*(*v86 + 24))(&v496);
      v87 = v496;
      v496 = 0;
      v500 = v87;
      if (v87)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 35);
      v323 = *(v498 + 16);
      v322 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v323;
      *&v490[32] = v322;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v324 = (*(MEMORY[0] + 104))(0);
      v495 = v324 & ((v324 >> 1) >> 15);
      v325 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v325->__on_zero_shared)(v325);
        std::__shared_weak_count::__release_weak(v325);
      }

      v326 = v496;
      v496 = 0;
      if (v326)
      {
        (*(*v326 + 8))(v326);
      }

      *a3 = &unk_285179288;
      v327 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v328 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v328 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v327;
      v329 = v496;
      *(a3 + 24) = v328;
      *(a3 + 32) = v329;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 35;
      goto LABEL_631;
    case 36:
      v80 = **a2;
      v81 = (*a2)[1];
      v486 = v81;
      if (v81)
      {
        atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v80)
      {
        sub_23F229F74(&v487, a2[1]);
      }

      v82 = (*(*v80 + 24))(v80);
      (*(*v82 + 24))(&v496);
      v83 = v496;
      v496 = 0;
      v500 = v83;
      if (v83)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 36);
      v315 = *(v498 + 16);
      v314 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v315;
      *&v490[32] = v314;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v316 = (*(MEMORY[0] + 104))(0);
      v495 = v316 & ((v316 >> 1) >> 15);
      v317 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v317->__on_zero_shared)(v317);
        std::__shared_weak_count::__release_weak(v317);
      }

      v318 = v496;
      v496 = 0;
      if (v318)
      {
        (*(*v318 + 8))(v318);
      }

      *a3 = &unk_285179288;
      v319 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v320 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v320 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v319;
      v321 = v496;
      *(a3 + 24) = v320;
      *(a3 + 32) = v321;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 36;
      goto LABEL_631;
    case 37:
      v124 = **a2;
      v125 = (*a2)[1];
      v486 = v125;
      if (v125)
      {
        atomic_fetch_add_explicit((v125 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v124)
      {
        sub_23F1CB4F0(a2[1]);
      }

      v126 = (*(*v124 + 24))(v124);
      (*(*v126 + 24))(&v496);
      v127 = v496;
      v496 = 0;
      v500 = v127;
      if (v127)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 37);
      v407 = *(v498 + 16);
      v406 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v407;
      *&v490[32] = v406;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v408 = (*(MEMORY[0] + 104))(0);
      v495 = v408 & ((v408 >> 1) >> 15);
      v409 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v409->__on_zero_shared)(v409);
        std::__shared_weak_count::__release_weak(v409);
      }

      v410 = v496;
      v496 = 0;
      if (v410)
      {
        (*(*v410 + 8))(v410);
      }

      *a3 = &unk_285179288;
      v411 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 1);
      v412 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v412 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v411;
      v413 = v496;
      *(a3 + 24) = v412;
      *(a3 + 32) = v413;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 37;
LABEL_644:
      *(a3 + 56) = v192;
LABEL_645:
      *(a3 + 60) = v190;
      if (v173)
      {
        goto LABEL_646;
      }

      goto LABEL_648;
    case 38:
      v144 = **a2;
      v145 = (*a2)[1];
      v486 = v145;
      if (v145)
      {
        atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v144)
      {
        sub_23F1CBD30(a2[1]);
      }

      v146 = (*(*v144 + 24))(v144);
      (*(*v146 + 24))(&v496);
      v147 = v496;
      v496 = 0;
      v500 = v147;
      if (v147)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 38);
      v447 = *(v498 + 16);
      v446 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v447;
      *&v490[32] = v446;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v448 = (*(MEMORY[0] + 104))(0);
      v495 = v448 & ((v448 >> 1) >> 15);
      v449 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v449->__on_zero_shared)(v449);
        std::__shared_weak_count::__release_weak(v449);
      }

      v450 = v496;
      v496 = 0;
      if (v450)
      {
        (*(*v450 + 8))(v450);
      }

      *a3 = &unk_285179288;
      v451 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v452 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v452 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v451;
      v453 = v496;
      *(a3 + 24) = v452;
      *(a3 + 32) = v453;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 38;
      goto LABEL_631;
    case 39:
      v52 = **a2;
      v53 = (*a2)[1];
      v486 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v52)
      {
        sub_23F1CC5D8(a2[1]);
      }

      v54 = (*(*v52 + 24))(v52);
      (*(*v54 + 24))(&v496);
      v55 = v496;
      v496 = 0;
      v500 = v55;
      if (v55)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 39);
      v258 = *(v498 + 16);
      v257 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v258;
      *&v490[32] = v257;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v259 = (*(MEMORY[0] + 104))(0);
      v495 = v259 & ((v259 >> 1) >> 15);
      v260 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v260->__on_zero_shared)(v260);
        std::__shared_weak_count::__release_weak(v260);
      }

      v261 = v496;
      v496 = 0;
      if (v261)
      {
        (*(*v261 + 8))(v261);
      }

      *a3 = &unk_285179288;
      v262 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v263 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v263 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v262;
      v264 = v496;
      *(a3 + 24) = v263;
      *(a3 + 32) = v264;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 39;
      goto LABEL_631;
    case 40:
      v40 = **a2;
      v41 = (*a2)[1];
      v486 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v40)
      {
        sub_23F1CCE44(a2[1]);
      }

      v42 = (*(*v40 + 24))(v40);
      (*(*v42 + 24))(&v496);
      v43 = v496;
      v496 = 0;
      v500 = v43;
      if (v43)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 40);
      v234 = *(v498 + 16);
      v233 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v234;
      *&v490[32] = v233;
      v498 = 0;
      MEMORY[0x245CACD00]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v235 = (*(MEMORY[0] + 104))(0);
      v495 = v235 & ((v235 >> 1) >> 15);
      v236 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v236->__on_zero_shared)(v236);
        std::__shared_weak_count::__release_weak(v236);
      }

      v237 = v496;
      v496 = 0;
      if (v237)
      {
        (*(*v237 + 8))(v237);
      }

      *a3 = &unk_285179288;
      v238 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_23F28E5E0(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v239 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v239 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v238;
      v240 = v496;
      *(a3 + 24) = v239;
      *(a3 + 32) = v240;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 40;
LABEL_631:
      *(a3 + 56) = v174;
LABEL_632:
      *(a3 + 60) = v170;
      if (v173)
      {
LABEL_646:
        if (!atomic_fetch_add(&v173->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v173->__on_zero_shared)(v173);
          std::__shared_weak_count::__release_weak(v173);
        }
      }

LABEL_648:
      if (v486)
      {
        if (!atomic_fetch_add(&v486->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v486->__on_zero_shared)(v486);
          std::__shared_weak_count::__release_weak(v486);
        }
      }

      return;
    default:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
  }
}