uint64_t sub_100001670(const __CFAllocator *a1, uint64_t a2)
{
  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  theDict = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if ((*(**a2 + 40))())
  {
    v4 = 16;
  }

  else
  {
    v4 = 18;
  }

  HIDWORD(valuePtr) = v4;
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr + 4);
  CFDictionarySetValue(theDict, @"attributes", v7);
  CFDictionarySetValue(theDict, @"valid", v7);
  CFDictionarySetValue(Mutable, @"Characteristics", theDict);
  v5 = MKMediaCreate();
  sub_10000441C(&v7);
  sub_1000043E8(&theDict);
  sub_1000043E8(&Mutable);
  return v5;
}

void sub_100001828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_1000043E8(va);
  sub_1000043E8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100001860(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &off_100233158;
  v6 = std::generic_category();
  *(a1 + 8) = a3;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  return a1;
}

CFMutableDictionaryRef sub_1000018DC(uint64_t a1, __CFDictionary *cf1)
{
  Mutable = cf1;
  if (cf1)
  {
    if (CFEqual(cf1, @"Geometry"))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v4 = (*(**a1 + 32))();
      v5 = (*(**a1 + 24))();
      sub_10014CC9C(Mutable, @"Sector Count", (v5 * v4) >> 9);
      v6 = (*(**a1 + 24))();
      sub_10014CC9C(Mutable, @"Block Size", v6);
      sub_10014CC9C(Mutable, @"Maximum Transfer Sector Count", 0);
    }

    else if (CFEqual(Mutable, @"Writable"))
    {
      v7 = (*(**a1 + 40))();
      v8 = &kCFBooleanTrue;
      if (!v7)
      {
        v8 = &kCFBooleanFalse;
      }

      return *v8;
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

__CFDictionary *sub_100001A70(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = sub_1000018DC(a1, @"Geometry");
    cf = v3;
    if (v3)
    {
      CFDictionarySetValue(Mutable, @"Geometry", v3);
    }

    v4 = sub_1000018DC(a1, @"Writable");
    v6 = v4;
    if (cf)
    {
      CFRelease(cf);
      v4 = v6;
    }

    v6 = 0;
    cf = v4;
    sub_100004450(&v6);
    if (cf)
    {
      CFDictionarySetValue(Mutable, @"Writable", cf);
    }

    sub_100004450(&cf);
  }

  return Mutable;
}

void sub_100001B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004450(&a9);
  sub_100004450(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100001BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_100001BDC(a1, a2, a3, a4);
  if (a5)
  {
    if (!result)
    {
      *a5 = a3;
    }
  }

  return result;
}

uint64_t sub_100001BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 << 9;
  v7 = a2 << 9;
  v8 = *(sub_10019E2E8() + 1);
  v11 = a4;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_100025704(&v11, v25);
  sub_1000246F4(v26, v22);
  sub_100024448(v26, v19);
  v9 = sub_10000247C(*(a1 + 8));
  if (v21)
  {
    sub_10000367C(v21);
  }

  if (v20)
  {
    sub_10000367C(v20);
  }

  if (v24)
  {
    sub_10000367C(v24);
  }

  if (v23)
  {
    sub_10000367C(v23);
  }

  sub_1000036E8(v25);
  if (v12)
  {
    sub_10000367C(v12);
  }

  if (v9 < 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_100001D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  sub_100002440(&a24);
  sub_100002440(&a52);
  sub_1000036E8(&STACK[0x238]);
  if (a11)
  {
    sub_10000367C(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100001D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_100001D80(a1, a2, a3, a4);
  if (a5)
  {
    if (!result)
    {
      *a5 = a3;
    }
  }

  return result;
}

uint64_t sub_100001D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 << 9;
  v7 = a2 << 9;
  v8 = *(sub_10019E2E8() + 1);
  v11 = a4;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_100025704(&v11, v25);
  sub_1000246F4(v26, v22);
  sub_100024448(v26, v19);
  v9 = sub_1000037F0(*(a1 + 8));
  if (v21)
  {
    sub_10000367C(v21);
  }

  if (v20)
  {
    sub_10000367C(v20);
  }

  if (v24)
  {
    sub_10000367C(v24);
  }

  if (v23)
  {
    sub_10000367C(v23);
  }

  sub_1000036E8(v25);
  if (v12)
  {
    sub_10000367C(v12);
  }

  if (v9 < 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_100001EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  sub_100002440(&a24);
  sub_100002440(&a52);
  sub_1000036E8(&STACK[0x238]);
  if (a11)
  {
    sub_10000367C(a11);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_100001F30(uint64_t a1, CFNumberRef number, const char *a3)
{
  if (!number)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(valuePtr);
    sub_1000026BC(valuePtr, "Couldn't parse ", 15);
    v8 = strlen(a3);
    sub_1000026BC(valuePtr, a3, v8);
    sub_100004290(exception, valuePtr, 0x16u);
  }

  valuePtr[0] = 0;
  if (!CFNumberGetValue(number, kCFNumberLongLongType, valuePtr))
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_100001860(v9, "Failed converting CFNumber to longlong", 0x16u);
  }

  v5 = valuePtr[0];
  if (v5 % ((*(**a1 + 24))() >> 9))
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    sub_100002148(valuePtr);
    v12 = strlen(a3);
    sub_1000026BC(valuePtr, a3, v12);
    sub_1000026BC(valuePtr, " is not aligned to block size", 29);
    sub_100004290(v11, valuePtr, 0x16u);
  }

  return v5 / ((*(**a1 + 24))() >> 9);
}

void sub_100002108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100002148(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_10000432C((a1 + 1), 16);
  return a1;
}

void sub_10000228C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000022B4(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_1000023D4(std::exception *this)
{
  this->__vftable = &off_100233158;
  if (LOBYTE(this[6].__vftable) == 1 && SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t sub_100002440(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000367C(v3);
  }

  return a1;
}

uint64_t sub_10000247C(uint64_t a1)
{
  if ((*(*(a1 + 8) + 8) & 1) == 0)
  {
    return (**a1)(a1);
  }

  if (sub_1000E0464())
  {
    *&v2 = "DiskImage::Context::read(const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v2 + 1) = 24;
    v3 = 2;
    sub_100002550(v4, &v2);
    sub_1000026BC(v5, "Disk image is terminated, skipping read", 39);
    std::ostream::~ostream();
    sub_100002BD0(v4);
    std::ios::~ios();
  }

  return -6;
}

void sub_10000253C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100002678(va);
  _Unwind_Resume(a1);
}

void *sub_100002550(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100002B08(a1, a2);
  *a1 = off_100201558;
  a1[45] = &off_100201658;
  a1[46] = &off_100201680;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100201558;
  a1[45] = off_1002015E0;
  a1[46] = off_100201608;
  return a1;
}

void sub_100002654(_Unwind_Exception *a1)
{
  sub_100002BD0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100002678(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100002BD0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000026BC(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_100002864(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1000027FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1000027DCLL);
}

uint64_t sub_100002864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100002A60();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100002A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100002A78(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100002AD4(exception, a1);
}

std::logic_error *sub_100002AD4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_100002B08(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002016F0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100002BB8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100002BD0(uint64_t a1)
{
  *a1 = &off_1002016F0;
  sub_100003010(a1);
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

void sub_100002D3C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100002BD0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100002DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100002DE0(_BYTE *a1, int a2)
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

uint64_t sub_100002E4C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100002BD0(v1);

  return std::ios::~ios();
}

void sub_100002E98(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100002BD0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100002EFC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100002BD0(v1);

  return std::ios::~ios();
}

void sub_100002F5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100002BD0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100002FD8(uint64_t a1)
{
  sub_100002BD0(a1);

  operator delete();
}

uint64_t sub_100003010(uint64_t a1)
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
        sub_100003368(v2, __p);
        sub_100003184((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10000315C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100003184(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 159;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 159;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100003368@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1000034C8(a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002A60();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

void *sub_100003410(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002A60();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t sub_1000034C8(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void sub_100003514(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  sub_100003574(a1);
}

void sub_100003574(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_10000367C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void **sub_1000036E8(void **a1)
{
  v2 = a1[111];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[89];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = a1[83];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = a1[61];
  if (v5)
  {
    sub_10000367C(v5);
  }

  v6 = a1[46];
  if (v6)
  {
    sub_10000367C(v6);
  }

  v7 = a1[35];
  if (v7)
  {
    sub_10000367C(v7);
  }

  if (a1[20])
  {
    v8 = a1[18];
    if (a1 + 21 != v8)
    {
      operator delete(v8);
    }
  }

  return sub_100003780(a1);
}

void **sub_100003780(void **a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      if (*v3)
      {
        sub_10000367C(*v3);
      }

      v3 += 3;
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

uint64_t sub_1000037F0(void *a1)
{
  if ((*(a1[1] + 8) & 1) == 0)
  {
    return (*(*a1 + 8))(a1);
  }

  if (sub_1000E0464())
  {
    *&v2 = "DiskImage::Context::write(const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v2 + 1) = 25;
    v3 = 2;
    sub_1000038C4(v4, &v2);
    sub_1000026BC(v5, "Disk image is terminated, skipping write", 40);
    std::ostream::~ostream();
    sub_100003AF8(v4);
    std::ios::~ios();
  }

  return -6;
}

void sub_1000038B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000039EC(va);
  _Unwind_Resume(a1);
}

void *sub_1000038C4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100003A30(a1, a2);
  *a1 = off_100201778;
  a1[45] = &off_100201878;
  a1[46] = &off_1002018A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100201778;
  a1[45] = off_100201800;
  a1[46] = off_100201828;
  return a1;
}

void sub_1000039C8(_Unwind_Exception *a1)
{
  sub_100003AF8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000039EC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100003AF8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100003A30(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100201910;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100003AE0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100003AF8(uint64_t a1)
{
  *a1 = &off_100201910;
  sub_100003F38(a1);
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

void sub_100003C64(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100003AF8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100003CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100003D08(_BYTE *a1, int a2)
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

uint64_t sub_100003D74(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100003AF8(v1);

  return std::ios::~ios();
}

void sub_100003DC0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100003AF8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100003E24(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100003AF8(v1);

  return std::ios::~ios();
}

void sub_100003E84(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100003AF8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100003F00(uint64_t a1)
{
  sub_100003AF8(a1);

  operator delete();
}

uint64_t sub_100003F38(uint64_t a1)
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
        sub_100003368(v2, __p);
        sub_1000040AC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100004084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000040AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 166;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 166;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100004290(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &off_100233158;
  v6 = std::generic_category();
  *(a1 + 8) = a3;
  *(a1 + 16) = v6;
  sub_100003368(a2, &v8);
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 1;
  return a1;
}

uint64_t sub_10000432C(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100003574(a1);
  return a1;
}

void sub_1000043C0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

const void **sub_1000043E8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_10000441C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_100004450(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFIndex sub_100004484@<X0>(CFDictionaryRef theDict@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  a4[2] = 0;
  a4[1] = 0;
  *a4 = (a4 + 1);
  Value = CFDictionaryGetValue(theDict, @"Data Runs");
  TypeID = CFArrayGetTypeID();
  if (!Value)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v37 = std::generic_category();
    exception[1] = 22;
    exception[2] = v37;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Couldn't get runs array from Media Kit";
  }

  v8 = TypeID;
  if (CFGetTypeID(Value) != TypeID)
  {
    v38 = __cxa_allocate_exception(0x40uLL);
    v39 = CFGetTypeID(Value);
    v40 = sub_100008328(v38, v39, v8);
  }

  result = CFArrayGetCount(Value);
  v10 = result;
  if (result >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v11);
      v15 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        v16 = v15;
        if (CFGetTypeID(ValueAtIndex) != v15)
        {
          v27 = __cxa_allocate_exception(0x40uLL);
          v28 = CFGetTypeID(ValueAtIndex);
          v29 = sub_100008328(v27, v28, v16);
        }
      }

      v17 = CFDictionaryGetValue(ValueAtIndex, @"Origin");
      v18 = CFNumberGetTypeID();
      if (v17)
      {
        v19 = v18;
        if (CFGetTypeID(v17) != v18)
        {
          v30 = __cxa_allocate_exception(0x40uLL);
          v31 = CFGetTypeID(v17);
          v32 = sub_100008328(v30, v31, v19);
        }
      }

      v20 = sub_100001F30(a2, v17, "run offset");
      v21 = CFDictionaryGetValue(ValueAtIndex, @"Length");
      v22 = CFNumberGetTypeID();
      if (v21)
      {
        v23 = v22;
        if (CFGetTypeID(v21) != v22)
        {
          v33 = __cxa_allocate_exception(0x40uLL);
          v34 = CFGetTypeID(v21);
          v35 = sub_100008328(v33, v34, v23);
        }
      }

      v24 = sub_100001F30(a2, v21, "run length");
      v25 = v20 + a3;
      if (v12)
      {
        v42 = v13;
        v43 = v25;
        v44 = 2;
        v26 = qword_10023FE60;
        if (v25 > v13)
        {
          v26 = v25 - v13;
        }

        if ((v26 - 1) <= 0x7FE)
        {
          sub_10000BA10(a4, &v42);
        }
      }

      v13 = v24 + v25;
      v42 = v25;
      v43 = v24 + v25;
      v44 = 2;
      result = sub_10000BA10(a4, &v42);
      ++v11;
      v12 = 1;
    }

    while (v10 != v11);
  }

  return result;
}

void sub_1000047D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_1000085B4(a9, *(a9 + 8));
  _Unwind_Resume(a1);
}

const void **sub_100004838@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t **a4@<X8>)
{
  v19[1] = 0;
  v19[0] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v19[0], @"Record On Bits", kCFBooleanTrue);
  sub_100001EF0(a1);
  sub_100001EF0(a1);
  v18 = MKMediaCreateWithSubRange();
  theDict = MKCFCreateFSInfo();
  if (sub_1000E0464())
  {
    v7 = *__error();
    v8 = sub_1000E044C();
    if (v8)
    {
      v16 = 0;
      v10 = sub_1000E03D8(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      *buf = 68158210;
      *&buf[4] = 30;
      v21 = 2080;
      v22 = "MediaInfo::process_mapped_data(uint64_t, uint64_t)";
      v23 = 2114;
      v24 = theDict;
      v12 = _os_log_send_and_compose_impl(v11, &v16, 0, 0, &_mh_execute_header, v10, 2, "%.*s: %{public}@", buf, 28);
      if (v12)
      {
        v13 = v12;
        fprintf(__stderrp, "%s\n", v12);
        free(v13);
      }
    }

    else
    {
      v14 = sub_1000E03D8(v8, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68158210;
        *&buf[4] = 30;
        v21 = 2080;
        v22 = "MediaInfo::process_mapped_data(uint64_t, uint64_t)";
        v23 = 2114;
        v24 = theDict;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%.*s: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v7;
  }

  sub_100004484(theDict, a1, a2, a4);
  sub_10000C8E0(&theDict);
  sub_10000B9DC(&v18);
  return sub_1000043E8(v19);
}

void sub_100004C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, const void *a16, const void *a20, uint64_t a21, std::locale a22, char a23)
{
  sub_10000C8E0(&a14);
  sub_10000B9DC(&a16);
  sub_1000043E8(&a20);
  _Unwind_Resume(a1);
}

void *sub_100004D04(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10000C914(a1, a2);
  *a1 = off_100201A30;
  a1[45] = &off_100201B30;
  a1[46] = &off_100201B58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100201A30;
  a1[45] = off_100201AB8;
  a1[46] = off_100201AE0;
  return a1;
}

void sub_100004E08(_Unwind_Exception *a1)
{
  sub_1000088A0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100004E2C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000088A0(a1);
  std::ios::~ios();
  return a1;
}

void sub_100004E70(uint64_t a1, CFDictionaryRef theDict, uint64_t *a3)
{
  Value = CFDictionaryGetValue(theDict, @"Offset");
  TypeID = CFNumberGetTypeID();
  if (Value && (v7 = TypeID, CFGetTypeID(Value) != TypeID))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = CFGetTypeID(Value);
  }

  else
  {
    v8 = CFDictionaryGetValue(theDict, @"Size");
    v9 = CFNumberGetTypeID();
    if (!v8 || (v7 = v9, CFGetTypeID(v8) == v9))
    {
      sub_100001F30(a1, v8, "partition size");
      v10 = CFDictionaryGetValue(theDict, @"Name");
      v11 = CFStringGetTypeID();
      if (v10)
      {
        v12 = v11;
        if (CFGetTypeID(v10) != v11)
        {
          v13 = __cxa_allocate_exception(0x40uLL);
          v14 = CFGetTypeID(v10);
          v15 = v13;
          v16 = v12;
LABEL_18:
          v21 = sub_100008320(v15, v14, v16);
          v23 = sub_100008324;
LABEL_19:
          __cxa_throw(v21, v22, v23);
        }
      }

      else
      {
        v10 = CFDictionaryGetValue(theDict, @"Type");
        v17 = CFStringGetTypeID();
        if (!v10)
        {
          v20 = __cxa_allocate_exception(0x40uLL);
          v21 = sub_100001860(v20, "Couldn't parse partition name or type", 0x16u);
          v23 = sub_1000018C8;
          goto LABEL_19;
        }

        v18 = v17;
        if (CFGetTypeID(v10) != v17)
        {
          v24 = __cxa_allocate_exception(0x40uLL);
          v14 = CFGetTypeID(v10);
          v15 = v24;
          v16 = v18;
          goto LABEL_18;
        }
      }

      if (Value)
      {
        sub_100001F30(a1, Value, "partition offset");
      }

      sub_10014C958(v10);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v14 = CFGetTypeID(v8);
  }

  v15 = exception;
  v16 = v7;
  goto LABEL_18;
}

uint64_t sub_10000534C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_100005380(uint64_t **a1, void *a2)
{
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = (a1 + 1);
    do
    {
      v6 = v4[4];
      v7 = v4[5];
      if (*(v4 + 48))
      {
        if (*(v4 + 48) == 3)
        {
          if (v7 >= v6)
          {
            goto LABEL_14;
          }
        }

        else if (v6 < v7)
        {
          goto LABEL_14;
        }
      }

      else if (v6 < v7 && v6 + 1 < v7)
      {
LABEL_14:
        v5 = sub_10000D818(a1, v5, (v4 + 4), (v4 + 4));
        if (!sub_10000D4E4((v5 + 4), (v4 + 4)))
        {
          v9 = sub_10000C534(a1, (v4 + 4));
          v10 = *v9;
          if (*v9)
          {
            do
            {
              v11 = v10;
              v10 = v10[1];
            }

            while (v10);
          }

          else
          {
            do
            {
              v11 = v9[2];
              v12 = *v11 == v9;
              v9 = v11;
            }

            while (v12);
          }

          v5 = sub_10000D5AC(a1, (v4 + 4), v11);
        }
      }

      v13 = v4[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v4[2];
          v12 = *v14 == v4;
          v4 = v14;
        }

        while (!v12);
      }

      v4 = v14;
    }

    while (v14 != v3);
  }

  return a1;
}

void sub_1000054B4(uint64_t **a1, CFDictionaryRef theDict, uint64_t *a3, uint64_t a4, unsigned __int16 *a5)
{
  Value = CFDictionaryGetValue(theDict, @"Offset");
  TypeID = CFNumberGetTypeID();
  if (Value)
  {
    v12 = TypeID;
    if (CFGetTypeID(Value) != TypeID)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v46 = CFGetTypeID(Value);
      v47 = exception;
      v48 = v12;
      goto LABEL_57;
    }
  }

  LOBYTE(v72[0]) = 0;
  v75 = 0;
  v13 = sub_100001F30(a1, Value, "section offset");
  v14 = CFDictionaryGetValue(theDict, @"Media Block Size");
  v15 = CFNumberGetTypeID();
  if (!v14)
  {
    v41 = __cxa_allocate_exception(0x40uLL);
    v42 = sub_100001860(v41, "Couldn't parse media block size", 0x16u);
    v44 = sub_1000018C8;
    goto LABEL_58;
  }

  v16 = v15;
  if (CFGetTypeID(v14) != v15)
  {
    v45 = __cxa_allocate_exception(0x40uLL);
    v46 = CFGetTypeID(v14);
    v47 = v45;
    v48 = v16;
LABEL_57:
    v42 = sub_100008320(v47, v46, v48);
    v44 = sub_100008324;
LABEL_58:
    __cxa_throw(v42, v43, v44);
  }

  *&valuePtr = 0;
  if (!CFNumberGetValue(v14, kCFNumberLongType, &valuePtr))
  {
    v49 = __cxa_allocate_exception(0x40uLL);
    v50 = sub_100001860(v49, "Failed converting CFNumber to long", 0x16u);
  }

  v17 = valuePtr;
  if (v17 % (*(**a1 + 24))())
  {
    v51 = __cxa_allocate_exception(0x40uLL);
    v52 = sub_100001860(v51, "Invalid media block size", 0x16u);
  }

  v18 = CFDictionaryGetValue(theDict, @"Section Block Count");
  v19 = CFNumberGetTypeID();
  if (v18)
  {
    v20 = v19;
    if (CFGetTypeID(v18) != v19)
    {
      v61 = __cxa_allocate_exception(0x40uLL);
      v62 = CFGetTypeID(v18);
      v63 = sub_100008320(v61, v62, v20);
    }
  }

  v21 = sub_100001F30(a1, v18, "media block count");
  v22 = v21;
  v23 = a1[10];
  if (v23 <= v21)
  {
    v23 = v21;
  }

  a1[10] = v23;
  if ((v21 & 0x8000000000000000) != 0)
  {
    v53 = __cxa_allocate_exception(0x40uLL);
    v54 = sub_100001860(v53, "Invalid negative media block count", 0x16u);
  }

  v24 = *(a5 + 23);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a5 + 1);
  }

  if (v24 == 3 && (v25 >= 0 ? (v26 = a5) : (v26 = *a5), (v27 = *v26, v28 = *(v26 + 2), v27 == 20551) ? (v29 = v28 == 84) : (v29 = 0), v29))
  {
    v72[0] = *a3;
    v72[1] = v13;
    v73 = 2;
    v74 = v21;
    v75 = 1;
    sub_100005BBC(v72, a1 + 4, a1 + 7);
  }

  else
  {
    v30 = *a3;
    if (*(a4 + 23) < 0)
    {
      sub_1000093B4(v64, *a4, *(a4 + 8));
    }

    else
    {
      *v64 = *a4;
      v65 = *(a4 + 16);
    }

    v66 = 1;
    v76 = &_mh_execute_header;
    v77 = 2;
    sub_100008DA0(1, &v76, 3);
    *&valuePtr = v30;
    *(&valuePtr + 1) = v13;
    v68 = 2;
    *__p = *v64;
    v70 = v65;
    v64[0] = 0;
    v64[1] = 0;
    v65 = 0;
    v71 = v66;
    sub_10000CA2C(a1 + 4, &valuePtr);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64[0]);
    }

    *&valuePtr = *a3;
    *(&valuePtr + 1) = v13;
    v68 = 2;
    sub_100005E88(a1 + 7, &valuePtr);
  }

  *a3 = v13;
  v31 = CFDictionaryGetValue(theDict, @"Partitions");
  v32 = CFArrayGetTypeID();
  if (!v31)
  {
    v55 = __cxa_allocate_exception(0x40uLL);
    v56 = sub_100001860(v55, "Couldn't find partitions key", 0x16u);
  }

  v33 = v32;
  if (CFGetTypeID(v31) != v32)
  {
    v57 = __cxa_allocate_exception(0x40uLL);
    v58 = CFGetTypeID(v31);
    v59 = sub_100008320(v57, v58, v33);
  }

  if (CFArrayGetCount(v31) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v31, 0);
    v35 = CFDictionaryGetTypeID();
    if (ValueAtIndex)
    {
      v36 = v35;
      if (CFGetTypeID(ValueAtIndex) != v35)
      {
        v38 = __cxa_allocate_exception(0x40uLL);
        v39 = CFGetTypeID(ValueAtIndex);
        v40 = sub_100008320(v38, v39, v36);
      }
    }

    sub_100004E70(a1, ValueAtIndex, a3);
  }

  if (v75)
  {
    v22 = v22 - sub_100009458(v72) + 1;
  }

  v37 = *a3;
  if (*a3 != v22)
  {
    sub_100003410(v64, "Apple_Free");
    v66 = 0;
    v76 = &_mh_execute_header;
    v77 = 2;
    sub_100008DA0(0, &v76, 3);
    *&valuePtr = v37;
    *(&valuePtr + 1) = v22;
    v68 = 2;
    *__p = *v64;
    v70 = v65;
    v64[0] = 0;
    v64[1] = 0;
    v65 = 0;
    v71 = v66;
    sub_10000CA2C(a1 + 4, &valuePtr);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64[0]);
    }

    *a3 = v22;
  }

  if (v75 == 1)
  {
    sub_100005F44(v72, a1 + 4, a1 + 7);
    *a3 = sub_100009458(v72) + *a3 - 1;
  }
}

uint64_t **sub_100005BBC(uint64_t *a1, uint64_t **a2, uint64_t **a3)
{
  v5 = *a1;
  if ((a1[2] & 2) == 0)
  {
    ++v5;
  }

  *&v19 = v5;
  *(&v19 + 1) = v5 + 1;
  LOBYTE(v20) = 2;
  *&v17 = v5 + 1;
  *(&v17 + 1) = v5 + 2;
  LOBYTE(v18) = 2;
  *&v15 = v5 + 2;
  *(&v15 + 1) = sub_100009458(a1);
  LOBYTE(v16) = 2;
  sub_100003410(v7, "MBR");
  v9 = 1;
  v21 = &_mh_execute_header;
  v22 = 2;
  sub_100008DA0(1, &v21, 3);
  v10 = v19;
  v11 = v20;
  *__p = *v7;
  v13 = v8;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v14 = v9;
  sub_10000CA2C(a2, &v10);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  sub_100005E88(a3, &v19);
  sub_100003410(v7, "Primary GPT Header");
  v9 = 1;
  v21 = &_mh_execute_header;
  v22 = 2;
  sub_100008DA0(1, &v21, 3);
  v10 = v17;
  v11 = v18;
  *__p = *v7;
  v13 = v8;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v14 = v9;
  sub_10000CA2C(a2, &v10);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  sub_100005E88(a3, &v17);
  sub_100003410(v7, "Primary GPT Table");
  v9 = 1;
  v21 = &_mh_execute_header;
  v22 = 2;
  sub_100008DA0(1, &v21, 3);
  v10 = v15;
  v11 = v16;
  *__p = *v7;
  v13 = v8;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v14 = v9;
  sub_10000CA2C(a2, &v10);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  return sub_100005E88(a3, &v15);
}

void sub_100005E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_100005E88(uint64_t **a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 3)
    {
      if (v4 < v5)
      {
        return a1;
      }
    }

    else if (v5 >= v4)
    {
      return a1;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    return a1;
  }

  sub_10000BB3C(a1, a2, a2);
  if ((v7 & 1) == 0)
  {
    v8 = sub_10000C534(a1, a2);
    v9 = *v8;
    if (*v8)
    {
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v8[2];
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (v11);
    }

    sub_10000D5AC(a1, a2, v10);
  }

  return a1;
}

uint64_t **sub_100005F44(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v6 = *(a1 + 24);
  *&v20 = v6 - 1;
  *(&v20 + 1) = v6;
  LOBYTE(v21) = 2;
  v7 = sub_100009458(a1);
  v8 = *(a1 + 24) - 1;
  *&v18 = v6 - v7 + 1;
  *(&v18 + 1) = v8;
  LOBYTE(v19) = 2;
  sub_100003410(v10, "Backup GPT Header");
  v12 = 1;
  v22 = &_mh_execute_header;
  v23 = 2;
  sub_100008DA0(1, &v22, 3);
  v13 = v20;
  v14 = v21;
  *__p = *v10;
  v16 = v11;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v17 = v12;
  sub_10000CA2C(a2, &v13);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  sub_100005E88(a3, &v20);
  sub_100003410(v10, "Backup GPT Table");
  v12 = 1;
  v22 = &_mh_execute_header;
  v23 = 2;
  sub_100008DA0(1, &v22, 3);
  v13 = v18;
  v14 = v19;
  *__p = *v10;
  v16 = v11;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v17 = v12;
  sub_10000CA2C(a2, &v13);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  return sub_100005E88(a3, &v18);
}

void sub_100006124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_100006168(void *a1, CFDictionaryRef theDict, uint64_t *a3)
{
  Value = CFDictionaryGetValue(theDict, @"Name");
  TypeID = CFStringGetTypeID();
  if (Value)
  {
    v6 = TypeID;
    if (CFGetTypeID(Value) != TypeID)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v13 = CFGetTypeID(Value);
      v14 = exception;
      v15 = v6;
LABEL_11:
      v16 = sub_100008320(v14, v13, v15);
      v18 = sub_100008324;
LABEL_12:
      __cxa_throw(v16, v17, v18);
    }

    v7 = CFDictionaryGetValue(theDict, @"ID");
    v8 = CFStringGetTypeID();
    if (v7)
    {
      v9 = v8;
      if (CFGetTypeID(v7) == v8)
      {
        sub_10014C958(Value);
      }

      v19 = __cxa_allocate_exception(0x40uLL);
      v13 = CFGetTypeID(v7);
      v14 = v19;
      v15 = v9;
      goto LABEL_11;
    }

    v10 = __cxa_allocate_exception(0x40uLL);
    v11 = "Couldn't parse scheme id";
  }

  else
  {
    v10 = __cxa_allocate_exception(0x40uLL);
    v11 = "Couldn't parse scheme name";
  }

  v16 = sub_100001860(v10, v11, 0x16u);
  v18 = sub_1000018C8;
  goto LABEL_12;
}

void sub_10000647C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v20);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1000064E4(uint64_t **a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"Block Size");
  TypeID = CFNumberGetTypeID();
  if (!Value)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = sub_100001860(exception, "Couldn't parse media block size in whole disk mode", 0x16u);
    v15 = sub_1000018C8;
    goto LABEL_15;
  }

  v6 = TypeID;
  if (CFGetTypeID(Value) != TypeID)
  {
    v16 = __cxa_allocate_exception(0x40uLL);
    v17 = CFGetTypeID(Value);
    v13 = sub_100008320(v16, v17, v6);
    v15 = sub_100008324;
LABEL_15:
    __cxa_throw(v13, v14, v15);
  }

  *&valuePtr = 0;
  if (!CFNumberGetValue(Value, kCFNumberLongType, &valuePtr))
  {
    v18 = __cxa_allocate_exception(0x40uLL);
    v19 = sub_100001860(v18, "Failed converting CFNumber to long", 0x16u);
  }

  v7 = valuePtr;
  if (v7 != (*(**a1 + 24))())
  {
    v20 = __cxa_allocate_exception(0x40uLL);
    v21 = sub_100001860(v20, "MediaKit returned unsupported block size", 0x2Du);
  }

  v8 = CFDictionaryGetValue(theDict, @"Sector Count");
  v9 = CFNumberGetTypeID();
  if (v8)
  {
    v10 = v9;
    if (CFGetTypeID(v8) != v9)
    {
      v24 = __cxa_allocate_exception(0x40uLL);
      v25 = CFGetTypeID(v8);
      v26 = sub_100008320(v24, v25, v10);
    }
  }

  v11 = sub_100001F30(a1, v8, "media block count");
  if (!v11)
  {
    v22 = __cxa_allocate_exception(0x40uLL);
    v23 = sub_100001860(v22, "Can't parse disk image with MediaKit. No partition scheme or partition scheme not supported by MediaKit", 0x16u);
  }

  sub_100003410(v27, "Whole_Disk");
  v29 = 2;
  v35 = &_mh_execute_header;
  v36 = 2;
  sub_100008DA0(2, &v35, 3);
  *&valuePtr = 0;
  *(&valuePtr + 1) = v11;
  v31 = 2;
  *__p = *v27;
  v33 = v28;
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  v34 = v29;
  sub_10000CA2C(a1 + 4, &valuePtr);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  a1[10] = v11;
  sub_100004838(a1, 0, &valuePtr);
  sub_100005380(a1 + 7, &valuePtr);
  sub_1000085B4(&valuePtr, *(&valuePtr + 1));
}

