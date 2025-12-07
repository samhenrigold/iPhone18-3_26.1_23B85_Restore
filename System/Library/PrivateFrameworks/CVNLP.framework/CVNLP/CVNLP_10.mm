void sub_1D9DC6978(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, const void *a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, uint64_t a46)
{
  MEMORY[0x1DA741280](v46, 0x10A1C40A0D887F0, a3, a4, a5, a6, a7, a8);
  if (a29 < 0)
  {
    operator delete(__p);
    if ((a36 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a36 & 0x80000000) == 0)
  {
LABEL_3:
    sub_1D9DB074C(&a37);
    _Unwind_Resume(a1);
  }

  operator delete(a31);
  sub_1D9DB074C(&a37);
  _Unwind_Resume(a1);
}

void sub_1D9DC6CA8(void *a1, char *__s)
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = __s;
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v32 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    v6 = v32;
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v6 = v32;
    if ((v32 & 0x80000000) == 0)
    {
LABEL_5:
      if (v6 > 7)
      {
        if (v6 <= 11)
        {
          if (v6 != 8)
          {
            if (v6 != 9)
            {
              goto LABEL_122;
            }

            if (__dst != 0x7079546E656B6F54 || v31 != 101)
            {
              if (__dst != 0x74676E654C78614DLL || v31 != 104)
              {
LABEL_64:
                if (v6 != 16)
                {
                  goto LABEL_122;
                }

                if (__dst != 0x547375656C63754ELL || v31 != 0x646C6F6873657268)
                {
                  goto LABEL_122;
                }

                goto LABEL_112;
              }

              goto LABEL_113;
            }

            goto LABEL_115;
          }

          p_dst = &__dst;
          goto LABEL_109;
        }

        if (v6 != 12)
        {
          goto LABEL_64;
        }

        if (__dst != 0x6365746968637241 || v31 != 1701999988)
        {
LABEL_122:
          sub_1D9DC75EC(&v29, &v33);
          if (qword_1ECB71C28 != -1)
          {
            dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
          }

          v26 = qword_1ECB71C30;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = &v29;
            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v27 = v29.__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            v35 = v27;
            _os_log_error_impl(&dword_1D9D0A000, v26, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, &v29);
          exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
          __cxa_throw(exception, off_1E858DD48, MEMORY[0x1E69E5298]);
        }

LABEL_82:
        v16 = @"CVNLPLanguageModelArchitectureKey";
        goto LABEL_117;
      }

      if (v6 != 3)
      {
        if (v6 != 4)
        {
          if (v6 != 6)
          {
            goto LABEL_122;
          }

          if (__dst != 1633906508 || WORD2(__dst) != 25964)
          {
            if (__dst != 1752458573 || WORD2(__dst) != 25711)
            {
              if (__dst != 1651340622 || WORD2(__dst) != 29285)
              {
                goto LABEL_122;
              }

LABEL_54:
              v16 = @"CVNLPSamplingNumberKey";
              goto LABEL_117;
            }

LABEL_116:
            v16 = @"CVNLPSamplingMethodKey";
            goto LABEL_117;
          }

LABEL_114:
          v16 = @"CVNLPLocaleKey";
          goto LABEL_117;
        }

        if (__dst != 1265659732)
        {
          goto LABEL_122;
        }

LABEL_111:
        v16 = @"CVNLPSamplingTopKKey";
        goto LABEL_117;
      }

      if (__dst != 21077 || BYTE2(__dst) != 76)
      {
        goto LABEL_122;
      }

LABEL_88:
      v16 = @"CVNLPModelURLKey";
      goto LABEL_117;
    }
  }

  if (v31 > 8)
  {
    if (v31 == 9)
    {
      if (*__dst == 0x7079546E656B6F54 && *(__dst + 8) == 101)
      {
LABEL_115:
        v16 = @"CVNLPTokenTypeKey";
        goto LABEL_117;
      }
    }

    else if (v31 == 12 && *__dst == 0x6365746968637241 && *(__dst + 8) == 1701999988)
    {
      goto LABEL_82;
    }
  }

  else if (v31 == 3)
  {
    if (*__dst == 21077 && *(__dst + 2) == 76)
    {
      goto LABEL_88;
    }
  }

  else if (v31 == 6)
  {
    if (*__dst == 1633906508 && *(__dst + 4) == 25964)
    {
      goto LABEL_114;
    }

    if (*__dst == 1752458573 && *(__dst + 4) == 25711)
    {
      goto LABEL_116;
    }

    if (*__dst == 1651340622 && *(__dst + 4) == 29285)
    {
      goto LABEL_54;
    }
  }

  if (v31 == 9 && *__dst == 0x74676E654C78614DLL && *(__dst + 8) == 104)
  {
LABEL_113:
    v16 = @"CVNLPSamplingMaxLengthKey";
    goto LABEL_117;
  }

  if (v31 == 4)
  {
    if (*__dst == 1265659732)
    {
      goto LABEL_111;
    }

    if ((v6 & 0x80) == 0)
    {
      goto LABEL_122;
    }
  }

  if (v31 == 16)
  {
    if (*__dst == 0x547375656C63754ELL && *(__dst + 8) == 0x646C6F6873657268)
    {
LABEL_112:
      v16 = @"CVNLPSamplingNucleusThresholdKey";
      goto LABEL_117;
    }

    if ((v6 & 0x80) == 0)
    {
      goto LABEL_122;
    }
  }

  if (v31 != 8)
  {
    goto LABEL_122;
  }

  p_dst = __dst;
LABEL_109:
  if (*p_dst != 0x657A69536D616542)
  {
    goto LABEL_122;
  }

  v16 = @"CVNLPSamplingBeamSizeKey";
LABEL_117:
  sub_1D9D896B0(v16, a1);
  if ((v6 & 0x80) != 0)
  {
    v25 = __dst;

    operator delete(v25);
  }
}

void sub_1D9DC72EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL CVNLPLanguageModelSetTemperature(uint64_t a1, float a2)
{
  result = sub_1D9D8EC60((a1 + 24), "temperature");
  if (result)
  {
    *(a1 + 136) = 1.0 / a2;
  }

  return result;
}

unint64_t sub_1D9DC7380(_BYTE *a1, CFDictionaryRef theDict, void *key)
{
  if (!theDict || !key || (Value = CFDictionaryGetValue(theDict, key)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D9ADDC(exception);
    goto LABEL_10;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(Value))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89454(exception);
LABEL_10:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_1D9D89464(Value, a1);
}

const void **sub_1D9DC746C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D9DC74A0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D9DC74D4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D9DC7508(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1D9DC753C(uint64_t a1, CFTypeRef cf, unsigned __int8 a3)
{
  if (*(a1 + 8) == a3)
  {
    if (*(a1 + 8))
    {
      v4 = *a1;
      *a1 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  else if (*(a1 + 8))
  {
    v5 = *a1;
    if (*a1)
    {
      CFRelease(v5);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    if (cf)
    {
      v6 = cf;
      CFRetain(cf);
      cf = v6;
    }

    *a1 = cf;
    *(a1 + 8) = 1;
  }
}

uint64_t sub_1D9DC75EC(void *a1, const char **a2)
{
  sub_1D9D100A8(&v6);
  sub_1D9D12280(&v6, "Unexpected CVNLP key: ", 22);
  v3 = *a2;
  v4 = strlen(v3);
  sub_1D9D12280(&v6, v3, v4);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v10);
}

void sub_1D9DC7760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DC7774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DC7788(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_25;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_18;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v6 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_33;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_33;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v6 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_10;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_25:
        LOBYTE(v9) = LOBYTE(valuePtr);
        if (!Value)
        {
          LOBYTE(v9) = 0;
        }

        v10 = SLOBYTE(valuePtr) < 0 && Value != 0;
        v11.i64[0] = Value != 0;
        v11.i64[1] = v10 << 63 >> 63;
        break;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_18:
        if (v8)
        {
          v9 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_36;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v6 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_33;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_33;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_33;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v6 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_10:
        v7 = *&valuePtr;
        goto LABEL_34;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_22;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_33;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_33:
        v7 = LODWORD(valuePtr);
        goto LABEL_34;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_22:
        v7 = valuePtr;
LABEL_34:
        v9 = v7 | 0x100000000;
        if (!v6)
        {
          v9 = 0;
        }

LABEL_36:
        v11 = vshlq_u64(vdupq_n_s64(v9), xmmword_1D9DDEA60);
        break;
      default:
        LOBYTE(v9) = 0;
        v11 = 0uLL;
        break;
    }

    v12 = vandq_s8(vshlq_u64(v11, xmmword_1D9DDEA70), xmmword_1D9DDEA80);
    return v12.i64[0] | v9 | v12.i64[1];
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      return CFBooleanGetValue(a1) | 0x100000000;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D9DC7A74()
{
  qword_1EE000690 = 0;
  qword_1EE0006A0 = 0;
  unk_1EE0006A8 = 0;
  qword_1EE000698 = "CVNLPLanguageModel";
  qword_1EE0006B0 = sub_1D9DC7AD0;
  xmmword_1EE0006B8 = 0u;
  unk_1EE0006C8 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EE000678 = result;
  return result;
}

void sub_1D9DC7AD0(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1D9DB0DFC(a1 + 16);
  sub_1D9D9AC58(a1 + 96, *(a1 + 104));
  sub_1D9DB1094(a1 + 72, *(a1 + 80));
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 48);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 48);
    }

    *(a1 + 56) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 24);
    if (v8 != v7)
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
      v9 = *(a1 + 24);
    }

    *(a1 + 32) = v7;
    operator delete(v9);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 16) = 0;
}

void sub_1D9DC7C08(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }
}

