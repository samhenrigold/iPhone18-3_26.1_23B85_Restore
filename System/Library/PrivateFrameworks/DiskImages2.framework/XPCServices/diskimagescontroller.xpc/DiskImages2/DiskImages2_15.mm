void sub_10014BB28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BB40(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100227770;
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

void sub_10014BBF0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t **sub_10014BC08(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_10014BC8C(a1, v4, a2, a2);
      a2 += 48;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10014BC8C(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *sub_10014BD3C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_10014BD3C(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1000BBF04(a5, (a2 + 4)))
  {
    if (!sub_1000BBF04((a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1000BBF04(a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1000BBF04((v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000BBE7C(a1, a3, a5);
}

void sub_10014BED0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_10014BF70(a1, a3);
  if (v11 >> 57)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(v11 << 6);
  sub_10014BFE4(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_10014BF70(uint64_t a1, uint64_t a2)
{
  v2 = 0x1FFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x1FFFFFFFFFFFFFFLL - v4 < a2 - v4 + v3)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
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
  if (v8 < 0x1FFFFFFFFFFFFFFLL)
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

void sub_10014BFE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *a1 + (a1[1] << 6);
  v12 = a2;
  if (*a1 != a4)
  {
    v13 = *a1;
    v12 = a2;
    do
    {
      *v12 = *v13;
      v14 = *(v13 + 1);
      v15 = *(v13 + 3);
      v16 = *(v13 + 5);
      *(v12 + 56) = v13[7];
      *(v12 + 40) = v16;
      *(v12 + 24) = v15;
      *(v12 + 8) = v14;
      v13 += 8;
      v12 += 64;
    }

    while (v13 != a4);
  }

  *v12 = *a6;
  v17 = *(a6 + 8);
  v18 = *(a6 + 24);
  v19 = *(a6 + 40);
  *(v12 + 56) = *(a6 + 56);
  *(v12 + 40) = v19;
  *(v12 + 24) = v18;
  *(v12 + 8) = v17;
  if (v11 != a4)
  {
    v20 = v12 + (a5 << 6);
    do
    {
      *v20 = *a4;
      v21 = *(a4 + 8);
      v22 = *(a4 + 24);
      v23 = *(a4 + 40);
      *(v20 + 56) = *(a4 + 56);
      *(v20 + 40) = v23;
      *(v20 + 24) = v22;
      *(v20 + 8) = v21;
      a4 += 64;
      v20 += 64;
    }

    while (a4 != v11);
  }

  if (v10)
  {
    v24 = *a1;
    if (a1 + 3 != *a1)
    {
      operator delete(v24);
    }
  }

  v25 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v25;
  a1[2] = a3;
}

uint64_t sub_10014C100(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100227990;
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

void sub_10014C1B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C1C8(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v2 = *(a2 + 12);
  if (v2 == -1)
  {
    sub_100036CC4();
  }

  v5 = &v4;
  return (off_100228070[v2])(&v5, a2 + 4);
}

void *sub_10014C230(void *a1)
{
  v1 = sub_1000026BC(a1, "none {", 6);
  v2 = sub_1000026BC(v1, "[empty]", 7);

  return sub_1000026BC(v2, "}", 1);
}

void sub_10014C2E8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[]();
  }

  __cxa_rethrow();
}

void sub_10014C328(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10014C360(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_10014C380(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10014C3C0(void *a1, uint64_t a2)
{
  sub_10009C1E4((a1 + 2), a2);
  *a1 = off_100228190;
  a1[2] = off_1002281F8;
  a1[1] = off_1002281B8;
  return a1;
}

std::exception *sub_10014C444(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_10014C4C0(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10014C55C(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10014C5E0(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10014C680(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_100213BA0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10014C718(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_100213BA0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

uint64_t sub_10014C7C8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100227BB0;
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

void sub_10014C878(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014C890(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100227DD0;
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

void sub_10014C940(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10014C958(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

uint64_t sub_10014CB00(const __CFString *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Invalid resource key";
    goto LABEL_8;
  }

  Length = CFStringGetLength(a1);
  if (Length >= 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Resource name is too long to fit uint32_t";
    goto LABEL_8;
  }

  v8.length = Length;
  *buffer = 0;
  v8.location = 0;
  if (CFStringGetBytes(a1, v8, 0, 0, 0, buffer, 4, 0) != 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Can't get key in cstring format";
LABEL_8:
    v6 = sub_100001860(exception, v5, 0x16u);
  }

  return bswap32(*buffer);
}

BOOL sub_10014CC18(__CFArray *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v5 = v3;
  if (v3)
  {
    CFArrayAppendValue(a1, v3);
  }

  sub_10000441C(&v5);
  return v3 != 0;
}

BOOL sub_10014CC9C(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v7 = v5;
  if (v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  sub_10000441C(&v7);
  return v5 != 0;
}

__CFDictionary *sub_10014CD30@<X0>(CFMutableDictionaryRef *__return_ptr a1@<X8>, const void **keys@<X0>, const void **values@<X1>, CFIndex numValues@<X2>)
{
  if (keys && values && numValues)
  {
    result = CFDictionaryCreate(kCFAllocatorDefault, keys, values, numValues, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = result;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = 0;
    result = sub_1000043E8(&v7);
  }

  *a1 = Mutable;
  return result;
}

CFMutableDictionaryRef sub_10014CDD0@<X0>(CFMutableDictionaryRef *a1@<X8>)
{
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a1 = result;
  return result;
}

const void **sub_10014CE18@<X0>(const __CFData **__return_ptr a1@<X8>, CFPropertyListRef propertyList@<X0>)
{
  error = 0;
  v3 = CFPropertyListCreateData(kCFAllocatorDefault, propertyList, kCFPropertyListXMLFormat_v1_0, 0, &error);
  v4 = v3;
  if (v3)
  {
    v5 = error == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v10 = std::generic_category();
    exception[1] = 22;
    exception[2] = v10;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't serialize property list";
  }

  Length = CFDataGetLength(v3);
  TypeID = CFDataGetTypeID();
  if (CFGetTypeID(v4) != TypeID)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    v12 = CFGetTypeID(v4);
    v13 = sub_100008328(v11, v12, TypeID);
  }

  v14 = 0;
  *a1 = v4;
  a1[1] = Length;
  sub_10008943C(&v14);
  return sub_1000898D4(&error);
}

void sub_10014CF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1000898D4(&a10);
  _Unwind_Resume(a1);
}

const void **sub_10014CF98@<X0>(uint64_t *__return_ptr a1@<X8>, UInt8 *bytes@<X0>, CFIndex length@<X1>)
{
  error = 0;
  v4 = CFDataCreate(kCFAllocatorDefault, bytes, length);
  v18 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v10 = std::generic_category();
    exception[1] = 12;
    exception[2] = v10;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't create data for plist deserialization";
  }

  format = kCFPropertyListXMLFormat_v1_0;
  v5 = CFPropertyListCreateWithData(kCFAllocatorDefault, v4, 0, &format, &error);
  if (v5)
  {
    v6 = error == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    Code = CFErrorGetCode(error);
    *v11 = &off_100233158;
    v13 = std::generic_category();
    v11[1] = Code;
    v11[2] = v13;
    *(v11 + 24) = 0;
    *(v11 + 48) = 0;
    v11[7] = "Can't convert data to property list";
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v5) != TypeID)
  {
    v14 = __cxa_allocate_exception(0x40uLL);
    v15 = CFGetTypeID(v5);
    v16 = sub_100008328(v14, v15, TypeID);
  }

  *a1 = v5;
  sub_10008943C(&v18);
  return sub_1000898D4(&error);
}

void sub_10014D178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12)
{
  __cxa_free_exception(v12);
  sub_10008943C(&a11);
  sub_1000898D4(&a12);
  _Unwind_Resume(a1);
}

char *sub_10014D1C0@<X0>(const __CFData *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  Length = CFDataGetLength(a1);
  v9 = a3 + a2;
  v10 = __CFADD__(a3, a2);
  if (__CFADD__(a3, a2))
  {
    v11 = -1;
  }

  else
  {
    v11 = a3 + a2;
  }

  if (__CFADD__(a3, a2))
  {
    v9 = v11;
  }

  v18 = v9;
  v19 = v10;
  v12 = sub_1000F8770(&v18);
  if (!a3)
  {
    a3 = Length;
  }

  if (Length < v12)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = sub_100001860(exception, "Unable to convert data to vector.", 0x16u);
  }

  v13 = v12;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  BytePtr = CFDataGetBytePtr(a1);
  sub_100065CC8(a4, a3);
  return sub_1000DDB00(a4, *a4, &BytePtr[a2], &BytePtr[v13], v13 - a2);
}

void sub_10014D2B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10014D2D0(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
  v8 = v6;
  if (v6)
  {
    CFDictionarySetValue(a1, a2, v6);
  }

  sub_100023024(&v8);
  return v6 != 0;
}

void sub_10014D35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100023024(va);
  _Unwind_Resume(a1);
}

void sub_10014D370(CFMutableDictionaryRef *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = *a2;
    v5 = *a2 + 16 * v2;
    do
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      v4 += 16;
      CFDictionaryAddValue(*a1, v6, v7);
    }

    while (v4 != v5);
  }
}

uint64_t sub_10014D42C()
{
  if (atomic_load_explicit(&qword_100240C50, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_100240C50, &v4, sub_100153B64);
  }

  return qword_100240C48;
}

void sub_10014D498()
{
  qword_100240350 = ccaes_cbc_encrypt_mode();
  qword_100240358 = ccaes_cbc_decrypt_mode();
  operator new[]();
}

void sub_10014D5E0(uint64_t a1, int a2, char **a3, const void **a4, uint64_t a5)
{
  *a1 = off_100204580;
  *(a1 + 12) = a2;
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_100151958((a1 + 16), v8, &v8[v9], v9);
  *(a1 + 40) = a5;
  *a1 = off_100228230;
  sub_10014E4BC((a1 + 48), a4);
}

void sub_10014D6D4(_Unwind_Exception *a1)
{
  sub_1000273B4(v3);
  v5 = v1[6];
  v1[6] = 0;
  if (v5)
  {
    operator delete[]();
  }

  *v1 = v2;
  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_10014D730(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v5 = *(a2 + 40);
  *a1 = off_100204580;
  *(a1 + 12) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_100065D90((a1 + 16), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 40) = v5;
  *a1 = off_100228230;
  sub_10014E4BC((a1 + 48), (a2 + 48));
}

void sub_10014D828(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_1000273B4(v4);
  v6 = v1[6];
  v1[6] = 0;
  if (v6)
  {
    operator delete[]();
  }

  *v1 = v2;
  v7 = v1[2];
  if (v7)
  {
    v1[3] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10014D884(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_100240350 = ccaes_cbc_encrypt_mode();
  qword_100240358 = ccaes_cbc_decrypt_mode();
  __chkstk_darwin(qword_100240358, v10, v11);
  for (; a5; --a5)
  {
    sub_10014D42C();
    cchmac_update();
    sub_10014D42C();
    cchmac_final();
    qword_100240350 = ccaes_cbc_encrypt_mode();
    qword_100240358 = ccaes_cbc_decrypt_mode();
    cccbc_set_iv();
    qword_100240350 = ccaes_cbc_encrypt_mode();
    qword_100240358 = ccaes_cbc_decrypt_mode();
    cccbc_update();
    v12 = *(a1 + 40);
    a3 += v12;
    a4 += v12;
    ++a2;
  }

  return 0;
}

void sub_10014DA48()
{
  qword_100240360 = ccaes_xts_encrypt_mode();
  qword_100240368 = ccaes_xts_decrypt_mode();
  operator new[]();
}

void sub_10014DBA0(uint64_t a1, int a2, char **a3, void *a4, uint64_t a5)
{
  *a1 = off_100204580;
  *(a1 + 12) = a2;
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_100151958((a1 + 16), v8, &v8[v9], v9);
  *(a1 + 40) = a5;
  *a1 = off_100228258;
  *(a1 + 48) = 0;
  *(a1 + 64) = *a4;
  sub_10014DA48();
}

void sub_10014DC8C(_Unwind_Exception *a1)
{
  sub_100027454(v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_10014DCBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v5 = *(a2 + 40);
  *a1 = off_100204580;
  *(a1 + 12) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_100065D90((a1 + 16), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 40) = v5;
  *a1 = off_100228258;
  *(a1 + 48) = 0;
  *(a1 + 64) = *(a2 + 64);
  sub_10014DA48();
}

void sub_10014DDC8(_Unwind_Exception *a1)
{
  sub_100027454(v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10014DDF8(uint64_t a1, uint64_t *a2)
{
  ccaes_cbc_encrypt_mode();
  sub_10014DE5C(*a2, a2[1], &unk_1001D301D, 15, a1 + 32, 0x20uLL);
  sub_10014DE5C(*a2, a2[1], &unk_1001D302C, 15, a1, 0x20uLL);
  return a1;
}

uint64_t sub_10014DE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = ccaes_cbc_encrypt_mode();
  v9 = (v8[1] + *v8 + 159) / 0x50uLL;
  v12 = __chkstk_darwin(v8, v10, v11);
  v14 = &v20 - 2 * v13;
  __chkstk_darwin(v12, v15, v16);
  v18 = &v20 - 2 * v17;
  cccmac_init();
  v20 = 1;
  if (a6 >= 0x10)
  {
    do
    {
      memcpy(v18, v14, 80 * v9);
      cccmac_update();
      cccmac_update();
      cccmac_final_generate();
      ++v20;
      a5 += 16;
    }

    while (v20 <= a6 >> 4);
  }

  cc_clear();
  return cc_clear();
}

void sub_10014DFFC(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_10014DDF8((a1 + 10), a3);
  *a1 = off_100228280;
  v9[0] = v7;
  v9[1] = 32;
  v8[0] = a1 + 14;
  v8[1] = 32;
  sub_10014DBA0(a1, a2, v9, v8, a4);
}

void sub_10014E090(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v2 = *(a2 + 128);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 112) = v3;
  *(a1 + 128) = v2;
  *a1 = off_100228280;
  v5 = *(a2 + 12);
  v7[0] = (a1 + 80);
  v7[1] = 32;
  v6[0] = a1 + 112;
  v6[1] = 32;
  sub_10014DBA0(a1, v5, v7, v6, *(a2 + 40));
}

uint64_t *sub_10014E144(uint64_t *a1)
{
  *a1 = off_100228280;
  memset_s(a1 + 10, 0x20uLL, 0, 0x20uLL);
  memset_s(a1 + 14, 0x20uLL, 0, 0x20uLL);
  *a1 = off_100228258;
  sub_100027454(a1 + 6);
  *a1 = off_100204580;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10014E204(uint64_t *a1)
{
  sub_10014E144(a1);

  operator delete();
}

uint64_t sub_10014E23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_100240360 = ccaes_xts_encrypt_mode();
  qword_100240368 = ccaes_xts_decrypt_mode();
  qword_100240360 = ccaes_xts_encrypt_mode();
  qword_100240368 = ccaes_xts_decrypt_mode();
  __chkstk_darwin(qword_100240368, v10, v11);
  for (; a5; --a5)
  {
    qword_100240360 = ccaes_xts_encrypt_mode();
    qword_100240368 = ccaes_xts_decrypt_mode();
    ccxts_set_tweak();
    qword_100240360 = ccaes_xts_encrypt_mode();
    qword_100240368 = ccaes_xts_decrypt_mode();
    ccxts_update();
    v12 = *(a1 + 40);
    a3 += v12;
    a4 += v12;
    ++a2;
  }

  return 0;
}

void sub_10014E3C4(void *a1, void *a2)
{
  *a1 = 0;
  sub_10014D42C();
  sub_10014D42C();
  sub_10014D42C();
  operator new[]();
}

void sub_10014E488(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_10014E4BC(void **a1, const void **a2)
{
  *a1 = 0;
  sub_10014D42C();
  sub_10014D42C();
  sub_10014D42C();
  operator new[]();
}

void sub_10014E5BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10014E5EC(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 == -1)
  {
    sub_100036CC4();
  }

  v4 = &v3;
  return (off_100228498[v1])(&v4, a1);
}

uint64_t sub_10014E638(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v8 = a3[2];
  if (v8)
  {
    v9 = 0;
    v10 = *a3 + 1;
    do
    {
      v11 = *v10;
      v10 += 2;
      v9 += v11;
      v8 = (v8 - 1);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = atomic_fetch_add_explicit(&qword_100240BE0, 1uLL, memory_order_relaxed) + 1;
  if (atomic_load_explicit(&qword_100240BE8, memory_order_acquire) != -1)
  {
    v19[0] = &v17;
    v19[1] = &qword_100240BF0;
    v18 = v19;
    std::__call_once(&qword_100240BE8, &v18, sub_100151B6C);
  }

  if (v9 >> 17 >= qword_100240BF0 / v12)
  {
    v13 = qword_100240BF0 / v12;
  }

  else
  {
    v13 = v9 >> 17;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v9 <= 0x20000 || qos_class_self() < QOS_CLASS_DEFAULT || v13 <= 1)
  {
    v15 = sub_10014E5EC(a1);
    result = sub_10014E790(v15, a2, a3, a4, *(a1 + 152));
  }

  else
  {
    result = sub_10014E8D0(a1, v14, a2, a3, a4, v9);
  }

  atomic_fetch_add_explicit(&qword_100240BE0, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  return result;
}

uint64_t sub_10014E790(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  if (!a3[2])
  {
    return 0;
  }

  v10 = *a3;
  v11 = *a4;
  v12 = **a4;
  v13 = **a3;
  do
  {
    if (v11 == &(*a4)[2 * a4[2]])
    {
      break;
    }

    result = (*(*a1 + 16))(a1, a2, v13, v12, 1);
    if (result)
    {
      return result;
    }

    v13 += a5;
    if (v13 == *v10 + v10[1])
    {
      v10 += 2;
      if (v10 != &(*a3)[2 * a3[2]])
      {
        v13 = *v10;
      }
    }

    v12 += a5;
    if (v12 == *v11 + v11[1])
    {
      v11 += 2;
      if (v11 != &(*a4)[2 * a4[2]])
      {
        v12 = *v11;
      }
    }

    ++a2;
  }

  while (v10 != &(*a3)[2 * a3[2]]);
  return 0;
}

uint64_t sub_10014E8D0(uint64_t a1, size_t iterations, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = 0;
  v6 = *(a1 + 152);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10014E974;
  v8[3] = &unk_100228298;
  v8[4] = a1;
  v8[5] = a4;
  v8[6] = (a6 / iterations + v6 - 1) / v6 * v6;
  v8[7] = a6;
  v8[8] = a5;
  v8[9] = a3;
  v8[10] = &v9;
  dispatch_apply(iterations, 0, v8);
  return v9;
}

void sub_10014EA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    operator delete[]();
  }

  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10014EC04(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= 0x21 && qos_class_self() > 0x14)
  {
    v12 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_10014EE70;
    v11[3] = &unk_1002282B8;
    v11[4] = a1;
    v11[5] = a3;
    v11[6] = a2;
    v11[7] = a4;
    v11[8] = &v12;
    dispatch_apply((a3 + 31) >> 5, 0, v11);
    return atomic_load(&v12);
  }

  else
  {
    v8 = sub_10014E5EC(a1);
    v9 = *(a1 + 152);

    return sub_10014ED04(v8, a2, a3, a4, v9, 0);
  }
}

uint64_t sub_10014ED04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v9 = a3;
  while (1)
  {
    v12 = a6 ? a6 : a2;
    v13 = (*(*a1 + 16))(a1, a4 / a5, a2, v12, 1);
    if (v13)
    {
      break;
    }

    a4 += a5;
    a2 += a5;
    if (!--v9)
    {
      return 0;
    }
  }

  v15 = v13;
  *&v16 = "int crypto::crypt_op::crypt_chunk(crypto::context::aes &, char *, size_t, uint64_t, size_t, char *)";
  *(&v16 + 1) = 33;
  v17 = 16;
  sub_10014EF5C(v18, &v16);
  sub_1000026BC(v19, "Crypto operation on data of ", 28);
  std::ostream::operator<<();
  sub_1000026BC(v19, " failed with ", 13);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100151E3C(v18);
  std::ios::~ios();
  if (v15 < 0)
  {
    return v15;
  }

  else
  {
    return -v15;
  }
}

void sub_10014EE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10014F084(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014EE70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_100027480(v13, v4);
  v6 = *(v4 + 152);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = sub_10014E5EC(v13);
  if ((v5 - 32 * a2) >= 0x20)
  {
    v10 = 32;
  }

  else
  {
    v10 = v5 - 32 * a2;
  }

  v11 = sub_10014ED04(v9, v8 + v6 * 32 * a2, v10, v7 + v6 * 32 * a2, *(v4 + 152), 0);
  if (v11)
  {
    atomic_store(v11, *(a1 + 64));
  }

  return sub_10002752C(v13);
}

void *sub_10014EF5C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100153B84(a1, a2);
  *a1 = off_1002284C8;
  a1[45] = &off_1002285C8;
  a1[46] = &off_1002285F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002284C8;
  a1[45] = off_100228550;
  a1[46] = off_100228578;
  return a1;
}

void sub_10014F060(_Unwind_Exception *a1)
{
  sub_100151E3C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10014F084(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100151E3C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10014F0C8(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, void *, uint64_t), uint64_t a4, unsigned int **a5)
{
  v7 = a1[2];
  if (v7)
  {
    v8 = a4;
    v10 = *a1;
    v11 = (a2 + (a4 >> 1));
    v12 = a3;
    v13 = 112 * v7;
    while (1)
    {
      if (v8)
      {
        (*(*v11 + v12))(v36, v11, v10);
      }

      else
      {
        a3(v36, v11, v10);
      }

      v14 = &(*a5)[6 * a5[2]];
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 1) = 0;
      if (BYTE4(v36[0]) == 1)
      {
        *v14 = v36[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 2) = v37;
      v37 = 0;
      v15 = *(v14 + 2);
      if (v15)
      {
        *v15 = v14;
      }

      v16 = (a5[2] + 1);
      a5[2] = v16;
      v17 = &(*a5)[6 * v16];
      if ((*(v17 - 5) & 1) == 0 && !*(v17 - 1))
      {
        break;
      }

      v10 += 112;
      v13 -= 112;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    *&v34 = "ssize_t crypto::crypt_op::backend_futures_prepare_and_run(const fixed_size_vector_t<sg_entry> &, Backend &, Backend::future_t (Backend::*)(const sg_entry &), fixed_size_vector_t<Backend::future_t> &)";
    *(&v34 + 1) = 138;
    v35 = 16;
    sub_10014F370(v36, &v34);
    sub_1000026BC(v38, "diskimagesuio: future read invalid in read", 42);
    std::ostream::~ostream();
    sub_1001525D4(v36);
    std::ios::~ios();
    a5[2] = (a5[2] - 1);
    return -5;
  }

  else
  {
LABEL_13:
    (*(*a2 + 152))(a2, a2, a3, a4);
    v18 = a1[2];
    v19 = a5[2];
    v20 = v18 == 0;
    v21 = v19 == 0;
    v22 = 0;
    if (v18)
    {
      v23 = v19 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
LABEL_18:
      if (v20 && v21)
      {
        return v22;
      }

      else
      {
        return -5;
      }
    }

    else
    {
      v25 = *a5;
      v26 = 24 * v19 - 24;
      v27 = 112 * v18 - 112;
      v28 = (*a1 + 16);
      while (1)
      {
        v29 = sub_10003C008(v25);
        v30 = v29;
        v31 = *v28;
        v28 += 14;
        if (v31 != v29)
        {
          break;
        }

        v22 += v29;
        v20 = v27 == 0;
        v21 = v26 == 0;
        if (v27)
        {
          v25 += 6;
          v32 = v26;
          v26 -= 24;
          v27 -= 112;
          if (v32)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      if (v29 >= 0)
      {
        return -5;
      }

      return v30;
    }
  }
}

void sub_10014F35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10014F498(va);
  _Unwind_Resume(a1);
}

void *sub_10014F370(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100153C4C(a1, a2);
  *a1 = off_1002286E8;
  a1[45] = &off_1002287E8;
  a1[46] = &off_100228810;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002286E8;
  a1[45] = off_100228770;
  a1[46] = off_100228798;
  return a1;
}

void sub_10014F474(_Unwind_Exception *a1)
{
  sub_1001525D4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10014F498(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001525D4(a1);
  std::ios::~ios();
  return a1;
}

void sub_10014F68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a9)
  {
    operator delete[]();
  }

  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_10014F6E8(atomic_ullong **a1)
{
  sub_100028B28(a1 + 25);
  sub_100029758(a1 + 22);
  if (a1[21])
  {
    a1[21] = 0;
  }

  sub_10002980C(a1 + 16);
}

uint64_t sub_10014F738(uint64_t a1)
{
  if (*(a1 + 80))
  {
    sub_10014F4DC(*(a1 + 64), (a1 + 176));
  }

  v2 = sub_10014F0C8((a1 + 128), *(a1 + 72), sub_10014F964, 0, (a1 + 104));
  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_10014F4DC(*(a1 + 64), (a1 + 176));
  }

  v3 = v2;
  *&v5 = "crypto::crypt_op::crypt_consecutive_vector::operator()()";
  *(&v5 + 1) = 54;
  v6 = 16;
  sub_10014F988(v7, &v5);
  sub_1000026BC(v8, "crypt_consecutive_vector: check errors_in read futures ", 55);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100152D6C(v7);
  std::ios::~ios();
  return v3;
}

void sub_10014F940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10014FC40(va);
  _Unwind_Resume(a1);
}

void *sub_10014F988(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100153D14(a1, a2);
  *a1 = off_100228908;
  a1[45] = &off_100228A08;
  a1[46] = &off_100228A30;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100228908;
  a1[45] = off_100228990;
  a1[46] = off_1002289B8;
  return a1;
}

void sub_10014FA8C(_Unwind_Exception *a1)
{
  sub_100152D6C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10014FAB0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100152D6C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10014FB18(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100153DDC(a1, a2);
  *a1 = off_100228B28;
  a1[45] = &off_100228C28;
  a1[46] = &off_100228C50;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100228B28;
  a1[45] = off_100228BB0;
  a1[46] = off_100228BD8;
  return a1;
}

void sub_10014FC1C(_Unwind_Exception *a1)
{
  sub_100153504(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10014FC40(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100153504(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10014FC84(void *a1, size_t size, uint64_t a3)
{
  if (size)
  {
    v6 = malloc_type_valloc(size, 0x8B7C732DuLL);
    if (!v6)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v6 = 0;
  }

  v10[0] = off_100228D40;
  v10[3] = v10;
  *a1 = v6;
  sub_1000DF1F8((a1 + 1), v10);
  sub_1000298F0(v10);
  a1[5] = size;
  a1[6] = a3;
  a1[7] = *a1;
  return a1;
}

uint64_t sub_10014FD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = v3 + (a2 + *(a1 + 48) - 1) / *(a1 + 48) * *(a1 + 48);
  v5[0] = off_100228E20;
  v5[3] = v5;
  *a3 = v3;
  sub_1000DF1F8((a3 + 1), v5);
  return sub_1000298F0(v5);
}

void *sub_10014FE18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_100153F7C(a1, a6);
  sub_100154014(v16 + 32, a7);
  a1[8] = a2;
  a1[9] = a3;
  a1[10] = a4;
  a1[11] = a5;
  a1[12] = a8;
  a1[13] = a9;
  return a1;
}

unint64_t sub_10014FEB0(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[9];
  v4 = v3[2];
  if (!v4)
  {
    return 0;
  }

  v6 = a1[3];
  if (!v6)
  {
    sub_10002870C();
  }

  if ((*(*v6 + 48))(v6, *v3 + 112 * v4 - 112))
  {
    return 0;
  }

  v9 = *a1[9] + 112 * *(a1[9] + 16);
  v10 = *(v9 - 96);
  v11 = *(v9 - 80);
  v12 = v11 - v10;
  if (v11 <= v10)
  {
    return 0;
  }

  v13 = a2[2];
  v14 = a1[12];
  if ((v10 + v13 + v14 - 1) / v14 * v14 > v11)
  {
    if (v12 >= v13)
    {
      v12 = a2[2];
    }

    v13 = (v12 + v10) / v14 * v14 - v10;
  }

  sub_1000587B8(v32, v9 - 112, v10 + v13, 0, *(v9 - 88), v11);
  sub_100024B78(*a1[9] + 112 * *(a1[9] + 16) - 112, v32);
  if (*(&v32[0] + 1))
  {
    sub_10000367C(*(&v32[0] + 1));
  }

  v15 = a1[10];
  v16 = v15[2];
  v17 = *v15;
  v18 = *v15 + 56 * v16;
  if (*(v18 - 8))
  {
    v19 = *(v18 - 24);
    v20 = *(v18 - 40) + v19;
    v21 = *(v18 - 16) + v19;
    v22 = (a2[3] + v13 + a1[12] + ~v21) / a1[12] * a1[12];
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
      v16 = v15[2];
      v17 = *v15;
    }

    v23 = v17 + 56 * v16;
    *v23 = a3;
    *&v32[0] = 0;
    *(v23 + 8) = 1;
    *(v23 + 16) = v20;
    *(v23 + 24) = v20;
    *(v23 + 32) = v22;
    *(v23 + 40) = v21;
    *(v23 + 48) = 0;
    v15[2] = v16 + 1;
    sub_100028B80(v32);
    v24 = a2[3];
  }

  else
  {
    v24 = a2[3];
    *(v18 - 24) = (v24 + v13 + a1[12] + ~*(v18 - 16)) / a1[12] * a1[12];
  }

  v26 = *a1[9] + 112 * *(a1[9] + 16);
  v27 = sub_10015015C((a1 + 4), *(v26 - 112) + a1[13] + v24 - *(v26 - 88), *a2, v13);
  if (v27 && v28)
  {
    v29 = a1[11];
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
    }

    v30 = v29[2];
    v31 = *v29 + 40 * v30;
    *v31 = a3;
    *&v32[0] = 0;
    *(v31 + 8) = 1;
    *(v31 + 16) = v27;
    *(v31 + 24) = v28;
    *(v31 + 32) = v13;
    v29[2] = v30 + 1;
    sub_100028B80(v32);
  }

  return v13;
}

void sub_100150144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10015015C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10002870C();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_1001501BC@<X0>(uint64_t result@<X0>, uint64_t (***a2)()@<X8>)
{
  if (result)
  {
    v2 = off_100228F30;
  }

  else
  {
    v2 = off_100228EA0;
  }

  *a2 = v2;
  a2[3] = a2;
  return result;
}

uint64_t sub_100150200(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[2];
  v6 = a2[3] + a3;
  v7 = a1[12];
  v8 = v6 % v7;
  v9 = v7 - v6 % v7;
  if (!v8)
  {
    v9 = 0;
  }

  if (v5 - a3 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5 - a3;
  }

  v11 = a1[3];
  if (!v11)
  {
    goto LABEL_79;
  }

  v12 = a3;
  v14 = *a2;
  v15 = v8 - a3;
  v16 = v8 - a3 + v5;
  result = (*(*v11 + 48))(v11);
  if ((result & 1) == 0 && !v16)
  {
    return result;
  }

  v18 = a1[3];
  if (!v18)
  {
LABEL_79:
    sub_10002870C();
  }

  v19 = vm_page_size;
  v75 = v12 - v8 + a1[13] + a2[3];
  result = (*(*v18 + 48))(v18, a2);
  if (result)
  {
    v20 = (v16 + v19 - 1) / v19 * v19;
    sub_10014FD7C(a1[8], v20, &v87);
    v21 = a1[9];
    sub_10015426C(&v77, &v87);
    v22 = v15 + a2[2];
    v79 = v77;
    v80 = v78;
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v81 = v22;
    v82 = v75;
    v83 = v20;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    sub_100026898(*v21 + 112 * v21[2]++, &v79);
    if (v80)
    {
      sub_10000367C(v80);
    }

    if (v78)
    {
      sub_10000367C(v78);
    }

    sub_10002986C(&v87, 0);
    result = sub_1000298F0(v88);
  }

  v23 = v14 + v12;
  if (v8)
  {
    v24 = a1[3];
    v25 = a4;
    if (!v24)
    {
      sub_10002870C();
    }

    if (((*(*v24 + 48))(v24, a2) & 1) == 0)
    {
      sub_10014FD7C(a1[8], a1[12], &v87);
      v26 = a1[9];
      sub_10015426C(&v77, &v87);
      v27 = a1[12];
      v79 = v77;
      v80 = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v81 = v10 + v8;
      v82 = v75;
      v83 = v27;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      sub_100026898(*v26 + 112 * v26[2]++, &v79);
      if (v80)
      {
        sub_10000367C(v80);
      }

      if (v78)
      {
        sub_10000367C(v78);
      }

      sub_10002986C(&v87, 0);
      sub_1000298F0(v88);
    }

    v28 = a1[10];
    if (a4)
    {
      atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
    }

    v29 = *a1[9] + 112 * *(a1[9] + 16);
    v30 = *(v29 - 112);
    v31 = a1[12];
    v32 = *(v29 - 88) - a1[13];
    v33 = v28[2];
    v34 = *v28 + 56 * v33;
    *v34 = a4;
    v79 = 0;
    *(v34 + 8) = 1;
    *(v34 + 16) = v30;
    *(v34 + 24) = v30;
    *(v34 + 32) = v31;
    *(v34 + 40) = v32;
    *(v34 + 48) = 0;
    v28[2] = v33 + 1;
    sub_100028B80(&v79);
    result = sub_10015015C((a1 + 4), *(*a1[9] + 112 * *(a1[9] + 16) - 112) + v8, v23, v10);
    if (result)
    {
      v36 = v35 == 0;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      v37 = a1[11];
      if (a4)
      {
        atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
      }

      v38 = v37[2];
      v39 = *v37 + 40 * v38;
      *v39 = a4;
      v79 = 0;
      *(v39 + 8) = 1;
      *(v39 + 16) = result;
      *(v39 + 24) = v35;
      *(v39 + 32) = v10;
      v37[2] = v38 + 1;
      result = sub_100028B80(&v79);
    }

    v40 = v10 + v8;
    v16 -= v10 + v8;
    v12 += v10;
    v23 += v10;
  }

  else
  {
    v40 = 0;
    v25 = a4;
  }

  v41 = a1[12];
  v42 = v16 / v41 * v41;
  v43 = v16 % v41;
  if (v16 != v16 % v41)
  {
    v44 = a1[3];
    if (!v44)
    {
      sub_10002870C();
    }

    if (((*(*v44 + 48))(v44, a2) & 1) == 0)
    {
      v45 = a1[9];
      sub_10008A548(&v79, a2, v42, v12, a1[13] + v12 + a2[3], a2[4] - v12);
      sub_100026898(*v45 + 112 * v45[2]++, &v79);
      if (v80)
      {
        sub_10000367C(v80);
      }

      v40 = 0;
    }

    v46 = a1[10];
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
    }

    v47 = *a1[9] + 112 * *(a1[9] + 16);
    v48 = *(v47 - 112) + v40;
    v49 = a2[5] & 1;
    if (a2[5])
    {
      v50 = *(v47 - 112) + v40;
    }

    else
    {
      v50 = v23;
    }

    v51 = *(v47 - 88) + v40 - a1[13];
    v52 = v46[2];
    v53 = *v46 + 56 * v52;
    *v53 = v25;
    v79 = 0;
    *(v53 + 8) = 1;
    *(v53 + 16) = v48;
    *(v53 + 24) = v50;
    *(v53 + 32) = v42;
    *(v53 + 40) = v51;
    *(v53 + 48) = v49 ^ 1;
    v46[2] = v52 + 1;
    result = sub_100028B80(&v79);
    if (a2[5])
    {
      result = sub_10015015C((a1 + 4), *(*a1[9] + 112 * *(a1[9] + 16) - 112) + v40, v23, v42);
      if (result && v54 != 0)
      {
        v56 = a1[11];
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
        }

        v57 = v56[2];
        v58 = *v56 + 40 * v57;
        *v58 = v25;
        v79 = 0;
        *(v58 + 8) = 1;
        *(v58 + 16) = result;
        *(v58 + 24) = v54;
        *(v58 + 32) = v42;
        v56[2] = v57 + 1;
        result = sub_100028B80(&v79);
      }
    }

    v40 += v42;
    v23 += v42;
  }

  if (v43)
  {
    v59 = a1[3];
    if (!v59)
    {
      sub_10002870C();
    }

    if (((*(*v59 + 48))(v59, a2) & 1) == 0)
    {
      v60 = (v43 + a1[12] - 1) / a1[12] * a1[12];
      sub_10014FD7C(a1[8], v60, &v87);
      v61 = a1[9];
      sub_10015426C(&v77, &v87);
      v62 = v42 + v12 + a1[13] + a2[3];
      v79 = v77;
      v80 = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v81 = v43;
      v82 = v62;
      v83 = v60;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      sub_100026898(*v61 + 112 * v61[2]++, &v79);
      if (v80)
      {
        sub_10000367C(v80);
      }

      if (v78)
      {
        sub_10000367C(v78);
      }

      sub_10002986C(&v87, 0);
      sub_1000298F0(v88);
      v40 = 0;
    }

    v63 = a1[10];
    if (a4)
    {
      atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
    }

    v64 = *a1[9] + 112 * *(a1[9] + 16);
    v65 = *(v64 - 112) + v40;
    v66 = a1[12];
    v67 = *(v64 - 88) + v40 - a1[13];
    v68 = v63[2];
    v69 = *v63 + 56 * v68;
    *v69 = a4;
    v79 = 0;
    *(v69 + 8) = 1;
    *(v69 + 16) = v65;
    *(v69 + 24) = v65;
    *(v69 + 32) = v66;
    *(v69 + 40) = v67;
    *(v69 + 48) = 0;
    v63[2] = v68 + 1;
    sub_100028B80(&v79);
    result = sub_10015015C((a1 + 4), *(*a1[9] + 112 * *(a1[9] + 16) - 112) + v40, v23, v43);
    if (result)
    {
      v71 = v70 == 0;
    }

    else
    {
      v71 = 1;
    }

    if (!v71)
    {
      v72 = a1[11];
      if (a4)
      {
        atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
      }

      v73 = v72[2];
      v74 = *v72 + 40 * v73;
      *v74 = a4;
      v79 = 0;
      *(v74 + 8) = 1;
      *(v74 + 16) = result;
      *(v74 + 24) = v70;
      *(v74 + 32) = v43;
      v72[2] = v73 + 1;
      return sub_100028B80(&v79);
    }
  }

  return result;
}

void sub_1001509F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_10000367C(a15);
  }

  _Unwind_Resume(exception_object);
}

const std::error_category *sub_100150A60@<X0>(const std::error_category *result@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = result[6].__vftable;
  if (LOBYTE(result[13].__vftable) != 1 || v5 == 0)
  {
    *(a4 + 16) = 1;
  }

  else
  {
    v7 = LODWORD(result[11].__vftable);
    if (!(result[12].__vftable % v7) && !(result[2].__vftable % v7))
    {
      v8 = a3 == 0;
      if (v5 != 3)
      {
        if (v5 == 2)
        {
          sub_10014DBA0(v10, v8, &result[7], &result[9].__vftable, v7);
        }

        sub_10014E3C4(&v9, &result[9].__vftable);
      }

      sub_10014DFFC(v10, v8, &result[7], v7);
    }

    result = std::generic_category();
    *a4 = 22;
    *(a4 + 8) = result;
    *(a4 + 16) = 0;
  }

  return result;
}

void sub_100150D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100027320(&a30);
  if (a10)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100150DA8(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v16 = 0;
  v4 = *(a1 + 104);
  v5 = *(a1 + 48);
  if (v4 == 1 && v5 != 0)
  {
    if (*(a1 + 40))
    {
      sub_100150F9C(*(a1 + 32), &v10);
    }

    v5 = 1;
    LOBYTE(v4) = 1;
  }

  v7 = a1;
  if ((v4 & 1) == 0 || !v5)
  {
    goto LABEL_17;
  }

  sub_100150A60(a1, 1, &v11);
  if (v12)
  {
    if (v7 == a1)
    {
      sub_1001510AC(v13, a1);
      if (v15 == 1)
      {
        v15 = 0;
      }

      if ((v16 & 1) == 0)
      {
        sub_1000AEF04();
      }

      v7 = v13;
    }

LABEL_17:
    v8 = (*(*a2 + 88))(a2, v7);
    goto LABEL_21;
  }

  if (v11 < 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = -v11;
  }

LABEL_21:
  if (v16 == 1 && v14)
  {
    sub_10000367C(v14);
  }

  return v8;
}

void sub_100150F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a13)
  {
    sub_10000367C(a13);
  }

  if (v40)
  {
    sub_10000367C(v40);
  }

  if (a40 == 1)
  {
    if (a27)
    {
      sub_10000367C(a27);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_100150F9C(size_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = malloc_type_valloc(a1, 0x4DC0432DuLL);
    if (!v3)
    {
      exception = __cxa_allocate_exception(8uLL);
      v5 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  operator new();
}

void sub_100151040(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

uint64_t sub_100151068(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 112) == 1)
  {
    sub_100024B78(a1, a2);
  }

  else
  {
    sub_100026898(a1, a2);
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t sub_1001510AC(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 112) == 1)
  {
    sub_1000254A0(a1, a2);
  }

  else
  {
    sub_100026638(a1, a2);
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t *sub_1001510F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 104) != 1 || *(a2 + 48) == 0;
  if (!v6 && (*(a2 + 40) & 2) != 0)
  {
    sub_100150F9C(*(a2 + 32), &v8);
  }

  sub_100026638(v9, a2);
  *a1 = a2;
  sub_100026898((a1 + 1), v9);
  if (v10)
  {
    sub_10000367C(v10);
  }

  a1[15] = a3;
  return a1;
}

void sub_100151208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a12)
  {
    sub_10000367C(a12);
  }

  if (v26)
  {
    sub_10000367C(v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100151250(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 56))
    {
      sub_100150A60((a1 + 8), 0, v5);
      if ((v6 & 1) == 0)
      {
        v2 = v5[0];
        if (v5[0] >= 0)
        {
          v2 = -v5[0];
        }

        **(a1 + 120) = v2;
      }
    }
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000367C(v3);
  }

  return a1;
}

uint64_t sub_10015135C(void *a1, uint64_t a2)
{
  sub_100151390(a1);
  bzero(*a2, *(a2 + 16));
  return *(a2 + 16);
}

void sub_100151390(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v3 == v2)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = a1 + 8;
    v5 = a1[7];
    v6 = &v2[v5 / 0x22];
    v7 = *v6 + 120 * (v5 % 0x22);
    v8 = v2[(a1[8] + v5) / 0x22] + 120 * ((a1[8] + v5) % 0x22);
    if (v7 != v8)
    {
      do
      {
        bzero(*v7, *(v7 + 16));
        v9 = *(v7 + 16);
        v11 = *(v7 + 112);
        v10 = (v7 + 112);
        *v11 = v9;
        *(v11 + 4) = 1;
        sub_10002967C(v10);
        v7 = (v10 + 1);
        if (v7 - *v6 == 4080)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }

      while (v7 != v8);
      v2 = a1[4];
      v3 = a1[5];
    }
  }

  if (v3 != v2)
  {
    v13 = a1[7];
    v14 = &v2[v13 / 0x22];
    v15 = *v14 + 120 * (v13 % 0x22);
    v16 = v2[(a1[8] + v13) / 0x22] + 120 * ((a1[8] + v13) % 0x22);
    if (v15 != v16)
    {
      do
      {
        v17 = *(v15 + 112);
        if (v17)
        {
          *(v17 + 16) = 0;
        }

        v18 = *(v15 + 8);
        if (v18)
        {
          sub_10000367C(v18);
        }

        v15 += 120;
        if (v15 - *v14 == 4080)
        {
          v19 = v14[1];
          ++v14;
          v15 = v19;
        }
      }

      while (v15 != v16);
      v2 = a1[4];
      v3 = a1[5];
    }
  }

  *v4 = 0;
  v20 = v3 - v2;
  if (v20 >= 3)
  {
    do
    {
      operator delete(*v2);
      v21 = a1[5];
      v2 = (a1[4] + 8);
      a1[4] = v2;
      v20 = (v21 - v2) >> 3;
    }

    while (v20 > 2);
  }

  if (v20 == 1)
  {
    v22 = 17;
  }

  else
  {
    if (v20 != 2)
    {
      return;
    }

    v22 = 34;
  }

  a1[7] = v22;
}

void sub_10015155C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v10) = 0;
  v11 = 0;
  v13 = &v14;
  v14 = &v10;
  v12 = 0;
  sub_100026638(v7, a2);
  v9 = v14;
  v5 = v14;
  v14 = 0;
  *(v5 + 2) = &v9;
  sub_100151668((a1 + 24), v7);
  if (v9)
  {
    *(v9 + 2) = 0;
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v11 == 1)
  {
    *a3 = v10;
    *(a3 + 4) = 1;
  }

  v6 = v13;
  *(a3 + 16) = v13;
  if (v6)
  {
    *v6 = a3;
  }

  if (v14)
  {
    *(v14 + 2) = 0;
  }
}

void sub_100151630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a11)
  {
    sub_10000367C(a11);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100151668(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 34 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10015466C(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x22)) + 120 * (v7 % 0x22);
  }

  v9 = sub_100026898(v8, a2);
  *(v9 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(*(v9 + 112) + 16) = v9 + 112;
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 / 0x22));
  v15 = *v14 + 120 * (v12 % 0x22);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4080;
  }

  return v15 - 120;
}

void sub_10015177C(void *a1)
{
  *a1 = off_100228230;
  sub_1000273B4(a1 + 7);
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    operator delete[]();
  }

  *a1 = off_100204580;
  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  operator delete();
}

void sub_100151834(void *a1)
{
  *a1 = off_100228258;
  sub_100027454(a1 + 6);
  *a1 = off_100204580;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_1001518C8(uint64_t a1)
{
  sub_100029CE8((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100151900(uint64_t a1)
{
  sub_100029CE8((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t *sub_100151958(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    sub_100036C5C(result, a4);
  }

  return result;
}

void sub_1001519B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001519CC(int *result, uint64_t a2)
{
  if (a2)
  {
    qword_100240350 = ccaes_cbc_encrypt_mode();
    qword_100240358 = ccaes_cbc_decrypt_mode();
    cc_clear();

    operator delete[]();
  }
}

void sub_100151A60(int *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_1001519CC(result + 2, v3);
  }
}

void sub_100151A90(int *result, uint64_t a2)
{
  if (a2)
  {
    qword_100240360 = ccaes_xts_encrypt_mode();
    qword_100240368 = ccaes_xts_decrypt_mode();
    cc_clear();

    operator delete[]();
  }
}

void sub_100151B24(int *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_100151A90(result + 2, v3);
  }
}

uint64_t sub_100151B6C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  result = sub_10003B024();
  LODWORD(v3) = result >> 2;
  if (result < 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  *v1 = v3;
  return result;
}

uint64_t sub_100151BA4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100151E3C(v1);

  return std::ios::~ios();
}

uint64_t sub_100151BF0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100151E3C(v1);

  return std::ios::~ios();
}

void sub_100151C50(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100151E3C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100151CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100151CF4(_BYTE *a1, int a2)
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

void sub_100151D60(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100151E3C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100151DC4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100151E3C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100151E3C(uint64_t a1)
{
  *a1 = &off_100228660;
  sub_100151FA8(a1);
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

uint64_t sub_100151FA8(uint64_t a1)
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
        sub_100152158((a1 + 72), __p);
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

void sub_1001520F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100152120(uint64_t a1)
{
  sub_100151E3C(a1);

  operator delete();
}

int *sub_100152158(uint64_t *a1, uint64_t *a2)
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
    v26 = 419;
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
      v26 = 419;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015233C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001525D4(v1);

  return std::ios::~ios();
}

uint64_t sub_100152388(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001525D4(v1);

  return std::ios::~ios();
}

void sub_1001523E8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001525D4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100152450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015248C(_BYTE *a1, int a2)
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

void sub_1001524F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001525D4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015255C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001525D4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001525D4(uint64_t a1)
{
  *a1 = &off_100228880;
  sub_100152740(a1);
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

uint64_t sub_100152740(uint64_t a1)
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
        sub_1001528F0((a1 + 72), __p);
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

void sub_10015288C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001528B8(uint64_t a1)
{
  sub_1001525D4(a1);

  operator delete();
}

int *sub_1001528F0(uint64_t *a1, uint64_t *a2)
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
    v26 = 445;
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
      v26 = 445;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100152AD4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100152D6C(v1);

  return std::ios::~ios();
}

uint64_t sub_100152B20(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100152D6C(v1);

  return std::ios::~ios();
}

void sub_100152B80(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100152D6C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100152BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100152C24(_BYTE *a1, int a2)
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

void sub_100152C90(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100152D6C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100152CF4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100152D6C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100152D6C(uint64_t a1)
{
  *a1 = &off_100228AA0;
  sub_100152ED8(a1);
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

uint64_t sub_100152ED8(uint64_t a1)
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
        sub_100153088((a1 + 72), __p);
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

void sub_100153024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100153050(uint64_t a1)
{
  sub_100152D6C(a1);

  operator delete();
}

int *sub_100153088(uint64_t *a1, uint64_t *a2)
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
    v26 = 496;
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
      v26 = 496;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015326C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100153504(v1);

  return std::ios::~ios();
}

uint64_t sub_1001532B8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100153504(v1);

  return std::ios::~ios();
}

void sub_100153318(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100153504(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100153380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001533BC(_BYTE *a1, int a2)
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

void sub_100153428(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100153504(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015348C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100153504(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100153504(uint64_t a1)
{
  *a1 = &off_100228CC0;
  sub_100153670(a1);
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

uint64_t sub_100153670(uint64_t a1)
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
        sub_100153820((a1 + 72), __p);
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

void sub_1001537BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001537E8(uint64_t a1)
{
  sub_100153504(a1);

  operator delete();
}

int *sub_100153820(uint64_t *a1, uint64_t *a2)
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
    v26 = 516;
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
      v26 = 516;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100153A94(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_100228DA0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100153AE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100153B24(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_100228E00))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100153B64()
{
  result = ccsha1_di();
  qword_100240C48 = result;
  return result;
}

uint64_t sub_100153B84(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100228660;
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

void sub_100153C34(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100153C4C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100228880;
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

void sub_100153CFC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100153D14(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100228AA0;
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

void sub_100153DC4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100153DDC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100228CC0;
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

void sub_100153E8C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100153F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100153F7C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100154014(uint64_t a1, uint64_t a2)
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

uint64_t sub_100154140(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100154220(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10015426C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void sub_10015434C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100228FB0;
  sub_1000298F0(&a1[1].__shared_owners_);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

void sub_1001543A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100228FB0;
  sub_1000298F0(&a1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100154408(uint64_t a1)
{
  sub_10002989C(a1 + 32, *(a1 + 24));

  return sub_1000298F0(a1 + 32);
}

uint64_t sub_10015444C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100154504(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100229070;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  sub_10019A650((a1 + 24));
  *(a1 + 24) = off_1002283C0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void sub_1001545C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100229070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100154620(uint64_t a1)
{
  sub_100029CE8((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10015466C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x22;
  v3 = v1 - 34;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_100046D30(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10006BA24(a1, &v9);
}

void sub_1001547F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10015548C(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_100039298(a1, a2);
    }

    sub_100036CAC();
  }
}

uint64_t sub_10015561C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        operator delete[]();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 24);
  }

  *(a1 + 32) = v2;
  std::mutex::~mutex((a1 + 96));
  std::condition_variable::~condition_variable((a1 + 48));
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001556A8(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 48) = 1018212795;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  *(a1 + 16) = v7;
  sub_10015548C(v6, a3);
  if (a3)
  {
    sub_10015552C(a1);
  }

  return a1;
}

void sub_100155758(uint64_t a1@<X0>, void *a2@<X8>)
{
  __lk.__m_ = (a1 + 96);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 96));
  v4 = *(a1 + 32);
  if (*(a1 + 24) == v4)
  {
    if (*(a1 + 16) > *(a1 + 8))
    {
      sub_10015552C(a1);
    }

    do
    {
      std::condition_variable::wait((a1 + 48), &__lk);
      v4 = *(a1 + 32);
    }

    while (*(a1 + 24) == v4);
  }

  v5 = *(v4 - 8);
  *(a1 + 32) = v4 - 8;
  v7 = a1;
  *a2 = v5;
  operator new();
}

void sub_10015588C(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v2 = *a1;
  std::mutex::lock((*a1 + 96));
  sub_1001559E4(v2 + 24, &v3);
  std::mutex::unlock((v2 + 96));
  std::condition_variable::notify_one((v2 + 48));
}

void sub_1001558DC(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 96));
  _Unwind_Resume(a1);
}

void sub_1001558F8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100155930(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  std::mutex::lock((v1 + 96));
  sub_1001559E4(v1 + 24, &v2);
  std::mutex::unlock((v1 + 96));
  std::condition_variable::notify_one((v1 + 48));
}

void sub_100155980(void *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 96));
  sub_100002A4C(a1);
}

uint64_t sub_1001559A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *sub_1001559E4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100036CAC();
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
      sub_100039298(a1, v10);
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

io_service_t *sub_100155ABC(io_service_t *a1, char *bsdName)
{
  *a1 = 0;
  v4 = IOBSDNameMatching(kIOMainPortDefault, 0, bsdName);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  *a1 = MatchingService;
  if (!MatchingService)
  {
    v7 = bsdName;
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v13);
    sub_1000026BC(v13, "device with dev name ", 21);
    v9 = strlen(v7);
    sub_1000026BC(v13, v7, v9);
    sub_1000026BC(v13, " not found in registry", 22);
    v10 = *__error();
    v11 = std::generic_category();
    v12 = sub_100156350(exception, v13, v10, v11);
  }

  return a1;
}

void sub_100155BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000022B4(va);
  sub_100155C04(v3);
  _Unwind_Resume(a1);
}

io_service_t *sub_100155C38(io_service_t *a1, uint64_t entryID)
{
  *a1 = 0;
  v3 = IORegistryEntryIDMatching(entryID);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  *a1 = MatchingService;
  if (!MatchingService)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v10);
    sub_1000026BC(v10, "device with registry entry ID 0x", 32);
    *(&v10[1] + *(v10[0] - 3)) = *(&v10[1] + *(v10[0] - 3)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    sub_1000026BC(v10, " not found in registry", 22);
    v7 = *__error();
    v8 = std::generic_category();
    v9 = sub_100156350(exception, v10, v7, v8);
  }

  return a1;
}

void sub_100155D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000022B4(va);
  sub_100155C04(v3);
  _Unwind_Resume(a1);
}

io_object_t *sub_100155DA0(io_object_t *a1, IOOptionBits a2, io_object_t *a3)
{
  v5 = sub_10004A388(a1, a3);
  v5[1] = 0;
  v6 = v5 + 1;
  v7 = *v5;
  if (v7)
  {
    iterator = 0;
    v8 = IORegistryEntryCreateIterator(v7, "IOService", a2, &iterator);
    if (v8)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v11 = sub_100155EAC(v8);
      *exception = &off_100233158;
      exception[1] = v11;
      exception[2] = v12;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Unable to create ioreg iterator";
    }

    *v6 = iterator;
    IOObjectRelease(0);
  }

  return a1;
}

void sub_100155E90(_Unwind_Exception *a1)
{
  sub_100155EF8(v2);
  sub_100155F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100155EAC(uint64_t result)
{
  if ((atomic_load_explicit(byte_100240BF8, memory_order_acquire) & 1) == 0)
  {
    v1 = result;
    sub_1001A3C38();
    LODWORD(result) = v1;
  }

  return result;
}

BOOL sub_100155F58(io_object_t *a1, io_object_t *a2)
{
  if (IOIteratorIsValid(a1[1]) && *a1)
  {
    v4 = !IOIteratorIsValid(a2[1]) || *a2 == 0;
    if (!v4 && sub_100155FF4(a1, a2))
    {
      return 1;
    }
  }

  if (IOIteratorIsValid(a1[1]) && *a1)
  {
    return 0;
  }

  return !IOIteratorIsValid(a2[1]) || *a2 == 0;
}

io_object_t *sub_100156040(io_object_t *a1)
{
  *a1 = IOIteratorNext(a1[1]);
  IOObjectRelease(0);
  return a1;
}

uint64_t sub_10015607C(uint64_t result, int a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t sub_100156088@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1001560EC(a1, *(a1 + 8), v4);
  sub_100156174(v4, "could not create iterator (begin)", a2);
  return sub_1001561F8(v4);
}

void sub_1001560D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001561F8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001560EC@<X0>(IOOptionBits *a1@<X0>, io_object_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100155DA0(object, *a1, a2);
  *a3 = *object;
  *object = 0;
  *(a3 + 16) = 1;
  IOObjectRelease(0);
  return IOObjectRelease(object[0]);
}

double sub_100156174@<D0>(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a1[2] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = *a1;
    *exception = &off_100233158;
    *(exception + 8) = v7;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  result = *a1;
  *a3 = *a1;
  *a1 = 0.0;
  return result;
}

uint64_t sub_1001561F8(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    IOObjectRelease(*(a1 + 4));
    IOObjectRelease(*a1);
  }

  return a1;
}

uint64_t sub_100156240@<X0>(IOOptionBits *a1@<X0>, void *a2@<X8>)
{
  object = 0;
  sub_1001562C8(a1, &object, &v5);
  IOObjectRelease(object);
  sub_100156174(&v5, "could not create iterator (end)", a2);
  return sub_1001561F8(&v5);
}

uint64_t sub_1001562C8@<X0>(IOOptionBits *a1@<X0>, io_object_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100155DA0(object, *a1, a2);
  *a3 = *object;
  *object = 0;
  *(a3 + 16) = 1;
  IOObjectRelease(0);
  return IOObjectRelease(object[0]);
}

uint64_t sub_100156350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &off_100233158;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v5 = sub_1000034C8(a2 + 8);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002A60();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
  }

  *(&__dst + v7) = 0;
  *(a1 + 24) = __dst;
  *(a1 + 40) = v10;
  *(a1 + 48) = 1;
  return a1;
}

void sub_100156454(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void sub_100156498(int __val@<W1>, std::string *a2@<X8>)
{
  std::to_string(&v4, __val);
  v3 = std::string::insert(&v4, 0, "kern_return_t was ", 0x12uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_10015650C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100156528(void *a1, uint64_t *a2, uint64_t *a3)
{
  *sub_10003B384(a1, a2) = off_1002291C8;
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 192))(v5);
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100156B24();
}

void sub_100156674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000367C(a13);
  }

  if (v14)
  {
    sub_10000367C(v14);
  }

  sub_10003B3E0(v13);
  _Unwind_Resume(a1);
}

void sub_1001566D8(uint64_t a1, int a2)
{
  std::mutex::lock(*(a1 + 72));
  lseek(a2, 0, 0);
  *&v7 = AAFileStreamOpenWithFD(a2, 0);
  sub_100139D08(&v10, &v7);
  sub_100139DE8(&v9, &v10);
  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100139E1C(&v9, v5, 0x20uLL);
  sub_100139D3C(&v10, &v9, 0xFFFFFFFFFFFFFFFFLL, 0x4000000000000000uLL, 1, &v8);
  sub_100156DD4();
}

void sub_1001567F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, AAByteStream);
  va_copy(va2, va1);
  v10 = va_arg(va2, AEAContext);
  sub_100139D0C(va);
  if (v6)
  {
    sub_10000367C(v6);
  }

  sub_100139DEC(va1);
  sub_100139D0C(va2);
  std::mutex::unlock(v5);
  _Unwind_Resume(a1);
}

void sub_100156854(void *a1, void *a2, void *a3)
{
  v5 = sub_10003B384(a1, a3);
  *v5 = off_1002291C8;
  v6 = a2[6];
  v5[5] = a2[5];
  v5[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[7] = 0;
  a1[8] = 0;
  v7 = a2[10];
  a1[9] = a2[9];
  a1[10] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001566D8(a1, *(a1[5] + 8));
}

void sub_1001568F4(_Unwind_Exception *a1)
{
  v4 = v1[10];
  if (v4)
  {
    sub_10000367C(v4);
  }

  sub_1001A3CA0(v1, v2);
  sub_10003B3E0(v1);
  _Unwind_Resume(a1);
}

ssize_t sub_100156964(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    return sub_10013A128(*(a1 + 56), *a2, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    return 4294967194;
  }
}

void *sub_1001569C0(void *a1)
{
  *a1 = off_1002291C8;
  v2 = a1[10];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    sub_10000367C(v4);
  }

  *a1 = off_1002064C0;
  v5 = a1[4];
  if (v5)
  {
    sub_10000367C(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_100156A58(void *a1)
{
  *a1 = off_1002291C8;
  v2 = a1[10];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    sub_10000367C(v4);
  }

  *a1 = off_1002064C0;
  v5 = a1[4];
  if (v5)
  {
    sub_10000367C(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void sub_100156BD0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002292B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100156C24(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_10000367C(v1);
  }
}

void sub_100156C38(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_100156CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100156CCC(va);
  _Unwind_Resume(a1);
}

std::mutex **sub_100156CCC(std::mutex **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::mutex::~mutex(v2);
    operator delete();
  }

  return a1;
}

void sub_100156D18(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

std::mutex *sub_100156D50(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::mutex::~mutex(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100156D94(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100156E58(void *a1, void *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100229380;
  sub_10013A0E8(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_100156ED4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100229380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

AAByteStream *sub_100156F28(AAByteStream *a1)
{
  sub_100139D0C(a1 + 5);
  sub_100139DEC(a1 + 4);

  return sub_100139D0C(a1 + 3);
}

void sub_100156FFC(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B0D8;
  sub_100156854(a1 + 3, a2, a3);
}

NSObject **sub_100157D44(NSObject **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

dispatch_queue_t *sub_100157D7C(dispatch_queue_t *a1, char *label, int a3)
{
  switch(a3)
  {
    case 2:
      v6 = &_dispatch_queue_attr_concurrent;
      v5 = label;
      goto LABEL_7;
    case 1:
      global_queue = dispatch_get_global_queue(21, 0);
      v8 = dispatch_queue_create_with_target_V2(label, 0, global_queue);
LABEL_8:
      *a1 = v8;
      return a1;
    case 0:
      v5 = label;
      v6 = 0;
LABEL_7:
      v8 = dispatch_queue_create(v5, v6);
      goto LABEL_8;
  }

  return a1;
}

void *sub_100157DFC(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

void sub_100157E24(NSObject **a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  if (v4)
  {
    if (a3)
    {
      v6 = dispatch_time(0, 1000 * a3);
      v7 = *a1;
      v8 = *a2;

      dispatch_after(v6, v7, v8);
    }

    else
    {
      v9 = *a1;

      dispatch_async(v9, v4);
    }
  }
}

uint64_t sub_100157EDC(dispatch_object_t *a1, int a2)
{
  if ((a2 - 1) > 2)
  {
    v3 = 5;
  }

  else
  {
    v3 = *&asc_1001D3A30[8 * (a2 - 1)];
  }

  global_queue = dispatch_get_global_queue(v3, 0);
  if (!global_queue)
  {
    return 22;
  }

  dispatch_set_target_queue(*a1, global_queue);
  return 0;
}

void sub_100157FB0(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    dispatch_block_cancel(v1);
  }
}

const void **sub_100157FC0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_block_cancel(v2);
    if (*a1)
    {
      _Block_release(*a1);
    }
  }

  return a1;
}

void sub_100158020(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    dispatch_resume(*a1);
    *(a1 + 32) = 1;
  }
}

uint64_t sub_10015805C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_source_cancel(v2);
    if ((*(a1 + 32) & 1) == 0)
    {
      dispatch_resume(*a1);
      *(a1 + 32) = 1;
    }

    dispatch_release(*a1);
  }

  return a1;
}

uint64_t sub_1001580B0@<X0>(int a1@<W0>, const char *a2@<X1>, int a4@<W3>, void *a5@<X8>)
{
  sub_100009110(v36);
  v9 = sub_1000026BC(&v37, "Couldn't open ", 14);
  v10 = a2[23];
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 1);
  }

  v13 = sub_1000026BC(v9, v11, v12);
  v14 = sub_1000026BC(v13, "' with flags ", 13);
  v15 = *v14;
  *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v14 + *(v15 - 24) + 8) |= 0x200u;
  v16 = std::ostream::operator<<();
  *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (a4 == 13)
  {
    if (a2[23] >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (fstatat(a1, v17, &v35, 0))
    {
      v34.__r_.__value_.__r.__words[0] = "std::string FileDescriptorWrapper::handle_open_from_error_message(int, const std::string &, int, int)";
      v34.__r_.__value_.__l.__size_ = 65;
      LODWORD(v34.__r_.__value_.__r.__words[2]) = 16;
      sub_1001585F8(&v32, &v34);
      sub_1000026BC(v33, "fstatfs failed with err code", 28);
      __error();
      std::ostream::operator<<();
      sub_1000026BC(v33, " trying to check permission after EACCES", 40);
      std::ostream::~ostream();
      sub_100160498(&v32);
      std::ios::~ios();
    }

    else
    {
      std::to_string(&v32, v35.st_gid);
      v18 = getgrgid(v35.st_gid);
      if (v18)
      {
        sub_100045DF8(&v32, v18->gr_name);
      }

      v19 = sub_1000026BC(&v37, ", UID:GID(Name)=", 16);
      std::to_string(&v34, v35.st_uid);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v34;
      }

      else
      {
        v20 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v34.__r_.__value_.__l.__size_;
      }

      v22 = sub_1000026BC(v19, v20, size);
      v23 = sub_1000026BC(v22, ":", 1);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v32;
      }

      else
      {
        v24 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v32.__r_.__value_.__l.__size_;
      }

      sub_1000026BC(v23, v24, v25);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      v26 = sub_1000026BC(&v37, " mode=", 6);
      v27 = *v26;
      *(v26 + *(*v26 - 24) + 8) = *(v26 + *(*v26 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v26 + *(v27 - 24) + 8) |= 0x200u;
      v28 = std::ostream::operator<<();
      *(v28 + *(*v28 - 24) + 8) = *(v28 + *(*v28 - 24) + 8) & 0xFFFFFFB5 | 2;
      sub_1000026BC(v28, " (our euid is ", 14);
      geteuid();
      v29 = std::ostream::operator<<();
      sub_1000026BC(v29, ")", 1);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_100008510(&v38, a5);
  v37 = v30;
  if (v40 < 0)
  {
    operator delete(v39[7].__locale_);
  }

  std::locale::~locale(v39);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100158580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_1001585F8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016C494(a1, a2);
  *a1 = off_100229800;
  a1[45] = &off_100229900;
  a1[46] = &off_100229928;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100229800;
  a1[45] = off_100229888;
  a1[46] = off_1002298B0;
  return a1;
}

void sub_1001586FC(_Unwind_Exception *a1)
{
  sub_100160498(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100158720(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160498(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100158764(const char *a1, uint64_t a2)
{
  v2 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = open(a1, a2, 438);
  if (v3 == -1)
  {
    v11 = *__error();
    v12 = sub_1000E044C();
    if (v12)
    {
      *&v24 = 0;
      v14 = sub_1000E03D8(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      if (v2[23] < 0)
      {
        v2 = *v2;
      }

      v16 = *__error();
      *buf = 68158467;
      *&buf[4] = 69;
      v27 = 2080;
      v28 = "static int FileDescriptorWrapper::open_file(const std::string &, int)";
      v29 = 2081;
      v30 = v2;
      v31 = 1024;
      v32 = v16;
      v17 = _os_log_send_and_compose_impl(v15, &v24, 0, 0, &_mh_execute_header, v14, 16, "%.*s: Failed opening %{private}s, errno %d", buf, 34);
      if (v17)
      {
        v18 = v17;
        fprintf(__stderrp, "%s\n", v17);
        free(v18);
      }
    }

    else
    {
      v19 = sub_1000E03D8(v12, v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        if (v2[23] < 0)
        {
          v2 = *v2;
        }

        v20 = *__error();
        *buf = 68158467;
        *&buf[4] = 69;
        v27 = 2080;
        v28 = "static int FileDescriptorWrapper::open_file(const std::string &, int)";
        v29 = 2081;
        v30 = v2;
        v31 = 1024;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%.*s: Failed opening %{private}s, errno %d", buf, 0x22u);
      }
    }

    *__error() = v11;
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(buf);
    sub_1000026BC(buf, "Couldn't open file with flags ", 30);
    v22 = *buf;
    *&buf[*(*buf - 24) + 8] = *&buf[*(*buf - 24) + 8] & 0xFFFFFFB5 | 8;
    *&buf[*(v22 - 24) + 8] |= 0x200u;
    std::ostream::operator<<();
    v23 = __error();
    sub_100004290(exception, buf, *v23);
  }

  v4 = v3;
  if (sub_1000E0464())
  {
    *&v24 = "int FileDescriptorWrapper::open_file(const std::string &, int)";
    *(&v24 + 1) = 36;
    v25 = 2;
    sub_100043A58(buf, &v24);
    sub_1000026BC(v33, "'", 1);
    v5 = v2[23];
    if (v5 >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    if (v5 >= 0)
    {
      v7 = *(v2 + 23);
    }

    else
    {
      v7 = *(v2 + 1);
    }

    sub_1000026BC(v33, v6, v7);
    sub_1000026BC(v33, "' opened successfully with flags ", 33);
    v8 = v33[0];
    *(&v33[1] + *(v33[0] - 24)) = *(&v33[1] + *(v33[0] - 24)) & 0xFFFFFFB5 | 8;
    *(&v33[1] + *(v8 - 24)) |= 0x200u;
    std::ostream::operator<<();
    v9 = v33[0];
    *(&v33[1] + *(v33[0] - 24)) &= ~0x200u;
    *(&v33[1] + *(v9 - 24)) = *(&v33[1] + *(v9 - 24)) & 0xFFFFFFB5 | 2;
    sub_1000026BC(v33, ", fd=", 5);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100045064(buf);
    std::ios::~ios();
  }

  return v4;
}

void sub_100158C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100158C4C(int a1, const char *a2, int a3)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v24[1] = 438;
  v25 = v5;
  v24[0] = a3 | 0x100;
  v6 = fcntl(a1, 56, v24);
  if (v6 == -1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v19);
    v15 = __error();
    sub_1001580B0(a1, a2, *v15, &v21);
    if ((v23 & 0x80u) == 0)
    {
      v16 = &v21;
    }

    else
    {
      v16 = v21;
    }

    if ((v23 & 0x80u) == 0)
    {
      v17 = v23;
    }

    else
    {
      v17 = *(&v21 + 1);
    }

    sub_1000026BC(v19, v16, v17);
    v18 = __error();
    sub_100004290(exception, v19, *v18);
  }

  v7 = v6;
  if (sub_1000E0464())
  {
    *&v21 = "int FileDescriptorWrapper::open_from(int, const std::string &, int)";
    *(&v21 + 1) = 36;
    v22 = 2;
    sub_100158F64(v19, &v21);
    sub_1000026BC(v20, "'", 1);
    v8 = a2[23];
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 1);
    }

    sub_1000026BC(v20, v9, v10);
    sub_1000026BC(v20, "' opened successfully with flags ", 33);
    v11 = v20[0];
    *(&v20[1] + *(v20[0] - 24)) = *(&v20[1] + *(v20[0] - 24)) & 0xFFFFFFB5 | 8;
    *(&v20[1] + *(v11 - 24)) |= 0x200u;
    std::ostream::operator<<();
    v12 = v20[0];
    *(&v20[1] + *(v20[0] - 24)) &= ~0x200u;
    *(&v20[1] + *(v12 - 24)) = *(&v20[1] + *(v12 - 24)) & 0xFFFFFFB5 | 2;
    sub_1000026BC(v20, ", fd=", 5);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100160C30(v19);
    std::ios::~ios();
  }

  return v7;
}

void sub_100158EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v7 - 65) < 0)
  {
    operator delete(*(v7 - 88));
    sub_1000022B4(va);
    if ((v6 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1000022B4(va);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  __cxa_free_exception(v5);
  goto LABEL_6;
}

void *sub_100158F64(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016C55C(a1, a2);
  *a1 = off_100229A20;
  a1[45] = &off_100229B20;
  a1[46] = &off_100229B48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100229A20;
  a1[45] = off_100229AA8;
  a1[46] = off_100229AD0;
  return a1;
}

void sub_100159068(_Unwind_Exception *a1)
{
  sub_100160C30(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015908C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160C30(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001590D0(uint64_t a1)
{
  *a1 = &off_1002293D0;
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    close(v2);
    if (sub_1000E0464())
    {
      *&v4 = "FileDescriptorWrapper::~FileDescriptorWrapper()";
      *(&v4 + 1) = 45;
      v5 = 2;
      sub_1001591BC(v6, &v4);
      sub_1000026BC(v7, "File descriptor ", 16);
      std::ostream::operator<<();
      sub_1000026BC(v7, " closed", 7);
      std::ostream::~ostream();
      sub_1001613C8(v6);
      std::ios::~ios();
    }
  }

  return a1;
}

void *sub_1001591BC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016C624(a1, a2);
  *a1 = off_100229C40;
  a1[45] = &off_100229D40;
  a1[46] = &off_100229D68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100229C40;
  a1[45] = off_100229CC8;
  a1[46] = off_100229CF0;
  return a1;
}

void sub_1001592C0(_Unwind_Exception *a1)
{
  sub_1001613C8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001592E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001613C8(a1);
  std::ios::~ios();
  return a1;
}

void sub_10015932C(uint64_t a1)
{
  sub_1001590D0(a1);

  operator delete();
}

uint64_t sub_100159364(uint64_t a1, int a2, char a3)
{
  *(a1 + 8) = a2;
  *a1 = &off_1002083F0;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  sub_1001593CC(a1);
  return a1;
}

uint64_t sub_1001593CC(uint64_t a1)
{
  memset(&v22, 0, sizeof(v22));
  sub_100159764(a1, &v22);
  v2 = v22.st_mode & 0xF000;
  if (v2 == 0x2000)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 24576;
  }

  *(a1 + 28) = v3;
  if (!v3)
  {
    *(a1 + 16) = v22.st_size;
    goto LABEL_17;
  }

  bzero(v27, 0x400uLL);
  bzero(&__big, 0x400uLL);
  if (fcntl(*(a1 + 8), 50, v27) < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = __error();
    v11 = sub_100001860(exception, "get path failed", *v10);
  }

  if (!basename_r(v27, &__big))
  {
    v12 = __cxa_allocate_exception(0x40uLL);
    v13 = __error();
    v14 = sub_100001860(v12, "basename_r failed", *v13);
  }

  if (strnstr(&__big, "rdisk", 5uLL) == &__big)
  {
    memmove(&__big, v26, 0x3FFuLL);
  }

  sub_10015A288(v20, &__big);
  sub_100049E98(v20, "device not found in registry", &object);
  valuePtr[0] = &object;
  valuePtr[1] = &cf;
  cf = @"Size";
  sub_10004A9B4(v17, valuePtr);
  sub_10015A300(v17, "device size not found in registry", &cf);
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFNumberGetTypeID()))
  {
    v7 = "device size not found in registry";
    v8 = 19;
    goto LABEL_22;
  }

  valuePtr[0] = 0;
  if (!CFNumberGetValue(cf, kCFNumberLongLongType, valuePtr))
  {
    v7 = "Failed converting CFNumber to longlong";
    v8 = 22;
LABEL_22:
    v15 = __cxa_allocate_exception(0x40uLL);
    *v15 = &off_100233158;
    v16 = std::generic_category();
    v15[1] = v8;
    v15[2] = v16;
    *(v15 + 24) = 0;
    *(v15 + 48) = 0;
    v15[7] = v7;
  }

  *(a1 + 16) = valuePtr[0];
  sub_10000441C(&cf);
  if (v18 == 1)
  {
    sub_10000441C(v17);
  }

  IOObjectRelease(object);
  if (v21 == 1)
  {
    IOObjectRelease(v20[0]);
  }

LABEL_17:
  result = sub_100159A20(a1);
  *(a1 + 24) = result;
  st_ino = v22.st_ino;
  *(a1 + 32) = v22.st_dev;
  *(a1 + 40) = st_ino;
  return result;
}

void sub_1001596D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, int a14, io_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    sub_100002A4C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100159764@<X0>(uint64_t a1@<X0>, stat *a2@<X8>)
{
  result = fstat(*(a1 + 8), a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = __error();
    v5 = sub_100001860(exception, "fstat failed", *v4);
  }

  return result;
}

uint64_t sub_1001597E4@<X0>(uint64_t a1@<X0>, statfs *a2@<X8>)
{
  result = fstatfs(*(a1 + 8), a2);
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = __error();
    v5 = sub_100001860(exception, "fstatfs failed", *v4);
  }

  return result;
}

uint64_t sub_100159864(uint64_t a1)
{
  v1 = *(a1 + 4) & 0xF000;
  if (v1 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v1 == 24576;
  }
}

uint64_t sub_100159884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __chkstk_darwin(a1, a2, a3);
  v5 = v4;
  sub_1001597E4(v3, &__src);
  memcpy(__dst, &__src, sizeof(__dst));
  sub_100003410(v5, &__dst[72]);
  *&v10 = "FileDescriptor::get_mounted_on_fs() const";
  *(&v10 + 1) = 33;
  v11 = 2;
  sub_10008C3A4(&__src, &v10);
  sub_1000026BC(&__src.f_mntonname[272], "File system is ", 15);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  sub_1000026BC(&__src.f_mntonname[272], v7, v8);
  std::ostream::~ostream();
  sub_100092D64(&__src);
  return std::ios::~ios();
}

void sub_1001599A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100159A20(uint64_t a1)
{
  sub_1001597E4(a1, &v41);
  if (*(a1 + 28))
  {
    v2 = (v41.f_flags & 0x1000) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    f_bsize = v41.f_bsize;
    goto LABEL_24;
  }

  bzero(&v41, 0x400uLL);
  bzero(&__big, 0x400uLL);
  if (fcntl(*(a1 + 8), 50, &v41) < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = __error();
    v15 = "get path failed";
    goto LABEL_29;
  }

  if (!basename_r(&v41, &__big))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = __error();
    v15 = "basename_r failed";
LABEL_29:
    v16 = *v14;
    *exception = &off_100233158;
    v17 = std::generic_category();
    exception[1] = v16;
    exception[2] = v17;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v15;
  }

  if (strnstr(&__big, "rdisk", 5uLL) == &__big)
  {
    memmove(&__big, &__big + 1, 0x3FFuLL);
  }

  sub_10015A288(v35, &__big);
  sub_100049E98(v35, "device not found in registry", &v34);
  sub_10015607C(v33, 3, &v34);
  sub_100156088(v33, v31);
  sub_100156240(v33, &v30);
  while (sub_100156020(v31, &v30))
  {
    nullsub_190();
    sub_10004A388(object, v4);
    v5 = IOObjectConformsTo(object[0], "IOBlockStorageDriver");
    IOObjectRelease(object[0]);
    if (v5)
    {
      break;
    }

    sub_100156040(v31);
  }

  *v32 = *v31;
  *v31 = 0;
  IOObjectRelease(HIDWORD(v30));
  IOObjectRelease(v30);
  IOObjectRelease(v31[1]);
  IOObjectRelease(v31[0]);
  sub_100156240(v33, object);
  v6 = sub_100155F58(v32, object);
  IOObjectRelease(object[1]);
  IOObjectRelease(object[0]);
  if (v6)
  {
    v18 = __cxa_allocate_exception(0x40uLL);
    v19 = std::generic_category();
    *v18 = &off_100233158;
    v18[1] = 19;
    v18[2] = v19;
    *(v18 + 24) = 0;
    *(v18 + 48) = 0;
    v18[7] = "IOBlockStorageDriver device not found in registry iteration";
  }

  nullsub_190();
  sub_10015607C(v29, 1, v7);
  sub_100156088(v29, v27);
  sub_100156240(v29, &v26);
  while (sub_100156020(v27, &v26))
  {
    nullsub_190();
    sub_10004A388(object, v8);
    v9 = IOObjectConformsTo(object[0], "IOMedia");
    IOObjectRelease(object[0]);
    if (v9)
    {
      break;
    }

    sub_100156040(v27);
  }

  *v28 = *v27;
  *v27 = 0;
  IOObjectRelease(HIDWORD(v26));
  IOObjectRelease(v26);
  IOObjectRelease(v27[1]);
  IOObjectRelease(v27[0]);
  sub_100156240(v29, object);
  v10 = sub_100155F58(v28, object);
  IOObjectRelease(object[1]);
  IOObjectRelease(object[0]);
  if (v10)
  {
    v20 = __cxa_allocate_exception(0x40uLL);
    v21 = std::generic_category();
    *v20 = &off_100233158;
    v20[1] = 19;
    v20[2] = v21;
    *(v20 + 24) = 0;
    *(v20 + 48) = 0;
    v20[7] = "IOMedia device not found in registry iteration";
  }

  nullsub_190();
  valuePtr[0] = v11;
  valuePtr[1] = &number;
  number = @"Preferred Block Size";
  sub_10004A9B4(object, valuePtr);
  sub_10015A300(object, "Unable to get IOMedia preferred block size", &number);
  valuePtr[0] = 0;
  if (!CFNumberGetValue(number, kCFNumberLongLongType, valuePtr))
  {
    v22 = __cxa_allocate_exception(0x40uLL);
    *v22 = &off_100233158;
    v23 = std::generic_category();
    v22[1] = 22;
    v22[2] = v23;
    *(v22 + 24) = 0;
    *(v22 + 48) = 0;
    v22[7] = "Failed converting CFNumber to longlong";
  }

  f_bsize = LODWORD(valuePtr[0]);
  sub_10000441C(&number);
  if (v25 == 1)
  {
    sub_10000441C(object);
  }

  IOObjectRelease(v28[1]);
  IOObjectRelease(v28[0]);
  IOObjectRelease(v32[1]);
  IOObjectRelease(v32[0]);
  IOObjectRelease(v34);
  if (v36 == 1)
  {
    IOObjectRelease(v35[0]);
  }

LABEL_24:
  if (sub_1000E0464())
  {
    *&__big = "FileDescriptor::fetch_physical_block_size() const";
    *(&__big + 1) = 41;
    v40 = 2;
    sub_10008C9A8(&v41, &__big);
    sub_1000026BC(&v41.f_mntonname[272], "Physical block_size is ", 23);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100093C94(&v41);
    std::ios::~ios();
  }

  return f_bsize;
}

void sub_10015A000(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100002A4C(a1);
}

void sub_10015A25C()
{
  sub_10015A4AC(&STACK[0x4B0]);
  __cxa_end_catch();
  JUMPOUT(0x10015A16CLL);
}

uint64_t *sub_10015A288@<X0>(uint64_t *__return_ptr a1@<X8>, char *bsdName@<X0>)
{
  sub_100155C34(&v4, bsdName);
  *a1 = v4;
  v4 = 0;
  *(a1 + 16) = 1;
  return IOObjectRelease(0);
}

uint64_t sub_10015A300@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(result + 16) & 1) == 0)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = *v3;
    *exception = &off_100233158;
    *(exception + 8) = v6;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  *a3 = *result;
  *result = 0;
  return result;
}

void *sub_10015A384(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016C6EC(a1, a2);
  *a1 = off_100229E60;
  a1[45] = &off_100229F60;
  a1[46] = &off_100229F88;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100229E60;
  a1[45] = off_100229EE8;
  a1[46] = off_100229F10;
  return a1;
}

void sub_10015A488(_Unwind_Exception *a1)
{
  sub_100161B60(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015A4AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100161B60(a1);
  std::ios::~ios();
  return a1;
}

BOOL sub_10015A4F0(uint64_t a1, uint64_t a2)
{
  sub_1001597E4(a1, &v7);
  v3 = v7.f_fsid.val[0];
  v4 = v7.f_fsid.val[1];
  sub_1001597E4(a2, &v7);
  return v3 == v7.f_fsid.val[0] && v4 == v7.f_fsid.val[1];
}

uint64_t sub_10015A5BC(int a1, int a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v3 = fcntl(a2, 51, 0);
    }

    else
    {
      v3 = fsync(a2);
    }
  }

  else
  {
    v3 = fcntl(a2, 85, 0);
  }

  if (v3 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

ssize_t sub_10015A624(void *a1, uint64_t __fd, void *__buf, size_t __nbyte, unint64_t a5)
{
  v6 = a1[1];
  if (__nbyte % v6 || a5 % v6)
  {
    v8[0] = __buf;
    v8[1] = __nbyte;
    return (*(*a1 + 8))(a1, __fd, v8, 1, a5);
  }

  else
  {

    return pread(__fd, __buf, __nbyte, a5);
  }
}

ssize_t sub_10015A6AC(uint64_t a1, int a2, iovec *a3, int a4, unint64_t a5)
{
  if (a4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a4;
    p_iov_len = &a3->iov_len;
    do
    {
      v8 = *p_iov_len;
      p_iov_len += 2;
      v5 += v8;
      --v6;
    }

    while (v6);
  }

  v9 = *(a1 + 8);
  v10 = a5 % v9 + v5;
  if (a5 % v9)
  {
    v11 = (v10 % v9 != 0) + 1;
  }

  else
  {
    v11 = v10 % v9 != 0;
  }

  if (v11)
  {
    v14 = &v16;
    *v15 = xmmword_1001C76E0;
    v13 = (v11 + a4);
    if (v13 >= 0x11)
    {
      sub_10016C7B4(&v14, v13);
    }

    operator new[]();
  }

  return preadv(a2, a3, a4, a5);
}

void sub_10015A938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    if (a10 != __p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_10015A990(char **result, _OWORD *a2)
{
  v5 = result[1];
  v6 = &(*result)[16 * v5];
  if (v5 == result[2])
  {
    v7[1] = v2;
    v7[2] = v3;
    sub_1000D1D58(result, v6, v7, 1, a2);
  }

  else
  {
    *v6 = *a2;
    ++result[1];
  }
}

uint64_t sub_10015A9EC(int a1, int a2, int a3)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  if (a3)
  {
    if (a3 != 2)
    {
      v3 = fsync(a2);
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v6) = 2;
  }

  v3 = ioctl(a2, 0x80186416uLL, v5);
LABEL_6:
  if (v3 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015AA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000B0444(*(a1 + 40), a2, a3))
  {
    v5 = 0x200000001;
    if (ffsctl(**(a1 + 56), 0xC0084A80uLL, &v5, 0))
    {
      *&v6 = "int FileLocal::disable_file_zero_padding() const";
      *(&v6 + 1) = 40;
      v7 = 0;
      sub_10015AC50(v8, &v6);
      sub_1000026BC(v9, "Zero padding cannot be disabled from this process (res=", 55);
      __error();
      std::ostream::operator<<();
      sub_1000026BC(v9, ")", 1);
      std::ostream::~ostream();
      sub_100162364(v8);
      std::ios::~ios();
      return -*__error();
    }

    else
    {
      *&v6 = "int FileLocal::disable_file_zero_padding() const";
      *(&v6 + 1) = 40;
      v7 = 0;
      sub_10015ADBC(v8, &v6);
      sub_1000026BC(v9, "Zero padding disabled successfully on fd ", 41);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100162AFC(v8);
      std::ios::~ios();
      return 0;
    }
  }

  else
  {
    *&v6 = "int FileLocal::disable_file_zero_padding() const";
    *(&v6 + 1) = 40;
    v7 = 0;
    sub_100080084(v8, &v6);
    sub_1000026BC(v9, "Backend is not mounted on APFS", 30);
    std::ostream::~ostream();
    sub_10008759C(v8);
    std::ios::~ios();
    return 4294967251;
  }
}

void sub_10015AC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10015AEE4(va);
  _Unwind_Resume(a1);
}

void *sub_10015AC50(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016C820(a1, a2);
  *a1 = off_10022A080;
  a1[45] = &off_10022A180;
  a1[46] = &off_10022A1A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022A080;
  a1[45] = off_10022A108;
  a1[46] = off_10022A130;
  return a1;
}

void sub_10015AD54(_Unwind_Exception *a1)
{
  sub_100162364(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015AD78(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100162364(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015ADBC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016C8E8(a1, a2);
  *a1 = off_10022A2A0;
  a1[45] = &off_10022A3A0;
  a1[46] = &off_10022A3C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022A2A0;
  a1[45] = off_10022A328;
  a1[46] = off_10022A350;
  return a1;
}

void sub_10015AEC0(_Unwind_Exception *a1)
{
  sub_100162AFC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015AEE4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100162AFC(a1);
  std::ios::~ios();
  return a1;
}

void sub_10015AF28(uint64_t a1)
{
  v2 = (a1 + 152);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, sub_10016C9B0);
  }
}

void sub_10015AF84(uint64_t a1)
{
  v2 = *(a1 + 28);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_10015B050(int a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  if (fcntl(a1, 57, v2) < 0)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

off_t sub_10015B0A0(int a1, const char *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (fstatat(a1, a2, &v10, 32))
  {
    if (*__error() == 13 || *__error() == 1)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v9);
    sub_1000026BC(v9, "Cannot stat ", 12);
    v5 = v2[23];
    if (v5 >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    if (v5 >= 0)
    {
      v7 = *(v2 + 23);
    }

    else
    {
      v7 = *(v2 + 1);
    }

    sub_1000026BC(v9, v6, v7);
    v8 = __error();
    sub_100004290(exception, v9, *v8);
  }

  return v10.st_size;
}

void sub_10015B240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

ssize_t sub_10015B2B8(uint64_t a1, uint64_t a2)
{
  v4 = pwrite(**(a1 + 56), *a2, *(a2 + 16), *(a2 + 24));
  v5 = v4;
  if (v4 < 0 || v4 != *(a2 + 16))
  {
    *&v11 = "int FileLocal::_write(const sg_entry &)";
    *(&v11 + 1) = 21;
    v12 = 16;
    sub_10015B434(v13, &v11);
    sub_1000026BC(v14, "Error writing file @ ", 21);
    sub_10019A3A8(v14, a2);
    sub_1000026BC(v14, ". returned ", 11);
    std::ostream::operator<<();
    sub_1000026BC(v14, " with errno: ", 13);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100163294(v13);
    std::ios::~ios();
    if (v5 == -1)
    {
      return -*__error();
    }

    else
    {
      return 4294967291;
    }
  }

  else
  {
    v6 = *(a2 + 24) + v4;
    v7 = (*(a1 + 40) + 64);
    v8 = atomic_load(v7);
    if (v8 < v6)
    {
      v9 = v8;
      do
      {
        atomic_compare_exchange_strong(v7, &v9, v6);
        if (v9 == v8)
        {
          break;
        }

        v8 = v9;
      }

      while (v9 < v6);
    }
  }

  return v5;
}

void sub_10015B420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10015B55C(va);
  _Unwind_Resume(a1);
}

void *sub_10015B434(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016D858(a1, a2);
  *a1 = off_10022A4C0;
  a1[45] = &off_10022A5C0;
  a1[46] = &off_10022A5E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022A4C0;
  a1[45] = off_10022A548;
  a1[46] = off_10022A570;
  return a1;
}

void sub_10015B538(_Unwind_Exception *a1)
{
  sub_100163294(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015B55C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100163294(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10015B5A0(uint64_t a1, void *a2)
{
  v3 = (***(*(a1 + 40) + 72))(*(*(a1 + 40) + 72), **(a1 + 56), *a2, a2[2], a2[3]);
  v4 = v3;
  if (v3 < 0 || v3 != a2[2])
  {
    *&v6 = "int FileLocal::_read(const sg_entry &)";
    *(&v6 + 1) = 20;
    v7 = 16;
    sub_10015B708(v8, &v6);
    sub_1000026BC(v9, "Error reading file @ ", 21);
    sub_10019A3A8(v9, a2);
    sub_1000026BC(v9, ". returned ", 11);
    std::ostream::operator<<();
    sub_1000026BC(v9, " with errno: ", 13);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100163A2C(v8);
    std::ios::~ios();
    if (v4 == -1)
    {
      return -*__error();
    }

    else
    {
      return 4294967291;
    }
  }

  return v4;
}

void sub_10015B6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10015B830(va);
  _Unwind_Resume(a1);
}

void *sub_10015B708(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016D920(a1, a2);
  *a1 = off_10022A6E0;
  a1[45] = &off_10022A7E0;
  a1[46] = &off_10022A808;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022A6E0;
  a1[45] = off_10022A768;
  a1[46] = off_10022A790;
  return a1;
}

void sub_10015B80C(_Unwind_Exception *a1)
{
  sub_100163A2C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015B830(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100163A2C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10015B874(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  if (*(v4 + 28))
  {
    v5 = *(v4 + 16);
    if (v5 < a2)
    {
      *&v11 = "int FileLocal::truncate(uint64_t)";
      *(&v11 + 1) = 23;
      v12 = 16;
      sub_10015BB6C(v13, &v11);
      sub_1000026BC(v14, "Cannot increase size of a block device", 38);
      std::ostream::~ostream();
      sub_1001641C4(v13);
      std::ios::~ios();
      return 4294967268;
    }

    if (v5 > a2)
    {
      *&v11 = "int FileLocal::truncate(uint64_t)";
      *(&v11 + 1) = 23;
      v12 = 0;
      sub_10005E628(v13, &v11);
      sub_1000026BC(v14, "Ignoring truncate on block device", 33);
      std::ostream::~ostream();
      sub_10005FEC4(v13);
      std::ios::~ios();
    }

    goto LABEL_12;
  }

  v7 = (*(*a1 + 40))(a1);
  if (v7 < a2)
  {
    __buf = 0;
    v8 = pwrite(**(a1 + 56), &__buf, 1uLL, a2 - 1);
    if (v8 != 1)
    {
      v9 = v8;
      *&v11 = "int FileLocal::truncate(uint64_t)";
      *(&v11 + 1) = 23;
      v12 = 16;
      sub_10015BCD8(v13, &v11);
      sub_1000026BC(v14, "Failed to increase file size, pwrite returned ", 46);
      std::ostream::operator<<();
      sub_1000026BC(v14, " errno: ", 8);
      __error();
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10016495C(v13);
      std::ios::~ios();
      if (v9 != -1)
      {
        return 4294967291;
      }

      return -*__error();
    }

LABEL_12:
    result = 0;
    atomic_store(a2, (*(a1 + 40) + 64));
    return result;
  }

  if (v7 <= a2 || ftruncate(**(a1 + 56), a2) != -1)
  {
    goto LABEL_12;
  }

  *&v11 = "int FileLocal::truncate(uint64_t)";
  *(&v11 + 1) = 23;
  v12 = 16;
  sub_10015BE44(v13, &v11);
  sub_1000026BC(v14, "ftruncate failed, errno: ", 25);
  __error();
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_1001650F4(v13);
  std::ios::~ios();
  return -*__error();
}

void sub_10015BB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10015BF6C(va);
  _Unwind_Resume(a1);
}

void *sub_10015BB6C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016D9E8(a1, a2);
  *a1 = off_10022A900;
  a1[45] = &off_10022AA00;
  a1[46] = &off_10022AA28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022A900;
  a1[45] = off_10022A988;
  a1[46] = off_10022A9B0;
  return a1;
}

void sub_10015BC70(_Unwind_Exception *a1)
{
  sub_1001641C4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015BC94(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001641C4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015BCD8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016DAB0(a1, a2);
  *a1 = off_10022AB20;
  a1[45] = &off_10022AC20;
  a1[46] = &off_10022AC48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022AB20;
  a1[45] = off_10022ABA8;
  a1[46] = off_10022ABD0;
  return a1;
}

void sub_10015BDDC(_Unwind_Exception *a1)
{
  sub_10016495C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015BE00(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016495C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015BE44(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016DB78(a1, a2);
  *a1 = off_10022AD40;
  a1[45] = &off_10022AE40;
  a1[46] = &off_10022AE68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022AD40;
  a1[45] = off_10022ADC8;
  a1[46] = off_10022ADF0;
  return a1;
}

void sub_10015BF48(_Unwind_Exception *a1)
{
  sub_1001650F4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015BF6C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001650F4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10015BFB0(uint64_t a1, uint64_t a2)
{
  if (sub_1000E0464())
  {
    *&v11 = "int FileLocal::flush(di_flush_mode)";
    *(&v11 + 1) = 20;
    v12 = 2;
    sub_10015C39C(v13, &v11);
    sub_1000026BC(v14, "Calling ", 8);
    sub_10019A310(v14, a2);
    sub_1000026BC(v14, " on ", 4);
    sub_10019A7F4(v14, a1);
    std::ostream::~ostream();
    sub_10016588C(v13);
    std::ios::~ios();
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = *(a1 + 40);
    if ((*(v7 + 56) & v6) != 0)
    {
      if (sub_1000E0464())
      {
        *&v11 = "int FileLocal::flush(di_flush_mode)";
        *(&v11 + 1) = 20;
        v12 = 2;
        sub_10015C508(v13, &v11);
        sub_10019A310(v14, a2);
        sub_1000026BC(v14, " is not supported", 17);
        std::ostream::~ostream();
        sub_100166024(v13);
        std::ios::~ios();
      }

      return (*(*a1 + 16))(a1, a2 != 2);
    }

    else
    {
      v4 = (*(**(v7 + 72) + 16))(*(v7 + 72), **(a1 + 56), a2);
      if ((v4 + 45) > 0x17 || ((1 << (v4 + 45)) & 0x900001) == 0)
      {
        goto LABEL_5;
      }

      atomic_fetch_or_explicit((*(a1 + 40) + 56), v6, memory_order_relaxed);
      *&v11 = "int FileLocal::flush(di_flush_mode)";
      *(&v11 + 1) = 20;
      v12 = 0;
      sub_10015C674(v13, &v11);
      sub_10019A310(v14, a2);
      sub_1000026BC(v14, " is not supported (err code ", 28);
      __error();
      std::ostream::operator<<();
      sub_1000026BC(v14, ")", 1);
      std::ostream::~ostream();
      sub_1001667BC(v13);
      std::ios::~ios();
      if (a2 == 2)
      {
        return (*(*a1 + 16))(a1, 0);
      }

      else
      {
        atomic_fetch_or_explicit((*(a1 + 40) + 56), 2uLL, memory_order_relaxed);
        return (*(*a1 + 16))(a1, 1);
      }
    }
  }

  v4 = (*(**(*(a1 + 40) + 72) + 16))(*(*(a1 + 40) + 72), **(a1 + 56), 1);
LABEL_5:
  v5 = v4;
  if (v4)
  {
    *&v11 = "int FileLocal::flush(di_flush_mode)";
    *(&v11 + 1) = 20;
    v12 = 16;
    sub_10015C7E0(v13, &v11);
    sub_10019A310(v14, a2);
    sub_1000026BC(v14, " failed wih error ", 18);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100166F54(v13);
    std::ios::~ios();
  }

  return v5;
}

void sub_10015C358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10015C630(va);
  _Unwind_Resume(a1);
}

void *sub_10015C39C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016DC40(a1, a2);
  *a1 = off_10022AF60;
  a1[45] = &off_10022B060;
  a1[46] = &off_10022B088;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022AF60;
  a1[45] = off_10022AFE8;
  a1[46] = off_10022B010;
  return a1;
}

void sub_10015C4A0(_Unwind_Exception *a1)
{
  sub_10016588C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015C4C4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016588C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015C508(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016DD08(a1, a2);
  *a1 = off_10022B180;
  a1[45] = &off_10022B280;
  a1[46] = &off_10022B2A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022B180;
  a1[45] = off_10022B208;
  a1[46] = off_10022B230;
  return a1;
}

void sub_10015C60C(_Unwind_Exception *a1)
{
  sub_100166024(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015C630(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100166024(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015C674(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016DDD0(a1, a2);
  *a1 = off_10022B3A0;
  a1[45] = &off_10022B4A0;
  a1[46] = &off_10022B4C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022B3A0;
  a1[45] = off_10022B428;
  a1[46] = off_10022B450;
  return a1;
}

void sub_10015C778(_Unwind_Exception *a1)
{
  sub_1001667BC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015C79C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001667BC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015C7E0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016DE98(a1, a2);
  *a1 = off_10022B5C0;
  a1[45] = &off_10022B6C0;
  a1[46] = &off_10022B6E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022B5C0;
  a1[45] = off_10022B648;
  a1[46] = off_10022B670;
  return a1;
}

void sub_10015C8E4(_Unwind_Exception *a1)
{
  sub_100166F54(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015C908(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100166F54(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10015C94C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 40);
  sub_10015AF28(v6);
  v7 = *(v6 + 80);
  v8 = *(v6 + 96);
  v9 = *(a1 + 40);
  sub_10015AF28(v9);
  if ((v8 & 1) == 0 || (*(v9 + 144) & 1) == 0)
  {
    *&v25 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
    *(&v25 + 1) = 26;
    LODWORD(v26) = 0;
    sub_10015CE38(&v27, &v25);
    sub_1000026BC(v35, "fd block size retrieval failed (err code ", 41);
    std::ostream::operator<<();
    sub_1000026BC(v35, ")", 1);
    std::ostream::~ostream();
    sub_1001676EC(&v27);
    goto LABEL_14;
  }

  v10 = *(v9 + 104);
  v11 = (a2 + v7 - 1) / v7 * v7;
  v12 = a3 + a2;
  if (a2 <= v11 && v11 < v12)
  {
    v14 = a2 - v11 + a3;
    v15 = v14 / v7 * v7;
    v16 = v14 == v14 % v7 ? 0 : (a2 + v7 - 1) / v7 * v7;
    if (v14 != v14 % v7)
    {
      *&v25 = 0;
      *(&v25 + 1) = v16;
      v26 = v14 / v7 * v7;
      v19 = fcntl(**(a1 + 56), 99, &v25);
      if (!v19)
      {
        if (v16 != a2)
        {
          v20 = *(sub_10019E2E8() + 1);
          v27 = v10;
          v28 = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = v16 - a2;
          v30 = a2;
          v31 = v16 - a2;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v7 = (*(*a1 + 120))(a1, &v27);
          if (v28)
          {
            sub_10000367C(v28);
          }

          if ((v7 & 0x80000000) != 0)
          {
            *&v23 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
            *(&v23 + 1) = 26;
            v24 = 16;
            sub_10015D110(&v27, &v23);
            sub_1000026BC(v35, "Write zeros to unmap unaligned start region failed (err code", 60);
            __error();
            std::ostream::operator<<();
            sub_1000026BC(v35, ")", 1);
            sub_10015D238(&v27);
            return v7;
          }
        }

        if (v15 + v16 < v12)
        {
          v21 = a3 - v15 - (v16 - a2);
          v22 = *(sub_10019E2E8() + 1);
          v27 = v10;
          v28 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = v21;
          v30 = v15 + v16;
          v31 = v21;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v7 = (*(*a1 + 120))(a1, &v27);
          if (v28)
          {
            sub_10000367C(v28);
          }

          if ((v7 & 0x80000000) != 0)
          {
            *&v23 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
            *(&v23 + 1) = 26;
            v24 = 16;
            sub_10015D27C(&v27, &v23);
            sub_1000026BC(v35, "Write zeros to unmap unaligned end region failed (err code", 58);
            __error();
            std::ostream::operator<<();
            sub_1000026BC(v35, ")", 1);
            sub_10015D3A4(&v27);
            return v7;
          }
        }

        return 0;
      }

      v7 = v19;
      *&v23 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
      *(&v23 + 1) = 26;
      v24 = 0;
      sub_10015CFA4(&v27, &v23);
      sub_1000026BC(v35, "Punch hole is not supported (err code ", 38);
      __error();
      std::ostream::operator<<();
      sub_1000026BC(v35, ")", 1);
      std::ostream::~ostream();
      sub_100167E84(&v27);
LABEL_14:
      std::ios::~ios();
      return v7;
    }
  }

  v17 = sub_10015D3E8(a1, a2, a3, v7, v10);
  if (v17 == a3)
  {
    return 0;
  }

  v7 = v17;
  *&v25 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
  *(&v25 + 1) = 26;
  LODWORD(v26) = 16;
  sub_10015D580(&v27, &v25);
  sub_1000026BC(v35, "Write zeros to unmap region failed (err code", 44);
  __error();
  std::ostream::operator<<();
  sub_1000026BC(v35, ")", 1);
  std::ostream::~ostream();
  sub_10016954C(&v27);
  std::ios::~ios();
  if ((v7 & 0x8000000000000000) == 0)
  {
    return 4294967291;
  }

  else
  {
    return v7;
  }
}

void sub_10015CDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_10000367C(a17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10015CE38(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016DF60(a1, a2);
  *a1 = off_10022B7E0;
  a1[45] = &off_10022B8E0;
  a1[46] = &off_10022B908;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022B7E0;
  a1[45] = off_10022B868;
  a1[46] = off_10022B890;
  return a1;
}

void sub_10015CF3C(_Unwind_Exception *a1)
{
  sub_1001676EC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015CF60(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001676EC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015CFA4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016E028(a1, a2);
  *a1 = off_10022BA00;
  a1[45] = &off_10022BB00;
  a1[46] = &off_10022BB28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022BA00;
  a1[45] = off_10022BA88;
  a1[46] = off_10022BAB0;
  return a1;
}

void sub_10015D0A8(_Unwind_Exception *a1)
{
  sub_100167E84(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015D0CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100167E84(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015D110(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016E0F0(a1, a2);
  *a1 = off_10022BC20;
  a1[45] = &off_10022BD20;
  a1[46] = &off_10022BD48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022BC20;
  a1[45] = off_10022BCA8;
  a1[46] = off_10022BCD0;
  return a1;
}

void sub_10015D214(_Unwind_Exception *a1)
{
  sub_10016861C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015D238(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016861C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015D27C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016E1B8(a1, a2);
  *a1 = off_10022BE40;
  a1[45] = &off_10022BF40;
  a1[46] = &off_10022BF68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022BE40;
  a1[45] = off_10022BEC8;
  a1[46] = off_10022BEF0;
  return a1;
}

void sub_10015D380(_Unwind_Exception *a1)
{
  sub_100168DB4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015D3A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100168DB4(a1);
  std::ios::~ios();
  return a1;
}

ssize_t sub_10015D3E8(uint64_t a1, off_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a3;
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_10015D6EC(&__p, (a3 + a4 - 1) / a4 * a4);
  if (v7)
  {
    v10 = v21;
    do
    {
      if (v7 >= a4)
      {
        v11 = a4;
      }

      else
      {
        v11 = v7;
      }

      if (v10 >= v22)
      {
        v12 = (v10 - __p) >> 4;
        if ((v12 + 1) >> 60)
        {
          sub_100036CAC();
        }

        v13 = (v22 - __p) >> 3;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v22 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_10007A778(&__p, v14);
        }

        v15 = (16 * v12);
        *v15 = a5;
        v15[1] = v11;
        v10 = (16 * v12 + 16);
        v16 = (16 * v12 - (v21 - __p));
        memcpy(v15 - (v21 - __p), __p, v21 - __p);
        v17 = __p;
        __p = v16;
        v21 = v10;
        v22 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v10 = a5;
        *(v10 + 1) = v11;
        v10 += 16;
      }

      v21 = v10;
      v7 -= v11;
    }

    while (v7);
  }

  else
  {
    v10 = v21;
  }

  v18 = pwritev(**(a1 + 56), __p, (v10 - __p) >> 4, a2);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_10015D55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10015D580(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016E280(a1, a2);
  *a1 = off_10022C060;
  a1[45] = &off_10022C160;
  a1[46] = &off_10022C188;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022C060;
  a1[45] = off_10022C0E8;
  a1[46] = off_10022C110;
  return a1;
}

void sub_10015D684(_Unwind_Exception *a1)
{
  sub_10016954C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015D6A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016954C(a1);
  std::ios::~ios();
  return a1;
}

void sub_10015D6EC(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_10007A778(a1, a2);
    }

    sub_100036CAC();
  }
}

uint64_t sub_10015D78C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((*(v1 + 48) & 1) != 0 || ((*(*a1 + 48))(a1) & 1) == 0 && sub_10004DD50(*(a1 + 40), v4, v5))
  {
    return 0;
  }

  v6 = (*(*a1 + 48))(a1);
  if (v6)
  {
    v7 = 6;
  }

  else
  {
    v7 = 5;
  }

  if (!flock(**(a1 + 56), v7))
  {
    *&v10 = "int FileLocal::lock()";
    *(&v10 + 1) = 19;
    v11 = 0;
    sub_100131E04(v12, &v10);
    sub_1000026BC(v13, "File (fd ", 9);
    std::ostream::operator<<();
    sub_1000026BC(v13, ") is locked", 11);
    std::ostream::~ostream();
    sub_100133264(v12);
    std::ios::~ios();
    result = 0;
    *(v1 + 48) = 1;
    return result;
  }

  if (*__error() != 35)
  {
    *&v10 = "int FileLocal::lock()";
    *(&v10 + 1) = 19;
    v11 = 0;
    sub_100131F70(v12, &v10);
    sub_1000026BC(v13, "flock returned errno ", 21);
    __error();
    std::ostream::operator<<();
    sub_1000026BC(v13, ", keeping file unlocked", 23);
    std::ostream::~ostream();
    sub_100133AC4(v12);
    std::ios::~ios();
    return 0;
  }

  *&v10 = "int FileLocal::lock()";
  *(&v10 + 1) = 19;
  v11 = 16;
  sub_10015DA64(v12, &v10);
  sub_1000026BC(v13, "Cannot acquire ", 15);
  if (v6)
  {
    v8 = "exclusive";
  }

  else
  {
    v8 = "shared";
  }

  if (v6)
  {
    v9 = 9;
  }

  else
  {
    v9 = 6;
  }

  sub_1000026BC(v13, v8, v9);
  sub_1000026BC(v13, " lock, errno ", 13);
  __error();
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100169CE4(v12);
  std::ios::~ios();
  return -*__error();
}

void sub_10015DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10015DB8C(va);
  _Unwind_Resume(a1);
}

void *sub_10015DA64(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016E348(a1, a2);
  *a1 = off_10022C280;
  a1[45] = &off_10022C380;
  a1[46] = &off_10022C3A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022C280;
  a1[45] = off_10022C308;
  a1[46] = off_10022C330;
  return a1;
}

void sub_10015DB68(_Unwind_Exception *a1)
{
  sub_100169CE4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015DB8C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100169CE4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10015DBD8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 48) != 1)
  {
    return 0;
  }

  if (flock(**(a1 + 56), 8))
  {
    *&v3 = "int FileLocal::unlock_all()";
    *(&v3 + 1) = 25;
    v4 = 16;
    sub_10015DD78(v5, &v3);
    sub_1000026BC(v6, "Failed unlocking file with fd ", 30);
    std::ostream::operator<<();
    sub_1000026BC(v6, ", errno ", 8);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10016A47C(v5);
    std::ios::~ios();
    return -*__error();
  }

  else
  {
    *&v3 = "int FileLocal::unlock_all()";
    *(&v3 + 1) = 25;
    v4 = 0;
    sub_1000697D8(v5, &v3);
    sub_1000026BC(v6, "File (fd ", 9);
    std::ostream::operator<<();
    sub_1000026BC(v6, ") is unlocked", 13);
    std::ostream::~ostream();
    sub_100069A0C(v5);
    std::ios::~ios();
    result = 0;
    *(v1 + 48) = 0;
  }

  return result;
}

void sub_10015DD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100069900(va);
  _Unwind_Resume(a1);
}

void *sub_10015DD78(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016E410(a1, a2);
  *a1 = off_10022C4A0;
  a1[45] = &off_10022C5A0;
  a1[46] = &off_10022C5C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022C4A0;
  a1[45] = off_10022C528;
  a1[46] = off_10022C550;
  return a1;
}

void sub_10015DE7C(_Unwind_Exception *a1)
{
  sub_10016A47C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015DEA0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016A47C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10015DF04(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 48);
  *(v1 + 48) = 0;
  return result;
}

void sub_10015DF14(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (v2 == v1)
  {
    return;
  }

  v3 = a1;
  v4 = *(a1 + 96);
  v5 = &v1[v4 >> 5];
  v6 = *v5 + 128 * (v4 & 0x1F);
  if (v6 == *(v1 + (((*(a1 + 104) + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((*(a1 + 104) + v4) & 0x1F))
  {
    return;
  }

  v7 = *(a1 + 40);
  v86 = *(v7 + 49);
  v87 = *(v7 + 72);
  while (v2 == v1)
  {
    if (!v6)
    {
      goto LABEL_158;
    }

    v8 = 0;
LABEL_9:
    if (v8 == v6)
    {
      v12 = v5;
      v13 = v6;
    }

    else
    {
      v9 = (v6 - *v5) >> 7;
      if (v9 < 0)
      {
        v14 = 30 - v9;
        v10 = ~v14;
        v11 = &v5[-(v14 >> 5)];
      }

      else
      {
        v10 = v9 + 1;
        v11 = &v5[(v9 + 1) >> 5];
      }

      v15 = *v11 + 128 * (v10 & 0x1F);
      v13 = v6;
      v12 = v5;
      if (v15 != v8)
      {
        v12 = v5;
        v13 = v6;
        do
        {
          v16 = v15;
          v17 = v11;
          if (*(v13 + 112) != *(v15 + 112))
          {
            break;
          }

          v18 = *(v13 + 24);
          v19 = *(v13 + 16) + v18;
          if (v19 != *(v15 + 24))
          {
            break;
          }

          if (*(v13 + 104) == 1)
          {
            v20 = *(v13 + 48);
            if (*(v15 + 104))
            {
              if ((v20 != 0) == (*(v15 + 48) == 0))
              {
                break;
              }

              if (v20)
              {
                sub_10008A29C(v13 + 48, v18, v19, &v101);
                if (!sub_10008A328(&v101, v16 + 48))
                {
                  break;
                }
              }
            }

            else if (v20)
            {
              break;
            }
          }

          else
          {
            v21 = *(v15 + 48);
            if (*(v16 + 104) == 1 && v21 != 0)
            {
              break;
            }
          }

          v15 = v16 + 128;
          v11 = v17;
          if (v16 + 128 - *v17 == 4096)
          {
            v11 = v17 + 1;
            v15 = v17[1];
          }

          v12 = v17;
          v13 = v16;
        }

        while (v15 != v8);
      }
    }

    v23 = (v13 - *v12) >> 7;
    if (v23 < 0)
    {
      v26 = 30 - v23;
      v92 = &v12[-(v26 >> 5)];
      v25 = *v92 + 128 * (~v26 & 0x1F);
    }

    else
    {
      v24 = v23 + 1;
      v92 = &v12[v24 >> 5];
      v25 = *v92 + 128 * (v24 & 0x1F);
    }

    if (v6[104] == 1 && *(v6 + 12))
    {
      (*(*v3 + 80))(&v98, v3);
      v27 = *(v6 + 28) == 0;
      v28 = *(v6 + 12);
      if (v28 == 3)
      {
        sub_10014E08C(&v101, v27, v6 + 7, *(v6 + 22));
        sub_10014E140(v111, &v101);
        v112 = 2;
        sub_10014E200(&v101);
      }

      else if (v28 == 2)
      {
        sub_10014DCB8(&v101, v27, v6 + 7, v6 + 9, *(v6 + 22));
        sub_10014DDF4(v111, &v101);
        v112 = 1;
        v101 = off_100228258;
        sub_100027454(&v104);
        v101 = off_100204580;
        if (*(&v102 + 1))
        {
          v103[0] = *(&v102 + 1);
          operator delete(*(&v102 + 1));
        }
      }

      else
      {
        sub_10014E4B8(v109, v6 + 9);
        sub_10014D72C(&v101, v27, v6 + 7, v109, *(v6 + 22));
        sub_10014D880(v111, &v101);
        v112 = 0;
        v101 = off_100228230;
        sub_1000273B4(v105);
        v43 = v104;
        v104 = 0;
        if (v43)
        {
          operator delete[]();
        }

        v101 = off_100204580;
        if (*(&v102 + 1))
        {
          v103[0] = *(&v102 + 1);
          operator delete(*(&v102 + 1));
        }

        v44 = *&v109[0];
        *&v109[0] = 0;
        if (v44)
        {
          operator delete[]();
        }
      }

      v45 = *(v6 + 22);
      v46 = *(v6 + 12) - *(v6 + 3);
      v97[0] = v5;
      v97[1] = v6;
      v97[2] = v92;
      v97[3] = v25;
      v95 = v46;
      v96 = v97;
      sub_100027480(v109, v111);
      v110 = v45;
      v90 = v98;
      v47 = *v96;
      v48 = v96[1];
      *&v93 = &v95;
      *(&v93 + 1) = v47;
      v94 = v48;
      v49 = v96[3];
      v50 = *(v6 + 28);
      v51 = vm_page_size;
      sub_1001501BC(v50, v116);
      v88 = v46;
      v91 = v50;
      if (v48 == v49)
      {
        v52 = 0;
        goto LABEL_99;
      }

      sub_10016E4D8(&v93, &v121);
      sub_100026638(&v113, &v121);
      if (v122)
      {
        sub_10000367C(v122);
      }

      v99 = v93;
      v53 = v94;
      v100 = v94;
      if (v94 == v49)
      {
        v52 = 0;
LABEL_97:
        if (v114)
        {
          sub_10000367C(v114);
        }

LABEL_99:
        sub_10014FD78(&v101, v52, vm_page_size);
        sub_1000287DC(v116);
        v105[1] = v109;
        v105[2] = v90;
        v106 = v91;
        v107 = -v88;
        if (v48 == v49)
        {
          v62 = 0;
        }

        else
        {
          v62 = 0;
          v63 = *v47;
          do
          {
            v48 += 16;
            if (v48 - v63 == 4096)
            {
              v64 = v47[1];
              ++v47;
              v63 = v64;
              v48 = v64;
            }

            ++v62;
          }

          while (v48 != v49);
        }

        v108 = v62;
        is_mul_ok(3 * v62, 0x18uLL);
        operator new[]();
      }

      v52 = 0;
      v54 = v115 / v51 * v51;
      v55 = *(&v99 + 1);
      while (2)
      {
        sub_10016E4D8(&v99, &v121);
        sub_100026638(&v118, &v121);
        if (!v117)
        {
          sub_10002870C();
        }

        if ((*(*v117 + 48))(v117, &v118))
        {
          v56 = v119 + v120 - v54;
          if (v56 % v51)
          {
            v57 = v51 - v56 % v51;
          }

          else
          {
            v57 = 0;
          }

          v58 = v57 + v56;
          v52 += v58;
          v54 += v58;
        }

        else
        {
          v59 = v51;
          if (!(v120 % v45))
          {
            if (!(v119 % v45))
            {
              v54 = v119 + v120;
              goto LABEL_87;
            }

            v59 = 0;
          }

          v60 = v59 + v52;
          if ((v119 + v120) % v45)
          {
            v61 = v51;
          }

          else
          {
            v61 = 0;
          }

          v52 = v60 + v61;
          v54 = (v45 - 1 + v119 + v120) / v45 * v45;
        }

LABEL_87:
        if (*(&v118 + 1))
        {
          sub_10000367C(*(&v118 + 1));
        }

        if (v122)
        {
          sub_10000367C(v122);
        }

        v53 += 16;
        v100 = v53;
        if ((v53 - *v55) == 4096)
        {
          *(&v99 + 1) = v55 + 1;
          v53 = v55[1];
          v100 = v53;
          ++v55;
        }

        if (v53 == v49)
        {
          goto LABEL_97;
        }

        continue;
      }
    }

    v101 = v103;
    v102 = xmmword_1001C76E0;
    v111[0] = &v101;
    if (v6 == v25)
    {
      v33 = 0;
    }

    else
    {
      v29 = v6;
      v30 = v5;
      do
      {
        v31 = *(v29 + 2);
        *&v109[0] = *v29;
        *(&v109[0] + 1) = v31;
        sub_100162060(v111, v109);
        v29 += 128;
        if (v29 - *v30 == 4096)
        {
          v32 = v30[1];
          ++v30;
          v29 = v32;
        }
      }

      while (v29 != v25);
      v33 = v102 == 1;
    }

    v34 = *(v6 + 28);
    if (v34 == 1)
    {
      v37 = *(v6 + 3);
      v38 = **(v3 + 56);
      if (v33)
      {
        v39 = pwrite(v38, v101->iov_base, v101->iov_len, *(v6 + 3));
      }

      else
      {
        if (v6 == v25)
        {
          v42 = 0;
        }

        else
        {
          v42 = ((v25 - *v92) >> 7) + 4 * (v92 - v5) - ((v6 - *v5) >> 7);
        }

        v39 = pwritev(v38, v101, v42, *(v6 + 3));
      }

      v40 = v39;
      if (v39 >= 1)
      {
        v66 = v39 + v37;
        v67 = (*(v3 + 40) + 64);
        v68 = atomic_load(v67);
        if (v68 >= v39 + v37)
        {
          goto LABEL_136;
        }

        v69 = v68;
        do
        {
          atomic_compare_exchange_strong(v67, &v69, v66);
          if (v69 == v68)
          {
            break;
          }

          v68 = v69;
        }

        while (v69 < v66);
      }
    }

    else
    {
      if (v34)
      {
        v40 = 0;
        goto LABEL_136;
      }

      v35 = *(v6 + 3);
      if (v33)
      {
        v36 = (**v87)(v87, **(a1 + 56), v101->iov_base, v101->iov_len, *(v6 + 3));
      }

      else
      {
        if (v86)
        {
          if (v6 == v25)
          {
            v41 = 0;
          }

          else
          {
            v41 = 16 * (((v25 - *v92) >> 7) + 4 * (v92 - v5) - ((v6 - *v5) >> 7));
          }

          v70 = v101;
          v72 = *(a1 + 40);
          v71 = *(a1 + 48);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v40 = 0;
          if (v41)
          {
            p_iov_len = &v70->iov_len;
            do
            {
              if ((v40 & 0x8000000000000000) == 0)
              {
                v74 = (***(v72 + 72))(*(v72 + 72), *(v72 + 8), *(p_iov_len - 1), *p_iov_len, v40 + v35);
                if (v74 == *p_iov_len)
                {
                  v40 += v74;
                }

                else if (v74 == -1)
                {
                  v40 = -1;
                }

                else
                {
                  v40 = -5;
                }
              }

              p_iov_len += 2;
              v41 -= 16;
            }

            while (v41);
          }

          if (v71)
          {
            sub_10000367C(v71);
          }

          v3 = a1;
          goto LABEL_134;
        }

        if (v6 == v25)
        {
          v65 = 0;
        }

        else
        {
          v65 = ((v25 - *v92) >> 7) + 4 * (v92 - v5) - ((v6 - *v5) >> 7);
        }

        v36 = (*(*v87 + 8))(v87, **(a1 + 56), v101, v65, *(v6 + 3));
      }

      v40 = v36;
      v3 = a1;
    }

LABEL_134:
    if (v40 == -1)
    {
      v40 = -*__error();
    }

    do
    {
LABEL_136:
      v75 = v40;
      if (v40 >= 1)
      {
        if (*(v6 + 2) >= v40)
        {
          v75 = v40;
        }

        else
        {
          v75 = *(v6 + 2);
        }
      }

      v76 = *(v6 + 15);
      *v76 = v75;
      *(v76 + 4) = 1;
      sub_10002967C(v6 + 15);
      v6 += 128;
      if (v6 - *v5 == 4096)
      {
        v77 = v5[1];
        ++v5;
        v6 = v77;
      }

      v40 -= v75 & ~(v75 >> 63);
    }

    while (v5 < v12 || v5 == v12 && v6 <= v13);
    if (*(&v102 + 1) && v103 != v101)
    {
      operator delete(v101);
    }

    v4 = *(v3 + 96);
    v1 = *(v3 + 72);
    v2 = *(v3 + 80);
  }

  v8 = *(v1 + (((v4 + *(v3 + 104)) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((v4 + *(v3 + 104)) & 0x1F);
  if (v6 != v8)
  {
    goto LABEL_9;
  }

  v78 = &v1[v4 >> 5];
  v79 = *v78 + 128 * (v4 & 0x1F);
  if (v79 != v6)
  {
    do
    {
      v80 = *(v79 + 15);
      if (v80)
      {
        *(v80 + 16) = 0;
      }

      v81 = *(v79 + 1);
      if (v81)
      {
        sub_10000367C(v81);
      }

      v79 += 128;
      if (v79 - *v78 == 4096)
      {
        v82 = v78[1];
        ++v78;
        v79 = v82;
      }
    }

    while (v79 != v6);
    v1 = *(v3 + 72);
    v2 = *(v3 + 80);
  }

LABEL_158:
  *(v3 + 104) = 0;
  v83 = v2 - v1;
  if (v83 >= 3)
  {
    do
    {
      operator delete(*v1);
      v84 = *(v3 + 80);
      v1 = (*(v3 + 72) + 8);
      *(v3 + 72) = v1;
      v83 = (v84 - v1) >> 3;
    }

    while (v83 > 2);
  }

  if (v83 == 1)
  {
    v85 = 16;
LABEL_164:
    *(v3 + 96) = v85;
  }

  else if (v83 == 2)
  {
    v85 = 32;
    goto LABEL_164;
  }
}

void sub_10015EEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p)
{
  sub_10014E200(&__p);
  if (a36)
  {
    sub_10000367C(a36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10015F14C(uint64_t a1)
{
  sub_10014F6E8(a1);
  (*(**(a1 + 224) + 152))(*(a1 + 224));
  sub_10016E948(a1 + 224, *(a1 + 304));

  return sub_100027DE8(a1);
}

uint64_t sub_10015F1D0(uint64_t a1)
{
  *a1 = off_100229430;
  *(a1 + 24) = off_100229520;
  *(a1 + 32) = off_100229558;
  v10 = 66053;
  if (ffsctl(**(a1 + 56), 0xC0084A44uLL, &v10, 0))
  {
    *&v6 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v6 + 1) = 43;
    v7 = 0;
    sub_10015F4AC(v8, &v6);
    sub_1000026BC(v9, "mark purgeable failed on ", 25);
    sub_10019A7F4(v9, a1);
    sub_1000026BC(v9, ", errno ", 8);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10016AC14(v8);
  }

  else
  {
    *&v6 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v6 + 1) = 43;
    v7 = 0;
    sub_10015F618(v8, &v6);
    sub_10019A7F4(v9, a1);
    sub_1000026BC(v9, " marked as purgeable", 20);
    std::ostream::~ostream();
    sub_10016B3AC(v8);
  }

  std::ios::~ios();
  v2 = (*(*a1 + 192))(a1);
  if (futimes(v2, 0))
  {
    *&v6 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v6 + 1) = 43;
    v7 = 16;
    sub_10015F784(v8, &v6);
    sub_1000026BC(v9, "futimes failed on ", 18);
    sub_10019A7F4(v9, a1);
    sub_1000026BC(v9, ", errno ", 8);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10016BB44(v8);
    std::ios::~ios();
  }

  *a1 = off_1002295E0;
  *(a1 + 24) = off_1002296D0;
  *(a1 + 32) = off_100229708;
  sub_10004DE80((a1 + 64));
  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_10015F4AC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016F474(a1, a2);
  *a1 = off_10022C6C0;
  a1[45] = &off_10022C7C0;
  a1[46] = &off_10022C7E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022C6C0;
  a1[45] = off_10022C748;
  a1[46] = off_10022C770;
  return a1;
}

void sub_10015F5B0(_Unwind_Exception *a1)
{
  sub_10016AC14(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015F5D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016AC14(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015F618(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016F53C(a1, a2);
  *a1 = off_10022C8E0;
  a1[45] = &off_10022C9E0;
  a1[46] = &off_10022CA08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022C8E0;
  a1[45] = off_10022C968;
  a1[46] = off_10022C990;
  return a1;
}

void sub_10015F71C(_Unwind_Exception *a1)
{
  sub_10016B3AC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015F740(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016B3AC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10015F784(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016F604(a1, a2);
  *a1 = off_10022CB00;
  a1[45] = &off_10022CC00;
  a1[46] = &off_10022CC28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022CB00;
  a1[45] = off_10022CB88;
  a1[46] = off_10022CBB0;
  return a1;
}

void sub_10015F888(_Unwind_Exception *a1)
{
  sub_10016BB44(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015F8AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016BB44(a1);
  std::ios::~ios();
  return a1;
}

void sub_10015F904(uint64_t a1)
{
  sub_10015F1D0(a1);

  operator delete();
}

void sub_10015F93C(uint64_t a1)
{
  sub_10015F1D0(a1 - 24);

  operator delete();
}

void sub_10015F978(uint64_t a1)
{
  sub_10015F1D0(a1 - 32);

  operator delete();
}

uint64_t sub_10015F9B4(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v3)
  {
    if (v6)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = (*(*v6 + 192))(v6);
      goto LABEL_10;
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (**v3)(v3);
LABEL_10:
  v7 = v5;
  if (v4)
  {
    sub_10000367C(v4);
  }

  return v7;
}

void sub_10015FAE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015FB18(void *a1)
{
  *a1 = off_1002295E0;
  a1[3] = off_1002296D0;
  a1[4] = off_100229708;
  sub_10004DE80(a1 + 8);
  v2 = a1[6];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_10015FBFC(uint64_t a1, void *a2)
{
  sub_1000026BC(a2, "file(", 5);
  v2 = std::ostream::operator<<();

  return sub_1000026BC(v2, ")", 1);
}

void sub_10015FCA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11) = 0;
  v12 = 0;
  v14 = &v15;
  v15 = &v11;
  v13 = 0;
  sub_100026638(&v7, a2);
  v9 = 0;
  v10 = v15;
  v5 = v15;
  v15 = 0;
  *(v5 + 2) = &v10;
  sub_10016C1D4((a1 + 64), &v7);
  if (v10)
  {
    *(v10 + 2) = 0;
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v12 == 1)
  {
    *a3 = v11;
    *(a3 + 4) = 1;
  }

  v6 = v14;
  *(a3 + 16) = v14;
  if (v6)
  {
    *v6 = a3;
  }

  if (v15)
  {
    *(v15 + 2) = 0;
  }
}

void sub_10015FD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a10)
  {
    sub_10000367C(a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_10015FDB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11) = 0;
  v12 = 0;
  v14 = &v15;
  v15 = &v11;
  v13 = 0;
  sub_100026638(&v7, a2);
  v9 = 1;
  v10 = v15;
  v5 = v15;
  v15 = 0;
  *(v5 + 2) = &v10;
  sub_10016C1D4((a1 + 64), &v7);
  if (v10)
  {
    *(v10 + 2) = 0;
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v12 == 1)
  {
    *a3 = v11;
    *(a3 + 4) = 1;
  }

  v6 = v14;
  *(a3 + 16) = v14;
  if (v6)
  {
    *v6 = a3;
  }

  if (v15)
  {
    *(v15 + 2) = 0;
  }
}

void sub_10015FE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a10)
  {
    sub_10000367C(a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_10015FEE4(void *a1)
{
  *(a1 - 3) = off_1002295E0;
  *a1 = off_1002296D0;
  a1[1] = off_100229708;
  sub_10004DE80(a1 + 5);
  v2 = a1[3];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 - 1);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10015FF98(void *a1)
{
  *(a1 - 3) = off_1002295E0;
  *a1 = off_1002296D0;
  a1[1] = off_100229708;
  sub_10004DE80(a1 + 5);
  v2 = a1[3];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 - 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_100160064(void *a1)
{
  *(a1 - 4) = off_1002295E0;
  *(a1 - 1) = off_1002296D0;
  *a1 = off_100229708;
  sub_10004DE80(a1 + 4);
  v2 = a1[2];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 - 2);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100160114(void *a1)
{
  *(a1 - 4) = off_1002295E0;
  *(a1 - 1) = off_1002296D0;
  *a1 = off_100229708;
  sub_10004DE80(a1 + 4);
  v2 = a1[2];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 - 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_100160200(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160498(v1);

  return std::ios::~ios();
}

uint64_t sub_10016024C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160498(v1);

  return std::ios::~ios();
}

void sub_1001602AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160498(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100160314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100160350(_BYTE *a1, int a2)
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

void sub_1001603BC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160498(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100160420(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160498(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100160498(uint64_t a1)
{
  *a1 = &off_100229998;
  sub_100160604(a1);
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

uint64_t sub_100160604(uint64_t a1)
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
        sub_1001607B4((a1 + 72), __p);
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

void sub_100160750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016077C(uint64_t a1)
{
  sub_100160498(a1);

  operator delete();
}

int *sub_1001607B4(uint64_t *a1, uint64_t *a2)
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
    v26 = 67;
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
      v26 = 67;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100160998(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160C30(v1);

  return std::ios::~ios();
}

uint64_t sub_1001609E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160C30(v1);

  return std::ios::~ios();
}

void sub_100160A44(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160C30(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100160AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100160AE8(_BYTE *a1, int a2)
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

void sub_100160B54(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160C30(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100160BB8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160C30(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100160C30(uint64_t a1)
{
  *a1 = &off_100229BB8;
  sub_100160D9C(a1);
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

uint64_t sub_100160D9C(uint64_t a1)
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
        sub_100160F4C((a1 + 72), __p);
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

void sub_100160EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100160F14(uint64_t a1)
{
  sub_100160C30(a1);

  operator delete();
}

int *sub_100160F4C(uint64_t *a1, uint64_t *a2)
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
    v26 = 96;
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
      v26 = 96;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100161130(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001613C8(v1);

  return std::ios::~ios();
}

uint64_t sub_10016117C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001613C8(v1);

  return std::ios::~ios();
}

void sub_1001611DC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001613C8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100161244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100161280(_BYTE *a1, int a2)
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

void sub_1001612EC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001613C8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100161350(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001613C8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001613C8(uint64_t a1)
{
  *a1 = &off_100229DD8;
  sub_100161534(a1);
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

uint64_t sub_100161534(uint64_t a1)
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
        sub_1001616E4((a1 + 72), __p);
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

void sub_100161680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001616AC(uint64_t a1)
{
  sub_1001613C8(a1);

  operator delete();
}

int *sub_1001616E4(uint64_t *a1, uint64_t *a2)
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
    v26 = 104;
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
      v26 = 104;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001618C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100161B60(v1);

  return std::ios::~ios();
}

uint64_t sub_100161914(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100161B60(v1);

  return std::ios::~ios();
}

void sub_100161974(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100161B60(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001619DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}