void sub_1000071B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char **a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, const void *a19, uint64_t a20, uint64_t a21, std::locale a22, char a23)
{
  sub_1000043E8(&a18);
  sub_1000043E8(&a19);
  sub_1000085B4(a13, *v25);
  sub_10000B5D4(v24, *a14);
  sub_10000B9DC((v23 + 16));
  sub_10000B638(v23);
  _Unwind_Resume(a1);
}

void *sub_1000072E8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10000DAB8(a1, a2);
  *a1 = off_100201D00;
  a1[45] = &off_100201E00;
  a1[46] = &off_100201E28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100201D00;
  a1[45] = off_100201D88;
  a1[46] = off_100201DB0;
  return a1;
}

void sub_1000073EC(_Unwind_Exception *a1)
{
  sub_100009A0C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100007410(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100009A0C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100007454(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10000DB80(a1, a2);
  *a1 = off_100201F20;
  a1[45] = &off_100202020;
  a1[46] = &off_100202048;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100201F20;
  a1[45] = off_100201FA8;
  a1[46] = off_100201FD0;
  return a1;
}

void sub_100007558(_Unwind_Exception *a1)
{
  sub_10000A1A4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10000757C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10000A1A4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000075C0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10000DC48(a1, a2);
  *a1 = off_100202140;
  a1[45] = &off_100202240;
  a1[46] = &off_100202268;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100202140;
  a1[45] = off_1002021C8;
  a1[46] = off_1002021F0;
  return a1;
}

void sub_1000076C4(_Unwind_Exception *a1)
{
  sub_10000A93C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000076E8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10000A93C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10000772C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10000DD10(a1, a2);
  *a1 = off_100202360;
  a1[45] = &off_100202460;
  a1[46] = &off_100202488;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100202360;
  a1[45] = off_1002023E8;
  a1[46] = off_100202410;
  return a1;
}

void sub_100007830(_Unwind_Exception *a1)
{
  sub_10000B0D4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100007854(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10000B0D4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100007898@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[7];
  if (v2 == result[8])
  {
    v9 = 0;
    v10 = result[3];
    *a2 = result[5];
    *(a2 + 8) = v10;
LABEL_11:
    *(a2 + 16) = 2;
    goto LABEL_12;
  }

  v3 = result[5];
  v4 = v2 + 4;
  v5 = v2[4];
  if (v3 != v5)
  {
    v9 = 0;
    *a2 = v3;
    *(a2 + 8) = v5;
    goto LABEL_11;
  }

  v6 = v2[1];
  if (v6)
  {
    do
    {
      v7 = v6;
      v6 = *v6;
    }

    while (v6);
  }

  else
  {
    do
    {
      v7 = v2[2];
      v8 = *v7 == v2;
      v2 = v7;
    }

    while (!v8);
  }

  result[7] = v7;
  *a2 = *v4;
  *(a2 + 16) = v4[2];
  v9 = 1;
LABEL_12:
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_10000792C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1 + 56;
  v6 = *(a1 + 24);
  v7 = (*(*v6 + 32))(v6);
  v8 = (*(*v6 + 144))(v6);
  v13 = v6;
  *&v14 = 0;
  *(&v14 + 1) = v7;
  LOBYTE(v15) = 2;
  v16 = v8;
  v17 = v8;
  v18 = a2;
  v19[0] = off_100202578;
  v19[3] = v19;
  v12[0] = off_100202650;
  v12[1] = v5;
  v12[3] = v12;
  v10 = v14;
  v11 = v15;
  sub_1000B5DFC(&v13, v12, &v10, a3);
  sub_10000B95C(v12);
  sub_10000B95C(v19);
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_100007AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_10000B95C(va);
  sub_100007AD4(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100007AD4(uint64_t a1)
{
  sub_10000B95C(a1 + 56);
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100007B30(void *a1, uint64_t *a2)
{
  v3 = sub_1000026BC(a1, "name: ", 6);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = sub_1000026BC(v3, v5, v6);
  v8 = sub_1000026BC(v7, " ", 1);
  v9 = sub_1000026BC(v8, " status: ", 9);
  v11 = *(a2 + 6);
  return sub_100007BB4(v9, &v11);
}

void *sub_100007BB4(void *a1, _DWORD *a2)
{
  v2 = &off_100202600;
  v3 = 72;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_1000026BC(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_1000026BC(a1, v4, v5);
}

void sub_100007BF4(uint64_t a1)
{
  v2 = (a1 + 16);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, sub_10000DF4C);
  }
}

uint64_t sub_100007C50(uint64_t a1, unint64_t a2, int a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = a4;
  *(a1 + 16) = 0;
  v8 = std::system_category();
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  *(a1 + 113) = 0;
  *(a1 + 120) = 0;
  *(a1 + 208) = 0;
  if (a3 == 2)
  {
    v9 = (*(*a2 + 32))(a2);
    v10 = (*(*a2 + 144))(a2);
    v20 = a2;
    v21 = v9;
    v22 = 2;
    v24 = v10;
    v25 = v10;
    v26 = a4;
    v27[0] = off_100202578;
    v28 = v27;
    sub_100007FA0(a1 + 120, &v20);
    goto LABEL_17;
  }

  sub_100007BF4(a1);
  if (*(a1 + 113))
  {
    *&v20 = a1 + 24;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v20 = *(a1 + 24);
  }

  LOBYTE(v21) = v11;
  v12 = sub_10000801C(&v20, "Could not get media info");
  if (((*(*a2 + 96))(a2) & 1) == 0)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    v15 = (*(*a2 + 32))(a2);
    v16 = (*(*a2 + 144))(a2);
    v20 = a2;
    v21 = v15;
    v22 = 2;
    *v23 = *v19;
    *&v23[3] = *&v19[3];
    v24 = v16;
    v25 = v16;
    v26 = a4;
    v27[0] = off_100202578;
    v28 = v27;
    goto LABEL_16;
  }

  if (a3 != 1)
  {
    if (sub_1000080E8(v12))
    {
      *(a1 + 8) = 1;
    }

    else
    {
      v14 = *(v12 + 88);
      *(a1 + 8) = v14;
      if (v14 != 1)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_15;
  }

  v13 = sub_1000080E8(v12);
  *(a1 + 8) = v13;
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_11:
  sub_10000792C(v12, a4, &v20);
LABEL_16:
  sub_100007FA0(a1 + 120, &v20);
LABEL_17:
  sub_10000B95C(v27);
  v17 = v24;
  v24 = 0;
  if (v17)
  {
    (*(*v17 + 40))(v17);
  }

  return a1;
}

void sub_100007F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100007AD4(va);
  sub_10000B844(v6);
  sub_10000B8AC(v5);
  _Unwind_Resume(a1);
}

uint64_t sub_100007FA0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 88) == 1)
  {
    sub_1001252AC(a1, a2);
  }

  else
  {
    v3 = *a2;
    *(a1 + 9) = *(a2 + 9);
    *a1 = v3;
    v4 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(a1 + 32) = v4;
    v5 = *(a2 + 5);
    *(a1 + 48) = *(a2 + 12);
    *(a1 + 40) = v5;
    sub_10000B7C4(a1 + 56, a2 + 56);
    *(a1 + 88) = 1;
  }

  return a1;
}

uint64_t sub_10000801C(_BYTE *a1, uint64_t a2)
{
  if ((a1[16] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = *a1;
    *exception = &off_100233158;
    *(exception + 8) = v6;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  return *a1;
}

void sub_100008098(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100007BF4(a1);
  v4 = (a1 + 24);
  if (*(a1 + 113))
  {
    *a2 = v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = *v4;
  }

  *(a2 + 16) = v5;
}

BOOL sub_1000080E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == a1 + 40)
  {
    return 0;
  }

  v2 = (v1 + 56);
  v3 = *(v1 + 79);
  if (v3 < 0)
  {
    if (*(v1 + 64) != 10)
    {
      return 0;
    }

    v2 = *v2;
  }

  else if (v3 != 10)
  {
    return 0;
  }

  v4 = *v2;
  v5 = *(v2 + 4);
  return v4 == 0x69445F656C6F6857 && v5 == 27507;
}

const void **sub_100008154@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_100007C50(v7, a1, a2, a3);
  sub_10000E0F8(a4, v7);
  *(a4 + 216) = 1;
  if (v10[32] == 1)
  {
    sub_10000B95C(v10);
    v5 = v9;
    v9 = 0;
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }
  }

  return sub_10000B8AC(&v8);
}