CFDictionaryRef sub_1D9DC7CD8(uint64_t **a1)
{
  v1 = a1[1];
  v2 = v1 - *a1;
  if (v1 != *a1)
  {
    if (!((v2 >> 4) >> 61))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v3 = CFDictionaryCreate(0, 0, 0, v2 >> 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v3;
}

void sub_1D9DC801C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  if (v1)
  {
    operator delete(v1);
    if (!v2)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

char **sub_1D9DC8088(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          CFRelease(v5);
        }

        v7 = *(v3 - 2);
        v3 -= 16;
        v6 = v7;
        if (v7)
        {
          CFRelease(v6);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1D9DC8108(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 - (v6 - *a1);
  v8 = v6 - *a1;
  if (v6 != *a1)
  {
    v9 = v8 - 16;
    v10 = *a1;
    v11 = (v4 - (v6 - *a1));
    if ((v8 - 16) < 0x70)
    {
      goto LABEL_22;
    }

    v12 = (v9 & 0xFFFFFFFFFFFFFFF0) + 16;
    v13 = v7 >= v5 + v12 || v5 >= v4 + v12 - v8;
    v10 = *a1;
    v11 = (v4 - (v6 - *a1));
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = v8 >> 4;
    v15 = (v9 >> 4) + 1;
    v16 = 2 * (v15 & 0x1FFFFFFFFFFFFFFCLL);
    v10 = &v5[v16];
    v11 = (v7 + v16 * 8);
    v17 = (v4 - 16 * v14 + 32);
    v18 = (v5 + 4);
    v19 = v15 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v20 = *(v18 - 1);
      v21 = *v18;
      v22 = v18[1];
      *(v17 - 2) = *(v18 - 2);
      *(v17 - 1) = v20;
      *v17 = v21;
      v17[1] = v22;
      v17 += 4;
      *(v18 - 2) = 0uLL;
      *(v18 - 1) = 0uLL;
      *v18 = 0uLL;
      v18[1] = 0uLL;
      v18 += 4;
      v19 -= 4;
    }

    while (v19);
    if (v15 != (v15 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_22:
      do
      {
        *v11 = *v10;
        *v10 = 0;
        v11[1] = v10[1];
        v10[1] = 0;
        v10 += 2;
        v11 += 2;
      }

      while (v10 != v6);
    }

    do
    {
      v23 = v5[1];
      if (v23)
      {
        CFRelease(v23);
      }

      if (*v5)
      {
        CFRelease(*v5);
      }

      v5 += 2;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v24 = a1[1];
  a1[1] = a2[2];
  a2[2] = v24;
  v25 = a1[2];
  a1[2] = a2[3];
  a2[3] = v25;
  *a2 = a2[1];
}

uint64_t sub_1D9DC827C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 16);
    *(a1 + 16) = i - 16;
    v5 = *(i - 8);
    if (v5)
    {
      CFRelease(v5);
    }

    if (*v4)
    {
      CFRelease(*v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CFNumberRef sub_1D9DC82F4(CFStringRef *a1, const UInt8 *a2, int *a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  valuePtr = *a3;
  result = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = result;
  if (!result)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
    __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1D9DC83F4(_Unwind_Exception *a1)
{
  sub_1D9DC74D4(v1 + 1);
  sub_1D9DC74A0(v1);
  _Unwind_Resume(a1);
}

void sub_1D9DC8434(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1D9DC74D4(v1);
  _Unwind_Resume(a1);
}

CFStringRef sub_1D9DC8464(CFNumberRef *a1, int a2, uint64_t a3)
{
  valuePtr = a2;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  result = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
  a1[1] = result;
  if (!result)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1D9DC8560(_Unwind_Exception *a1)
{
  sub_1D9DC74D4(v1 + 1);
  sub_1D9DC74A0(v1);
  _Unwind_Resume(a1);
}

void sub_1D9DC85A0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1D9DC74D4(v1);
  _Unwind_Resume(a1);
}

CFArrayRef sub_1D9DC85D0(int **a1)
{
  v2 = a1[1] - *a1;
  __p = 0;
  v38 = 0;
  v39 = 0;
  sub_1D9D850C0(&__p, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v38;
    do
    {
      v6 = *v3;
      if (v5 >= v39)
      {
        v8 = v5 - __p;
        v9 = (v5 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          sub_1D9D84AB0();
        }

        v10 = (v39 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v39 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        p_p = &__p;
        if (v11)
        {
          if (!(v11 >> 61))
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        v12 = 8 * v9;
        valuePtr[0] = 0;
        valuePtr[1] = 8 * v9;
        v41 = 8 * v9;
        v42 = 0;
        v44 = v6;
        v13 = CFNumberCreate(0, kCFNumberFloatType, &v44);
        *(8 * v9) = v13;
        if (!v13)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v14 = __p;
        v15 = v38;
        v16 = (v12 - (v38 - __p));
        v5 = (v12 + 8);
        v41 = v5;
        v17 = v38 - __p;
        if (v38 != __p)
        {
          v18 = v17 - 8;
          v19 = __p;
          v20 = v16;
          if ((v17 - 8) < 0x38)
          {
            goto LABEL_47;
          }

          if (v16 < __p + (v18 & 0xFFFFFFFFFFFFFFF8) + 8)
          {
            v19 = __p;
            v20 = v16;
            if (__p < v8 + (v18 & 0xFFFFFFFFFFFFFFF8) - v17 + 8)
            {
              goto LABEL_47;
            }
          }

          v21 = v17 >> 3;
          v22 = (v18 >> 3) + 1;
          v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
          v19 = (__p + v23);
          v20 = &v16[v23];
          v24 = (-8 * v21 + 8 * v9 + 16);
          v25 = (__p + 16);
          v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v27 = *v25;
            *(v24 - 1) = *(v25 - 1);
            *v24 = v27;
            *(v25 - 1) = 0uLL;
            *v25 = 0uLL;
            v24 += 2;
            v25 += 2;
            v26 -= 4;
          }

          while (v26);
          if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_47:
            do
            {
              *v20 = *v19;
              v20 += 8;
              *v19++ = 0;
            }

            while (v19 != v15);
          }

          do
          {
            if (*v14)
            {
              CFRelease(*v14);
            }

            ++v14;
          }

          while (v14 != v15);
          v14 = __p;
        }

        __p = v16;
        v38 = v5;
        v39 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        LODWORD(valuePtr[0]) = *v3;
        v7 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
        *v5 = v7;
        if (!v7)
        {
          v35 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v35, "Could not construct");
          __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v5 += 8;
      }

      v38 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  result = sub_1D9D85280(&__p);
  v29 = __p;
  if (__p)
  {
    v30 = result;
    v31 = v38;
    v32 = __p;
    if (v38 != __p)
    {
      do
      {
        v34 = *(v31 - 1);
        v31 -= 8;
        v33 = v34;
        if (v34)
        {
          CFRelease(v33);
        }
      }

      while (v31 != v29);
      v32 = __p;
    }

    v38 = v29;
    operator delete(v32);
    return v30;
  }

  return result;
}

void sub_1D9DC8914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D854A4(va);
  _Unwind_Resume(a1);
}

void sub_1D9DC8928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, char *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1D9DC7508(v3);
  sub_1D9D85418(va1);
  sub_1D9D854A4(va);
  _Unwind_Resume(a1);
}

void sub_1D9DC89C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D854A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DC89DC()
{
  qword_1EE0006F0 = 0;
  qword_1EE000700 = 0;
  unk_1EE000708 = 0;
  qword_1EE0006F8 = "CVNLPLanguageModelWithState";
  qword_1EE000710 = sub_1D9DC8A38;
  xmmword_1EE000718 = 0u;
  unk_1EE000728 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EE000688 = result;
  return result;
}

void sub_1D9DC8A38(uint64_t a1)
{
  CFRelease(*(a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

unint64_t sub_1D9DC8A90(const __CFDictionary *a1, const void *a2)
{
  if (!a1 || !a2 || (Value = CFDictionaryGetValue(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D9ADDC(exception);
    goto LABEL_8;
  }

  result = sub_1D9DC7788(Value);
  if (!HIDWORD(result))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89454(exception);
LABEL_8:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t sub_1D9DC8B40(uint64_t a1)
{
  if (!a1)
  {
    return a1 & 0xFFFFFFFFFFLL;
  }

  v1 = a1;
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v1))
  {
    a1 = sub_1D9DC8BE0(v1);
    return a1 & 0xFFFFFFFFFFLL;
  }

  v4 = CFBooleanGetTypeID();
  if (v4 == CFGetTypeID(v1))
  {
    return COERCE_UNSIGNED_INT(CFBooleanGetValue(v1)) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9DC8BE0(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v18.i8[0] = LOBYTE(valuePtr);
      v17 = vmovl_s16(*&vmovl_s8(v18)).i32[0];
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v14, v15, &valuePtr);
      v16.i16[0] = LOWORD(valuePtr);
      v17 = vmovl_s16(v16).i32[0];
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v12, v13, &valuePtr);
      v17 = SLODWORD(valuePtr);
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_25;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v17 = *&valuePtr;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v10, v11, &valuePtr);
      v17 = valuePtr;
LABEL_24:
      v9 = LODWORD(v17);
LABEL_25:
      v19 = v9 | 0x100000000;
      if (!Value)
      {
        v19 = 0;
      }

      result = v19 & 0x1FFFFFFFFLL;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_1D9DC8E00(uint64_t a1)
{
  *a1 = &unk_1F554FB88;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  std::exception::~exception(a1);
}

void *sub_1D9DC8E74(void *a1, float a2)
{
  *a1 = &unk_1F554FB88;
  sub_1D9D100A8(&v4);
  sub_1D9D12280(&v4, "InvalidProbabilityError: expected ", 34);
  std::ostream::operator<<();
  sub_1D9D12280(&v4, "to be in the interval [0, 1].", 29);
  std::stringbuf::str();
  v4 = *MEMORY[0x1E69E54E8];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v8);
  return a1;
}

void sub_1D9DC9020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D55298(va);
  std::exception::~exception(v3);
  _Unwind_Resume(a1);
}

void sub_1D9DC9054(std::exception *this)
{
  this->__vftable = &unk_1F554FB88;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9DC90C8(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_1D9DC90E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 8);
    v2 -= 8;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      CFRelease(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__CFString *sub_1D9DC913C(__CFString *result, const UInt8 *a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    v3->isa = result;
    if (!result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    result->isa = 0;
  }

  return result;
}

void sub_1D9DC9210(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1D9D89420(v1);
  _Unwind_Resume(a1);
}

char **sub_1D9DC922C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1D9DC929C(void *a1)
{
  *a1 = &unk_1F554E3C8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D9DC9468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1DA741280](v15, v14);
  _Unwind_Resume(a1);
}

void sub_1D9DC94A4(uint64_t *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    sub_1D9D12B94(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
    v16 = *(a2 + 16);
  }

  sub_1D9D564DC(v12, &__p, 1uLL);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  v4 = a1[2];
  sub_1D9DA82E0(&v13, v12);
  v5 = v13;
  if (*(v4 + 12) == 1)
  {
    v6 = v14;
    if (v13 != v14)
    {
      do
      {
        v7 = *(v5 + 23);
        v8 = v7;
        v9 = v5 + v7;
        if (v8 >= 0)
        {
          v10 = v9;
        }

        else
        {
          v10 = (*v5 + v5[1]);
        }

        if (v8 >= 0)
        {
          v11 = v5;
        }

        else
        {
          v11 = *v5;
        }

        for (; v11 != v10; ++v11)
        {
          *v11 = __tolower(*v11);
        }

        v5 += 3;
      }

      while (v5 != v6);
    }
  }

  memset(&v12[9], 0, 24);
  operator new();
}

void sub_1D9DCAC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (*(v3 + 56) == *(v3 + 64))
  {
    v8 = 0;
    __p = 0;
    v26 = 0;
    v27 = 0;
    while (1)
    {
      output_blob_name = espresso_get_output_blob_name();
      v11 = output_blob_name;
      if (!output_blob_name)
      {
        break;
      }

      v12 = v26;
      if (v26 >= v27)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v26 - __p) >> 3) + 1;
        if (v15 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D9D84AB0();
        }

        if (0x5555555555555556 * ((v27 - __p) >> 3) > v15)
        {
          v15 = 0x5555555555555556 * ((v27 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v27 - __p) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        p_p = &__p;
        if (v16)
        {
          if (v16 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        v17 = (8 * ((v26 - __p) >> 3));
        v28 = 0;
        v29 = v17;
        v30 = v17;
        v31 = 0;
        v18 = strlen(output_blob_name);
        if (v18 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1D9D12168();
        }

        v19 = v18;
        if (v18 >= 0x17)
        {
          operator new();
        }

        *(8 * ((v26 - __p) >> 3) + 0x17) = v18;
        if (v18)
        {
          memmove(v17, v11, v18);
        }

        v17[v19] = 0;
        v9 = (v30 + 24);
        v20 = &v29[-(v26 - __p)];
        memcpy(v20, __p, v26 - __p);
        v21 = __p;
        __p = v20;
        v26 = v9;
        v27 = v31;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        v13 = strlen(output_blob_name);
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1D9D12168();
        }

        v14 = v13;
        if (v13 >= 0x17)
        {
          operator new();
        }

        *(v26 + 23) = v13;
        if (v13)
        {
          memmove(v12, v11, v13);
        }

        *(v12 + v14) = 0;
        v9 = v12 + 3;
      }

      v26 = v9;
      ++v8;
    }
  }

  else
  {
    sub_1D9DA82E0(&__p, (v3 + 56));
  }

  sub_1D9D647C0(a2, a3, &__p, a1);
  v4 = __p;
  if (__p)
  {
    v5 = v26;
    v6 = __p;
    if (v26 != __p)
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
      v6 = __p;
    }

    v26 = v4;
    operator delete(v6);
  }
}

void sub_1D9DCAF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DCAF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_1D9D73268(va1);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DCAF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DCAF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DCAFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a2 + 8) + 64) - *(*(a2 + 8) + 56) != 24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9DCED00(exception);
    __cxa_throw(exception, &unk_1F554E588, std::runtime_error::~runtime_error);
  }

  sub_1D9DCAC34(v11, a2, a3);
  v4 = v12;
  *a1 = &unk_1F554E3C8;
  v5 = *(v4 + 48);
  *(a1 + 16) = 0;
  *(a1 + 8) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v7 = *(v4 + 56);
  v6 = *(v4 + 64);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v8 = *(v4 + 88);
  *(a1 + 40) = *(v4 + 80);
  *(a1 + 48) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_1F554E3F8;
  return sub_1D9D63270(v11);
}

void sub_1D9DCB100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 24) = v6;
    operator delete(v6);
  }

  sub_1D9D63270(va);
  _Unwind_Resume(a1);
}

void *sub_1D9DCB124(void *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D9D12B94(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  v6 = *(a3 + 8);
  __dst[5] = 0;
  __dst[3] = &unk_1F554E3C8;
  *(__dst + 8) = v6;
  __dst[6] = 0;
  __dst[7] = 0;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v9 = *(a3 + 48);
  __dst[8] = *(a3 + 40);
  __dst[9] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

void sub_1D9DCB220(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_1D9DCB25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *a1 = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(&__p.__r_.__value_.__s + 23) = 15;
  strcpy(&__p, "model_spec.json");
  sub_1D9D5D790(a2, &__p, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
LABEL_3:
    *__dst = v7;
    v4 = v8;
    goto LABEL_6;
  }

  sub_1D9D12B94(__dst, v7, *(&v7 + 1));
LABEL_6:
  if (SHIBYTE(v4) < 0)
  {
    sub_1D9D12B94(__src, __dst[0], __dst[1]);
  }

  else
  {
    *__src = *__dst;
    v10 = v4;
  }

  if (SHIBYTE(v10) < 0)
  {
    sub_1D9D12B94(buf, __src[0], __src[1]);
  }

  else
  {
    *buf = *__src;
    v12 = v10;
  }

  sub_1D9D67F54(&v13, buf, MEMORY[0x1E69E5350]);
}

void sub_1D9DCC5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  sub_1D9D7E6D8(v68);
  sub_1D9DCEDB8(v67);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a65 & 0x80000000) == 0)
  {
LABEL_7:
    MEMORY[0x1DA741280](v66, 0x1032C4025D38E4FLL);
    if (a56 < 0)
    {
      operator delete(a51);
    }

    sub_1D9DCED3C(a9);
    sub_1D9DCF274((v65 + 8), 0);
    v71 = *v65;
    *v65 = 0;
    if (!v71)
    {
      _Unwind_Resume(a1);
    }

    sub_1D9D8A4AC(v65, v71);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  goto LABEL_7;
}

void sub_1D9DCD310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v40 & 1) == 0)
    {
LABEL_8:
      sub_1D9DCECCC((v41 - 168));
      sub_1D9DC929C(&a21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v39);
  sub_1D9DCECCC((v41 - 168));
  sub_1D9DC929C(&a21);
  _Unwind_Resume(a1);
}

void sub_1D9DCD4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1D9DC929C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DCD4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1D9DC929C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DCD9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __cxa_free_exception(v18);
  sub_1D9D59C48(&a18);
  _Unwind_Resume(a1);
}

char *sub_1D9DCDA34(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D9D12B94(__dst, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(__dst + 5) = *(a2 + 5);
      *(__dst + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_1D9D12B94(__dst + 24, *(a2 + 3), *(a2 + 4));
LABEL_6:
  sub_1D9DA82E0(__dst + 6, a2 + 6);
  if (*(a2 + 95) < 0)
  {
    sub_1D9D12B94(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v6 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v6;
  }

  if (*(a2 + 119) < 0)
  {
    sub_1D9D12B94(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v7 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v7;
  }

  if (*(a2 + 143) < 0)
  {
    sub_1D9D12B94(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v8 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v8;
  }

  if (*(a2 + 167) < 0)
  {
    sub_1D9D12B94(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v9 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v9;
  }

  v10 = *(a2 + 21);
  __dst[176] = *(a2 + 176);
  *(__dst + 21) = v10;
  return __dst;
}

void sub_1D9DCDB6C(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
    if ((*(v1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 95) & 0x80000000) == 0)
      {
LABEL_8:
        sub_1D9D54C6C((v1 + 48));
        if (*(v1 + 47) < 0)
        {
          operator delete(*(v1 + 24));
          if ((*(v1 + 23) & 0x80000000) == 0)
          {
LABEL_10:
            _Unwind_Resume(a1);
          }
        }

        else if ((*(v1 + 23) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        operator delete(*v1);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(*(v1 + 72));
      goto LABEL_8;
    }
  }

  else if ((*(v1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 96));
  if ((*(v1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_1D9DCDC34(uint64_t a1)
{
  *a1 = &unk_1F554E158;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1D9DCDCC4(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D94D70(&v14, a2);
    v5 = std::string::insert(&v14, 0, "PixelBufferTransfer operation [");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v15, "] failed. Status = ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v13, v2);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v13;
    }

    else
    {
      v9 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v16, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v17);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1D9DCDDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_1D9DCDED4(void *a1)
{
  *a1 = &unk_1F554E3C8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1DA741280);
}

void sub_1D9DCE24C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1D9DCE26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v14 = *v12;
  if (*v12)
  {
    *(v10 + 24) = v14;
    operator delete(v14);
  }

  operator delete(v11);
  sub_1D9D5DA90(va);
  sub_1D9D5DA90(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DCE2E8(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType != 32)
      {
        v2 = 1094862674;
        goto LABEL_10;
      }

      return 0;
    }

    if (PixelFormatType == 1111970369)
    {
      return 0;
    }

    v2 = 1278226488;
LABEL_10:
    if (PixelFormatType == v2)
    {
      return 0;
    }

LABEL_15:
    v4 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v8, v4);
    v6 = std::string::insert(&v8, 0, "Unsupported CVPixelBuffer type: ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType != 1717856627 && PixelFormatType != 1717855600)
    {
      goto LABEL_15;
    }
  }

  else if (PixelFormatType != 1278226534)
  {
    v2 = 1380401729;
    goto LABEL_10;
  }

  return 1;
}

void sub_1D9DCE45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_1D9DCE4DC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F554FBE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9DCE584(uint64_t a1)
{
  CVPixelBufferRelease(*(a1 + 8));

  JUMPOUT(0x1DA741280);
}

void *sub_1D9DCE604(uint64_t a1)
{
  BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 8));
  if (!BaseAddress)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get CVPixelBuffer's data. Ensure the buffer was locked.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = BaseAddress;
  CVPixelBufferGetDataSize(*(a1 + 8));
  return v3;
}

void sub_1D9DCE690(uint64_t a1)
{
  sub_1D9DCE2E8(*(a1 + 8));
  CVPixelBufferGetBytesPerRow(*(a1 + 8));
  sub_1D9DCE8D8(*(a1 + 8));
  operator new();
}

void sub_1D9DCE724(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!CVPixelBufferLockBaseAddress(a1[1], 1uLL))
  {
    v4 = (*(*a1 + 24))(a1);
    v6 = v5;
    (*(*a1 + 32))(&__p, a1);
    sub_1D9D63FEC(a2, v4, v6, &__p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to lock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1D9DCE8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_1D9DCEC30(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DCE8D8(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 32)
      {
        return 4;
      }

      v2 = 1094862674;
      goto LABEL_8;
    }

    if (PixelFormatType == 1111970369)
    {
      return 4;
    }

    v4 = 1278226488;
LABEL_14:
    if (PixelFormatType != v4)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType == 1717856627)
    {
      return 1;
    }

    v4 = 1717855600;
    goto LABEL_14;
  }

  if (PixelFormatType != 1278226534)
  {
    v2 = 1380401729;
LABEL_8:
    if (PixelFormatType == v2)
    {
      return 4;
    }

LABEL_16:
    v5 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v9, v5);
    v7 = std::string::insert(&v9, 0, "Unsupported CVPixelBuffer type: ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v10);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return 1;
}

void sub_1D9DCEA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_1D9DCEAAC(uint64_t a1)
{
  *a1 = &unk_1F554FC90;
  if (CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_1D9DCEB48(uint64_t a1)
{
  *a1 = &unk_1F554FC90;
  if (!CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {

    JUMPOUT(0x1DA741280);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1D9DCEBFC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x1DA741280](v1, 0x10A1C40AFD1EA57);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DCEC30(uint64_t a1)
{
  *a1 = &unk_1F554FC90;
  if (CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

const void **sub_1D9DCECCC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::runtime_error *sub_1D9DCED00(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "Model must have exactly one pre-declared output.");
  result->__vftable = &unk_1F554E5B0;
  return result;
}

uint64_t sub_1D9DCED3C(uint64_t a1)
{
  sub_1D9D8A240(a1 + 80);
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*a1);
  return a1;
}

uint64_t *sub_1D9DCEDB8(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1D9D8A584(v2);
    MEMORY[0x1DA741280](v4, 0x10B0C409CF98BECLL);
    return v3;
  }

  return v1;
}

uint64_t **sub_1D9DCEE0C(uint64_t **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1D9D8A368(v2);
    MEMORY[0x1DA741280](v4, 0x10B0C4005063E60);
    return v3;
  }

  return v1;
}

uint64_t **sub_1D9DCEE60(void *a1, uint64_t *a2, __int128 **a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_1D9D115A0(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_1D9DCF25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D65E48(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1D9DCF274(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1D9D8A240((v2 + 3));
    v3 = v2[2];
    v2[2] = 0;
    if (v3)
    {
      v4 = sub_1D9D8A368(v3);
      MEMORY[0x1DA741280](v4, 0x10B0C4005063E60);
    }

    v5 = v2[1];
    v2[1] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *v2;
    *v2 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    JUMPOUT(0x1DA741280);
  }

  return result;
}

void sub_1D9DD00F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *__p, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1D9DD03BC(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1D9DD03E0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 16);
        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v1;

    operator delete(v4);
  }
}

void sub_1D9DD0458(uint64_t a1, void *a2, double a3)
{
  v25 = a2;
  v5 = *(a1 + 40);
  v6 = log(a3);
  if (v5)
  {
    a3 = v6;
  }

  v7 = *(*(a1 + 32) + 8);
  v9 = v7[7];
  v8 = v7[8];
  if (v9 >= v8)
  {
    v12 = v7[6];
    v13 = (v9 - v12) >> 4;
    if ((v13 + 1) >> 60)
    {
      sub_1D9D84AB0();
    }

    v14 = v8 - v12;
    v15 = v14 >> 3;
    if (v14 >> 3 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      if (!(v16 >> 60))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v17 = 16 * v13;
    *v17 = v25;
    *(v17 + 8) = a3;
    v11 = 16 * v13 + 16;
    v18 = v7[6];
    v19 = v7[7];
    v20 = (v17 + v18 - v19);
    if (v18 != v19)
    {
      v21 = v7[6];
      v22 = v20;
      do
      {
        v23 = *v21;
        *v21 = 0;
        *v22 = v23;
        v22[1] = *(v21 + 1);
        v21 += 16;
        v22 += 2;
      }

      while (v21 != v19);
      do
      {
        v24 = *v18;
        v18 += 2;
      }

      while (v18 != v19);
      v18 = v7[6];
    }

    v7[6] = v20;
    v7[7] = v11;
    v7[8] = 0;
    if (v18)
    {
      operator delete(v18);
    }

    v10 = v25;
  }

  else
  {
    *v9 = v25;
    v10 = v25;
    *(v9 + 8) = a3;
    v11 = v9 + 16;
  }

  v7[7] = v11;
}

void sub_1D9DD0608(uint64_t a1, void *a2, void *a3)
{
  v156 = a2;
  v5 = a3;
  v6 = *(a1 + 80);
  if (v6 == objc_msgSend_timestepCount(*(*(a1 + 32) + 16), v7, v8, v9) - 1)
  {
    v13 = objc_msgSend_string(v5, v10, v11, v12);
    v17 = objc_msgSend_length(v13, v14, v15, v16) != 0;
  }

  else
  {
    v17 = 1;
  }

  objc_msgSend_modelLogProbability(v5, v10, v11, v12);
  *&v18 = v18 + *(a1 + 88);
  v25 = objc_msgSend_childPathWithBlankLogProb_(v5, v19, v20, v21, *&v18);
  if (v17)
  {
    objc_msgSend_addPath_(*(a1 + 40), v22, v25, v24);
    v26 = *(a1 + 40);
    v30 = objc_msgSend_string(v25, v27, v28, v29);
    v33 = objc_msgSend_pathForString_(v26, v31, v30, v32);

    v25 = v33;
  }

  v155 = objc_msgSend_latestExpandedSymbolIncludingPseudospace(v5, v22, v23, v24);
  v34 = *(*(a1 + 72) + 8);
  v36 = *(v34 + 48);
  v35 = *(v34 + 56);
  while (v36 != v35)
  {
    v40 = *v36;
    v41 = *(v36 + 8);
    v42 = *(a1 + 48);
    if (v42 && (objc_msgSend_commitActionBlock(v42, v37, v38, v39), v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
    {
      v45 = objc_msgSend_commitActionBlock(*(a1 + 48), v37, v44, v39);
      v46 = (v45)[2](v45, v156, v40);
    }

    else
    {
      v46 = 0;
    }

    v47 = objc_msgSend_stringByAppendingString_(v156, v37, v40, v39, v155);
    v50 = objc_msgSend_pathForString_(*(a1 + 40), v48, v47, v49);
    if (objc_msgSend_length(v156, v51, v52, v53) && objc_msgSend_isEqualToString_(v40, v54, v155, v56))
    {
      objc_msgSend_blankLogProbability(v5, v54, v55, v56);
      v58 = v57;
      objc_msgSend_nonBlankLogProbability(v25, v59, v60, v61);
      v63 = v62;
      objc_msgSend_nonBlankLogProbability(v5, v64, v65, v66);
      v71 = v70 + v41;
      v72 = fmax(v63, v71);
      v73 = fmin(v63, v71);
      if (v73 >= -1021.0)
      {
        v74 = exp(v73 - v72);
        v72 = log1p(v74) + v72;
      }

      objc_msgSend_setNonBlankLogProbability_(v25, v67, v68, v69, v72);
      v77 = v58 + v41;
    }

    else
    {
      objc_msgSend_modelLogProbability(v5, v54, v55, v56);
      v77 = v78 + v41;
    }

    v79 = fmax(v77, -1022.0);
    v80 = objc_msgSend_pathForString_(*(a1 + 56), v75, v47, v76);

    if (v80)
    {
      v84 = -1022.0;
      if (!v50)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v117 = objc_msgSend_pathForString_(*(a1 + 64), v81, v47, v83);
      v121 = v117;
      if (v117)
      {
        objc_msgSend_modelLogProbability(v117, v118, v119, v120);
        v123 = v122;
        v124 = *(a1 + 88);
        objc_msgSend_nonBlankLogProbability(v121, v125, v126, v127);
        v132 = v131 + v41;
        v133 = fmax(v79, v132);
        v134 = fmin(v79, v132);
        if (v134 >= -1021.0)
        {
          v135 = exp(v134 - v133);
          v79 = log1p(v135) + v133;
        }

        else
        {
          v79 = v133;
        }

        shouldOptimizeAlignment = objc_msgSend_shouldOptimizeAlignment(*(a1 + 48), v128, v129, v130);
        v84 = fmax(v123 + v124, -1022.0);
        if (v50)
        {
          v140 = shouldOptimizeAlignment;
        }

        else
        {
          v140 = 0;
        }

        if (v140 == 1)
        {
          objc_msgSend_lastTokenBoundaryLogProbability(v50, v137, v138, v139);
          v142 = v141;
          objc_msgSend_lastTokenBoundaryLogProbability(v121, v143, v144, v145);
          if (v142 <= v149)
          {
            objc_msgSend_lastTokenBoundaryLogProbability(v121, v146, v147, v148);
          }

          else
          {
            objc_msgSend_lastTokenBoundaryLogProbability(v50, v146, v147, v148);
          }

          objc_msgSend_setLastTokenBoundaryLogProbability_(v50, v150, v151, v152);
        }
      }

      else
      {
        v84 = -1022.0;
      }

      if (!v50)
      {
LABEL_45:
        v50 = objc_msgSend_pathByExtendingWithString_extendedPathString_blankLogProb_nonBlankLogProb_timestep_commitAction_symbolLogProb_(v25, v81, v40, v47, *(a1 + 80), v46, v84, v79, v41);
        objc_msgSend_addPath_(*(a1 + 40), v153, v50, v154);
        goto LABEL_7;
      }
    }

    objc_msgSend_blankLogProbability(v50, v81, v82, v83);
    v89 = fmax(v88, v84);
    v90 = fmin(v88, v84);
    if (v90 >= -1021.0)
    {
      v91 = exp(v90 - v89);
      v89 = log1p(v91) + v89;
    }

    objc_msgSend_setBlankLogProbability_(v50, v85, v86, v87, v89);
    objc_msgSend_nonBlankLogProbability(v50, v92, v93, v94);
    v99 = fmax(v98, v79);
    v100 = fmin(v98, v79);
    if (v100 >= -1021.0)
    {
      v101 = exp(v100 - v99);
      v99 = log1p(v101) + v99;
    }

    objc_msgSend_setNonBlankLogProbability_(v50, v95, v96, v97, v99);
    v105 = objc_msgSend_shouldOptimizeAlignment(*(a1 + 48), v102, v103, v104);
    if (v46)
    {
      v109 = v105;
    }

    else
    {
      v109 = 0;
    }

    if (v109 == 1)
    {
      objc_msgSend_lastTokenBoundaryLogProbability(v50, v106, v107, v108);
      if (v41 > v113)
      {
        v114 = *(a1 + 80);
        objc_msgSend_modelLogProbability(v50, v110, v111, v112);
        objc_msgSend_updateLastTokenWithMaxActivation_totalLogProbability_tokenBoundaryLogProbability_(v50, v115, v114 + 1, v116);
      }
    }

LABEL_7:

    v36 += 16;
  }
}

char **sub_1D9DD1304(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 2);
        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1D9DD1FBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CVNLPCaptionDecoderTransformer;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1D9DD2130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DD2168(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1D9DD2180(uint64_t a1, const char *a2)
{
  *(*(*(a1 + 48) + 8) + 40) = objc_msgSend_computeCaptionForImageWithInputsImpl_genderOption_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 56));

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D9DD2D08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_13;
  }

  objc_msgSend_decoderInputNames(v5, a2, a3, a4);
  v6 = v68;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v68 - __p) >> 3);
  if (!__p)
  {
    if (v7 < 5)
    {
      goto LABEL_13;
    }

LABEL_12:
    objc_msgSend_buildNetworkForSequenceLength_imageFeatures_(*(a1 + 32), a2, *(a1 + 72), *(a1 + 40));
    goto LABEL_13;
  }

  if (v68 == __p)
  {
    v68 = __p;
    operator delete(__p);
    if (v7 <= 4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  do
  {
    v8 = *(v6 - 1);
    v6 -= 3;
    if (v8 < 0)
    {
      operator delete(*v6);
    }
  }

  while (v6 != __p);
  v68 = __p;
  operator delete(__p);
  if (v7 > 4)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (objc_msgSend_decoderBatchSize(*(a1 + 48), a2, a3, a4) >= 2 && (v12 = objc_msgSend_count(*(*(*(a1 + 64) + 8) + 40), v9, v10, v11), v12 <= objc_msgSend_decoderBatchSize(*(a1 + 48), v13, v14, v15)))
  {
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3321888768;
    v31 = *(a1 + 64);
    v32 = *(a1 + 48);
    v64[2] = sub_1D9DD3200;
    v64[3] = &unk_1F554FCB8;
    v64[4] = v32;
    v64[5] = v31;
    v33 = *(a1 + 88);
    v64[6] = *(a1 + 80);
    v34 = v33;
    v35 = *(a1 + 72);
    v65 = v34;
    v66 = v35;
    v36 = MEMORY[0x1DA741A60](v64);
    v37 = dispatch_group_create();
    dispatch_group_enter(v37);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = sub_1D9DD3A1C;
    v57[3] = &unk_1E858E548;
    v38 = *(a1 + 72);
    v60 = *(a1 + 64);
    v61 = v38;
    v57[4] = *(a1 + 48);
    v62 = *(a1 + 96);
    v63 = *(a1 + 112);
    v58 = *(a1 + 56);
    v39 = v37;
    v59 = v39;
    v40 = MEMORY[0x1DA741A60](v57);
    objc_msgSend_runBlockWithCopyInputBlock_copyOutputBlock_(*(a1 + 32), v41, v36, v40);
    dispatch_group_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v16 = dispatch_group_create();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = *(*(*(a1 + 64) + 8) + 40);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v53, v69, 16);
    if (v18)
    {
      v19 = *v54;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v53 + 1) + 8 * i);
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3321888768;
          v50[2] = sub_1D9DD3E7C;
          v50[3] = &unk_1F554FCF0;
          v22 = *(a1 + 88);
          v50[5] = *(a1 + 80);
          v23 = v22;
          v50[4] = v21;
          v24 = *(a1 + 72);
          v51 = v23;
          v52 = v24;
          v25 = MEMORY[0x1DA741A60](v50);
          dispatch_group_enter(v16);
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = sub_1D9DD3EC8;
          v43[3] = &unk_1E858E570;
          v26 = *(a1 + 48);
          v27 = *(a1 + 56);
          v47 = *(a1 + 72);
          v43[4] = v26;
          v48 = *(a1 + 96);
          v49 = *(a1 + 112);
          v44 = v27;
          v45 = v21;
          v46 = v16;
          v28 = MEMORY[0x1DA741A60](v43);
          objc_msgSend_runBlockWithCopyInputBlock_copyOutputBlock_(*(a1 + 32), v29, v25, v28);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v53, v69, 16);
      }

      while (v18);
    }

    dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void *sub_1D9DD3200(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), a2, a3, a4);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 40) + 8) + 40), v6, i, v7);
      v13 = objc_msgSend_maxCaptionLen(*(a1 + 32), v10, v11, v12);
      sub_1D9DD32A8(a1 + 48, v9, v13 * i, *(a1 + 64));

      result = objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), v14, v15, v16);
    }
  }

  return result;
}