void sub_100008230(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10000E2D8(&a9);
  if (a2 == 1)
  {
    *v9 = *(__cxa_begin_catch(a1) + 8);
    *(v9 + 216) = 0;
    __cxa_end_catch();
    JUMPOUT(0x100008200);
  }

  _Unwind_Resume(a1);
}

void *sub_100008328(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100002148(&v5);
  sub_1000026BC(&v5, "CoreFoundation type mismatch: ", 30);
  std::ostream::operator<<();
  sub_1000026BC(&v5, " while expecting ", 17);
  std::ostream::operator<<();
  sub_100004290(a1, &v5, 0x16u);
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  std::locale::~locale(v7);
  std::ostream::~ostream();
  std::ios::~ios();
  *a1 = &off_100201A00;
  return a1;
}

void sub_1000084D8(std::exception *a1)
{
  sub_1000023D4(a1);

  operator delete();
}

const void *sub_100008510@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1000034C8(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002A60();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

void sub_1000085B4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000085B4(a1, *a2);
    sub_1000085B4(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_100008608(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000088A0(v1);

  return std::ios::~ios();
}

uint64_t sub_100008654(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000088A0(v1);

  return std::ios::~ios();
}

void sub_1000086B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000088A0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10000871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100008758(_BYTE *a1, int a2)
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

void sub_1000087C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000088A0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100008828(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000088A0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000088A0(uint64_t a1)
{
  *a1 = &off_100201BC8;
  sub_100008A0C(a1);
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

uint64_t sub_100008A0C(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100008BBC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100008B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100008B84(uint64_t a1)
{
  sub_1000088A0(a1);

  operator delete();
}

int *sub_100008BBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 100;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 100;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100008DA0(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (!a3)
  {
LABEL_5:
    v4 = result;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "status";
    exception[2] = "invalid value";
    exception[3] = "value validator";
    *exception = &off_100201C60;
    *(exception + 8) = v4;
  }

  v3 = 4 * a3;
  while (*a2 != result)
  {
    ++a2;
    v3 -= 4;
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  return result;
}

void sub_100008E48(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_100008E80(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_100179BBC(a1);
  sub_100003410(v15, v3);
  sub_100009110(v10);
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

  v6 = sub_1000026BC(&v11, v4, v5);
  v7 = sub_1000026BC(v6, " [", 2);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = std::ostream::operator<<();
  sub_1000026BC(v8, "]", 1);
  sub_100008510(&v12, a2);
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

void (__cdecl ***sub_100009110(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_10000432C((a1 + 3), 24);
  return a1;
}

void sub_10000938C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_1000093B4(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100002A60();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

unint64_t sub_100009458(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v1 == 3)
    {
      if (v2 < v3)
      {
        return qword_10023FE58;
      }
    }

    else if (v3 >= v2)
    {
      return qword_10023FE58;
    }
  }

  else if (v3 >= v2 || v3 + 1 >= v2)
  {
    return qword_10023FE58;
  }

  return v2 + (v1 & 1) - v3 + (((v1 >> 1) & 1) - 1);
}

void sub_1000095D0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object)
{
  v10 = a2;
  v12 = v9[1];
  v9[1] = 0;
  if (v12)
  {
    sub_1001A30E8(v12);
  }

  sub_1001A307C(v9, a1, v10, &exception_object);
  _Unwind_Resume(exception_object);
}

void sub_1000096A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000096E0(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_100201CD8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100009720(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_100009774(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100009A0C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000097C0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100009A0C(v1);

  return std::ios::~ios();
}

void sub_100009820(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100009A0C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100009888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000098C4(_BYTE *a1, int a2)
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

void sub_100009930(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100009A0C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100009994(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100009A0C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100009A0C(uint64_t a1)
{
  *a1 = &off_100201E98;
  sub_100009B78(a1);
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

uint64_t sub_100009B78(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100009D28((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100009CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100009CF0(uint64_t a1)
{
  sub_100009A0C(a1);

  operator delete();
}

int *sub_100009D28(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 358;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 358;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100009F0C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10000A1A4(v1);

  return std::ios::~ios();
}

uint64_t sub_100009F58(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10000A1A4(v1);

  return std::ios::~ios();
}

void sub_100009FB8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10000A1A4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10000A020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10000A05C(_BYTE *a1, int a2)
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

void sub_10000A0C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10000A1A4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10000A12C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10000A1A4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10000A1A4(uint64_t a1)
{
  *a1 = &off_1002020B8;
  sub_10000A310(a1);
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

uint64_t sub_10000A310(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_10000A4C0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10000A45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000A488(uint64_t a1)
{
  sub_10000A1A4(a1);

  operator delete();
}

int *sub_10000A4C0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 359;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 359;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10000A6A4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10000A93C(v1);

  return std::ios::~ios();
}

uint64_t sub_10000A6F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10000A93C(v1);

  return std::ios::~ios();
}

void sub_10000A750(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10000A93C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10000A7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10000A7F4(_BYTE *a1, int a2)
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

void sub_10000A860(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10000A93C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10000A8C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10000A93C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10000A93C(uint64_t a1)
{
  *a1 = &off_1002022D8;
  sub_10000AAA8(a1);
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

uint64_t sub_10000AAA8(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_10000AC58((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10000ABF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000AC20(uint64_t a1)
{
  sub_10000A93C(a1);

  operator delete();
}

int *sub_10000AC58(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 361;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 361;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10000AE3C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10000B0D4(v1);

  return std::ios::~ios();
}

uint64_t sub_10000AE88(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10000B0D4(v1);

  return std::ios::~ios();
}

void sub_10000AEE8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10000B0D4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10000AF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10000AF8C(_BYTE *a1, int a2)
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

void sub_10000AFF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10000B0D4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10000B05C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10000B0D4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10000B0D4(uint64_t a1)
{
  *a1 = &off_1002024F8;
  sub_10000B240(a1);
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

uint64_t sub_10000B240(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_10000B3F0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10000B38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000B3B8(uint64_t a1)
{
  sub_10000B0D4(a1);

  operator delete();
}

int *sub_10000B3F0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 373;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 373;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10000B5D4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10000B5D4(a1, *a2);
    sub_10000B5D4(a1, *(a2 + 1));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

uint64_t *sub_10000B638(uint64_t *a1)
{
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  return a1;
}

uint64_t sub_10000B778(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_1002025E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B7C4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_10000B844(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    sub_10000B95C(a1 + 56);
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  return a1;
}

const void **sub_10000B8AC(const void **a1)
{
  if (*(a1 + 89) == 1)
  {
    sub_1000085B4((a1 + 7), a1[8]);
    sub_10000B5D4((a1 + 4), a1[5]);
    sub_10000B9DC(a1 + 2);
    v2 = a1[1];
    a1[1] = 0;
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }
  }

  return a1;
}

uint64_t sub_10000B95C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

const void **sub_10000B9DC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t **sub_10000BA10(uint64_t **a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 3)
    {
      if (v4 < v5)
      {
        return a1;
      }
    }

    else if (v5 >= v4)
    {
      return a1;
    }

    goto LABEL_12;
  }

  if (v5 < v4 && v5 + 1 < v4)
  {
LABEL_12:
    v7 = sub_10000BB3C(a1, a2, a2);
    if (v8)
    {
      v14 = v7;
      sub_10000BE50(a1, &v14);
      sub_10000BF50(a1, &v14);
    }

    else
    {
      v9 = sub_10000C534(a1, a2);
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10;
          v10 = v10[1];
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (v12);
      }

      sub_10000BAF4(a1, a2, v11);
    }
  }

  return a1;
}

uint64_t **sub_10000BAF4(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v5 = sub_10000C578(a1, a2, a3);
  sub_10000BE50(a1, &v5);
  return sub_10000BF50(a1, &v5);
}

uint64_t sub_10000BB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *sub_10000BBD8(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_10000BBD8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    if ((*(a3 + 16) & 2) != 0)
    {
      v6 = *a3;
    }

    else
    {
      v6 = *a3 + 1;
    }

    do
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4 + 48);
        v9 = v7[4];
        if ((v8 & 2) == 0)
        {
          ++v9;
        }

        if ((*(a3 + 16) & 1) + *(a3 + 8) - 1 >= v9)
        {
          break;
        }

        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if ((v8 & 1) + v7[5] - 1 >= v6)
      {
        break;
      }

      result = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = result;
  }

LABEL_14:
  *a2 = v7;
  return result;
}

uint64_t *sub_10000BC5C(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_10000BCB4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_10000BCB4(uint64_t *result, uint64_t *a2)
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

uint64_t *sub_10000BE50(uint64_t **a1, void **a2)
{
  v2 = *a2;
  if (*a2 == *a1)
  {
    return *a1;
  }

  v4 = *v2;
  if (*v2)
  {
    do
    {
      v5 = v4;
      v4 = *(v4 + 8);
    }

    while (v4);
  }

  else
  {
    v6 = *a2;
    do
    {
      v5 = *(v6 + 16);
      v7 = *v5 == v6;
      v6 = v5;
    }

    while (v7);
  }

  v8 = *(v2 + 32);
  if ((*(v2 + 48) & 2) == 0)
  {
    ++v8;
  }

  if (v8 == (*(v5 + 48) & 1) + *(v5 + 40))
  {
    v14 = *(v2 + 32);
    v15 = *(v2 + 48);
    sub_10000C140(a1, v2);
    operator delete(v2);
    v10 = *(v5 + 32);
    v11 = *(v5 + 48);
    sub_10000C05C(&v10, &v14, &v12);
    *(v5 + 32) = v12;
    *(v5 + 48) = v13;
    *a2 = v5;
    return v5;
  }

  return v2;
}

uint64_t **sub_10000BF50(uint64_t **a1, uint64_t ***a2)
{
  v5 = a1 + 1;
  result = *a2;
  if (*a2 == v5)
  {
    return v5;
  }

  v21 = v2;
  v22 = v3;
  v8 = result[1];
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
    v10 = result;
    do
    {
      v9 = v10[2];
      v11 = *v9 == v10;
      v10 = v9;
    }

    while (!v11);
  }

  if (v9 != v5)
  {
    v12 = v9[4];
    if ((v9[6] & 2) == 0)
    {
      v12 = (v12 + 1);
    }

    if (v12 == (result[5] + (result[6] & 1)))
    {
      v19 = *(v9 + 2);
      v20 = v9[6];
      sub_10000C140(a1, v9);
      operator delete(v9);
      v13 = *a2;
      v15 = *(*a2 + 2);
      v16 = v13[6];
      sub_10000C05C(&v15, &v19, &v17);
      v14 = *a2;
      *(v14 + 2) = v17;
      *(v14 + 48) = v18;
      return *a2;
    }
  }

  return result;
}

unint64_t *sub_10000C05C@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v5 = *a2;
  v4 = a2[1];
  if (*(a2 + 16))
  {
    if (v3 == 3)
    {
      if (v4 < v5)
      {
LABEL_4:
        *a3 = *result;
        v6 = result[2];
LABEL_13:
        *(a3 + 16) = v6;
        return result;
      }
    }

    else if (v5 >= v4)
    {
      goto LABEL_4;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    goto LABEL_4;
  }

  v8 = *(result + 16);
  v10 = *result;
  v9 = result[1];
  if (*(result + 16))
  {
    if (v8 == 3)
    {
      if (v9 < v10)
      {
LABEL_12:
        *a3 = *a2;
        v6 = a2[2];
        goto LABEL_13;
      }
    }

    else if (v10 >= v9)
    {
      goto LABEL_12;
    }
  }

  else if (v10 >= v9 || v10 + 1 >= v9)
  {
    goto LABEL_12;
  }

  v12 = v8 & 2;
  if ((v8 & 2) != 0)
  {
    v13 = *result;
  }

  else
  {
    v13 = v10 + 1;
  }

  v14 = v3 & 2;
  if ((v3 & 2) != 0)
  {
    result = *a2;
  }

  else
  {
    result = (v5 + 1);
  }

  v15 = v8 & 1;
  v16 = v3 & 1;
  if (v13 >= result)
  {
    v12 = v14;
  }

  else
  {
    v5 = v10;
  }

  if (v9 + v15 - 1 >= v4 + v16 - 1)
  {
    v4 = v9;
    LOBYTE(v16) = v15;
  }

  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v16 | v12;
  return result;
}

uint64_t *sub_10000C140(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_10000C1B4(v6, a2);
  return v3;
}

uint64_t *sub_10000C1B4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t sub_10000C534(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = a1 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = (*(a2 + 16) & 1) + *(a2 + 8) - 1;
    do
    {
      v6 = *(v3 + 32);
      if ((*(v3 + 48) & 2) == 0)
      {
        ++v6;
      }

      v7 = v5 >= v6;
      v8 = v5 >= v6;
      if (!v7)
      {
        result = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
  }

  return result;
}

uint64_t sub_10000C578(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v6 = sub_10000C83C(a1, a2);
  v7 = v6;
  v8 = *(v6 + 8);
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
    v10 = v6;
    do
    {
      v9 = *(v10 + 16);
      v11 = *v9 == v10;
      v10 = v9;
    }

    while (!v11);
  }

  v12 = *(a3 + 8);
  if (v12)
  {
    do
    {
      v13 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v14 = a3;
    do
    {
      v13 = *(v14 + 16);
      v11 = *v13 == v14;
      v14 = v13;
    }

    while (!v11);
  }

  v19 = *(v6 + 32);
  v20 = *(v6 + 48);
  sub_10000C6B4(&v19, a2, &v21);
  v17 = *(a3 + 32);
  v18 = *(a3 + 48);
  sub_10000C778(&v17, a2, &v19);
  sub_10000C880(a1, v9, v13);
  v17 = v21;
  v18 = v22;
  sub_10000C05C(&v17, a2, v16);
  sub_10000C05C(v16, &v19, &v17);
  *(v7 + 32) = v17;
  *(v7 + 48) = v18;
  return v7;
}

uint64_t sub_10000C6B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  v4 = *result;
  v5 = *(result + 8);
  if (*(result + 16))
  {
    if (v3 == 3)
    {
      if (v5 < v4)
      {
        goto LABEL_27;
      }
    }

    else if (v4 >= v5)
    {
      goto LABEL_27;
    }
  }

  else if (v4 >= v5 || v4 + 1 >= v5)
  {
    goto LABEL_27;
  }

  v7 = *(a2 + 16);
  v8 = *a2;
  v9 = *(a2 + 8);
  if (!*(a2 + 16))
  {
    if (v8 >= v9 || v8 + 1 >= v9)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v7 != 3)
  {
    if (v8 < v9)
    {
      goto LABEL_23;
    }

LABEL_27:
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
    return result;
  }

  if (v9 < v8)
  {
    goto LABEL_27;
  }

LABEL_23:
  v11 = (v3 & 1) + v5 - 1;
  if ((v7 & 2) != 0)
  {
    v12 = *a2;
  }

  else
  {
    v12 = v8 + 1;
  }

  if (v11 < v12)
  {
    goto LABEL_27;
  }

  *a3 = v4;
  *(a3 + 8) = v8;
  *(a3 + 16) = v3 & 2 | ((~v7 & 2) != 0);
  return result;
}

uint64_t sub_10000C778@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v3 == 3)
    {
      if (v4 < v5)
      {
        goto LABEL_26;
      }
    }

    else if (v5 >= v4)
    {
      goto LABEL_26;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    goto LABEL_26;
  }

  v7 = *(result + 16);
  v9 = *result;
  v8 = *(result + 8);
  if (!*(result + 16))
  {
    if (v9 >= v8 || v9 + 1 >= v8)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v7 != 3)
  {
    if (v9 < v8)
    {
      goto LABEL_23;
    }

LABEL_26:
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
    return result;
  }

  if (v8 < v9)
  {
    goto LABEL_26;
  }

LABEL_23:
  if ((v7 & 2) == 0)
  {
    ++v9;
  }

  if ((v3 & 1) + v4 - 1 < v9)
  {
    goto LABEL_26;
  }

  *a3 = v4;
  *(a3 + 8) = v8;
  *(a3 + 16) = v7 & 1 | (2 * ((v3 & 1) == 0));
  return result;
}

uint64_t sub_10000C83C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = a1 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    if ((*(a2 + 16) & 2) == 0)
    {
      ++v5;
    }

    do
    {
      v6 = (*(v3 + 48) & 1) + *(v3 + 40) - 1;
      v7 = v6 >= v5;
      v8 = v6 < v5;
      if (v7)
      {
        result = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
  }

  return result;
}

uint64_t *sub_10000C880(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = sub_10000C140(a1, v4);
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

const void **sub_10000C8E0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_10000C914(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100201BC8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10000C9C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t **sub_10000C9DC(uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_10000BA10(a1, a2);
  return a1;
}

uint64_t *sub_10000CA2C(uint64_t **a1, __int128 *a2)
{
  v13 = *a2;
  v14 = *(a2 + 2);
  if (v14)
  {
    if (v14 == 3)
    {
      if (*(&v13 + 1) < v13)
      {
        return (a1 + 1);
      }
    }

    else if (v13 >= *(&v13 + 1))
    {
      return (a1 + 1);
    }
  }

  else if (v13 >= *(&v13 + 1) || (v13 + 1) >= *(&v13 + 1))
  {
    return (a1 + 1);
  }

  if (sub_10000CB40(a2 + 3))
  {
    return (a1 + 1);
  }

  result = sub_10000D0CC(a1, a2, a2);
  if ((v6 & 1) == 0)
  {
    v7 = sub_10000C83C(a1, &v13);
    v8 = sub_10000C534(a1, &v13);
    v9 = *v8;
    if (*v8)
    {
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v8[2];
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (v11);
    }

    v12 = v10;
    v15 = v7;
    sub_10000CC64(a1, &v13, a2 + 24, &v15, &v12);
    return v15;
  }

  return result;
}

BOOL sub_10000CB40(void *a1)
{
  if ((atomic_load_explicit(&qword_10023FE88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10023FE88))
  {
    sub_10000D028(&xmmword_10023FE68);
    __cxa_atexit(sub_10000534C, &xmmword_10023FE68, &_mh_execute_header);
    __cxa_guard_release(&qword_10023FE88);
  }

  if (byte_10023FE7F < 0)
  {
    sub_1000093B4(__p, xmmword_10023FE68, *(&xmmword_10023FE68 + 1));
  }

  else
  {
    *__p = xmmword_10023FE68;
    v5 = unk_10023FE78;
  }

  v6 = dword_10023FE80;
  v2 = sub_10000CF90(a1, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_10000CC64(uint64_t **a1, __int128 *a2, uint64_t a3, uint64_t **a4, uint64_t **a5)
{
  v8 = *a5;
  v9 = (*a5)[1];
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
    v11 = *a5;
    do
    {
      v10 = v11[2];
      v12 = *v10 == v11;
      v11 = v10;
    }

    while (!v12);
  }

  v13 = *a4;
  if (*a1 == *a4)
  {
    v15 = (a1 + 1);
  }

  else
  {
    v14 = *v13;
    if (*v13)
    {
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      v16 = *a4;
      do
      {
        v15 = v16[2];
        v12 = *v15 == v16;
        v16 = v15;
      }

      while (v12);
    }
  }

  v32 = *a2;
  v33 = *(a2 + 2);
  *&v30 = qword_10023FE60;
  *(&v30 + 1) = qword_10023FE60;
  v31 = 2;
  v28 = *(v8 + 2);
  v29 = v8[6];
  while (v13 != v10)
  {
    v30 = *(v13 + 2);
    v31 = *(v13 + 48);
    v26 = v32;
    v27 = v33;
    sub_10000C6B4(&v26, &v30, &v21);
    if (v22)
    {
      if (v22 == 3)
      {
        if (*(&v21 + 1) >= v21)
        {
          goto LABEL_23;
        }
      }

      else if (v21 < *(&v21 + 1))
      {
        goto LABEL_23;
      }
    }

    else if (v21 < *(&v21 + 1) && (v21 + 1) < *(&v21 + 1))
    {
LABEL_23:
      if (*(a3 + 23) < 0)
      {
        sub_1000093B4(__p, *a3, *(a3 + 8));
      }

      else
      {
        *__p = *a3;
        v24 = *(a3 + 16);
      }

      v25 = *(a3 + 24);
      v17 = sub_10000D2AC(a1, v15, &v21, &v21);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      *a4 = v17;
    }

    v26 = v32;
    v27 = v33;
    sub_10000C778(&v26, &v30, &v21);
    v32 = v21;
    LOBYTE(v33) = v22;
    v15 = *a4;
    v18 = (*a4)[1];
    v19 = *a4;
    if (v18)
    {
      do
      {
        v13 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v13 = v19[2];
        v12 = *v13 == v19;
        v19 = v13;
      }

      while (!v12);
    }

    *a4 = v13;
  }

  v21 = v32;
  v22 = v33;
  sub_10000C778(&v21, &v28, &v26);
  v20 = v26;
  if (!v27)
  {
    if (v26 >= *(&v26 + 1))
    {
      goto LABEL_47;
    }

    v20 = v26 + 1;
    goto LABEL_41;
  }

  if (v27 != 3)
  {
LABEL_41:
    if (v20 >= *(&v26 + 1))
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (*(&v26 + 1) < v26)
  {
    goto LABEL_47;
  }

LABEL_42:
  v21 = v26;
  v22 = v27;
  if (*(a3 + 23) < 0)
  {
    sub_1000093B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v24 = *(a3 + 16);
  }

  v25 = *(a3 + 24);
  v15 = sub_10000D2AC(a1, v15, &v21, &v21);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_47:
  *a4 = v15;
}

void sub_10000CF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10000CF90(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && *(v7 + 6) == *(v6 + 6);
}

uint64_t sub_10000D028(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  v3 = &_mh_execute_header;
  v4 = 2;
  sub_100008DA0(0, &v3, 3);
  return a1;
}

void sub_10000D0B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000D0CC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  result = *sub_10000BBD8(a1, &v4, a2);
  if (!result)
  {
    sub_10000D14C();
  }

  return result;
}

void sub_10000D1C4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10000D248(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D1E0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    sub_1000093B4((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = *(a2 + 12);
  return a1;
}

void sub_10000D248(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10000D2AC(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *sub_10000D36C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_10000D36C(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_5;
  }

  v5 = *(a5 + 16);
  v6 = (v5 & 1) + *(a5 + 8) - 1;
  v7 = a2[4];
  if ((a2[6] & 2) == 0)
  {
    ++v7;
  }

  if (v6 < v7)
  {
LABEL_5:
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_23:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v15 = a2;
      do
      {
        v10 = v15[2];
        v11 = *v10 == v15;
        v15 = v10;
      }

      while (v11);
    }

    v16 = *a5;
    if ((*(a5 + 16) & 2) == 0)
    {
      ++v16;
    }

    if ((v10[6] & 1) + v10[5] - 1 < v16)
    {
      goto LABEL_23;
    }

    return sub_10000BBD8(a1, a3, a5);
  }

  v11 = (v5 & 2) == 0;
  v12 = *a5;
  if (v11)
  {
    ++v12;
  }

  if ((a2[6] & 1) + a2[5] - 1 < v12)
  {
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        a4 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v17 = a2;
      do
      {
        a4 = v17[2];
        v11 = *a4 == v17;
        v17 = a4;
      }

      while (!v11);
    }

    if (a4 == a1 + 1)
    {
      goto LABEL_34;
    }

    v18 = a4[4];
    if ((a4[6] & 2) == 0)
    {
      v18 = (v18 + 1);
    }

    if (v6 < v18)
    {
LABEL_34:
      if (v13)
      {
        *a3 = a4;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }

      return a4;
    }

    return sub_10000BBD8(a1, a3, a5);
  }

  *a3 = a2;
  *a4 = a2;
  return a4;
}

BOOL sub_10000D4E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v2 == 3)
    {
      if (v3 >= v4)
      {
        goto LABEL_19;
      }
    }

    else if (v4 < v3)
    {
      goto LABEL_19;
    }
  }

  else if (v4 < v3 && v4 + 1 < v3)
  {
    goto LABEL_19;
  }

  v7 = *a2;
  v6 = *(a2 + 8);
  if (!*(a2 + 16))
  {
    if (v7 < v6 && v7 + 1 < v6)
    {
      goto LABEL_19;
    }

    return 1;
  }

  if (*(a2 + 16) != 3)
  {
    if (v7 < v6)
    {
      goto LABEL_19;
    }

    return 1;
  }

  if (v6 < v7)
  {
    return 1;
  }

LABEL_19:
  if ((v2 & 2) != 0)
  {
    v10 = *a1;
  }

  else
  {
    v10 = v4 + 1;
  }

  v11 = *a2;
  if ((*(a2 + 16) & 2) == 0)
  {
    ++v11;
  }

  return v11 == v10 && (*(a2 + 16) & 1) + *(a2 + 8) == (v2 & 1) + v3;
}

uint64_t *sub_10000D5AC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C83C(a1, a2);
  v19 = *a2;
  v20 = *(a2 + 16);
  v21 = v6;
  v24 = *(v6 + 32);
  v25 = *(v6 + 48);
  sub_10000C6B4(&v24, &v19, &v26);
  v7 = v26;
  if (v27)
  {
    if (v27 == 3)
    {
      if (*(&v26 + 1) < v26)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (v26 >= *(&v26 + 1))
    {
      goto LABEL_16;
    }

    v7 = v26 + 1;
  }

  if (v7 >= *(&v26 + 1))
  {
    goto LABEL_16;
  }

LABEL_8:
  if (*a1 == v6)
  {
    v9 = (a1 + 1);
  }

  else
  {
    v8 = *v6;
    if (*v6)
    {
      do
      {
        v9 = v8;
        v8 = *(v8 + 8);
      }

      while (v8);
    }

    else
    {
      v10 = v6;
      do
      {
        v9 = *(v10 + 16);
        v11 = *v9 == v10;
        v10 = v9;
      }

      while (v11);
    }
  }

  v22 = *(v6 + 32);
  v23 = *(v6 + 48);
  sub_10000C778(&v22, &v26, &v24);
  *(v6 + 32) = v24;
  *(v6 + 48) = v25;
  sub_10000D818(a1, v9, &v26, &v26);
LABEL_16:
  while (v6 != a3)
  {
    v22 = *(v6 + 32);
    LOBYTE(v23) = *(v6 + 48);
    v24 = v19;
    v25 = v20;
    sub_10000C6B4(&v24, v6 + 32, &v26);
    v12 = v26;
    if (v27)
    {
      if (v27 == 3)
      {
        if (*(&v26 + 1) >= v26)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (v26 >= *(&v26 + 1))
      {
        goto LABEL_30;
      }

      v12 = v26 + 1;
    }

    if (v12 < *(&v26 + 1))
    {
LABEL_24:
      v13 = v21;
      v14 = (a1 + 1);
      if (*a1 != v21)
      {
        v15 = *v21;
        if (*v21)
        {
          do
          {
            v14 = v15;
            v15 = v15[1];
          }

          while (v15);
        }

        else
        {
          do
          {
            v14 = v13[2];
            v11 = *v14 == v13;
            v13 = v14;
          }

          while (v11);
        }
      }

      sub_10000D818(a1, v14, &v26, &v26);
    }

LABEL_30:
    v16 = v21;
    v17 = v21[1];
    if (v17)
    {
      do
      {
        v6 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v6 = v16[2];
        v11 = *v6 == v16;
        v16 = v6;
      }

      while (!v11);
    }

    v21 = v6;
    v24 = v19;
    v25 = v20;
    sub_10000C778(&v24, &v22, &v26);
    v19 = v26;
    LOBYTE(v20) = v27;
  }

  sub_10000D8B8(a1, &v19, &v21);
  return v21;
}

uint64_t sub_10000D818(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *sub_10000D36C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_10000D8B8(uint64_t **a1, __int128 *a2, uint64_t **a3)
{
  v6 = *a3;
  if (*a1 == *a3)
  {
    v8 = (a1 + 1);
  }

  else
  {
    v7 = *v6;
    if (*v6)
    {
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v9 = *a3;
      do
      {
        v8 = v9[2];
        v10 = *v8 == v9;
        v9 = v8;
      }

      while (v10);
    }
  }

  v31 = *(v6 + 2);
  v32 = v6[6];
  v26 = *a2;
  v27 = *(a2 + 2);
  sub_10000C6B4(&v26, &v31, &v28);
  v11 = v28;
  if (!v30)
  {
    if (v28 >= v29)
    {
      goto LABEL_16;
    }

    v11 = v28 + 1;
LABEL_14:
    if (v11 >= v29)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v30 != 3)
  {
    goto LABEL_14;
  }

  if (v29 >= v28)
  {
LABEL_15:
    sub_10000D818(a1, v8, &v28, &v28);
  }

LABEL_16:
  v24 = *a2;
  v25 = *(a2 + 2);
  sub_10000C778(&v24, &v31, &v26);
  v12 = v26;
  if (!v27)
  {
    if (v26 >= *(&v26 + 1))
    {
      goto LABEL_24;
    }

    v12 = v26 + 1;
LABEL_22:
    if (v12 >= *(&v26 + 1))
    {
      goto LABEL_24;
    }

LABEL_23:
    v13 = *a3;
    v14 = &v26;
    v15 = &v26;
LABEL_32:
    result = sub_10000D818(a1, v13, v14, v15);
    *a3 = result;
    return result;
  }

  if (v27 != 3)
  {
    goto LABEL_22;
  }

  if (*(&v26 + 1) >= v26)
  {
    goto LABEL_23;
  }

LABEL_24:
  v22 = v31;
  v23 = v32;
  result = sub_10000C778(&v22, a2, &v24);
  v17 = v24;
  if (!v25)
  {
    if (v24 >= *(&v24 + 1))
    {
      return result;
    }

    v17 = v24 + 1;
LABEL_30:
    if (v17 >= *(&v24 + 1))
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v25 != 3)
  {
    goto LABEL_30;
  }

  if (*(&v24 + 1) >= v24)
  {
LABEL_31:
    v18 = *a3;
    v20 = *(*a3 + 2);
    v21 = v18[6];
    sub_10000C6B4(&v20, &v24, &v22);
    v19 = *a3;
    *(v19 + 2) = v22;
    *(v19 + 48) = v23;
    v13 = *a3;
    v14 = &v24;
    v15 = &v24;
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_10000DAB8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100201E98;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10000DB68(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DB80(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002020B8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10000DC30(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DC48(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002022D8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10000DCF8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DD10(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002024F8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10000DDC0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DE48(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100202650;
  a2[1] = v2;
  return result;
}

uint64_t sub_10000DF00(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_1002026B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000DF4C(uint64_t ***a1)
{
  result = ***a1;
  if ((*(result + 113) & 1) == 0)
  {
    sub_10000DF6C(result + 24, *result);
  }

  return result;
}

uint64_t sub_10000E054(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0uLL;
  *result = v2;
  *(result + 16) = 0;
  v3 = *(a2 + 3);
  *(result + 16) = *(a2 + 2);
  *(a2 + 2) = 0;
  *(result + 24) = v3;
  *(result + 32) = *(a2 + 4);
  v4 = a2 + 5;
  v5 = *(a2 + 5);
  *(result + 40) = v5;
  v6 = result + 40;
  v7 = *(a2 + 6);
  *(result + 48) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 4) = v4;
    *v4 = 0;
    *(a2 + 6) = 0;
  }

  else
  {
    *(result + 32) = v6;
  }

  *(result + 56) = *(a2 + 7);
  v8 = a2 + 4;
  v9 = *(a2 + 8);
  *(result + 64) = v9;
  v10 = result + 64;
  v11 = *(a2 + 9);
  *(result + 72) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a2 + 7) = v8;
    *v8 = 0;
    *(a2 + 9) = 0;
  }

  else
  {
    *(result + 56) = v10;
  }

  v12 = *(a2 + 10);
  *(result + 88) = *(a2 + 88);
  *(result + 80) = v12;
  return result;
}

uint64_t sub_10000E0F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = 0;
  if (*(a2 + 113) == 1)
  {
    sub_10000E054(a1 + 24, (a2 + 24));
    v5 = *(a1 + 8);
    *(a1 + 113) = 1;
    v6 = (a1 + 120);
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_10000E260(v6, (a2 + 120));
    return a1;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 113) = 0;
  v6 = (a1 + 120);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_10000792C(a1 + 24, *(a2 + 12), v11);
  *v6 = v11[0];
  *(v6 + 9) = *(v11 + 9);
  v7 = v12;
  v8 = v13;
  v12 = 0;
  *(a1 + 152) = v7;
  *(a1 + 160) = v8;
  *(a1 + 168) = v14;
  sub_10000B7C4(a1 + 176, v15);
  *(a1 + 208) = 1;
  sub_10000B95C(v15);
  v9 = v12;
  v12 = 0;
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  return a1;
}

uint64_t sub_10000E260(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v3 = *a2;
    *(a1 + 9) = *(a2 + 9);
    *a1 = v3;
    v4 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(a1 + 32) = v4;
    v5 = *(a2 + 5);
    *(a1 + 48) = *(a2 + 12);
    *(a1 + 40) = v5;
    sub_10000B7C4(a1 + 56, a2 + 56);
    *(a1 + 88) = 1;
  }

  return a1;
}

uint64_t sub_10000E2D8(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    sub_10000B95C(a1 + 176);
    v2 = *(a1 + 152);
    *(a1 + 152) = 0;
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  sub_10000B8AC((a1 + 24));
  return a1;
}

void sub_10000E80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_10000E944(&a20);
  if (a12)
  {
    (*(*a12 + 16))(a12);
  }

  if (a2 == 1)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"verify failed" error:v20];
    __cxa_end_catch();
    JUMPOUT(0x10000E7D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000E944(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_10000E990(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000E990(void ***a1)
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
        v4 = sub_100157D44(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10000EFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2 == 1)
  {
    if (*(__cxa_begin_catch(exception_object) + 2) == 45)
    {
      __cxa_end_catch();
      JUMPOUT(0x10000EEFCLL);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

int *sub_10000FC78(uint64_t a1)
{
  v2 = *__error();
  v3 = sub_1000E044C();
  if (v3)
  {
    v11 = 0;
    v5 = sub_1000E03D8(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    *buf = 68157954;
    v13 = 46;
    v14 = 2080;
    v15 = "[DIConvertManager runWithError:]_block_invoke";
    LODWORD(v10) = 18;
    v7 = _os_log_send_and_compose_impl(v6, &v11, 0, 0, &_mh_execute_header, v5, 16, "%.*s: Cancelling conversion (NSProgress cancel requested)", buf, v10);

    if (v7)
    {
      fprintf(__stderrp, "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = sub_1000E03D8(v3, v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v13 = 46;
      v14 = 2080;
      v15 = "[DIConvertManager runWithError:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%.*s: Cancelling conversion (NSProgress cancel requested)", buf, 0x12u);
    }
  }

  result = __error();
  *result = v2;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

uint64_t sub_10000FE1C(void *a1)
{
  if (*(a1[1] + 8))
  {
    if (sub_1000E0464())
    {
      *&v3 = "DiskImage::Context::flush(di_flush_mode)";
      *(&v3 + 1) = 25;
      v4 = 2;
      sub_100010120(v5, &v3);
      sub_1000026BC(v6, "Disk image is terminated, skipping flush", 40);
      std::ostream::~ostream();
      sub_100010354(v5);
      std::ios::~ios();
    }

    return 4294967290;
  }

  else
  {
    v2 = *(*a1 + 24);

    return v2();
  }
}

void sub_10000FEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100010248(va);
  _Unwind_Resume(a1);
}

void sub_100010030(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (v15)
  {
    sub_10000367C(v15);
  }

  if (a15)
  {
    sub_10000367C(a15);
  }

  a9.super_class = DIConvertManager;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void *sub_100010120(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10001028C(a1, a2);
  *a1 = off_100202730;
  a1[45] = &off_100202830;
  a1[46] = &off_100202858;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100202730;
  a1[45] = off_1002027B8;
  a1[46] = off_1002027E0;
  return a1;
}

void sub_100010224(_Unwind_Exception *a1)
{
  sub_100010354(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100010248(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100010354(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10001028C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002028C8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10001033C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100010354(uint64_t a1)
{
  *a1 = &off_1002028C8;
  sub_100010794(a1);
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

void sub_1000104C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100010354(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100010528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100010564(_BYTE *a1, int a2)
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

uint64_t sub_1000105D0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100010354(v1);

  return std::ios::~ios();
}

void sub_10001061C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100010354(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100010680(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100010354(v1);

  return std::ios::~ios();
}

void sub_1000106E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100010354(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10001075C(uint64_t a1)
{
  sub_100010354(a1);

  operator delete();
}

uint64_t sub_100010794(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v10 >= 1)
      {
        v5 = sub_1000034C8(a1 + 104);
        if (v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100002A60();
        }

        v7 = v6;
        if (v6 >= 0x17)
        {
          operator new();
        }

        v9 = v6;
        if (v6)
        {
          memmove(__p, v5, v6);
        }

        *(__p + v7) = 0;
        sub_10001098C((a1 + 72), __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        v9 = 0;
        LOBYTE(__p[0]) = 0;
        sub_100003514(a1 + 104, __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100010964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10001098C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v19 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v21 = v4;
    v22 = 2080;
    v23 = v11;
    v24 = 2048;
    v25 = 191;
    v26 = 2082;
    v27 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v19, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);

    if (v13)
    {
      fprintf(__stderrp, "%s\n", v13);
      free(v13);
    }
  }

  else
  {
    v14 = sub_1000E03D8(v6, v7);
    v15 = *(a1 + 4);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      *buf = 68158466;
      v21 = v4;
      v22 = 2080;
      v23 = v16;
      v24 = 2048;
      v25 = 191;
      v26 = 2082;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v14, v15, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100010B80(uint64_t a1)
{
  sub_100010D7C(a1 + 72);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_100010BE4(uint64_t a1)
{

  operator delete();
}

id sub_100010C98(uint64_t a1, void *a2)
{
  *a2 = off_100202948;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100010CE8(id *a1)
{

  operator delete(a1);
}

uint64_t sub_100010D30(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_1002029B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100010D7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100010DFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_1000111C4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100011774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000117F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011810(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  [WeakRetained signalCommandCompletedWithXpcError:v6];
}

void sub_100012154(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000141EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001421C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *__error();
  v5 = sub_1000E044C();
  if (v5)
  {
    v13 = 0;
    v7 = sub_1000E03D8(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *buf = 68158210;
    v15 = 89;
    v16 = 2080;
    v17 = "+[DIControllerServiceDelegate sendHandleToClient:clientConnection:outError:]_block_invoke";
    v18 = 2114;
    v19 = v3;
    v9 = _os_log_send_and_compose_impl(v8, &v13, 0, 0, &_mh_execute_header, v7, 16, "%.*s: Error calling back the client via XPC: %{public}@", buf, 28);

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E03D8(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 68158210;
      v15 = 89;
      v16 = 2080;
      v17 = "+[DIControllerServiceDelegate sendHandleToClient:clientConnection:outError:]_block_invoke";
      v18 = 2114;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%.*s: Error calling back the client via XPC: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v4;
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_1000143EC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    v5 = *__error();
    v11 = sub_1000E044C();
    if (v11)
    {
      v20 = 0;
      v8 = sub_1000E03D8(v11, v12);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      *buf = 68157954;
      v22 = 89;
      v23 = 2080;
      v24 = "+[DIControllerServiceDelegate sendHandleToClient:clientConnection:outError:]_block_invoke";
      v10 = _os_log_send_and_compose_impl(v13, &v20, 0, 0, &_mh_execute_header, v8, 0, "%.*s: Client acknowledged receiving the device handle", COERCE_DOUBLE(68157954), buf, 18);
      goto LABEL_12;
    }

    v15 = sub_1000E03D8(v11, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v22 = 89;
      v23 = 2080;
      v24 = "+[DIControllerServiceDelegate sendHandleToClient:clientConnection:outError:]_block_invoke";
      v16 = "%.*s: Client acknowledged receiving the device handle";
      v17 = v15;
      v18 = OS_LOG_TYPE_DEFAULT;
      v19 = 18;
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (!v6)
  {
    v15 = sub_1000E03D8(v6, v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 68158210;
      v22 = 89;
      v23 = 2080;
      v24 = "+[DIControllerServiceDelegate sendHandleToClient:clientConnection:outError:]_block_invoke";
      v25 = 2114;
      v26 = v4;
      v16 = "%.*s: Client reported error: %{public}@";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 28;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, v19);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v20 = 0;
  v8 = sub_1000E03D8(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  *buf = 68158210;
  v22 = 89;
  v23 = 2080;
  v24 = "+[DIControllerServiceDelegate sendHandleToClient:clientConnection:outError:]_block_invoke";
  v25 = 2114;
  v26 = v4;
  v10 = _os_log_send_and_compose_impl(v9, &v20, 0, 0, &_mh_execute_header, v8, 16, "%.*s: Client reported error: %{public}@", COERCE_DOUBLE(68158210), buf, 28);
LABEL_12:
  v14 = v10;

  if (v14)
  {
    fprintf(__stderrp, "%s\n", v14);
    free(v14);
  }

LABEL_20:
  *__error() = v5;
}

void sub_100014D48(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [v3 reason];
    [DIError errorWithEnumValue:150 verboseInfo:v4];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x100014CB8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000151B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000151D0(uint64_t *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 validateDeserializationWithError:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = a1[4];
    v6 = *(*(a1[6] + 8) + 40);
    v8 = v4;
    [DIControllerServiceDelegate tryAttachWithParams:v5 clientConnection:v6 outError:&v8];
    v7 = v8;

    v4 = v7;
  }

  [a1[4] invalidate];
  (*(a1[5] + 16))();
}

void sub_10001560C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 runWithError:&v4];
  v3 = v4;
  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();
}

void sub_1000157B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [v2 validateDeserializationWithError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [[DIVerifyManager alloc] initWithParams:*(a1 + 32)];
    v7 = v4;
    [(DIVerifyManager *)v5 runWithError:&v7];
    v6 = v7;

    v4 = v6;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000159B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [v2 validateDeserializationWithError:&v9];
  v4 = v9;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 32);
  v8 = v4;
  v6 = [v5 keychainUnlockWithError:&v8];
  v7 = v8;

  if (!v6)
  {
    v4 = v7;
LABEL_5:
    (*(*(a1 + 40) + 16))();
    v7 = v4;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))();
LABEL_6:
}

void sub_100015BC4(void *a1)
{
  v2 = a1[4];
  v10 = 0;
  v3 = [v2 validateDeserializationWithError:&v10];
  v4 = v10;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = a1[4];
  v6 = a1[6];
  v9 = v4;
  v7 = [v5 GUIAskForPassphraseWithPassphraseUsage:v6 error:&v9];
  v8 = v9;

  if (!v7)
  {
    v4 = v8;
LABEL_5:
    (*(a1[5] + 16))();
    v8 = v4;
    goto LABEL_6;
  }

  (*(a1[5] + 16))();
LABEL_6:
}

void sub_100015DF8(void *a1)
{
  v2 = a1[4];
  v10 = 0;
  v3 = [v2 validateDeserializationWithError:&v10];
  v4 = v10;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = a1[4];
  v6 = a1[5];
  v9 = v4;
  v7 = [v5 createAndStoreInSystemKeychainWithAccount:v6 error:&v9];
  v8 = v9;

  if (!v7)
  {
    v4 = v8;
LABEL_5:
    (*(a1[6] + 16))();
    v8 = v4;
    goto LABEL_6;
  }

  (*(a1[6] + 16))();
LABEL_6:
}

void sub_100016008(uint64_t a1)
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100014204;
  v17[4] = sub_100014214;
  v18 = 0;
  v2 = *(a1 + 32);
  v16 = 0;
  v3 = [v2 validateDeserializationWithError:&v16];
  v4 = v16;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = [[DIController2IO_XPCHandlerBase alloc] initWithParams:*(a1 + 32)];
  v15 = v4;
  v6 = [(DIBaseXPCHandler *)v5 connectWithError:&v15];
  v7 = v15;

  if ((v6 & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
LABEL_8:

    v4 = v7;
    goto LABEL_9;
  }

  v8 = [(DIBaseXPCHandler *)v5 remoteProxy];
  v9 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001622C;
  v12[3] = &unk_100202AE0;
  v14 = v17;
  v10 = v5;
  v13 = v10;
  [v8 retrieveStatsWithParams:v9 reply:v12];

  v11 = v7;
  LODWORD(v9) = [(DIBaseXPCHandler *)v10 completeCommandWithError:&v11];
  v4 = v11;

  if (!v9)
  {
    (*(*(a1 + 40) + 16))();

    v7 = v4;
    goto LABEL_8;
  }

LABEL_5:
  (*(*(a1 + 40) + 16))();
LABEL_9:
  _Block_object_dispose(v17, 8);
}

void sub_100016210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001622C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (!v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  [*(a1 + 32) signalCommandCompletedWithXpcError:v6];
}

void sub_100016378(id a1)
{
  v1 = *__error();
  v2 = sub_1000E044C();
  if (v2)
  {
    v9 = 0;
    v4 = sub_1000E03D8(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    *buf = 68157954;
    v11 = 63;
    v12 = 2080;
    v13 = "[DIControllerServiceDelegate setupNewConnection:]_block_invoke";
    LODWORD(v8) = 18;
    v6 = _os_log_send_and_compose_impl(v5, &v9, 0, 0, &_mh_execute_header, v4, 16, "%.*s: Got to XPC interruption handler", buf, v8);

    if (v6)
    {
      fprintf(__stderrp, "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = sub_1000E03D8(v2, v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v11 = 63;
      v12 = 2080;
      v13 = "[DIControllerServiceDelegate setupNewConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%.*s: Got to XPC interruption handler", buf, 0x12u);
    }
  }

  *__error() = v1;
}

void sub_100016508(id a1)
{
  v1 = *__error();
  v2 = sub_1000E044C();
  if (v2)
  {
    v9 = 0;
    v4 = sub_1000E03D8(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    *buf = 68157954;
    v11 = 63;
    v12 = 2080;
    v13 = "[DIControllerServiceDelegate setupNewConnection:]_block_invoke";
    LODWORD(v8) = 18;
    v6 = _os_log_send_and_compose_impl(v5, &v9, 0, 0, &_mh_execute_header, v4, 0, "%.*s: Got to XPC invalidation handler", buf, v8);

    if (v6)
    {
      fprintf(__stderrp, "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = sub_1000E03D8(v2, v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v11 = 63;
      v12 = 2080;
      v13 = "[DIControllerServiceDelegate setupNewConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Got to XPC invalidation handler", buf, 0x12u);
    }
  }

  *__error() = v1;
}

uint64_t start()
{
  v0 = *__error();
  v1 = sub_1000E044C();
  if (v1)
  {
    v39 = 0;
    v3 = sub_1000E03D8(v1, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v5 = +[NSBundle mainBundle];
    v6 = [v5 executablePath];
    *buf = 68158210;
    v41 = 28;
    v42 = 2080;
    v43 = "int main(int, const char **)";
    v44 = 2114;
    v45 = v6;
    v7 = _os_log_send_and_compose_impl(v4, &v39, 0, 0, &_mh_execute_header, v3, 0, "%.*s: Controller path: %{public}@", buf, 28);

    if (v7)
    {
      fprintf(__stderrp, "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = sub_1000E03D8(v1, v2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 executablePath];
      *buf = 68158210;
      v41 = 28;
      v42 = 2080;
      v43 = "int main(int, const char **)";
      v44 = 2114;
      v45 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: Controller path: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v0;
  v11 = *__error();
  v12 = sub_1000E044C();
  if (v12)
  {
    v39 = 0;
    v14 = sub_1000E03D8(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v16 = geteuid();
    *buf = 68158210;
    v41 = 28;
    v42 = 2080;
    v43 = "int main(int, const char **)";
    v44 = 1024;
    LODWORD(v45) = v16;
    LODWORD(v37) = 24;
    v17 = _os_log_send_and_compose_impl(v15, &v39, 0, 0, &_mh_execute_header, v14, 0, "%.*s: Controller euid: %d", buf, v37, v38);

    if (v17)
    {
      fprintf(__stderrp, "%s\n", v17);
      free(v17);
    }
  }

  else
  {
    v18 = sub_1000E03D8(v12, v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = geteuid();
      *buf = 68158210;
      v41 = 28;
      v42 = 2080;
      v43 = "int main(int, const char **)";
      v44 = 1024;
      LODWORD(v45) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%.*s: Controller euid: %d", buf, 0x18u);
    }
  }

  *__error() = v11;
  v20 = *__error();
  v21 = sub_1000E044C();
  if (v21)
  {
    v39 = 0;
    v23 = sub_1000E03D8(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    *buf = 68158210;
    v41 = 28;
    v42 = 2080;
    v43 = "int main(int, const char **)";
    v44 = 2080;
    v45 = "514.40.7";
    LODWORD(v37) = 28;
    v25 = _os_log_send_and_compose_impl(v24, &v39, 0, 0, &_mh_execute_header, v23, 0, "%.*s: DiskImages2 framework version: %s", buf, v37, v38);

    if (v25)
    {
      fprintf(__stderrp, "%s\n", v25);
      free(v25);
    }
  }

  else
  {
    v26 = sub_1000E03D8(v21, v22);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v41 = 28;
      v42 = 2080;
      v43 = "int main(int, const char **)";
      v44 = 2080;
      v45 = "514.40.7";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%.*s: DiskImages2 framework version: %s", buf, 0x1Cu);
    }
  }

  *__error() = v20;
  v27 = objc_alloc_init(DIControllerServiceDelegate);
  [(DIControllerServiceDelegate *)v27 enterSandbox];
  [(DIBaseServiceDelegate *)v27 startXPClistener];
  v28 = +[NSRunLoop currentRunLoop];
  [v28 run];

  v29 = *__error();
  v30 = sub_1000E044C();
  if (v30)
  {
    v39 = 0;
    v32 = sub_1000E03D8(v30, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    *buf = 68157954;
    v41 = 28;
    v42 = 2080;
    v43 = "int main(int, const char **)";
    LODWORD(v37) = 18;
    v34 = _os_log_send_and_compose_impl(v33, &v39, 0, 0, &_mh_execute_header, v32, 16, "%.*s: Run loop aborted", buf, v37);

    if (v34)
    {
      fprintf(__stderrp, "%s\n", v34);
      free(v34);
    }
  }

  else
  {
    v35 = sub_1000E03D8(v30, v31);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v41 = 28;
      v42 = 2080;
      v43 = "int main(int, const char **)";
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%.*s: Run loop aborted", buf, 0x12u);
    }
  }

  *__error() = v29;

  return 0;
}

void sub_100017740(uint64_t a1, uint64_t a2)
{
  v9 = [[DIIOIterator alloc] initWithIOIterator:a2 retain:1];
  v3 = [[DIIOObject alloc] initWithIteratorNext:v9];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = [(DIIOObject *)v4 newIteratorWithOptions:3 error:0];
      if (v6)
      {
        while (1)
        {
          v7 = v5;
          v5 = [[DIIOObject alloc] initWithIteratorNext:v6];

          if (!v5 || IOObjectConformsTo([(DIIOObject *)v5 ioObj], "IOMedia"))
          {
            break;
          }

          if (IOObjectIsEqualTo([(DIIOObject *)v5 ioObj], *(a1 + 8)))
          {
            **a1 = 1;

            goto LABEL_9;
          }
        }
      }

      v8 = [[DIIOObject alloc] initWithIteratorNext:v9];
      v4 = v8;
    }

    while (v8);
LABEL_9:
  }
}

void *sub_100017C7C(uint64_t a1)
{
  v2 = malloc(0xAF8uLL);
  v3 = v2;
  if (!v2)
  {
    v7 = 192;
LABEL_26:
    v24 = __error();
    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "aaS3ContextClone", v7, 80, *v24, "malloc");
    AAS3ContextDestroy(v3);
    return 0;
  }

  memset_s(v2, 0xAF8uLL, 0, 0xAF8uLL);
  if (*a1)
  {
    *v3 = 1;
    memcpy((v3 + 4), (a1 + 4), 0xAC4uLL);
  }

  v4 = *(a1 + 2760);
  if (v4)
  {
    v5 = strlen(*(a1 + 2760));
    v6 = v5 + 1;
    if (v5 + 1 > 0x2000000000)
    {
      v7 = 198;
      v8 = 2760;
LABEL_24:
      *__error() = 12;
      goto LABEL_25;
    }

    v9 = malloc(v5 + 1);
    if (!v9)
    {
      v7 = 198;
      v8 = 2760;
LABEL_25:
      *(v3 + v8) = 0;
      goto LABEL_26;
    }

    v10 = v9;
    memcpy(v9, v4, v6);
    *(v3 + 2760) = v10;
  }

  v11 = *(a1 + 2768);
  if (v11)
  {
    v12 = strlen(*(a1 + 2768));
    v13 = v12 + 1;
    if (v12 + 1 > 0x2000000000)
    {
      v7 = 199;
      v8 = 2768;
      goto LABEL_24;
    }

    v14 = malloc(v12 + 1);
    if (!v14)
    {
      v7 = 199;
      v8 = 2768;
      goto LABEL_25;
    }

    v15 = v14;
    memcpy(v14, v11, v13);
    *(v3 + 2768) = v15;
  }

  v16 = *(a1 + 2776);
  if (v16)
  {
    v17 = strlen(*(a1 + 2776));
    v18 = v17 + 1;
    if (v17 + 1 > 0x2000000000)
    {
      v7 = 200;
      v8 = 2776;
      goto LABEL_24;
    }

    v19 = malloc(v17 + 1);
    if (!v19)
    {
      v7 = 200;
      v8 = 2776;
      goto LABEL_25;
    }

    v20 = v19;
    memcpy(v19, v16, v18);
    *(v3 + 2776) = v20;
  }

  v21 = *(a1 + 2784);
  if (v21)
  {
    v22 = strlen(*(a1 + 2784));
    v23 = v22 + 1;
    if (v22 + 1 > 0x2000000000)
    {
      v7 = 201;
      v8 = 2784;
      goto LABEL_24;
    }

    v26 = malloc(v22 + 1);
    if (!v26)
    {
      v7 = 201;
      v8 = 2784;
      goto LABEL_25;
    }

    v27 = v26;
    memcpy(v26, v21, v23);
    *(v3 + 2784) = v27;
  }

  v28 = *(a1 + 2792);
  if (v28)
  {
    list = 0;
    p_list = &list;
    while (1)
    {
      v30 = malloc(0x10uLL);
      if (!v30)
      {
        break;
      }

      p_data = &v30->data;
      v30->data = 0;
      v30->next = 0;
      *p_list = v30;
      v32 = strdup(*v28);
      *p_data = v32;
      if (!v32)
      {
        break;
      }

      p_list = (p_data + 1);
      v28 = *(v28 + 8);
      if (!v28)
      {
        v33 = 1;
        v34 = list;
        goto LABEL_38;
      }
    }

    curl_slist_free_all(list);
    v34 = 0;
    v33 = *(a1 + 2792) != 0;
LABEL_38:
    *(v3 + 2792) = v34;
    if (v33 && v34 == 0)
    {
      v7 = 202;
      goto LABEL_26;
    }
  }

  else
  {
    *(v3 + 2792) = 0;
  }

  v36 = *(a1 + 2800);
  if (!v36)
  {
    *(v3 + 2800) = 0;
    return v3;
  }

  list = 0;
  v37 = &list;
  while (1)
  {
    v38 = malloc(0x10uLL);
    if (!v38)
    {
      break;
    }

    v39 = &v38->data;
    v38->data = 0;
    v38->next = 0;
    *v37 = v38;
    v40 = strdup(*v36);
    *v39 = v40;
    if (!v40)
    {
      break;
    }

    v37 = (v39 + 1);
    v36 = *(v36 + 8);
    if (!v36)
    {
      v41 = 1;
      v42 = list;
      goto LABEL_53;
    }
  }

  curl_slist_free_all(list);
  v42 = 0;
  v41 = *(a1 + 2800) != 0;
LABEL_53:
  *(v3 + 2800) = v42;
  if (v41 && v42 == 0)
  {
    v7 = 203;
    goto LABEL_26;
  }

  return v3;
}

void AAS3ContextDestroy(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 2760));
    free(*(a1 + 2768));
    free(*(a1 + 2776));
    free(*(a1 + 2784));
    curl_slist_free_all(*(a1 + 2792));
    curl_slist_free_all(*(a1 + 2800));
    memset_s(a1, 0xAF8uLL, 0, 0xAF8uLL);

    free(a1);
  }
}

void *AAS3ContextCreate()
{
  v0 = malloc(0xAF8uLL);
  v1 = v0;
  if (!v0)
  {
    v2 = __error();
    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextCreate", 370, 80, *v2, "malloc");
    goto LABEL_5;
  }

  memset_s(v0, 0xAF8uLL, 0, 0xAF8uLL);
  if ((AAS3ContextSetFieldString(v1, 5, "Not A Ninja/1.0") & 0x80000000) != 0)
  {
    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextCreate", 373, 80, 0, "set context");
    memset_s(v1, 0xAF8uLL, 0, 0xAF8uLL);
LABEL_5:
    free(v1);
    return 0;
  }

  return v1;
}

uint64_t AAS3ContextSetFieldString(uint64_t a1, int a2, char *__s)
{
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v5 = 2760;
        if (!__s)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      case 1:
        v5 = 2768;
        if (!__s)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      case 2:
        v5 = 2776;
        if (!__s)
        {
          goto LABEL_21;
        }

LABEL_18:
        if (*__s)
        {
          v7 = strlen(__s);
          v8 = v7 + 1;
          if (v7 + 1 < 0x2000000001)
          {
            v13 = malloc(v7 + 1);
            if (v13)
            {
              v9 = v13;
              memcpy(v13, __s, v8);
              goto LABEL_22;
            }
          }

          else
          {
            *__error() = 12;
          }

          v14 = *__error();
          v15 = 414;
LABEL_32:
          sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextSetFieldString", v15, 80, v14, "malloc");
          return 0xFFFFFFFFLL;
        }

LABEL_21:
        v9 = 0;
LABEL_22:
        free(*(a1 + v5));
        result = 0;
        *(a1 + v5) = v9;
        return result;
    }

    goto LABEL_16;
  }

  switch(a2)
  {
    case 3:
      v6 = 2792;
      if (!__s)
      {
        return 0;
      }

LABEL_24:
      if (*__s)
      {
        v11 = curl_slist_append(*(a1 + v6), __s);
        if (v11)
        {
          v12 = v11;
          result = 0;
          *(a1 + v6) = v12;
          return result;
        }

        v14 = *__error();
        v15 = 422;
        goto LABEL_32;
      }

      return 0;
    case 4:
      v6 = 2800;
      if (!__s)
      {
        return 0;
      }

      goto LABEL_24;
    case 5:
      v5 = 2784;
      if (!__s)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
  }

LABEL_16:
  sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextSetFieldString", 406, 80, 0, "invalid field %u");
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000182D8(uint64_t a1)
{
  if (a1)
  {
    if (*a1 >> 62)
    {
      v9.tv_sec = 0;
      *&v9.tv_usec = 0;
      gettimeofday(&v9, 0);
      v2 = v9.tv_sec + v9.tv_usec * 0.000001 - *(a1 + 40);
      fwrite("AAS3DownloadStream (curl)\n", 0x1AuLL, 1uLL, __stderrp);
      v3 = __stderrp;
      v4 = atomic_load((a1 + 32));
      v5 = atomic_load((a1 + 32));
      fprintf(v3, "%12llu bytes downloaded (%.2f MB)\n", v4, vcvtd_n_f64_u64(v5, 0x14uLL));
      v6 = __stderrp;
      v7 = atomic_load((a1 + 32));
      fprintf(v6, "%12.2f MB/s download speed\n", v7 / v2 * 0.000000953674316);
    }

    sub_10001A104(a1);
    memset_s(a1, 0x30uLL, 0, 0x30uLL);
    free(a1);
  }

  return 0;
}

AAByteStream_impl *sub_1000183F4(char *a1, uint64_t a2, uint64_t a3)
{
  curl_global_init(3);
  v6 = AACustomByteStreamOpen();
  v7 = malloc(0x30uLL);
  if (!v7 || (v8 = v7, memset_s(v7, 0x30uLL, 0, 0x30uLL), !v6))
  {
    perror("malloc");
    goto LABEL_7;
  }

  if ((sub_100019FD4(v8, a1, a2, a3) & 0x80000000) != 0)
  {
    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamCurl.c", "s3DownloadStreamOpen_curl", 132, 83, 0, "s3StreamBaseInit");
LABEL_7:
    AAByteStreamClose(v6);
    return 0;
  }

  v10.tv_sec = 0;
  *&v10.tv_usec = 0;
  gettimeofday(&v10, 0);
  v8[5] = v10.tv_sec + v10.tv_usec * 0.000001;
  AACustomByteStreamSetData(v6, v8);
  AACustomByteStreamSetCloseProc(v6, sub_1000182D8);
  AACustomByteStreamSetPReadProc(v6, sub_100018550);
  AACustomByteStreamSetReadProc(v6, sub_100018710);
  return v6;
}

uint64_t sub_100018550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v16 = a2;
  *(&v16 + 1) = a3;
  v17 = 0;
  v5 = a2;
  if (a3)
  {
    v13 = a2;
    v6 = a4 + a3;
    v7 = a4 + a3 - 1;
    while (1)
    {
      snprintf(__str, 0xC8uLL, "Range: bytes=%llu-%llu", v6 - a3, v7);
      v8 = 0;
      v18[0] = __str;
      v18[1] = 0;
      v14 = v16;
      v15 = v17;
      v9 = 125000;
      do
      {
        if (v8)
        {
          sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamCurl.c", "downloadStreamPRead", 65, 83, "s3Perform retry after %u ms", v9 / 0x3E8);
          usleep(v9);
          v9 *= 2;
        }

        v16 = v14;
        v17 = v15;
        v10 = sub_100018C8C(1u, *(a1 + 8), a1, 0, &v16, 0, v18);
        if ((v10 & 0x80000000) == 0)
        {
          break;
        }
      }

      while (v8++ < 3);
      if (v10 < 0)
      {
        break;
      }

      a3 = *(&v16 + 1);
      if (!*(&v16 + 1))
      {
        v5 = v16;
        a2 = v13;
        goto LABEL_12;
      }
    }

    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamCurl.c", "downloadStreamPRead", 81, 83, 0, "s3Perform failed (after retry), %s", __str);
    return -1;
  }

  else
  {
LABEL_12:
    result = v5 - a2;
    atomic_fetch_add_explicit((a1 + 32), v5 - a2, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10001871C(_DWORD *a1, unsigned int *a2, const void *a3, size_t a4)
{
  memset(&v8, 0, sizeof(v8));
  CCHmacInit(&v8, 2u, a2 + 1, *a2);
  CCHmacUpdate(&v8, a3, a4);
  CCHmacFinal(&v8, a1 + 1);
  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(&v8, 0x180uLL, 0, 0x180uLL);
  return 0;
}

uint64_t sub_1000187EC(uint64_t a1, const void *a2, CC_LONG a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  CC_SHA256_Update(&v7, a2, a3);
  CC_SHA256_Final((a1 + 4), &v7);
  *a1 = 32;
  memset_s((a1 + 36), 0xE0uLL, 0, 0xE0uLL);
  return memset_s(&v7, 0x68uLL, 0, 0x68uLL);
}

uint64_t sub_10001888C(char *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __src;
  v5 = a3 * a2;
  v6 = *(a4 + 16);
  if (v6)
  {
    if (*(v6 + 24))
    {
      v7 = 0;
      if (v5)
      {
        while (1)
        {
          v8 = (*(v6 + 24))(*v6, v4, v5);
          if (v8 < 1)
          {
            break;
          }

          v4 += v8;
          v7 += v8;
          v5 -= v8;
          if (!v5)
          {
            return v7 & ~(v7 >> 63);
          }
        }

        v7 = v8;
      }
    }

    else
    {
      v7 = -1;
    }

    return v7 & ~(v7 >> 63);
  }

  else
  {
    if (v5 >= *(a4 + 8))
    {
      v5 = *(a4 + 8);
    }

    memcpy(*a4, __src, v5);
    v10 = *(a4 + 8) - v5;
    *a4 += v5;
    *(a4 + 8) = v10;
    return v5;
  }
}

uint64_t sub_100018944(char *__dst, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __dst;
  v5 = a3 * a2;
  v6 = *(a4 + 16);
  if (v6)
  {
    if (*(v6 + 16))
    {
      v7 = 0;
      if (v5)
      {
        while (1)
        {
          v8 = (*(v6 + 16))(*v6, v4, v5);
          if (v8 < 0)
          {
            break;
          }

          if (v8)
          {
            v4 += v8;
            v7 += v8;
            v5 -= v8;
            if (v5)
            {
              continue;
            }
          }

          return v7 & ~(v7 >> 63);
        }

        v7 = v8;
      }
    }

    else
    {
      v7 = -1;
    }

    return v7 & ~(v7 >> 63);
  }

  else
  {
    if (v5 >= *(a4 + 8))
    {
      v5 = *(a4 + 8);
    }

    memcpy(__dst, *a4, v5);
    v10 = *(a4 + 8) - v5;
    *a4 += v5;
    *(a4 + 8) = v10;
    return v5;
  }
}

uint64_t sub_1000189FC(curl_slist **a1, char *__format, ...)
{
  va_start(va, __format);
  v4 = vsnprintf(0, 0, __format, va);
  if (v4 < 0)
  {
    v9 = 0;
LABEL_8:
    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3HeaderAppendWithFormat", 156, 84, 0, "vsnprintf");
LABEL_12:
    v11 = 0xFFFFFFFFLL;
    v5 = v9;
  }

  else
  {
    v5 = 0;
    v6 = 1;
    while ((v6 & 1) != 0)
    {
      v7 = (v4 + 1);
      v8 = realloc(v5, v7);
      v9 = v8;
      if (!v8)
      {
        free(v5);
        v12 = *__error();
        sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3HeaderAppendWithFormat", 161, 84, v12, "malloc");
        goto LABEL_12;
      }

      v4 = vsnprintf(v8, v7, __format, va);
      v6 = 0;
      v5 = v9;
      if (v4 < 0)
      {
        goto LABEL_8;
      }
    }

    v10 = curl_slist_append(*a1, v5);
    if (v10)
    {
      v11 = 0;
      *a1 = v10;
    }

    else
    {
      sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3HeaderAppendWithFormat", 168, 84, 0, "curl_slist_append failed\n");
      v11 = 0xFFFFFFFFLL;
    }
  }

  free(v5);
  return v11;
}

uint64_t sub_100018B64(curl_slist **a1, const char *a2)
{
  v3 = curl_slist_append(*a1, a2);
  v4 = v3;
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3HeaderAppend", 182, 84, 0, "curl_slist_append failed\n");
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t sub_100018BCC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 * a2;
  if ((*(a4 + 8) & 0x80000000) != 0)
  {
    v11 = 499;
    curl_easy_getinfo(*a4, CURLINFO_RESPONSE_CODE, &v11);
    v7 = v11;
    *(a4 + 8) = v11;
    if (v7 == 200)
    {
      if (*(a4 + 12))
      {
        *(a4 + 24) = *(a4 + 16);
      }
    }
  }

  v8 = *(a4 + 24);
  v9 = v6 - v8;
  if (v6 >= v8)
  {
    if (v8)
    {
      a1 += v8;
      *(a4 + 24) = 0;
    }

    else
    {
      v9 = v6;
    }

    sub_10001888C(a1, v9, 1, *(a4 + 32));
  }

  else
  {
    *(a4 + 24) = v8 - v6;
  }

  return v6;
}

uint64_t sub_100018C8C(unsigned int a1, char *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, const char **a7)
{
  v14 = *(a3 + 16);
  v53 = 0;
  if (a4)
  {
    v15 = *(a4 + 8);
  }

  else
  {
    v15 = -1;
  }

  v51 = 0uLL;
  v52 = 0;
  if (a5)
  {
    v51 = *a5;
    v52 = *(a5 + 2);
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v16 = curl_easy_init();
  if (!v16)
  {
    v26 = __stderrp;
    v27 = "curl_easy_init failed\n";
    v28 = 22;
LABEL_42:
    fwrite(v27, v28, 1uLL, v26);
    goto LABEL_43;
  }

  if ((sub_100018B64(&v53, "Content-Type:") & 0x80000000) != 0 || (sub_100018B64(&v53, "Transfer-Encoding:") & 0x80000000) != 0 || (sub_100018B64(&v53, "Accept: application/xml") & 0x80000000) != 0 || (v15 & 0x8000000000000000) == 0 && (sub_1000189FC(&v53, "Content-Length: %zd", v15) & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v17 = *(*(a3 + 16) + 2792);
  if (v17)
  {
    while ((sub_100018B64(&v53, *v17) & 0x80000000) == 0)
    {
      v17 = *(v17 + 8);
      if (!v17)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_43;
  }

LABEL_15:
  if (a7)
  {
    v18 = *a7;
    if (*a7)
    {
      v19 = a7 + 1;
      while ((sub_100018B64(&v53, v18) & 0x80000000) == 0)
      {
        v20 = *v19++;
        v18 = v20;
        if (!v20)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_43;
    }
  }

LABEL_20:
  if (*v14 && (sub_1000192C4(&v53, a1, a2, v14, a4) & 0x80000000) != 0)
  {
    v26 = __stderrp;
    v27 = "Failed to sign request\n";
    v28 = 23;
    goto LABEL_42;
  }

  v21 = curl_easy_setopt(v16, CURLOPT_URL, a2);
  v22 = curl_easy_setopt(v16, CURLOPT_HTTPHEADER, v53);
  v23 = curl_easy_setopt(v16, CURLOPT_BUFFERSIZE, 102400);
  v24 = (curl_easy_setopt(v16, CURLOPT_TCP_KEEPALIVE, 1) | v23 | v22 | v21) == 0;
  if (*(v14 + 2784) && curl_easy_setopt(v16, CURLOPT_USERAGENT, *(v14 + 2784)))
  {
    v24 = 0;
  }

  if (*(v14 + 2760) && curl_easy_setopt(v16, CURLOPT_PROXY, *(v14 + 2760)))
  {
    v24 = 0;
  }

  if (*(v14 + 2768) && curl_easy_setopt(v16, CURLOPT_PINNEDPUBLICKEY, *(v14 + 2768)))
  {
    v24 = 0;
  }

  if (*(v14 + 2776) && curl_easy_setopt(v16, CURLOPT_PROXY_PINNEDPUBLICKEY, *(v14 + 2776)))
  {
    v24 = 0;
  }

  if (*(v14 + 2800) && curl_easy_setopt(v16, CURLOPT_PROXYHEADER, *(v14 + 2800)))
  {
    v24 = 0;
  }

  if (a1 != 2)
  {
    if (a1 == 1)
    {
      v31 = curl_easy_setopt(v16, CURLOPT_CUSTOMREQUEST, "GET");
      v25 = (curl_easy_setopt(v16, CURLOPT_FOLLOWLOCATION, 1) | v31) == 0;
    }

    else
    {
      if (a1)
      {
        goto LABEL_49;
      }

      v25 = curl_easy_setopt(v16, CURLOPT_PUT, 1) == CURLE_OK;
    }

    if (!v25)
    {
      v24 = 0;
    }

LABEL_49:
    if (!a4)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  if (curl_easy_setopt(v16, CURLOPT_POST, 1))
  {
    v24 = 0;
  }

  if (a4)
  {
LABEL_54:
    v32 = curl_easy_setopt(v16, CURLOPT_READFUNCTION, sub_100018944);
    v33 = curl_easy_setopt(v16, CURLOPT_READDATA, a4) | v32;
    goto LABEL_55;
  }

  v46 = curl_easy_setopt(v16, CURLOPT_POSTFIELDS, "");
  v33 = curl_easy_setopt(v16, CURLOPT_POSTFIELDSIZE, 0) | v46;
LABEL_55:
  if (v33)
  {
    v24 = 0;
  }

LABEL_57:
  if (a5)
  {
    *&v48 = v16;
    v50 = a5;
    DWORD2(v48) = -1;
    if (a7)
    {
      v34 = *a7;
      if (*a7)
      {
        v35 = 0;
        do
        {
          if (!strncmp(v34, "Range:", 6uLL))
          {
            v38 = *(v34 + 6);
            v37 = v34 + 6;
            v36 = v38;
            if (v38)
            {
              do
              {
                if (v36 < 0)
                {
                  if (!__maskrune(v36, 0x4000uLL))
                  {
                    break;
                  }
                }

                else if ((_DefaultRuneLocale.__runetype[v36] & 0x4000) == 0)
                {
                  break;
                }

                v39 = *++v37;
                v36 = v39;
              }

              while (v39);
            }

            if (!strncmp(v37, "bytes=", 6uLL))
            {
              v42 = *(v37 + 6);
              v41 = v37 + 6;
              v40 = v42;
              if (v42)
              {
                do
                {
                  if (v40 < 0)
                  {
                    if (!__maskrune(v40, 0x4000uLL))
                    {
                      break;
                    }
                  }

                  else if ((_DefaultRuneLocale.__runetype[v40] & 0x4000) == 0)
                  {
                    break;
                  }

                  v43 = *++v41;
                  v40 = v43;
                }

                while (v43);
              }

              HIDWORD(v48) = 1;
              *&v49 = strtoull(v41, 0, 0);
            }
          }

          v34 = a7[++v35];
        }

        while (v34);
      }
    }

    v44 = curl_easy_setopt(v16, CURLOPT_WRITEFUNCTION, sub_100018BCC);
    if (curl_easy_setopt(v16, CURLOPT_WRITEDATA, &v48) | v44)
    {
      v24 = 0;
    }
  }

  if (a6)
  {
    if (curl_easy_setopt(v16, CURLOPT_HEADERFUNCTION, sub_10001888C))
    {
      v24 = 0;
    }

    if (curl_easy_setopt(v16, CURLOPT_HEADERDATA, a6))
    {
      goto LABEL_86;
    }
  }

  if (!v24)
  {
LABEL_86:
    v26 = __stderrp;
    v27 = "curl_easy_setopt failed\n";
    v28 = 24;
    goto LABEL_42;
  }

  v45 = curl_easy_perform(v16);
  if (v45 == CURLE_OK)
  {
    v47 = 499;
    curl_easy_getinfo(v16, CURLINFO_RESPONSE_CODE, &v47);
    if ((v47 - 400) <= 0xC7)
    {
      if (a1 != 1 || v47 != 416)
      {
        sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Perform", 407, 84, "HTTP %u\n");
        goto LABEL_43;
      }

      if (a5)
      {
        v29 = 0;
        *a5 = v51;
        *(a5 + 2) = v52;
        goto LABEL_44;
      }
    }

    v29 = 0;
    goto LABEL_44;
  }

  curl_easy_strerror(v45);
  sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Perform", 385, 84, "> %d %s\n");
LABEL_43:
  v29 = 0xFFFFFFFFLL;
LABEL_44:
  curl_slist_free_all(v53);
  curl_easy_cleanup(v16);
  return v29;
}

uint64_t sub_1000192C4(curl_slist **a1, unsigned int a2, char *__s, uint64_t a4, uint64_t a5)
{
  v108[0] = 0;
  v108[1] = 0;
  v109 = 0;
  v106[0] = 0;
  v106[1] = 0;
  v107 = 0;
  v104[0] = 0;
  v104[1] = 0;
  v105 = 0;
  v102[0] = 0;
  v102[1] = 0;
  v103 = 0;
  v113 = 0;
  memset(__sa, 0, sizeof(__sa));
  v10 = strlen(__s);
  if (v10 < 7)
  {
    goto LABEL_8;
  }

  if (*__s == 1886680168 && *(__s + 3) == 791624304)
  {
    v15 = 7;
  }

  else
  {
    if (v10 == 7 || *__s != 0x2F2F3A7370747468)
    {
LABEL_8:
      v12 = 492;
LABEL_9:
      sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", v12, 84, 0, "Invalid URL");
LABEL_10:
      v13 = 0xFFFFFFFFLL;
      goto LABEL_11;
    }

    v15 = 8;
  }

  v16 = &__s[v15];
  v17 = strchr(&__s[v15], 47);
  if (!v17)
  {
    v12 = 494;
    goto LABEL_9;
  }

  v18 = v17;
  v100 = v16;
  v98 = a2;
  v19 = strchr(v17, 63);
  v20 = "/";
  v99 = v18;
  if (!v19)
  {
    v26 = strlen(v18);
    if (v26 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v26;
    }

    if (v26)
    {
      v20 = v18;
    }

    goto LABEL_29;
  }

  v21 = v19;
  v22 = v19 + 1;
  v23 = strlen(v19 + 1);
  v24 = v21 == v18;
  if (v21 == v18)
  {
    v25 = 1;
  }

  else
  {
    v25 = v21 - v18;
  }

  if (!v24)
  {
    v20 = v18;
  }

  if (!v23)
  {
LABEL_29:
    __n = 0;
    v97 = "";
    goto LABEL_30;
  }

  __n = v23;
  v97 = v22;
LABEL_30:
  if ((sub_1000189FC(a1, "X-Amz-Date: %s", (a4 + 68)) & 0x80000000) != 0 || *(a4 + 452) && (sub_1000189FC(a1, "X-Amz-Security-Token: %s", (a4 + 452)) & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  __src = v20;
  if (a5)
  {
    v27 = *a5;
    v28 = *(a5 + 8);
    v130 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    sub_1000187EC(&v114, v27, v28);
    if (v114)
    {
      v29 = v25;
      v30 = &v114 + 4;
      v31 = 2 * v114;
      v32 = v31 | 1;
      v33 = __str;
      do
      {
        v34 = *v30++;
        snprintf(v33, v32, "%02x", v34);
        v32 -= 2;
        v33 += 2;
      }

      while (v32 != 1);
LABEL_41:
      v25 = v29;
      goto LABEL_43;
    }
  }

  else
  {
    v130 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    sub_1000187EC(&v114, 0, 0);
    if (v114)
    {
      v29 = v25;
      v35 = &v114 + 4;
      v31 = 2 * v114;
      v36 = v31 | 1;
      v37 = __str;
      do
      {
        v38 = *v35++;
        snprintf(v37, v36, "%02x", v38);
        v36 -= 2;
        v37 += 2;
      }

      while (v36 != 1);
      goto LABEL_41;
    }
  }

  v31 = 0;
LABEL_43:
  __str[v31] = 0;
  memset_s(&v114, 0x104uLL, 0, 0x104uLL);
  if ((sub_1000189FC(a1, "X-Amz-Content-Sha256: %s", __str) & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v39 = *a1;
  if (*a1)
  {
    v40 = 1;
    do
    {
      v39 = v39->next;
      ++v40;
    }

    while (v39);
  }

  else
  {
    v40 = 1;
  }

  v101 = calloc(v40, 8uLL);
  if (!v101)
  {
    v51 = *__error();
    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", 526, 84, v51, "malloc");
    goto LABEL_10;
  }

  v93 = (a4 + 68);
  v94 = v25;
  v91 = a1;
  v92 = a4;
  v41 = *a1;
  if (!v41)
  {
    v42 = 0;
LABEL_74:
    v52 = v18 - v100;
    v53 = v99 - v100 + 6;
    if (v53 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_79:
      v57 = *__error();
      sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", 560, 84, v57, "malloc");
      goto LABEL_82;
    }

    v54 = malloc(v53);
    if (!v54)
    {
      goto LABEL_79;
    }

    v55 = v54;
    v101[v42] = v54;
    v54[4] = 58;
    *v54 = 1953722216;
    memcpy(v54 + 5, v100, v52);
    v55[v52 + 5] = 0;
    qsort(v101, v42 + 1, 8uLL, sub_100019E70);
    if (v98 > 3)
    {
      v56 = "???";
    }

    else
    {
      v56 = off_100202B60[v98];
    }

    v59 = strlen(v56);
    if ((sub_100019E7C(v108, v56, v59) & 0x80000000) == 0 && (sub_100019E7C(v108, "\n", 1uLL) & 0x80000000) == 0 && (sub_100019E7C(v108, __src, v94) & 0x80000000) == 0 && (sub_100019E7C(v108, "\n", 1uLL) & 0x80000000) == 0 && (sub_100019E7C(v108, v97, __n) & 0x80000000) == 0 && (sub_100019E7C(v108, "\n", 1uLL) & 0x80000000) == 0)
    {
      if (v42 == -1)
      {
LABEL_99:
        if ((sub_100019E7C(v108, "\n", 1uLL) & 0x80000000) == 0)
        {
          v65 = v107;
          v66 = strlen(v107);
          if ((sub_100019E7C(v108, v107, v66) & 0x80000000) == 0 && (sub_100019E7C(v108, "\n", 1uLL) & 0x80000000) == 0)
          {
            v67 = strlen(__str);
            if ((sub_100019E7C(v108, __str, v67) & 0x80000000) == 0 && (sub_100019E7C(v104, "AWS4-HMAC-SHA256\n", 0x11uLL) & 0x80000000) == 0)
            {
              v68 = strlen(v93);
              if ((sub_100019E7C(v104, v93, v68) & 0x80000000) == 0 && (sub_100019E7C(v104, "\n", 1uLL) & 0x80000000) == 0)
              {
                v69 = strlen((v92 + 4));
                if ((sub_100019E7C(v104, (v92 + 4), v69) & 0x80000000) == 0 && (sub_100019E7C(v104, "/", 1uLL) & 0x80000000) == 0)
                {
                  v70 = strlen((v92 + 132));
                  if ((sub_100019E7C(v104, (v92 + 132), v70) & 0x80000000) == 0 && (sub_100019E7C(v104, "/s3/aws4_request\n", 0x11uLL) & 0x80000000) == 0)
                  {
                    v130 = 0;
                    v128 = 0u;
                    v129 = 0u;
                    v126 = 0u;
                    v127 = 0u;
                    v124 = 0u;
                    v125 = 0u;
                    v122 = 0u;
                    v123 = 0u;
                    v120 = 0u;
                    v121 = 0u;
                    v118 = 0u;
                    v119 = 0u;
                    v116 = 0u;
                    v117 = 0u;
                    v114 = 0u;
                    v115 = 0u;
                    v71 = strlen(v109);
                    sub_1000187EC(&v114, v109, v71);
                    if (v114)
                    {
                      v72 = &v114 + 4;
                      v73 = 2 * v114;
                      v74 = v73 | 1;
                      v75 = v110;
                      do
                      {
                        v76 = *v72++;
                        snprintf(v75, v74, "%02x", v76);
                        v74 -= 2;
                        v75 += 2;
                      }

                      while (v74 != 1);
                    }

                    else
                    {
                      v73 = 0;
                    }

                    v110[v73] = 0;
                    memset_s(&v114, 0x104uLL, 0, 0x104uLL);
                    v79 = strlen(v110);
                    if ((sub_100019E7C(v104, v110, v79) & 0x80000000) == 0)
                    {
                      v80 = strlen(v105);
                      sub_10001871C(__sa, (v92 + 2500), v105, v80);
                      if (LODWORD(__sa[0]))
                      {
                        v81 = __sa + 4;
                        v82 = 2 * LODWORD(__sa[0]);
                        v83 = v82 | 1;
                        v84 = v110;
                        do
                        {
                          v85 = *v81++;
                          snprintf(v84, v83, "%02x", v85);
                          v83 -= 2;
                          v84 += 2;
                        }

                        while (v83 != 1);
                      }

                      else
                      {
                        v82 = 0;
                      }

                      v110[v82] = 0;
                      if ((sub_100019E7C(v102, "AWS4-HMAC-SHA256 Credential=", 0x1CuLL) & 0x80000000) == 0)
                      {
                        v86 = strlen((v92 + 196));
                        if ((sub_100019E7C(v102, (v92 + 196), v86) & 0x80000000) == 0 && (sub_100019E7C(v102, "/", 1uLL) & 0x80000000) == 0)
                        {
                          v87 = strlen((v92 + 4));
                          if ((sub_100019E7C(v102, (v92 + 4), v87) & 0x80000000) == 0 && (sub_100019E7C(v102, "/", 1uLL) & 0x80000000) == 0)
                          {
                            v88 = strlen((v92 + 132));
                            if ((sub_100019E7C(v102, (v92 + 132), v88) & 0x80000000) == 0 && (sub_100019E7C(v102, "/s3/aws4_request,SignedHeaders=", 0x1FuLL) & 0x80000000) == 0)
                            {
                              v89 = strlen(v65);
                              if ((sub_100019E7C(v102, v65, v89) & 0x80000000) == 0 && (sub_100019E7C(v102, ",Signature=", 0xBuLL) & 0x80000000) == 0)
                              {
                                v90 = strlen(v110);
                                if ((sub_100019E7C(v102, v110, v90) & 0x80000000) == 0)
                                {
                                  v13 = (sub_1000189FC(v91, "Authorization: %s", v103) >> 31);
                                  goto LABEL_116;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v60 = 0;
        while (1)
        {
          v61 = v101[v60];
          v62 = strchr(v61, 58);
          if (!v62)
          {
            break;
          }

          v63 = v62;
          v64 = strlen(v61);
          if ((sub_100019E7C(v108, v61, v64) & 0x80000000) != 0 || (sub_100019E7C(v108, "\n", 1uLL) & 0x80000000) != 0 || v60 && (sub_100019E7C(v106, ";", 1uLL) & 0x80000000) != 0 || (sub_100019E7C(v106, v61, v63 - v61) & 0x80000000) != 0)
          {
            goto LABEL_115;
          }

          if (v42 + 1 == ++v60)
          {
            goto LABEL_99;
          }
        }

        sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", 586, 84, 0, "Invalid header: %s", v61);
      }
    }

LABEL_115:
    v13 = 0xFFFFFFFFLL;
LABEL_116:
    ++v42;
    goto LABEL_117;
  }

  v42 = 0;
  while (1)
  {
    data = v41->data;
    if (strncasecmp(v41->data, "x-amz-", 6uLL))
    {
      goto LABEL_70;
    }

    v44 = strlen(data);
    if (v44 + 1 >= 0x2000000001)
    {
      break;
    }

    v45 = malloc(v44 + 1);
    if (!v45)
    {
      goto LABEL_81;
    }

    v46 = v45;
    v101[v42] = v45;
    if (v44)
    {
      v47 = 0;
      v48 = 0;
      v49 = 1;
      while (1)
      {
        v50 = v41->data[v47];
        if (v50 < 0)
        {
          if (!__maskrune(v41->data[v47], 0x4000uLL))
          {
LABEL_61:
            if (v50 == 58)
            {
              v49 = 0;
            }

            if (v49)
            {
              LOBYTE(v50) = __tolower(v50);
            }

            v46[v48++] = v50;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v50] & 0x4000) == 0)
        {
          goto LABEL_61;
        }

        if (v44 == ++v47)
        {
          goto LABEL_69;
        }
      }
    }

    v48 = 0;
LABEL_69:
    ++v42;
    v46[v48] = 0;
LABEL_70:
    v41 = v41->next;
    if (!v41)
    {
      goto LABEL_74;
    }
  }

  *__error() = 12;
LABEL_81:
  v58 = *__error();
  sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Sign", 544, 84, v58, "malloc");
LABEL_82:
  v13 = 0xFFFFFFFFLL;
LABEL_117:
  if (v42)
  {
    v77 = v101;
    do
    {
      v78 = *v77++;
      free(v78);
      --v42;
    }

    while (v42);
  }

  free(v101);
LABEL_11:
  memset_s(__sa, 0x104uLL, 0, 0x104uLL);
  memset_s(v110, 0x80uLL, 0, 0x80uLL);
  memset_s(__str, 0x80uLL, 0, 0x80uLL);
  sub_100019F88(v108);
  sub_100019F88(v106);
  sub_100019F88(v104);
  sub_100019F88(v102);
  return v13;
}