void sub_1D9DD32A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v11 = *(a1 + 8);
  if (!v11)
  {
    goto LABEL_12;
  }

  objc_msgSend_decoderInputNames(v11, v7, v8, v9);
  v12 = v62;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v62 - __p) >> 3);
  if (__p)
  {
    if (v62 == __p)
    {
      v62 = __p;
      operator delete(__p);
      if (v13 > 4)
      {
        goto LABEL_5;
      }

LABEL_12:
      v15 = objc_msgSend_maxCaptionLen(**a1, v7, v8, v9);
      if (v15)
      {
        if (!(v15 >> 62))
        {
          operator new();
        }

        sub_1D9D84AB0();
      }

      MEMORY[0] = objc_msgSend_startID(**a1, v16, v17, v18);
      v21 = objc_msgSend_objectForKeyedSubscript_(v10, v19, CVNLPBeamTokens, v20);
      v22 = v21;
      v23 = MEMORY[0x1E695E0F0];
      if (v21)
      {
        v23 = v21;
      }

      v24 = v23;

      sub_1D9DD432C(v69, v24);
      v25 = v69[0];
      __p = v69[0];
      v62 = 0;
      if (v69[0])
      {
        Count = CFArrayGetCount(v69[0]);
        v25 = v69[0];
        v63 = Count;
        v64 = v69[0];
        v65 = 0;
        if (v69[0])
        {
          v25 = CFArrayGetCount(v69[0]);
        }
      }

      else
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
      }

      v65 = v25;
      v66 = v25;
      sub_1D9DD4448(&v67, &__p, &v64);
      if (a4)
      {
        memmove(4, v67, 4 * a4);
      }

      v30 = *(a1 + 8);
      if (v30)
      {
        objc_msgSend_blockInput(v30, v27, v28, v29);
      }

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      v31 = v69[0];
      if (v69[0])
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    do
    {
      v14 = *(v12 - 1);
      v12 -= 3;
      if (v14 < 0)
      {
        operator delete(*v12);
      }
    }

    while (v12 != __p);
    v62 = __p;
    operator delete(__p);
    if (v13 <= 4)
    {
      goto LABEL_12;
    }
  }

  else if (v13 < 5)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (a4 << 32 != 0xFFFFFFFF00000000)
  {
    if (!((((a4 << 32) + 0x100000000) >> 32) >> 62))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  MEMORY[0] = objc_msgSend_startID(**a1, v7, v8, v9);
  v34 = objc_msgSend_objectForKeyedSubscript_(v10, v32, CVNLPBeamTokens, v33);
  v35 = v34;
  v36 = MEMORY[0x1E695E0F0];
  if (v34)
  {
    v36 = v34;
  }

  v24 = v36;

  sub_1D9DD432C(v69, v24);
  v37 = v69[0];
  __p = v69[0];
  v62 = 0;
  if (v69[0])
  {
    v38 = CFArrayGetCount(v69[0]);
    v37 = v69[0];
    v63 = v38;
    v64 = v69[0];
    v65 = 0;
    if (v69[0])
    {
      v37 = CFArrayGetCount(v69[0]);
    }
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
  }

  v65 = v37;
  v66 = v37;
  sub_1D9DD4448(&v67, &__p, &v64);
  if (a4)
  {
    memmove(4, v67, 4 * a4);
  }

  v42 = *(a1 + 8);
  if (v42)
  {
    objc_msgSend_blockInput(v42, v39, v40, v41);
    v46 = *(a1 + 8);
    v47 = __p;
    if (v46)
    {
      objc_msgSend_decoderInputNames(v46, v43, v44, v45);
      v51 = __p;
      v52 = v62;
      v53 = 0xAAAAAAAAAAAAAAABLL * ((v62 - __p) >> 3);
      if (__p)
      {
        if (v62 == __p)
        {
          v62 = __p;
          operator delete(__p);
          if (v53 < 5)
          {
            goto LABEL_49;
          }
        }

        else
        {
          do
          {
            v54 = *(v52 - 1);
            v52 -= 3;
            if (v54 < 0)
            {
              operator delete(*v52);
            }
          }

          while (v52 != v51);
          v62 = v51;
          operator delete(__p);
          if (v53 < 5)
          {
            goto LABEL_49;
          }
        }
      }

      else if (v53 <= 4)
      {
        goto LABEL_49;
      }

      v55 = *(a1 + 8);
      if (v55)
      {
        objc_msgSend_decoderInputNames(v55, v48, v49, v50);
        v56 = __p;
        v57 = v62;
        v58 = 0xAAAAAAAAAAAAAAABLL * ((v62 - __p) >> 3);
        if (__p)
        {
          v59 = __p;
          if (v62 != __p)
          {
            do
            {
              v60 = *(v57 - 1);
              v57 -= 3;
              if (v60 < 0)
              {
                operator delete(*v57);
              }
            }

            while (v57 != v56);
            v59 = __p;
          }

          v62 = v56;
          operator delete(v59);
          if (v58 > 4)
          {
LABEL_68:
            v47[a3] = MEMORY[0xFFFFFFFFFFFFFFFC];
            operator new();
          }
        }

        else if (v58 >= 5)
        {
          goto LABEL_68;
        }
      }
    }
  }

LABEL_49:
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  v31 = v69[0];
  if (v69[0])
  {
LABEL_52:
    CFRelease(v31);
  }

LABEL_53:

  operator delete(0);
}

void sub_1D9DD38B0(_Unwind_Exception *a1)
{
  operator delete(v6);
  operator delete(v5);
  operator delete(v4);
  v9 = *(v7 - 120);
  if (v9)
  {
    *(v7 - 112) = v9;
    operator delete(v9);
  }

  sub_1D9D84610((v7 - 96));

  if (v2)
  {
    operator delete(v2);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

id sub_1D9DD39E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  result = v3;
  *(a1 + 56) = result;
  return result;
}

void sub_1D9DD3A1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_count(*(*(*(a1 + 56) + 8) + 40), a2, a3, a4))
  {
    v7 = 0;
    do
    {
      v8 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 8) + 40), v5, v7, v6);
      v9 = *(a1 + 64);
      v13 = objc_msgSend_vocabSize(*(a1 + 32), v10, v11, v12);
      v17 = objc_msgSend_vocabSize(*(a1 + 32), v14, v15, v16);
      v21 = objc_msgSend_maxCaptionLen(*(a1 + 32), v18, v19, v20);
      sub_1D9DD3B04(a1 + 72, *(a1 + 40), v8, v13 * v9 + v17 * v7 * v21);

      ++v7;
    }

    while (v7 < objc_msgSend_count(*(*(*(a1 + 56) + 8) + 40), v22, v23, v24));
  }

  v25 = *(a1 + 48);

  dispatch_group_leave(v25);
}

void sub_1D9DD3B04(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v11 = a3;
  v12 = **(a1 + 8);
  if (v12)
  {
    objc_msgSend_blockOutput(v12, v8, v9, v10);
    v13 = __p;
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v8, v9, v10);
  v17 = objc_msgSend_objectForKeyedSubscript_(v11, v15, CVNLPBeamSearchBeamID, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v18, v17, CVNLPBeamSearchBeamID);

  v21 = objc_msgSend_objectForKeyedSubscript_(v11, v19, CVNLPBeamSearchNextTokenID, v20);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v22, v21, CVNLPBeamSearchNextTokenID);

  v26 = **(a1 + 16);
  if (v26)
  {
    objc_msgSend_decoderInputNames(v26, v23, v24, v25);
    v27 = v52;
    v28 = 0xAAAAAAAAAAAAAAABLL * (v52 - __p) > 5;
    if (__p)
    {
      v29 = __p;
      if (v52 != __p)
      {
        do
        {
          v30 = *(v27 - 1);
          v27 -= 3;
          if (v30 < 0)
          {
            operator delete(*v27);
          }
        }

        while (v27 != __p);
        v29 = __p;
      }

      v52 = __p;
      operator delete(v29);
    }
  }

  else
  {
    v28 = 0;
  }

  v31 = MEMORY[0x1E695DEF0];
  v32 = objc_msgSend_vocabSize(**a1, v23, v24, v25);
  if (v28)
  {
    v34 = 0;
  }

  else
  {
    v34 = a4;
  }

  v35 = objc_msgSend_dataWithBytes_length_(v31, v33, v13 + 4 * v34, 4 * v32);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v36, v35, CVNLPBeamSearchNextTokenSoftmaxValues);
  v43 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v37, v38, v39);
  v44 = **(a1 + 8);
  if (!v44)
  {
    goto LABEL_29;
  }

  objc_msgSend_decoderInputNames(v44, v40, v41, v42);
  v46 = v52;
  v47 = 0xAAAAAAAAAAAAAAABLL * (v52 - __p);
  if (!__p)
  {
    if (v47 < 5)
    {
      goto LABEL_29;
    }

LABEL_28:
    objc_msgSend_copyOutputState_(**(a1 + 8), v40, v43, v45);
    goto LABEL_29;
  }

  if (v52 == __p)
  {
    operator delete(__p);
    if (v47 <= 4)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  do
  {
    v48 = *(v46 - 1);
    v46 -= 3;
    if (v48 < 0)
    {
      operator delete(*v46);
    }
  }

  while (v46 != __p);
  operator delete(__p);
  if (v47 > 4)
  {
    goto LABEL_28;
  }

LABEL_29:
  objc_msgSend_setObject_forKeyedSubscript_(v14, v40, v43, CVNLPBeamSearchNextTokenMetaData);
  objc_msgSend_addObject_(v7, v49, v14, v50);
}

id sub_1D9DD3E90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  result = v3;
  *(a1 + 48) = result;
  return result;
}

void sub_1D9DD3EC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 64);
  v6 = objc_msgSend_vocabSize(*(a1 + 32), a2, a3, a4);
  sub_1D9DD3B04(a1 + 72, *(a1 + 40), *(a1 + 48), v6 * v5);
  v7 = *(a1 + 56);

  dispatch_group_leave(v7);
}

id sub_1D9DD3F18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  result = v3;
  *(a1 + 88) = result;
  return result;
}

uint64_t sub_1D9DD3F50(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = CVNLPBeamSearchOneStep(*(a1 + 48), *(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D9DD432C(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *a1 = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFArrayGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_1D9DD4400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  sub_1D9D9AB6C(v10);

  _Unwind_Resume(a1);
}

void sub_1D9DD442C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_1D9D9AB6C(v10);

  _Unwind_Resume(a1);
}

uint64_t *sub_1D9DD4448(uint64_t *a1, uint64_t a2, const __CFArray **a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *(a2 + 8);
  if (*a3)
  {
    v4 = a3[1] == a3[2];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = a3[1];
  }

  if (v5 != v3)
  {
    if (!((v5 - v3) >> 62))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  return a1;
}

void sub_1D9DD4698(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  *(v1 + 8) = v2;
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

float sub_1D9DD46F4(const __CFArray *a1, unint64_t a2)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D9ADDC(exception);
    goto LABEL_8;
  }

  v5 = sub_1D9DC8B40(ValueAtIndex);
  if ((v5 & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89454(exception);
LABEL_8:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *&v5;
}

void sub_1D9DD48B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CVNLPDecodingLexicon;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1D9DD4BE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D9DD4C98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DD4E00(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v9 = objc_msgSend_priority(v4, v6, v7, v8);
  if (v9 < objc_msgSend_priority(v5, v10, v11, v12))
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

void sub_1D9DD50A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D9DD5244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1D9DD5288(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1D9DD52AC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1D9DD52C4(void *a1, void *a2)
{
  v6 = a2;
  v7 = a1[4];
  if (!v7 || !objc_msgSend_length(v7, v3, v4, v5))
  {
    objc_msgSend__rootCursor(v6, v3, v4, v5);
    v15 = LXCursorCreateByAdvancing();
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = a1[4];
  v9 = *(a1[5] + 48);
  if (v9)
  {
    v10 = v9(v8);
  }

  else
  {
    v10 = v8;
  }

  v14 = v10;
  objc_msgSend__rootCursor(v6, v11, v12, v13);
  v15 = LXCursorCreateByAdvancing();

  if (v15)
  {
LABEL_9:
    sub_1D9DAEEA4(*(a1[6] + 8) + 48, &v15);
  }

LABEL_10:
}

void sub_1D9DD5D50(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, ...)
{
  va_start(va, a13);
  sub_1D9D54C6C(va);

  _Unwind_Resume(a1);
}

void sub_1D9DD5F38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CVNLPCaptionDecoderLSTM;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t CVNLPCodepointToScriptCode(__int16 a1, int16x4_t a2)
{
  if ((a1 - 48) < 0xAu)
  {
    return 1;
  }

  v3 = 2;
  if (a1 == 32 || a1 == 45)
  {
    return v3;
  }

  if ((a1 - 8208) < 6u)
  {
    return 2;
  }

  a2.i16[0] = a1;
  a2.i16[1] = a1 & 0xFFDF;
  v4 = vdup_lane_s16(a2, 0);
  v4.i16[1] = a1 & 0xFFDF;
  if (vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v4, 0xFF08FF28FFBFFF40))))
  {
    return 3;
  }

  if ((a1 - 1024) < 0x130u)
  {
    return 4;
  }

  if ((a1 - 880) < 0x90u)
  {
    return 5;
  }

  v3 = 6;
  if (((a1 + 21504) >> 10) < 0xBu || (a1 & 0xFFE0) == 0xA960 || (a1 & 0xFF00) == 0x1100 || (a1 - 12592) < 0x60u)
  {
    return v3;
  }

  if ((a1 - 1632) >= 0xAu)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

BOOL CVNLPIsLatinCyrillicMixedScript(int a1, int a2)
{
  if (a1 == 3 && a2 == 4)
  {
    return 1;
  }

  return a1 == 4 && a2 == 3;
}

void CVNLPWordTokenIDsForString(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_stringByAppendingString_(a1, v5, @" ", v6);
  v8 = sub_1D9DA0144(v7, 0);

  objc_msgSend_maximumLengthOfBytesUsingEncoding_(v8, v9, 4, v10);
  objc_msgSend_length(v8, v11, v12, v13);
  operator new[]();
}

void sub_1D9DD7198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = objc_msgSend_initWithBytes_length_encoding_(v6, v7, a2, a3, 4);
  v12 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v9, v10, v11);
  v18 = objc_msgSend_stringByTrimmingCharactersInSet_(v8, v13, v12, v14);

  if (objc_msgSend_length(v18, v15, v16, v17))
  {
    (*(*(a1 + 32) + 16))();
  }
}

BOOL CVNLPShouldUseLexiconContextLogProb(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3, v4) == 1)
  {
    v7 = objc_msgSend_characterAtIndex_(v1, v5, 0, v6);

    if (v7 == 39)
    {
LABEL_3:

      return 0;
    }
  }

  else
  {
  }

  if (sub_1D9D9F9CC(v1))
  {
    goto LABEL_3;
  }

  v9 = !sub_1D9D9FA5C(v1);

  return v9;
}

CVNLPTextDecodingResult *convertToCVNLPTextDecodingResult(double **a1, void *a2)
{
  v264[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v253 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6);
  v256 = *a1;
  v252 = a1[1];
  if (*a1 == v252)
  {
    goto LABEL_72;
  }

  do
  {
    v263 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v252);
    v14 = *v256;
    v13 = *(v256 + 8);
    v259 = v13;
    while (*&v14 != v13)
    {
      v18 = objc_msgSend_string(MEMORY[0x1E696AD60], v10, v11, v12);
      v19 = **&v14;
      v20 = *(*&v14 + 8);
      if (**&v14 != v20)
      {
        do
        {
          v21 = v3[2](v3, *v19);
          objc_msgSend_appendString_(v18, v22, v21, v23);

          ++v19;
        }

        while (v19 != v20);
      }

      for (i = 0; i < objc_msgSend_length(v18, v15, v16, v17); ++i)
      {
        v25 = objc_msgSend_characterAtIndex_(v18, v15, i, v17);
        if (v25 != 0x2000 && v25 != 32)
        {
          break;
        }
      }

      v29 = objc_msgSend_length(v18, v15, v16, v17);
      v30 = 0;
      v31 = v29 - 1;
      if (v29 - 1 >= 0)
      {
        while (1)
        {
          v32 = objc_msgSend_characterAtIndex_(v18, v26, v31, v28);
          if (v32 != 0x2000 && v32 != 32)
          {
            break;
          }

          ++v30;
          if (--v31 == -1)
          {
            v30 = v29;
            if (!i)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }
      }

      if (i)
      {
LABEL_21:
        objc_msgSend_deleteCharactersInRange_(v18, v26, 0, i);
      }

LABEL_22:
      if (v30)
      {
        if (objc_msgSend_length(v18, v26, v27, v28))
        {
          if (objc_msgSend_length(v18, v26, v27, v28) < v30)
          {
            v30 = objc_msgSend_length(v18, v33, v34, v35);
          }

          v36 = objc_msgSend_length(v18, v33, v34, v35);
          objc_msgSend_deleteCharactersInRange_(v18, v37, v36 - v30, v30);
        }

        if (i)
        {
          v38 = objc_msgSend_length(v18, v26, v27, v28) == 0;
        }

        else
        {
          v38 = 0;
        }

        v39 = @" ";
      }

      else
      {
        v38 = 0;
        v39 = &stru_1F554FF38;
      }

      v40 = objc_msgSend_lastObject(v263, v26, v27, v28);
      v262 = objc_msgSend_terminatingCharacter(v40, v41, v42, v43);
      v260 = v39;

      if (i != 0 && !v38)
      {
        if (objc_msgSend_count(v263, v44, v45, v46))
        {
          if (!objc_msgSend_length(v262, v44, v45, v46) || (v47 = objc_msgSend_characterAtIndex_(v262, v44, 0, v46), v47 != 32) && v47 != 0x2000)
          {
            v48 = objc_msgSend_lastObject(v263, v44, v45, v46);
            v52 = objc_msgSend_count(v263, v49, v50, v51);
            v53 = [CVNLPTextDecodingToken alloc];
            v257 = objc_msgSend_string(v48, v54, v55, v56);
            v60 = objc_msgSend_score(v48, v57, v58, v59);
            v64 = objc_msgSend_alignmentScore(v48, v61, v62, v63);
            v68 = objc_msgSend_activationRange(v48, v65, v66, v67);
            v70 = objc_msgSend_initWithString_score_alignmentScore_activationRange_terminatingCharacter_(v53, v69, v257, v60, v64, v68, v69, @" ");
            objc_msgSend_replaceObjectAtIndex_withObject_(v263, v71, v52 - 1, v70);
          }
        }
      }

      if (!v38)
      {
        goto LABEL_45;
      }

      if (objc_msgSend_count(v263, v44, v45, v46))
      {
        v75 = objc_msgSend_lastObject(v263, v72, v73, v74);
        v79 = objc_msgSend_fullString(v75, v76, v77, v78);
        if (objc_msgSend_length(v79, v80, v81, v82) == 1)
        {
          v85 = objc_msgSend_characterAtIndex_(v79, v83, 0, v84);

          if (v85 == 0x2000 || v85 == 32)
          {
            v86 = objc_msgSend_lastObject(v263, v44, v45, v46);
            v258 = objc_msgSend_activationRange(v86, v87, v88, v89);
            v90 = *(*&v14 + 48);
            v94 = objc_msgSend_activationRange(v86, v91, v92, v93);
            v254 = objc_msgSend_count(v263, v95, v96, v97);
            v98 = [CVNLPTextDecodingToken alloc];
            v261 = objc_msgSend_string(v86, v99, v100, v101);
            v255 = objc_msgSend_score(v86, v102, v103, v104);
            v108 = objc_msgSend_alignmentScore(v86, v105, v106, v107);
            v112 = objc_msgSend_terminatingCharacter(v86, v109, v110, v111);
            v114 = objc_msgSend_initWithString_score_alignmentScore_activationRange_terminatingCharacter_(v98, v113, v261, v255, v108, v258, v90 - v94, v112);
            objc_msgSend_replaceObjectAtIndex_withObject_(v263, v115, v254 - 1, v114);

LABEL_3:
            goto LABEL_4;
          }
        }

        else
        {
        }

LABEL_45:
        if (objc_msgSend_count(v263, v44, v45, v46))
        {
          v116 = *(*&v14 + 40);
        }

        else
        {
          v116 = 0;
        }

        v117 = [CVNLPTextDecodingToken alloc];
        v118 = MEMORY[0x1E696AD98];
        v119 = exp(*(*&v14 + 24) / (*(*&v14 + 56) + 1));
        v123 = objc_msgSend_numberWithDouble_(v118, v120, v121, v122, v119);
        v124 = MEMORY[0x1E696AD98];
        v125 = exp(*(*&v14 + 32));
        v129 = objc_msgSend_numberWithDouble_(v124, v126, v127, v128, v125);
        v86 = objc_msgSend_initWithString_score_alignmentScore_activationRange_terminatingCharacter_(v117, v130, v18, v123, v129, v116, *(*&v14 + 48) - v116, v260);

        objc_msgSend_addObject_(v263, v131, v86, v132);
        goto LABEL_3;
      }

LABEL_4:

      *&v14 += 64;
      v13 = v259;
    }

    while (objc_msgSend_count(v263, v10, v11, v12))
    {
      v136 = objc_msgSend_lastObject(v263, v133, v134, v135);
      v140 = objc_msgSend_terminatingCharacter(v136, v137, v138, v139);
      if (objc_msgSend_length(v140, v141, v142, v143) != 1)
      {

        break;
      }

      v146 = objc_msgSend_characterAtIndex_(v140, v144, 0, v145);

      if (v146 != 0x2000 && v146 != 32)
      {
        break;
      }

      v150 = objc_msgSend_lastObject(v263, v147, v148, v149);
      v154 = objc_msgSend_fullString(v150, v151, v152, v153);
      if (objc_msgSend_length(v154, v155, v156, v157) != 1)
      {

LABEL_60:
        v177 = objc_msgSend_lastObject(v263, v161, v162, v163);
        v204 = objc_msgSend_count(v263, v201, v202, v203);
        v205 = [CVNLPTextDecodingToken alloc];
        v186 = objc_msgSend_string(v177, v206, v207, v208);
        v190 = objc_msgSend_score(v177, v209, v210, v211);
        v194 = objc_msgSend_alignmentScore(v177, v212, v213, v214);
        v218 = objc_msgSend_activationRange(v177, v215, v216, v217);
        v199 = objc_msgSend_initWithString_score_alignmentScore_activationRange_terminatingCharacter_(v205, v219, v186, v190, v194, v218, v219, &stru_1F554FF38);
        objc_msgSend_replaceObjectAtIndex_withObject_(v263, v220, v204 - 1, v199);
LABEL_49:

        continue;
      }

      v160 = objc_msgSend_characterAtIndex_(v154, v158, 0, v159);

      if (v160 != 0x2000 && v160 != 32)
      {
        goto LABEL_60;
      }

      v164 = objc_msgSend_lastObject(v263, v161, v162, v163);
      v168 = objc_msgSend_activationRange(v164, v165, v166, v167);
      v170 = v169;

      objc_msgSend_removeLastObject(v263, v171, v172, v173);
      if (objc_msgSend_count(v263, v174, v175, v176))
      {
        v177 = objc_msgSend_lastObject(v263, v10, v11, v12);
        v181 = objc_msgSend_count(v263, v178, v179, v180);
        v182 = [CVNLPTextDecodingToken alloc];
        v186 = objc_msgSend_string(v177, v183, v184, v185);
        v190 = objc_msgSend_score(v177, v187, v188, v189);
        v194 = objc_msgSend_alignmentScore(v177, v191, v192, v193);
        v266.location = objc_msgSend_activationRange(v177, v195, v196, v197);
        v267.location = v168;
        v267.length = v170;
        v198 = NSUnionRange(v266, v267);
        v199 = objc_msgSend_initWithString_score_alignmentScore_activationRange_terminatingCharacter_(v182, v198.length, v186, v190, v194, v198.location, v198.length, &stru_1F554FF38);
        objc_msgSend_replaceObjectAtIndex_withObject_(v263, v200, v181 - 1, v199);
        goto LABEL_49;
      }
    }

    v222 = *v256;
    v221 = *(v256 + 8);
    if (*v256 == v221)
    {
      v226 = 0.0;
    }

    else
    {
      v223 = v221 - *&v222 - 64;
      if (v223 < 0x40)
      {
        v224 = 0;
        v225 = *v256;
        goto LABEL_69;
      }

      v227 = 0;
      v228 = 0;
      v229 = (v223 >> 6) + 1;
      *&v225 = *&v222 + ((v229 & 0x7FFFFFFFFFFFFFELL) << 6);
      v230 = (*&v222 + 120);
      v231 = v229 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        v232 = *(v230 - 16);
        v233 = *v230;
        v230 += 32;
        v227 += v232;
        v228 += v233;
        v231 -= 2;
      }

      while (v231);
      v224 = v228 + v227;
      if (v229 != (v229 & 0x7FFFFFFFFFFFFFELL))
      {
        do
        {
LABEL_69:
          v224 += *(*&v225 + 56);
          *&v225 += 64;
        }

        while (*&v225 != v221);
      }

      v226 = v224;
    }

    v234 = [CVNLPTextDecodingResultCandidate alloc];
    v235 = exp(*(v256 + 24) / v226);
    v236 = exp(*(v256 + 32) / v226);
    v239 = objc_msgSend_initWithTokens_score_activationScore_(v234, v237, v263, v238, v235, v236);
    objc_msgSend_addObject_(v253, v240, v239, v241);

    v256 += 40;
  }

  while (v256 != v252);
LABEL_72:
  v242 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x1E696AEB0], v7, @"score", 0, v252);
  v264[0] = v242;
  v244 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v243, v264, 1);
  objc_msgSend_sortUsingDescriptors_(v253, v245, v244, v246);

  v247 = [CVNLPTextDecodingResult alloc];
  v250 = objc_msgSend_initWithCandidates_(v247, v248, v253, v249);

  return v250;
}

void CVNLPLogGeneralFault(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1ECB72028 != -1)
  {
    dispatch_once(&qword_1ECB72028, &unk_1F554E288);
  }

  v2 = qword_1ECB71FF8[0];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_1D9D0A000, v2, OS_LOG_TYPE_FAULT, "%@", &v3, 0xCu);
  }
}

char *sub_1D9DD81BC(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1D9DD9CE8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1D9D34694(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1D9D31F8C(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

unsigned __int8 *sub_1D9DD8284(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1D9DD9CE8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_1D9D34694(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1D9D32EEC(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_1D9DD834C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v275 = a2;
  v5 = sub_1D9D34224(a3, &v275, a3[11].u32[1]);
  v6 = v275;
  if (v5)
  {
    return;
  }

  while (2)
  {
    v7 = v6 + 1;
    v8 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v8 + (*v7 << 7) - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = v6 + 2;
LABEL_6:
      v275 = v7;
      goto LABEL_7;
    }

    v26 = sub_1D9D4E760(v6, v8);
    v275 = v26;
    if (!v26)
    {
      return;
    }

    v7 = v26;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_269;
        }

        v9 = v7 - 1;
        while (2)
        {
          v275 = v9 + 1;
          if (!*(a1 + 72))
          {
            v11 = *(a1 + 68);
LABEL_16:
            sub_1D9D53A28((a1 + 56), v11 + 1);
            v10 = *(a1 + 72);
            goto LABEL_17;
          }

          sub_1D9D3C820();
          if (v12 != v13)
          {
            sub_1D9D3C808();
            *(a1 + 64) = v15;
            v17 = *(v16 + 8);
            goto LABEL_22;
          }

          if (v11 == *(a1 + 68))
          {
            goto LABEL_16;
          }

LABEL_17:
          sub_1D9D3C85C(v10);
          v18 = *(a1 + 56);
          if (!v18)
          {
            sub_1D9D3C868();
          }

          if (*(v18 + 24))
          {
            v24 = sub_1D9D3C7C0();
            (*(v25 + 40))(v24, &unk_1F554DC48, 24);
          }

          v19 = sub_1D9D3C748();
          sub_1D9D3C838(v19);
          sub_1D9D3C82C();
          *(a1 + 64) = v20;
          v17 = sub_1D9D3C814(v21, v22);
LABEL_22:
          v275 = sub_1D9D4E7A4(v17, v14, a3);
          if (v275)
          {
            sub_1D9D3C7FC();
            if (!(!v210 & v23) || *v9 != 10)
            {
              goto LABEL_267;
            }

            continue;
          }

          return;
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_269;
        }

        sub_1D9D3C850(*(a1 + 40) | 1);
        if (v43)
        {
          sub_1D9D3C844();
        }

        v44 = (a1 + 152);
        goto LABEL_227;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        v153 = v7 + 1;
        v152 = *v7;
        if ((v152 & 0x8000000000000000) == 0)
        {
          goto LABEL_183;
        }

        sub_1D9D3C71C();
        if (v155 < 0)
        {
          v275 = sub_1D9D4E718(v154, v152);
          if (!v275)
          {
            return;
          }
        }

        else
        {
          v153 = (v154 + 2);
LABEL_183:
          v275 = v153;
        }

        if ((v152 - 1) > 3)
        {
          v269 = *(a1 + 8);
          if (v269)
          {
            v270 = ((v269 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v273 = v152;
            v274 = sub_1D9D34364((a1 + 8));
            v152 = v273;
            v270 = v274;
          }

          sub_1D9D4E600(3, v152, v270);
        }

        else
        {
          *(a1 + 40) |= 0x800000u;
          *(a1 + 272) = v152;
        }

        goto LABEL_267;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_269;
        }

        sub_1D9D3C790(*(a1 + 40) | 0x1000000);
        if ((v100 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        sub_1D9D3C734();
        if (v103 < 0)
        {
          v237 = sub_1D9D4E718(v102, v100);
          v275 = v237;
          *(a1 + 276) = v238;
          if (!v237)
          {
            return;
          }
        }

        else
        {
          v101 = (v102 + 2);
LABEL_122:
          v275 = v101;
          *(a1 + 276) = v100;
        }

        goto LABEL_267;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_269;
        }

        v125 = v7 - 1;
        while (1)
        {
          v275 = v125 + 1;
          if (!*(a1 + 96))
          {
            break;
          }

          sub_1D9D3C820();
          if (v12 == v13)
          {
            if (v127 == *(a1 + 92))
            {
LABEL_154:
              sub_1D9D53A28((a1 + 80), v127 + 1);
              v126 = *(a1 + 96);
            }

            sub_1D9D3C85C(v126);
            v132 = *(a1 + 80);
            if (!v132)
            {
              sub_1D9D3C868();
            }

            if (*(v132 + 24))
            {
              v137 = sub_1D9D3C7C0();
              (*(v138 + 40))(v137, &unk_1F554DC48, 24);
            }

            v133 = sub_1D9D3C748();
            sub_1D9D3C838(v133);
            sub_1D9D3C82C();
            *(a1 + 88) = v134;
            v131 = sub_1D9D3C814(v135, v136);
            goto LABEL_160;
          }

          sub_1D9D3C808();
          *(a1 + 88) = v129;
          v131 = *(v130 + 8);
LABEL_160:
          v275 = sub_1D9D4E7A4(v131, v128, a3);
          if (!v275)
          {
            return;
          }

          sub_1D9D3C7FC();
          if (!(!v210 & v23) || *v125 != 42)
          {
            goto LABEL_267;
          }
        }

        v127 = *(a1 + 92);
        goto LABEL_154;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_269;
        }

        sub_1D9D3C790(*(a1 + 40) | 0x200);
        if ((v148 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        sub_1D9D3C734();
        if (v151 < 0)
        {
          v251 = sub_1D9D4E718(v150, v148);
          v275 = v251;
          *(a1 + 224) = v252;
          if (!v251)
          {
            return;
          }
        }

        else
        {
          v149 = (v150 + 2);
LABEL_178:
          v275 = v149;
          *(a1 + 224) = v148;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        sub_1D9D3C850(*(a1 + 40) | 2);
        if (v43)
        {
          sub_1D9D3C844();
        }

        v44 = (a1 + 160);
        goto LABEL_227;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x2000000u;
        v179 = *v7;
        v118 = v7 + 4;
        *(a1 + 280) = v179;
        goto LABEL_251;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7A0(*(a1 + 40) | 0x800);
        if ((v77 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        sub_1D9D3C71C();
        if (v80 < 0)
        {
          v227 = sub_1D9D4E718(v79, v77);
          v275 = v227;
          *(a1 + 232) = v228;
          if (!v227)
          {
            return;
          }
        }

        else
        {
          v78 = (v79 + 2);
LABEL_100:
          v275 = v78;
          *(a1 + 232) = v77;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        sub_1D9D3C790(*(a1 + 40) | 0x400);
        if ((v180 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        sub_1D9D3C734();
        if (v183 < 0)
        {
          v257 = sub_1D9D4E718(v182, v180);
          v275 = v257;
          *(a1 + 228) = v258;
          if (!v257)
          {
            return;
          }
        }

        else
        {
          v181 = (v182 + 2);
LABEL_234:
          v275 = v181;
          *(a1 + 228) = v180;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        sub_1D9D3C790(*(a1 + 40) | 0x1000);
        if ((v91 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        sub_1D9D3C734();
        if (v94 < 0)
        {
          v233 = sub_1D9D4E718(v93, v91);
          v275 = v233;
          *(a1 + 240) = v234;
          if (!v233)
          {
            return;
          }
        }

        else
        {
          v92 = (v93 + 2);
LABEL_113:
          v275 = v92;
          *(a1 + 240) = v91;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        sub_1D9D3C790(*(a1 + 40) | 0x4000000);
        if ((v139 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        sub_1D9D3C734();
        if (v142 < 0)
        {
          v247 = sub_1D9D4E718(v141, v139);
          v275 = v247;
          *(a1 + 284) = v248;
          if (!v247)
          {
            return;
          }
        }

        else
        {
          v140 = (v141 + 2);
LABEL_169:
          v275 = v140;
          *(a1 + 284) = v139;
        }

        goto LABEL_267;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x8000000u;
        v119 = *v7;
        v118 = v7 + 4;
        *(a1 + 288) = v119;
        goto LABEL_251;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_269;
        }

        sub_1D9D3C790(*(a1 + 40) | 0x10000000);
        if ((v59 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        sub_1D9D3C734();
        if (v62 < 0)
        {
          v225 = sub_1D9D4E718(v61, v59);
          v275 = v225;
          *(a1 + 292) = v226;
          if (!v225)
          {
            return;
          }
        }

        else
        {
          v60 = (v61 + 2);
LABEL_76:
          v275 = v60;
          *(a1 + 292) = v59;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_1D9D3C790(*(a1 + 40) | 0x20000000);
        if ((v170 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        sub_1D9D3C734();
        if (v173 < 0)
        {
          v253 = sub_1D9D4E718(v172, v170);
          v275 = v253;
          *(a1 + 296) = v254;
          if (!v253)
          {
            return;
          }
        }

        else
        {
          v171 = (v172 + 2);
LABEL_217:
          v275 = v171;
          *(a1 + 296) = v170;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_1D9D3C790(*(a1 + 40) | 0x40000000);
        if ((v174 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        sub_1D9D3C734();
        if (v177 < 0)
        {
          v255 = sub_1D9D4E718(v176, v174);
          v275 = v255;
          *(a1 + 300) = v256;
          if (!v255)
          {
            return;
          }
        }

        else
        {
          v175 = (v176 + 2);
LABEL_222:
          v275 = v175;
          *(a1 + 300) = v174;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7B0(*(a1 + 44) | 1);
        if (v192 < 0 && (sub_1D9D3C71C(), v195 < 0))
        {
          sub_1D9D4E718(v194, v193);
          sub_1D9D3C770();
          *(a1 + 308) = v263;
          if (!v264)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 308) = v196;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_1D9D3C790(*(a1 + 40) | 0x80000000);
        if ((v188 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        sub_1D9D3C734();
        if (v191 < 0)
        {
          v261 = sub_1D9D4E718(v190, v188);
          v275 = v261;
          *(a1 + 304) = v262;
          if (!v261)
          {
            return;
          }
        }

        else
        {
          v189 = (v190 + 2);
LABEL_244:
          v275 = v189;
          *(a1 + 304) = v188;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7B0(*(a1 + 44) | 2);
        if (v45 < 0 && (sub_1D9D3C71C(), v48 < 0))
        {
          sub_1D9D4E718(v47, v46);
          sub_1D9D3C770();
          *(a1 + 309) = v219;
          if (!v220)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 309) = v49;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7B0(*(a1 + 44) | 8);
        if (v120 < 0 && (sub_1D9D3C71C(), v123 < 0))
        {
          sub_1D9D4E718(v122, v121);
          sub_1D9D3C770();
          *(a1 + 311) = v245;
          if (!v246)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 311) = v124;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7B0(*(a1 + 44) | 4);
        if (v198 < 0 && (sub_1D9D3C71C(), v201 < 0))
        {
          sub_1D9D4E718(v200, v199);
          sub_1D9D3C770();
          *(a1 + 310) = v265;
          if (!v266)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 310) = v202;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7A0(*(a1 + 40) | 0x4000);
        if (v54 < 0 && (sub_1D9D3C71C(), v57 < 0))
        {
          sub_1D9D4E718(v56, v55);
          sub_1D9D3C770();
          *(a1 + 245) = v223;
          if (!v224)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 245) = v58;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7A0(*(a1 + 40) | 0x10000);
        if (v113 < 0 && (sub_1D9D3C71C(), v116 < 0))
        {
          sub_1D9D4E718(v115, v114);
          sub_1D9D3C770();
          *(a1 + 247) = v243;
          if (!v244)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 247) = v117;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7A0(*(a1 + 40) | 0x8000);
        if (v81 < 0 && (sub_1D9D3C71C(), v84 < 0))
        {
          sub_1D9D4E718(v83, v82);
          sub_1D9D3C770();
          *(a1 + 246) = v229;
          if (!v230)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 246) = v85;
        }

        goto LABEL_267;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_269;
        }

        v156 = v7 - 2;
        while (1)
        {
          v275 = v156 + 2;
          if (!*(a1 + 120))
          {
            break;
          }

          sub_1D9D3C820();
          if (v12 == v13)
          {
            if (v158 == *(a1 + 116))
            {
LABEL_194:
              sub_1D9D53A28((a1 + 104), v158 + 1);
              v157 = *(a1 + 120);
            }

            sub_1D9D3C85C(v157);
            v163 = *(a1 + 104);
            if (!v163)
            {
              sub_1D9D3C868();
            }

            if (*(v163 + 24))
            {
              v168 = sub_1D9D3C7C0();
              (*(v169 + 40))(v168, &unk_1F554DC48, 24);
            }

            v164 = sub_1D9D3C748();
            sub_1D9D3C838(v164);
            sub_1D9D3C82C();
            *(a1 + 112) = v165;
            v162 = sub_1D9D3C814(v166, v167);
            goto LABEL_200;
          }

          sub_1D9D3C808();
          *(a1 + 112) = v160;
          v162 = *(v161 + 8);
LABEL_200:
          v275 = sub_1D9D4E7A4(v162, v159, a3);
          if (!v275)
          {
            return;
          }

          sub_1D9D3C7FC();
          if (!(!v210 & v23) || *v156 != 498)
          {
            goto LABEL_267;
          }
        }

        v158 = *(a1 + 116);
        goto LABEL_194;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_269;
        }

        v63 = v7 - 2;
        break;
      case 0x20u:
        if (v8)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7B0(*(a1 + 44) | 0x10);
        if (v38 < 0 && (sub_1D9D3C71C(), v41 < 0))
        {
          sub_1D9D4E718(v40, v39);
          sub_1D9D3C770();
          *(a1 + 312) = v217;
          if (!v218)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 312) = v42;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7B0(*(a1 + 44) | 0x20);
        if (v203 < 0 && (sub_1D9D3C71C(), v206 < 0))
        {
          sub_1D9D4E718(v205, v204);
          sub_1D9D3C770();
          *(a1 + 313) = v267;
          if (!v268)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 313) = v207;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7A0(*(a1 + 40) | 0x40000);
        if (v95 < 0 && (sub_1D9D3C71C(), v98 < 0))
        {
          sub_1D9D4E718(v97, v96);
          sub_1D9D3C770();
          *(a1 + 249) = v235;
          if (!v236)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 249) = v99;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7A0(*(a1 + 40) | 0x20000);
        if (v104 < 0 && (sub_1D9D3C71C(), v107 < 0))
        {
          sub_1D9D4E718(v106, v105);
          sub_1D9D3C770();
          *(a1 + 248) = v239;
          if (!v240)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 248) = v108;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        sub_1D9D3C850(*(a1 + 40) | 4);
        if (v43)
        {
          sub_1D9D3C844();
        }

        v44 = (a1 + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        sub_1D9D3C790(*(a1 + 40) | 0x100000);
        if ((v109 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        sub_1D9D3C734();
        if (v112 < 0)
        {
          v241 = sub_1D9D4E718(v111, v109);
          v275 = v241;
          *(a1 + 252) = v242;
          if (!v241)
          {
            return;
          }
        }

        else
        {
          v110 = (v111 + 2);
LABEL_135:
          v275 = v110;
          *(a1 + 252) = v109;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7D4(*(a1 + 44) | 0x40);
        if ((v31 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        sub_1D9D3C734();
        if (v34 < 0)
        {
          v215 = sub_1D9D4E718(v33, v31);
          v275 = v215;
          *(a1 + 316) = v216;
          if (!v215)
          {
            return;
          }
        }

        else
        {
          v32 = (v33 + 2);
LABEL_38:
          v275 = v32;
          *(a1 + 316) = v31;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7D4(*(a1 + 44) | 0x80);
        if ((v50 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        sub_1D9D3C734();
        if (v53 < 0)
        {
          v221 = sub_1D9D4E718(v52, v50);
          v275 = v221;
          *(a1 + 320) = v222;
          if (!v221)
          {
            return;
          }
        }

        else
        {
          v51 = (v52 + 2);
LABEL_67:
          v275 = v51;
          *(a1 + 320) = v50;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7D4(*(a1 + 44) | 0x100);
        if ((v184 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        sub_1D9D3C734();
        if (v187 < 0)
        {
          v259 = sub_1D9D4E718(v186, v184);
          v275 = v259;
          *(a1 + 324) = v260;
          if (!v259)
          {
            return;
          }
        }

        else
        {
          v185 = (v186 + 2);
LABEL_239:
          v275 = v185;
          *(a1 + 324) = v184;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7E4(*(a1 + 40) | 8);
        if (v35)
        {
          sub_1D9D3C7F0();
        }

        v36 = &off_1ECB71890;
        v37 = (a1 + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7E4(*(a1 + 40) | 0x10);
        if (v35)
        {
          sub_1D9D3C7F0();
        }

        v36 = &off_1ECB71850;
        v37 = (a1 + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7E4(*(a1 + 40) | 0x20);
        if (v35)
        {
          sub_1D9D3C7F0();
        }

        v36 = &off_1ECB71828;
        v37 = (a1 + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7E4(*(a1 + 40) | 0x40);
        if (v35)
        {
          sub_1D9D3C7F0();
        }

        v36 = &off_1ECB71808;
        v37 = (a1 + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7E4(*(a1 + 40) | 0x80);
        if (v35)
        {
          sub_1D9D3C7F0();
        }

        v36 = &off_1ECB71870;
        v37 = (a1 + 208);
LABEL_264:
        v178 = sub_1D9D40794(v37, v36, v35);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7A0(*(a1 + 40) | 0x80000);
        if (v86 < 0 && (sub_1D9D3C71C(), v89 < 0))
        {
          sub_1D9D4E718(v88, v87);
          sub_1D9D3C770();
          *(a1 + 250) = v231;
          if (!v232)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 250) = v90;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7A0(*(a1 + 40) | 0x2000);
        if (v143 < 0 && (sub_1D9D3C71C(), v146 < 0))
        {
          sub_1D9D4E718(v145, v144);
          sub_1D9D3C770();
          *(a1 + 244) = v249;
          if (!v250)
          {
            return;
          }
        }

        else
        {
          sub_1D9D3C780();
          *(a1 + 244) = v147;
        }

        goto LABEL_267;
      case 0x33u:
        if (v8 != 157)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x200000u;
        v197 = *v7;
        v118 = v7 + 4;
        *(a1 + 256) = v197;
LABEL_251:
        v275 = v118;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_1D9D3C7A0(*(a1 + 40) | 0x400000);
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        sub_1D9D3C71C();
        if (v30 < 0)
        {
          v213 = sub_1D9D4E718(v29, v27);
          v275 = v213;
          *(a1 + 264) = v214;
          if (!v213)
          {
            return;
          }
        }

        else
        {
          v28 = (v29 + 2);
LABEL_33:
          v275 = v28;
          *(a1 + 264) = v27;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        sub_1D9D3C850(*(a1 + 40) | 0x100);
        if (v43)
        {
          sub_1D9D3C844();
        }

        v44 = (a1 + 216);
LABEL_227:
        v178 = sub_1D9D40688(v44, v43);
LABEL_265:
        v208 = sub_1D9D4E7A4(v178, v275, a3);
        goto LABEL_266;
      default:
LABEL_269:
        if (v8)
        {
          v210 = (v8 & 7) == 4;
        }

        else
        {
          v210 = 1;
        }

        if (v210)
        {
          a3[10].i32[0] = v8 - 1;
          return;
        }

        if (v8 < 0x640)
        {
          v211 = *(a1 + 8);
          if (v211)
          {
            v212 = (v211 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v271 = v8;
            v272 = sub_1D9D34364((a1 + 8));
            v8 = v271;
            v212 = v272;
            v7 = v275;
          }

          v208 = sub_1D9D4EC60(v8, v212, v7, a3);
        }

        else
        {
          v208 = sub_1D9D46E98((a1 + 16), v8, v7, &unk_1ECB71DF0, (a1 + 8), a3);
        }

LABEL_266:
        v275 = v208;
        if (!v208)
        {
          return;
        }

LABEL_267:
        v209 = sub_1D9D34224(a3, &v275, a3[11].u32[1]);
        v6 = v275;
        if (v209)
        {
          return;
        }

        continue;
    }

    break;
  }

  while (1)
  {
    v275 = v63 + 2;
    if (!*(a1 + 144))
    {
      break;
    }

    sub_1D9D3C820();
    if (v12 == v13)
    {
      if (v65 == *(a1 + 140))
      {
LABEL_85:
        sub_1D9D53A28((a1 + 128), v65 + 1);
        v64 = *(a1 + 144);
      }

      sub_1D9D3C85C(v64);
      v70 = *(a1 + 128);
      if (!v70)
      {
        sub_1D9D3C868();
      }

      if (*(v70 + 24))
      {
        v75 = sub_1D9D3C7C0();
        (*(v76 + 40))(v75, &unk_1F554DC48, 24);
      }

      v71 = sub_1D9D3C748();
      sub_1D9D3C838(v71);
      sub_1D9D3C82C();
      *(a1 + 136) = v72;
      v69 = sub_1D9D3C814(v73, v74);
      goto LABEL_91;
    }

    sub_1D9D3C808();
    *(a1 + 136) = v67;
    v69 = *(v68 + 8);
LABEL_91:
    v275 = sub_1D9D4E7A4(v69, v66, a3);
    if (!v275)
    {
      return;
    }

    sub_1D9D3C7FC();
    if (!(!v210 & v23) || *v63 != 506)
    {
      goto LABEL_267;
    }
  }

  v65 = *(a1 + 140);
  goto LABEL_85;
}

char *sub_1D9DD93BC(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1D9DD9CE8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1D9D34694(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1D9D38618(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

unsigned __int8 *sub_1D9DD9484(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1D9DD9CE8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_1D9D34694(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1D9D39568(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_1D9DD954C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    v9 = sub_1D9DD9CE8(a3, v7);
    if (!v9)
    {
      return;
    }

    v8 = v9;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1D9D34694(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sub_1D9DD834C(a2, v8, a1);
    if (v15)
    {
      ++a1[11].i32[0];
      if (!a1[10].i32[0])
      {
        v16 = a1[3].i32[1] + v14;
        a1[3].i32[1] = v16;
        *a1 = (*&a1[1] + (v16 & (v16 >> 31)));
      }
    }
  }
}

char *sub_1D9DD9614(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1D9DD9CE8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1D9D34694(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1D9D37990(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

char *sub_1D9DD96DC(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1D9DD9CE8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_1D9D34694(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1D9D38D34(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_1D9DD97A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= 0x100u)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    v6 = &v5[32 * *(a1 + 10)];
    v7 = *(a2 + 16);
    if (v4 > 0x100)
    {
      v12 = sub_1D9D45B8C(v5, v6, *v7, (v7 + 8));
    }

    else
    {
      v8 = 0;
      v9 = v7 + 32 * *(a2 + 10);
      if (*(a1 + 10) && *(a2 + 10))
      {
        v8 = 0;
        do
        {
          if (*v5 == *v7)
          {
            v10 = v5 + 32;
          }

          else
          {
            v10 = v5;
          }

          if (*v5 < *v7)
          {
            v5 += 32;
          }

          else
          {
            v7 += 32;
            v5 = v10;
          }

          ++v8;
        }

        while (v5 != v6 && v7 != v9);
      }

      v12 = v8 + ((v9 - v7) >> 5) + ((v6 - v5) >> 5);
    }

    sub_1D9D459CC(a1, v12);
  }

  v13 = *(a2 + 16);
  if (*(a2 + 8) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    sub_1D9D4BB64(v17, v18, a1);
  }

  else if (*(a2 + 10))
  {
    v14 = &v13[8 * *(a2 + 10)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      sub_1D9D45C94(a1, v16, v13 + 1);
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t sub_1D9DD98D8()
{
  sub_1D9D4DC54();
  sub_1D9D4DC34();
  sub_1D9D4DC20();
  sub_1D9D4BFD0(v2, v3, v4);
  sub_1D9D4DC44();
  v5 = sub_1D9D4DC74();
  v7 = v6(v5);
  result = 0;
  if (v7)
  {
    if ((v1 & 2) != 0)
    {
      return 1;
    }

    sub_1D9D4DC68();
    if ((*(v9 + 48))(v0))
    {
      return 1;
    }

    else
    {
      sub_1D9D4D310(v0);
      return 0;
    }
  }

  return result;
}

_OWORD *sub_1D9DD99C8()
{
  sub_1D9D50DD4();
  if (*(v7 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }

  v8 = *(v2 + 8);
  if (v8 - v3 + *(v2 + 28) >= v0)
  {
    v9 = *(v1 + 23);
    if (v9 < 0)
    {
      v9 = *(v1 + 8);
    }

    sub_1D9D50D94(v9);
    v8 = *(v2 + 8);
  }

  v10 = v8 - v3 + 16;
  while (1)
  {
    v11 = __OFSUB__(v0, v10);
    v0 -= v10;
    if ((v0 < 0) ^ v11 | (v0 == 0))
    {
      sub_1D9D50DE8(v4, v5, v6, v7);
      v12 = sub_1D9D418DC(v17, "CHECK failed: size > chunk_size: ");
      sub_1D9D41A18(&v16, &v12->__r_.__value_.__l.__data_);
      v4 = sub_1D9D41A20(v17);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_1D9D50E08(v4, v5, v10);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_1D9D4DD28(v2);
    if (!result)
    {
      return result;
    }

    sub_1D9D50DBC();
    if (v15 ^ v11 | v14)
    {
      sub_1D9D50E08(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_1D9DD9ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1D9DD9AF4()
{
  sub_1D9D50DD4();
  v8 = *(v4 + 8);
  if (v8 - v5 + *(v4 + 28) >= v6)
  {
    v9 = *(v1 + 23);
    if (v9 < 0)
    {
      v9 = *(v1 + 8);
    }

    sub_1D9D50D94(v9);
    v8 = *(v2 + 8);
  }

  v10 = v8 - v3 + 16;
  while (1)
  {
    v11 = __OFSUB__(v0, v10);
    v0 -= v10;
    if ((v0 < 0) ^ v11 | (v0 == 0))
    {
      sub_1D9D50DE8(v4, v5, v6, v7);
      v12 = sub_1D9D418DC(v17, "CHECK failed: size > chunk_size: ");
      sub_1D9D41A18(&v16, &v12->__r_.__value_.__l.__data_);
      v4 = sub_1D9D41A20(v17);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_1D9D50E08(v4, v5, v10);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_1D9D4DD28(v2);
    if (!result)
    {
      return result;
    }

    sub_1D9D50DBC();
    if (v15 ^ v11 | v14)
    {
      sub_1D9D50E08(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_1D9DD9BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1D9DD9C00(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1D9DD9CE8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v15;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v9 = sub_1D9D34694(a1, v8, v7);
  v10 = *(a1 + 88);
  v11 = __OFSUB__(v10--, 1);
  *(a1 + 88) = v10;
  if (v10 < 0 == v11)
  {
    v12 = v9;
    result = (*(*a2 + 88))(a2, v8, a1);
    if (!result)
    {
      return result;
    }

    ++*(a1 + 88);
    if (!*(a1 + 80))
    {
      v14 = *(a1 + 28) + v12;
      *(a1 + 28) = v14;
      *a1 = *(a1 + 8) + (v14 & (v14 >> 31));
      return result;
    }
  }

  return 0;
}

uint64_t sub_1D9DD9CE8(uint64_t a1, int a2)
{
  result = a1 + 2;
  v4 = -21;
  while (1)
  {
    a2 += (*(result - 1) - 1) << (v4 + 28);
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = *(a1 + 4);
      v6 = a1 + 5;
      if (a2 + (v5 << 28) - 0x10000000 > 0x7FFFFFEF)
      {
        v6 = 0;
      }

      if (v5 <= 7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A18](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

void std::out_of_range::~out_of_range(std::out_of_range *this)
{
  MEMORY[0x1EEE63AF0](this);
}

{
  MEMORY[0x1EEE63AF8](this);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x1EEE63B28](this, a2);
}

{
  return MEMORY[0x1EEE63B40](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x1EEE63B50](this);
}

{
  MEMORY[0x1EEE63B58](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}